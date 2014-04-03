	.file	"perlio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 perlio.c
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
	.globl	perlsio_binmode
	.type	perlsio_binmode, @function
perlsio_binmode:
.LFB2:
	.file 1 "perlio.c"
	.loc 1 115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, -12(%rbp)	# iotype, iotype
	movl	%edx, -16(%rbp)	# mode, mode
	.loc 1 163 0
	movl	$1, %eax	#, D.15225
	.loc 1 166 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	perlsio_binmode, .-perlsio_binmode
	.globl	PerlIO_intmode2str
	.type	PerlIO_intmode2str, @function
PerlIO_intmode2str:
.LFB3:
	.loc 1 174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# rawmode, rawmode
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# writing, writing
	.loc 1 175 0
	movl	-20(%rbp), %eax	# rawmode, tmp87
	andl	$3, %eax	#, tmp86
	movl	%eax, -4(%rbp)	# tmp86, result
	.loc 1 176 0
	movl	$0, -12(%rbp)	#, ix
	.loc 1 178 0
	movl	-4(%rbp), %eax	# result, result
	testl	%eax, %eax	# result
	je	.L5	#,
	cmpl	$1, %eax	#, result
	je	.L6	#,
	jmp	.L16	#
.L5:
	.loc 1 180 0
	movl	$60, -8(%rbp)	#, ptype
	.loc 1 181 0
	jmp	.L7	#
.L6:
	.loc 1 183 0
	movl	$62, -8(%rbp)	#, ptype
	.loc 1 184 0
	jmp	.L7	#
.L16:
	.loc 1 187 0
	movl	$43, -8(%rbp)	#, ptype
	.loc 1 188 0
	nop
.L7:
	.loc 1 190 0
	cmpq	$0, -40(%rbp)	#, writing
	je	.L8	#,
	.loc 1 191 0
	cmpl	$0, -4(%rbp)	#, result
	setne	%al	#, D.15226
	movzbl	%al, %edx	# D.15226, D.15227
	movq	-40(%rbp), %rax	# writing, tmp89
	movl	%edx, (%rax)	# D.15227, *writing_10(D)
.L8:
	.loc 1 193 0
	cmpl	$0, -4(%rbp)	#, result
	jne	.L9	#,
	.loc 1 194 0
	movl	-12(%rbp), %eax	# ix, ix.0
	leal	1(%rax), %edx	#, tmp90
	movl	%edx, -12(%rbp)	# tmp90, ix
	movslq	%eax, %rdx	# ix.0, D.15228
	movq	-32(%rbp), %rax	# mode, tmp91
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$114, (%rax)	#, *_17
	jmp	.L15	#
.L9:
	.loc 1 197 0
	movl	-20(%rbp), %eax	# rawmode, tmp92
	andl	$1024, %eax	#, D.15227
	testl	%eax, %eax	# D.15227
	je	.L11	#,
	.loc 1 198 0
	movl	-12(%rbp), %eax	# ix, ix.1
	leal	1(%rax), %edx	#, tmp93
	movl	%edx, -12(%rbp)	# tmp93, ix
	movslq	%eax, %rdx	# ix.1, D.15228
	movq	-32(%rbp), %rax	# mode, tmp94
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$97, (%rax)	#, *_22
	.loc 1 199 0
	cmpl	$1, -4(%rbp)	#, result
	je	.L15	#,
	.loc 1 200 0
	movl	-12(%rbp), %eax	# ix, ix.2
	leal	1(%rax), %edx	#, tmp95
	movl	%edx, -12(%rbp)	# tmp95, ix
	movslq	%eax, %rdx	# ix.2, D.15228
	movq	-32(%rbp), %rax	# mode, tmp96
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$43, (%rax)	#, *_26
	jmp	.L15	#
.L11:
	.loc 1 204 0
	cmpl	$1, -4(%rbp)	#, result
	jne	.L13	#,
	.loc 1 205 0
	movl	-12(%rbp), %eax	# ix, ix.3
	leal	1(%rax), %edx	#, tmp97
	movl	%edx, -12(%rbp)	# tmp97, ix
	movslq	%eax, %rdx	# ix.3, D.15228
	movq	-32(%rbp), %rax	# mode, tmp98
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$119, (%rax)	#, *_30
	jmp	.L15	#
.L13:
	.loc 1 207 0
	movl	-12(%rbp), %eax	# ix, ix.4
	leal	1(%rax), %edx	#, tmp99
	movl	%edx, -12(%rbp)	# tmp99, ix
	movslq	%eax, %rdx	# ix.4, D.15228
	movq	-32(%rbp), %rax	# mode, tmp100
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$114, (%rax)	#, *_34
	.loc 1 208 0
	movl	-12(%rbp), %eax	# ix, ix.5
	leal	1(%rax), %edx	#, tmp101
	movl	%edx, -12(%rbp)	# tmp101, ix
	movslq	%eax, %rdx	# ix.5, D.15228
	movq	-32(%rbp), %rax	# mode, tmp102
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$43, (%rax)	#, *_38
.L15:
	.loc 1 213 0
	movl	-12(%rbp), %eax	# ix, tmp103
	movslq	%eax, %rdx	# tmp103, D.15228
	movq	-32(%rbp), %rax	# mode, tmp104
	addq	%rdx, %rax	# D.15228, D.15229
	movb	$0, (%rax)	#, *_40
	.loc 1 214 0
	movl	-8(%rbp), %eax	# ptype, D.15227
	.loc 1 215 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	PerlIO_intmode2str, .-PerlIO_intmode2str
	.globl	PerlIO_debug
	.type	PerlIO_debug, @function
PerlIO_debug:
.LFB4:
	.loc 1 452 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L18	#,
	.loc 1 452 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L18:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 456 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp60
	movq	%rax, -192(%rbp)	# tmp60, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp61
	movq	%rax, -184(%rbp)	# tmp61, MEM[(struct [1] *)&ap].reg_save_area
	.loc 1 497 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	PerlIO_debug, .-PerlIO_debug
	.globl	PerlIO_allocate
	.type	PerlIO_allocate, @function
PerlIO_allocate:
.LFB5:
	.loc 1 512 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 518 0
	movq	$PL_perlio, -16(%rbp)	#, last
	.loc 1 519 0
	jmp	.L20	#
.L25:
.LBB2:
	.loc 1 521 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	%rax, -16(%rbp)	# tmp62, last
	.loc 1 522 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L21	#
.L24:
	.loc 1 523 0
	addq	$8, -8(%rbp)	#, f
	movq	-8(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_9, D.15233
	testq	%rax, %rax	# D.15233
	jne	.L22	#,
	.loc 1 524 0
	movq	-8(%rbp), %rax	# f, D.15232
	jmp	.L23	#
.L22:
	.loc 1 522 0
	addl	$1, -20(%rbp)	#, i
.L21:
	.loc 1 522 0 is_stmt 0 discriminator 1
	cmpl	$63, -20(%rbp)	#, i
	jle	.L24	#,
.L20:
.LBE2:
	.loc 1 519 0 is_stmt 1 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp64
	movq	(%rax), %rax	# *last_1, tmp65
	movq	%rax, -8(%rbp)	# tmp65, f
	cmpq	$0, -8(%rbp)	#, f
	jne	.L25	#,
	.loc 1 528 0
	movl	$512, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp66, f
	movq	-8(%rbp), %rax	# f, tmp67
	movl	$512, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	memset	#
	.loc 1 529 0
	cmpq	$0, -8(%rbp)	#, f
	jne	.L26	#,
	.loc 1 530 0
	movl	$0, %eax	#, D.15232
	jmp	.L23	#
.L26:
	.loc 1 532 0
	movq	-16(%rbp), %rax	# last, tmp68
	movq	-8(%rbp), %rdx	# f, tmp69
	movq	%rdx, (%rax)	# tmp69, *last_1
	.loc 1 533 0
	movq	-8(%rbp), %rax	# f, tmp70
	addq	$8, %rax	#, D.15232
.L23:
	.loc 1 534 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	PerlIO_allocate, .-PerlIO_allocate
	.section	.rodata
.LC0:
	.string	"fdupopen f=%p param=%p\n"
	.text
	.globl	PerlIO_fdupopen
	.type	PerlIO_fdupopen, @function
PerlIO_fdupopen:
.LFB6:
	.loc 1 539 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# param, param
	movl	%edx, -52(%rbp)	# flags, flags
	.loc 1 540 0
	cmpq	$0, -40(%rbp)	#, f
	je	.L28	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15235
	testq	%rax, %rax	# D.15235
	je	.L28	#,
.LBB3:
	.loc 1 541 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15235
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -24(%rbp)	# tmp70, tab
	.loc 1 542 0
	movq	-48(%rbp), %rdx	# param, tmp71
	movq	-40(%rbp), %rax	# f, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 543 0
	cmpq	$0, -24(%rbp)	#, tab
	je	.L29	#,
	.loc 1 543 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tab, tmp73
	movq	80(%rax), %rax	# tab_5->Dup, D.15236
	testq	%rax, %rax	# D.15236
	je	.L29	#,
	.loc 1 544 0 is_stmt 1
	movq	-24(%rbp), %rax	# tab, tmp74
	movq	80(%rax), %rbx	# tab_5->Dup, D.15236
	call	PerlIO_allocate	#
	movl	-52(%rbp), %ecx	# flags, tmp75
	movq	-48(%rbp), %rdx	# param, tmp76
	movq	-40(%rbp), %rsi	# f, tmp77
	movq	%rax, %rdi	# D.15234,
	call	*%rbx	# D.15236
	jmp	.L30	#
.L29:
	.loc 1 546 0
	call	PerlIO_allocate	#
	movl	-52(%rbp), %ecx	# flags, tmp78
	movq	-48(%rbp), %rdx	# param, tmp79
	movq	-40(%rbp), %rsi	# f, tmp80
	movq	%rax, %rdi	# D.15234,
	call	PerlIOBase_dup	#
	jmp	.L30	#
.L28:
.LBE3:
	.loc 1 550 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_14
	.loc 1 552 0
	movl	$0, %eax	#, D.15234
.L30:
	.loc 1 553 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	PerlIO_fdupopen, .-PerlIO_fdupopen
	.globl	PerlIO_cleantable
	.type	PerlIO_cleantable, @function
PerlIO_cleantable:
.LFB7:
	.loc 1 557 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# tablep, tablep
	.loc 1 558 0
	movq	-40(%rbp), %rax	# tablep, tmp62
	movq	(%rax), %rax	# *tablep_2(D), tmp63
	movq	%rax, -16(%rbp)	# tmp63, table
	.loc 1 559 0
	cmpq	$0, -16(%rbp)	#, table
	je	.L31	#,
.LBB4:
	.loc 1 561 0
	movq	-16(%rbp), %rax	# table, tmp64
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_cleantable	#
	.loc 1 562 0
	movl	$63, -20(%rbp)	#, i
	jmp	.L33	#
.L35:
.LBB5:
	.loc 1 563 0
	movl	-20(%rbp), %eax	# i, tmp65
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15239
	movq	-16(%rbp), %rax	# table, tmp69
	addq	%rdx, %rax	# D.15239, tmp68
	movq	%rax, -8(%rbp)	# tmp68, f
	.loc 1 564 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_7, D.15240
	testq	%rax, %rax	# D.15240
	je	.L34	#,
	.loc 1 565 0
	movq	-8(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	Perl_PerlIO_close	#
.L34:
.LBE5:
	.loc 1 562 0
	subl	$1, -20(%rbp)	#, i
.L33:
	.loc 1 562 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jg	.L35	#,
	.loc 1 568 0 is_stmt 1
	movq	-16(%rbp), %rax	# table, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_safesysfree	#
	.loc 1 569 0
	movq	-40(%rbp), %rax	# tablep, tmp73
	movq	$0, (%rax)	#, *tablep_2(D)
.L31:
.LBE4:
	.loc 1 571 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	PerlIO_cleantable, .-PerlIO_cleantable
	.globl	PerlIO_list_alloc
	.type	PerlIO_list_alloc, @function
PerlIO_list_alloc:
.LFB8:
	.loc 1 576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 578 0
	movl	$32, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp61, Perl_list
	movq	-8(%rbp), %rax	# Perl_list, tmp62
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	memset	#
	.loc 1 579 0
	movq	-8(%rbp), %rax	# Perl_list, tmp63
	movq	$1, (%rax)	#, Perl_list_1->refcnt
	.loc 1 580 0
	movq	-8(%rbp), %rax	# Perl_list, D.15241
	.loc 1 581 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PerlIO_list_alloc, .-PerlIO_list_alloc
	.globl	PerlIO_list_free
	.type	PerlIO_list_free, @function
PerlIO_list_free:
.LFB9:
	.loc 1 585 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# Perl_list, Perl_list
	.loc 1 586 0
	cmpq	$0, -24(%rbp)	#, Perl_list
	je	.L38	#,
	.loc 1 587 0
	movq	-24(%rbp), %rax	# Perl_list, tmp75
	movq	(%rax), %rax	# Perl_list_2(D)->refcnt, D.15242
	leaq	-1(%rax), %rdx	#, D.15242
	movq	-24(%rbp), %rax	# Perl_list, tmp76
	movq	%rdx, (%rax)	# D.15242, Perl_list_2(D)->refcnt
	movq	-24(%rbp), %rax	# Perl_list, tmp77
	movq	(%rax), %rax	# Perl_list_2(D)->refcnt, D.15242
	testq	%rax, %rax	# D.15242
	jne	.L38	#,
	.loc 1 588 0
	movq	-24(%rbp), %rax	# Perl_list, tmp78
	movq	24(%rax), %rax	# Perl_list_2(D)->array, D.15243
	testq	%rax, %rax	# D.15243
	je	.L40	#,
.LBB6:
	.loc 1 590 0
	movq	$0, -8(%rbp)	#, i
	jmp	.L41	#
.L43:
	.loc 1 591 0
	movq	-24(%rbp), %rax	# Perl_list, tmp79
	movq	24(%rax), %rax	# Perl_list_2(D)->array, D.15243
	movq	-8(%rbp), %rdx	# i, i.7
	salq	$4, %rdx	#, D.15244
	addq	%rdx, %rax	# D.15244, D.15243
	movq	8(%rax), %rax	# _12->arg, D.15245
	testq	%rax, %rax	# D.15245
	je	.L42	#,
	.loc 1 592 0
	movq	-24(%rbp), %rax	# Perl_list, tmp80
	movq	24(%rax), %rax	# Perl_list_2(D)->array, D.15243
	movq	-8(%rbp), %rdx	# i, i.8
	salq	$4, %rdx	#, D.15244
	addq	%rdx, %rax	# D.15244, D.15243
	movq	8(%rax), %rax	# _17->arg, D.15245
	movq	%rax, %rdi	# D.15245,
	call	Perl_sv_free	#
.L42:
	.loc 1 590 0
	addq	$1, -8(%rbp)	#, i
.L41:
	.loc 1 590 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# Perl_list, tmp81
	movq	8(%rax), %rax	# Perl_list_2(D)->cur, D.15242
	cmpq	-8(%rbp), %rax	# i, D.15242
	jg	.L43	#,
	.loc 1 594 0 is_stmt 1
	movq	-24(%rbp), %rax	# Perl_list, tmp82
	movq	24(%rax), %rax	# Perl_list_2(D)->array, D.15243
	movq	%rax, %rdi	# D.15243,
	call	Perl_safesysfree	#
.L40:
.LBE6:
	.loc 1 596 0
	movq	-24(%rbp), %rax	# Perl_list, tmp83
	movq	%rax, %rdi	# tmp83,
	call	Perl_safesysfree	#
.L38:
	.loc 1 599 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PerlIO_list_free, .-PerlIO_list_free
	.globl	PerlIO_list_push
	.type	PerlIO_list_push, @function
PerlIO_list_push:
.LFB10:
	.loc 1 603 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# Perl_list, Perl_list
	movq	%rsi, -32(%rbp)	# funcs, funcs
	movq	%rdx, -40(%rbp)	# arg, arg
	.loc 1 605 0
	movq	-24(%rbp), %rax	# Perl_list, tmp86
	movq	8(%rax), %rdx	# Perl_list_1(D)->cur, D.15246
	movq	-24(%rbp), %rax	# Perl_list, tmp87
	movq	16(%rax), %rax	# Perl_list_1(D)->len, D.15246
	cmpq	%rax, %rdx	# D.15246, D.15246
	jl	.L45	#,
	.loc 1 606 0
	movq	-24(%rbp), %rax	# Perl_list, tmp88
	movq	16(%rax), %rax	# Perl_list_1(D)->len, D.15246
	leaq	8(%rax), %rdx	#, D.15246
	movq	-24(%rbp), %rax	# Perl_list, tmp89
	movq	%rdx, 16(%rax)	# D.15246, Perl_list_1(D)->len
	.loc 1 607 0
	movq	-24(%rbp), %rax	# Perl_list, tmp90
	movq	24(%rax), %rax	# Perl_list_1(D)->array, D.15247
	testq	%rax, %rax	# D.15247
	je	.L46	#,
	.loc 1 608 0
	movq	-24(%rbp), %rax	# Perl_list, tmp91
	movq	16(%rax), %rax	# Perl_list_1(D)->len, D.15246
	salq	$4, %rax	#, D.15248
	movq	%rax, %rdx	# D.15248, D.15248
	movq	-24(%rbp), %rax	# Perl_list, tmp92
	movq	24(%rax), %rax	# Perl_list_1(D)->array, D.15247
	movq	%rdx, %rsi	# D.15248,
	movq	%rax, %rdi	# D.15247,
	call	Perl_safesysrealloc	#
	movq	-24(%rbp), %rdx	# Perl_list, tmp93
	movq	%rax, 24(%rdx)	# D.15249, Perl_list_1(D)->array
	jmp	.L45	#
.L46:
	.loc 1 610 0
	movq	-24(%rbp), %rax	# Perl_list, tmp94
	movq	16(%rax), %rax	# Perl_list_1(D)->len, D.15246
	salq	$4, %rax	#, D.15248
	movq	%rax, %rdi	# D.15248,
	call	Perl_safesysmalloc	#
	movq	-24(%rbp), %rdx	# Perl_list, tmp95
	movq	%rax, 24(%rdx)	# D.15249, Perl_list_1(D)->array
.L45:
	.loc 1 612 0
	movq	-24(%rbp), %rax	# Perl_list, tmp96
	movq	24(%rax), %rsi	# Perl_list_1(D)->array, D.15247
	movq	-24(%rbp), %rax	# Perl_list, tmp97
	movq	8(%rax), %rax	# Perl_list_1(D)->cur, D.15246
	leaq	1(%rax), %rcx	#, D.15246
	movq	-24(%rbp), %rdx	# Perl_list, tmp98
	movq	%rcx, 8(%rdx)	# D.15246, Perl_list_1(D)->cur
	salq	$4, %rax	#, D.15248
	addq	%rsi, %rax	# D.15247, tmp99
	movq	%rax, -8(%rbp)	# tmp99, p
	.loc 1 613 0
	movq	-8(%rbp), %rax	# p, tmp100
	movq	-32(%rbp), %rdx	# funcs, tmp101
	movq	%rdx, (%rax)	# tmp101, p_22->funcs
	.loc 1 614 0
	movq	-8(%rbp), %rax	# p, tmp102
	movq	-40(%rbp), %rdx	# arg, tmp103
	movq	%rdx, 8(%rax)	# tmp103, p_22->arg
	movq	-8(%rbp), %rax	# p, tmp104
	movq	8(%rax), %rax	# p_22->arg, D.15250
	testq	%rax, %rax	# D.15250
	je	.L44	#,
	.loc 1 615 0
	movq	-40(%rbp), %rax	# arg, tmp105
	movq	%rax, PL_Sv(%rip)	# tmp105, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.10
	testq	%rax, %rax	# PL_Sv.10
	je	.L44	#,
	.loc 1 615 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.11
	movl	8(%rax), %edx	# PL_Sv.11_27->sv_refcnt, D.15251
	addl	$1, %edx	#, D.15251
	movl	%edx, 8(%rax)	# D.15251, PL_Sv.11_27->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.11_27->sv_refcnt, D.15251
	testl	%eax, %eax	# D.15251
	je	.L44	#,
	.loc 1 615 0
	nop
.L44:
	.loc 1 617 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PerlIO_list_push, .-PerlIO_list_push
	.globl	PerlIO_clone_list
	.type	PerlIO_clone_list, @function
PerlIO_clone_list:
.LFB11:
	.loc 1 621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# proto, proto
	movq	%rsi, -48(%rbp)	# param, param
	.loc 1 622 0
	movq	$0, -16(%rbp)	#, Perl_list
	.loc 1 623 0
	cmpq	$0, -40(%rbp)	#, proto
	je	.L50	#,
.LBB7:
	.loc 1 625 0
	call	PerlIO_list_alloc	#
	movq	%rax, -16(%rbp)	# tmp78, Perl_list
	.loc 1 626 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L51	#
.L53:
.LBB8:
	.loc 1 627 0
	movq	$0, -8(%rbp)	#, arg
	.loc 1 628 0
	movq	-40(%rbp), %rax	# proto, tmp79
	movq	24(%rax), %rax	# proto_5(D)->array, D.15253
	movl	-20(%rbp), %edx	# i, tmp80
	movslq	%edx, %rdx	# tmp80, D.15254
	salq	$4, %rdx	#, D.15254
	addq	%rdx, %rax	# D.15254, D.15253
	movq	8(%rax), %rax	# _14->arg, D.15255
	testq	%rax, %rax	# D.15255
	je	.L52	#,
	.loc 1 629 0
	movq	-40(%rbp), %rax	# proto, tmp81
	movq	24(%rax), %rax	# proto_5(D)->array, D.15253
	movl	-20(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.15254
	salq	$4, %rdx	#, D.15254
	addq	%rdx, %rax	# D.15254, D.15253
	movq	8(%rax), %rax	# _19->arg, D.15255
	movq	-48(%rbp), %rdx	# param, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.15255,
	call	PerlIO_sv_dup	#
	movq	%rax, -8(%rbp)	# tmp84, arg
.L52:
	.loc 1 630 0
	movq	-40(%rbp), %rax	# proto, tmp85
	movq	24(%rax), %rax	# proto_5(D)->array, D.15253
	movl	-20(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.15254
	salq	$4, %rdx	#, D.15254
	addq	%rdx, %rax	# D.15254, D.15253
	movq	(%rax), %rcx	# _26->funcs, D.15256
	movq	-8(%rbp), %rdx	# arg, tmp87
	movq	-16(%rbp), %rax	# Perl_list, tmp88
	movq	%rcx, %rsi	# D.15256,
	movq	%rax, %rdi	# tmp88,
	call	PerlIO_list_push	#
.LBE8:
	.loc 1 626 0
	addl	$1, -20(%rbp)	#, i
.L51:
	.loc 1 626 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp89
	movslq	%eax, %rdx	# tmp89, D.15252
	movq	-40(%rbp), %rax	# proto, tmp90
	movq	8(%rax), %rax	# proto_5(D)->cur, D.15252
	cmpq	%rax, %rdx	# D.15252, D.15252
	jl	.L53	#,
.L50:
.LBE7:
	.loc 1 633 0 is_stmt 1
	movq	-16(%rbp), %rax	# Perl_list, D.15257
	.loc 1 634 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PerlIO_clone_list, .-PerlIO_clone_list
	.globl	PerlIO_clone
	.type	PerlIO_clone, @function
PerlIO_clone:
.LFB12:
	.loc 1 638 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# proto, proto
	movq	%rsi, -16(%rbp)	# param, param
	.loc 1 658 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PerlIO_clone, .-PerlIO_clone
	.section	.rodata
.LC1:
	.string	"Destruct popping %s\n"
	.text
	.globl	PerlIO_destruct
	.type	PerlIO_destruct, @function
PerlIO_destruct:
.LFB13:
	.loc 1 662 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 663 0
	movq	$PL_perlio, -32(%rbp)	#, table
	.loc 1 668 0
	jmp	.L57	#
.L63:
.LBB9:
	.loc 1 670 0
	movq	-24(%rbp), %rax	# f, f.12
	leaq	8(%rax), %rdx	#, tmp66
	movq	%rdx, -24(%rbp)	# tmp66, f
	movq	%rax, -32(%rbp)	# f.12, table
	.loc 1 671 0
	movl	$1, -36(%rbp)	#, i
	jmp	.L58	#
.L62:
.LBB10:
	.loc 1 672 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	%rax, -16(%rbp)	# tmp67, x
	.loc 1 674 0
	jmp	.L59	#
.L61:
	.loc 1 675 0
	movq	-8(%rbp), %rax	# l, tmp68
	movq	8(%rax), %rax	# l_12->tab, D.15258
	movl	24(%rax), %eax	# _13->kind, D.15259
	andl	$65536, %eax	#, D.15259
	testl	%eax, %eax	# D.15259
	je	.L60	#,
	.loc 1 676 0
	movq	-8(%rbp), %rax	# l, tmp69
	movq	8(%rax), %rax	# l_12->tab, D.15258
	movq	8(%rax), %rax	# _16->name, D.15260
	movq	%rax, %rsi	# D.15260,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 677 0
	movq	-16(%rbp), %rax	# x, tmp70
	movq	%rax, %rdi	# tmp70,
	call	Perl_PerlIO_flush	#
	.loc 1 678 0
	movq	-16(%rbp), %rax	# x, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIO_pop	#
	jmp	.L59	#
.L60:
	.loc 1 681 0
	movq	-16(%rbp), %rax	# x, tmp72
	movq	(%rax), %rax	# *x_4, D.15261
	movq	%rax, -16(%rbp)	# D.15261, x
.L59:
	.loc 1 674 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp73
	movq	(%rax), %rax	# *x_4, tmp74
	movq	%rax, -8(%rbp)	# tmp74, l
	cmpq	$0, -8(%rbp)	#, l
	jne	.L61	#,
	.loc 1 684 0
	addq	$8, -24(%rbp)	#, f
.LBE10:
	.loc 1 671 0
	addl	$1, -36(%rbp)	#, i
.L58:
	.loc 1 671 0 is_stmt 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, i
	jle	.L62	#,
.L57:
.LBE9:
	.loc 1 668 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# table, tmp75
	movq	(%rax), %rax	# *table_1, tmp76
	movq	%rax, -24(%rbp)	# tmp76, f
	cmpq	$0, -24(%rbp)	#, f
	jne	.L63	#,
	.loc 1 687 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	PerlIO_destruct, .-PerlIO_destruct
	.section	.rodata
.LC2:
	.string	"PerlIO_pop f=%p %s\n"
	.text
	.globl	PerlIO_pop
	.type	PerlIO_pop, @function
PerlIO_pop:
.LFB14:
	.loc 1 691 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 692 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), tmp68
	movq	%rax, -8(%rbp)	# tmp68, l
	.loc 1 693 0
	cmpq	$0, -8(%rbp)	#, l
	je	.L64	#,
	.loc 1 694 0
	movq	-8(%rbp), %rax	# l, tmp69
	movq	8(%rax), %rax	# l_2->tab, D.15263
	movq	8(%rax), %rdx	# _3->name, D.15264
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 695 0
	movq	-8(%rbp), %rax	# l, tmp71
	movq	8(%rax), %rax	# l_2->tab, D.15263
	movq	40(%rax), %rax	# _5->Popped, D.15265
	testq	%rax, %rax	# D.15265
	je	.L66	#,
	.loc 1 701 0
	movq	-8(%rbp), %rax	# l, tmp72
	movq	8(%rax), %rax	# l_2->tab, D.15263
	movq	40(%rax), %rax	# _7->Popped, D.15265
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15265
	testq	%rax, %rax	# D.15266
	je	.L66	#,
	.loc 1 702 0
	jmp	.L64	#
.L66:
	.loc 1 704 0
	movq	-8(%rbp), %rax	# l, tmp74
	movq	(%rax), %rdx	# l_2->next, D.15267
	movq	-24(%rbp), %rax	# f, tmp75
	movq	%rdx, (%rax)	# D.15267, *f_1(D)
	.loc 1 705 0
	movq	-8(%rbp), %rax	# l, tmp76
	movq	%rax, %rdi	# tmp76,
	call	Perl_safesysfree	#
.L64:
	.loc 1 707 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	PerlIO_pop, .-PerlIO_pop
	.globl	PerlIO_get_layers
	.type	PerlIO_get_layers, @function
PerlIO_get_layers:
.LFB15:
	.loc 1 717 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 718 0
	call	Perl_newAV	#
	movq	%rax, -24(%rbp)	# tmp88, av
	.loc 1 720 0
	cmpq	$0, -40(%rbp)	#, f
	je	.L68	#,
	.loc 1 720 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# f, tmp89
	movq	(%rax), %rax	# *f_4(D), D.15269
	testq	%rax, %rax	# D.15269
	je	.L68	#,
.LBB11:
	.loc 1 721 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp90
	movq	(%rax), %rax	# *f_4(D), l.13
	movq	%rax, -32(%rbp)	# l.13, l
	.loc 1 723 0
	jmp	.L69	#
.L74:
.LBB12:
	.loc 1 724 0
	movq	-32(%rbp), %rax	# l, l.15
	movq	8(%rax), %rax	# l.15_8->tab, D.15270
	.loc 1 725 0
	testq	%rax, %rax	# D.15270
	je	.L70	#,
	.loc 1 724 0
	movq	-32(%rbp), %rax	# l, l.16
	movq	8(%rax), %rax	# l.16_10->tab, D.15270
	movq	8(%rax), %rax	# _11->name, D.15271
	testq	%rax, %rax	# D.15271
	je	.L70	#,
	.loc 1 725 0
	movq	-32(%rbp), %rax	# l, l.17
	movq	8(%rax), %rax	# l.17_13->tab, D.15270
	movq	8(%rax), %rax	# _14->name, D.15271
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15271,
	call	Perl_newSVpv	#
	jmp	.L71	#
.L70:
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	$PL_sv_undef, %eax	#, iftmp.14
.L71:
	.loc 1 724 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.14, name
	.loc 1 726 0
	movq	-32(%rbp), %rax	# l, l.19
	movq	8(%rax), %rax	# l.19_19->tab, D.15270
	.loc 1 727 0
	testq	%rax, %rax	# D.15270
	je	.L72	#,
	.loc 1 726 0
	movq	-32(%rbp), %rax	# l, l.20
	movq	8(%rax), %rax	# l.20_21->tab, D.15270
	movq	64(%rax), %rax	# _22->Getarg, D.15272
	testq	%rax, %rax	# D.15272
	je	.L72	#,
	.loc 1 727 0
	movq	-32(%rbp), %rax	# l, l.21
	movq	8(%rax), %rax	# l.21_24->tab, D.15270
	movq	64(%rax), %rax	# _25->Getarg, D.15272
	leaq	-32(%rbp), %rcx	#, tmp91
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# tmp91,
	call	*%rax	# D.15272
	jmp	.L73	#
.L72:
	.loc 1 727 0 is_stmt 0 discriminator 1
	movl	$PL_sv_undef, %eax	#, iftmp.18
.L73:
	.loc 1 726 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.18, arg
	.loc 1 728 0
	movq	-16(%rbp), %rdx	# name, tmp92
	movq	-24(%rbp), %rax	# av, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	Perl_av_push	#
	.loc 1 729 0
	movq	-8(%rbp), %rdx	# arg, tmp94
	movq	-24(%rbp), %rax	# av, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	Perl_av_push	#
	.loc 1 730 0
	movq	-32(%rbp), %rax	# l, l.22
	movl	16(%rax), %eax	# l.22_30->flags, D.15273
	movl	%eax, %eax	# D.15273, D.15274
	movq	%rax, %rdi	# D.15274,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15275
	movq	-24(%rbp), %rax	# av, tmp96
	movq	%rdx, %rsi	# D.15275,
	movq	%rax, %rdi	# tmp96,
	call	Perl_av_push	#
	.loc 1 731 0
	movq	-32(%rbp), %rax	# l, l.23
	movq	(%rax), %rax	# l.23_34->next, l.24
	movq	%rax, -32(%rbp)	# l.24, l
.L69:
.LBE12:
	.loc 1 723 0 discriminator 1
	movq	-32(%rbp), %rax	# l, l.25
	testq	%rax, %rax	# l.25
	jne	.L74	#,
.L68:
.LBE11:
	.loc 1 735 0
	movq	-24(%rbp), %rax	# av, D.15276
	.loc 1 736 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	PerlIO_get_layers, .-PerlIO_get_layers
	.section	.rodata
.LC3:
	.string	"%.*s => %p\n"
	.align 8
.LC4:
	.string	"Recursive call to Perl_load_module in PerlIO_find_layer"
.LC5:
	.string	"PerlIO"
.LC6:
	.string	"PerlIO::Layer::NoWarnings"
.LC7:
	.string	"Cannot find %.*s\n"
	.text
	.globl	PerlIO_find_layer
	.type	PerlIO_find_layer, @function
PerlIO_find_layer:
.LFB16:
	.loc 1 745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# name, name
	movq	%rsi, -64(%rbp)	# len, len
	movl	%edx, -68(%rbp)	# load, load
	.loc 1 747 0
	movq	-64(%rbp), %rax	# len, len.26
	testq	%rax, %rax	# len.26
	jg	.L77	#,
	.loc 1 748 0
	movq	-56(%rbp), %rax	# name, tmp85
	movq	%rax, %rdi	# tmp85,
	call	strlen	#
	movq	%rax, -64(%rbp)	# tmp86, len
.L77:
	.loc 1 749 0
	movq	$0, -40(%rbp)	#, i
	jmp	.L78	#
.L81:
.LBB13:
	.loc 1 750 0
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.27
	movq	24(%rax), %rax	# PL_known_layers.27_11->array, D.15279
	movq	-40(%rbp), %rdx	# i, i.28
	salq	$4, %rdx	#, D.15280
	addq	%rdx, %rax	# D.15280, D.15279
	movq	(%rax), %rax	# _15->funcs, tmp87
	movq	%rax, -32(%rbp)	# tmp87, f
	.loc 1 751 0
	movq	-32(%rbp), %rax	# f, tmp88
	movq	8(%rax), %rax	# f_16->name, D.15281
	movq	-64(%rbp), %rdx	# len, tmp89
	movq	-56(%rbp), %rcx	# name, tmp90
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# D.15281,
	call	memcmp	#
	testl	%eax, %eax	# D.15282
	jne	.L79	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp91
	movq	8(%rax), %rdx	# f_16->name, D.15281
	movq	-64(%rbp), %rax	# len, tmp92
	addq	%rdx, %rax	# D.15281, D.15281
	movzbl	(%rax), %eax	# *_20, D.15283
	testb	%al, %al	# D.15283
	jne	.L79	#,
	.loc 1 752 0 is_stmt 1
	movq	-64(%rbp), %rax	# len, tmp93
	movq	-32(%rbp), %rcx	# f, tmp94
	movq	-56(%rbp), %rdx	# name, tmp95
	movl	%eax, %esi	# D.15282,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 753 0
	movq	-32(%rbp), %rax	# f, D.15277
	jmp	.L80	#
.L79:
.LBE13:
	.loc 1 749 0
	addq	$1, -40(%rbp)	#, i
.L78:
	.loc 1 749 0 is_stmt 0 discriminator 1
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.29
	movq	8(%rax), %rax	# PL_known_layers.29_9->cur, D.15278
	cmpq	-40(%rbp), %rax	# i, D.15278
	jg	.L81	#,
	.loc 1 756 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, load
	je	.L82	#,
	.loc 1 756 0 is_stmt 0 discriminator 1
	movq	PL_subname(%rip), %rax	# PL_subname, PL_subname.30
	testq	%rax, %rax	# PL_subname.30
	je	.L82	#,
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.31
	testq	%rax, %rax	# PL_def_layerlist.31
	je	.L82	#,
	.loc 1 757 0 is_stmt 1
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.32
	movq	8(%rax), %rax	# PL_def_layerlist.32_28->cur, D.15278
	cmpq	$1, %rax	#, D.15278
	jle	.L82	#,
	.loc 1 758 0
	movl	PL_in_load_module(%rip), %eax	# PL_in_load_module, PL_in_load_module.33
	testl	%eax, %eax	# PL_in_load_module.33
	je	.L83	#,
	.loc 1 759 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 760 0
	movl	$0, %eax	#, D.15277
	jmp	.L80	#
.L83:
.LBB14:
	.loc 1 762 0
	movl	$6, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -24(%rbp)	# tmp96, pkgsv
	.loc 1 763 0
	movq	-64(%rbp), %rdx	# len, tmp97
	movq	-56(%rbp), %rax	# name, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	Perl_newSVpvn	#
	movq	%rax, -16(%rbp)	# tmp99, layer
	.loc 1 764 0
	movl	$0, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_get_cv	#
	movq	%rax, -8(%rbp)	# tmp100, cv
	.loc 1 765 0
	call	Perl_push_scope	#
	.loc 1 766 0
	movl	$PL_in_load_module, %edi	#,
	call	Perl_save_int	#
	.loc 1 767 0
	cmpq	$0, -8(%rbp)	#, cv
	je	.L84	#,
	.loc 1 768 0
	movl	$PL_warnhook, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 769 0
	movq	-8(%rbp), %rax	# cv, tmp101
	movq	%rax, PL_warnhook(%rip)	# tmp101, PL_warnhook
.L84:
	.loc 1 771 0
	movl	PL_in_load_module(%rip), %eax	# PL_in_load_module, PL_in_load_module.34
	addl	$1, %eax	#, PL_in_load_module.35
	movl	%eax, PL_in_load_module(%rip)	# PL_in_load_module.35, PL_in_load_module
	.loc 1 775 0
	movq	-16(%rbp), %rdx	# layer, tmp102
	movq	-24(%rbp), %rax	# pkgsv, tmp103
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp102,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp103,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_load_module	#
	.loc 1 776 0
	movl	PL_in_load_module(%rip), %eax	# PL_in_load_module, PL_in_load_module.36
	subl	$1, %eax	#, PL_in_load_module.37
	movl	%eax, PL_in_load_module(%rip)	# PL_in_load_module.37, PL_in_load_module
	.loc 1 777 0
	call	Perl_pop_scope	#
	.loc 1 778 0
	movq	-64(%rbp), %rcx	# len, tmp104
	movq	-56(%rbp), %rax	# name, tmp105
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	PerlIO_find_layer	#
	jmp	.L80	#
.L82:
.LBE14:
	.loc 1 781 0
	movq	-64(%rbp), %rax	# len, tmp106
	movq	-56(%rbp), %rdx	# name, tmp107
	movl	%eax, %esi	# D.15282,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 782 0
	movl	$0, %eax	#, D.15277
.L80:
	.loc 1 783 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	PerlIO_find_layer, .-PerlIO_find_layer
	.section	.rodata
.LC8:
	.string	"PerlIO::Layer"
	.text
	.globl	PerlIO_tab_sv
	.type	PerlIO_tab_sv, @function
PerlIO_tab_sv:
.LFB17:
	.loc 1 867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# tab, tab
	.loc 1 868 0
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp64, stash
	.loc 1 869 0
	movq	-24(%rbp), %rax	# tab, tab.38
	movq	%rax, %rdi	# tab.38,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15289,
	call	Perl_newRV_noinc	#
	movq	-16(%rbp), %rdx	# stash, tmp65
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# D.15289,
	call	Perl_sv_bless	#
	movq	%rax, -8(%rbp)	# tmp66, sv
	.loc 1 870 0
	movq	-8(%rbp), %rax	# sv, D.15289
	.loc 1 871 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	PerlIO_tab_sv, .-PerlIO_tab_sv
	.section	.rodata
.LC9:
	.string	"warning:%s\n"
	.text
	.globl	XS_PerlIO__Layer__NoWarnings
	.type	XS_PerlIO__Layer__NoWarnings, @function
XS_PerlIO__Layer__NoWarnings:
.LFB18:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 878 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.39
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.40
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.42
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.42, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.41_5, D.15291
	cltq
	salq	$3, %rax	#, D.15292
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.43
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.44
	subq	%rax, %rdx	# PL_stack_base.45, D.15293
	movq	%rdx, %rax	# D.15293, D.15293
	sarq	$3, %rax	#, tmp105
	addl	$1, %eax	#, D.15294
	movl	%eax, -32(%rbp)	# D.15294, ax
	movq	%r12, %rdx	# sp, sp.46
	movq	%rbx, %rax	# mark, mark.47
	subq	%rax, %rdx	# mark.47, D.15293
	movq	%rdx, %rax	# D.15293, D.15293
	sarq	$3, %rax	#, tmp106
	movl	%eax, -28(%rbp)	# D.15293, items
	.loc 1 879 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L88	#,
	.loc 1 880 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.49
	movl	-32(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15295
	movq	(%rax), %rax	# *_27, D.15296
	movl	12(%rax), %eax	# _28->sv_flags, D.15297
	andl	$262144, %eax	#, D.15297
	testl	%eax, %eax	# D.15297
	je	.L89	#,
	.loc 1 880 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.50
	movl	-32(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rdx	# tmp108, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15295
	movq	(%rax), %rax	# *_34, D.15296
	movq	(%rax), %rax	# _35->sv_any, D.15298
	movq	(%rax), %rax	# MEM[(struct XPV *)_36].xpv_pv, iftmp.48
	jmp	.L90	#
.L89:
	.loc 1 880 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.51
	movl	-32(%rbp), %edx	# ax, tmp109
	movslq	%edx, %rdx	# tmp109, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15295
	movq	(%rax), %rax	# *_41, D.15296
	movq	%rax, %rdi	# D.15296,
	call	Perl_sv_2pv_nolen	#
.L90:
	.loc 1 880 0 discriminator 3
	movq	%rax, %rsi	# iftmp.48,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
.L88:
.LBB15:
	.loc 1 881 0 is_stmt 1
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.52
	movl	-32(%rbp), %edx	# ax, tmp110
	movslq	%edx, %rcx	# tmp110, D.15299
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.53
	addq	%rcx, %rdx	# D.15299, D.15299
	salq	$3, %rdx	#, D.15299
	subq	$8, %rdx	#, D.15299
	addq	%rdx, %rax	# D.15299, PL_stack_sp.54
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.54, PL_stack_sp
	nop
.LBE15:
	.loc 1 882 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	XS_PerlIO__Layer__NoWarnings, .-XS_PerlIO__Layer__NoWarnings
	.section	.rodata
	.align 8
.LC10:
	.string	"Usage class->find(name[,load])"
	.text
	.globl	XS_PerlIO__Layer__find
	.type	XS_PerlIO__Layer__find, @function
XS_PerlIO__Layer__find:
.LFB19:
	.loc 1 885 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 886 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.55
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.56
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.58
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.58, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.57_12, D.15301
	cltq
	salq	$3, %rax	#, D.15302
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.59
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.60
	subq	%rax, %rdx	# PL_stack_base.61, D.15303
	movq	%rdx, %rax	# D.15303, D.15303
	sarq	$3, %rax	#, tmp199
	addl	$1, %eax	#, D.15304
	movl	%eax, -56(%rbp)	# D.15304, ax
	movq	%r12, %rdx	# sp, sp.62
	movq	%rbx, %rax	# mark, mark.63
	subq	%rax, %rdx	# mark.63, D.15303
	movq	%rdx, %rax	# D.15303, D.15303
	sarq	$3, %rax	#, tmp200
	movl	%eax, -52(%rbp)	# D.15303, items
	.loc 1 887 0
	cmpl	$1, -52(%rbp)	#, items
	jg	.L93	#,
	.loc 1 888 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L92	#
.L93:
.LBB16:
	.loc 1 890 0
	movq	$0, -48(%rbp)	#, len
	.loc 1 891 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.65
	movl	-56(%rbp), %edx	# ax, tmp201
	movslq	%edx, %rdx	# tmp201, D.15305
	addq	$1, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_35, D.15307
	movl	12(%rax), %eax	# _36->sv_flags, D.15308
	andl	$262144, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L95	#,
	.loc 1 891 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.66
	movl	-56(%rbp), %edx	# ax, tmp202
	movslq	%edx, %rdx	# tmp202, D.15305
	addq	$1, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_43, D.15307
	movq	(%rax), %rax	# _44->sv_any, D.15309
	movq	8(%rax), %rax	# MEM[(struct XPV *)_45].xpv_cur, len.67
	movq	%rax, -48(%rbp)	# len.67, len
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.68
	movl	-56(%rbp), %edx	# ax, tmp203
	movslq	%edx, %rdx	# tmp203, D.15305
	addq	$1, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_51, D.15307
	movq	(%rax), %rax	# _52->sv_any, D.15309
	movq	(%rax), %rax	# MEM[(struct XPV *)_53].xpv_pv, iftmp.64
	jmp	.L96	#
.L95:
	.loc 1 891 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.69
	movl	-56(%rbp), %edx	# ax, tmp204
	movslq	%edx, %rdx	# tmp204, D.15305
	addq	$1, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_59, D.15307
	leaq	-48(%rbp), %rcx	#, tmp205
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp205,
	movq	%rax, %rdi	# D.15307,
	call	Perl_sv_2pv_flags	#
.L96:
	.loc 1 891 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.64, name
	.loc 1 892 0 is_stmt 1 discriminator 3
	cmpl	$2, -52(%rbp)	#, items
	jle	.L97	#,
	.loc 1 892 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.72
	movl	-56(%rbp), %edx	# ax, tmp206
	movslq	%edx, %rdx	# tmp206, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_67, D.15307
	testq	%rax, %rax	# D.15307
	je	.L98	#,
	.loc 1 892 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.74
	movl	-56(%rbp), %edx	# ax, tmp207
	movslq	%edx, %rdx	# tmp207, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_73, D.15307
	movl	12(%rax), %eax	# _74->sv_flags, D.15308
	andl	$262144, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L99	#,
	.loc 1 892 0 discriminator 5
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.76
	movl	-56(%rbp), %edx	# ax, tmp208
	movslq	%edx, %rdx	# tmp208, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_81, D.15307
	movq	(%rax), %rax	# _82->sv_any, PL_Xpv.77
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.77, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.78
	testq	%rax, %rax	# PL_Xpv.78
	je	.L100	#,
	.loc 1 892 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.79
	movq	8(%rax), %rax	# PL_Xpv.79_85->xpv_cur, D.15302
	cmpq	$1, %rax	#, D.15302
	ja	.L101	#,
	.loc 1 892 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.80
	movq	8(%rax), %rax	# PL_Xpv.80_87->xpv_cur, D.15302
	testq	%rax, %rax	# D.15302
	je	.L100	#,
	.loc 1 892 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.81
	movq	(%rax), %rax	# PL_Xpv.81_89->xpv_pv, D.15310
	movzbl	(%rax), %eax	# *_90, D.15311
	cmpb	$48, %al	#, D.15311
	je	.L100	#,
.L101:
	.loc 1 892 0 discriminator 3
	movl	$1, %eax	#, iftmp.75
	jmp	.L102	#
.L100:
	.loc 1 892 0 discriminator 2
	movl	$0, %eax	#, iftmp.75
.L102:
	jmp	.L109	#
.L99:
	.loc 1 892 0 discriminator 6
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.83
	movl	-56(%rbp), %edx	# ax, tmp209
	movslq	%edx, %rdx	# tmp209, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_99, D.15307
	movl	12(%rax), %eax	# _100->sv_flags, D.15308
	andl	$65536, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L104	#,
	.loc 1 892 0 discriminator 7
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.84
	movl	-56(%rbp), %edx	# ax, tmp210
	movslq	%edx, %rdx	# tmp210, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_107, D.15307
	movq	(%rax), %rax	# _108->sv_any, D.15309
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_109].xiv_iv, D.15303
	testq	%rax, %rax	# D.15303
	setne	%al	#, D.15312
	jmp	.L109	#
.L104:
	.loc 1 892 0 discriminator 8
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.86
	movl	-56(%rbp), %edx	# ax, tmp211
	movslq	%edx, %rdx	# tmp211, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_117, D.15307
	movl	12(%rax), %eax	# _118->sv_flags, D.15308
	andl	$131072, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L106	#,
	.loc 1 892 0 discriminator 9
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.87
	movl	-56(%rbp), %edx	# ax, tmp212
	movslq	%edx, %rdx	# tmp212, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_125, D.15307
	movq	(%rax), %rax	# _126->sv_any, D.15309
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_127].xnv_nv, D.15313
	xorpd	%xmm1, %xmm1	# tmp214
	ucomisd	%xmm1, %xmm0	# tmp214, D.15313
	setp	%dl	#, tmp213
	movl	$1, %eax	#, tmp216
	xorpd	%xmm1, %xmm1	# tmp215
	ucomisd	%xmm1, %xmm0	# tmp215, D.15313
	cmove	%edx, %eax	# tmp213,, D.15312
	jmp	.L109	#
.L106:
	.loc 1 892 0 discriminator 10
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.88
	movl	-56(%rbp), %edx	# ax, tmp217
	movslq	%edx, %rdx	# tmp217, D.15305
	addq	$2, %rdx	#, D.15305
	salq	$3, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, D.15306
	movq	(%rax), %rax	# *_135, D.15307
	movq	%rax, %rdi	# D.15307,
	call	Perl_sv_2bool	#
	jmp	.L109	#
.L98:
	.loc 1 892 0 discriminator 4
	movl	$0, %eax	#, iftmp.71
	jmp	.L109	#
.L97:
	.loc 1 892 0 discriminator 2
	movl	$0, %eax	#, iftmp.70
.L109:
	.loc 1 892 0 discriminator 13
	movb	%al, -57(%rbp)	# iftmp.70, load
	.loc 1 893 0 is_stmt 1 discriminator 13
	movsbl	-57(%rbp), %edx	# load, D.15301
	movq	-48(%rbp), %rcx	# len, len.89
	movq	-40(%rbp), %rax	# name, tmp218
	movq	%rcx, %rsi	# len.89,
	movq	%rax, %rdi	# tmp218,
	call	PerlIO_find_layer	#
	movq	%rax, -32(%rbp)	# tmp219, layer
	.loc 1 894 0 discriminator 13
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.90
	movl	-56(%rbp), %edx	# ax, tmp220
	movslq	%edx, %rdx	# tmp220, D.15302
	salq	$3, %rdx	#, D.15302
	leaq	(%rax,%rdx), %rbx	#, D.15306
	.loc 1 895 0 discriminator 13
	cmpq	$0, -32(%rbp)	#, layer
	je	.L110	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# layer, tmp221
	movq	%rax, %rdi	# tmp221,
	call	PerlIO_tab_sv	#
	movq	%rax, %rdi	# D.15307,
	call	Perl_sv_2mortal	#
	jmp	.L111	#
.L110:
	.loc 1 895 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.91
.L111:
	.loc 1 894 0 is_stmt 1
	movq	%rax, (%rbx)	# iftmp.91, *_151
.LBB17:
	.loc 1 897 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.92
	movl	-56(%rbp), %edx	# ax, tmp222
	movslq	%edx, %rcx	# tmp222, D.15305
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.93
	addq	%rcx, %rdx	# D.15305, D.15305
	salq	$3, %rdx	#, D.15305
	subq	$8, %rdx	#, D.15305
	addq	%rdx, %rax	# D.15305, PL_stack_sp.94
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.94, PL_stack_sp
	nop
.L92:
.LBE17:
.LBE16:
	.loc 1 899 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	XS_PerlIO__Layer__find, .-XS_PerlIO__Layer__find
	.section	.rodata
.LC12:
	.string	"define %s %p\n"
	.text
	.globl	PerlIO_define_layer
	.type	PerlIO_define_layer, @function
PerlIO_define_layer:
.LFB20:
	.loc 1 903 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# tab, tab
	.loc 1 904 0
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.95
	testq	%rax, %rax	# PL_known_layers.95
	jne	.L113	#,
	.loc 1 905 0
	call	PerlIO_list_alloc	#
	movq	%rax, PL_known_layers(%rip)	# PL_known_layers.96, PL_known_layers
.L113:
	.loc 1 906 0
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.97
	movq	-8(%rbp), %rcx	# tab, tmp63
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# PL_known_layers.97,
	call	PerlIO_list_push	#
	.loc 1 907 0
	movq	-8(%rbp), %rax	# tab, tmp64
	movq	8(%rax), %rax	# tab_4(D)->name, D.15315
	movq	-8(%rbp), %rdx	# tab, tmp65
	movq	%rax, %rsi	# D.15315,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 908 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	PerlIO_define_layer, .-PerlIO_define_layer
	.section	.rodata
	.align 8
.LC13:
	.string	"Invalid separator character %c%c%c in PerlIO layer specification %s"
	.align 8
.LC14:
	.string	"Argument list not closed for PerlIO layer \"%.*s\""
.LC15:
	.string	"Unknown PerlIO layer \"%.*s\""
	.text
	.globl	PerlIO_parse_layers
	.type	PerlIO_parse_layers, @function
PerlIO_parse_layers:
.LFB21:
	.loc 1 912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# av, av
	movq	%rsi, -80(%rbp)	# names, names
	.loc 1 913 0
	cmpq	$0, -80(%rbp)	#, names
	je	.L115	#,
.LBB18:
	.loc 1 914 0
	movq	-80(%rbp), %rax	# names, tmp165
	movq	%rax, -48(%rbp)	# tmp165, s
	.loc 1 915 0
	jmp	.L116	#
.L153:
	.loc 1 916 0
	jmp	.L117	#
.L118:
	.loc 1 917 0
	addq	$1, -48(%rbp)	#, s
.L117:
	.loc 1 916 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp166
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$32, %al	#, D.15318
	je	.L118	#,
	.loc 1 916 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# s, tmp167
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$9, %al	#, D.15318
	je	.L118	#,
	.loc 1 916 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp168
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$10, %al	#, D.15318
	je	.L118	#,
	movq	-48(%rbp), %rax	# s, tmp169
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$13, %al	#, D.15318
	je	.L118	#,
	movq	-48(%rbp), %rax	# s, tmp170
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$12, %al	#, D.15318
	je	.L118	#,
	movq	-48(%rbp), %rax	# s, tmp171
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$58, %al	#, D.15318
	je	.L118	#,
	.loc 1 918 0 is_stmt 1
	movq	-48(%rbp), %rax	# s, tmp172
	movzbl	(%rax), %eax	# *s_1, D.15318
	testb	%al, %al	# D.15318
	je	.L116	#,
.LBB19:
	.loc 1 919 0
	movq	$0, -16(%rbp)	#, llen
	.loc 1 920 0
	movq	-48(%rbp), %rax	# s, tmp173
	movq	%rax, -40(%rbp)	# tmp173, e
	.loc 1 921 0
	movq	$0, -32(%rbp)	#, as
	.loc 1 922 0
	movq	$0, -24(%rbp)	#, alen
	.loc 1 923 0
	movq	-48(%rbp), %rax	# s, tmp174
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$64, %al	#, D.15318
	jle	.L119	#,
	.loc 1 923 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# s, tmp175
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$90, %al	#, D.15318
	jle	.L120	#,
.L119:
	.loc 1 923 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp176
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$96, %al	#, D.15318
	jle	.L121	#,
	.loc 1 923 0 discriminator 2
	movq	-48(%rbp), %rax	# s, tmp177
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$122, %al	#, D.15318
	jle	.L120	#,
.L121:
	.loc 1 923 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp178
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$95, %al	#, D.15318
	je	.L120	#,
.LBB20:
	.loc 1 929 0 is_stmt 1
	movq	-48(%rbp), %rax	# s, tmp179
	movzbl	(%rax), %eax	# *s_1, D.15318
	cmpb	$39, %al	#, D.15318
	jne	.L122	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movl	$34, %eax	#, iftmp.98
	jmp	.L123	#
.L122:
	.loc 1 929 0 discriminator 2
	movl	$39, %eax	#, iftmp.98
.L123:
	.loc 1 929 0 discriminator 3
	movb	%al, -54(%rbp)	# iftmp.98, q
	.loc 1 930 0 is_stmt 1 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.99
	movq	80(%rax), %rax	# PL_curcop.99_39->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	je	.L124	#,
	.loc 1 930 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.100
	movq	80(%rax), %rax	# PL_curcop.100_41->cop_warnings, D.15319
	cmpq	$32, %rax	#, D.15319
	je	.L124	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.101
	movq	80(%rax), %rax	# PL_curcop.101_43->cop_warnings, D.15319
	cmpq	$16, %rax	#, D.15319
	je	.L125	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.102
	movq	80(%rax), %rax	# PL_curcop.102_45->cop_warnings, D.15319
	movq	(%rax), %rax	# _46->sv_any, D.15320
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, D.15321
	addq	$2, %rax	#, D.15321
	movzbl	(%rax), %eax	# *_49, D.15318
	movsbl	%al, %eax	# D.15318, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	jne	.L125	#,
.L124:
	.loc 1 930 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.103
	movq	80(%rax), %rax	# PL_curcop.103_53->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	jne	.L126	#,
	.loc 1 930 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.104
	movzbl	%al, %eax	# PL_dowarn.104, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	je	.L126	#,
.L125:
	.loc 1 931 0 is_stmt 1
	movsbl	-54(%rbp), %ecx	# q, D.15317
	.loc 1 933 0
	movq	-48(%rbp), %rax	# s, tmp180
	movzbl	(%rax), %eax	# *s_1, D.15318
	.loc 1 931 0
	movsbl	%al, %edx	# D.15318, D.15317
	movsbl	-54(%rbp), %eax	# q, D.15317
	movq	-48(%rbp), %rsi	# s, tmp181
	movq	%rsi, %r9	# tmp181,
	movl	%ecx, %r8d	# D.15317,
	movl	%edx, %ecx	# D.15317,
	movl	%eax, %edx	# D.15317,
	movl	$.LC13, %esi	#,
	movl	$8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L126:
	.loc 1 934 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_62
	.loc 1 935 0
	movl	$-1, %eax	#, D.15317
	jmp	.L127	#
.L120:
.LBE20:
	.loc 1 938 0 discriminator 1
	addq	$1, -40(%rbp)	#, e
	.loc 1 939 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp182
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$64, %al	#, D.15318
	jle	.L128	#,
	movq	-40(%rbp), %rax	# e, tmp183
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$90, %al	#, D.15318
	jle	.L120	#,
.L128:
	.loc 1 939 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp184
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$96, %al	#, D.15318
	jle	.L129	#,
	.loc 1 939 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp185
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$122, %al	#, D.15318
	jle	.L120	#,
.L129:
	.loc 1 939 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp186
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$47, %al	#, D.15318
	jle	.L130	#,
	.loc 1 939 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp187
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$57, %al	#, D.15318
	jle	.L120	#,
.L130:
	.loc 1 939 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp188
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$95, %al	#, D.15318
	je	.L120	#,
	.loc 1 940 0 is_stmt 1
	movq	-40(%rbp), %rdx	# e, e.105
	movq	-48(%rbp), %rax	# s, s.106
	subq	%rax, %rdx	# s.106, D.15323
	movq	%rdx, %rax	# D.15323, D.15323
	movq	%rax, -16(%rbp)	# D.15323, llen
	.loc 1 941 0
	movq	-40(%rbp), %rax	# e, tmp189
	movzbl	(%rax), %eax	# *e_64, D.15318
	cmpb	$40, %al	#, D.15318
	jne	.L131	#,
.LBB21:
	.loc 1 942 0
	movl	$1, -52(%rbp)	#, nesting
	.loc 1 943 0
	addq	$1, -40(%rbp)	#, e
	movq	-40(%rbp), %rax	# e, tmp190
	movq	%rax, -32(%rbp)	# tmp190, as
	.loc 1 944 0
	jmp	.L132	#
.L143:
	.loc 1 945 0
	movq	-40(%rbp), %rax	# e, e.107
	leaq	1(%rax), %rdx	#, tmp191
	movq	%rdx, -40(%rbp)	# tmp191, e
	movzbl	(%rax), %eax	# *e.107_80, D.15318
	movsbl	%al, %eax	# D.15318, D.15317
	cmpl	$40, %eax	#, D.15317
	je	.L134	#,
	cmpl	$40, %eax	#, D.15317
	jg	.L135	#,
	testl	%eax, %eax	# D.15317
	je	.L136	#,
	.loc 1 976 0
	jmp	.L132	#
.L135:
	.loc 1 945 0
	cmpl	$41, %eax	#, D.15317
	je	.L137	#,
	cmpl	$92, %eax	#, D.15317
	je	.L138	#,
	.loc 1 976 0
	jmp	.L132	#
.L137:
	.loc 1 947 0
	subl	$1, -52(%rbp)	#, nesting
	cmpl	$0, -52(%rbp)	#, nesting
	jne	.L139	#,
	.loc 1 948 0
	movq	-40(%rbp), %rax	# e, tmp192
	subq	$1, %rax	#, D.15324
	movq	%rax, %rdx	# D.15324, D.15323
	movq	-32(%rbp), %rax	# as, as.108
	subq	%rax, %rdx	# as.108, D.15323
	movq	%rdx, %rax	# D.15323, D.15323
	movq	%rax, -24(%rbp)	# D.15323, alen
	.loc 1 949 0
	jmp	.L132	#
.L139:
	jmp	.L132	#
.L134:
	.loc 1 951 0
	addl	$1, -52(%rbp)	#, nesting
	.loc 1 952 0
	jmp	.L132	#
.L138:
	.loc 1 959 0
	movq	-40(%rbp), %rax	# e, e.109
	leaq	1(%rax), %rdx	#, tmp193
	movq	%rdx, -40(%rbp)	# tmp193, e
	movzbl	(%rax), %eax	# *e.109_91, D.15318
	testb	%al, %al	# D.15318
	je	.L136	#,
	.loc 1 960 0
	jmp	.L132	#
.L136:
	.loc 1 966 0
	subq	$1, -40(%rbp)	#, e
	.loc 1 967 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.110
	movq	80(%rax), %rax	# PL_curcop.110_95->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	je	.L140	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.111
	movq	80(%rax), %rax	# PL_curcop.111_97->cop_warnings, D.15319
	cmpq	$32, %rax	#, D.15319
	je	.L140	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.112
	movq	80(%rax), %rax	# PL_curcop.112_99->cop_warnings, D.15319
	cmpq	$16, %rax	#, D.15319
	je	.L141	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.113
	movq	80(%rax), %rax	# PL_curcop.113_101->cop_warnings, D.15319
	movq	(%rax), %rax	# _102->sv_any, D.15320
	movq	(%rax), %rax	# MEM[(struct XPV *)_103].xpv_pv, D.15321
	addq	$2, %rax	#, D.15321
	movzbl	(%rax), %eax	# *_105, D.15318
	movsbl	%al, %eax	# D.15318, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	jne	.L141	#,
.L140:
	.loc 1 967 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.114
	movq	80(%rax), %rax	# PL_curcop.114_109->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	jne	.L142	#,
	.loc 1 967 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.115
	movzbl	%al, %eax	# PL_dowarn.115, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	je	.L142	#,
.L141:
	.loc 1 970 0 is_stmt 1
	movq	-40(%rbp), %rdx	# e, e.116
	movq	-48(%rbp), %rax	# s, s.117
	subq	%rax, %rdx	# s.117, D.15323
	movq	%rdx, %rax	# D.15323, D.15323
	.loc 1 968 0
	movq	-48(%rbp), %rdx	# s, tmp194
	movq	%rdx, %rcx	# tmp194,
	movl	%eax, %edx	# D.15317,
	movl	$.LC14, %esi	#,
	movl	$8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L142:
	.loc 1 971 0
	movl	$-1, %eax	#, D.15317
	jmp	.L127	#
.L132:
	.loc 1 944 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, nesting
	jne	.L143	#,
.L131:
.LBE21:
	.loc 1 980 0
	movq	-40(%rbp), %rax	# e, tmp195
	cmpq	-48(%rbp), %rax	# s, tmp195
	jbe	.L144	#,
.LBB22:
	.loc 1 981 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.119
	movq	80(%rax), %rax	# PL_curcop.119_119->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	je	.L145	#,
	.loc 1 981 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.120
	movq	80(%rax), %rax	# PL_curcop.120_121->cop_warnings, D.15319
	cmpq	$32, %rax	#, D.15319
	je	.L145	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.121
	movq	80(%rax), %rax	# PL_curcop.121_123->cop_warnings, D.15319
	cmpq	$16, %rax	#, D.15319
	je	.L146	#,
	.loc 1 981 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.122
	movq	80(%rax), %rax	# PL_curcop.122_125->cop_warnings, D.15319
	movq	(%rax), %rax	# _126->sv_any, D.15320
	movq	(%rax), %rax	# MEM[(struct XPV *)_127].xpv_pv, D.15321
	addq	$2, %rax	#, D.15321
	movzbl	(%rax), %eax	# *_129, D.15318
	movsbl	%al, %eax	# D.15318, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	jne	.L146	#,
.L145:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.123
	movq	80(%rax), %rax	# PL_curcop.123_133->cop_warnings, D.15319
	testq	%rax, %rax	# D.15319
	jne	.L147	#,
	.loc 1 981 0 discriminator 3
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.124
	movzbl	%al, %eax	# PL_dowarn.124, D.15317
	andl	$1, %eax	#, D.15317
	testl	%eax, %eax	# D.15317
	je	.L147	#,
.L146:
	.loc 1 981 0 discriminator 1
	movl	$1, %eax	#, iftmp.118
	jmp	.L148	#
.L147:
	.loc 1 981 0 discriminator 4
	movl	$0, %eax	#, iftmp.118
.L148:
	.loc 1 981 0 discriminator 5
	movb	%al, -53(%rbp)	# iftmp.118, warn_layer
	.loc 1 982 0 is_stmt 1 discriminator 5
	movq	-16(%rbp), %rcx	# llen, tmp196
	movq	-48(%rbp), %rax	# s, tmp197
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	PerlIO_find_layer	#
	movq	%rax, -8(%rbp)	# tmp198, layer
	.loc 1 984 0 discriminator 5
	cmpq	$0, -8(%rbp)	#, layer
	je	.L149	#,
	.loc 1 985 0
	cmpq	$0, -32(%rbp)	#, as
	je	.L150	#,
	.loc 1 985 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# alen, tmp199
	movq	-32(%rbp), %rax	# as, tmp200
	movq	%rdx, %rsi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	Perl_newSVpvn	#
	jmp	.L151	#
.L150:
	.loc 1 985 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.125
.L151:
	.loc 1 985 0 discriminator 1
	movq	-8(%rbp), %rsi	# layer, tmp201
	movq	-72(%rbp), %rcx	# av, tmp202
	movq	%rax, %rdx	# iftmp.125,
	movq	%rcx, %rdi	# tmp202,
	call	PerlIO_list_push	#
	jmp	.L144	#
.L149:
	.loc 1 991 0 is_stmt 1
	cmpb	$0, -53(%rbp)	#, warn_layer
	je	.L152	#,
	.loc 1 992 0
	movq	-16(%rbp), %rax	# llen, tmp203
	movq	-48(%rbp), %rdx	# s, tmp204
	movq	%rdx, %rcx	# tmp204,
	movl	%eax, %edx	# D.15317,
	movl	$.LC15, %esi	#,
	movl	$8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L152:
	.loc 1 994 0
	movl	$-1, %eax	#, D.15317
	jmp	.L127	#
.L144:
.LBE22:
	.loc 1 997 0
	movq	-40(%rbp), %rax	# e, tmp205
	movq	%rax, -48(%rbp)	# tmp205, s
.L116:
.LBE19:
	.loc 1 915 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp206
	movzbl	(%rax), %eax	# *s_2, D.15318
	testb	%al, %al	# D.15318
	jne	.L153	#,
.L115:
.LBE18:
	.loc 1 1001 0
	movl	$0, %eax	#, D.15317
.L127:
	.loc 1 1002 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	PerlIO_parse_layers, .-PerlIO_parse_layers
	.section	.rodata
.LC16:
	.string	"Pushing %s\n"
	.text
	.globl	PerlIO_default_buffer
	.type	PerlIO_default_buffer, @function
PerlIO_default_buffer:
.LFB22:
	.loc 1 1006 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	.loc 1 1007 0
	movq	$PerlIO_perlio, -8(%rbp)	#, tab
	.loc 1 1011 0
	movq	PerlIO_stdio+216(%rip), %rax	# PerlIO_stdio.Set_ptrcnt, D.15329
	testq	%rax, %rax	# D.15329
	je	.L155	#,
	.loc 1 1012 0
	movq	$PerlIO_stdio, -8(%rbp)	#, tab
.L155:
	.loc 1 1014 0
	movq	-8(%rbp), %rax	# tab, tmp63
	movq	8(%rax), %rax	# tab_1->name, D.15330
	movq	%rax, %rsi	# D.15330,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1015 0
	movq	-8(%rbp), %rax	# tab, tmp64
	movq	8(%rax), %rax	# tab_1->name, D.15330
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15330,
	call	PerlIO_find_layer	#
	movq	%rax, %rcx	#, D.15331
	movq	-24(%rbp), %rax	# av, tmp65
	movl	$PL_sv_undef, %edx	#,
	movq	%rcx, %rsi	# D.15331,
	movq	%rax, %rdi	# tmp65,
	call	PerlIO_list_push	#
	.loc 1 1017 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	PerlIO_default_buffer, .-PerlIO_default_buffer
	.globl	PerlIO_arg_fetch
	.type	PerlIO_arg_fetch, @function
PerlIO_arg_fetch:
.LFB23:
	.loc 1 1021 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# av, av
	movq	%rsi, -16(%rbp)	# n, n
	.loc 1 1022 0
	movq	-8(%rbp), %rax	# av, tmp65
	movq	24(%rax), %rax	# av_1(D)->array, D.15333
	movq	-16(%rbp), %rdx	# n, n.126
	salq	$4, %rdx	#, D.15334
	addq	%rdx, %rax	# D.15334, D.15333
	movq	8(%rax), %rax	# _6->arg, D.15335
	.loc 1 1023 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	PerlIO_arg_fetch, .-PerlIO_arg_fetch
	.section	.rodata
.LC17:
	.string	"Layer %ld is %s\n"
	.align 8
.LC18:
	.string	"panic: PerlIO layer array corrupt"
	.text
	.globl	PerlIO_layer_fetch
	.type	PerlIO_layer_fetch, @function
PerlIO_layer_fetch:
.LFB24:
	.loc 1 1027 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# av, av
	movq	%rsi, -16(%rbp)	# n, n
	movq	%rdx, -24(%rbp)	# def, def
	.loc 1 1028 0
	cmpq	$0, -16(%rbp)	#, n
	js	.L159	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# av, tmp72
	movq	8(%rax), %rax	# av_3(D)->cur, D.15337
	cmpq	-16(%rbp), %rax	# n, D.15337
	jle	.L159	#,
	.loc 1 1030 0 is_stmt 1
	movq	-8(%rbp), %rax	# av, tmp73
	movq	24(%rax), %rax	# av_3(D)->array, D.15338
	movq	-16(%rbp), %rdx	# n, n.127
	salq	$4, %rdx	#, D.15339
	addq	%rdx, %rax	# D.15339, D.15338
	movq	(%rax), %rax	# _8->funcs, D.15336
	.loc 1 1029 0
	movq	8(%rax), %rdx	# _9->name, D.15340
	movq	-16(%rbp), %rax	# n, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# av, tmp75
	movq	24(%rax), %rax	# av_3(D)->array, D.15338
	movq	-16(%rbp), %rdx	# n, n.128
	salq	$4, %rdx	#, D.15339
	addq	%rdx, %rax	# D.15339, D.15338
	movq	(%rax), %rax	# _14->funcs, D.15336
	jmp	.L160	#
.L159:
	.loc 1 1033 0
	cmpq	$0, -24(%rbp)	#, def
	jne	.L161	#,
	.loc 1 1034 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L161:
	.loc 1 1035 0
	movq	-24(%rbp), %rax	# def, D.15336
.L160:
	.loc 1 1036 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	PerlIO_layer_fetch, .-PerlIO_layer_fetch
	.globl	PerlIOPop_pushed
	.type	PerlIOPop_pushed, @function
PerlIOPop_pushed:
.LFB25:
	.loc 1 1040 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# mode, mode
	movq	%rdx, -24(%rbp)	# arg, arg
	movq	%rcx, -32(%rbp)	# tab, tab
	.loc 1 1041 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L163	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp62
	movq	(%rax), %rax	# *f_2(D), D.15344
	testq	%rax, %rax	# D.15344
	je	.L163	#,
	.loc 1 1042 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_PerlIO_flush	#
	.loc 1 1043 0
	movq	-8(%rbp), %rax	# f, tmp64
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_pop	#
	.loc 1 1044 0
	movl	$0, %eax	#, D.15343
	jmp	.L164	#
.L163:
	.loc 1 1046 0
	movq	$-1, %rax	#, D.15343
.L164:
	.loc 1 1047 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	PerlIOPop_pushed, .-PerlIOPop_pushed
	.globl	PerlIO_remove
	.section	.rodata
.LC19:
	.string	"pop"
	.data
	.align 32
	.type	PerlIO_remove, @object
	.size	PerlIO_remove, 224
PerlIO_remove:
# fsize:
	.quad	224
# name:
	.quad	.LC19
# size:
	.quad	0
# kind:
	.long	32784
# Pushed:
	.zero	4
	.quad	PerlIOPop_pushed
# Popped:
	.quad	0
# Open:
	.quad	0
# Binmode:
	.quad	0
# Getarg:
	.quad	0
# Fileno:
	.quad	0
# Dup:
	.quad	0
# Read:
	.quad	0
# Unread:
	.quad	0
# Write:
	.quad	0
# Seek:
	.quad	0
# Tell:
	.quad	0
# Close:
	.quad	0
# Flush:
	.quad	0
# Fill:
	.quad	0
# Eof:
	.quad	0
# Error:
	.quad	0
# Clearerr:
	.quad	0
# Setlinebuf:
	.quad	0
# Get_base:
	.quad	0
# Get_bufsiz:
	.quad	0
# Get_ptr:
	.quad	0
	.zero	16
	.text
	.globl	PerlIO_default_layers
	.type	PerlIO_default_layers, @function
PerlIO_default_layers:
.LFB26:
	.loc 1 1080 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1081 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.129
	testq	%rax, %rax	# PL_def_layerlist.129
	jne	.L166	#,
.LBB23:
	.loc 1 1083 0
	movq	$0, -16(%rbp)	#, s
	.loc 1 1087 0
	movq	$PerlIO_unix, -8(%rbp)	#, osLayer
	.loc 1 1088 0
	call	PerlIO_list_alloc	#
	movq	%rax, PL_def_layerlist(%rip)	# PL_def_layerlist.130, PL_def_layerlist
	.loc 1 1089 0
	movl	$PerlIO_unix, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1096 0
	movl	$PerlIO_raw, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1097 0
	movl	$PerlIO_perlio, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1098 0
	movl	$PerlIO_stdio, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1099 0
	movl	$PerlIO_crlf, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1103 0
	movl	$PerlIO_utf8, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1104 0
	movl	$PerlIO_remove, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1105 0
	movl	$PerlIO_byte, %edi	#,
	call	PerlIO_define_layer	#
	.loc 1 1107 0
	movq	-8(%rbp), %rax	# osLayer, tmp71
	movq	8(%rax), %rax	# osLayer_3->name, D.15346
	.loc 1 1106 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15346,
	call	PerlIO_find_layer	#
	movq	%rax, %rcx	#, D.15347
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.131
	movl	$PL_sv_undef, %edx	#,
	movq	%rcx, %rsi	# D.15347,
	movq	%rax, %rdi	# PL_def_layerlist.131,
	call	PerlIO_list_push	#
	.loc 1 1109 0
	cmpq	$0, -16(%rbp)	#, s
	je	.L167	#,
	.loc 1 1110 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.132
	movq	-16(%rbp), %rdx	# s, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# PL_def_layerlist.132,
	call	PerlIO_parse_layers	#
	jmp	.L166	#
.L167:
	.loc 1 1113 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.133
	movq	%rax, %rdi	# PL_def_layerlist.133,
	call	PerlIO_default_buffer	#
.L166:
.LBE23:
	.loc 1 1116 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.134
	movq	8(%rax), %rax	# PL_def_layerlist.134_10->cur, D.15348
	cmpq	$1, %rax	#, D.15348
	jg	.L168	#,
	.loc 1 1117 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.135
	movq	%rax, %rdi	# PL_def_layerlist.135,
	call	PerlIO_default_buffer	#
.L168:
	.loc 1 1119 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, D.15349
	.loc 1 1120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	PerlIO_default_layers, .-PerlIO_default_layers
	.section	.rodata
.LC20:
	.string	"perlio.c"
.LC21:
	.string	"PerlIO::Layer::find"
	.text
	.globl	Perl_boot_core_PerlIO
	.type	Perl_boot_core_PerlIO, @function
Perl_boot_core_PerlIO:
.LFB27:
	.loc 1 1124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1129 0
	movl	$.LC20, %edx	#,
	movl	$XS_PerlIO__Layer__find, %esi	#,
	movl	$.LC21, %edi	#,
	call	Perl_newXS	#
	.loc 1 1130 0
	movl	$.LC20, %edx	#,
	movl	$XS_PerlIO__Layer__NoWarnings, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_newXS	#
	.loc 1 1131 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_boot_core_PerlIO, .-Perl_boot_core_PerlIO
	.globl	PerlIO_default_layer
	.type	PerlIO_default_layer, @function
PerlIO_default_layer:
.LFB28:
	.loc 1 1135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	.loc 1 1136 0
	call	PerlIO_default_layers	#
	movq	%rax, -8(%rbp)	# tmp66, av
	.loc 1 1137 0
	cmpl	$0, -20(%rbp)	#, n
	jns	.L172	#,
	.loc 1 1138 0
	movq	-8(%rbp), %rax	# av, tmp67
	movq	8(%rax), %rax	# av_2->cur, D.15352
	movl	%eax, %edx	# D.15352, D.15353
	movl	-20(%rbp), %eax	# n, n.136
	addl	%edx, %eax	# D.15353, D.15353
	movl	%eax, -20(%rbp)	# D.15353, n
.L172:
	.loc 1 1139 0
	movl	-20(%rbp), %eax	# n, tmp68
	movslq	%eax, %rcx	# tmp68, D.15352
	movq	-8(%rbp), %rax	# av, tmp69
	movl	$PerlIO_stdio, %edx	#,
	movq	%rcx, %rsi	# D.15352,
	movq	%rax, %rdi	# tmp69,
	call	PerlIO_layer_fetch	#
	.loc 1 1140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	PerlIO_default_layer, .-PerlIO_default_layer
	.section	.rodata
.LC22:
	.string	"Ir"
.LC23:
	.string	"Iw"
	.text
	.globl	PerlIO_stdstreams
	.type	PerlIO_stdstreams, @function
PerlIO_stdstreams:
.LFB29:
	.loc 1 1147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1148 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.137
	testq	%rax, %rax	# PL_perlio.137
	jne	.L174	#,
	.loc 1 1149 0
	call	PerlIO_allocate	#
	.loc 1 1150 0
	movl	$.LC22, %esi	#,
	movl	$0, %edi	#,
	call	PerlIO_fdopen	#
	.loc 1 1151 0
	movl	$.LC23, %esi	#,
	movl	$1, %edi	#,
	call	PerlIO_fdopen	#
	.loc 1 1152 0
	movl	$.LC23, %esi	#,
	movl	$2, %edi	#,
	call	PerlIO_fdopen	#
.L174:
	.loc 1 1154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	PerlIO_stdstreams, .-PerlIO_stdstreams
	.section	.rodata
	.align 8
.LC24:
	.string	"Layer does not match this perl"
.LC25:
	.string	"(Null)"
.LC26:
	.string	"PerlIO_push f=%p %s %s %p\n"
	.text
	.globl	PerlIO_push
	.type	PerlIO_push, @function
PerlIO_push:
.LFB30:
	.loc 1 1158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# tab, tab
	movq	%rdx, -40(%rbp)	# mode, mode
	movq	%rcx, -48(%rbp)	# arg, arg
	.loc 1 1159 0
	movq	-32(%rbp), %rax	# tab, tmp79
	movq	(%rax), %rax	# tab_4(D)->fsize, D.15358
	cmpq	$224, %rax	#, D.15358
	je	.L177	#,
.L178:
	.loc 1 1161 0
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L177:
	.loc 1 1163 0
	movq	-32(%rbp), %rax	# tab, tmp80
	movq	16(%rax), %rax	# tab_4(D)->size, D.15358
	testq	%rax, %rax	# D.15358
	je	.L179	#,
.LBB24:
	.loc 1 1164 0
	movq	$0, -8(%rbp)	#, l
	.loc 1 1165 0
	movq	-32(%rbp), %rax	# tab, tmp81
	movq	16(%rax), %rax	# tab_4(D)->size, D.15358
	cmpq	$23, %rax	#, D.15358
	ja	.L180	#,
	.loc 1 1166 0
	jmp	.L178	#
.L180:
	.loc 1 1169 0
	movq	-32(%rbp), %rax	# tab, tmp82
	movq	16(%rax), %rax	# tab_4(D)->size, D.15358
	movq	%rax, %rdi	# D.15358,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp83, l
	.loc 1 1170 0
	cmpq	$0, -8(%rbp)	#, l
	je	.L181	#,
	.loc 1 1170 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, f
	je	.L181	#,
	.loc 1 1171 0 is_stmt 1
	movq	-32(%rbp), %rax	# tab, tmp84
	movq	16(%rax), %rdx	# tab_4(D)->size, D.15358
	movq	-8(%rbp), %rax	# l, tmp85
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	memset	#
	.loc 1 1172 0
	movq	-24(%rbp), %rax	# f, tmp86
	movq	(%rax), %rdx	# *f_11(D), D.15359
	movq	-8(%rbp), %rax	# l, tmp87
	movq	%rdx, (%rax)	# D.15359, l_10->next
	.loc 1 1173 0
	movq	-8(%rbp), %rax	# l, tmp88
	movq	-32(%rbp), %rdx	# tab, tmp89
	movq	%rdx, 8(%rax)	# tmp89, l_10->tab
	.loc 1 1174 0
	movq	-24(%rbp), %rax	# f, tmp90
	movq	-8(%rbp), %rdx	# l, tmp91
	movq	%rdx, (%rax)	# tmp91, *f_11(D)
	.loc 1 1175 0
	cmpq	$0, -40(%rbp)	#, mode
	je	.L182	#,
	.loc 1 1175 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mode, iftmp.138
	jmp	.L183	#
.L182:
	.loc 1 1175 0 discriminator 2
	movl	$.LC25, %eax	#, iftmp.138
.L183:
	.loc 1 1175 0 discriminator 3
	movq	-32(%rbp), %rdx	# tab, tmp92
	movq	8(%rdx), %rdx	# tab_4(D)->name, D.15360
	movq	-48(%rbp), %rcx	# arg, tmp93
	movq	-24(%rbp), %rsi	# f, tmp94
	movq	%rcx, %r8	# tmp93,
	movq	%rax, %rcx	# iftmp.138,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1177 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# l, tmp95
	movq	8(%rax), %rax	# l_10->tab, D.15361
	movq	32(%rax), %rax	# _19->Pushed, D.15362
	testq	%rax, %rax	# D.15362
	je	.L181	#,
	.loc 1 1178 0 discriminator 1
	movq	-8(%rbp), %rax	# l, tmp96
	movq	8(%rax), %rax	# l_10->tab, D.15361
	movq	32(%rax), %rax	# _21->Pushed, D.15362
	movq	-32(%rbp), %rcx	# tab, tmp97
	movq	-48(%rbp), %rdx	# arg, tmp98
	movq	-40(%rbp), %rsi	# mode, tmp99
	movq	-24(%rbp), %rdi	# f, tmp100
	call	*%rax	# D.15362
	.loc 1 1177 0 discriminator 1
	testq	%rax, %rax	# D.15363
	je	.L181	#,
	.loc 1 1179 0
	movq	-24(%rbp), %rax	# f, tmp101
	movq	%rax, %rdi	# tmp101,
	call	PerlIO_pop	#
	.loc 1 1180 0
	movl	$0, %eax	#, D.15357
	jmp	.L184	#
.L181:
.LBE24:
	jmp	.L185	#
.L179:
	.loc 1 1184 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L185	#,
	.loc 1 1186 0
	cmpq	$0, -40(%rbp)	#, mode
	je	.L186	#,
	.loc 1 1186 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mode, iftmp.139
	jmp	.L187	#
.L186:
	.loc 1 1186 0 discriminator 2
	movl	$.LC25, %eax	#, iftmp.139
.L187:
	.loc 1 1186 0 discriminator 3
	movq	-32(%rbp), %rdx	# tab, tmp102
	movq	8(%rdx), %rdx	# tab_4(D)->name, D.15360
	movq	-48(%rbp), %rcx	# arg, tmp103
	movq	-24(%rbp), %rsi	# f, tmp104
	movq	%rcx, %r8	# tmp103,
	movq	%rax, %rcx	# iftmp.139,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1188 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# tab, tmp105
	movq	32(%rax), %rax	# tab_4(D)->Pushed, D.15362
	testq	%rax, %rax	# D.15362
	je	.L185	#,
	.loc 1 1189 0 discriminator 1
	movq	-32(%rbp), %rax	# tab, tmp106
	movq	32(%rax), %rax	# tab_4(D)->Pushed, D.15362
	movq	-32(%rbp), %rcx	# tab, tmp107
	movq	-48(%rbp), %rdx	# arg, tmp108
	movq	-40(%rbp), %rsi	# mode, tmp109
	movq	-24(%rbp), %rdi	# f, tmp110
	call	*%rax	# D.15362
	.loc 1 1188 0 discriminator 1
	testq	%rax, %rax	# D.15363
	je	.L185	#,
	.loc 1 1190 0
	movl	$0, %eax	#, D.15357
	jmp	.L184	#
.L185:
	.loc 1 1193 0
	movq	-24(%rbp), %rax	# f, D.15357
.L184:
	.loc 1 1194 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	PerlIO_push, .-PerlIO_push
	.globl	PerlIOBase_binmode
	.type	PerlIOBase_binmode, @function
PerlIOBase_binmode:
.LFB31:
	.loc 1 1198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 1199 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L189	#,
	.loc 1 1199 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_2(D), D.15368
	testq	%rax, %rax	# D.15368
	je	.L189	#,
	.loc 1 1201 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_2(D), D.15368
	movq	8(%rax), %rax	# _4->tab, D.15369
	movl	24(%rax), %eax	# _5->kind, D.15370
	andl	$1, %eax	#, D.15370
	testl	%eax, %eax	# D.15370
	je	.L190	#,
	.loc 1 1203 0
	movq	-8(%rbp), %rax	# f, tmp72
	movq	(%rax), %rax	# *f_2(D), D.15368
	movq	-8(%rbp), %rdx	# f, tmp73
	movq	(%rdx), %rdx	# *f_2(D), D.15368
	movl	16(%rdx), %edx	# _9->flags, D.15370
	andb	$127, %dh	#, D.15370
	movl	%edx, 16(%rax)	# D.15370, _8->flags
	jmp	.L191	#
.L190:
	.loc 1 1207 0
	movq	-8(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIO_pop	#
.L191:
	.loc 1 1209 0
	movl	$0, %eax	#, D.15367
	jmp	.L192	#
.L189:
	.loc 1 1211 0
	movq	$-1, %rax	#, D.15367
.L192:
	.loc 1 1212 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	PerlIOBase_binmode, .-PerlIOBase_binmode
	.section	.rodata
.LC27:
	.string	":raw f=%p :%s\n"
	.text
	.globl	PerlIORaw_pushed
	.type	PerlIORaw_pushed, @function
PerlIORaw_pushed:
.LFB32:
	.loc 1 1216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# arg, arg
	movq	%rcx, -48(%rbp)	# tab, tab
	.loc 1 1218 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L194	#,
	.loc 1 1218 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_4(D), D.15372
	testq	%rax, %rax	# D.15372
	je	.L194	#,
.LBB25:
	.loc 1 1221 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	Perl_PerlIO_flush	#
	.loc 1 1225 0
	movq	-24(%rbp), %rax	# f, tmp75
	movq	%rax, -16(%rbp)	# tmp75, t
	.loc 1 1226 0
	jmp	.L195	#
.L201:
	.loc 1 1227 0
	movq	-8(%rbp), %rax	# l, tmp76
	movq	8(%rax), %rax	# l_7->tab, D.15373
	movq	56(%rax), %rax	# _8->Binmode, D.15374
	testq	%rax, %rax	# D.15374
	je	.L196	#,
	.loc 1 1229 0
	movq	-8(%rbp), %rax	# l, tmp77
	movq	8(%rax), %rax	# l_7->tab, D.15373
	movq	56(%rax), %rax	# _10->Binmode, D.15374
	movq	-24(%rbp), %rdx	# f, tmp78
	movq	%rdx, %rdi	# tmp78,
	call	*%rax	# D.15374
	testq	%rax, %rax	# D.15375
	jne	.L197	#,
	.loc 1 1230 0
	movq	-16(%rbp), %rax	# t, tmp79
	movq	(%rax), %rax	# *t_2, D.15372
	cmpq	-8(%rbp), %rax	# l, D.15372
	jne	.L195	#,
	.loc 1 1232 0
	movq	-16(%rbp), %rax	# t, tmp80
	movq	(%rax), %rax	# *t_2, D.15372
	movq	%rax, -16(%rbp)	# D.15372, t
	jmp	.L195	#
.L197:
	.loc 1 1236 0
	movq	$-1, %rax	#, D.15371
	jmp	.L199	#
.L196:
	.loc 1 1241 0
	movq	-16(%rbp), %rax	# t, tmp81
	movq	%rax, %rdi	# tmp81,
	call	PerlIO_pop	#
.L195:
	.loc 1 1226 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	je	.L200	#,
	.loc 1 1226 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# t, tmp82
	movq	(%rax), %rax	# *t_2, tmp83
	movq	%rax, -8(%rbp)	# tmp83, l
	cmpq	$0, -8(%rbp)	#, l
	jne	.L201	#,
.L200:
	.loc 1 1244 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, f
	je	.L194	#,
	.loc 1 1244 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp84
	movq	(%rax), %rax	# *f_4(D), D.15372
	testq	%rax, %rax	# D.15372
	je	.L194	#,
	.loc 1 1245 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp85
	movq	(%rax), %rax	# *f_4(D), D.15372
	movq	8(%rax), %rax	# _18->tab, D.15373
	movq	8(%rax), %rdx	# _19->name, D.15376
	movq	-24(%rbp), %rax	# f, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1246 0
	movl	$0, %eax	#, D.15371
	jmp	.L199	#
.L194:
.LBE25:
	.loc 1 1249 0
	movq	$-1, %rax	#, D.15371
.L199:
	.loc 1 1250 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	PerlIORaw_pushed, .-PerlIORaw_pushed
	.globl	PerlIO_apply_layera
	.type	PerlIO_apply_layera, @function
PerlIO_apply_layera:
.LFB33:
	.loc 1 1255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# layers, layers
	movq	%rcx, -48(%rbp)	# n, n
	movq	%r8, -56(%rbp)	# max, max
	.loc 1 1256 0
	movl	$0, -12(%rbp)	#, code
	.loc 1 1257 0
	jmp	.L203	#
.L206:
.LBB26:
	.loc 1 1258 0
	movq	-48(%rbp), %rcx	# n, tmp63
	movq	-40(%rbp), %rax	# layers, tmp64
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_layer_fetch	#
	movq	%rax, -8(%rbp)	# tmp65, tab
	.loc 1 1259 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L204	#,
	.loc 1 1260 0
	movq	-48(%rbp), %rdx	# n, tmp66
	movq	-40(%rbp), %rax	# layers, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rcx	#, D.15378
	movq	-32(%rbp), %rdx	# mode, tmp68
	movq	-8(%rbp), %rsi	# tab, tmp69
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, %rdi	# tmp70,
	call	PerlIO_push	#
	testq	%rax, %rax	# D.15379
	jne	.L204	#,
	.loc 1 1261 0
	movl	$-1, -12(%rbp)	#, code
	.loc 1 1262 0
	jmp	.L205	#
.L204:
	.loc 1 1265 0
	addq	$1, -48(%rbp)	#, n
.L203:
.LBE26:
	.loc 1 1257 0 discriminator 1
	movq	-48(%rbp), %rax	# n, tmp71
	cmpq	-56(%rbp), %rax	# max, tmp71
	jl	.L206	#,
.L205:
	.loc 1 1267 0
	movl	-12(%rbp), %eax	# code, D.15380
	.loc 1 1268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	PerlIO_apply_layera, .-PerlIO_apply_layera
	.globl	PerlIO_apply_layers
	.type	PerlIO_apply_layers, @function
PerlIO_apply_layers:
.LFB34:
	.loc 1 1272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# names, names
	.loc 1 1273 0
	movl	$0, -12(%rbp)	#, code
	.loc 1 1274 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L209	#,
	.loc 1 1274 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, names
	je	.L209	#,
.LBB27:
	.loc 1 1275 0 is_stmt 1
	call	PerlIO_list_alloc	#
	movq	%rax, -8(%rbp)	# tmp62, layers
	.loc 1 1276 0
	movq	-40(%rbp), %rdx	# names, tmp63
	movq	-8(%rbp), %rax	# layers, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_parse_layers	#
	movl	%eax, -12(%rbp)	# tmp65, code
	.loc 1 1277 0
	cmpl	$0, -12(%rbp)	#, code
	jne	.L210	#,
	.loc 1 1278 0
	movq	-8(%rbp), %rax	# layers, tmp66
	movq	8(%rax), %rcx	# layers_6->cur, D.15381
	movq	-8(%rbp), %rdx	# layers, tmp67
	movq	-32(%rbp), %rsi	# mode, tmp68
	movq	-24(%rbp), %rax	# f, tmp69
	movq	%rcx, %r8	# D.15381,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp69,
	call	PerlIO_apply_layera	#
	movl	%eax, -12(%rbp)	# tmp70, code
.L210:
	.loc 1 1280 0
	movq	-8(%rbp), %rax	# layers, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIO_list_free	#
.L209:
.LBE27:
	.loc 1 1282 0
	movl	-12(%rbp), %eax	# code, D.15382
	.loc 1 1283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	PerlIO_apply_layers, .-PerlIO_apply_layers
	.section	.rodata
	.align 8
.LC28:
	.string	"PerlIO_binmode f=%p %s %c %x %s\n"
	.text
	.globl	PerlIO_binmode
	.type	PerlIO_binmode, @function
PerlIO_binmode:
.LFB35:
	.loc 1 1293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movl	%esi, -12(%rbp)	# iotype, iotype
	movl	%edx, -16(%rbp)	# mode, mode
	movq	%rcx, -24(%rbp)	# names, names
	.loc 1 1294 0
	cmpq	$0, -24(%rbp)	#, names
	je	.L213	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# names, iftmp.140
	jmp	.L214	#
.L213:
	.loc 1 1294 0 discriminator 2
	movl	$.LC25, %eax	#, iftmp.140
.L214:
	.loc 1 1295 0 is_stmt 1
	movq	-8(%rbp), %rdx	# f, tmp69
	movq	(%rdx), %rdx	# *f_6(D), D.15384
	movq	8(%rdx), %rdx	# _7->tab, D.15385
	.loc 1 1294 0
	movq	8(%rdx), %rdx	# _8->name, D.15386
	movl	-16(%rbp), %edi	# mode, tmp70
	movl	-12(%rbp), %ecx	# iotype, tmp71
	movq	-8(%rbp), %rsi	# f, tmp72
	movq	%rax, %r9	# iftmp.140,
	movl	%edi, %r8d	# tmp70,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1297 0
	cmpq	$0, -24(%rbp)	#, names
	je	.L215	#,
	.loc 1 1303 0
	movq	-24(%rbp), %rdx	# names, tmp73
	movq	-8(%rbp), %rax	# f, tmp74
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	PerlIO_apply_layers	#
	testl	%eax, %eax	# D.15383
	sete	%al	#, D.15387
	movzbl	%al, %eax	# D.15387, D.15383
	jmp	.L216	#
.L215:
	.loc 1 1342 0
	movq	-8(%rbp), %rax	# f, tmp75
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$PerlIO_raw, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	PerlIO_push	#
	testq	%rax, %rax	# D.15388
	setne	%al	#, D.15387
	movzbl	%al, %eax	# D.15387, D.15383
.L216:
	.loc 1 1344 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	PerlIO_binmode, .-PerlIO_binmode
	.globl	PerlIO__close
	.type	PerlIO__close, @function
PerlIO__close:
.LFB36:
	.loc 1 1348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1349 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L218	#,
	.loc 1 1349 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15391
	testq	%rax, %rax	# D.15391
	je	.L218	#,
.LBB28:
	.loc 1 1350 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15391
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	.loc 1 1351 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L219	#,
	.loc 1 1351 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	128(%rax), %rax	# tab_5->Close, D.15392
	testq	%rax, %rax	# D.15392
	je	.L219	#,
	.loc 1 1352 0 is_stmt 1
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	128(%rax), %rax	# tab_5->Close, D.15392
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15392
	jmp	.L220	#
.L219:
	.loc 1 1354 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIOBase_close	#
	jmp	.L220	#
.L218:
.LBE28:
	.loc 1 1357 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	.loc 1 1358 0
	movl	$-1, %eax	#, D.15390
.L220:
	.loc 1 1360 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	PerlIO__close, .-PerlIO__close
	.globl	Perl_PerlIO_close
	.type	Perl_PerlIO_close, @function
Perl_PerlIO_close:
.LFB37:
	.loc 1 1364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1365 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	%rax, %rdi	# tmp62,
	call	PerlIO__close	#
	movl	%eax, -4(%rbp)	# tmp63, code
	.loc 1 1366 0
	jmp	.L222	#
.L224:
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# f, tmp64
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_pop	#
.L222:
	.loc 1 1366 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, f
	je	.L223	#,
	.loc 1 1366 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), D.15395
	testq	%rax, %rax	# D.15395
	jne	.L224	#,
.L223:
	.loc 1 1369 0 is_stmt 1
	movl	-4(%rbp), %eax	# code, D.15396
	.loc 1 1370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_PerlIO_close, .-Perl_PerlIO_close
	.globl	Perl_PerlIO_fileno
	.type	Perl_PerlIO_fileno, @function
Perl_PerlIO_fileno:
.LFB38:
	.loc 1 1374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1375 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L227	#,
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15398
	testq	%rax, %rax	# D.15398
	je	.L227	#,
.LBB29:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15398
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L228	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	72(%rax), %rax	# tab_5->Fileno, D.15399
	testq	%rax, %rax	# D.15399
	je	.L228	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	72(%rax), %rax	# tab_5->Fileno, D.15399
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15399
	jmp	.L229	#
.L228:
	.loc 1 1375 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIOBase_fileno	#
	jmp	.L229	#
.L227:
.LBE29:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	movl	$-1, %eax	#, D.15397
.L229:
	.loc 1 1376 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_PerlIO_fileno, .-Perl_PerlIO_fileno
	.type	PerlIO_context_layers, @function
PerlIO_context_layers:
.LFB39:
	.loc 1 1380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mode, mode
	.loc 1 1381 0
	movq	$0, -24(%rbp)	#, type
	.loc 1 1385 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.141
	testq	%rax, %rax	# PL_curcop.141
	je	.L231	#,
.LBB30:
	.loc 1 1386 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.142
	movq	88(%rax), %rax	# PL_curcop.142_6->cop_io, tmp75
	movq	%rax, -16(%rbp)	# tmp75, layers
	.loc 1 1387 0
	cmpq	$0, -16(%rbp)	#, layers
	je	.L231	#,
.LBB31:
	.loc 1 1389 0
	movq	-16(%rbp), %rax	# layers, tmp76
	movl	12(%rax), %eax	# layers_7->sv_flags, D.15402
	andl	$262144, %eax	#, D.15402
	testl	%eax, %eax	# D.15402
	je	.L232	#,
	.loc 1 1389 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# layers, tmp77
	movq	(%rax), %rax	# layers_7->sv_any, D.15403
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, len.144
	movq	%rax, -32(%rbp)	# len.144, len
	movq	-16(%rbp), %rax	# layers, tmp78
	movq	(%rax), %rax	# layers_7->sv_any, D.15403
	movq	(%rax), %rax	# MEM[(struct XPV *)_12].xpv_pv, iftmp.143
	jmp	.L233	#
.L232:
	.loc 1 1389 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp79
	movq	-16(%rbp), %rax	# layers, tmp80
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	Perl_sv_2pv_flags	#
.L233:
	.loc 1 1389 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.143, type
	.loc 1 1390 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, type
	je	.L231	#,
	.loc 1 1390 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mode, tmp81
	movzbl	(%rax), %eax	# *mode_16(D), D.15404
	cmpb	$114, %al	#, D.15404
	je	.L231	#,
.LBB32:
	.loc 1 1394 0 is_stmt 1
	movq	-24(%rbp), %rax	# type, tmp82
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp83, s
	.loc 1 1395 0
	cmpq	$0, -8(%rbp)	#, s
	je	.L231	#,
	.loc 1 1395 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# s, s.145
	movq	-24(%rbp), %rax	# type, type.146
	subq	%rax, %rdx	# type.146, D.15405
	movq	%rdx, %rax	# D.15405, D.15405
	movq	%rax, %rdx	# D.15405, D.15406
	movq	-32(%rbp), %rax	# len, len.147
	cmpq	%rax, %rdx	# len.147, D.15406
	jae	.L231	#,
	.loc 1 1396 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp87
	addq	$1, %rax	#, tmp86
	movq	%rax, -24(%rbp)	# tmp86, type
.L231:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 1401 0
	movq	-24(%rbp), %rax	# type, D.15407
	.loc 1 1402 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	PerlIO_context_layers, .-PerlIO_context_layers
	.section	.rodata
.LC29:
	.string	"scalar"
.LC30:
	.string	"Array"
.LC31:
	.string	"Hash"
.LC32:
	.string	"Code"
.LC33:
	.string	"Glob"
	.text
	.type	PerlIO_layer_from_ref, @function
PerlIO_layer_from_ref:
.LFB40:
	.loc 1 1406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 1410 0
	movq	-8(%rbp), %rax	# sv, tmp65
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15409
	movzbl	%al, %eax	# D.15409, D.15409
	cmpl	$9, %eax	#, D.15409
	ja	.L237	#,
	.loc 1 1411 0
	movl	$1, %edx	#,
	movl	$6, %esi	#,
	movl	$.LC29, %edi	#,
	call	PerlIO_find_layer	#
	jmp	.L238	#
.L237:
	.loc 1 1416 0
	movq	-8(%rbp), %rax	# sv, tmp66
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15409
	movzbl	%al, %eax	# D.15409, D.15409
	cmpl	$11, %eax	#, D.15409
	je	.L240	#,
	cmpl	$11, %eax	#, D.15409
	ja	.L241	#,
	cmpl	$10, %eax	#, D.15409
	je	.L242	#,
	jmp	.L239	#
.L241:
	cmpl	$12, %eax	#, D.15409
	je	.L243	#,
	cmpl	$13, %eax	#, D.15409
	je	.L244	#,
	jmp	.L239	#
.L242:
	.loc 1 1418 0
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movl	$.LC30, %edi	#,
	call	PerlIO_find_layer	#
	jmp	.L238	#
.L240:
	.loc 1 1420 0
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC31, %edi	#,
	call	PerlIO_find_layer	#
	jmp	.L238	#
.L243:
	.loc 1 1422 0
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC32, %edi	#,
	call	PerlIO_find_layer	#
	jmp	.L238	#
.L244:
	.loc 1 1424 0
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC33, %edi	#,
	call	PerlIO_find_layer	#
	jmp	.L238	#
.L239:
	.loc 1 1426 0
	movl	$0, %eax	#, D.15408
.L238:
	.loc 1 1427 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	PerlIO_layer_from_ref, .-PerlIO_layer_from_ref
	.globl	PerlIO_resolve_layers
	.type	PerlIO_resolve_layers, @function
PerlIO_resolve_layers:
.LFB41:
	.loc 1 1432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# layers, layers
	movq	%rsi, -64(%rbp)	# mode, mode
	movl	%edx, -68(%rbp)	# narg, narg
	movq	%rcx, -80(%rbp)	# args, args
	.loc 1 1433 0
	call	PerlIO_default_layers	#
	movq	%rax, -40(%rbp)	# tmp82, def
	.loc 1 1434 0
	movl	$1, -44(%rbp)	#, incdef
	.loc 1 1435 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.148
	testq	%rax, %rax	# PL_perlio.148
	jne	.L246	#,
	.loc 1 1436 0
	call	PerlIO_stdstreams	#
.L246:
	.loc 1 1437 0
	cmpl	$0, -68(%rbp)	#, narg
	je	.L247	#,
.LBB33:
	.loc 1 1438 0
	movq	-80(%rbp), %rax	# args, tmp83
	movq	(%rax), %rax	# *args_11(D), tmp84
	movq	%rax, -16(%rbp)	# tmp84, arg
	.loc 1 1443 0
	movq	-16(%rbp), %rax	# arg, tmp85
	movl	12(%rax), %eax	# arg_12->sv_flags, D.15417
	andl	$524288, %eax	#, D.15417
	testl	%eax, %eax	# D.15417
	je	.L247	#,
	.loc 1 1443 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# arg, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.15418
	jne	.L247	#,
.LBB34:
	.loc 1 1444 0 is_stmt 1
	movq	-16(%rbp), %rax	# arg, tmp87
	movq	(%rax), %rax	# arg_12->sv_any, D.15419
	movq	(%rax), %rax	# MEM[(struct XRV *)_16].xrv_rv, D.15420
	movq	%rax, %rdi	# D.15420,
	call	PerlIO_layer_from_ref	#
	movq	%rax, -8(%rbp)	# tmp88, handler
	.loc 1 1445 0
	cmpq	$0, -8(%rbp)	#, handler
	je	.L247	#,
	.loc 1 1446 0
	call	PerlIO_list_alloc	#
	movq	%rax, -40(%rbp)	# tmp89, def
	.loc 1 1447 0
	movq	-8(%rbp), %rcx	# handler, tmp90
	movq	-40(%rbp), %rax	# def, tmp91
	movl	$PL_sv_undef, %edx	#,
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	PerlIO_list_push	#
	.loc 1 1448 0
	movl	$0, -44(%rbp)	#, incdef
.L247:
.LBE34:
.LBE33:
	.loc 1 1457 0
	cmpq	$0, -56(%rbp)	#, layers
	jne	.L248	#,
	.loc 1 1458 0
	movq	-64(%rbp), %rax	# mode, tmp92
	movq	%rax, %rdi	# tmp92,
	call	PerlIO_context_layers	#
	movq	%rax, -56(%rbp)	# tmp93, layers
.L248:
	.loc 1 1459 0
	cmpq	$0, -56(%rbp)	#, layers
	je	.L249	#,
	.loc 1 1459 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# layers, tmp94
	movzbl	(%rax), %eax	# *layers_1, D.15421
	testb	%al, %al	# D.15421
	je	.L249	#,
.LBB35:
	.loc 1 1461 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, incdef
	je	.L250	#,
.LBB36:
	.loc 1 1462 0
	movq	-40(%rbp), %rax	# def, tmp95
	movq	8(%rax), %rax	# def_2->cur, tmp96
	movq	%rax, -24(%rbp)	# tmp96, i
	.loc 1 1463 0
	call	PerlIO_list_alloc	#
	movq	%rax, -32(%rbp)	# tmp97, av
	.loc 1 1464 0
	movq	$0, -24(%rbp)	#, i
	jmp	.L251	#
.L252:
	.loc 1 1466 0 discriminator 2
	movq	-40(%rbp), %rax	# def, tmp98
	movq	24(%rax), %rax	# def_2->array, D.15423
	movq	-24(%rbp), %rdx	# i, i.149
	salq	$4, %rdx	#, D.15424
	addq	%rdx, %rax	# D.15424, D.15423
	.loc 1 1465 0 discriminator 2
	movq	8(%rax), %rdx	# _32->arg, D.15420
	movq	-40(%rbp), %rax	# def, tmp99
	movq	24(%rax), %rax	# def_2->array, D.15423
	movq	-24(%rbp), %rcx	# i, i.150
	salq	$4, %rcx	#, D.15424
	addq	%rcx, %rax	# D.15424, D.15423
	movq	(%rax), %rcx	# _37->funcs, D.15425
	movq	-32(%rbp), %rax	# av, tmp100
	movq	%rcx, %rsi	# D.15425,
	movq	%rax, %rdi	# tmp100,
	call	PerlIO_list_push	#
	.loc 1 1464 0 discriminator 2
	addq	$1, -24(%rbp)	#, i
.L251:
	.loc 1 1464 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# def, tmp101
	movq	8(%rax), %rax	# def_2->cur, D.15422
	cmpq	-24(%rbp), %rax	# i, D.15422
	jg	.L252	#,
.LBE36:
	jmp	.L253	#
.L250:
	.loc 1 1470 0 is_stmt 1
	movq	-40(%rbp), %rax	# def, tmp102
	movq	%rax, -32(%rbp)	# tmp102, av
.L253:
	.loc 1 1472 0
	movq	-56(%rbp), %rdx	# layers, tmp103
	movq	-32(%rbp), %rax	# av, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	PerlIO_parse_layers	#
	testl	%eax, %eax	# D.15418
	jne	.L254	#,
	.loc 1 1473 0
	movq	-32(%rbp), %rax	# av, D.15416
	jmp	.L255	#
.L254:
	.loc 1 1476 0
	movq	-32(%rbp), %rax	# av, tmp105
	movq	%rax, %rdi	# tmp105,
	call	PerlIO_list_free	#
	.loc 1 1477 0
	movl	$0, %eax	#, D.15416
	jmp	.L255	#
.L249:
.LBE35:
	.loc 1 1481 0
	cmpl	$0, -44(%rbp)	#, incdef
	je	.L256	#,
	.loc 1 1482 0
	movq	-40(%rbp), %rax	# def, tmp106
	movq	(%rax), %rax	# def_2->refcnt, D.15422
	leaq	1(%rax), %rdx	#, D.15422
	movq	-40(%rbp), %rax	# def, tmp107
	movq	%rdx, (%rax)	# D.15422, def_2->refcnt
.L256:
	.loc 1 1483 0
	movq	-40(%rbp), %rax	# def, D.15416
.L255:
	.loc 1 1485 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	PerlIO_resolve_layers, .-PerlIO_resolve_layers
	.section	.rodata
	.align 8
.LC34:
	.string	"More than one argument to open(,':%s')"
	.align 8
.LC35:
	.string	"openn(%s,'%s','%s',%d,%x,%o,%p,%d,%p)\n"
	.text
	.globl	PerlIO_openn
	.type	PerlIO_openn, @function
PerlIO_openn:
.LFB42:
	.loc 1 1490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -56(%rbp)	# layers, layers
	movq	%rsi, -64(%rbp)	# mode, mode
	movl	%edx, -68(%rbp)	# fd, fd
	movl	%ecx, -72(%rbp)	# imode, imode
	movl	%r8d, -76(%rbp)	# perm, perm
	movq	%r9, -88(%rbp)	# f, f
	.loc 1 1491 0
	cmpq	$0, -88(%rbp)	#, f
	jne	.L258	#,
	.loc 1 1491 0 is_stmt 0 discriminator 1
	cmpl	$1, 16(%rbp)	#, narg
	jne	.L258	#,
	movq	24(%rbp), %rax	# args, tmp91
	movq	(%rax), %rax	# *args_12(D), D.15427
	cmpq	$PL_sv_undef, %rax	#, D.15427
	jne	.L258	#,
	.loc 1 1492 0 is_stmt 1
	call	PerlIO_tmpfile	#
	movq	%rax, -88(%rbp)	# tmp92, f
	cmpq	$0, -88(%rbp)	#, f
	je	.L259	#,
	.loc 1 1493 0
	cmpq	$0, -56(%rbp)	#, layers
	jne	.L260	#,
	.loc 1 1494 0
	movq	-64(%rbp), %rax	# mode, tmp93
	movq	%rax, %rdi	# tmp93,
	call	PerlIO_context_layers	#
	movq	%rax, -56(%rbp)	# tmp94, layers
.L260:
	.loc 1 1495 0
	cmpq	$0, -56(%rbp)	#, layers
	je	.L259	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# layers, tmp95
	movzbl	(%rax), %eax	# *layers_1, D.15428
	testb	%al, %al	# D.15428
	je	.L259	#,
	.loc 1 1496 0 is_stmt 1
	movq	-56(%rbp), %rdx	# layers, tmp96
	movq	-64(%rbp), %rcx	# mode, tmp97
	movq	-88(%rbp), %rax	# f, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	PerlIO_apply_layers	#
	.loc 1 1492 0
	jmp	.L261	#
.L259:
	.loc 1 1492 0 is_stmt 0 discriminator 1
	jmp	.L261	#
.L258:
.LBB37:
	.loc 1 1500 0 is_stmt 1
	movq	$0, -40(%rbp)	#, layera
	.loc 1 1502 0
	movq	$0, -24(%rbp)	#, tab
	.loc 1 1503 0
	cmpq	$0, -88(%rbp)	#, f
	je	.L262	#,
	.loc 1 1503 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# f, tmp99
	movq	(%rax), %rax	# *f_10(D), D.15429
	testq	%rax, %rax	# D.15429
	je	.L262	#,
.LBB38:
	.loc 1 1508 0 is_stmt 1
	movq	-88(%rbp), %rax	# f, tmp100
	movq	(%rax), %rax	# *f_10(D), l.151
	movq	%rax, -48(%rbp)	# l.151, l
	.loc 1 1509 0
	call	PerlIO_list_alloc	#
	movq	%rax, -40(%rbp)	# tmp101, layera
	.loc 1 1510 0
	jmp	.L263	#
.L266:
.LBB39:
	.loc 1 1511 0
	movq	-48(%rbp), %rax	# l, l.153
	movq	8(%rax), %rax	# l.153_25->tab, D.15430
	movq	64(%rax), %rax	# _26->Getarg, D.15431
	.loc 1 1513 0
	testq	%rax, %rax	# D.15431
	je	.L264	#,
	.loc 1 1512 0
	movq	-48(%rbp), %rax	# l, l.154
	movq	8(%rax), %rax	# l.154_28->tab, D.15430
	movq	64(%rax), %rax	# _29->Getarg, D.15431
	.loc 1 1513 0
	leaq	-48(%rbp), %rcx	#, tmp102
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# tmp102,
	call	*%rax	# D.15431
	jmp	.L265	#
.L264:
	.loc 1 1513 0 is_stmt 0 discriminator 1
	movl	$PL_sv_undef, %eax	#, iftmp.152
.L265:
	.loc 1 1511 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.152, arg
	.loc 1 1514 0
	movq	-48(%rbp), %rax	# l, l.155
	movq	8(%rax), %rcx	# l.155_34->tab, D.15430
	movq	-16(%rbp), %rdx	# arg, tmp103
	movq	-40(%rbp), %rax	# layera, tmp104
	movq	%rcx, %rsi	# D.15430,
	movq	%rax, %rdi	# tmp104,
	call	PerlIO_list_push	#
	.loc 1 1515 0
	movq	-48(%rbp), %rax	# l, l.156
	movq	(%rax), %rax	# l.156_36->next, l.157
	movq	%rax, -48(%rbp)	# l.157, l
.L263:
.LBE39:
	.loc 1 1510 0 discriminator 1
	movq	-48(%rbp), %rax	# l, l.158
	testq	%rax, %rax	# l.158
	jne	.L266	#,
.LBE38:
	.loc 1 1503 0
	jmp	.L267	#
.L262:
	.loc 1 1519 0
	movq	24(%rbp), %rdx	# args, tmp105
	movq	-64(%rbp), %rsi	# mode, tmp106
	movq	-56(%rbp), %rax	# layers, tmp107
	movq	%rdx, %rcx	# tmp105,
	movl	16(%rbp), %edx	# narg,
	movq	%rax, %rdi	# tmp107,
	call	PerlIO_resolve_layers	#
	movq	%rax, -40(%rbp)	# tmp108, layera
	.loc 1 1520 0
	cmpq	$0, -40(%rbp)	#, layera
	jne	.L267	#,
	.loc 1 1521 0
	movl	$0, %eax	#, D.15426
	jmp	.L268	#
.L267:
	.loc 1 1527 0
	movq	-40(%rbp), %rax	# layera, tmp109
	movq	8(%rax), %rax	# layera_5->cur, D.15432
	subq	$1, %rax	#, tmp110
	movq	%rax, -32(%rbp)	# tmp110, n
	.loc 1 1528 0
	jmp	.L269	#
.L272:
.LBB40:
	.loc 1 1529 0
	movq	-32(%rbp), %rcx	# n, tmp111
	movq	-40(%rbp), %rax	# layera, tmp112
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	PerlIO_layer_fetch	#
	movq	%rax, -8(%rbp)	# tmp113, t
	.loc 1 1530 0
	cmpq	$0, -8(%rbp)	#, t
	je	.L270	#,
	.loc 1 1530 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp114
	movq	48(%rax), %rax	# t_42->Open, D.15433
	testq	%rax, %rax	# D.15433
	je	.L270	#,
	.loc 1 1531 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp115
	movq	%rax, -24(%rbp)	# tmp115, tab
	.loc 1 1532 0
	jmp	.L271	#
.L270:
	.loc 1 1534 0
	subq	$1, -32(%rbp)	#, n
.L269:
.LBE40:
	.loc 1 1528 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, n
	jns	.L272	#,
.L271:
	.loc 1 1536 0
	cmpq	$0, -24(%rbp)	#, tab
	je	.L273	#,
	.loc 1 1540 0
	cmpl	$1, 16(%rbp)	#, narg
	jle	.L274	#,
	.loc 1 1540 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tab, tmp116
	movl	24(%rax), %eax	# tab_7->kind, D.15434
	andl	$131072, %eax	#, D.15434
	testl	%eax, %eax	# D.15434
	jne	.L274	#,
	.loc 1 1541 0 is_stmt 1
	movq	-24(%rbp), %rax	# tab, tmp117
	movq	8(%rax), %rax	# tab_7->name, D.15435
	movq	%rax, %rsi	# D.15435,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L274:
	.loc 1 1543 0
	movq	-24(%rbp), %rax	# tab, tmp118
	movq	8(%rax), %rax	# tab_7->name, D.15435
	movl	-72(%rbp), %r8d	# imode, tmp119
	movl	-68(%rbp), %edi	# fd, tmp120
	movq	-64(%rbp), %rcx	# mode, tmp121
	movq	-56(%rbp), %rdx	# layers, tmp122
	movq	24(%rbp), %rsi	# args, tmp123
	movq	%rsi, 24(%rsp)	# tmp123,
	movl	16(%rbp), %esi	# narg, tmp124
	movl	%esi, 16(%rsp)	# tmp124,
	movq	-88(%rbp), %rsi	# f, tmp125
	movq	%rsi, 8(%rsp)	# tmp125,
	movl	-76(%rbp), %esi	# perm, tmp126
	movl	%esi, (%rsp)	# tmp126,
	movl	%r8d, %r9d	# tmp119,
	movl	%edi, %r8d	# tmp120,
	movq	%rax, %rsi	# D.15435,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1546 0
	movq	-24(%rbp), %rax	# tab, tmp127
	movq	48(%rax), %rax	# tab_7->Open, D.15433
	testq	%rax, %rax	# D.15433
	je	.L275	#,
	.loc 1 1547 0
	movq	-24(%rbp), %rax	# tab, tmp128
	movq	48(%rax), %rax	# tab_7->Open, D.15433
	movl	-72(%rbp), %r9d	# imode, tmp129
	movl	-68(%rbp), %r10d	# fd, tmp130
	movq	-64(%rbp), %rcx	# mode, tmp131
	movq	-32(%rbp), %rdx	# n, tmp132
	movq	-40(%rbp), %rsi	# layera, tmp133
	movq	-24(%rbp), %rdi	# tab, tmp134
	movq	24(%rbp), %r8	# args, tmp135
	movq	%r8, 24(%rsp)	# tmp135,
	movl	16(%rbp), %r8d	# narg, tmp136
	movl	%r8d, 16(%rsp)	# tmp136,
	movq	-88(%rbp), %r8	# f, tmp137
	movq	%r8, 8(%rsp)	# tmp137,
	movl	-76(%rbp), %r8d	# perm, tmp138
	movl	%r8d, (%rsp)	# tmp138,
	movl	%r10d, %r8d	# tmp130,
	call	*%rax	# D.15433
	movq	%rax, -88(%rbp)	# tmp139, f
	jmp	.L276	#
.L275:
	.loc 1 1550 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_56
	.loc 1 1551 0
	movq	$0, -88(%rbp)	#, f
.L276:
	.loc 1 1553 0
	cmpq	$0, -88(%rbp)	#, f
	je	.L273	#,
	.loc 1 1554 0
	movq	-32(%rbp), %rax	# n, tmp140
	leaq	1(%rax), %rdx	#, D.15432
	movq	-40(%rbp), %rax	# layera, tmp141
	movq	8(%rax), %rax	# layera_5->cur, D.15432
	cmpq	%rax, %rdx	# D.15432, D.15432
	jge	.L273	#,
	.loc 1 1559 0
	movq	-40(%rbp), %rax	# layera, tmp142
	movq	8(%rax), %rdi	# layera_5->cur, D.15432
	movq	-32(%rbp), %rax	# n, tmp143
	leaq	1(%rax), %rcx	#, D.15432
	movq	-40(%rbp), %rdx	# layera, tmp144
	movq	-64(%rbp), %rsi	# mode, tmp145
	movq	-88(%rbp), %rax	# f, tmp146
	movq	%rdi, %r8	# D.15432,
	movq	%rax, %rdi	# tmp146,
	call	PerlIO_apply_layera	#
	testl	%eax, %eax	# D.15437
	je	.L273	#,
	.loc 1 1561 0
	movq	-88(%rbp), %rax	# f, tmp147
	movq	%rax, %rdi	# tmp147,
	call	Perl_PerlIO_close	#
	.loc 1 1562 0
	movq	$0, -88(%rbp)	#, f
.L273:
	.loc 1 1567 0
	movq	-40(%rbp), %rax	# layera, tmp148
	movq	%rax, %rdi	# tmp148,
	call	PerlIO_list_free	#
.L261:
.LBE37:
	.loc 1 1569 0
	movq	-88(%rbp), %rax	# f, D.15426
.L268:
	.loc 1 1570 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	PerlIO_openn, .-PerlIO_openn
	.globl	Perl_PerlIO_read
	.type	Perl_PerlIO_read, @function
Perl_PerlIO_read:
.LFB43:
	.loc 1 1575 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 1576 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L278	#,
	.loc 1 1576 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15441
	testq	%rax, %rax	# D.15441
	je	.L278	#,
.LBB41:
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15441
	movq	8(%rax), %rax	# _4->tab, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L279	#,
	movq	-8(%rbp), %rax	# tab, tmp69
	movq	88(%rax), %rax	# tab_5->Read, D.15442
	testq	%rax, %rax	# D.15442
	je	.L279	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	88(%rax), %rax	# tab_5->Read, D.15442
	movq	-40(%rbp), %rdx	# count, tmp71
	movq	-32(%rbp), %rsi	# vbuf, tmp72
	movq	-24(%rbp), %rcx	# f, tmp73
	movq	%rcx, %rdi	# tmp73,
	call	*%rax	# D.15442
	jmp	.L280	#
.L279:
	.loc 1 1576 0 discriminator 2
	movq	-40(%rbp), %rdx	# count, tmp74
	movq	-32(%rbp), %rcx	# vbuf, tmp75
	movq	-24(%rbp), %rax	# f, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	PerlIOBase_read	#
	jmp	.L280	#
.L278:
.LBE41:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	movq	$-1, %rax	#, D.15440
.L280:
	.loc 1 1577 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_PerlIO_read, .-Perl_PerlIO_read
	.globl	Perl_PerlIO_unread
	.type	Perl_PerlIO_unread, @function
Perl_PerlIO_unread:
.LFB44:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 1582 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L282	#,
	.loc 1 1582 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15445
	testq	%rax, %rax	# D.15445
	je	.L282	#,
.LBB42:
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15445
	movq	8(%rax), %rax	# _4->tab, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L283	#,
	movq	-8(%rbp), %rax	# tab, tmp69
	movq	96(%rax), %rax	# tab_5->Unread, D.15446
	testq	%rax, %rax	# D.15446
	je	.L283	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	96(%rax), %rax	# tab_5->Unread, D.15446
	movq	-40(%rbp), %rdx	# count, tmp71
	movq	-32(%rbp), %rsi	# vbuf, tmp72
	movq	-24(%rbp), %rcx	# f, tmp73
	movq	%rcx, %rdi	# tmp73,
	call	*%rax	# D.15446
	jmp	.L284	#
.L283:
	.loc 1 1582 0 discriminator 2
	movq	-40(%rbp), %rdx	# count, tmp74
	movq	-32(%rbp), %rcx	# vbuf, tmp75
	movq	-24(%rbp), %rax	# f, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	PerlIOBase_unread	#
	jmp	.L284	#
.L282:
.LBE42:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	movq	$-1, %rax	#, D.15444
.L284:
	.loc 1 1583 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_PerlIO_unread, .-Perl_PerlIO_unread
	.globl	Perl_PerlIO_write
	.type	Perl_PerlIO_write, @function
Perl_PerlIO_write:
.LFB45:
	.loc 1 1587 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 1588 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L286	#,
	.loc 1 1588 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15449
	testq	%rax, %rax	# D.15449
	je	.L286	#,
.LBB43:
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15449
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L287	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	104(%rax), %rax	# tab_5->Write, D.15450
	testq	%rax, %rax	# D.15450
	je	.L287	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	104(%rax), %rax	# tab_5->Write, D.15450
	movq	-40(%rbp), %rdx	# count, tmp72
	movq	-32(%rbp), %rsi	# vbuf, tmp73
	movq	-24(%rbp), %rcx	# f, tmp74
	movq	%rcx, %rdi	# tmp74,
	call	*%rax	# D.15450
	jmp	.L288	#
.L287:
	.loc 1 1588 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_11
.LBE43:
	jmp	.L289	#
.L286:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
.L289:
	.loc 1 1588 0 discriminator 1
	movq	$-1, %rax	#, D.15448
.L288:
	.loc 1 1589 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_PerlIO_write, .-Perl_PerlIO_write
	.globl	Perl_PerlIO_seek
	.type	Perl_PerlIO_seek, @function
Perl_PerlIO_seek:
.LFB46:
	.loc 1 1593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# offset, offset
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 1594 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L291	#,
	.loc 1 1594 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15453
	testq	%rax, %rax	# D.15453
	je	.L291	#,
.LBB44:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15453
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L292	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	112(%rax), %rax	# tab_5->Seek, D.15454
	testq	%rax, %rax	# D.15454
	je	.L292	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	112(%rax), %rax	# tab_5->Seek, D.15454
	movl	-36(%rbp), %edx	# whence, tmp73
	movq	-32(%rbp), %rsi	# offset, tmp74
	movq	-24(%rbp), %rcx	# f, tmp75
	movq	%rcx, %rdi	# tmp75,
	call	*%rax	# D.15454
	jmp	.L293	#
.L292:
	.loc 1 1594 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_12
.LBE44:
	jmp	.L294	#
.L291:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_13
.L294:
	.loc 1 1594 0 discriminator 1
	movl	$-1, %eax	#, D.15452
.L293:
	.loc 1 1595 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_PerlIO_seek, .-Perl_PerlIO_seek
	.globl	Perl_PerlIO_tell
	.type	Perl_PerlIO_tell, @function
Perl_PerlIO_tell:
.LFB47:
	.loc 1 1599 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1600 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L296	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15458
	testq	%rax, %rax	# D.15458
	je	.L296	#,
.LBB45:
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15458
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L297	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	120(%rax), %rax	# tab_5->Tell, D.15459
	testq	%rax, %rax	# D.15459
	je	.L297	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	120(%rax), %rax	# tab_5->Tell, D.15459
	movq	-24(%rbp), %rdx	# f, tmp72
	movq	%rdx, %rdi	# tmp72,
	call	*%rax	# D.15459
	jmp	.L298	#
.L297:
	.loc 1 1600 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE45:
	jmp	.L299	#
.L296:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L299:
	.loc 1 1600 0 discriminator 1
	movq	$-1, %rax	#, D.15457
.L298:
	.loc 1 1601 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_PerlIO_tell, .-Perl_PerlIO_tell
	.section	.rodata
.LC36:
	.string	"Cannot flush f=%p\n"
	.text
	.globl	Perl_PerlIO_flush
	.type	Perl_PerlIO_flush, @function
Perl_PerlIO_flush:
.LFB48:
	.loc 1 1605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 1606 0
	cmpq	$0, -40(%rbp)	#, f
	je	.L301	#,
	.loc 1 1607 0
	movq	-40(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_8(D), D.15462
	testq	%rax, %rax	# D.15462
	je	.L302	#,
.LBB46:
	.loc 1 1608 0
	movq	-40(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_8(D), D.15462
	movq	8(%rax), %rax	# _10->tab, tmp72
	movq	%rax, -8(%rbp)	# tmp72, tab
	.loc 1 1610 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L303	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tab, tmp73
	movq	136(%rax), %rax	# tab_11->Flush, D.15463
	testq	%rax, %rax	# D.15463
	je	.L303	#,
	.loc 1 1611 0 is_stmt 1
	movq	-8(%rbp), %rax	# tab, tmp74
	movq	136(%rax), %rax	# tab_11->Flush, D.15463
	movq	-40(%rbp), %rdx	# f, tmp75
	movq	%rdx, %rdi	# tmp75,
	call	*%rax	# D.15463
	jmp	.L304	#
.L303:
	.loc 1 1613 0
	movl	$0, %eax	#, D.15461
	jmp	.L304	#
.L302:
.LBE46:
	.loc 1 1616 0
	movq	-40(%rbp), %rax	# f, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 1617 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_17
	.loc 1 1618 0
	movl	$-1, %eax	#, D.15461
	jmp	.L304	#
.L301:
.LBB47:
	.loc 1 1629 0
	movq	$PL_perlio, -16(%rbp)	#, table
	.loc 1 1630 0
	movl	$0, -24(%rbp)	#, code
	.loc 1 1631 0
	jmp	.L305	#
.L309:
.LBB48:
	.loc 1 1633 0
	movq	-40(%rbp), %rax	# f, f.159
	leaq	8(%rax), %rdx	#, tmp77
	movq	%rdx, -40(%rbp)	# tmp77, f
	movq	%rax, -16(%rbp)	# f.159, table
	.loc 1 1634 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L306	#
.L308:
	.loc 1 1635 0
	movq	-40(%rbp), %rax	# f, tmp78
	movq	(%rax), %rax	# *f_1, D.15462
	testq	%rax, %rax	# D.15462
	je	.L307	#,
	.loc 1 1635 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# f, tmp79
	movq	%rax, %rdi	# tmp79,
	call	Perl_PerlIO_flush	#
	testl	%eax, %eax	# D.15461
	je	.L307	#,
	.loc 1 1636 0 is_stmt 1
	movl	$-1, -24(%rbp)	#, code
.L307:
	.loc 1 1637 0
	addq	$8, -40(%rbp)	#, f
	.loc 1 1634 0
	addl	$1, -20(%rbp)	#, i
.L306:
	.loc 1 1634 0 is_stmt 0 discriminator 1
	cmpl	$63, -20(%rbp)	#, i
	jle	.L308	#,
.L305:
.LBE48:
	.loc 1 1631 0 is_stmt 1 discriminator 1
	movq	-16(%rbp), %rax	# table, tmp80
	movq	(%rax), %rax	# *table_2, tmp81
	movq	%rax, -40(%rbp)	# tmp81, f
	cmpq	$0, -40(%rbp)	#, f
	jne	.L309	#,
	.loc 1 1640 0
	movl	-24(%rbp), %eax	# code, D.15461
.L304:
.LBE47:
	.loc 1 1642 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	Perl_PerlIO_flush, .-Perl_PerlIO_flush
	.globl	PerlIOBase_flush_linebuf
	.type	PerlIOBase_flush_linebuf, @function
PerlIOBase_flush_linebuf:
.LFB49:
	.loc 1 1646 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1647 0
	movq	$PL_perlio, -16(%rbp)	#, table
	.loc 1 1649 0
	jmp	.L311	#
.L315:
.LBB49:
	.loc 1 1651 0
	movq	-8(%rbp), %rax	# f, f.160
	leaq	8(%rax), %rdx	#, tmp64
	movq	%rdx, -8(%rbp)	# tmp64, f
	movq	%rax, -16(%rbp)	# f.160, table
	.loc 1 1652 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L312	#
.L314:
	.loc 1 1653 0
	movq	-8(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_2, D.15467
	testq	%rax, %rax	# D.15467
	je	.L313	#,
	.loc 1 1654 0
	movq	-8(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2, D.15467
	movl	16(%rax), %eax	# _11->flags, D.15468
	.loc 1 1655 0
	andl	$524800, %eax	#, D.15468
	.loc 1 1654 0
	cmpl	$524800, %eax	#, D.15468
	jne	.L313	#,
	.loc 1 1657 0
	movq	-8(%rbp), %rax	# f, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_PerlIO_flush	#
.L313:
	.loc 1 1658 0
	addq	$8, -8(%rbp)	#, f
	.loc 1 1652 0
	addl	$1, -20(%rbp)	#, i
.L312:
	.loc 1 1652 0 is_stmt 0 discriminator 1
	cmpl	$63, -20(%rbp)	#, i
	jle	.L314	#,
.L311:
.LBE49:
	.loc 1 1649 0 is_stmt 1 discriminator 1
	movq	-16(%rbp), %rax	# table, tmp68
	movq	(%rax), %rax	# *table_1, tmp69
	movq	%rax, -8(%rbp)	# tmp69, f
	cmpq	$0, -8(%rbp)	#, f
	jne	.L315	#,
	.loc 1 1661 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	PerlIOBase_flush_linebuf, .-PerlIOBase_flush_linebuf
	.globl	Perl_PerlIO_fill
	.type	Perl_PerlIO_fill, @function
Perl_PerlIO_fill:
.LFB50:
	.loc 1 1665 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1666 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L317	#,
	.loc 1 1666 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15470
	testq	%rax, %rax	# D.15470
	je	.L317	#,
.LBB50:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15470
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L318	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	144(%rax), %rax	# tab_5->Fill, D.15471
	testq	%rax, %rax	# D.15471
	je	.L318	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	144(%rax), %rax	# tab_5->Fill, D.15471
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15471
	jmp	.L319	#
.L318:
	.loc 1 1666 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_10
.LBE50:
	jmp	.L320	#
.L317:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_11
.L320:
	.loc 1 1666 0 discriminator 1
	movl	$-1, %eax	#, D.15469
.L319:
	.loc 1 1667 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_PerlIO_fill, .-Perl_PerlIO_fill
	.globl	PerlIO_isutf8
	.type	PerlIO_isutf8, @function
PerlIO_isutf8:
.LFB51:
	.loc 1 1671 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 1672 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L322	#,
	.loc 1 1672 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15475
	testq	%rax, %rax	# D.15475
	je	.L322	#,
	.loc 1 1673 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15475
	movl	16(%rax), %eax	# _4->flags, D.15476
	andl	$32768, %eax	#, D.15476
	testl	%eax, %eax	# D.15476
	setne	%al	#, D.15477
	movzbl	%al, %eax	# D.15477, D.15474
	jmp	.L323	#
.L322:
	.loc 1 1675 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_9
	.loc 1 1677 0
	movl	$-1, %eax	#, D.15474
.L323:
	.loc 1 1678 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	PerlIO_isutf8, .-PerlIO_isutf8
	.globl	Perl_PerlIO_eof
	.type	Perl_PerlIO_eof, @function
Perl_PerlIO_eof:
.LFB52:
	.loc 1 1682 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1683 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L325	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15480
	testq	%rax, %rax	# D.15480
	je	.L325	#,
.LBB51:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15480
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L326	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	152(%rax), %rax	# tab_5->Eof, D.15481
	testq	%rax, %rax	# D.15481
	je	.L326	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	152(%rax), %rax	# tab_5->Eof, D.15481
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15481
	jmp	.L327	#
.L326:
	.loc 1 1683 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIOBase_eof	#
	jmp	.L327	#
.L325:
.LBE51:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	movl	$-1, %eax	#, D.15479
.L327:
	.loc 1 1684 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_PerlIO_eof, .-Perl_PerlIO_eof
	.globl	Perl_PerlIO_error
	.type	Perl_PerlIO_error, @function
Perl_PerlIO_error:
.LFB53:
	.loc 1 1688 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1689 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L329	#,
	.loc 1 1689 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15485
	testq	%rax, %rax	# D.15485
	je	.L329	#,
.LBB52:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15485
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L330	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	160(%rax), %rax	# tab_5->Error, D.15486
	testq	%rax, %rax	# D.15486
	je	.L330	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	160(%rax), %rax	# tab_5->Error, D.15486
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15486
	jmp	.L331	#
.L330:
	.loc 1 1689 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIOBase_error	#
	jmp	.L331	#
.L329:
.LBE52:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	movl	$-1, %eax	#, D.15484
.L331:
	.loc 1 1690 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_PerlIO_error, .-Perl_PerlIO_error
	.globl	Perl_PerlIO_clearerr
	.type	Perl_PerlIO_clearerr, @function
Perl_PerlIO_clearerr:
.LFB54:
	.loc 1 1694 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1695 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L333	#,
	.loc 1 1695 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_1(D), D.15489
	testq	%rax, %rax	# D.15489
	je	.L333	#,
.LBB53:
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), D.15489
	movq	8(%rax), %rax	# _3->tab, tmp66
	movq	%rax, -8(%rbp)	# tmp66, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L334	#,
	movq	-8(%rbp), %rax	# tab, tmp67
	movq	168(%rax), %rax	# tab_4->Clearerr, D.15490
	testq	%rax, %rax	# D.15490
	je	.L334	#,
	movq	-8(%rbp), %rax	# tab, tmp68
	movq	168(%rax), %rax	# tab_4->Clearerr, D.15490
	movq	-24(%rbp), %rdx	# f, tmp69
	movq	%rdx, %rdi	# tmp69,
	call	*%rax	# D.15490
.LBE53:
	jmp	.L332	#
.L334:
.LBB54:
	.loc 1 1695 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, %rdi	# tmp70,
	call	PerlIOBase_clearerr	#
.LBE54:
	jmp	.L332	#
.L333:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_7
.L332:
	.loc 1 1696 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_PerlIO_clearerr, .-Perl_PerlIO_clearerr
	.globl	Perl_PerlIO_setlinebuf
	.type	Perl_PerlIO_setlinebuf, @function
Perl_PerlIO_setlinebuf:
.LFB55:
	.loc 1 1700 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1701 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L338	#,
	.loc 1 1701 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_1(D), D.15492
	testq	%rax, %rax	# D.15492
	je	.L338	#,
.LBB55:
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), D.15492
	movq	8(%rax), %rax	# _3->tab, tmp66
	movq	%rax, -8(%rbp)	# tmp66, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L339	#,
	movq	-8(%rbp), %rax	# tab, tmp67
	movq	176(%rax), %rax	# tab_4->Setlinebuf, D.15493
	testq	%rax, %rax	# D.15493
	je	.L339	#,
	movq	-8(%rbp), %rax	# tab, tmp68
	movq	176(%rax), %rax	# tab_4->Setlinebuf, D.15493
	movq	-24(%rbp), %rdx	# f, tmp69
	movq	%rdx, %rdi	# tmp69,
	call	*%rax	# D.15493
.LBE55:
	jmp	.L337	#
.L339:
.LBB56:
	.loc 1 1701 0 discriminator 2
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, %rdi	# tmp70,
	call	PerlIOBase_setlinebuf	#
.LBE56:
	jmp	.L337	#
.L338:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_7
.L337:
	.loc 1 1702 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	Perl_PerlIO_setlinebuf, .-Perl_PerlIO_setlinebuf
	.globl	PerlIO_has_base
	.type	PerlIO_has_base, @function
PerlIO_has_base:
.LFB56:
	.loc 1 1706 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1707 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L343	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15496
	testq	%rax, %rax	# D.15496
	je	.L343	#,
.LBB57:
	.loc 1 1708 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15496
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	.loc 1 1710 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L344	#,
	.loc 1 1711 0
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	184(%rax), %rax	# tab_5->Get_base, D.15497
	testq	%rax, %rax	# D.15497
	setne	%al	#, D.15498
	movzbl	%al, %eax	# D.15498, D.15495
	jmp	.L345	#
.L344:
	.loc 1 1712 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE57:
	.loc 1 1707 0
	jmp	.L346	#
.L343:
	.loc 1 1715 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L346:
	.loc 1 1717 0
	movl	$0, %eax	#, D.15495
.L345:
	.loc 1 1718 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	PerlIO_has_base, .-PerlIO_has_base
	.globl	PerlIO_fast_gets
	.type	PerlIO_fast_gets, @function
PerlIO_fast_gets:
.LFB57:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1723 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L348	#,
	.loc 1 1723 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_2(D), D.15501
	testq	%rax, %rax	# D.15501
	je	.L348	#,
	movq	-24(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_2(D), D.15501
	movl	16(%rax), %eax	# _4->flags, D.15502
	andl	$4194304, %eax	#, D.15502
	testl	%eax, %eax	# D.15502
	je	.L348	#,
.LBB58:
	.loc 1 1724 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp72
	movq	(%rax), %rax	# *f_2(D), D.15501
	movq	8(%rax), %rax	# _7->tab, tmp73
	movq	%rax, -8(%rbp)	# tmp73, tab
	.loc 1 1726 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L349	#,
	.loc 1 1727 0
	movq	-8(%rbp), %rax	# tab, tmp74
	movq	216(%rax), %rax	# tab_8->Set_ptrcnt, D.15503
	testq	%rax, %rax	# D.15503
	setne	%al	#, D.15504
	movzbl	%al, %eax	# D.15504, D.15500
	jmp	.L350	#
.L349:
	.loc 1 1728 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_12
.LBE58:
	.loc 1 1723 0
	jmp	.L351	#
.L348:
	.loc 1 1731 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_13
.L351:
	.loc 1 1733 0
	movl	$0, %eax	#, D.15500
.L350:
	.loc 1 1734 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	PerlIO_fast_gets, .-PerlIO_fast_gets
	.globl	PerlIO_has_cntptr
	.type	PerlIO_has_cntptr, @function
PerlIO_has_cntptr:
.LFB58:
	.loc 1 1738 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1739 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L353	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_3(D), D.15507
	testq	%rax, %rax	# D.15507
	je	.L353	#,
.LBB59:
	.loc 1 1740 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_3(D), D.15507
	movq	8(%rax), %rax	# _5->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	.loc 1 1742 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L354	#,
	.loc 1 1743 0
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	200(%rax), %rax	# tab_6->Get_ptr, D.15508
	testq	%rax, %rax	# D.15508
	je	.L355	#,
	.loc 1 1743 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	208(%rax), %rax	# tab_6->Get_cnt, D.15509
	testq	%rax, %rax	# D.15509
	je	.L355	#,
	.loc 1 1743 0 discriminator 3
	movl	$1, %eax	#, iftmp.161
	jmp	.L356	#
.L355:
	.loc 1 1743 0 discriminator 2
	movl	$0, %eax	#, iftmp.161
.L356:
	.loc 1 1743 0 discriminator 4
	jmp	.L357	#
.L354:
	.loc 1 1744 0 is_stmt 1
	call	__errno_location	#
	movl	$22, (%rax)	#, *_12
.LBE59:
	.loc 1 1739 0
	jmp	.L358	#
.L353:
	.loc 1 1747 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_13
.L358:
	.loc 1 1749 0
	movl	$0, %eax	#, D.15506
.L357:
	.loc 1 1750 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	PerlIO_has_cntptr, .-PerlIO_has_cntptr
	.globl	PerlIO_canset_cnt
	.type	PerlIO_canset_cnt, @function
PerlIO_canset_cnt:
.LFB59:
	.loc 1 1754 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1755 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L360	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15512
	testq	%rax, %rax	# D.15512
	je	.L360	#,
.LBB60:
	.loc 1 1756 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15512
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	.loc 1 1758 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L361	#,
	.loc 1 1759 0
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	216(%rax), %rax	# tab_5->Set_ptrcnt, D.15513
	testq	%rax, %rax	# D.15513
	setne	%al	#, D.15514
	movzbl	%al, %eax	# D.15514, D.15511
	jmp	.L362	#
.L361:
	.loc 1 1760 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE60:
	.loc 1 1755 0
	jmp	.L363	#
.L360:
	.loc 1 1763 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L363:
	.loc 1 1765 0
	movl	$0, %eax	#, D.15511
.L362:
	.loc 1 1766 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	PerlIO_canset_cnt, .-PerlIO_canset_cnt
	.globl	Perl_PerlIO_get_base
	.type	Perl_PerlIO_get_base, @function
Perl_PerlIO_get_base:
.LFB60:
	.loc 1 1770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1771 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L365	#,
	.loc 1 1771 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15517
	testq	%rax, %rax	# D.15517
	je	.L365	#,
.LBB61:
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15517
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L366	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	184(%rax), %rax	# tab_5->Get_base, D.15518
	testq	%rax, %rax	# D.15518
	je	.L366	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	184(%rax), %rax	# tab_5->Get_base, D.15518
	movq	-24(%rbp), %rdx	# f, tmp72
	movq	%rdx, %rdi	# tmp72,
	call	*%rax	# D.15518
	jmp	.L367	#
.L366:
	.loc 1 1771 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE61:
	jmp	.L368	#
.L365:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L368:
	.loc 1 1771 0 discriminator 1
	movl	$0, %eax	#, D.15516
.L367:
	.loc 1 1772 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	Perl_PerlIO_get_base, .-Perl_PerlIO_get_base
	.globl	Perl_PerlIO_get_bufsiz
	.type	Perl_PerlIO_get_bufsiz, @function
Perl_PerlIO_get_bufsiz:
.LFB61:
	.loc 1 1776 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1777 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L370	#,
	.loc 1 1777 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15521
	testq	%rax, %rax	# D.15521
	je	.L370	#,
.LBB62:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15521
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L371	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	192(%rax), %rax	# tab_5->Get_bufsiz, D.15522
	testq	%rax, %rax	# D.15522
	je	.L371	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	192(%rax), %rax	# tab_5->Get_bufsiz, D.15522
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15522
	jmp	.L372	#
.L371:
	.loc 1 1777 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_10
.LBE62:
	jmp	.L373	#
.L370:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_11
.L373:
	.loc 1 1777 0 discriminator 1
	movl	$-1, %eax	#, D.15520
.L372:
	.loc 1 1778 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	Perl_PerlIO_get_bufsiz, .-Perl_PerlIO_get_bufsiz
	.globl	Perl_PerlIO_get_ptr
	.type	Perl_PerlIO_get_ptr, @function
Perl_PerlIO_get_ptr:
.LFB62:
	.loc 1 1782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1783 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L375	#,
	.loc 1 1783 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15526
	testq	%rax, %rax	# D.15526
	je	.L375	#,
.LBB63:
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15526
	movq	8(%rax), %rax	# _4->tab, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L376	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	200(%rax), %rax	# tab_5->Get_ptr, D.15527
	testq	%rax, %rax	# D.15527
	je	.L376	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	200(%rax), %rax	# tab_5->Get_ptr, D.15527
	movq	-24(%rbp), %rdx	# f, tmp72
	movq	%rdx, %rdi	# tmp72,
	call	*%rax	# D.15527
	jmp	.L377	#
.L376:
	.loc 1 1783 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE63:
	jmp	.L378	#
.L375:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L378:
	.loc 1 1783 0 discriminator 1
	movl	$0, %eax	#, D.15525
.L377:
	.loc 1 1784 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	Perl_PerlIO_get_ptr, .-Perl_PerlIO_get_ptr
	.globl	Perl_PerlIO_get_cnt
	.type	Perl_PerlIO_get_cnt, @function
Perl_PerlIO_get_cnt:
.LFB63:
	.loc 1 1788 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 1789 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L380	#,
	.loc 1 1789 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15530
	testq	%rax, %rax	# D.15530
	je	.L380	#,
.LBB64:
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15530
	movq	8(%rax), %rax	# _4->tab, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L381	#,
	movq	-8(%rbp), %rax	# tab, tmp71
	movq	208(%rax), %rax	# tab_5->Get_cnt, D.15531
	testq	%rax, %rax	# D.15531
	je	.L381	#,
	movq	-8(%rbp), %rax	# tab, tmp72
	movq	208(%rax), %rax	# tab_5->Get_cnt, D.15531
	movq	-24(%rbp), %rdx	# f, tmp73
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.15531
	jmp	.L382	#
.L381:
	.loc 1 1789 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_10
.LBE64:
	jmp	.L383	#
.L380:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_11
.L383:
	.loc 1 1789 0 discriminator 1
	movl	$-1, %eax	#, D.15529
.L382:
	.loc 1 1790 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	Perl_PerlIO_get_cnt, .-Perl_PerlIO_get_cnt
	.globl	Perl_PerlIO_set_cnt
	.type	Perl_PerlIO_set_cnt, @function
Perl_PerlIO_set_cnt:
.LFB64:
	.loc 1 1794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# cnt, cnt
	.loc 1 1795 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L385	#,
	.loc 1 1795 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_1(D), D.15534
	testq	%rax, %rax	# D.15534
	je	.L385	#,
.LBB65:
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), D.15534
	movq	8(%rax), %rax	# _3->tab, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L386	#,
	movq	-8(%rbp), %rax	# tab, tmp69
	movq	216(%rax), %rax	# tab_4->Set_ptrcnt, D.15535
	testq	%rax, %rax	# D.15535
	je	.L386	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	216(%rax), %rax	# tab_4->Set_ptrcnt, D.15535
	movl	-28(%rbp), %edx	# cnt, tmp71
	movslq	%edx, %rdx	# tmp71, D.15536
	movq	-24(%rbp), %rcx	# f, tmp72
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# tmp72,
	call	*%rax	# D.15535
.LBE65:
	jmp	.L384	#
.L386:
.LBB66:
	.loc 1 1795 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_9
.LBE66:
	jmp	.L384	#
.L385:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_10
.L384:
	.loc 1 1796 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	Perl_PerlIO_set_cnt, .-Perl_PerlIO_set_cnt
	.globl	Perl_PerlIO_set_ptrcnt
	.type	Perl_PerlIO_set_ptrcnt, @function
Perl_PerlIO_set_ptrcnt:
.LFB65:
	.loc 1 1800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# ptr, ptr
	movl	%edx, -36(%rbp)	# cnt, cnt
	.loc 1 1801 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L390	#,
	.loc 1 1801 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_1(D), D.15538
	testq	%rax, %rax	# D.15538
	je	.L390	#,
.LBB67:
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), D.15538
	movq	8(%rax), %rax	# _3->tab, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tab
	cmpq	$0, -8(%rbp)	#, tab
	je	.L391	#,
	movq	-8(%rbp), %rax	# tab, tmp69
	movq	216(%rax), %rax	# tab_4->Set_ptrcnt, D.15539
	testq	%rax, %rax	# D.15539
	je	.L391	#,
	movq	-8(%rbp), %rax	# tab, tmp70
	movq	216(%rax), %rax	# tab_4->Set_ptrcnt, D.15539
	movl	-36(%rbp), %edx	# cnt, tmp71
	movslq	%edx, %rdx	# tmp71, D.15540
	movq	-32(%rbp), %rsi	# ptr, tmp72
	movq	-24(%rbp), %rcx	# f, tmp73
	movq	%rcx, %rdi	# tmp73,
	call	*%rax	# D.15539
.LBE67:
	jmp	.L389	#
.L391:
.LBB68:
	.loc 1 1801 0 discriminator 2
	call	__errno_location	#
	movl	$22, (%rax)	#, *_10
.LBE68:
	jmp	.L389	#
.L390:
	call	__errno_location	#
	movl	$9, (%rax)	#, *_11
.L389:
	.loc 1 1802 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	Perl_PerlIO_set_ptrcnt, .-Perl_PerlIO_set_ptrcnt
	.globl	PerlIOUtf8_pushed
	.type	PerlIOUtf8_pushed, @function
PerlIOUtf8_pushed:
.LFB66:
	.loc 1 1812 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# mode, mode
	movq	%rdx, -24(%rbp)	# arg, arg
	movq	%rcx, -32(%rbp)	# tab, tab
	.loc 1 1813 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L395	#,
	.loc 1 1813 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp72
	movq	(%rax), %rax	# *f_2(D), D.15543
	testq	%rax, %rax	# D.15543
	je	.L395	#,
	.loc 1 1814 0 is_stmt 1
	movq	-32(%rbp), %rax	# tab, tmp73
	movl	24(%rax), %eax	# tab_4(D)->kind, D.15544
	andl	$32768, %eax	#, D.15544
	testl	%eax, %eax	# D.15544
	je	.L396	#,
	.loc 1 1815 0
	movq	-8(%rbp), %rax	# f, tmp74
	movq	(%rax), %rax	# *f_2(D), D.15543
	movq	-8(%rbp), %rdx	# f, tmp75
	movq	(%rdx), %rdx	# *f_2(D), D.15543
	movl	16(%rdx), %edx	# _8->flags, D.15544
	orb	$128, %dh	#, D.15544
	movl	%edx, 16(%rax)	# D.15544, _7->flags
	jmp	.L397	#
.L396:
	.loc 1 1817 0
	movq	-8(%rbp), %rax	# f, tmp76
	movq	(%rax), %rax	# *f_2(D), D.15543
	movq	-8(%rbp), %rdx	# f, tmp77
	movq	(%rdx), %rdx	# *f_2(D), D.15543
	movl	16(%rdx), %edx	# _12->flags, D.15544
	andb	$127, %dh	#, D.15544
	movl	%edx, 16(%rax)	# D.15544, _11->flags
.L397:
	.loc 1 1818 0
	movl	$0, %eax	#, D.15542
	jmp	.L398	#
.L395:
	.loc 1 1820 0
	movq	$-1, %rax	#, D.15542
.L398:
	.loc 1 1821 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	PerlIOUtf8_pushed, .-PerlIOUtf8_pushed
	.globl	PerlIO_utf8
	.section	.rodata
.LC37:
	.string	"utf8"
	.data
	.align 32
	.type	PerlIO_utf8, @object
	.size	PerlIO_utf8, 224
PerlIO_utf8:
# fsize:
	.quad	224
# name:
	.quad	.LC37
# size:
	.quad	0
# kind:
	.long	32784
# Pushed:
	.zero	4
	.quad	PerlIOUtf8_pushed
# Popped:
	.quad	0
# Open:
	.quad	0
# Binmode:
	.quad	0
# Getarg:
	.quad	0
# Fileno:
	.quad	0
# Dup:
	.quad	0
# Read:
	.quad	0
# Unread:
	.quad	0
# Write:
	.quad	0
# Seek:
	.quad	0
# Tell:
	.quad	0
# Close:
	.quad	0
# Flush:
	.quad	0
# Fill:
	.quad	0
# Eof:
	.quad	0
# Error:
	.quad	0
# Clearerr:
	.quad	0
# Setlinebuf:
	.quad	0
# Get_base:
	.quad	0
# Get_bufsiz:
	.quad	0
# Get_ptr:
	.quad	0
	.zero	16
	.globl	PerlIO_byte
	.section	.rodata
.LC38:
	.string	"bytes"
	.data
	.align 32
	.type	PerlIO_byte, @object
	.size	PerlIO_byte, 224
PerlIO_byte:
# fsize:
	.quad	224
# name:
	.quad	.LC38
# size:
	.quad	0
# kind:
	.long	16
# Pushed:
	.zero	4
	.quad	PerlIOUtf8_pushed
# Popped:
	.quad	0
# Open:
	.quad	0
# Binmode:
	.quad	0
# Getarg:
	.quad	0
# Fileno:
	.quad	0
# Dup:
	.quad	0
# Read:
	.quad	0
# Unread:
	.quad	0
# Write:
	.quad	0
# Seek:
	.quad	0
# Tell:
	.quad	0
# Close:
	.quad	0
# Flush:
	.quad	0
# Fill:
	.quad	0
# Eof:
	.quad	0
# Error:
	.quad	0
# Clearerr:
	.quad	0
# Setlinebuf:
	.quad	0
# Get_base:
	.quad	0
# Get_bufsiz:
	.quad	0
# Get_ptr:
	.quad	0
	.zero	16
	.text
	.globl	PerlIORaw_open
	.type	PerlIORaw_open, @function
PerlIORaw_open:
.LFB67:
	.loc 1 1885 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movq	%rsi, -32(%rbp)	# layers, layers
	movq	%rdx, -40(%rbp)	# n, n
	movq	%rcx, -48(%rbp)	# mode, mode
	movl	%r8d, -52(%rbp)	# fd, fd
	movl	%r9d, -56(%rbp)	# imode, imode
	.loc 1 1886 0
	movl	$0, %edi	#,
	call	PerlIO_default_layer	#
	movq	%rax, -8(%rbp)	# tmp65, tab
	.loc 1 1887 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L400	#,
	.loc 1 1887 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tab, tmp66
	movq	48(%rax), %rax	# tab_2->Open, D.15548
	testq	%rax, %rax	# D.15548
	je	.L400	#,
	.loc 1 1888 0 is_stmt 1
	movq	-8(%rbp), %rax	# tab, tmp67
	movq	48(%rax), %rax	# tab_2->Open, D.15548
	movq	-40(%rbp), %rdx	# n, tmp68
	leaq	-1(%rdx), %r10	#, D.15549
	movl	-56(%rbp), %r9d	# imode, tmp69
	movl	-52(%rbp), %r8d	# fd, tmp70
	movq	-48(%rbp), %rdx	# mode, tmp71
	movq	-32(%rbp), %rsi	# layers, tmp72
	movq	-8(%rbp), %rdi	# tab, tmp73
	movq	40(%rbp), %rcx	# args, tmp74
	movq	%rcx, 24(%rsp)	# tmp74,
	movl	32(%rbp), %ecx	# narg, tmp75
	movl	%ecx, 16(%rsp)	# tmp75,
	movq	24(%rbp), %rcx	# old, tmp76
	movq	%rcx, 8(%rsp)	# tmp76,
	movl	16(%rbp), %ecx	# perm, tmp77
	movl	%ecx, (%rsp)	# tmp77,
	movq	%rdx, %rcx	# tmp71,
	movq	%r10, %rdx	# D.15549,
	call	*%rax	# D.15548
	jmp	.L401	#
.L400:
	.loc 1 1890 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_16
	.loc 1 1891 0
	movl	$0, %eax	#, D.15547
.L401:
	.loc 1 1892 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	PerlIORaw_open, .-PerlIORaw_open
	.globl	PerlIO_raw
	.section	.rodata
.LC39:
	.string	"raw"
	.data
	.align 32
	.type	PerlIO_raw, @object
	.size	PerlIO_raw, 224
PerlIO_raw:
# fsize:
	.quad	224
# name:
	.quad	.LC39
# size:
	.quad	0
# kind:
	.long	16
# Pushed:
	.zero	4
	.quad	PerlIORaw_pushed
# Popped:
	.quad	PerlIOBase_popped
# Open:
	.quad	PerlIORaw_open
# Binmode:
	.quad	0
# Getarg:
	.quad	0
# Fileno:
	.quad	0
# Dup:
	.quad	0
# Read:
	.quad	0
# Unread:
	.quad	0
# Write:
	.quad	0
# Seek:
	.quad	0
# Tell:
	.quad	0
# Close:
	.quad	0
# Flush:
	.quad	0
# Fill:
	.quad	0
# Eof:
	.quad	0
# Error:
	.quad	0
# Clearerr:
	.quad	0
# Setlinebuf:
	.quad	0
# Get_base:
	.quad	0
# Get_bufsiz:
	.quad	0
# Get_ptr:
	.quad	0
	.zero	16
	.text
	.globl	PerlIOBase_fileno
	.type	PerlIOBase_fileno, @function
PerlIOBase_fileno:
.LFB68:
	.loc 1 1930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 1931 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L403	#,
	.loc 1 1931 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15552
	testq	%rax, %rax	# D.15552
	je	.L403	#,
	movq	-8(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15552
	movq	%rax, %rdi	# D.15553,
	call	Perl_PerlIO_fileno	#
	cltq
	jmp	.L404	#
.L403:
	.loc 1 1931 0 discriminator 2
	movq	$-1, %rax	#, iftmp.162
.L404:
	.loc 1 1932 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	PerlIOBase_fileno, .-PerlIOBase_fileno
	.globl	PerlIO_modestr
	.type	PerlIO_modestr, @function
PerlIO_modestr:
.LFB69:
	.loc 1 1936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# buf, buf
	.loc 1 1937 0
	movq	-32(%rbp), %rax	# buf, tmp76
	movq	%rax, -16(%rbp)	# tmp76, s
	.loc 1 1938 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L407	#,
	.loc 1 1938 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp77
	movq	(%rax), %rax	# *f_6(D), D.15556
	testq	%rax, %rax	# D.15556
	je	.L407	#,
.LBB69:
	.loc 1 1939 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp78
	movq	(%rax), %rax	# *f_6(D), D.15556
	movl	16(%rax), %eax	# _8->flags, D.15557
	movl	%eax, %eax	# D.15557, tmp93
	movq	%rax, -8(%rbp)	# tmp93, flags
	.loc 1 1940 0
	movq	-8(%rbp), %rax	# flags, tmp79
	andl	$8192, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L408	#,
	.loc 1 1941 0
	movq	-16(%rbp), %rax	# s, s.163
	leaq	1(%rax), %rdx	#, tmp80
	movq	%rdx, -16(%rbp)	# tmp80, s
	movb	$97, (%rax)	#, *s.163_12
	.loc 1 1942 0
	movq	-8(%rbp), %rax	# flags, tmp81
	andl	$1024, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L407	#,
	.loc 1 1943 0
	movq	-16(%rbp), %rax	# s, s.164
	leaq	1(%rax), %rdx	#, tmp82
	movq	%rdx, -16(%rbp)	# tmp82, s
	movb	$43, (%rax)	#, *s.164_15
	jmp	.L407	#
.L408:
	.loc 1 1946 0
	movq	-8(%rbp), %rax	# flags, tmp83
	andl	$1024, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L410	#,
	.loc 1 1947 0
	movq	-16(%rbp), %rax	# s, s.165
	leaq	1(%rax), %rdx	#, tmp84
	movq	%rdx, -16(%rbp)	# tmp84, s
	movb	$114, (%rax)	#, *s.165_18
	.loc 1 1948 0
	movq	-8(%rbp), %rax	# flags, tmp85
	andl	$512, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L407	#,
	.loc 1 1949 0
	movq	-16(%rbp), %rax	# s, s.166
	leaq	1(%rax), %rdx	#, tmp86
	movq	%rdx, -16(%rbp)	# tmp86, s
	movb	$43, (%rax)	#, *s.166_21
	jmp	.L407	#
.L410:
	.loc 1 1951 0
	movq	-8(%rbp), %rax	# flags, tmp87
	andl	$512, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L407	#,
	.loc 1 1952 0
	movq	-16(%rbp), %rax	# s, s.167
	leaq	1(%rax), %rdx	#, tmp88
	movq	%rdx, -16(%rbp)	# tmp88, s
	movb	$119, (%rax)	#, *s.167_24
	.loc 1 1953 0
	movq	-8(%rbp), %rax	# flags, tmp89
	andl	$1024, %eax	#, D.15558
	testq	%rax, %rax	# D.15558
	je	.L407	#,
	.loc 1 1954 0
	movq	-16(%rbp), %rax	# s, s.168
	leaq	1(%rax), %rdx	#, tmp90
	movq	%rdx, -16(%rbp)	# tmp90, s
	movb	$43, (%rax)	#, *s.168_27
.L407:
.LBE69:
	.loc 1 1962 0
	movq	-16(%rbp), %rax	# s, tmp91
	movb	$0, (%rax)	#, *s_3
	.loc 1 1963 0
	movq	-32(%rbp), %rax	# buf, D.15559
	.loc 1 1964 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	PerlIO_modestr, .-PerlIO_modestr
	.globl	PerlIOBase_pushed
	.type	PerlIOBase_pushed, @function
PerlIOBase_pushed:
.LFB70:
	.loc 1 1969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# arg, arg
	movq	%rcx, -48(%rbp)	# tab, tab
	.loc 1 1970 0
	movq	-24(%rbp), %rax	# f, tmp95
	movq	(%rax), %rax	# *f_4(D), tmp96
	movq	%rax, -8(%rbp)	# tmp96, l
	.loc 1 1975 0
	movq	-8(%rbp), %rax	# l, tmp97
	movl	16(%rax), %eax	# l_5->flags, D.15561
	andb	$201, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp98
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 1977 0
	movq	-48(%rbp), %rax	# tab, tmp99
	movq	216(%rax), %rax	# tab_8(D)->Set_ptrcnt, D.15562
	testq	%rax, %rax	# D.15562
	je	.L414	#,
	.loc 1 1978 0
	movq	-8(%rbp), %rax	# l, tmp100
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orl	$4194304, %eax	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp101
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
.L414:
	.loc 1 1979 0
	cmpq	$0, -32(%rbp)	#, mode
	je	.L415	#,
	.loc 1 1980 0
	movq	-32(%rbp), %rax	# mode, tmp102
	movzbl	(%rax), %eax	# *mode_12(D), D.15563
	cmpb	$35, %al	#, D.15563
	je	.L416	#,
	.loc 1 1980 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mode, tmp103
	movzbl	(%rax), %eax	# *mode_12(D), D.15563
	cmpb	$73, %al	#, D.15563
	jne	.L417	#,
.L416:
	.loc 1 1981 0 is_stmt 1
	addq	$1, -32(%rbp)	#, mode
.L417:
	.loc 1 1982 0
	movq	-32(%rbp), %rax	# mode, mode.169
	leaq	1(%rax), %rdx	#, tmp104
	movq	%rdx, -32(%rbp)	# tmp104, mode
	movzbl	(%rax), %eax	# *mode.169_16, D.15563
	movsbl	%al, %eax	# D.15563, D.15564
	cmpl	$114, %eax	#, D.15564
	je	.L419	#,
	cmpl	$119, %eax	#, D.15564
	je	.L420	#,
	cmpl	$97, %eax	#, D.15564
	je	.L421	#,
	jmp	.L431	#
.L419:
	.loc 1 1984 0
	movq	-8(%rbp), %rax	# l, tmp105
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orb	$4, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp106
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 1985 0
	jmp	.L422	#
.L421:
	.loc 1 1987 0
	movq	-8(%rbp), %rax	# l, tmp107
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orb	$34, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp108
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 1988 0
	jmp	.L422	#
.L420:
	.loc 1 1990 0
	movq	-8(%rbp), %rax	# l, tmp109
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orb	$18, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp110
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 1991 0
	jmp	.L422	#
.L431:
	.loc 1 1993 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_26
	.loc 1 1994 0
	movq	$-1, %rax	#, D.15560
	jmp	.L423	#
.L422:
	.loc 1 1996 0
	jmp	.L424	#
.L429:
	.loc 1 1997 0
	movq	-32(%rbp), %rax	# mode, mode.170
	leaq	1(%rax), %rdx	#, tmp111
	movq	%rdx, -32(%rbp)	# tmp111, mode
	movzbl	(%rax), %eax	# *mode.170_29, D.15563
	movsbl	%al, %eax	# D.15563, D.15564
	cmpl	$98, %eax	#, D.15564
	je	.L426	#,
	cmpl	$116, %eax	#, D.15564
	je	.L427	#,
	cmpl	$43, %eax	#, D.15564
	jne	.L432	#,
	.loc 1 1999 0
	movq	-8(%rbp), %rax	# l, tmp112
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orb	$6, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp113
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 2000 0
	jmp	.L424	#
.L426:
	.loc 1 2002 0
	movq	-8(%rbp), %rax	# l, tmp114
	movl	16(%rax), %eax	# l_5->flags, D.15561
	andb	$191, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp115
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 2003 0
	jmp	.L424	#
.L427:
	.loc 1 2005 0
	movq	-8(%rbp), %rax	# l, tmp116
	movl	16(%rax), %eax	# l_5->flags, D.15561
	orb	$64, %ah	#, D.15561
	movl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp117
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
	.loc 1 2006 0
	jmp	.L424	#
.L432:
	.loc 1 2008 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_39
	.loc 1 2009 0
	movq	$-1, %rax	#, D.15560
	jmp	.L423	#
.L424:
	.loc 1 1996 0 discriminator 1
	movq	-32(%rbp), %rax	# mode, tmp118
	movzbl	(%rax), %eax	# *mode_2, D.15563
	testb	%al, %al	# D.15563
	jne	.L429	#,
	jmp	.L430	#
.L415:
	.loc 1 2014 0
	movq	-8(%rbp), %rax	# l, tmp119
	movq	(%rax), %rax	# l_5->next, D.15566
	testq	%rax, %rax	# D.15566
	je	.L430	#,
	.loc 1 2015 0
	movq	-8(%rbp), %rax	# l, tmp120
	movl	16(%rax), %edx	# l_5->flags, D.15561
	movq	-8(%rbp), %rax	# l, tmp121
	movq	(%rax), %rax	# l_5->next, D.15566
	movl	16(%rax), %eax	# _43->flags, D.15561
	andl	$13824, %eax	#, D.15561
	orl	%eax, %edx	# D.15561, D.15561
	movq	-8(%rbp), %rax	# l, tmp122
	movl	%edx, 16(%rax)	# D.15561, l_5->flags
.L430:
	.loc 1 2025 0
	movl	$0, %eax	#, D.15560
.L423:
	.loc 1 2026 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	PerlIOBase_pushed, .-PerlIOBase_pushed
	.globl	PerlIOBase_popped
	.type	PerlIOBase_popped, @function
PerlIOBase_popped:
.LFB71:
	.loc 1 2030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2031 0
	movl	$0, %eax	#, D.15567
	.loc 1 2032 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	PerlIOBase_popped, .-PerlIOBase_popped
	.section	.rodata
.LC40:
	.string	"r"
	.text
	.globl	PerlIOBase_unread
	.type	PerlIOBase_unread, @function
PerlIOBase_unread:
.LFB72:
	.loc 1 2036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 2040 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	%rax, %rdi	# tmp62,
	call	Perl_PerlIO_tell	#
	movq	%rax, -16(%rbp)	# tmp63, old
	.loc 1 2042 0
	movq	-24(%rbp), %rax	# f, tmp64
	movl	$0, %ecx	#,
	movl	$.LC40, %edx	#,
	movl	$PerlIO_pending, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_push	#
	.loc 1 2043 0
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), D.15568
	movq	-16(%rbp), %rdx	# old, tmp66
	movq	%rdx, 48(%rax)	# tmp66, MEM[(struct PerlIOBuf *)_3].posn
	.loc 1 2044 0
	movq	-40(%rbp), %rdx	# count, tmp67
	movq	-32(%rbp), %rcx	# vbuf, tmp68
	movq	-24(%rbp), %rax	# f, tmp69
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	PerlIOBuf_unread	#
	movq	%rax, -8(%rbp)	# tmp70, done
	.loc 1 2045 0
	movq	-8(%rbp), %rax	# done, D.15569
	.loc 1 2046 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	PerlIOBase_unread, .-PerlIOBase_unread
	.globl	PerlIOBase_read
	.type	PerlIOBase_read, @function
PerlIOBase_read:
.LFB73:
	.loc 1 2050 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# vbuf, vbuf
	movq	%rdx, -56(%rbp)	# count, count
	.loc 1 2051 0
	movq	-48(%rbp), %rax	# vbuf, tmp80
	movq	%rax, -32(%rbp)	# tmp80, buf
	.loc 1 2052 0
	cmpq	$0, -40(%rbp)	#, f
	je	.L438	#,
	.loc 1 2053 0
	movq	-40(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_11(D), D.15572
	movl	16(%rax), %eax	# _12->flags, D.15573
	andl	$1024, %eax	#, D.15573
	testl	%eax, %eax	# D.15573
	jne	.L439	#,
	.loc 1 2054 0
	movq	-40(%rbp), %rax	# f, tmp82
	movq	(%rax), %rax	# *f_11(D), D.15572
	movq	-40(%rbp), %rdx	# f, tmp83
	movq	(%rdx), %rdx	# *f_11(D), D.15572
	movl	16(%rdx), %edx	# _16->flags, D.15573
	orb	$8, %dh	#, D.15573
	movl	%edx, 16(%rax)	# D.15573, _15->flags
	.loc 1 2055 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_19
	.loc 1 2056 0
	movl	$0, %eax	#, D.15571
	jmp	.L440	#
.L439:
	.loc 1 2058 0
	jmp	.L441	#
.L445:
.LBB70:
	.loc 1 2059 0
	movq	-40(%rbp), %rax	# f, tmp84
	movq	%rax, %rdi	# tmp84,
	call	Perl_PerlIO_get_cnt	#
	cltq
	movq	%rax, -24(%rbp)	# tmp85, avail
	.loc 1 2060 0
	movq	$0, -16(%rbp)	#, take
	.loc 1 2061 0
	cmpq	$0, -24(%rbp)	#, avail
	jle	.L442	#,
	.loc 1 2062 0
	movq	-56(%rbp), %rdx	# count, count.171
	movq	-24(%rbp), %rax	# avail, tmp87
	cmpq	%rax, %rdx	# tmp87, count.171
	cmovle	%rdx, %rax	# count.171,, tmp86
	movq	%rax, -16(%rbp)	# tmp86, take
.L442:
	.loc 1 2063 0
	cmpq	$0, -16(%rbp)	#, take
	jle	.L443	#,
.LBB71:
	.loc 1 2064 0
	movq	-40(%rbp), %rax	# f, tmp88
	movq	%rax, %rdi	# tmp88,
	call	Perl_PerlIO_get_ptr	#
	movq	%rax, -8(%rbp)	# tmp89, ptr
	.loc 1 2065 0
	movq	-16(%rbp), %rdx	# take, take.172
	movq	-8(%rbp), %rcx	# ptr, tmp90
	movq	-32(%rbp), %rax	# buf, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	memcpy	#
	.loc 1 2066 0
	movq	-16(%rbp), %rax	# take, tmp92
	subq	%rax, -24(%rbp)	# tmp92, avail
	movq	-24(%rbp), %rax	# avail, tmp93
	movl	%eax, %edx	# tmp93, D.15575
	movq	-16(%rbp), %rcx	# take, take.173
	movq	-8(%rbp), %rax	# ptr, tmp94
	addq	%rax, %rcx	# tmp94, D.15576
	movq	-40(%rbp), %rax	# f, tmp95
	movq	%rcx, %rsi	# D.15576,
	movq	%rax, %rdi	# tmp95,
	call	Perl_PerlIO_set_ptrcnt	#
	.loc 1 2067 0
	movq	-16(%rbp), %rax	# take, take.174
	subq	%rax, -56(%rbp)	# take.174, count
	.loc 1 2068 0
	movq	-16(%rbp), %rax	# take, take.175
	addq	%rax, -32(%rbp)	# take.175, buf
.L443:
.LBE71:
	.loc 1 2070 0
	cmpq	$0, -56(%rbp)	#, count
	je	.L441	#,
	.loc 1 2070 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, avail
	jg	.L441	#,
	.loc 1 2071 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp96
	movq	%rax, %rdi	# tmp96,
	call	Perl_PerlIO_fill	#
	testl	%eax, %eax	# D.15575
	je	.L441	#,
	.loc 1 2072 0
	jmp	.L444	#
.L441:
.LBE70:
	.loc 1 2058 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, count
	jne	.L445	#,
.L444:
	.loc 1 2075 0
	movq	-32(%rbp), %rdx	# buf, buf.176
	movq	-48(%rbp), %rax	# vbuf, vbuf.177
	subq	%rax, %rdx	# vbuf.177, D.15571
	movq	%rdx, %rax	# D.15571, D.15571
	jmp	.L440	#
.L438:
	.loc 1 2077 0
	movl	$0, %eax	#, D.15571
.L440:
	.loc 1 2078 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	PerlIOBase_read, .-PerlIOBase_read
	.globl	PerlIOBase_noop_ok
	.type	PerlIOBase_noop_ok, @function
PerlIOBase_noop_ok:
.LFB74:
	.loc 1 2082 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2083 0
	movl	$0, %eax	#, D.15578
	.loc 1 2084 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	PerlIOBase_noop_ok, .-PerlIOBase_noop_ok
	.globl	PerlIOBase_noop_fail
	.type	PerlIOBase_noop_fail, @function
PerlIOBase_noop_fail:
.LFB75:
	.loc 1 2088 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2089 0
	movq	$-1, %rax	#, D.15579
	.loc 1 2090 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	PerlIOBase_noop_fail, .-PerlIOBase_noop_fail
	.globl	PerlIOBase_close
	.type	PerlIOBase_close, @function
PerlIOBase_close:
.LFB76:
	.loc 1 2094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 2095 0
	movq	$-1, -24(%rbp)	#, code
	.loc 1 2096 0
	cmpq	$0, -40(%rbp)	#, f
	je	.L451	#,
	.loc 1 2096 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# f, tmp79
	movq	(%rax), %rax	# *f_6(D), D.15580
	testq	%rax, %rax	# D.15580
	je	.L451	#,
.LBB72:
	.loc 1 2097 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp80
	movq	(%rax), %rax	# *f_6(D), D.15580
	movq	%rax, -16(%rbp)	# D.15580, n
	.loc 1 2098 0
	movq	-40(%rbp), %rax	# f, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_PerlIO_flush	#
	cltq
	movq	%rax, -24(%rbp)	# tmp82, code
	.loc 1 2099 0
	movq	-40(%rbp), %rax	# f, tmp83
	movq	(%rax), %rax	# *f_6(D), D.15580
	movq	-40(%rbp), %rdx	# f, tmp84
	movq	(%rdx), %rdx	# *f_6(D), D.15580
	movl	16(%rdx), %edx	# _13->flags, D.15582
	andl	$-2098689, %edx	#, D.15582
	movl	%edx, 16(%rax)	# D.15582, _12->flags
	.loc 1 2101 0
	jmp	.L452	#
.L456:
.LBB73:
	.loc 1 2102 0
	movq	-16(%rbp), %rax	# n, tmp85
	movq	(%rax), %rax	# *n_4, D.15580
	movq	8(%rax), %rax	# _17->tab, tmp86
	movq	%rax, -8(%rbp)	# tmp86, tab
	.loc 1 2103 0
	cmpq	$0, -8(%rbp)	#, tab
	je	.L453	#,
	.loc 1 2103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tab, tmp87
	movq	128(%rax), %rax	# tab_18->Close, D.15583
	testq	%rax, %rax	# D.15583
	je	.L453	#,
	.loc 1 2104 0 is_stmt 1
	movq	-8(%rbp), %rax	# tab, tmp88
	movq	128(%rax), %rax	# tab_18->Close, D.15583
	movq	-16(%rbp), %rdx	# n, tmp89
	movq	%rdx, %rdi	# tmp89,
	call	*%rax	# D.15583
	testq	%rax, %rax	# D.15584
	je	.L454	#,
	.loc 1 2105 0
	movq	$-1, -24(%rbp)	#, code
	.loc 1 2106 0
	jmp	.L455	#
.L454:
	jmp	.L455	#
.L453:
	.loc 1 2109 0
	movq	-16(%rbp), %rax	# n, tmp90
	movq	(%rax), %rax	# *n_4, D.15580
	movq	-16(%rbp), %rdx	# n, tmp91
	movq	(%rdx), %rdx	# *n_4, D.15580
	movl	16(%rdx), %edx	# _24->flags, D.15582
	andl	$-2098689, %edx	#, D.15582
	movl	%edx, 16(%rax)	# D.15582, _23->flags
	.loc 1 2112 0
	movq	-16(%rbp), %rax	# n, tmp92
	movq	(%rax), %rax	# *n_4, D.15580
	movq	%rax, -16(%rbp)	# D.15580, n
.L452:
.LBE73:
	.loc 1 2101 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, n
	je	.L455	#,
	.loc 1 2101 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# n, tmp93
	movq	(%rax), %rax	# *n_4, D.15580
	testq	%rax, %rax	# D.15580
	jne	.L456	#,
.L455:
.LBE72:
	.loc 1 2096 0 is_stmt 1
	jmp	.L457	#
.L451:
	.loc 1 2116 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_29
.L457:
	.loc 1 2118 0
	movq	-24(%rbp), %rax	# code, D.15586
	.loc 1 2119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	PerlIOBase_close, .-PerlIOBase_close
	.globl	PerlIOBase_eof
	.type	PerlIOBase_eof, @function
PerlIOBase_eof:
.LFB77:
	.loc 1 2123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2124 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L460	#,
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15588
	testq	%rax, %rax	# D.15588
	je	.L460	#,
	.loc 1 2125 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15588
	movl	16(%rax), %eax	# _4->flags, D.15589
	andl	$256, %eax	#, D.15589
	testl	%eax, %eax	# D.15589
	setne	%al	#, D.15590
	movzbl	%al, %eax	# D.15590, D.15587
	jmp	.L461	#
.L460:
	.loc 1 2127 0
	movl	$1, %eax	#, D.15587
.L461:
	.loc 1 2128 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	PerlIOBase_eof, .-PerlIOBase_eof
	.globl	PerlIOBase_error
	.type	PerlIOBase_error, @function
PerlIOBase_error:
.LFB78:
	.loc 1 2132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2133 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L463	#,
	.loc 1 2133 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15592
	testq	%rax, %rax	# D.15592
	je	.L463	#,
	.loc 1 2134 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15592
	movl	16(%rax), %eax	# _4->flags, D.15593
	andl	$2048, %eax	#, D.15593
	testl	%eax, %eax	# D.15593
	setne	%al	#, D.15594
	movzbl	%al, %eax	# D.15594, D.15591
	jmp	.L464	#
.L463:
	.loc 1 2136 0
	movl	$1, %eax	#, D.15591
.L464:
	.loc 1 2137 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	PerlIOBase_error, .-PerlIOBase_error
	.globl	PerlIOBase_clearerr
	.type	PerlIOBase_clearerr, @function
PerlIOBase_clearerr:
.LFB79:
	.loc 1 2141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 2142 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L465	#,
	.loc 1 2142 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_1(D), D.15595
	testq	%rax, %rax	# D.15595
	je	.L465	#,
.LBB74:
	.loc 1 2143 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), D.15595
	movq	%rax, -8(%rbp)	# D.15595, n
	.loc 1 2144 0
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_1(D), D.15595
	movq	-24(%rbp), %rdx	# f, tmp69
	movq	(%rdx), %rdx	# *f_1(D), D.15595
	movl	16(%rdx), %edx	# _6->flags, D.15596
	andb	$246, %dh	#, D.15596
	movl	%edx, 16(%rax)	# D.15596, _5->flags
	.loc 1 2145 0
	cmpq	$0, -8(%rbp)	#, n
	je	.L465	#,
	.loc 1 2145 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# n, tmp70
	movq	(%rax), %rax	# *n_4, D.15595
	testq	%rax, %rax	# D.15595
	je	.L465	#,
	.loc 1 2146 0 is_stmt 1
	movq	-8(%rbp), %rax	# n, tmp71
	movq	%rax, %rdi	# tmp71,
	call	Perl_PerlIO_clearerr	#
.L465:
.LBE74:
	.loc 1 2148 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	PerlIOBase_clearerr, .-PerlIOBase_clearerr
	.globl	PerlIOBase_setlinebuf
	.type	PerlIOBase_setlinebuf, @function
PerlIOBase_setlinebuf:
.LFB80:
	.loc 1 2152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2153 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L467	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_1(D), D.15597
	testq	%rax, %rax	# D.15597
	je	.L467	#,
	.loc 1 2154 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), D.15597
	movq	-8(%rbp), %rdx	# f, tmp66
	movq	(%rdx), %rdx	# *f_1(D), D.15597
	movl	16(%rdx), %edx	# _4->flags, D.15598
	orl	$524288, %edx	#, D.15598
	movl	%edx, 16(%rax)	# D.15598, _3->flags
.L467:
	.loc 1 2156 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	PerlIOBase_setlinebuf, .-PerlIOBase_setlinebuf
	.globl	PerlIO_sv_dup
	.type	PerlIO_sv_dup, @function
PerlIO_sv_dup:
.LFB81:
	.loc 1 2160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# arg, arg
	movq	%rsi, -16(%rbp)	# param, param
	.loc 1 2161 0
	cmpq	$0, -8(%rbp)	#, arg
	jne	.L470	#,
	.loc 1 2162 0
	movl	$0, %eax	#, D.15599
	jmp	.L471	#
.L470:
	.loc 1 2171 0
	movq	-8(%rbp), %rax	# arg, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_newSVsv	#
.L471:
	.loc 1 2173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	PerlIO_sv_dup, .-PerlIO_sv_dup
	.section	.rodata
	.align 8
.LC41:
	.string	"PerlIOBase_dup %s f=%p o=%p param=%p\n"
	.text
	.globl	PerlIOBase_dup
	.type	PerlIOBase_dup, @function
PerlIOBase_dup:
.LFB82:
	.loc 1 2177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# f, f
	movq	%rsi, -80(%rbp)	# o, o
	movq	%rdx, -88(%rbp)	# param, param
	movl	%ecx, -92(%rbp)	# flags, flags
	.loc 1 2177 0
	movq	%fs:40, %rax	#, tmp107
	movq	%rax, -24(%rbp)	# tmp107, D.15605
	xorl	%eax, %eax	# tmp107
	.loc 1 2178 0
	movq	-80(%rbp), %rax	# o, tmp71
	movq	(%rax), %rax	# *o_4(D), D.15600
	movq	%rax, -56(%rbp)	# D.15600, nexto
	.loc 1 2179 0
	cmpq	$0, -56(%rbp)	#, nexto
	je	.L473	#,
	.loc 1 2179 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# nexto, tmp72
	movq	(%rax), %rax	# *nexto_6, D.15600
	testq	%rax, %rax	# D.15600
	je	.L473	#,
.LBB75:
	.loc 1 2180 0 is_stmt 1
	movq	-56(%rbp), %rax	# nexto, tmp73
	movq	(%rax), %rax	# *nexto_6, D.15600
	movq	8(%rax), %rax	# _9->tab, tmp74
	movq	%rax, -48(%rbp)	# tmp74, tab
	.loc 1 2181 0
	cmpq	$0, -48(%rbp)	#, tab
	je	.L474	#,
	.loc 1 2181 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tab, tmp75
	movq	80(%rax), %rax	# tab_10->Dup, D.15601
	testq	%rax, %rax	# D.15601
	je	.L474	#,
	.loc 1 2182 0 is_stmt 1
	movq	-48(%rbp), %rax	# tab, tmp76
	movq	80(%rax), %rax	# tab_10->Dup, D.15601
	movl	-92(%rbp), %ecx	# flags, tmp77
	movq	-88(%rbp), %rdx	# param, tmp78
	movq	-56(%rbp), %rsi	# nexto, tmp79
	movq	-72(%rbp), %rdi	# f, tmp80
	call	*%rax	# D.15601
	movq	%rax, -72(%rbp)	# tmp81, f
	jmp	.L473	#
.L474:
	.loc 1 2184 0
	movl	-92(%rbp), %ecx	# flags, tmp82
	movq	-88(%rbp), %rdx	# param, tmp83
	movq	-56(%rbp), %rsi	# nexto, tmp84
	movq	-72(%rbp), %rax	# f, tmp85
	movq	%rax, %rdi	# tmp85,
	call	PerlIOBase_dup	#
	movq	%rax, -72(%rbp)	# tmp86, f
.L473:
.LBE75:
	.loc 1 2186 0
	cmpq	$0, -72(%rbp)	#, f
	je	.L475	#,
.LBB76:
	.loc 1 2187 0
	movq	-80(%rbp), %rax	# o, tmp87
	movq	(%rax), %rax	# *o_4(D), D.15600
	movq	8(%rax), %rax	# _17->tab, tmp88
	movq	%rax, -40(%rbp)	# tmp88, self
	.loc 1 2190 0
	movq	-40(%rbp), %rax	# self, tmp89
	movq	8(%rax), %rax	# self_18->name, D.15602
	movq	-88(%rbp), %rsi	# param, tmp90
	movq	-80(%rbp), %rcx	# o, tmp91
	movq	-72(%rbp), %rdx	# f, tmp92
	movq	%rsi, %r8	# tmp90,
	movq	%rax, %rsi	# D.15602,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 2192 0
	movq	-40(%rbp), %rax	# self, tmp93
	movq	64(%rax), %rax	# self_18->Getarg, D.15603
	testq	%rax, %rax	# D.15603
	je	.L476	#,
	.loc 1 2193 0
	movq	-40(%rbp), %rax	# self, tmp94
	movq	64(%rax), %rax	# self_18->Getarg, D.15603
	movl	-92(%rbp), %edx	# flags, tmp95
	movq	-88(%rbp), %rsi	# param, tmp96
	movq	-80(%rbp), %rcx	# o, tmp97
	movq	%rcx, %rdi	# tmp97,
	call	*%rax	# D.15603
	movq	%rax, -64(%rbp)	# tmp98, arg
	jmp	.L477	#
.L476:
	.loc 1 2195 0
	movq	$0, -64(%rbp)	#, arg
.L477:
	.loc 1 2197 0
	leaq	-32(%rbp), %rdx	#, tmp99
	movq	-80(%rbp), %rax	# o, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	PerlIO_modestr	#
	movq	%rax, %rdx	#, D.15602
	movq	-64(%rbp), %rcx	# arg, tmp101
	movq	-40(%rbp), %rsi	# self, tmp102
	movq	-72(%rbp), %rax	# f, tmp103
	movq	%rax, %rdi	# tmp103,
	call	PerlIO_push	#
	movq	%rax, -72(%rbp)	# tmp104, f
	.loc 1 2198 0
	cmpq	$0, -64(%rbp)	#, arg
	je	.L475	#,
	.loc 1 2199 0
	movq	-64(%rbp), %rax	# arg, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_sv_free	#
.L475:
.LBE76:
	.loc 1 2202 0
	movq	-72(%rbp), %rax	# f, D.15604
	.loc 1 2203 0
	movq	-24(%rbp), %rbx	# D.15605, tmp108
	xorq	%fs:40, %rbx	#, tmp108
	je	.L480	#,
	call	__stack_chk_fail	#
.L480:
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	PerlIOBase_dup, .-PerlIOBase_dup
	.comm	PerlIO_fd_refcnt,8192,32
	.globl	PerlIO_init
	.type	PerlIO_init, @function
PerlIO_init:
.LFB83:
	.loc 1 2213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2218 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	PerlIO_init, .-PerlIO_init
	.section	.rodata
.LC42:
	.string	"fd %d refcnt=%d\n"
	.text
	.globl	PerlIOUnix_refcnt_inc
	.type	PerlIOUnix_refcnt_inc, @function
PerlIOUnix_refcnt_inc:
.LFB84:
	.loc 1 2222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# fd, fd
	.loc 1 2223 0
	cmpl	$0, -4(%rbp)	#, fd
	js	.L482	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	cmpl	$2047, -4(%rbp)	#, fd
	jg	.L482	#,
	.loc 1 2227 0 is_stmt 1
	movl	-4(%rbp), %eax	# fd, tmp63
	cltq
	movl	PerlIO_fd_refcnt(,%rax,4), %eax	# PerlIO_fd_refcnt, D.15609
	leal	1(%rax), %edx	#, D.15609
	movl	-4(%rbp), %eax	# fd, tmp65
	cltq
	movl	%edx, PerlIO_fd_refcnt(,%rax,4)	# D.15609, PerlIO_fd_refcnt
	.loc 1 2228 0
	movl	-4(%rbp), %eax	# fd, tmp67
	cltq
	movl	PerlIO_fd_refcnt(,%rax,4), %edx	# PerlIO_fd_refcnt, D.15609
	movl	-4(%rbp), %eax	# fd, tmp68
	movl	%eax, %esi	# tmp68,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
.L482:
	.loc 1 2233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	PerlIOUnix_refcnt_inc, .-PerlIOUnix_refcnt_inc
	.globl	PerlIOUnix_refcnt_dec
	.type	PerlIOUnix_refcnt_dec, @function
PerlIOUnix_refcnt_dec:
.LFB85:
	.loc 1 2237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# fd, fd
	.loc 1 2238 0
	movl	$0, -4(%rbp)	#, cnt
	.loc 1 2239 0
	cmpl	$0, -20(%rbp)	#, fd
	js	.L485	#,
	.loc 1 2239 0 is_stmt 0 discriminator 1
	cmpl	$2047, -20(%rbp)	#, fd
	jg	.L485	#,
	.loc 1 2243 0 is_stmt 1
	movl	-20(%rbp), %eax	# fd, tmp64
	cltq
	movl	PerlIO_fd_refcnt(,%rax,4), %eax	# PerlIO_fd_refcnt, D.15611
	leal	-1(%rax), %edx	#, D.15611
	movl	-20(%rbp), %eax	# fd, tmp66
	cltq
	movl	%edx, PerlIO_fd_refcnt(,%rax,4)	# D.15611, PerlIO_fd_refcnt
	movl	-20(%rbp), %eax	# fd, tmp68
	cltq
	movl	PerlIO_fd_refcnt(,%rax,4), %eax	# PerlIO_fd_refcnt, tmp69
	movl	%eax, -4(%rbp)	# tmp69, cnt
	.loc 1 2244 0
	movl	-4(%rbp), %edx	# cnt, tmp70
	movl	-20(%rbp), %eax	# fd, tmp71
	movl	%eax, %esi	# tmp71,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
.L485:
	.loc 1 2249 0
	movl	-4(%rbp), %eax	# cnt, D.15611
	.loc 1 2250 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	PerlIOUnix_refcnt_dec, .-PerlIOUnix_refcnt_dec
	.section	.rodata
.LC43:
	.string	"Cleanup layers\n"
	.text
	.globl	PerlIO_cleanup
	.type	PerlIO_cleanup, @function
PerlIO_cleanup:
.LFB86:
	.loc 1 2254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2259 0
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	PerlIO_debug	#
	.loc 1 2262 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L488	#
.L489:
	.loc 1 2263 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	movl	%eax, %edi	# tmp63,
	call	PerlIOUnix_refcnt_inc	#
	.loc 1 2262 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L488:
	.loc 1 2262 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L489	#,
	.loc 1 2264 0 is_stmt 1
	movl	$PL_perlio, %edi	#,
	call	PerlIO_cleantable	#
	.loc 1 2266 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L490	#
.L491:
	.loc 1 2267 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp64
	movl	%eax, %edi	# tmp64,
	call	PerlIOUnix_refcnt_dec	#
	.loc 1 2266 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L490:
	.loc 1 2266 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L491	#,
	.loc 1 2269 0 is_stmt 1
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.178
	testq	%rax, %rax	# PL_known_layers.178
	je	.L492	#,
	.loc 1 2270 0
	movq	PL_known_layers(%rip), %rax	# PL_known_layers, PL_known_layers.179
	movq	%rax, %rdi	# PL_known_layers.179,
	call	PerlIO_list_free	#
	.loc 1 2271 0
	movq	$0, PL_known_layers(%rip)	#, PL_known_layers
.L492:
	.loc 1 2273 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.180
	testq	%rax, %rax	# PL_def_layerlist.180
	je	.L487	#,
	.loc 1 2274 0
	movq	PL_def_layerlist(%rip), %rax	# PL_def_layerlist, PL_def_layerlist.181
	movq	%rax, %rdi	# PL_def_layerlist.181,
	call	PerlIO_list_free	#
	.loc 1 2275 0
	movq	$0, PL_def_layerlist(%rip)	#, PL_def_layerlist
.L487:
	.loc 1 2277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	PerlIO_cleanup, .-PerlIO_cleanup
	.globl	PerlIOUnix_oflags
	.type	PerlIOUnix_oflags, @function
PerlIOUnix_oflags:
.LFB87:
	.loc 1 2294 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mode, mode
	.loc 1 2295 0
	movl	$-1, -4(%rbp)	#, oflags
	.loc 1 2296 0
	movq	-24(%rbp), %rax	# mode, tmp72
	movzbl	(%rax), %eax	# *mode_14(D), D.15613
	cmpb	$73, %al	#, D.15613
	je	.L495	#,
	.loc 1 2296 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mode, tmp73
	movzbl	(%rax), %eax	# *mode_14(D), D.15613
	cmpb	$35, %al	#, D.15613
	jne	.L496	#,
.L495:
	.loc 1 2297 0 is_stmt 1
	addq	$1, -24(%rbp)	#, mode
.L496:
	.loc 1 2298 0
	movq	-24(%rbp), %rax	# mode, tmp74
	movzbl	(%rax), %eax	# *mode_1, D.15613
	movsbl	%al, %eax	# D.15613, D.15614
	cmpl	$114, %eax	#, D.15614
	je	.L498	#,
	cmpl	$119, %eax	#, D.15614
	je	.L499	#,
	cmpl	$97, %eax	#, D.15614
	je	.L500	#,
	jmp	.L497	#
.L498:
	.loc 1 2300 0
	movl	$0, -4(%rbp)	#, oflags
	.loc 1 2301 0
	addq	$1, -24(%rbp)	#, mode
	movq	-24(%rbp), %rax	# mode, tmp75
	movzbl	(%rax), %eax	# *mode_21, D.15613
	cmpb	$43, %al	#, D.15613
	jne	.L501	#,
	.loc 1 2302 0
	movl	$2, -4(%rbp)	#, oflags
	.loc 1 2303 0
	addq	$1, -24(%rbp)	#, mode
	.loc 1 2305 0
	jmp	.L497	#
.L501:
	jmp	.L497	#
.L499:
	.loc 1 2308 0
	movl	$576, -4(%rbp)	#, oflags
	.loc 1 2309 0
	addq	$1, -24(%rbp)	#, mode
	movq	-24(%rbp), %rax	# mode, tmp76
	movzbl	(%rax), %eax	# *mode_26, D.15613
	cmpb	$43, %al	#, D.15613
	jne	.L502	#,
	.loc 1 2310 0
	orl	$2, -4(%rbp)	#, oflags
	.loc 1 2311 0
	addq	$1, -24(%rbp)	#, mode
	.loc 1 2315 0
	jmp	.L497	#
.L502:
	.loc 1 2314 0
	orl	$1, -4(%rbp)	#, oflags
	.loc 1 2315 0
	jmp	.L497	#
.L500:
	.loc 1 2318 0
	movl	$1088, -4(%rbp)	#, oflags
	.loc 1 2319 0
	addq	$1, -24(%rbp)	#, mode
	movq	-24(%rbp), %rax	# mode, tmp77
	movzbl	(%rax), %eax	# *mode_32, D.15613
	cmpb	$43, %al	#, D.15613
	jne	.L504	#,
	.loc 1 2320 0
	orl	$2, -4(%rbp)	#, oflags
	.loc 1 2321 0
	addq	$1, -24(%rbp)	#, mode
	.loc 1 2325 0
	jmp	.L511	#
.L504:
	.loc 1 2324 0
	orl	$1, -4(%rbp)	#, oflags
.L511:
	.loc 1 2325 0
	nop
.L497:
	.loc 1 2327 0
	movq	-24(%rbp), %rax	# mode, tmp78
	movzbl	(%rax), %eax	# *mode_5, D.15613
	cmpb	$98, %al	#, D.15613
	jne	.L506	#,
	.loc 1 2330 0
	addq	$1, -24(%rbp)	#, mode
	jmp	.L507	#
.L506:
	.loc 1 2332 0
	movq	-24(%rbp), %rax	# mode, tmp79
	movzbl	(%rax), %eax	# *mode_5, D.15613
	cmpb	$116, %al	#, D.15613
	jne	.L507	#,
	.loc 1 2335 0
	addq	$1, -24(%rbp)	#, mode
.L507:
	.loc 1 2341 0
	movq	-24(%rbp), %rax	# mode, tmp80
	movzbl	(%rax), %eax	# *mode_6, D.15613
	testb	%al, %al	# D.15613
	jne	.L508	#,
	.loc 1 2341 0 is_stmt 0 discriminator 1
	cmpl	$-1, -4(%rbp)	#, oflags
	jne	.L509	#,
.L508:
	.loc 1 2342 0 is_stmt 1
	call	__errno_location	#
	movl	$22, (%rax)	#, *_47
	.loc 1 2343 0
	movl	$-1, -4(%rbp)	#, oflags
.L509:
	.loc 1 2345 0
	movl	-4(%rbp), %eax	# oflags, D.15614
	.loc 1 2346 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	PerlIOUnix_oflags, .-PerlIOUnix_oflags
	.globl	PerlIOUnix_fileno
	.type	PerlIOUnix_fileno, @function
PerlIOUnix_fileno:
.LFB88:
	.loc 1 2350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2351 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_1(D), D.15616
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_2].fd, D.15617
	cltq
	.loc 1 2352 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	PerlIOUnix_fileno, .-PerlIOUnix_fileno
	.type	PerlIOUnix_setfd, @function
PerlIOUnix_setfd:
.LFB89:
	.loc 1 2356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# fd, fd
	movl	%edx, -32(%rbp)	# imode, imode
	.loc 1 2357 0
	movq	-24(%rbp), %rax	# f, tmp59
	movq	(%rax), %rax	# *f_1(D), tmp60
	movq	%rax, -8(%rbp)	# tmp60, s
	.loc 1 2370 0
	movq	-8(%rbp), %rax	# s, tmp61
	movl	-28(%rbp), %edx	# fd, tmp62
	movl	%edx, 24(%rax)	# tmp62, s_2->fd
	.loc 1 2371 0
	movq	-8(%rbp), %rax	# s, tmp63
	movl	-32(%rbp), %edx	# imode, tmp64
	movl	%edx, 28(%rax)	# tmp64, s_2->oflags
	.loc 1 2372 0
	movl	-28(%rbp), %eax	# fd, tmp65
	movl	%eax, %edi	# tmp65,
	call	PerlIOUnix_refcnt_inc	#
	.loc 1 2373 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	PerlIOUnix_setfd, .-PerlIOUnix_setfd
	.globl	PerlIOUnix_pushed
	.type	PerlIOUnix_pushed, @function
PerlIOUnix_pushed:
.LFB90:
	.loc 1 2377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# mode, mode
	movq	%rdx, -56(%rbp)	# arg, arg
	movq	%rcx, -64(%rbp)	# tab, tab
	.loc 1 2378 0
	movq	-64(%rbp), %rcx	# tab, tmp73
	movq	-56(%rbp), %rdx	# arg, tmp74
	movq	-48(%rbp), %rsi	# mode, tmp75
	movq	-40(%rbp), %rax	# f, tmp76
	movq	%rax, %rdi	# tmp76,
	call	PerlIOBase_pushed	#
	movq	%rax, -24(%rbp)	# tmp77, code
	.loc 1 2379 0
	movq	-40(%rbp), %rax	# f, tmp78
	movq	(%rax), %rax	# *f_2(D), D.15619
	movq	(%rax), %rax	# _7->next, D.15619
	testq	%rax, %rax	# D.15619
	je	.L516	#,
	.loc 1 2381 0
	movq	-40(%rbp), %rax	# f, tmp79
	movq	(%rax), %rax	# *f_2(D), D.15619
	movq	%rax, %rdi	# D.15620,
	call	Perl_PerlIO_flush	#
	.loc 1 2387 0
	cmpq	$0, -48(%rbp)	#, mode
	je	.L517	#,
	.loc 1 2387 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mode, tmp80
	movq	%rax, %rdi	# tmp80,
	call	PerlIOUnix_oflags	#
	movl	%eax, %ebx	#, iftmp.182
	jmp	.L518	#
.L517:
	.loc 1 2387 0 discriminator 2
	movl	$-1, %ebx	#, iftmp.182
.L518:
	.loc 1 2387 0 discriminator 3
	movq	-40(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_2(D), D.15619
	movq	%rax, %rdi	# D.15620,
	call	Perl_PerlIO_fileno	#
	movl	%eax, %ecx	#, D.15621
	movq	-40(%rbp), %rax	# f, tmp82
	movl	%ebx, %edx	# iftmp.182,
	movl	%ecx, %esi	# D.15621,
	movq	%rax, %rdi	# tmp82,
	call	PerlIOUnix_setfd	#
.L516:
	.loc 1 2390 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp83
	movq	(%rax), %rax	# *f_2(D), D.15619
	movq	-40(%rbp), %rdx	# f, tmp84
	movq	(%rdx), %rdx	# *f_2(D), D.15619
	movl	16(%rdx), %edx	# _17->flags, D.15622
	orl	$2097152, %edx	#, D.15622
	movl	%edx, 16(%rax)	# D.15622, _16->flags
	.loc 1 2392 0
	movq	-24(%rbp), %rax	# code, D.15623
	.loc 1 2393 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	PerlIOUnix_pushed, .-PerlIOUnix_pushed
	.globl	PerlIOUnix_seek
	.type	PerlIOUnix_seek, @function
PerlIOUnix_seek:
.LFB91:
	.loc 1 2397 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# offset, offset
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 2398 0
	movq	-24(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_2(D), D.15625
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_3].fd, tmp71
	movl	%eax, -12(%rbp)	# tmp71, fd
	.loc 1 2400 0
	movq	-24(%rbp), %rax	# f, tmp72
	movq	(%rax), %rax	# *f_2(D), D.15625
	movl	16(%rax), %eax	# _5->flags, D.15626
	andl	$16777216, %eax	#, D.15626
	testl	%eax, %eax	# D.15626
	je	.L521	#,
	.loc 1 2402 0
	call	__errno_location	#
	movl	$29, (%rax)	#, *_8
	.loc 1 2406 0
	movq	$-1, %rax	#, D.15624
	jmp	.L522	#
.L521:
	.loc 1 2408 0
	movl	-36(%rbp), %edx	# whence, tmp73
	movq	-32(%rbp), %rcx	# offset, tmp74
	movl	-12(%rbp), %eax	# fd, tmp75
	movq	%rcx, %rsi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	lseek	#
	movq	%rax, -8(%rbp)	# tmp76, new_loc
	.loc 1 2409 0
	cmpq	$-1, -8(%rbp)	#, new_loc
	jne	.L523	#,
	.loc 1 2411 0
	movq	$-1, %rax	#, D.15624
	jmp	.L522	#
.L523:
	.loc 1 2413 0
	movq	-24(%rbp), %rax	# f, tmp77
	movq	(%rax), %rax	# *f_2(D), D.15625
	movq	-24(%rbp), %rdx	# f, tmp78
	movq	(%rdx), %rdx	# *f_2(D), D.15625
	movl	16(%rdx), %edx	# _15->flags, D.15626
	andb	$254, %dh	#, D.15626
	movl	%edx, 16(%rax)	# D.15626, _14->flags
	.loc 1 2414 0
	movl	$0, %eax	#, D.15624
.L522:
	.loc 1 2415 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	PerlIOUnix_seek, .-PerlIOUnix_seek
	.globl	PerlIOUnix_open
	.type	PerlIOUnix_open, @function
PerlIOUnix_open:
.LFB92:
	.loc 1 2421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movq	%rsi, -32(%rbp)	# layers, layers
	movq	%rdx, -40(%rbp)	# n, n
	movq	%rcx, -48(%rbp)	# mode, mode
	movl	%r8d, -52(%rbp)	# fd, fd
	movl	%r9d, -56(%rbp)	# imode, imode
	.loc 1 2422 0
	cmpq	$0, 24(%rbp)	#, f
	je	.L525	#,
	.loc 1 2422 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# f, tmp84
	movq	(%rax), %rax	# *f_12(D), D.15629
	testq	%rax, %rax	# D.15629
	je	.L525	#,
	.loc 1 2423 0 is_stmt 1
	movq	24(%rbp), %rax	# f, tmp85
	movq	(%rax), %rax	# *f_12(D), D.15629
	movl	16(%rax), %eax	# _14->flags, D.15630
	andl	$2097152, %eax	#, D.15630
	testl	%eax, %eax	# D.15630
	je	.L525	#,
	.loc 1 2424 0
	movq	24(%rbp), %rax	# f, tmp86
	movq	(%rax), %rax	# *f_12(D), D.15629
	movq	8(%rax), %rax	# _17->tab, D.15631
	movq	128(%rax), %rax	# _18->Close, D.15632
	movq	24(%rbp), %rdx	# f, tmp87
	movq	%rdx, %rdi	# tmp87,
	call	*%rax	# D.15632
.L525:
	.loc 1 2426 0
	cmpl	$0, 32(%rbp)	#, narg
	jle	.L526	#,
.LBB77:
	.loc 1 2427 0
	movq	40(%rbp), %rax	# args, tmp88
	movq	(%rax), %rax	# *args_24(D), D.15633
	movl	12(%rax), %eax	# _25->sv_flags, D.15630
	andl	$262144, %eax	#, D.15630
	testl	%eax, %eax	# D.15630
	je	.L527	#,
	.loc 1 2427 0 is_stmt 0 discriminator 1
	movq	40(%rbp), %rax	# args, tmp89
	movq	(%rax), %rax	# *args_24(D), D.15633
	movq	(%rax), %rax	# _28->sv_any, D.15634
	movq	(%rax), %rax	# MEM[(struct XPV *)_29].xpv_pv, iftmp.183
	jmp	.L528	#
.L527:
	.loc 1 2427 0 discriminator 2
	movq	40(%rbp), %rax	# args, tmp90
	movq	(%rax), %rax	# *args_24(D), D.15633
	movq	%rax, %rdi	# D.15633,
	call	Perl_sv_2pv_nolen	#
.L528:
	.loc 1 2427 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.183, path
	.loc 1 2428 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# mode, tmp91
	movzbl	(%rax), %eax	# *mode_21(D), D.15635
	cmpb	$35, %al	#, D.15635
	jne	.L529	#,
	.loc 1 2429 0
	addq	$1, -48(%rbp)	#, mode
	jmp	.L530	#
.L529:
	.loc 1 2431 0
	movq	-48(%rbp), %rax	# mode, tmp92
	movq	%rax, %rdi	# tmp92,
	call	PerlIOUnix_oflags	#
	movl	%eax, -56(%rbp)	# tmp93, imode
	.loc 1 2432 0
	movl	$438, 16(%rbp)	#, perm
.L530:
	.loc 1 2434 0
	cmpl	$-1, -56(%rbp)	#, imode
	je	.L526	#,
	.loc 1 2435 0
	movl	-56(%rbp), %ecx	# imode, tmp94
	movq	-8(%rbp), %rax	# path, tmp95
	movl	16(%rbp), %edx	# perm,
	movl	%ecx, %esi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, -52(%rbp)	# tmp96, fd
.L526:
.LBE77:
	.loc 1 2438 0
	cmpl	$0, -52(%rbp)	#, fd
	js	.L531	#,
	.loc 1 2439 0
	movq	-48(%rbp), %rax	# mode, tmp97
	movzbl	(%rax), %eax	# *mode_2, D.15635
	cmpb	$73, %al	#, D.15635
	jne	.L532	#,
	.loc 1 2440 0
	addq	$1, -48(%rbp)	#, mode
.L532:
	.loc 1 2441 0
	cmpq	$0, 24(%rbp)	#, f
	jne	.L533	#,
	.loc 1 2442 0
	call	PerlIO_allocate	#
	movq	%rax, 24(%rbp)	# tmp98, f
.L533:
	.loc 1 2444 0
	cmpq	$0, 24(%rbp)	#, f
	je	.L534	#,
	.loc 1 2444 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# f, tmp99
	movq	(%rax), %rax	# *f_8, D.15629
	testq	%rax, %rax	# D.15629
	jne	.L535	#,
.L534:
	.loc 1 2445 0 is_stmt 1
	movq	-40(%rbp), %rdx	# n, tmp100
	movq	-32(%rbp), %rax	# layers, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rcx	#, D.15633
	movq	-48(%rbp), %rdx	# mode, tmp102
	movq	-24(%rbp), %rsi	# self, tmp103
	movq	24(%rbp), %rax	# f, tmp104
	movq	%rax, %rdi	# tmp104,
	call	PerlIO_push	#
	movq	%rax, 24(%rbp)	# tmp105, f
	cmpq	$0, 24(%rbp)	#, f
	jne	.L535	#,
	.loc 1 2446 0
	movl	$0, %eax	#, D.15628
	jmp	.L536	#
.L535:
	.loc 1 2449 0
	movl	-56(%rbp), %edx	# imode, tmp106
	movl	-52(%rbp), %ecx	# fd, tmp107
	movq	24(%rbp), %rax	# f, tmp108
	movl	%ecx, %esi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	PerlIOUnix_setfd	#
	.loc 1 2450 0
	movq	24(%rbp), %rax	# f, tmp109
	movq	(%rax), %rax	# *f_9, D.15629
	movq	24(%rbp), %rdx	# f, tmp110
	movq	(%rdx), %rdx	# *f_9, D.15629
	movl	16(%rdx), %edx	# _51->flags, D.15630
	orl	$2097152, %edx	#, D.15630
	movl	%edx, 16(%rax)	# D.15630, _50->flags
	.loc 1 2451 0
	movq	-48(%rbp), %rax	# mode, tmp111
	movzbl	(%rax), %eax	# *mode_3, D.15635
	cmpb	$97, %al	#, D.15635
	jne	.L537	#,
	.loc 1 2452 0
	movq	24(%rbp), %rax	# f, tmp112
	movl	$2, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	PerlIOUnix_seek	#
.L537:
	.loc 1 2453 0
	movq	24(%rbp), %rax	# f, D.15628
	jmp	.L536	#
.L531:
	.loc 1 2461 0
	movl	$0, %eax	#, D.15628
.L536:
	.loc 1 2463 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	PerlIOUnix_open, .-PerlIOUnix_open
	.globl	PerlIOUnix_dup
	.type	PerlIOUnix_dup, @function
PerlIOUnix_dup:
.LFB93:
	.loc 1 2467 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# o, o
	movq	%rdx, -40(%rbp)	# param, param
	movl	%ecx, -44(%rbp)	# flags, flags
	.loc 1 2468 0
	movq	-32(%rbp), %rax	# o, tmp63
	movq	(%rax), %rax	# *o_3(D), tmp64
	movq	%rax, -8(%rbp)	# tmp64, os
	.loc 1 2469 0
	movq	-8(%rbp), %rax	# os, tmp65
	movl	24(%rax), %eax	# os_4->fd, tmp66
	movl	%eax, -12(%rbp)	# tmp66, fd
	.loc 1 2470 0
	movl	-44(%rbp), %eax	# flags, tmp67
	andl	$2, %eax	#, D.15637
	testl	%eax, %eax	# D.15637
	je	.L539	#,
	.loc 1 2471 0
	movl	-12(%rbp), %eax	# fd, tmp68
	movl	%eax, %edi	# tmp68,
	call	dup	#
	movl	%eax, -12(%rbp)	# tmp69, fd
.L539:
	.loc 1 2473 0
	cmpl	$0, -12(%rbp)	#, fd
	js	.L540	#,
	.loc 1 2473 0 is_stmt 0 discriminator 1
	cmpl	$2047, -12(%rbp)	#, fd
	jg	.L540	#,
	.loc 1 2474 0 is_stmt 1
	movl	-44(%rbp), %ecx	# flags, tmp70
	movq	-40(%rbp), %rdx	# param, tmp71
	movq	-32(%rbp), %rsi	# o, tmp72
	movq	-24(%rbp), %rax	# f, tmp73
	movq	%rax, %rdi	# tmp73,
	call	PerlIOBase_dup	#
	movq	%rax, -24(%rbp)	# tmp74, f
	.loc 1 2475 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L540	#,
	.loc 1 2477 0
	movq	-8(%rbp), %rax	# os, tmp75
	movl	28(%rax), %edx	# os_4->oflags, D.15637
	movl	-12(%rbp), %ecx	# fd, tmp76
	movq	-24(%rbp), %rax	# f, tmp77
	movl	%ecx, %esi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	PerlIOUnix_setfd	#
	.loc 1 2478 0
	movq	-24(%rbp), %rax	# f, D.15636
	jmp	.L541	#
.L540:
	.loc 1 2481 0
	movl	$0, %eax	#, D.15636
.L541:
	.loc 1 2482 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	PerlIOUnix_dup, .-PerlIOUnix_dup
	.globl	PerlIOUnix_read
	.type	PerlIOUnix_read, @function
PerlIOUnix_read:
.LFB94:
	.loc 1 2487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 2488 0
	movq	-24(%rbp), %rax	# f, tmp82
	movq	(%rax), %rax	# *f_2(D), D.15639
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_3].fd, tmp83
	movl	%eax, -12(%rbp)	# tmp83, fd
	.loc 1 2489 0
	movq	-24(%rbp), %rax	# f, tmp84
	movq	(%rax), %rax	# *f_2(D), D.15639
	movl	16(%rax), %eax	# _5->flags, D.15640
	andl	$1024, %eax	#, D.15640
	testl	%eax, %eax	# D.15640
	je	.L543	#,
	.loc 1 2490 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp85
	movq	(%rax), %rax	# *f_2(D), D.15639
	movl	16(%rax), %eax	# _8->flags, D.15640
	andl	$2304, %eax	#, D.15640
	.loc 1 2489 0 discriminator 1
	testl	%eax, %eax	# D.15640
	je	.L544	#,
.L543:
	.loc 1 2491 0
	movl	$0, %eax	#, D.15638
	jmp	.L545	#
.L544:
.LBB78:
	.loc 1 2494 0
	movq	-40(%rbp), %rdx	# count, tmp86
	movq	-32(%rbp), %rcx	# vbuf, tmp87
	movl	-12(%rbp), %eax	# fd, tmp88
	movq	%rcx, %rsi	# tmp87,
	movl	%eax, %edi	# tmp88,
	call	read	#
	movq	%rax, -8(%rbp)	# tmp89, len
	.loc 1 2495 0
	cmpq	$0, -8(%rbp)	#, len
	jns	.L546	#,
	.loc 1 2495 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_14, D.15642
	cmpl	$4, %eax	#, D.15642
	je	.L547	#,
.L546:
	.loc 1 2496 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, len
	jns	.L548	#,
	.loc 1 2497 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_17, D.15642
	cmpl	$11, %eax	#, D.15642
	je	.L550	#,
	.loc 1 2498 0
	movq	-24(%rbp), %rax	# f, tmp90
	movq	(%rax), %rax	# *f_2(D), D.15639
	movq	-24(%rbp), %rdx	# f, tmp91
	movq	(%rdx), %rdx	# *f_2(D), D.15639
	movl	16(%rdx), %edx	# _20->flags, D.15640
	orb	$8, %dh	#, D.15640
	movl	%edx, 16(%rax)	# D.15640, _19->flags
	jmp	.L550	#
.L548:
	.loc 1 2501 0
	cmpq	$0, -8(%rbp)	#, len
	jne	.L550	#,
	.loc 1 2501 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, count
	je	.L550	#,
	.loc 1 2502 0 is_stmt 1
	movq	-24(%rbp), %rax	# f, tmp92
	movq	(%rax), %rax	# *f_2(D), D.15639
	movq	-24(%rbp), %rdx	# f, tmp93
	movq	(%rdx), %rdx	# *f_2(D), D.15639
	movl	16(%rdx), %edx	# _24->flags, D.15640
	orb	$1, %dh	#, D.15640
	movl	%edx, 16(%rax)	# D.15640, _23->flags
	.loc 1 2503 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_27
.L550:
	.loc 1 2505 0
	movq	-8(%rbp), %rax	# len, D.15638
	jmp	.L545	#
.L547:
	.loc 1 2507 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.184
	testl	%eax, %eax	# PL_sig_pending.184
	je	.L551	#,
	.loc 1 2507 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.LBE78:
	.loc 1 2508 0 is_stmt 1 discriminator 1
	jmp	.L544	#
.L551:
	.loc 1 2508 0 is_stmt 0
	jmp	.L544	#
.L545:
	.loc 1 2509 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	PerlIOUnix_read, .-PerlIOUnix_read
	.globl	PerlIOUnix_write
	.type	PerlIOUnix_write, @function
PerlIOUnix_write:
.LFB95:
	.loc 1 2513 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 2514 0
	movq	-24(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_1(D), D.15643
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_2].fd, tmp72
	movl	%eax, -12(%rbp)	# tmp72, fd
.L558:
.LBB79:
	.loc 1 2516 0
	movq	-40(%rbp), %rdx	# count, tmp73
	movq	-32(%rbp), %rcx	# vbuf, tmp74
	movl	-12(%rbp), %eax	# fd, tmp75
	movq	%rcx, %rsi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	write	#
	movq	%rax, -8(%rbp)	# tmp76, len
	.loc 1 2517 0
	cmpq	$0, -8(%rbp)	#, len
	jns	.L553	#,
	.loc 1 2517 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_7, D.15645
	cmpl	$4, %eax	#, D.15645
	je	.L554	#,
.L553:
	.loc 1 2518 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, len
	jns	.L555	#,
	.loc 1 2519 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_10, D.15645
	cmpl	$11, %eax	#, D.15645
	je	.L555	#,
	.loc 1 2520 0
	movq	-24(%rbp), %rax	# f, tmp77
	movq	(%rax), %rax	# *f_1(D), D.15643
	movq	-24(%rbp), %rdx	# f, tmp78
	movq	(%rdx), %rdx	# *f_1(D), D.15643
	movl	16(%rdx), %edx	# _13->flags, D.15646
	orb	$8, %dh	#, D.15646
	movl	%edx, 16(%rax)	# D.15646, _12->flags
.L555:
	.loc 1 2523 0
	movq	-8(%rbp), %rax	# len, D.15647
	jmp	.L559	#
.L554:
	.loc 1 2525 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.185
	testl	%eax, %eax	# PL_sig_pending.185
	je	.L557	#,
	.loc 1 2525 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.LBE79:
	.loc 1 2526 0 is_stmt 1 discriminator 1
	jmp	.L558	#
.L557:
	.loc 1 2526 0 is_stmt 0
	jmp	.L558	#
.L559:
	.loc 1 2527 0 is_stmt 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	PerlIOUnix_write, .-PerlIOUnix_write
	.globl	PerlIOUnix_tell
	.type	PerlIOUnix_tell, @function
PerlIOUnix_tell:
.LFB96:
	.loc 1 2531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2532 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_1(D), D.15648
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_2].fd, D.15649
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.15649,
	call	lseek	#
	.loc 1 2533 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	PerlIOUnix_tell, .-PerlIOUnix_tell
	.globl	PerlIOUnix_close
	.type	PerlIOUnix_close, @function
PerlIOUnix_close:
.LFB97:
	.loc 1 2538 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 2539 0
	movq	-24(%rbp), %rax	# f, tmp79
	movq	(%rax), %rax	# *f_3(D), D.15652
	movl	24(%rax), %eax	# MEM[(struct PerlIOUnix *)_4].fd, tmp80
	movl	%eax, -4(%rbp)	# tmp80, fd
	.loc 1 2540 0
	movl	$0, -8(%rbp)	#, code
	.loc 1 2541 0
	movq	-24(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_3(D), D.15652
	movl	16(%rax), %eax	# _7->flags, D.15653
	andl	$2097152, %eax	#, D.15653
	testl	%eax, %eax	# D.15653
	je	.L563	#,
	.loc 1 2542 0
	movl	-4(%rbp), %eax	# fd, tmp82
	movl	%eax, %edi	# tmp82,
	call	PerlIOUnix_refcnt_dec	#
	testl	%eax, %eax	# D.15654
	jle	.L564	#,
	.loc 1 2543 0
	movq	-24(%rbp), %rax	# f, tmp83
	movq	(%rax), %rax	# *f_3(D), D.15652
	movq	-24(%rbp), %rdx	# f, tmp84
	movq	(%rdx), %rdx	# *f_3(D), D.15652
	movl	16(%rdx), %edx	# _12->flags, D.15653
	andl	$-2097153, %edx	#, D.15653
	movl	%edx, 16(%rax)	# D.15653, _11->flags
	.loc 1 2544 0
	movl	$0, %eax	#, D.15651
	jmp	.L565	#
.L563:
	.loc 1 2548 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_26
	.loc 1 2549 0
	movq	$-1, %rax	#, D.15651
	jmp	.L565	#
.L564:
	.loc 1 2551 0
	jmp	.L566	#
.L569:
	.loc 1 2552 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_17, D.15654
	cmpl	$4, %eax	#, D.15654
	je	.L567	#,
	.loc 1 2553 0
	movl	$-1, -8(%rbp)	#, code
	.loc 1 2554 0
	jmp	.L568	#
.L567:
	.loc 1 2556 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.186
	testl	%eax, %eax	# PL_sig_pending.186
	je	.L566	#,
	.loc 1 2556 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L566:
	.loc 1 2551 0 is_stmt 1 discriminator 1
	movl	-4(%rbp), %eax	# fd, tmp85
	movl	%eax, %edi	# tmp85,
	call	close	#
	testl	%eax, %eax	# D.15654
	jne	.L569	#,
.L568:
	.loc 1 2558 0
	cmpl	$0, -8(%rbp)	#, code
	jne	.L570	#,
	.loc 1 2559 0
	movq	-24(%rbp), %rax	# f, tmp86
	movq	(%rax), %rax	# *f_3(D), D.15652
	movq	-24(%rbp), %rdx	# f, tmp87
	movq	(%rdx), %rdx	# *f_3(D), D.15652
	movl	16(%rdx), %edx	# _22->flags, D.15653
	andl	$-2097153, %edx	#, D.15653
	movl	%edx, 16(%rax)	# D.15653, _21->flags
.L570:
	.loc 1 2561 0
	movl	-8(%rbp), %eax	# code, tmp88
	cltq
.L565:
	.loc 1 2562 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	PerlIOUnix_close, .-PerlIOUnix_close
	.globl	PerlIO_unix
	.section	.rodata
.LC44:
	.string	"unix"
	.data
	.align 32
	.type	PerlIO_unix, @object
	.size	PerlIO_unix, 224
PerlIO_unix:
# fsize:
	.quad	224
# name:
	.quad	.LC44
# size:
	.quad	32
# kind:
	.long	1
# Pushed:
	.zero	4
	.quad	PerlIOUnix_pushed
# Popped:
	.quad	PerlIOBase_popped
# Open:
	.quad	PerlIOUnix_open
# Binmode:
	.quad	PerlIOBase_binmode
# Getarg:
	.quad	0
# Fileno:
	.quad	PerlIOUnix_fileno
# Dup:
	.quad	PerlIOUnix_dup
# Read:
	.quad	PerlIOUnix_read
# Unread:
	.quad	PerlIOBase_unread
# Write:
	.quad	PerlIOUnix_write
# Seek:
	.quad	PerlIOUnix_seek
# Tell:
	.quad	PerlIOUnix_tell
# Close:
	.quad	PerlIOUnix_close
# Flush:
	.quad	PerlIOBase_noop_ok
# Fill:
	.quad	PerlIOBase_noop_fail
# Eof:
	.quad	PerlIOBase_eof
# Error:
	.quad	PerlIOBase_error
# Clearerr:
	.quad	PerlIOBase_clearerr
# Setlinebuf:
	.quad	PerlIOBase_setlinebuf
# Get_base:
	.quad	0
# Get_bufsiz:
	.quad	0
# Get_ptr:
	.quad	0
# Get_cnt:
	.quad	0
# Set_ptrcnt:
	.quad	0
	.text
	.globl	PerlIOStdio_fileno
	.type	PerlIOStdio_fileno, @function
PerlIOStdio_fileno:
.LFB98:
	.loc 1 2615 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 2617 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L572	#,
	.loc 1 2617 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_2(D), D.15658
	testq	%rax, %rax	# D.15658
	je	.L572	#,
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15658
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_4].stdio, tmp67
	movq	%rax, -8(%rbp)	# tmp67, s
	cmpq	$0, -8(%rbp)	#, s
	je	.L572	#,
	.loc 1 2618 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp68
	movq	%rax, %rdi	# tmp68,
	call	fileno	#
	cltq
	jmp	.L573	#
.L572:
	.loc 1 2620 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_8
	.loc 1 2621 0
	movq	$-1, %rax	#, D.15657
.L573:
	.loc 1 2622 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	PerlIOStdio_fileno, .-PerlIOStdio_fileno
	.globl	PerlIOStdio_mode
	.type	PerlIOStdio_mode, @function
PerlIOStdio_mode:
.LFB99:
	.loc 1 2626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# tmode, tmode
	.loc 1 2627 0
	movq	-32(%rbp), %rax	# tmode, tmp65
	movq	%rax, -8(%rbp)	# tmp65, ret
	.loc 1 2628 0
	cmpq	$0, -24(%rbp)	#, mode
	je	.L575	#,
	.loc 1 2629 0
	jmp	.L576	#
.L577:
	.loc 1 2630 0
	movq	-32(%rbp), %rax	# tmode, tmode.187
	leaq	1(%rax), %rdx	#, tmp66
	movq	%rdx, -32(%rbp)	# tmp66, tmode
	movq	-24(%rbp), %rdx	# mode, mode.188
	leaq	1(%rdx), %rcx	#, tmp67
	movq	%rcx, -24(%rbp)	# tmp67, mode
	movzbl	(%rdx), %edx	# *mode.188_10, D.15661
	movb	%dl, (%rax)	# D.15661, *tmode.187_8
.L576:
	.loc 1 2629 0 discriminator 1
	movq	-24(%rbp), %rax	# mode, tmp68
	movzbl	(%rax), %eax	# *mode_1, D.15661
	testb	%al, %al	# D.15661
	jne	.L577	#,
.L575:
	.loc 1 2636 0
	movq	-32(%rbp), %rax	# tmode, tmp69
	movb	$0, (%rax)	#, *tmode_3
	.loc 1 2637 0
	movq	-8(%rbp), %rax	# ret, D.15662
	.loc 1 2638 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	PerlIOStdio_mode, .-PerlIOStdio_mode
	.globl	PerlIOStdio_pushed
	.type	PerlIOStdio_pushed, @function
PerlIOStdio_pushed:
.LFB100:
	.loc 1 2642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# f, f
	movq	%rsi, -80(%rbp)	# mode, mode
	movq	%rdx, -88(%rbp)	# arg, arg
	movq	%rcx, -96(%rbp)	# tab, tab
	.loc 1 2642 0
	movq	%fs:40, %rax	#, tmp93
	movq	%rax, -24(%rbp)	# tmp93, D.15666
	xorl	%eax, %eax	# tmp93
	.loc 1 2644 0
	cmpq	$0, -72(%rbp)	#, f
	je	.L580	#,
	.loc 1 2644 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_3(D), D.15664
	testq	%rax, %rax	# D.15664
	je	.L580	#,
	movq	-72(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_3(D), D.15664
	movq	%rax, -56(%rbp)	# D.15664, n
	cmpq	$0, -56(%rbp)	#, n
	je	.L580	#,
	movq	-72(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_3(D), D.15664
	movq	%rax, -56(%rbp)	# D.15664, n
	movq	-56(%rbp), %rax	# n, tmp72
	movq	(%rax), %rax	# *n_9, D.15664
	testq	%rax, %rax	# D.15664
	je	.L580	#,
.LBB80:
	.loc 1 2645 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp73
	movq	(%rax), %rax	# *n_9, D.15664
	movq	8(%rax), %rax	# _11->tab, tmp74
	movq	%rax, -48(%rbp)	# tmp74, toptab
	.loc 1 2646 0
	movq	-48(%rbp), %rax	# toptab, tmp75
	cmpq	-96(%rbp), %rax	# tab, tmp75
	jne	.L581	#,
	.loc 1 2648 0
	movq	-72(%rbp), %rax	# f, tmp76
	movq	%rax, %rdi	# tmp76,
	call	PerlIO_pop	#
	.loc 1 2649 0
	movl	$0, %eax	#, D.15663
	jmp	.L582	#
.L581:
.LBB81:
	.loc 1 2651 0
	movq	-56(%rbp), %rax	# n, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -60(%rbp)	# tmp78, fd
	.loc 1 2654 0
	cmpl	$0, -60(%rbp)	#, fd
	js	.L583	#,
	.loc 1 2654 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rdx	#, tmp79
	movq	-80(%rbp), %rax	# mode, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	PerlIOStdio_mode	#
	movq	%rax, -80(%rbp)	# tmp81, mode
	movq	-80(%rbp), %rdx	# mode, tmp82
	movl	-60(%rbp), %eax	# fd, tmp83
	movq	%rdx, %rsi	# tmp82,
	movl	%eax, %edi	# tmp83,
	call	fdopen	#
	movq	%rax, -40(%rbp)	# tmp84, stdio
	cmpq	$0, -40(%rbp)	#, stdio
	je	.L583	#,
	.loc 1 2656 0 is_stmt 1
	movq	-72(%rbp), %rax	# f, tmp85
	movq	(%rax), %rax	# *f_3(D), D.15664
	movq	-40(%rbp), %rdx	# stdio, tmp86
	movq	%rdx, 24(%rax)	# tmp86, MEM[(struct PerlIOStdio *)_18].stdio
	.loc 1 2658 0
	movq	-72(%rbp), %rax	# f, tmp87
	movq	(%rax), %rax	# *f_3(D), D.15664
	movq	%rax, %rdi	# D.15665,
	call	Perl_PerlIO_flush	#
	jmp	.L580	#
.L583:
	.loc 1 2661 0
	movq	$-1, %rax	#, D.15663
	jmp	.L582	#
.L580:
.LBE81:
.LBE80:
	.loc 1 2665 0
	movq	-96(%rbp), %rcx	# tab, tmp88
	movq	-88(%rbp), %rdx	# arg, tmp89
	movq	-80(%rbp), %rsi	# mode, tmp90
	movq	-72(%rbp), %rax	# f, tmp91
	movq	%rax, %rdi	# tmp91,
	call	PerlIOBase_pushed	#
.L582:
	.loc 1 2666 0
	movq	-24(%rbp), %rbx	# D.15666, tmp94
	xorq	%fs:40, %rbx	#, tmp94
	je	.L584	#,
	call	__stack_chk_fail	#
.L584:
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	PerlIOStdio_pushed, .-PerlIOStdio_pushed
	.section	.rodata
.LC45:
	.string	"r+"
.LC46:
	.string	"w"
	.text
	.globl	PerlIO_importFILE
	.type	PerlIO_importFILE, @function
PerlIO_importFILE:
.LFB101:
	.loc 1 2671 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# stdio, stdio
	movq	%rsi, -48(%rbp)	# mode, mode
	.loc 1 2673 0
	movq	$0, -24(%rbp)	#, f
	.loc 1 2674 0
	cmpq	$0, -40(%rbp)	#, stdio
	je	.L586	#,
.LBB82:
	.loc 1 2676 0
	cmpq	$0, -48(%rbp)	#, mode
	je	.L587	#,
	.loc 1 2676 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mode, tmp63
	movzbl	(%rax), %eax	# *mode_10(D), D.15668
	testb	%al, %al	# D.15668
	jne	.L588	#,
.L587:
.LBB83:
	.loc 1 2684 0 is_stmt 1
	movq	-40(%rbp), %rax	# stdio, tmp64
	movq	%rax, %rdi	# tmp64,
	call	fileno	#
	movl	%eax, %edi	# D.15669,
	call	dup	#
	movl	%eax, -28(%rbp)	# tmp65, fd
	.loc 1 2685 0
	movq	$.LC45, -48(%rbp)	#, mode
	movq	-48(%rbp), %rdx	# mode, tmp66
	movl	-28(%rbp), %eax	# fd, tmp67
	movq	%rdx, %rsi	# tmp66,
	movl	%eax, %edi	# tmp67,
	call	fdopen	#
	movq	%rax, -16(%rbp)	# tmp68, f2
	.loc 1 2686 0
	cmpq	$0, -16(%rbp)	#, f2
	jne	.L589	#,
	.loc 1 2687 0
	movq	$.LC46, -48(%rbp)	#, mode
	movq	-48(%rbp), %rdx	# mode, tmp69
	movl	-28(%rbp), %eax	# fd, tmp70
	movq	%rdx, %rsi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	fdopen	#
	movq	%rax, -16(%rbp)	# tmp71, f2
.L589:
	.loc 1 2689 0
	cmpq	$0, -16(%rbp)	#, f2
	jne	.L590	#,
	.loc 1 2690 0
	movq	$.LC40, -48(%rbp)	#, mode
	movq	-48(%rbp), %rdx	# mode, tmp72
	movl	-28(%rbp), %eax	# fd, tmp73
	movq	%rdx, %rsi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	fdopen	#
	movq	%rax, -16(%rbp)	# tmp74, f2
.L590:
	.loc 1 2692 0
	cmpq	$0, -16(%rbp)	#, f2
	jne	.L591	#,
	.loc 1 2694 0
	movl	-28(%rbp), %eax	# fd, tmp75
	movl	%eax, %edi	# tmp75,
	call	close	#
	.loc 1 2695 0
	movq	-24(%rbp), %rax	# f, D.15667
	jmp	.L592	#
.L591:
	.loc 1 2697 0
	movq	-16(%rbp), %rax	# f2, tmp76
	movq	%rax, %rdi	# tmp76,
	call	fclose	#
.L588:
.LBE83:
	.loc 1 2699 0
	call	PerlIO_allocate	#
	movq	%rax, -24(%rbp)	# tmp77, f
	movq	-48(%rbp), %rdx	# mode, tmp78
	movq	-24(%rbp), %rax	# f, tmp79
	movl	$0, %ecx	#,
	movl	$PerlIO_stdio, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	PerlIO_push	#
	movq	%rax, -24(%rbp)	# tmp80, f
	cmpq	$0, -24(%rbp)	#, f
	je	.L586	#,
	.loc 1 2700 0
	movq	-24(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_22, tmp82
	movq	%rax, -8(%rbp)	# tmp82, s
	.loc 1 2701 0
	movq	-8(%rbp), %rax	# s, tmp83
	movq	-40(%rbp), %rdx	# stdio, tmp84
	movq	%rdx, 24(%rax)	# tmp84, s_23->stdio
.L586:
.LBE82:
	.loc 1 2704 0
	movq	-24(%rbp), %rax	# f, D.15667
.L592:
	.loc 1 2705 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	PerlIO_importFILE, .-PerlIO_importFILE
	.globl	PerlIOStdio_open
	.type	PerlIOStdio_open, @function
PerlIOStdio_open:
.LFB102:
	.loc 1 2711 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# self, self
	movq	%rsi, -128(%rbp)	# layers, layers
	movq	%rdx, -136(%rbp)	# n, n
	movq	%rcx, -144(%rbp)	# mode, mode
	movl	%r8d, -148(%rbp)	# fd, fd
	movl	%r9d, -152(%rbp)	# imode, imode
	movq	24(%rbp), %rax	# f, tmp90
	movq	%rax, -160(%rbp)	# tmp90, f
	movq	40(%rbp), %rax	# args, tmp91
	movq	%rax, -168(%rbp)	# tmp91, args
	.loc 1 2711 0
	movq	%fs:40, %rax	#, tmp159
	movq	%rax, -24(%rbp)	# tmp159, D.15680
	xorl	%eax, %eax	# tmp159
	.loc 1 2713 0
	cmpq	$0, -160(%rbp)	#, f
	je	.L594	#,
	.loc 1 2713 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# f, tmp92
	movq	(%rax), %rax	# *f_14(D), D.15673
	testq	%rax, %rax	# D.15673
	je	.L594	#,
.LBB84:
	.loc 1 2714 0 is_stmt 1
	movq	-168(%rbp), %rax	# args, tmp93
	movq	(%rax), %rax	# *args_16(D), D.15674
	movl	12(%rax), %eax	# _17->sv_flags, D.15675
	andl	$262144, %eax	#, D.15675
	testl	%eax, %eax	# D.15675
	je	.L595	#,
	.loc 1 2714 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# args, tmp94
	movq	(%rax), %rax	# *args_16(D), D.15674
	movq	(%rax), %rax	# _20->sv_any, D.15676
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, iftmp.189
	jmp	.L596	#
.L595:
	.loc 1 2714 0 discriminator 2
	movq	-168(%rbp), %rax	# args, tmp95
	movq	(%rax), %rax	# *args_16(D), D.15674
	movq	%rax, %rdi	# D.15674,
	call	Perl_sv_2pv_nolen	#
.L596:
	.loc 1 2714 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.189, path
	.loc 1 2715 0 is_stmt 1 discriminator 3
	movq	-160(%rbp), %rax	# f, tmp96
	movq	(%rax), %rax	# *f_14(D), tmp97
	movq	%rax, -80(%rbp)	# tmp97, s
	.loc 1 2717 0 discriminator 3
	movq	-80(%rbp), %rax	# s, tmp98
	movq	24(%rax), %rax	# s_26->stdio, D.15677
	movq	%rax, %rdi	# D.15677,
	call	fileno	#
	movl	%eax, %edi	# D.15678,
	call	PerlIOUnix_refcnt_dec	#
	.loc 1 2718 0 discriminator 3
	movq	-80(%rbp), %rax	# s, tmp99
	movq	24(%rax), %rbx	# s_26->stdio, D.15677
	leaq	-32(%rbp), %rdx	#, tmp100
	movq	-144(%rbp), %rax	# mode, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	PerlIOStdio_mode	#
	movq	%rax, -144(%rbp)	# tmp102, mode
	movq	-144(%rbp), %rcx	# mode, tmp103
	movq	-88(%rbp), %rax	# path, tmp104
	movq	%rbx, %rdx	# D.15677,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	freopen	#
	movq	%rax, -72(%rbp)	# tmp105, stdio
	.loc 1 2720 0 discriminator 3
	movq	-80(%rbp), %rax	# s, tmp106
	movq	24(%rax), %rax	# s_26->stdio, D.15677
	testq	%rax, %rax	# D.15677
	jne	.L597	#,
	.loc 1 2721 0
	movl	$0, %eax	#, D.15672
	jmp	.L617	#
.L597:
	.loc 1 2722 0
	movq	-80(%rbp), %rax	# s, tmp107
	movq	-72(%rbp), %rdx	# stdio, tmp108
	movq	%rdx, 24(%rax)	# tmp108, s_26->stdio
	.loc 1 2723 0
	movq	-80(%rbp), %rax	# s, tmp109
	movq	24(%rax), %rax	# s_26->stdio, D.15677
	movq	%rax, %rdi	# D.15677,
	call	fileno	#
	movl	%eax, %edi	# D.15678,
	call	PerlIOUnix_refcnt_inc	#
	.loc 1 2724 0
	movq	-160(%rbp), %rax	# f, D.15672
	jmp	.L617	#
.L594:
.LBE84:
	.loc 1 2727 0
	cmpl	$0, 32(%rbp)	#, narg
	jle	.L599	#,
.LBB85:
	.loc 1 2728 0
	movq	-168(%rbp), %rax	# args, tmp110
	movq	(%rax), %rax	# *args_16(D), D.15674
	movl	12(%rax), %eax	# _40->sv_flags, D.15675
	andl	$262144, %eax	#, D.15675
	testl	%eax, %eax	# D.15675
	je	.L600	#,
	.loc 1 2728 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# args, tmp111
	movq	(%rax), %rax	# *args_16(D), D.15674
	movq	(%rax), %rax	# _43->sv_any, D.15676
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, iftmp.190
	jmp	.L601	#
.L600:
	.loc 1 2728 0 discriminator 2
	movq	-168(%rbp), %rax	# args, tmp112
	movq	(%rax), %rax	# *args_16(D), D.15674
	movq	%rax, %rdi	# D.15674,
	call	Perl_sv_2pv_nolen	#
.L601:
	.loc 1 2728 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.190, path
	.loc 1 2729 0 is_stmt 1 discriminator 3
	movq	-144(%rbp), %rax	# mode, tmp113
	movzbl	(%rax), %eax	# *mode_30(D), D.15679
	cmpb	$35, %al	#, D.15679
	jne	.L602	#,
	.loc 1 2730 0
	addq	$1, -144(%rbp)	#, mode
	.loc 1 2731 0
	movl	-152(%rbp), %ecx	# imode, tmp114
	movq	-64(%rbp), %rax	# path, tmp115
	movl	16(%rbp), %edx	# perm,
	movl	%ecx, %esi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, -148(%rbp)	# tmp116, fd
	jmp	.L599	#
.L602:
.LBB86:
	.loc 1 2735 0
	movb	$0, -101(%rbp)	#, appended
	.loc 1 2741 0
	movq	-144(%rbp), %rdx	# mode, tmp117
	movq	-64(%rbp), %rax	# path, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	fopen	#
	movq	%rax, -56(%rbp)	# tmp119, stdio
	.loc 1 2742 0
	cmpq	$0, -56(%rbp)	#, stdio
	je	.L603	#,
.LBB87:
	.loc 1 2744 0
	cmpq	$0, -160(%rbp)	#, f
	jne	.L604	#,
	.loc 1 2745 0
	call	PerlIO_allocate	#
	movq	%rax, -160(%rbp)	# tmp120, f
.L604:
	.loc 1 2747 0
	cmpb	$0, -101(%rbp)	#, appended
	jne	.L605	#,
	.loc 1 2748 0
	leaq	-32(%rbp), %rdx	#, tmp121
	movq	-144(%rbp), %rax	# mode, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	PerlIOStdio_mode	#
	movq	%rax, -144(%rbp)	# tmp123, mode
.L605:
	.loc 1 2749 0
	movq	-136(%rbp), %rdx	# n, tmp124
	movq	-128(%rbp), %rax	# layers, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rcx	#, D.15674
	movq	-144(%rbp), %rdx	# mode, tmp126
	movq	-120(%rbp), %rsi	# self, tmp127
	movq	-160(%rbp), %rax	# f, tmp128
	movq	%rax, %rdi	# tmp128,
	call	PerlIO_push	#
	movq	%rax, -160(%rbp)	# tmp129, f
	.loc 1 2750 0
	cmpq	$0, -160(%rbp)	#, f
	je	.L606	#,
	.loc 1 2751 0
	movq	-160(%rbp), %rax	# f, tmp130
	movq	(%rax), %rax	# *f_62, tmp131
	movq	%rax, -48(%rbp)	# tmp131, s
	.loc 1 2752 0
	movq	-48(%rbp), %rax	# s, tmp132
	movq	-56(%rbp), %rdx	# stdio, tmp133
	movq	%rdx, 24(%rax)	# tmp133, s_63->stdio
	.loc 1 2753 0
	movq	-48(%rbp), %rax	# s, tmp134
	movq	24(%rax), %rax	# s_63->stdio, D.15677
	movq	%rax, %rdi	# D.15677,
	call	fileno	#
	movl	%eax, %edi	# D.15678,
	call	PerlIOUnix_refcnt_inc	#
.L606:
	.loc 1 2755 0
	movq	-160(%rbp), %rax	# f, D.15672
	jmp	.L617	#
.L603:
.LBE87:
	.loc 1 2758 0
	movl	$0, %eax	#, D.15672
	jmp	.L617	#
.L599:
.LBE86:
.LBE85:
	.loc 1 2762 0
	cmpl	$0, -148(%rbp)	#, fd
	js	.L607	#,
.LBB88:
	.loc 1 2763 0
	movq	$0, -96(%rbp)	#, stdio
	.loc 1 2764 0
	movl	$0, -100(%rbp)	#, init
	.loc 1 2765 0
	movq	-144(%rbp), %rax	# mode, tmp135
	movzbl	(%rax), %eax	# *mode_2, D.15679
	cmpb	$73, %al	#, D.15679
	jne	.L608	#,
	.loc 1 2766 0
	movl	$1, -100(%rbp)	#, init
	.loc 1 2767 0
	addq	$1, -144(%rbp)	#, mode
.L608:
	.loc 1 2769 0
	cmpl	$0, -100(%rbp)	#, init
	je	.L609	#,
	.loc 1 2770 0
	movl	-148(%rbp), %eax	# fd, fd
	cmpl	$1, %eax	#, fd
	je	.L611	#,
	cmpl	$2, %eax	#, fd
	je	.L612	#,
	testl	%eax, %eax	# fd
	je	.L613	#,
	jmp	.L614	#
.L613:
	.loc 1 2772 0
	movq	stdin(%rip), %rax	# stdin, tmp137
	movq	%rax, -96(%rbp)	# tmp137, stdio
	.loc 1 2773 0
	jmp	.L610	#
.L611:
	.loc 1 2775 0
	movq	stdout(%rip), %rax	# stdout, tmp138
	movq	%rax, -96(%rbp)	# tmp138, stdio
	.loc 1 2776 0
	jmp	.L610	#
.L612:
	.loc 1 2778 0
	movq	stderr(%rip), %rax	# stderr, tmp139
	movq	%rax, -96(%rbp)	# tmp139, stdio
	.loc 1 2779 0
	nop
.L610:
	jmp	.L614	#
.L609:
	.loc 1 2783 0
	leaq	-32(%rbp), %rdx	#, tmp140
	movq	-144(%rbp), %rax	# mode, tmp141
	movq	%rdx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	PerlIOStdio_mode	#
	movq	%rax, -144(%rbp)	# tmp142, mode
	movq	-144(%rbp), %rdx	# mode, tmp143
	movl	-148(%rbp), %eax	# fd, tmp144
	movq	%rdx, %rsi	# tmp143,
	movl	%eax, %edi	# tmp144,
	call	fdopen	#
	movq	%rax, -96(%rbp)	# tmp145, stdio
.L614:
	.loc 1 2786 0
	cmpq	$0, -96(%rbp)	#, stdio
	je	.L607	#,
.LBB89:
	.loc 1 2788 0
	cmpq	$0, -160(%rbp)	#, f
	jne	.L615	#,
	.loc 1 2789 0
	call	PerlIO_allocate	#
	movq	%rax, -160(%rbp)	# tmp146, f
.L615:
	.loc 1 2791 0
	movq	-136(%rbp), %rdx	# n, tmp147
	movq	-128(%rbp), %rax	# layers, tmp148
	movq	%rdx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rcx	#, D.15674
	movq	-144(%rbp), %rdx	# mode, tmp149
	movq	-120(%rbp), %rsi	# self, tmp150
	movq	-160(%rbp), %rax	# f, tmp151
	movq	%rax, %rdi	# tmp151,
	call	PerlIO_push	#
	movq	%rax, -160(%rbp)	# tmp152, f
	cmpq	$0, -160(%rbp)	#, f
	je	.L616	#,
	.loc 1 2792 0
	movq	-160(%rbp), %rax	# f, tmp153
	movq	(%rax), %rax	# *f_80, tmp154
	movq	%rax, -40(%rbp)	# tmp154, s
	.loc 1 2793 0
	movq	-40(%rbp), %rax	# s, tmp155
	movq	-96(%rbp), %rdx	# stdio, tmp156
	movq	%rdx, 24(%rax)	# tmp156, s_81->stdio
	.loc 1 2794 0
	movq	-40(%rbp), %rax	# s, tmp157
	movq	24(%rax), %rax	# s_81->stdio, D.15677
	movq	%rax, %rdi	# D.15677,
	call	fileno	#
	movl	%eax, %edi	# D.15678,
	call	PerlIOUnix_refcnt_inc	#
.L616:
	.loc 1 2796 0
	movq	-160(%rbp), %rax	# f, D.15672
	jmp	.L617	#
.L607:
.LBE89:
.LBE88:
	.loc 1 2800 0
	movl	$0, %eax	#, D.15672
.L617:
	.loc 1 2801 0
	movq	-24(%rbp), %rbx	# D.15680, tmp160
	xorq	%fs:40, %rbx	#, tmp160
	je	.L618	#,
	call	__stack_chk_fail	#
.L618:
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	PerlIOStdio_open, .-PerlIOStdio_open
	.globl	PerlIOStdio_dup
	.type	PerlIOStdio_dup, @function
PerlIOStdio_dup:
.LFB103:
	.loc 1 2805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# f, f
	movq	%rsi, -64(%rbp)	# o, o
	movq	%rdx, -72(%rbp)	# param, param
	movl	%ecx, -76(%rbp)	# flags, flags
	.loc 1 2805 0
	movq	%fs:40, %rax	#, tmp92
	movq	%rax, -24(%rbp)	# tmp92, D.15685
	xorl	%eax, %eax	# tmp92
	.loc 1 2809 0
	movl	-76(%rbp), %ecx	# flags, tmp68
	movq	-72(%rbp), %rdx	# param, tmp69
	movq	-64(%rbp), %rsi	# o, tmp70
	movq	-56(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIOBase_dup	#
	movq	%rax, -56(%rbp)	# tmp72, f
	cmpq	$0, -56(%rbp)	#, f
	je	.L620	#,
.LBB90:
	.loc 1 2810 0
	movq	-64(%rbp), %rax	# o, tmp73
	movq	(%rax), %rax	# *o_3(D), D.15681
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_7].stdio, tmp74
	movq	%rax, -40(%rbp)	# tmp74, stdio
	.loc 1 2811 0
	movq	-40(%rbp), %rax	# stdio, tmp75
	movq	%rax, %rdi	# tmp75,
	call	fileno	#
	movl	%eax, -48(%rbp)	# tmp76, fd
	.loc 1 2813 0
	movl	-76(%rbp), %eax	# flags, tmp77
	andl	$2, %eax	#, D.15682
	testl	%eax, %eax	# D.15682
	je	.L621	#,
.LBB91:
	.loc 1 2814 0
	movq	-40(%rbp), %rax	# stdio, tmp78
	movq	%rax, %rdi	# tmp78,
	call	fileno	#
	movl	%eax, %edi	# D.15682,
	call	dup	#
	movl	%eax, -44(%rbp)	# tmp79, dfd
	.loc 1 2815 0
	cmpl	$0, -44(%rbp)	#, dfd
	js	.L621	#,
	.loc 1 2816 0
	leaq	-32(%rbp), %rdx	#, tmp80
	movq	-64(%rbp), %rax	# o, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	PerlIO_modestr	#
	movq	%rax, %rdx	#, D.15683
	movl	-44(%rbp), %eax	# dfd, tmp82
	movq	%rdx, %rsi	# D.15683,
	movl	%eax, %edi	# tmp82,
	call	fdopen	#
	movq	%rax, -40(%rbp)	# tmp83, stdio
	.loc 1 2817 0
	jmp	.L622	#
.L621:
.LBE91:
	.loc 1 2825 0
	leaq	-32(%rbp), %rdx	#, tmp84
	movq	-64(%rbp), %rax	# o, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	PerlIO_modestr	#
	movq	%rax, %rdx	#, D.15683
	movl	-48(%rbp), %eax	# fd, tmp86
	movq	%rdx, %rsi	# D.15683,
	movl	%eax, %edi	# tmp86,
	call	fdopen	#
	movq	%rax, -40(%rbp)	# tmp87, stdio
.L622:
	.loc 1 2827 0
	movq	-56(%rbp), %rax	# f, tmp88
	movq	(%rax), %rax	# *f_6, D.15681
	movq	-40(%rbp), %rdx	# stdio, tmp89
	movq	%rdx, 24(%rax)	# tmp89, MEM[(struct PerlIOStdio *)_17].stdio
	.loc 1 2828 0
	movq	-40(%rbp), %rax	# stdio, tmp90
	movq	%rax, %rdi	# tmp90,
	call	fileno	#
	movl	%eax, %edi	# D.15682,
	call	PerlIOUnix_refcnt_inc	#
.L620:
.LBE90:
	.loc 1 2830 0
	movq	-56(%rbp), %rax	# f, D.15684
	.loc 1 2831 0
	movq	-24(%rbp), %rbx	# D.15685, tmp93
	xorq	%fs:40, %rbx	#, tmp93
	je	.L624	#,
	call	__stack_chk_fail	#
.L624:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	PerlIOStdio_dup, .-PerlIOStdio_dup
	.type	PerlIOStdio_invalidate_fileno, @function
PerlIOStdio_invalidate_fileno:
.LFB104:
	.loc 1 2835 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 2847 0
	movq	-8(%rbp), %rax	# f, tmp61
	movl	$-1, 112(%rax)	#, f_1(D)->_fileno
	.loc 1 2848 0
	movl	$1, %eax	#, D.15686
	.loc 1 2908 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	PerlIOStdio_invalidate_fileno, .-PerlIOStdio_invalidate_fileno
	.globl	PerlIOStdio_close
	.type	PerlIOStdio_close, @function
PerlIOStdio_close:
.LFB105:
	.loc 1 2912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	.loc 1 2913 0
	movq	-56(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_9(D), D.15688
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_10].stdio, tmp74
	movq	%rax, -8(%rbp)	# tmp74, stdio
	.loc 1 2914 0
	cmpq	$0, -8(%rbp)	#, stdio
	jne	.L628	#,
	.loc 1 2915 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_12
	.loc 1 2916 0
	movq	$-1, %rax	#, D.15687
	jmp	.L629	#
.L628:
.LBB92:
	.loc 1 2919 0
	movq	-8(%rbp), %rax	# stdio, tmp75
	movq	%rax, %rdi	# tmp75,
	call	fileno	#
	movl	%eax, -20(%rbp)	# tmp76, fd
	.loc 1 2920 0
	movl	$0, -36(%rbp)	#, socksfd
	.loc 1 2921 0
	movl	$0, -32(%rbp)	#, invalidate
	.loc 1 2922 0
	movq	$0, -16(%rbp)	#, result
	.loc 1 2923 0
	movl	$0, -28(%rbp)	#, saveerr
	.loc 1 2924 0
	movl	$0, -24(%rbp)	#, dupfd
	.loc 1 2937 0
	movl	-20(%rbp), %eax	# fd, tmp77
	movl	%eax, %edi	# tmp77,
	call	PerlIOUnix_refcnt_dec	#
	testl	%eax, %eax	# D.15690
	jle	.L630	#,
	.loc 1 2939 0
	movl	$1, -32(%rbp)	#, invalidate
	.loc 1 2940 0
	movl	$0, -36(%rbp)	#, socksfd
.L630:
	.loc 1 2942 0
	cmpl	$0, -32(%rbp)	#, invalidate
	je	.L631	#,
	.loc 1 2946 0
	movq	stdin(%rip), %rax	# stdin, stdin.191
	cmpq	%rax, -8(%rbp)	# stdin.191, stdio
	jne	.L632	#,
	.loc 1 2948 0
	movl	$0, %eax	#, D.15687
	jmp	.L629	#
.L632:
	.loc 1 2950 0
	movq	stdout(%rip), %rax	# stdout, stdout.192
	cmpq	%rax, -8(%rbp)	# stdout.192, stdio
	je	.L633	#,
	.loc 1 2950 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.193
	cmpq	%rax, -8(%rbp)	# stderr.193, stdio
	jne	.L634	#,
.L633:
	.loc 1 2951 0 is_stmt 1
	movq	-56(%rbp), %rax	# f, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_PerlIO_flush	#
	cltq
	jmp	.L629	#
.L634:
	.loc 1 2957 0
	movq	-56(%rbp), %rax	# f, tmp79
	movq	%rax, %rdi	# tmp79,
	call	Perl_PerlIO_flush	#
	cltq
	movq	%rax, -16(%rbp)	# tmp80, result
	.loc 1 2958 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_29, tmp81
	movl	%eax, -28(%rbp)	# tmp81, saveerr
	.loc 1 2959 0
	movq	-8(%rbp), %rax	# stdio, tmp82
	movq	%rax, %rdi	# tmp82,
	call	PerlIOStdio_invalidate_fileno	#
	movl	%eax, -32(%rbp)	# tmp83, invalidate
	cmpl	$0, -32(%rbp)	#, invalidate
	jne	.L631	#,
	.loc 1 2960 0
	movl	-20(%rbp), %eax	# fd, tmp84
	movl	%eax, %edi	# tmp84,
	call	dup	#
	movl	%eax, -24(%rbp)	# tmp85, dupfd
.L631:
	.loc 1 2963 0
	movq	-8(%rbp), %rax	# stdio, tmp86
	movq	%rax, %rdi	# tmp86,
	call	fclose	#
	cltq
	movq	%rax, -16(%rbp)	# tmp87, result
	.loc 1 2967 0
	cmpl	$0, -32(%rbp)	#, invalidate
	je	.L635	#,
	.loc 1 2967 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, result
	je	.L635	#,
	.loc 1 2968 0 is_stmt 1
	call	__errno_location	#
	movl	-28(%rbp), %edx	# saveerr, tmp88
	movl	%edx, (%rax)	# tmp88, *_37
	.loc 1 2969 0
	movq	$0, -16(%rbp)	#, result
.L635:
	.loc 1 2971 0
	cmpl	$0, -36(%rbp)	#, socksfd
	je	.L636	#,
	.loc 1 2973 0
	movl	-20(%rbp), %eax	# fd, tmp89
	movl	%eax, %edi	# tmp89,
	call	close	#
	cltq
	movq	%rax, -16(%rbp)	# tmp90, result
.L636:
	.loc 1 2975 0
	cmpl	$0, -24(%rbp)	#, dupfd
	je	.L637	#,
	.loc 1 2976 0
	movl	-20(%rbp), %edx	# fd, tmp91
	movl	-24(%rbp), %eax	# dupfd, tmp92
	movl	%edx, %esi	# tmp91,
	movl	%eax, %edi	# tmp92,
	call	dup2	#
	.loc 1 2977 0
	movl	-24(%rbp), %eax	# dupfd, tmp93
	movl	%eax, %edi	# tmp93,
	call	close	#
.L637:
	.loc 1 2979 0
	movq	-16(%rbp), %rax	# result, D.15687
.L629:
.LBE92:
	.loc 1 2981 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	PerlIOStdio_close, .-PerlIOStdio_close
	.globl	PerlIOStdio_read
	.type	PerlIOStdio_read, @function
PerlIOStdio_read:
.LFB106:
	.loc 1 2985 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# vbuf, vbuf
	movq	%rdx, -56(%rbp)	# count, count
	.loc 1 2986 0
	movq	-40(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_5(D), D.15691
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_6].stdio, tmp70
	movq	%rax, -16(%rbp)	# tmp70, s
	.loc 1 2987 0
	movq	$0, -24(%rbp)	#, got
.L645:
	.loc 1 2989 0
	cmpq	$1, -56(%rbp)	#, count
	jne	.L639	#,
.LBB93:
	.loc 1 2990 0
	movq	-48(%rbp), %rax	# vbuf, tmp71
	movq	%rax, -8(%rbp)	# tmp71, buf
	.loc 1 2995 0
	movq	-16(%rbp), %rax	# s, tmp72
	movq	%rax, %rdi	# tmp72,
	call	fgetc	#
	movl	%eax, -28(%rbp)	# tmp73, ch
	.loc 1 2996 0
	cmpl	$-1, -28(%rbp)	#, ch
	je	.L640	#,
	.loc 1 2997 0
	movl	-28(%rbp), %eax	# ch, tmp74
	movl	%eax, %edx	# tmp74, D.15692
	movq	-8(%rbp), %rax	# buf, tmp75
	movb	%dl, (%rax)	# D.15692, *buf_11
	.loc 1 2998 0
	movq	$1, -24(%rbp)	#, got
.LBE93:
	jmp	.L641	#
.L640:
	jmp	.L641	#
.L639:
	.loc 1 3002 0
	movq	-16(%rbp), %rcx	# s, tmp76
	movq	-56(%rbp), %rdx	# count, tmp77
	movq	-48(%rbp), %rax	# vbuf, tmp78
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	fread	#
	movq	%rax, -24(%rbp)	# D.15693, got
.L641:
	.loc 1 3003 0
	cmpq	$0, -24(%rbp)	#, got
	jne	.L642	#,
	.loc 1 3003 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp79
	movq	%rax, %rdi	# tmp79,
	call	ferror	#
	testl	%eax, %eax	# D.15694
	je	.L642	#,
	.loc 1 3004 0 is_stmt 1
	movq	$-1, -24(%rbp)	#, got
.L642:
	.loc 1 3005 0
	cmpq	$0, -24(%rbp)	#, got
	jns	.L643	#,
	.loc 1 3005 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_19, D.15694
	cmpl	$4, %eax	#, D.15694
	jne	.L643	#,
	.loc 1 3007 0 is_stmt 1
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.194
	testl	%eax, %eax	# PL_sig_pending.194
	je	.L644	#,
	.loc 1 3007 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L644:
	.loc 1 3008 0 is_stmt 1
	call	__errno_location	#
	movl	$0, (%rax)	#, *_22
	.loc 1 3009 0
	jmp	.L645	#
.L643:
	.loc 1 3010 0
	movq	-24(%rbp), %rax	# got, D.15696
	.loc 1 3011 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	PerlIOStdio_read, .-PerlIOStdio_read
	.globl	PerlIOStdio_unread
	.type	PerlIOStdio_unread, @function
PerlIOStdio_unread:
.LFB107:
	.loc 1 3015 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	movq	%rsi, -64(%rbp)	# vbuf, vbuf
	movq	%rdx, -72(%rbp)	# count, count
	.loc 1 3016 0
	movq	$0, -32(%rbp)	#, unread
	.loc 1 3017 0
	movq	-56(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_9(D), D.15697
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_10].stdio, tmp72
	movq	%rax, -8(%rbp)	# tmp72, s
	.loc 1 3041 0
	movq	-56(%rbp), %rax	# f, tmp73
	movq	%rax, %rdi	# tmp73,
	call	PerlIO_has_cntptr	#
	testl	%eax, %eax	# D.15698
	je	.L648	#,
.LBB94:
	.loc 1 3046 0
	movq	-8(%rbp), %rax	# s, tmp74
	movq	8(%rax), %rax	# s_11->_IO_read_ptr, tmp75
	movq	%rax, -24(%rbp)	# tmp75, eptr
	.loc 1 3047 0
	movq	-72(%rbp), %rax	# count, tmp80
	movq	-64(%rbp), %rdx	# vbuf, tmp81
	addq	%rdx, %rax	# tmp81, tmp79
	movq	%rax, -16(%rbp)	# tmp79, buf
	.loc 1 3048 0
	jmp	.L649	#
.L653:
.LBB95:
	.loc 1 3049 0
	subq	$1, -16(%rbp)	#, buf
	movq	-16(%rbp), %rax	# buf, tmp82
	movzbl	(%rax), %eax	# *buf_17, D.15699
	movsbl	%al, %eax	# D.15699, D.15698
	andl	$255, %eax	#, tmp83
	movl	%eax, -36(%rbp)	# tmp83, ch
	.loc 1 3050 0
	movq	-8(%rbp), %rdx	# s, tmp84
	movl	-36(%rbp), %eax	# ch, tmp85
	movq	%rdx, %rsi	# tmp84,
	movl	%eax, %edi	# tmp85,
	call	ungetc	#
	cmpl	-36(%rbp), %eax	# ch, D.15698
	je	.L650	#,
	.loc 1 3052 0
	jmp	.L648	#
.L650:
	.loc 1 3054 0
	movq	-8(%rbp), %rax	# s, tmp86
	movq	8(%rax), %rax	# s_11->_IO_read_ptr, D.15700
	subq	$1, -24(%rbp)	#, eptr
	cmpq	-24(%rbp), %rax	# eptr, D.15700
	jne	.L651	#,
	.loc 1 3054 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# eptr, tmp87
	movzbl	(%rax), %eax	# *eptr_23, D.15699
	movsbl	%al, %eax	# D.15699, D.15698
	movzbl	%al, %eax	# D.15698, D.15698
	cmpl	-36(%rbp), %eax	# ch, D.15698
	je	.L652	#,
.L651:
	.loc 1 3056 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp88
	movq	%rax, %rdi	# tmp88,
	call	fgetc	#
	.loc 1 3057 0
	jmp	.L648	#
.L652:
	.loc 1 3060 0
	subq	$1, -72(%rbp)	#, count
	.loc 1 3061 0
	addq	$1, -32(%rbp)	#, unread
.L649:
.LBE95:
	.loc 1 3048 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, count
	jne	.L653	#,
.L648:
.LBE94:
	.loc 1 3065 0
	cmpq	$0, -72(%rbp)	#, count
	je	.L654	#,
	.loc 1 3066 0
	movq	-72(%rbp), %rdx	# count, tmp89
	movq	-64(%rbp), %rcx	# vbuf, tmp90
	movq	-56(%rbp), %rax	# f, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	PerlIOBase_unread	#
	addq	%rax, -32(%rbp)	# D.15701, unread
.L654:
	.loc 1 3068 0
	movq	-32(%rbp), %rax	# unread, D.15702
	.loc 1 3069 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	PerlIOStdio_unread, .-PerlIOStdio_unread
	.globl	PerlIOStdio_write
	.type	PerlIOStdio_write, @function
PerlIOStdio_write:
.LFB108:
	.loc 1 3073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
.L659:
	.loc 1 3076 0
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_1(D), D.15703
	movq	24(%rax), %rcx	# MEM[(struct PerlIOStdio *)_2].stdio, D.15704
	movq	-40(%rbp), %rdx	# count, tmp69
	movq	-32(%rbp), %rax	# vbuf, tmp70
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	fwrite	#
	movq	%rax, -8(%rbp)	# D.15705, got
	.loc 1 3078 0
	cmpq	$0, -8(%rbp)	#, got
	jns	.L657	#,
	.loc 1 3078 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_8, D.15707
	cmpl	$4, %eax	#, D.15707
	jne	.L657	#,
	.loc 1 3080 0 is_stmt 1
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.195
	testl	%eax, %eax	# PL_sig_pending.195
	je	.L658	#,
	.loc 1 3080 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L658:
	.loc 1 3081 0 is_stmt 1
	call	__errno_location	#
	movl	$0, (%rax)	#, *_11
	.loc 1 3082 0
	jmp	.L659	#
.L657:
	.loc 1 3083 0
	movq	-8(%rbp), %rax	# got, D.15708
	.loc 1 3084 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	PerlIOStdio_write, .-PerlIOStdio_write
	.globl	PerlIOStdio_seek
	.type	PerlIOStdio_seek, @function
PerlIOStdio_seek:
.LFB109:
	.loc 1 3088 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# offset, offset
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 3089 0
	movq	-24(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_1(D), D.15709
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp64
	movq	%rax, -8(%rbp)	# tmp64, stdio
	.loc 1 3090 0
	movl	-36(%rbp), %edx	# whence, tmp65
	movq	-32(%rbp), %rcx	# offset, tmp66
	movq	-8(%rbp), %rax	# stdio, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	fseek	#
	cltq
	.loc 1 3091 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	PerlIOStdio_seek, .-PerlIOStdio_seek
	.globl	PerlIOStdio_tell
	.type	PerlIOStdio_tell, @function
PerlIOStdio_tell:
.LFB110:
	.loc 1 3095 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3096 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	(%rax), %rax	# *f_1(D), D.15712
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp63
	movq	%rax, -8(%rbp)	# tmp63, stdio
	.loc 1 3097 0
	movq	-8(%rbp), %rax	# stdio, tmp64
	movq	%rax, %rdi	# tmp64,
	call	ftell	#
	.loc 1 3098 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	PerlIOStdio_tell, .-PerlIOStdio_tell
	.globl	PerlIOStdio_flush
	.type	PerlIOStdio_flush, @function
PerlIOStdio_flush:
.LFB111:
	.loc 1 3102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3103 0
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_2(D), D.15715
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_3].stdio, tmp67
	movq	%rax, -8(%rbp)	# tmp67, stdio
	.loc 1 3104 0
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_2(D), D.15715
	movl	16(%rax), %eax	# _5->flags, D.15716
	andl	$512, %eax	#, D.15716
	testl	%eax, %eax	# D.15716
	je	.L666	#,
	.loc 1 3105 0
	movq	-8(%rbp), %rax	# stdio, tmp69
	movq	%rax, %rdi	# tmp69,
	call	fflush	#
	cltq
	jmp	.L667	#
.L666:
	.loc 1 3123 0
	movl	$0, %eax	#, D.15714
.L667:
	.loc 1 3124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	PerlIOStdio_flush, .-PerlIOStdio_flush
	.globl	PerlIOStdio_eof
	.type	PerlIOStdio_eof, @function
PerlIOStdio_eof:
.LFB112:
	.loc 1 3128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3129 0
	movq	-8(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_1(D), D.15718
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, D.15719
	movq	%rax, %rdi	# D.15719,
	call	feof	#
	cltq
	.loc 1 3130 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	PerlIOStdio_eof, .-PerlIOStdio_eof
	.globl	PerlIOStdio_error
	.type	PerlIOStdio_error, @function
PerlIOStdio_error:
.LFB113:
	.loc 1 3134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3135 0
	movq	-8(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_1(D), D.15722
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, D.15723
	movq	%rax, %rdi	# D.15723,
	call	ferror	#
	cltq
	.loc 1 3136 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	PerlIOStdio_error, .-PerlIOStdio_error
	.globl	PerlIOStdio_clearerr
	.type	PerlIOStdio_clearerr, @function
PerlIOStdio_clearerr:
.LFB114:
	.loc 1 3140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3141 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	(%rax), %rax	# *f_1(D), D.15726
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, D.15727
	movq	%rax, %rdi	# D.15727,
	call	clearerr	#
	.loc 1 3142 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	PerlIOStdio_clearerr, .-PerlIOStdio_clearerr
	.globl	PerlIOStdio_setlinebuf
	.type	PerlIOStdio_setlinebuf, @function
PerlIOStdio_setlinebuf:
.LFB115:
	.loc 1 3146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3150 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	(%rax), %rax	# *f_1(D), D.15728
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, D.15729
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15729,
	call	setvbuf	#
	.loc 1 3152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	PerlIOStdio_setlinebuf, .-PerlIOStdio_setlinebuf
	.globl	PerlIOStdio_get_base
	.type	PerlIOStdio_get_base, @function
PerlIOStdio_get_base:
.LFB116:
	.loc 1 3157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3158 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	(%rax), %rax	# *f_1(D), D.15730
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp63
	movq	%rax, -8(%rbp)	# tmp63, stdio
	.loc 1 3159 0
	movq	-8(%rbp), %rax	# stdio, tmp64
	movq	24(%rax), %rax	# stdio_3->_IO_read_base, D.15731
	.loc 1 3160 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	PerlIOStdio_get_base, .-PerlIOStdio_get_base
	.globl	PerlIOStdio_get_bufsiz
	.type	PerlIOStdio_get_bufsiz, @function
PerlIOStdio_get_bufsiz:
.LFB117:
	.loc 1 3164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3165 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), D.15732
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp68
	movq	%rax, -8(%rbp)	# tmp68, stdio
	.loc 1 3166 0
	movq	-8(%rbp), %rax	# stdio, tmp69
	movq	16(%rax), %rax	# stdio_3->_IO_read_end, D.15733
	movq	%rax, %rdx	# D.15733, D.15734
	movq	-8(%rbp), %rax	# stdio, tmp70
	movq	24(%rax), %rax	# stdio_3->_IO_read_base, D.15733
	subq	%rax, %rdx	# D.15734, D.15734
	movq	%rdx, %rax	# D.15734, D.15734
	.loc 1 3167 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	PerlIOStdio_get_bufsiz, .-PerlIOStdio_get_bufsiz
	.globl	PerlIOStdio_get_ptr
	.type	PerlIOStdio_get_ptr, @function
PerlIOStdio_get_ptr:
.LFB118:
	.loc 1 3173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3174 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	(%rax), %rax	# *f_1(D), D.15736
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp63
	movq	%rax, -8(%rbp)	# tmp63, stdio
	.loc 1 3175 0
	movq	-8(%rbp), %rax	# stdio, tmp64
	movq	8(%rax), %rax	# stdio_3->_IO_read_ptr, D.15737
	.loc 1 3176 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	PerlIOStdio_get_ptr, .-PerlIOStdio_get_ptr
	.globl	PerlIOStdio_get_cnt
	.type	PerlIOStdio_get_cnt, @function
PerlIOStdio_get_cnt:
.LFB119:
	.loc 1 3180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3181 0
	movq	-24(%rbp), %rax	# f, tmp66
	movq	(%rax), %rax	# *f_1(D), D.15738
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_2].stdio, tmp67
	movq	%rax, -8(%rbp)	# tmp67, stdio
	.loc 1 3182 0
	movq	-8(%rbp), %rax	# stdio, tmp68
	movq	16(%rax), %rax	# stdio_3->_IO_read_end, D.15739
	movq	%rax, %rdx	# D.15739, D.15740
	movq	-8(%rbp), %rax	# stdio, tmp69
	movq	8(%rax), %rax	# stdio_3->_IO_read_ptr, D.15739
	subq	%rax, %rdx	# D.15740, D.15741
	movq	%rdx, %rax	# D.15741, D.15741
	.loc 1 3183 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	PerlIOStdio_get_cnt, .-PerlIOStdio_get_cnt
	.globl	PerlIOStdio_set_ptrcnt
	.type	PerlIOStdio_set_ptrcnt, @function
PerlIOStdio_set_ptrcnt:
.LFB120:
	.loc 1 3187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# ptr, ptr
	movq	%rdx, -24(%rbp)	# cnt, cnt
	.loc 1 3191 0
	cmpq	$0, -16(%rbp)	#, ptr
	je	.L683	#,
	.loc 1 3206 0
	call	abort	#
.L683:
	.loc 1 3220 0
	call	abort	#
	.cfi_endproc
.LFE120:
	.size	PerlIOStdio_set_ptrcnt, .-PerlIOStdio_set_ptrcnt
	.globl	PerlIOStdio_fill
	.type	PerlIOStdio_fill, @function
PerlIOStdio_fill:
.LFB121:
	.loc 1 3230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3231 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), D.15743
	movq	24(%rax), %rax	# MEM[(struct PerlIOStdio *)_3].stdio, tmp68
	movq	%rax, -8(%rbp)	# tmp68, stdio
	.loc 1 3236 0
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), D.15743
	movl	16(%rax), %eax	# _5->flags, D.15744
	andl	$512, %eax	#, D.15744
	testl	%eax, %eax	# D.15744
	je	.L685	#,
	.loc 1 3237 0
	movq	-8(%rbp), %rax	# stdio, tmp70
	movq	%rax, %rdi	# tmp70,
	call	fflush	#
	testl	%eax, %eax	# D.15745
	je	.L685	#,
	.loc 1 3238 0
	movq	$-1, %rax	#, D.15742
	jmp	.L686	#
.L685:
	.loc 1 3240 0
	movq	-8(%rbp), %rax	# stdio, tmp71
	movq	%rax, %rdi	# tmp71,
	call	fgetc	#
	movl	%eax, -12(%rbp)	# tmp72, c
	.loc 1 3241 0
	cmpl	$-1, -12(%rbp)	#, c
	jne	.L687	#,
	.loc 1 3242 0
	movq	$-1, %rax	#, D.15742
	jmp	.L686	#
.L687:
	.loc 1 3283 0
	movq	-8(%rbp), %rdx	# stdio, tmp73
	movl	-12(%rbp), %eax	# c, tmp74
	movq	%rdx, %rsi	# tmp73,
	movl	%eax, %edi	# tmp74,
	call	ungetc	#
	cmpl	-12(%rbp), %eax	# c, D.15745
	je	.L688	#,
	.loc 1 3284 0
	movq	$-1, %rax	#, D.15742
	jmp	.L686	#
.L688:
	.loc 1 3286 0
	movl	$0, %eax	#, D.15742
.L686:
	.loc 1 3287 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	PerlIOStdio_fill, .-PerlIOStdio_fill
	.globl	PerlIO_stdio
	.section	.rodata
.LC47:
	.string	"stdio"
	.data
	.align 32
	.type	PerlIO_stdio, @object
	.size	PerlIO_stdio, 224
PerlIO_stdio:
# fsize:
	.quad	224
# name:
	.quad	.LC47
# size:
	.quad	32
# kind:
	.long	3
# Pushed:
	.zero	4
	.quad	PerlIOStdio_pushed
# Popped:
	.quad	PerlIOBase_popped
# Open:
	.quad	PerlIOStdio_open
# Binmode:
	.quad	PerlIOBase_binmode
# Getarg:
	.quad	0
# Fileno:
	.quad	PerlIOStdio_fileno
# Dup:
	.quad	PerlIOStdio_dup
# Read:
	.quad	PerlIOStdio_read
# Unread:
	.quad	PerlIOStdio_unread
# Write:
	.quad	PerlIOStdio_write
# Seek:
	.quad	PerlIOStdio_seek
# Tell:
	.quad	PerlIOStdio_tell
# Close:
	.quad	PerlIOStdio_close
# Flush:
	.quad	PerlIOStdio_flush
# Fill:
	.quad	PerlIOStdio_fill
# Eof:
	.quad	PerlIOStdio_eof
# Error:
	.quad	PerlIOStdio_error
# Clearerr:
	.quad	PerlIOStdio_clearerr
# Setlinebuf:
	.quad	PerlIOStdio_setlinebuf
# Get_base:
	.quad	PerlIOStdio_get_base
# Get_bufsiz:
	.quad	PerlIOStdio_get_bufsiz
# Get_ptr:
	.quad	PerlIOStdio_get_ptr
# Get_cnt:
	.quad	PerlIOStdio_get_cnt
# Set_ptrcnt:
	.quad	0
	.text
	.globl	PerlIO_exportFILE
	.type	PerlIO_exportFILE, @function
PerlIO_exportFILE:
.LFB122:
	.loc 1 3341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# f, f
	movq	%rsi, -80(%rbp)	# mode, mode
	.loc 1 3341 0
	movq	%fs:40, %rax	#, tmp90
	movq	%rax, -24(%rbp)	# tmp90, D.15751
	xorl	%eax, %eax	# tmp90
	.loc 1 3343 0
	movq	$0, -64(%rbp)	#, stdio
	.loc 1 3344 0
	cmpq	$0, -72(%rbp)	#, f
	je	.L690	#,
	.loc 1 3344 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_4(D), D.15747
	testq	%rax, %rax	# D.15747
	je	.L690	#,
.LBB96:
	.loc 1 3346 0 is_stmt 1
	movq	-72(%rbp), %rax	# f, tmp66
	movq	%rax, %rdi	# tmp66,
	call	Perl_PerlIO_flush	#
	.loc 1 3347 0
	cmpq	$0, -80(%rbp)	#, mode
	je	.L691	#,
	.loc 1 3347 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mode, tmp67
	movzbl	(%rax), %eax	# *mode_6(D), D.15748
	testb	%al, %al	# D.15748
	jne	.L692	#,
.L691:
	.loc 1 3348 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp68
	movq	-72(%rbp), %rax	# f, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	PerlIO_modestr	#
	movq	%rax, -80(%rbp)	# tmp70, mode
.L692:
	.loc 1 3350 0
	movq	-72(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	Perl_PerlIO_fileno	#
	movq	-80(%rbp), %rdx	# mode, tmp72
	movq	%rdx, %rsi	# tmp72,
	movl	%eax, %edi	# D.15749,
	call	fdopen	#
	movq	%rax, -64(%rbp)	# tmp73, stdio
	.loc 1 3351 0
	cmpq	$0, -64(%rbp)	#, stdio
	je	.L690	#,
.LBB97:
	.loc 1 3352 0
	movq	-72(%rbp), %rax	# f, tmp74
	movq	(%rax), %rax	# *f_4(D), tmp75
	movq	%rax, -56(%rbp)	# tmp75, l
	.loc 1 3355 0
	movq	-72(%rbp), %rax	# f, tmp76
	movq	$0, (%rax)	#, *f_4(D)
	.loc 1 3356 0
	leaq	-32(%rbp), %rdx	#, tmp77
	movq	-72(%rbp), %rax	# f, tmp78
	movl	$0, %ecx	#,
	movl	$PerlIO_stdio, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	PerlIO_push	#
	movq	%rax, -48(%rbp)	# tmp79, f2
	cmpq	$0, -48(%rbp)	#, f2
	je	.L694	#,
.LBB98:
	.loc 1 3357 0
	movq	-48(%rbp), %rax	# f2, tmp80
	movq	%rax, -72(%rbp)	# tmp80, f
	movq	-72(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_13, tmp82
	movq	%rax, -40(%rbp)	# tmp82, s
	.loc 1 3358 0
	movq	-40(%rbp), %rax	# s, tmp83
	movq	-64(%rbp), %rdx	# stdio, tmp84
	movq	%rdx, 24(%rax)	# tmp84, s_14->stdio
	.loc 1 3360 0
	movq	-72(%rbp), %rax	# f, tmp85
	movq	(%rax), %rax	# *f_13, D.15747
	movq	-56(%rbp), %rdx	# l, tmp86
	movq	%rdx, (%rax)	# tmp86, _15->next
.LBE98:
	jmp	.L690	#
.L694:
	.loc 1 3364 0
	movq	-72(%rbp), %rax	# f, tmp87
	movq	-56(%rbp), %rdx	# l, tmp88
	movq	%rdx, (%rax)	# tmp88, *f_4(D)
.L690:
.LBE97:
.LBE96:
	.loc 1 3368 0
	movq	-64(%rbp), %rax	# stdio, D.15750
	.loc 1 3369 0
	movq	-24(%rbp), %rbx	# D.15751, tmp91
	xorq	%fs:40, %rbx	#, tmp91
	je	.L696	#,
	call	__stack_chk_fail	#
.L696:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	PerlIO_exportFILE, .-PerlIO_exportFILE
	.globl	PerlIO_findFILE
	.type	PerlIO_findFILE, @function
PerlIO_findFILE:
.LFB123:
	.loc 1 3374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3375 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_2(D), l.196
	movq	%rax, -16(%rbp)	# l.196, l
	.loc 1 3376 0
	jmp	.L698	#
.L701:
	.loc 1 3377 0
	movq	-16(%rbp), %rax	# l, l.197
	movq	8(%rax), %rax	# l.197_5->tab, D.15753
	cmpq	$PerlIO_stdio, %rax	#, D.15753
	jne	.L699	#,
.LBB99:
	.loc 1 3378 0
	movq	-16(%rbp), %rax	# l, tmp68
	movq	%rax, -8(%rbp)	# tmp68, s
	.loc 1 3379 0
	movq	-8(%rbp), %rax	# s, tmp69
	movq	24(%rax), %rax	# s_7->stdio, D.15752
	jmp	.L702	#
.L699:
.LBE99:
	.loc 1 3381 0
	movq	-16(%rbp), %rax	# l, l.198
	movq	(%rax), %rax	# l.198_9->next, l.199
	movq	%rax, -16(%rbp)	# l.199, l
.L698:
	.loc 1 3376 0 discriminator 1
	movq	-16(%rbp), %rax	# l, l.200
	testq	%rax, %rax	# l.200
	jne	.L701	#,
	.loc 1 3384 0
	movq	-24(%rbp), %rax	# f, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	PerlIO_exportFILE	#
.L702:
	.loc 1 3385 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	PerlIO_findFILE, .-PerlIO_findFILE
	.globl	PerlIO_releaseFILE
	.type	PerlIO_releaseFILE, @function
PerlIO_releaseFILE:
.LFB124:
	.loc 1 3390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movq	%rsi, -32(%rbp)	# f, f
	.loc 1 3392 0
	jmp	.L704	#
.L707:
	.loc 1 3393 0
	movq	-16(%rbp), %rax	# l, l.201
	movq	8(%rax), %rax	# l.201_5->tab, D.15754
	cmpq	$PerlIO_stdio, %rax	#, D.15754
	jne	.L705	#,
.LBB100:
	.loc 1 3394 0
	movq	-16(%rbp), %rax	# l, tmp65
	movq	%rax, -8(%rbp)	# tmp65, s
	.loc 1 3395 0
	movq	-8(%rbp), %rax	# s, tmp66
	movq	24(%rax), %rax	# s_7->stdio, D.15755
	cmpq	-32(%rbp), %rax	# f, D.15755
	jne	.L705	#,
.LBB101:
	.loc 1 3397 0
	movq	-24(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	PerlIO_pop	#
	.loc 1 3398 0
	jmp	.L703	#
.L705:
.LBE101:
.LBE100:
	.loc 1 3401 0
	movq	-24(%rbp), %rax	# p, tmp68
	movq	(%rax), %rax	# *p_1, D.15756
	movq	%rax, -24(%rbp)	# D.15756, p
.L704:
	.loc 1 3392 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp69
	movq	(%rax), %rax	# *p_1, l.202
	movq	%rax, -16(%rbp)	# l.202, l
	movq	-16(%rbp), %rax	# l, l.203
	testq	%rax, %rax	# l.203
	jne	.L707	#,
	.loc 1 3403 0
	nop
.L703:
	.loc 1 3404 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	PerlIO_releaseFILE, .-PerlIO_releaseFILE
	.globl	PerlIOBuf_pushed
	.type	PerlIOBuf_pushed, @function
PerlIOBuf_pushed:
.LFB125:
	.loc 1 3413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# mode, mode
	movq	%rdx, -56(%rbp)	# arg, arg
	movq	%rcx, -64(%rbp)	# tab, tab
	.loc 1 3414 0
	movq	-40(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_1(D), tmp71
	movq	%rax, -16(%rbp)	# tmp71, b
	.loc 1 3415 0
	movq	-40(%rbp), %rax	# f, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -20(%rbp)	# tmp73, fd
	.loc 1 3416 0
	cmpl	$0, -20(%rbp)	#, fd
	js	.L710	#,
	.loc 1 3416 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# fd, tmp74
	movl	%eax, %edi	# tmp74,
	call	isatty	#
	testl	%eax, %eax	# D.15757
	je	.L710	#,
	.loc 1 3417 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp75
	movq	(%rax), %rax	# *f_1(D), D.15758
	movq	-40(%rbp), %rdx	# f, tmp76
	movq	(%rdx), %rdx	# *f_1(D), D.15758
	movl	16(%rdx), %edx	# _6->flags, D.15759
	orl	$8912896, %edx	#, D.15759
	movl	%edx, 16(%rax)	# D.15759, _5->flags
.L710:
	.loc 1 3419 0
	movq	-40(%rbp), %rax	# f, tmp77
	movq	(%rax), %rax	# *f_1(D), D.15758
	movq	(%rax), %rax	# _9->next, D.15758
	testq	%rax, %rax	# D.15758
	je	.L711	#,
.LBB102:
	.loc 1 3420 0
	movq	-40(%rbp), %rax	# f, tmp78
	movq	(%rax), %rax	# *f_1(D), D.15758
	movq	%rax, %rdi	# D.15760,
	call	Perl_PerlIO_tell	#
	movq	%rax, -8(%rbp)	# tmp79, posn
	.loc 1 3421 0
	cmpq	$-1, -8(%rbp)	#, posn
	je	.L711	#,
	.loc 1 3422 0
	movq	-16(%rbp), %rax	# b, tmp80
	movq	-8(%rbp), %rdx	# posn, tmp81
	movq	%rdx, 48(%rax)	# tmp81, b_2->posn
.L711:
.LBE102:
	.loc 1 3425 0
	movq	-64(%rbp), %rcx	# tab, tmp82
	movq	-56(%rbp), %rdx	# arg, tmp83
	movq	-48(%rbp), %rsi	# mode, tmp84
	movq	-40(%rbp), %rax	# f, tmp85
	movq	%rax, %rdi	# tmp85,
	call	PerlIOBase_pushed	#
	.loc 1 3426 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	PerlIOBuf_pushed, .-PerlIOBuf_pushed
	.globl	PerlIOBuf_open
	.type	PerlIOBuf_open, @function
PerlIOBuf_open:
.LFB126:
	.loc 1 3432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# self, self
	movq	%rsi, -64(%rbp)	# layers, layers
	movq	%rdx, -72(%rbp)	# n, n
	movq	%rcx, -80(%rbp)	# mode, mode
	movl	%r8d, -84(%rbp)	# fd, fd
	movl	%r9d, -88(%rbp)	# imode, imode
	.loc 1 3433 0
	cmpq	$0, 24(%rbp)	#, f
	je	.L714	#,
	.loc 1 3433 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# f, tmp87
	movq	(%rax), %rax	# *f_6(D), D.15763
	testq	%rax, %rax	# D.15763
	je	.L714	#,
.LBB103:
	.loc 1 3434 0 is_stmt 1
	movq	24(%rbp), %rax	# f, tmp88
	movq	(%rax), %rax	# *f_6(D), D.15763
	movq	%rax, -40(%rbp)	# D.15763, next
	.loc 1 3436 0
	movq	-40(%rbp), %rax	# next, tmp89
	movq	(%rax), %rax	# *next_9, D.15763
	movq	8(%rax), %rdx	# _10->tab, D.15764
	movq	-72(%rbp), %rax	# n, tmp90
	leaq	-1(%rax), %rcx	#, D.15765
	.loc 1 3435 0
	movq	-64(%rbp), %rax	# layers, tmp91
	movq	%rcx, %rsi	# D.15765,
	movq	%rax, %rdi	# tmp91,
	call	PerlIO_layer_fetch	#
	movq	%rax, -32(%rbp)	# tmp92, tab
	.loc 1 3437 0
	cmpq	$0, -32(%rbp)	#, tab
	je	.L715	#,
	.loc 1 3437 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tab, tmp93
	movq	48(%rax), %rax	# tab_15->Open, D.15766
	testq	%rax, %rax	# D.15766
	je	.L715	#,
	.loc 1 3439 0 is_stmt 1
	movq	-32(%rbp), %rax	# tab, tmp94
	movq	48(%rax), %rax	# tab_15->Open, D.15766
	movq	-72(%rbp), %rdx	# n, tmp95
	leaq	-1(%rdx), %r10	#, D.15765
	.loc 1 3438 0
	movl	-88(%rbp), %r9d	# imode, tmp96
	movl	-84(%rbp), %r8d	# fd, tmp97
	movq	-80(%rbp), %rdx	# mode, tmp98
	movq	-64(%rbp), %rsi	# layers, tmp99
	movq	-32(%rbp), %rdi	# tab, tmp100
	movq	40(%rbp), %rcx	# args, tmp101
	movq	%rcx, 24(%rsp)	# tmp101,
	movl	32(%rbp), %ecx	# narg, tmp102
	movl	%ecx, 16(%rsp)	# tmp102,
	movq	-40(%rbp), %rcx	# next, tmp103
	movq	%rcx, 8(%rsp)	# tmp103,
	movl	16(%rbp), %ecx	# perm, tmp104
	movl	%ecx, (%rsp)	# tmp104,
	movq	%rdx, %rcx	# tmp98,
	movq	%r10, %rdx	# D.15765,
	call	*%rax	# D.15766
	movq	%rax, -40(%rbp)	# tmp105, next
.L715:
	.loc 1 3441 0
	cmpq	$0, -40(%rbp)	#, next
	je	.L716	#,
	.loc 1 3441 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# f, tmp106
	movq	(%rax), %rax	# *f_6(D), D.15763
	movq	8(%rax), %rax	# _26->tab, D.15764
	movq	32(%rax), %rbx	# _27->Pushed, D.15767
	movq	-72(%rbp), %rdx	# n, tmp107
	movq	-64(%rbp), %rax	# layers, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rdx	#, D.15768
	movq	-56(%rbp), %rcx	# self, tmp109
	movq	-80(%rbp), %rsi	# mode, tmp110
	movq	24(%rbp), %rax	# f, tmp111
	movq	%rax, %rdi	# tmp111,
	call	*%rbx	# D.15767
	testq	%rax, %rax	# D.15765
	je	.L717	#,
.L716:
	.loc 1 3442 0 is_stmt 1
	movl	$0, %eax	#, D.15762
	jmp	.L718	#
.L717:
.LBE103:
	.loc 1 3433 0
	jmp	.L719	#
.L714:
.LBB104:
	.loc 1 3446 0
	movl	$0, %edi	#,
	call	PerlIO_default_layer	#
	movq	%rax, %rdx	#, D.15764
	movq	-72(%rbp), %rax	# n, tmp112
	leaq	-1(%rax), %rcx	#, D.15765
	movq	-64(%rbp), %rax	# layers, tmp113
	movq	%rcx, %rsi	# D.15765,
	movq	%rax, %rdi	# tmp113,
	call	PerlIO_layer_fetch	#
	movq	%rax, -24(%rbp)	# tmp114, tab
	.loc 1 3447 0
	movl	$0, -44(%rbp)	#, init
	.loc 1 3448 0
	movq	-80(%rbp), %rax	# mode, tmp115
	movzbl	(%rax), %eax	# *mode_19(D), D.15769
	cmpb	$73, %al	#, D.15769
	jne	.L720	#,
	.loc 1 3449 0
	movl	$1, -44(%rbp)	#, init
.L720:
	.loc 1 3454 0
	cmpq	$0, -24(%rbp)	#, tab
	je	.L721	#,
	.loc 1 3454 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tab, tmp116
	movq	48(%rax), %rax	# tab_35->Open, D.15766
	testq	%rax, %rax	# D.15766
	je	.L721	#,
	.loc 1 3455 0 is_stmt 1
	movq	-24(%rbp), %rax	# tab, tmp117
	movq	48(%rax), %rax	# tab_35->Open, D.15766
	movq	-72(%rbp), %rdx	# n, tmp118
	leaq	-1(%rdx), %r10	#, D.15765
	movl	-88(%rbp), %r9d	# imode, tmp119
	movl	-84(%rbp), %r8d	# fd, tmp120
	movq	-80(%rbp), %rdx	# mode, tmp121
	movq	-64(%rbp), %rsi	# layers, tmp122
	movq	-24(%rbp), %rdi	# tab, tmp123
	movq	40(%rbp), %rcx	# args, tmp124
	movq	%rcx, 24(%rsp)	# tmp124,
	movl	32(%rbp), %ecx	# narg, tmp125
	movl	%ecx, 16(%rsp)	# tmp125,
	movq	24(%rbp), %rcx	# f, tmp126
	movq	%rcx, 8(%rsp)	# tmp126,
	movl	16(%rbp), %ecx	# perm, tmp127
	movl	%ecx, (%rsp)	# tmp127,
	movq	%rdx, %rcx	# tmp121,
	movq	%r10, %rdx	# D.15765,
	call	*%rax	# D.15766
	movq	%rax, 24(%rbp)	# tmp128, f
	jmp	.L722	#
.L721:
	.loc 1 3458 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_43
.L722:
	.loc 1 3459 0
	cmpq	$0, 24(%rbp)	#, f
	je	.L719	#,
	.loc 1 3460 0
	movq	-72(%rbp), %rdx	# n, tmp129
	movq	-64(%rbp), %rax	# layers, tmp130
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	PerlIO_arg_fetch	#
	movq	%rax, %rcx	#, D.15768
	movq	-80(%rbp), %rdx	# mode, tmp131
	movq	-56(%rbp), %rsi	# self, tmp132
	movq	24(%rbp), %rax	# f, tmp133
	movq	%rax, %rdi	# tmp133,
	call	PerlIO_push	#
	testq	%rax, %rax	# D.15762
	jne	.L723	#,
	.loc 1 3464 0
	movq	24(%rbp), %rax	# f, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Perl_PerlIO_close	#
	.loc 1 3465 0
	movl	$0, %eax	#, D.15762
	jmp	.L718	#
.L723:
	.loc 1 3467 0
	movq	24(%rbp), %rax	# f, tmp135
	movq	%rax, %rdi	# tmp135,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -84(%rbp)	# tmp136, fd
	.loc 1 3468 0
	cmpl	$0, -44(%rbp)	#, init
	je	.L719	#,
	.loc 1 3468 0 is_stmt 0 discriminator 1
	cmpl	$2, -84(%rbp)	#, fd
	jne	.L719	#,
	.loc 1 3472 0 is_stmt 1
	movq	24(%rbp), %rax	# f, tmp137
	movq	(%rax), %rax	# *f_1, D.15763
	movq	24(%rbp), %rdx	# f, tmp138
	movq	(%rdx), %rdx	# *f_1, D.15763
	movl	16(%rdx), %edx	# _49->flags, D.15771
	orl	$65536, %edx	#, D.15771
	movl	%edx, 16(%rax)	# D.15771, _48->flags
.L719:
.LBE104:
	.loc 1 3488 0
	movq	24(%rbp), %rax	# f, D.15762
.L718:
	.loc 1 3489 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	PerlIOBuf_open, .-PerlIOBuf_open
	.globl	PerlIOBuf_flush
	.type	PerlIOBuf_flush, @function
PerlIOBuf_flush:
.LFB127:
	.loc 1 3497 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# f, f
	.loc 1 3498 0
	movq	-72(%rbp), %rax	# f, tmp112
	movq	(%rax), %rax	# *f_7(D), tmp113
	movq	%rax, -32(%rbp)	# tmp113, b
	.loc 1 3499 0
	movl	$0, -52(%rbp)	#, code
	.loc 1 3500 0
	movq	-72(%rbp), %rax	# f, tmp114
	movq	(%rax), %rax	# *f_7(D), D.15773
	movq	%rax, -48(%rbp)	# D.15773, n
	.loc 1 3501 0
	movq	-72(%rbp), %rax	# f, tmp115
	movq	(%rax), %rax	# *f_7(D), D.15773
	movl	16(%rax), %eax	# _12->flags, D.15774
	andl	$131072, %eax	#, D.15774
	testl	%eax, %eax	# D.15774
	je	.L725	#,
.LBB105:
	.loc 1 3505 0
	movq	-32(%rbp), %rax	# b, tmp116
	movq	24(%rax), %rax	# b_8->buf, tmp117
	movq	%rax, -24(%rbp)	# tmp117, buf
	.loc 1 3506 0
	movq	-24(%rbp), %rax	# buf, tmp118
	movq	%rax, -40(%rbp)	# tmp118, p
	.loc 1 3507 0
	jmp	.L726	#
.L730:
.LBB106:
	.loc 1 3508 0
	movq	-32(%rbp), %rax	# b, tmp119
	movq	40(%rax), %rax	# b_8->ptr, D.15775
	movq	%rax, %rdx	# D.15775, D.15776
	movq	-40(%rbp), %rax	# p, p.204
	subq	%rax, %rdx	# p.204, D.15776
	movq	%rdx, %rax	# D.15776, D.15776
	movq	%rax, %rdx	# D.15776, D.15777
	movq	-40(%rbp), %rcx	# p, tmp120
	movq	-48(%rbp), %rax	# n, tmp121
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	Perl_PerlIO_write	#
	movq	%rax, -16(%rbp)	# tmp122, count
	.loc 1 3509 0
	cmpq	$0, -16(%rbp)	#, count
	jle	.L727	#,
	.loc 1 3510 0
	movq	-16(%rbp), %rax	# count, count.205
	addq	%rax, -40(%rbp)	# count.205, p
	jmp	.L726	#
.L727:
	.loc 1 3512 0
	cmpq	$0, -16(%rbp)	#, count
	js	.L728	#,
	.loc 1 3512 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# n, tmp123
	movq	%rax, %rdi	# tmp123,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.15778
	je	.L726	#,
.L728:
	.loc 1 3513 0 is_stmt 1
	movq	-72(%rbp), %rax	# f, tmp124
	movq	(%rax), %rax	# *f_7(D), D.15773
	movq	-72(%rbp), %rdx	# f, tmp125
	movq	(%rdx), %rdx	# *f_7(D), D.15773
	movl	16(%rdx), %edx	# _28->flags, D.15774
	orb	$8, %dh	#, D.15774
	movl	%edx, 16(%rax)	# D.15774, _27->flags
	.loc 1 3514 0
	movl	$-1, -52(%rbp)	#, code
	.loc 1 3515 0
	jmp	.L729	#
.L726:
.LBE106:
	.loc 1 3507 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp126
	movq	40(%rax), %rax	# b_8->ptr, D.15775
	cmpq	-40(%rbp), %rax	# p, D.15775
	ja	.L730	#,
.L729:
	.loc 1 3518 0
	movq	-32(%rbp), %rax	# b, tmp127
	movq	48(%rax), %rax	# b_8->posn, D.15776
	movq	-40(%rbp), %rcx	# p, p.206
	movq	-24(%rbp), %rdx	# buf, buf.207
	subq	%rdx, %rcx	# buf.207, D.15776
	movq	%rcx, %rdx	# D.15776, D.15776
	addq	%rax, %rdx	# D.15776, D.15776
	movq	-32(%rbp), %rax	# b, tmp128
	movq	%rdx, 48(%rax)	# D.15776, b_8->posn
.LBE105:
	jmp	.L731	#
.L725:
	.loc 1 3520 0
	movq	-72(%rbp), %rax	# f, tmp129
	movq	(%rax), %rax	# *f_7(D), D.15773
	movl	16(%rax), %eax	# _37->flags, D.15774
	andl	$262144, %eax	#, D.15774
	testl	%eax, %eax	# D.15774
	je	.L731	#,
.LBB107:
	.loc 1 3521 0
	movq	-72(%rbp), %rax	# f, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_PerlIO_get_base	#
	movq	%rax, -8(%rbp)	# tmp131, buf
	.loc 1 3525 0
	movq	-32(%rbp), %rax	# b, tmp132
	movq	48(%rax), %rdx	# b_8->posn, D.15776
	movq	-32(%rbp), %rax	# b, tmp133
	movq	40(%rax), %rax	# b_8->ptr, D.15775
	movq	%rax, %rcx	# D.15775, D.15776
	movq	-8(%rbp), %rax	# buf, buf.208
	subq	%rax, %rcx	# buf.208, D.15776
	movq	%rcx, %rax	# D.15776, D.15776
	addq	%rax, %rdx	# D.15776, D.15776
	movq	-32(%rbp), %rax	# b, tmp134
	movq	%rdx, 48(%rax)	# D.15776, b_8->posn
	.loc 1 3526 0
	movq	-32(%rbp), %rax	# b, tmp135
	movq	40(%rax), %rdx	# b_8->ptr, D.15775
	movq	-32(%rbp), %rax	# b, tmp136
	movq	32(%rax), %rax	# b_8->end, D.15775
	cmpq	%rax, %rdx	# D.15775, D.15775
	jae	.L731	#,
	.loc 1 3530 0
	cmpq	$0, -48(%rbp)	#, n
	je	.L732	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# n, tmp137
	movq	(%rax), %rax	# *n_11, D.15773
	testq	%rax, %rax	# D.15773
	je	.L732	#,
	movq	-32(%rbp), %rax	# b, tmp138
	movq	48(%rax), %rcx	# b_8->posn, D.15776
	movq	-48(%rbp), %rax	# n, tmp139
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15776,
	movq	%rax, %rdi	# tmp139,
	call	Perl_PerlIO_seek	#
	testl	%eax, %eax	# D.15778
	jne	.L732	#,
	.loc 1 3532 0 is_stmt 1
	movq	-72(%rbp), %rax	# f, tmp140
	movq	(%rax), %rax	# *f_7(D), D.15773
	movq	%rax, -48(%rbp)	# D.15773, n
	movq	-48(%rbp), %rax	# n, tmp141
	movq	%rax, %rdi	# tmp141,
	call	Perl_PerlIO_tell	#
	movq	-32(%rbp), %rdx	# b, tmp142
	movq	%rax, 48(%rdx)	# D.15776, b_8->posn
	jmp	.L731	#
.L732:
	.loc 1 3539 0
	movq	-32(%rbp), %rax	# b, tmp143
	movq	48(%rax), %rdx	# b_8->posn, D.15776
	movq	-8(%rbp), %rcx	# buf, buf.209
	movq	-32(%rbp), %rax	# b, tmp144
	movq	40(%rax), %rax	# b_8->ptr, D.15775
	subq	%rax, %rcx	# D.15776, D.15776
	movq	%rcx, %rax	# D.15776, D.15776
	addq	%rax, %rdx	# D.15776, D.15776
	movq	-32(%rbp), %rax	# b, tmp145
	movq	%rdx, 48(%rax)	# D.15776, b_8->posn
	.loc 1 3540 0
	movl	-52(%rbp), %eax	# code, tmp146
	cltq
	jmp	.L733	#
.L731:
.LBE107:
	.loc 1 3544 0
	movq	-32(%rbp), %rax	# b, tmp147
	movq	24(%rax), %rdx	# b_8->buf, D.15775
	movq	-32(%rbp), %rax	# b, tmp148
	movq	%rdx, 32(%rax)	# D.15775, b_8->end
	movq	-32(%rbp), %rax	# b, tmp149
	movq	32(%rax), %rdx	# b_8->end, D.15775
	movq	-32(%rbp), %rax	# b, tmp150
	movq	%rdx, 40(%rax)	# D.15775, b_8->ptr
	.loc 1 3545 0
	movq	-72(%rbp), %rax	# f, tmp151
	movq	(%rax), %rax	# *f_7(D), D.15773
	movq	-72(%rbp), %rdx	# f, tmp152
	movq	(%rdx), %rdx	# *f_7(D), D.15773
	movl	16(%rdx), %edx	# _65->flags, D.15774
	andl	$-393217, %edx	#, D.15774
	movl	%edx, 16(%rax)	# D.15774, _64->flags
	.loc 1 3547 0
	cmpq	$0, -48(%rbp)	#, n
	je	.L734	#,
	.loc 1 3547 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# n, tmp153
	movq	(%rax), %rax	# *n_4, D.15773
	testq	%rax, %rax	# D.15773
	je	.L734	#,
	movq	-48(%rbp), %rax	# n, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_PerlIO_flush	#
	testl	%eax, %eax	# D.15778
	je	.L734	#,
	.loc 1 3548 0 is_stmt 1
	movl	$-1, -52(%rbp)	#, code
.L734:
	.loc 1 3549 0
	movl	-52(%rbp), %eax	# code, tmp155
	cltq
.L733:
	.loc 1 3550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	PerlIOBuf_flush, .-PerlIOBuf_flush
	.globl	PerlIOBuf_fill
	.type	PerlIOBuf_fill, @function
PerlIOBuf_fill:
.LFB128:
	.loc 1 3554 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	.loc 1 3555 0
	movq	-56(%rbp), %rax	# f, tmp108
	movq	(%rax), %rax	# *f_6(D), tmp109
	movq	%rax, -32(%rbp)	# tmp109, b
	.loc 1 3556 0
	movq	-56(%rbp), %rax	# f, tmp110
	movq	(%rax), %rax	# *f_6(D), D.15780
	movq	%rax, -24(%rbp)	# D.15780, n
	.loc 1 3562 0
	movq	-56(%rbp), %rax	# f, tmp111
	movq	%rax, %rdi	# tmp111,
	call	Perl_PerlIO_flush	#
	testl	%eax, %eax	# D.15781
	je	.L736	#,
	.loc 1 3563 0
	movq	$-1, %rax	#, D.15779
	jmp	.L737	#
.L736:
	.loc 1 3564 0
	movq	-56(%rbp), %rax	# f, tmp112
	movq	(%rax), %rax	# *f_6(D), D.15780
	movl	16(%rax), %eax	# _12->flags, D.15782
	andl	$8388608, %eax	#, D.15782
	testl	%eax, %eax	# D.15782
	je	.L738	#,
	.loc 1 3565 0
	call	PerlIOBase_flush_linebuf	#
.L738:
	.loc 1 3567 0
	movq	-32(%rbp), %rax	# b, tmp113
	movq	24(%rax), %rax	# b_7->buf, D.15783
	testq	%rax, %rax	# D.15783
	jne	.L739	#,
	.loc 1 3568 0
	movq	-56(%rbp), %rax	# f, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_PerlIO_get_base	#
.L739:
	.loc 1 3570 0
	movq	-32(%rbp), %rax	# b, tmp115
	movq	24(%rax), %rdx	# b_7->buf, D.15783
	movq	-32(%rbp), %rax	# b, tmp116
	movq	%rdx, 32(%rax)	# D.15783, b_7->end
	movq	-32(%rbp), %rax	# b, tmp117
	movq	32(%rax), %rdx	# b_7->end, D.15783
	movq	-32(%rbp), %rax	# b, tmp118
	movq	%rdx, 40(%rax)	# D.15783, b_7->ptr
	.loc 1 3572 0
	cmpq	$0, -24(%rbp)	#, n
	je	.L740	#,
	.loc 1 3572 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# n, tmp119
	movq	(%rax), %rax	# *n_9, D.15780
	testq	%rax, %rax	# D.15780
	jne	.L741	#,
.L740:
	.loc 1 3573 0 is_stmt 1
	movq	-56(%rbp), %rax	# f, tmp120
	movq	(%rax), %rax	# *f_6(D), D.15780
	movq	-56(%rbp), %rdx	# f, tmp121
	movq	(%rdx), %rdx	# *f_6(D), D.15780
	movl	16(%rdx), %edx	# _64->flags, D.15782
	orb	$1, %dh	#, D.15782
	movl	%edx, 16(%rax)	# D.15782, _63->flags
	.loc 1 3574 0
	movq	$-1, %rax	#, D.15779
	jmp	.L737	#
.L741:
	.loc 1 3577 0
	movq	-24(%rbp), %rax	# n, tmp122
	movq	%rax, %rdi	# tmp122,
	call	PerlIO_fast_gets	#
	testl	%eax, %eax	# D.15781
	je	.L742	#,
	.loc 1 3584 0
	movq	-24(%rbp), %rax	# n, tmp123
	movq	%rax, %rdi	# tmp123,
	call	Perl_PerlIO_get_cnt	#
	cltq
	movq	%rax, -40(%rbp)	# tmp124, avail
	.loc 1 3585 0
	cmpq	$0, -40(%rbp)	#, avail
	jg	.L743	#,
	.loc 1 3586 0
	movq	-24(%rbp), %rax	# n, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_PerlIO_fill	#
	cltq
	movq	%rax, -40(%rbp)	# tmp126, avail
	.loc 1 3587 0
	cmpq	$0, -40(%rbp)	#, avail
	jne	.L744	#,
	.loc 1 3588 0
	movq	-24(%rbp), %rax	# n, tmp127
	movq	%rax, %rdi	# tmp127,
	call	Perl_PerlIO_get_cnt	#
	cltq
	movq	%rax, -40(%rbp)	# tmp128, avail
	jmp	.L743	#
.L744:
	.loc 1 3590 0
	movq	-24(%rbp), %rax	# n, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.15781
	jne	.L743	#,
	.loc 1 3590 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# n, tmp130
	movq	%rax, %rdi	# tmp130,
	call	Perl_PerlIO_eof	#
	testl	%eax, %eax	# D.15781
	je	.L743	#,
	.loc 1 3591 0 is_stmt 1
	movq	$0, -40(%rbp)	#, avail
.L743:
	.loc 1 3594 0
	cmpq	$0, -40(%rbp)	#, avail
	jle	.L747	#,
.LBB108:
	.loc 1 3595 0
	movq	-24(%rbp), %rax	# n, tmp131
	movq	%rax, %rdi	# tmp131,
	call	Perl_PerlIO_get_ptr	#
	movq	%rax, -16(%rbp)	# tmp132, ptr
	.loc 1 3596 0
	movq	-40(%rbp), %rax	# avail, tmp133
	movq	%rax, -8(%rbp)	# tmp133, cnt
	.loc 1 3597 0
	movq	-32(%rbp), %rax	# b, tmp134
	movq	56(%rax), %rax	# b_7->bufsiz, D.15784
	cmpq	-40(%rbp), %rax	# avail, D.15785
	jge	.L746	#,
	.loc 1 3598 0
	movq	-32(%rbp), %rax	# b, tmp135
	movq	56(%rax), %rax	# b_7->bufsiz, D.15784
	movq	%rax, -40(%rbp)	# D.15784, avail
.L746:
	.loc 1 3599 0
	movq	-40(%rbp), %rdx	# avail, avail.210
	movq	-32(%rbp), %rax	# b, tmp136
	movq	24(%rax), %rax	# b_7->buf, D.15783
	movq	-16(%rbp), %rcx	# ptr, tmp137
	movq	%rcx, %rsi	# tmp137,
	movq	%rax, %rdi	# D.15783,
	call	memcpy	#
	.loc 1 3600 0
	movq	-8(%rbp), %rax	# cnt, tmp138
	movl	%eax, %edx	# tmp138, D.15786
	movq	-40(%rbp), %rax	# avail, tmp139
	subl	%eax, %edx	# D.15786, D.15786
	movl	%edx, %eax	# D.15786, D.15786
	movl	%eax, %edx	# D.15786, D.15781
	movq	-40(%rbp), %rcx	# avail, avail.211
	movq	-16(%rbp), %rax	# ptr, tmp140
	addq	%rax, %rcx	# tmp140, D.15783
	movq	-24(%rbp), %rax	# n, tmp141
	movq	%rcx, %rsi	# D.15783,
	movq	%rax, %rdi	# tmp141,
	call	Perl_PerlIO_set_ptrcnt	#
	jmp	.L747	#
.L742:
.LBE108:
	.loc 1 3604 0
	movq	-32(%rbp), %rax	# b, tmp142
	movq	56(%rax), %rdx	# b_7->bufsiz, D.15784
	movq	-32(%rbp), %rax	# b, tmp143
	movq	40(%rax), %rcx	# b_7->ptr, D.15783
	movq	-24(%rbp), %rax	# n, tmp144
	movq	%rcx, %rsi	# D.15783,
	movq	%rax, %rdi	# tmp144,
	call	Perl_PerlIO_read	#
	movq	%rax, -40(%rbp)	# tmp145, avail
.L747:
	.loc 1 3606 0
	cmpq	$0, -40(%rbp)	#, avail
	jg	.L748	#,
	.loc 1 3607 0
	cmpq	$0, -40(%rbp)	#, avail
	jne	.L749	#,
	.loc 1 3608 0
	movq	-56(%rbp), %rax	# f, tmp146
	movq	(%rax), %rax	# *f_6(D), D.15780
	movq	-56(%rbp), %rdx	# f, tmp147
	movq	(%rdx), %rdx	# *f_6(D), D.15780
	movl	16(%rdx), %edx	# _47->flags, D.15782
	orb	$1, %dh	#, D.15782
	movl	%edx, 16(%rax)	# D.15782, _46->flags
	jmp	.L750	#
.L749:
	.loc 1 3610 0
	movq	-56(%rbp), %rax	# f, tmp148
	movq	(%rax), %rax	# *f_6(D), D.15780
	movq	-56(%rbp), %rdx	# f, tmp149
	movq	(%rdx), %rdx	# *f_6(D), D.15780
	movl	16(%rdx), %edx	# _51->flags, D.15782
	orb	$8, %dh	#, D.15782
	movl	%edx, 16(%rax)	# D.15782, _50->flags
.L750:
	.loc 1 3611 0
	movq	$-1, %rax	#, D.15779
	jmp	.L737	#
.L748:
	.loc 1 3613 0
	movq	-32(%rbp), %rax	# b, tmp150
	movq	24(%rax), %rdx	# b_7->buf, D.15783
	movq	-40(%rbp), %rax	# avail, avail.212
	addq	%rax, %rdx	# avail.212, D.15783
	movq	-32(%rbp), %rax	# b, tmp151
	movq	%rdx, 32(%rax)	# D.15783, b_7->end
	.loc 1 3614 0
	movq	-56(%rbp), %rax	# f, tmp152
	movq	(%rax), %rax	# *f_6(D), D.15780
	movq	-56(%rbp), %rdx	# f, tmp153
	movq	(%rdx), %rdx	# *f_6(D), D.15780
	movl	16(%rdx), %edx	# _59->flags, D.15782
	orl	$262144, %edx	#, D.15782
	movl	%edx, 16(%rax)	# D.15782, _58->flags
	.loc 1 3615 0
	movl	$0, %eax	#, D.15779
.L737:
	.loc 1 3616 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	PerlIOBuf_fill, .-PerlIOBuf_fill
	.globl	PerlIOBuf_read
	.type	PerlIOBuf_read, @function
PerlIOBuf_read:
.LFB129:
	.loc 1 3620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# vbuf, vbuf
	movq	%rdx, -40(%rbp)	# count, count
	.loc 1 3621 0
	movq	-24(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_2(D), tmp64
	movq	%rax, -8(%rbp)	# tmp64, b
	.loc 1 3622 0
	cmpq	$0, -24(%rbp)	#, f
	je	.L752	#,
	.loc 1 3622 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_2(D), D.15788
	testq	%rax, %rax	# D.15788
	je	.L752	#,
	.loc 1 3623 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp66
	movq	40(%rax), %rax	# b_3->ptr, D.15789
	testq	%rax, %rax	# D.15789
	jne	.L753	#,
	.loc 1 3624 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_PerlIO_get_base	#
.L753:
	.loc 1 3625 0
	movq	-40(%rbp), %rdx	# count, tmp68
	movq	-32(%rbp), %rcx	# vbuf, tmp69
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	PerlIOBase_read	#
	jmp	.L754	#
.L752:
	.loc 1 3627 0
	movl	$0, %eax	#, D.15787
.L754:
	.loc 1 3628 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	PerlIOBuf_read, .-PerlIOBuf_read
	.globl	PerlIOBuf_unread
	.type	PerlIOBuf_unread, @function
PerlIOBuf_unread:
.LFB130:
	.loc 1 3632 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# vbuf, vbuf
	movq	%rdx, -56(%rbp)	# count, count
	.loc 1 3633 0
	movq	-56(%rbp), %rax	# count, tmp107
	movq	-48(%rbp), %rdx	# vbuf, tmp108
	addq	%rdx, %rax	# tmp108, tmp106
	movq	%rax, -16(%rbp)	# tmp106, buf
	.loc 1 3634 0
	movq	-40(%rbp), %rax	# f, tmp109
	movq	(%rax), %rax	# *f_9(D), tmp110
	movq	%rax, -8(%rbp)	# tmp110, b
	.loc 1 3635 0
	movq	$0, -32(%rbp)	#, unread
	.loc 1 3637 0
	movq	-40(%rbp), %rax	# f, tmp111
	movq	(%rax), %rax	# *f_9(D), D.15790
	movl	16(%rax), %eax	# _12->flags, D.15791
	andl	$131072, %eax	#, D.15791
	testl	%eax, %eax	# D.15791
	je	.L756	#,
	.loc 1 3638 0
	movq	-40(%rbp), %rax	# f, tmp112
	movq	%rax, %rdi	# tmp112,
	call	Perl_PerlIO_flush	#
.L756:
	.loc 1 3639 0
	movq	-8(%rbp), %rax	# b, tmp113
	movq	24(%rax), %rax	# b_10->buf, D.15792
	testq	%rax, %rax	# D.15792
	jne	.L757	#,
	.loc 1 3640 0
	movq	-40(%rbp), %rax	# f, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_PerlIO_get_base	#
.L757:
	.loc 1 3641 0
	movq	-8(%rbp), %rax	# b, tmp115
	movq	24(%rax), %rax	# b_10->buf, D.15792
	testq	%rax, %rax	# D.15792
	je	.L758	#,
	.loc 1 3642 0
	movq	-40(%rbp), %rax	# f, tmp116
	movq	(%rax), %rax	# *f_9(D), D.15790
	movl	16(%rax), %eax	# _17->flags, D.15791
	andl	$262144, %eax	#, D.15791
	testl	%eax, %eax	# D.15791
	je	.L759	#,
	.loc 1 3647 0
	movq	-8(%rbp), %rax	# b, tmp117
	movq	40(%rax), %rax	# b_10->ptr, D.15792
	movq	%rax, %rdx	# D.15792, D.15793
	movq	-8(%rbp), %rax	# b, tmp118
	movq	24(%rax), %rax	# b_10->buf, D.15792
	subq	%rax, %rdx	# D.15793, tmp119
	movq	%rdx, %rax	# tmp119, tmp119
	movq	%rax, -24(%rbp)	# tmp119, avail
	jmp	.L760	#
.L759:
	.loc 1 3654 0
	movq	-8(%rbp), %rax	# b, tmp120
	movq	56(%rax), %rax	# b_10->bufsiz, D.15794
	movq	%rax, -24(%rbp)	# D.15794, avail
	.loc 1 3655 0
	movq	-8(%rbp), %rax	# b, tmp121
	movq	24(%rax), %rdx	# b_10->buf, D.15792
	movq	-24(%rbp), %rax	# avail, avail.213
	addq	%rax, %rdx	# avail.213, D.15792
	movq	-8(%rbp), %rax	# b, tmp122
	movq	%rdx, 32(%rax)	# D.15792, b_10->end
	.loc 1 3656 0
	movq	-8(%rbp), %rax	# b, tmp123
	movq	32(%rax), %rdx	# b_10->end, D.15792
	movq	-8(%rbp), %rax	# b, tmp124
	movq	%rdx, 40(%rax)	# D.15792, b_10->ptr
	.loc 1 3657 0
	movq	-40(%rbp), %rax	# f, tmp125
	movq	(%rax), %rax	# *f_9(D), D.15790
	movq	-40(%rbp), %rdx	# f, tmp126
	movq	(%rdx), %rdx	# *f_9(D), D.15790
	movl	16(%rdx), %edx	# _32->flags, D.15791
	orl	$262144, %edx	#, D.15791
	movl	%edx, 16(%rax)	# D.15791, _31->flags
	.loc 1 3661 0
	movq	-8(%rbp), %rax	# b, tmp127
	movq	48(%rax), %rax	# b_10->posn, D.15793
	movq	%rax, %rdx	# D.15793, D.15794
	movq	-8(%rbp), %rax	# b, tmp128
	movq	56(%rax), %rax	# b_10->bufsiz, D.15794
	subq	%rax, %rdx	# D.15794, D.15794
	movq	%rdx, %rax	# D.15794, D.15794
	movq	%rax, %rdx	# D.15794, D.15793
	movq	-8(%rbp), %rax	# b, tmp129
	movq	%rdx, 48(%rax)	# D.15793, b_10->posn
.L760:
	.loc 1 3663 0
	movq	-56(%rbp), %rax	# count, count.214
	cmpq	-24(%rbp), %rax	# avail, count.214
	jge	.L761	#,
	.loc 1 3667 0
	movq	-56(%rbp), %rax	# count, tmp130
	movq	%rax, -24(%rbp)	# tmp130, avail
.L761:
	.loc 1 3669 0
	cmpq	$0, -24(%rbp)	#, avail
	jle	.L758	#,
	.loc 1 3670 0
	movq	-8(%rbp), %rax	# b, tmp131
	movq	40(%rax), %rax	# b_10->ptr, D.15792
	movq	-24(%rbp), %rdx	# avail, avail.215
	negq	%rdx	# D.15795
	addq	%rax, %rdx	# D.15792, D.15792
	movq	-8(%rbp), %rax	# b, tmp132
	movq	%rdx, 40(%rax)	# D.15792, b_10->ptr
	.loc 1 3671 0
	movq	-24(%rbp), %rax	# avail, avail.216
	negq	%rax	# D.15795
	addq	%rax, -16(%rbp)	# D.15795, buf
	.loc 1 3676 0
	movq	-8(%rbp), %rax	# b, tmp133
	movq	40(%rax), %rax	# b_10->ptr, D.15792
	cmpq	-16(%rbp), %rax	# buf, D.15792
	je	.L762	#,
	.loc 1 3677 0
	movq	-24(%rbp), %rdx	# avail, avail.217
	movq	-8(%rbp), %rax	# b, tmp134
	movq	40(%rax), %rax	# b_10->ptr, D.15792
	movq	-16(%rbp), %rcx	# buf, tmp135
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.15792,
	call	memcpy	#
.L762:
	.loc 1 3679 0
	movq	-24(%rbp), %rax	# avail, avail.218
	subq	%rax, -56(%rbp)	# avail.218, count
	.loc 1 3680 0
	movq	-24(%rbp), %rax	# avail, tmp136
	addq	%rax, -32(%rbp)	# tmp136, unread
	.loc 1 3681 0
	movq	-40(%rbp), %rax	# f, tmp137
	movq	(%rax), %rax	# *f_9(D), D.15790
	movq	-40(%rbp), %rdx	# f, tmp138
	movq	(%rdx), %rdx	# *f_9(D), D.15790
	movl	16(%rdx), %edx	# _56->flags, D.15791
	andb	$254, %dh	#, D.15791
	movl	%edx, 16(%rax)	# D.15791, _55->flags
.L758:
	.loc 1 3684 0
	cmpq	$0, -56(%rbp)	#, count
	je	.L763	#,
	.loc 1 3685 0
	movq	-56(%rbp), %rdx	# count, tmp139
	movq	-48(%rbp), %rcx	# vbuf, tmp140
	movq	-40(%rbp), %rax	# f, tmp141
	movq	%rcx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp141,
	call	PerlIOBase_unread	#
	addq	%rax, -32(%rbp)	# D.15793, unread
.L763:
	.loc 1 3687 0
	movq	-32(%rbp), %rax	# unread, D.15796
	.loc 1 3688 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	PerlIOBuf_unread, .-PerlIOBuf_unread
	.globl	PerlIOBuf_write
	.type	PerlIOBuf_write, @function
PerlIOBuf_write:
.LFB131:
	.loc 1 3692 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	movq	%rsi, -64(%rbp)	# vbuf, vbuf
	movq	%rdx, -72(%rbp)	# count, count
	.loc 1 3693 0
	movq	-56(%rbp), %rax	# f, tmp106
	movq	(%rax), %rax	# *f_12(D), tmp107
	movq	%rax, -8(%rbp)	# tmp107, b
	.loc 1 3694 0
	movq	-64(%rbp), %rax	# vbuf, tmp108
	movq	%rax, -40(%rbp)	# tmp108, buf
	.loc 1 3695 0
	movq	-40(%rbp), %rax	# buf, tmp109
	movq	%rax, -32(%rbp)	# tmp109, flushptr
	.loc 1 3696 0
	movq	$0, -24(%rbp)	#, written
	.loc 1 3697 0
	movq	-8(%rbp), %rax	# b, tmp110
	movq	24(%rax), %rax	# b_13->buf, D.15798
	testq	%rax, %rax	# D.15798
	jne	.L766	#,
	.loc 1 3698 0
	movq	-56(%rbp), %rax	# f, tmp111
	movq	%rax, %rdi	# tmp111,
	call	Perl_PerlIO_get_base	#
.L766:
	.loc 1 3699 0
	movq	-56(%rbp), %rax	# f, tmp112
	movq	(%rax), %rax	# *f_12(D), D.15799
	movl	16(%rax), %eax	# _19->flags, D.15800
	andl	$512, %eax	#, D.15800
	testl	%eax, %eax	# D.15800
	jne	.L767	#,
	.loc 1 3700 0
	movl	$0, %eax	#, D.15797
	jmp	.L768	#
.L767:
	.loc 1 3701 0
	movq	-56(%rbp), %rax	# f, tmp113
	movq	(%rax), %rax	# *f_12(D), D.15799
	movl	16(%rax), %eax	# _23->flags, D.15800
	andl	$262144, %eax	#, D.15800
	testl	%eax, %eax	# D.15800
	je	.L769	#,
	.loc 1 3702 0
	movq	-56(%rbp), %rax	# f, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_PerlIO_flush	#
	testl	%eax, %eax	# D.15801
	je	.L769	#,
	.loc 1 3703 0
	movl	$0, %eax	#, D.15797
	jmp	.L768	#
.L769:
	.loc 1 3706 0
	movq	-56(%rbp), %rax	# f, tmp115
	movq	(%rax), %rax	# *f_12(D), D.15799
	movl	16(%rax), %eax	# _28->flags, D.15800
	andl	$524288, %eax	#, D.15800
	testl	%eax, %eax	# D.15800
	je	.L770	#,
	.loc 1 3707 0
	movq	-72(%rbp), %rax	# count, tmp120
	movq	-40(%rbp), %rdx	# buf, tmp121
	addq	%rdx, %rax	# tmp121, tmp119
	movq	%rax, -32(%rbp)	# tmp119, flushptr
	.loc 1 3708 0
	jmp	.L771	#
.L772:
	.loc 1 3709 0
	subq	$1, -32(%rbp)	#, flushptr
.L771:
	.loc 1 3708 0 discriminator 1
	movq	-32(%rbp), %rax	# flushptr, tmp122
	cmpq	-40(%rbp), %rax	# buf, tmp122
	jbe	.L770	#,
	.loc 1 3708 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# flushptr, tmp123
	subq	$1, %rax	#, D.15802
	movzbl	(%rax), %eax	# *_33, D.15803
	cmpb	$10, %al	#, D.15803
	jne	.L772	#,
.L770:
	.loc 1 3711 0 is_stmt 1
	jmp	.L773	#
.L777:
.LBB109:
	.loc 1 3712 0
	movq	-8(%rbp), %rax	# b, tmp124
	movq	56(%rax), %rdx	# b_13->bufsiz, D.15804
	movq	-8(%rbp), %rax	# b, tmp125
	movq	24(%rax), %rax	# b_13->buf, D.15798
	movq	%rax, %rcx	# D.15798, D.15805
	movq	-8(%rbp), %rax	# b, tmp126
	movq	40(%rax), %rax	# b_13->ptr, D.15798
	subq	%rax, %rcx	# D.15805, D.15805
	movq	%rcx, %rax	# D.15805, D.15805
	addq	%rdx, %rax	# D.15804, D.15804
	movq	%rax, -16(%rbp)	# D.15804, avail
	.loc 1 3713 0
	movq	-72(%rbp), %rax	# count, count.219
	cmpq	-16(%rbp), %rax	# avail, count.219
	jge	.L774	#,
	.loc 1 3714 0
	movq	-72(%rbp), %rax	# count, tmp127
	movq	%rax, -16(%rbp)	# tmp127, avail
.L774:
	.loc 1 3715 0
	movq	-32(%rbp), %rax	# flushptr, tmp128
	cmpq	-40(%rbp), %rax	# buf, tmp128
	jbe	.L775	#,
	.loc 1 3715 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# avail, avail.220
	movq	-40(%rbp), %rax	# buf, tmp129
	addq	%rdx, %rax	# avail.220, D.15802
	cmpq	-32(%rbp), %rax	# flushptr, D.15802
	jb	.L775	#,
	.loc 1 3716 0 is_stmt 1
	movq	-32(%rbp), %rdx	# flushptr, flushptr.221
	movq	-40(%rbp), %rax	# buf, buf.222
	subq	%rax, %rdx	# buf.222, tmp130
	movq	%rdx, %rax	# tmp130, tmp130
	movq	%rax, -16(%rbp)	# tmp130, avail
.L775:
	.loc 1 3717 0
	movq	-56(%rbp), %rax	# f, tmp131
	movq	(%rax), %rax	# *f_12(D), D.15799
	movq	-56(%rbp), %rdx	# f, tmp132
	movq	(%rdx), %rdx	# *f_12(D), D.15799
	movl	16(%rdx), %edx	# _53->flags, D.15800
	orl	$131072, %edx	#, D.15800
	movl	%edx, 16(%rax)	# D.15800, _52->flags
	.loc 1 3718 0
	cmpq	$0, -16(%rbp)	#, avail
	je	.L776	#,
	.loc 1 3719 0
	movq	-16(%rbp), %rdx	# avail, avail.223
	movq	-8(%rbp), %rax	# b, tmp133
	movq	40(%rax), %rax	# b_13->ptr, D.15798
	movq	-40(%rbp), %rcx	# buf, tmp134
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# D.15798,
	call	memcpy	#
	.loc 1 3720 0
	movq	-16(%rbp), %rax	# avail, avail.224
	subq	%rax, -72(%rbp)	# avail.224, count
	.loc 1 3721 0
	movq	-16(%rbp), %rax	# avail, avail.225
	addq	%rax, -40(%rbp)	# avail.225, buf
	.loc 1 3722 0
	movq	-16(%rbp), %rax	# avail, avail.226
	addq	%rax, -24(%rbp)	# avail.226, written
	.loc 1 3723 0
	movq	-8(%rbp), %rax	# b, tmp135
	movq	40(%rax), %rdx	# b_13->ptr, D.15798
	movq	-16(%rbp), %rax	# avail, avail.227
	addq	%rax, %rdx	# avail.227, D.15798
	movq	-8(%rbp), %rax	# b, tmp136
	movq	%rdx, 40(%rax)	# D.15798, b_13->ptr
	.loc 1 3724 0
	movq	-40(%rbp), %rax	# buf, tmp137
	cmpq	-32(%rbp), %rax	# flushptr, tmp137
	jne	.L776	#,
	.loc 1 3725 0
	movq	-56(%rbp), %rax	# f, tmp138
	movq	%rax, %rdi	# tmp138,
	call	Perl_PerlIO_flush	#
.L776:
	.loc 1 3727 0
	movq	-8(%rbp), %rax	# b, tmp139
	movq	40(%rax), %rdx	# b_13->ptr, D.15798
	movq	-8(%rbp), %rax	# b, tmp140
	movq	24(%rax), %rcx	# b_13->buf, D.15798
	movq	-8(%rbp), %rax	# b, tmp141
	movq	56(%rax), %rax	# b_13->bufsiz, D.15804
	addq	%rcx, %rax	# D.15798, D.15798
	cmpq	%rax, %rdx	# D.15798, D.15798
	jb	.L773	#,
	.loc 1 3728 0
	movq	-56(%rbp), %rax	# f, tmp142
	movq	%rax, %rdi	# tmp142,
	call	Perl_PerlIO_flush	#
.L773:
.LBE109:
	.loc 1 3711 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, count
	jne	.L777	#,
	.loc 1 3730 0
	movq	-56(%rbp), %rax	# f, tmp143
	movq	(%rax), %rax	# *f_12(D), D.15799
	movl	16(%rax), %eax	# _71->flags, D.15800
	andl	$65536, %eax	#, D.15800
	testl	%eax, %eax	# D.15800
	je	.L778	#,
	.loc 1 3731 0
	movq	-56(%rbp), %rax	# f, tmp144
	movq	%rax, %rdi	# tmp144,
	call	Perl_PerlIO_flush	#
.L778:
	.loc 1 3732 0
	movq	-24(%rbp), %rax	# written, D.15797
.L768:
	.loc 1 3733 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	PerlIOBuf_write, .-PerlIOBuf_write
	.globl	PerlIOBuf_seek
	.type	PerlIOBuf_seek, @function
PerlIOBuf_seek:
.LFB132:
	.loc 1 3737 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# offset, offset
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 3739 0
	movq	-24(%rbp), %rax	# f, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_PerlIO_flush	#
	cltq
	movq	%rax, -16(%rbp)	# tmp73, code
	cmpq	$0, -16(%rbp)	#, code
	jne	.L780	#,
.LBB110:
	.loc 1 3740 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	(%rax), %rax	# *f_2(D), tmp75
	movq	%rax, -8(%rbp)	# tmp75, b
	.loc 1 3741 0
	movq	-24(%rbp), %rax	# f, tmp76
	movq	(%rax), %rax	# *f_2(D), D.15807
	movq	-24(%rbp), %rdx	# f, tmp77
	movq	(%rdx), %rdx	# *f_2(D), D.15807
	movl	16(%rdx), %edx	# _7->flags, D.15808
	andb	$254, %dh	#, D.15808
	movl	%edx, 16(%rax)	# D.15808, _6->flags
	.loc 1 3742 0
	movq	-24(%rbp), %rax	# f, tmp78
	movq	(%rax), %rax	# *f_2(D), D.15807
	movl	-36(%rbp), %edx	# whence, tmp79
	movq	-32(%rbp), %rcx	# offset, tmp80
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# D.15809,
	call	Perl_PerlIO_seek	#
	cltq
	movq	%rax, -16(%rbp)	# tmp81, code
	.loc 1 3743 0
	cmpq	$0, -16(%rbp)	#, code
	jne	.L780	#,
	.loc 1 3744 0
	movq	-24(%rbp), %rax	# f, tmp82
	movq	(%rax), %rax	# *f_2(D), D.15807
	movq	%rax, %rdi	# D.15809,
	call	Perl_PerlIO_tell	#
	movq	-8(%rbp), %rdx	# b, tmp83
	movq	%rax, 48(%rdx)	# D.15810, b_5->posn
.L780:
.LBE110:
	.loc 1 3747 0
	movq	-16(%rbp), %rax	# code, D.15811
	.loc 1 3748 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	PerlIOBuf_seek, .-PerlIOBuf_seek
	.globl	PerlIOBuf_tell
	.type	PerlIOBuf_tell, @function
PerlIOBuf_tell:
.LFB133:
	.loc 1 3752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3753 0
	movq	-24(%rbp), %rax	# f, tmp76
	movq	(%rax), %rax	# *f_3(D), tmp77
	movq	%rax, -8(%rbp)	# tmp77, b
	.loc 1 3757 0
	movq	-8(%rbp), %rax	# b, tmp78
	movq	48(%rax), %rax	# b_4->posn, tmp79
	movq	%rax, -16(%rbp)	# tmp79, posn
	.loc 1 3758 0
	movq	-24(%rbp), %rax	# f, tmp80
	movq	(%rax), %rax	# *f_3(D), D.15812
	movl	16(%rax), %eax	# _6->flags, D.15813
	andl	$8192, %eax	#, D.15813
	testl	%eax, %eax	# D.15813
	je	.L783	#,
	.loc 1 3759 0 discriminator 1
	movq	-24(%rbp), %rax	# f, tmp81
	movq	(%rax), %rax	# *f_3(D), D.15812
	movl	16(%rax), %eax	# _9->flags, D.15813
	andl	$131072, %eax	#, D.15813
	.loc 1 3758 0 discriminator 1
	testl	%eax, %eax	# D.15813
	je	.L783	#,
	.loc 1 3764 0
	movq	-24(%rbp), %rax	# f, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_PerlIO_flush	#
	.loc 1 3769 0
	movq	-24(%rbp), %rax	# f, tmp83
	movq	(%rax), %rax	# *f_3(D), D.15812
	movq	%rax, %rdi	# D.15814,
	call	Perl_PerlIO_tell	#
	movq	-8(%rbp), %rdx	# b, tmp84
	movq	%rax, 48(%rdx)	# D.15815, b_4->posn
	movq	-8(%rbp), %rax	# b, tmp85
	movq	48(%rax), %rax	# b_4->posn, tmp86
	movq	%rax, -16(%rbp)	# tmp86, posn
.L783:
	.loc 1 3771 0
	movq	-8(%rbp), %rax	# b, tmp87
	movq	24(%rax), %rax	# b_4->buf, D.15816
	testq	%rax, %rax	# D.15816
	je	.L784	#,
	.loc 1 3775 0
	movq	-8(%rbp), %rax	# b, tmp88
	movq	40(%rax), %rax	# b_4->ptr, D.15816
	movq	%rax, %rdx	# D.15816, D.15815
	movq	-8(%rbp), %rax	# b, tmp89
	movq	24(%rax), %rax	# b_4->buf, D.15816
	subq	%rax, %rdx	# D.15815, D.15815
	movq	%rdx, %rax	# D.15815, D.15815
	addq	%rax, -16(%rbp)	# D.15815, posn
.L784:
	.loc 1 3777 0
	movq	-16(%rbp), %rax	# posn, D.15817
	.loc 1 3778 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	PerlIOBuf_tell, .-PerlIOBuf_tell
	.globl	PerlIOBuf_popped
	.type	PerlIOBuf_popped, @function
PerlIOBuf_popped:
.LFB134:
	.loc 1 3782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3783 0
	movq	-24(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIOBase_popped	#
	movq	%rax, -16(%rbp)	# tmp72, code
	.loc 1 3784 0
	movq	-24(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_1(D), tmp74
	movq	%rax, -8(%rbp)	# tmp74, b
	.loc 1 3785 0
	movq	-8(%rbp), %rax	# b, tmp75
	movq	24(%rax), %rax	# b_3->buf, D.15818
	testq	%rax, %rax	# D.15818
	je	.L787	#,
	.loc 1 3785 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# b, tmp76
	movq	24(%rax), %rax	# b_3->buf, D.15818
	movq	-8(%rbp), %rdx	# b, tmp77
	addq	$64, %rdx	#, D.15819
	cmpq	%rdx, %rax	# D.15819, D.15818
	je	.L787	#,
	.loc 1 3786 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp78
	movq	24(%rax), %rax	# b_3->buf, D.15818
	movq	%rax, %rdi	# D.15818,
	call	Perl_safesysfree	#
.L787:
	.loc 1 3788 0
	movq	-8(%rbp), %rax	# b, tmp79
	movq	$0, 24(%rax)	#, b_3->buf
	.loc 1 3789 0
	movq	-8(%rbp), %rax	# b, tmp80
	movq	24(%rax), %rdx	# b_3->buf, D.15818
	movq	-8(%rbp), %rax	# b, tmp81
	movq	%rdx, 32(%rax)	# D.15818, b_3->end
	movq	-8(%rbp), %rax	# b, tmp82
	movq	32(%rax), %rdx	# b_3->end, D.15818
	movq	-8(%rbp), %rax	# b, tmp83
	movq	%rdx, 40(%rax)	# D.15818, b_3->ptr
	.loc 1 3790 0
	movq	-24(%rbp), %rax	# f, tmp84
	movq	(%rax), %rax	# *f_1(D), D.15820
	movq	-24(%rbp), %rdx	# f, tmp85
	movq	(%rdx), %rdx	# *f_1(D), D.15820
	movl	16(%rdx), %edx	# _11->flags, D.15821
	andl	$-393217, %edx	#, D.15821
	movl	%edx, 16(%rax)	# D.15821, _10->flags
	.loc 1 3791 0
	movq	-16(%rbp), %rax	# code, D.15822
	.loc 1 3792 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	PerlIOBuf_popped, .-PerlIOBuf_popped
	.globl	PerlIOBuf_close
	.type	PerlIOBuf_close, @function
PerlIOBuf_close:
.LFB135:
	.loc 1 3796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3797 0
	movq	-24(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIOBase_close	#
	movq	%rax, -16(%rbp)	# tmp72, code
	.loc 1 3798 0
	movq	-24(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_1(D), tmp74
	movq	%rax, -8(%rbp)	# tmp74, b
	.loc 1 3799 0
	movq	-8(%rbp), %rax	# b, tmp75
	movq	24(%rax), %rax	# b_3->buf, D.15823
	testq	%rax, %rax	# D.15823
	je	.L790	#,
	.loc 1 3799 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# b, tmp76
	movq	24(%rax), %rax	# b_3->buf, D.15823
	movq	-8(%rbp), %rdx	# b, tmp77
	addq	$64, %rdx	#, D.15824
	cmpq	%rdx, %rax	# D.15824, D.15823
	je	.L790	#,
	.loc 1 3800 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp78
	movq	24(%rax), %rax	# b_3->buf, D.15823
	movq	%rax, %rdi	# D.15823,
	call	Perl_safesysfree	#
.L790:
	.loc 1 3802 0
	movq	-8(%rbp), %rax	# b, tmp79
	movq	$0, 24(%rax)	#, b_3->buf
	.loc 1 3803 0
	movq	-8(%rbp), %rax	# b, tmp80
	movq	24(%rax), %rdx	# b_3->buf, D.15823
	movq	-8(%rbp), %rax	# b, tmp81
	movq	%rdx, 32(%rax)	# D.15823, b_3->end
	movq	-8(%rbp), %rax	# b, tmp82
	movq	32(%rax), %rdx	# b_3->end, D.15823
	movq	-8(%rbp), %rax	# b, tmp83
	movq	%rdx, 40(%rax)	# D.15823, b_3->ptr
	.loc 1 3804 0
	movq	-24(%rbp), %rax	# f, tmp84
	movq	(%rax), %rax	# *f_1(D), D.15825
	movq	-24(%rbp), %rdx	# f, tmp85
	movq	(%rdx), %rdx	# *f_1(D), D.15825
	movl	16(%rdx), %edx	# _11->flags, D.15826
	andl	$-393217, %edx	#, D.15826
	movl	%edx, 16(%rax)	# D.15826, _10->flags
	.loc 1 3805 0
	movq	-16(%rbp), %rax	# code, D.15827
	.loc 1 3806 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	PerlIOBuf_close, .-PerlIOBuf_close
	.globl	PerlIOBuf_get_ptr
	.type	PerlIOBuf_get_ptr, @function
PerlIOBuf_get_ptr:
.LFB136:
	.loc 1 3810 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3811 0
	movq	-24(%rbp), %rax	# f, tmp62
	movq	(%rax), %rax	# *f_1(D), tmp63
	movq	%rax, -8(%rbp)	# tmp63, b
	.loc 1 3812 0
	movq	-8(%rbp), %rax	# b, tmp64
	movq	24(%rax), %rax	# b_2->buf, D.15828
	testq	%rax, %rax	# D.15828
	jne	.L793	#,
	.loc 1 3813 0
	movq	-24(%rbp), %rax	# f, tmp65
	movq	%rax, %rdi	# tmp65,
	call	Perl_PerlIO_get_base	#
.L793:
	.loc 1 3814 0
	movq	-8(%rbp), %rax	# b, tmp66
	movq	40(%rax), %rax	# b_2->ptr, D.15828
	.loc 1 3815 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	PerlIOBuf_get_ptr, .-PerlIOBuf_get_ptr
	.globl	PerlIOBuf_get_cnt
	.type	PerlIOBuf_get_cnt, @function
PerlIOBuf_get_cnt:
.LFB137:
	.loc 1 3819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3820 0
	movq	-24(%rbp), %rax	# f, tmp69
	movq	(%rax), %rax	# *f_2(D), tmp70
	movq	%rax, -8(%rbp)	# tmp70, b
	.loc 1 3821 0
	movq	-8(%rbp), %rax	# b, tmp71
	movq	24(%rax), %rax	# b_3->buf, D.15830
	testq	%rax, %rax	# D.15830
	jne	.L796	#,
	.loc 1 3822 0
	movq	-24(%rbp), %rax	# f, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_PerlIO_get_base	#
.L796:
	.loc 1 3823 0
	movq	-24(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_2(D), D.15831
	movl	16(%rax), %eax	# _5->flags, D.15832
	andl	$262144, %eax	#, D.15832
	testl	%eax, %eax	# D.15832
	je	.L797	#,
	.loc 1 3824 0
	movq	-8(%rbp), %rax	# b, tmp74
	movq	32(%rax), %rax	# b_3->end, D.15830
	movq	%rax, %rdx	# D.15830, D.15833
	movq	-8(%rbp), %rax	# b, tmp75
	movq	40(%rax), %rax	# b_3->ptr, D.15830
	subq	%rax, %rdx	# D.15833, D.15829
	movq	%rdx, %rax	# D.15829, D.15829
	jmp	.L798	#
.L797:
	.loc 1 3825 0
	movl	$0, %eax	#, D.15829
.L798:
	.loc 1 3826 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	PerlIOBuf_get_cnt, .-PerlIOBuf_get_cnt
	.globl	PerlIOBuf_get_base
	.type	PerlIOBuf_get_base, @function
PerlIOBuf_get_base:
.LFB138:
	.loc 1 3830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3831 0
	movq	-24(%rbp), %rax	# f, tmp72
	movq	(%rax), %rax	# *f_1(D), tmp73
	movq	%rax, -8(%rbp)	# tmp73, b
	.loc 1 3832 0
	movq	-8(%rbp), %rax	# b, tmp74
	movq	24(%rax), %rax	# b_2->buf, D.15834
	testq	%rax, %rax	# D.15834
	jne	.L800	#,
	.loc 1 3833 0
	movq	-8(%rbp), %rax	# b, tmp75
	movq	56(%rax), %rax	# b_2->bufsiz, D.15835
	testq	%rax, %rax	# D.15835
	jne	.L801	#,
	.loc 1 3834 0
	movq	-8(%rbp), %rax	# b, tmp76
	movq	$4096, 56(%rax)	#, b_2->bufsiz
.L801:
	.loc 1 3836 0
	movq	-8(%rbp), %rax	# b, tmp77
	movq	56(%rax), %rax	# b_2->bufsiz, D.15835
	movq	%rax, %rdi	# D.15835,
	call	Perl_safesysmalloc	#
	movq	-8(%rbp), %rdx	# b, tmp78
	movq	%rax, 24(%rdx)	# D.15836, b_2->buf
	movq	-8(%rbp), %rax	# b, tmp79
	movq	24(%rax), %rdx	# b_2->buf, D.15834
	.loc 1 3835 0
	movq	-8(%rbp), %rax	# b, tmp80
	movq	%rdx, 24(%rax)	# D.15834, b_2->buf
	.loc 1 3836 0
	movq	-8(%rbp), %rax	# b, tmp81
	movq	56(%rax), %rdx	# b_2->bufsiz, D.15835
	movq	-8(%rbp), %rax	# b, tmp82
	movq	24(%rax), %rax	# b_2->buf, D.15834
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15834,
	call	memset	#
	.loc 1 3837 0
	movq	-8(%rbp), %rax	# b, tmp83
	movq	24(%rax), %rax	# b_2->buf, D.15834
	testq	%rax, %rax	# D.15834
	jne	.L802	#,
	.loc 1 3838 0
	movq	-8(%rbp), %rax	# b, tmp84
	leaq	64(%rax), %rdx	#, D.15837
	movq	-8(%rbp), %rax	# b, tmp85
	movq	%rdx, 24(%rax)	# D.15837, b_2->buf
	.loc 1 3839 0
	movq	-8(%rbp), %rax	# b, tmp86
	movq	$8, 56(%rax)	#, b_2->bufsiz
.L802:
	.loc 1 3841 0
	movq	-8(%rbp), %rax	# b, tmp87
	movq	24(%rax), %rdx	# b_2->buf, D.15834
	movq	-8(%rbp), %rax	# b, tmp88
	movq	%rdx, 40(%rax)	# D.15834, b_2->ptr
	.loc 1 3842 0
	movq	-8(%rbp), %rax	# b, tmp89
	movq	40(%rax), %rdx	# b_2->ptr, D.15834
	movq	-8(%rbp), %rax	# b, tmp90
	movq	%rdx, 32(%rax)	# D.15834, b_2->end
.L800:
	.loc 1 3844 0
	movq	-8(%rbp), %rax	# b, tmp91
	movq	24(%rax), %rax	# b_2->buf, D.15834
	.loc 1 3845 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	PerlIOBuf_get_base, .-PerlIOBuf_get_base
	.globl	PerlIOBuf_bufsiz
	.type	PerlIOBuf_bufsiz, @function
PerlIOBuf_bufsiz:
.LFB139:
	.loc 1 3849 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3850 0
	movq	-24(%rbp), %rax	# f, tmp67
	movq	(%rax), %rax	# *f_1(D), tmp68
	movq	%rax, -8(%rbp)	# tmp68, b
	.loc 1 3851 0
	movq	-8(%rbp), %rax	# b, tmp69
	movq	24(%rax), %rax	# b_2->buf, D.15838
	testq	%rax, %rax	# D.15838
	jne	.L805	#,
	.loc 1 3852 0
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, %rdi	# tmp70,
	call	Perl_PerlIO_get_base	#
.L805:
	.loc 1 3853 0
	movq	-8(%rbp), %rax	# b, tmp71
	movq	32(%rax), %rax	# b_2->end, D.15838
	movq	%rax, %rdx	# D.15838, D.15839
	movq	-8(%rbp), %rax	# b, tmp72
	movq	24(%rax), %rax	# b_2->buf, D.15838
	subq	%rax, %rdx	# D.15839, D.15839
	movq	%rdx, %rax	# D.15839, D.15839
	.loc 1 3854 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	PerlIOBuf_bufsiz, .-PerlIOBuf_bufsiz
	.globl	PerlIOBuf_set_ptrcnt
	.type	PerlIOBuf_set_ptrcnt, @function
PerlIOBuf_set_ptrcnt:
.LFB140:
	.loc 1 3858 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# ptr, ptr
	movq	%rdx, -40(%rbp)	# cnt, cnt
	.loc 1 3859 0
	movq	-24(%rbp), %rax	# f, tmp68
	movq	(%rax), %rax	# *f_1(D), tmp69
	movq	%rax, -8(%rbp)	# tmp69, b
	.loc 1 3860 0
	movq	-8(%rbp), %rax	# b, tmp70
	movq	24(%rax), %rax	# b_2->buf, D.15841
	testq	%rax, %rax	# D.15841
	jne	.L808	#,
	.loc 1 3861 0
	movq	-24(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	Perl_PerlIO_get_base	#
.L808:
	.loc 1 3862 0
	movq	-8(%rbp), %rax	# b, tmp72
	movq	-32(%rbp), %rdx	# ptr, tmp73
	movq	%rdx, 40(%rax)	# tmp73, b_2->ptr
	.loc 1 3863 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	Perl_PerlIO_get_cnt	#
	cltq
	cmpq	-40(%rbp), %rax	# cnt, D.15843
	.loc 1 3867 0
	movq	-24(%rbp), %rax	# f, tmp77
	movq	(%rax), %rax	# *f_1(D), D.15844
	movq	-24(%rbp), %rdx	# f, tmp78
	movq	(%rdx), %rdx	# *f_1(D), D.15844
	movl	16(%rdx), %edx	# _11->flags, D.15845
	orl	$262144, %edx	#, D.15845
	movl	%edx, 16(%rax)	# D.15845, _10->flags
	.loc 1 3868 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	PerlIOBuf_set_ptrcnt, .-PerlIOBuf_set_ptrcnt
	.globl	PerlIOBuf_dup
	.type	PerlIOBuf_dup, @function
PerlIOBuf_dup:
.LFB141:
	.loc 1 3872 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# o, o
	movq	%rdx, -24(%rbp)	# param, param
	movl	%ecx, -28(%rbp)	# flags, flags
	.loc 1 3873 0
	movl	-28(%rbp), %ecx	# flags, tmp61
	movq	-24(%rbp), %rdx	# param, tmp62
	movq	-16(%rbp), %rsi	# o, tmp63
	movq	-8(%rbp), %rax	# f, tmp64
	movq	%rax, %rdi	# tmp64,
	call	PerlIOBase_dup	#
	.loc 1 3874 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	PerlIOBuf_dup, .-PerlIOBuf_dup
	.globl	PerlIO_perlio
	.section	.rodata
.LC48:
	.string	"perlio"
	.data
	.align 32
	.type	PerlIO_perlio, @object
	.size	PerlIO_perlio, 224
PerlIO_perlio:
# fsize:
	.quad	224
# name:
	.quad	.LC48
# size:
	.quad	72
# kind:
	.long	3
# Pushed:
	.zero	4
	.quad	PerlIOBuf_pushed
# Popped:
	.quad	PerlIOBuf_popped
# Open:
	.quad	PerlIOBuf_open
# Binmode:
	.quad	PerlIOBase_binmode
# Getarg:
	.quad	0
# Fileno:
	.quad	PerlIOBase_fileno
# Dup:
	.quad	PerlIOBuf_dup
# Read:
	.quad	PerlIOBuf_read
# Unread:
	.quad	PerlIOBuf_unread
# Write:
	.quad	PerlIOBuf_write
# Seek:
	.quad	PerlIOBuf_seek
# Tell:
	.quad	PerlIOBuf_tell
# Close:
	.quad	PerlIOBuf_close
# Flush:
	.quad	PerlIOBuf_flush
# Fill:
	.quad	PerlIOBuf_fill
# Eof:
	.quad	PerlIOBase_eof
# Error:
	.quad	PerlIOBase_error
# Clearerr:
	.quad	PerlIOBase_clearerr
# Setlinebuf:
	.quad	PerlIOBase_setlinebuf
# Get_base:
	.quad	PerlIOBuf_get_base
# Get_bufsiz:
	.quad	PerlIOBuf_bufsiz
# Get_ptr:
	.quad	PerlIOBuf_get_ptr
# Get_cnt:
	.quad	PerlIOBuf_get_cnt
# Set_ptrcnt:
	.quad	PerlIOBuf_set_ptrcnt
	.text
	.globl	PerlIOPending_fill
	.type	PerlIOPending_fill, @function
PerlIOPending_fill:
.LFB142:
	.loc 1 3916 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3920 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_PerlIO_flush	#
	.loc 1 3921 0
	movl	$0, %eax	#, D.15848
	.loc 1 3922 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	PerlIOPending_fill, .-PerlIOPending_fill
	.globl	PerlIOPending_close
	.type	PerlIOPending_close, @function
PerlIOPending_close:
.LFB143:
	.loc 1 3926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 3930 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	%rax, %rdi	# tmp62,
	call	Perl_PerlIO_flush	#
	.loc 1 3931 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_PerlIO_close	#
	cltq
	.loc 1 3932 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	PerlIOPending_close, .-PerlIOPending_close
	.globl	PerlIOPending_seek
	.type	PerlIOPending_seek, @function
PerlIOPending_seek:
.LFB144:
	.loc 1 3936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# offset, offset
	movl	%edx, -20(%rbp)	# whence, whence
	.loc 1 3940 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	%rax, %rdi	# tmp62,
	call	Perl_PerlIO_flush	#
	.loc 1 3941 0
	movl	-20(%rbp), %edx	# whence, tmp63
	movq	-16(%rbp), %rcx	# offset, tmp64
	movq	-8(%rbp), %rax	# f, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_PerlIO_seek	#
	cltq
	.loc 1 3942 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	PerlIOPending_seek, .-PerlIOPending_seek
	.globl	PerlIOPending_flush
	.type	PerlIOPending_flush, @function
PerlIOPending_flush:
.LFB145:
	.loc 1 3947 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3948 0
	movq	-24(%rbp), %rax	# f, tmp65
	movq	(%rax), %rax	# *f_1(D), tmp66
	movq	%rax, -8(%rbp)	# tmp66, b
	.loc 1 3949 0
	movq	-8(%rbp), %rax	# b, tmp67
	movq	24(%rax), %rax	# b_2->buf, D.15853
	testq	%rax, %rax	# D.15853
	je	.L819	#,
	.loc 1 3949 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# b, tmp68
	movq	24(%rax), %rax	# b_2->buf, D.15853
	movq	-8(%rbp), %rdx	# b, tmp69
	addq	$64, %rdx	#, D.15854
	cmpq	%rdx, %rax	# D.15854, D.15853
	je	.L819	#,
	.loc 1 3950 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp70
	movq	24(%rax), %rax	# b_2->buf, D.15853
	movq	%rax, %rdi	# D.15853,
	call	Perl_safesysfree	#
	.loc 1 3951 0
	movq	-8(%rbp), %rax	# b, tmp71
	movq	$0, 24(%rax)	#, b_2->buf
.L819:
	.loc 1 3953 0
	movq	-24(%rbp), %rax	# f, tmp72
	movq	%rax, %rdi	# tmp72,
	call	PerlIO_pop	#
	.loc 1 3954 0
	movl	$0, %eax	#, D.15855
	.loc 1 3955 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	PerlIOPending_flush, .-PerlIOPending_flush
	.globl	PerlIOPending_set_ptrcnt
	.type	PerlIOPending_set_ptrcnt, @function
PerlIOPending_set_ptrcnt:
.LFB146:
	.loc 1 3959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# ptr, ptr
	movq	%rdx, -24(%rbp)	# cnt, cnt
	.loc 1 3960 0
	cmpq	$0, -24(%rbp)	#, cnt
	jg	.L822	#,
	.loc 1 3961 0
	movq	-8(%rbp), %rax	# f, tmp59
	movq	%rax, %rdi	# tmp59,
	call	Perl_PerlIO_flush	#
	jmp	.L821	#
.L822:
	.loc 1 3964 0
	movq	-24(%rbp), %rdx	# cnt, tmp60
	movq	-16(%rbp), %rcx	# ptr, tmp61
	movq	-8(%rbp), %rax	# f, tmp62
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	PerlIOBuf_set_ptrcnt	#
.L821:
	.loc 1 3966 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	PerlIOPending_set_ptrcnt, .-PerlIOPending_set_ptrcnt
	.globl	PerlIOPending_pushed
	.type	PerlIOPending_pushed, @function
PerlIOPending_pushed:
.LFB147:
	.loc 1 3970 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# arg, arg
	movq	%rcx, -48(%rbp)	# tab, tab
	.loc 1 3971 0
	movq	-48(%rbp), %rcx	# tab, tmp68
	movq	-40(%rbp), %rdx	# arg, tmp69
	movq	-32(%rbp), %rsi	# mode, tmp70
	movq	-24(%rbp), %rax	# f, tmp71
	movq	%rax, %rdi	# tmp71,
	call	PerlIOBase_pushed	#
	movq	%rax, -16(%rbp)	# tmp72, code
	.loc 1 3972 0
	movq	-24(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_1(D), tmp74
	movq	%rax, -8(%rbp)	# tmp74, l
	.loc 1 3977 0
	movq	-8(%rbp), %rax	# l, tmp75
	movl	16(%rax), %eax	# l_6->flags, D.15856
	andl	$-4227073, %eax	#, D.15856
	movl	%eax, %edx	# D.15856, D.15856
	.loc 1 3978 0
	movq	-24(%rbp), %rax	# f, tmp76
	movq	(%rax), %rax	# *f_1(D), D.15857
	movq	(%rax), %rax	# _9->next, D.15857
	movl	16(%rax), %eax	# _10->flags, D.15856
	.loc 1 3979 0
	andl	$4227072, %eax	#, D.15856
	.loc 1 3977 0
	orl	%eax, %edx	# D.15856, D.15856
	movq	-8(%rbp), %rax	# l, tmp77
	movl	%edx, 16(%rax)	# D.15856, l_6->flags
	.loc 1 3980 0
	movq	-16(%rbp), %rax	# code, D.15858
	.loc 1 3981 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	PerlIOPending_pushed, .-PerlIOPending_pushed
	.globl	PerlIOPending_read
	.type	PerlIOPending_read, @function
PerlIOPending_read:
.LFB148:
	.loc 1 3985 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# vbuf, vbuf
	movq	%rdx, -56(%rbp)	# count, count
	.loc 1 3986 0
	movq	-40(%rbp), %rax	# f, tmp69
	movq	%rax, %rdi	# tmp69,
	call	Perl_PerlIO_get_cnt	#
	cltq
	movq	%rax, -24(%rbp)	# tmp70, avail
	.loc 1 3987 0
	movq	$0, -16(%rbp)	#, got
	.loc 1 3988 0
	movq	-56(%rbp), %rax	# count, count.228
	cmpq	-24(%rbp), %rax	# avail, count.228
	jge	.L827	#,
	.loc 1 3989 0
	movq	-56(%rbp), %rax	# count, tmp71
	movq	%rax, -24(%rbp)	# tmp71, avail
.L827:
	.loc 1 3990 0
	cmpq	$0, -24(%rbp)	#, avail
	jle	.L828	#,
	.loc 1 3991 0
	movq	-24(%rbp), %rdx	# avail, avail.229
	movq	-48(%rbp), %rcx	# vbuf, tmp72
	movq	-40(%rbp), %rax	# f, tmp73
	movq	%rcx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	PerlIOBuf_read	#
	movq	%rax, -16(%rbp)	# tmp74, got
.L828:
	.loc 1 3992 0
	cmpq	$0, -16(%rbp)	#, got
	js	.L829	#,
	.loc 1 3992 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# count, count.230
	cmpq	-16(%rbp), %rax	# got, count.230
	jle	.L829	#,
.LBB111:
	.loc 1 3994 0 is_stmt 1
	movq	-16(%rbp), %rax	# got, got.231
	movq	-56(%rbp), %rdx	# count, tmp75
	subq	%rax, %rdx	# got.231, D.15860
	movq	-16(%rbp), %rcx	# got, got.232
	movq	-48(%rbp), %rax	# vbuf, tmp76
	addq	%rax, %rcx	# tmp76, D.15861
	.loc 1 3993 0
	movq	-40(%rbp), %rax	# f, tmp77
	movq	%rcx, %rsi	# D.15861,
	movq	%rax, %rdi	# tmp77,
	call	Perl_PerlIO_read	#
	movq	%rax, -8(%rbp)	# tmp78, more
	.loc 1 3995 0
	cmpq	$0, -8(%rbp)	#, more
	jns	.L830	#,
	.loc 1 3995 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, got
	jne	.L829	#,
.L830:
	.loc 1 3996 0 is_stmt 1
	movq	-8(%rbp), %rax	# more, tmp79
	addq	%rax, -16(%rbp)	# tmp79, got
.L829:
.LBE111:
	.loc 1 3998 0
	movq	-16(%rbp), %rax	# got, D.15862
	.loc 1 3999 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	PerlIOPending_read, .-PerlIOPending_read
	.globl	PerlIO_pending
	.section	.rodata
.LC49:
	.string	"pending"
	.data
	.align 32
	.type	PerlIO_pending, @object
	.size	PerlIO_pending, 224
PerlIO_pending:
# fsize:
	.quad	224
# name:
	.quad	.LC49
# size:
	.quad	72
# kind:
	.long	3
# Pushed:
	.zero	4
	.quad	PerlIOPending_pushed
# Popped:
	.quad	PerlIOBuf_popped
# Open:
	.quad	0
# Binmode:
	.quad	PerlIOBase_binmode
# Getarg:
	.quad	0
# Fileno:
	.quad	PerlIOBase_fileno
# Dup:
	.quad	PerlIOBuf_dup
# Read:
	.quad	PerlIOPending_read
# Unread:
	.quad	PerlIOBuf_unread
# Write:
	.quad	PerlIOBuf_write
# Seek:
	.quad	PerlIOPending_seek
# Tell:
	.quad	PerlIOBuf_tell
# Close:
	.quad	PerlIOPending_close
# Flush:
	.quad	PerlIOPending_flush
# Fill:
	.quad	PerlIOPending_fill
# Eof:
	.quad	PerlIOBase_eof
# Error:
	.quad	PerlIOBase_error
# Clearerr:
	.quad	PerlIOBase_clearerr
# Setlinebuf:
	.quad	PerlIOBase_setlinebuf
# Get_base:
	.quad	PerlIOBuf_get_base
# Get_bufsiz:
	.quad	PerlIOBuf_bufsiz
# Get_ptr:
	.quad	PerlIOBuf_get_ptr
# Get_cnt:
	.quad	PerlIOBuf_get_cnt
# Set_ptrcnt:
	.quad	PerlIOPending_set_ptrcnt
	.text
	.globl	PerlIOCrlf_pushed
	.type	PerlIOCrlf_pushed, @function
PerlIOCrlf_pushed:
.LFB149:
	.loc 1 4049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	movq	%rsi, -48(%rbp)	# mode, mode
	movq	%rdx, -56(%rbp)	# arg, arg
	movq	%rcx, -64(%rbp)	# tab, tab
	.loc 1 4051 0
	movq	-40(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_3(D), D.15865
	movq	-40(%rbp), %rdx	# f, tmp74
	movq	(%rdx), %rdx	# *f_3(D), D.15865
	movl	16(%rdx), %edx	# _5->flags, D.15866
	orb	$64, %dh	#, D.15866
	movl	%edx, 16(%rax)	# D.15866, _4->flags
	.loc 1 4052 0
	movq	-64(%rbp), %rcx	# tab, tmp75
	movq	-56(%rbp), %rdx	# arg, tmp76
	movq	-48(%rbp), %rsi	# mode, tmp77
	movq	-40(%rbp), %rax	# f, tmp78
	movq	%rax, %rdi	# tmp78,
	call	PerlIOBuf_pushed	#
	movq	%rax, -16(%rbp)	# tmp79, code
.LBB112:
	.loc 1 4063 0
	movq	-40(%rbp), %rax	# f, tmp80
	movq	(%rax), %rax	# *f_3(D), D.15865
	movq	%rax, -24(%rbp)	# D.15865, g
	.loc 1 4064 0
	jmp	.L833	#
.L838:
.LBB113:
	.loc 1 4065 0
	movq	-24(%rbp), %rax	# g, tmp81
	movq	(%rax), %rax	# *g_1, tmp82
	movq	%rax, -8(%rbp)	# tmp82, b
	.loc 1 4066 0
	cmpq	$0, -8(%rbp)	#, b
	je	.L834	#,
	.loc 1 4066 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# b, tmp83
	movq	8(%rax), %rax	# b_15->tab, D.15867
	cmpq	$PerlIO_crlf, %rax	#, D.15867
	jne	.L834	#,
	.loc 1 4067 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp84
	movl	16(%rax), %eax	# b_15->flags, D.15866
	andl	$16384, %eax	#, D.15866
	testl	%eax, %eax	# D.15866
	jne	.L835	#,
	.loc 1 4068 0
	movq	-8(%rbp), %rax	# b, tmp85
	movl	16(%rax), %eax	# b_15->flags, D.15866
	orb	$64, %ah	#, D.15866
	movl	%eax, %edx	# D.15866, D.15866
	movq	-8(%rbp), %rax	# b, tmp86
	movl	%edx, 16(%rax)	# D.15866, b_15->flags
.L835:
	.loc 1 4069 0
	movq	-40(%rbp), %rax	# f, tmp87
	movq	%rax, %rdi	# tmp87,
	call	PerlIO_pop	#
	.loc 1 4070 0
	movq	-16(%rbp), %rax	# code, D.15864
	jmp	.L836	#
.L834:
	.loc 1 4072 0
	movq	-24(%rbp), %rax	# g, tmp88
	movq	(%rax), %rax	# *g_1, D.15865
	movq	%rax, -24(%rbp)	# D.15865, g
.L833:
.LBE113:
	.loc 1 4064 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, g
	je	.L837	#,
	.loc 1 4064 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp89
	movq	(%rax), %rax	# *g_1, D.15865
	testq	%rax, %rax	# D.15865
	jne	.L838	#,
.L837:
.LBE112:
	.loc 1 4075 0 is_stmt 1
	movq	-16(%rbp), %rax	# code, D.15864
.L836:
	.loc 1 4076 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	PerlIOCrlf_pushed, .-PerlIOCrlf_pushed
	.globl	PerlIOCrlf_unread
	.type	PerlIOCrlf_unread, @function
PerlIOCrlf_unread:
.LFB150:
	.loc 1 4081 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	movq	%rsi, -64(%rbp)	# vbuf, vbuf
	movq	%rdx, -72(%rbp)	# count, count
	.loc 1 4082 0
	movq	-56(%rbp), %rax	# f, tmp103
	movq	(%rax), %rax	# *f_6(D), tmp104
	movq	%rax, -16(%rbp)	# tmp104, c
	.loc 1 4083 0
	movq	-16(%rbp), %rax	# c, tmp105
	movq	72(%rax), %rax	# c_7->nl, D.15869
	testq	%rax, %rax	# D.15869
	je	.L840	#,
	.loc 1 4084 0
	movq	-16(%rbp), %rax	# c, tmp106
	movq	72(%rax), %rax	# c_7->nl, D.15869
	movb	$13, (%rax)	#, *_9
	.loc 1 4085 0
	movq	-16(%rbp), %rax	# c, tmp107
	movq	$0, 72(%rax)	#, c_7->nl
.L840:
	.loc 1 4087 0
	movq	-56(%rbp), %rax	# f, tmp108
	movq	(%rax), %rax	# *f_6(D), D.15870
	movl	16(%rax), %eax	# _10->flags, D.15871
	andl	$16384, %eax	#, D.15871
	testl	%eax, %eax	# D.15871
	jne	.L841	#,
	.loc 1 4088 0
	movq	-72(%rbp), %rdx	# count, tmp109
	movq	-64(%rbp), %rcx	# vbuf, tmp110
	movq	-56(%rbp), %rax	# f, tmp111
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	PerlIOBuf_unread	#
	jmp	.L842	#
.L841:
.LBB114:
	.loc 1 4090 0
	movq	-72(%rbp), %rax	# count, tmp116
	movq	-64(%rbp), %rdx	# vbuf, tmp117
	addq	%rdx, %rax	# tmp117, tmp115
	movq	%rax, -32(%rbp)	# tmp115, buf
	.loc 1 4091 0
	movq	-56(%rbp), %rax	# f, tmp118
	movq	(%rax), %rax	# *f_6(D), tmp119
	movq	%rax, -8(%rbp)	# tmp119, b
	.loc 1 4092 0
	movq	$0, -24(%rbp)	#, unread
	.loc 1 4093 0
	movq	-56(%rbp), %rax	# f, tmp120
	movq	(%rax), %rax	# *f_6(D), D.15870
	movl	16(%rax), %eax	# _19->flags, D.15871
	andl	$131072, %eax	#, D.15871
	testl	%eax, %eax	# D.15871
	je	.L843	#,
	.loc 1 4094 0
	movq	-56(%rbp), %rax	# f, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_PerlIO_flush	#
.L843:
	.loc 1 4095 0
	movq	-8(%rbp), %rax	# b, tmp122
	movq	24(%rax), %rax	# b_17->buf, D.15869
	testq	%rax, %rax	# D.15869
	jne	.L844	#,
	.loc 1 4096 0
	movq	-56(%rbp), %rax	# f, tmp123
	movq	%rax, %rdi	# tmp123,
	call	Perl_PerlIO_get_base	#
.L844:
	.loc 1 4097 0
	movq	-8(%rbp), %rax	# b, tmp124
	movq	24(%rax), %rax	# b_17->buf, D.15869
	testq	%rax, %rax	# D.15869
	je	.L845	#,
	.loc 1 4098 0
	movq	-56(%rbp), %rax	# f, tmp125
	movq	(%rax), %rax	# *f_6(D), D.15870
	movl	16(%rax), %eax	# _24->flags, D.15871
	andl	$262144, %eax	#, D.15871
	testl	%eax, %eax	# D.15871
	jne	.L846	#,
	.loc 1 4099 0
	movq	-8(%rbp), %rax	# b, tmp126
	movq	24(%rax), %rdx	# b_17->buf, D.15869
	movq	-8(%rbp), %rax	# b, tmp127
	movq	56(%rax), %rax	# b_17->bufsiz, D.15872
	addq	%rax, %rdx	# D.15872, D.15869
	movq	-8(%rbp), %rax	# b, tmp128
	movq	%rdx, 40(%rax)	# D.15869, b_17->ptr
	movq	-8(%rbp), %rax	# b, tmp129
	movq	40(%rax), %rdx	# b_17->ptr, D.15869
	movq	-8(%rbp), %rax	# b, tmp130
	movq	%rdx, 32(%rax)	# D.15869, b_17->end
	.loc 1 4100 0
	movq	-56(%rbp), %rax	# f, tmp131
	movq	(%rax), %rax	# *f_6(D), D.15870
	movq	-56(%rbp), %rdx	# f, tmp132
	movq	(%rdx), %rdx	# *f_6(D), D.15870
	movl	16(%rdx), %edx	# _32->flags, D.15871
	orl	$262144, %edx	#, D.15871
	movl	%edx, 16(%rax)	# D.15871, _31->flags
	.loc 1 4101 0
	movq	-8(%rbp), %rax	# b, tmp133
	movq	48(%rax), %rax	# b_17->posn, D.15873
	movq	%rax, %rdx	# D.15873, D.15872
	movq	-8(%rbp), %rax	# b, tmp134
	movq	56(%rax), %rax	# b_17->bufsiz, D.15872
	subq	%rax, %rdx	# D.15872, D.15872
	movq	%rdx, %rax	# D.15872, D.15872
	movq	%rax, %rdx	# D.15872, D.15873
	movq	-8(%rbp), %rax	# b, tmp135
	movq	%rdx, 48(%rax)	# D.15873, b_17->posn
	.loc 1 4103 0
	jmp	.L847	#
.L846:
	jmp	.L847	#
.L850:
.LBB115:
	.loc 1 4104 0
	subq	$1, -32(%rbp)	#, buf
	movq	-32(%rbp), %rax	# buf, tmp136
	movzbl	(%rax), %eax	# *buf_42, D.15874
	movsbl	%al, %eax	# D.15874, tmp137
	movl	%eax, -36(%rbp)	# tmp137, ch
	.loc 1 4105 0
	cmpl	$10, -36(%rbp)	#, ch
	jne	.L848	#,
	.loc 1 4106 0
	movq	-8(%rbp), %rax	# b, tmp138
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	leaq	-2(%rax), %rdx	#, D.15869
	movq	-8(%rbp), %rax	# b, tmp139
	movq	24(%rax), %rax	# b_17->buf, D.15869
	cmpq	%rax, %rdx	# D.15869, D.15869
	jb	.L849	#,
	.loc 1 4107 0
	movq	-8(%rbp), %rax	# b, tmp140
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	leaq	-1(%rax), %rdx	#, D.15869
	movq	-8(%rbp), %rax	# b, tmp141
	movq	%rdx, 40(%rax)	# D.15869, b_17->ptr
	movq	-8(%rbp), %rax	# b, tmp142
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	movb	$10, (%rax)	#, *_50
	.loc 1 4108 0
	movq	-8(%rbp), %rax	# b, tmp143
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	leaq	-1(%rax), %rdx	#, D.15869
	movq	-8(%rbp), %rax	# b, tmp144
	movq	%rdx, 40(%rax)	# D.15869, b_17->ptr
	movq	-8(%rbp), %rax	# b, tmp145
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	movb	$13, (%rax)	#, *_53
	.loc 1 4109 0
	addq	$1, -24(%rbp)	#, unread
	.loc 1 4110 0
	subq	$1, -72(%rbp)	#, count
	jmp	.L847	#
.L849:
	.loc 1 4113 0
	addq	$1, -32(%rbp)	#, buf
	.loc 1 4114 0
	jmp	.L845	#
.L848:
	.loc 1 4118 0
	movq	-8(%rbp), %rax	# b, tmp146
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	leaq	-1(%rax), %rdx	#, D.15869
	movq	-8(%rbp), %rax	# b, tmp147
	movq	%rdx, 40(%rax)	# D.15869, b_17->ptr
	movq	-8(%rbp), %rax	# b, tmp148
	movq	40(%rax), %rax	# b_17->ptr, D.15869
	movl	-36(%rbp), %edx	# ch, tmp149
	movb	%dl, (%rax)	# D.15874, *_59
	.loc 1 4119 0
	addq	$1, -24(%rbp)	#, unread
	.loc 1 4120 0
	subq	$1, -72(%rbp)	#, count
.L847:
.LBE115:
	.loc 1 4103 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, count
	je	.L845	#,
	.loc 1 4103 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# b, tmp150
	movq	40(%rax), %rdx	# b_17->ptr, D.15869
	movq	-8(%rbp), %rax	# b, tmp151
	movq	24(%rax), %rax	# b_17->buf, D.15869
	cmpq	%rax, %rdx	# D.15869, D.15869
	ja	.L850	#,
.L845:
	.loc 1 4124 0 is_stmt 1
	movq	-24(%rbp), %rax	# unread, D.15868
.L842:
.LBE114:
	.loc 1 4126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	PerlIOCrlf_unread, .-PerlIOCrlf_unread
	.globl	PerlIOCrlf_get_cnt
	.type	PerlIOCrlf_get_cnt, @function
PerlIOCrlf_get_cnt:
.LFB151:
	.loc 1 4130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 4131 0
	movq	-40(%rbp), %rax	# f, tmp101
	movq	(%rax), %rax	# *f_7(D), tmp102
	movq	%rax, -16(%rbp)	# tmp102, b
	.loc 1 4132 0
	movq	-16(%rbp), %rax	# b, tmp103
	movq	24(%rax), %rax	# b_8->buf, D.15876
	testq	%rax, %rax	# D.15876
	jne	.L852	#,
	.loc 1 4133 0
	movq	-40(%rbp), %rax	# f, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_PerlIO_get_base	#
.L852:
	.loc 1 4134 0
	movq	-40(%rbp), %rax	# f, tmp105
	movq	(%rax), %rax	# *f_7(D), D.15877
	movl	16(%rax), %eax	# _10->flags, D.15878
	andl	$262144, %eax	#, D.15878
	testl	%eax, %eax	# D.15878
	je	.L853	#,
.LBB116:
	.loc 1 4135 0
	movq	-40(%rbp), %rax	# f, tmp106
	movq	(%rax), %rax	# *f_7(D), tmp107
	movq	%rax, -8(%rbp)	# tmp107, c
	.loc 1 4136 0
	movq	-40(%rbp), %rax	# f, tmp108
	movq	(%rax), %rax	# *f_7(D), D.15877
	movl	16(%rax), %eax	# _14->flags, D.15878
	andl	$16384, %eax	#, D.15878
	testl	%eax, %eax	# D.15878
	je	.L854	#,
	.loc 1 4136 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, tmp109
	movq	72(%rax), %rax	# c_13->nl, D.15876
	testq	%rax, %rax	# D.15876
	je	.L855	#,
	movq	-8(%rbp), %rax	# c, tmp110
	movq	72(%rax), %rax	# c_13->nl, D.15876
	movzbl	(%rax), %eax	# *_18, D.15879
	cmpb	$13, %al	#, D.15879
	jne	.L854	#,
.L855:
.LBB117:
	.loc 1 4137 0 is_stmt 1
	movq	-8(%rbp), %rax	# c, tmp111
	movq	72(%rax), %rax	# c_13->nl, D.15876
	testq	%rax, %rax	# D.15876
	je	.L856	#,
	.loc 1 4137 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, tmp112
	movq	72(%rax), %rax	# c_13->nl, iftmp.233
	jmp	.L857	#
.L856:
	.loc 1 4137 0 discriminator 2
	movq	-16(%rbp), %rax	# b, tmp113
	movq	40(%rax), %rax	# b_8->ptr, iftmp.233
.L857:
	.loc 1 4137 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.233, nl
	.loc 1 4139 0 is_stmt 1 discriminator 3
	jmp	.L859	#
.L861:
	.loc 1 4140 0
	addq	$1, -24(%rbp)	#, nl
.L859:
	.loc 1 4139 0 discriminator 1
	movq	-16(%rbp), %rax	# b, tmp114
	movq	32(%rax), %rax	# b_8->end, D.15876
	cmpq	-24(%rbp), %rax	# nl, D.15876
	jbe	.L860	#,
	.loc 1 4139 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# nl, tmp115
	movzbl	(%rax), %eax	# *nl_2, D.15879
	cmpb	$13, %al	#, D.15879
	jne	.L861	#,
.L860:
	.loc 1 4141 0 is_stmt 1
	movq	-16(%rbp), %rax	# b, tmp116
	movq	32(%rax), %rax	# b_8->end, D.15876
	cmpq	-24(%rbp), %rax	# nl, D.15876
	jbe	.L854	#,
	.loc 1 4141 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# nl, tmp117
	movzbl	(%rax), %eax	# *nl_2, D.15879
	cmpb	$13, %al	#, D.15879
	jne	.L854	#,
.L862:
	.loc 1 4143 0 is_stmt 1
	movq	-24(%rbp), %rax	# nl, tmp118
	leaq	1(%rax), %rdx	#, D.15876
	movq	-16(%rbp), %rax	# b, tmp119
	movq	32(%rax), %rax	# b_8->end, D.15876
	cmpq	%rax, %rdx	# D.15876, D.15876
	jae	.L863	#,
	.loc 1 4144 0
	movq	-24(%rbp), %rax	# nl, tmp120
	addq	$1, %rax	#, D.15876
	movzbl	(%rax), %eax	# *_31, D.15879
	cmpb	$10, %al	#, D.15879
	jne	.L864	#,
	.loc 1 4145 0
	movq	-24(%rbp), %rax	# nl, tmp121
	movb	$10, (%rax)	#, *nl_3
	.loc 1 4146 0
	movq	-8(%rbp), %rax	# c, tmp122
	movq	-24(%rbp), %rdx	# nl, tmp123
	movq	%rdx, 72(%rax)	# tmp123, c_13->nl
	jmp	.L854	#
.L864:
	.loc 1 4152 0
	addq	$1, -24(%rbp)	#, nl
	.loc 1 4153 0
	nop
.L858:
	.loc 1 4139 0
	jmp	.L859	#
.L863:
	.loc 1 4161 0
	movq	-16(%rbp), %rax	# b, tmp124
	movq	40(%rax), %rax	# b_8->ptr, D.15876
	cmpq	-24(%rbp), %rax	# nl, D.15876
	jae	.L865	#,
	.loc 1 4166 0
	movq	-8(%rbp), %rax	# c, tmp125
	movq	-24(%rbp), %rdx	# nl, tmp126
	movq	%rdx, 72(%rax)	# tmp126, c_13->nl
	.loc 1 4167 0
	movq	-24(%rbp), %rdx	# nl, nl.234
	movq	-16(%rbp), %rax	# b, tmp127
	movq	40(%rax), %rax	# b_8->ptr, D.15876
	subq	%rax, %rdx	# D.15880, D.15875
	movq	%rdx, %rax	# D.15875, D.15875
	jmp	.L866	#
.L865:
.LBB118:
	.loc 1 4171 0
	movq	-16(%rbp), %rax	# b, tmp128
	movq	40(%rax), %rax	# b_8->ptr, D.15876
	leaq	1(%rax), %rdx	#, D.15876
	movq	-16(%rbp), %rax	# b, tmp129
	movq	%rdx, 40(%rax)	# D.15876, b_8->ptr
	.loc 1 4173 0
	movq	-16(%rbp), %rax	# b, tmp130
	movq	24(%rax), %rax	# b_8->buf, D.15876
	leaq	1(%rax), %rdx	#, D.15876
	movq	-16(%rbp), %rax	# b, tmp131
	movq	%rdx, 24(%rax)	# D.15876, b_8->buf
	.loc 1 4178 0
	movq	-16(%rbp), %rax	# b, tmp132
	movq	56(%rax), %rax	# b_8->bufsiz, D.15881
	leaq	-1(%rax), %rdx	#, D.15881
	movq	-16(%rbp), %rax	# b, tmp133
	movq	%rdx, 56(%rax)	# D.15881, b_8->bufsiz
	.loc 1 4179 0
	movq	-40(%rbp), %rax	# f, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Perl_PerlIO_fill	#
	movl	%eax, -28(%rbp)	# tmp135, code
	.loc 1 4180 0
	movq	-16(%rbp), %rax	# b, tmp136
	movq	56(%rax), %rax	# b_8->bufsiz, D.15881
	leaq	1(%rax), %rdx	#, D.15881
	movq	-16(%rbp), %rax	# b, tmp137
	movq	%rdx, 56(%rax)	# D.15881, b_8->bufsiz
	.loc 1 4181 0
	movq	-16(%rbp), %rax	# b, tmp138
	movq	24(%rax), %rax	# b_8->buf, D.15876
	leaq	-1(%rax), %rdx	#, D.15876
	movq	-16(%rbp), %rax	# b, tmp139
	movq	%rdx, 24(%rax)	# D.15876, b_8->buf
	.loc 1 4182 0
	movq	-16(%rbp), %rax	# b, tmp140
	movq	24(%rax), %rax	# b_8->buf, tmp141
	movq	%rax, -24(%rbp)	# tmp141, nl
	movq	-16(%rbp), %rax	# b, tmp142
	movq	-24(%rbp), %rdx	# nl, tmp143
	movq	%rdx, 40(%rax)	# tmp143, b_8->ptr
	.loc 1 4184 0
	movq	-24(%rbp), %rax	# nl, tmp144
	movb	$13, (%rax)	#, *nl_50
	.loc 1 4185 0
	cmpl	$0, -28(%rbp)	#, code
	jne	.L854	#,
	.loc 1 4186 0
	jmp	.L862	#
.L854:
.LBE118:
.LBE117:
	.loc 1 4195 0
	movq	-8(%rbp), %rax	# c, tmp145
	movq	72(%rax), %rax	# c_13->nl, D.15876
	testq	%rax, %rax	# D.15876
	je	.L867	#,
	.loc 1 4195 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, tmp146
	movq	72(%rax), %rax	# c_13->nl, D.15876
	addq	$1, %rax	#, iftmp.235
	jmp	.L868	#
.L867:
	.loc 1 4195 0 discriminator 2
	movq	-16(%rbp), %rax	# b, tmp147
	movq	32(%rax), %rax	# b_8->end, iftmp.235
.L868:
	.loc 1 4195 0 discriminator 3
	movq	%rax, %rdx	# iftmp.235, iftmp.236
	movq	-16(%rbp), %rax	# b, tmp148
	movq	40(%rax), %rax	# b_8->ptr, D.15876
	subq	%rax, %rdx	# D.15880, D.15875
	movq	%rdx, %rax	# D.15875, D.15875
	jmp	.L866	#
.L853:
.LBE116:
	.loc 1 4197 0 is_stmt 1
	movl	$0, %eax	#, D.15875
.L866:
	.loc 1 4198 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	PerlIOCrlf_get_cnt, .-PerlIOCrlf_get_cnt
	.globl	PerlIOCrlf_set_ptrcnt
	.type	PerlIOCrlf_set_ptrcnt, @function
PerlIOCrlf_set_ptrcnt:
.LFB152:
	.loc 1 4202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# ptr, ptr
	movq	%rdx, -40(%rbp)	# cnt, cnt
	.loc 1 4203 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	(%rax), %rax	# *f_5(D), tmp75
	movq	%rax, -16(%rbp)	# tmp75, b
	.loc 1 4204 0
	movq	-24(%rbp), %rax	# f, tmp76
	movq	(%rax), %rax	# *f_5(D), tmp77
	movq	%rax, -8(%rbp)	# tmp77, c
	.loc 1 4205 0
	movq	-16(%rbp), %rax	# b, tmp78
	movq	24(%rax), %rax	# b_6->buf, D.15882
	testq	%rax, %rax	# D.15882
	jne	.L870	#,
	.loc 1 4206 0
	movq	-24(%rbp), %rax	# f, tmp79
	movq	%rax, %rdi	# tmp79,
	call	Perl_PerlIO_get_base	#
.L870:
	.loc 1 4207 0
	cmpq	$0, -32(%rbp)	#, ptr
	jne	.L871	#,
	.loc 1 4208 0
	movq	-8(%rbp), %rax	# c, tmp80
	movq	72(%rax), %rax	# c_7->nl, D.15882
	testq	%rax, %rax	# D.15882
	je	.L872	#,
	.loc 1 4209 0
	movq	-8(%rbp), %rax	# c, tmp81
	movq	72(%rax), %rax	# c_7->nl, D.15882
	addq	$1, %rax	#, tmp82
	movq	%rax, -32(%rbp)	# tmp82, ptr
	.loc 1 4210 0
	movq	-16(%rbp), %rax	# b, tmp83
	movq	32(%rax), %rax	# b_6->end, D.15882
	cmpq	-32(%rbp), %rax	# ptr, D.15882
	jne	.L874	#,
	.loc 1 4210 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, tmp84
	movq	72(%rax), %rax	# c_7->nl, D.15882
	movzbl	(%rax), %eax	# *_14, D.15883
	cmpb	$13, %al	#, D.15883
	jne	.L874	#,
	.loc 1 4212 0 is_stmt 1
	subq	$1, -32(%rbp)	#, ptr
	jmp	.L874	#
.L872:
	.loc 1 4216 0
	movq	-16(%rbp), %rax	# b, tmp85
	movq	32(%rax), %rax	# b_6->end, tmp86
	movq	%rax, -32(%rbp)	# tmp86, ptr
.L874:
	.loc 1 4218 0 discriminator 1
	movq	-40(%rbp), %rax	# cnt, cnt.237
	negq	%rax	# D.15884
	addq	%rax, -32(%rbp)	# D.15884, ptr
.L871:
	.loc 1 4240 0
	movq	-8(%rbp), %rax	# c, tmp87
	movq	72(%rax), %rax	# c_7->nl, D.15882
	testq	%rax, %rax	# D.15882
	je	.L875	#,
	.loc 1 4241 0
	movq	-8(%rbp), %rax	# c, tmp88
	movq	72(%rax), %rax	# c_7->nl, D.15882
	cmpq	-32(%rbp), %rax	# ptr, D.15882
	jae	.L875	#,
	.loc 1 4245 0
	movq	-8(%rbp), %rax	# c, tmp89
	movq	72(%rax), %rax	# c_7->nl, D.15882
	movb	$13, (%rax)	#, *_24
	.loc 1 4246 0
	movq	-8(%rbp), %rax	# c, tmp90
	movq	$0, 72(%rax)	#, c_7->nl
	.loc 1 4247 0
	addq	$1, -32(%rbp)	#, ptr
.L875:
	.loc 1 4250 0
	movq	-16(%rbp), %rax	# b, tmp91
	movq	-32(%rbp), %rdx	# ptr, tmp92
	movq	%rdx, 40(%rax)	# tmp92, b_6->ptr
	.loc 1 4251 0
	movq	-24(%rbp), %rax	# f, tmp93
	movq	(%rax), %rax	# *f_5(D), D.15885
	movq	-24(%rbp), %rdx	# f, tmp94
	movq	(%rdx), %rdx	# *f_5(D), D.15885
	movl	16(%rdx), %edx	# _27->flags, D.15886
	orl	$262144, %edx	#, D.15886
	movl	%edx, 16(%rax)	# D.15886, _26->flags
	.loc 1 4252 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	PerlIOCrlf_set_ptrcnt, .-PerlIOCrlf_set_ptrcnt
	.globl	PerlIOCrlf_write
	.type	PerlIOCrlf_write, @function
PerlIOCrlf_write:
.LFB153:
	.loc 1 4256 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	movq	%rsi, -64(%rbp)	# vbuf, vbuf
	movq	%rdx, -72(%rbp)	# count, count
	.loc 1 4257 0
	movq	-56(%rbp), %rax	# f, tmp96
	movq	(%rax), %rax	# *f_5(D), D.15888
	movl	16(%rax), %eax	# _6->flags, D.15889
	andl	$16384, %eax	#, D.15889
	testl	%eax, %eax	# D.15889
	jne	.L877	#,
	.loc 1 4258 0
	movq	-72(%rbp), %rdx	# count, tmp97
	movq	-64(%rbp), %rcx	# vbuf, tmp98
	movq	-56(%rbp), %rax	# f, tmp99
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	PerlIOBuf_write	#
	jmp	.L878	#
.L877:
.LBB119:
	.loc 1 4260 0
	movq	-56(%rbp), %rax	# f, tmp100
	movq	(%rax), %rax	# *f_5(D), tmp101
	movq	%rax, -24(%rbp)	# tmp101, b
	.loc 1 4261 0
	movq	-64(%rbp), %rax	# vbuf, tmp102
	movq	%rax, -32(%rbp)	# tmp102, buf
	.loc 1 4262 0
	movq	-72(%rbp), %rax	# count, tmp107
	movq	-32(%rbp), %rdx	# buf, tmp108
	addq	%rdx, %rax	# tmp108, tmp106
	movq	%rax, -16(%rbp)	# tmp106, ebuf
	.loc 1 4263 0
	movq	-24(%rbp), %rax	# b, tmp109
	movq	24(%rax), %rax	# b_12->buf, D.15890
	testq	%rax, %rax	# D.15890
	jne	.L879	#,
	.loc 1 4264 0
	movq	-56(%rbp), %rax	# f, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_PerlIO_get_base	#
.L879:
	.loc 1 4265 0
	movq	-56(%rbp), %rax	# f, tmp111
	movq	(%rax), %rax	# *f_5(D), D.15888
	movl	16(%rax), %eax	# _16->flags, D.15889
	andl	$512, %eax	#, D.15889
	testl	%eax, %eax	# D.15889
	jne	.L880	#,
	.loc 1 4266 0
	movl	$0, %eax	#, D.15887
	jmp	.L878	#
.L880:
	.loc 1 4267 0
	jmp	.L881	#
.L887:
.LBB120:
	.loc 1 4268 0
	movq	-24(%rbp), %rax	# b, tmp112
	movq	24(%rax), %rdx	# b_12->buf, D.15890
	movq	-24(%rbp), %rax	# b, tmp113
	movq	56(%rax), %rax	# b_12->bufsiz, D.15891
	addq	%rdx, %rax	# D.15890, tmp114
	movq	%rax, -8(%rbp)	# tmp114, eptr
	.loc 1 4269 0
	movq	-56(%rbp), %rax	# f, tmp115
	movq	(%rax), %rax	# *f_5(D), D.15888
	movq	-56(%rbp), %rdx	# f, tmp116
	movq	(%rdx), %rdx	# *f_5(D), D.15888
	movl	16(%rdx), %edx	# _24->flags, D.15889
	orl	$131072, %edx	#, D.15889
	movl	%edx, 16(%rax)	# D.15889, _23->flags
	.loc 1 4270 0
	jmp	.L882	#
.L886:
	.loc 1 4271 0
	movq	-32(%rbp), %rax	# buf, tmp117
	movzbl	(%rax), %eax	# *buf_2, D.15892
	cmpb	$10, %al	#, D.15892
	jne	.L883	#,
	.loc 1 4272 0
	movq	-24(%rbp), %rax	# b, tmp118
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	addq	$2, %rax	#, D.15890
	cmpq	-8(%rbp), %rax	# eptr, D.15890
	jbe	.L884	#,
	.loc 1 4276 0
	movq	-56(%rbp), %rax	# f, tmp119
	movq	%rax, %rdi	# tmp119,
	call	Perl_PerlIO_flush	#
	.loc 1 4277 0
	jmp	.L881	#
.L884:
	.loc 1 4280 0
	movq	-24(%rbp), %rax	# b, tmp120
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	leaq	1(%rax), %rcx	#, D.15890
	movq	-24(%rbp), %rdx	# b, tmp121
	movq	%rcx, 40(%rdx)	# D.15890, b_12->ptr
	movb	$13, (%rax)	#, *_32
	.loc 1 4281 0
	movq	-24(%rbp), %rax	# b, tmp122
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	leaq	1(%rax), %rcx	#, D.15890
	movq	-24(%rbp), %rdx	# b, tmp123
	movq	%rcx, 40(%rdx)	# D.15890, b_12->ptr
	movb	$10, (%rax)	#, *_35
	.loc 1 4282 0
	addq	$1, -32(%rbp)	#, buf
	.loc 1 4283 0
	movq	-56(%rbp), %rax	# f, tmp124
	movq	(%rax), %rax	# *f_5(D), D.15888
	movl	16(%rax), %eax	# _38->flags, D.15889
	andl	$524288, %eax	#, D.15889
	testl	%eax, %eax	# D.15889
	je	.L885	#,
	.loc 1 4284 0
	movq	-56(%rbp), %rax	# f, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_PerlIO_flush	#
	.loc 1 4285 0
	jmp	.L881	#
.L883:
.LBB121:
	.loc 1 4290 0
	movq	-32(%rbp), %rax	# buf, buf.238
	leaq	1(%rax), %rdx	#, tmp126
	movq	%rdx, -32(%rbp)	# tmp126, buf
	movzbl	(%rax), %eax	# *buf.238_41, D.15892
	movsbl	%al, %eax	# D.15892, tmp127
	movl	%eax, -36(%rbp)	# tmp127, ch
	.loc 1 4291 0
	movq	-24(%rbp), %rax	# b, tmp128
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	leaq	1(%rax), %rcx	#, D.15890
	movq	-24(%rbp), %rdx	# b, tmp129
	movq	%rcx, 40(%rdx)	# D.15890, b_12->ptr
	movl	-36(%rbp), %edx	# ch, tmp130
	movb	%dl, (%rax)	# D.15892, *_46
.L885:
.LBE121:
	.loc 1 4293 0
	movq	-24(%rbp), %rax	# b, tmp131
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	cmpq	-8(%rbp), %rax	# eptr, D.15890
	jb	.L882	#,
	.loc 1 4294 0
	movq	-56(%rbp), %rax	# f, tmp132
	movq	%rax, %rdi	# tmp132,
	call	Perl_PerlIO_flush	#
	.loc 1 4295 0
	jmp	.L881	#
.L882:
	.loc 1 4270 0 discriminator 1
	movq	-32(%rbp), %rax	# buf, tmp133
	cmpq	-16(%rbp), %rax	# ebuf, tmp133
	jae	.L881	#,
	.loc 1 4270 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# b, tmp134
	movq	40(%rax), %rax	# b_12->ptr, D.15890
	cmpq	-8(%rbp), %rax	# eptr, D.15890
	jb	.L886	#,
.L881:
.LBE120:
	.loc 1 4267 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# buf, tmp135
	cmpq	-16(%rbp), %rax	# ebuf, tmp135
	jb	.L887	#,
	.loc 1 4299 0
	movq	-56(%rbp), %rax	# f, tmp136
	movq	(%rax), %rax	# *f_5(D), D.15888
	movl	16(%rax), %eax	# _50->flags, D.15889
	andl	$65536, %eax	#, D.15889
	testl	%eax, %eax	# D.15889
	je	.L888	#,
	.loc 1 4300 0
	movq	-56(%rbp), %rax	# f, tmp137
	movq	%rax, %rdi	# tmp137,
	call	Perl_PerlIO_flush	#
.L888:
	.loc 1 4301 0
	movq	-32(%rbp), %rdx	# buf, buf.239
	movq	-64(%rbp), %rax	# vbuf, vbuf.240
	subq	%rax, %rdx	# vbuf.240, D.15887
	movq	%rdx, %rax	# D.15887, D.15887
.L878:
.LBE119:
	.loc 1 4303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	PerlIOCrlf_write, .-PerlIOCrlf_write
	.globl	PerlIOCrlf_flush
	.type	PerlIOCrlf_flush, @function
PerlIOCrlf_flush:
.LFB154:
	.loc 1 4307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 4308 0
	movq	-24(%rbp), %rax	# f, tmp63
	movq	(%rax), %rax	# *f_1(D), tmp64
	movq	%rax, -8(%rbp)	# tmp64, c
	.loc 1 4309 0
	movq	-8(%rbp), %rax	# c, tmp65
	movq	72(%rax), %rax	# c_2->nl, D.15893
	testq	%rax, %rax	# D.15893
	je	.L890	#,
	.loc 1 4310 0
	movq	-8(%rbp), %rax	# c, tmp66
	movq	72(%rax), %rax	# c_2->nl, D.15893
	movb	$13, (%rax)	#, *_4
	.loc 1 4311 0
	movq	-8(%rbp), %rax	# c, tmp67
	movq	$0, 72(%rax)	#, c_2->nl
.L890:
	.loc 1 4313 0
	movq	-24(%rbp), %rax	# f, tmp68
	movq	%rax, %rdi	# tmp68,
	call	PerlIOBuf_flush	#
	.loc 1 4314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	PerlIOCrlf_flush, .-PerlIOCrlf_flush
	.globl	PerlIOCrlf_binmode
	.type	PerlIOCrlf_binmode, @function
PerlIOCrlf_binmode:
.LFB155:
	.loc 1 4318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 4319 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	(%rax), %rax	# *f_1(D), D.15895
	movl	16(%rax), %eax	# _2->flags, D.15896
	andl	$16384, %eax	#, D.15896
	testl	%eax, %eax	# D.15896
	je	.L893	#,
	.loc 1 4321 0
	movq	-8(%rbp), %rax	# f, tmp71
	movq	(%rax), %rax	# *f_1(D), D.15895
	movq	-8(%rbp), %rdx	# f, tmp72
	movq	(%rdx), %rdx	# *f_1(D), D.15895
	movl	16(%rdx), %edx	# _6->flags, D.15896
	andb	$191, %dh	#, D.15896
	movl	%edx, 16(%rax)	# D.15896, _5->flags
	.loc 1 4324 0
	movq	-8(%rbp), %rax	# f, tmp73
	movq	(%rax), %rax	# *f_1(D), D.15895
	movq	8(%rax), %rax	# _9->tab, D.15897
	cmpq	$PerlIO_crlf, %rax	#, D.15897
	jne	.L893	#,
	.loc 1 4325 0
	movq	-8(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	PerlIO_pop	#
.L893:
	.loc 1 4329 0
	movl	$0, %eax	#, D.15898
	.loc 1 4330 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	PerlIOCrlf_binmode, .-PerlIOCrlf_binmode
	.globl	PerlIO_crlf
	.section	.rodata
.LC50:
	.string	"crlf"
	.data
	.align 32
	.type	PerlIO_crlf, @object
	.size	PerlIO_crlf, 224
PerlIO_crlf:
# fsize:
	.quad	224
# name:
	.quad	.LC50
# size:
	.quad	80
# kind:
	.long	7
# Pushed:
	.zero	4
	.quad	PerlIOCrlf_pushed
# Popped:
	.quad	PerlIOBuf_popped
# Open:
	.quad	PerlIOBuf_open
# Binmode:
	.quad	PerlIOCrlf_binmode
# Getarg:
	.quad	0
# Fileno:
	.quad	PerlIOBase_fileno
# Dup:
	.quad	PerlIOBuf_dup
# Read:
	.quad	PerlIOBuf_read
# Unread:
	.quad	PerlIOCrlf_unread
# Write:
	.quad	PerlIOCrlf_write
# Seek:
	.quad	PerlIOBuf_seek
# Tell:
	.quad	PerlIOBuf_tell
# Close:
	.quad	PerlIOBuf_close
# Flush:
	.quad	PerlIOCrlf_flush
# Fill:
	.quad	PerlIOBuf_fill
# Eof:
	.quad	PerlIOBase_eof
# Error:
	.quad	PerlIOBase_error
# Clearerr:
	.quad	PerlIOBase_clearerr
# Setlinebuf:
	.quad	PerlIOBase_setlinebuf
# Get_base:
	.quad	PerlIOBuf_get_base
# Get_bufsiz:
	.quad	PerlIOBuf_bufsiz
# Get_ptr:
	.quad	PerlIOBuf_get_ptr
# Get_cnt:
	.quad	PerlIOCrlf_get_cnt
# Set_ptrcnt:
	.quad	PerlIOCrlf_set_ptrcnt
	.text
	.globl	Perl_PerlIO_stdin
	.type	Perl_PerlIO_stdin, @function
Perl_PerlIO_stdin:
.LFB156:
	.loc 1 4684 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4685 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.241
	testq	%rax, %rax	# PL_perlio.241
	jne	.L896	#,
	.loc 1 4686 0
	call	PerlIO_stdstreams	#
.L896:
	.loc 1 4688 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.242
	addq	$8, %rax	#, D.15900
	.loc 1 4689 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	Perl_PerlIO_stdin, .-Perl_PerlIO_stdin
	.globl	Perl_PerlIO_stdout
	.type	Perl_PerlIO_stdout, @function
Perl_PerlIO_stdout:
.LFB157:
	.loc 1 4693 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4694 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.243
	testq	%rax, %rax	# PL_perlio.243
	jne	.L899	#,
	.loc 1 4695 0
	call	PerlIO_stdstreams	#
.L899:
	.loc 1 4697 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.244
	addq	$16, %rax	#, D.15901
	.loc 1 4698 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	Perl_PerlIO_stdout, .-Perl_PerlIO_stdout
	.globl	Perl_PerlIO_stderr
	.type	Perl_PerlIO_stderr, @function
Perl_PerlIO_stderr:
.LFB158:
	.loc 1 4702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4703 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.245
	testq	%rax, %rax	# PL_perlio.245
	jne	.L902	#,
	.loc 1 4704 0
	call	PerlIO_stdstreams	#
.L902:
	.loc 1 4706 0
	movq	PL_perlio(%rip), %rax	# PL_perlio, PL_perlio.246
	addq	$24, %rax	#, D.15902
	.loc 1 4707 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	Perl_PerlIO_stderr, .-Perl_PerlIO_stderr
	.section	.rodata
	.align 8
.LC51:
	.string	"Don't know how to get file name"
	.text
	.globl	PerlIO_getname
	.type	PerlIO_getname, @function
PerlIO_getname:
.LFB159:
	.loc 1 4713 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# buf, buf
	.loc 1 4715 0
	movq	$0, -8(%rbp)	#, name
	.loc 1 4728 0
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 4730 0
	movq	-8(%rbp), %rax	# name, D.15903
	.loc 1 4731 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	PerlIO_getname, .-PerlIO_getname
	.globl	PerlIO_fdopen
	.type	PerlIO_fdopen, @function
PerlIO_fdopen:
.LFB160:
	.loc 1 4743 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# fd, fd
	movq	%rsi, -16(%rbp)	# mode, mode
	.loc 1 4745 0
	movl	-4(%rbp), %edx	# fd, tmp61
	movq	-16(%rbp), %rax	# mode, tmp62
	movq	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp62,
	movl	$0, %edi	#,
	call	PerlIO_openn	#
	.loc 1 4746 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	PerlIO_fdopen, .-PerlIO_fdopen
	.globl	PerlIO_open
	.type	PerlIO_open, @function
PerlIO_open:
.LFB161:
	.loc 1 4751 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# path, path
	movq	%rsi, -32(%rbp)	# mode, mode
	.loc 1 4753 0
	movq	-24(%rbp), %rax	# path, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movq	%rax, %rdx	#, D.15906
	movq	-24(%rbp), %rax	# path, tmp65
	movq	%rdx, %rsi	# D.15906,
	movq	%rax, %rdi	# tmp65,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15907,
	call	Perl_sv_2mortal	#
	movq	%rax, -8(%rbp)	# name.247, name
	.loc 1 4754 0
	movq	-32(%rbp), %rax	# mode, tmp66
	leaq	-8(%rbp), %rdx	#, tmp67
	movq	%rdx, 8(%rsp)	# tmp67,
	movl	$1, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rsi	# tmp66,
	movl	$0, %edi	#,
	call	PerlIO_openn	#
	.loc 1 4755 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	PerlIO_open, .-PerlIO_open
	.globl	PerlIO_reopen
	.type	PerlIO_reopen, @function
PerlIO_reopen:
.LFB162:
	.loc 1 4760 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# path, path
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# f, f
	.loc 1 4762 0
	movq	-24(%rbp), %rax	# path, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movq	%rax, %rdx	#, D.15909
	movq	-24(%rbp), %rax	# path, tmp65
	movq	%rdx, %rsi	# D.15909,
	movq	%rax, %rdi	# tmp65,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15910,
	call	Perl_sv_2mortal	#
	movq	%rax, -8(%rbp)	# name.248, name
	.loc 1 4763 0
	movq	-40(%rbp), %rcx	# f, tmp66
	movq	-32(%rbp), %rax	# mode, tmp67
	leaq	-8(%rbp), %rdx	#, tmp68
	movq	%rdx, 8(%rsp)	# tmp68,
	movl	$1, (%rsp)	#,
	movq	%rcx, %r9	# tmp66,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movq	%rax, %rsi	# tmp67,
	movl	$0, %edi	#,
	call	PerlIO_openn	#
	.loc 1 4764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	PerlIO_reopen, .-PerlIO_reopen
	.globl	PerlIO_getc
	.type	PerlIO_getc, @function
PerlIO_getc:
.LFB163:
	.loc 1 4769 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 4772 0
	leaq	-9(%rbp), %rcx	#, tmp63
	movq	-24(%rbp), %rax	# f, tmp64
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	Perl_PerlIO_read	#
	movq	%rax, -8(%rbp)	# tmp65, count
	.loc 1 4773 0
	cmpq	$1, -8(%rbp)	#, count
	jne	.L913	#,
	.loc 1 4774 0
	movzbl	-9(%rbp), %eax	# buf, D.15913
	movzbl	%al, %eax	# D.15914, D.15912
	jmp	.L915	#
.L913:
	.loc 1 4776 0
	movl	$-1, %eax	#, D.15912
.L915:
	.loc 1 4777 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	PerlIO_getc, .-PerlIO_getc
	.globl	PerlIO_ungetc
	.type	PerlIO_ungetc, @function
PerlIO_ungetc:
.LFB164:
	.loc 1 4782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# ch, ch
	.loc 1 4784 0
	cmpl	$-1, -28(%rbp)	#, ch
	je	.L917	#,
.LBB122:
	.loc 1 4785 0
	movl	-28(%rbp), %eax	# ch, tmp63
	movb	%al, -1(%rbp)	# buf.249, buf
	.loc 1 4786 0
	leaq	-1(%rbp), %rcx	#, tmp64
	movq	-24(%rbp), %rax	# f, tmp65
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_PerlIO_unread	#
	cmpq	$1, %rax	#, D.15916
	jne	.L917	#,
	.loc 1 4787 0
	movl	-28(%rbp), %eax	# ch, D.15915
	jmp	.L919	#
.L917:
.LBE122:
	.loc 1 4789 0
	movl	$-1, %eax	#, D.15915
.L919:
	.loc 1 4790 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	PerlIO_ungetc, .-PerlIO_ungetc
	.globl	PerlIO_putc
	.type	PerlIO_putc, @function
PerlIO_putc:
.LFB165:
	.loc 1 4795 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movl	%esi, -28(%rbp)	# ch, ch
	.loc 1 4797 0
	movl	-28(%rbp), %eax	# ch, tmp63
	movb	%al, -1(%rbp)	# buf.250, buf
	.loc 1 4798 0
	leaq	-1(%rbp), %rcx	#, tmp64
	movq	-24(%rbp), %rax	# f, tmp65
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_PerlIO_write	#
	.loc 1 4799 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	PerlIO_putc, .-PerlIO_putc
	.globl	PerlIO_puts
	.type	PerlIO_puts, @function
PerlIO_puts:
.LFB166:
	.loc 1 4804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 4806 0
	movq	-32(%rbp), %rax	# s, tmp62
	movq	%rax, %rdi	# tmp62,
	call	strlen	#
	movq	%rax, -8(%rbp)	# tmp63, len
	.loc 1 4807 0
	movq	-8(%rbp), %rdx	# len, tmp64
	movq	-32(%rbp), %rcx	# s, tmp65
	movq	-24(%rbp), %rax	# f, tmp66
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	Perl_PerlIO_write	#
	.loc 1 4808 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	PerlIO_puts, .-PerlIO_puts
	.globl	PerlIO_rewind
	.type	PerlIO_rewind, @function
PerlIO_rewind:
.LFB167:
	.loc 1 4813 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 4815 0
	movq	-8(%rbp), %rax	# f, tmp59
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	Perl_PerlIO_seek	#
	.loc 1 4816 0
	movq	-8(%rbp), %rax	# f, tmp60
	movq	%rax, %rdi	# tmp60,
	call	Perl_PerlIO_clearerr	#
	.loc 1 4817 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	PerlIO_rewind, .-PerlIO_rewind
	.section	.rodata
.LC52:
	.string	""
	.text
	.globl	PerlIO_vprintf
	.type	PerlIO_vprintf, @function
PerlIO_vprintf:
.LFB168:
	.loc 1 4822 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# f, f
	movq	%rsi, -80(%rbp)	# fmt, fmt
	movq	%rdx, -88(%rbp)	# ap, ap
	.loc 1 4824 0
	movl	$0, %esi	#,
	movl	$.LC52, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -48(%rbp)	# tmp68, sv
	.loc 1 4830 0
	leaq	-24(%rbp), %rax	#, tmp69
	movq	-88(%rbp), %rdx	# ap, tmp70
	movq	(%rdx), %rcx	#, tmp71
	movq	%rcx, (%rax)	# tmp71,
	movq	8(%rdx), %rcx	#, tmp72
	movq	%rcx, 8(%rax)	# tmp72,
	movq	16(%rdx), %rdx	#, tmp73
	movq	%rdx, 16(%rax)	# tmp73,
	.loc 1 4831 0
	leaq	-24(%rbp), %rdx	#, tmp74
	movq	-80(%rbp), %rcx	# fmt, tmp75
	movq	-48(%rbp), %rax	# sv, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_vcatpvf	#
	.loc 1 4835 0
	movq	-48(%rbp), %rax	# sv, tmp77
	movl	12(%rax), %eax	# sv_2->sv_flags, D.15921
	andl	$262144, %eax	#, D.15921
	testl	%eax, %eax	# D.15921
	je	.L926	#,
	.loc 1 4835 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp78
	movq	(%rax), %rax	# sv_2->sv_any, D.15922
	movq	8(%rax), %rax	# MEM[(struct XPV *)_7].xpv_cur, len.252
	movq	%rax, -56(%rbp)	# len.252, len
	movq	-48(%rbp), %rax	# sv, tmp79
	movq	(%rax), %rax	# sv_2->sv_any, D.15922
	movq	(%rax), %rax	# MEM[(struct XPV *)_9].xpv_pv, iftmp.251
	jmp	.L927	#
.L926:
	.loc 1 4835 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp80
	movq	-48(%rbp), %rax	# sv, tmp81
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_2pv_flags	#
.L927:
	.loc 1 4835 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.251, s
	.loc 1 4836 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rdx	# len, len.253
	movq	-40(%rbp), %rcx	# s, tmp82
	movq	-72(%rbp), %rax	# f, tmp83
	movq	%rcx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	Perl_PerlIO_write	#
	movq	%rax, -32(%rbp)	# tmp84, wrote
	.loc 1 4837 0 discriminator 3
	movq	-48(%rbp), %rax	# sv, tmp85
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_free	#
	.loc 1 4838 0 discriminator 3
	movq	-32(%rbp), %rax	# wrote, tmp86
	.loc 1 4839 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	PerlIO_vprintf, .-PerlIO_vprintf
	.globl	PerlIO_printf
	.type	PerlIO_printf, @function
PerlIO_printf:
.LFB169:
	.loc 1 4844 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# f, f
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L930	#,
	.loc 1 4844 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L930:
	movq	%rsi, -224(%rbp)	# fmt, fmt
	.loc 1 4847 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp67
	movq	%rax, -192(%rbp)	# tmp67, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp68
	movq	%rax, -184(%rbp)	# tmp68, MEM[(struct [1] *)&ap].reg_save_area
	.loc 1 4848 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-224(%rbp), %rcx	# fmt, tmp63
	movq	-216(%rbp), %rax	# f, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	PerlIO_vprintf	#
	movl	%eax, -204(%rbp)	# tmp65, result
	.loc 1 4850 0
	movl	-204(%rbp), %eax	# result, D.15925
	.loc 1 4851 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	PerlIO_printf, .-PerlIO_printf
	.globl	PerlIO_stdoutf
	.type	PerlIO_stdoutf, @function
PerlIO_stdoutf:
.LFB170:
	.loc 1 4856 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L933	#,
	.loc 1 4856 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L933:
	movq	%rdi, -216(%rbp)	# fmt, fmt
	.loc 1 4860 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp67
	movq	%rax, -192(%rbp)	# tmp67, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp68
	movq	%rax, -184(%rbp)	# tmp68, MEM[(struct [1] *)&ap].reg_save_area
	.loc 1 4861 0
	call	Perl_PerlIO_stdout	#
	leaq	-200(%rbp), %rdx	#, tmp63
	movq	-216(%rbp), %rcx	# fmt, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# D.15928,
	call	PerlIO_vprintf	#
	movl	%eax, -204(%rbp)	# tmp65, result
	.loc 1 4863 0
	movl	-204(%rbp), %eax	# result, D.15929
	.loc 1 4864 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	PerlIO_stdoutf, .-PerlIO_stdoutf
	.section	.rodata
.LC53:
	.string	"w+"
	.text
	.globl	PerlIO_tmpfile
	.type	PerlIO_tmpfile, @function
PerlIO_tmpfile:
.LFB171:
	.loc 1 4869 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 4871 0
	movq	$0, -24(%rbp)	#, f
	.loc 1 4872 0
	movl	$-1, -28(%rbp)	#, fd
	.loc 1 4893 0
	call	tmpfile	#
	movq	%rax, -16(%rbp)	# tmp62, stdio
	.loc 1 4895 0
	cmpq	$0, -16(%rbp)	#, stdio
	je	.L936	#,
	.loc 1 4896 0
	call	PerlIO_allocate	#
	movl	$0, %ecx	#,
	movl	$.LC53, %edx	#,
	movl	$PerlIO_stdio, %esi	#,
	movq	%rax, %rdi	# D.15932,
	call	PerlIO_push	#
	movq	%rax, -24(%rbp)	# tmp63, f
	cmpq	$0, -24(%rbp)	#, f
	je	.L936	#,
.LBB123:
	.loc 1 4898 0
	movq	-24(%rbp), %rax	# f, tmp64
	movq	(%rax), %rax	# *f_6, tmp65
	movq	%rax, -8(%rbp)	# tmp65, s
	.loc 1 4900 0
	cmpq	$0, -8(%rbp)	#, s
	je	.L936	#,
	.loc 1 4901 0
	movq	-8(%rbp), %rax	# s, tmp66
	movq	-16(%rbp), %rdx	# stdio, tmp67
	movq	%rdx, 24(%rax)	# tmp67, s_7->stdio
.L936:
.LBE123:
	.loc 1 4906 0
	movq	-24(%rbp), %rax	# f, D.15932
	.loc 1 4907 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	PerlIO_tmpfile, .-PerlIO_tmpfile
	.globl	PerlIO_setpos
	.type	PerlIO_setpos, @function
PerlIO_setpos:
.LFB172:
	.loc 1 4925 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# pos, pos
	.loc 1 4927 0
	movq	-32(%rbp), %rax	# pos, tmp72
	movl	12(%rax), %eax	# pos_3(D)->sv_flags, D.15935
	andl	$118423552, %eax	#, D.15935
	testl	%eax, %eax	# D.15935
	je	.L939	#,
.LBB124:
	.loc 1 4929 0
	movq	-32(%rbp), %rax	# pos, tmp73
	movl	12(%rax), %eax	# pos_3(D)->sv_flags, D.15935
	andl	$262144, %eax	#, D.15935
	testl	%eax, %eax	# D.15935
	je	.L940	#,
	.loc 1 4929 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pos, tmp74
	movq	(%rax), %rax	# pos_3(D)->sv_any, D.15936
	movq	8(%rax), %rax	# MEM[(struct XPV *)_8].xpv_cur, len.255
	movq	%rax, -16(%rbp)	# len.255, len
	movq	-32(%rbp), %rax	# pos, tmp75
	movq	(%rax), %rax	# pos_3(D)->sv_any, D.15936
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, iftmp.254
	jmp	.L941	#
.L940:
	.loc 1 4929 0 discriminator 2
	leaq	-16(%rbp), %rcx	#, tmp76
	movq	-32(%rbp), %rax	# pos, tmp77
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	Perl_sv_2pv_flags	#
.L941:
	.loc 1 4929 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.254, posn
	.loc 1 4930 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, f
	je	.L939	#,
	.loc 1 4930 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# len, len.256
	cmpq	$8, %rax	#, len.256
	jne	.L939	#,
	.loc 1 4931 0 is_stmt 1
	movq	-8(%rbp), %rax	# posn, tmp78
	movq	(%rax), %rcx	# *posn_13, D.15937
	movq	-24(%rbp), %rax	# f, tmp79
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15937,
	movq	%rax, %rdi	# tmp79,
	call	Perl_PerlIO_seek	#
	jmp	.L943	#
.L939:
.LBE124:
	.loc 1 4933 0
	call	__errno_location	#
	movl	$22, (%rax)	#, *_18
	.loc 1 4934 0
	movl	$-1, %eax	#, D.15934
.L943:
	.loc 1 4935 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	PerlIO_setpos, .-PerlIO_setpos
	.globl	PerlIO_getpos
	.type	PerlIO_getpos, @function
PerlIO_getpos:
.LFB173:
	.loc 1 4962 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# pos, pos
	.loc 1 4964 0
	movq	-24(%rbp), %rax	# f, tmp64
	movq	%rax, %rdi	# tmp64,
	call	Perl_PerlIO_tell	#
	movq	%rax, -8(%rbp)	# posn.257, posn
	.loc 1 4965 0
	leaq	-8(%rbp), %rcx	#, tmp65
	movq	-32(%rbp), %rax	# pos, tmp66
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	Perl_sv_setpvn	#
	.loc 1 4966 0
	movq	-8(%rbp), %rax	# posn, posn.259
	cmpq	$-1, %rax	#, posn.259
	jne	.L945	#,
	.loc 1 4966 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.258
	jmp	.L946	#
.L945:
	.loc 1 4966 0 discriminator 2
	movl	$0, %eax	#, iftmp.258
.L946:
	.loc 1 4967 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	PerlIO_getpos, .-PerlIO_getpos
	.section	.rodata
	.align 8
.LC54:
	.string	"panic: sprintf overflow - memory corrupted!\n"
	.text
	.globl	PerlIO_vsprintf
	.type	PerlIO_vsprintf, @function
PerlIO_vsprintf:
.LFB174:
	.loc 1 5009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# fmt, fmt
	movq	%rcx, -48(%rbp)	# ap, ap
	.loc 1 5010 0
	movq	-48(%rbp), %rdx	# ap, tmp83
	movq	-40(%rbp), %rcx	# fmt, tmp84
	movq	-24(%rbp), %rax	# s, tmp85
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	vsprintf	#
	movl	%eax, -4(%rbp)	# tmp86, val
	.loc 1 5011 0
	cmpl	$0, -28(%rbp)	#, n
	js	.L949	#,
	.loc 1 5012 0
	movq	-24(%rbp), %rax	# s, tmp87
	movq	%rax, %rdi	# tmp87,
	call	strlen	#
	movl	-28(%rbp), %edx	# n, tmp88
	movslq	%edx, %rdx	# tmp88, D.15940
	cmpq	%rdx, %rax	# D.15940, D.15940
	jb	.L949	#,
.LBB125:
	.loc 1 5014 0
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.261
	testq	%rax, %rax	# PL_stderrgv.261
	je	.L950	#,
	.loc 1 5014 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.262
	movl	12(%rax), %eax	# PL_stderrgv.262_10->sv_flags, D.15941
	movzbl	%al, %eax	# D.15941, D.15941
	cmpl	$13, %eax	#, D.15941
	jne	.L950	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.263
	movq	(%rax), %rax	# PL_stderrgv.263_13->sv_any, D.15942
	movq	56(%rax), %rax	# _14->xgv_gp, D.15943
	movq	16(%rax), %rax	# _15->gp_io, D.15944
	testq	%rax, %rax	# D.15944
	je	.L950	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.264
	movq	(%rax), %rax	# PL_stderrgv.264_17->sv_any, D.15942
	movq	56(%rax), %rax	# _18->xgv_gp, D.15943
	movq	16(%rax), %rax	# _19->gp_io, D.15944
	movq	(%rax), %rax	# _20->sv_any, D.15945
	movq	64(%rax), %rax	# _21->xio_ofp, D.15946
	testq	%rax, %rax	# D.15946
	je	.L950	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.265
	movq	(%rax), %rax	# PL_stderrgv.265_23->sv_any, D.15942
	movq	56(%rax), %rax	# _24->xgv_gp, D.15943
	movq	16(%rax), %rax	# _25->gp_io, D.15944
	movq	(%rax), %rax	# _26->sv_any, D.15945
	movq	64(%rax), %rax	# _27->xio_ofp, iftmp.260
	jmp	.L951	#
.L950:
	.loc 1 5014 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L951:
	.loc 1 5014 0 discriminator 3
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# iftmp.260,
	call	PerlIO_puts	#
	.loc 1 5016 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L949:
.LBE125:
	.loc 1 5019 0
	movl	-4(%rbp), %eax	# val, D.15947
	.loc 1 5020 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	PerlIO_vsprintf, .-PerlIO_vsprintf
	.globl	PerlIO_sprintf
	.type	PerlIO_sprintf, @function
PerlIO_sprintf:
.LFB175:
	.loc 1 5026 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movq	%rdi, -216(%rbp)	# s, s
	movl	%esi, -220(%rbp)	# n, n
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L954	#,
	.loc 1 5026 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L954:
	movq	%rdx, -232(%rbp)	# fmt, fmt
	.loc 1 5029 0
	movl	$24, -200(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp68
	movq	%rax, -192(%rbp)	# tmp68, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, MEM[(struct [1] *)&ap].reg_save_area
	.loc 1 5030 0
	leaq	-200(%rbp), %rcx	#, tmp62
	movq	-232(%rbp), %rdx	# fmt, tmp63
	movl	-220(%rbp), %esi	# n, tmp64
	movq	-216(%rbp), %rax	# s, tmp65
	movq	%rax, %rdi	# tmp65,
	call	PerlIO_vsprintf	#
	movl	%eax, -204(%rbp)	# tmp66, result
	.loc 1 5032 0
	movl	-204(%rbp), %eax	# result, D.15949
	.loc 1 5033 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	PerlIO_sprintf, .-PerlIO_sprintf
	.local	dbg.10545
	.comm	dbg.10545,4,4
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/dirent.h"
	.file 8 "perl.h"
	.file 9 "op.h"
	.file 10 "cop.h"
	.file 11 "sv.h"
	.file 12 "regexp.h"
	.file 13 "gv.h"
	.file 14 "mg.h"
	.file 15 "av.h"
	.file 16 "hv.h"
	.file 17 "cv.h"
	.file 18 "handy.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/libio.h"
	.file 21 "perlio.h"
	.file 22 "perliol.h"
	.file 23 "pad.h"
	.file 24 "intrpvar.h"
	.file 25 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6116
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF643
	.byte	0x1
	.long	.LASF644
	.long	.LASF645
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x8d
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x56
	.long	0x65
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x6d
	.long	0x84
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x7
	.long	0x95
	.long	0xdb
	.uleb128 0x8
	.long	0x7b
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0x28
	.long	0xe6
	.uleb128 0x7
	.long	0xf6
	.long	0xf6
	.uleb128 0x8
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0x133
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0
	.long	0x3b
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0
	.long	0x3b
	.byte	0x4
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0
	.long	0x82
	.byte	0x8
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0
	.long	0x82
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x5
	.byte	0x62
	.long	0xdb
	.uleb128 0x6
	.byte	0x8
	.long	0x144
	.uleb128 0xb
	.long	0x95
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.byte	0x8
	.long	0x155
	.uleb128 0xc
	.uleb128 0xd
	.string	"DIR"
	.byte	0x7
	.byte	0x80
	.long	0x161
	.uleb128 0xe
	.long	.LASF266
	.uleb128 0xf
	.string	"IV"
	.byte	0x8
	.value	0x52b
	.long	0x5e
	.uleb128 0xf
	.string	"UV"
	.byte	0x8
	.value	0x52c
	.long	0x42
	.uleb128 0xf
	.string	"NV"
	.byte	0x8
	.value	0x5f3
	.long	0x187
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF23
	.uleb128 0x10
	.long	.LASF24
	.byte	0x8
	.value	0x7d3
	.long	0xb2
	.uleb128 0xf
	.string	"OP"
	.byte	0x8
	.value	0x7d5
	.long	0x1a5
	.uleb128 0x11
	.string	"op"
	.byte	0x28
	.byte	0x9
	.byte	0xe2
	.long	0x211
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xe3
	.long	0x130e
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xe3
	.long	0x130e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xe3
	.long	0x1392
	.byte	0x10
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xe3
	.long	0x137c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xe3
	.long	0xdbd
	.byte	0x20
	.uleb128 0xa
	.long	.LASF31
	.byte	0x9
	.byte	0xe3
	.long	0xdbd
	.byte	0x22
	.uleb128 0xa
	.long	.LASF32
	.byte	0x9
	.byte	0xe3
	.long	0xdb3
	.byte	0x24
	.uleb128 0xa
	.long	.LASF33
	.byte	0x9
	.byte	0xe3
	.long	0xdb3
	.byte	0x25
	.byte	0
	.uleb128 0xf
	.string	"COP"
	.byte	0x8
	.value	0x7d6
	.long	0x21d
	.uleb128 0x11
	.string	"cop"
	.byte	0x60
	.byte	0xa
	.byte	0x10
	.long	0x2ea
	.uleb128 0xa
	.long	.LASF26
	.byte	0xa
	.byte	0x11
	.long	0x130e
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0xa
	.byte	0x11
	.long	0x130e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0xa
	.byte	0x11
	.long	0x1392
	.byte	0x10
	.uleb128 0xa
	.long	.LASF29
	.byte	0xa
	.byte	0x11
	.long	0x137c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF30
	.byte	0xa
	.byte	0x11
	.long	0xdbd
	.byte	0x20
	.uleb128 0xa
	.long	.LASF31
	.byte	0xa
	.byte	0x11
	.long	0xdbd
	.byte	0x22
	.uleb128 0xa
	.long	.LASF32
	.byte	0xa
	.byte	0x11
	.long	0xdb3
	.byte	0x24
	.uleb128 0xa
	.long	.LASF33
	.byte	0xa
	.byte	0x11
	.long	0xdb3
	.byte	0x25
	.uleb128 0xa
	.long	.LASF34
	.byte	0xa
	.byte	0x12
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF35
	.byte	0xa
	.byte	0x17
	.long	0x12f6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF36
	.byte	0xa
	.byte	0x18
	.long	0x132b
	.byte	0x38
	.uleb128 0xa
	.long	.LASF37
	.byte	0xa
	.byte	0x1a
	.long	0xdd3
	.byte	0x40
	.uleb128 0xa
	.long	.LASF38
	.byte	0xa
	.byte	0x1b
	.long	0xdc8
	.byte	0x44
	.uleb128 0xa
	.long	.LASF39
	.byte	0xa
	.byte	0x1c
	.long	0xdde
	.byte	0x48
	.uleb128 0xa
	.long	.LASF40
	.byte	0xa
	.byte	0x1d
	.long	0xdfb
	.byte	0x50
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x1e
	.long	0xdfb
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF42
	.byte	0x8
	.value	0x7db
	.long	0x2f6
	.uleb128 0x9
	.long	.LASF43
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x3e4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xfe
	.long	0x130e
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xfe
	.long	0x130e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xfe
	.long	0x1392
	.byte	0x10
	.uleb128 0xa
	.long	.LASF29
	.byte	0x9
	.byte	0xfe
	.long	0x137c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF30
	.byte	0x9
	.byte	0xfe
	.long	0xdbd
	.byte	0x20
	.uleb128 0xa
	.long	.LASF31
	.byte	0x9
	.byte	0xfe
	.long	0xdbd
	.byte	0x22
	.uleb128 0xa
	.long	.LASF32
	.byte	0x9
	.byte	0xfe
	.long	0xdb3
	.byte	0x24
	.uleb128 0xa
	.long	.LASF33
	.byte	0x9
	.byte	0xfe
	.long	0xdb3
	.byte	0x25
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0xff
	.long	0x130e
	.byte	0x28
	.uleb128 0x12
	.long	.LASF45
	.byte	0x9
	.value	0x100
	.long	0x130e
	.byte	0x30
	.uleb128 0x12
	.long	.LASF46
	.byte	0x9
	.value	0x101
	.long	0x130e
	.byte	0x38
	.uleb128 0x12
	.long	.LASF47
	.byte	0x9
	.value	0x102
	.long	0x130e
	.byte	0x40
	.uleb128 0x12
	.long	.LASF48
	.byte	0x9
	.value	0x103
	.long	0x1398
	.byte	0x48
	.uleb128 0x12
	.long	.LASF49
	.byte	0x9
	.value	0x107
	.long	0x139e
	.byte	0x50
	.uleb128 0x12
	.long	.LASF50
	.byte	0x9
	.value	0x109
	.long	0xdd3
	.byte	0x58
	.uleb128 0x12
	.long	.LASF51
	.byte	0x9
	.value	0x10a
	.long	0xdd3
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF52
	.byte	0x9
	.value	0x10b
	.long	0xdb3
	.byte	0x60
	.uleb128 0x12
	.long	.LASF53
	.byte	0x9
	.value	0x10f
	.long	0x12f6
	.byte	0x68
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x8
	.value	0x7e1
	.long	0x3f0
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x40b
	.uleb128 0x12
	.long	.LASF56
	.byte	0x8
	.value	0xea8
	.long	0x95
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x416
	.uleb128 0x11
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x446
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x44
	.long	0x82
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x45
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x46
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x451
	.uleb128 0x11
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x481
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x56
	.long	0x12de
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x57
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x58
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x48c
	.uleb128 0x11
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x4bc
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x5c
	.long	0x12e4
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x5d
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x5e
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x4c7
	.uleb128 0x11
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x4f7
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x50
	.long	0x12d8
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x51
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x52
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x8
	.value	0x7ee
	.long	0x503
	.uleb128 0x9
	.long	.LASF61
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x5dc
	.uleb128 0xa
	.long	.LASF62
	.byte	0xc
	.byte	0x20
	.long	0x1231
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0xc
	.byte	0x21
	.long	0x1231
	.byte	0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x22
	.long	0x1237
	.byte	0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x23
	.long	0x1242
	.byte	0x18
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x24
	.long	0x8f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x25
	.long	0x124d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF68
	.byte	0xc
	.byte	0x26
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x28
	.long	0x1253
	.byte	0x38
	.uleb128 0xa
	.long	.LASF70
	.byte	0xc
	.byte	0x29
	.long	0xdc8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0x2a
	.long	0xdc8
	.byte	0x44
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0x2b
	.long	0xdc8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x2c
	.long	0xdc8
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0x2d
	.long	0xdd3
	.byte	0x50
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0x2e
	.long	0xdd3
	.byte	0x54
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0x2f
	.long	0xdd3
	.byte	0x58
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0x30
	.long	0xdd3
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF78
	.byte	0xc
	.byte	0x32
	.long	0x1259
	.byte	0x60
	.byte	0
	.uleb128 0xf
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x5e7
	.uleb128 0x11
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x683
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0xc
	.long	0xdfb
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0xd
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF81
	.byte	0xd
	.byte	0xe
	.long	0x136b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd
	.byte	0xf
	.long	0x131f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0x10
	.long	0x1331
	.byte	0x20
	.uleb128 0xa
	.long	.LASF84
	.byte	0xd
	.byte	0x11
	.long	0x12f6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0x12
	.long	0x132b
	.byte	0x30
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x13
	.long	0x131f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF87
	.byte	0xd
	.byte	0x14
	.long	0xdd3
	.byte	0x40
	.uleb128 0xa
	.long	.LASF88
	.byte	0xd
	.byte	0x15
	.long	0xdd3
	.byte	0x44
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0x16
	.long	0xdde
	.byte	0x48
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0x17
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x68e
	.uleb128 0x11
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x6be
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x4a
	.long	0x12d2
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x4b
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x4c
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x6ee
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x62
	.long	0x12ea
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x63
	.long	0xdd3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x64
	.long	0xdd3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x8
	.value	0x7f5
	.long	0x6fa
	.uleb128 0x9
	.long	.LASF92
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x767
	.uleb128 0xa
	.long	.LASF93
	.byte	0xe
	.byte	0x1b
	.long	0x12f0
	.byte	0
	.uleb128 0xa
	.long	.LASF94
	.byte	0xe
	.byte	0x1c
	.long	0x14af
	.byte	0x8
	.uleb128 0xa
	.long	.LASF95
	.byte	0xe
	.byte	0x1d
	.long	0xdbd
	.byte	0x10
	.uleb128 0xa
	.long	.LASF96
	.byte	0xe
	.byte	0x1e
	.long	0x95
	.byte	0x12
	.uleb128 0xa
	.long	.LASF97
	.byte	0xe
	.byte	0x1f
	.long	0xdb3
	.byte	0x13
	.uleb128 0xa
	.long	.LASF98
	.byte	0xe
	.byte	0x20
	.long	0xdfb
	.byte	0x18
	.uleb128 0xa
	.long	.LASF99
	.byte	0xe
	.byte	0x21
	.long	0x8f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF100
	.byte	0xe
	.byte	0x22
	.long	0xdc8
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0x773
	.uleb128 0x11
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0x78c
	.uleb128 0xa
	.long	.LASF101
	.byte	0xb
	.byte	0xf6
	.long	0xdfb
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0x798
	.uleb128 0x11
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x7c9
	.uleb128 0xa
	.long	.LASF102
	.byte	0xb
	.byte	0xfa
	.long	0x8f
	.byte	0
	.uleb128 0xa
	.long	.LASF103
	.byte	0xb
	.byte	0xfb
	.long	0x18e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF104
	.byte	0xb
	.byte	0xfc
	.long	0x18e
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF105
	.byte	0x8
	.value	0x7f8
	.long	0x7d5
	.uleb128 0x9
	.long	.LASF106
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0x816
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x100
	.long	0x8f
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x101
	.long	0x18e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x102
	.long	0x18e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF107
	.byte	0xb
	.value	0x103
	.long	0x166
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF108
	.byte	0x8
	.value	0x7fa
	.long	0x822
	.uleb128 0x13
	.long	.LASF109
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0x871
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x10e
	.long	0x8f
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x10f
	.long	0x18e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x110
	.long	0x18e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF107
	.byte	0xb
	.value	0x111
	.long	0x166
	.byte	0x18
	.uleb128 0x12
	.long	.LASF110
	.byte	0xb
	.value	0x112
	.long	0x17c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF111
	.byte	0x8
	.value	0x7fd
	.long	0x87d
	.uleb128 0x9
	.long	.LASF112
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0x902
	.uleb128 0xa
	.long	.LASF113
	.byte	0xf
	.byte	0xc
	.long	0x8f
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0xf
	.byte	0xd
	.long	0xa7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0xf
	.byte	0xe
	.long	0xa7
	.byte	0x10
	.uleb128 0xa
	.long	.LASF116
	.byte	0xf
	.byte	0xf
	.long	0x166
	.byte	0x18
	.uleb128 0xa
	.long	.LASF110
	.byte	0xf
	.byte	0x10
	.long	0x17c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0xf
	.byte	0x11
	.long	0x12f0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0xf
	.byte	0x12
	.long	0x12f6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF119
	.byte	0xf
	.byte	0x14
	.long	0x13a4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF120
	.byte	0xf
	.byte	0x15
	.long	0xdfb
	.byte	0x40
	.uleb128 0xa
	.long	.LASF121
	.byte	0xf
	.byte	0x16
	.long	0xdb3
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.long	.LASF122
	.byte	0x8
	.value	0x7fe
	.long	0x90e
	.uleb128 0x9
	.long	.LASF123
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0x99f
	.uleb128 0xa
	.long	.LASF124
	.byte	0x10
	.byte	0x23
	.long	0x8f
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x10
	.byte	0x24
	.long	0x18e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF126
	.byte	0x10
	.byte	0x25
	.long	0x18e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF127
	.byte	0x10
	.byte	0x26
	.long	0x166
	.byte	0x18
	.uleb128 0xa
	.long	.LASF110
	.byte	0x10
	.byte	0x27
	.long	0x17c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0x10
	.byte	0x29
	.long	0x12f0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0x10
	.byte	0x2a
	.long	0x12f6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF128
	.byte	0x10
	.byte	0x2c
	.long	0xdc8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF129
	.byte	0x10
	.byte	0x2d
	.long	0x1426
	.byte	0x40
	.uleb128 0xa
	.long	.LASF130
	.byte	0x10
	.byte	0x2e
	.long	0x1398
	.byte	0x48
	.uleb128 0xa
	.long	.LASF131
	.byte	0x10
	.byte	0x2f
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF132
	.byte	0x8
	.value	0x7ff
	.long	0x9ab
	.uleb128 0x13
	.long	.LASF133
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xa55
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x131
	.long	0x8f
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x132
	.long	0x18e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x133
	.long	0x18e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF107
	.byte	0xb
	.value	0x134
	.long	0x166
	.byte	0x18
	.uleb128 0x12
	.long	.LASF110
	.byte	0xb
	.value	0x135
	.long	0x17c
	.byte	0x20
	.uleb128 0x12
	.long	.LASF117
	.byte	0xb
	.value	0x136
	.long	0x12f0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF118
	.byte	0xb
	.value	0x137
	.long	0x12f6
	.byte	0x30
	.uleb128 0x12
	.long	.LASF134
	.byte	0xb
	.value	0x139
	.long	0x12fc
	.byte	0x38
	.uleb128 0x12
	.long	.LASF135
	.byte	0xb
	.value	0x13a
	.long	0x8f
	.byte	0x40
	.uleb128 0x12
	.long	.LASF136
	.byte	0xb
	.value	0x13b
	.long	0x18e
	.byte	0x48
	.uleb128 0x12
	.long	.LASF137
	.byte	0xb
	.value	0x13c
	.long	0x12f6
	.byte	0x50
	.uleb128 0x12
	.long	.LASF138
	.byte	0xb
	.value	0x13d
	.long	0xdb3
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF139
	.byte	0x8
	.value	0x800
	.long	0xa61
	.uleb128 0x9
	.long	.LASF140
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0xb52
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0xf
	.long	0x8f
	.byte	0
	.uleb128 0xa
	.long	.LASF103
	.byte	0x11
	.byte	0x10
	.long	0x18e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF104
	.byte	0x11
	.byte	0x11
	.long	0x18e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF116
	.byte	0x11
	.byte	0x12
	.long	0x166
	.byte	0x18
	.uleb128 0xa
	.long	.LASF110
	.byte	0x11
	.byte	0x13
	.long	0x17c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF117
	.byte	0x11
	.byte	0x14
	.long	0x12f0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF118
	.byte	0x11
	.byte	0x15
	.long	0x12f6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF141
	.byte	0x11
	.byte	0x17
	.long	0x12f6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF142
	.byte	0x11
	.byte	0x18
	.long	0x130e
	.byte	0x40
	.uleb128 0xa
	.long	.LASF143
	.byte	0x11
	.byte	0x19
	.long	0x130e
	.byte	0x48
	.uleb128 0xa
	.long	.LASF144
	.byte	0x11
	.byte	0x1a
	.long	0x1325
	.byte	0x50
	.uleb128 0xa
	.long	.LASF145
	.byte	0x11
	.byte	0x1b
	.long	0xd04
	.byte	0x58
	.uleb128 0xa
	.long	.LASF146
	.byte	0x11
	.byte	0x1c
	.long	0x132b
	.byte	0x60
	.uleb128 0xa
	.long	.LASF147
	.byte	0x11
	.byte	0x1d
	.long	0x8f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF148
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF149
	.byte	0x11
	.byte	0x1f
	.long	0x1387
	.byte	0x78
	.uleb128 0xa
	.long	.LASF150
	.byte	0x11
	.byte	0x20
	.long	0x131f
	.byte	0x80
	.uleb128 0xa
	.long	.LASF151
	.byte	0x11
	.byte	0x25
	.long	0x1302
	.byte	0x88
	.uleb128 0xa
	.long	.LASF152
	.byte	0x11
	.byte	0x26
	.long	0xdd3
	.byte	0x8c
	.byte	0
	.uleb128 0x10
	.long	.LASF153
	.byte	0x8
	.value	0x803
	.long	0xb5e
	.uleb128 0x13
	.long	.LASF154
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xc97
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x171
	.long	0x8f
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x172
	.long	0x18e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x173
	.long	0x18e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF107
	.byte	0xb
	.value	0x174
	.long	0x166
	.byte	0x18
	.uleb128 0x12
	.long	.LASF110
	.byte	0xb
	.value	0x175
	.long	0x17c
	.byte	0x20
	.uleb128 0x12
	.long	.LASF117
	.byte	0xb
	.value	0x176
	.long	0x12f0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF118
	.byte	0xb
	.value	0x177
	.long	0x12f6
	.byte	0x30
	.uleb128 0x12
	.long	.LASF155
	.byte	0xb
	.value	0x179
	.long	0x135f
	.byte	0x38
	.uleb128 0x12
	.long	.LASF156
	.byte	0xb
	.value	0x17a
	.long	0x135f
	.byte	0x40
	.uleb128 0x12
	.long	.LASF157
	.byte	0xb
	.value	0x187
	.long	0x1337
	.byte	0x48
	.uleb128 0x12
	.long	.LASF158
	.byte	0xb
	.value	0x188
	.long	0x166
	.byte	0x50
	.uleb128 0x12
	.long	.LASF159
	.byte	0xb
	.value	0x189
	.long	0x166
	.byte	0x58
	.uleb128 0x12
	.long	.LASF160
	.byte	0xb
	.value	0x18a
	.long	0x166
	.byte	0x60
	.uleb128 0x12
	.long	.LASF161
	.byte	0xb
	.value	0x18b
	.long	0x166
	.byte	0x68
	.uleb128 0x12
	.long	.LASF162
	.byte	0xb
	.value	0x18c
	.long	0x8f
	.byte	0x70
	.uleb128 0x12
	.long	.LASF163
	.byte	0xb
	.value	0x18d
	.long	0x132b
	.byte	0x78
	.uleb128 0x12
	.long	.LASF164
	.byte	0xb
	.value	0x18e
	.long	0x8f
	.byte	0x80
	.uleb128 0x12
	.long	.LASF165
	.byte	0xb
	.value	0x18f
	.long	0x132b
	.byte	0x88
	.uleb128 0x12
	.long	.LASF166
	.byte	0xb
	.value	0x190
	.long	0x8f
	.byte	0x90
	.uleb128 0x12
	.long	.LASF167
	.byte	0xb
	.value	0x191
	.long	0x132b
	.byte	0x98
	.uleb128 0x12
	.long	.LASF168
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF169
	.byte	0xb
	.value	0x193
	.long	0x95
	.byte	0xa2
	.uleb128 0x12
	.long	.LASF170
	.byte	0xb
	.value	0x194
	.long	0x95
	.byte	0xa3
	.byte	0
	.uleb128 0x10
	.long	.LASF171
	.byte	0x8
	.value	0x804
	.long	0xca3
	.uleb128 0x9
	.long	.LASF172
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xd04
	.uleb128 0xa
	.long	.LASF173
	.byte	0xe
	.byte	0xf
	.long	0x1446
	.byte	0
	.uleb128 0xa
	.long	.LASF174
	.byte	0xe
	.byte	0x10
	.long	0x1446
	.byte	0x8
	.uleb128 0xa
	.long	.LASF175
	.byte	0xe
	.byte	0x11
	.long	0x1460
	.byte	0x10
	.uleb128 0xa
	.long	.LASF176
	.byte	0xe
	.byte	0x12
	.long	0x1446
	.byte	0x18
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0x13
	.long	0x1446
	.byte	0x20
	.uleb128 0xa
	.long	.LASF178
	.byte	0xe
	.byte	0x14
	.long	0x1489
	.byte	0x28
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0x16
	.long	0x14a9
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0xd10
	.uleb128 0x14
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0xd72
	.uleb128 0x15
	.long	.LASF180
	.byte	0x8
	.value	0x9f2
	.long	0x82
	.uleb128 0x15
	.long	.LASF181
	.byte	0x8
	.value	0x9f3
	.long	0xdc8
	.uleb128 0x15
	.long	.LASF182
	.byte	0x8
	.value	0x9f4
	.long	0x166
	.uleb128 0x15
	.long	.LASF183
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x15
	.long	.LASF184
	.byte	0x8
	.value	0x9f6
	.long	0x95
	.uleb128 0x15
	.long	.LASF185
	.byte	0x8
	.value	0x9f7
	.long	0xdf5
	.uleb128 0x15
	.long	.LASF186
	.byte	0x8
	.value	0x9f8
	.long	0xdf5
	.byte	0
	.uleb128 0x10
	.long	.LASF187
	.byte	0x8
	.value	0x808
	.long	0xd7e
	.uleb128 0x13
	.long	.LASF188
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0xdb3
	.uleb128 0x12
	.long	.LASF189
	.byte	0xb
	.value	0x4ee
	.long	0x1331
	.byte	0
	.uleb128 0x12
	.long	.LASF190
	.byte	0xb
	.value	0x4ef
	.long	0x171
	.byte	0x8
	.uleb128 0x12
	.long	.LASF191
	.byte	0xb
	.value	0x4f0
	.long	0x1365
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0xd
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0xd
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0xd
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0x10
	.long	.LASF192
	.byte	0x12
	.value	0x209
	.long	0xdd3
	.uleb128 0x16
	.long	0xdf5
	.uleb128 0x17
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdea
	.uleb128 0x6
	.byte	0x8
	.long	0x40b
	.uleb128 0x4
	.long	.LASF193
	.byte	0x13
	.byte	0x30
	.long	0xe0c
	.uleb128 0x9
	.long	.LASF194
	.byte	0xd8
	.byte	0x14
	.byte	0xf6
	.long	0xf8d
	.uleb128 0xa
	.long	.LASF195
	.byte	0x14
	.byte	0xf7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF196
	.byte	0x14
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF197
	.byte	0x14
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF198
	.byte	0x14
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF199
	.byte	0x14
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x12
	.long	.LASF200
	.byte	0x14
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x12
	.long	.LASF201
	.byte	0x14
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x12
	.long	.LASF202
	.byte	0x14
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x12
	.long	.LASF203
	.byte	0x14
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x12
	.long	.LASF204
	.byte	0x14
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x12
	.long	.LASF205
	.byte	0x14
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x12
	.long	.LASF206
	.byte	0x14
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x12
	.long	.LASF207
	.byte	0x14
	.value	0x109
	.long	0xfc5
	.byte	0x60
	.uleb128 0x12
	.long	.LASF208
	.byte	0x14
	.value	0x10b
	.long	0xfcb
	.byte	0x68
	.uleb128 0x12
	.long	.LASF209
	.byte	0x14
	.value	0x10d
	.long	0x57
	.byte	0x70
	.uleb128 0x12
	.long	.LASF210
	.byte	0x14
	.value	0x111
	.long	0x57
	.byte	0x74
	.uleb128 0x12
	.long	.LASF211
	.byte	0x14
	.value	0x113
	.long	0x65
	.byte	0x78
	.uleb128 0x12
	.long	.LASF212
	.byte	0x14
	.value	0x117
	.long	0x34
	.byte	0x80
	.uleb128 0x12
	.long	.LASF213
	.byte	0x14
	.value	0x118
	.long	0x49
	.byte	0x82
	.uleb128 0x12
	.long	.LASF214
	.byte	0x14
	.value	0x119
	.long	0xfd1
	.byte	0x83
	.uleb128 0x12
	.long	.LASF215
	.byte	0x14
	.value	0x11d
	.long	0xfe1
	.byte	0x88
	.uleb128 0x12
	.long	.LASF216
	.byte	0x14
	.value	0x126
	.long	0x70
	.byte	0x90
	.uleb128 0x12
	.long	.LASF217
	.byte	0x14
	.value	0x12f
	.long	0x82
	.byte	0x98
	.uleb128 0x12
	.long	.LASF218
	.byte	0x14
	.value	0x130
	.long	0x82
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF219
	.byte	0x14
	.value	0x131
	.long	0x82
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF220
	.byte	0x14
	.value	0x132
	.long	0x82
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF221
	.byte	0x14
	.value	0x133
	.long	0xb2
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF222
	.byte	0x14
	.value	0x135
	.long	0x57
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF223
	.byte	0x14
	.value	0x137
	.long	0xfe7
	.byte	0xc4
	.byte	0
	.uleb128 0x18
	.long	.LASF646
	.byte	0x14
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF224
	.byte	0x18
	.byte	0x14
	.byte	0xa1
	.long	0xfc5
	.uleb128 0xa
	.long	.LASF225
	.byte	0x14
	.byte	0xa2
	.long	0xfc5
	.byte	0
	.uleb128 0xa
	.long	.LASF226
	.byte	0x14
	.byte	0xa3
	.long	0xfcb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF227
	.byte	0x14
	.byte	0xa7
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf94
	.uleb128 0x6
	.byte	0x8
	.long	0xe0c
	.uleb128 0x7
	.long	0x95
	.long	0xfe1
	.uleb128 0x8
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf8d
	.uleb128 0x7
	.long	0x95
	.long	0xff7
	.uleb128 0x8
	.long	0x7b
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	.LASF228
	.byte	0x15
	.byte	0x63
	.long	0x1002
	.uleb128 0x9
	.long	.LASF229
	.byte	0x18
	.byte	0x16
	.byte	0x42
	.long	0x1033
	.uleb128 0xa
	.long	.LASF230
	.byte	0x16
	.byte	0x43
	.long	0x11a6
	.byte	0
	.uleb128 0x19
	.string	"tab"
	.byte	0x16
	.byte	0x44
	.long	0x167c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF190
	.byte	0x16
	.byte	0x45
	.long	0xdd3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF231
	.byte	0x15
	.byte	0x64
	.long	0x103e
	.uleb128 0x9
	.long	.LASF232
	.byte	0xe0
	.byte	0x16
	.byte	0x10
	.long	0x119b
	.uleb128 0xa
	.long	.LASF233
	.byte	0x16
	.byte	0x11
	.long	0xb2
	.byte	0
	.uleb128 0xa
	.long	.LASF234
	.byte	0x16
	.byte	0x12
	.long	0x8f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF235
	.byte	0x16
	.byte	0x13
	.long	0xb2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF236
	.byte	0x16
	.byte	0x14
	.long	0xdd3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF237
	.byte	0x16
	.byte	0x15
	.long	0x16b1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF238
	.byte	0x16
	.byte	0x16
	.long	0x16c6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF239
	.byte	0x16
	.byte	0x17
	.long	0x170e
	.byte	0x30
	.uleb128 0xa
	.long	.LASF240
	.byte	0x16
	.byte	0x1c
	.long	0x16c6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF241
	.byte	0x16
	.byte	0x1d
	.long	0x172d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF242
	.byte	0x16
	.byte	0x1e
	.long	0x16c6
	.byte	0x48
	.uleb128 0x19
	.string	"Dup"
	.byte	0x16
	.byte	0x1f
	.long	0x1751
	.byte	0x50
	.uleb128 0xa
	.long	.LASF243
	.byte	0x16
	.byte	0x21
	.long	0x1770
	.byte	0x58
	.uleb128 0xa
	.long	.LASF244
	.byte	0x16
	.byte	0x22
	.long	0x178f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF245
	.byte	0x16
	.byte	0x23
	.long	0x178f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF246
	.byte	0x16
	.byte	0x24
	.long	0x17ae
	.byte	0x70
	.uleb128 0xa
	.long	.LASF247
	.byte	0x16
	.byte	0x25
	.long	0x17c3
	.byte	0x78
	.uleb128 0xa
	.long	.LASF248
	.byte	0x16
	.byte	0x26
	.long	0x16c6
	.byte	0x80
	.uleb128 0xa
	.long	.LASF249
	.byte	0x16
	.byte	0x28
	.long	0x16c6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF250
	.byte	0x16
	.byte	0x29
	.long	0x16c6
	.byte	0x90
	.uleb128 0x19
	.string	"Eof"
	.byte	0x16
	.byte	0x2a
	.long	0x16c6
	.byte	0x98
	.uleb128 0xa
	.long	.LASF251
	.byte	0x16
	.byte	0x2b
	.long	0x16c6
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF252
	.byte	0x16
	.byte	0x2c
	.long	0x17d4
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF253
	.byte	0x16
	.byte	0x2d
	.long	0x17d4
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF254
	.byte	0x16
	.byte	0x2f
	.long	0x17ef
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF255
	.byte	0x16
	.byte	0x30
	.long	0x1804
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF256
	.byte	0x16
	.byte	0x31
	.long	0x17ef
	.byte	0xc8
	.uleb128 0xa
	.long	.LASF257
	.byte	0x16
	.byte	0x32
	.long	0x1819
	.byte	0xd0
	.uleb128 0xa
	.long	.LASF258
	.byte	0x16
	.byte	0x33
	.long	0x1834
	.byte	0xd8
	.byte	0
	.uleb128 0x4
	.long	.LASF259
	.byte	0x15
	.byte	0x65
	.long	0x11a6
	.uleb128 0x6
	.byte	0x8
	.long	0xff7
	.uleb128 0x10
	.long	.LASF260
	.byte	0x15
	.value	0x175
	.long	0x11b8
	.uleb128 0x9
	.long	.LASF261
	.byte	0x20
	.byte	0x16
	.byte	0x9
	.long	0x11f5
	.uleb128 0xa
	.long	.LASF71
	.byte	0x16
	.byte	0xa
	.long	0x166
	.byte	0
	.uleb128 0x19
	.string	"cur"
	.byte	0x16
	.byte	0xb
	.long	0x166
	.byte	0x8
	.uleb128 0x19
	.string	"len"
	.byte	0x16
	.byte	0xc
	.long	0x166
	.byte	0x10
	.uleb128 0xa
	.long	.LASF262
	.byte	0x16
	.byte	0xd
	.long	0x168d
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	.LASF263
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0x1226
	.uleb128 0xa
	.long	.LASF190
	.byte	0xc
	.byte	0x14
	.long	0xdb3
	.byte	0
	.uleb128 0xa
	.long	.LASF264
	.byte	0xc
	.byte	0x15
	.long	0xdb3
	.byte	0x1
	.uleb128 0xa
	.long	.LASF265
	.byte	0xc
	.byte	0x16
	.long	0xdbd
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF263
	.byte	0xc
	.byte	0x19
	.long	0x11f5
	.uleb128 0x6
	.byte	0x8
	.long	0xdc8
	.uleb128 0x6
	.byte	0x8
	.long	0x1226
	.uleb128 0xe
	.long	.LASF267
	.uleb128 0x6
	.byte	0x8
	.long	0x123d
	.uleb128 0xe
	.long	.LASF268
	.uleb128 0x6
	.byte	0x8
	.long	0x1248
	.uleb128 0x6
	.byte	0x8
	.long	0xdd3
	.uleb128 0x7
	.long	0x1226
	.long	0x1269
	.uleb128 0x8
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x12d2
	.uleb128 0x1b
	.long	.LASF269
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF270
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF271
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF272
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF273
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF274
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF275
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF276
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF277
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF278
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF279
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF280
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF281
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF282
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF283
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF284
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x99f
	.uleb128 0x6
	.byte	0x8
	.long	0xa55
	.uleb128 0x6
	.byte	0x8
	.long	0x871
	.uleb128 0x6
	.byte	0x8
	.long	0x902
	.uleb128 0x6
	.byte	0x8
	.long	0xb52
	.uleb128 0x6
	.byte	0x8
	.long	0x6ee
	.uleb128 0x6
	.byte	0x8
	.long	0x481
	.uleb128 0x6
	.byte	0x8
	.long	0x5dc
	.uleb128 0x10
	.long	.LASF285
	.byte	0xb
	.value	0x150
	.long	0xdbd
	.uleb128 0x6
	.byte	0x8
	.long	0x19a
	.uleb128 0x16
	.long	0x131f
	.uleb128 0x17
	.long	0x131f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4bc
	.uleb128 0x6
	.byte	0x8
	.long	0x1314
	.uleb128 0x6
	.byte	0x8
	.long	0x683
	.uleb128 0x6
	.byte	0x8
	.long	0x446
	.uleb128 0x1c
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x1359
	.uleb128 0x15
	.long	.LASF286
	.byte	0xb
	.value	0x185
	.long	0x1359
	.uleb128 0x15
	.long	.LASF287
	.byte	0xb
	.value	0x186
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x156
	.uleb128 0x6
	.byte	0x8
	.long	0x119b
	.uleb128 0x6
	.byte	0x8
	.long	0x3e4
	.uleb128 0x6
	.byte	0x8
	.long	0x6be
	.uleb128 0x4
	.long	.LASF288
	.byte	0x17
	.byte	0x13
	.long	0x446
	.uleb128 0x4
	.long	.LASF289
	.byte	0x17
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1371
	.uleb128 0x1d
	.long	0x130e
	.uleb128 0x6
	.byte	0x8
	.long	0x138d
	.uleb128 0x6
	.byte	0x8
	.long	0x2ea
	.uleb128 0x6
	.byte	0x8
	.long	0x4f7
	.uleb128 0x6
	.byte	0x8
	.long	0xdfb
	.uleb128 0x6
	.byte	0x8
	.long	0x211
	.uleb128 0xd
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x13ba
	.uleb128 0x11
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x13ea
	.uleb128 0xa
	.long	.LASF290
	.byte	0x10
	.byte	0x11
	.long	0x1426
	.byte	0
	.uleb128 0xa
	.long	.LASF291
	.byte	0x10
	.byte	0x12
	.long	0x142c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF292
	.byte	0x10
	.byte	0x13
	.long	0xdfb
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x13f5
	.uleb128 0x11
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x1426
	.uleb128 0xa
	.long	.LASF293
	.byte	0x10
	.byte	0x18
	.long	0xdd3
	.byte	0
	.uleb128 0xa
	.long	.LASF294
	.byte	0x10
	.byte	0x19
	.long	0xdc8
	.byte	0x4
	.uleb128 0xa
	.long	.LASF295
	.byte	0x10
	.byte	0x1a
	.long	0xfd1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13b0
	.uleb128 0x6
	.byte	0x8
	.long	0x13ea
	.uleb128 0x1e
	.long	0x57
	.long	0x1446
	.uleb128 0x17
	.long	0xdfb
	.uleb128 0x17
	.long	0x12f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1432
	.uleb128 0x1e
	.long	0xdd3
	.long	0x1460
	.uleb128 0x17
	.long	0xdfb
	.uleb128 0x17
	.long	0x12f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x144c
	.uleb128 0x1e
	.long	0x57
	.long	0x1489
	.uleb128 0x17
	.long	0xdfb
	.uleb128 0x17
	.long	0x12f0
	.uleb128 0x17
	.long	0xdfb
	.uleb128 0x17
	.long	0x13e
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1466
	.uleb128 0x1e
	.long	0x57
	.long	0x14a3
	.uleb128 0x17
	.long	0x12f0
	.uleb128 0x17
	.long	0x14a3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd72
	.uleb128 0x6
	.byte	0x8
	.long	0x148f
	.uleb128 0x6
	.byte	0x8
	.long	0xc97
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF296
	.uleb128 0x1f
	.byte	0x4
	.byte	0x8
	.value	0xfb1
	.long	0x165b
	.uleb128 0x1b
	.long	.LASF297
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF298
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF299
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF300
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF301
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF302
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF303
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF304
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF305
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF306
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF307
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF308
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF309
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF310
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF311
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF312
	.sleb128 15
	.uleb128 0x1b
	.long	.LASF313
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF314
	.sleb128 17
	.uleb128 0x1b
	.long	.LASF315
	.sleb128 18
	.uleb128 0x1b
	.long	.LASF316
	.sleb128 19
	.uleb128 0x1b
	.long	.LASF317
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF318
	.sleb128 21
	.uleb128 0x1b
	.long	.LASF319
	.sleb128 22
	.uleb128 0x1b
	.long	.LASF320
	.sleb128 23
	.uleb128 0x1b
	.long	.LASF321
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF322
	.sleb128 25
	.uleb128 0x1b
	.long	.LASF323
	.sleb128 26
	.uleb128 0x1b
	.long	.LASF324
	.sleb128 27
	.uleb128 0x1b
	.long	.LASF325
	.sleb128 28
	.uleb128 0x1b
	.long	.LASF326
	.sleb128 29
	.uleb128 0x1b
	.long	.LASF327
	.sleb128 30
	.uleb128 0x1b
	.long	.LASF328
	.sleb128 31
	.uleb128 0x1b
	.long	.LASF329
	.sleb128 32
	.uleb128 0x1b
	.long	.LASF330
	.sleb128 33
	.uleb128 0x1b
	.long	.LASF331
	.sleb128 34
	.uleb128 0x1b
	.long	.LASF332
	.sleb128 35
	.uleb128 0x1b
	.long	.LASF333
	.sleb128 36
	.uleb128 0x1b
	.long	.LASF334
	.sleb128 37
	.uleb128 0x1b
	.long	.LASF335
	.sleb128 38
	.uleb128 0x1b
	.long	.LASF336
	.sleb128 39
	.uleb128 0x1b
	.long	.LASF337
	.sleb128 40
	.uleb128 0x1b
	.long	.LASF338
	.sleb128 41
	.uleb128 0x1b
	.long	.LASF339
	.sleb128 42
	.uleb128 0x1b
	.long	.LASF340
	.sleb128 43
	.uleb128 0x1b
	.long	.LASF341
	.sleb128 44
	.uleb128 0x1b
	.long	.LASF342
	.sleb128 45
	.uleb128 0x1b
	.long	.LASF343
	.sleb128 46
	.uleb128 0x1b
	.long	.LASF344
	.sleb128 47
	.uleb128 0x1b
	.long	.LASF345
	.sleb128 48
	.uleb128 0x1b
	.long	.LASF346
	.sleb128 49
	.uleb128 0x1b
	.long	.LASF347
	.sleb128 50
	.uleb128 0x1b
	.long	.LASF348
	.sleb128 51
	.uleb128 0x1b
	.long	.LASF349
	.sleb128 52
	.uleb128 0x1b
	.long	.LASF350
	.sleb128 53
	.uleb128 0x1b
	.long	.LASF351
	.sleb128 54
	.uleb128 0x1b
	.long	.LASF352
	.sleb128 55
	.uleb128 0x1b
	.long	.LASF353
	.sleb128 56
	.uleb128 0x1b
	.long	.LASF354
	.sleb128 57
	.uleb128 0x1b
	.long	.LASF355
	.sleb128 58
	.uleb128 0x1b
	.long	.LASF356
	.sleb128 59
	.uleb128 0x1b
	.long	.LASF357
	.sleb128 60
	.uleb128 0x1b
	.long	.LASF358
	.sleb128 61
	.uleb128 0x1b
	.long	.LASF359
	.sleb128 62
	.uleb128 0x1b
	.long	.LASF360
	.sleb128 63
	.uleb128 0x1b
	.long	.LASF361
	.sleb128 64
	.uleb128 0x1b
	.long	.LASF362
	.sleb128 65
	.uleb128 0x1b
	.long	.LASF363
	.sleb128 66
	.byte	0
	.uleb128 0x20
	.byte	0x10
	.byte	0x16
	.byte	0x4
	.long	0x167c
	.uleb128 0xa
	.long	.LASF364
	.byte	0x16
	.byte	0x5
	.long	0x167c
	.byte	0
	.uleb128 0x19
	.string	"arg"
	.byte	0x16
	.byte	0x6
	.long	0xdfb
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1033
	.uleb128 0x4
	.long	.LASF365
	.byte	0x16
	.byte	0x7
	.long	0x165b
	.uleb128 0x6
	.byte	0x8
	.long	0x1682
	.uleb128 0x1e
	.long	0x166
	.long	0x16b1
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x13e
	.uleb128 0x17
	.long	0xdfb
	.uleb128 0x17
	.long	0x167c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1693
	.uleb128 0x1e
	.long	0x166
	.long	0x16c6
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16b7
	.uleb128 0x1e
	.long	0x135f
	.long	0x1708
	.uleb128 0x17
	.long	0x167c
	.uleb128 0x17
	.long	0x1708
	.uleb128 0x17
	.long	0x166
	.uleb128 0x17
	.long	0x13e
	.uleb128 0x17
	.long	0x57
	.uleb128 0x17
	.long	0x57
	.uleb128 0x17
	.long	0x57
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x57
	.uleb128 0x17
	.long	0x13a4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ac
	.uleb128 0x6
	.byte	0x8
	.long	0x16cc
	.uleb128 0x1e
	.long	0xdfb
	.long	0x172d
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x14a3
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1714
	.uleb128 0x1e
	.long	0x135f
	.long	0x1751
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x14a3
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1733
	.uleb128 0x1e
	.long	0xa7
	.long	0x1770
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x82
	.uleb128 0x17
	.long	0xb2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1757
	.uleb128 0x1e
	.long	0xa7
	.long	0x178f
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x14f
	.uleb128 0x17
	.long	0xb2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1776
	.uleb128 0x1e
	.long	0x166
	.long	0x17ae
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x9c
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1795
	.uleb128 0x1e
	.long	0x9c
	.long	0x17c3
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17b4
	.uleb128 0x16
	.long	0x17d4
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17c9
	.uleb128 0x1e
	.long	0x17e9
	.long	0x17e9
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49
	.uleb128 0x6
	.byte	0x8
	.long	0x17da
	.uleb128 0x1e
	.long	0xb2
	.long	0x1804
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17f5
	.uleb128 0x1e
	.long	0xa7
	.long	0x1819
	.uleb128 0x17
	.long	0x135f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x180a
	.uleb128 0x16
	.long	0x1834
	.uleb128 0x17
	.long	0x135f
	.uleb128 0x17
	.long	0x17e9
	.uleb128 0x17
	.long	0xa7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x181f
	.uleb128 0x20
	.byte	0x48
	.byte	0x16
	.byte	0x97
	.long	0x1897
	.uleb128 0xa
	.long	.LASF366
	.byte	0x16
	.byte	0x98
	.long	0x1002
	.byte	0
	.uleb128 0x19
	.string	"buf"
	.byte	0x16
	.byte	0x99
	.long	0x17e9
	.byte	0x18
	.uleb128 0x19
	.string	"end"
	.byte	0x16
	.byte	0x9a
	.long	0x17e9
	.byte	0x20
	.uleb128 0x19
	.string	"ptr"
	.byte	0x16
	.byte	0x9b
	.long	0x17e9
	.byte	0x28
	.uleb128 0xa
	.long	.LASF367
	.byte	0x16
	.byte	0x9c
	.long	0x9c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF368
	.byte	0x16
	.byte	0x9d
	.long	0xb2
	.byte	0x38
	.uleb128 0xa
	.long	.LASF369
	.byte	0x16
	.byte	0x9e
	.long	0x166
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	.LASF370
	.byte	0x16
	.byte	0x9f
	.long	0x183a
	.uleb128 0x21
	.byte	0x20
	.byte	0x1
	.value	0x8ee
	.long	0x18d2
	.uleb128 0x12
	.long	.LASF366
	.byte	0x1
	.value	0x8ef
	.long	0x1002
	.byte	0
	.uleb128 0x22
	.string	"fd"
	.byte	0x1
	.value	0x8f0
	.long	0x57
	.byte	0x18
	.uleb128 0x12
	.long	.LASF371
	.byte	0x1
	.value	0x8f1
	.long	0x57
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.long	.LASF372
	.byte	0x1
	.value	0x8f2
	.long	0x18a2
	.uleb128 0x21
	.byte	0x20
	.byte	0x1
	.value	0xa30
	.long	0x1902
	.uleb128 0x12
	.long	.LASF366
	.byte	0x1
	.value	0xa31
	.long	0x1002
	.byte	0
	.uleb128 0x12
	.long	.LASF373
	.byte	0x1
	.value	0xa32
	.long	0x1902
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe01
	.uleb128 0x10
	.long	.LASF374
	.byte	0x1
	.value	0xa33
	.long	0x18de
	.uleb128 0x21
	.byte	0x50
	.byte	0x1
	.value	0xfc9
	.long	0x1937
	.uleb128 0x12
	.long	.LASF366
	.byte	0x1
	.value	0xfca
	.long	0x1897
	.byte	0
	.uleb128 0x22
	.string	"nl"
	.byte	0x1
	.value	0xfcb
	.long	0x17e9
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.long	.LASF375
	.byte	0x1
	.value	0xfcd
	.long	0x1914
	.uleb128 0x23
	.long	.LASF378
	.byte	0x1
	.byte	0x72
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x198e
	.uleb128 0x24
	.string	"fp"
	.byte	0x1
	.byte	0x72
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF376
	.byte	0x1
	.byte	0x72
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.long	.LASF377
	.byte	0x1
	.byte	0x72
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF379
	.byte	0x1
	.byte	0xad
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a03
	.uleb128 0x25
	.long	.LASF380
	.byte	0x1
	.byte	0xad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF377
	.byte	0x1
	.byte	0xad
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.byte	0xad
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF382
	.byte	0x1
	.byte	0xaf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"ix"
	.byte	0x1
	.byte	0xb0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.byte	0xb1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF388
	.byte	0x1
	.value	0x1c3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a64
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x1c3
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.uleb128 0x2b
	.string	"dbg"
	.byte	0x1
	.value	0x1c5
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	dbg.10545
	.uleb128 0x2b
	.string	"ap"
	.byte	0x1
	.value	0x1c6
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1c7
	.long	0x57
	.byte	0
	.uleb128 0x2d
	.long	.LASF384
	.byte	0x1
	.value	0x1ff
	.long	0x135f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac2
	.uleb128 0x2e
	.long	.LASF385
	.byte	0x1
	.value	0x204
	.long	0x1ac2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x205
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x208
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x135f
	.uleb128 0x2d
	.long	.LASF386
	.byte	0x1
	.value	0x21a
	.long	0x135f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b38
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x21a
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x21a
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF190
	.byte	0x1
	.value	0x21a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x21d
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF389
	.byte	0x1
	.value	0x22c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb3
	.uleb128 0x30
	.long	.LASF390
	.byte	0x1
	.value	0x22c
	.long	0x1ac2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF391
	.byte	0x1
	.value	0x22e
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x230
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x233
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF392
	.byte	0x1
	.value	0x23f
	.long	0x1708
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be5
	.uleb128 0x2e
	.long	.LASF393
	.byte	0x1
	.value	0x241
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF394
	.byte	0x1
	.value	0x248
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c32
	.uleb128 0x30
	.long	.LASF393
	.byte	0x1
	.value	0x248
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x24d
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF395
	.byte	0x1
	.value	0x25a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c8b
	.uleb128 0x30
	.long	.LASF393
	.byte	0x1
	.value	0x25a
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF364
	.byte	0x1
	.value	0x25a
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x25a
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x25c
	.long	0x168d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF396
	.byte	0x1
	.value	0x26c
	.long	0x1708
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d1b
	.uleb128 0x30
	.long	.LASF397
	.byte	0x1
	.value	0x26c
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x26c
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF393
	.byte	0x1
	.value	0x26e
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x270
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x273
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF398
	.byte	0x1
	.value	0x27d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d58
	.uleb128 0x30
	.long	.LASF397
	.byte	0x1
	.value	0x27d
	.long	0x1365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x27d
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF399
	.byte	0x1
	.value	0x295
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dde
	.uleb128 0x2e
	.long	.LASF391
	.byte	0x1
	.value	0x297
	.long	0x1ac2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x298
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x29d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x2a0
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2a1
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF400
	.byte	0x1
	.value	0x2b2
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e17
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x2b2
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2b4
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF401
	.byte	0x1
	.value	0x2cc
	.long	0x1331
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea4
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x2cc
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x2ce
	.long	0x1331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x2d1
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2e
	.long	.LASF234
	.byte	0x1
	.value	0x2d4
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x2d6
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF402
	.byte	0x1
	.value	0x2e8
	.long	0x167c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f65
	.uleb128 0x30
	.long	.LASF234
	.byte	0x1
	.value	0x2e8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x2e8
	.long	0x18e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF403
	.byte	0x1
	.value	0x2e8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2ea
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1f26
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x2ee
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2e
	.long	.LASF404
	.byte	0x1
	.value	0x2fa
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF405
	.byte	0x1
	.value	0x2fb
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x2fc
	.long	0x131f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF406
	.byte	0x1
	.value	0x362
	.long	0xdfb
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb4
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x362
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF407
	.byte	0x1
	.value	0x364
	.long	0x12f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x365
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF408
	.byte	0x1
	.value	0x369
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x203a
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x369
	.long	0x131f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x36e
	.long	0x13a4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF409
	.byte	0x1
	.value	0x36e
	.long	0x13a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ax"
	.byte	0x1
	.value	0x36e
	.long	0xdc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF410
	.byte	0x1
	.value	0x36e
	.long	0xdc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.long	.LASF411
	.byte	0x1
	.value	0x371
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF412
	.byte	0x1
	.value	0x374
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2112
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x374
	.long	0x131f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x376
	.long	0x13a4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.long	.LASF409
	.byte	0x1
	.value	0x376
	.long	0x13a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ax"
	.byte	0x1
	.value	0x376
	.long	0xdc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF410
	.byte	0x1
	.value	0x376
	.long	0xdc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x37a
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF234
	.byte	0x1
	.value	0x37b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF403
	.byte	0x1
	.value	0x37c
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x2e
	.long	.LASF405
	.byte	0x1
	.value	0x37d
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2e
	.long	.LASF411
	.byte	0x1
	.value	0x381
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF413
	.byte	0x1
	.value	0x386
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2140
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x386
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF414
	.byte	0x1
	.value	0x38f
	.long	0x57
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2267
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x38f
	.long	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF415
	.byte	0x1
	.value	0x38f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x392
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.long	.LASF416
	.byte	0x1
	.value	0x397
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x398
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"as"
	.byte	0x1
	.value	0x399
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF417
	.byte	0x1
	.value	0x39a
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x220d
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x3a1
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.byte	0
	.uleb128 0x32
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2233
	.uleb128 0x2e
	.long	.LASF418
	.byte	0x1
	.value	0x3ae
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2f
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2e
	.long	.LASF419
	.byte	0x1
	.value	0x3d5
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x2e
	.long	.LASF405
	.byte	0x1
	.value	0x3d6
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF420
	.byte	0x1
	.value	0x3ed
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a3
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x3ed
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x3ef
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF421
	.byte	0x1
	.value	0x3fc
	.long	0xdfb
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e1
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x3fc
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x3fc
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF422
	.byte	0x1
	.value	0x402
	.long	0x167c
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x232e
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x402
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x402
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"def"
	.byte	0x1
	.value	0x402
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF423
	.byte	0x1
	.value	0x40f
	.long	0x166
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x238b
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x40f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x40f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x40f
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x40f
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x437
	.long	0x1708
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x23dc
	.uleb128 0x2f
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x43b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF425
	.byte	0x1
	.value	0x43f
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF427
	.byte	0x1
	.value	0x463
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF426
	.byte	0x1
	.value	0x46e
	.long	0x167c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2434
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x46e
	.long	0xdc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x470
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF428
	.byte	0x1
	.value	0x47a
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF429
	.byte	0x1
	.value	0x485
	.long	0x135f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x24da
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x485
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x485
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x485
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x485
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF527
	.byte	0x1
	.value	0x488
	.quad	.L178
	.uleb128 0x2f
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x48c
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF430
	.byte	0x1
	.value	0x4ad
	.long	0x166
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x250a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x4ad
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF431
	.byte	0x1
	.value	0x4bf
	.long	0x166
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2593
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x4bf
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x4bf
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x4bf
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x4bf
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x4c3
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x4c4
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF432
	.byte	0x1
	.value	0x4e5
	.long	0x57
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x262e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x4e5
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x4e5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0x4e6
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x4e6
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"max"
	.byte	0x1
	.value	0x4e6
	.long	0x166
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x4e8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x4ea
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF435
	.byte	0x1
	.value	0x4f7
	.long	0x57
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x26ac
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x4f7
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x4f7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF415
	.byte	0x1
	.value	0x4f7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x4f9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2e
	.long	.LASF433
	.byte	0x1
	.value	0x4fb
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF436
	.byte	0x1
	.value	0x50c
	.long	0x57
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2709
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x50c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF376
	.byte	0x1
	.value	0x50c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x50c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF415
	.byte	0x1
	.value	0x50c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF437
	.byte	0x1
	.value	0x543
	.long	0x57
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x275a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x543
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x546
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF438
	.byte	0x1
	.value	0x553
	.long	0x57
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2799
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x553
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x555
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF439
	.byte	0x1
	.value	0x55d
	.long	0x57
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x27ea
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x55d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x55f
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF440
	.byte	0x1
	.value	0x563
	.long	0x13e
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x288c
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x563
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF264
	.byte	0x1
	.value	0x565
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2e
	.long	.LASF433
	.byte	0x1
	.value	0x56a
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x56c
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x572
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF441
	.byte	0x1
	.value	0x57d
	.long	0x167c
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x28bd
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x57d
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF442
	.byte	0x1
	.value	0x596
	.long	0x1708
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x29c3
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0x596
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x597
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0x597
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0x597
	.long	0x13a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"def"
	.byte	0x1
	.value	0x599
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF445
	.byte	0x1
	.value	0x59a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x2983
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x59e
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2e
	.long	.LASF446
	.byte	0x1
	.value	0x5a4
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x5b4
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x5b6
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF447
	.byte	0x1
	.value	0x5d0
	.long	0x135f
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b01
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0x5d0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x5d0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x5d0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0x5d1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF449
	.byte	0x1
	.value	0x5d1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x5d1
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0x5d1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0x5d1
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2e
	.long	.LASF450
	.byte	0x1
	.value	0x5dc
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x5dd
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x5de
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x2ae0
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x5e4
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x5e7
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x5f9
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF451
	.byte	0x1
	.value	0x626
	.long	0xa7
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b70
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x626
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x626
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x626
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x628
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF454
	.byte	0x1
	.value	0x62c
	.long	0xa7
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bdf
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x62c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x62c
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x62c
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x62e
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF455
	.byte	0x1
	.value	0x632
	.long	0xa7
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c4e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x632
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x632
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x632
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x634
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF456
	.byte	0x1
	.value	0x638
	.long	0x57
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cbd
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x638
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF457
	.byte	0x1
	.value	0x638
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF458
	.byte	0x1
	.value	0x638
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x63a
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF459
	.byte	0x1
	.value	0x63e
	.long	0x9c
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d0e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x63e
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x640
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x1
	.value	0x644
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db2
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x644
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x2d62
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x648
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2e
	.long	.LASF391
	.byte	0x1
	.value	0x65d
	.long	0x1ac2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x65e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x660
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF461
	.byte	0x1
	.value	0x66d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e0c
	.uleb128 0x2e
	.long	.LASF391
	.byte	0x1
	.value	0x66f
	.long	0x1ac2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x670
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x672
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF462
	.byte	0x1
	.value	0x680
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e5d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x680
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x682
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF463
	.byte	0x1
	.value	0x686
	.long	0x57
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e8d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x686
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF464
	.byte	0x1
	.value	0x691
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ede
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x691
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x693
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF465
	.byte	0x1
	.value	0x697
	.long	0x57
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f2f
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x697
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x699
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF466
	.byte	0x1
	.value	0x69d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f70
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x69d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.Ldebug_ranges0+0
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x69f
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF467
	.byte	0x1
	.value	0x6a3
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fb1
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6a3
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6a5
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF468
	.byte	0x1
	.value	0x6a9
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3002
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6a9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6ac
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF469
	.byte	0x1
	.value	0x6b9
	.long	0x57
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3053
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6b9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6bc
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF470
	.byte	0x1
	.value	0x6c9
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x30a4
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6c9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6cc
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF471
	.byte	0x1
	.value	0x6d9
	.long	0x57
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x30f5
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6d9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6dc
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF472
	.byte	0x1
	.value	0x6e9
	.long	0x17e9
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3146
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6e9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6eb
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF473
	.byte	0x1
	.value	0x6ef
	.long	0x57
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x3197
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6ef
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6f1
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF474
	.byte	0x1
	.value	0x6f5
	.long	0x17e9
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x31e8
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6f5
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6f7
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF475
	.byte	0x1
	.value	0x6fb
	.long	0x57
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3239
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x6fb
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x6fd
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF476
	.byte	0x1
	.value	0x701
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3289
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x701
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0x701
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x703
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF477
	.byte	0x1
	.value	0x707
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x32e8
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x707
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x707
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0x707
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x709
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF478
	.byte	0x1
	.value	0x713
	.long	0x166
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3345
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x713
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x713
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x713
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x713
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.long	.LASF479
	.byte	0x1
	.value	0x75a
	.long	0x135f
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x340c
	.uleb128 0x30
	.long	.LASF480
	.byte	0x1
	.value	0x75a
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0x75a
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x75b
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x75b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x75b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0x75b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF449
	.byte	0x1
	.value	0x75b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"old"
	.byte	0x1
	.value	0x75c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0x75c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0x75c
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x75e
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF481
	.byte	0x1
	.value	0x789
	.long	0x166
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x343c
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x789
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF482
	.byte	0x1
	.value	0x78f
	.long	0x8f
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x34a9
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x78f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.value	0x78f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x791
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x2e
	.long	.LASF190
	.byte	0x1
	.value	0x793
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF483
	.byte	0x1
	.value	0x7b0
	.long	0x166
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3513
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x7b0
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x7b0
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x7b0
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x7b0
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x7b2
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF484
	.byte	0x1
	.value	0x7ed
	.long	0x166
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x3543
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x7ed
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF485
	.byte	0x1
	.value	0x7f3
	.long	0xa7
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x35af
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x7f3
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x7f3
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x7f3
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"old"
	.byte	0x1
	.value	0x7f8
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF486
	.byte	0x1
	.value	0x7f9
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF487
	.byte	0x1
	.value	0x801
	.long	0xa7
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x365e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x801
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x801
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x801
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x803
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2e
	.long	.LASF488
	.byte	0x1
	.value	0x80b
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF489
	.byte	0x1
	.value	0x80c
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0x810
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF490
	.byte	0x1
	.value	0x821
	.long	0x166
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x368e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x821
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF491
	.byte	0x1
	.value	0x827
	.long	0x166
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x36be
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x827
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF492
	.byte	0x1
	.value	0x82d
	.long	0x166
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x373d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x82d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x82f
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x831
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x836
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF493
	.byte	0x1
	.value	0x84a
	.long	0x166
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x376d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x84a
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF494
	.byte	0x1
	.value	0x853
	.long	0x166
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x379d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x853
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF495
	.byte	0x1
	.value	0x85c
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e8
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x85c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0x85f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF496
	.byte	0x1
	.value	0x867
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x3814
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x867
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF497
	.byte	0x1
	.value	0x86f
	.long	0xdfb
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x3855
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x86f
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x86f
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF498
	.byte	0x1
	.value	0x880
	.long	0x135f
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3929
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x880
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"o"
	.byte	0x1
	.value	0x880
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x880
	.long	0x14a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF190
	.byte	0x1
	.value	0x880
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF499
	.byte	0x1
	.value	0x882
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x38e8
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0x884
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2f
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x2e
	.long	.LASF480
	.byte	0x1
	.value	0x88b
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x88c
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x88d
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF500
	.byte	0x1
	.value	0x8a4
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF501
	.byte	0x1
	.value	0x8ad
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x3970
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x8ad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF502
	.byte	0x1
	.value	0x8bc
	.long	0x57
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b0
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x8bc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.value	0x8be
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF503
	.byte	0x1
	.value	0x8cd
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x39dc
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x8cf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF504
	.byte	0x1
	.value	0x8f5
	.long	0x57
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a1d
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x8f5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF371
	.byte	0x1
	.value	0x8f7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF505
	.byte	0x1
	.value	0x92d
	.long	0x166
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a4d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x92d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF647
	.byte	0x1
	.value	0x933
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa3
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x933
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x933
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0x933
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x935
	.long	0x3aa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x18d2
	.uleb128 0x2d
	.long	.LASF506
	.byte	0x1
	.value	0x948
	.long	0x166
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b17
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x948
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x948
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x948
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0x948
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x94a
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF507
	.byte	0x1
	.value	0x95c
	.long	0x166
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b82
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x95c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF457
	.byte	0x1
	.value	0x95c
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF458
	.byte	0x1
	.value	0x95c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x95e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF508
	.byte	0x1
	.value	0x95f
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF509
	.byte	0x1
	.value	0x972
	.long	0x135f
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c59
	.uleb128 0x30
	.long	.LASF480
	.byte	0x1
	.value	0x972
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0x972
	.long	0x1708
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x973
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x973
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x973
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0x973
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF449
	.byte	0x1
	.value	0x974
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x974
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0x974
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0x974
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x2e
	.long	.LASF510
	.byte	0x1
	.value	0x97b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF511
	.byte	0x1
	.value	0x9a2
	.long	0x135f
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x9a2
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"o"
	.byte	0x1
	.value	0x9a2
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0x9a2
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF190
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"os"
	.byte	0x1
	.value	0x9a4
	.long	0x3aa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x9a5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF512
	.byte	0x1
	.value	0x9b6
	.long	0xa7
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d4d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x9b6
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x9b6
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x9b6
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x9b8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x9be
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF513
	.byte	0x1
	.value	0x9d0
	.long	0xa7
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dca
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x9d0
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x9d0
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x9d0
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x9d2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x9d4
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF514
	.byte	0x1
	.value	0x9e2
	.long	0x9c
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dfa
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x9e2
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF515
	.byte	0x1
	.value	0x9e9
	.long	0x166
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e47
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x9e9
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x9eb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x9ec
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF516
	.byte	0x1
	.value	0xa36
	.long	0x166
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e84
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xa36
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xa38
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF517
	.byte	0x1
	.value	0xa41
	.long	0x8f
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ed4
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xa41
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF518
	.byte	0x1
	.value	0xa41
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0xa43
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF519
	.byte	0x1
	.value	0xa51
	.long	0x166
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa3
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xa51
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xa51
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0xa51
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0xa51
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0xa53
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x2e
	.long	.LASF520
	.byte	0x1
	.value	0xa55
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0xa5b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.long	.LASF518
	.byte	0x1
	.value	0xa5c
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xa5d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF521
	.byte	0x1
	.value	0xa6e
	.long	0x135f
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x404a
	.uleb128 0x30
	.long	.LASF373
	.byte	0x1
	.value	0xa6e
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xa6e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0xa70
	.long	0x57
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0xa71
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xa73
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0xa7c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"f2"
	.byte	0x1
	.value	0xa7d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1908
	.uleb128 0x2d
	.long	.LASF523
	.byte	0x1
	.value	0xa94
	.long	0x135f
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x4227
	.uleb128 0x30
	.long	.LASF480
	.byte	0x1
	.value	0xa94
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0xa94
	.long	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0xa95
	.long	0x166
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xa95
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0xa95
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0xa95
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LASF449
	.byte	0x1
	.value	0xa96
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xa96
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0xa96
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0xa96
	.long	0x13a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2e
	.long	.LASF518
	.byte	0x1
	.value	0xa98
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x415e
	.uleb128 0x2e
	.long	.LASF510
	.byte	0x1
	.value	0xa9a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xa9b
	.long	0x404a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xa9c
	.long	0x1902
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x32
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x41d5
	.uleb128 0x2e
	.long	.LASF510
	.byte	0x1
	.value	0xaa8
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xaae
	.long	0x1902
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF524
	.byte	0x1
	.value	0xaaf
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x2f
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xab7
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xacb
	.long	0x1902
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF525
	.byte	0x1
	.value	0xacc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xae3
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF526
	.byte	0x1
	.value	0xaf4
	.long	0x135f
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x42f5
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xaf4
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"o"
	.byte	0x1
	.value	0xaf4
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0xaf4
	.long	0x14a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF190
	.byte	0x1
	.value	0xaf4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.long	.LASF528
	.byte	0x1
	.value	0xb0a
	.quad	.L622
	.uleb128 0x2f
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xafa
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0xafb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF377
	.byte	0x1
	.value	0xafc
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x2b
	.string	"dfd"
	.byte	0x1
	.value	0xafe
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF529
	.byte	0x1
	.value	0xb12
	.long	0x57
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x4325
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xb12
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF530
	.byte	0x1
	.value	0xb5f
	.long	0x166
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xb5f
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xb61
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0xb67
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF531
	.byte	0x1
	.value	0xb68
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF532
	.byte	0x1
	.value	0xb69
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF382
	.byte	0x1
	.value	0xb6a
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF533
	.byte	0x1
	.value	0xb6b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF534
	.byte	0x1
	.value	0xb6c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF535
	.byte	0x1
	.value	0xba8
	.long	0xa7
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x446a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xba8
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xba8
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xba8
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xbaa
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"got"
	.byte	0x1
	.value	0xbab
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xbae
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.value	0xbb3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF536
	.byte	0x1
	.value	0xbc6
	.long	0xa7
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x4527
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xbc6
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xbc6
	.long	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xbc6
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF537
	.byte	0x1
	.value	0xbc8
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xbc9
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x2e
	.long	.LASF538
	.byte	0x1
	.value	0xbe6
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xbe7
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.value	0xbe9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF539
	.byte	0x1
	.value	0xc00
	.long	0xa7
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x4584
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc00
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xc00
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xc00
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"got"
	.byte	0x1
	.value	0xc02
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF540
	.byte	0x1
	.value	0xc0f
	.long	0x166
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e1
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc0f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF457
	.byte	0x1
	.value	0xc0f
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF458
	.byte	0x1
	.value	0xc0f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc11
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF541
	.byte	0x1
	.value	0xc16
	.long	0x9c
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x4620
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc16
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc18
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF542
	.byte	0x1
	.value	0xc1d
	.long	0x166
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x465f
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc1d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc1f
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF543
	.byte	0x1
	.value	0xc37
	.long	0x166
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x468f
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc37
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF544
	.byte	0x1
	.value	0xc3d
	.long	0x166
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x46bf
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc3d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF545
	.byte	0x1
	.value	0xc43
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x46eb
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc43
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF546
	.byte	0x1
	.value	0xc49
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x4717
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc49
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF547
	.byte	0x1
	.value	0xc54
	.long	0x17e9
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x4756
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc54
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc56
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF548
	.byte	0x1
	.value	0xc5b
	.long	0xb2
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x4795
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc5b
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc5d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF549
	.byte	0x1
	.value	0xc64
	.long	0x17e9
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d4
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc64
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc66
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF550
	.byte	0x1
	.value	0xc6b
	.long	0xa7
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x4813
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc6b
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc6d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF551
	.byte	0x1
	.value	0xc72
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x485d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc72
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0xc72
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0xc72
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF552
	.byte	0x1
	.value	0xc9d
	.long	0x166
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a9
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xc9d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xc9f
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0xca0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF553
	.byte	0x1
	.value	0xd0c
	.long	0x1902
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x4974
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xd0c
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xd0c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0xd0e
	.long	0x57
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0xd0f
	.long	0x1902
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xd11
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0xd18
	.long	0x11a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"f2"
	.byte	0x1
	.value	0xd19
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xd1d
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF554
	.byte	0x1
	.value	0xd2d
	.long	0x1902
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x49d0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xd2d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0xd2f
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xd32
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF555
	.byte	0x1
	.value	0xd3d
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a53
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0xd3d
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xd3d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0xd3f
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xd42
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0xd44
	.long	0x57
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF556
	.byte	0x1
	.value	0xd54
	.long	0x166
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aee
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xd54
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xd54
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0xd54
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0xd54
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xd56
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0xd57
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x2e
	.long	.LASF367
	.byte	0x1
	.value	0xd5c
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1897
	.uleb128 0x2d
	.long	.LASF557
	.byte	0x1
	.value	0xd65
	.long	0x135f
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c12
	.uleb128 0x30
	.long	.LASF480
	.byte	0x1
	.value	0xd65
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF433
	.byte	0x1
	.value	0xd65
	.long	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0xd66
	.long	0x166
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xd66
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0xd66
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF448
	.byte	0x1
	.value	0xd66
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF449
	.byte	0x1
	.value	0xd66
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xd67
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0xd67
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF444
	.byte	0x1
	.value	0xd67
	.long	0x13a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0x4be1
	.uleb128 0x2e
	.long	.LASF230
	.byte	0x1
	.value	0xd6a
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0xd6b
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x2b
	.string	"tab"
	.byte	0x1
	.value	0xd76
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF525
	.byte	0x1
	.value	0xd77
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF558
	.byte	0x1
	.value	0xda8
	.long	0x166
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ce1
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xda8
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xdaa
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xdab
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0xdac
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.long	0x4cbf
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xdb1
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xdb2
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2e
	.long	.LASF453
	.byte	0x1
	.value	0xdb4
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xdc1
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF559
	.byte	0x1
	.value	0xde1
	.long	0x166
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d6b
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xde1
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xde3
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.value	0xde4
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF488
	.byte	0x1
	.value	0xde5
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x2b
	.string	"ptr"
	.byte	0x1
	.value	0xe0b
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.value	0xe0c
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF560
	.byte	0x1
	.value	0xe23
	.long	0xa7
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc6
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xe23
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xe23
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xe23
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xe25
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF561
	.byte	0x1
	.value	0xe2f
	.long	0xa7
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4f
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xe2f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xe2f
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xe2f
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xe31
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xe32
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF537
	.byte	0x1
	.value	0xe33
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF488
	.byte	0x1
	.value	0xe34
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4e55
	.uleb128 0xb
	.long	0x49
	.uleb128 0x2d
	.long	.LASF562
	.byte	0x1
	.value	0xe6b
	.long	0xa7
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f06
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xe6b
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xe6b
	.long	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xe6b
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xe6d
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xe6e
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF563
	.byte	0x1
	.value	0xe6f
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF564
	.byte	0x1
	.value	0xe70
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x2e
	.long	.LASF488
	.byte	0x1
	.value	0xe80
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF565
	.byte	0x1
	.value	0xe98
	.long	0x166
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f82
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xe98
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF457
	.byte	0x1
	.value	0xe98
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF458
	.byte	0x1
	.value	0xe98
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xe9a
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xe9c
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF566
	.byte	0x1
	.value	0xea7
	.long	0x9c
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fce
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xea7
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xea9
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF367
	.byte	0x1
	.value	0xead
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF567
	.byte	0x1
	.value	0xec5
	.long	0x166
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x501a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xec5
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xec7
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xec8
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF568
	.byte	0x1
	.value	0xed3
	.long	0x166
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x5066
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xed3
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xed5
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xed6
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF569
	.byte	0x1
	.value	0xee1
	.long	0x17e9
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x50a3
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xee1
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xee3
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF570
	.byte	0x1
	.value	0xeea
	.long	0xa7
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x50e0
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xeea
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xeec
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF571
	.byte	0x1
	.value	0xef5
	.long	0x17e9
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x511d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xef5
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xef7
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF572
	.byte	0x1
	.value	0xf08
	.long	0xb2
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x515a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf08
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xf0a
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF573
	.byte	0x1
	.value	0xf11
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x51b1
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf11
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0xf11
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0xf11
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xf13
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF574
	.byte	0x1
	.value	0xf1f
	.long	0x135f
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x520c
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf1f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"o"
	.byte	0x1
	.value	0xf1f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF387
	.byte	0x1
	.value	0xf1f
	.long	0x14a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF190
	.byte	0x1
	.value	0xf1f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2d
	.long	.LASF575
	.byte	0x1
	.value	0xf4b
	.long	0x166
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x523c
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf4b
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF576
	.byte	0x1
	.value	0xf55
	.long	0x166
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x526c
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf55
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.value	0xf5f
	.long	0x166
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x52ba
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf5f
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF457
	.byte	0x1
	.value	0xf5f
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF458
	.byte	0x1
	.value	0xf5f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF578
	.byte	0x1
	.value	0xf6a
	.long	0x166
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f7
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf6a
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xf6c
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF579
	.byte	0x1
	.value	0xf76
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x5341
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf76
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0xf76
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0xf76
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF580
	.byte	0x1
	.value	0xf81
	.long	0x166
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x53ba
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf81
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xf81
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0xf81
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0xf81
	.long	0x167c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xf83
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0xf84
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF581
	.byte	0x1
	.value	0xf90
	.long	0xa7
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x5448
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xf90
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xf90
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xf90
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF488
	.byte	0x1
	.value	0xf92
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"got"
	.byte	0x1
	.value	0xf93
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.uleb128 0x2e
	.long	.LASF582
	.byte	0x1
	.value	0xf99
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF583
	.byte	0x1
	.value	0xfd0
	.long	0x166
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x54f4
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xfd0
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0xfd0
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0xfd0
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"tab"
	.byte	0x1
	.value	0xfd0
	.long	0x167c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0xfd2
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x2b
	.string	"g"
	.byte	0x1
	.value	0xfdf
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xfe1
	.long	0x11a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF584
	.byte	0x1
	.value	0xff0
	.long	0xa7
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x55af
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0xff0
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0xff0
	.long	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0xff0
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0xff2
	.long	0x55af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xffa
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0xffb
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF537
	.byte	0x1
	.value	0xffc
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.value	0x1008
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1937
	.uleb128 0x2d
	.long	.LASF585
	.byte	0x1
	.value	0x1021
	.long	0xa7
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x5672
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1021
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x1023
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF586
	.byte	0x1
	.value	0x102a
	.quad	.L858
	.uleb128 0x35
	.long	.LASF587
	.byte	0x1
	.value	0x102e
	.quad	.L862
	.uleb128 0x2f
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x1027
	.long	0x55af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x2b
	.string	"nl"
	.byte	0x1
	.value	0x1029
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.uleb128 0x2e
	.long	.LASF434
	.byte	0x1
	.value	0x104a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF588
	.byte	0x1
	.value	0x1069
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0x56d6
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1069
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x1069
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"cnt"
	.byte	0x1
	.value	0x1069
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x106b
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x106c
	.long	0x55af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF589
	.byte	0x1
	.value	0x109f
	.long	0xa7
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0x57a5
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x109f
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF452
	.byte	0x1
	.value	0x109f
	.long	0x14f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF453
	.byte	0x1
	.value	0x109f
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x10a4
	.long	0x4aee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x10a5
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF590
	.byte	0x1
	.value	0x10a6
	.long	0x4e4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x2e
	.long	.LASF538
	.byte	0x1
	.value	0x10ac
	.long	0x17e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.value	0x10c2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF591
	.byte	0x1
	.value	0x10d2
	.long	0x166
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e2
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x10d2
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"c"
	.byte	0x1
	.value	0x10d4
	.long	0x55af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF592
	.byte	0x1
	.value	0x10dd
	.long	0x166
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0x5812
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x10dd
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF593
	.byte	0x1
	.value	0x124b
	.long	0x135f
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.long	.LASF594
	.byte	0x1
	.value	0x1254
	.long	0x135f
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.long	.LASF595
	.byte	0x1
	.value	0x125d
	.long	0x135f
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF596
	.byte	0x1
	.value	0x1268
	.long	0x8f
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x58c6
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1268
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.value	0x1268
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x126a
	.long	0x57
	.uleb128 0x2e
	.long	.LASF234
	.byte	0x1
	.value	0x126b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF597
	.byte	0x1
	.value	0x1286
	.long	0x135f
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x5912
	.uleb128 0x29
	.string	"fd"
	.byte	0x1
	.value	0x1286
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x1286
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1288
	.long	0x57
	.byte	0
	.uleb128 0x2d
	.long	.LASF598
	.byte	0x1
	.value	0x128e
	.long	0x135f
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x596e
	.uleb128 0x30
	.long	.LASF510
	.byte	0x1
	.value	0x128e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x128e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1290
	.long	0x57
	.uleb128 0x2e
	.long	.LASF234
	.byte	0x1
	.value	0x1291
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF599
	.byte	0x1
	.value	0x1297
	.long	0x135f
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d7
	.uleb128 0x30
	.long	.LASF510
	.byte	0x1
	.value	0x1297
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF377
	.byte	0x1
	.value	0x1297
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1297
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1299
	.long	0x57
	.uleb128 0x2e
	.long	.LASF234
	.byte	0x1
	.value	0x129a
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF600
	.byte	0x1
	.value	0x12a0
	.long	0x57
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a31
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12a0
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12a2
	.long	0x57
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x12a3
	.long	0x5a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.long	.LASF453
	.byte	0x1
	.value	0x12a4
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x49
	.long	0x5a41
	.uleb128 0x8
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF601
	.byte	0x1
	.value	0x12ad
	.long	0x57
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x5aac
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12ad
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x12ad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12af
	.long	0x57
	.uleb128 0x2f
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x12b1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF602
	.byte	0x1
	.value	0x12ba
	.long	0x57
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b05
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12ba
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x12ba
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12bc
	.long	0x57
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x12bd
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2d
	.long	.LASF603
	.byte	0x1
	.value	0x12c3
	.long	0x57
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b5d
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12c3
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x12c3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12c5
	.long	0x57
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x12c6
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF604
	.byte	0x1
	.value	0x12cc
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b95
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12cc
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12ce
	.long	0x57
	.byte	0
	.uleb128 0x2d
	.long	.LASF605
	.byte	0x1
	.value	0x12d5
	.long	0x57
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c3a
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12d5
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x12d5
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"ap"
	.byte	0x1
	.value	0x12d5
	.long	0x5c3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12d7
	.long	0x57
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x12d8
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x12d9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x12da
	.long	0x18e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF606
	.byte	0x1
	.value	0x12db
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"apc"
	.byte	0x1
	.value	0x12dd
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf6
	.uleb128 0x2d
	.long	.LASF607
	.byte	0x1
	.value	0x12eb
	.long	0x57
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ca1
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x12eb
	.long	0x135f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x12eb
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2a
	.uleb128 0x2b
	.string	"ap"
	.byte	0x1
	.value	0x12ed
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF382
	.byte	0x1
	.value	0x12ee
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x2d
	.long	.LASF608
	.byte	0x1
	.value	0x12f7
	.long	0x57
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d00
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x12f7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x12f9
	.long	0x57
	.uleb128 0x2b
	.string	"ap"
	.byte	0x1
	.value	0x12fa
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF382
	.byte	0x1
	.value	0x12fb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x2d
	.long	.LASF609
	.byte	0x1
	.value	0x1304
	.long	0x135f
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d78
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1306
	.long	0x57
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x1307
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fd"
	.byte	0x1
	.value	0x1308
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF373
	.byte	0x1
	.value	0x131d
	.long	0x1902
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x1322
	.long	0x404a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF610
	.byte	0x1
	.value	0x133c
	.long	0x57
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0x5df3
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x133c
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pos"
	.byte	0x1
	.value	0x133c
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x133e
	.long	0x57
	.uleb128 0x2f
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x1340
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF367
	.byte	0x1
	.value	0x1341
	.long	0x5df3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x2d
	.long	.LASF611
	.byte	0x1
	.value	0x1361
	.long	0x57
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e53
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x1361
	.long	0x135f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"pos"
	.byte	0x1
	.value	0x1361
	.long	0xdfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1363
	.long	0x57
	.uleb128 0x2e
	.long	.LASF367
	.byte	0x1
	.value	0x1364
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF612
	.byte	0x1
	.value	0x1390
	.long	0x57
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eda
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x1390
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x1390
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x1390
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"ap"
	.byte	0x1
	.value	0x1390
	.long	0x5c3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0x1392
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.uleb128 0x2c
	.long	.LASF522
	.byte	0x1
	.value	0x1395
	.long	0x57
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF613
	.byte	0x1
	.value	0x13a1
	.long	0x57
	.quad	.LFB175
	.quad	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f49
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x13a1
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x13a1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x29
	.string	"fmt"
	.byte	0x1
	.value	0x13a1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2a
	.uleb128 0x2b
	.string	"ap"
	.byte	0x1
	.value	0x13a3
	.long	0x133
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF382
	.byte	0x1
	.value	0x13a4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x3c
	.long	.LASF614
	.byte	0x13
	.byte	0xa8
	.long	0xfcb
	.uleb128 0x3c
	.long	.LASF615
	.byte	0x13
	.byte	0xa9
	.long	0xfcb
	.uleb128 0x3c
	.long	.LASF616
	.byte	0x13
	.byte	0xaa
	.long	0xfcb
	.uleb128 0x3c
	.long	.LASF617
	.byte	0x18
	.byte	0x1b
	.long	0xdfb
	.uleb128 0x3c
	.long	.LASF618
	.byte	0x18
	.byte	0x34
	.long	0xdb3
	.uleb128 0x3c
	.long	.LASF619
	.byte	0x18
	.byte	0x51
	.long	0x132b
	.uleb128 0x2c
	.long	.LASF620
	.byte	0x18
	.value	0x125
	.long	0x40b
	.uleb128 0x2c
	.long	.LASF621
	.byte	0x18
	.value	0x151
	.long	0xdfb
	.uleb128 0x2c
	.long	.LASF622
	.byte	0x18
	.value	0x1e2
	.long	0x57
	.uleb128 0x2c
	.long	.LASF623
	.byte	0x18
	.value	0x1fa
	.long	0x135f
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x18
	.value	0x1fb
	.long	0x1708
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x18
	.value	0x1fc
	.long	0x1708
	.uleb128 0x2c
	.long	.LASF626
	.byte	0x18
	.value	0x216
	.long	0x57
	.uleb128 0x3c
	.long	.LASF627
	.byte	0x19
	.byte	0x22
	.long	0x13a4
	.uleb128 0x3c
	.long	.LASF628
	.byte	0x19
	.byte	0x2a
	.long	0x13a4
	.uleb128 0x3c
	.long	.LASF629
	.byte	0x19
	.byte	0x3c
	.long	0x1231
	.uleb128 0x3c
	.long	.LASF630
	.byte	0x19
	.byte	0x43
	.long	0xdfb
	.uleb128 0x3c
	.long	.LASF631
	.byte	0x19
	.byte	0x44
	.long	0x6016
	.uleb128 0x6
	.byte	0x8
	.long	0x78c
	.uleb128 0x3c
	.long	.LASF632
	.byte	0x19
	.byte	0x81
	.long	0x6027
	.uleb128 0x3d
	.long	0x13aa
	.uleb128 0x3e
	.long	.LASF633
	.byte	0x1
	.value	0xa04
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_unix
	.uleb128 0x3e
	.long	.LASF634
	.byte	0x1
	.value	0xf26
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_perlio
	.uleb128 0x3e
	.long	.LASF635
	.byte	0x1
	.value	0xcdb
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_stdio
	.uleb128 0x3e
	.long	.LASF636
	.byte	0x1
	.value	0x10ec
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_crlf
	.uleb128 0x3e
	.long	.LASF637
	.byte	0x1
	.value	0x71f
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_utf8
	.uleb128 0x3e
	.long	.LASF638
	.byte	0x1
	.value	0x73c
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_byte
	.uleb128 0x3e
	.long	.LASF639
	.byte	0x1
	.value	0x766
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_raw
	.uleb128 0x3e
	.long	.LASF640
	.byte	0x1
	.value	0xfa1
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_pending
	.uleb128 0x3e
	.long	.LASF641
	.byte	0x1
	.value	0x419
	.long	0x1033
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_remove
	.uleb128 0x7
	.long	0x57
	.long	0x6103
	.uleb128 0x3f
	.long	0x7b
	.value	0x7ff
	.byte	0
	.uleb128 0x3e
	.long	.LASF642
	.byte	0x1
	.value	0x8a1
	.long	0x60f2
	.uleb128 0x9
	.byte	0x3
	.quad	PerlIO_fd_refcnt
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF465:
	.string	"Perl_PerlIO_error"
.LASF66:
	.string	"precomp"
.LASF398:
	.string	"PerlIO_clone"
.LASF359:
	.string	"to_cv_amg"
.LASF350:
	.string	"repeat_ass_amg"
.LASF223:
	.string	"_unused2"
.LASF318:
	.string	"rshift_ass_amg"
.LASF577:
	.string	"PerlIOPending_seek"
.LASF231:
	.string	"PerlIO_funcs"
.LASF209:
	.string	"_fileno"
.LASF563:
	.string	"flushptr"
.LASF391:
	.string	"table"
.LASF495:
	.string	"PerlIOBase_clearerr"
.LASF553:
	.string	"PerlIO_exportFILE"
.LASF637:
	.string	"PerlIO_utf8"
.LASF26:
	.string	"op_next"
.LASF257:
	.string	"Get_cnt"
.LASF287:
	.string	"xiou_any"
.LASF452:
	.string	"vbuf"
.LASF371:
	.string	"oflags"
.LASF252:
	.string	"Clearerr"
.LASF390:
	.string	"tablep"
.LASF133:
	.string	"xpvgv"
.LASF418:
	.string	"nesting"
.LASF155:
	.string	"xio_ifp"
.LASF41:
	.string	"cop_io"
.LASF621:
	.string	"PL_subname"
.LASF320:
	.string	"band_ass_amg"
.LASF327:
	.string	"gt_amg"
.LASF448:
	.string	"imode"
.LASF214:
	.string	"_shortbuf"
.LASF368:
	.string	"bufsiz"
.LASF127:
	.string	"xhv_keys"
.LASF170:
	.string	"xio_flags"
.LASF379:
	.string	"PerlIO_intmode2str"
.LASF174:
	.string	"svt_set"
.LASF486:
	.string	"done"
.LASF123:
	.string	"xpvhv"
.LASF352:
	.string	"concat_ass_amg"
.LASF409:
	.string	"mark"
.LASF645:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF600:
	.string	"PerlIO_getc"
.LASF547:
	.string	"PerlIOStdio_get_base"
.LASF84:
	.string	"gp_hv"
.LASF476:
	.string	"Perl_PerlIO_set_cnt"
.LASF261:
	.string	"PerlIO_list_s"
.LASF260:
	.string	"PerlIO_list_t"
.LASF154:
	.string	"xpvio"
.LASF106:
	.string	"xpviv"
.LASF344:
	.string	"cos_amg"
.LASF20:
	.string	"overflow_arg_area"
.LASF558:
	.string	"PerlIOBuf_flush"
.LASF475:
	.string	"Perl_PerlIO_get_cnt"
.LASF195:
	.string	"_flags"
.LASF230:
	.string	"next"
.LASF588:
	.string	"PerlIOCrlf_set_ptrcnt"
.LASF497:
	.string	"PerlIO_sv_dup"
.LASF21:
	.string	"reg_save_area"
.LASF142:
	.string	"xcv_start"
.LASF7:
	.string	"__off_t"
.LASF81:
	.string	"gp_io"
.LASF85:
	.string	"gp_egv"
.LASF542:
	.string	"PerlIOStdio_flush"
.LASF293:
	.string	"hek_hash"
.LASF437:
	.string	"PerlIO__close"
.LASF331:
	.string	"ncmp_amg"
.LASF39:
	.string	"cop_line"
.LASF141:
	.string	"xcv_stash"
.LASF215:
	.string	"_lock"
.LASF421:
	.string	"PerlIO_arg_fetch"
.LASF634:
	.string	"PerlIO_perlio"
.LASF567:
	.string	"PerlIOBuf_popped"
.LASF347:
	.string	"log_amg"
.LASF249:
	.string	"Flush"
.LASF103:
	.string	"xpv_cur"
.LASF427:
	.string	"Perl_boot_core_PerlIO"
.LASF533:
	.string	"saveerr"
.LASF96:
	.string	"mg_type"
.LASF389:
	.string	"PerlIO_cleantable"
.LASF330:
	.string	"ne_amg"
.LASF102:
	.string	"xpv_pv"
.LASF510:
	.string	"path"
.LASF411:
	.string	"tmpXSoff"
.LASF386:
	.string	"PerlIO_fdupopen"
.LASF329:
	.string	"eq_amg"
.LASF573:
	.string	"PerlIOBuf_set_ptrcnt"
.LASF285:
	.string	"cv_flags_t"
.LASF89:
	.string	"gp_line"
.LASF160:
	.string	"xio_page_len"
.LASF534:
	.string	"dupfd"
.LASF562:
	.string	"PerlIOBuf_write"
.LASF201:
	.string	"_IO_write_end"
.LASF326:
	.string	"le_amg"
.LASF507:
	.string	"PerlIOUnix_seek"
.LASF109:
	.string	"xpvnv"
.LASF134:
	.string	"xgv_gp"
.LASF25:
	.string	"__va_list_tag"
.LASF95:
	.string	"mg_private"
.LASF630:
	.string	"PL_Sv"
.LASF356:
	.string	"to_av_amg"
.LASF539:
	.string	"PerlIOStdio_write"
.LASF120:
	.string	"xav_arylen"
.LASF78:
	.string	"program"
.LASF143:
	.string	"xcv_root"
.LASF467:
	.string	"Perl_PerlIO_setlinebuf"
.LASF578:
	.string	"PerlIOPending_flush"
.LASF291:
	.string	"hent_hek"
.LASF94:
	.string	"mg_virtual"
.LASF417:
	.string	"alen"
.LASF501:
	.string	"PerlIOUnix_refcnt_inc"
.LASF346:
	.string	"exp_amg"
.LASF353:
	.string	"copy_amg"
.LASF560:
	.string	"PerlIOBuf_read"
.LASF245:
	.string	"Write"
.LASF37:
	.string	"cop_seq"
.LASF532:
	.string	"invalidate"
.LASF363:
	.string	"max_amg_code"
.LASF549:
	.string	"PerlIOStdio_get_ptr"
.LASF372:
	.string	"PerlIOUnix"
.LASF59:
	.string	"sv_flags"
.LASF319:
	.string	"band_amg"
.LASF301:
	.string	"string_amg"
.LASF56:
	.string	"broiled"
.LASF165:
	.string	"xio_fmt_gv"
.LASF243:
	.string	"Read"
.LASF596:
	.string	"PerlIO_getname"
.LASF540:
	.string	"PerlIOStdio_seek"
.LASF88:
	.string	"gp_flags"
.LASF80:
	.string	"gp_refcnt"
.LASF442:
	.string	"PerlIO_resolve_layers"
.LASF74:
	.string	"nparens"
.LASF412:
	.string	"XS_PerlIO__Layer__find"
.LASF469:
	.string	"PerlIO_fast_gets"
.LASF240:
	.string	"Binmode"
.LASF545:
	.string	"PerlIOStdio_clearerr"
.LASF522:
	.string	"Perl___notused"
.LASF569:
	.string	"PerlIOBuf_get_ptr"
.LASF401:
	.string	"PerlIO_get_layers"
.LASF90:
	.string	"gp_file"
.LASF472:
	.string	"Perl_PerlIO_get_base"
.LASF159:
	.string	"xio_page"
.LASF625:
	.string	"PL_def_layerlist"
.LASF606:
	.string	"wrote"
.LASF516:
	.string	"PerlIOStdio_fileno"
.LASF384:
	.string	"PerlIO_allocate"
.LASF505:
	.string	"PerlIOUnix_fileno"
.LASF458:
	.string	"whence"
.LASF377:
	.string	"mode"
.LASF149:
	.string	"xcv_padlist"
.LASF594:
	.string	"Perl_PerlIO_stdout"
.LASF17:
	.string	"__gnuc_va_list"
.LASF208:
	.string	"_chain"
.LASF608:
	.string	"PerlIO_stdoutf"
.LASF300:
	.string	"nomethod_amg"
.LASF79:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF430:
	.string	"PerlIOBase_binmode"
.LASF259:
	.string	"PerlIO"
.LASF575:
	.string	"PerlIOPending_fill"
.LASF517:
	.string	"PerlIOStdio_mode"
.LASF438:
	.string	"Perl_PerlIO_close"
.LASF646:
	.string	"_IO_lock_t"
.LASF644:
	.string	"perlio.c"
.LASF528:
	.string	"set_this"
.LASF502:
	.string	"PerlIOUnix_refcnt_dec"
.LASF639:
	.string	"PerlIO_raw"
.LASF57:
	.string	"sv_any"
.LASF238:
	.string	"Popped"
.LASF333:
	.string	"slt_amg"
.LASF77:
	.string	"reganch"
.LASF642:
	.string	"PerlIO_fd_refcnt"
.LASF258:
	.string	"Set_ptrcnt"
.LASF189:
	.string	"stashes"
.LASF63:
	.string	"endp"
.LASF12:
	.string	"off_t"
.LASF511:
	.string	"PerlIOUnix_dup"
.LASF410:
	.string	"items"
.LASF509:
	.string	"PerlIOUnix_open"
.LASF488:
	.string	"avail"
.LASF525:
	.string	"init"
.LASF14:
	.string	"size_t"
.LASF400:
	.string	"PerlIO_pop"
.LASF374:
	.string	"PerlIOStdio"
.LASF431:
	.string	"PerlIORaw_pushed"
.LASF477:
	.string	"Perl_PerlIO_set_ptrcnt"
.LASF564:
	.string	"written"
.LASF422:
	.string	"PerlIO_layer_fetch"
.LASF456:
	.string	"Perl_PerlIO_seek"
.LASF282:
	.string	"SVt_PVGV"
.LASF200:
	.string	"_IO_write_ptr"
.LASF544:
	.string	"PerlIOStdio_error"
.LASF70:
	.string	"sublen"
.LASF605:
	.string	"PerlIO_vprintf"
.LASF114:
	.string	"xav_fill"
.LASF299:
	.string	"bool__amg"
.LASF93:
	.string	"mg_moremagic"
.LASF38:
	.string	"cop_arybase"
.LASF587:
	.string	"test"
.LASF566:
	.string	"PerlIOBuf_tell"
.LASF629:
	.string	"PL_markstack_ptr"
.LASF22:
	.string	"va_list"
.LASF99:
	.string	"mg_ptr"
.LASF396:
	.string	"PerlIO_clone_list"
.LASF415:
	.string	"names"
.LASF323:
	.string	"bxor_amg"
.LASF523:
	.string	"PerlIOStdio_open"
.LASF251:
	.string	"Error"
.LASF247:
	.string	"Tell"
.LASF168:
	.string	"xio_subprocess"
.LASF479:
	.string	"PerlIORaw_open"
.LASF548:
	.string	"PerlIOStdio_get_bufsiz"
.LASF193:
	.string	"FILE"
.LASF68:
	.string	"subbeg"
.LASF62:
	.string	"startp"
.LASF357:
	.string	"to_hv_amg"
.LASF586:
	.string	"scan"
.LASF436:
	.string	"PerlIO_binmode"
.LASF647:
	.string	"PerlIOUnix_setfd"
.LASF643:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF358:
	.string	"to_gv_amg"
.LASF591:
	.string	"PerlIOCrlf_flush"
.LASF61:
	.string	"regexp"
.LASF466:
	.string	"Perl_PerlIO_clearerr"
.LASF414:
	.string	"PerlIO_parse_layers"
.LASF394:
	.string	"PerlIO_list_free"
.LASF392:
	.string	"PerlIO_list_alloc"
.LASF60:
	.string	"REGEXP"
.LASF58:
	.string	"sv_refcnt"
.LASF387:
	.string	"param"
.LASF175:
	.string	"svt_len"
.LASF274:
	.string	"SVt_PVIV"
.LASF265:
	.string	"next_off"
.LASF242:
	.string	"Fileno"
.LASF32:
	.string	"op_flags"
.LASF204:
	.string	"_IO_save_base"
.LASF40:
	.string	"cop_warnings"
.LASF256:
	.string	"Get_ptr"
.LASF599:
	.string	"PerlIO_reopen"
.LASF423:
	.string	"PerlIOPop_pushed"
.LASF65:
	.string	"substrs"
.LASF376:
	.string	"iotype"
.LASF381:
	.string	"writing"
.LASF279:
	.string	"SVt_PVAV"
.LASF590:
	.string	"ebuf"
.LASF636:
	.string	"PerlIO_crlf"
.LASF124:
	.string	"xhv_array"
.LASF314:
	.string	"pow_ass_amg"
.LASF69:
	.string	"offsets"
.LASF627:
	.string	"PL_stack_sp"
.LASF420:
	.string	"PerlIO_default_buffer"
.LASF515:
	.string	"PerlIOUnix_close"
.LASF166:
	.string	"xio_bottom_name"
.LASF218:
	.string	"__pad2"
.LASF277:
	.string	"SVt_PVBM"
.LASF434:
	.string	"code"
.LASF612:
	.string	"PerlIO_vsprintf"
.LASF428:
	.string	"PerlIO_stdstreams"
.LASF297:
	.string	"fallback_amg"
.LASF91:
	.string	"MAGIC"
.LASF34:
	.string	"cop_label"
.LASF97:
	.string	"mg_flags"
.LASF111:
	.string	"XPVAV"
.LASF490:
	.string	"PerlIOBase_noop_ok"
.LASF617:
	.string	"PL_warnhook"
.LASF281:
	.string	"SVt_PVCV"
.LASF561:
	.string	"PerlIOBuf_unread"
.LASF73:
	.string	"prelen"
.LASF404:
	.string	"pkgsv"
.LASF474:
	.string	"Perl_PerlIO_get_ptr"
.LASF29:
	.string	"op_targ"
.LASF589:
	.string	"PerlIOCrlf_write"
.LASF167:
	.string	"xio_bottom_gv"
.LASF225:
	.string	"_next"
.LASF638:
	.string	"PerlIO_byte"
.LASF75:
	.string	"lastparen"
.LASF322:
	.string	"bor_ass_amg"
.LASF139:
	.string	"XPVCV"
.LASF10:
	.string	"__ssize_t"
.LASF268:
	.string	"reg_data"
.LASF164:
	.string	"xio_fmt_name"
.LASF292:
	.string	"hent_val"
.LASF233:
	.string	"fsize"
.LASF582:
	.string	"more"
.LASF110:
	.string	"xnv_nv"
.LASF290:
	.string	"hent_next"
.LASF317:
	.string	"rshift_amg"
.LASF177:
	.string	"svt_free"
.LASF581:
	.string	"PerlIOPending_read"
.LASF52:
	.string	"op_pmdynflags"
.LASF360:
	.string	"iter_amg"
.LASF508:
	.string	"new_loc"
.LASF335:
	.string	"sgt_amg"
.LASF283:
	.string	"SVt_PVFM"
.LASF399:
	.string	"PerlIO_destruct"
.LASF524:
	.string	"appended"
.LASF483:
	.string	"PerlIOBase_pushed"
.LASF188:
	.string	"clone_params"
.LASF416:
	.string	"llen"
.LASF324:
	.string	"bxor_ass_amg"
.LASF499:
	.string	"nexto"
.LASF150:
	.string	"xcv_outside"
.LASF441:
	.string	"PerlIO_layer_from_ref"
.LASF288:
	.string	"PADLIST"
.LASF445:
	.string	"incdef"
.LASF186:
	.string	"any_dxptr"
.LASF597:
	.string	"PerlIO_fdopen"
.LASF461:
	.string	"PerlIOBase_flush_linebuf"
.LASF138:
	.string	"xgv_flags"
.LASF92:
	.string	"magic"
.LASF537:
	.string	"unread"
.LASF616:
	.string	"stderr"
.LASF382:
	.string	"result"
.LASF234:
	.string	"name"
.LASF464:
	.string	"Perl_PerlIO_eof"
.LASF226:
	.string	"_sbuf"
.LASF280:
	.string	"SVt_PVHV"
.LASF196:
	.string	"_IO_read_ptr"
.LASF633:
	.string	"PerlIO_unix"
.LASF269:
	.string	"SVt_NULL"
.LASF206:
	.string	"_IO_save_end"
.LASF622:
	.string	"PL_sig_pending"
.LASF529:
	.string	"PerlIOStdio_invalidate_fileno"
.LASF172:
	.string	"mgvtbl"
.LASF132:
	.string	"XPVGV"
.LASF171:
	.string	"MGVTBL"
.LASF615:
	.string	"stdout"
.LASF571:
	.string	"PerlIOBuf_get_base"
.LASF298:
	.string	"abs_amg"
.LASF19:
	.string	"fp_offset"
.LASF264:
	.string	"type"
.LASF284:
	.string	"SVt_PVIO"
.LASF18:
	.string	"gp_offset"
.LASF71:
	.string	"refcnt"
.LASF328:
	.string	"ge_amg"
.LASF504:
	.string	"PerlIOUnix_oflags"
.LASF122:
	.string	"XPVHV"
.LASF364:
	.string	"funcs"
.LASF9:
	.string	"sizetype"
.LASF632:
	.string	"PL_curcop"
.LASF48:
	.string	"op_pmnext"
.LASF144:
	.string	"xcv_xsub"
.LASF503:
	.string	"PerlIO_cleanup"
.LASF33:
	.string	"op_private"
.LASF342:
	.string	"dec_amg"
.LASF462:
	.string	"Perl_PerlIO_fill"
.LASF180:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF555:
	.string	"PerlIO_releaseFILE"
.LASF4:
	.string	"signed char"
.LASF583:
	.string	"PerlIOCrlf_pushed"
.LASF153:
	.string	"XPVIO"
.LASF491:
	.string	"PerlIOBase_noop_fail"
.LASF105:
	.string	"XPVIV"
.LASF119:
	.string	"xav_alloc"
.LASF568:
	.string	"PerlIOBuf_close"
.LASF126:
	.string	"xhv_max"
.LASF72:
	.string	"minlen"
.LASF312:
	.string	"modulo_ass_amg"
.LASF453:
	.string	"count"
.LASF337:
	.string	"seq_amg"
.LASF118:
	.string	"xmg_stash"
.LASF407:
	.string	"stash"
.LASF64:
	.string	"regstclass"
.LASF129:
	.string	"xhv_eiter"
.LASF530:
	.string	"PerlIOStdio_close"
.LASF8:
	.string	"__off64_t"
.LASF198:
	.string	"_IO_read_base"
.LASF278:
	.string	"SVt_PVLV"
.LASF216:
	.string	"_offset"
.LASF253:
	.string	"Setlinebuf"
.LASF267:
	.string	"reg_substr_data"
.LASF334:
	.string	"sle_amg"
.LASF439:
	.string	"Perl_PerlIO_fileno"
.LASF203:
	.string	"_IO_buf_end"
.LASF303:
	.string	"add_amg"
.LASF482:
	.string	"PerlIO_modestr"
.LASF424:
	.string	"PerlIO_default_layers"
.LASF276:
	.string	"SVt_PVMG"
.LASF248:
	.string	"Close"
.LASF116:
	.string	"xof_off"
.LASF443:
	.string	"narg"
.LASF306:
	.string	"subtr_ass_amg"
.LASF473:
	.string	"Perl_PerlIO_get_bufsiz"
.LASF136:
	.string	"xgv_namelen"
.LASF244:
	.string	"Unread"
.LASF222:
	.string	"_mode"
.LASF397:
	.string	"proto"
.LASF45:
	.string	"op_last"
.LASF199:
	.string	"_IO_write_base"
.LASF266:
	.string	"__dirstream"
.LASF481:
	.string	"PerlIOBase_fileno"
.LASF183:
	.string	"any_long"
.LASF641:
	.string	"PerlIO_remove"
.LASF512:
	.string	"PerlIOUnix_read"
.LASF31:
	.string	"op_seq"
.LASF339:
	.string	"not_amg"
.LASF487:
	.string	"PerlIOBase_read"
.LASF628:
	.string	"PL_stack_base"
.LASF275:
	.string	"SVt_PVNV"
.LASF42:
	.string	"PMOP"
.LASF518:
	.string	"tmode"
.LASF307:
	.string	"mult_amg"
.LASF76:
	.string	"lastcloseparen"
.LASF169:
	.string	"xio_type"
.LASF383:
	.string	"ptype"
.LASF6:
	.string	"long int"
.LASF176:
	.string	"svt_clear"
.LASF551:
	.string	"PerlIOStdio_set_ptrcnt"
.LASF156:
	.string	"xio_ofp"
.LASF137:
	.string	"xgv_stash"
.LASF46:
	.string	"op_pmreplroot"
.LASF224:
	.string	"_IO_marker"
.LASF426:
	.string	"PerlIO_default_layer"
.LASF496:
	.string	"PerlIOBase_setlinebuf"
.LASF148:
	.string	"xcv_depth"
.LASF87:
	.string	"gp_cvgen"
.LASF108:
	.string	"XPVNV"
.LASF128:
	.string	"xhv_riter"
.LASF640:
	.string	"PerlIO_pending"
.LASF607:
	.string	"PerlIO_printf"
.LASF332:
	.string	"scmp_amg"
.LASF385:
	.string	"last"
.LASF519:
	.string	"PerlIOStdio_pushed"
.LASF579:
	.string	"PerlIOPending_set_ptrcnt"
.LASF241:
	.string	"Getarg"
.LASF535:
	.string	"PerlIOStdio_read"
.LASF576:
	.string	"PerlIOPending_close"
.LASF619:
	.string	"PL_stderrgv"
.LASF47:
	.string	"op_pmreplstart"
.LASF626:
	.string	"PL_in_load_module"
.LASF556:
	.string	"PerlIOBuf_pushed"
.LASF270:
	.string	"SVt_IV"
.LASF263:
	.string	"regnode"
.LASF27:
	.string	"op_sibling"
.LASF182:
	.string	"any_iv"
.LASF521:
	.string	"PerlIO_importFILE"
.LASF130:
	.string	"xhv_pmroot"
.LASF316:
	.string	"lshift_ass_amg"
.LASF3:
	.string	"long unsigned int"
.LASF43:
	.string	"pmop"
.LASF506:
	.string	"PerlIOUnix_pushed"
.LASF361:
	.string	"int_amg"
.LASF54:
	.string	"PerlInterpreter"
.LASF613:
	.string	"PerlIO_sprintf"
.LASF302:
	.string	"numer_amg"
.LASF311:
	.string	"modulo_amg"
.LASF348:
	.string	"sqrt_amg"
.LASF351:
	.string	"concat_amg"
.LASF11:
	.string	"char"
.LASF614:
	.string	"stdin"
.LASF373:
	.string	"stdio"
.LASF554:
	.string	"PerlIO_findFILE"
.LASF162:
	.string	"xio_top_name"
.LASF100:
	.string	"mg_len"
.LASF286:
	.string	"xiou_dirp"
.LASF202:
	.string	"_IO_buf_base"
.LASF135:
	.string	"xgv_name"
.LASF403:
	.string	"load"
.LASF310:
	.string	"div_ass_amg"
.LASF369:
	.string	"oneword"
.LASF197:
	.string	"_IO_read_end"
.LASF552:
	.string	"PerlIOStdio_fill"
.LASF158:
	.string	"xio_lines"
.LASF604:
	.string	"PerlIO_rewind"
.LASF395:
	.string	"PerlIO_list_push"
.LASF194:
	.string	"_IO_FILE"
.LASF104:
	.string	"xpv_len"
.LASF585:
	.string	"PerlIOCrlf_get_cnt"
.LASF500:
	.string	"PerlIO_init"
.LASF30:
	.string	"op_type"
.LASF24:
	.string	"STRLEN"
.LASF480:
	.string	"self"
.LASF565:
	.string	"PerlIOBuf_seek"
.LASF447:
	.string	"PerlIO_openn"
.LASF538:
	.string	"eptr"
.LASF635:
	.string	"PerlIO_stdio"
.LASF271:
	.string	"SVt_NV"
.LASF468:
	.string	"PerlIO_has_base"
.LASF598:
	.string	"PerlIO_open"
.LASF295:
	.string	"hek_key"
.LASF246:
	.string	"Seek"
.LASF362:
	.string	"DESTROY_amg"
.LASF235:
	.string	"size"
.LASF147:
	.string	"xcv_file"
.LASF494:
	.string	"PerlIOBase_error"
.LASF217:
	.string	"__pad1"
.LASF219:
	.string	"__pad3"
.LASF220:
	.string	"__pad4"
.LASF221:
	.string	"__pad5"
.LASF191:
	.string	"proto_perl"
.LASF378:
	.string	"perlsio_binmode"
.LASF623:
	.string	"PL_perlio"
.LASF620:
	.string	"PL_sv_undef"
.LASF531:
	.string	"socksfd"
.LASF207:
	.string	"_markers"
.LASF227:
	.string	"_pos"
.LASF343:
	.string	"atan2_amg"
.LASF451:
	.string	"Perl_PerlIO_read"
.LASF289:
	.string	"PADOFFSET"
.LASF50:
	.string	"op_pmflags"
.LASF55:
	.string	"interpreter"
.LASF232:
	.string	"_PerlIO_funcs"
.LASF157:
	.string	"xio_dirpu"
.LASF336:
	.string	"sge_amg"
.LASF543:
	.string	"PerlIOStdio_eof"
.LASF370:
	.string	"PerlIOBuf"
.LASF460:
	.string	"Perl_PerlIO_flush"
.LASF44:
	.string	"op_first"
.LASF23:
	.string	"double"
.LASF526:
	.string	"PerlIOStdio_dup"
.LASF51:
	.string	"op_pmpermflags"
.LASF101:
	.string	"xrv_rv"
.LASF115:
	.string	"xav_max"
.LASF13:
	.string	"ssize_t"
.LASF28:
	.string	"op_ppaddr"
.LASF340:
	.string	"compl_amg"
.LASF444:
	.string	"args"
.LASF181:
	.string	"any_i32"
.LASF341:
	.string	"inc_amg"
.LASF354:
	.string	"neg_amg"
.LASF580:
	.string	"PerlIOPending_pushed"
.LASF454:
	.string	"Perl_PerlIO_unread"
.LASF273:
	.string	"SVt_PV"
.LASF595:
	.string	"Perl_PerlIO_stderr"
.LASF36:
	.string	"cop_filegv"
.LASF184:
	.string	"any_bool"
.LASF152:
	.string	"xcv_outside_seq"
.LASF67:
	.string	"data"
.LASF541:
	.string	"PerlIOStdio_tell"
.LASF113:
	.string	"xav_array"
.LASF272:
	.string	"SVt_RV"
.LASF618:
	.string	"PL_dowarn"
.LASF624:
	.string	"PL_known_layers"
.LASF187:
	.string	"CLONE_PARAMS"
.LASF489:
	.string	"take"
.LASF388:
	.string	"PerlIO_debug"
.LASF380:
	.string	"rawmode"
.LASF478:
	.string	"PerlIOUtf8_pushed"
.LASF609:
	.string	"PerlIO_tmpfile"
.LASF611:
	.string	"PerlIO_getpos"
.LASF446:
	.string	"handler"
.LASF432:
	.string	"PerlIO_apply_layera"
.LASF367:
	.string	"posn"
.LASF485:
	.string	"PerlIOBase_unread"
.LASF125:
	.string	"xhv_fill"
.LASF435:
	.string	"PerlIO_apply_layers"
.LASF107:
	.string	"xiv_iv"
.LASF366:
	.string	"base"
.LASF315:
	.string	"lshift_amg"
.LASF237:
	.string	"Pushed"
.LASF425:
	.string	"osLayer"
.LASF349:
	.string	"repeat_amg"
.LASF514:
	.string	"PerlIOUnix_tell"
.LASF393:
	.string	"Perl_list"
.LASF308:
	.string	"mult_ass_amg"
.LASF294:
	.string	"hek_len"
.LASF527:
	.string	"mismatch"
.LASF15:
	.string	"long long unsigned int"
.LASF440:
	.string	"PerlIO_context_layers"
.LASF457:
	.string	"offset"
.LASF212:
	.string	"_cur_column"
.LASF325:
	.string	"lt_amg"
.LASF455:
	.string	"Perl_PerlIO_write"
.LASF236:
	.string	"kind"
.LASF296:
	.string	"float"
.LASF406:
	.string	"PerlIO_tab_sv"
.LASF570:
	.string	"PerlIOBuf_get_cnt"
.LASF179:
	.string	"svt_dup"
.LASF405:
	.string	"layer"
.LASF557:
	.string	"PerlIOBuf_open"
.LASF205:
	.string	"_IO_backup_base"
.LASF463:
	.string	"PerlIO_isutf8"
.LASF163:
	.string	"xio_top_gv"
.LASF309:
	.string	"div_amg"
.LASF262:
	.string	"array"
.LASF239:
	.string	"Open"
.LASF305:
	.string	"subtr_amg"
.LASF520:
	.string	"toptab"
.LASF584:
	.string	"PerlIOCrlf_unread"
.LASF254:
	.string	"Get_base"
.LASF53:
	.string	"op_pmstash"
.LASF173:
	.string	"svt_get"
.LASF82:
	.string	"gp_form"
.LASF211:
	.string	"_old_offset"
.LASF593:
	.string	"Perl_PerlIO_stdin"
.LASF592:
	.string	"PerlIOCrlf_binmode"
.LASF146:
	.string	"xcv_gv"
.LASF550:
	.string	"PerlIOStdio_get_cnt"
.LASF450:
	.string	"layera"
.LASF35:
	.string	"cop_stash"
.LASF433:
	.string	"layers"
.LASF459:
	.string	"Perl_PerlIO_tell"
.LASF16:
	.string	"long long int"
.LASF192:
	.string	"line_t"
.LASF131:
	.string	"xhv_name"
.LASF210:
	.string	"_flags2"
.LASF178:
	.string	"svt_copy"
.LASF601:
	.string	"PerlIO_ungetc"
.LASF546:
	.string	"PerlIOStdio_setlinebuf"
.LASF574:
	.string	"PerlIOBuf_dup"
.LASF419:
	.string	"warn_layer"
.LASF484:
	.string	"PerlIOBase_popped"
.LASF121:
	.string	"xav_flags"
.LASF365:
	.string	"PerlIO_pair_t"
.LASF117:
	.string	"xmg_magic"
.LASF429:
	.string	"PerlIO_push"
.LASF408:
	.string	"XS_PerlIO__Layer__NoWarnings"
.LASF375:
	.string	"PerlIOCrlf"
.LASF98:
	.string	"mg_obj"
.LASF470:
	.string	"PerlIO_has_cntptr"
.LASF185:
	.string	"any_dptr"
.LASF355:
	.string	"to_sv_amg"
.LASF112:
	.string	"xpvav"
.LASF49:
	.string	"op_pmregexp"
.LASF449:
	.string	"perm"
.LASF610:
	.string	"PerlIO_setpos"
.LASF145:
	.string	"xcv_xsubany"
.LASF602:
	.string	"PerlIO_putc"
.LASF161:
	.string	"xio_lines_left"
.LASF83:
	.string	"gp_av"
.LASF603:
	.string	"PerlIO_puts"
.LASF559:
	.string	"PerlIOBuf_fill"
.LASF313:
	.string	"pow_amg"
.LASF631:
	.string	"PL_Xpv"
.LASF151:
	.string	"xcv_flags"
.LASF2:
	.string	"unsigned int"
.LASF140:
	.string	"xpvcv"
.LASF572:
	.string	"PerlIOBuf_bufsiz"
.LASF250:
	.string	"Fill"
.LASF413:
	.string	"PerlIO_define_layer"
.LASF229:
	.string	"_PerlIO"
.LASF321:
	.string	"bor_amg"
.LASF338:
	.string	"sne_amg"
.LASF5:
	.string	"short int"
.LASF86:
	.string	"gp_cv"
.LASF493:
	.string	"PerlIOBase_eof"
.LASF471:
	.string	"PerlIO_canset_cnt"
.LASF213:
	.string	"_vtable_offset"
.LASF304:
	.string	"add_ass_amg"
.LASF498:
	.string	"PerlIOBase_dup"
.LASF402:
	.string	"PerlIO_find_layer"
.LASF513:
	.string	"PerlIOUnix_write"
.LASF492:
	.string	"PerlIOBase_close"
.LASF255:
	.string	"Get_bufsiz"
.LASF536:
	.string	"PerlIOStdio_unread"
.LASF345:
	.string	"sin_amg"
.LASF228:
	.string	"PerlIOl"
.LASF190:
	.string	"flags"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
