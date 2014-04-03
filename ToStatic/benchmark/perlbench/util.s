	.file	"util.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 util.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.globl	Perl_safesysmalloc
	.type	Perl_safesysmalloc, @function
Perl_safesysmalloc:
.LFB2:
	.file 1 "util.c"
	.loc 1 72 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# size, size
	.loc 1 86 0
	cmpq	$0, -40(%rbp)	#, size
	je	.L2	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# size, iftmp.0
	jmp	.L3	#
.L2:
	.loc 1 86 0 discriminator 2
	movl	$1, %eax	#, iftmp.0
.L3:
	.loc 1 86 0 discriminator 3
	movq	%rax, %rdi	# iftmp.0,
	call	malloc	#
	movq	%rax, -24(%rbp)	# tmp85, ptr
	.loc 1 89 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr
	je	.L4	#,
	.loc 1 90 0
	movq	-24(%rbp), %rax	# ptr, D.14447
	jmp	.L5	#
.L4:
	.loc 1 91 0
	movzbl	PL_nomemok(%rip), %eax	# PL_nomemok, PL_nomemok.1
	testb	%al, %al	# PL_nomemok.1
	je	.L6	#,
	.loc 1 92 0
	movl	$0, %eax	#, D.14447
	jmp	.L5	#
.L6:
	.loc 1 95 0
	movl	$PL_no_mem, %edi	#,
	call	strlen	#
	movq	%rax, %rbx	#, D.14448
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.3
	testq	%rax, %rax	# PL_stderrgv.3
	je	.L7	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.4
	movl	12(%rax), %eax	# PL_stderrgv.4_13->sv_flags, D.14449
	movzbl	%al, %eax	# D.14449, D.14449
	cmpl	$13, %eax	#, D.14449
	jne	.L7	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.5
	movq	(%rax), %rax	# PL_stderrgv.5_16->sv_any, D.14450
	movq	56(%rax), %rax	# _17->xgv_gp, D.14451
	movq	16(%rax), %rax	# _18->gp_io, D.14452
	testq	%rax, %rax	# D.14452
	je	.L7	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.6
	movq	(%rax), %rax	# PL_stderrgv.6_20->sv_any, D.14450
	movq	56(%rax), %rax	# _21->xgv_gp, D.14451
	movq	16(%rax), %rax	# _22->gp_io, D.14452
	movq	(%rax), %rax	# _23->sv_any, D.14453
	movq	64(%rax), %rax	# _24->xio_ofp, D.14454
	testq	%rax, %rax	# D.14454
	je	.L7	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.7
	movq	(%rax), %rax	# PL_stderrgv.7_26->sv_any, D.14450
	movq	56(%rax), %rax	# _27->xgv_gp, D.14451
	movq	16(%rax), %rax	# _28->gp_io, D.14452
	movq	(%rax), %rax	# _29->sv_any, D.14453
	movq	64(%rax), %rax	# _30->xio_ofp, iftmp.2
	jmp	.L8	#
.L7:
	.loc 1 95 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L8:
	.loc 1 95 0 discriminator 3
	movq	%rax, %rdi	# iftmp.2,
	call	Perl_PerlIO_fileno	#
	movq	%rbx, %rdx	# D.14448,
	movl	$PL_no_mem, %esi	#,
	movl	%eax, %edi	# D.14455,
	call	write	#
	.loc 1 97 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
	.loc 1 98 0 discriminator 3
	movl	$0, %eax	#, D.14447
.L5:
	.loc 1 101 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_safesysmalloc, .-Perl_safesysmalloc
	.globl	Perl_safesysrealloc
	.type	Perl_safesysrealloc, @function
Perl_safesysrealloc:
.LFB3:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# where, where
	movq	%rsi, -48(%rbp)	# size, size
	.loc 1 121 0
	cmpq	$0, -48(%rbp)	#, size
	jne	.L10	#,
	.loc 1 122 0
	movq	-40(%rbp), %rax	# where, tmp84
	movq	%rax, %rdi	# tmp84,
	call	Perl_safesysfree	#
	.loc 1 123 0
	movl	$0, %eax	#, D.14456
	jmp	.L11	#
.L10:
	.loc 1 126 0
	cmpq	$0, -40(%rbp)	#, where
	jne	.L12	#,
	.loc 1 127 0
	movq	-48(%rbp), %rax	# size, tmp85
	movq	%rax, %rdi	# tmp85,
	call	Perl_safesysmalloc	#
	jmp	.L11	#
.L12:
	.loc 1 132 0
	movq	-48(%rbp), %rdx	# size, tmp86
	movq	-40(%rbp), %rax	# where, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	realloc	#
	movq	%rax, -24(%rbp)	# tmp88, ptr
	.loc 1 138 0
	cmpq	$0, -24(%rbp)	#, ptr
	je	.L13	#,
	.loc 1 139 0
	movq	-24(%rbp), %rax	# ptr, D.14456
	jmp	.L11	#
.L13:
	.loc 1 140 0
	movzbl	PL_nomemok(%rip), %eax	# PL_nomemok, PL_nomemok.8
	testb	%al, %al	# PL_nomemok.8
	je	.L14	#,
	.loc 1 141 0
	movl	$0, %eax	#, D.14456
	jmp	.L11	#
.L14:
	.loc 1 144 0
	movl	$PL_no_mem, %edi	#,
	call	strlen	#
	movq	%rax, %rbx	#, D.14457
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.10
	testq	%rax, %rax	# PL_stderrgv.10
	je	.L15	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.11
	movl	12(%rax), %eax	# PL_stderrgv.11_13->sv_flags, D.14458
	movzbl	%al, %eax	# D.14458, D.14458
	cmpl	$13, %eax	#, D.14458
	jne	.L15	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.12
	movq	(%rax), %rax	# PL_stderrgv.12_16->sv_any, D.14459
	movq	56(%rax), %rax	# _17->xgv_gp, D.14460
	movq	16(%rax), %rax	# _18->gp_io, D.14461
	testq	%rax, %rax	# D.14461
	je	.L15	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.13
	movq	(%rax), %rax	# PL_stderrgv.13_20->sv_any, D.14459
	movq	56(%rax), %rax	# _21->xgv_gp, D.14460
	movq	16(%rax), %rax	# _22->gp_io, D.14461
	movq	(%rax), %rax	# _23->sv_any, D.14462
	movq	64(%rax), %rax	# _24->xio_ofp, D.14463
	testq	%rax, %rax	# D.14463
	je	.L15	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.14
	movq	(%rax), %rax	# PL_stderrgv.14_26->sv_any, D.14459
	movq	56(%rax), %rax	# _27->xgv_gp, D.14460
	movq	16(%rax), %rax	# _28->gp_io, D.14461
	movq	(%rax), %rax	# _29->sv_any, D.14462
	movq	64(%rax), %rax	# _30->xio_ofp, iftmp.9
	jmp	.L16	#
.L15:
	.loc 1 144 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L16:
	.loc 1 144 0 discriminator 3
	movq	%rax, %rdi	# iftmp.9,
	call	Perl_PerlIO_fileno	#
	movq	%rbx, %rdx	# D.14457,
	movl	$PL_no_mem, %esi	#,
	movl	%eax, %edi	# D.14464,
	call	write	#
	.loc 1 146 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
	.loc 1 147 0 discriminator 3
	movl	$0, %eax	#, D.14456
.L11:
	.loc 1 150 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_safesysrealloc, .-Perl_safesysrealloc
	.globl	Perl_safesysfree
	.type	Perl_safesysfree, @function
Perl_safesysfree:
.LFB4:
	.loc 1 156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# where, where
	.loc 1 161 0
	cmpq	$0, -8(%rbp)	#, where
	je	.L17	#,
	.loc 1 163 0
	movq	-8(%rbp), %rax	# where, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
.L17:
	.loc 1 165 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_safesysfree, .-Perl_safesysfree
	.globl	Perl_safesyscalloc
	.type	Perl_safesyscalloc, @function
Perl_safesyscalloc:
.LFB5:
	.loc 1 171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# count, count
	movq	%rsi, -48(%rbp)	# size, size
	.loc 1 186 0
	movq	-48(%rbp), %rax	# size, tmp86
	imulq	-40(%rbp), %rax	# count, tmp85
	movq	%rax, -48(%rbp)	# tmp85, size
	.loc 1 187 0
	cmpq	$0, -48(%rbp)	#, size
	je	.L20	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# size, iftmp.15
	jmp	.L21	#
.L20:
	.loc 1 187 0 discriminator 2
	movl	$1, %eax	#, iftmp.15
.L21:
	.loc 1 187 0 discriminator 3
	movq	%rax, %rdi	# iftmp.15,
	call	malloc	#
	movq	%rax, -24(%rbp)	# tmp87, ptr
	.loc 1 190 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr
	je	.L22	#,
	.loc 1 191 0
	movq	-48(%rbp), %rdx	# size, tmp88
	movq	-24(%rbp), %rax	# ptr, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	memset	#
	.loc 1 192 0
	movq	-24(%rbp), %rax	# ptr, D.14465
	jmp	.L23	#
.L22:
	.loc 1 194 0
	movzbl	PL_nomemok(%rip), %eax	# PL_nomemok, PL_nomemok.16
	testb	%al, %al	# PL_nomemok.16
	je	.L24	#,
	.loc 1 195 0
	movl	$0, %eax	#, D.14465
	jmp	.L23	#
.L24:
	.loc 1 198 0
	movl	$PL_no_mem, %edi	#,
	call	strlen	#
	movq	%rax, %rbx	#, D.14466
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.18
	testq	%rax, %rax	# PL_stderrgv.18
	je	.L25	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.19
	movl	12(%rax), %eax	# PL_stderrgv.19_15->sv_flags, D.14467
	movzbl	%al, %eax	# D.14467, D.14467
	cmpl	$13, %eax	#, D.14467
	jne	.L25	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.20
	movq	(%rax), %rax	# PL_stderrgv.20_18->sv_any, D.14468
	movq	56(%rax), %rax	# _19->xgv_gp, D.14469
	movq	16(%rax), %rax	# _20->gp_io, D.14470
	testq	%rax, %rax	# D.14470
	je	.L25	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.21
	movq	(%rax), %rax	# PL_stderrgv.21_22->sv_any, D.14468
	movq	56(%rax), %rax	# _23->xgv_gp, D.14469
	movq	16(%rax), %rax	# _24->gp_io, D.14470
	movq	(%rax), %rax	# _25->sv_any, D.14471
	movq	64(%rax), %rax	# _26->xio_ofp, D.14472
	testq	%rax, %rax	# D.14472
	je	.L25	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.22
	movq	(%rax), %rax	# PL_stderrgv.22_28->sv_any, D.14468
	movq	56(%rax), %rax	# _29->xgv_gp, D.14469
	movq	16(%rax), %rax	# _30->gp_io, D.14470
	movq	(%rax), %rax	# _31->sv_any, D.14471
	movq	64(%rax), %rax	# _32->xio_ofp, iftmp.17
	jmp	.L26	#
.L25:
	.loc 1 198 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L26:
	.loc 1 198 0 discriminator 3
	movq	%rax, %rdi	# iftmp.17,
	call	Perl_PerlIO_fileno	#
	movq	%rbx, %rdx	# D.14466,
	movl	$PL_no_mem, %esi	#,
	movl	%eax, %edi	# D.14473,
	call	write	#
	.loc 1 200 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
	.loc 1 201 0 discriminator 3
	movl	$0, %eax	#, D.14465
.L23:
	.loc 1 204 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_safesyscalloc, .-Perl_safesyscalloc
	.globl	Perl_malloc
	.type	Perl_malloc, @function
Perl_malloc:
.LFB6:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# nbytes, nbytes
	.loc 1 214 0
	movq	-8(%rbp), %rax	# nbytes, tmp61
	movq	%rax, %rdi	# tmp61,
	call	malloc	#
	.loc 1 215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_malloc, .-Perl_malloc
	.globl	Perl_calloc
	.type	Perl_calloc, @function
Perl_calloc:
.LFB7:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# elements, elements
	movq	%rsi, -16(%rbp)	# size, size
	.loc 1 220 0
	movq	-16(%rbp), %rdx	# size, tmp61
	movq	-8(%rbp), %rax	# elements, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	calloc	#
	.loc 1 221 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_calloc, .-Perl_calloc
	.globl	Perl_realloc
	.type	Perl_realloc, @function
Perl_realloc:
.LFB8:
	.loc 1 224 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# where, where
	movq	%rsi, -16(%rbp)	# nbytes, nbytes
	.loc 1 226 0
	movq	-16(%rbp), %rdx	# nbytes, tmp61
	movq	-8(%rbp), %rax	# where, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	realloc	#
	.loc 1 227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_realloc, .-Perl_realloc
	.globl	Perl_mfree
	.type	Perl_mfree, @function
Perl_mfree:
.LFB9:
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# where, where
	.loc 1 232 0
	movq	-8(%rbp), %rax	# where, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_mfree, .-Perl_mfree
	.globl	Perl_delimcpy
	.type	Perl_delimcpy, @function
Perl_delimcpy:
.LFB10:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdx, %rax	# from, from
	movq	%rcx, %r10	# fromend, fromend
	movl	%r8d, %ecx	# delim, delim
	movq	%r9, -16(%rbp)	# retlen, retlen
	.loc 1 243 0
	movl	$0, %ebx	#, tolen
	jmp	.L35	#
.L43:
	.loc 1 244 0
	movzbl	(%rax), %edx	# *from_8, D.14477
	cmpb	$92, %dl	#, D.14477
	jne	.L36	#,
	.loc 1 245 0
	leaq	1(%rax), %rdx	#, D.14478
	movzbl	(%rdx), %edx	# *_17, D.14477
	movsbl	%dl, %edx	# D.14477, D.14479
	cmpl	%ecx, %edx	# delim, D.14479
	jne	.L37	#,
	.loc 1 246 0
	addq	$1, %rax	#, from
	jmp	.L40	#
.L37:
	.loc 1 248 0
	cmpq	%rsi, %rdi	# toend, to
	jae	.L39	#,
	.loc 1 249 0
	movq	%rdi, %rdx	# to, to.23
	leaq	1(%rdx), %rdi	#, to
	movzbl	(%rax), %r8d	# *from_8, D.14477
	movb	%r8b, (%rdx)	# D.14477, *to.23_23
.L39:
	.loc 1 250 0
	addl	$1, %ebx	#, tolen
	.loc 1 251 0
	addq	$1, %rax	#, from
	jmp	.L40	#
.L36:
	.loc 1 254 0
	movzbl	(%rax), %edx	# *from_8, D.14477
	movsbl	%dl, %edx	# D.14477, D.14479
	cmpl	%ecx, %edx	# delim, D.14479
	jne	.L40	#,
	.loc 1 255 0
	jmp	.L41	#
.L40:
	.loc 1 256 0
	cmpq	%rsi, %rdi	# toend, to
	jae	.L42	#,
	.loc 1 257 0
	movq	%rdi, %rdx	# to, to.24
	leaq	1(%rdx), %rdi	#, to
	movzbl	(%rax), %r8d	# *from_7, D.14477
	movb	%r8b, (%rdx)	# D.14477, *to.24_30
.L42:
	.loc 1 243 0
	addq	$1, %rax	#, from
	addl	$1, %ebx	#, tolen
.L35:
	.loc 1 243 0 is_stmt 0 discriminator 1
	cmpq	%r10, %rax	# fromend, from
	jb	.L43	#,
.L41:
	.loc 1 259 0 is_stmt 1
	cmpq	%rsi, %rdi	# toend, to
	jae	.L44	#,
	.loc 1 260 0
	movb	$0, (%rdi)	#, *to_5
.L44:
	.loc 1 261 0
	movq	-16(%rbp), %rdx	# retlen, tmp77
	movl	%ebx, (%rdx)	# tolen, *retlen_35(D)
	.loc 1 263 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_delimcpy, .-Perl_delimcpy
	.globl	Perl_instr
	.type	Perl_instr, @function
Perl_instr:
.LFB11:
	.loc 1 270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rax	# big, big
	movq	%rsi, %rdx	# little, little
	.loc 1 274 0
	testq	%rdx, %rdx	# little
	jne	.L47	#,
	.loc 1 275 0
	jmp	.L48	#
.L47:
	.loc 1 276 0
	movq	%rdx, %rcx	# little, little.25
	leaq	1(%rcx), %rdx	#, little
	movzbl	(%rcx), %ecx	# *little.25_9, D.14481
	movsbl	%cl, %r13d	# D.14481, first
	.loc 1 277 0
	testl	%r13d, %r13d	# first
	jne	.L49	#,
	.loc 1 278 0
	jmp	.L48	#
.L49:
	.loc 1 279 0
	jmp	.L50	#
.L56:
	.loc 1 280 0
	movq	%rax, %rcx	# big, big.26
	leaq	1(%rcx), %rax	#, big
	movzbl	(%rcx), %ecx	# *big.26_15, D.14481
	movsbl	%cl, %ecx	# D.14481, D.14482
	cmpl	%r13d, %ecx	# first, D.14482
	je	.L51	#,
	.loc 1 281 0
	jmp	.L50	#
.L51:
	.loc 1 282 0
	movq	%rax, %r12	# big, x
	movq	%rdx, %rbx	# little, s
	jmp	.L52	#
.L55:
	.loc 1 283 0
	movzbl	(%r12), %ecx	# *x_4, D.14481
	testb	%cl, %cl	# D.14481
	jne	.L53	#,
	.loc 1 284 0
	movl	$0, %eax	#, D.14480
	jmp	.L48	#
.L53:
	.loc 1 285 0
	movq	%rbx, %rcx	# s, s.27
	leaq	1(%rcx), %rbx	#, s
	movzbl	(%rcx), %esi	# *s.27_24, D.14481
	movq	%r12, %rcx	# x, x.28
	leaq	1(%rcx), %r12	#, x
	movzbl	(%rcx), %ecx	# *x.28_27, D.14481
	cmpb	%cl, %sil	# D.14481, D.14481
	je	.L52	#,
	.loc 1 286 0
	subq	$1, %rbx	#, s
	.loc 1 287 0
	jmp	.L54	#
.L52:
	.loc 1 282 0 discriminator 1
	movzbl	(%rbx), %ecx	# *s_2, D.14481
	testb	%cl, %cl	# D.14481
	jne	.L55	#,
.L54:
	.loc 1 290 0
	movzbl	(%rbx), %ecx	# *s_3, D.14481
	testb	%cl, %cl	# D.14481
	jne	.L50	#,
	.loc 1 291 0
	subq	$1, %rax	#, D.14480
	jmp	.L48	#
.L50:
	.loc 1 279 0 discriminator 1
	movzbl	(%rax), %ecx	# *big_1, D.14481
	testb	%cl, %cl	# D.14481
	jne	.L56	#,
	.loc 1 293 0
	movl	$0, %eax	#, D.14480
.L48:
	.loc 1 294 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_instr, .-Perl_instr
	.globl	Perl_ninstr
	.type	Perl_ninstr, @function
Perl_ninstr:
.LFB12:
	.loc 1 300 0
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
	movq	%rdi, %rax	# big, big
	movq	%rdx, -40(%rbp)	# little, little
	movq	%rcx, -48(%rbp)	# lend, lend
	.loc 1 302 0
	movq	-40(%rbp), %rdx	# little, tmp87
	movzbl	(%rdx), %edx	# *little_6(D), D.14484
	movsbl	%dl, %r13d	# D.14484, first
	.loc 1 303 0
	movq	-48(%rbp), %r12	# lend, littleend
	.loc 1 305 0
	testl	%r13d, %r13d	# first
	jne	.L58	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	cmpq	%r12, -40(%rbp)	# littleend, little
	jb	.L58	#,
	.loc 1 306 0 is_stmt 1
	jmp	.L59	#
.L58:
	.loc 1 307 0
	movq	%rsi, %rcx	# bigend, bigend.29
	movq	%rax, %rdx	# big, big.30
	movq	%rcx, %rdi	# bigend.29, D.14485
	subq	%rdx, %rdi	# big.30, D.14485
	movq	%r12, %rcx	# littleend, littleend.31
	movq	-40(%rbp), %rdx	# little, little.32
	subq	%rdx, %rcx	# little.32, D.14485
	movq	%rcx, %rdx	# D.14485, D.14485
	cmpq	%rdx, %rdi	# D.14485, D.14485
	jge	.L60	#,
	.loc 1 308 0
	movl	$0, %eax	#, D.14483
	jmp	.L59	#
.L60:
	.loc 1 309 0
	movq	%r12, %rdi	# littleend, littleend.33
	movq	-40(%rbp), %rdx	# little, little.34
	leaq	1(%rdx), %rcx	#, tmp88
	movq	%rcx, -40(%rbp)	# tmp88, little
	subq	%rdx, %rdi	# little.35, D.14485
	movq	%rdi, %rdx	# D.14485, D.14485
	negq	%rdx	# D.14486
	addq	%rdx, %rsi	# D.14486, bigend
	.loc 1 310 0
	jmp	.L61	#
.L66:
	.loc 1 311 0
	movq	%rax, %rdx	# big, big.36
	leaq	1(%rdx), %rax	#, big
	movzbl	(%rdx), %edx	# *big.36_29, D.14484
	movsbl	%dl, %edx	# D.14484, D.14487
	cmpl	%r13d, %edx	# first, D.14487
	je	.L62	#,
	.loc 1 312 0
	jmp	.L61	#
.L62:
	.loc 1 313 0
	movq	%rax, %r14	# big, x
	movq	-40(%rbp), %rbx	# little, s
	jmp	.L63	#
.L65:
	.loc 1 314 0
	movq	%rbx, %rdx	# s, s.37
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %ecx	# *s.37_35, D.14484
	movq	%r14, %rdx	# x, x.38
	leaq	1(%rdx), %r14	#, x
	movzbl	(%rdx), %edx	# *x.38_38, D.14484
	cmpb	%dl, %cl	# D.14484, D.14484
	je	.L63	#,
	.loc 1 315 0
	subq	$1, %rbx	#, s
	.loc 1 316 0
	jmp	.L64	#
.L63:
	.loc 1 313 0 discriminator 1
	cmpq	%r12, %rbx	# littleend, s
	jb	.L65	#,
.L64:
	.loc 1 319 0
	cmpq	%r12, %rbx	# littleend, s
	jb	.L61	#,
	.loc 1 320 0
	subq	$1, %rax	#, D.14483
	jmp	.L59	#
.L61:
	.loc 1 310 0 discriminator 1
	cmpq	%rsi, %rax	# bigend, big
	jbe	.L66	#,
	.loc 1 322 0
	movl	$0, %eax	#, D.14483
.L59:
	.loc 1 323 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_ninstr, .-Perl_ninstr
	.globl	Perl_rninstr
	.type	Perl_rninstr, @function
Perl_rninstr:
.LFB13:
	.loc 1 329 0
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rax	# big, big
	movq	%rsi, -48(%rbp)	# bigend, bigend
	movq	%rdx, -56(%rbp)	# little, little
	movq	%rcx, -64(%rbp)	# lend, lend
	.loc 1 332 0
	movq	-56(%rbp), %rdx	# little, tmp81
	movzbl	(%rdx), %edx	# *little_6(D), D.14489
	movsbl	%dl, %r13d	# D.14489, first
	.loc 1 333 0
	movq	-64(%rbp), %r12	# lend, littleend
	.loc 1 335 0
	testl	%r13d, %r13d	# first
	jne	.L68	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	cmpq	%r12, -56(%rbp)	# littleend, little
	jb	.L68	#,
	.loc 1 336 0 is_stmt 1
	movq	-48(%rbp), %rax	# bigend, D.14488
	jmp	.L69	#
.L68:
	.loc 1 337 0
	movq	%rax, %r15	# big, bigbeg
	.loc 1 338 0
	movq	%r12, %rcx	# littleend, littleend.39
	movq	-56(%rbp), %rax	# little, little.40
	leaq	1(%rax), %rdx	#, tmp82
	movq	%rdx, -56(%rbp)	# tmp82, little
	subq	%rax, %rcx	# little.41, D.14490
	movq	%rcx, %rax	# D.14490, D.14490
	negq	%rax	# D.14491
	movq	%rax, %rdx	# D.14491, D.14491
	movq	-48(%rbp), %rax	# bigend, tmp83
	addq	%rdx, %rax	# D.14491, big
	.loc 1 339 0
	jmp	.L70	#
.L75:
	.loc 1 340 0
	movq	%rax, %rdx	# big, big.42
	leaq	-1(%rdx), %rax	#, big
	movzbl	(%rdx), %edx	# *big.42_23, D.14489
	movsbl	%dl, %edx	# D.14489, D.14492
	cmpl	%r13d, %edx	# first, D.14492
	je	.L71	#,
	.loc 1 341 0
	jmp	.L70	#
.L71:
	.loc 1 342 0
	leaq	2(%rax), %r14	#, x
	movq	-56(%rbp), %rbx	# little, s
	jmp	.L72	#
.L74:
	.loc 1 343 0
	movq	%rbx, %rdx	# s, s.43
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %ecx	# *s.43_29, D.14489
	movq	%r14, %rdx	# x, x.44
	leaq	1(%rdx), %r14	#, x
	movzbl	(%rdx), %edx	# *x.44_32, D.14489
	cmpb	%dl, %cl	# D.14489, D.14489
	je	.L72	#,
	.loc 1 344 0
	subq	$1, %rbx	#, s
	.loc 1 345 0
	jmp	.L73	#
.L72:
	.loc 1 342 0 discriminator 1
	cmpq	%r12, %rbx	# littleend, s
	jb	.L74	#,
.L73:
	.loc 1 348 0
	cmpq	%r12, %rbx	# littleend, s
	jb	.L70	#,
	.loc 1 349 0
	addq	$1, %rax	#, D.14488
	jmp	.L69	#
.L70:
	.loc 1 339 0 discriminator 1
	cmpq	%r15, %rax	# bigbeg, big
	jae	.L75	#,
	.loc 1 351 0
	movl	$0, %eax	#, D.14488
.L69:
	.loc 1 352 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_rninstr, .-Perl_rninstr
	.section	.rodata
.LC0:
	.string	"\n"
	.text
	.globl	Perl_fbm_compile
	.type	Perl_fbm_compile, @function
Perl_fbm_compile:
.LFB14:
	.loc 1 375 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)	# sv, sv
	movl	%esi, -92(%rbp)	# flags, flags
	.loc 1 380 0
	movl	$0, -64(%rbp)	#, rarest
	.loc 1 381 0
	movl	$256, -60(%rbp)	#, frequency
	.loc 1 383 0
	movl	-92(%rbp), %eax	# flags, tmp131
	andl	$15, %eax	#, D.14493
	testl	%eax, %eax	# D.14493
	je	.L77	#,
.LBB2:
	.loc 1 384 0
	movq	-88(%rbp), %rax	# sv, tmp132
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	andl	$536870912, %eax	#, D.14493
	testl	%eax, %eax	# D.14493
	je	.L78	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp133
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	andl	$57344, %eax	#, D.14493
	testl	%eax, %eax	# D.14493
	je	.L78	#,
	movq	-88(%rbp), %rax	# sv, tmp134
	movl	$119, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	Perl_mg_find	#
	jmp	.L79	#
.L78:
	.loc 1 384 0 discriminator 2
	movl	$0, %eax	#, iftmp.45
.L79:
	.loc 1 384 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.45, mg
	.loc 1 385 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp135
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	Perl_sv_catpvn_flags	#
	.loc 1 386 0 discriminator 3
	cmpq	$0, -48(%rbp)	#, mg
	je	.L77	#,
	.loc 1 386 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp136
	movl	40(%rax), %eax	# mg_22->mg_len, D.14494
	testl	%eax, %eax	# D.14494
	js	.L77	#,
	.loc 1 387 0 is_stmt 1
	movq	-48(%rbp), %rax	# mg, tmp137
	movl	40(%rax), %eax	# mg_22->mg_len, D.14494
	leal	1(%rax), %edx	#, D.14494
	movq	-48(%rbp), %rax	# mg, tmp138
	movl	%edx, 40(%rax)	# D.14494, mg_22->mg_len
.L77:
.LBE2:
	.loc 1 389 0
	movq	-88(%rbp), %rax	# sv, tmp139
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	andl	$10223616, %eax	#, D.14493
	cmpl	$262144, %eax	#, D.14493
	jne	.L80	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp140
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movq	8(%rax), %rax	# MEM[(struct XPV *)_28].xpv_cur, len.47
	movq	%rax, -56(%rbp)	# len.47, len
	movq	-88(%rbp), %rax	# sv, tmp141
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movq	(%rax), %rax	# MEM[(struct XPV *)_30].xpv_pv, iftmp.46
	jmp	.L81	#
.L80:
	.loc 1 389 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp142
	movq	-88(%rbp), %rax	# sv, tmp143
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	Perl_sv_pvn_force_flags	#
.L81:
	.loc 1 389 0 discriminator 3
	movq	%rax, %rbx	# iftmp.46, s
	.loc 1 390 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# sv, tmp144
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	movzbl	%al, %eax	# D.14493, D.14493
	cmpl	$7, %eax	#, D.14493
	ja	.L82	#,
	.loc 1 390 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# sv, tmp145
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14496
	je	.L84	#,
.L82:
	.loc 1 390 0 discriminator 1
	nop
.L84:
	.loc 1 391 0 is_stmt 1
	movq	-56(%rbp), %rax	# len, len.49
	testq	%rax, %rax	# len.49
	je	.L76	#,
	.loc 1 393 0
	movq	-56(%rbp), %rax	# len, len.50
	cmpq	$2, %rax	#, len.50
	jbe	.L87	#,
.LBB3:
	.loc 1 397 0
	movq	-56(%rbp), %rax	# len, len.51
	cmpq	$255, %rax	#, len.51
	jbe	.L88	#,
	.loc 1 398 0
	movb	$-1, -65(%rbp)	#, mlen
	jmp	.L89	#
.L88:
	.loc 1 400 0
	movq	-56(%rbp), %rax	# len, len.52
	movb	%al, -65(%rbp)	# len.52, mlen
.L89:
	.loc 1 401 0
	movq	-56(%rbp), %rax	# len, len.53
	leaq	258(%rax), %rdx	#, D.14497
	movq	-88(%rbp), %rax	# sv, tmp146
	movq	%rdx, %rsi	# D.14497,
	movq	%rax, %rdi	# tmp146,
	call	Perl_sv_grow	#
	.loc 1 402 0
	movq	-88(%rbp), %rax	# sv, tmp147
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, D.14498
	movq	-56(%rbp), %rdx	# len, len.54
	addq	$2, %rdx	#, D.14499
	leaq	(%rax,%rdx), %r13	#, table
	.loc 1 403 0
	leaq	-3(%r13), %rbx	#, s
	.loc 1 404 0
	movzbl	-65(%rbp), %eax	# mlen, D.14494
	movl	$256, %edx	#,
	movl	%eax, %esi	# D.14494,
	movq	%r13, %rdi	# table,
	call	memset	#
	.loc 1 405 0
	leaq	-1(%r13), %rax	#, D.14500
	movl	-92(%rbp), %edx	# flags, tmp148
	movb	%dl, (%rax)	# D.14501, *_54
	.loc 1 406 0
	movl	$0, %r12d	#, i
	.loc 1 407 0
	movzbl	-65(%rbp), %eax	# mlen, D.14499
	movl	$1, %edx	#, tmp149
	subq	%rax, %rdx	# D.14499, D.14499
	movq	%rdx, %rax	# D.14499, D.14499
	addq	%rbx, %rax	# s, tmp150
	movq	%rax, -40(%rbp)	# tmp150, sb
	.loc 1 408 0
	jmp	.L90	#
.L92:
	.loc 1 409 0
	movzbl	(%rbx), %eax	# *s_1, D.14501
	movzbl	%al, %eax	# D.14501, D.14499
	addq	%r13, %rax	# table, D.14500
	movzbl	(%rax), %eax	# *_62, D.14501
	cmpb	-65(%rbp), %al	# mlen, D.14501
	jne	.L91	#,
	.loc 1 410 0
	movzbl	(%rbx), %eax	# *s_1, D.14501
	movzbl	%al, %eax	# D.14501, D.14499
	leaq	0(%r13,%rax), %rdx	#, D.14500
	movl	%r12d, %eax	# i, D.14501
	movb	%al, (%rdx)	# D.14501, *_66
.L91:
	.loc 1 411 0
	subq	$1, %rbx	#, s
	addl	$1, %r12d	#, i
.L90:
	.loc 1 408 0 discriminator 1
	cmpq	-40(%rbp), %rbx	# sb, s
	jae	.L92	#,
.L87:
.LBE3:
	.loc 1 414 0
	movq	-88(%rbp), %rax	# sv, tmp151
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$66, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	Perl_sv_magic	#
	.loc 1 415 0
	movq	-88(%rbp), %rax	# sv, tmp152
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	orl	$-2147483648, %eax	#, D.14493
	movl	%eax, %edx	# D.14493, D.14493
	movq	-88(%rbp), %rax	# sv, tmp153
	movl	%edx, 12(%rax)	# D.14493, sv_15(D)->sv_flags
	.loc 1 417 0
	movq	-88(%rbp), %rax	# sv, tmp154
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movq	(%rax), %rbx	# MEM[(struct XPV *)_72].xpv_pv, s
	.loc 1 418 0
	movl	$0, %r12d	#, i
	jmp	.L93	#
.L95:
	.loc 1 419 0
	movl	%r12d, %eax	# i, D.14499
	addq	%rbx, %rax	# s, D.14500
	movzbl	(%rax), %eax	# *_78, D.14501
	movzbl	%al, %eax	# D.14501, D.14494
	cltq
	movzbl	PL_freq(%rax), %eax	# PL_freq, D.14501
	movzbl	%al, %eax	# D.14501, D.14493
	cmpl	-60(%rbp), %eax	# frequency, D.14493
	jae	.L94	#,
	.loc 1 420 0
	movl	%r12d, -64(%rbp)	# i, rarest
	.loc 1 421 0
	movl	%r12d, %eax	# i, D.14499
	addq	%rbx, %rax	# s, D.14500
	movzbl	(%rax), %eax	# *_85, D.14501
	movzbl	%al, %eax	# D.14501, D.14494
	cltq
	movzbl	PL_freq(%rax), %eax	# PL_freq, D.14501
	movzbl	%al, %eax	# D.14501, tmp157
	movl	%eax, -60(%rbp)	# tmp157, frequency
.L94:
	.loc 1 418 0
	addl	$1, %r12d	#, i
.L93:
	.loc 1 418 0 is_stmt 0 discriminator 1
	movl	%r12d, %edx	# i, D.14497
	movq	-56(%rbp), %rax	# len, len.55
	cmpq	%rax, %rdx	# len.55, D.14497
	jb	.L95	#,
	.loc 1 424 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp158
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movl	-64(%rbp), %edx	# rarest, tmp159
	movslq	%edx, %rdx	# tmp159, D.14499
	addq	%rbx, %rdx	# s, D.14500
	movzbl	(%rdx), %edx	# *_93, D.14501
	movb	%dl, 62(%rax)	# D.14501, MEM[(struct XPVBM *)_91].xbm_rare
	.loc 1 425 0
	movq	-88(%rbp), %rax	# sv, tmp160
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movl	-64(%rbp), %edx	# rarest, tmp161
	movw	%dx, 60(%rax)	# D.14502, MEM[(struct XPVBM *)_95].xbm_previous
	.loc 1 426 0
	movq	-88(%rbp), %rax	# sv, tmp162
	movq	(%rax), %rax	# sv_15(D)->sv_any, D.14495
	movl	$100, 56(%rax)	#, MEM[(struct XPVBM *)_97].xbm_useful
	.loc 1 427 0
	movl	-92(%rbp), %eax	# flags, tmp163
	andl	$15, %eax	#, D.14493
	testl	%eax, %eax	# D.14493
	je	.L76	#,
	.loc 1 428 0
	movq	-88(%rbp), %rax	# sv, tmp164
	movl	12(%rax), %eax	# sv_15(D)->sv_flags, D.14493
	orl	$1073741824, %eax	#, D.14493
	movl	%eax, %edx	# D.14493, D.14493
	movq	-88(%rbp), %rax	# sv, tmp165
	movl	%edx, 12(%rax)	# D.14493, sv_15(D)->sv_flags
.L76:
	.loc 1 431 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_fbm_compile, .-Perl_fbm_compile
	.globl	Perl_fbm_instr
	.type	Perl_fbm_instr, @function
Perl_fbm_instr:
.LFB15:
	.loc 1 450 0
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
	movq	%rdi, -72(%rbp)	# big, big
	movq	%rsi, %r12	# bigend, bigend
	movq	%rdx, -80(%rbp)	# littlestr, littlestr
	movl	%ecx, -84(%rbp)	# flags, flags
	.loc 1 453 0
	movq	-80(%rbp), %rax	# littlestr, tmp182
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$262144, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L98	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# littlestr, tmp183
	movq	(%rax), %rax	# littlestr_13(D)->sv_any, D.14506
	movq	8(%rax), %rax	# MEM[(struct XPV *)_16].xpv_cur, l.57
	movq	%rax, -64(%rbp)	# l.57, l
	movq	-80(%rbp), %rax	# littlestr, tmp184
	movq	(%rax), %rax	# littlestr_13(D)->sv_any, D.14506
	movq	(%rax), %rax	# MEM[(struct XPV *)_18].xpv_pv, iftmp.56
	jmp	.L99	#
.L98:
	.loc 1 453 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp185
	movq	-80(%rbp), %rax	# littlestr, tmp186
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp185,
	movq	%rax, %rdi	# tmp186,
	call	Perl_sv_2pv_flags	#
.L99:
	.loc 1 453 0 discriminator 3
	movq	%rax, %r13	# iftmp.56, little
	.loc 1 454 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %r14	# l, littlelen
	.loc 1 455 0 discriminator 3
	movl	-84(%rbp), %eax	# flags, flags.58
	andl	$1, %eax	#, multiline
	movl	%eax, %ebx	# multiline, multiline
	.loc 1 457 0 discriminator 3
	movq	%r12, %rdx	# bigend, bigend.59
	movq	-72(%rbp), %rax	# big, big.60
	subq	%rax, %rdx	# big.60, D.14507
	movq	%rdx, %rax	# D.14507, D.14507
	cmpq	%r14, %rax	# littlelen, D.14508
	jae	.L100	#,
	.loc 1 458 0
	movq	-80(%rbp), %rax	# littlestr, tmp187
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L101	#,
	.loc 1 459 0
	movq	%r12, %rdx	# bigend, bigend.61
	movq	-72(%rbp), %rax	# big, big.62
	subq	%rax, %rdx	# big.62, D.14507
	movq	%rdx, %rax	# D.14507, D.14507
	movq	%rax, %rdx	# D.14507, D.14508
	leaq	-1(%r14), %rax	#, D.14508
	cmpq	%rax, %rdx	# D.14508, D.14508
	jne	.L101	#,
	.loc 1 460 0
	cmpq	$1, %r14	#, littlelen
	je	.L102	#,
	.loc 1 461 0
	movq	-72(%rbp), %rax	# big, tmp188
	movzbl	(%rax), %edx	# *big_28(D), D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L101	#,
	.loc 1 462 0 discriminator 1
	leaq	-1(%r14), %rdx	#, D.14508
	movq	-72(%rbp), %rax	# big, tmp189
	movq	%r13, %rsi	# little,
	movq	%rax, %rdi	# tmp189,
	call	memcmp	#
	.loc 1 461 0 discriminator 1
	testl	%eax, %eax	# D.14510
	jne	.L101	#,
.L102:
	.loc 1 463 0
	movq	-72(%rbp), %rax	# big, D.14504
	jmp	.L149	#
.L101:
	.loc 1 464 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L100:
	.loc 1 467 0
	cmpq	$2, %r14	#, littlelen
	ja	.L104	#,
	.loc 1 469 0
	cmpq	$1, %r14	#, littlelen
	jne	.L105	#,
	.loc 1 470 0
	movq	-80(%rbp), %rax	# littlestr, tmp190
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L106	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# multiline
	jne	.L106	#,
	.loc 1 472 0 is_stmt 1
	leaq	-1(%r12), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_47, D.14509
	cmpb	$10, %al	#, D.14509
	jne	.L107	#,
	.loc 1 473 0
	leaq	-1(%r12), %rax	#, D.14504
	jmp	.L149	#
.L107:
	.loc 1 474 0
	movq	%r12, %rax	# bigend, D.14504
	jmp	.L149	#
.L106:
	.loc 1 476 0
	movq	-72(%rbp), %rbx	# big, s
	.loc 1 477 0
	jmp	.L108	#
.L110:
	.loc 1 478 0
	movzbl	(%rbx), %edx	# *s_1, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L109	#,
	.loc 1 479 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L109:
	.loc 1 480 0
	addq	$1, %rbx	#, s
.L108:
	.loc 1 477 0 discriminator 1
	cmpq	%r12, %rbx	# bigend, s
	jb	.L110	#,
	.loc 1 482 0
	movq	-80(%rbp), %rax	# littlestr, tmp191
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L111	#,
	.loc 1 483 0
	movq	%r12, %rax	# bigend, D.14504
	jmp	.L149	#
.L111:
	.loc 1 484 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L105:
	.loc 1 486 0
	testq	%r14, %r14	# littlelen
	jne	.L112	#,
	.loc 1 487 0
	movq	-72(%rbp), %rax	# big, D.14504
	jmp	.L149	#
.L112:
	.loc 1 490 0
	movq	-80(%rbp), %rax	# littlestr, tmp192
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L113	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# multiline
	jne	.L113	#,
	.loc 1 491 0 is_stmt 1
	leaq	-1(%r12), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_63, D.14509
	cmpb	$10, %al	#, D.14509
	jne	.L114	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	leaq	-2(%r12), %rax	#, D.14511
	movzbl	(%rax), %edx	# *_65, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L114	#,
	.loc 1 492 0 is_stmt 1
	leaq	-2(%r12), %rax	#, D.14504
	jmp	.L149	#
.L114:
	.loc 1 493 0
	leaq	-1(%r12), %rax	#, D.14511
	movzbl	(%rax), %edx	# *_69, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L115	#,
	.loc 1 494 0
	leaq	-1(%r12), %rax	#, D.14504
	jmp	.L149	#
.L115:
	.loc 1 495 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L113:
.LBB4:
	.loc 1 501 0
	movzbl	0(%r13), %r14d	# *little_21, c1
	.loc 1 502 0
	movzbl	1(%r13), %r15d	# MEM[(unsigned char *)little_21 + 1B], c2
	.loc 1 504 0
	movq	-72(%rbp), %rax	# big, tmp193
	leaq	1(%rax), %rbx	#, s
	.loc 1 505 0
	subq	$1, %r12	#, bigend
	.loc 1 506 0
	cmpb	%r15b, %r14b	# c2, c1
	je	.L116	#,
	.loc 1 507 0
	jmp	.L117	#
.L124:
	.loc 1 508 0
	movzbl	(%rbx), %eax	# *s_3, D.14509
	cmpb	%r15b, %al	# c2, D.14509
	jne	.L118	#,
	.loc 1 509 0
	leaq	-1(%rbx), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_79, D.14509
	cmpb	%r14b, %al	# c1, D.14509
	jne	.L119	#,
	.loc 1 510 0
	leaq	-1(%rbx), %rax	#, D.14504
	jmp	.L149	#
.L119:
	.loc 1 511 0
	addq	$2, %rbx	#, s
	.loc 1 512 0
	jmp	.L117	#
.L118:
	.loc 1 515 0
	movzbl	(%rbx), %eax	# *s_2, D.14509
	cmpb	%r14b, %al	# c1, D.14509
	jne	.L120	#,
	.loc 1 516 0
	cmpq	%r12, %rbx	# bigend, s
	jne	.L121	#,
	.loc 1 517 0
	jmp	.L122	#
.L121:
	.loc 1 518 0
	leaq	1(%rbx), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_84, D.14509
	cmpb	%r15b, %al	# c2, D.14509
	jne	.L123	#,
	.loc 1 519 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L123:
	.loc 1 521 0
	addq	$1, %rbx	#, s
	.loc 1 522 0
	jmp	.L118	#
.L120:
	.loc 1 526 0
	addq	$2, %rbx	#, s
.L117:
	.loc 1 507 0 discriminator 1
	cmpq	%r12, %rbx	# bigend, s
	jbe	.L124	#,
	.loc 1 528 0
	jmp	.L122	#
.L116:
	.loc 1 531 0
	jmp	.L125	#
.L130:
	.loc 1 532 0
	movzbl	(%rbx), %eax	# *s_4, D.14509
	cmpb	%r14b, %al	# c1, D.14509
	jne	.L126	#,
	.loc 1 533 0
	leaq	-1(%rbx), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_90, D.14509
	cmpb	%r14b, %al	# c1, D.14509
	jne	.L127	#,
	.loc 1 534 0
	leaq	-1(%rbx), %rax	#, D.14504
	jmp	.L149	#
.L127:
	.loc 1 535 0
	cmpq	%r12, %rbx	# bigend, s
	jne	.L128	#,
	.loc 1 536 0
	jmp	.L122	#
.L128:
	.loc 1 537 0
	leaq	1(%rbx), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_93, D.14509
	cmpb	%r14b, %al	# c1, D.14509
	jne	.L129	#,
	.loc 1 538 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L129:
	.loc 1 539 0
	addq	$3, %rbx	#, s
	jmp	.L125	#
.L126:
	.loc 1 542 0
	addq	$2, %rbx	#, s
.L125:
	.loc 1 531 0 discriminator 1
	cmpq	%r12, %rbx	# bigend, s
	jbe	.L130	#,
.L122:
.LBE4:
	.loc 1 546 0
	movq	-80(%rbp), %rax	# littlestr, tmp194
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L131	#,
	.loc 1 546 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %edx	# *bigend_77, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L131	#,
	.loc 1 547 0 is_stmt 1
	movq	%r12, %rax	# bigend, D.14504
	jmp	.L149	#
.L131:
	.loc 1 548 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L104:
	.loc 1 550 0
	movq	-80(%rbp), %rax	# littlestr, tmp195
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L132	#,
	.loc 1 550 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# multiline
	jne	.L132	#,
	.loc 1 551 0 is_stmt 1
	movq	%r14, %rax	# littlelen, D.14512
	negq	%rax	# D.14512
	leaq	(%r12,%rax), %rbx	#, s
	.loc 1 552 0
	cmpq	-72(%rbp), %rbx	# big, s
	jb	.L133	#,
	.loc 1 552 0 is_stmt 0 discriminator 1
	leaq	-1(%r12), %rax	#, D.14511
	movzbl	(%rax), %eax	# *_108, D.14509
	cmpb	$10, %al	#, D.14509
	jne	.L133	#,
	movzbl	(%rbx), %edx	# *s_107, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L133	#,
	.loc 1 554 0 is_stmt 1
	leaq	-2(%r14), %rdx	#, D.14508
	leaq	1(%r13), %rcx	#, D.14513
	leaq	1(%rbx), %rax	#, D.14513
	movq	%rcx, %rsi	# D.14513,
	movq	%rax, %rdi	# D.14513,
	call	memcmp	#
	testl	%eax, %eax	# D.14510
	jne	.L133	#,
	.loc 1 556 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L133:
	.loc 1 558 0
	leaq	1(%rbx), %rax	#, D.14511
	movzbl	(%rax), %edx	# *_117, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L134	#,
	.loc 1 559 0
	leaq	-2(%r14), %rdx	#, D.14508
	leaq	1(%r13), %rcx	#, D.14513
	leaq	2(%rbx), %rax	#, D.14513
	movq	%rcx, %rsi	# D.14513,
	movq	%rax, %rdi	# D.14513,
	call	memcmp	#
	testl	%eax, %eax	# D.14510
	jne	.L134	#,
	.loc 1 561 0
	leaq	1(%rbx), %rax	#, D.14504
	jmp	.L149	#
.L134:
	.loc 1 563 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L132:
	.loc 1 565 0
	movq	-80(%rbp), %rax	# littlestr, tmp196
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	movzbl	%al, %eax	# D.14505, D.14505
	cmpl	$8, %eax	#, D.14505
	jne	.L135	#,
	.loc 1 565 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# littlestr, tmp197
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	testl	%eax, %eax	# D.14514
	js	.L136	#,
.L135:
.LBB5:
	.loc 1 566 0 is_stmt 1
	leaq	0(%r13,%r14), %rdx	#, D.14515
	movq	-72(%rbp), %rax	# big, tmp198
	movq	%rdx, %rcx	# D.14515,
	movq	%r13, %rdx	# little,
	movq	%r12, %rsi	# bigend,
	movq	%rax, %rdi	# tmp198,
	call	Perl_ninstr	#
	movq	%rax, -56(%rbp)	# tmp199, b
	.loc 1 569 0
	cmpq	$0, -56(%rbp)	#, b
	jne	.L137	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# littlestr, tmp200
	movl	12(%rax), %eax	# littlestr_13(D)->sv_flags, D.14505
	andl	$1073741824, %eax	#, D.14505
	testl	%eax, %eax	# D.14505
	je	.L137	#,
	.loc 1 571 0 is_stmt 1
	movl	$1, %eax	#, tmp201
	subq	%r14, %rax	# littlelen, D.14512
	leaq	(%r12,%rax), %rbx	#, s
	.loc 1 572 0
	movzbl	(%rbx), %edx	# *s_176, D.14509
	movzbl	0(%r13), %eax	# *little_21, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L138	#,
	.loc 1 573 0
	leaq	-2(%r14), %rdx	#, D.14508
	leaq	1(%r13), %rcx	#, D.14513
	leaq	1(%rbx), %rax	#, D.14513
	movq	%rcx, %rsi	# D.14513,
	movq	%rax, %rdi	# D.14513,
	call	memcmp	#
	testl	%eax, %eax	# D.14510
	jne	.L138	#,
	.loc 1 575 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L138:
	.loc 1 577 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L137:
	.loc 1 579 0
	movq	-56(%rbp), %rax	# b, D.14504
	jmp	.L149	#
.L136:
.LBE5:
.LBB6:
	.loc 1 583 0
	leaq	2(%r14), %rax	#, D.14512
	addq	%r13, %rax	# little, table
	movq	%rax, %rsi	# table, table
	.loc 1 586 0
	movq	%r12, %rdx	# bigend, bigend.63
	movq	-72(%rbp), %rax	# big, big.64
	subq	%rax, %rdx	# big.64, D.14507
	movq	%rdx, %rax	# D.14507, D.14507
	cmpq	%r14, %rax	# littlelen, D.14508
	jae	.L139	#,
	.loc 1 587 0
	movl	$0, %eax	#, D.14504
	jmp	.L149	#
.L139:
	.loc 1 588 0
	subq	$1, %r14	#, littlelen
	.loc 1 590 0
	movq	-72(%rbp), %rax	# big, tmp202
	leaq	(%r14,%rax), %rbx	#, s
	.loc 1 591 0
	addq	%r14, %r13	# littlelen, little
	.loc 1 592 0
	movq	%r13, %rdi	# little, oldlittle
	.loc 1 593 0
	cmpq	%r12, %rbx	# bigend, s
	jae	.L140	#,
.L141:
.LBB7:
	.loc 1 598 0
	movzbl	(%rbx), %eax	# *s_5, D.14509
	movzbl	%al, %eax	# D.14509, D.14512
	addq	%rsi, %rax	# table, D.14511
	movzbl	(%rax), %eax	# *_143, D.14509
	movzbl	%al, %r15d	# D.14509, tmp
	testl	%r15d, %r15d	# tmp
	je	.L142	#,
	.loc 1 599 0
	movslq	%r15d, %rax	# tmp, D.14512
	addq	%rax, %rbx	# D.14512, s
	cmpq	%r12, %rbx	# bigend, s
	jae	.L143	#,
	.loc 1 600 0
	jmp	.L141	#
.L143:
	.loc 1 601 0
	jmp	.L140	#
.L142:
.LBB8:
	.loc 1 604 0
	movq	%rbx, %rcx	# s, olds
	.loc 1 606 0
	movl	%r14d, %r15d	# littlelen, tmp
	.loc 1 608 0
	jmp	.L144	#
.L147:
	.loc 1 609 0
	subq	$1, %rbx	#, s
	movzbl	(%rbx), %edx	# *s_152, D.14509
	subq	$1, %r13	#, little
	movzbl	0(%r13), %eax	# *little_154, D.14509
	cmpb	%al, %dl	# D.14509, D.14509
	jne	.L145	#,
	.loc 1 610 0
	jmp	.L144	#
.L145:
	.loc 1 611 0
	movq	%rcx, %rbx	# olds, s
	addq	$1, %rbx	#, s
	.loc 1 612 0
	movq	%rdi, %r13	# oldlittle, little
	.loc 1 613 0
	cmpq	%r12, %rbx	# bigend, s
	jae	.L146	#,
	.loc 1 614 0
	jmp	.L141	#
.L146:
	.loc 1 615 0
	jmp	.L140	#
.L144:
	.loc 1 608 0 discriminator 1
	movl	%r15d, %eax	# tmp, tmp.65
	leal	-1(%rax), %r15d	#, tmp
	testl	%eax, %eax	# tmp.65
	jne	.L147	#,
	.loc 1 617 0
	movq	%rbx, %rax	# s, D.14504
	jmp	.L149	#
.L140:
.LBE8:
.LBE7:
	.loc 1 621 0
	cmpq	%r12, %rbx	# bigend, s
	jne	.L148	#,
	.loc 1 621 0 is_stmt 0 discriminator 1
	movq	%rsi, %rax	# table, D.14511
	subq	$1, %rax	#, D.14511
	movzbl	(%rax), %eax	# *_159, D.14509
	movzbl	%al, %eax	# D.14509, D.14510
	andl	$15, %eax	#, D.14510
	testl	%eax, %eax	# D.14510
	je	.L148	#,
	.loc 1 622 0 is_stmt 1
	movq	%r14, %rax	# littlelen, D.14512
	negq	%rax	# D.14512
	movq	%rdi, %rcx	# oldlittle, D.14511
	addq	%rax, %rcx	# D.14512, D.14511
	movq	%r14, %rax	# littlelen, D.14512
	negq	%rax	# D.14512
	addq	%r12, %rax	# bigend, D.14511
	movq	%r14, %rdx	# littlelen,
	movq	%rcx, %rsi	# D.14511,
	movq	%rax, %rdi	# D.14511,
	call	memcmp	#
	testl	%eax, %eax	# D.14510
	jne	.L148	#,
	.loc 1 624 0
	movq	%r14, %rax	# littlelen, D.14512
	negq	%rax	# D.14512
	addq	%r12, %rax	# bigend, D.14504
	jmp	.L149	#
.L148:
	.loc 1 625 0
	movl	$0, %eax	#, D.14504
.L149:
.LBE6:
	.loc 1 627 0
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
.LFE15:
	.size	Perl_fbm_instr, .-Perl_fbm_instr
	.globl	Perl_screaminstr
	.type	Perl_screaminstr, @function
Perl_screaminstr:
.LFB16:
	.loc 1 646 0
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
	subq	$72, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)	# bigstr, bigstr
	movq	%rsi, -80(%rbp)	# littlestr, littlestr
	movl	%edx, -84(%rbp)	# start_shift, start_shift
	movl	%ecx, -88(%rbp)	# end_shift, end_shift
	movq	%r8, -96(%rbp)	# old_posp, old_posp
	movl	%r9d, -100(%rbp)	# last, last
	.loc 1 655 0
	movl	$0, -52(%rbp)	#, found
	.loc 1 657 0
	movq	-96(%rbp), %rax	# old_posp, tmp160
	movl	(%rax), %eax	# *old_posp_16(D), D.14517
	cmpl	$-1, %eax	#, D.14517
	jne	.L151	#,
	.loc 1 658 0
	movq	PL_screamfirst(%rip), %rdx	# PL_screamfirst, PL_screamfirst.67
	movq	-80(%rbp), %rax	# littlestr, tmp161
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movzbl	62(%rax), %eax	# MEM[(struct XPVBM *)_20].xbm_rare, D.14519
	movzbl	%al, %eax	# D.14519, D.14520
	salq	$2, %rax	#, D.14520
	addq	%rdx, %rax	# PL_screamfirst.67, D.14521
	movl	(%rax), %ebx	# *_24, pos
	.loc 1 657 0
	movl	%ebx, %eax	# pos, tmp162
	shrl	$31, %eax	#, tmp162
	jmp	.L152	#
.L151:
	.loc 1 659 0 discriminator 1
	movq	-96(%rbp), %rax	# old_posp, tmp163
	movl	(%rax), %ebx	# *old_posp_16(D), pos
	movq	PL_screamnext(%rip), %rax	# PL_screamnext, PL_screamnext.68
	movslq	%ebx, %rdx	# pos, D.14520
	salq	$2, %rdx	#, D.14520
	addq	%rdx, %rax	# D.14520, D.14521
	movl	(%rax), %eax	# *_31, D.14517
	addl	%eax, %ebx	# D.14517, pos
	.loc 1 657 0 discriminator 1
	testl	%ebx, %ebx	# pos
	sete	%al	#, iftmp.66
.L152:
	.loc 1 657 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.66
	je	.L153	#,
.L154:
	.loc 1 661 0 is_stmt 1
	movq	-80(%rbp), %rax	# littlestr, tmp164
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movzbl	62(%rax), %eax	# MEM[(struct XPVBM *)_105].xbm_rare, D.14519
	cmpb	$10, %al	#, D.14519
	jne	.L155	#,
	.loc 1 662 0
	movq	-80(%rbp), %rax	# littlestr, tmp165
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movzwl	60(%rax), %eax	# MEM[(struct XPVBM *)_107].xbm_previous, D.14522
	movzwl	%ax, %edx	# D.14522, D.14520
	movq	-80(%rbp), %rax	# littlestr, tmp166
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_110].xpv_cur, D.14520
	subq	$1, %rax	#, D.14520
	cmpq	%rax, %rdx	# D.14520, D.14520
	jne	.L155	#,
	.loc 1 663 0
	movq	-80(%rbp), %rax	# littlestr, tmp167
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	(%rax), %r13	# MEM[(struct XPV *)_113].xpv_pv, little
	.loc 1 664 0
	movq	-80(%rbp), %rax	# littlestr, tmp168
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_115].xpv_cur, D.14520
	addq	%r13, %rax	# little, littleend
	movq	%rax, %rdi	# littleend, littleend
	.loc 1 665 0
	movq	%r13, %rax	# little, little.69
	leaq	1(%rax), %r13	#, little
	movzbl	(%rax), %eax	# *little.69_118, D.14519
	movzbl	%al, %eax	# D.14519, first
	movl	%eax, %r10d	# first, first
	.loc 1 666 0
	jmp	.L156	#
.L155:
	.loc 1 668 0
	movl	$0, %eax	#, D.14516
	jmp	.L157	#
.L153:
	.loc 1 671 0
	movq	-80(%rbp), %rax	# littlestr, tmp169
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	(%rax), %r13	# MEM[(struct XPV *)_35].xpv_pv, little
	.loc 1 672 0
	movq	-80(%rbp), %rax	# littlestr, tmp170
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, D.14520
	addq	%r13, %rax	# little, littleend
	movq	%rax, %rdi	# littleend, littleend
	.loc 1 673 0
	movq	%r13, %rax	# little, little.70
	leaq	1(%rax), %r13	#, little
	movzbl	(%rax), %eax	# *little.70_40, D.14519
	movzbl	%al, %eax	# D.14519, first
	movl	%eax, %r10d	# first, first
	.loc 1 675 0
	movq	-80(%rbp), %rax	# littlestr, tmp171
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movzwl	60(%rax), %eax	# MEM[(struct XPVBM *)_44].xbm_previous, D.14522
	movzwl	%ax, %r15d	# D.14522, previous
	.loc 1 676 0
	movq	-72(%rbp), %rax	# bigstr, tmp172
	movq	(%rax), %rax	# bigstr_47(D)->sv_any, D.14518
	movq	(%rax), %r12	# MEM[(struct XPV *)_48].xpv_pv, big
	.loc 1 678 0
	movq	-72(%rbp), %rax	# bigstr, tmp173
	movq	(%rax), %rax	# bigstr_47(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_50].xpv_cur, D.14520
	movl	%eax, %edx	# D.14520, D.14523
	movl	-88(%rbp), %eax	# end_shift, end_shift.71
	movl	%edx, %ecx	# D.14523, D.14523
	subl	%eax, %ecx	# end_shift.71, D.14523
	movl	%r15d, %edx	# previous, previous.72
	movq	-80(%rbp), %rax	# littlestr, tmp174
	movq	(%rax), %rax	# littlestr_19(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_57].xpv_cur, D.14520
	subl	%eax, %edx	# D.14523, D.14523
	movl	%edx, %eax	# D.14523, D.14523
	addl	%ecx, %eax	# D.14523, D.14523
	addl	$1, %eax	#, D.14523
	movl	%eax, %r14d	# D.14523, stop_pos
	.loc 1 679 0
	movl	-84(%rbp), %eax	# start_shift, tmp175
	addl	%r15d, %eax	# previous, D.14517
	cmpl	%r14d, %eax	# stop_pos, D.14517
	jle	.L158	#,
	.loc 1 688 0
	movl	$0, %eax	#, D.14516
	jmp	.L157	#
.L158:
	.loc 1 690 0
	jmp	.L159	#
.L160:
	.loc 1 691 0
	movq	PL_screamnext(%rip), %rax	# PL_screamnext, PL_screamnext.73
	movslq	%ebx, %rdx	# pos, D.14520
	salq	$2, %rdx	#, D.14520
	addq	%rdx, %rax	# D.14520, D.14521
	movl	(%rax), %eax	# *_71, D.14517
	addl	%eax, %ebx	# D.14517, pos
	testl	%ebx, %ebx	# pos
	jne	.L159	#,
	.loc 1 692 0
	jmp	.L154	#
.L159:
	.loc 1 690 0 discriminator 1
	movl	-84(%rbp), %eax	# start_shift, tmp176
	addl	%r15d, %eax	# previous, D.14517
	cmpl	%ebx, %eax	# pos, D.14517
	jg	.L160	#,
	.loc 1 694 0
	movslq	%r15d, %rax	# previous, D.14524
	negq	%rax	# D.14524
	addq	%rax, %r12	# D.14524, big
.L169:
	.loc 1 696 0
	cmpl	%r14d, %ebx	# stop_pos, pos
	jl	.L161	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	jmp	.L162	#
.L161:
	.loc 1 697 0 is_stmt 1
	movslq	%ebx, %rax	# pos, D.14524
	addq	%r12, %rax	# big, D.14525
	movzbl	(%rax), %eax	# *_78, D.14519
	movzbl	%al, %eax	# D.14519, D.14517
	cmpl	%r10d, %eax	# first, D.14517
	je	.L163	#,
	.loc 1 698 0
	jmp	.L164	#
.L163:
	.loc 1 699 0
	movslq	%ebx, %rax	# pos, D.14524
	addq	$1, %rax	#, D.14524
	addq	%r12, %rax	# big, x
	movq	%rax, %rsi	# x, x
	movq	%r13, %r15	# little, s
	jmp	.L165	#
.L167:
	.loc 1 700 0
	movq	%r15, %rax	# s, s.74
	leaq	1(%rax), %r15	#, s
	movzbl	(%rax), %edx	# *s.74_85, D.14519
	movq	%rsi, %rax	# x, x.75
	leaq	1(%rax), %rsi	#, x
	movzbl	(%rax), %eax	# *x.75_88, D.14519
	cmpb	%al, %dl	# D.14519, D.14519
	je	.L165	#,
	.loc 1 701 0
	subq	$1, %r15	#, s
	.loc 1 702 0
	jmp	.L166	#
.L165:
	.loc 1 699 0 discriminator 1
	cmpq	%rdi, %r15	# littleend, s
	jb	.L167	#,
.L166:
	.loc 1 705 0
	cmpq	%rdi, %r15	# littleend, s
	jne	.L164	#,
	.loc 1 706 0
	movq	-96(%rbp), %rax	# old_posp, tmp177
	movl	%ebx, (%rax)	# pos, *old_posp_16(D)
	.loc 1 707 0
	cmpl	$0, -100(%rbp)	#, last
	jne	.L168	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# pos, D.14524
	addq	%r12, %rax	# big, D.14516
	jmp	.L157	#
.L168:
	.loc 1 708 0 is_stmt 1
	movl	$1, -52(%rbp)	#, found
.L164:
	.loc 1 710 0
	movq	PL_screamnext(%rip), %rax	# PL_screamnext, PL_screamnext.76
	movslq	%ebx, %rdx	# pos, D.14520
	salq	$2, %rdx	#, D.14520
	addq	%rdx, %rax	# D.14520, D.14521
	movl	(%rax), %eax	# *_99, D.14517
	addl	%eax, %ebx	# D.14517, pos
	testl	%ebx, %ebx	# pos
	jne	.L169	#,
.L162:
	.loc 1 711 0
	cmpl	$0, -100(%rbp)	#, last
	je	.L156	#,
	.loc 1 711 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, found
	je	.L156	#,
	.loc 1 712 0 is_stmt 1
	movq	-96(%rbp), %rax	# old_posp, tmp178
	movl	(%rax), %eax	# *old_posp_16(D), D.14517
	cltq
	addq	%r12, %rax	# big, D.14516
	jmp	.L157	#
.L156:
	.loc 1 714 0
	movq	-80(%rbp), %rax	# littlestr, tmp179
	movl	12(%rax), %eax	# littlestr_19(D)->sv_flags, D.14526
	andl	$1073741824, %eax	#, D.14526
	testl	%eax, %eax	# D.14526
	je	.L170	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, end_shift
	jle	.L171	#,
.L170:
	.loc 1 715 0 is_stmt 1
	movl	$0, %eax	#, D.14516
	jmp	.L157	#
.L171:
	.loc 1 717 0
	movq	-72(%rbp), %rax	# bigstr, tmp180
	movq	(%rax), %rax	# bigstr_47(D)->sv_any, D.14518
	movq	(%rax), %rdx	# MEM[(struct XPV *)_125].xpv_pv, D.14516
	movq	-72(%rbp), %rax	# bigstr, tmp181
	movq	(%rax), %rax	# bigstr_47(D)->sv_any, D.14518
	movq	8(%rax), %rax	# MEM[(struct XPV *)_127].xpv_cur, D.14520
	leaq	(%rdx,%rax), %r12	#, big
	.loc 1 718 0
	movq	%rdi, %rdx	# littleend, littleend.77
	movq	%r13, %rax	# little, little.78
	subq	%rax, %rdx	# little.78, D.14527
	movq	%rdx, %rax	# D.14527, D.14527
	movl	%eax, %r14d	# D.14527, stop_pos
	.loc 1 719 0
	testl	%r14d, %r14d	# stop_pos
	jne	.L172	#,
	.loc 1 720 0
	movq	%r12, %rax	# big, D.14516
	jmp	.L157	#
.L172:
	.loc 1 721 0
	movslq	%r14d, %rax	# stop_pos, D.14524
	negq	%rax	# D.14524
	addq	%rax, %r12	# D.14524, big
	.loc 1 722 0
	movzbl	(%r12), %eax	# *big_137, D.14519
	movzbl	%al, %eax	# D.14519, D.14517
	cmpl	%r10d, %eax	# first, D.14517
	jne	.L173	#,
	.loc 1 723 0
	cmpl	$1, %r14d	#, stop_pos
	je	.L174	#,
	.loc 1 724 0 discriminator 1
	leal	-1(%r14), %eax	#, D.14517
	movslq	%eax, %rdx	# D.14517, D.14520
	leaq	1(%r12), %rax	#, D.14528
	movq	%r13, %rsi	# little,
	movq	%rax, %rdi	# D.14528,
	call	memcmp	#
	.loc 1 723 0 discriminator 1
	testl	%eax, %eax	# D.14517
	jne	.L173	#,
.L174:
	.loc 1 725 0
	movq	%r12, %rax	# big, D.14516
	jmp	.L157	#
.L173:
	.loc 1 726 0
	movl	$0, %eax	#, D.14516
.L157:
	.loc 1 727 0
	addq	$72, %rsp	#,
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
	.size	Perl_screaminstr, .-Perl_screaminstr
	.globl	Perl_ibcmp
	.type	Perl_ibcmp, @function
Perl_ibcmp:
.LFB17:
	.loc 1 731 0
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
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 732 0
	movq	-24(%rbp), %rbx	# s1, a
	.loc 1 733 0
	movq	-32(%rbp), %r12	# s2, b
	.loc 1 734 0
	jmp	.L176	#
.L179:
	.loc 1 735 0
	movzbl	(%rbx), %ecx	# *a_2, D.14530
	movzbl	(%r12), %eax	# *b_3, D.14530
	cmpb	%al, %cl	# D.14530, D.14530
	je	.L177	#,
	.loc 1 735 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %ecx	# *a_2, D.14530
	movzbl	(%r12), %eax	# *b_3, D.14530
	movzbl	%al, %eax	# D.14530, D.14531
	cltq
	movzbl	PL_fold(%rax), %eax	# PL_fold, D.14530
	cmpb	%al, %cl	# D.14530, D.14530
	je	.L177	#,
	.loc 1 736 0 is_stmt 1
	movl	$1, %eax	#, D.14529
	jmp	.L178	#
.L177:
	.loc 1 737 0
	addq	$1, %rbx	#, a
	addq	$1, %r12	#, b
.L176:
	.loc 1 734 0 discriminator 1
	movl	%edx, %eax	# len, len.79
	leal	-1(%rax), %edx	#, len
	testl	%eax, %eax	# len.79
	jne	.L179	#,
	.loc 1 739 0
	movl	$0, %eax	#, D.14529
.L178:
	.loc 1 740 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_ibcmp, .-Perl_ibcmp
	.globl	Perl_ibcmp_locale
	.type	Perl_ibcmp_locale, @function
Perl_ibcmp_locale:
.LFB18:
	.loc 1 744 0
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
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 745 0
	movq	-24(%rbp), %rbx	# s1, a
	.loc 1 746 0
	movq	-32(%rbp), %r12	# s2, b
	.loc 1 747 0
	jmp	.L181	#
.L184:
	.loc 1 748 0
	movzbl	(%rbx), %ecx	# *a_2, D.14533
	movzbl	(%r12), %eax	# *b_3, D.14533
	cmpb	%al, %cl	# D.14533, D.14533
	je	.L182	#,
	.loc 1 748 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %ecx	# *a_2, D.14533
	movzbl	(%r12), %eax	# *b_3, D.14533
	movzbl	%al, %eax	# D.14533, D.14534
	cltq
	movzbl	PL_fold_locale(%rax), %eax	# PL_fold_locale, D.14533
	cmpb	%al, %cl	# D.14533, D.14533
	je	.L182	#,
	.loc 1 749 0 is_stmt 1
	movl	$1, %eax	#, D.14532
	jmp	.L183	#
.L182:
	.loc 1 750 0
	addq	$1, %rbx	#, a
	addq	$1, %r12	#, b
.L181:
	.loc 1 747 0 discriminator 1
	movl	%edx, %eax	# len, len.80
	leal	-1(%rax), %edx	#, len
	testl	%eax, %eax	# len.80
	jne	.L184	#,
	.loc 1 752 0
	movl	$0, %eax	#, D.14532
.L183:
	.loc 1 753 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_ibcmp_locale, .-Perl_ibcmp_locale
	.globl	Perl_savepv
	.type	Perl_savepv, @function
Perl_savepv:
.LFB19:
	.loc 1 772 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# pv, pv
	.loc 1 777 0
	cmpq	$0, -24(%rbp)	#, pv
	jne	.L186	#,
	.loc 1 778 0
	movl	$0, %eax	#, D.14535
	jmp	.L187	#
.L186:
	.loc 1 784 0
	movq	-24(%rbp), %rax	# pv, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	addq	$1, %rax	#, D.14536
	movq	%rax, %rdi	# D.14536,
	call	Perl_safesysmalloc	#
	movq	%rax, %rbx	#, newaddr
	.loc 1 786 0
	movq	-24(%rbp), %rax	# pv, tmp65
	movq	%rax, %rsi	# tmp65,
	movq	%rbx, %rdi	# newaddr,
	call	strcpy	#
.L187:
	.loc 1 787 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_savepv, .-Perl_savepv
	.globl	Perl_savepvn
	.type	Perl_savepvn, @function
Perl_savepvn:
.LFB20:
	.loc 1 804 0
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
	movq	%rdi, -24(%rbp)	# pv, pv
	movl	%esi, %ebx	# len, len
	.loc 1 807 0
	leal	1(%rbx), %eax	#, D.14538
	cltq
	movq	%rax, %rdi	# D.14539,
	call	Perl_safesysmalloc	#
	movq	%rax, %r12	#, newaddr
	.loc 1 809 0
	cmpq	$0, -24(%rbp)	#, pv
	je	.L189	#,
	.loc 1 811 0
	movslq	%ebx, %rax	# len, D.14540
	addq	%r12, %rax	# newaddr, D.14537
	movb	$0, (%rax)	#, *_8
	.loc 1 812 0
	movslq	%ebx, %rdx	# len, D.14539
	movq	-24(%rbp), %rax	# pv, tmp70
	movq	%rax, %rsi	# tmp70,
	movq	%r12, %rdi	# newaddr,
	call	memcpy	#
	jmp	.L190	#
.L189:
	.loc 1 815 0
	leal	1(%rbx), %eax	#, D.14538
	cltq
	movq	%rax, %rdx	# D.14539,
	movl	$0, %esi	#,
	movq	%r12, %rdi	# newaddr,
	call	memset	#
.L190:
	.loc 1 817 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_savepvn, .-Perl_savepvn
	.globl	Perl_savesharedpv
	.type	Perl_savesharedpv, @function
Perl_savesharedpv:
.LFB21:
	.loc 1 829 0
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
	movq	%rdi, -24(%rbp)	# pv, pv
	.loc 1 831 0
	cmpq	$0, -24(%rbp)	#, pv
	jne	.L192	#,
	.loc 1 832 0
	movl	$0, %eax	#, D.14541
	jmp	.L193	#
.L192:
	.loc 1 834 0
	movq	-24(%rbp), %rax	# pv, tmp86
	movq	%rax, %rdi	# tmp86,
	call	strlen	#
	addq	$1, %rax	#, D.14542
	movq	%rax, %rdi	# D.14542,
	call	malloc	#
	movq	%rax, %rbx	# tmp87, newaddr
	.loc 1 835 0
	testq	%rbx, %rbx	# newaddr
	jne	.L194	#,
	.loc 1 836 0
	movl	$PL_no_mem, %edi	#,
	call	strlen	#
	movq	%rax, %r12	#, D.14542
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.82
	testq	%rax, %rax	# PL_stderrgv.82
	je	.L195	#,
	.loc 1 836 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.83
	movl	12(%rax), %eax	# PL_stderrgv.83_10->sv_flags, D.14543
	movzbl	%al, %eax	# D.14543, D.14543
	cmpl	$13, %eax	#, D.14543
	jne	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.84
	movq	(%rax), %rax	# PL_stderrgv.84_13->sv_any, D.14544
	movq	56(%rax), %rax	# _14->xgv_gp, D.14545
	movq	16(%rax), %rax	# _15->gp_io, D.14546
	testq	%rax, %rax	# D.14546
	je	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.85
	movq	(%rax), %rax	# PL_stderrgv.85_17->sv_any, D.14544
	movq	56(%rax), %rax	# _18->xgv_gp, D.14545
	movq	16(%rax), %rax	# _19->gp_io, D.14546
	movq	(%rax), %rax	# _20->sv_any, D.14547
	movq	64(%rax), %rax	# _21->xio_ofp, D.14548
	testq	%rax, %rax	# D.14548
	je	.L195	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.86
	movq	(%rax), %rax	# PL_stderrgv.86_23->sv_any, D.14544
	movq	56(%rax), %rax	# _24->xgv_gp, D.14545
	movq	16(%rax), %rax	# _25->gp_io, D.14546
	movq	(%rax), %rax	# _26->sv_any, D.14547
	movq	64(%rax), %rax	# _27->xio_ofp, iftmp.81
	jmp	.L196	#
.L195:
	.loc 1 836 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L196:
	.loc 1 836 0 discriminator 3
	movq	%rax, %rdi	# iftmp.81,
	call	Perl_PerlIO_fileno	#
	movq	%r12, %rdx	# D.14542,
	movl	$PL_no_mem, %esi	#,
	movl	%eax, %edi	# D.14549,
	call	write	#
	.loc 1 838 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L194:
	.loc 1 840 0
	movq	-24(%rbp), %rax	# pv, tmp88
	movq	%rax, %rsi	# tmp88,
	movq	%rbx, %rdi	# newaddr,
	call	strcpy	#
.L193:
	.loc 1 841 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_savesharedpv, .-Perl_savesharedpv
	.globl	Perl_savesvpv
	.type	Perl_savesvpv, @function
Perl_savesvpv:
.LFB22:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# sv, sv
	.loc 1 856 0
	movq	-40(%rbp), %rax	# sv, tmp72
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.14550
	andl	$262144, %eax	#, D.14550
	testl	%eax, %eax	# D.14550
	je	.L198	#,
	.loc 1 856 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp73
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.14551
	movq	8(%rax), %rax	# MEM[(struct XPV *)_5].xpv_cur, len.88
	movq	%rax, -32(%rbp)	# len.88, len
	movq	-40(%rbp), %rax	# sv, tmp74
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.14551
	movq	(%rax), %rax	# MEM[(struct XPV *)_7].xpv_pv, iftmp.87
	jmp	.L199	#
.L198:
	.loc 1 856 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp75
	movq	-40(%rbp), %rax	# sv, tmp76
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_2pv_flags	#
.L199:
	.loc 1 856 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.87, pv
	.loc 1 859 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# len, len.89
	addq	$1, %rax	#, len.90
	movq	%rax, -32(%rbp)	# len.90, len
	.loc 1 860 0 discriminator 3
	movq	-32(%rbp), %rax	# len, len.91
	movq	%rax, %rdi	# len.91,
	call	Perl_safesysmalloc	#
	movq	%rax, %rbx	#, newaddr
	.loc 1 861 0 discriminator 3
	movq	-32(%rbp), %rdx	# len, len.92
	movq	-24(%rbp), %rax	# pv, tmp77
	movq	%rax, %rsi	# tmp77,
	movq	%rbx, %rdi	# newaddr,
	call	memcpy	#
	.loc 1 862 0 discriminator 3
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_savesvpv, .-Perl_savesvpv
	.section	.rodata
.LC1:
	.string	""
	.text
	.type	S_mess_alloc, @function
S_mess_alloc:
.LFB23:
	.loc 1 869 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 873 0
	movzbl	PL_dirty(%rip), %eax	# PL_dirty, PL_dirty.93
	testb	%al, %al	# PL_dirty.93
	jne	.L202	#,
	.loc 1 874 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.14553,
	call	Perl_sv_2mortal	#
	jmp	.L203	#
.L202:
	.loc 1 876 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, PL_mess_sv.94
	testq	%rax, %rax	# PL_mess_sv.94
	je	.L204	#,
	.loc 1 877 0
	movq	PL_mess_sv(%rip), %rax	# PL_mess_sv, D.14553
	jmp	.L203	#
.L204:
	.loc 1 880 0
	movl	$16, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -16(%rbp)	# tmp64, sv
	.loc 1 881 0
	movl	$56, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp65, any
	movq	-8(%rbp), %rax	# any, tmp66
	movl	$56, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	memset	#
	.loc 1 882 0
	movq	-16(%rbp), %rax	# sv, tmp67
	movl	$7, 12(%rax)	#, sv_7->sv_flags
	.loc 1 883 0
	movq	-16(%rbp), %rax	# sv, tmp68
	movq	-8(%rbp), %rdx	# any, tmp69
	movq	%rdx, (%rax)	# tmp69, sv_7->sv_any
	.loc 1 884 0
	movq	-16(%rbp), %rax	# sv, tmp70
	movl	$1073741824, 8(%rax)	#, sv_7->sv_refcnt
	.loc 1 885 0
	movq	-16(%rbp), %rax	# sv, tmp71
	movq	%rax, PL_mess_sv(%rip)	# tmp71, PL_mess_sv
	.loc 1 886 0
	movq	-16(%rbp), %rax	# sv, D.14553
.L203:
	.loc 1 887 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	S_mess_alloc, .-S_mess_alloc
	.globl	Perl_form
	.type	Perl_form, @function
Perl_form:
.LFB24:
	.loc 1 925 0
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
	je	.L206	#,
	.loc 1 925 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L206:
	movq	%rdi, -216(%rbp)	# pat, pat
	.loc 1 928 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 929 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rax	# pat, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	Perl_vform	#
	movq	%rax, -208(%rbp)	# tmp64, retval
	.loc 1 931 0
	movq	-208(%rbp), %rax	# retval, D.14555
	.loc 1 932 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_form, .-Perl_form
	.globl	Perl_vform
	.type	Perl_vform, @function
Perl_vform:
.LFB25:
	.loc 1 936 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	movq	%rsi, -32(%rbp)	# args, args
	.loc 1 937 0
	call	S_mess_alloc	#
	movq	%rax, -8(%rbp)	# tmp63, sv
	.loc 1 938 0
	movq	-24(%rbp), %rax	# pat, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movq	%rax, %rdx	#, D.14558
	movq	-32(%rbp), %rcx	# args, tmp65
	movq	-24(%rbp), %rsi	# pat, tmp66
	movq	-8(%rbp), %rax	# sv, tmp67
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp67,
	call	Perl_sv_vsetpvfn	#
	.loc 1 939 0
	movq	-8(%rbp), %rax	# sv, tmp68
	movq	(%rax), %rax	# sv_1->sv_any, D.14559
	movq	(%rax), %rax	# MEM[(struct XPV *)_5].xpv_pv, D.14560
	.loc 1 940 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_vform, .-Perl_vform
	.globl	Perl_mess
	.type	Perl_mess, @function
Perl_mess:
.LFB26:
	.loc 1 958 0
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
	je	.L211	#,
	.loc 1 958 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L211:
	movq	%rdi, -216(%rbp)	# pat, pat
	.loc 1 961 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 962 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rax	# pat, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	Perl_vmess	#
	movq	%rax, -208(%rbp)	# tmp64, retval
	.loc 1 964 0
	movq	-208(%rbp), %rax	# retval, D.14561
	.loc 1 965 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_mess, .-Perl_mess
	.type	S_closest_cop, @function
S_closest_cop:
.LFB27:
	.loc 1 969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cop, cop
	movq	%rsi, -32(%rbp)	# o, o
	.loc 1 972 0
	cmpq	$0, -32(%rbp)	#, o
	je	.L214	#,
	.loc 1 972 0 is_stmt 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.95
	cmpq	%rax, -32(%rbp)	# PL_op.95, o
	jne	.L215	#,
.L214:
	.loc 1 972 0 discriminator 1
	movq	-24(%rbp), %rax	# cop, D.14564
	jmp	.L216	#
.L215:
	.loc 1 974 0 is_stmt 1
	movq	-32(%rbp), %rax	# o, tmp67
	movzbl	36(%rax), %eax	# o_5(D)->op_flags, D.14565
	movzbl	%al, %eax	# D.14565, D.14566
	andl	$4, %eax	#, D.14566
	testl	%eax, %eax	# D.14566
	je	.L217	#,
.LBB9:
	.loc 1 976 0
	movq	-32(%rbp), %rax	# o, tmp68
	movq	40(%rax), %rax	# MEM[(struct UNOP *)o_5(D)].op_first, tmp69
	movq	%rax, -16(%rbp)	# tmp69, kid
	jmp	.L218	#
.L221:
.LBB10:
	.loc 1 983 0
	movq	-16(%rbp), %rax	# kid, tmp70
	movzwl	32(%rax), %eax	# kid_3->op_type, D.14567
	testw	%ax, %ax	# D.14567
	jne	.L219	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# kid, tmp71
	movq	24(%rax), %rax	# kid_3->op_targ, D.14568
	cmpq	$174, %rax	#, D.14568
	jne	.L219	#,
	.loc 1 984 0 is_stmt 1
	movq	-16(%rbp), %rax	# kid, tmp72
	movq	%rax, -24(%rbp)	# tmp72, cop
.L219:
	.loc 1 988 0
	movq	-16(%rbp), %rdx	# kid, tmp73
	movq	-24(%rbp), %rax	# cop, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	S_closest_cop	#
	movq	%rax, -8(%rbp)	# tmp75, new_cop
	.loc 1 989 0
	cmpq	$0, -8(%rbp)	#, new_cop
	je	.L220	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# new_cop, D.14564
	jmp	.L216	#
.L220:
.LBE10:
	.loc 1 976 0 is_stmt 1
	movq	-16(%rbp), %rax	# kid, tmp76
	movq	8(%rax), %rax	# kid_3->op_sibling, tmp77
	movq	%rax, -16(%rbp)	# tmp77, kid
.L218:
	.loc 1 976 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, kid
	jne	.L221	#,
.L217:
.LBE9:
	.loc 1 995 0 is_stmt 1
	movl	$0, %eax	#, D.14564
.L216:
	.loc 1 996 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	S_closest_cop, .-S_closest_cop
	.section	.rodata
.LC2:
	.string	" at %s line %ld"
.LC3:
	.string	"line"
.LC4:
	.string	"chunk"
.LC5:
	.string	", <%s> %s %ld"
.LC6:
	.string	".\n"
	.text
	.globl	Perl_vmess
	.type	Perl_vmess, @function
Perl_vmess:
.LFB28:
	.loc 1 1000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pat, pat
	movq	%rsi, -48(%rbp)	# args, args
	.loc 1 1001 0
	call	S_mess_alloc	#
	movq	%rax, -8(%rbp)	# tmp137, sv
	.loc 1 1005 0
	movq	-40(%rbp), %rax	# pat, tmp138
	movq	%rax, %rdi	# tmp138,
	call	strlen	#
	movq	%rax, %rdx	#, D.14569
	movq	-48(%rbp), %rcx	# args, tmp139
	movq	-40(%rbp), %rsi	# pat, tmp140
	movq	-8(%rbp), %rax	# sv, tmp141
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp141,
	call	Perl_sv_vsetpvfn	#
	.loc 1 1006 0
	movq	-8(%rbp), %rax	# sv, tmp142
	movq	(%rax), %rax	# sv_8->sv_any, D.14570
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, D.14569
	testq	%rax, %rax	# D.14569
	je	.L223	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp143
	movq	(%rax), %rax	# sv_8->sv_any, D.14570
	movq	(%rax), %rdx	# MEM[(struct XPV *)_14].xpv_pv, D.14571
	movq	-8(%rbp), %rax	# sv, tmp144
	movq	(%rax), %rax	# sv_8->sv_any, D.14570
	movq	8(%rax), %rax	# MEM[(struct XPV *)_16].xpv_cur, D.14569
	subq	$1, %rax	#, D.14572
	addq	%rdx, %rax	# D.14571, D.14571
	movzbl	(%rax), %eax	# *_19, D.14573
	cmpb	$10, %al	#, D.14573
	je	.L224	#,
.L223:
	.loc 1 1015 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.96
	movq	8(%rax), %rdx	# PL_curcop.96_21->op_sibling, D.14574
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.97
	movq	%rdx, %rsi	# D.14574,
	movq	%rax, %rdi	# PL_curcop.97,
	call	S_closest_cop	#
	movq	%rax, -16(%rbp)	# tmp145, cop
	.loc 1 1016 0
	cmpq	$0, -16(%rbp)	#, cop
	jne	.L225	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, tmp146
	movq	%rax, -16(%rbp)	# tmp146, cop
.L225:
	.loc 1 1018 0 is_stmt 1
	movq	-16(%rbp), %rax	# cop, tmp147
	movl	72(%rax), %eax	# cop_1->cop_line, D.14575
	testl	%eax, %eax	# D.14575
	je	.L226	#,
	.loc 1 1020 0
	movq	-16(%rbp), %rax	# cop, tmp148
	movl	72(%rax), %eax	# cop_1->cop_line, D.14575
	.loc 1 1019 0
	movl	%eax, %edx	# D.14575, D.14576
	.loc 1 1020 0
	movq	-16(%rbp), %rax	# cop, tmp149
	movq	56(%rax), %rax	# cop_1->cop_filegv, D.14577
	.loc 1 1019 0
	testq	%rax, %rax	# D.14577
	je	.L227	#,
	.loc 1 1020 0
	movq	-16(%rbp), %rax	# cop, tmp150
	movq	56(%rax), %rax	# cop_1->cop_filegv, D.14577
	movq	(%rax), %rax	# _30->sv_any, D.14578
	movq	56(%rax), %rax	# _31->xgv_gp, D.14579
	movq	(%rax), %rax	# _32->gp_sv, D.14580
	testq	%rax, %rax	# D.14580
	je	.L227	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cop, tmp151
	movq	56(%rax), %rax	# cop_1->cop_filegv, D.14577
	testq	%rax, %rax	# D.14577
	je	.L228	#,
	movq	-16(%rbp), %rax	# cop, tmp152
	movq	56(%rax), %rax	# cop_1->cop_filegv, D.14577
	movq	(%rax), %rax	# _35->sv_any, D.14578
	movq	56(%rax), %rax	# _36->xgv_gp, D.14579
	movq	(%rax), %rax	# _37->gp_sv, iftmp.99
	jmp	.L229	#
.L228:
	.loc 1 1020 0 discriminator 2
	movl	$0, %eax	#, iftmp.99
.L229:
	.loc 1 1020 0 discriminator 3
	movq	(%rax), %rax	# iftmp.99_3->sv_any, D.14570
	.loc 1 1019 0 is_stmt 1 discriminator 3
	movq	(%rax), %rax	# MEM[(struct XPV *)_40].xpv_pv, iftmp.98
	jmp	.L230	#
.L227:
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.98
.L230:
	.loc 1 1019 0 discriminator 2
	movq	-8(%rbp), %rdi	# sv, tmp153
	movq	%rdx, %rcx	# D.14576,
	movq	%rax, %rdx	# iftmp.98,
	movl	$.LC2, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L226:
	.loc 1 1021 0 is_stmt 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.100
	testq	%rax, %rax	# PL_last_in_gv.100
	je	.L231	#,
	.loc 1 1021 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.101
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.101_44].sv_flags, D.14575
	movzbl	%al, %eax	# D.14575, D.14575
	cmpl	$13, %eax	#, D.14575
	jne	.L231	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.102
	movq	(%rax), %rax	# PL_last_in_gv.102_47->sv_any, D.14578
	movq	56(%rax), %rax	# _48->xgv_gp, D.14579
	testq	%rax, %rax	# D.14579
	je	.L231	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.103
	movq	(%rax), %rax	# PL_last_in_gv.103_50->sv_any, D.14578
	movq	56(%rax), %rax	# _51->xgv_gp, D.14579
	movq	16(%rax), %rax	# _52->gp_io, D.14581
	testq	%rax, %rax	# D.14581
	je	.L231	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.104
	movq	(%rax), %rax	# PL_last_in_gv.104_54->sv_any, D.14578
	movq	56(%rax), %rax	# _55->xgv_gp, D.14579
	movq	16(%rax), %rax	# _56->gp_io, D.14581
	movq	(%rax), %rax	# _57->sv_any, D.14582
	movq	80(%rax), %rax	# _58->xio_lines, D.14576
	testq	%rax, %rax	# D.14576
	je	.L231	#,
.LBB11:
	.loc 1 1022 0 is_stmt 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.106
	movl	12(%rax), %eax	# PL_rs.106_60->sv_flags, D.14575
	andl	$118423552, %eax	#, D.14575
	.loc 1 1023 0
	testl	%eax, %eax	# D.14575
	je	.L232	#,
	.loc 1 1022 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.107
	movl	12(%rax), %eax	# PL_rs.107_63->sv_flags, D.14575
	andl	$262144, %eax	#, D.14575
	testl	%eax, %eax	# D.14575
	je	.L233	#,
	.loc 1 1022 0 is_stmt 0 discriminator 2
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.108
	movq	(%rax), %rax	# PL_rs.108_66->sv_any, D.14570
	movq	8(%rax), %rax	# MEM[(struct XPV *)_67].xpv_cur, D.14569
	testq	%rax, %rax	# D.14569
	je	.L232	#,
.L233:
	.loc 1 1023 0 is_stmt 1 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.109
	movq	(%rax), %rax	# PL_rs.109_69->sv_any, D.14570
	movq	8(%rax), %rax	# MEM[(struct XPV *)_70].xpv_cur, D.14569
	.loc 1 1022 0 discriminator 1
	cmpq	$1, %rax	#, D.14569
	jne	.L232	#,
	.loc 1 1023 0
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.110
	movq	(%rax), %rax	# PL_rs.110_72->sv_any, D.14570
	movq	(%rax), %rax	# MEM[(struct XPV *)_73].xpv_pv, D.14571
	movzbl	(%rax), %eax	# *_74, D.14573
	cmpb	$10, %al	#, D.14573
	jne	.L232	#,
	.loc 1 1023 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.105
	jmp	.L234	#
.L232:
	.loc 1 1023 0 discriminator 1
	movl	$0, %eax	#, iftmp.105
.L234:
	.loc 1 1022 0 is_stmt 1
	movb	%al, -17(%rbp)	# iftmp.105, line_mode
	.loc 1 1028 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.111
	movq	(%rax), %rax	# PL_last_in_gv.111_79->sv_any, D.14578
	movq	56(%rax), %rax	# _80->xgv_gp, D.14579
	movq	16(%rax), %rax	# _81->gp_io, D.14581
	movq	(%rax), %rax	# _82->sv_any, D.14582
	.loc 1 1024 0
	movq	80(%rax), %rcx	# _83->xio_lines, D.14576
	cmpb	$0, -17(%rbp)	#, line_mode
	je	.L235	#,
	.loc 1 1024 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edx	#, iftmp.112
	jmp	.L236	#
.L235:
	.loc 1 1024 0 discriminator 2
	movl	$.LC4, %edx	#, iftmp.112
.L236:
	.loc 1 1025 0 is_stmt 1 discriminator 3
	movq	PL_last_in_gv(%rip), %rsi	# PL_last_in_gv, PL_last_in_gv.114
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.115
	.loc 1 1024 0 discriminator 3
	cmpq	%rax, %rsi	# PL_argvgv.115, PL_last_in_gv.114
	je	.L237	#,
	.loc 1 1026 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.116
	movq	(%rax), %rax	# PL_last_in_gv.116_89->sv_any, D.14578
	.loc 1 1024 0
	movq	64(%rax), %rax	# _90->xgv_name, iftmp.113
	jmp	.L238	#
.L237:
	.loc 1 1024 0 is_stmt 0 discriminator 4
	movl	$.LC1, %eax	#, iftmp.113
.L238:
	.loc 1 1024 0 discriminator 5
	movq	-8(%rbp), %rdi	# sv, tmp154
	movq	%rcx, %r8	# D.14576,
	movq	%rdx, %rcx	# iftmp.112,
	movq	%rax, %rdx	# iftmp.113,
	movl	$.LC5, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L231:
.LBE11:
	.loc 1 1034 0 is_stmt 1
	movzbl	PL_dirty(%rip), %eax	# PL_dirty, PL_dirty.118
	testb	%al, %al	# PL_dirty.118
	je	.L239	#,
	.loc 1 1034 0 is_stmt 0 discriminator 1
	movl	$dgd.10944, %eax	#, iftmp.117
	jmp	.L240	#
.L239:
	.loc 1 1034 0 discriminator 2
	movl	$.LC6, %eax	#, iftmp.117
.L240:
	.loc 1 1034 0 discriminator 3
	movq	-8(%rbp), %rdx	# sv, tmp155
	movq	%rax, %rsi	# iftmp.117,
	movq	%rdx, %rdi	# tmp155,
	call	Perl_sv_catpv	#
.L224:
	.loc 1 1036 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, D.14580
	.loc 1 1037 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_vmess, .-Perl_vmess
	.section	.rodata
.LC7:
	.string	"PRINT"
.LC8:
	.string	"panic: POPSTACK\n"
	.text
	.globl	Perl_write_to_stderr
	.type	Perl_write_to_stderr, @function
Perl_write_to_stderr:
.LFB29:
	.loc 1 1041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# message, message
	movl	%esi, -76(%rbp)	# msglen, msglen
	.loc 1 1045 0
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.119
	testq	%rax, %rax	# PL_stderrgv.119
	je	.L243	#,
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.120
	movl	8(%rax), %eax	# PL_stderrgv.120_9->sv_refcnt, D.14588
	testl	%eax, %eax	# D.14588
	je	.L243	#,
	.loc 1 1046 0 is_stmt 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.122
	testq	%rax, %rax	# PL_stderrgv.122
	je	.L244	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.123
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_stderrgv.123_12].sv_flags, D.14588
	movzbl	%al, %eax	# D.14588, D.14588
	cmpl	$13, %eax	#, D.14588
	jne	.L244	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.124
	movq	(%rax), %rax	# PL_stderrgv.124_15->sv_any, D.14589
	movq	56(%rax), %rax	# _16->xgv_gp, D.14590
	testq	%rax, %rax	# D.14590
	je	.L244	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.125
	movq	(%rax), %rax	# PL_stderrgv.125_18->sv_any, D.14589
	movq	56(%rax), %rax	# _19->xgv_gp, D.14590
	movq	16(%rax), %rax	# _20->gp_io, iftmp.121
	jmp	.L245	#
.L244:
	.loc 1 1046 0 discriminator 2
	movl	$0, %eax	#, iftmp.121
.L245:
	.loc 1 1046 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.121, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L243	#,
	.loc 1 1047 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp203
	movl	12(%rax), %eax	# MEM[(struct SV *)io_23].sv_flags, D.14588
	andl	$32768, %eax	#, D.14588
	testl	%eax, %eax	# D.14588
	je	.L246	#,
	.loc 1 1047 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp204
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	Perl_mg_find	#
	jmp	.L247	#
.L246:
	.loc 1 1047 0 discriminator 2
	movl	$0, %eax	#, iftmp.126
.L247:
	.loc 1 1047 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.126, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L243	#,
.LBB12:
	.loc 1 1049 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1050 0
	call	Perl_push_scope	#
	.loc 1 1051 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.127
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.127, PL_tmps_floor
	.loc 1 1053 0
	call	Perl_save_re_context	#
	.loc 1 1054 0
	movl	$PL_stderrgv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1055 0
	movq	$0, PL_stderrgv(%rip)	#, PL_stderrgv
.LBB13:
	.loc 1 1057 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.128
	movq	40(%rax), %rax	# PL_curstackinfo.128_31->si_next, tmp205
	movq	%rax, -56(%rbp)	# tmp205, next
	cmpq	$0, -56(%rbp)	#, next
	jne	.L248	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -56(%rbp)	# tmp206, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.129
	movq	-56(%rbp), %rax	# next, tmp207
	movq	%rdx, 32(%rax)	# PL_curstackinfo.129, next_33->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.130
	movq	-56(%rbp), %rdx	# next, tmp208
	movq	%rdx, 40(%rax)	# tmp208, PL_curstackinfo.130_35->si_next
.L248:
	.loc 1 1057 0 discriminator 2
	movq	-56(%rbp), %rax	# next, tmp209
	movl	$2, 24(%rax)	#, next_2->si_type
	movq	-56(%rbp), %rax	# next, tmp210
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-56(%rbp), %rax	# next, tmp211
	movq	(%rax), %rax	# next_2->si_stack, D.14591
	movq	(%rax), %rax	# _36->sv_any, D.14592
	movq	$0, 8(%rax)	#, _37->xav_fill
.LBB14:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.131
	movq	(%rax), %rax	# PL_curstack.131_38->sv_any, D.14592
	movq	%rbx, %rcx	# sp, sp.132
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.133
	subq	%rdx, %rcx	# PL_stack_base.134, D.14593
	movq	%rcx, %rdx	# D.14593, D.14593
	sarq	$3, %rdx	#, tmp212
	movq	%rdx, 8(%rax)	# D.14593, _39->xav_fill
	movq	-56(%rbp), %rax	# next, tmp213
	movq	(%rax), %rax	# next_2->si_stack, D.14591
	movq	(%rax), %rax	# _45->sv_any, D.14592
	movq	(%rax), %rax	# _46->xav_array, PL_stack_base.135
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.135, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.136
	movq	-56(%rbp), %rax	# next, tmp214
	movq	(%rax), %rax	# next_2->si_stack, D.14591
	movq	(%rax), %rax	# _49->sv_any, D.14592
	movq	16(%rax), %rax	# _50->xav_max, D.14593
	salq	$3, %rax	#, D.14594
	addq	%rdx, %rax	# PL_stack_base.136, PL_stack_max.137
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.137, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.138
	movq	-56(%rbp), %rax	# next, tmp215
	movq	(%rax), %rax	# next_2->si_stack, D.14591
	movq	(%rax), %rax	# _56->sv_any, D.14592
	movq	8(%rax), %rax	# _57->xav_fill, D.14593
	salq	$3, %rax	#, D.14594
	addq	%rdx, %rax	# PL_stack_base.138, PL_stack_sp.139
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.139, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-56(%rbp), %rax	# next, tmp216
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.140
	movq	%rax, PL_curstack(%rip)	# PL_curstack.140, PL_curstack
.LBE14:
	movq	-56(%rbp), %rax	# next, tmp217
	movq	%rax, PL_curstackinfo(%rip)	# tmp217, PL_curstackinfo
.LBE13:
.LBB15:
	.loc 1 1059 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.141
	addq	$4, %rax	#, PL_markstack_ptr.142
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.142, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.143
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.144
	cmpq	%rax, %rdx	# PL_markstack_max.144, PL_markstack_ptr.143
	jne	.L249	#,
	.loc 1 1059 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L249:
	.loc 1 1059 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.145
	movq	%rbx, %rcx	# sp, sp.146
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.147
	subq	%rdx, %rcx	# PL_stack_base.148, D.14593
	movq	%rcx, %rdx	# D.14593, D.14593
	sarq	$3, %rdx	#, tmp218
	movl	%edx, (%rax)	# D.14595, *PL_markstack_ptr.145_69
.LBE15:
	.loc 1 1060 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.149
	movq	%rax, %rdx	# PL_stack_max.149, PL_stack_max.150
	movq	%rbx, %rax	# sp, sp.151
	subq	%rax, %rdx	# sp.151, D.14593
	movq	%rdx, %rax	# D.14593, D.14593
	cmpq	$15, %rax	#, D.14593
	jg	.L250	#,
	.loc 1 1060 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L250:
	.loc 1 1061 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# mg, tmp219
	movq	24(%rax), %rax	# mg_28->mg_obj, D.14597
	testq	%rax, %rax	# D.14597
	je	.L251	#,
	.loc 1 1061 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mg, tmp220
	movq	24(%rax), %rax	# mg_28->mg_obj, iftmp.152
	jmp	.L252	#
.L251:
	.loc 1 1061 0 discriminator 2
	movq	-48(%rbp), %rax	# io, tmp221
	movq	%rax, %rdi	# tmp221,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.14597,
	call	Perl_sv_2mortal	#
.L252:
	.loc 1 1061 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.152, *sp_82
	.loc 1 1062 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	movl	-76(%rbp), %eax	# msglen, tmp222
	movslq	%eax, %rdx	# tmp222, D.14594
	movq	-72(%rbp), %rax	# message, tmp223
	movq	%rdx, %rsi	# D.14594,
	movq	%rax, %rdi	# tmp223,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.14597,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.14597, *sp_87
	.loc 1 1063 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1064 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_call_method	#
.LBB16:
	.loc 1 1066 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.153
	movq	32(%rax), %rax	# PL_curstackinfo.153_94->si_prev, tmp224
	movq	%rax, -32(%rbp)	# tmp224, prev
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L253	#,
	.loc 1 1066 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.155
	testq	%rax, %rax	# PL_stderrgv.155
	je	.L254	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.156
	movl	12(%rax), %eax	# PL_stderrgv.156_97->sv_flags, D.14588
	movzbl	%al, %eax	# D.14588, D.14588
	cmpl	$13, %eax	#, D.14588
	jne	.L254	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.157
	movq	(%rax), %rax	# PL_stderrgv.157_100->sv_any, D.14589
	movq	56(%rax), %rax	# _101->xgv_gp, D.14590
	movq	16(%rax), %rax	# _102->gp_io, D.14598
	testq	%rax, %rax	# D.14598
	je	.L254	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.158
	movq	(%rax), %rax	# PL_stderrgv.158_104->sv_any, D.14589
	movq	56(%rax), %rax	# _105->xgv_gp, D.14590
	movq	16(%rax), %rax	# _106->gp_io, D.14598
	movq	(%rax), %rax	# _107->sv_any, D.14599
	movq	64(%rax), %rax	# _108->xio_ofp, D.14600
	testq	%rax, %rax	# D.14600
	je	.L254	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.159
	movq	(%rax), %rax	# PL_stderrgv.159_110->sv_any, D.14589
	movq	56(%rax), %rax	# _111->xgv_gp, D.14590
	movq	16(%rax), %rax	# _112->gp_io, D.14598
	movq	(%rax), %rax	# _113->sv_any, D.14599
	movq	64(%rax), %rax	# _114->xio_ofp, iftmp.154
	jmp	.L255	#
.L254:
	.loc 1 1066 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L255:
	.loc 1 1066 0 discriminator 3
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# iftmp.154,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L253:
.LBB17:
	.loc 1 1066 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.160
	movq	(%rax), %rax	# PL_curstack.160_117->sv_any, D.14592
	movq	%rbx, %rcx	# sp, sp.161
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.162
	subq	%rdx, %rcx	# PL_stack_base.163, D.14593
	movq	%rcx, %rdx	# D.14593, D.14593
	sarq	$3, %rdx	#, tmp225
	movq	%rdx, 8(%rax)	# D.14593, _118->xav_fill
	movq	-32(%rbp), %rax	# prev, tmp226
	movq	(%rax), %rax	# prev_95->si_stack, D.14591
	movq	(%rax), %rax	# _124->sv_any, D.14592
	movq	(%rax), %rax	# _125->xav_array, PL_stack_base.164
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.164, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.165
	movq	-32(%rbp), %rax	# prev, tmp227
	movq	(%rax), %rax	# prev_95->si_stack, D.14591
	movq	(%rax), %rax	# _128->sv_any, D.14592
	movq	16(%rax), %rax	# _129->xav_max, D.14593
	salq	$3, %rax	#, D.14594
	addq	%rdx, %rax	# PL_stack_base.165, PL_stack_max.166
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.166, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.167
	movq	-32(%rbp), %rax	# prev, tmp228
	movq	(%rax), %rax	# prev_95->si_stack, D.14591
	movq	(%rax), %rax	# _135->sv_any, D.14592
	movq	8(%rax), %rax	# _136->xav_fill, D.14593
	salq	$3, %rax	#, D.14594
	addq	%rdx, %rax	# PL_stack_base.167, PL_stack_sp.168
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.168, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# prev, tmp229
	movq	(%rax), %rax	# prev_95->si_stack, PL_curstack.169
	movq	%rax, PL_curstack(%rip)	# PL_curstack.169, PL_curstack
.LBE17:
	movq	-32(%rbp), %rax	# prev, tmp230
	movq	%rax, PL_curstackinfo(%rip)	# tmp230, PL_curstackinfo
.LBE16:
	.loc 1 1067 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.170
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.171
	cmpl	%eax, %edx	# PL_tmps_floor.171, PL_tmps_ix.170
	jle	.L256	#,
	.loc 1 1067 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L256:
	.loc 1 1068 0 is_stmt 1
	call	Perl_pop_scope	#
.LBE12:
	.loc 1 1048 0
	jmp	.L242	#
.L243:
.LBB18:
	.loc 1 1075 0
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.173
	testq	%rax, %rax	# PL_stderrgv.173
	je	.L258	#,
	.loc 1 1075 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.174
	movl	12(%rax), %eax	# PL_stderrgv.174_148->sv_flags, D.14588
	movzbl	%al, %eax	# D.14588, D.14588
	cmpl	$13, %eax	#, D.14588
	jne	.L258	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.175
	movq	(%rax), %rax	# PL_stderrgv.175_151->sv_any, D.14589
	movq	56(%rax), %rax	# _152->xgv_gp, D.14590
	movq	16(%rax), %rax	# _153->gp_io, D.14598
	testq	%rax, %rax	# D.14598
	je	.L258	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.176
	movq	(%rax), %rax	# PL_stderrgv.176_155->sv_any, D.14589
	movq	56(%rax), %rax	# _156->xgv_gp, D.14590
	movq	16(%rax), %rax	# _157->gp_io, D.14598
	movq	(%rax), %rax	# _158->sv_any, D.14599
	movq	64(%rax), %rax	# _159->xio_ofp, D.14600
	testq	%rax, %rax	# D.14600
	je	.L258	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.177
	movq	(%rax), %rax	# PL_stderrgv.177_161->sv_any, D.14589
	movq	56(%rax), %rax	# _162->xgv_gp, D.14590
	movq	16(%rax), %rax	# _163->gp_io, D.14598
	movq	(%rax), %rax	# _164->sv_any, D.14599
	movq	64(%rax), %rax	# _165->xio_ofp, iftmp.172
	jmp	.L259	#
.L258:
	.loc 1 1075 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L259:
	.loc 1 1075 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.172, serr
	.loc 1 1077 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %eax	# msglen, tmp231
	movslq	%eax, %rdx	# tmp231, D.14594
	movq	-72(%rbp), %rcx	# message, tmp232
	movq	-24(%rbp), %rax	# serr, tmp233
	movq	%rcx, %rsi	# tmp232,
	movq	%rax, %rdi	# tmp233,
	call	Perl_PerlIO_write	#
	.loc 1 1078 0 discriminator 3
	movq	-24(%rbp), %rax	# serr, tmp234
	movq	%rax, %rdi	# tmp234,
	call	Perl_PerlIO_flush	#
.L242:
.LBE18:
	.loc 1 1083 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_write_to_stderr, .-Perl_write_to_stderr
	.globl	S_vdie_croak_common
	.type	S_vdie_croak_common, @function
S_vdie_croak_common:
.LFB30:
	.loc 1 1092 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	movq	%rsi, -32(%rbp)	# args, args
	movq	%rdx, -40(%rbp)	# msglen, msglen
	movq	%rcx, -48(%rbp)	# utf8, utf8
	.loc 1 1095 0
	cmpq	$0, -24(%rbp)	#, pat
	je	.L261	#,
.LBB19:
	.loc 1 1096 0
	movq	-32(%rbp), %rdx	# args, tmp90
	movq	-24(%rbp), %rax	# pat, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	Perl_vmess	#
	movq	%rax, -8(%rbp)	# tmp92, msv
	.loc 1 1097 0
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.178
	testq	%rax, %rax	# PL_errors.178
	je	.L262	#,
	.loc 1 1097 0 is_stmt 0 discriminator 1
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.179
	movq	(%rax), %rax	# PL_errors.179_9->sv_any, D.14604
	movq	8(%rax), %rax	# MEM[(struct XPV *)_10].xpv_cur, D.14605
	testq	%rax, %rax	# D.14605
	je	.L262	#,
	.loc 1 1098 0 is_stmt 1
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.180
	movq	-8(%rbp), %rcx	# msv, tmp93
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# PL_errors.180,
	call	Perl_sv_catsv_flags	#
	.loc 1 1099 0
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.182
	movl	12(%rax), %eax	# PL_errors.182_13->sv_flags, D.14606
	andl	$262144, %eax	#, D.14606
	testl	%eax, %eax	# D.14606
	je	.L263	#,
	.loc 1 1099 0 is_stmt 0 discriminator 1
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.183
	movq	(%rax), %rax	# PL_errors.183_16->sv_any, D.14604
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_17].xpv_cur, D.14605
	movq	-40(%rbp), %rax	# msglen, tmp94
	movq	%rdx, (%rax)	# D.14605, *msglen_19(D)
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.184
	movq	(%rax), %rax	# PL_errors.184_20->sv_any, D.14604
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, iftmp.181
	jmp	.L264	#
.L263:
	.loc 1 1099 0 discriminator 2
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.185
	movq	-40(%rbp), %rcx	# msglen, tmp95
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# PL_errors.185,
	call	Perl_sv_2pv_flags	#
.L264:
	.loc 1 1099 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.181, message
	.loc 1 1100 0 is_stmt 1 discriminator 3
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.186
	movq	(%rax), %rax	# PL_errors.186_26->sv_any, D.14604
	movq	$0, 8(%rax)	#, MEM[(struct XPV *)_27].xpv_cur
	jmp	.L265	#
.L262:
	.loc 1 1103 0
	movq	-8(%rbp), %rax	# msv, tmp96
	movl	12(%rax), %eax	# msv_7->sv_flags, D.14606
	andl	$262144, %eax	#, D.14606
	testl	%eax, %eax	# D.14606
	je	.L266	#,
	.loc 1 1103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msv, tmp97
	movq	(%rax), %rax	# msv_7->sv_any, D.14604
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_30].xpv_cur, D.14605
	movq	-40(%rbp), %rax	# msglen, tmp98
	movq	%rdx, (%rax)	# D.14605, *msglen_19(D)
	movq	-8(%rbp), %rax	# msv, tmp99
	movq	(%rax), %rax	# msv_7->sv_any, D.14604
	movq	(%rax), %rax	# MEM[(struct XPV *)_32].xpv_pv, iftmp.187
	jmp	.L267	#
.L266:
	.loc 1 1103 0 discriminator 2
	movq	-40(%rbp), %rcx	# msglen, tmp100
	movq	-8(%rbp), %rax	# msv, tmp101
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	Perl_sv_2pv_flags	#
.L267:
	.loc 1 1103 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.187, message
.L265:
	.loc 1 1104 0 is_stmt 1
	movq	-8(%rbp), %rax	# msv, tmp102
	movl	12(%rax), %eax	# msv_7->sv_flags, D.14606
	andl	$536870912, %eax	#, D.14607
	movl	%eax, %edx	# D.14607, D.14607
	movq	-48(%rbp), %rax	# utf8, tmp103
	movl	%edx, (%rax)	# D.14607, *utf8_39(D)
.LBE19:
	jmp	.L268	#
.L261:
	.loc 1 1107 0
	movq	$0, -16(%rbp)	#, message
.L268:
	.loc 1 1113 0
	movq	PL_diehook(%rip), %rax	# PL_diehook, PL_diehook.188
	testq	%rax, %rax	# PL_diehook.188
	je	.L269	#,
	.loc 1 1114 0
	movq	-48(%rbp), %rax	# utf8, tmp104
	movl	(%rax), %edx	# *utf8_39(D), D.14607
	movq	-40(%rbp), %rax	# msglen, tmp105
	movq	(%rax), %rcx	# *msglen_19(D), D.14605
	movq	-16(%rbp), %rax	# message, tmp106
	movq	%rcx, %rsi	# D.14605,
	movq	%rax, %rdi	# tmp106,
	call	S_vdie_common	#
.L269:
	.loc 1 1116 0
	movq	-16(%rbp), %rax	# message, D.14608
	.loc 1 1117 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	S_vdie_croak_common, .-S_vdie_croak_common
	.globl	S_vdie_common
	.type	S_vdie_common, @function
S_vdie_common:
.LFB31:
	.loc 1 1121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# message, message
	movq	%rsi, -96(%rbp)	# msglen, msglen
	movl	%edx, -100(%rbp)	# utf8, utf8
	.loc 1 1126 0
	movq	PL_diehook(%rip), %rax	# PL_diehook, tmp171
	movq	%rax, -40(%rbp)	# tmp171, olddiehook
	.loc 1 1129 0
	call	Perl_push_scope	#
	.loc 1 1130 0
	movl	$PL_diehook, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1131 0
	movq	$0, PL_diehook(%rip)	#, PL_diehook
	.loc 1 1132 0
	leaq	-64(%rbp), %rdx	#, tmp172
	leaq	-72(%rbp), %rsi	#, tmp173
	movq	-40(%rbp), %rax	# olddiehook, tmp174
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp174,
	call	Perl_sv_2cv	#
	movq	%rax, -32(%rbp)	# tmp175, cv
	.loc 1 1133 0
	call	Perl_pop_scope	#
	.loc 1 1134 0
	cmpq	$0, -32(%rbp)	#, cv
	je	.L271	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# cv, tmp176
	movq	(%rax), %rax	# cv_6->sv_any, D.14609
	movq	112(%rax), %rax	# _7->xcv_depth, D.14610
	testq	%rax, %rax	# D.14610
	jne	.L271	#,
	movq	-32(%rbp), %rax	# cv, tmp177
	movq	(%rax), %rax	# cv_6->sv_any, D.14609
	movq	72(%rax), %rax	# _9->xcv_root, D.14611
	testq	%rax, %rax	# D.14611
	jne	.L273	#,
	movq	-32(%rbp), %rax	# cv, tmp178
	movq	(%rax), %rax	# cv_6->sv_any, D.14609
	movq	80(%rax), %rax	# _11->xcv_xsub, D.14612
	testq	%rax, %rax	# D.14612
	je	.L271	#,
.L273:
.LBB20:
	.loc 1 1135 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1138 0
	call	Perl_push_scope	#
	.loc 1 1139 0
	call	Perl_save_re_context	#
	.loc 1 1140 0
	cmpq	$0, -88(%rbp)	#, message
	je	.L274	#,
	.loc 1 1141 0
	movq	-96(%rbp), %rdx	# msglen, tmp179
	movq	-88(%rbp), %rax	# message, tmp180
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	Perl_newSVpvn	#
	movq	%rax, -56(%rbp)	# tmp181, msg
	.loc 1 1142 0
	movq	-56(%rbp), %rax	# msg, tmp182
	movl	12(%rax), %edx	# msg_16->sv_flags, D.14613
	movl	-100(%rbp), %eax	# utf8, utf8.189
	orl	%eax, %edx	# utf8.189, D.14613
	movq	-56(%rbp), %rax	# msg, tmp183
	movl	%edx, 12(%rax)	# D.14613, msg_16->sv_flags
	.loc 1 1143 0
	movq	-56(%rbp), %rax	# msg, tmp184
	movl	12(%rax), %eax	# msg_16->sv_flags, D.14613
	orl	$8388608, %eax	#, D.14613
	movl	%eax, %edx	# D.14613, D.14613
	movq	-56(%rbp), %rax	# msg, tmp185
	movl	%edx, 12(%rax)	# D.14613, msg_16->sv_flags
	.loc 1 1144 0
	movq	-56(%rbp), %rax	# msg, tmp186
	movq	%rax, %rdi	# tmp186,
	call	Perl_save_freesv	#
	jmp	.L275	#
.L274:
	.loc 1 1147 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.190
	movq	(%rax), %rax	# PL_errgv.190_23->sv_any, D.14614
	movq	56(%rax), %rax	# _24->xgv_gp, D.14615
	movq	(%rax), %rax	# _25->gp_sv, tmp187
	movq	%rax, -56(%rbp)	# tmp187, msg
.L275:
.LBB21:
	.loc 1 1150 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.191
	movq	40(%rax), %rax	# PL_curstackinfo.191_27->si_next, tmp188
	movq	%rax, -48(%rbp)	# tmp188, next
	cmpq	$0, -48(%rbp)	#, next
	jne	.L276	#,
	.loc 1 1150 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -48(%rbp)	# tmp189, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.192
	movq	-48(%rbp), %rax	# next, tmp190
	movq	%rdx, 32(%rax)	# PL_curstackinfo.192, next_29->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.193
	movq	-48(%rbp), %rdx	# next, tmp191
	movq	%rdx, 40(%rax)	# tmp191, PL_curstackinfo.193_31->si_next
.L276:
	.loc 1 1150 0 discriminator 2
	movq	-48(%rbp), %rax	# next, tmp192
	movl	$8, 24(%rax)	#, next_3->si_type
	movq	-48(%rbp), %rax	# next, tmp193
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-48(%rbp), %rax	# next, tmp194
	movq	(%rax), %rax	# next_3->si_stack, D.14616
	movq	(%rax), %rax	# _32->sv_any, D.14617
	movq	$0, 8(%rax)	#, _33->xav_fill
.LBB22:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.194
	movq	(%rax), %rax	# PL_curstack.194_34->sv_any, D.14617
	movq	%rbx, %rcx	# sp, sp.195
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.196
	subq	%rdx, %rcx	# PL_stack_base.197, D.14610
	movq	%rcx, %rdx	# D.14610, D.14610
	sarq	$3, %rdx	#, tmp195
	movq	%rdx, 8(%rax)	# D.14610, _35->xav_fill
	movq	-48(%rbp), %rax	# next, tmp196
	movq	(%rax), %rax	# next_3->si_stack, D.14616
	movq	(%rax), %rax	# _41->sv_any, D.14617
	movq	(%rax), %rax	# _42->xav_array, PL_stack_base.198
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.198, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.199
	movq	-48(%rbp), %rax	# next, tmp197
	movq	(%rax), %rax	# next_3->si_stack, D.14616
	movq	(%rax), %rax	# _45->sv_any, D.14617
	movq	16(%rax), %rax	# _46->xav_max, D.14610
	salq	$3, %rax	#, D.14618
	addq	%rdx, %rax	# PL_stack_base.199, PL_stack_max.200
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.200, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.201
	movq	-48(%rbp), %rax	# next, tmp198
	movq	(%rax), %rax	# next_3->si_stack, D.14616
	movq	(%rax), %rax	# _52->sv_any, D.14617
	movq	8(%rax), %rax	# _53->xav_fill, D.14610
	salq	$3, %rax	#, D.14618
	addq	%rdx, %rax	# PL_stack_base.201, PL_stack_sp.202
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.202, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-48(%rbp), %rax	# next, tmp199
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.203
	movq	%rax, PL_curstack(%rip)	# PL_curstack.203, PL_curstack
.LBE22:
	movq	-48(%rbp), %rax	# next, tmp200
	movq	%rax, PL_curstackinfo(%rip)	# tmp200, PL_curstackinfo
.LBE21:
.LBB23:
	.loc 1 1151 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.204
	addq	$4, %rax	#, PL_markstack_ptr.205
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.205, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.206
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.207
	cmpq	%rax, %rdx	# PL_markstack_max.207, PL_markstack_ptr.206
	jne	.L277	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L277:
	.loc 1 1151 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.208
	movq	%rbx, %rcx	# sp, sp.209
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.210
	subq	%rdx, %rcx	# PL_stack_base.211, D.14610
	movq	%rcx, %rdx	# D.14610, D.14610
	sarq	$3, %rdx	#, tmp201
	movl	%edx, (%rax)	# D.14619, *PL_markstack_ptr.208_65
.LBE23:
.LBB24:
	.loc 1 1152 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.212
	movq	%rax, %rdx	# PL_stack_max.212, PL_stack_max.213
	movq	%rbx, %rax	# sp, sp.214
	subq	%rax, %rdx	# sp.214, D.14610
	movq	%rdx, %rax	# D.14610, D.14610
	cmpq	$7, %rax	#, D.14610
	jg	.L278	#,
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L278:
	.loc 1 1152 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# msg, tmp202
	movq	%rax, (%rbx)	# tmp202, *sp_78
.LBE24:
	.loc 1 1153 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1154 0 discriminator 2
	movq	-32(%rbp), %rax	# cv, tmp203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp203,
	call	Perl_call_sv	#
.LBB25:
	.loc 1 1155 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.215
	movq	32(%rax), %rax	# PL_curstackinfo.215_81->si_prev, tmp204
	movq	%rax, -24(%rbp)	# tmp204, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L279	#,
	.loc 1 1155 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.217
	testq	%rax, %rax	# PL_stderrgv.217
	je	.L280	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.218
	movl	12(%rax), %eax	# PL_stderrgv.218_84->sv_flags, D.14613
	movzbl	%al, %eax	# D.14613, D.14613
	cmpl	$13, %eax	#, D.14613
	jne	.L280	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.219
	movq	(%rax), %rax	# PL_stderrgv.219_87->sv_any, D.14614
	movq	56(%rax), %rax	# _88->xgv_gp, D.14615
	movq	16(%rax), %rax	# _89->gp_io, D.14622
	testq	%rax, %rax	# D.14622
	je	.L280	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.220
	movq	(%rax), %rax	# PL_stderrgv.220_91->sv_any, D.14614
	movq	56(%rax), %rax	# _92->xgv_gp, D.14615
	movq	16(%rax), %rax	# _93->gp_io, D.14622
	movq	(%rax), %rax	# _94->sv_any, D.14623
	movq	64(%rax), %rax	# _95->xio_ofp, D.14624
	testq	%rax, %rax	# D.14624
	je	.L280	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.221
	movq	(%rax), %rax	# PL_stderrgv.221_97->sv_any, D.14614
	movq	56(%rax), %rax	# _98->xgv_gp, D.14615
	movq	16(%rax), %rax	# _99->gp_io, D.14622
	movq	(%rax), %rax	# _100->sv_any, D.14623
	movq	64(%rax), %rax	# _101->xio_ofp, iftmp.216
	jmp	.L281	#
.L280:
	.loc 1 1155 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L281:
	.loc 1 1155 0 discriminator 3
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# iftmp.216,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L279:
.LBB26:
	.loc 1 1155 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.222
	movq	(%rax), %rax	# PL_curstack.222_104->sv_any, D.14617
	movq	%rbx, %rcx	# sp, sp.223
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.224
	subq	%rdx, %rcx	# PL_stack_base.225, D.14610
	movq	%rcx, %rdx	# D.14610, D.14610
	sarq	$3, %rdx	#, tmp205
	movq	%rdx, 8(%rax)	# D.14610, _105->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp206
	movq	(%rax), %rax	# prev_82->si_stack, D.14616
	movq	(%rax), %rax	# _111->sv_any, D.14617
	movq	(%rax), %rax	# _112->xav_array, PL_stack_base.226
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.226, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.227
	movq	-24(%rbp), %rax	# prev, tmp207
	movq	(%rax), %rax	# prev_82->si_stack, D.14616
	movq	(%rax), %rax	# _115->sv_any, D.14617
	movq	16(%rax), %rax	# _116->xav_max, D.14610
	salq	$3, %rax	#, D.14618
	addq	%rdx, %rax	# PL_stack_base.227, PL_stack_max.228
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.228, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.229
	movq	-24(%rbp), %rax	# prev, tmp208
	movq	(%rax), %rax	# prev_82->si_stack, D.14616
	movq	(%rax), %rax	# _122->sv_any, D.14617
	movq	8(%rax), %rax	# _123->xav_fill, D.14610
	salq	$3, %rax	#, D.14618
	addq	%rdx, %rax	# PL_stack_base.229, PL_stack_sp.230
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.230, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp209
	movq	(%rax), %rax	# prev_82->si_stack, PL_curstack.231
	movq	%rax, PL_curstack(%rip)	# PL_curstack.231, PL_curstack
.LBE26:
	movq	-24(%rbp), %rax	# prev, tmp210
	movq	%rax, PL_curstackinfo(%rip)	# tmp210, PL_curstackinfo
.LBE25:
	.loc 1 1156 0 is_stmt 1 discriminator 2
	call	Perl_pop_scope	#
.L271:
.LBE20:
	.loc 1 1158 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	S_vdie_common, .-S_vdie_common
	.section	.rodata
.LC9:
	.string	"panic: top_env\n"
	.text
	.globl	Perl_vdie
	.type	Perl_vdie, @function
Perl_vdie:
.LFB32:
	.loc 1 1162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pat, pat
	movq	%rsi, -48(%rbp)	# args, args
	.loc 1 1164 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, tmp83
	movl	%eax, -20(%rbp)	# tmp83, was_in_eval
	.loc 1 1166 0
	movl	$0, -24(%rbp)	#, utf8
	.loc 1 1172 0
	leaq	-24(%rbp), %rcx	#, tmp84
	leaq	-16(%rbp), %rdx	#, tmp85
	movq	-48(%rbp), %rsi	# args, tmp86
	movq	-40(%rbp), %rax	# pat, tmp87
	movq	%rax, %rdi	# tmp87,
	call	S_vdie_croak_common	#
	movq	%rax, -8(%rbp)	# tmp88, message
	.loc 1 1174 0
	movq	-16(%rbp), %rdx	# msglen, msglen.232
	movq	-8(%rbp), %rax	# message, tmp89
	movq	%rdx, %rsi	# msglen.232,
	movq	%rax, %rdi	# tmp89,
	call	Perl_die_where	#
	movq	%rax, PL_restartop(%rip)	# PL_restartop.233, PL_restartop
	.loc 1 1175 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.234
	movq	(%rax), %rax	# PL_errgv.234_7->sv_any, D.14626
	movq	56(%rax), %rax	# _8->xgv_gp, D.14627
	movq	(%rax), %rax	# _9->gp_sv, D.14628
	movq	PL_errgv(%rip), %rdx	# PL_errgv, PL_errgv.235
	movq	(%rdx), %rdx	# PL_errgv.235_11->sv_any, D.14626
	movq	56(%rdx), %rdx	# _12->xgv_gp, D.14627
	movq	(%rdx), %rdx	# _13->gp_sv, D.14628
	movl	12(%rdx), %ecx	# _14->sv_flags, D.14629
	movl	-24(%rbp), %edx	# utf8, utf8.236
	orl	%ecx, %edx	# D.14629, D.14629
	movl	%edx, 12(%rax)	# D.14629, _10->sv_flags
	.loc 1 1179 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.238
	testq	%rax, %rax	# PL_restartop.238
	jne	.L283	#,
	.loc 1 1179 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, was_in_eval
	jne	.L284	#,
.L283:
	.loc 1 1179 0 discriminator 2
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.239
	movq	200(%rax), %rax	# PL_top_env.239_20->je_prev, D.14630
	testq	%rax, %rax	# D.14630
	je	.L285	#,
.L284:
.LBB27:
	.loc 1 1180 0 is_stmt 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.240
	movq	200(%rax), %rax	# PL_top_env.240_23->je_prev, D.14630
	testq	%rax, %rax	# D.14630
	je	.L286	#,
	.loc 1 1180 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.241
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14632,
	call	siglongjmp	#
.L286:
	.loc 1 1180 0 discriminator 2
	call	Perl_PerlIO_stderr	#
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.14633,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	exit	#
.L285:
.LBE27:
	.loc 1 1181 0 is_stmt 1
	movq	PL_restartop(%rip), %rax	# PL_restartop, D.14631
	.loc 1 1182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_vdie, .-Perl_vdie
	.globl	Perl_die
	.type	Perl_die, @function
Perl_die:
.LFB33:
	.loc 1 1200 0
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
	je	.L289	#,
	.loc 1 1200 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L289:
	movq	%rdi, -216(%rbp)	# pat, pat
	.loc 1 1203 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 1204 0
	leaq	-200(%rbp), %rdx	#, tmp62
	movq	-216(%rbp), %rax	# pat, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	Perl_vdie	#
	movq	%rax, -208(%rbp)	# tmp64, o
	.loc 1 1206 0
	movq	-208(%rbp), %rax	# o, D.14635
	.loc 1 1207 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_die, .-Perl_die
	.globl	Perl_vcroak
	.type	Perl_vcroak, @function
Perl_vcroak:
.LFB34:
	.loc 1 1211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pat, pat
	movq	%rsi, -48(%rbp)	# args, args
	.loc 1 1214 0
	movl	$0, -20(%rbp)	#, utf8
	.loc 1 1216 0
	leaq	-20(%rbp), %rcx	#, tmp95
	leaq	-16(%rbp), %rdx	#, tmp96
	movq	-48(%rbp), %rsi	# args, tmp97
	movq	-40(%rbp), %rax	# pat, tmp98
	movq	%rax, %rdi	# tmp98,
	call	S_vdie_croak_common	#
	movq	%rax, -8(%rbp)	# tmp99, message
	.loc 1 1218 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.243
	testl	%eax, %eax	# PL_in_eval.243
	je	.L292	#,
	.loc 1 1219 0
	movq	-16(%rbp), %rdx	# msglen, msglen.244
	movq	-8(%rbp), %rax	# message, tmp100
	movq	%rdx, %rsi	# msglen.244,
	movq	%rax, %rdi	# tmp100,
	call	Perl_die_where	#
	movq	%rax, PL_restartop(%rip)	# PL_restartop.245, PL_restartop
	.loc 1 1220 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.246
	movq	(%rax), %rax	# PL_errgv.246_9->sv_any, D.14638
	movq	56(%rax), %rax	# _10->xgv_gp, D.14639
	movq	(%rax), %rax	# _11->gp_sv, D.14640
	movq	PL_errgv(%rip), %rdx	# PL_errgv, PL_errgv.247
	movq	(%rdx), %rdx	# PL_errgv.247_13->sv_any, D.14638
	movq	56(%rdx), %rdx	# _14->xgv_gp, D.14639
	movq	(%rdx), %rdx	# _15->gp_sv, D.14640
	movl	12(%rdx), %ecx	# _16->sv_flags, D.14641
	movl	-20(%rbp), %edx	# utf8, utf8.248
	orl	%ecx, %edx	# D.14641, D.14641
	movl	%edx, 12(%rax)	# D.14641, _12->sv_flags
.LBB28:
	.loc 1 1221 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.250
	movq	200(%rax), %rax	# PL_top_env.250_21->je_prev, D.14642
	testq	%rax, %rax	# D.14642
	je	.L293	#,
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.251
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14643,
	call	siglongjmp	#
.L293:
	.loc 1 1221 0 discriminator 2
	call	Perl_PerlIO_stderr	#
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.14644,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	exit	#
.L292:
.LBE28:
	.loc 1 1223 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, message
	jne	.L294	#,
	.loc 1 1224 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.253
	movq	(%rax), %rax	# PL_errgv.253_26->sv_any, D.14638
	movq	56(%rax), %rax	# _27->xgv_gp, D.14639
	movq	(%rax), %rax	# _28->gp_sv, PL_Sv.254
	movq	%rax, PL_Sv(%rip)	# PL_Sv.254, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.256
	movl	12(%rax), %eax	# PL_Sv.256_30->sv_flags, D.14641
	andl	$262144, %eax	#, D.14641
	testl	%eax, %eax	# D.14641
	je	.L295	#,
	.loc 1 1224 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.257
	movq	(%rax), %rax	# PL_Sv.257_33->sv_any, D.14645
	movq	8(%rax), %rax	# MEM[(struct XPV *)_34].xpv_cur, msglen.258
	movq	%rax, -16(%rbp)	# msglen.258, msglen
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.259
	movq	(%rax), %rax	# PL_Sv.259_36->sv_any, D.14645
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, iftmp.255
	jmp	.L296	#
.L295:
	.loc 1 1224 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.260
	leaq	-16(%rbp), %rcx	#, tmp101
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# PL_Sv.260,
	call	Perl_sv_2pv_flags	#
.L296:
	.loc 1 1224 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.255, message
.L294:
	.loc 1 1226 0 is_stmt 1
	movq	-16(%rbp), %rax	# msglen, msglen.261
	movl	%eax, %edx	# msglen.261, D.14646
	movq	-8(%rbp), %rax	# message, tmp102
	movl	%edx, %esi	# D.14646,
	movq	%rax, %rdi	# tmp102,
	call	Perl_write_to_stderr	#
	.loc 1 1227 0
	call	Perl_my_failure_exit	#
	.loc 1 1228 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_vcroak, .-Perl_vcroak
	.globl	Perl_croak
	.type	Perl_croak, @function
Perl_croak:
.LFB35:
	.loc 1 1265 0
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
	je	.L298	#,
	.loc 1 1265 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L298:
	movq	%rdi, -216(%rbp)	# pat, pat
	.loc 1 1267 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp62
	movq	%rax, -192(%rbp)	# tmp62, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp63
	movq	%rax, -184(%rbp)	# tmp63, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 1268 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-216(%rbp), %rax	# pat, tmp61
	movq	%rdx, %rsi	# tmp60,
	movq	%rax, %rdi	# tmp61,
	call	Perl_vcroak	#
	.loc 1 1271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_croak, .-Perl_croak
	.globl	Perl_vwarn
	.type	Perl_vwarn, @function
Perl_vwarn:
.LFB36:
	.loc 1 1275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# pat, pat
	movq	%rsi, -128(%rbp)	# args, args
	.loc 1 1282 0
	movl	$0, -100(%rbp)	#, utf8
	.loc 1 1284 0
	movq	-128(%rbp), %rdx	# args, tmp180
	movq	-120(%rbp), %rax	# pat, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	Perl_vmess	#
	movq	%rax, -64(%rbp)	# tmp182, msv
	.loc 1 1285 0
	movq	-64(%rbp), %rax	# msv, tmp183
	movl	12(%rax), %eax	# msv_8->sv_flags, D.14649
	andl	$536870912, %eax	#, tmp184
	movl	%eax, -100(%rbp)	# tmp184, utf8
	.loc 1 1286 0
	movq	-64(%rbp), %rax	# msv, tmp185
	movl	12(%rax), %eax	# msv_8->sv_flags, D.14649
	andl	$262144, %eax	#, D.14649
	testl	%eax, %eax	# D.14649
	je	.L300	#,
	.loc 1 1286 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# msv, tmp186
	movq	(%rax), %rax	# msv_8->sv_any, D.14651
	movq	8(%rax), %rax	# MEM[(struct XPV *)_14].xpv_cur, msglen.263
	movq	%rax, -80(%rbp)	# msglen.263, msglen
	movq	-64(%rbp), %rax	# msv, tmp187
	movq	(%rax), %rax	# msv_8->sv_any, D.14651
	movq	(%rax), %rax	# MEM[(struct XPV *)_16].xpv_pv, iftmp.262
	jmp	.L301	#
.L300:
	.loc 1 1286 0 discriminator 2
	leaq	-80(%rbp), %rcx	#, tmp188
	movq	-64(%rbp), %rax	# msv, tmp189
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	Perl_sv_2pv_flags	#
.L301:
	.loc 1 1286 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.262, message
	.loc 1 1288 0 is_stmt 1 discriminator 3
	movq	PL_warnhook(%rip), %rax	# PL_warnhook, PL_warnhook.264
	testq	%rax, %rax	# PL_warnhook.264
	je	.L302	#,
.LBB29:
	.loc 1 1290 0
	movq	PL_warnhook(%rip), %rax	# PL_warnhook, tmp190
	movq	%rax, -48(%rbp)	# tmp190, oldwarnhook
	.loc 1 1291 0
	call	Perl_push_scope	#
	.loc 1 1292 0
	movl	$PL_warnhook, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 1293 0
	movq	$0, PL_warnhook(%rip)	#, PL_warnhook
	.loc 1 1294 0
	leaq	-88(%rbp), %rdx	#, tmp191
	leaq	-96(%rbp), %rsi	#, tmp192
	movq	-48(%rbp), %rax	# oldwarnhook, tmp193
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp193,
	call	Perl_sv_2cv	#
	movq	%rax, -40(%rbp)	# tmp194, cv
	.loc 1 1295 0
	call	Perl_pop_scope	#
	.loc 1 1296 0
	cmpq	$0, -40(%rbp)	#, cv
	je	.L302	#,
	.loc 1 1296 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cv, tmp195
	movq	(%rax), %rax	# cv_22->sv_any, D.14652
	movq	112(%rax), %rax	# _23->xcv_depth, D.14653
	testq	%rax, %rax	# D.14653
	jne	.L302	#,
	movq	-40(%rbp), %rax	# cv, tmp196
	movq	(%rax), %rax	# cv_22->sv_any, D.14652
	movq	72(%rax), %rax	# _25->xcv_root, D.14654
	testq	%rax, %rax	# D.14654
	jne	.L303	#,
	movq	-40(%rbp), %rax	# cv, tmp197
	movq	(%rax), %rax	# cv_22->sv_any, D.14652
	movq	80(%rax), %rax	# _27->xcv_xsub, D.14655
	testq	%rax, %rax	# D.14655
	je	.L302	#,
.L303:
.LBB30:
	.loc 1 1297 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1300 0
	call	Perl_push_scope	#
	.loc 1 1301 0
	call	Perl_save_re_context	#
	.loc 1 1302 0
	movq	-80(%rbp), %rdx	# msglen, msglen.265
	movq	-56(%rbp), %rax	# message, tmp198
	movq	%rdx, %rsi	# msglen.265,
	movq	%rax, %rdi	# tmp198,
	call	Perl_newSVpvn	#
	movq	%rax, -32(%rbp)	# tmp199, msg
	.loc 1 1303 0
	movq	-32(%rbp), %rax	# msg, tmp200
	movl	12(%rax), %edx	# msg_31->sv_flags, D.14649
	movl	-100(%rbp), %eax	# utf8, utf8.266
	orl	%eax, %edx	# utf8.266, D.14649
	movq	-32(%rbp), %rax	# msg, tmp201
	movl	%edx, 12(%rax)	# D.14649, msg_31->sv_flags
	.loc 1 1304 0
	movq	-32(%rbp), %rax	# msg, tmp202
	movl	12(%rax), %eax	# msg_31->sv_flags, D.14649
	orl	$8388608, %eax	#, D.14649
	movl	%eax, %edx	# D.14649, D.14649
	movq	-32(%rbp), %rax	# msg, tmp203
	movl	%edx, 12(%rax)	# D.14649, msg_31->sv_flags
	.loc 1 1305 0
	movq	-32(%rbp), %rax	# msg, tmp204
	movq	%rax, %rdi	# tmp204,
	call	Perl_save_freesv	#
.LBB31:
	.loc 1 1307 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.267
	movq	40(%rax), %rax	# PL_curstackinfo.267_37->si_next, tmp205
	movq	%rax, -72(%rbp)	# tmp205, next
	cmpq	$0, -72(%rbp)	#, next
	jne	.L304	#,
	.loc 1 1307 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -72(%rbp)	# tmp206, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.268
	movq	-72(%rbp), %rax	# next, tmp207
	movq	%rdx, 32(%rax)	# PL_curstackinfo.268, next_39->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.269
	movq	-72(%rbp), %rdx	# next, tmp208
	movq	%rdx, 40(%rax)	# tmp208, PL_curstackinfo.269_41->si_next
.L304:
	.loc 1 1307 0 discriminator 2
	movq	-72(%rbp), %rax	# next, tmp209
	movl	$7, 24(%rax)	#, next_2->si_type
	movq	-72(%rbp), %rax	# next, tmp210
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-72(%rbp), %rax	# next, tmp211
	movq	(%rax), %rax	# next_2->si_stack, D.14656
	movq	(%rax), %rax	# _42->sv_any, D.14657
	movq	$0, 8(%rax)	#, _43->xav_fill
.LBB32:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.270
	movq	(%rax), %rax	# PL_curstack.270_44->sv_any, D.14657
	movq	%rbx, %rcx	# sp, sp.271
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.272
	subq	%rdx, %rcx	# PL_stack_base.273, D.14653
	movq	%rcx, %rdx	# D.14653, D.14653
	sarq	$3, %rdx	#, tmp212
	movq	%rdx, 8(%rax)	# D.14653, _45->xav_fill
	movq	-72(%rbp), %rax	# next, tmp213
	movq	(%rax), %rax	# next_2->si_stack, D.14656
	movq	(%rax), %rax	# _51->sv_any, D.14657
	movq	(%rax), %rax	# _52->xav_array, PL_stack_base.274
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.274, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.275
	movq	-72(%rbp), %rax	# next, tmp214
	movq	(%rax), %rax	# next_2->si_stack, D.14656
	movq	(%rax), %rax	# _55->sv_any, D.14657
	movq	16(%rax), %rax	# _56->xav_max, D.14653
	salq	$3, %rax	#, D.14658
	addq	%rdx, %rax	# PL_stack_base.275, PL_stack_max.276
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.276, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.277
	movq	-72(%rbp), %rax	# next, tmp215
	movq	(%rax), %rax	# next_2->si_stack, D.14656
	movq	(%rax), %rax	# _62->sv_any, D.14657
	movq	8(%rax), %rax	# _63->xav_fill, D.14653
	salq	$3, %rax	#, D.14658
	addq	%rdx, %rax	# PL_stack_base.277, PL_stack_sp.278
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.278, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-72(%rbp), %rax	# next, tmp216
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.279
	movq	%rax, PL_curstack(%rip)	# PL_curstack.279, PL_curstack
.LBE32:
	movq	-72(%rbp), %rax	# next, tmp217
	movq	%rax, PL_curstackinfo(%rip)	# tmp217, PL_curstackinfo
.LBE31:
.LBB33:
	.loc 1 1308 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.280
	addq	$4, %rax	#, PL_markstack_ptr.281
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.281, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.282
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.283
	cmpq	%rax, %rdx	# PL_markstack_max.283, PL_markstack_ptr.282
	jne	.L305	#,
	.loc 1 1308 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L305:
	.loc 1 1308 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.284
	movq	%rbx, %rcx	# sp, sp.285
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.286
	subq	%rdx, %rcx	# PL_stack_base.287, D.14653
	movq	%rcx, %rdx	# D.14653, D.14653
	sarq	$3, %rdx	#, tmp218
	movl	%edx, (%rax)	# D.14650, *PL_markstack_ptr.284_75
.LBE33:
.LBB34:
	.loc 1 1309 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.288
	movq	%rax, %rdx	# PL_stack_max.288, PL_stack_max.289
	movq	%rbx, %rax	# sp, sp.290
	subq	%rax, %rdx	# sp.290, D.14653
	movq	%rdx, %rax	# D.14653, D.14653
	cmpq	$7, %rax	#, D.14653
	jg	.L306	#,
	.loc 1 1309 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L306:
	.loc 1 1309 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# msg, tmp219
	movq	%rax, (%rbx)	# tmp219, *sp_88
.LBE34:
	.loc 1 1310 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1311 0 discriminator 2
	movq	-40(%rbp), %rax	# cv, tmp220
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	Perl_call_sv	#
.LBB35:
	.loc 1 1312 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.291
	movq	32(%rax), %rax	# PL_curstackinfo.291_91->si_prev, tmp221
	movq	%rax, -24(%rbp)	# tmp221, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L307	#,
	.loc 1 1312 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.293
	testq	%rax, %rax	# PL_stderrgv.293
	je	.L308	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.294
	movl	12(%rax), %eax	# PL_stderrgv.294_94->sv_flags, D.14649
	movzbl	%al, %eax	# D.14649, D.14649
	cmpl	$13, %eax	#, D.14649
	jne	.L308	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.295
	movq	(%rax), %rax	# PL_stderrgv.295_97->sv_any, D.14661
	movq	56(%rax), %rax	# _98->xgv_gp, D.14662
	movq	16(%rax), %rax	# _99->gp_io, D.14663
	testq	%rax, %rax	# D.14663
	je	.L308	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.296
	movq	(%rax), %rax	# PL_stderrgv.296_101->sv_any, D.14661
	movq	56(%rax), %rax	# _102->xgv_gp, D.14662
	movq	16(%rax), %rax	# _103->gp_io, D.14663
	movq	(%rax), %rax	# _104->sv_any, D.14664
	movq	64(%rax), %rax	# _105->xio_ofp, D.14665
	testq	%rax, %rax	# D.14665
	je	.L308	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.297
	movq	(%rax), %rax	# PL_stderrgv.297_107->sv_any, D.14661
	movq	56(%rax), %rax	# _108->xgv_gp, D.14662
	movq	16(%rax), %rax	# _109->gp_io, D.14663
	movq	(%rax), %rax	# _110->sv_any, D.14664
	movq	64(%rax), %rax	# _111->xio_ofp, iftmp.292
	jmp	.L309	#
.L308:
	.loc 1 1312 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L309:
	.loc 1 1312 0 discriminator 3
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# iftmp.292,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L307:
.LBB36:
	.loc 1 1312 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.298
	movq	(%rax), %rax	# PL_curstack.298_114->sv_any, D.14657
	movq	%rbx, %rcx	# sp, sp.299
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.300
	subq	%rdx, %rcx	# PL_stack_base.301, D.14653
	movq	%rcx, %rdx	# D.14653, D.14653
	sarq	$3, %rdx	#, tmp222
	movq	%rdx, 8(%rax)	# D.14653, _115->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp223
	movq	(%rax), %rax	# prev_92->si_stack, D.14656
	movq	(%rax), %rax	# _121->sv_any, D.14657
	movq	(%rax), %rax	# _122->xav_array, PL_stack_base.302
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.302, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.303
	movq	-24(%rbp), %rax	# prev, tmp224
	movq	(%rax), %rax	# prev_92->si_stack, D.14656
	movq	(%rax), %rax	# _125->sv_any, D.14657
	movq	16(%rax), %rax	# _126->xav_max, D.14653
	salq	$3, %rax	#, D.14658
	addq	%rdx, %rax	# PL_stack_base.303, PL_stack_max.304
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.304, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.305
	movq	-24(%rbp), %rax	# prev, tmp225
	movq	(%rax), %rax	# prev_92->si_stack, D.14656
	movq	(%rax), %rax	# _132->sv_any, D.14657
	movq	8(%rax), %rax	# _133->xav_fill, D.14653
	salq	$3, %rax	#, D.14658
	addq	%rdx, %rax	# PL_stack_base.305, PL_stack_sp.306
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.306, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp226
	movq	(%rax), %rax	# prev_92->si_stack, PL_curstack.307
	movq	%rax, PL_curstack(%rip)	# PL_curstack.307, PL_curstack
.LBE36:
	movq	-24(%rbp), %rax	# prev, tmp227
	movq	%rax, PL_curstackinfo(%rip)	# tmp227, PL_curstackinfo
.LBE35:
	.loc 1 1313 0 is_stmt 1 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 1314 0 discriminator 2
	jmp	.L299	#
.L302:
.LBE30:
.LBE29:
	.loc 1 1318 0
	movq	-80(%rbp), %rax	# msglen, msglen.308
	movl	%eax, %edx	# msglen.308, D.14650
	movq	-56(%rbp), %rax	# message, tmp228
	movl	%edx, %esi	# D.14650,
	movq	%rax, %rdi	# tmp228,
	call	Perl_write_to_stderr	#
.L299:
	.loc 1 1319 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_vwarn, .-Perl_vwarn
	.globl	Perl_warn
	.type	Perl_warn, @function
Perl_warn:
.LFB37:
	.loc 1 1344 0
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
	je	.L313	#,
	.loc 1 1344 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L313:
	movq	%rdi, -216(%rbp)	# pat, pat
	.loc 1 1346 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp62
	movq	%rax, -192(%rbp)	# tmp62, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp63
	movq	%rax, -184(%rbp)	# tmp63, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 1347 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-216(%rbp), %rax	# pat, tmp61
	movq	%rdx, %rsi	# tmp60,
	movq	%rax, %rdi	# tmp61,
	call	Perl_vwarn	#
	.loc 1 1349 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_warn, .-Perl_warn
	.globl	Perl_warner
	.type	Perl_warner, @function
Perl_warner:
.LFB38:
	.loc 1 1365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movl	%edi, -212(%rbp)	# err, err
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L315	#,
	.loc 1 1365 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L315:
	movq	%rsi, -224(%rbp)	# pat, pat
	.loc 1 1367 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	16(%rbp), %rax	#, tmp63
	movq	%rax, -192(%rbp)	# tmp63, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp64
	movq	%rax, -184(%rbp)	# tmp64, MEM[(struct [1] *)&args].reg_save_area
	.loc 1 1368 0
	leaq	-200(%rbp), %rdx	#, tmp60
	movq	-224(%rbp), %rcx	# pat, tmp61
	movl	-212(%rbp), %eax	# err, tmp62
	movq	%rcx, %rsi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	Perl_vwarner	#
	.loc 1 1370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_warner, .-Perl_warner
	.globl	Perl_vwarner
	.type	Perl_vwarner, @function
Perl_vwarner:
.LFB39:
	.loc 1 1374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# err, err
	movq	%rsi, -48(%rbp)	# pat, pat
	movq	%rdx, -56(%rbp)	# args, args
	.loc 1 1375 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.309
	movq	80(%rax), %rax	# PL_curcop.309_2->cop_warnings, D.14671
	testq	%rax, %rax	# D.14671
	je	.L317	#,
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.310
	movq	80(%rax), %rax	# PL_curcop.310_4->cop_warnings, D.14671
	cmpq	$16, %rax	#, D.14671
	je	.L317	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.311
	movq	80(%rax), %rax	# PL_curcop.311_6->cop_warnings, D.14671
	cmpq	$32, %rax	#, D.14671
	je	.L317	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.312
	movq	80(%rax), %rax	# PL_curcop.312_8->cop_warnings, D.14671
	movq	(%rax), %rax	# _9->sv_any, D.14672
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, D.14673
	movzbl	(%rax), %eax	# *_11, D.14674
	movsbl	%al, %eax	# D.14674, D.14675
	andl	$2, %eax	#, D.14675
	testl	%eax, %eax	# D.14675
	jne	.L318	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.313
	movq	80(%rax), %rax	# PL_curcop.313_15->cop_warnings, D.14671
	movq	(%rax), %rax	# _16->sv_any, D.14672
	movq	(%rax), %rdx	# MEM[(struct XPV *)_17].xpv_pv, D.14673
	movl	-36(%rbp), %eax	# err, tmp183
	movzbl	%al, %eax	# tmp183, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	shrl	$3, %eax	#, D.14676
	movl	%eax, %eax	# D.14676, D.14677
	addq	%rdx, %rax	# D.14673, D.14673
	movzbl	(%rax), %eax	# *_25, D.14674
	movsbl	%al, %edx	# D.14674, D.14675
	movl	-36(%rbp), %eax	# err, tmp184
	movzbl	%al, %eax	# tmp184, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	andl	$7, %eax	#, D.14675
	movl	%eax, %ecx	# D.14675, tmp208
	sarl	%cl, %edx	# tmp208, D.14675
	movl	%edx, %eax	# D.14675, D.14675
	andl	$1, %eax	#, D.14675
	testl	%eax, %eax	# D.14675
	jne	.L318	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.314
	movq	80(%rax), %rax	# PL_curcop.314_35->cop_warnings, D.14671
	movq	(%rax), %rax	# _36->sv_any, D.14672
	movq	(%rax), %rdx	# MEM[(struct XPV *)_37].xpv_pv, D.14673
	movl	-36(%rbp), %eax	# err, tmp185
	shrl	$8, %eax	#, D.14676
	movzbl	%al, %eax	# D.14676, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	shrl	$3, %eax	#, D.14676
	movl	%eax, %eax	# D.14676, D.14677
	addq	%rdx, %rax	# D.14673, D.14673
	movzbl	(%rax), %eax	# *_45, D.14674
	movsbl	%al, %edx	# D.14674, D.14675
	movl	-36(%rbp), %eax	# err, tmp186
	shrl	$8, %eax	#, D.14676
	movzbl	%al, %eax	# D.14676, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	andl	$7, %eax	#, D.14675
	movl	%eax, %ecx	# D.14675, tmp210
	sarl	%cl, %edx	# tmp210, D.14675
	movl	%edx, %eax	# D.14675, D.14675
	andl	$1, %eax	#, D.14675
	testl	%eax, %eax	# D.14675
	jne	.L318	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.315
	movq	80(%rax), %rax	# PL_curcop.315_56->cop_warnings, D.14671
	movq	(%rax), %rax	# _57->sv_any, D.14672
	movq	(%rax), %rdx	# MEM[(struct XPV *)_58].xpv_pv, D.14673
	movl	-36(%rbp), %eax	# err, tmp187
	shrl	$16, %eax	#, D.14676
	movzbl	%al, %eax	# D.14676, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	shrl	$3, %eax	#, D.14676
	movl	%eax, %eax	# D.14676, D.14677
	addq	%rdx, %rax	# D.14673, D.14673
	movzbl	(%rax), %eax	# *_66, D.14674
	movsbl	%al, %edx	# D.14674, D.14675
	movl	-36(%rbp), %eax	# err, tmp188
	shrl	$16, %eax	#, D.14676
	movzbl	%al, %eax	# D.14676, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	andl	$7, %eax	#, D.14675
	movl	%eax, %ecx	# D.14675, tmp212
	sarl	%cl, %edx	# tmp212, D.14675
	movl	%edx, %eax	# D.14675, D.14675
	andl	$1, %eax	#, D.14675
	testl	%eax, %eax	# D.14675
	jne	.L318	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.316
	movq	80(%rax), %rax	# PL_curcop.316_77->cop_warnings, D.14671
	movq	(%rax), %rax	# _78->sv_any, D.14672
	movq	(%rax), %rdx	# MEM[(struct XPV *)_79].xpv_pv, D.14673
	movl	-36(%rbp), %eax	# err, tmp189
	shrl	$24, %eax	#, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	shrl	$3, %eax	#, D.14676
	movl	%eax, %eax	# D.14676, D.14677
	addq	%rdx, %rax	# D.14673, D.14673
	movzbl	(%rax), %eax	# *_86, D.14674
	movsbl	%al, %edx	# D.14674, D.14675
	movl	-36(%rbp), %eax	# err, tmp190
	shrl	$24, %eax	#, D.14676
	addl	%eax, %eax	# D.14676
	addl	$1, %eax	#, D.14676
	andl	$7, %eax	#, D.14675
	movl	%eax, %ecx	# D.14675, tmp214
	sarl	%cl, %edx	# tmp214, D.14675
	movl	%edx, %eax	# D.14675, D.14675
	andl	$1, %eax	#, D.14675
	testl	%eax, %eax	# D.14675
	je	.L317	#,
.L318:
.LBB37:
	.loc 1 1376 0 is_stmt 1
	movq	-56(%rbp), %rdx	# args, tmp191
	movq	-48(%rbp), %rax	# pat, tmp192
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	Perl_vmess	#
	movq	%rax, -16(%rbp)	# tmp193, msv
	.loc 1 1378 0
	movq	-16(%rbp), %rax	# msv, tmp194
	movl	12(%rax), %eax	# msv_98->sv_flags, D.14676
	andl	$262144, %eax	#, D.14676
	testl	%eax, %eax	# D.14676
	je	.L319	#,
	.loc 1 1378 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# msv, tmp195
	movq	(%rax), %rax	# msv_98->sv_any, D.14672
	movq	8(%rax), %rax	# MEM[(struct XPV *)_101].xpv_cur, msglen.318
	movq	%rax, -24(%rbp)	# msglen.318, msglen
	movq	-16(%rbp), %rax	# msv, tmp196
	movq	(%rax), %rax	# msv_98->sv_any, D.14672
	movq	(%rax), %rax	# MEM[(struct XPV *)_103].xpv_pv, iftmp.317
	jmp	.L320	#
.L319:
	.loc 1 1378 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp197
	movq	-16(%rbp), %rax	# msv, tmp198
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	Perl_sv_2pv_flags	#
.L320:
	.loc 1 1378 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.317, message
	.loc 1 1379 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# msv, tmp199
	movl	12(%rax), %eax	# msv_98->sv_flags, D.14676
	andl	$536870912, %eax	#, tmp200
	movl	%eax, -28(%rbp)	# tmp200, utf8
	.loc 1 1384 0 discriminator 3
	movq	PL_diehook(%rip), %rax	# PL_diehook, PL_diehook.319
	testq	%rax, %rax	# PL_diehook.319
	je	.L321	#,
	.loc 1 1386 0
	movq	-24(%rbp), %rcx	# msglen, msglen.320
	movl	-28(%rbp), %edx	# utf8, tmp201
	movq	-8(%rbp), %rax	# message, tmp202
	movq	%rcx, %rsi	# msglen.320,
	movq	%rax, %rdi	# tmp202,
	call	S_vdie_common	#
.L321:
	.loc 1 1388 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.321
	testl	%eax, %eax	# PL_in_eval.321
	je	.L322	#,
	.loc 1 1389 0
	movq	-24(%rbp), %rdx	# msglen, msglen.322
	movq	-8(%rbp), %rax	# message, tmp203
	movq	%rdx, %rsi	# msglen.322,
	movq	%rax, %rdi	# tmp203,
	call	Perl_die_where	#
	movq	%rax, PL_restartop(%rip)	# PL_restartop.323, PL_restartop
	.loc 1 1390 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.324
	movq	(%rax), %rax	# PL_errgv.324_115->sv_any, D.14678
	movq	56(%rax), %rax	# _116->xgv_gp, D.14679
	movq	(%rax), %rax	# _117->gp_sv, D.14671
	movq	PL_errgv(%rip), %rdx	# PL_errgv, PL_errgv.325
	movq	(%rdx), %rdx	# PL_errgv.325_119->sv_any, D.14678
	movq	56(%rdx), %rdx	# _120->xgv_gp, D.14679
	movq	(%rdx), %rdx	# _121->gp_sv, D.14671
	movl	12(%rdx), %ecx	# _122->sv_flags, D.14676
	movl	-28(%rbp), %edx	# utf8, utf8.326
	orl	%ecx, %edx	# D.14676, D.14676
	movl	%edx, 12(%rax)	# D.14676, _118->sv_flags
.LBB38:
	.loc 1 1391 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.327
	movq	200(%rax), %rax	# PL_top_env.327_126->je_prev, D.14680
	testq	%rax, %rax	# D.14680
	je	.L323	#,
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.328
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.14681,
	call	siglongjmp	#
.L323:
	.loc 1 1391 0 discriminator 2
	call	Perl_PerlIO_stderr	#
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.14682,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	exit	#
.L322:
.LBE38:
	.loc 1 1393 0 is_stmt 1
	movq	-24(%rbp), %rax	# msglen, msglen.330
	movl	%eax, %edx	# msglen.330, D.14675
	movq	-8(%rbp), %rax	# message, tmp204
	movl	%edx, %esi	# D.14675,
	movq	%rax, %rdi	# tmp204,
	call	Perl_write_to_stderr	#
	.loc 1 1394 0
	call	Perl_my_failure_exit	#
.LBE37:
	.loc 1 1375 0
	jmp	.L316	#
.L317:
	.loc 1 1397 0
	movq	-56(%rbp), %rdx	# args, tmp205
	movq	-48(%rbp), %rax	# pat, tmp206
	movq	%rdx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	Perl_vwarn	#
.L316:
	.loc 1 1399 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_vwarner, .-Perl_vwarner
	.globl	Perl_my_setenv
	.type	Perl_my_setenv, @function
Perl_my_setenv:
.LFB40:
	.loc 1 1416 0
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
	movq	%rdi, -72(%rbp)	# nam, nam
	movq	%rsi, -80(%rbp)	# val, val
	.loc 1 1423 0
	movl	PL_use_safe_putenv(%rip), %eax	# PL_use_safe_putenv, PL_use_safe_putenv.331
	testl	%eax, %eax	# PL_use_safe_putenv.331
	jne	.L326	#,
.LBB39:
	.loc 1 1425 0
	movq	-72(%rbp), %rax	# nam, tmp194
	movq	%rax, %rdi	# tmp194,
	call	Perl_setenv_getix	#
	movl	%eax, %ebx	#, i
	.loc 1 1428 0
	movq	environ(%rip), %rdx	# environ, environ.332
	movq	PL_origenviron(%rip), %rax	# PL_origenviron, PL_origenviron.333
	cmpq	%rax, %rdx	# PL_origenviron.333, environ.332
	jne	.L327	#,
.LBB40:
	.loc 1 1434 0
	movl	%ebx, -56(%rbp)	# i, max
	jmp	.L328	#
.L329:
	.loc 1 1434 0 is_stmt 0 discriminator 2
	addl	$1, -56(%rbp)	#, max
.L328:
	.loc 1 1434 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.334
	movl	-56(%rbp), %edx	# max, tmp195
	movslq	%edx, %rdx	# tmp195, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_14, D.14685
	testq	%rax, %rax	# D.14685
	jne	.L329	#,
	.loc 1 1435 0 is_stmt 1
	movl	-56(%rbp), %eax	# max, tmp196
	addl	$2, %eax	#, D.14686
	cltq
	salq	$3, %rax	#, D.14683
	movq	%rax, %rdi	# D.14683,
	call	Perl_safesysmalloc	#
	movq	%rax, -32(%rbp)	# tmp197, tmpenv
	.loc 1 1436 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L330	#
.L331:
.LBB41:
	.loc 1 1437 0 discriminator 2
	movq	environ(%rip), %rax	# environ, environ.335
	movl	-60(%rbp), %edx	# j, tmp198
	movslq	%edx, %rdx	# tmp198, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_25, D.14685
	movq	%rax, %rdi	# D.14685,
	call	strlen	#
	movl	%eax, -52(%rbp)	# D.14683, len
	.loc 1 1438 0 discriminator 2
	movl	-60(%rbp), %eax	# j, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14683
	movq	-32(%rbp), %rax	# tmpenv, tmp200
	leaq	(%rdx,%rax), %r12	#, D.14684
	movl	-52(%rbp), %eax	# len, tmp201
	addl	$1, %eax	#, D.14686
	cltq
	movq	%rax, %rdi	# D.14683,
	call	Perl_safesysmalloc	#
	movq	%rax, (%r12)	# D.14687, *_31
	.loc 1 1439 0 discriminator 2
	movl	-52(%rbp), %eax	# len, tmp202
	addl	$1, %eax	#, D.14686
	movslq	%eax, %rdx	# D.14686, D.14683
	movq	environ(%rip), %rax	# environ, environ.336
	movl	-60(%rbp), %ecx	# j, tmp203
	movslq	%ecx, %rcx	# tmp203, D.14683
	salq	$3, %rcx	#, D.14683
	addq	%rcx, %rax	# D.14683, D.14684
	movq	(%rax), %rcx	# *_40, D.14685
	movl	-60(%rbp), %eax	# j, tmp204
	cltq
	leaq	0(,%rax,8), %rsi	#, D.14683
	movq	-32(%rbp), %rax	# tmpenv, tmp205
	addq	%rsi, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_44, D.14685
	movq	%rcx, %rsi	# D.14685,
	movq	%rax, %rdi	# D.14685,
	call	memcpy	#
.LBE41:
	.loc 1 1436 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L330:
	.loc 1 1436 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# j, tmp206
	cmpl	-56(%rbp), %eax	# max, tmp206
	jl	.L331	#,
	.loc 1 1441 0 is_stmt 1
	movl	-56(%rbp), %eax	# max, tmp207
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14683
	movq	-32(%rbp), %rax	# tmpenv, tmp208
	addq	%rdx, %rax	# D.14683, D.14684
	movq	$0, (%rax)	#, *_49
	.loc 1 1442 0
	movq	-32(%rbp), %rax	# tmpenv, tmp209
	movq	%rax, environ(%rip)	# tmp209, environ
.L327:
.LBE40:
	.loc 1 1444 0
	cmpq	$0, -80(%rbp)	#, val
	jne	.L332	#,
	.loc 1 1445 0
	movq	environ(%rip), %rax	# environ, environ.337
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_54, D.14685
	movq	%rax, %rdi	# D.14685,
	call	Perl_safesysfree	#
	.loc 1 1446 0
	jmp	.L333	#
.L334:
	.loc 1 1447 0
	movq	environ(%rip), %rax	# environ, environ.338
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rax, %rdx	# environ.338, D.14684
	movq	environ(%rip), %rax	# environ, environ.339
	movslq	%ebx, %rcx	# i, D.14688
	addq	$1, %rcx	#, D.14688
	salq	$3, %rcx	#, D.14688
	addq	%rcx, %rax	# D.14688, D.14684
	movq	(%rax), %rax	# *_69, D.14685
	movq	%rax, (%rdx)	# D.14685, *_64
	.loc 1 1448 0
	addl	$1, %ebx	#, i
.L333:
	.loc 1 1446 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.340
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_59, D.14685
	testq	%rax, %rax	# D.14685
	jne	.L334	#,
	.loc 1 1450 0
	jmp	.L325	#
.L332:
	.loc 1 1452 0
	movq	environ(%rip), %rax	# environ, environ.341
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_75, D.14685
	testq	%rax, %rax	# D.14685
	jne	.L336	#,
	.loc 1 1453 0
	leal	2(%rbx), %eax	#, D.14686
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14683
	movq	environ(%rip), %rax	# environ, environ.342
	movq	%rdx, %rsi	# D.14683,
	movq	%rax, %rdi	# environ.342,
	call	Perl_safesysrealloc	#
	movq	%rax, environ(%rip)	# environ.343, environ
	.loc 1 1454 0
	movq	environ(%rip), %rax	# environ, environ.344
	movslq	%ebx, %rdx	# i, D.14688
	addq	$1, %rdx	#, D.14688
	salq	$3, %rdx	#, D.14688
	addq	%rdx, %rax	# D.14688, D.14684
	movq	$0, (%rax)	#, *_86
	jmp	.L337	#
.L336:
	.loc 1 1457 0
	movq	environ(%rip), %rax	# environ, environ.345
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_90, D.14685
	movq	%rax, %rdi	# D.14685,
	call	Perl_safesysfree	#
.L337:
	.loc 1 1458 0 discriminator 1
	movq	-72(%rbp), %rax	# nam, tmp210
	movq	%rax, %rdi	# tmp210,
	call	strlen	#
	movl	%eax, -48(%rbp)	# D.14683, nlen
	.loc 1 1459 0 discriminator 1
	movq	-80(%rbp), %rax	# val, tmp211
	movq	%rax, %rdi	# tmp211,
	call	strlen	#
	movl	%eax, -44(%rbp)	# D.14683, vlen
	.loc 1 1461 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.346
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	leaq	(%rax,%rdx), %r12	#, D.14684
	movl	-44(%rbp), %eax	# vlen, tmp212
	movl	-48(%rbp), %edx	# nlen, tmp213
	addl	%edx, %eax	# tmp213, D.14686
	addl	$2, %eax	#, D.14686
	cltq
	movq	%rax, %rdi	# D.14683,
	call	Perl_safesysmalloc	#
	movq	%rax, (%r12)	# D.14687, *_99
	.loc 1 1463 0 discriminator 1
	movl	-48(%rbp), %eax	# nlen, tmp214
	movslq	%eax, %rdx	# tmp214, D.14683
	movq	environ(%rip), %rax	# environ, environ.347
	movslq	%ebx, %rcx	# i, D.14683
	salq	$3, %rcx	#, D.14683
	addq	%rcx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_108, D.14685
	movq	-72(%rbp), %rcx	# nam, tmp215
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# D.14685,
	call	memcpy	#
	movq	environ(%rip), %rax	# environ, environ.348
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rdx	# *_113, D.14685
	movl	-48(%rbp), %eax	# nlen, tmp216
	cltq
	addq	%rdx, %rax	# D.14685, D.14685
	movb	$61, (%rax)	#, *_116
	movl	-44(%rbp), %eax	# vlen, tmp217
	movslq	%eax, %rdx	# tmp217, D.14683
	movq	environ(%rip), %rax	# environ, environ.349
	movslq	%ebx, %rcx	# i, D.14683
	salq	$3, %rcx	#, D.14683
	addq	%rcx, %rax	# D.14683, D.14684
	movq	(%rax), %rax	# *_121, D.14685
	movl	-48(%rbp), %ecx	# nlen, tmp218
	movslq	%ecx, %rcx	# tmp218, D.14688
	addq	$1, %rcx	#, D.14688
	addq	%rax, %rcx	# D.14685, D.14685
	movq	-80(%rbp), %rax	# val, tmp219
	movq	%rax, %rsi	# tmp219,
	movq	%rcx, %rdi	# D.14685,
	call	memcpy	#
	movq	environ(%rip), %rax	# environ, environ.350
	movslq	%ebx, %rdx	# i, D.14683
	salq	$3, %rdx	#, D.14683
	addq	%rdx, %rax	# D.14683, D.14684
	movq	(%rax), %rdx	# *_129, D.14685
	movl	-48(%rbp), %eax	# nlen, tmp220
	leal	1(%rax), %ecx	#, D.14686
	movl	-44(%rbp), %eax	# vlen, tmp221
	addl	%ecx, %eax	# D.14686, D.14686
	cltq
	addq	%rdx, %rax	# D.14685, D.14685
	movb	$0, (%rax)	#, *_134
.LBE39:
	jmp	.L325	#
.L326:
.LBB42:
	.loc 1 1470 0
	movq	-72(%rbp), %rax	# nam, tmp222
	movq	%rax, %rdi	# tmp222,
	call	strlen	#
	movl	%eax, -40(%rbp)	# D.14683, nlen
	.loc 1 1471 0
	cmpq	$0, -80(%rbp)	#, val
	jne	.L338	#,
	.loc 1 1472 0
	movq	$.LC1, -80(%rbp)	#, val
.L338:
	.loc 1 1474 0
	movq	-80(%rbp), %rax	# val, tmp223
	movq	%rax, %rdi	# tmp223,
	call	strlen	#
	movl	%eax, -36(%rbp)	# D.14683, vlen
	.loc 1 1475 0
	movl	-36(%rbp), %eax	# vlen, tmp224
	movl	-40(%rbp), %edx	# nlen, tmp225
	addl	%edx, %eax	# tmp225, D.14686
	addl	$2, %eax	#, D.14686
	cltq
	movq	%rax, %rdi	# D.14683,
	call	Perl_safesysmalloc	#
	movq	%rax, -24(%rbp)	# tmp226, new_env
	.loc 1 1477 0
	movl	-40(%rbp), %eax	# nlen, tmp227
	movslq	%eax, %rdx	# tmp227, D.14683
	movq	-72(%rbp), %rcx	# nam, tmp228
	movq	-24(%rbp), %rax	# new_env, tmp229
	movq	%rcx, %rsi	# tmp228,
	movq	%rax, %rdi	# tmp229,
	call	memcpy	#
	movl	-40(%rbp), %eax	# nlen, tmp230
	movslq	%eax, %rdx	# tmp230, D.14688
	movq	-24(%rbp), %rax	# new_env, tmp231
	addq	%rdx, %rax	# D.14688, D.14685
	movb	$61, (%rax)	#, *_146
	movl	-36(%rbp), %eax	# vlen, tmp232
	movslq	%eax, %rdx	# tmp232, D.14683
	movl	-40(%rbp), %eax	# nlen, tmp233
	cltq
	leaq	1(%rax), %rcx	#, D.14688
	movq	-24(%rbp), %rax	# new_env, tmp234
	addq	%rax, %rcx	# tmp234, D.14685
	movq	-80(%rbp), %rax	# val, tmp235
	movq	%rax, %rsi	# tmp235,
	movq	%rcx, %rdi	# D.14685,
	call	memcpy	#
	movl	-40(%rbp), %eax	# nlen, tmp236
	leal	1(%rax), %edx	#, D.14686
	movl	-36(%rbp), %eax	# vlen, tmp237
	addl	%edx, %eax	# D.14686, D.14686
	movslq	%eax, %rdx	# D.14686, D.14688
	movq	-24(%rbp), %rax	# new_env, tmp238
	addq	%rdx, %rax	# D.14688, D.14685
	movb	$0, (%rax)	#, *_154
	.loc 1 1478 0
	movq	-24(%rbp), %rax	# new_env, tmp239
	movq	%rax, %rdi	# tmp239,
	call	putenv	#
.L325:
.LBE42:
	.loc 1 1484 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_my_setenv, .-Perl_my_setenv
	.globl	Perl_setenv_getix
	.type	Perl_setenv_getix, @function
Perl_setenv_getix:
.LFB41:
	.loc 1 1509 0
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
	movq	%rdi, -24(%rbp)	# nam, nam
	.loc 1 1510 0
	movq	-24(%rbp), %rax	# nam, tmp84
	movq	%rax, %rdi	# tmp84,
	call	strlen	#
	movl	%eax, %r12d	# D.14689, len
	.loc 1 1512 0
	movl	$0, %ebx	#, i
	jmp	.L340	#
.L343:
	.loc 1 1517 0
	movslq	%r12d, %rdx	# len, D.14689
	movq	environ(%rip), %rax	# environ, environ.351
	movslq	%ebx, %rcx	# i, D.14689
	salq	$3, %rcx	#, D.14689
	addq	%rcx, %rax	# D.14689, D.14690
	movq	(%rax), %rax	# *_15, D.14691
	movq	-24(%rbp), %rcx	# nam, tmp85
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# D.14691,
	call	strncmp	#
	.loc 1 1513 0
	testl	%eax, %eax	# D.14692
	jne	.L341	#,
	.loc 1 1519 0
	movq	environ(%rip), %rax	# environ, environ.352
	movslq	%ebx, %rdx	# i, D.14689
	salq	$3, %rdx	#, D.14689
	addq	%rdx, %rax	# D.14689, D.14690
	movq	(%rax), %rdx	# *_21, D.14691
	movslq	%r12d, %rax	# len, D.14693
	addq	%rdx, %rax	# D.14691, D.14691
	movzbl	(%rax), %eax	# *_24, D.14694
	cmpb	$61, %al	#, D.14694
	jne	.L341	#,
	.loc 1 1520 0
	jmp	.L342	#
.L341:
	.loc 1 1512 0
	addl	$1, %ebx	#, i
.L340:
	.loc 1 1512 0 is_stmt 0 discriminator 1
	movq	environ(%rip), %rax	# environ, environ.353
	movslq	%ebx, %rdx	# i, D.14689
	salq	$3, %rdx	#, D.14689
	addq	%rdx, %rax	# D.14689, D.14690
	movq	(%rax), %rax	# *_9, D.14691
	testq	%rax, %rax	# D.14691
	jne	.L343	#,
.L342:
	.loc 1 1522 0 is_stmt 1
	movl	%ebx, %eax	# i, D.14695
	.loc 1 1523 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_setenv_getix, .-Perl_setenv_getix
	.globl	Perl_my_swap
	.type	Perl_my_swap, @function
Perl_my_swap:
.LFB42:
	.loc 1 1635 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# s, tmp67
	movw	%ax, -20(%rbp)	# tmp67, s
	.loc 1 1639 0
	movswl	-20(%rbp), %eax	# s, D.14696
	sall	$8, %eax	#, D.14696
	movzwl	-20(%rbp), %edx	# s, s.354
	shrw	$8, %dx	#, D.14697
	addl	%edx, %eax	# D.14697, D.14697
	movw	%ax, -2(%rbp)	# D.14697, result
	.loc 1 1640 0
	movzwl	-2(%rbp), %eax	# result, D.14698
	.loc 1 1644 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_my_swap, .-Perl_my_swap
	.globl	Perl_my_htonl
	.type	Perl_my_htonl, @function
Perl_my_htonl:
.LFB43:
	.loc 1 1648 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	.loc 1 1648 0
	movq	%fs:40, %rax	#, tmp73
	movq	%rax, -8(%rbp)	# tmp73, D.14701
	xorl	%eax, %eax	# tmp73
	.loc 1 1655 0
	movq	-24(%rbp), %rax	# l, tmp68
	sarq	$24, %rax	#, D.14699
	movb	%al, -16(%rbp)	# D.14700, u.c
	.loc 1 1656 0
	movq	-24(%rbp), %rax	# l, tmp69
	sarq	$16, %rax	#, D.14699
	movb	%al, -15(%rbp)	# D.14700, u.c
	.loc 1 1657 0
	movq	-24(%rbp), %rax	# l, tmp70
	sarq	$8, %rax	#, D.14699
	movb	%al, -14(%rbp)	# D.14700, u.c
	.loc 1 1658 0
	movq	-24(%rbp), %rax	# l, tmp71
	movb	%al, -13(%rbp)	# D.14700, u.c
	.loc 1 1659 0
	movq	-16(%rbp), %rax	# u.result, D.14699
	.loc 1 1673 0
	movq	-8(%rbp), %rdx	# D.14701, tmp74
	xorq	%fs:40, %rdx	#, tmp74
	je	.L349	#,
	call	__stack_chk_fail	#
.L349:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_my_htonl, .-Perl_my_htonl
	.globl	Perl_my_ntohl
	.type	Perl_my_ntohl, @function
Perl_my_ntohl:
.LFB44:
	.loc 1 1677 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	.loc 1 1677 0
	movq	%fs:40, %rax	#, tmp73
	movq	%rax, -8(%rbp)	# tmp73, D.14706
	xorl	%eax, %eax	# tmp73
	.loc 1 1684 0
	movq	-24(%rbp), %rax	# l, tmp68
	sarq	$24, %rax	#, D.14704
	movb	%al, -16(%rbp)	# D.14705, u.c
	.loc 1 1685 0
	movq	-24(%rbp), %rax	# l, tmp69
	sarq	$16, %rax	#, D.14704
	movb	%al, -15(%rbp)	# D.14705, u.c
	.loc 1 1686 0
	movq	-24(%rbp), %rax	# l, tmp70
	sarq	$8, %rax	#, D.14704
	movb	%al, -14(%rbp)	# D.14705, u.c
	.loc 1 1687 0
	movq	-24(%rbp), %rax	# l, tmp71
	movb	%al, -13(%rbp)	# D.14705, u.c
	.loc 1 1688 0
	movq	-16(%rbp), %rax	# u.l, D.14704
	.loc 1 1704 0
	movq	-8(%rbp), %rdx	# D.14706, tmp74
	xorq	%fs:40, %rdx	#, tmp74
	je	.L352	#,
	call	__stack_chk_fail	#
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_my_ntohl, .-Perl_my_ntohl
	.globl	htovs
	.type	htovs, @function
htovs:
.LFB45:
	.loc 1 1803 0
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
	movl	%edi, %eax	# n, tmp68
	movl	%eax, %esi	# tmp68, n
	.loc 1 1803 0
	movl	$0, %r12d	#, s
	movl	$0, %ebx	#, i
	jmp	.L354	#
.L355:
	.loc 1 1803 0 is_stmt 0 discriminator 2
	movswl	%si, %eax	# n, D.14707
	movl	%r12d, %ecx	# s, tmp71
	sarl	%cl, %eax	# tmp71, D.14707
	movl	%eax, %edx	# D.14707, D.14708
	movslq	%ebx, %rax	# i, tmp69
	movb	%dl, -32(%rbp,%rax)	# D.14708, u.c
	addl	$1, %ebx	#, i
	addl	$8, %r12d	#, s
.L354:
	.loc 1 1803 0 discriminator 1
	movl	%ebx, %eax	# i, i.355
	cmpl	$1, %eax	#, i.355
	jbe	.L355	#,
	.loc 1 1803 0 discriminator 3
	movzwl	-32(%rbp), %eax	# u.value, D.14709
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	htovs, .-htovs
	.globl	htovl
	.type	htovl, @function
htovl:
.LFB46:
	.loc 1 1806 0 is_stmt 1
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
	movq	%rdi, %rax	# n, n
	.loc 1 1806 0
	movq	%fs:40, %rsi	#, tmp69
	movq	%rsi, -24(%rbp)	# tmp69, D.14713
	xorl	%esi, %esi	# tmp69
	movl	$0, %r12d	#, s
	movl	$0, %ebx	#, i
	jmp	.L358	#
.L359:
	.loc 1 1806 0 is_stmt 0 discriminator 2
	movq	%rax, %rdx	# n, D.14711
	movl	%r12d, %ecx	# s, tmp72
	sarq	%cl, %rdx	# tmp72, D.14711
	movl	%edx, %ecx	# D.14711, D.14712
	movslq	%ebx, %rdx	# i, tmp67
	movb	%cl, -32(%rbp,%rdx)	# D.14712, u.c
	addl	$1, %ebx	#, i
	addl	$8, %r12d	#, s
.L358:
	.loc 1 1806 0 discriminator 1
	movl	%ebx, %edx	# i, i.356
	cmpl	$7, %edx	#, i.356
	jbe	.L359	#,
	.loc 1 1806 0 discriminator 3
	movq	-32(%rbp), %rax	# u.value, D.14711
	movq	-24(%rbp), %rsi	# D.14713, tmp70
	xorq	%fs:40, %rsi	#, tmp70
	je	.L361	#,
	.loc 1 1806 0
	call	__stack_chk_fail	#
.L361:
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	htovl, .-htovl
	.globl	vtohs
	.type	vtohs, @function
vtohs:
.LFB47:
	.loc 1 1809 0 is_stmt 1
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
	movl	%edi, %eax	# n, tmp70
	.loc 1 1809 0
	movl	$0, %r12d	#, s
	movw	%ax, -32(%rbp)	# n, u.value
	movl	$0, %eax	#, n
	movl	$0, %ebx	#, i
	jmp	.L363	#
.L364:
	.loc 1 1809 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rdx	# i, tmp71
	movzbl	-32(%rbp,%rdx), %edx	# u.c, D.14714
	movsbl	%dl, %edx	# D.14714, D.14715
	movzbl	%dl, %edx	# D.14715, D.14715
	movl	%r12d, %ecx	# s, tmp73
	sall	%cl, %edx	# tmp73, D.14715
	orl	%edx, %eax	# D.14716, n
	addl	$1, %ebx	#, i
	addl	$8, %r12d	#, s
.L363:
	.loc 1 1809 0 discriminator 1
	movl	%ebx, %edx	# i, i.357
	cmpl	$1, %edx	#, i.357
	jbe	.L364	#,
	.loc 1 1809 0 discriminator 3
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	vtohs, .-vtohs
	.globl	vtohl
	.type	vtohl, @function
vtohl:
.LFB48:
	.loc 1 1812 0 is_stmt 1
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
	movq	%rdi, %rax	# n, n
	.loc 1 1812 0
	movq	%fs:40, %rsi	#, tmp71
	movq	%rsi, -24(%rbp)	# tmp71, D.14720
	xorl	%esi, %esi	# tmp71
	movl	$0, %r12d	#, s
	movq	%rax, -32(%rbp)	# n, u.value
	movl	$0, %eax	#, n
	movl	$0, %ebx	#, i
	jmp	.L367	#
.L368:
	.loc 1 1812 0 is_stmt 0 discriminator 2
	movslq	%ebx, %rdx	# i, tmp69
	movzbl	-32(%rbp,%rdx), %edx	# u.c, D.14718
	movsbq	%dl, %rdx	# D.14718, D.14719
	movzbl	%dl, %edx	# D.14719, D.14719
	movl	%r12d, %ecx	# s, tmp73
	salq	%cl, %rdx	# tmp73, D.14719
	orq	%rdx, %rax	# D.14719, n
	addl	$1, %ebx	#, i
	addl	$8, %r12d	#, s
.L367:
	.loc 1 1812 0 discriminator 1
	movl	%ebx, %edx	# i, i.358
	cmpl	$7, %edx	#, i.358
	jbe	.L368	#,
	.loc 1 1812 0 discriminator 3
	movq	-24(%rbp), %rsi	# D.14720, tmp72
	xorq	%fs:40, %rsi	#, tmp72
	je	.L370	#,
	.loc 1 1812 0
	call	__stack_chk_fail	#
.L370:
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	vtohl, .-vtohl
	.globl	Perl_my_swabn
	.type	Perl_my_swabn, @function
Perl_my_swabn:
.LFB49:
	.loc 1 1943 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -32(%rbp)	# ptr, ptr
	movl	%esi, -36(%rbp)	# n, n
	.loc 1 1944 0
	movq	-32(%rbp), %rbx	# ptr, s
	.loc 1 1945 0
	movl	-36(%rbp), %eax	# n, tmp65
	cltq
	subq	$1, %rax	#, D.14721
	leaq	(%rbx,%rax), %r12	#, e
	.loc 1 1948 0
	movl	-36(%rbp), %eax	# n, tmp67
	movl	%eax, %edx	# tmp67, tmp68
	shrl	$31, %edx	#, tmp68
	addl	%edx, %eax	# tmp68, tmp69
	sarl	%eax	# tmp70
	movl	%eax, -36(%rbp)	# tmp70, n
	jmp	.L372	#
.L373:
	.loc 1 1949 0 discriminator 2
	movzbl	(%rbx), %r13d	# *s_2, tc
	.loc 1 1950 0 discriminator 2
	movzbl	(%r12), %eax	# *e_3, D.14722
	movb	%al, (%rbx)	# D.14722, *s_2
	.loc 1 1951 0 discriminator 2
	movb	%r13b, (%r12)	# tc, *e_3
	.loc 1 1948 0 discriminator 2
	addq	$1, %rbx	#, s
	subq	$1, %r12	#, e
	subl	$1, -36(%rbp)	#, n
.L372:
	.loc 1 1948 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, n
	jg	.L373	#,
	.loc 1 1953 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_my_swabn, .-Perl_my_swabn
	.section	.rodata
.LC10:
	.string	"EXEC"
.LC11:
	.string	"Insecure %s%s"
.LC12:
	.string	"panic: kid popen errno read"
	.text
	.globl	Perl_my_popen_list
	.type	Perl_my_popen_list, @function
Perl_my_popen_list:
.LFB50:
	.loc 1 1957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)	# mode, mode
	movl	%esi, -108(%rbp)	# n, n
	movq	%rdx, -120(%rbp)	# args, args
	.loc 1 1963 0
	movl	$0, -80(%rbp)	#, did_pipes
	.loc 1 1966 0
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
	.loc 1 1967 0
	movq	-104(%rbp), %rax	# mode, tmp132
	movzbl	(%rax), %eax	# *mode_6(D), D.14724
	cmpb	$119, %al	#, D.14724
	sete	%al	#, D.14725
	movzbl	%al, %ebx	# D.14725, This
	.loc 1 1968 0
	testl	%ebx, %ebx	# This
	sete	%al	#, D.14725
	movzbl	%al, %r12d	# D.14725, that
	.loc 1 1969 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.359
	testb	%al, %al	# PL_tainting.359
	je	.L375	#,
	.loc 1 1970 0
	call	Perl_taint_env	#
	.loc 1 1971 0
	movl	$.LC10, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_taint_proper	#
.L375:
	.loc 1 1973 0
	leaq	-64(%rbp), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	pipe	#
	testl	%eax, %eax	# D.14726
	jns	.L376	#,
	.loc 1 1974 0
	movl	$0, %eax	#, D.14723
	jmp	.L403	#
.L376:
	.loc 1 1976 0
	leaq	-48(%rbp), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	pipe	#
	testl	%eax, %eax	# D.14726
	js	.L378	#,
	.loc 1 1977 0
	movl	$1, -80(%rbp)	#, did_pipes
	.loc 1 1978 0
	jmp	.L379	#
.L378:
	jmp	.L379	#
.L382:
	.loc 1 1979 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_18, D.14726
	cmpl	$11, %eax	#, D.14726
	je	.L380	#,
	.loc 1 1980 0
	movslq	%ebx, %rax	# This, tmp135
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 1981 0
	movslq	%r12d, %rax	# that, tmp136
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 1982 0
	cmpl	$0, -80(%rbp)	#, did_pipes
	je	.L381	#,
	.loc 1 1983 0
	movl	-48(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 1984 0
	movl	-44(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
.L381:
	.loc 1 1986 0
	movl	$0, %eax	#, D.14723
	jmp	.L403	#
.L380:
	.loc 1 1988 0
	movl	$5, %edi	#,
	call	sleep	#
.L379:
	.loc 1 1978 0 discriminator 1
	call	Perl_my_fork	#
	movl	%eax, %r13d	#, pid
	testl	%r13d, %r13d	# pid
	js	.L382	#,
	.loc 1 1990 0
	testl	%r13d, %r13d	# pid
	jne	.L383	#,
	.loc 1 1997 0
	cmpl	$0, -80(%rbp)	#, did_pipes
	je	.L384	#,
	.loc 1 1998 0
	movl	-48(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 2001 0
	movl	-44(%rbp), %eax	# pp, D.14726
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.14726,
	movl	$0, %eax	#,
	call	fcntl	#
.L384:
	.loc 1 2005 0
	movslq	%r12d, %rax	# that, tmp137
	movl	-64(%rbp,%rax,4), %edx	# p, D.14726
	movq	-104(%rbp), %rax	# mode, tmp138
	movzbl	(%rax), %eax	# *mode_6(D), D.14724
	cmpb	$114, %al	#, D.14724
	sete	%al	#, D.14725
	movzbl	%al, %eax	# D.14725, D.14726
	cmpl	%eax, %edx	# D.14726, D.14726
	je	.L385	#,
	.loc 1 2006 0
	movq	-104(%rbp), %rax	# mode, tmp139
	movzbl	(%rax), %eax	# *mode_6(D), D.14724
	cmpb	$114, %al	#, D.14724
	sete	%al	#, D.14725
	movzbl	%al, %edx	# D.14725, D.14726
	movslq	%r12d, %rax	# that, tmp140
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%edx, %esi	# D.14726,
	movl	%eax, %edi	# D.14726,
	call	dup2	#
	.loc 1 2007 0
	movslq	%r12d, %rax	# that, tmp141
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 2008 0
	movslq	%ebx, %rax	# This, tmp142
	movl	-64(%rbp,%rax,4), %edx	# p, D.14726
	movq	-104(%rbp), %rax	# mode, tmp143
	movzbl	(%rax), %eax	# *mode_6(D), D.14724
	cmpb	$114, %al	#, D.14724
	sete	%al	#, D.14725
	movzbl	%al, %eax	# D.14725, D.14726
	cmpl	%eax, %edx	# D.14726, D.14726
	je	.L387	#,
	.loc 1 2009 0
	movslq	%ebx, %rax	# This, tmp144
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	jmp	.L387	#
.L385:
	.loc 1 2012 0
	movslq	%ebx, %rax	# This, tmp145
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
.L387:
	.loc 1 2027 0
	movl	-44(%rbp), %eax	# pp, D.14726
	movl	-108(%rbp), %edx	# n, tmp146
	movslq	%edx, %rdx	# tmp146, D.14728
	salq	$3, %rdx	#, D.14728
	leaq	-8(%rdx), %rcx	#, D.14729
	movq	-120(%rbp), %rdx	# args, tmp147
	addq	%rcx, %rdx	# D.14729, D.14730
	movq	-120(%rbp), %rcx	# args, tmp148
	leaq	-8(%rcx), %rsi	#, D.14730
	movl	-80(%rbp), %ecx	# did_pipes, tmp149
	movl	%ecx, %r8d	# tmp149,
	movl	%eax, %ecx	# D.14726,
	movl	$0, %edi	#,
	call	Perl_do_aexec5	#
	.loc 1 2028 0
	movl	$1, %edi	#,
	call	_exit	#
.L383:
	.loc 1 2033 0
	call	Perl_do_execfree	#
	.loc 1 2034 0
	cmpl	$0, -80(%rbp)	#, did_pipes
	je	.L388	#,
	.loc 1 2035 0
	movl	-44(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
.L388:
	.loc 1 2037 0
	movslq	%r12d, %rax	# that, tmp150
	movl	-64(%rbp,%rax,4), %edx	# p, D.14726
	movslq	%ebx, %rax	# This, tmp151
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	cmpl	%eax, %edx	# D.14726, D.14726
	jge	.L389	#,
	.loc 1 2038 0
	movslq	%r12d, %rax	# that, tmp152
	movl	-64(%rbp,%rax,4), %edx	# p, D.14726
	movslq	%ebx, %rax	# This, tmp153
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%edx, %esi	# D.14726,
	movl	%eax, %edi	# D.14726,
	call	dup2	#
	.loc 1 2039 0
	movslq	%ebx, %rax	# This, tmp154
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 2040 0
	movslq	%r12d, %rax	# that, tmp155
	movl	-64(%rbp,%rax,4), %edx	# p, D.14726
	movslq	%ebx, %rax	# This, tmp156
	movl	%edx, -64(%rbp,%rax,4)	# D.14726, p
	jmp	.L390	#
.L389:
	.loc 1 2043 0
	movslq	%r12d, %rax	# that, tmp157
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
.L390:
	.loc 1 2046 0
	movslq	%ebx, %rax	# This, tmp158
	movl	-64(%rbp,%rax,4), %ecx	# p, D.14726
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.360
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.14726,
	movq	%rax, %rdi	# PL_fdpid.360,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_60, tmp159
	movq	%rax, -40(%rbp)	# tmp159, sv
	.loc 1 2048 0
	movq	-40(%rbp), %rax	# sv, tmp160
	movl	12(%rax), %eax	# sv_61->sv_flags, D.14731
	movzbl	%al, %eax	# D.14731, D.14731
	testl	%eax, %eax	# D.14731
	jne	.L391	#,
	.loc 1 2048 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp161
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14724
	je	.L393	#,
.L391:
	.loc 1 2048 0 discriminator 1
	nop
.L393:
	.loc 1 2049 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp162
	movq	(%rax), %rax	# sv_61->sv_any, D.14732
	movslq	%r13d, %rdx	# pid, D.14733
	movq	%rdx, 24(%rax)	# D.14733, MEM[(struct XPVIV *)_67].xiv_iv
	.loc 1 2050 0
	movl	%r13d, PL_forkprocess(%rip)	# pid, PL_forkprocess
	.loc 1 2052 0
	cmpl	$0, -80(%rbp)	#, did_pipes
	je	.L394	#,
	.loc 1 2052 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# pid
	jle	.L394	#,
.LBB43:
	.loc 1 2054 0 is_stmt 1
	movl	$0, -76(%rbp)	#, n
	.loc 1 2056 0
	jmp	.L395	#
.L398:
	.loc 1 2057 0
	movl	-76(%rbp), %eax	# n, tmp163
	cltq
	movl	$4, %edx	#, tmp164
	subq	%rax, %rdx	# D.14728, D.14728
	movl	-76(%rbp), %eax	# n, tmp165
	cltq
	leaq	-88(%rbp), %rcx	#, tmp166
	addq	%rax, %rcx	# D.14729, D.14732
	movl	-48(%rbp), %eax	# pp, D.14726
	movq	%rcx, %rsi	# D.14732,
	movl	%eax, %edi	# D.14726,
	call	read	#
	movl	%eax, -72(%rbp)	# D.14733, n1
	.loc 1 2060 0
	cmpl	$0, -72(%rbp)	#, n1
	jg	.L396	#,
	.loc 1 2061 0
	jmp	.L397	#
.L396:
	.loc 1 2062 0
	movl	-72(%rbp), %eax	# n1, tmp167
	addl	%eax, -76(%rbp)	# tmp167, n
.L395:
	.loc 1 2056 0 discriminator 1
	movl	-76(%rbp), %eax	# n, n.362
	cmpl	$3, %eax	#, n.362
	jbe	.L398	#,
.L397:
	.loc 1 2064 0
	movl	-48(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 2065 0
	movl	$0, -80(%rbp)	#, did_pipes
	.loc 1 2066 0
	cmpl	$0, -76(%rbp)	#, n
	je	.L394	#,
.LBB44:
	.loc 1 2068 0
	movslq	%ebx, %rax	# This, tmp168
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
	.loc 1 2069 0
	cmpl	$4, -76(%rbp)	#, n
	je	.L400	#,
	.loc 1 2070 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L400:
	.loc 1 2072 0 discriminator 1
	leaq	-84(%rbp), %rax	#, tmp169
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp169,
	movl	%r13d, %edi	# pid,
	call	Perl_wait4pid	#
	movl	%eax, -68(%rbp)	# tmp170, pid2
	.loc 1 2073 0 discriminator 1
	cmpl	$-1, -68(%rbp)	#, pid2
	jne	.L401	#,
	call	__errno_location	#
	movl	(%rax), %eax	# *_83, D.14726
	cmpl	$4, %eax	#, D.14726
	je	.L400	#,
.L401:
	.loc 1 2074 0
	call	__errno_location	#
	movl	-88(%rbp), %edx	# errkid, errkid.363
	movl	%edx, (%rax)	# errkid.363, *_85
	.loc 1 2075 0
	movl	$0, %eax	#, D.14723
	jmp	.L403	#
.L394:
.LBE44:
.LBE43:
	.loc 1 2078 0
	cmpl	$0, -80(%rbp)	#, did_pipes
	je	.L402	#,
	.loc 1 2079 0
	movl	-48(%rbp), %eax	# pp, D.14726
	movl	%eax, %edi	# D.14726,
	call	close	#
.L402:
	.loc 1 2080 0
	movslq	%ebx, %rax	# This, tmp171
	movl	-64(%rbp,%rax,4), %eax	# p, D.14726
	movq	-104(%rbp), %rdx	# mode, tmp172
	movq	%rdx, %rsi	# tmp172,
	movl	%eax, %edi	# D.14726,
	call	PerlIO_fdopen	#
.L403:
	.loc 1 2085 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_my_popen_list, .-Perl_my_popen_list
	.section	.rodata
.LC13:
	.string	"Can't fork"
.LC14:
	.string	"$"
	.text
	.globl	Perl_my_popen
	.type	Perl_my_popen, @function
Perl_my_popen:
.LFB51:
	.loc 1 2091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)	# cmd, cmd
	movq	%rsi, -128(%rbp)	# mode, mode
	.loc 1 2096 0
	movq	-120(%rbp), %rax	# cmd, tmp153
	movzbl	(%rax), %eax	# *cmd_6(D), D.14738
	cmpb	$45, %al	#, D.14738
	jne	.L405	#,
	.loc 1 2096 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# cmd, tmp154
	addq	$1, %rax	#, D.14739
	movzbl	(%rax), %eax	# *_8, D.14738
	testb	%al, %al	# D.14738
	je	.L406	#,
.L405:
	.loc 1 2096 0 discriminator 1
	movl	$1, %eax	#, iftmp.364
	jmp	.L407	#
.L406:
	.loc 1 2096 0 discriminator 3
	movl	$0, %eax	#, iftmp.364
.L407:
	.loc 1 2096 0 discriminator 4
	movl	%eax, -92(%rbp)	# iftmp.364, doexec
	.loc 1 2097 0 is_stmt 1 discriminator 4
	movl	$0, -100(%rbp)	#, did_pipes
	.loc 1 2100 0 discriminator 4
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
	.loc 1 2106 0 discriminator 4
	movq	-128(%rbp), %rax	# mode, tmp155
	movzbl	(%rax), %eax	# *mode_14(D), D.14738
	cmpb	$119, %al	#, D.14738
	sete	%al	#, D.14740
	movzbl	%al, %ebx	# D.14740, This
	.loc 1 2107 0 discriminator 4
	testl	%ebx, %ebx	# This
	sete	%al	#, D.14740
	movzbl	%al, %r12d	# D.14740, that
	.loc 1 2108 0 discriminator 4
	cmpl	$0, -92(%rbp)	#, doexec
	je	.L408	#,
	.loc 1 2108 0 is_stmt 0 discriminator 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.365
	testb	%al, %al	# PL_tainting.365
	je	.L408	#,
	.loc 1 2109 0 is_stmt 1
	call	Perl_taint_env	#
	.loc 1 2110 0
	movl	$.LC10, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_taint_proper	#
.L408:
	.loc 1 2112 0
	leaq	-80(%rbp), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	pipe	#
	testl	%eax, %eax	# D.14741
	jns	.L409	#,
	.loc 1 2113 0
	movl	$0, %eax	#, D.14737
	jmp	.L439	#
.L409:
	.loc 1 2114 0
	cmpl	$0, -92(%rbp)	#, doexec
	je	.L411	#,
	.loc 1 2114 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	pipe	#
	testl	%eax, %eax	# D.14741
	js	.L411	#,
	.loc 1 2115 0 is_stmt 1
	movl	$1, -100(%rbp)	#, did_pipes
	.loc 1 2116 0
	jmp	.L412	#
.L411:
	jmp	.L412	#
.L416:
	.loc 1 2117 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_26, D.14741
	cmpl	$11, %eax	#, D.14741
	je	.L413	#,
	.loc 1 2118 0
	movslq	%ebx, %rax	# This, tmp158
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2119 0
	movslq	%r12d, %rax	# that, tmp159
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2120 0
	cmpl	$0, -100(%rbp)	#, did_pipes
	je	.L414	#,
	.loc 1 2121 0
	movl	-64(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2122 0
	movl	-60(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
.L414:
	.loc 1 2124 0
	cmpl	$0, -92(%rbp)	#, doexec
	jne	.L415	#,
	.loc 1 2125 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L415:
	.loc 1 2126 0
	movl	$0, %eax	#, D.14737
	jmp	.L439	#
.L413:
	.loc 1 2128 0
	movl	$5, %edi	#,
	call	sleep	#
.L412:
	.loc 1 2116 0 discriminator 1
	call	Perl_my_fork	#
	movl	%eax, %r13d	#, pid
	testl	%r13d, %r13d	# pid
	js	.L416	#,
	.loc 1 2130 0
	testl	%r13d, %r13d	# pid
	jne	.L417	#,
.LBB45:
	.loc 1 2137 0
	cmpl	$0, -100(%rbp)	#, did_pipes
	je	.L418	#,
	.loc 1 2138 0
	movl	-64(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2140 0
	movl	-60(%rbp), %eax	# pp, D.14741
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.14741,
	movl	$0, %eax	#,
	call	fcntl	#
.L418:
	.loc 1 2143 0
	movslq	%r12d, %rax	# that, tmp160
	movl	-80(%rbp,%rax,4), %edx	# p, D.14741
	movq	-128(%rbp), %rax	# mode, tmp161
	movzbl	(%rax), %eax	# *mode_14(D), D.14738
	cmpb	$114, %al	#, D.14738
	sete	%al	#, D.14740
	movzbl	%al, %eax	# D.14740, D.14741
	cmpl	%eax, %edx	# D.14741, D.14741
	je	.L419	#,
	.loc 1 2144 0
	movq	-128(%rbp), %rax	# mode, tmp162
	movzbl	(%rax), %eax	# *mode_14(D), D.14738
	cmpb	$114, %al	#, D.14738
	sete	%al	#, D.14740
	movzbl	%al, %edx	# D.14740, D.14741
	movslq	%r12d, %rax	# that, tmp163
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%edx, %esi	# D.14741,
	movl	%eax, %edi	# D.14741,
	call	dup2	#
	.loc 1 2145 0
	movslq	%r12d, %rax	# that, tmp164
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2146 0
	movslq	%ebx, %rax	# This, tmp165
	movl	-80(%rbp,%rax,4), %edx	# p, D.14741
	movq	-128(%rbp), %rax	# mode, tmp166
	movzbl	(%rax), %eax	# *mode_14(D), D.14738
	cmpb	$114, %al	#, D.14738
	sete	%al	#, D.14740
	movzbl	%al, %eax	# D.14740, D.14741
	cmpl	%eax, %edx	# D.14741, D.14741
	je	.L421	#,
	.loc 1 2147 0
	movslq	%ebx, %rax	# This, tmp167
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	jmp	.L421	#
.L419:
	.loc 1 2150 0
	movslq	%ebx, %rax	# This, tmp168
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
.L421:
	.loc 1 2152 0
	cmpl	$0, -92(%rbp)	#, doexec
	je	.L422	#,
	.loc 1 2168 0
	movl	-60(%rbp), %ecx	# pp, D.14741
	movl	-100(%rbp), %edx	# did_pipes, tmp169
	movq	-120(%rbp), %rax	# cmd, tmp170
	movl	%ecx, %esi	# D.14741,
	movq	%rax, %rdi	# tmp170,
	call	Perl_do_exec3	#
	.loc 1 2169 0
	movl	$1, %edi	#,
	call	_exit	#
.L422:
	.loc 1 2173 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -48(%rbp)	# tmp171, tmpgv
	cmpq	$0, -48(%rbp)	#, tmpgv
	je	.L423	#,
	.loc 1 2174 0
	movq	-48(%rbp), %rax	# tmpgv, tmp172
	movq	(%rax), %rax	# tmpgv_51->sv_any, D.14743
	movq	56(%rax), %rax	# _52->xgv_gp, D.14744
	movq	(%rax), %rax	# _53->gp_sv, D.14745
	movq	-48(%rbp), %rdx	# tmpgv, tmp173
	movq	(%rdx), %rdx	# tmpgv_51->sv_any, D.14743
	movq	56(%rdx), %rdx	# _55->xgv_gp, D.14744
	movq	(%rdx), %rdx	# _56->gp_sv, D.14745
	movl	12(%rdx), %edx	# _57->sv_flags, D.14746
	andl	$-8388609, %edx	#, D.14746
	movl	%edx, 12(%rax)	# D.14746, _54->sv_flags
	.loc 1 2175 0
	call	getpid	#
	movslq	%eax, %rdx	# D.14741, D.14747
	movq	-48(%rbp), %rax	# tmpgv, tmp174
	movq	(%rax), %rax	# tmpgv_51->sv_any, D.14743
	movq	56(%rax), %rax	# _62->xgv_gp, D.14744
	movq	(%rax), %rax	# _63->gp_sv, D.14745
	movq	%rdx, %rsi	# D.14747,
	movq	%rax, %rdi	# D.14745,
	call	Perl_sv_setiv	#
	.loc 1 2176 0
	movq	-48(%rbp), %rax	# tmpgv, tmp175
	movq	(%rax), %rax	# tmpgv_51->sv_any, D.14743
	movq	56(%rax), %rax	# _65->xgv_gp, D.14744
	movq	(%rax), %rax	# _66->gp_sv, D.14745
	movq	-48(%rbp), %rdx	# tmpgv, tmp176
	movq	(%rdx), %rdx	# tmpgv_51->sv_any, D.14743
	movq	56(%rdx), %rdx	# _68->xgv_gp, D.14744
	movq	(%rdx), %rdx	# _69->gp_sv, D.14745
	movl	12(%rdx), %edx	# _70->sv_flags, D.14746
	orl	$8388608, %edx	#, D.14746
	movl	%edx, 12(%rax)	# D.14746, _67->sv_flags
.L423:
	.loc 1 2181 0
	movl	$0, PL_forkprocess(%rip)	#, PL_forkprocess
	.loc 1 2182 0
	movq	PL_pidstatus(%rip), %rax	# PL_pidstatus, PL_pidstatus.366
	movq	%rax, %rdi	# PL_pidstatus.366,
	call	Perl_hv_clear	#
	.loc 1 2183 0
	movl	$0, %eax	#, D.14737
	jmp	.L439	#
.L417:
.LBE45:
	.loc 1 2187 0
	call	Perl_do_execfree	#
	.loc 1 2188 0
	cmpl	$0, -100(%rbp)	#, did_pipes
	je	.L424	#,
	.loc 1 2189 0
	movl	-60(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
.L424:
	.loc 1 2190 0
	movslq	%r12d, %rax	# that, tmp177
	movl	-80(%rbp,%rax,4), %edx	# p, D.14741
	movslq	%ebx, %rax	# This, tmp178
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	cmpl	%eax, %edx	# D.14741, D.14741
	jge	.L425	#,
	.loc 1 2191 0
	movslq	%r12d, %rax	# that, tmp179
	movl	-80(%rbp,%rax,4), %edx	# p, D.14741
	movslq	%ebx, %rax	# This, tmp180
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%edx, %esi	# D.14741,
	movl	%eax, %edi	# D.14741,
	call	dup2	#
	.loc 1 2192 0
	movslq	%ebx, %rax	# This, tmp181
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2193 0
	movslq	%r12d, %rax	# that, tmp182
	movl	-80(%rbp,%rax,4), %edx	# p, D.14741
	movslq	%ebx, %rax	# This, tmp183
	movl	%edx, -80(%rbp,%rax,4)	# D.14741, p
	jmp	.L426	#
.L425:
	.loc 1 2196 0
	movslq	%r12d, %rax	# that, tmp184
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
.L426:
	.loc 1 2199 0
	movslq	%ebx, %rax	# This, tmp185
	movl	-80(%rbp,%rax,4), %ecx	# p, D.14741
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.367
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.14741,
	movq	%rax, %rdi	# PL_fdpid.367,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_85, tmp186
	movq	%rax, -40(%rbp)	# tmp186, sv
	.loc 1 2201 0
	movq	-40(%rbp), %rax	# sv, tmp187
	movl	12(%rax), %eax	# sv_86->sv_flags, D.14746
	movzbl	%al, %eax	# D.14746, D.14746
	testl	%eax, %eax	# D.14746
	jne	.L427	#,
	.loc 1 2201 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp188
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14738
	je	.L429	#,
.L427:
	.loc 1 2201 0 discriminator 1
	nop
.L429:
	.loc 1 2202 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp189
	movq	(%rax), %rax	# sv_86->sv_any, D.14749
	movslq	%r13d, %rdx	# pid, D.14747
	movq	%rdx, 24(%rax)	# D.14747, MEM[(struct XPVIV *)_92].xiv_iv
	.loc 1 2203 0
	movl	%r13d, PL_forkprocess(%rip)	# pid, PL_forkprocess
	.loc 1 2204 0
	cmpl	$0, -100(%rbp)	#, did_pipes
	je	.L430	#,
	.loc 1 2204 0 is_stmt 0 discriminator 1
	testl	%r13d, %r13d	# pid
	jle	.L430	#,
.LBB46:
	.loc 1 2206 0 is_stmt 1
	movl	$0, -96(%rbp)	#, n
	.loc 1 2208 0
	jmp	.L431	#
.L434:
	.loc 1 2209 0
	movl	-96(%rbp), %eax	# n, tmp190
	cltq
	movl	$4, %edx	#, tmp191
	subq	%rax, %rdx	# D.14750, D.14750
	movl	-96(%rbp), %eax	# n, tmp192
	cltq
	leaq	-108(%rbp), %rcx	#, tmp193
	addq	%rax, %rcx	# D.14751, D.14749
	movl	-64(%rbp), %eax	# pp, D.14741
	movq	%rcx, %rsi	# D.14749,
	movl	%eax, %edi	# D.14741,
	call	read	#
	movl	%eax, -88(%rbp)	# D.14747, n1
	.loc 1 2212 0
	cmpl	$0, -88(%rbp)	#, n1
	jg	.L432	#,
	.loc 1 2213 0
	jmp	.L433	#
.L432:
	.loc 1 2214 0
	movl	-88(%rbp), %eax	# n1, tmp194
	addl	%eax, -96(%rbp)	# tmp194, n
.L431:
	.loc 1 2208 0 discriminator 1
	movl	-96(%rbp), %eax	# n, n.369
	cmpl	$3, %eax	#, n.369
	jbe	.L434	#,
.L433:
	.loc 1 2216 0
	movl	-64(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2217 0
	movl	$0, -100(%rbp)	#, did_pipes
	.loc 1 2218 0
	cmpl	$0, -96(%rbp)	#, n
	je	.L430	#,
.LBB47:
	.loc 1 2220 0
	movslq	%ebx, %rax	# This, tmp195
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
	.loc 1 2221 0
	cmpl	$4, -96(%rbp)	#, n
	je	.L436	#,
	.loc 1 2222 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L436:
	.loc 1 2224 0 discriminator 1
	leaq	-104(%rbp), %rax	#, tmp196
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp196,
	movl	%r13d, %edi	# pid,
	call	Perl_wait4pid	#
	movl	%eax, -84(%rbp)	# tmp197, pid2
	.loc 1 2225 0 discriminator 1
	cmpl	$-1, -84(%rbp)	#, pid2
	jne	.L437	#,
	call	__errno_location	#
	movl	(%rax), %eax	# *_108, D.14741
	cmpl	$4, %eax	#, D.14741
	je	.L436	#,
.L437:
	.loc 1 2226 0
	call	__errno_location	#
	movl	-108(%rbp), %edx	# errkid, errkid.370
	movl	%edx, (%rax)	# errkid.370, *_110
	.loc 1 2227 0
	movl	$0, %eax	#, D.14737
	jmp	.L439	#
.L430:
.LBE47:
.LBE46:
	.loc 1 2230 0
	cmpl	$0, -100(%rbp)	#, did_pipes
	je	.L438	#,
	.loc 1 2231 0
	movl	-64(%rbp), %eax	# pp, D.14741
	movl	%eax, %edi	# D.14741,
	call	close	#
.L438:
	.loc 1 2232 0
	movslq	%ebx, %rax	# This, tmp198
	movl	-80(%rbp,%rax,4), %eax	# p, D.14741
	movq	-128(%rbp), %rdx	# mode, tmp199
	movq	%rdx, %rsi	# tmp199,
	movl	%eax, %edi	# D.14741,
	call	PerlIO_fdopen	#
.L439:
	.loc 1 2233 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_my_popen, .-Perl_my_popen
	.globl	Perl_atfork_lock
	.type	Perl_atfork_lock, @function
Perl_atfork_lock:
.LFB52:
	.loc 1 2268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2276 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_atfork_lock, .-Perl_atfork_lock
	.globl	Perl_atfork_unlock
	.type	Perl_atfork_unlock, @function
Perl_atfork_unlock:
.LFB53:
	.loc 1 2281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2289 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_atfork_unlock, .-Perl_atfork_unlock
	.globl	Perl_my_fork
	.type	Perl_my_fork, @function
Perl_my_fork:
.LFB54:
	.loc 1 2293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2303 0
	call	fork	#
	movl	%eax, -4(%rbp)	# tmp61, pid
	.loc 1 2305 0
	movl	-4(%rbp), %eax	# pid, D.14754
	.loc 1 2311 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_my_fork, .-Perl_my_fork
	.globl	dup2
	.type	dup2, @function
dup2:
.LFB55:
	.loc 1 2332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# oldfd, oldfd
	movl	%esi, -8(%rbp)	# newfd, newfd
	.loc 1 2334 0
	movl	-4(%rbp), %eax	# oldfd, tmp61
	cmpl	-8(%rbp), %eax	# newfd, tmp61
	jne	.L445	#,
	.loc 1 2335 0
	movl	-4(%rbp), %eax	# oldfd, D.14755
	jmp	.L446	#
.L445:
	.loc 1 2336 0
	movl	-8(%rbp), %eax	# newfd, tmp62
	movl	%eax, %edi	# tmp62,
	call	close	#
	.loc 1 2337 0
	movl	-8(%rbp), %edx	# newfd, tmp63
	movl	-4(%rbp), %eax	# oldfd, tmp64
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp64,
	movl	$0, %eax	#,
	call	fcntl	#
.L446:
	.loc 1 2360 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	dup2, .-dup2
	.globl	Perl_rsignal
	.type	Perl_rsignal, @function
Perl_rsignal:
.LFB56:
	.loc 1 2451 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# signo, signo
	movq	%rsi, -16(%rbp)	# handler, handler
	.loc 1 2458 0
	movq	-16(%rbp), %rdx	# handler, tmp61
	movl	-4(%rbp), %eax	# signo, tmp62
	movq	%rdx, %rsi	# tmp61,
	movl	%eax, %edi	# tmp62,
	call	signal	#
	.loc 1 2459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	Perl_rsignal, .-Perl_rsignal
	.local	sig_trapped
	.comm	sig_trapped,4,4
	.type	sig_trap, @function
sig_trap:
.LFB57:
	.loc 1 2467 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# signo, signo
	.loc 1 2468 0
	movl	sig_trapped(%rip), %eax	# sig_trapped, sig_trapped.371
	addl	$1, %eax	#, sig_trapped.372
	movl	%eax, sig_trapped(%rip)	# sig_trapped.372, sig_trapped
	.loc 1 2469 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	sig_trap, .-sig_trap
	.globl	Perl_rsignal_state
	.type	Perl_rsignal_state, @function
Perl_rsignal_state:
.LFB58:
	.loc 1 2473 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# signo, signo
	.loc 1 2482 0
	movl	$0, sig_trapped(%rip)	#, sig_trapped
	.loc 1 2483 0
	movl	-20(%rbp), %eax	# signo, tmp63
	movl	$sig_trap, %esi	#,
	movl	%eax, %edi	# tmp63,
	call	signal	#
	movq	%rax, -8(%rbp)	# tmp64, oldsig
	.loc 1 2484 0
	movq	-8(%rbp), %rdx	# oldsig, tmp65
	movl	-20(%rbp), %eax	# signo, tmp66
	movq	%rdx, %rsi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	signal	#
	.loc 1 2485 0
	movl	sig_trapped(%rip), %eax	# sig_trapped, sig_trapped.373
	testl	%eax, %eax	# sig_trapped.373
	je	.L451	#,
	.loc 1 2486 0
	call	getpid	#
	movl	-20(%rbp), %edx	# signo, tmp67
	movl	%edx, %esi	# tmp67,
	movl	%eax, %edi	# D.14757,
	call	kill	#
.L451:
	.loc 1 2487 0
	movq	-8(%rbp), %rax	# oldsig, D.14758
	.loc 1 2488 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	Perl_rsignal_state, .-Perl_rsignal_state
	.globl	Perl_rsignal_save
	.type	Perl_rsignal_save, @function
Perl_rsignal_save:
.LFB59:
	.loc 1 2492 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# signo, signo
	movq	%rsi, -16(%rbp)	# handler, handler
	movq	%rdx, -24(%rbp)	# save, save
	.loc 1 2498 0
	movq	-16(%rbp), %rdx	# handler, tmp64
	movl	-4(%rbp), %eax	# signo, tmp65
	movq	%rdx, %rsi	# tmp64,
	movl	%eax, %edi	# tmp65,
	call	signal	#
	movq	-24(%rbp), %rdx	# save, tmp66
	movq	%rax, (%rdx)	# D.14759, *save_5(D)
	.loc 1 2499 0
	movq	-24(%rbp), %rax	# save, tmp67
	movq	(%rax), %rax	# *save_5(D), D.14759
	cmpq	$-1, %rax	#, D.14759
	jne	.L454	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.374
	jmp	.L455	#
.L454:
	.loc 1 2499 0 discriminator 2
	movl	$0, %eax	#, iftmp.374
.L455:
	.loc 1 2500 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	Perl_rsignal_save, .-Perl_rsignal_save
	.globl	Perl_rsignal_restore
	.type	Perl_rsignal_restore, @function
Perl_rsignal_restore:
.LFB60:
	.loc 1 2504 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# signo, signo
	movq	%rsi, -16(%rbp)	# save, save
	.loc 1 2510 0
	movq	-16(%rbp), %rax	# save, tmp64
	movq	(%rax), %rdx	# *save_2(D), D.14761
	movl	-4(%rbp), %eax	# signo, tmp65
	movq	%rdx, %rsi	# D.14761,
	movl	%eax, %edi	# tmp65,
	call	signal	#
	cmpq	$-1, %rax	#, D.14761
	jne	.L458	#,
	.loc 1 2510 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.375
	jmp	.L459	#
.L458:
	.loc 1 2510 0 discriminator 2
	movl	$0, %eax	#, iftmp.375
.L459:
	.loc 1 2511 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	Perl_rsignal_restore, .-Perl_rsignal_restore
	.globl	Perl_my_pclose
	.type	Perl_my_pclose, @function
Perl_my_pclose:
.LFB61:
	.loc 1 2520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# ptr, ptr
	.loc 1 2527 0
	movl	$0, -44(%rbp)	#, saved_errno
	.loc 1 2536 0
	movq	-72(%rbp), %rax	# ptr, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_PerlIO_fileno	#
	movl	%eax, %ecx	#, D.14764
	movq	PL_fdpid(%rip), %rax	# PL_fdpid, PL_fdpid.376
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.14764,
	movq	%rax, %rdi	# PL_fdpid.376,
	call	Perl_av_fetch	#
	movq	%rax, -8(%rbp)	# tmp82, svp
	.loc 1 2538 0
	movq	-8(%rbp), %rax	# svp, tmp83
	movq	(%rax), %rax	# *svp_10, D.14765
	movl	12(%rax), %eax	# _11->sv_flags, D.14766
	movzbl	%al, %eax	# D.14766, D.14766
	cmpl	$1, %eax	#, D.14766
	jne	.L462	#,
	.loc 1 2538 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# svp, tmp84
	movq	(%rax), %rax	# *svp_10, D.14765
	movq	(%rax), %rax	# _14->sv_any, D.14767
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_15].xiv_iv, D.14768
	jmp	.L463	#
.L462:
	.loc 1 2538 0 discriminator 2
	movl	$-1, %eax	#, iftmp.377
.L463:
	.loc 1 2538 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.377, pid
	.loc 1 2539 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# svp, tmp85
	movq	(%rax), %rax	# *svp_10, D.14765
	movq	%rax, %rdi	# D.14765,
	call	Perl_sv_free	#
	.loc 1 2540 0 discriminator 3
	movq	-8(%rbp), %rax	# svp, tmp86
	movq	$PL_sv_undef, (%rax)	#, *svp_10
	.loc 1 2546 0 discriminator 3
	movq	-72(%rbp), %rax	# ptr, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_PerlIO_close	#
	cmpl	$-1, %eax	#, D.14764
	sete	%al	#, D.14769
	movb	%al, -49(%rbp)	# D.14769, close_failed
	cmpb	$0, -49(%rbp)	#, close_failed
	je	.L464	#,
	.loc 1 2547 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_24, tmp88
	movl	%eax, -44(%rbp)	# tmp88, saved_errno
.L464:
	.loc 1 2559 0
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	Perl_rsignal_save	#
	.loc 1 2560 0
	leaq	-24(%rbp), %rax	#, tmp90
	movq	%rax, %rdx	# tmp90,
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	Perl_rsignal_save	#
	.loc 1 2561 0
	leaq	-16(%rbp), %rax	#, tmp91
	movq	%rax, %rdx	# tmp91,
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	Perl_rsignal_save	#
.L466:
	.loc 1 2564 0 discriminator 1
	leaq	-48(%rbp), %rcx	#, tmp92
	movl	-40(%rbp), %eax	# pid, tmp93
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp92,
	movl	%eax, %edi	# tmp93,
	call	Perl_wait4pid	#
	movl	%eax, -36(%rbp)	# tmp94, pid2
	.loc 1 2565 0 discriminator 1
	cmpl	$-1, -36(%rbp)	#, pid2
	jne	.L465	#,
	call	__errno_location	#
	movl	(%rax), %eax	# *_27, D.14764
	cmpl	$4, %eax	#, D.14764
	je	.L466	#,
.L465:
	.loc 1 2567 0
	leaq	-32(%rbp), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$1, %edi	#,
	call	Perl_rsignal_restore	#
	.loc 1 2568 0
	leaq	-24(%rbp), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	movl	$2, %edi	#,
	call	Perl_rsignal_restore	#
	.loc 1 2569 0
	leaq	-16(%rbp), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	movl	$3, %edi	#,
	call	Perl_rsignal_restore	#
	.loc 1 2571 0
	cmpb	$0, -49(%rbp)	#, close_failed
	je	.L467	#,
	.loc 1 2572 0
	call	__errno_location	#
	movl	-44(%rbp), %edx	# saved_errno, tmp98
	movl	%edx, (%rax)	# tmp98, *_29
	.loc 1 2573 0
	movl	$-1, %eax	#, D.14763
	jmp	.L473	#
.L467:
	.loc 1 2575 0
	cmpl	$0, -36(%rbp)	#, pid2
	js	.L469	#,
	.loc 1 2575 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# status, status.380
	testl	%eax, %eax	# status.380
	je	.L470	#,
	.loc 1 2575 0 discriminator 3
	call	__errno_location	#
	movl	$0, (%rax)	#, *_32
	movl	-48(%rbp), %eax	# status, iftmp.379
	jmp	.L472	#
.L470:
	.loc 1 2575 0 discriminator 4
	movl	$0, %eax	#, iftmp.379
	jmp	.L473	#
.L469:
	.loc 1 2575 0 discriminator 2
	movl	-36(%rbp), %eax	# pid2, iftmp.378
.L472:
.L473:
	.loc 1 2576 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	Perl_my_pclose, .-Perl_my_pclose
	.globl	Perl_wait4pid
	.type	Perl_wait4pid, @function
Perl_wait4pid:
.LFB62:
	.loc 1 2582 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pid, pid
	movq	%rsi, -32(%rbp)	# statusp, statusp
	movl	%edx, -24(%rbp)	# flags, flags
	.loc 1 2584 0
	cmpl	$0, -20(%rbp)	#, pid
	jne	.L475	#,
	.loc 1 2585 0
	movl	$-1, %eax	#, D.14771
	jmp	.L476	#
.L475:
	.loc 1 2621 0
	movl	-24(%rbp), %edx	# flags, tmp64
	movq	-32(%rbp), %rcx	# statusp, tmp65
	movl	-20(%rbp), %eax	# pid, tmp66
	movq	%rcx, %rsi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	waitpid	#
	movl	%eax, -4(%rbp)	# tmp67, result
	.loc 1 2622 0
	nop
.L477:
	.loc 1 2642 0
	cmpl	$0, -4(%rbp)	#, result
	jns	.L478	#,
	.loc 1 2642 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_7, D.14773
	cmpl	$4, %eax	#, D.14773
	jne	.L478	#,
	.loc 1 2643 0 is_stmt 1
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.381
	testl	%eax, %eax	# PL_sig_pending.381
	je	.L478	#,
	.loc 1 2643 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L478:
	.loc 1 2645 0 is_stmt 1
	movl	-4(%rbp), %eax	# result, D.14771
.L476:
	.loc 1 2646 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	Perl_wait4pid, .-Perl_wait4pid
	.section	.rodata
.LC15:
	.string	"%ld"
	.text
	.globl	Perl_pidgone
	.type	Perl_pidgone, @function
Perl_pidgone:
.LFB63:
	.loc 1 2652 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# pid, pid
	movl	%esi, -56(%rbp)	# status, status
	.loc 1 2652 0
	movq	%fs:40, %rax	#, tmp77
	movq	%rax, -24(%rbp)	# tmp77, D.14781
	xorl	%eax, %eax	# tmp77
	.loc 1 2656 0
	movl	-52(%rbp), %eax	# pid, tmp72
	movslq	%eax, %rdx	# tmp72, D.14774
	leaq	-48(%rbp), %rax	#, tmp73
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 2657 0
	leaq	-48(%rbp), %rax	#, tmp74
	movq	%rax, %rdi	# tmp74,
	call	strlen	#
	movl	%eax, %edx	# D.14775, D.14776
	movq	PL_pidstatus(%rip), %rax	# PL_pidstatus, PL_pidstatus.382
	leaq	-48(%rbp), %rsi	#, tmp75
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# PL_pidstatus.382,
	call	Perl_hv_fetch	#
	movq	(%rax), %rbx	# *_6, sv
	.loc 1 2658 0
	movl	12(%rbx), %eax	# sv_7->sv_flags, D.14778
	movzbl	%al, %eax	# D.14778, D.14778
	testl	%eax, %eax	# D.14778
	jne	.L480	#,
	.loc 1 2658 0 is_stmt 0 discriminator 2
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14779
	je	.L482	#,
.L480:
	.loc 1 2658 0 discriminator 1
	nop
.L482:
	.loc 1 2659 0 is_stmt 1
	movq	(%rbx), %rax	# sv_7->sv_any, D.14780
	movl	-56(%rbp), %edx	# status, tmp76
	movslq	%edx, %rdx	# tmp76, D.14774
	movq	%rdx, 24(%rax)	# D.14774, MEM[(struct XPVIV *)_13].xiv_iv
	.loc 1 2660 0
	nop
	.loc 1 2661 0
	movq	-24(%rbp), %rax	# D.14781, tmp78
	xorq	%fs:40, %rax	#, tmp78
	je	.L484	#,
	call	__stack_chk_fail	#
.L484:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	Perl_pidgone, .-Perl_pidgone
	.globl	Perl_repeatcpy
	.type	Perl_repeatcpy, @function
Perl_repeatcpy:
.LFB64:
	.loc 1 2698 0
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
	movq	%rsi, %rax	# from, from
	movl	%edx, -20(%rbp)	# len, len
	movl	%ecx, %edx	# count, count
	.loc 1 2700 0
	movq	%rax, %r12	# from, frombase
	.loc 1 2702 0
	cmpl	$1, -20(%rbp)	#, len
	jne	.L486	#,
.LBB48:
	.loc 1 2703 0
	movzbl	(%rax), %ebx	# *from_9(D), c
	.loc 1 2704 0
	jmp	.L487	#
.L488:
	.loc 1 2705 0
	movq	%rdi, %rax	# to, to.384
	leaq	1(%rax), %rdi	#, to
	movb	%bl, (%rax)	# c, *to.384_17
.L487:
	.loc 1 2704 0 discriminator 1
	movl	%edx, %eax	# count, count.385
	leal	-1(%rax), %edx	#, count
	testl	%eax, %eax	# count.385
	jg	.L488	#,
	.loc 1 2706 0
	jmp	.L485	#
.L486:
.LBE48:
	.loc 1 2708 0
	jmp	.L490	#
.L493:
	.loc 1 2709 0
	movl	-20(%rbp), %ebx	# len, todo
	jmp	.L491	#
.L492:
	.loc 1 2710 0 discriminator 2
	movq	%rdi, %rcx	# to, to.386
	leaq	1(%rcx), %rdi	#, to
	movq	%rax, %rsi	# from, from.387
	leaq	1(%rsi), %rax	#, from
	movzbl	(%rsi), %esi	# *from.387_24, D.14783
	movb	%sil, (%rcx)	# D.14783, *to.386_22
	.loc 1 2709 0 discriminator 2
	subl	$1, %ebx	#, todo
.L491:
	.loc 1 2709 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# todo
	jg	.L492	#,
	.loc 1 2712 0 is_stmt 1
	movq	%r12, %rax	# frombase, from
.L490:
	.loc 1 2708 0 discriminator 1
	movl	%edx, %ecx	# count, count.388
	leal	-1(%rcx), %edx	#, count
	testl	%ecx, %ecx	# count.388
	jg	.L493	#,
.L485:
	.loc 1 2714 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	Perl_repeatcpy, .-Perl_repeatcpy
	.section	.rodata
.LC16:
	.string	"."
	.text
	.globl	Perl_same_dirent
	.type	Perl_same_dirent, @function
Perl_same_dirent:
.LFB65:
	.loc 1 2719 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movq	%rdi, -328(%rbp)	# a, a
	movq	%rsi, -336(%rbp)	# b, b
	.loc 1 2720 0
	movq	-328(%rbp), %rax	# a, tmp81
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	strrchr	#
	movq	%rax, -312(%rbp)	# tmp82, fa
	.loc 1 2721 0
	movq	-336(%rbp), %rax	# b, tmp83
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	strrchr	#
	movq	%rax, -304(%rbp)	# tmp84, fb
	.loc 1 2724 0
	call	Perl_sv_newmortal	#
	movq	%rax, -296(%rbp)	# tmp85, tmpsv
	.loc 1 2726 0
	cmpq	$0, -312(%rbp)	#, fa
	je	.L495	#,
	.loc 1 2727 0
	addq	$1, -312(%rbp)	#, fa
	jmp	.L496	#
.L495:
	.loc 1 2729 0
	movq	-328(%rbp), %rax	# a, tmp86
	movq	%rax, -312(%rbp)	# tmp86, fa
.L496:
	.loc 1 2730 0
	cmpq	$0, -304(%rbp)	#, fb
	je	.L497	#,
	.loc 1 2731 0
	addq	$1, -304(%rbp)	#, fb
	jmp	.L498	#
.L497:
	.loc 1 2733 0
	movq	-336(%rbp), %rax	# b, tmp87
	movq	%rax, -304(%rbp)	# tmp87, fb
.L498:
	.loc 1 2734 0
	movq	-336(%rbp), %rdx	# b, tmp88
	movq	-328(%rbp), %rax	# a, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	strcmp	#
	testl	%eax, %eax	# D.14785
	je	.L499	#,
	.loc 1 2735 0
	movl	$0, %eax	#, D.14784
	jmp	.L509	#
.L499:
	.loc 1 2736 0
	movq	-312(%rbp), %rax	# fa, tmp90
	cmpq	-328(%rbp), %rax	# a, tmp90
	jne	.L501	#,
	.loc 1 2737 0
	movq	-296(%rbp), %rax	# tmpsv, tmp91
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_setpv	#
	jmp	.L502	#
.L501:
	.loc 1 2739 0
	movq	-312(%rbp), %rdx	# fa, fa.389
	movq	-328(%rbp), %rax	# a, a.390
	subq	%rax, %rdx	# a.390, D.14786
	movq	%rdx, %rax	# D.14786, D.14786
	movq	%rax, %rdx	# D.14786, D.14787
	movq	-328(%rbp), %rcx	# a, tmp92
	movq	-296(%rbp), %rax	# tmpsv, tmp93
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_setpvn	#
.L502:
	.loc 1 2740 0
	movq	-296(%rbp), %rax	# tmpsv, tmp94
	movq	(%rax), %rax	# tmpsv_9->sv_any, D.14788
	movq	(%rax), %rax	# MEM[(struct XPV *)_20].xpv_pv, D.14789
	leaq	-288(%rbp), %rdx	#, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# D.14789,
	call	stat	#
	testl	%eax, %eax	# D.14785
	jns	.L503	#,
	.loc 1 2741 0
	movl	$0, %eax	#, D.14784
	jmp	.L509	#
.L503:
	.loc 1 2742 0
	movq	-304(%rbp), %rax	# fb, tmp96
	cmpq	-336(%rbp), %rax	# b, tmp96
	jne	.L504	#,
	.loc 1 2743 0
	movq	-296(%rbp), %rax	# tmpsv, tmp97
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_setpv	#
	jmp	.L505	#
.L504:
	.loc 1 2745 0
	movq	-304(%rbp), %rdx	# fb, fb.391
	movq	-336(%rbp), %rax	# b, b.392
	subq	%rax, %rdx	# b.392, D.14786
	movq	%rdx, %rax	# D.14786, D.14786
	movq	%rax, %rdx	# D.14786, D.14787
	movq	-336(%rbp), %rcx	# b, tmp98
	movq	-296(%rbp), %rax	# tmpsv, tmp99
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	Perl_sv_setpvn	#
.L505:
	.loc 1 2746 0
	movq	-296(%rbp), %rax	# tmpsv, tmp100
	movq	(%rax), %rax	# tmpsv_9->sv_any, D.14788
	movq	(%rax), %rax	# MEM[(struct XPV *)_28].xpv_pv, D.14789
	leaq	-144(%rbp), %rdx	#, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.14789,
	call	stat	#
	testl	%eax, %eax	# D.14785
	jns	.L506	#,
	.loc 1 2747 0
	movl	$0, %eax	#, D.14784
	jmp	.L509	#
.L506:
	.loc 1 2748 0
	movq	-288(%rbp), %rdx	# tmpstatbuf1.st_dev, D.14787
	movq	-144(%rbp), %rax	# tmpstatbuf2.st_dev, D.14787
	cmpq	%rax, %rdx	# D.14787, D.14787
	jne	.L507	#,
	.loc 1 2749 0 discriminator 1
	movq	-280(%rbp), %rdx	# tmpstatbuf1.st_ino, D.14787
	movq	-136(%rbp), %rax	# tmpstatbuf2.st_ino, D.14787
	.loc 1 2748 0 discriminator 1
	cmpq	%rax, %rdx	# D.14787, D.14787
	jne	.L507	#,
	.loc 1 2748 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.393
	jmp	.L508	#
.L507:
	.loc 1 2748 0 discriminator 2
	movl	$0, %eax	#, iftmp.393
.L508:
.L509:
	.loc 1 2750 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	Perl_same_dirent, .-Perl_same_dirent
	.section	.rodata
.LC17:
	.string	"PATH"
.LC18:
	.string	", '.' not in PATH"
.LC19:
	.string	" on PATH"
.LC20:
	.string	"execute"
.LC21:
	.string	"find"
.LC22:
	.string	"Can't %s %s%s%s"
	.text
	.globl	Perl_find_script
	.type	Perl_find_script, @function
Perl_find_script:
.LFB66:
	.loc 1 2755 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$4176, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -4168(%rbp)	# scriptname, scriptname
	movl	%esi, %eax	# dosearch, tmp97
	movq	%rdx, -4184(%rbp)	# search_ext, search_ext
	movl	%ecx, -4176(%rbp)	# flags, flags
	movb	%al, -4172(%rbp)	# tmp97, dosearch
	.loc 1 2755 0
	movq	%fs:40, %rax	#, tmp118
	movq	%rax, -24(%rbp)	# tmp118, D.14797
	xorl	%eax, %eax	# tmp118
	.loc 1 2756 0
	movq	$0, -4144(%rbp)	#, xfound
	.loc 1 2757 0
	movq	$0, -4136(%rbp)	#, xfailed
	.loc 1 2760 0
	movl	$0, -4152(%rbp)	#, len
	.loc 1 2785 0
	movb	$0, -4153(%rbp)	#, dosearch
	.loc 1 2806 0
	movb	$0, -4128(%rbp)	#, tmpbuf
	.loc 1 2879 0
	cmpb	$0, -4153(%rbp)	#, dosearch
	je	.L511	#,
	.loc 1 2879 0 is_stmt 0 discriminator 1
	movq	-4168(%rbp), %rax	# scriptname, tmp98
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	strchr	#
	testq	%rax, %rax	# D.14791
	jne	.L511	#,
	.loc 1 2883 0 is_stmt 1
	movl	$.LC17, %edi	#,
	call	getenv	#
	movq	%rax, %rbx	#, s
	testq	%rbx, %rbx	# s
	je	.L511	#,
.LBB49:
	.loc 1 2886 0
	movb	$0, -4154(%rbp)	#, seen_dot
	.loc 1 2888 0
	movq	%rbx, %rdi	# s,
	call	strlen	#
	addq	%rbx, %rax	# s, PL_bufend.394
	movq	%rax, PL_bufend(%rip)	# PL_bufend.394, PL_bufend
	.loc 1 2889 0
	jmp	.L512	#
.L521:
	.loc 1 2907 0
	movq	PL_bufend(%rip), %rdx	# PL_bufend, PL_bufend.395
	leaq	-4152(%rbp), %rcx	#, tmp99
	leaq	-4128(%rbp), %rax	#, tmp100
	leaq	4096(%rax), %rsi	#, tmp101
	leaq	-4128(%rbp), %rax	#, tmp102
	movq	%rcx, %r9	# tmp99,
	movl	$58, %r8d	#,
	movq	%rdx, %rcx	# PL_bufend.395,
	movq	%rbx, %rdx	# s,
	movq	%rax, %rdi	# tmp102,
	call	Perl_delimcpy	#
	movq	%rax, %rbx	#, s
	.loc 1 2912 0
	movq	PL_bufend(%rip), %rax	# PL_bufend, PL_bufend.396
	cmpq	%rax, %rbx	# PL_bufend.396, s
	jae	.L513	#,
	.loc 1 2913 0
	addq	$1, %rbx	#, s
.L513:
	.loc 1 2914 0
	movl	-4152(%rbp), %eax	# len, len.397
	addl	$1, %eax	#, D.14793
	movslq	%eax, %r12	# D.14793, D.14792
	movq	-4168(%rbp), %rax	# scriptname, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen	#
	addq	%r12, %rax	# D.14792, D.14792
	cmpq	$4095, %rax	#, D.14792
	jbe	.L514	#,
	.loc 1 2915 0
	jmp	.L512	#
.L514:
	.loc 1 2920 0
	movl	-4152(%rbp), %eax	# len, len.398
	testl	%eax, %eax	# len.398
	je	.L515	#,
	.loc 1 2926 0
	movl	-4152(%rbp), %eax	# len, len.399
	leal	1(%rax), %edx	#, len.401
	movl	%edx, -4152(%rbp)	# len.401, len
	cltq
	movb	$47, -4128(%rbp,%rax)	#, tmpbuf
.L515:
	.loc 1 2927 0
	movl	-4152(%rbp), %eax	# len, len.402
	cmpl	$2, %eax	#, len.402
	jne	.L516	#,
	.loc 1 2927 0 is_stmt 0 discriminator 1
	movzbl	-4128(%rbp), %eax	# tmpbuf, D.14794
	cmpb	$46, %al	#, D.14794
	jne	.L516	#,
	.loc 1 2928 0 is_stmt 1
	movb	$1, -4154(%rbp)	#, seen_dot
.L516:
	.loc 1 2930 0
	movl	-4152(%rbp), %eax	# len, len.403
	cltq
	leaq	-4128(%rbp), %rdx	#, tmp105
	addq	%rax, %rdx	# D.14795, D.14791
	movq	-4168(%rbp), %rax	# scriptname, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# D.14791,
	call	strcpy	#
	.loc 1 2940 0
	leaq	-4128(%rbp), %rax	#, tmp107
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	stat	#
	movl	%eax, -4148(%rbp)	# tmp108, retval
	.loc 1 2941 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14796
	andl	$61440, %eax	#, D.14796
	cmpl	$16384, %eax	#, D.14796
	jne	.L517	#,
	.loc 1 2942 0
	movl	$-1, -4148(%rbp)	#, retval
.L517:
	.loc 1 2950 0
	cmpl	$0, -4148(%rbp)	#, retval
	jns	.L518	#,
	.loc 1 2951 0
	jmp	.L512	#
.L518:
	.loc 1 2952 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14796
	andl	$61440, %eax	#, D.14796
	cmpl	$32768, %eax	#, D.14796
	jne	.L519	#,
	.loc 1 2953 0
	movl	$PL_statbuf, %edx	#,
	movl	$1, %esi	#,
	movl	$256, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.14794
	je	.L519	#,
	.loc 1 2955 0
	movl	$PL_statbuf, %edx	#,
	movl	$1, %esi	#,
	movl	$64, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.14794
	je	.L519	#,
	.loc 1 2959 0
	leaq	-4128(%rbp), %rax	#, tmp109
	movq	%rax, -4144(%rbp)	# tmp109, xfound
	.loc 1 2960 0
	jmp	.L520	#
.L519:
	.loc 1 2962 0
	cmpq	$0, -4136(%rbp)	#, xfailed
	jne	.L512	#,
	.loc 1 2963 0
	leaq	-4128(%rbp), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_savepv	#
	movq	%rax, -4136(%rbp)	# tmp111, xfailed
.L512:
	.loc 1 2889 0 discriminator 1
	movq	PL_bufend(%rip), %rax	# PL_bufend, PL_bufend.404
	cmpq	%rax, %rbx	# PL_bufend.404, s
	jb	.L521	#,
.L520:
	.loc 1 2966 0
	cmpq	$0, -4144(%rbp)	#, xfound
	jne	.L522	#,
	.loc 1 2966 0 is_stmt 0 discriminator 1
	cmpb	$0, -4154(%rbp)	#, seen_dot
	jne	.L522	#,
	cmpq	$0, -4136(%rbp)	#, xfailed
	jne	.L522	#,
	.loc 1 2967 0 is_stmt 1 discriminator 1
	movq	-4168(%rbp), %rax	# scriptname, tmp112
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	stat	#
	.loc 1 2966 0 discriminator 1
	testl	%eax, %eax	# D.14793
	js	.L523	#,
	.loc 1 2968 0
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.14796
	andl	$61440, %eax	#, D.14796
	cmpl	$16384, %eax	#, D.14796
	jne	.L522	#,
.L523:
	.loc 1 2970 0
	movb	$1, -4154(%rbp)	#, seen_dot
.L522:
	.loc 1 2971 0
	cmpq	$0, -4144(%rbp)	#, xfound
	jne	.L524	#,
	.loc 1 2972 0
	movl	-4176(%rbp), %eax	# flags, tmp113
	andl	$1, %eax	#, D.14793
	testl	%eax, %eax	# D.14793
	je	.L525	#,
	.loc 1 2973 0
	cmpq	$0, -4136(%rbp)	#, xfailed
	jne	.L526	#,
	.loc 1 2977 0
	cmpb	$0, -4154(%rbp)	#, seen_dot
	je	.L527	#,
.L526:
	.loc 1 2973 0 discriminator 1
	movl	$.LC1, %esi	#, iftmp.405
	jmp	.L528	#
.L527:
	.loc 1 2973 0 is_stmt 0
	movl	$.LC18, %esi	#, iftmp.405
.L528:
	.loc 1 2973 0 discriminator 2
	cmpq	$0, -4136(%rbp)	#, xfailed
	je	.L529	#,
	.loc 1 2973 0 discriminator 3
	movl	$.LC1, %ecx	#, iftmp.406
	jmp	.L530	#
.L529:
	.loc 1 2973 0 discriminator 4
	movl	$.LC19, %ecx	#, iftmp.406
.L530:
	.loc 1 2973 0 discriminator 5
	cmpq	$0, -4136(%rbp)	#, xfailed
	je	.L531	#,
	.loc 1 2973 0 discriminator 6
	movq	-4136(%rbp), %rdx	# xfailed, iftmp.407
	jmp	.L532	#
.L531:
	.loc 1 2973 0 discriminator 7
	movq	-4168(%rbp), %rdx	# scriptname, iftmp.407
.L532:
	.loc 1 2973 0 discriminator 8
	cmpq	$0, -4136(%rbp)	#, xfailed
	je	.L533	#,
	.loc 1 2973 0 discriminator 9
	movl	$.LC20, %eax	#, iftmp.408
	jmp	.L534	#
.L533:
	.loc 1 2973 0 discriminator 10
	movl	$.LC21, %eax	#, iftmp.408
.L534:
	.loc 1 2973 0 discriminator 11
	movq	%rsi, %r8	# iftmp.405,
	movq	%rax, %rsi	# iftmp.408,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L525:
	.loc 1 2979 0 is_stmt 1
	movq	$0, -4168(%rbp)	#, scriptname
.L524:
	.loc 1 2981 0
	cmpq	$0, -4136(%rbp)	#, xfailed
	je	.L535	#,
	.loc 1 2982 0
	movq	-4136(%rbp), %rax	# xfailed, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_safesysfree	#
.L535:
	.loc 1 2983 0
	movq	-4144(%rbp), %rax	# xfound, tmp115
	movq	%rax, -4168(%rbp)	# tmp115, scriptname
.L511:
.LBE49:
	.loc 1 2985 0
	cmpq	$0, -4168(%rbp)	#, scriptname
	je	.L536	#,
	.loc 1 2985 0 is_stmt 0 discriminator 1
	movq	-4168(%rbp), %rax	# scriptname, tmp116
	movq	%rax, %rdi	# tmp116,
	call	Perl_savepv	#
	jmp	.L537	#
.L536:
	.loc 1 2985 0 discriminator 2
	movl	$0, %eax	#, iftmp.409
.L537:
	.loc 1 2986 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rcx	# D.14797, tmp119
	xorq	%fs:40, %rcx	#, tmp119
	je	.L539	#,
	.loc 1 2986 0 is_stmt 0
	call	__stack_chk_fail	#
.L539:
	addq	$4176, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	Perl_find_script, .-Perl_find_script
	.globl	Perl_get_context
	.type	Perl_get_context, @function
Perl_get_context:
.LFB67:
	.loc 1 2992 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3007 0
	movl	$0, %eax	#, D.14804
	.loc 1 3009 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	Perl_get_context, .-Perl_get_context
	.globl	Perl_set_context
	.type	Perl_set_context, @function
Perl_set_context:
.LFB68:
	.loc 1 3013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 3022 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	Perl_set_context, .-Perl_set_context
	.globl	Perl_get_op_names
	.type	Perl_get_op_names, @function
Perl_get_op_names:
.LFB69:
	.loc 1 3314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3315 0
	movl	$PL_op_name, %eax	#, D.14805
	.loc 1 3316 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	Perl_get_op_names, .-Perl_get_op_names
	.globl	Perl_get_op_descs
	.type	Perl_get_op_descs, @function
Perl_get_op_descs:
.LFB70:
	.loc 1 3320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3321 0
	movl	$PL_op_desc, %eax	#, D.14806
	.loc 1 3322 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	Perl_get_op_descs, .-Perl_get_op_descs
	.globl	Perl_get_no_modify
	.type	Perl_get_no_modify, @function
Perl_get_no_modify:
.LFB71:
	.loc 1 3326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3327 0
	movl	$PL_no_modify, %eax	#, D.14807
	.loc 1 3328 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	Perl_get_no_modify, .-Perl_get_no_modify
	.globl	Perl_get_opargs
	.type	Perl_get_opargs, @function
Perl_get_opargs:
.LFB72:
	.loc 1 3332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3333 0
	movl	$PL_opargs, %eax	#, D.14808
	.loc 1 3334 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	Perl_get_opargs, .-Perl_get_opargs
	.globl	Perl_get_ppaddr
	.type	Perl_get_ppaddr, @function
Perl_get_ppaddr:
.LFB73:
	.loc 1 3338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3339 0
	movl	$PL_ppaddr, %eax	#, D.14809
	.loc 1 3340 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	Perl_get_ppaddr, .-Perl_get_ppaddr
	.globl	Perl_getenv_len
	.type	Perl_getenv_len, @function
Perl_getenv_len:
.LFB74:
	.loc 1 3345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# env_elem, env_elem
	movq	%rsi, -32(%rbp)	# len, len
	.loc 1 3346 0
	movq	-24(%rbp), %rax	# env_elem, tmp62
	movq	%rax, %rdi	# tmp62,
	call	getenv	#
	movq	%rax, -8(%rbp)	# tmp63, env_trans
	.loc 1 3347 0
	cmpq	$0, -8(%rbp)	#, env_trans
	je	.L554	#,
	.loc 1 3348 0
	movq	-8(%rbp), %rax	# env_trans, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movq	-32(%rbp), %rdx	# len, tmp65
	movq	%rax, (%rdx)	# D.14810, *len_4(D)
.L554:
	.loc 1 3349 0
	movq	-8(%rbp), %rax	# env_trans, D.14811
	.loc 1 3350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	Perl_getenv_len, .-Perl_getenv_len
	.globl	Perl_get_vtbl
	.type	Perl_get_vtbl, @function
Perl_get_vtbl:
.LFB75:
	.loc 1 3356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# vtbl_id, vtbl_id
	.loc 1 3357 0
	movq	$0, -8(%rbp)	#, result
	.loc 1 3359 0
	cmpl	$29, -20(%rbp)	#, vtbl_id
	ja	.L557	#,
	movl	-20(%rbp), %eax	# vtbl_id, tmp61
	movq	.L559(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L559:
	.quad	.L558
	.quad	.L560
	.quad	.L561
	.quad	.L562
	.quad	.L563
	.quad	.L564
	.quad	.L565
	.quad	.L566
	.quad	.L567
	.quad	.L568
	.quad	.L569
	.quad	.L570
	.quad	.L571
	.quad	.L572
	.quad	.L573
	.quad	.L574
	.quad	.L575
	.quad	.L576
	.quad	.L577
	.quad	.L578
	.quad	.L579
	.quad	.L580
	.quad	.L581
	.quad	.L557
	.quad	.L582
	.quad	.L583
	.quad	.L584
	.quad	.L585
	.quad	.L586
	.quad	.L587
	.text
.L558:
	.loc 1 3361 0
	movq	$PL_vtbl_sv, -8(%rbp)	#, result
	.loc 1 3362 0
	jmp	.L557	#
.L560:
	.loc 1 3364 0
	movq	$PL_vtbl_env, -8(%rbp)	#, result
	.loc 1 3365 0
	jmp	.L557	#
.L561:
	.loc 1 3367 0
	movq	$PL_vtbl_envelem, -8(%rbp)	#, result
	.loc 1 3368 0
	jmp	.L557	#
.L562:
	.loc 1 3370 0
	movq	$PL_vtbl_sig, -8(%rbp)	#, result
	.loc 1 3371 0
	jmp	.L557	#
.L563:
	.loc 1 3373 0
	movq	$PL_vtbl_sigelem, -8(%rbp)	#, result
	.loc 1 3374 0
	jmp	.L557	#
.L564:
	.loc 1 3376 0
	movq	$PL_vtbl_pack, -8(%rbp)	#, result
	.loc 1 3377 0
	jmp	.L557	#
.L565:
	.loc 1 3379 0
	movq	$PL_vtbl_packelem, -8(%rbp)	#, result
	.loc 1 3380 0
	jmp	.L557	#
.L566:
	.loc 1 3382 0
	movq	$PL_vtbl_dbline, -8(%rbp)	#, result
	.loc 1 3383 0
	jmp	.L557	#
.L567:
	.loc 1 3385 0
	movq	$PL_vtbl_isa, -8(%rbp)	#, result
	.loc 1 3386 0
	jmp	.L557	#
.L568:
	.loc 1 3388 0
	movq	$PL_vtbl_isaelem, -8(%rbp)	#, result
	.loc 1 3389 0
	jmp	.L557	#
.L569:
	.loc 1 3391 0
	movq	$PL_vtbl_arylen, -8(%rbp)	#, result
	.loc 1 3392 0
	jmp	.L557	#
.L570:
	.loc 1 3394 0
	movq	$PL_vtbl_glob, -8(%rbp)	#, result
	.loc 1 3395 0
	jmp	.L557	#
.L571:
	.loc 1 3397 0
	movq	$PL_vtbl_mglob, -8(%rbp)	#, result
	.loc 1 3398 0
	jmp	.L557	#
.L572:
	.loc 1 3400 0
	movq	$PL_vtbl_nkeys, -8(%rbp)	#, result
	.loc 1 3401 0
	jmp	.L557	#
.L573:
	.loc 1 3403 0
	movq	$PL_vtbl_taint, -8(%rbp)	#, result
	.loc 1 3404 0
	jmp	.L557	#
.L574:
	.loc 1 3406 0
	movq	$PL_vtbl_substr, -8(%rbp)	#, result
	.loc 1 3407 0
	jmp	.L557	#
.L575:
	.loc 1 3409 0
	movq	$PL_vtbl_vec, -8(%rbp)	#, result
	.loc 1 3410 0
	jmp	.L557	#
.L576:
	.loc 1 3412 0
	movq	$PL_vtbl_pos, -8(%rbp)	#, result
	.loc 1 3413 0
	jmp	.L557	#
.L577:
	.loc 1 3415 0
	movq	$PL_vtbl_bm, -8(%rbp)	#, result
	.loc 1 3416 0
	jmp	.L557	#
.L578:
	.loc 1 3418 0
	movq	$PL_vtbl_fm, -8(%rbp)	#, result
	.loc 1 3419 0
	jmp	.L557	#
.L579:
	.loc 1 3421 0
	movq	$PL_vtbl_uvar, -8(%rbp)	#, result
	.loc 1 3422 0
	jmp	.L557	#
.L580:
	.loc 1 3429 0
	movq	$PL_vtbl_defelem, -8(%rbp)	#, result
	.loc 1 3430 0
	jmp	.L557	#
.L581:
	.loc 1 3432 0
	movq	$PL_vtbl_regexp, -8(%rbp)	#, result
	.loc 1 3433 0
	jmp	.L557	#
.L584:
	.loc 1 3435 0
	movq	$PL_vtbl_regdata, -8(%rbp)	#, result
	.loc 1 3436 0
	jmp	.L557	#
.L585:
	.loc 1 3438 0
	movq	$PL_vtbl_regdatum, -8(%rbp)	#, result
	.loc 1 3439 0
	jmp	.L557	#
.L582:
	.loc 1 3446 0
	movq	$PL_vtbl_amagic, -8(%rbp)	#, result
	.loc 1 3447 0
	jmp	.L557	#
.L583:
	.loc 1 3449 0
	movq	$PL_vtbl_amagicelem, -8(%rbp)	#, result
	.loc 1 3450 0
	jmp	.L557	#
.L586:
	.loc 1 3452 0
	movq	$PL_vtbl_backref, -8(%rbp)	#, result
	.loc 1 3453 0
	jmp	.L557	#
.L587:
	.loc 1 3455 0
	movq	$PL_vtbl_utf8, -8(%rbp)	#, result
	.loc 1 3456 0
	nop
.L557:
	.loc 1 3458 0
	movq	-8(%rbp), %rax	# result, D.14812
	.loc 1 3459 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	Perl_get_vtbl, .-Perl_get_vtbl
	.globl	Perl_my_fflush_all
	.type	Perl_my_fflush_all, @function
Perl_my_fflush_all:
.LFB76:
	.loc 1 3463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3465 0
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
	.loc 1 3509 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	Perl_my_fflush_all, .-Perl_my_fflush_all
	.section	.rodata
.LC23:
	.string	"write"
.LC24:
	.string	"readline"
.LC25:
	.string	"()"
.LC26:
	.string	"socket"
.LC27:
	.string	"filehandle"
.LC28:
	.string	"in"
.LC29:
	.string	"out"
	.align 8
.LC30:
	.string	"Filehandle %s opened only for %sput"
	.align 8
.LC31:
	.string	"Filehandle opened only for %sput"
.LC32:
	.string	"closed"
.LC33:
	.string	"unopened"
.LC34:
	.string	"%s%s on %s %s %s"
	.align 8
.LC35:
	.string	"\t(Are you trying to call %s%s on dirhandle %s?)\n"
.LC36:
	.string	"%s%s on %s %s"
	.align 8
.LC37:
	.string	"\t(Are you trying to call %s%s on dirhandle?)\n"
	.text
	.globl	Perl_report_evil_fh
	.type	Perl_report_evil_fh, @function
Perl_report_evil_fh:
.LFB77:
	.loc 1 3513 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# gv, gv
	movq	%rsi, -80(%rbp)	# io, io
	movl	%edx, -84(%rbp)	# op, op
	.loc 1 3515 0
	cmpl	$26, -84(%rbp)	#, op
	je	.L592	#,
	.loc 1 3516 0
	cmpl	$207, -84(%rbp)	#, op
	je	.L593	#,
	.loc 1 3516 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# op, tmp140
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.411
	jmp	.L595	#
.L593:
	.loc 1 3516 0 discriminator 2
	movl	$.LC23, %eax	#, iftmp.411
	jmp	.L595	#
.L592:
	.loc 1 3515 0 is_stmt 1 discriminator 1
	movl	$.LC24, %eax	#, iftmp.410
.L595:
	.loc 1 3514 0
	movq	%rax, -32(%rbp)	# iftmp.410, func
	.loc 1 3518 0
	cmpl	$248, -84(%rbp)	#, op
	je	.L596	#,
	.loc 1 3518 0 is_stmt 0 discriminator 2
	cmpl	$262, -84(%rbp)	#, op
	je	.L596	#,
	.loc 1 3518 0 discriminator 1
	cmpl	$252, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$251, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$249, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$254, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$241, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$243, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$239, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$240, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$253, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$242, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$256, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$247, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$255, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$238, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$244, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$236, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$237, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$258, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$246, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$250, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$257, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$259, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$261, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$260, -84(%rbp)	#, op
	je	.L596	#,
	cmpl	$245, -84(%rbp)	#, op
	jne	.L597	#,
.L596:
	movl	$.LC1, %eax	#, iftmp.412
	jmp	.L598	#
.L597:
	movl	$.LC25, %eax	#, iftmp.412
.L598:
	.loc 1 3518 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.412, pars
	.loc 1 3521 0 is_stmt 1 discriminator 3
	cmpl	$228, -84(%rbp)	#, op
	je	.L599	#,
	.loc 1 3519 0
	cmpl	$225, -84(%rbp)	#, op
	je	.L599	#,
	.loc 1 3519 0 is_stmt 0 discriminator 1
	cmpl	$226, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$233, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$232, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$230, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$227, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$215, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$214, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$229, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$223, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$224, -84(%rbp)	#, op
	je	.L599	#,
	cmpl	$231, -84(%rbp)	#, op
	je	.L599	#,
	.loc 1 3520 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, gv
	je	.L600	#,
	.loc 1 3520 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, io
	je	.L600	#,
	movq	-80(%rbp), %rax	# io, tmp141
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movzbl	162(%rax), %eax	# _21->xio_type, D.14815
	cmpb	$115, %al	#, D.14815
	jne	.L600	#,
.L599:
	.loc 1 3521 0 is_stmt 1 discriminator 1
	movl	$.LC26, %eax	#, iftmp.413
	jmp	.L601	#
.L600:
	.loc 1 3521 0 is_stmt 0
	movl	$.LC27, %eax	#, iftmp.413
.L601:
	.loc 1 3519 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.413, type
	.loc 1 3522 0
	movq	$0, -48(%rbp)	#, name
	.loc 1 3524 0
	cmpq	$0, -72(%rbp)	#, gv
	je	.L602	#,
	.loc 1 3524 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gv, tmp142
	movl	12(%rax), %eax	# gv_19(D)->sv_flags, D.14816
	movzbl	%al, %eax	# D.14816, D.14816
	cmpl	$13, %eax	#, D.14816
	jne	.L602	#,
	.loc 1 3525 0 is_stmt 1
	movq	-72(%rbp), %rax	# gv, tmp143
	movq	(%rax), %rax	# gv_19(D)->sv_any, D.14817
	movq	56(%rax), %rax	# _29->xgv_gp, D.14818
	movq	48(%rax), %rax	# _30->gp_egv, D.14819
	testq	%rax, %rax	# D.14819
	je	.L603	#,
	.loc 1 3525 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gv, tmp144
	movq	(%rax), %rax	# gv_19(D)->sv_any, D.14817
	movq	56(%rax), %rax	# _32->xgv_gp, D.14818
	movq	48(%rax), %rax	# _33->gp_egv, iftmp.414
	jmp	.L604	#
.L603:
	.loc 1 3525 0 discriminator 2
	movq	-72(%rbp), %rax	# gv, iftmp.414
.L604:
	.loc 1 3525 0 discriminator 3
	movq	(%rax), %rax	# iftmp.414_8->sv_any, D.14817
	movq	64(%rax), %rax	# _36->xgv_name, tmp145
	movq	%rax, -48(%rbp)	# tmp145, name
.L602:
	.loc 1 3528 0 is_stmt 1
	cmpl	$-2, -84(%rbp)	#, op
	je	.L605	#,
	.loc 1 3528 0 is_stmt 0 discriminator 1
	cmpl	$-1, -84(%rbp)	#, op
	jne	.L606	#,
.L605:
	.loc 1 3529 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.415
	movq	80(%rax), %rax	# PL_curcop.415_86->cop_warnings, D.14820
	testq	%rax, %rax	# D.14820
	je	.L607	#,
	.loc 1 3529 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.416
	movq	80(%rax), %rax	# PL_curcop.416_88->cop_warnings, D.14820
	cmpq	$32, %rax	#, D.14820
	je	.L607	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.417
	movq	80(%rax), %rax	# PL_curcop.417_90->cop_warnings, D.14820
	cmpq	$16, %rax	#, D.14820
	je	.L608	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.418
	movq	80(%rax), %rax	# PL_curcop.418_92->cop_warnings, D.14820
	movq	(%rax), %rax	# _93->sv_any, D.14821
	movq	(%rax), %rax	# MEM[(struct XPV *)_94].xpv_pv, D.14822
	addq	$1, %rax	#, D.14822
	movzbl	(%rax), %eax	# *_96, D.14815
	movsbl	%al, %eax	# D.14815, D.14823
	andl	$4, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	jne	.L608	#,
.L607:
	.loc 1 3529 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.419
	movq	80(%rax), %rax	# PL_curcop.419_100->cop_warnings, D.14820
	testq	%rax, %rax	# D.14820
	jne	.L609	#,
	.loc 1 3529 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.420
	movzbl	%al, %eax	# PL_dowarn.420, D.14823
	andl	$1, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	je	.L609	#,
.L608:
.LBB50:
	.loc 1 3530 0 is_stmt 1
	cmpl	$-1, -84(%rbp)	#, op
	jne	.L610	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movl	$.LC28, %eax	#, iftmp.421
	jmp	.L611	#
.L610:
	.loc 1 3530 0 discriminator 2
	movl	$.LC29, %eax	#, iftmp.421
.L611:
	.loc 1 3530 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.421, direction
	.loc 1 3531 0 is_stmt 1 discriminator 3
	cmpq	$0, -48(%rbp)	#, name
	je	.L612	#,
	.loc 1 3531 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# name, tmp146
	movzbl	(%rax), %eax	# *name_1, D.14815
	testb	%al, %al	# D.14815
	je	.L612	#,
	.loc 1 3532 0 is_stmt 1
	movq	-8(%rbp), %rdx	# direction, tmp147
	movq	-48(%rbp), %rax	# name, tmp148
	movq	%rdx, %rcx	# tmp147,
	movq	%rax, %rdx	# tmp148,
	movl	$.LC30, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L609	#
.L612:
	.loc 1 3536 0
	movq	-8(%rbp), %rax	# direction, tmp149
	movq	%rax, %rdx	# tmp149,
	movl	$.LC31, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.LBE50:
	.loc 1 3529 0
	jmp	.L591	#
.L609:
	.loc 1 3529 0 is_stmt 0 discriminator 2
	jmp	.L591	#
.L606:
.LBB51:
	.loc 1 3544 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, gv
	je	.L614	#,
	.loc 1 3544 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, io
	je	.L614	#,
	movq	-80(%rbp), %rax	# io, tmp150
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movzbl	162(%rax), %eax	# _38->xio_type, D.14815
	cmpb	$32, %al	#, D.14815
	jne	.L614	#,
	.loc 1 3545 0 is_stmt 1
	movq	$.LC32, -40(%rbp)	#, vile
	.loc 1 3546 0
	movl	$6, -52(%rbp)	#, warn_type
	jmp	.L615	#
.L614:
	.loc 1 3549 0
	movq	$.LC33, -40(%rbp)	#, vile
	.loc 1 3550 0
	movl	$11, -52(%rbp)	#, warn_type
.L615:
	.loc 1 3553 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.422
	movq	80(%rax), %rax	# PL_curcop.422_44->cop_warnings, D.14820
	testq	%rax, %rax	# D.14820
	je	.L616	#,
	.loc 1 3553 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.423
	movq	80(%rax), %rax	# PL_curcop.423_46->cop_warnings, D.14820
	cmpq	$32, %rax	#, D.14820
	je	.L616	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.424
	movq	80(%rax), %rax	# PL_curcop.424_48->cop_warnings, D.14820
	cmpq	$16, %rax	#, D.14820
	je	.L617	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.425
	movq	80(%rax), %rax	# PL_curcop.425_50->cop_warnings, D.14820
	movq	(%rax), %rax	# _51->sv_any, D.14821
	movq	(%rax), %rdx	# MEM[(struct XPV *)_52].xpv_pv, D.14822
	movl	-52(%rbp), %eax	# warn_type, tmp151
	addl	%eax, %eax	# D.14823
	leal	7(%rax), %ecx	#, tmp153
	testl	%eax, %eax	# tmp152
	cmovs	%ecx, %eax	# tmp153,, tmp152
	sarl	$3, %eax	#, tmp154
	cltq
	addq	%rdx, %rax	# D.14822, D.14822
	movzbl	(%rax), %eax	# *_57, D.14815
	movsbl	%al, %esi	# D.14815, D.14823
	movl	-52(%rbp), %eax	# warn_type, tmp155
	leal	(%rax,%rax), %edx	#, D.14823
	movl	%edx, %eax	# D.14823, tmp156
	sarl	$31, %eax	#, tmp156
	shrl	$29, %eax	#, tmp157
	addl	%eax, %edx	# tmp157, tmp158
	andl	$7, %edx	#, tmp159
	subl	%eax, %edx	# tmp157, tmp160
	movl	%edx, %eax	# tmp160, tmp160
	movl	%eax, %ecx	# D.14823, tmp183
	sarl	%cl, %esi	# tmp183, D.14823
	movl	%esi, %eax	# D.14823, D.14823
	andl	$1, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	jne	.L617	#,
.L616:
	.loc 1 3553 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.426
	movq	80(%rax), %rax	# PL_curcop.426_64->cop_warnings, D.14820
	testq	%rax, %rax	# D.14820
	jne	.L591	#,
	.loc 1 3553 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.427
	movzbl	%al, %eax	# PL_dowarn.427, D.14823
	andl	$1, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	je	.L591	#,
.L617:
	.loc 1 3554 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, name
	je	.L618	#,
	.loc 1 3554 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# name, tmp161
	movzbl	(%rax), %eax	# *name_1, D.14815
	testb	%al, %al	# D.14815
	je	.L618	#,
	.loc 1 3555 0 is_stmt 1
	movl	-52(%rbp), %eax	# warn_type, warn_type.428
	movq	-16(%rbp), %r8	# type, tmp162
	movq	-40(%rbp), %rdi	# vile, tmp163
	movq	-24(%rbp), %rcx	# pars, tmp164
	movq	-32(%rbp), %rdx	# func, tmp165
	movq	-48(%rbp), %rsi	# name, tmp166
	movq	%rsi, (%rsp)	# tmp166,
	movq	%r8, %r9	# tmp162,
	movq	%rdi, %r8	# tmp163,
	movl	$.LC34, %esi	#,
	movl	%eax, %edi	# warn_type.428,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 3557 0
	cmpq	$0, -80(%rbp)	#, io
	je	.L619	#,
	.loc 1 3557 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# io, tmp167
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movq	72(%rax), %rax	# _71->xio_dirpu.xiou_dirp, D.14825
	testq	%rax, %rax	# D.14825
	je	.L619	#,
	movq	-80(%rbp), %rax	# io, tmp168
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movzbl	163(%rax), %eax	# _73->xio_flags, D.14815
	movsbl	%al, %eax	# D.14815, D.14823
	andl	$64, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	jne	.L619	#,
	.loc 1 3558 0 is_stmt 1
	movl	-52(%rbp), %eax	# warn_type, warn_type.429
	movq	-48(%rbp), %rsi	# name, tmp169
	movq	-24(%rbp), %rcx	# pars, tmp170
	movq	-32(%rbp), %rdx	# func, tmp171
	movq	%rsi, %r8	# tmp169,
	movl	$.LC35, %esi	#,
	movl	%eax, %edi	# warn_type.429,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 3557 0
	jmp	.L591	#
.L619:
	.loc 1 3557 0 is_stmt 0 discriminator 2
	jmp	.L591	#
.L618:
	.loc 1 3565 0 is_stmt 1
	movl	-52(%rbp), %eax	# warn_type, warn_type.430
	movq	-16(%rbp), %rdi	# type, tmp172
	movq	-40(%rbp), %rsi	# vile, tmp173
	movq	-24(%rbp), %rcx	# pars, tmp174
	movq	-32(%rbp), %rdx	# func, tmp175
	movq	%rdi, %r9	# tmp172,
	movq	%rsi, %r8	# tmp173,
	movl	$.LC36, %esi	#,
	movl	%eax, %edi	# warn_type.430,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 3567 0
	cmpq	$0, -72(%rbp)	#, gv
	je	.L591	#,
	.loc 1 3567 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, io
	je	.L591	#,
	movq	-80(%rbp), %rax	# io, tmp176
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movq	72(%rax), %rax	# _79->xio_dirpu.xiou_dirp, D.14825
	testq	%rax, %rax	# D.14825
	je	.L591	#,
	movq	-80(%rbp), %rax	# io, tmp177
	movq	(%rax), %rax	# io_20(D)->sv_any, D.14814
	movzbl	163(%rax), %eax	# _81->xio_flags, D.14815
	movsbl	%al, %eax	# D.14815, D.14823
	andl	$64, %eax	#, D.14823
	testl	%eax, %eax	# D.14823
	jne	.L591	#,
	.loc 1 3568 0 is_stmt 1
	movl	-52(%rbp), %eax	# warn_type, warn_type.431
	movq	-24(%rbp), %rcx	# pars, tmp178
	movq	-32(%rbp), %rdx	# func, tmp179
	movl	$.LC37, %esi	#,
	movl	%eax, %edi	# warn_type.431,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L591:
.LBE51:
	.loc 1 3576 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	Perl_report_evil_fh, .-Perl_report_evil_fh
	.globl	Perl_init_tm
	.type	Perl_init_tm, @function
Perl_init_tm:
.LFB78:
	.loc 1 3642 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ptm, ptm
	.loc 1 3651 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	Perl_init_tm, .-Perl_init_tm
	.globl	Perl_mini_mktime
	.type	Perl_mini_mktime, @function
Perl_mini_mktime:
.LFB79:
	.loc 1 3659 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# ptm, ptm
	.loc 1 3739 0
	movq	-40(%rbp), %rax	# ptm, tmp110
	movl	20(%rax), %eax	# ptm_14(D)->tm_year, D.14841
	addl	$1900, %eax	#, tmp111
	movl	%eax, -16(%rbp)	# tmp111, year
	.loc 1 3740 0
	movq	-40(%rbp), %rax	# ptm, tmp112
	movl	16(%rax), %eax	# ptm_14(D)->tm_mon, tmp113
	movl	%eax, -24(%rbp)	# tmp113, month
	.loc 1 3741 0
	movq	-40(%rbp), %rax	# ptm, tmp114
	movl	12(%rax), %eax	# ptm_14(D)->tm_mday, tmp115
	movl	%eax, -20(%rbp)	# tmp115, mday
	.loc 1 3743 0
	movq	-40(%rbp), %rax	# ptm, tmp116
	movl	28(%rax), %eax	# ptm_14(D)->tm_yday, D.14841
	testl	%eax, %eax	# D.14841
	js	.L622	#,
	.loc 1 3743 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mday
	jg	.L622	#,
	cmpl	$0, -24(%rbp)	#, month
	jg	.L622	#,
	.loc 1 3744 0 is_stmt 1
	movl	$0, -24(%rbp)	#, month
	.loc 1 3745 0
	movl	$0, -20(%rbp)	#, mday
	.loc 1 3746 0
	movq	-40(%rbp), %rax	# ptm, tmp117
	movl	28(%rax), %eax	# ptm_14(D)->tm_yday, D.14841
	addl	$1, %eax	#, tmp118
	movl	%eax, -12(%rbp)	# tmp118, jday
	jmp	.L623	#
.L622:
	.loc 1 3749 0
	movl	$0, -12(%rbp)	#, jday
.L623:
	.loc 1 3751 0
	cmpl	$1, -24(%rbp)	#, month
	jle	.L624	#,
	.loc 1 3752 0
	addl	$2, -24(%rbp)	#, month
	jmp	.L625	#
.L624:
	.loc 1 3754 0
	addl	$14, -24(%rbp)	#, month
	subl	$1, -16(%rbp)	#, year
.L625:
	.loc 1 3755 0
	movl	-16(%rbp), %eax	# year, tmp119
	imull	$365, %eax, %edx	#, tmp119, D.14841
	movl	-16(%rbp), %eax	# year, tmp120
	leal	3(%rax), %ecx	#, tmp122
	testl	%eax, %eax	# tmp121
	cmovs	%ecx, %eax	# tmp122,, tmp121
	sarl	$2, %eax	#, tmp123
	leal	(%rdx,%rax), %esi	#, D.14841
	movl	-16(%rbp), %ecx	# year, tmp124
	movl	$1374389535, %edx	#, tmp126
	movl	%ecx, %eax	# tmp124, tmp351
	imull	%edx	# tmp126
	sarl	$5, %edx	#, tmp127
	movl	%ecx, %eax	# tmp124, tmp128
	sarl	$31, %eax	#, tmp128
	subl	%eax, %edx	# tmp128, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	subl	%eax, %esi	# D.14841, D.14841
	movl	-16(%rbp), %ecx	# year, tmp129
	movl	$1374389535, %edx	#, tmp131
	movl	%ecx, %eax	# tmp129, tmp352
	imull	%edx	# tmp131
	sarl	$7, %edx	#, tmp132
	movl	%ecx, %eax	# tmp129, tmp133
	sarl	$31, %eax	#, tmp133
	subl	%eax, %edx	# tmp133, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	addl	%esi, %eax	# D.14841, tmp134
	movl	%eax, -32(%rbp)	# tmp134, yearday
	.loc 1 3756 0
	movl	-24(%rbp), %eax	# month, tmp135
	imull	$153, %eax, %ecx	#, tmp135, D.14841
	movl	$1717986919, %edx	#, tmp137
	movl	%ecx, %eax	# D.14841, tmp353
	imull	%edx	# tmp137
	sarl	%edx	# tmp138
	movl	%ecx, %eax	# D.14841, tmp139
	sarl	$31, %eax	#, tmp139
	subl	%eax, %edx	# tmp139, D.14841
	movl	-20(%rbp), %eax	# mday, tmp140
	addl	%eax, %edx	# tmp140, D.14841
	movl	-12(%rbp), %eax	# jday, tmp141
	addl	%edx, %eax	# D.14841, D.14841
	addl	%eax, -32(%rbp)	# D.14841, yearday
	.loc 1 3763 0
	movq	-40(%rbp), %rax	# ptm, tmp142
	movl	(%rax), %eax	# ptm_14(D)->tm_sec, D.14841
	cmpl	$60, %eax	#, D.14842
	ja	.L626	#,
	.loc 1 3764 0
	movl	$0, -28(%rbp)	#, secs
	jmp	.L627	#
.L626:
	.loc 1 3767 0
	movq	-40(%rbp), %rax	# ptm, tmp143
	movl	(%rax), %eax	# ptm_14(D)->tm_sec, tmp144
	movl	%eax, -28(%rbp)	# tmp144, secs
	.loc 1 3768 0
	movq	-40(%rbp), %rax	# ptm, tmp145
	movl	$0, (%rax)	#, ptm_14(D)->tm_sec
.L627:
	.loc 1 3770 0
	movq	-40(%rbp), %rax	# ptm, tmp146
	movl	4(%rax), %eax	# ptm_14(D)->tm_min, D.14841
	sall	$2, %eax	#, tmp148
	movl	%eax, %edx	# tmp147, tmp149
	sall	$4, %edx	#, tmp149
	subl	%eax, %edx	# tmp147, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	addl	%eax, -28(%rbp)	# D.14841, secs
	.loc 1 3771 0
	movq	-40(%rbp), %rax	# ptm, tmp150
	movl	8(%rax), %eax	# ptm_14(D)->tm_hour, D.14841
	imull	$3600, %eax, %eax	#, D.14841, D.14841
	addl	%eax, -28(%rbp)	# D.14841, secs
	.loc 1 3772 0
	cmpl	$0, -28(%rbp)	#, secs
	jns	.L628	#,
	.loc 1 3773 0
	movl	-28(%rbp), %ecx	# secs, tmp151
	movl	$-1037155065, %edx	#, tmp153
	movl	%ecx, %eax	# tmp151, tmp354
	imull	%edx	# tmp153
	leal	(%rdx,%rcx), %eax	#, tmp154
	sarl	$16, %eax	#, tmp155
	movl	%eax, %edx	# tmp155, tmp155
	movl	%ecx, %eax	# tmp151, tmp156
	sarl	$31, %eax	#, tmp156
	subl	%eax, %edx	# tmp156, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	imull	$86400, %eax, %eax	#, D.14841, tmp157
	subl	%eax, %ecx	# tmp157, D.14841
	movl	%ecx, %eax	# D.14841, D.14841
	testl	%eax, %eax	# D.14841
	jns	.L629	#,
	.loc 1 3776 0
	movl	-28(%rbp), %ecx	# secs, tmp158
	movl	$-1037155065, %edx	#, tmp160
	movl	%ecx, %eax	# tmp158, tmp355
	imull	%edx	# tmp160
	leal	(%rdx,%rcx), %eax	#, tmp161
	sarl	$16, %eax	#, tmp162
	movl	%eax, %edx	# tmp162, tmp162
	movl	%ecx, %eax	# tmp158, tmp163
	sarl	$31, %eax	#, tmp163
	subl	%eax, %edx	# tmp163, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	subl	$1, %eax	#, D.14841
	addl	%eax, -32(%rbp)	# D.14841, yearday
	.loc 1 3777 0
	movl	-28(%rbp), %ecx	# secs, tmp164
	movl	$-1037155065, %edx	#, tmp166
	movl	%ecx, %eax	# tmp164, tmp356
	imull	%edx	# tmp166
	leal	(%rdx,%rcx), %eax	#, tmp167
	sarl	$16, %eax	#, tmp168
	movl	%eax, %edx	# tmp168, tmp168
	movl	%ecx, %eax	# tmp164, tmp169
	sarl	$31, %eax	#, tmp169
	subl	%eax, %edx	# tmp169, D.14841
	movl	$1, %eax	#, tmp170
	subl	%edx, %eax	# D.14841, D.14841
	imull	$86400, %eax, %eax	#, D.14841, D.14841
	addl	%eax, -28(%rbp)	# D.14841, secs
	jmp	.L631	#
.L629:
	.loc 1 3780 0
	movl	-28(%rbp), %ecx	# secs, tmp171
	movl	$-1037155065, %edx	#, tmp173
	movl	%ecx, %eax	# tmp171, tmp357
	imull	%edx	# tmp173
	leal	(%rdx,%rcx), %eax	#, tmp174
	sarl	$16, %eax	#, tmp175
	movl	%eax, %edx	# tmp175, tmp175
	movl	%ecx, %eax	# tmp171, tmp176
	sarl	$31, %eax	#, tmp176
	subl	%eax, %edx	# tmp176, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	addl	%eax, -32(%rbp)	# D.14841, yearday
	.loc 1 3781 0
	movl	-28(%rbp), %ecx	# secs, tmp178
	movl	$-1037155065, %edx	#, tmp180
	movl	%ecx, %eax	# tmp178, tmp358
	imull	%edx	# tmp180
	leal	(%rdx,%rcx), %eax	#, tmp181
	sarl	$16, %eax	#, tmp182
	movl	%eax, %edx	# tmp182, tmp182
	movl	%ecx, %eax	# tmp178, tmp183
	sarl	$31, %eax	#, tmp183
	subl	%eax, %edx	# tmp183, tmp177
	movl	%edx, %eax	# tmp177, tmp177
	imull	$86400, %eax, %eax	#, tmp177, tmp184
	subl	%eax, %ecx	# tmp184, tmp185
	movl	%ecx, %eax	# tmp185, tmp185
	movl	%eax, -28(%rbp)	# tmp185, secs
	jmp	.L631	#
.L628:
	.loc 1 3784 0
	cmpl	$86399, -28(%rbp)	#, secs
	jle	.L631	#,
	.loc 1 3785 0
	movl	-28(%rbp), %ecx	# secs, tmp186
	movl	$-1037155065, %edx	#, tmp188
	movl	%ecx, %eax	# tmp186, tmp359
	imull	%edx	# tmp188
	leal	(%rdx,%rcx), %eax	#, tmp189
	sarl	$16, %eax	#, tmp190
	movl	%eax, %edx	# tmp190, tmp190
	movl	%ecx, %eax	# tmp186, tmp191
	sarl	$31, %eax	#, tmp191
	subl	%eax, %edx	# tmp191, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	addl	%eax, -32(%rbp)	# D.14841, yearday
	.loc 1 3786 0
	movl	-28(%rbp), %ecx	# secs, tmp193
	movl	$-1037155065, %edx	#, tmp195
	movl	%ecx, %eax	# tmp193, tmp360
	imull	%edx	# tmp195
	leal	(%rdx,%rcx), %eax	#, tmp196
	sarl	$16, %eax	#, tmp197
	movl	%eax, %edx	# tmp197, tmp197
	movl	%ecx, %eax	# tmp193, tmp198
	sarl	$31, %eax	#, tmp198
	subl	%eax, %edx	# tmp198, tmp192
	movl	%edx, %eax	# tmp192, tmp192
	imull	$86400, %eax, %eax	#, tmp192, tmp199
	subl	%eax, %ecx	# tmp199, tmp200
	movl	%ecx, %eax	# tmp200, tmp200
	movl	%eax, -28(%rbp)	# tmp200, secs
.L631:
	.loc 1 3788 0
	movl	-28(%rbp), %ecx	# secs, tmp201
	movl	$-1851608123, %edx	#, tmp203
	movl	%ecx, %eax	# tmp201, tmp361
	imull	%edx	# tmp203
	leal	(%rdx,%rcx), %eax	#, tmp204
	sarl	$11, %eax	#, tmp205
	movl	%eax, %edx	# tmp205, tmp205
	movl	%ecx, %eax	# tmp201, tmp206
	sarl	$31, %eax	#, tmp206
	subl	%eax, %edx	# tmp206, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp207
	movl	%edx, 8(%rax)	# D.14841, ptm_14(D)->tm_hour
	.loc 1 3789 0
	movl	-28(%rbp), %ecx	# secs, tmp209
	movl	$-1851608123, %edx	#, tmp211
	movl	%ecx, %eax	# tmp209, tmp362
	imull	%edx	# tmp211
	leal	(%rdx,%rcx), %eax	#, tmp212
	sarl	$11, %eax	#, tmp213
	movl	%eax, %edx	# tmp213, tmp213
	movl	%ecx, %eax	# tmp209, tmp214
	sarl	$31, %eax	#, tmp214
	subl	%eax, %edx	# tmp214, tmp208
	movl	%edx, %eax	# tmp208, tmp208
	imull	$3600, %eax, %eax	#, tmp208, tmp215
	subl	%eax, %ecx	# tmp215, tmp216
	movl	%ecx, %eax	# tmp216, tmp216
	movl	%eax, -28(%rbp)	# tmp216, secs
	.loc 1 3790 0
	movl	-28(%rbp), %ecx	# secs, tmp217
	movl	$-2004318071, %edx	#, tmp219
	movl	%ecx, %eax	# tmp217, tmp363
	imull	%edx	# tmp219
	leal	(%rdx,%rcx), %eax	#, tmp220
	sarl	$5, %eax	#, tmp221
	movl	%eax, %edx	# tmp221, tmp221
	movl	%ecx, %eax	# tmp217, tmp222
	sarl	$31, %eax	#, tmp222
	subl	%eax, %edx	# tmp222, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp223
	movl	%edx, 4(%rax)	# D.14841, ptm_14(D)->tm_min
	.loc 1 3791 0
	movl	-28(%rbp), %ecx	# secs, tmp225
	movl	$-2004318071, %edx	#, tmp227
	movl	%ecx, %eax	# tmp225, tmp364
	imull	%edx	# tmp227
	leal	(%rdx,%rcx), %eax	#, tmp228
	sarl	$5, %eax	#, tmp229
	movl	%eax, %edx	# tmp229, tmp229
	movl	%ecx, %eax	# tmp225, tmp230
	sarl	$31, %eax	#, tmp230
	subl	%eax, %edx	# tmp230, tmp224
	movl	%edx, %eax	# tmp224, tmp224
	sall	$2, %eax	#, tmp232
	movl	%eax, %edx	# tmp231, tmp233
	sall	$4, %edx	#, tmp233
	subl	%eax, %edx	# tmp231, tmp233
	movl	%ecx, %eax	# tmp225, tmp234
	subl	%edx, %eax	# tmp233, tmp234
	movl	%eax, -28(%rbp)	# tmp234, secs
	.loc 1 3792 0
	movq	-40(%rbp), %rax	# ptm, tmp235
	movl	(%rax), %edx	# ptm_14(D)->tm_sec, D.14841
	movl	-28(%rbp), %eax	# secs, tmp236
	addl	%eax, %edx	# tmp236, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp237
	movl	%edx, (%rax)	# D.14841, ptm_14(D)->tm_sec
	.loc 1 3802 0
	movl	-32(%rbp), %eax	# yearday, tmp238
	movl	%eax, -12(%rbp)	# tmp238, jday
	.loc 1 3803 0
	subl	$123, -32(%rbp)	#, yearday
	.loc 1 3804 0
	movl	-32(%rbp), %ecx	# yearday, tmp239
	movl	$963315389, %edx	#, tmp241
	movl	%ecx, %eax	# tmp239, tmp365
	imull	%edx	# tmp241
	sarl	$15, %edx	#, tmp242
	movl	%ecx, %eax	# tmp239, tmp243
	sarl	$31, %eax	#, tmp243
	subl	%eax, %edx	# tmp243, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	imull	$400, %eax, %eax	#, D.14841, tmp244
	movl	%eax, -16(%rbp)	# tmp244, year
	.loc 1 3805 0
	movl	-32(%rbp), %ecx	# yearday, tmp246
	movl	$963315389, %edx	#, tmp248
	movl	%ecx, %eax	# tmp246, tmp366
	imull	%edx	# tmp248
	sarl	$15, %edx	#, tmp249
	movl	%ecx, %eax	# tmp246, tmp250
	sarl	$31, %eax	#, tmp250
	subl	%eax, %edx	# tmp250, tmp245
	movl	%edx, %eax	# tmp245, tmp245
	imull	$146097, %eax, %eax	#, tmp245, tmp251
	subl	%eax, %ecx	# tmp251, tmp252
	movl	%ecx, %eax	# tmp252, tmp252
	movl	%eax, -32(%rbp)	# tmp252, yearday
	.loc 1 3806 0
	movl	-32(%rbp), %ecx	# yearday, tmp254
	movl	$-441679365, %edx	#, tmp256
	movl	%ecx, %eax	# tmp254, tmp367
	imull	%edx	# tmp256
	leal	(%rdx,%rcx), %eax	#, tmp257
	sarl	$15, %eax	#, tmp258
	movl	%eax, %edx	# tmp258, tmp258
	movl	%ecx, %eax	# tmp254, tmp259
	sarl	$31, %eax	#, tmp259
	subl	%eax, %edx	# tmp259, tmp253
	movl	%edx, %eax	# tmp253, tmp253
	movl	%eax, -8(%rbp)	# tmp253, odd_cent
	.loc 1 3807 0
	movl	-8(%rbp), %eax	# odd_cent, tmp260
	imull	$100, %eax, %eax	#, tmp260, D.14841
	addl	%eax, -16(%rbp)	# D.14841, year
	.loc 1 3808 0
	movl	-32(%rbp), %ecx	# yearday, tmp262
	movl	$-441679365, %edx	#, tmp264
	movl	%ecx, %eax	# tmp262, tmp368
	imull	%edx	# tmp264
	leal	(%rdx,%rcx), %eax	#, tmp265
	sarl	$15, %eax	#, tmp266
	movl	%eax, %edx	# tmp266, tmp266
	movl	%ecx, %eax	# tmp262, tmp267
	sarl	$31, %eax	#, tmp267
	subl	%eax, %edx	# tmp267, tmp261
	movl	%edx, %eax	# tmp261, tmp261
	imull	$36524, %eax, %eax	#, tmp261, tmp268
	subl	%eax, %ecx	# tmp268, tmp269
	movl	%ecx, %eax	# tmp269, tmp269
	movl	%eax, -32(%rbp)	# tmp269, yearday
	.loc 1 3809 0
	movl	-32(%rbp), %ecx	# yearday, tmp270
	movl	$376287347, %edx	#, tmp272
	movl	%ecx, %eax	# tmp270, tmp369
	imull	%edx	# tmp272
	sarl	$7, %edx	#, tmp273
	movl	%ecx, %eax	# tmp270, tmp274
	sarl	$31, %eax	#, tmp274
	subl	%eax, %edx	# tmp274, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	sall	$2, %eax	#, D.14841
	addl	%eax, -16(%rbp)	# D.14841, year
	.loc 1 3810 0
	movl	-32(%rbp), %ecx	# yearday, tmp276
	movl	$376287347, %edx	#, tmp278
	movl	%ecx, %eax	# tmp276, tmp370
	imull	%edx	# tmp278
	sarl	$7, %edx	#, tmp279
	movl	%ecx, %eax	# tmp276, tmp280
	sarl	$31, %eax	#, tmp280
	subl	%eax, %edx	# tmp280, tmp275
	movl	%edx, %eax	# tmp275, tmp275
	imull	$1461, %eax, %eax	#, tmp275, tmp281
	subl	%eax, %ecx	# tmp281, tmp282
	movl	%ecx, %eax	# tmp282, tmp282
	movl	%eax, -32(%rbp)	# tmp282, yearday
	.loc 1 3811 0
	movl	-32(%rbp), %ecx	# yearday, tmp284
	movl	$-1282606671, %edx	#, tmp286
	movl	%ecx, %eax	# tmp284, tmp371
	imull	%edx	# tmp286
	leal	(%rdx,%rcx), %eax	#, tmp287
	sarl	$8, %eax	#, tmp288
	movl	%eax, %edx	# tmp288, tmp288
	movl	%ecx, %eax	# tmp284, tmp289
	sarl	$31, %eax	#, tmp289
	subl	%eax, %edx	# tmp289, tmp283
	movl	%edx, %eax	# tmp283, tmp283
	movl	%eax, -4(%rbp)	# tmp283, odd_year
	.loc 1 3812 0
	movl	-4(%rbp), %eax	# odd_year, tmp290
	addl	%eax, -16(%rbp)	# tmp290, year
	.loc 1 3813 0
	movl	-32(%rbp), %ecx	# yearday, tmp292
	movl	$-1282606671, %edx	#, tmp294
	movl	%ecx, %eax	# tmp292, tmp372
	imull	%edx	# tmp294
	leal	(%rdx,%rcx), %eax	#, tmp295
	sarl	$8, %eax	#, tmp296
	movl	%eax, %edx	# tmp296, tmp296
	movl	%ecx, %eax	# tmp292, tmp297
	sarl	$31, %eax	#, tmp297
	subl	%eax, %edx	# tmp297, tmp291
	movl	%edx, %eax	# tmp291, tmp291
	imull	$365, %eax, %eax	#, tmp291, tmp298
	subl	%eax, %ecx	# tmp298, tmp299
	movl	%ecx, %eax	# tmp299, tmp299
	movl	%eax, -32(%rbp)	# tmp299, yearday
	.loc 1 3814 0
	cmpl	$0, -32(%rbp)	#, yearday
	jne	.L632	#,
	.loc 1 3814 0 is_stmt 0 discriminator 1
	cmpl	$4, -8(%rbp)	#, odd_cent
	je	.L633	#,
	cmpl	$4, -4(%rbp)	#, odd_year
	jne	.L632	#,
.L633:
	.loc 1 3815 0 is_stmt 1
	movl	$1, -24(%rbp)	#, month
	.loc 1 3816 0
	movl	$29, -32(%rbp)	#, yearday
	jmp	.L634	#
.L632:
	.loc 1 3819 0
	addl	$123, -32(%rbp)	#, yearday
	.loc 1 3820 0
	movl	-32(%rbp), %edx	# yearday, tmp300
	movl	%edx, %eax	# tmp300, tmp301
	sall	$2, %eax	#, tmp301
	leal	(%rax,%rdx), %ecx	#, D.14841
	movl	$-701792041, %edx	#, tmp303
	movl	%ecx, %eax	# D.14841, tmp373
	imull	%edx	# tmp303
	leal	(%rdx,%rcx), %eax	#, tmp304
	sarl	$7, %eax	#, tmp305
	movl	%eax, %edx	# tmp305, tmp305
	movl	%ecx, %eax	# D.14841, tmp306
	sarl	$31, %eax	#, tmp306
	subl	%eax, %edx	# tmp306, tmp307
	movl	%edx, %eax	# tmp307, tmp307
	movl	%eax, -24(%rbp)	# tmp307, month
	.loc 1 3821 0
	movl	-24(%rbp), %eax	# month, tmp308
	imull	$153, %eax, %ecx	#, tmp308, D.14841
	movl	$1717986919, %edx	#, tmp310
	movl	%ecx, %eax	# D.14841, tmp374
	imull	%edx	# tmp310
	sarl	%edx	# tmp311
	movl	%ecx, %eax	# D.14841, tmp312
	sarl	$31, %eax	#, tmp312
	subl	%eax, %edx	# tmp312, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	subl	%eax, -32(%rbp)	# D.14841, yearday
	.loc 1 3823 0
	cmpl	$13, -24(%rbp)	#, month
	jle	.L635	#,
	.loc 1 3824 0
	subl	$14, -24(%rbp)	#, month
	.loc 1 3825 0
	addl	$1, -16(%rbp)	#, year
	jmp	.L634	#
.L635:
	.loc 1 3828 0
	subl	$2, -24(%rbp)	#, month
.L634:
	.loc 1 3831 0
	movl	-16(%rbp), %eax	# year, tmp313
	leal	-1900(%rax), %edx	#, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp314
	movl	%edx, 20(%rax)	# D.14841, ptm_14(D)->tm_year
	.loc 1 3832 0
	cmpl	$0, -32(%rbp)	#, yearday
	je	.L636	#,
	.loc 1 3833 0
	movq	-40(%rbp), %rax	# ptm, tmp315
	movl	-32(%rbp), %edx	# yearday, tmp316
	movl	%edx, 12(%rax)	# tmp316, ptm_14(D)->tm_mday
	.loc 1 3834 0
	movq	-40(%rbp), %rax	# ptm, tmp317
	movl	-24(%rbp), %edx	# month, tmp318
	movl	%edx, 16(%rax)	# tmp318, ptm_14(D)->tm_mon
	jmp	.L637	#
.L636:
	.loc 1 3837 0
	movq	-40(%rbp), %rax	# ptm, tmp319
	movl	$31, 12(%rax)	#, ptm_14(D)->tm_mday
	.loc 1 3838 0
	movl	-24(%rbp), %eax	# month, tmp320
	leal	-1(%rax), %edx	#, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp321
	movl	%edx, 16(%rax)	# D.14841, ptm_14(D)->tm_mon
.L637:
	.loc 1 3841 0
	subl	$1, -16(%rbp)	#, year
	.loc 1 3842 0
	movl	-16(%rbp), %eax	# year, tmp322
	imull	$365, %eax, %edx	#, tmp322, D.14841
	movl	-16(%rbp), %eax	# year, tmp323
	leal	3(%rax), %ecx	#, tmp325
	testl	%eax, %eax	# tmp324
	cmovs	%ecx, %eax	# tmp325,, tmp324
	sarl	$2, %eax	#, tmp326
	leal	(%rdx,%rax), %esi	#, D.14841
	movl	-16(%rbp), %ecx	# year, tmp327
	movl	$1374389535, %edx	#, tmp329
	movl	%ecx, %eax	# tmp327, tmp375
	imull	%edx	# tmp329
	sarl	$5, %edx	#, tmp330
	movl	%ecx, %eax	# tmp327, tmp331
	sarl	$31, %eax	#, tmp331
	subl	%eax, %edx	# tmp331, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	subl	%eax, %esi	# D.14841, D.14841
	movl	-16(%rbp), %ecx	# year, tmp332
	movl	$1374389535, %edx	#, tmp334
	movl	%ecx, %eax	# tmp332, tmp376
	imull	%edx	# tmp334
	sarl	$7, %edx	#, tmp335
	movl	%ecx, %eax	# tmp332, tmp336
	sarl	$31, %eax	#, tmp336
	subl	%eax, %edx	# tmp336, D.14841
	movl	%edx, %eax	# D.14841, D.14841
	addl	%esi, %eax	# D.14841, tmp337
	movl	%eax, -32(%rbp)	# tmp337, yearday
	.loc 1 3843 0
	addl	$429, -32(%rbp)	#, yearday
	.loc 1 3844 0
	movl	-32(%rbp), %eax	# yearday, tmp338
	movl	-12(%rbp), %edx	# jday, tmp339
	subl	%eax, %edx	# tmp338, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp340
	movl	%edx, 28(%rax)	# D.14841, ptm_14(D)->tm_yday
	.loc 1 3846 0
	movq	-40(%rbp), %rax	# ptm, tmp341
	movl	24(%rax), %eax	# ptm_14(D)->tm_wday, D.14841
	cmpl	$6, %eax	#, D.14842
	jbe	.L621	#,
	.loc 1 3847 0
	movl	-12(%rbp), %eax	# jday, tmp342
	leal	6(%rax), %ecx	#, D.14841
	movl	$-1840700269, %edx	#, tmp344
	movl	%ecx, %eax	# D.14841, tmp377
	imull	%edx	# tmp344
	leal	(%rdx,%rcx), %eax	#, tmp345
	sarl	$2, %eax	#, tmp346
	movl	%eax, %edx	# tmp346, tmp346
	movl	%ecx, %eax	# D.14841, tmp347
	sarl	$31, %eax	#, tmp347
	subl	%eax, %edx	# tmp347, D.14841
	movl	%edx, %eax	# D.14841, tmp348
	sall	$3, %eax	#, tmp349
	subl	%edx, %eax	# D.14841, tmp348
	subl	%eax, %ecx	# tmp348, D.14841
	movl	%ecx, %edx	# D.14841, D.14841
	movq	-40(%rbp), %rax	# ptm, tmp350
	movl	%edx, 24(%rax)	# D.14841, ptm_14(D)->tm_wday
.L621:
	.loc 1 3848 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	Perl_mini_mktime, .-Perl_mini_mktime
	.section	.rodata
.LC38:
	.string	"panic: no strftime"
	.text
	.globl	Perl_my_strftime
	.type	Perl_my_strftime, @function
Perl_my_strftime:
.LFB80:
	.loc 1 3852 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fmt, fmt
	movl	%esi, -12(%rbp)	# sec, sec
	movl	%edx, -16(%rbp)	# min, min
	movl	%ecx, -20(%rbp)	# hour, hour
	movl	%r8d, -24(%rbp)	# mday, mday
	movl	%r9d, -28(%rbp)	# mon, mon
	.loc 1 3925 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 3927 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	Perl_my_strftime, .-Perl_my_strftime
	.section	.rodata
.LC39:
	.string	".."
	.align 8
.LC40:
	.string	"Unstable directory path, current directory changed unexpectedly"
	.text
	.globl	Perl_getcwd_sv
	.type	Perl_getcwd_sv, @function
Perl_getcwd_sv:
.LFB81:
	.loc 1 3958 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$216, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# sv, sv
	.loc 1 3987 0
	movl	$0, -204(%rbp)	#, pathlen
	.loc 1 3991 0
	movl	12(%rbx), %eax	# sv_9(D)->sv_flags, D.14845
	movzbl	%al, %eax	# D.14845, D.14845
	cmpl	$3, %eax	#, D.14845
	ja	.L641	#,
	.loc 1 3991 0 is_stmt 0 discriminator 2
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.14846
	je	.L643	#,
.L641:
	.loc 1 3991 0 discriminator 1
	nop
.L643:
	.loc 1 3993 0 is_stmt 1
	leaq	-160(%rbp), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	movl	$.LC16, %edi	#,
	call	stat	#
	testl	%eax, %eax	# D.14844
	jns	.L644	#,
	.loc 1 3994 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L644:
	.loc 1 3997 0
	movq	-160(%rbp), %rax	# statbuf.st_dev, D.14847
	movl	%eax, -200(%rbp)	# D.14847, orig_cdev
	.loc 1 3998 0
	movq	-152(%rbp), %rax	# statbuf.st_ino, D.14847
	movl	%eax, -196(%rbp)	# D.14847, orig_cino
	.loc 1 3999 0
	movl	-200(%rbp), %eax	# orig_cdev, tmp132
	movl	%eax, -216(%rbp)	# tmp132, cdev
	.loc 1 4000 0
	movl	-196(%rbp), %eax	# orig_cino, tmp133
	movl	%eax, -212(%rbp)	# tmp133, cino
.L663:
	.loc 1 4003 0
	movl	-216(%rbp), %eax	# cdev, tmp134
	movl	%eax, -192(%rbp)	# tmp134, odev
	.loc 1 4004 0
	movl	-212(%rbp), %eax	# cino, tmp135
	movl	%eax, -188(%rbp)	# tmp135, oino
	.loc 1 4006 0
	movl	$.LC39, %edi	#,
	call	chdir	#
	testl	%eax, %eax	# D.14844
	jns	.L646	#,
	.loc 1 4007 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L646:
	.loc 1 4009 0
	leaq	-160(%rbp), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	movl	$.LC16, %edi	#,
	call	stat	#
	testl	%eax, %eax	# D.14844
	jns	.L647	#,
	.loc 1 4010 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L647:
	.loc 1 4013 0
	movq	-160(%rbp), %rax	# statbuf.st_dev, D.14847
	movl	%eax, -216(%rbp)	# D.14847, cdev
	.loc 1 4014 0
	movq	-152(%rbp), %rax	# statbuf.st_ino, D.14847
	movl	%eax, -212(%rbp)	# D.14847, cino
	.loc 1 4016 0
	movl	-192(%rbp), %eax	# odev, tmp137
	cmpl	-216(%rbp), %eax	# cdev, tmp137
	jne	.L648	#,
	.loc 1 4016 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# oino, tmp138
	cmpl	-212(%rbp), %eax	# cino, tmp138
	jne	.L648	#,
	.loc 1 4017 0 is_stmt 1
	nop
	.loc 1 4074 0
	cmpl	$0, -204(%rbp)	#, pathlen
	je	.L664	#,
	jmp	.L669	#
.L648:
	.loc 1 4019 0
	movl	$.LC16, %edi	#,
	call	opendir	#
	movq	%rax, -176(%rbp)	# tmp139, dir
	cmpq	$0, -176(%rbp)	#, dir
	jne	.L650	#,
	.loc 1 4020 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L650:
	.loc 1 4023 0
	jmp	.L651	#
.L656:
	.loc 1 4027 0
	movq	-168(%rbp), %rax	# dp, tmp140
	addq	$19, %rax	#, D.14850
	movq	%rax, %rdi	# D.14850,
	call	strlen	#
	movl	%eax, -208(%rbp)	# D.14847, namelen
	.loc 1 4030 0
	movq	-168(%rbp), %rax	# dp, tmp141
	movzbl	19(%rax), %eax	# dp_58->d_name, D.14846
	cmpb	$46, %al	#, D.14846
	jne	.L652	#,
	.loc 1 4030 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# dp, tmp142
	movzbl	20(%rax), %eax	# dp_58->d_name, D.14846
	testb	%al, %al	# D.14846
	je	.L653	#,
	movq	-168(%rbp), %rax	# dp, tmp143
	movzbl	20(%rax), %eax	# dp_58->d_name, D.14846
	cmpb	$46, %al	#, D.14846
	jne	.L652	#,
	movq	-168(%rbp), %rax	# dp, tmp144
	movzbl	21(%rax), %eax	# dp_58->d_name, D.14846
	testb	%al, %al	# D.14846
	jne	.L652	#,
.L653:
	.loc 1 4031 0 is_stmt 1
	jmp	.L651	#
.L652:
	.loc 1 4034 0
	movq	-168(%rbp), %rax	# dp, tmp145
	leaq	19(%rax), %rdx	#, D.14850
	leaq	-160(%rbp), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	movq	%rdx, %rdi	# D.14850,
	call	stat	#
	testl	%eax, %eax	# D.14844
	jns	.L654	#,
	.loc 1 4035 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L654:
	.loc 1 4038 0
	movq	-160(%rbp), %rax	# statbuf.st_dev, D.14847
	movl	%eax, -184(%rbp)	# D.14847, tdev
	.loc 1 4039 0
	movq	-152(%rbp), %rax	# statbuf.st_ino, D.14847
	movl	%eax, -180(%rbp)	# D.14847, tino
	.loc 1 4040 0
	movl	-180(%rbp), %eax	# tino, tmp147
	cmpl	-188(%rbp), %eax	# oino, tmp147
	jne	.L651	#,
	.loc 1 4040 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# tdev, tmp148
	cmpl	-192(%rbp), %eax	# odev, tmp148
	jne	.L651	#,
	.loc 1 4041 0 is_stmt 1
	jmp	.L655	#
.L651:
	.loc 1 4023 0 discriminator 1
	movq	-176(%rbp), %rax	# dir, tmp149
	movq	%rax, %rdi	# tmp149,
	call	readdir	#
	movq	%rax, -168(%rbp)	# tmp150, dp
	cmpq	$0, -168(%rbp)	#, dp
	jne	.L656	#,
.L655:
	.loc 1 4045 0
	cmpq	$0, -168(%rbp)	#, dp
	jne	.L657	#,
	.loc 1 4046 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L657:
	.loc 1 4049 0
	movl	-208(%rbp), %eax	# namelen, tmp151
	movl	-204(%rbp), %edx	# pathlen, tmp152
	addl	%edx, %eax	# tmp152, D.14844
	addl	$1, %eax	#, D.14844
	cmpl	$4095, %eax	#, D.14844
	jle	.L658	#,
	.loc 1 4050 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L658:
	.loc 1 4053 0
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_77].xpv_len, D.14847
	movl	-208(%rbp), %eax	# namelen, tmp153
	movl	-204(%rbp), %ecx	# pathlen, tmp154
	addl	%ecx, %eax	# tmp154, D.14844
	addl	$1, %eax	#, D.14844
	cltq
	cmpq	%rax, %rdx	# D.14847, D.14847
	jae	.L660	#,
	.loc 1 4053 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# namelen, tmp155
	movl	-204(%rbp), %edx	# pathlen, tmp156
	addl	%edx, %eax	# tmp156, D.14844
	addl	$1, %eax	#, D.14844
	cltq
	movq	%rax, %rsi	# D.14847,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_grow	#
.L660:
	.loc 1 4055 0 is_stmt 1
	cmpl	$0, -204(%rbp)	#, pathlen
	je	.L661	#,
	.loc 1 4057 0
	movl	-204(%rbp), %eax	# pathlen, tmp157
	movslq	%eax, %rdx	# tmp157, D.14847
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	(%rax), %rax	# MEM[(struct XPV *)_89].xpv_pv, D.14849
	movq	(%rbx), %rcx	# sv_9(D)->sv_any, D.14848
	movq	(%rcx), %rcx	# MEM[(struct XPV *)_91].xpv_pv, D.14849
	movl	-208(%rbp), %esi	# namelen, tmp158
	movslq	%esi, %rsi	# tmp158, D.14851
	addq	$1, %rsi	#, D.14851
	addq	%rsi, %rcx	# D.14851, D.14849
	movq	%rax, %rsi	# D.14849,
	movq	%rcx, %rdi	# D.14849,
	call	memmove	#
.L661:
	.loc 1 4061 0
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	(%rax), %rax	# MEM[(struct XPV *)_96].xpv_pv, D.14849
	movb	$47, (%rax)	#, *_97
	.loc 1 4062 0
	movl	-208(%rbp), %eax	# namelen, tmp159
	cltq
	movq	-168(%rbp), %rdx	# dp, tmp160
	leaq	19(%rdx), %rsi	#, D.14850
	movq	(%rbx), %rdx	# sv_9(D)->sv_any, D.14848
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_100].xpv_pv, D.14849
	leaq	1(%rdx), %rcx	#, D.14848
	movq	%rax, %rdx	# D.14847,
	movq	%rcx, %rdi	# D.14848,
	call	memmove	#
	.loc 1 4063 0
	movl	-208(%rbp), %eax	# namelen, tmp161
	addl	$1, %eax	#, D.14844
	addl	%eax, -204(%rbp)	# D.14844, pathlen
	.loc 1 4068 0
	movq	-176(%rbp), %rax	# dir, tmp162
	movq	%rax, %rdi	# tmp162,
	call	closedir	#
	testl	%eax, %eax	# D.14844
	jns	.L662	#,
	.loc 1 4069 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L662:
	.loc 1 4072 0
	jmp	.L663	#
.L669:
	.loc 1 4075 0
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movl	-204(%rbp), %edx	# pathlen, tmp163
	movslq	%edx, %rdx	# tmp163, D.14847
	movq	%rdx, 8(%rax)	# D.14847, MEM[(struct XPV *)_34].xpv_cur
	.loc 1 4076 0
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	(%rax), %rdx	# MEM[(struct XPV *)_36].xpv_pv, D.14849
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	8(%rax), %rax	# MEM[(struct XPV *)_38].xpv_cur, D.14847
	addq	%rdx, %rax	# D.14849, D.14849
	movb	$0, (%rax)	#, *_40
	.loc 1 4077 0
	movl	12(%rbx), %eax	# sv_9(D)->sv_flags, D.14845
	andl	$1223753727, %eax	#, D.14845
	movl	%eax, 12(%rbx)	# D.14845, sv_9(D)->sv_flags
	movl	12(%rbx), %eax	# sv_9(D)->sv_flags, D.14845
	orl	$67371008, %eax	#, D.14845
	movl	%eax, 12(%rbx)	# D.14845, sv_9(D)->sv_flags
	.loc 1 4079 0
	movq	(%rbx), %rax	# sv_9(D)->sv_any, D.14848
	movq	(%rax), %rax	# MEM[(struct XPV *)_45].xpv_pv, D.14849
	movq	%rax, %rdi	# D.14849,
	call	chdir	#
	testl	%eax, %eax	# D.14844
	jns	.L664	#,
	.loc 1 4080 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L664:
	.loc 1 4083 0
	leaq	-160(%rbp), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	movl	$.LC16, %edi	#,
	call	stat	#
	testl	%eax, %eax	# D.14844
	jns	.L665	#,
	.loc 1 4084 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	movl	$0, %eax	#, D.14844
	jmp	.L668	#
.L665:
	.loc 1 4087 0
	movq	-160(%rbp), %rax	# statbuf.st_dev, D.14847
	movl	%eax, -216(%rbp)	# D.14847, cdev
	.loc 1 4088 0
	movq	-152(%rbp), %rax	# statbuf.st_ino, D.14847
	movl	%eax, -212(%rbp)	# D.14847, cino
	.loc 1 4090 0
	movl	-216(%rbp), %eax	# cdev, tmp165
	cmpl	-200(%rbp), %eax	# orig_cdev, tmp165
	jne	.L666	#,
	.loc 1 4090 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# cino, tmp166
	cmpl	-196(%rbp), %eax	# orig_cino, tmp166
	je	.L667	#,
.L666:
	.loc 1 4091 0 is_stmt 1
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L667:
	.loc 1 4095 0
	movl	$1, %eax	#, D.14844
.L668:
	.loc 1 4101 0
	addq	$216, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	Perl_getcwd_sv, .-Perl_getcwd_sv
	.globl	Perl_my_socketpair
	.type	Perl_my_socketpair, @function
Perl_my_socketpair:
.LFB82:
	.loc 1 4348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# family, family
	movl	%esi, -8(%rbp)	# type, type
	movl	%edx, -12(%rbp)	# protocol, protocol
	movq	%rcx, -24(%rbp)	# fd, fd
	.loc 1 4352 0
	movl	$-1, %eax	#, D.14854
	.loc 1 4354 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	Perl_my_socketpair, .-Perl_my_socketpair
	.globl	Perl_sv_nosharing
	.type	Perl_sv_nosharing, @function
Perl_sv_nosharing:
.LFB83:
	.loc 1 4370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 4371 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	Perl_sv_nosharing, .-Perl_sv_nosharing
	.globl	Perl_sv_nolocking
	.type	Perl_sv_nolocking, @function
Perl_sv_nolocking:
.LFB84:
	.loc 1 4385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 4386 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	Perl_sv_nolocking, .-Perl_sv_nolocking
	.globl	Perl_sv_nounlocking
	.type	Perl_sv_nounlocking, @function
Perl_sv_nounlocking:
.LFB85:
	.loc 1 4401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 4402 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	Perl_sv_nounlocking, .-Perl_sv_nounlocking
	.section	.rodata
	.align 8
.LC41:
	.string	"Unknown Unicode option letter '%c'"
	.align 8
.LC42:
	.string	"Unknown Unicode option value %lu"
	.text
	.globl	Perl_parse_unicode_opts
	.type	Perl_parse_unicode_opts, @function
Perl_parse_unicode_opts:
.LFB86:
	.loc 1 4406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# popt, popt
	.loc 1 4407 0
	movq	-24(%rbp), %rax	# popt, tmp82
	movq	(%rax), %rax	# *popt_9(D), tmp83
	movq	%rax, -8(%rbp)	# tmp83, p
	.loc 1 4408 0
	movl	$0, -12(%rbp)	#, opt
	.loc 1 4410 0
	movq	-8(%rbp), %rax	# p, tmp84
	movzbl	(%rax), %eax	# *p_10, D.14855
	testb	%al, %al	# D.14855
	je	.L676	#,
	.loc 1 4411 0
	movq	-8(%rbp), %rax	# p, tmp85
	movzbl	(%rax), %eax	# *p_10, D.14855
	cmpb	$47, %al	#, D.14855
	jle	.L677	#,
	.loc 1 4411 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp86
	movzbl	(%rax), %eax	# *p_10, D.14855
	cmpb	$57, %al	#, D.14855
	jg	.L677	#,
	.loc 1 4412 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp87
	movq	%rax, %rdi	# tmp87,
	call	atoi	#
	movl	%eax, -12(%rbp)	# D.14856, opt
	.loc 1 4413 0
	jmp	.L678	#
.L680:
	.loc 1 4413 0 is_stmt 0 discriminator 1
	addq	$1, -8(%rbp)	#, p
.L678:
	movq	-8(%rbp), %rax	# p, tmp88
	movzbl	(%rax), %eax	# *p_1, D.14855
	cmpb	$47, %al	#, D.14855
	jle	.L679	#,
	.loc 1 4413 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp89
	movzbl	(%rax), %eax	# *p_1, D.14855
	cmpb	$57, %al	#, D.14855
	jle	.L680	#,
.L679:
	.loc 1 4414 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp90
	movzbl	(%rax), %eax	# *p_1, D.14855
	testb	%al, %al	# D.14855
	je	.L681	#,
	.loc 1 4414 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp91
	movzbl	(%rax), %eax	# *p_1, D.14855
	cmpb	$10, %al	#, D.14855
	je	.L681	#,
	movq	-8(%rbp), %rax	# p, tmp92
	movzbl	(%rax), %eax	# *p_1, D.14855
	cmpb	$13, %al	#, D.14855
	je	.L681	#,
	.loc 1 4415 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp93
	movzbl	(%rax), %eax	# *p_1, D.14855
	movsbl	%al, %eax	# D.14855, D.14856
	movl	%eax, %esi	# D.14856,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 4414 0
	jmp	.L682	#
.L681:
	.loc 1 4414 0 is_stmt 0 discriminator 2
	jmp	.L682	#
.L677:
	.loc 1 4418 0 is_stmt 1
	jmp	.L683	#
.L696:
	.loc 1 4419 0
	movq	-8(%rbp), %rax	# p, tmp94
	movzbl	(%rax), %eax	# *p_2, D.14855
	movsbl	%al, %eax	# D.14855, D.14856
	subl	$65, %eax	#, tmp95
	cmpl	$46, %eax	#, tmp95
	ja	.L684	#,
	movl	%eax, %eax	# tmp95, tmp96
	movq	.L686(,%rax,8), %rax	#, tmp97
	jmp	*%rax	# tmp97
	.section	.rodata
	.align 8
	.align 4
.L686:
	.quad	.L685
	.quad	.L684
	.quad	.L684
	.quad	.L687
	.quad	.L688
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L689
	.quad	.L684
	.quad	.L684
	.quad	.L690
	.quad	.L684
	.quad	.L684
	.quad	.L691
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L692
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L693
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L684
	.quad	.L694
	.text
.L689:
	.loc 1 4421 0
	orl	$1, -12(%rbp)	#, opt
	jmp	.L695	#
.L691:
	.loc 1 4423 0
	orl	$2, -12(%rbp)	#, opt
	jmp	.L695	#
.L688:
	.loc 1 4425 0
	orl	$4, -12(%rbp)	#, opt
	jmp	.L695	#
.L692:
	.loc 1 4427 0
	orl	$7, -12(%rbp)	#, opt
	jmp	.L695	#
.L693:
	.loc 1 4429 0
	orl	$8, -12(%rbp)	#, opt
	jmp	.L695	#
.L694:
	.loc 1 4431 0
	orl	$16, -12(%rbp)	#, opt
	jmp	.L695	#
.L687:
	.loc 1 4433 0
	orl	$24, -12(%rbp)	#, opt
	jmp	.L695	#
.L690:
	.loc 1 4435 0
	orl	$64, -12(%rbp)	#, opt
	jmp	.L695	#
.L685:
	.loc 1 4437 0
	orl	$32, -12(%rbp)	#, opt
	jmp	.L695	#
.L684:
	.loc 1 4439 0
	movq	-8(%rbp), %rax	# p, tmp98
	movzbl	(%rax), %eax	# *p_2, D.14855
	cmpb	$10, %al	#, D.14855
	je	.L695	#,
	.loc 1 4439 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp99
	movzbl	(%rax), %eax	# *p_2, D.14855
	cmpb	$13, %al	#, D.14855
	je	.L695	#,
	.loc 1 4441 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp100
	movzbl	(%rax), %eax	# *p_2, D.14855
	.loc 1 4440 0
	movsbl	%al, %eax	# D.14855, D.14856
	movl	%eax, %esi	# D.14856,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L695:
	.loc 1 4418 0
	addq	$1, -8(%rbp)	#, p
.L683:
	.loc 1 4418 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp101
	movzbl	(%rax), %eax	# *p_2, D.14855
	testb	%al, %al	# D.14855
	jne	.L696	#,
	jmp	.L697	#
.L682:
	jmp	.L697	#
.L676:
	.loc 1 4447 0 is_stmt 1
	movl	$95, -12(%rbp)	#, opt
.L697:
	.loc 1 4449 0
	movl	-12(%rbp), %eax	# opt, tmp102
	movb	$0, %al	#, D.14857
	testl	%eax, %eax	# D.14857
	je	.L698	#,
	.loc 1 4450 0
	movl	-12(%rbp), %eax	# opt, D.14858
	andl	$4294967040, %eax	#, D.14858
	movq	%rax, %rsi	# D.14858,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L698:
	.loc 1 4453 0
	movq	-24(%rbp), %rax	# popt, tmp103
	movq	-8(%rbp), %rdx	# p, tmp104
	movq	%rdx, (%rax)	# tmp104, *popt_9(D)
	.loc 1 4455 0
	movl	-12(%rbp), %eax	# opt, D.14859
	.loc 1 4456 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	Perl_parse_unicode_opts, .-Perl_parse_unicode_opts
	.globl	Perl_seed
	.type	Perl_seed, @function
Perl_seed:
.LFB87:
	.loc 1 4460 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4465 0
	movl	$0, %eax	#, D.14862
	.loc 1 4544 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	Perl_seed, .-Perl_seed
	.globl	Perl_get_hash_seed
	.type	Perl_get_hash_seed, @function
Perl_get_hash_seed:
.LFB88:
	.loc 1 4548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4553 0
	movl	$0, %eax	#, D.14863
	.loc 1 4588 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	Perl_get_hash_seed, .-Perl_get_hash_seed
	.data
	.align 16
	.type	dgd.10944, @object
	.size	dgd.10944, 29
dgd.10944:
	.string	" during global destruction.\n"
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 8 "<built-in>"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 10 "/usr/include/setjmp.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 13 "/usr/include/dirent.h"
	.file 14 "perl.h"
	.file 15 "op.h"
	.file 16 "cop.h"
	.file 17 "sv.h"
	.file 18 "regexp.h"
	.file 19 "gv.h"
	.file 20 "mg.h"
	.file 21 "av.h"
	.file 22 "hv.h"
	.file 23 "cv.h"
	.file 24 "handy.h"
	.file 25 "perlio.h"
	.file 26 "iperlsys.h"
	.file 27 "pad.h"
	.file 28 "scope.h"
	.file 29 "/usr/include/signal.h"
	.file 30 "/usr/include/unistd.h"
	.file 31 "opcode.h"
	.file 32 "intrpvar.h"
	.file 33 "thrdvar.h"
	.file 34 "perlvars.h"
	.file 35 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4f3f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1117
	.byte	0x1
	.long	.LASF1118
	.long	.LASF1119
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
	.byte	0x85
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x86
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x87
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x88
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x8a
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x8b
	.long	0x42
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x8e
	.long	0x57
	.uleb128 0x5
	.long	0x57
	.long	0xcd
	.uleb128 0x6
	.long	0xcd
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF20
	.byte	0x2
	.byte	0xb8
	.long	0x5e
	.uleb128 0x8
	.byte	0x8
	.long	0x113
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x62
	.long	0xb2
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x6d
	.long	0xf7
	.uleb128 0x4
	.long	.LASF24
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x9
	.byte	0x80
	.byte	0x5
	.byte	0x1c
	.long	0x150
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x1e
	.long	0x150
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x42
	.long	0x160
	.uleb128 0x6
	.long	0xcd
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x5
	.byte	0x1f
	.long	0x13b
	.uleb128 0xb
	.long	.LASF32
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x190
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x7a
	.long	0xd4
	.byte	0
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0x7b
	.long	0x102
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF29
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF30
	.uleb128 0x5
	.long	0x113
	.long	0x1ae
	.uleb128 0x6
	.long	0xcd
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x57
	.uleb128 0x4
	.long	.LASF31
	.byte	0x7
	.byte	0x28
	.long	0x1be
	.uleb128 0x5
	.long	0x1ce
	.long	0x1ce
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x18
	.byte	0x8
	.byte	0
	.long	0x20b
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.byte	0
	.long	0x3b
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.byte	0
	.long	0x3b
	.byte	0x4
	.uleb128 0xa
	.long	.LASF36
	.byte	0x8
	.byte	0
	.long	0xdf
	.byte	0x8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x8
	.byte	0
	.long	0xdf
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x7
	.byte	0x62
	.long	0x1b3
	.uleb128 0x8
	.byte	0x8
	.long	0x21c
	.uleb128 0xd
	.long	0x113
	.uleb128 0x4
	.long	.LASF39
	.byte	0x9
	.byte	0x1f
	.long	0x22c
	.uleb128 0x5
	.long	0x5e
	.long	0x23c
	.uleb128 0x6
	.long	0xcd
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xc8
	.byte	0xa
	.byte	0x22
	.long	0x26d
	.uleb128 0xa
	.long	.LASF41
	.byte	0xa
	.byte	0x28
	.long	0x221
	.byte	0
	.uleb128 0xa
	.long	.LASF42
	.byte	0xa
	.byte	0x29
	.long	0x57
	.byte	0x40
	.uleb128 0xa
	.long	.LASF43
	.byte	0xa
	.byte	0x2a
	.long	0x160
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.long	0x23c
	.long	0x27d
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF44
	.byte	0xa
	.byte	0x63
	.long	0x26d
	.uleb128 0x8
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF45
	.byte	0x90
	.byte	0xb
	.byte	0x2e
	.long	0x34f
	.uleb128 0xa
	.long	.LASF46
	.byte	0xb
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0xb
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0xa
	.long	.LASF48
	.byte	0xb
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF49
	.byte	0xb
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0xa
	.long	.LASF50
	.byte	0xb
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF51
	.byte	0xb
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF52
	.byte	0xb
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF53
	.byte	0xb
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF54
	.byte	0xb
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF55
	.byte	0xb
	.byte	0x4e
	.long	0xe1
	.byte	0x38
	.uleb128 0xa
	.long	.LASF56
	.byte	0xb
	.byte	0x50
	.long	0xec
	.byte	0x40
	.uleb128 0xa
	.long	.LASF57
	.byte	0xb
	.byte	0x5b
	.long	0x16b
	.byte	0x48
	.uleb128 0xa
	.long	.LASF58
	.byte	0xb
	.byte	0x5c
	.long	0x16b
	.byte	0x58
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x5d
	.long	0x16b
	.byte	0x68
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x6a
	.long	0x34f
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x102
	.long	0x35f
	.uleb128 0x6
	.long	0xcd
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"tm"
	.byte	0x38
	.byte	0x6
	.byte	0x85
	.long	0x3ef
	.uleb128 0xa
	.long	.LASF61
	.byte	0x6
	.byte	0x87
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF62
	.byte	0x6
	.byte	0x88
	.long	0x57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF63
	.byte	0x6
	.byte	0x89
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0x6
	.byte	0x8a
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF65
	.byte	0x6
	.byte	0x8b
	.long	0x57
	.byte	0x10
	.uleb128 0xa
	.long	.LASF66
	.byte	0x6
	.byte	0x8c
	.long	0x57
	.byte	0x14
	.uleb128 0xa
	.long	.LASF67
	.byte	0x6
	.byte	0x8d
	.long	0x57
	.byte	0x18
	.uleb128 0xa
	.long	.LASF68
	.byte	0x6
	.byte	0x8e
	.long	0x57
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF69
	.byte	0x6
	.byte	0x8f
	.long	0x57
	.byte	0x20
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.byte	0x92
	.long	0x5e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF71
	.byte	0x6
	.byte	0x93
	.long	0x216
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.value	0x118
	.byte	0xc
	.byte	0x16
	.long	0x439
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x19
	.long	0x86
	.byte	0
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0x1a
	.long	0xa7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0x1f
	.long	0x34
	.byte	0x10
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0x20
	.long	0x2d
	.byte	0x12
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0x21
	.long	0x439
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0x449
	.uleb128 0x6
	.long	0xcd
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.string	"DIR"
	.byte	0xd
	.byte	0x80
	.long	0x454
	.uleb128 0x11
	.long	.LASF267
	.uleb128 0x12
	.string	"IV"
	.byte	0xe
	.value	0x52b
	.long	0x5e
	.uleb128 0x12
	.string	"UV"
	.byte	0xe
	.value	0x52c
	.long	0x42
	.uleb128 0x12
	.string	"NV"
	.byte	0xe
	.value	0x5f3
	.long	0x47a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF78
	.uleb128 0x13
	.long	.LASF79
	.byte	0xe
	.value	0x7d3
	.long	0x130
	.uleb128 0x12
	.string	"OP"
	.byte	0xe
	.value	0x7d5
	.long	0x498
	.uleb128 0xe
	.string	"op"
	.byte	0x28
	.byte	0xf
	.byte	0xe2
	.long	0x504
	.uleb128 0xa
	.long	.LASF80
	.byte	0xf
	.byte	0xe3
	.long	0x1425
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xf
	.byte	0xe3
	.long	0x1425
	.byte	0x8
	.uleb128 0xa
	.long	.LASF82
	.byte	0xf
	.byte	0xe3
	.long	0x1e28
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0xf
	.byte	0xe3
	.long	0x149e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0xf
	.byte	0xe3
	.long	0x127b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF85
	.byte	0xf
	.byte	0xe3
	.long	0x127b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF86
	.byte	0xf
	.byte	0xe3
	.long	0x1271
	.byte	0x24
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0xe3
	.long	0x1271
	.byte	0x25
	.byte	0
	.uleb128 0x12
	.string	"COP"
	.byte	0xe
	.value	0x7d6
	.long	0x510
	.uleb128 0xe
	.string	"cop"
	.byte	0x60
	.byte	0x10
	.byte	0x10
	.long	0x5dd
	.uleb128 0xa
	.long	.LASF80
	.byte	0x10
	.byte	0x11
	.long	0x1425
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0x10
	.byte	0x11
	.long	0x1425
	.byte	0x8
	.uleb128 0xa
	.long	.LASF82
	.byte	0x10
	.byte	0x11
	.long	0x1e28
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0x10
	.byte	0x11
	.long	0x149e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0x10
	.byte	0x11
	.long	0x127b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF85
	.byte	0x10
	.byte	0x11
	.long	0x127b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF86
	.byte	0x10
	.byte	0x11
	.long	0x1271
	.byte	0x24
	.uleb128 0xa
	.long	.LASF87
	.byte	0x10
	.byte	0x11
	.long	0x1271
	.byte	0x25
	.uleb128 0xa
	.long	.LASF88
	.byte	0x10
	.byte	0x12
	.long	0x10d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF89
	.byte	0x10
	.byte	0x17
	.long	0x140d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x18
	.long	0x1442
	.byte	0x38
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x1a
	.long	0x1291
	.byte	0x40
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x1b
	.long	0x1286
	.byte	0x44
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x1c
	.long	0x129c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x1d
	.long	0x12b9
	.byte	0x50
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x1e
	.long	0x12b9
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.long	.LASF96
	.byte	0xe
	.value	0x7d7
	.long	0x5e9
	.uleb128 0xb
	.long	.LASF97
	.byte	0x30
	.byte	0xf
	.byte	0xe6
	.long	0x662
	.uleb128 0xa
	.long	.LASF80
	.byte	0xf
	.byte	0xe7
	.long	0x1425
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xf
	.byte	0xe7
	.long	0x1425
	.byte	0x8
	.uleb128 0xa
	.long	.LASF82
	.byte	0xf
	.byte	0xe7
	.long	0x1e28
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0xf
	.byte	0xe7
	.long	0x149e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0xf
	.byte	0xe7
	.long	0x127b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF85
	.byte	0xf
	.byte	0xe7
	.long	0x127b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF86
	.byte	0xf
	.byte	0xe7
	.long	0x1271
	.byte	0x24
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0xe7
	.long	0x1271
	.byte	0x25
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0xe8
	.long	0x1425
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	.LASF99
	.byte	0xe
	.value	0x7db
	.long	0x66e
	.uleb128 0xb
	.long	.LASF100
	.byte	0x70
	.byte	0xf
	.byte	0xfd
	.long	0x75c
	.uleb128 0xa
	.long	.LASF80
	.byte	0xf
	.byte	0xfe
	.long	0x1425
	.byte	0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xf
	.byte	0xfe
	.long	0x1425
	.byte	0x8
	.uleb128 0xa
	.long	.LASF82
	.byte	0xf
	.byte	0xfe
	.long	0x1e28
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0xf
	.byte	0xfe
	.long	0x149e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF84
	.byte	0xf
	.byte	0xfe
	.long	0x127b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF85
	.byte	0xf
	.byte	0xfe
	.long	0x127b
	.byte	0x22
	.uleb128 0xa
	.long	.LASF86
	.byte	0xf
	.byte	0xfe
	.long	0x1271
	.byte	0x24
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0xfe
	.long	0x1271
	.byte	0x25
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0xff
	.long	0x1425
	.byte	0x28
	.uleb128 0x14
	.long	.LASF101
	.byte	0xf
	.value	0x100
	.long	0x1425
	.byte	0x30
	.uleb128 0x14
	.long	.LASF102
	.byte	0xf
	.value	0x101
	.long	0x1425
	.byte	0x38
	.uleb128 0x14
	.long	.LASF103
	.byte	0xf
	.value	0x102
	.long	0x1425
	.byte	0x40
	.uleb128 0x14
	.long	.LASF104
	.byte	0xf
	.value	0x103
	.long	0x1e2e
	.byte	0x48
	.uleb128 0x14
	.long	.LASF105
	.byte	0xf
	.value	0x107
	.long	0x1e34
	.byte	0x50
	.uleb128 0x14
	.long	.LASF106
	.byte	0xf
	.value	0x109
	.long	0x1291
	.byte	0x58
	.uleb128 0x14
	.long	.LASF107
	.byte	0xf
	.value	0x10a
	.long	0x1291
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF108
	.byte	0xf
	.value	0x10b
	.long	0x1271
	.byte	0x60
	.uleb128 0x14
	.long	.LASF109
	.byte	0xf
	.value	0x10f
	.long	0x140d
	.byte	0x68
	.byte	0
	.uleb128 0x13
	.long	.LASF110
	.byte	0xe
	.value	0x7e1
	.long	0x768
	.uleb128 0x15
	.long	.LASF111
	.byte	0x1
	.byte	0xe
	.value	0xea7
	.long	0x783
	.uleb128 0x14
	.long	.LASF112
	.byte	0xe
	.value	0xea8
	.long	0x113
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"SV"
	.byte	0xe
	.value	0x7ea
	.long	0x78e
	.uleb128 0xe
	.string	"sv"
	.byte	0x10
	.byte	0x11
	.byte	0x43
	.long	0x7be
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x44
	.long	0xdf
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x45
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x46
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"AV"
	.byte	0xe
	.value	0x7eb
	.long	0x7c9
	.uleb128 0xe
	.string	"av"
	.byte	0x10
	.byte	0x11
	.byte	0x55
	.long	0x7f9
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x56
	.long	0x13f5
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x57
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x58
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"HV"
	.byte	0xe
	.value	0x7ec
	.long	0x804
	.uleb128 0xe
	.string	"hv"
	.byte	0x10
	.byte	0x11
	.byte	0x5b
	.long	0x834
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x5c
	.long	0x13fb
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x5d
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x5e
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"CV"
	.byte	0xe
	.value	0x7ed
	.long	0x83f
	.uleb128 0xe
	.string	"cv"
	.byte	0x10
	.byte	0x11
	.byte	0x4f
	.long	0x86f
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x50
	.long	0x13ef
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x51
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x52
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	.LASF116
	.byte	0xe
	.value	0x7ee
	.long	0x87b
	.uleb128 0xb
	.long	.LASF117
	.byte	0x68
	.byte	0x12
	.byte	0x1f
	.long	0x954
	.uleb128 0xa
	.long	.LASF118
	.byte	0x12
	.byte	0x20
	.long	0x1348
	.byte	0
	.uleb128 0xa
	.long	.LASF119
	.byte	0x12
	.byte	0x21
	.long	0x1348
	.byte	0x8
	.uleb128 0xa
	.long	.LASF120
	.byte	0x12
	.byte	0x22
	.long	0x134e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF121
	.byte	0x12
	.byte	0x23
	.long	0x1359
	.byte	0x18
	.uleb128 0xa
	.long	.LASF122
	.byte	0x12
	.byte	0x24
	.long	0x10d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF123
	.byte	0x12
	.byte	0x25
	.long	0x1364
	.byte	0x28
	.uleb128 0xa
	.long	.LASF124
	.byte	0x12
	.byte	0x26
	.long	0x10d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF125
	.byte	0x12
	.byte	0x28
	.long	0x136a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF126
	.byte	0x12
	.byte	0x29
	.long	0x1286
	.byte	0x40
	.uleb128 0xa
	.long	.LASF127
	.byte	0x12
	.byte	0x2a
	.long	0x1286
	.byte	0x44
	.uleb128 0xa
	.long	.LASF128
	.byte	0x12
	.byte	0x2b
	.long	0x1286
	.byte	0x48
	.uleb128 0xa
	.long	.LASF129
	.byte	0x12
	.byte	0x2c
	.long	0x1286
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF130
	.byte	0x12
	.byte	0x2d
	.long	0x1291
	.byte	0x50
	.uleb128 0xa
	.long	.LASF131
	.byte	0x12
	.byte	0x2e
	.long	0x1291
	.byte	0x54
	.uleb128 0xa
	.long	.LASF132
	.byte	0x12
	.byte	0x2f
	.long	0x1291
	.byte	0x58
	.uleb128 0xa
	.long	.LASF133
	.byte	0x12
	.byte	0x30
	.long	0x1291
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF134
	.byte	0x12
	.byte	0x32
	.long	0x1370
	.byte	0x60
	.byte	0
	.uleb128 0x12
	.string	"GP"
	.byte	0xe
	.value	0x7ef
	.long	0x95f
	.uleb128 0xe
	.string	"gp"
	.byte	0x58
	.byte	0x13
	.byte	0xb
	.long	0x9fb
	.uleb128 0xa
	.long	.LASF135
	.byte	0x13
	.byte	0xc
	.long	0x12b9
	.byte	0
	.uleb128 0xa
	.long	.LASF136
	.byte	0x13
	.byte	0xd
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0x13
	.byte	0xe
	.long	0x1482
	.byte	0x10
	.uleb128 0xa
	.long	.LASF138
	.byte	0x13
	.byte	0xf
	.long	0x1436
	.byte	0x18
	.uleb128 0xa
	.long	.LASF139
	.byte	0x13
	.byte	0x10
	.long	0x1448
	.byte	0x20
	.uleb128 0xa
	.long	.LASF140
	.byte	0x13
	.byte	0x11
	.long	0x140d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF141
	.byte	0x13
	.byte	0x12
	.long	0x1442
	.byte	0x30
	.uleb128 0xa
	.long	.LASF142
	.byte	0x13
	.byte	0x13
	.long	0x1436
	.byte	0x38
	.uleb128 0xa
	.long	.LASF143
	.byte	0x13
	.byte	0x14
	.long	0x1291
	.byte	0x40
	.uleb128 0xa
	.long	.LASF144
	.byte	0x13
	.byte	0x15
	.long	0x1291
	.byte	0x44
	.uleb128 0xa
	.long	.LASF145
	.byte	0x13
	.byte	0x16
	.long	0x129c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF146
	.byte	0x13
	.byte	0x17
	.long	0x10d
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.string	"GV"
	.byte	0xe
	.value	0x7f0
	.long	0xa06
	.uleb128 0xe
	.string	"gv"
	.byte	0x10
	.byte	0x11
	.byte	0x49
	.long	0xa36
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x4a
	.long	0x13e9
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x4b
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x4c
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.string	"IO"
	.byte	0xe
	.value	0x7f1
	.long	0xa41
	.uleb128 0xe
	.string	"io"
	.byte	0x10
	.byte	0x11
	.byte	0x61
	.long	0xa71
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x62
	.long	0x1401
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x63
	.long	0x1291
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x64
	.long	0x1291
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	.LASF147
	.byte	0xe
	.value	0x7f2
	.long	0xa7d
	.uleb128 0x15
	.long	.LASF148
	.byte	0x90
	.byte	0x10
	.value	0x1a2
	.long	0xaa5
	.uleb128 0x14
	.long	.LASF149
	.byte	0x10
	.value	0x1a3
	.long	0x1291
	.byte	0
	.uleb128 0x14
	.long	.LASF150
	.byte	0x10
	.value	0x1a7
	.long	0x209b
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF151
	.byte	0x88
	.byte	0x10
	.value	0x130
	.long	0xb1b
	.uleb128 0x14
	.long	.LASF152
	.byte	0x10
	.value	0x131
	.long	0x1286
	.byte	0
	.uleb128 0x14
	.long	.LASF153
	.byte	0x10
	.value	0x132
	.long	0x1fd1
	.byte	0x8
	.uleb128 0x14
	.long	.LASF154
	.byte	0x10
	.value	0x133
	.long	0x1286
	.byte	0x10
	.uleb128 0x14
	.long	.LASF155
	.byte	0x10
	.value	0x134
	.long	0x1286
	.byte	0x14
	.uleb128 0x14
	.long	.LASF156
	.byte	0x10
	.value	0x135
	.long	0x1286
	.byte	0x18
	.uleb128 0x14
	.long	.LASF157
	.byte	0x10
	.value	0x136
	.long	0x1e2e
	.byte	0x20
	.uleb128 0x14
	.long	.LASF158
	.byte	0x10
	.value	0x137
	.long	0x1271
	.byte	0x28
	.uleb128 0x14
	.long	.LASF159
	.byte	0x10
	.value	0x13d
	.long	0x1fa3
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x7f5
	.long	0xb27
	.uleb128 0xb
	.long	.LASF161
	.byte	0x30
	.byte	0x14
	.byte	0x1a
	.long	0xb94
	.uleb128 0xa
	.long	.LASF162
	.byte	0x14
	.byte	0x1b
	.long	0x1407
	.byte	0
	.uleb128 0xa
	.long	.LASF163
	.byte	0x14
	.byte	0x1c
	.long	0x224a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF164
	.byte	0x14
	.byte	0x1d
	.long	0x127b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF165
	.byte	0x14
	.byte	0x1e
	.long	0x113
	.byte	0x12
	.uleb128 0xa
	.long	.LASF166
	.byte	0x14
	.byte	0x1f
	.long	0x1271
	.byte	0x13
	.uleb128 0xa
	.long	.LASF167
	.byte	0x14
	.byte	0x20
	.long	0x12b9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF168
	.byte	0x14
	.byte	0x21
	.long	0x10d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF169
	.byte	0x14
	.byte	0x22
	.long	0x1286
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.string	"XPV"
	.byte	0xe
	.value	0x7f7
	.long	0xba0
	.uleb128 0xe
	.string	"xpv"
	.byte	0x18
	.byte	0x11
	.byte	0xf9
	.long	0xbd1
	.uleb128 0xa
	.long	.LASF170
	.byte	0x11
	.byte	0xfa
	.long	0x10d
	.byte	0
	.uleb128 0xa
	.long	.LASF171
	.byte	0x11
	.byte	0xfb
	.long	0x481
	.byte	0x8
	.uleb128 0xa
	.long	.LASF172
	.byte	0x11
	.byte	0xfc
	.long	0x481
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.long	.LASF173
	.byte	0xe
	.value	0x7f8
	.long	0xbdd
	.uleb128 0xb
	.long	.LASF174
	.byte	0x20
	.byte	0x11
	.byte	0xff
	.long	0xc1e
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.value	0x100
	.long	0x10d
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x11
	.value	0x101
	.long	0x481
	.byte	0x8
	.uleb128 0x14
	.long	.LASF172
	.byte	0x11
	.value	0x102
	.long	0x481
	.byte	0x10
	.uleb128 0x14
	.long	.LASF175
	.byte	0x11
	.value	0x103
	.long	0x459
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF176
	.byte	0xe
	.value	0x7fb
	.long	0xc2a
	.uleb128 0x15
	.long	.LASF177
	.byte	0x38
	.byte	0x11
	.value	0x116
	.long	0xc93
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.value	0x117
	.long	0x10d
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x11
	.value	0x118
	.long	0x481
	.byte	0x8
	.uleb128 0x14
	.long	.LASF172
	.byte	0x11
	.value	0x119
	.long	0x481
	.byte	0x10
	.uleb128 0x14
	.long	.LASF175
	.byte	0x11
	.value	0x11a
	.long	0x459
	.byte	0x18
	.uleb128 0x14
	.long	.LASF178
	.byte	0x11
	.value	0x11b
	.long	0x46f
	.byte	0x20
	.uleb128 0x14
	.long	.LASF179
	.byte	0x11
	.value	0x11c
	.long	0x1407
	.byte	0x28
	.uleb128 0x14
	.long	.LASF180
	.byte	0x11
	.value	0x11d
	.long	0x140d
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF181
	.byte	0xe
	.value	0x7fd
	.long	0xc9f
	.uleb128 0xb
	.long	.LASF182
	.byte	0x50
	.byte	0x15
	.byte	0xb
	.long	0xd24
	.uleb128 0xa
	.long	.LASF183
	.byte	0x15
	.byte	0xc
	.long	0x10d
	.byte	0
	.uleb128 0xa
	.long	.LASF184
	.byte	0x15
	.byte	0xd
	.long	0x125
	.byte	0x8
	.uleb128 0xa
	.long	.LASF185
	.byte	0x15
	.byte	0xe
	.long	0x125
	.byte	0x10
	.uleb128 0xa
	.long	.LASF186
	.byte	0x15
	.byte	0xf
	.long	0x459
	.byte	0x18
	.uleb128 0xa
	.long	.LASF178
	.byte	0x15
	.byte	0x10
	.long	0x46f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF179
	.byte	0x15
	.byte	0x11
	.long	0x1407
	.byte	0x28
	.uleb128 0xa
	.long	.LASF180
	.byte	0x15
	.byte	0x12
	.long	0x140d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF187
	.byte	0x15
	.byte	0x14
	.long	0x1f9d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF188
	.byte	0x15
	.byte	0x15
	.long	0x12b9
	.byte	0x40
	.uleb128 0xa
	.long	.LASF189
	.byte	0x15
	.byte	0x16
	.long	0x1271
	.byte	0x48
	.byte	0
	.uleb128 0x13
	.long	.LASF190
	.byte	0xe
	.value	0x7fe
	.long	0xd30
	.uleb128 0xb
	.long	.LASF191
	.byte	0x58
	.byte	0x16
	.byte	0x22
	.long	0xdc1
	.uleb128 0xa
	.long	.LASF192
	.byte	0x16
	.byte	0x23
	.long	0x10d
	.byte	0
	.uleb128 0xa
	.long	.LASF193
	.byte	0x16
	.byte	0x24
	.long	0x481
	.byte	0x8
	.uleb128 0xa
	.long	.LASF194
	.byte	0x16
	.byte	0x25
	.long	0x481
	.byte	0x10
	.uleb128 0xa
	.long	.LASF195
	.byte	0x16
	.byte	0x26
	.long	0x459
	.byte	0x18
	.uleb128 0xa
	.long	.LASF178
	.byte	0x16
	.byte	0x27
	.long	0x46f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF179
	.byte	0x16
	.byte	0x29
	.long	0x1407
	.byte	0x28
	.uleb128 0xa
	.long	.LASF180
	.byte	0x16
	.byte	0x2a
	.long	0x140d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF196
	.byte	0x16
	.byte	0x2c
	.long	0x1286
	.byte	0x38
	.uleb128 0xa
	.long	.LASF197
	.byte	0x16
	.byte	0x2d
	.long	0x21c1
	.byte	0x40
	.uleb128 0xa
	.long	.LASF198
	.byte	0x16
	.byte	0x2e
	.long	0x1e2e
	.byte	0x48
	.uleb128 0xa
	.long	.LASF199
	.byte	0x16
	.byte	0x2f
	.long	0x10d
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.long	.LASF200
	.byte	0xe
	.value	0x7ff
	.long	0xdcd
	.uleb128 0x15
	.long	.LASF201
	.byte	0x60
	.byte	0x11
	.value	0x130
	.long	0xe77
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.value	0x131
	.long	0x10d
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x11
	.value	0x132
	.long	0x481
	.byte	0x8
	.uleb128 0x14
	.long	.LASF172
	.byte	0x11
	.value	0x133
	.long	0x481
	.byte	0x10
	.uleb128 0x14
	.long	.LASF175
	.byte	0x11
	.value	0x134
	.long	0x459
	.byte	0x18
	.uleb128 0x14
	.long	.LASF178
	.byte	0x11
	.value	0x135
	.long	0x46f
	.byte	0x20
	.uleb128 0x14
	.long	.LASF179
	.byte	0x11
	.value	0x136
	.long	0x1407
	.byte	0x28
	.uleb128 0x14
	.long	.LASF180
	.byte	0x11
	.value	0x137
	.long	0x140d
	.byte	0x30
	.uleb128 0x14
	.long	.LASF202
	.byte	0x11
	.value	0x139
	.long	0x1413
	.byte	0x38
	.uleb128 0x14
	.long	.LASF203
	.byte	0x11
	.value	0x13a
	.long	0x10d
	.byte	0x40
	.uleb128 0x14
	.long	.LASF204
	.byte	0x11
	.value	0x13b
	.long	0x481
	.byte	0x48
	.uleb128 0x14
	.long	.LASF205
	.byte	0x11
	.value	0x13c
	.long	0x140d
	.byte	0x50
	.uleb128 0x14
	.long	.LASF206
	.byte	0x11
	.value	0x13d
	.long	0x1271
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.long	.LASF207
	.byte	0xe
	.value	0x800
	.long	0xe83
	.uleb128 0xb
	.long	.LASF208
	.byte	0x90
	.byte	0x17
	.byte	0xe
	.long	0xf74
	.uleb128 0xa
	.long	.LASF170
	.byte	0x17
	.byte	0xf
	.long	0x10d
	.byte	0
	.uleb128 0xa
	.long	.LASF171
	.byte	0x17
	.byte	0x10
	.long	0x481
	.byte	0x8
	.uleb128 0xa
	.long	.LASF172
	.byte	0x17
	.byte	0x11
	.long	0x481
	.byte	0x10
	.uleb128 0xa
	.long	.LASF186
	.byte	0x17
	.byte	0x12
	.long	0x459
	.byte	0x18
	.uleb128 0xa
	.long	.LASF178
	.byte	0x17
	.byte	0x13
	.long	0x46f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF179
	.byte	0x17
	.byte	0x14
	.long	0x1407
	.byte	0x28
	.uleb128 0xa
	.long	.LASF180
	.byte	0x17
	.byte	0x15
	.long	0x140d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF209
	.byte	0x17
	.byte	0x17
	.long	0x140d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF210
	.byte	0x17
	.byte	0x18
	.long	0x1425
	.byte	0x40
	.uleb128 0xa
	.long	.LASF211
	.byte	0x17
	.byte	0x19
	.long	0x1425
	.byte	0x48
	.uleb128 0xa
	.long	.LASF212
	.byte	0x17
	.byte	0x1a
	.long	0x143c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF213
	.byte	0x17
	.byte	0x1b
	.long	0x11c2
	.byte	0x58
	.uleb128 0xa
	.long	.LASF214
	.byte	0x17
	.byte	0x1c
	.long	0x1442
	.byte	0x60
	.uleb128 0xa
	.long	.LASF215
	.byte	0x17
	.byte	0x1d
	.long	0x10d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF216
	.byte	0x17
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF217
	.byte	0x17
	.byte	0x1f
	.long	0x14a9
	.byte	0x78
	.uleb128 0xa
	.long	.LASF218
	.byte	0x17
	.byte	0x20
	.long	0x1436
	.byte	0x80
	.uleb128 0xa
	.long	.LASF219
	.byte	0x17
	.byte	0x25
	.long	0x1419
	.byte	0x88
	.uleb128 0xa
	.long	.LASF220
	.byte	0x17
	.byte	0x26
	.long	0x1291
	.byte	0x8c
	.byte	0
	.uleb128 0x13
	.long	.LASF221
	.byte	0xe
	.value	0x801
	.long	0xf80
	.uleb128 0x15
	.long	.LASF222
	.byte	0x40
	.byte	0x11
	.value	0x140
	.long	0x1010
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.value	0x141
	.long	0x10d
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x11
	.value	0x142
	.long	0x481
	.byte	0x8
	.uleb128 0x14
	.long	.LASF172
	.byte	0x11
	.value	0x143
	.long	0x481
	.byte	0x10
	.uleb128 0x14
	.long	.LASF175
	.byte	0x11
	.value	0x144
	.long	0x459
	.byte	0x18
	.uleb128 0x14
	.long	.LASF178
	.byte	0x11
	.value	0x145
	.long	0x46f
	.byte	0x20
	.uleb128 0x14
	.long	.LASF179
	.byte	0x11
	.value	0x146
	.long	0x1407
	.byte	0x28
	.uleb128 0x14
	.long	.LASF180
	.byte	0x11
	.value	0x147
	.long	0x140d
	.byte	0x30
	.uleb128 0x14
	.long	.LASF223
	.byte	0x11
	.value	0x149
	.long	0x1286
	.byte	0x38
	.uleb128 0x14
	.long	.LASF224
	.byte	0x11
	.value	0x14a
	.long	0x127b
	.byte	0x3c
	.uleb128 0x14
	.long	.LASF225
	.byte	0x11
	.value	0x14b
	.long	0x1271
	.byte	0x3e
	.byte	0
	.uleb128 0x13
	.long	.LASF226
	.byte	0xe
	.value	0x803
	.long	0x101c
	.uleb128 0x15
	.long	.LASF227
	.byte	0xa8
	.byte	0x11
	.value	0x170
	.long	0x1155
	.uleb128 0x14
	.long	.LASF170
	.byte	0x11
	.value	0x171
	.long	0x10d
	.byte	0
	.uleb128 0x14
	.long	.LASF171
	.byte	0x11
	.value	0x172
	.long	0x481
	.byte	0x8
	.uleb128 0x14
	.long	.LASF172
	.byte	0x11
	.value	0x173
	.long	0x481
	.byte	0x10
	.uleb128 0x14
	.long	.LASF175
	.byte	0x11
	.value	0x174
	.long	0x459
	.byte	0x18
	.uleb128 0x14
	.long	.LASF178
	.byte	0x11
	.value	0x175
	.long	0x46f
	.byte	0x20
	.uleb128 0x14
	.long	.LASF179
	.byte	0x11
	.value	0x176
	.long	0x1407
	.byte	0x28
	.uleb128 0x14
	.long	.LASF180
	.byte	0x11
	.value	0x177
	.long	0x140d
	.byte	0x30
	.uleb128 0x14
	.long	.LASF228
	.byte	0x11
	.value	0x179
	.long	0x1476
	.byte	0x38
	.uleb128 0x14
	.long	.LASF229
	.byte	0x11
	.value	0x17a
	.long	0x1476
	.byte	0x40
	.uleb128 0x14
	.long	.LASF230
	.byte	0x11
	.value	0x187
	.long	0x144e
	.byte	0x48
	.uleb128 0x14
	.long	.LASF231
	.byte	0x11
	.value	0x188
	.long	0x459
	.byte	0x50
	.uleb128 0x14
	.long	.LASF232
	.byte	0x11
	.value	0x189
	.long	0x459
	.byte	0x58
	.uleb128 0x14
	.long	.LASF233
	.byte	0x11
	.value	0x18a
	.long	0x459
	.byte	0x60
	.uleb128 0x14
	.long	.LASF234
	.byte	0x11
	.value	0x18b
	.long	0x459
	.byte	0x68
	.uleb128 0x14
	.long	.LASF235
	.byte	0x11
	.value	0x18c
	.long	0x10d
	.byte	0x70
	.uleb128 0x14
	.long	.LASF236
	.byte	0x11
	.value	0x18d
	.long	0x1442
	.byte	0x78
	.uleb128 0x14
	.long	.LASF237
	.byte	0x11
	.value	0x18e
	.long	0x10d
	.byte	0x80
	.uleb128 0x14
	.long	.LASF238
	.byte	0x11
	.value	0x18f
	.long	0x1442
	.byte	0x88
	.uleb128 0x14
	.long	.LASF239
	.byte	0x11
	.value	0x190
	.long	0x10d
	.byte	0x90
	.uleb128 0x14
	.long	.LASF240
	.byte	0x11
	.value	0x191
	.long	0x1442
	.byte	0x98
	.uleb128 0x14
	.long	.LASF241
	.byte	0x11
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF242
	.byte	0x11
	.value	0x193
	.long	0x113
	.byte	0xa2
	.uleb128 0x14
	.long	.LASF243
	.byte	0x11
	.value	0x194
	.long	0x113
	.byte	0xa3
	.byte	0
	.uleb128 0x13
	.long	.LASF244
	.byte	0xe
	.value	0x804
	.long	0x1161
	.uleb128 0xb
	.long	.LASF245
	.byte	0x38
	.byte	0x14
	.byte	0xe
	.long	0x11c2
	.uleb128 0xa
	.long	.LASF246
	.byte	0x14
	.byte	0xf
	.long	0x21e1
	.byte	0
	.uleb128 0xa
	.long	.LASF247
	.byte	0x14
	.byte	0x10
	.long	0x21e1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF248
	.byte	0x14
	.byte	0x11
	.long	0x21fb
	.byte	0x10
	.uleb128 0xa
	.long	.LASF249
	.byte	0x14
	.byte	0x12
	.long	0x21e1
	.byte	0x18
	.uleb128 0xa
	.long	.LASF250
	.byte	0x14
	.byte	0x13
	.long	0x21e1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF251
	.byte	0x14
	.byte	0x14
	.long	0x2224
	.byte	0x28
	.uleb128 0xa
	.long	.LASF252
	.byte	0x14
	.byte	0x16
	.long	0x2244
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.string	"ANY"
	.byte	0xe
	.value	0x805
	.long	0x11ce
	.uleb128 0x16
	.string	"any"
	.byte	0x8
	.byte	0xe
	.value	0x9f1
	.long	0x1230
	.uleb128 0x17
	.long	.LASF253
	.byte	0xe
	.value	0x9f2
	.long	0xdf
	.uleb128 0x17
	.long	.LASF254
	.byte	0xe
	.value	0x9f3
	.long	0x1286
	.uleb128 0x17
	.long	.LASF255
	.byte	0xe
	.value	0x9f4
	.long	0x459
	.uleb128 0x17
	.long	.LASF256
	.byte	0xe
	.value	0x9f5
	.long	0x5e
	.uleb128 0x17
	.long	.LASF257
	.byte	0xe
	.value	0x9f6
	.long	0x113
	.uleb128 0x17
	.long	.LASF258
	.byte	0xe
	.value	0x9f7
	.long	0x12b3
	.uleb128 0x17
	.long	.LASF259
	.byte	0xe
	.value	0x9f8
	.long	0x12b3
	.byte	0
	.uleb128 0x13
	.long	.LASF260
	.byte	0xe
	.value	0x808
	.long	0x123c
	.uleb128 0x15
	.long	.LASF261
	.byte	0x18
	.byte	0x11
	.value	0x4ed
	.long	0x1271
	.uleb128 0x14
	.long	.LASF262
	.byte	0x11
	.value	0x4ee
	.long	0x1448
	.byte	0
	.uleb128 0x14
	.long	.LASF263
	.byte	0x11
	.value	0x4ef
	.long	0x464
	.byte	0x8
	.uleb128 0x14
	.long	.LASF264
	.byte	0x11
	.value	0x4f0
	.long	0x147c
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"U8"
	.byte	0x18
	.byte	0x85
	.long	0x2d
	.uleb128 0x10
	.string	"U16"
	.byte	0x18
	.byte	0x87
	.long	0x34
	.uleb128 0x10
	.string	"I32"
	.byte	0x18
	.byte	0x88
	.long	0x57
	.uleb128 0x10
	.string	"U32"
	.byte	0x18
	.byte	0x89
	.long	0x3b
	.uleb128 0x13
	.long	.LASF265
	.byte	0x18
	.value	0x209
	.long	0x1291
	.uleb128 0x18
	.long	0x12b3
	.uleb128 0x19
	.long	0xdf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12a8
	.uleb128 0x8
	.byte	0x8
	.long	0x783
	.uleb128 0x5
	.long	0x113
	.long	0x12cf
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF266
	.byte	0x19
	.byte	0x63
	.long	0x12da
	.uleb128 0x11
	.long	.LASF268
	.uleb128 0x4
	.long	.LASF269
	.byte	0x19
	.byte	0x65
	.long	0x12ea
	.uleb128 0x8
	.byte	0x8
	.long	0x12cf
	.uleb128 0x4
	.long	.LASF270
	.byte	0x1a
	.byte	0x36
	.long	0x12fb
	.uleb128 0x8
	.byte	0x8
	.long	0x1301
	.uleb128 0x18
	.long	0x130c
	.uleb128 0x19
	.long	0x57
	.byte	0
	.uleb128 0xb
	.long	.LASF271
	.byte	0x4
	.byte	0x12
	.byte	0x13
	.long	0x133d
	.uleb128 0xa
	.long	.LASF263
	.byte	0x12
	.byte	0x14
	.long	0x1271
	.byte	0
	.uleb128 0xa
	.long	.LASF272
	.byte	0x12
	.byte	0x15
	.long	0x1271
	.byte	0x1
	.uleb128 0xa
	.long	.LASF273
	.byte	0x12
	.byte	0x16
	.long	0x127b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF271
	.byte	0x12
	.byte	0x19
	.long	0x130c
	.uleb128 0x8
	.byte	0x8
	.long	0x1286
	.uleb128 0x8
	.byte	0x8
	.long	0x133d
	.uleb128 0x11
	.long	.LASF274
	.uleb128 0x8
	.byte	0x8
	.long	0x1354
	.uleb128 0x11
	.long	.LASF275
	.uleb128 0x8
	.byte	0x8
	.long	0x135f
	.uleb128 0x8
	.byte	0x8
	.long	0x1291
	.uleb128 0x5
	.long	0x133d
	.long	0x1380
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x11
	.byte	0x2e
	.long	0x13e9
	.uleb128 0x1b
	.long	.LASF276
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF277
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF278
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF279
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF280
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF281
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF282
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF283
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF284
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF285
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF286
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF287
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF288
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF289
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF290
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF291
	.sleb128 15
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdc1
	.uleb128 0x8
	.byte	0x8
	.long	0xe77
	.uleb128 0x8
	.byte	0x8
	.long	0xc93
	.uleb128 0x8
	.byte	0x8
	.long	0xd24
	.uleb128 0x8
	.byte	0x8
	.long	0x1010
	.uleb128 0x8
	.byte	0x8
	.long	0xb1b
	.uleb128 0x8
	.byte	0x8
	.long	0x7f9
	.uleb128 0x8
	.byte	0x8
	.long	0x954
	.uleb128 0x13
	.long	.LASF292
	.byte	0x11
	.value	0x150
	.long	0x127b
	.uleb128 0x8
	.byte	0x8
	.long	0x48d
	.uleb128 0x18
	.long	0x1436
	.uleb128 0x19
	.long	0x1436
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x834
	.uleb128 0x8
	.byte	0x8
	.long	0x142b
	.uleb128 0x8
	.byte	0x8
	.long	0x9fb
	.uleb128 0x8
	.byte	0x8
	.long	0x7be
	.uleb128 0x1c
	.byte	0x8
	.byte	0x11
	.value	0x184
	.long	0x1470
	.uleb128 0x17
	.long	.LASF293
	.byte	0x11
	.value	0x185
	.long	0x1470
	.uleb128 0x17
	.long	.LASF294
	.byte	0x11
	.value	0x186
	.long	0xdf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x449
	.uleb128 0x8
	.byte	0x8
	.long	0x12df
	.uleb128 0x8
	.byte	0x8
	.long	0x75c
	.uleb128 0x8
	.byte	0x8
	.long	0xa41
	.uleb128 0x4
	.long	.LASF295
	.byte	0x1b
	.byte	0x13
	.long	0x7be
	.uleb128 0x10
	.string	"PAD"
	.byte	0x1b
	.byte	0x14
	.long	0x7be
	.uleb128 0x4
	.long	.LASF296
	.byte	0x1b
	.byte	0x1d
	.long	0x42
	.uleb128 0x8
	.byte	0x8
	.long	0x1488
	.uleb128 0x1d
	.long	.LASF1120
	.byte	0x4
	.byte	0x23
	.byte	0xf
	.long	0x1e23
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
	.uleb128 0x1b
	.long	.LASF364
	.sleb128 67
	.uleb128 0x1b
	.long	.LASF365
	.sleb128 68
	.uleb128 0x1b
	.long	.LASF366
	.sleb128 69
	.uleb128 0x1b
	.long	.LASF367
	.sleb128 70
	.uleb128 0x1b
	.long	.LASF368
	.sleb128 71
	.uleb128 0x1b
	.long	.LASF369
	.sleb128 72
	.uleb128 0x1b
	.long	.LASF370
	.sleb128 73
	.uleb128 0x1b
	.long	.LASF371
	.sleb128 74
	.uleb128 0x1b
	.long	.LASF372
	.sleb128 75
	.uleb128 0x1b
	.long	.LASF373
	.sleb128 76
	.uleb128 0x1b
	.long	.LASF374
	.sleb128 77
	.uleb128 0x1b
	.long	.LASF375
	.sleb128 78
	.uleb128 0x1b
	.long	.LASF376
	.sleb128 79
	.uleb128 0x1b
	.long	.LASF377
	.sleb128 80
	.uleb128 0x1b
	.long	.LASF378
	.sleb128 81
	.uleb128 0x1b
	.long	.LASF379
	.sleb128 82
	.uleb128 0x1b
	.long	.LASF380
	.sleb128 83
	.uleb128 0x1b
	.long	.LASF381
	.sleb128 84
	.uleb128 0x1b
	.long	.LASF382
	.sleb128 85
	.uleb128 0x1b
	.long	.LASF383
	.sleb128 86
	.uleb128 0x1b
	.long	.LASF384
	.sleb128 87
	.uleb128 0x1b
	.long	.LASF385
	.sleb128 88
	.uleb128 0x1b
	.long	.LASF386
	.sleb128 89
	.uleb128 0x1b
	.long	.LASF387
	.sleb128 90
	.uleb128 0x1b
	.long	.LASF388
	.sleb128 91
	.uleb128 0x1b
	.long	.LASF389
	.sleb128 92
	.uleb128 0x1b
	.long	.LASF390
	.sleb128 93
	.uleb128 0x1b
	.long	.LASF391
	.sleb128 94
	.uleb128 0x1b
	.long	.LASF392
	.sleb128 95
	.uleb128 0x1b
	.long	.LASF393
	.sleb128 96
	.uleb128 0x1b
	.long	.LASF394
	.sleb128 97
	.uleb128 0x1b
	.long	.LASF395
	.sleb128 98
	.uleb128 0x1b
	.long	.LASF396
	.sleb128 99
	.uleb128 0x1b
	.long	.LASF397
	.sleb128 100
	.uleb128 0x1b
	.long	.LASF398
	.sleb128 101
	.uleb128 0x1b
	.long	.LASF399
	.sleb128 102
	.uleb128 0x1b
	.long	.LASF400
	.sleb128 103
	.uleb128 0x1b
	.long	.LASF401
	.sleb128 104
	.uleb128 0x1b
	.long	.LASF402
	.sleb128 105
	.uleb128 0x1b
	.long	.LASF403
	.sleb128 106
	.uleb128 0x1b
	.long	.LASF404
	.sleb128 107
	.uleb128 0x1b
	.long	.LASF405
	.sleb128 108
	.uleb128 0x1b
	.long	.LASF406
	.sleb128 109
	.uleb128 0x1b
	.long	.LASF407
	.sleb128 110
	.uleb128 0x1b
	.long	.LASF408
	.sleb128 111
	.uleb128 0x1b
	.long	.LASF409
	.sleb128 112
	.uleb128 0x1b
	.long	.LASF410
	.sleb128 113
	.uleb128 0x1b
	.long	.LASF411
	.sleb128 114
	.uleb128 0x1b
	.long	.LASF412
	.sleb128 115
	.uleb128 0x1b
	.long	.LASF413
	.sleb128 116
	.uleb128 0x1b
	.long	.LASF414
	.sleb128 117
	.uleb128 0x1b
	.long	.LASF415
	.sleb128 118
	.uleb128 0x1b
	.long	.LASF416
	.sleb128 119
	.uleb128 0x1b
	.long	.LASF417
	.sleb128 120
	.uleb128 0x1b
	.long	.LASF418
	.sleb128 121
	.uleb128 0x1b
	.long	.LASF419
	.sleb128 122
	.uleb128 0x1b
	.long	.LASF420
	.sleb128 123
	.uleb128 0x1b
	.long	.LASF421
	.sleb128 124
	.uleb128 0x1b
	.long	.LASF422
	.sleb128 125
	.uleb128 0x1b
	.long	.LASF423
	.sleb128 126
	.uleb128 0x1b
	.long	.LASF424
	.sleb128 127
	.uleb128 0x1b
	.long	.LASF425
	.sleb128 128
	.uleb128 0x1b
	.long	.LASF426
	.sleb128 129
	.uleb128 0x1b
	.long	.LASF427
	.sleb128 130
	.uleb128 0x1b
	.long	.LASF428
	.sleb128 131
	.uleb128 0x1b
	.long	.LASF429
	.sleb128 132
	.uleb128 0x1b
	.long	.LASF430
	.sleb128 133
	.uleb128 0x1b
	.long	.LASF431
	.sleb128 134
	.uleb128 0x1b
	.long	.LASF432
	.sleb128 135
	.uleb128 0x1b
	.long	.LASF433
	.sleb128 136
	.uleb128 0x1b
	.long	.LASF434
	.sleb128 137
	.uleb128 0x1b
	.long	.LASF435
	.sleb128 138
	.uleb128 0x1b
	.long	.LASF436
	.sleb128 139
	.uleb128 0x1b
	.long	.LASF437
	.sleb128 140
	.uleb128 0x1b
	.long	.LASF438
	.sleb128 141
	.uleb128 0x1b
	.long	.LASF439
	.sleb128 142
	.uleb128 0x1b
	.long	.LASF440
	.sleb128 143
	.uleb128 0x1b
	.long	.LASF441
	.sleb128 144
	.uleb128 0x1b
	.long	.LASF442
	.sleb128 145
	.uleb128 0x1b
	.long	.LASF443
	.sleb128 146
	.uleb128 0x1b
	.long	.LASF444
	.sleb128 147
	.uleb128 0x1b
	.long	.LASF445
	.sleb128 148
	.uleb128 0x1b
	.long	.LASF446
	.sleb128 149
	.uleb128 0x1b
	.long	.LASF447
	.sleb128 150
	.uleb128 0x1b
	.long	.LASF448
	.sleb128 151
	.uleb128 0x1b
	.long	.LASF449
	.sleb128 152
	.uleb128 0x1b
	.long	.LASF450
	.sleb128 153
	.uleb128 0x1b
	.long	.LASF451
	.sleb128 154
	.uleb128 0x1b
	.long	.LASF452
	.sleb128 155
	.uleb128 0x1b
	.long	.LASF453
	.sleb128 156
	.uleb128 0x1b
	.long	.LASF454
	.sleb128 157
	.uleb128 0x1b
	.long	.LASF455
	.sleb128 158
	.uleb128 0x1b
	.long	.LASF456
	.sleb128 159
	.uleb128 0x1b
	.long	.LASF457
	.sleb128 160
	.uleb128 0x1b
	.long	.LASF458
	.sleb128 161
	.uleb128 0x1b
	.long	.LASF459
	.sleb128 162
	.uleb128 0x1b
	.long	.LASF460
	.sleb128 163
	.uleb128 0x1b
	.long	.LASF461
	.sleb128 164
	.uleb128 0x1b
	.long	.LASF462
	.sleb128 165
	.uleb128 0x1b
	.long	.LASF463
	.sleb128 166
	.uleb128 0x1b
	.long	.LASF464
	.sleb128 167
	.uleb128 0x1b
	.long	.LASF465
	.sleb128 168
	.uleb128 0x1b
	.long	.LASF466
	.sleb128 169
	.uleb128 0x1b
	.long	.LASF467
	.sleb128 170
	.uleb128 0x1b
	.long	.LASF468
	.sleb128 171
	.uleb128 0x1b
	.long	.LASF469
	.sleb128 172
	.uleb128 0x1b
	.long	.LASF470
	.sleb128 173
	.uleb128 0x1b
	.long	.LASF471
	.sleb128 174
	.uleb128 0x1b
	.long	.LASF472
	.sleb128 175
	.uleb128 0x1b
	.long	.LASF473
	.sleb128 176
	.uleb128 0x1b
	.long	.LASF474
	.sleb128 177
	.uleb128 0x1b
	.long	.LASF475
	.sleb128 178
	.uleb128 0x1b
	.long	.LASF476
	.sleb128 179
	.uleb128 0x1b
	.long	.LASF477
	.sleb128 180
	.uleb128 0x1b
	.long	.LASF478
	.sleb128 181
	.uleb128 0x1b
	.long	.LASF479
	.sleb128 182
	.uleb128 0x1b
	.long	.LASF480
	.sleb128 183
	.uleb128 0x1b
	.long	.LASF481
	.sleb128 184
	.uleb128 0x1b
	.long	.LASF482
	.sleb128 185
	.uleb128 0x1b
	.long	.LASF483
	.sleb128 186
	.uleb128 0x1b
	.long	.LASF484
	.sleb128 187
	.uleb128 0x1b
	.long	.LASF485
	.sleb128 188
	.uleb128 0x1b
	.long	.LASF486
	.sleb128 189
	.uleb128 0x1b
	.long	.LASF487
	.sleb128 190
	.uleb128 0x1b
	.long	.LASF488
	.sleb128 191
	.uleb128 0x1b
	.long	.LASF489
	.sleb128 192
	.uleb128 0x1b
	.long	.LASF490
	.sleb128 193
	.uleb128 0x1b
	.long	.LASF491
	.sleb128 194
	.uleb128 0x1b
	.long	.LASF492
	.sleb128 195
	.uleb128 0x1b
	.long	.LASF493
	.sleb128 196
	.uleb128 0x1b
	.long	.LASF494
	.sleb128 197
	.uleb128 0x1b
	.long	.LASF495
	.sleb128 198
	.uleb128 0x1b
	.long	.LASF496
	.sleb128 199
	.uleb128 0x1b
	.long	.LASF497
	.sleb128 200
	.uleb128 0x1b
	.long	.LASF498
	.sleb128 201
	.uleb128 0x1b
	.long	.LASF499
	.sleb128 202
	.uleb128 0x1b
	.long	.LASF500
	.sleb128 203
	.uleb128 0x1b
	.long	.LASF501
	.sleb128 204
	.uleb128 0x1b
	.long	.LASF502
	.sleb128 205
	.uleb128 0x1b
	.long	.LASF503
	.sleb128 206
	.uleb128 0x1b
	.long	.LASF504
	.sleb128 207
	.uleb128 0x1b
	.long	.LASF505
	.sleb128 208
	.uleb128 0x1b
	.long	.LASF506
	.sleb128 209
	.uleb128 0x1b
	.long	.LASF507
	.sleb128 210
	.uleb128 0x1b
	.long	.LASF508
	.sleb128 211
	.uleb128 0x1b
	.long	.LASF509
	.sleb128 212
	.uleb128 0x1b
	.long	.LASF510
	.sleb128 213
	.uleb128 0x1b
	.long	.LASF511
	.sleb128 214
	.uleb128 0x1b
	.long	.LASF512
	.sleb128 215
	.uleb128 0x1b
	.long	.LASF513
	.sleb128 216
	.uleb128 0x1b
	.long	.LASF514
	.sleb128 217
	.uleb128 0x1b
	.long	.LASF515
	.sleb128 218
	.uleb128 0x1b
	.long	.LASF516
	.sleb128 219
	.uleb128 0x1b
	.long	.LASF517
	.sleb128 220
	.uleb128 0x1b
	.long	.LASF518
	.sleb128 221
	.uleb128 0x1b
	.long	.LASF519
	.sleb128 222
	.uleb128 0x1b
	.long	.LASF520
	.sleb128 223
	.uleb128 0x1b
	.long	.LASF521
	.sleb128 224
	.uleb128 0x1b
	.long	.LASF522
	.sleb128 225
	.uleb128 0x1b
	.long	.LASF523
	.sleb128 226
	.uleb128 0x1b
	.long	.LASF524
	.sleb128 227
	.uleb128 0x1b
	.long	.LASF525
	.sleb128 228
	.uleb128 0x1b
	.long	.LASF526
	.sleb128 229
	.uleb128 0x1b
	.long	.LASF527
	.sleb128 230
	.uleb128 0x1b
	.long	.LASF528
	.sleb128 231
	.uleb128 0x1b
	.long	.LASF529
	.sleb128 232
	.uleb128 0x1b
	.long	.LASF530
	.sleb128 233
	.uleb128 0x1b
	.long	.LASF531
	.sleb128 234
	.uleb128 0x1b
	.long	.LASF532
	.sleb128 235
	.uleb128 0x1b
	.long	.LASF533
	.sleb128 236
	.uleb128 0x1b
	.long	.LASF534
	.sleb128 237
	.uleb128 0x1b
	.long	.LASF535
	.sleb128 238
	.uleb128 0x1b
	.long	.LASF536
	.sleb128 239
	.uleb128 0x1b
	.long	.LASF537
	.sleb128 240
	.uleb128 0x1b
	.long	.LASF538
	.sleb128 241
	.uleb128 0x1b
	.long	.LASF539
	.sleb128 242
	.uleb128 0x1b
	.long	.LASF540
	.sleb128 243
	.uleb128 0x1b
	.long	.LASF541
	.sleb128 244
	.uleb128 0x1b
	.long	.LASF542
	.sleb128 245
	.uleb128 0x1b
	.long	.LASF543
	.sleb128 246
	.uleb128 0x1b
	.long	.LASF544
	.sleb128 247
	.uleb128 0x1b
	.long	.LASF545
	.sleb128 248
	.uleb128 0x1b
	.long	.LASF546
	.sleb128 249
	.uleb128 0x1b
	.long	.LASF547
	.sleb128 250
	.uleb128 0x1b
	.long	.LASF548
	.sleb128 251
	.uleb128 0x1b
	.long	.LASF549
	.sleb128 252
	.uleb128 0x1b
	.long	.LASF550
	.sleb128 253
	.uleb128 0x1b
	.long	.LASF551
	.sleb128 254
	.uleb128 0x1b
	.long	.LASF552
	.sleb128 255
	.uleb128 0x1b
	.long	.LASF553
	.sleb128 256
	.uleb128 0x1b
	.long	.LASF554
	.sleb128 257
	.uleb128 0x1b
	.long	.LASF555
	.sleb128 258
	.uleb128 0x1b
	.long	.LASF556
	.sleb128 259
	.uleb128 0x1b
	.long	.LASF557
	.sleb128 260
	.uleb128 0x1b
	.long	.LASF558
	.sleb128 261
	.uleb128 0x1b
	.long	.LASF559
	.sleb128 262
	.uleb128 0x1b
	.long	.LASF560
	.sleb128 263
	.uleb128 0x1b
	.long	.LASF561
	.sleb128 264
	.uleb128 0x1b
	.long	.LASF562
	.sleb128 265
	.uleb128 0x1b
	.long	.LASF563
	.sleb128 266
	.uleb128 0x1b
	.long	.LASF564
	.sleb128 267
	.uleb128 0x1b
	.long	.LASF565
	.sleb128 268
	.uleb128 0x1b
	.long	.LASF566
	.sleb128 269
	.uleb128 0x1b
	.long	.LASF567
	.sleb128 270
	.uleb128 0x1b
	.long	.LASF568
	.sleb128 271
	.uleb128 0x1b
	.long	.LASF569
	.sleb128 272
	.uleb128 0x1b
	.long	.LASF570
	.sleb128 273
	.uleb128 0x1b
	.long	.LASF571
	.sleb128 274
	.uleb128 0x1b
	.long	.LASF572
	.sleb128 275
	.uleb128 0x1b
	.long	.LASF573
	.sleb128 276
	.uleb128 0x1b
	.long	.LASF574
	.sleb128 277
	.uleb128 0x1b
	.long	.LASF575
	.sleb128 278
	.uleb128 0x1b
	.long	.LASF576
	.sleb128 279
	.uleb128 0x1b
	.long	.LASF577
	.sleb128 280
	.uleb128 0x1b
	.long	.LASF578
	.sleb128 281
	.uleb128 0x1b
	.long	.LASF579
	.sleb128 282
	.uleb128 0x1b
	.long	.LASF580
	.sleb128 283
	.uleb128 0x1b
	.long	.LASF581
	.sleb128 284
	.uleb128 0x1b
	.long	.LASF582
	.sleb128 285
	.uleb128 0x1b
	.long	.LASF583
	.sleb128 286
	.uleb128 0x1b
	.long	.LASF584
	.sleb128 287
	.uleb128 0x1b
	.long	.LASF585
	.sleb128 288
	.uleb128 0x1b
	.long	.LASF586
	.sleb128 289
	.uleb128 0x1b
	.long	.LASF587
	.sleb128 290
	.uleb128 0x1b
	.long	.LASF588
	.sleb128 291
	.uleb128 0x1b
	.long	.LASF589
	.sleb128 292
	.uleb128 0x1b
	.long	.LASF590
	.sleb128 293
	.uleb128 0x1b
	.long	.LASF591
	.sleb128 294
	.uleb128 0x1b
	.long	.LASF592
	.sleb128 295
	.uleb128 0x1b
	.long	.LASF593
	.sleb128 296
	.uleb128 0x1b
	.long	.LASF594
	.sleb128 297
	.uleb128 0x1b
	.long	.LASF595
	.sleb128 298
	.uleb128 0x1b
	.long	.LASF596
	.sleb128 299
	.uleb128 0x1b
	.long	.LASF597
	.sleb128 300
	.uleb128 0x1b
	.long	.LASF598
	.sleb128 301
	.uleb128 0x1b
	.long	.LASF599
	.sleb128 302
	.uleb128 0x1b
	.long	.LASF600
	.sleb128 303
	.uleb128 0x1b
	.long	.LASF601
	.sleb128 304
	.uleb128 0x1b
	.long	.LASF602
	.sleb128 305
	.uleb128 0x1b
	.long	.LASF603
	.sleb128 306
	.uleb128 0x1b
	.long	.LASF604
	.sleb128 307
	.uleb128 0x1b
	.long	.LASF605
	.sleb128 308
	.uleb128 0x1b
	.long	.LASF606
	.sleb128 309
	.uleb128 0x1b
	.long	.LASF607
	.sleb128 310
	.uleb128 0x1b
	.long	.LASF608
	.sleb128 311
	.uleb128 0x1b
	.long	.LASF609
	.sleb128 312
	.uleb128 0x1b
	.long	.LASF610
	.sleb128 313
	.uleb128 0x1b
	.long	.LASF611
	.sleb128 314
	.uleb128 0x1b
	.long	.LASF612
	.sleb128 315
	.uleb128 0x1b
	.long	.LASF613
	.sleb128 316
	.uleb128 0x1b
	.long	.LASF614
	.sleb128 317
	.uleb128 0x1b
	.long	.LASF615
	.sleb128 318
	.uleb128 0x1b
	.long	.LASF616
	.sleb128 319
	.uleb128 0x1b
	.long	.LASF617
	.sleb128 320
	.uleb128 0x1b
	.long	.LASF618
	.sleb128 321
	.uleb128 0x1b
	.long	.LASF619
	.sleb128 322
	.uleb128 0x1b
	.long	.LASF620
	.sleb128 323
	.uleb128 0x1b
	.long	.LASF621
	.sleb128 324
	.uleb128 0x1b
	.long	.LASF622
	.sleb128 325
	.uleb128 0x1b
	.long	.LASF623
	.sleb128 326
	.uleb128 0x1b
	.long	.LASF624
	.sleb128 327
	.uleb128 0x1b
	.long	.LASF625
	.sleb128 328
	.uleb128 0x1b
	.long	.LASF626
	.sleb128 329
	.uleb128 0x1b
	.long	.LASF627
	.sleb128 330
	.uleb128 0x1b
	.long	.LASF628
	.sleb128 331
	.uleb128 0x1b
	.long	.LASF629
	.sleb128 332
	.uleb128 0x1b
	.long	.LASF630
	.sleb128 333
	.uleb128 0x1b
	.long	.LASF631
	.sleb128 334
	.uleb128 0x1b
	.long	.LASF632
	.sleb128 335
	.uleb128 0x1b
	.long	.LASF633
	.sleb128 336
	.uleb128 0x1b
	.long	.LASF634
	.sleb128 337
	.uleb128 0x1b
	.long	.LASF635
	.sleb128 338
	.uleb128 0x1b
	.long	.LASF636
	.sleb128 339
	.uleb128 0x1b
	.long	.LASF637
	.sleb128 340
	.uleb128 0x1b
	.long	.LASF638
	.sleb128 341
	.uleb128 0x1b
	.long	.LASF639
	.sleb128 342
	.uleb128 0x1b
	.long	.LASF640
	.sleb128 343
	.uleb128 0x1b
	.long	.LASF641
	.sleb128 344
	.uleb128 0x1b
	.long	.LASF642
	.sleb128 345
	.uleb128 0x1b
	.long	.LASF643
	.sleb128 346
	.uleb128 0x1b
	.long	.LASF644
	.sleb128 347
	.uleb128 0x1b
	.long	.LASF645
	.sleb128 348
	.uleb128 0x1b
	.long	.LASF646
	.sleb128 349
	.uleb128 0x1b
	.long	.LASF647
	.sleb128 350
	.uleb128 0x1b
	.long	.LASF648
	.sleb128 351
	.uleb128 0x1b
	.long	.LASF649
	.sleb128 352
	.byte	0
	.uleb128 0x1e
	.long	0x1425
	.uleb128 0x8
	.byte	0x8
	.long	0x1e23
	.uleb128 0x8
	.byte	0x8
	.long	0x662
	.uleb128 0x8
	.byte	0x8
	.long	0x86f
	.uleb128 0xb
	.long	.LASF650
	.byte	0x40
	.byte	0x10
	.byte	0x70
	.long	0x1eb1
	.uleb128 0x1f
	.string	"cv"
	.byte	0x10
	.byte	0x71
	.long	0x1436
	.byte	0
	.uleb128 0x1f
	.string	"gv"
	.byte	0x10
	.byte	0x72
	.long	0x1442
	.byte	0x8
	.uleb128 0xa
	.long	.LASF651
	.byte	0x10
	.byte	0x73
	.long	0x1442
	.byte	0x10
	.uleb128 0xa
	.long	.LASF652
	.byte	0x10
	.byte	0x75
	.long	0x1448
	.byte	0x18
	.uleb128 0xa
	.long	.LASF653
	.byte	0x10
	.byte	0x77
	.long	0x1448
	.byte	0x20
	.uleb128 0xa
	.long	.LASF654
	.byte	0x10
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF655
	.byte	0x10
	.byte	0x79
	.long	0x1271
	.byte	0x30
	.uleb128 0xa
	.long	.LASF656
	.byte	0x10
	.byte	0x7a
	.long	0x1271
	.byte	0x31
	.uleb128 0xa
	.long	.LASF657
	.byte	0x10
	.byte	0x7b
	.long	0x1eb1
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1493
	.uleb128 0xb
	.long	.LASF658
	.byte	0x28
	.byte	0x10
	.byte	0xd3
	.long	0x1f0b
	.uleb128 0xa
	.long	.LASF659
	.byte	0x10
	.byte	0xd4
	.long	0x1286
	.byte	0
	.uleb128 0xa
	.long	.LASF660
	.byte	0x10
	.byte	0xd5
	.long	0x1286
	.byte	0x4
	.uleb128 0xa
	.long	.LASF661
	.byte	0x10
	.byte	0xd6
	.long	0x12b9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF662
	.byte	0x10
	.byte	0xd7
	.long	0x1425
	.byte	0x10
	.uleb128 0xa
	.long	.LASF663
	.byte	0x10
	.byte	0xd8
	.long	0x12b9
	.byte	0x18
	.uleb128 0x1f
	.string	"cv"
	.byte	0x10
	.byte	0xd9
	.long	0x1436
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF664
	.byte	0x58
	.byte	0x10
	.byte	0xf0
	.long	0x1f9d
	.uleb128 0xa
	.long	.LASF665
	.byte	0x10
	.byte	0xf1
	.long	0x10d
	.byte	0
	.uleb128 0xa
	.long	.LASF666
	.byte	0x10
	.byte	0xf2
	.long	0x1286
	.byte	0x8
	.uleb128 0xa
	.long	.LASF667
	.byte	0x10
	.byte	0xf3
	.long	0x1425
	.byte	0x10
	.uleb128 0xa
	.long	.LASF668
	.byte	0x10
	.byte	0xf4
	.long	0x1425
	.byte	0x18
	.uleb128 0xa
	.long	.LASF669
	.byte	0x10
	.byte	0xf5
	.long	0x1425
	.byte	0x20
	.uleb128 0xa
	.long	.LASF670
	.byte	0x10
	.byte	0xfa
	.long	0x1f9d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF671
	.byte	0x10
	.byte	0xfc
	.long	0x12b9
	.byte	0x30
	.uleb128 0xa
	.long	.LASF672
	.byte	0x10
	.byte	0xfd
	.long	0x12b9
	.byte	0x38
	.uleb128 0xa
	.long	.LASF673
	.byte	0x10
	.byte	0xfe
	.long	0x1448
	.byte	0x40
	.uleb128 0xa
	.long	.LASF674
	.byte	0x10
	.byte	0xff
	.long	0x459
	.byte	0x48
	.uleb128 0x14
	.long	.LASF675
	.byte	0x10
	.value	0x100
	.long	0x459
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12b9
	.uleb128 0x1c
	.byte	0x58
	.byte	0x10
	.value	0x139
	.long	0x1fd1
	.uleb128 0x17
	.long	.LASF676
	.byte	0x10
	.value	0x13a
	.long	0x1e3a
	.uleb128 0x17
	.long	.LASF677
	.byte	0x10
	.value	0x13b
	.long	0x1eb7
	.uleb128 0x17
	.long	.LASF678
	.byte	0x10
	.value	0x13c
	.long	0x1f0b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x504
	.uleb128 0x15
	.long	.LASF679
	.byte	0x58
	.byte	0x10
	.value	0x16e
	.long	0x209b
	.uleb128 0x14
	.long	.LASF680
	.byte	0x10
	.value	0x16f
	.long	0x1286
	.byte	0
	.uleb128 0x14
	.long	.LASF681
	.byte	0x10
	.value	0x170
	.long	0x1286
	.byte	0x4
	.uleb128 0x14
	.long	.LASF682
	.byte	0x10
	.value	0x171
	.long	0x1286
	.byte	0x8
	.uleb128 0x14
	.long	.LASF683
	.byte	0x10
	.value	0x172
	.long	0x1286
	.byte	0xc
	.uleb128 0x14
	.long	.LASF684
	.byte	0x10
	.value	0x173
	.long	0x113
	.byte	0x10
	.uleb128 0x14
	.long	.LASF685
	.byte	0x10
	.value	0x174
	.long	0x113
	.byte	0x11
	.uleb128 0x14
	.long	.LASF686
	.byte	0x10
	.value	0x175
	.long	0x10d
	.byte	0x18
	.uleb128 0x14
	.long	.LASF687
	.byte	0x10
	.value	0x176
	.long	0x12b9
	.byte	0x20
	.uleb128 0x14
	.long	.LASF688
	.byte	0x10
	.value	0x177
	.long	0x12b9
	.byte	0x28
	.uleb128 0x14
	.long	.LASF689
	.byte	0x10
	.value	0x178
	.long	0x10d
	.byte	0x30
	.uleb128 0x14
	.long	.LASF690
	.byte	0x10
	.value	0x179
	.long	0x10d
	.byte	0x38
	.uleb128 0x14
	.long	.LASF691
	.byte	0x10
	.value	0x17a
	.long	0x10d
	.byte	0x40
	.uleb128 0x14
	.long	.LASF692
	.byte	0x10
	.value	0x17b
	.long	0xdf
	.byte	0x48
	.uleb128 0x14
	.long	.LASF693
	.byte	0x10
	.value	0x17c
	.long	0x1e34
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.byte	0x88
	.byte	0x10
	.value	0x1a4
	.long	0x20bd
	.uleb128 0x17
	.long	.LASF694
	.byte	0x10
	.value	0x1a5
	.long	0xaa5
	.uleb128 0x17
	.long	.LASF695
	.byte	0x10
	.value	0x1a6
	.long	0x1fd7
	.byte	0
	.uleb128 0x15
	.long	.LASF696
	.byte	0x38
	.byte	0x10
	.value	0x20c
	.long	0x2133
	.uleb128 0x14
	.long	.LASF697
	.byte	0x10
	.value	0x20d
	.long	0x1448
	.byte	0
	.uleb128 0x14
	.long	.LASF698
	.byte	0x10
	.value	0x20e
	.long	0x2133
	.byte	0x8
	.uleb128 0x14
	.long	.LASF699
	.byte	0x10
	.value	0x20f
	.long	0x1286
	.byte	0x10
	.uleb128 0x14
	.long	.LASF700
	.byte	0x10
	.value	0x210
	.long	0x1286
	.byte	0x14
	.uleb128 0x14
	.long	.LASF701
	.byte	0x10
	.value	0x211
	.long	0x1286
	.byte	0x18
	.uleb128 0x14
	.long	.LASF702
	.byte	0x10
	.value	0x212
	.long	0x2139
	.byte	0x20
	.uleb128 0x14
	.long	.LASF703
	.byte	0x10
	.value	0x213
	.long	0x2139
	.byte	0x28
	.uleb128 0x14
	.long	.LASF704
	.byte	0x10
	.value	0x214
	.long	0x1286
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa71
	.uleb128 0x8
	.byte	0x8
	.long	0x20bd
	.uleb128 0x13
	.long	.LASF705
	.byte	0x10
	.value	0x219
	.long	0x20bd
	.uleb128 0x10
	.string	"HE"
	.byte	0x16
	.byte	0xc
	.long	0x2155
	.uleb128 0xe
	.string	"he"
	.byte	0x18
	.byte	0x16
	.byte	0x10
	.long	0x2185
	.uleb128 0xa
	.long	.LASF706
	.byte	0x16
	.byte	0x11
	.long	0x21c1
	.byte	0
	.uleb128 0xa
	.long	.LASF707
	.byte	0x16
	.byte	0x12
	.long	0x21c7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF708
	.byte	0x16
	.byte	0x13
	.long	0x12b9
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"HEK"
	.byte	0x16
	.byte	0xd
	.long	0x2190
	.uleb128 0xe
	.string	"hek"
	.byte	0xc
	.byte	0x16
	.byte	0x17
	.long	0x21c1
	.uleb128 0xa
	.long	.LASF709
	.byte	0x16
	.byte	0x18
	.long	0x1291
	.byte	0
	.uleb128 0xa
	.long	.LASF710
	.byte	0x16
	.byte	0x19
	.long	0x1286
	.byte	0x4
	.uleb128 0xa
	.long	.LASF711
	.byte	0x16
	.byte	0x1a
	.long	0x12bf
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x214b
	.uleb128 0x8
	.byte	0x8
	.long	0x2185
	.uleb128 0x20
	.long	0x57
	.long	0x21e1
	.uleb128 0x19
	.long	0x12b9
	.uleb128 0x19
	.long	0x1407
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x21cd
	.uleb128 0x20
	.long	0x1291
	.long	0x21fb
	.uleb128 0x19
	.long	0x12b9
	.uleb128 0x19
	.long	0x1407
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x21e7
	.uleb128 0x20
	.long	0x57
	.long	0x2224
	.uleb128 0x19
	.long	0x12b9
	.uleb128 0x19
	.long	0x1407
	.uleb128 0x19
	.long	0x12b9
	.uleb128 0x19
	.long	0x216
	.uleb128 0x19
	.long	0x57
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2201
	.uleb128 0x20
	.long	0x57
	.long	0x223e
	.uleb128 0x19
	.long	0x1407
	.uleb128 0x19
	.long	0x223e
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1230
	.uleb128 0x8
	.byte	0x8
	.long	0x222a
	.uleb128 0x8
	.byte	0x8
	.long	0x1155
	.uleb128 0xb
	.long	.LASF712
	.byte	0xd8
	.byte	0x1c
	.byte	0xe6
	.long	0x228e
	.uleb128 0xa
	.long	.LASF713
	.byte	0x1c
	.byte	0xf9
	.long	0x27d
	.byte	0
	.uleb128 0xa
	.long	.LASF714
	.byte	0x1c
	.byte	0xfa
	.long	0x228e
	.byte	0xc8
	.uleb128 0xa
	.long	.LASF715
	.byte	0x1c
	.byte	0xff
	.long	0x57
	.byte	0xd0
	.uleb128 0x14
	.long	.LASF716
	.byte	0x1c
	.value	0x100
	.long	0x113
	.byte	0xd4
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2250
	.uleb128 0x13
	.long	.LASF717
	.byte	0x1c
	.value	0x107
	.long	0x2250
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF718
	.uleb128 0x13
	.long	.LASF719
	.byte	0xe
	.value	0xc9a
	.long	0x12f0
	.uleb128 0x13
	.long	.LASF720
	.byte	0xe
	.value	0xcc4
	.long	0x22bf
	.uleb128 0x5
	.long	0x1e28
	.long	0x22ca
	.uleb128 0x21
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.byte	0xe
	.value	0xe08
	.long	0x2388
	.uleb128 0x1b
	.long	.LASF721
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF722
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF723
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF724
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF725
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF726
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF727
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF728
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF729
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF730
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF731
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF732
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF733
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF734
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF735
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF736
	.sleb128 15
	.uleb128 0x1b
	.long	.LASF737
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF738
	.sleb128 17
	.uleb128 0x1b
	.long	.LASF739
	.sleb128 18
	.uleb128 0x1b
	.long	.LASF740
	.sleb128 19
	.uleb128 0x1b
	.long	.LASF741
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF742
	.sleb128 21
	.uleb128 0x1b
	.long	.LASF743
	.sleb128 22
	.uleb128 0x1b
	.long	.LASF744
	.sleb128 23
	.uleb128 0x1b
	.long	.LASF745
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF746
	.sleb128 25
	.uleb128 0x1b
	.long	.LASF747
	.sleb128 26
	.uleb128 0x1b
	.long	.LASF748
	.sleb128 27
	.uleb128 0x1b
	.long	.LASF749
	.sleb128 28
	.uleb128 0x1b
	.long	.LASF750
	.sleb128 29
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.byte	0xe
	.value	0xfb1
	.long	0x2527
	.uleb128 0x1b
	.long	.LASF751
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF752
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF753
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF754
	.sleb128 3
	.uleb128 0x1b
	.long	.LASF755
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF756
	.sleb128 5
	.uleb128 0x1b
	.long	.LASF757
	.sleb128 6
	.uleb128 0x1b
	.long	.LASF758
	.sleb128 7
	.uleb128 0x1b
	.long	.LASF759
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF760
	.sleb128 9
	.uleb128 0x1b
	.long	.LASF761
	.sleb128 10
	.uleb128 0x1b
	.long	.LASF762
	.sleb128 11
	.uleb128 0x1b
	.long	.LASF763
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF764
	.sleb128 13
	.uleb128 0x1b
	.long	.LASF765
	.sleb128 14
	.uleb128 0x1b
	.long	.LASF766
	.sleb128 15
	.uleb128 0x1b
	.long	.LASF767
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF768
	.sleb128 17
	.uleb128 0x1b
	.long	.LASF769
	.sleb128 18
	.uleb128 0x1b
	.long	.LASF770
	.sleb128 19
	.uleb128 0x1b
	.long	.LASF771
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF772
	.sleb128 21
	.uleb128 0x1b
	.long	.LASF773
	.sleb128 22
	.uleb128 0x1b
	.long	.LASF774
	.sleb128 23
	.uleb128 0x1b
	.long	.LASF775
	.sleb128 24
	.uleb128 0x1b
	.long	.LASF776
	.sleb128 25
	.uleb128 0x1b
	.long	.LASF777
	.sleb128 26
	.uleb128 0x1b
	.long	.LASF778
	.sleb128 27
	.uleb128 0x1b
	.long	.LASF779
	.sleb128 28
	.uleb128 0x1b
	.long	.LASF780
	.sleb128 29
	.uleb128 0x1b
	.long	.LASF781
	.sleb128 30
	.uleb128 0x1b
	.long	.LASF782
	.sleb128 31
	.uleb128 0x1b
	.long	.LASF783
	.sleb128 32
	.uleb128 0x1b
	.long	.LASF784
	.sleb128 33
	.uleb128 0x1b
	.long	.LASF785
	.sleb128 34
	.uleb128 0x1b
	.long	.LASF786
	.sleb128 35
	.uleb128 0x1b
	.long	.LASF787
	.sleb128 36
	.uleb128 0x1b
	.long	.LASF788
	.sleb128 37
	.uleb128 0x1b
	.long	.LASF789
	.sleb128 38
	.uleb128 0x1b
	.long	.LASF790
	.sleb128 39
	.uleb128 0x1b
	.long	.LASF791
	.sleb128 40
	.uleb128 0x1b
	.long	.LASF792
	.sleb128 41
	.uleb128 0x1b
	.long	.LASF793
	.sleb128 42
	.uleb128 0x1b
	.long	.LASF794
	.sleb128 43
	.uleb128 0x1b
	.long	.LASF795
	.sleb128 44
	.uleb128 0x1b
	.long	.LASF796
	.sleb128 45
	.uleb128 0x1b
	.long	.LASF797
	.sleb128 46
	.uleb128 0x1b
	.long	.LASF798
	.sleb128 47
	.uleb128 0x1b
	.long	.LASF799
	.sleb128 48
	.uleb128 0x1b
	.long	.LASF800
	.sleb128 49
	.uleb128 0x1b
	.long	.LASF801
	.sleb128 50
	.uleb128 0x1b
	.long	.LASF802
	.sleb128 51
	.uleb128 0x1b
	.long	.LASF803
	.sleb128 52
	.uleb128 0x1b
	.long	.LASF804
	.sleb128 53
	.uleb128 0x1b
	.long	.LASF805
	.sleb128 54
	.uleb128 0x1b
	.long	.LASF806
	.sleb128 55
	.uleb128 0x1b
	.long	.LASF807
	.sleb128 56
	.uleb128 0x1b
	.long	.LASF808
	.sleb128 57
	.uleb128 0x1b
	.long	.LASF809
	.sleb128 58
	.uleb128 0x1b
	.long	.LASF810
	.sleb128 59
	.uleb128 0x1b
	.long	.LASF811
	.sleb128 60
	.uleb128 0x1b
	.long	.LASF812
	.sleb128 61
	.uleb128 0x1b
	.long	.LASF813
	.sleb128 62
	.uleb128 0x1b
	.long	.LASF814
	.sleb128 63
	.uleb128 0x1b
	.long	.LASF815
	.sleb128 64
	.uleb128 0x1b
	.long	.LASF816
	.sleb128 65
	.uleb128 0x1b
	.long	.LASF817
	.sleb128 66
	.byte	0
	.uleb128 0x4
	.long	.LASF818
	.byte	0x1d
	.byte	0x55
	.long	0x12fb
	.uleb128 0x23
	.long	.LASF819
	.byte	0x1
	.byte	0x47
	.long	0xdf
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x257b
	.uleb128 0x24
	.long	.LASF821
	.byte	0x1
	.byte	0x47
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0x49
	.long	0x57
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.byte	0x4a
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.long	.LASF820
	.byte	0x1
	.byte	0x6a
	.long	0xdf
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d2
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.byte	0x6a
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF821
	.byte	0x1
	.byte	0x6a
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0x6c
	.long	0x57
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.byte	0x6d
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF831
	.byte	0x1
	.byte	0x9b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x25fe
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.byte	0x9b
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF824
	.byte	0x1
	.byte	0xaa
	.long	0xdf
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2655
	.uleb128 0x24
	.long	.LASF825
	.byte	0x1
	.byte	0xaa
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF821
	.byte	0x1
	.byte	0xaa
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0xac
	.long	0x57
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.byte	0xad
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.long	.LASF826
	.byte	0x1
	.byte	0xd3
	.long	0xdf
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2690
	.uleb128 0x24
	.long	.LASF827
	.byte	0x1
	.byte	0xd3
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0xd5
	.long	0x57
	.byte	0
	.uleb128 0x23
	.long	.LASF828
	.byte	0x1
	.byte	0xd9
	.long	0xdf
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d9
	.uleb128 0x24
	.long	.LASF829
	.byte	0x1
	.byte	0xd9
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF821
	.byte	0x1
	.byte	0xd9
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0xdb
	.long	0x57
	.byte	0
	.uleb128 0x23
	.long	.LASF830
	.byte	0x1
	.byte	0xdf
	.long	0xdf
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2722
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.byte	0xdf
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF827
	.byte	0x1
	.byte	0xdf
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0xe1
	.long	0x57
	.byte	0
	.uleb128 0x27
	.long	.LASF832
	.byte	0x1
	.byte	0xe5
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2759
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.byte	0xe5
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF823
	.byte	0x1
	.byte	0xe7
	.long	0x57
	.byte	0
	.uleb128 0x28
	.long	.LASF833
	.byte	0x1
	.byte	0xf0
	.long	0x10d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x27d6
	.uleb128 0x29
	.string	"to"
	.byte	0x1
	.byte	0xf0
	.long	0x10d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.long	.LASF834
	.byte	0x1
	.byte	0xf0
	.long	0x10d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.long	.LASF835
	.byte	0x1
	.byte	0xf0
	.long	0x10d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.long	.LASF836
	.byte	0x1
	.byte	0xf0
	.long	0x10d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x24
	.long	.LASF837
	.byte	0x1
	.byte	0xf0
	.long	0x57
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.long	.LASF838
	.byte	0x1
	.byte	0xf0
	.long	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF839
	.byte	0x1
	.byte	0xf2
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2b
	.long	.LASF840
	.byte	0x1
	.value	0x10d
	.long	0x10d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x283b
	.uleb128 0x2c
	.string	"big"
	.byte	0x1
	.value	0x10d
	.long	0x216
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.LASF841
	.byte	0x1
	.value	0x10d
	.long	0x216
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x10f
	.long	0x216
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x10f
	.long	0x216
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x110
	.long	0x1286
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x2b
	.long	.LASF843
	.byte	0x1
	.value	0x12b
	.long	0x10d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x28cc
	.uleb128 0x2c
	.string	"big"
	.byte	0x1
	.value	0x12b
	.long	0x216
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.LASF844
	.byte	0x1
	.value	0x12b
	.long	0x216
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.long	.LASF841
	.byte	0x1
	.value	0x12b
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF845
	.byte	0x1
	.value	0x12b
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x12d
	.long	0x216
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x12d
	.long	0x216
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x12e
	.long	0x1286
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF846
	.byte	0x1
	.value	0x12f
	.long	0x216
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2b
	.long	.LASF847
	.byte	0x1
	.value	0x148
	.long	0x10d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x296e
	.uleb128 0x2c
	.string	"big"
	.byte	0x1
	.value	0x148
	.long	0x216
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.LASF844
	.byte	0x1
	.value	0x148
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF841
	.byte	0x1
	.value	0x148
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF845
	.byte	0x1
	.value	0x148
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x14a
	.long	0x216
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x14b
	.long	0x216
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x14b
	.long	0x216
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x14c
	.long	0x1286
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF846
	.byte	0x1
	.value	0x14d
	.long	0x216
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x30
	.long	.LASF849
	.byte	0x1
	.value	0x176
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a56
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x176
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1
	.value	0x176
	.long	0x1291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x178
	.long	0x2a56
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF850
	.byte	0x1
	.value	0x179
	.long	0x2a56
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x17a
	.long	0x1291
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x17b
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF851
	.byte	0x1
	.value	0x17c
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF852
	.byte	0x1
	.value	0x17d
	.long	0x1291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2a25
	.uleb128 0x2e
	.string	"mg"
	.byte	0x1
	.value	0x180
	.long	0x1407
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF853
	.byte	0x1
	.value	0x18a
	.long	0x1271
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2e
	.string	"sb"
	.byte	0x1
	.value	0x18b
	.long	0x2a5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1271
	.uleb128 0x8
	.byte	0x8
	.long	0x2d
	.uleb128 0x33
	.long	.LASF854
	.byte	0x1
	.value	0x1c1
	.long	0x10d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c09
	.uleb128 0x2c
	.string	"big"
	.byte	0x1
	.value	0x1c1
	.long	0x2a5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF844
	.byte	0x1
	.value	0x1c1
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	.LASF855
	.byte	0x1
	.value	0x1c1
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1
	.value	0x1c1
	.long	0x1291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x1c3
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"l"
	.byte	0x1
	.value	0x1c4
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x1c5
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF856
	.byte	0x1
	.value	0x1c6
	.long	0x481
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF857
	.byte	0x1
	.value	0x1c7
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.long	.LASF858
	.byte	0x1
	.value	0x202
	.quad	.L118
	.uleb128 0x34
	.long	.LASF859
	.byte	0x1
	.value	0x221
	.quad	.L122
	.uleb128 0x34
	.long	.LASF860
	.byte	0x1
	.value	0x254
	.quad	.L141
	.uleb128 0x34
	.long	.LASF861
	.byte	0x1
	.value	0x26c
	.quad	.L140
	.uleb128 0x31
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2b76
	.uleb128 0x2e
	.string	"c1"
	.byte	0x1
	.value	0x1f5
	.long	0x2d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2e
	.string	"c2"
	.byte	0x1
	.value	0x1f6
	.long	0x2d
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2b9a
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x236
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x32
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.long	.LASF850
	.byte	0x1
	.value	0x247
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.long	.LASF862
	.byte	0x1
	.value	0x248
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x32
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x252
	.long	0x1286
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF863
	.byte	0x1
	.value	0x25c
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF864
	.byte	0x1
	.value	0x285
	.long	0x10d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d36
	.uleb128 0x2d
	.long	.LASF865
	.byte	0x1
	.value	0x285
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF855
	.byte	0x1
	.value	0x285
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF866
	.byte	0x1
	.value	0x285
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF867
	.byte	0x1
	.value	0x285
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF868
	.byte	0x1
	.value	0x285
	.long	0x1348
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF869
	.byte	0x1
	.value	0x285
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x287
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x287
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.string	"big"
	.byte	0x1
	.value	0x288
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0x289
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF870
	.byte	0x1
	.value	0x28a
	.long	0x1286
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x28b
	.long	0x1286
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x28c
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF871
	.byte	0x1
	.value	0x28d
	.long	0x1286
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF846
	.byte	0x1
	.value	0x28e
	.long	0x2a5c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2f
	.long	.LASF872
	.byte	0x1
	.value	0x28f
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF873
	.byte	0x1
	.value	0x294
	.quad	.L154
	.uleb128 0x34
	.long	.LASF874
	.byte	0x1
	.value	0x2c9
	.quad	.L156
	.byte	0
	.uleb128 0x2b
	.long	.LASF875
	.byte	0x1
	.value	0x2da
	.long	0x1286
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d9b
	.uleb128 0x2c
	.string	"s1"
	.byte	0x1
	.value	0x2da
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"s2"
	.byte	0x1
	.value	0x2da
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x2da
	.long	0x1286
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x2dc
	.long	0x2a56
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x2dd
	.long	0x2a56
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2b
	.long	.LASF876
	.byte	0x1
	.value	0x2e7
	.long	0x1286
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e00
	.uleb128 0x2c
	.string	"s1"
	.byte	0x1
	.value	0x2e7
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"s2"
	.byte	0x1
	.value	0x2e7
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x2e7
	.long	0x1286
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x2e9
	.long	0x2a56
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x2ea
	.long	0x2a56
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x33
	.long	.LASF877
	.byte	0x1
	.value	0x303
	.long	0x10d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e3f
	.uleb128 0x2c
	.string	"pv"
	.byte	0x1
	.value	0x303
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x305
	.long	0x10d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.long	.LASF879
	.byte	0x1
	.value	0x323
	.long	0x10d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e8c
	.uleb128 0x2c
	.string	"pv"
	.byte	0x1
	.value	0x323
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x323
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x325
	.long	0x10d
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x33
	.long	.LASF880
	.byte	0x1
	.value	0x33c
	.long	0x10d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ecb
	.uleb128 0x2c
	.string	"pv"
	.byte	0x1
	.value	0x33c
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x33e
	.long	0x10d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.long	.LASF881
	.byte	0x1
	.value	0x355
	.long	0x10d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f27
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x355
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x357
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"pv"
	.byte	0x1
	.value	0x358
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x359
	.long	0x10d
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.long	.LASF887
	.byte	0x1
	.value	0x364
	.long	0x12b9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f67
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0x366
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"any"
	.byte	0x1
	.value	0x367
	.long	0x2f67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc1e
	.uleb128 0x33
	.long	.LASF882
	.byte	0x1
	.value	0x39c
	.long	0x10d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fc1
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x39c
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x39e
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x39f
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x33
	.long	.LASF885
	.byte	0x1
	.value	0x3a7
	.long	0x10d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3010
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x3a7
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x3a7
	.long	0x3010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0x3a9
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x20b
	.uleb128 0x33
	.long	.LASF886
	.byte	0x1
	.value	0x3bd
	.long	0x12b9
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x306a
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x3bd
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x3bf
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x3c0
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x35
	.long	.LASF888
	.byte	0x1
	.value	0x3c8
	.long	0x1fd1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x30eb
	.uleb128 0x2c
	.string	"cop"
	.byte	0x1
	.value	0x3c8
	.long	0x1fd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"o"
	.byte	0x1
	.value	0x3c8
	.long	0x1425
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2e
	.string	"kid"
	.byte	0x1
	.value	0x3cf
	.long	0x1425
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.long	.LASF889
	.byte	0x1
	.value	0x3d2
	.long	0x1fd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF890
	.byte	0x1
	.value	0x3e7
	.long	0x12b9
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3180
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x3e7
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x3e7
	.long	0x3010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0x3e9
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"dgd"
	.byte	0x1
	.value	0x3ea
	.long	0x3180
	.uleb128 0x9
	.byte	0x3
	.quad	dgd.10944
	.uleb128 0x2e
	.string	"cop"
	.byte	0x1
	.value	0x3eb
	.long	0x1fd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2f
	.long	.LASF891
	.byte	0x1
	.value	0x3fe
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0x3190
	.uleb128 0x6
	.long	0xcd
	.byte	0x1c
	.byte	0
	.uleb128 0x30
	.long	.LASF892
	.byte	0x1
	.value	0x410
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3283
	.uleb128 0x2d
	.long	.LASF893
	.byte	0x1
	.value	0x410
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF894
	.byte	0x1
	.value	0x410
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"io"
	.byte	0x1
	.value	0x412
	.long	0x3283
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"mg"
	.byte	0x1
	.value	0x413
	.long	0x1407
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x3261
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x419
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x3232
	.uleb128 0x2f
	.long	.LASF895
	.byte	0x1
	.value	0x421
	.long	0x3289
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x32
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x42a
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF896
	.byte	0x1
	.value	0x42a
	.long	0x3289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.long	.LASF897
	.byte	0x1
	.value	0x433
	.long	0x1476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa36
	.uleb128 0x8
	.byte	0x8
	.long	0x213f
	.uleb128 0x33
	.long	.LASF898
	.byte	0x1
	.value	0x442
	.long	0x10d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x331e
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x442
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x442
	.long	0x3010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF894
	.byte	0x1
	.value	0x442
	.long	0x331e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF899
	.byte	0x1
	.value	0x443
	.long	0x1348
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x445
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2e
	.string	"msv"
	.byte	0x1
	.value	0x448
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x481
	.uleb128 0x30
	.long	.LASF900
	.byte	0x1
	.value	0x460
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3431
	.uleb128 0x2d
	.long	.LASF893
	.byte	0x1
	.value	0x460
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF894
	.byte	0x1
	.value	0x460
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF899
	.byte	0x1
	.value	0x460
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF901
	.byte	0x1
	.value	0x462
	.long	0x140d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"gv"
	.byte	0x1
	.value	0x463
	.long	0x1442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"cv"
	.byte	0x1
	.value	0x464
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF902
	.byte	0x1
	.value	0x466
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x46f
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"msg"
	.byte	0x1
	.value	0x470
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x3401
	.uleb128 0x2f
	.long	.LASF895
	.byte	0x1
	.value	0x47e
	.long	0x3289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x483
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF896
	.byte	0x1
	.value	0x483
	.long	0x3289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF903
	.byte	0x1
	.value	0x489
	.long	0x1425
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x34ae
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x489
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x489
	.long	0x3010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x48b
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF904
	.byte	0x1
	.value	0x48c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF894
	.byte	0x1
	.value	0x48d
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0x48e
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF905
	.byte	0x1
	.value	0x4af
	.long	0x1425
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3500
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x4af
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.uleb128 0x2e
	.string	"o"
	.byte	0x1
	.value	0x4b1
	.long	0x1425
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x4b2
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x30
	.long	.LASF906
	.byte	0x1
	.value	0x4ba
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x356a
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x4ba
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x4ba
	.long	0x3010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x4bc
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF894
	.byte	0x1
	.value	0x4bd
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0x4be
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF907
	.byte	0x1
	.value	0x4f0
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x35aa
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x4f0
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x4f2
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x30
	.long	.LASF908
	.byte	0x1
	.value	0x4fa
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f9
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x4fa
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x4fa
	.long	0x3010
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x4fc
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF901
	.byte	0x1
	.value	0x4fd
	.long	0x140d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"gv"
	.byte	0x1
	.value	0x4fe
	.long	0x1442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"cv"
	.byte	0x1
	.value	0x4ff
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"msv"
	.byte	0x1
	.value	0x500
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF894
	.byte	0x1
	.value	0x501
	.long	0x481
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0x502
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x32
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2f
	.long	.LASF909
	.byte	0x1
	.value	0x50a
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x511
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"msg"
	.byte	0x1
	.value	0x512
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x36c8
	.uleb128 0x2f
	.long	.LASF895
	.byte	0x1
	.value	0x51b
	.long	0x3289
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x32
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2e
	.string	"sp"
	.byte	0x1
	.value	0x520
	.long	0x1f9d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF896
	.byte	0x1
	.value	0x520
	.long	0x3289
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF910
	.byte	0x1
	.value	0x53f
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3739
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x53f
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x541
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x30
	.long	.LASF911
	.byte	0x1
	.value	0x554
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3789
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.value	0x554
	.long	0x1291
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x554
	.long	0x216
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x36
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x556
	.long	0x20b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x30
	.long	.LASF912
	.byte	0x1
	.value	0x55d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3824
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.value	0x55d
	.long	0x1291
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"pat"
	.byte	0x1
	.value	0x55d
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x55d
	.long	0x3010
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2e
	.string	"msv"
	.byte	0x1
	.value	0x560
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF894
	.byte	0x1
	.value	0x561
	.long	0x481
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x562
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0x563
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF913
	.byte	0x1
	.value	0x587
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3943
	.uleb128 0x2c
	.string	"nam"
	.byte	0x1
	.value	0x587
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"val"
	.byte	0x1
	.value	0x587
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x3903
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x591
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0x592
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF915
	.byte	0x1
	.value	0x592
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x595
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"max"
	.byte	0x1
	.value	0x596
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF916
	.byte	0x1
	.value	0x597
	.long	0x3943
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x59d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2f
	.long	.LASF917
	.byte	0x1
	.value	0x5bd
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0x5be
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF915
	.byte	0x1
	.value	0x5be
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x10d
	.uleb128 0x33
	.long	.LASF918
	.byte	0x1
	.value	0x5e4
	.long	0x1286
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3995
	.uleb128 0x2c
	.string	"nam"
	.byte	0x1
	.value	0x5e4
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5e6
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x5e6
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2b
	.long	.LASF919
	.byte	0x1
	.value	0x662
	.long	0x50
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d4
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x662
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0x665
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x33
	.long	.LASF921
	.byte	0x1
	.value	0x66f
	.long	0x5e
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a31
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.value	0x66f
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1
	.value	0x671
	.long	0x3a23
	.uleb128 0x17
	.long	.LASF920
	.byte	0x1
	.value	0x672
	.long	0x5e
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x673
	.long	0x19e
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x674
	.long	0x3a03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF922
	.byte	0x1
	.value	0x68c
	.long	0x5e
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a8c
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.value	0x68c
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1
	.value	0x68e
	.long	0x3a7e
	.uleb128 0x37
	.string	"l"
	.byte	0x1
	.value	0x68f
	.long	0x5e
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x690
	.long	0x19e
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x691
	.long	0x3a60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF923
	.byte	0x1
	.value	0x70b
	.long	0x50
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b00
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x70b
	.long	0x50
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.byte	0x2
	.byte	0x1
	.value	0x70b
	.long	0x3ada
	.uleb128 0x17
	.long	.LASF924
	.byte	0x1
	.value	0x70b
	.long	0x50
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x70b
	.long	0x3b00
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x70b
	.long	0x3aba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x70b
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x70b
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0x3b10
	.uleb128 0x6
	.long	0xcd
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.long	.LASF925
	.byte	0x1
	.value	0x70e
	.long	0x5e
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b84
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x70e
	.long	0x5e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1
	.value	0x70e
	.long	0x3b5e
	.uleb128 0x17
	.long	.LASF924
	.byte	0x1
	.value	0x70e
	.long	0x5e
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x70e
	.long	0x19e
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x70e
	.long	0x3b3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x70e
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x70e
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2b
	.long	.LASF926
	.byte	0x1
	.value	0x711
	.long	0x50
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bf8
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x711
	.long	0x50
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1c
	.byte	0x2
	.byte	0x1
	.value	0x711
	.long	0x3bd2
	.uleb128 0x17
	.long	.LASF924
	.byte	0x1
	.value	0x711
	.long	0x50
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x711
	.long	0x3b00
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x711
	.long	0x3bb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x711
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x711
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x33
	.long	.LASF927
	.byte	0x1
	.value	0x714
	.long	0x5e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c6c
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x714
	.long	0x5e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1
	.value	0x714
	.long	0x3c46
	.uleb128 0x17
	.long	.LASF924
	.byte	0x1
	.value	0x714
	.long	0x5e
	.uleb128 0x37
	.string	"c"
	.byte	0x1
	.value	0x714
	.long	0x19e
	.byte	0
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x714
	.long	0x3c26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x714
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x714
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x38
	.long	.LASF928
	.byte	0x1
	.value	0x796
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ccc
	.uleb128 0x2c
	.string	"ptr"
	.byte	0x1
	.value	0x796
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x796
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x798
	.long	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x799
	.long	0x10d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"tc"
	.byte	0x1
	.value	0x79a
	.long	0x113
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x33
	.long	.LASF929
	.byte	0x1
	.value	0x7a4
	.long	0x1476
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df2
	.uleb128 0x2d
	.long	.LASF930
	.byte	0x1
	.value	0x7a4
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x7a4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x1
	.value	0x7a4
	.long	0x1f9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x7a7
	.long	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF931
	.byte	0x1
	.value	0x7a8
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF932
	.byte	0x1
	.value	0x7a8
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"pid"
	.byte	0x1
	.value	0x7a9
	.long	0x11a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0x7aa
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF933
	.byte	0x1
	.value	0x7ab
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"pp"
	.byte	0x1
	.value	0x7ac
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2f
	.long	.LASF934
	.byte	0x1
	.value	0x805
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.value	0x806
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"n1"
	.byte	0x1
	.value	0x806
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.long	.LASF935
	.byte	0x1
	.value	0x813
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF936
	.byte	0x1
	.value	0x813
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF937
	.byte	0x1
	.value	0x82a
	.long	0x1476
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f40
	.uleb128 0x2c
	.string	"cmd"
	.byte	0x1
	.value	0x82a
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF930
	.byte	0x1
	.value	0x82a
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x82c
	.long	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF931
	.byte	0x1
	.value	0x82d
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF932
	.byte	0x1
	.value	0x82d
	.long	0x1286
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"pid"
	.byte	0x1
	.value	0x82e
	.long	0x11a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0x82f
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF938
	.byte	0x1
	.value	0x830
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF933
	.byte	0x1
	.value	0x831
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"pp"
	.byte	0x1
	.value	0x832
	.long	0xbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x3ece
	.uleb128 0x2f
	.long	.LASF939
	.byte	0x1
	.value	0x853
	.long	0x1442
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2f
	.long	.LASF934
	.byte	0x1
	.value	0x89d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.value	0x89e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"n1"
	.byte	0x1
	.value	0x89e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.long	.LASF935
	.byte	0x1
	.value	0x8ab
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF936
	.byte	0x1
	.value	0x8ab
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF940
	.byte	0x1
	.value	0x8db
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF941
	.byte	0x1
	.value	0x8e8
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF942
	.byte	0x1
	.value	0x8f4
	.long	0x11a
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa6
	.uleb128 0x2e
	.string	"pid"
	.byte	0x1
	.value	0x8f7
	.long	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF943
	.byte	0x1e
	.value	0x216
	.long	0x57
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe7
	.uleb128 0x2d
	.long	.LASF944
	.byte	0x1
	.value	0x91b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF945
	.byte	0x1
	.value	0x91b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF946
	.byte	0x1
	.value	0x992
	.long	0x12f0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4028
	.uleb128 0x2d
	.long	.LASF947
	.byte	0x1
	.value	0x992
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF948
	.byte	0x1
	.value	0x992
	.long	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF1121
	.byte	0x1
	.value	0x9a2
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4056
	.uleb128 0x2d
	.long	.LASF947
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF949
	.byte	0x1
	.value	0x9a8
	.long	0x12f0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x4097
	.uleb128 0x2d
	.long	.LASF947
	.byte	0x1
	.value	0x9a8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF950
	.byte	0x1
	.value	0x9aa
	.long	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF951
	.byte	0x1
	.value	0x9bb
	.long	0x57
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e7
	.uleb128 0x2d
	.long	.LASF947
	.byte	0x1
	.value	0x9bb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF948
	.byte	0x1
	.value	0x9bb
	.long	0x12f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x1
	.value	0x9bb
	.long	0x40e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x22a7
	.uleb128 0x33
	.long	.LASF953
	.byte	0x1
	.value	0x9c7
	.long	0x57
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x412e
	.uleb128 0x2d
	.long	.LASF947
	.byte	0x1
	.value	0x9c7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x1
	.value	0x9c7
	.long	0x40e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF954
	.byte	0x1
	.value	0x9d7
	.long	0x1286
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e9
	.uleb128 0x2c
	.string	"ptr"
	.byte	0x1
	.value	0x9d7
	.long	0x1476
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF955
	.byte	0x1
	.value	0x9d9
	.long	0x22a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF956
	.byte	0x1
	.value	0x9d9
	.long	0x22a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF957
	.byte	0x1
	.value	0x9d9
	.long	0x22a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF936
	.byte	0x1
	.value	0x9da
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"svp"
	.byte	0x1
	.value	0x9db
	.long	0x1f9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"pid"
	.byte	0x1
	.value	0x9dc
	.long	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF935
	.byte	0x1
	.value	0x9dd
	.long	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF958
	.byte	0x1
	.value	0x9de
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2f
	.long	.LASF959
	.byte	0x1
	.value	0x9df
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x33
	.long	.LASF960
	.byte	0x1
	.value	0xa15
	.long	0x1286
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4258
	.uleb128 0x2c
	.string	"pid"
	.byte	0x1
	.value	0xa15
	.long	0x11a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF961
	.byte	0x1
	.value	0xa15
	.long	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1
	.value	0xa15
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0xa17
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF962
	.byte	0x1
	.value	0xa51
	.quad	.L477
	.byte	0
	.uleb128 0x30
	.long	.LASF963
	.byte	0x1
	.value	0xa5b
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x42b3
	.uleb128 0x2c
	.string	"pid"
	.byte	0x1
	.value	0xa5b
	.long	0x11a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF936
	.byte	0x1
	.value	0xa5b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"sv"
	.byte	0x1
	.value	0xa5d
	.long	0x12b9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF964
	.byte	0x1
	.value	0xa5e
	.long	0x42b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0x42c3
	.uleb128 0x6
	.long	0xcd
	.byte	0x15
	.byte	0
	.uleb128 0x38
	.long	.LASF965
	.byte	0x1
	.value	0xa89
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x4354
	.uleb128 0x2c
	.string	"to"
	.byte	0x1
	.value	0xa89
	.long	0x10d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.long	.LASF835
	.byte	0x1
	.value	0xa89
	.long	0x216
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0xa89
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF825
	.byte	0x1
	.value	0xa89
	.long	0x1286
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2f
	.long	.LASF966
	.byte	0x1
	.value	0xa8b
	.long	0x1286
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF967
	.byte	0x1
	.value	0xa8c
	.long	0x216
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x32
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0xa8f
	.long	0x21c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF968
	.byte	0x1
	.value	0xa9e
	.long	0x1286
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e1
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.value	0xa9e
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0xa9e
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2e
	.string	"fa"
	.byte	0x1
	.value	0xaa0
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2e
	.string	"fb"
	.byte	0x1
	.value	0xaa1
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF969
	.byte	0x1
	.value	0xaa2
	.long	0x28e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF970
	.byte	0x1
	.value	0xaa3
	.long	0x28e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF971
	.byte	0x1
	.value	0xaa4
	.long	0x12b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x33
	.long	.LASF972
	.byte	0x1
	.value	0xac2
	.long	0x10d
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c2
	.uleb128 0x2d
	.long	.LASF973
	.byte	0x1
	.value	0xac2
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4184
	.uleb128 0x2d
	.long	.LASF974
	.byte	0x1
	.value	0xac2
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4188
	.uleb128 0x2d
	.long	.LASF975
	.byte	0x1
	.value	0xac2
	.long	0x3943
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4200
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1
	.value	0xac2
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4192
	.uleb128 0x2f
	.long	.LASF976
	.byte	0x1
	.value	0xac4
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x2f
	.long	.LASF977
	.byte	0x1
	.value	0xac5
	.long	0x10d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x2f
	.long	.LASF978
	.byte	0x1
	.value	0xac6
	.long	0x44c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0xac7
	.long	0x10d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0xac8
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0xac9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4164
	.uleb128 0x32
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2f
	.long	.LASF979
	.byte	0x1
	.value	0xb46
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4170
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0x44d3
	.uleb128 0x3b
	.long	0xcd
	.value	0xfff
	.byte	0
	.uleb128 0x3c
	.long	.LASF981
	.byte	0x1
	.value	0xbaf
	.long	0xdf
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF980
	.byte	0x1
	.value	0xbc4
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x451d
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0xbc4
	.long	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF982
	.byte	0x1
	.value	0xcf1
	.long	0x3943
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF983
	.byte	0x1
	.value	0xcf7
	.long	0x3943
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF984
	.byte	0x1
	.value	0xcfd
	.long	0x10d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF985
	.byte	0x1
	.value	0xd03
	.long	0x136a
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF986
	.byte	0x1
	.value	0xd09
	.long	0x45b3
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.byte	0x8
	.long	0x22b3
	.uleb128 0x33
	.long	.LASF987
	.byte	0x1
	.value	0xd10
	.long	0x10d
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x4609
	.uleb128 0x2d
	.long	.LASF988
	.byte	0x1
	.value	0xd10
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0xd10
	.long	0x4609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF989
	.byte	0x1
	.value	0xd12
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x42
	.uleb128 0x2b
	.long	.LASF990
	.byte	0x1
	.value	0xd1b
	.long	0x224a
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x4650
	.uleb128 0x2d
	.long	.LASF991
	.byte	0x1
	.value	0xd1b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0xd1d
	.long	0x224a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF992
	.byte	0x1
	.value	0xd86
	.long	0x1286
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF993
	.byte	0x1
	.value	0xdb8
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x474c
	.uleb128 0x2c
	.string	"gv"
	.byte	0x1
	.value	0xdb8
	.long	0x1442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"io"
	.byte	0x1
	.value	0xdb8
	.long	0x3283
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"op"
	.byte	0x1
	.value	0xdb8
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF994
	.byte	0x1
	.value	0xdba
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF995
	.byte	0x1
	.value	0xdbe
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF272
	.byte	0x1
	.value	0xdbf
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x1
	.value	0xdc2
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x471a
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x1
	.value	0xdca
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x1
	.value	0xdd5
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF999
	.byte	0x1
	.value	0xdd6
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1000
	.byte	0x1
	.value	0xe39
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x477a
	.uleb128 0x2c
	.string	"ptm"
	.byte	0x1
	.value	0xe39
	.long	0x477a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x35f
	.uleb128 0x38
	.long	.LASF1001
	.byte	0x1
	.value	0xe4a
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x4826
	.uleb128 0x2c
	.string	"ptm"
	.byte	0x1
	.value	0xe4a
	.long	0x477a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1002
	.byte	0x1
	.value	0xe4c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1003
	.byte	0x1
	.value	0xe4d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1004
	.byte	0x1
	.value	0xe4e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1005
	.byte	0x1
	.value	0xe4e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1006
	.byte	0x1
	.value	0xe4e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1007
	.byte	0x1
	.value	0xe4e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1008
	.byte	0x1
	.value	0xe4f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1009
	.byte	0x1
	.value	0xe4f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF1010
	.byte	0x1
	.value	0xf0b
	.long	0x10d
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x48df
	.uleb128 0x2c
	.string	"fmt"
	.byte	0x1
	.value	0xf0b
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"sec"
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"min"
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF1011
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF1005
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"mon"
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1012
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF1014
	.byte	0x1
	.value	0xf0b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x33
	.long	.LASF1015
	.byte	0x1
	.value	0xf75
	.long	0x57
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x49de
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0xf75
	.long	0x12b9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF1016
	.byte	0x1
	.value	0xf91
	.long	0x28e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF1017
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF1018
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2f
	.long	.LASF1019
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF1020
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2f
	.long	.LASF1021
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1022
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1024
	.byte	0x1
	.value	0xf92
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2f
	.long	.LASF1025
	.byte	0x1
	.value	0xf93
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF1026
	.byte	0x1
	.value	0xf93
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2e
	.string	"dir"
	.byte	0x1
	.value	0xf94
	.long	0x1470
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.string	"dp"
	.byte	0x1
	.value	0xf95
	.long	0x49de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3ef
	.uleb128 0x2b
	.long	.LASF1027
	.byte	0x1
	.value	0x10fc
	.long	0x57
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a42
	.uleb128 0x2d
	.long	.LASF1028
	.byte	0x1
	.value	0x10fc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF272
	.byte	0x1
	.value	0x10fc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1029
	.byte	0x1
	.value	0x10fc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"fd"
	.byte	0x1
	.value	0x10fc
	.long	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x38
	.long	.LASF1030
	.byte	0x1
	.value	0x1111
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a6f
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x1111
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1031
	.byte	0x1
	.value	0x1120
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a9c
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x1120
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1032
	.byte	0x1
	.value	0x1130
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ac9
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0x1130
	.long	0x12b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1033
	.byte	0x1
	.value	0x1135
	.long	0x1291
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b17
	.uleb128 0x2d
	.long	.LASF1034
	.byte	0x1
	.value	0x1135
	.long	0x3943
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1137
	.long	0x10d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"opt"
	.byte	0x1
	.value	0x1138
	.long	0x1291
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3c
	.long	.LASF1035
	.byte	0x1
	.value	0x116b
	.long	0x1291
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1036
	.byte	0x1
	.value	0x11c3
	.long	0x464
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF1037
	.byte	0x1
	.value	0x99d
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	sig_trapped
	.uleb128 0x3e
	.long	.LASF1038
	.byte	0xe
	.value	0xcdd
	.long	0x3943
	.uleb128 0x5
	.long	0x113
	.long	0x4b80
	.uleb128 0x21
	.byte	0
	.uleb128 0x3e
	.long	.LASF1039
	.byte	0xe
	.value	0xcf7
	.long	0x4b8c
	.uleb128 0xd
	.long	0x4b75
	.uleb128 0x3e
	.long	.LASF1040
	.byte	0xe
	.value	0xcf9
	.long	0x4b9d
	.uleb128 0xd
	.long	0x4b75
	.uleb128 0x5
	.long	0x2d
	.long	0x4bad
	.uleb128 0x21
	.byte	0
	.uleb128 0x3e
	.long	.LASF1041
	.byte	0xe
	.value	0xd63
	.long	0x4bb9
	.uleb128 0xd
	.long	0x4ba2
	.uleb128 0x3e
	.long	.LASF1042
	.byte	0xe
	.value	0xd8a
	.long	0x4ba2
	.uleb128 0x3e
	.long	.LASF1043
	.byte	0xe
	.value	0xdd6
	.long	0x4bd6
	.uleb128 0xd
	.long	0x4ba2
	.uleb128 0x5
	.long	0x10d
	.long	0x4be6
	.uleb128 0x21
	.byte	0
	.uleb128 0x25
	.long	.LASF1044
	.byte	0x1f
	.byte	0x1e
	.long	0x4bdb
	.uleb128 0x3e
	.long	.LASF1045
	.byte	0x1f
	.value	0x185
	.long	0x4bdb
	.uleb128 0x3e
	.long	.LASF1046
	.byte	0x1f
	.value	0x2f1
	.long	0x22bf
	.uleb128 0x5
	.long	0x1291
	.long	0x4c14
	.uleb128 0x21
	.byte	0
	.uleb128 0x3e
	.long	.LASF1047
	.byte	0x1f
	.value	0x5be
	.long	0x4c09
	.uleb128 0x25
	.long	.LASF1048
	.byte	0x20
	.byte	0x1a
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1049
	.byte	0x20
	.byte	0x1b
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1050
	.byte	0x20
	.byte	0x34
	.long	0x1271
	.uleb128 0x25
	.long	.LASF1051
	.byte	0x20
	.byte	0x49
	.long	0x1286
	.uleb128 0x25
	.long	.LASF1052
	.byte	0x20
	.byte	0x51
	.long	0x1442
	.uleb128 0x25
	.long	.LASF1053
	.byte	0x20
	.byte	0x53
	.long	0x1442
	.uleb128 0x25
	.long	.LASF1054
	.byte	0x20
	.byte	0x5d
	.long	0x1442
	.uleb128 0x25
	.long	.LASF1055
	.byte	0x20
	.byte	0x92
	.long	0x57
	.uleb128 0x25
	.long	.LASF1056
	.byte	0x20
	.byte	0x95
	.long	0x1448
	.uleb128 0x25
	.long	.LASF1057
	.byte	0x20
	.byte	0x98
	.long	0x113
	.uleb128 0x25
	.long	.LASF1058
	.byte	0x20
	.byte	0xb1
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1059
	.byte	0x20
	.byte	0xf1
	.long	0x113
	.uleb128 0x25
	.long	.LASF1060
	.byte	0x20
	.byte	0xf6
	.long	0x3943
	.uleb128 0x25
	.long	.LASF1061
	.byte	0x20
	.byte	0xf8
	.long	0x140d
	.uleb128 0x3e
	.long	.LASF1062
	.byte	0x20
	.value	0x125
	.long	0x783
	.uleb128 0x3e
	.long	.LASF1063
	.byte	0x20
	.value	0x147
	.long	0x10d
	.uleb128 0x3e
	.long	.LASF1064
	.byte	0x20
	.value	0x1e2
	.long	0x57
	.uleb128 0x25
	.long	.LASF1065
	.byte	0x21
	.byte	0x22
	.long	0x1f9d
	.uleb128 0x25
	.long	.LASF1066
	.byte	0x21
	.byte	0x26
	.long	0x1425
	.uleb128 0x25
	.long	.LASF1067
	.byte	0x21
	.byte	0x2a
	.long	0x1f9d
	.uleb128 0x25
	.long	.LASF1068
	.byte	0x21
	.byte	0x2b
	.long	0x1f9d
	.uleb128 0x25
	.long	.LASF1069
	.byte	0x21
	.byte	0x37
	.long	0x1286
	.uleb128 0x25
	.long	.LASF1070
	.byte	0x21
	.byte	0x38
	.long	0x1286
	.uleb128 0x25
	.long	.LASF1071
	.byte	0x21
	.byte	0x3c
	.long	0x1348
	.uleb128 0x25
	.long	.LASF1072
	.byte	0x21
	.byte	0x3d
	.long	0x1348
	.uleb128 0x25
	.long	.LASF1073
	.byte	0x21
	.byte	0x43
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1074
	.byte	0x21
	.byte	0x55
	.long	0x28e
	.uleb128 0x25
	.long	.LASF1075
	.byte	0x21
	.byte	0x73
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1076
	.byte	0x21
	.byte	0x74
	.long	0x1442
	.uleb128 0x25
	.long	.LASF1077
	.byte	0x21
	.byte	0x80
	.long	0x1425
	.uleb128 0x25
	.long	.LASF1078
	.byte	0x21
	.byte	0x81
	.long	0x4d78
	.uleb128 0xc
	.long	0x1fd1
	.uleb128 0x25
	.long	.LASF1079
	.byte	0x21
	.byte	0x82
	.long	0x1ae
	.uleb128 0x25
	.long	.LASF1080
	.byte	0x21
	.byte	0x84
	.long	0x113
	.uleb128 0x25
	.long	.LASF1081
	.byte	0x21
	.byte	0x87
	.long	0x1448
	.uleb128 0x25
	.long	.LASF1082
	.byte	0x21
	.byte	0x88
	.long	0x3289
	.uleb128 0x25
	.long	.LASF1083
	.byte	0x21
	.byte	0x8b
	.long	0x4db4
	.uleb128 0x8
	.byte	0x8
	.long	0x2294
	.uleb128 0x25
	.long	.LASF1084
	.byte	0x21
	.byte	0x90
	.long	0x12b9
	.uleb128 0x25
	.long	.LASF1085
	.byte	0x21
	.byte	0xa9
	.long	0x1348
	.uleb128 0x25
	.long	.LASF1086
	.byte	0x21
	.byte	0xaa
	.long	0x1348
	.uleb128 0x25
	.long	.LASF1087
	.byte	0x22
	.byte	0x49
	.long	0x57
	.uleb128 0x3e
	.long	.LASF1088
	.byte	0xe
	.value	0xf85
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1089
	.byte	0xe
	.value	0xf86
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1090
	.byte	0xe
	.value	0xf87
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1091
	.byte	0xe
	.value	0xf88
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1092
	.byte	0xe
	.value	0xf89
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1093
	.byte	0xe
	.value	0xf8a
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1094
	.byte	0xe
	.value	0xf8b
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1095
	.byte	0xe
	.value	0xf8c
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1096
	.byte	0xe
	.value	0xf8d
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1097
	.byte	0xe
	.value	0xf8e
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1098
	.byte	0xe
	.value	0xf8f
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1099
	.byte	0xe
	.value	0xf90
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1100
	.byte	0xe
	.value	0xf91
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1101
	.byte	0xe
	.value	0xf92
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1102
	.byte	0xe
	.value	0xf93
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1103
	.byte	0xe
	.value	0xf94
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1104
	.byte	0xe
	.value	0xf95
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1105
	.byte	0xe
	.value	0xf96
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1106
	.byte	0xe
	.value	0xf97
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1107
	.byte	0xe
	.value	0xf98
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1108
	.byte	0xe
	.value	0xf99
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1109
	.byte	0xe
	.value	0xfa0
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1110
	.byte	0xe
	.value	0xfa1
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1111
	.byte	0xe
	.value	0xfa2
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1112
	.byte	0xe
	.value	0xfa3
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1113
	.byte	0xe
	.value	0xfa9
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1114
	.byte	0xe
	.value	0xfaa
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1115
	.byte	0xe
	.value	0xfac
	.long	0x1155
	.uleb128 0x3e
	.long	.LASF1116
	.byte	0xe
	.value	0xfad
	.long	0x1155
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
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
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
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
.LASF631:
	.string	"OP_ESERVENT"
.LASF898:
	.string	"S_vdie_croak_common"
.LASF556:
	.string	"OP_FTSVTX"
.LASF1030:
	.string	"Perl_sv_nosharing"
.LASF122:
	.string	"precomp"
.LASF890:
	.string	"Perl_vmess"
.LASF509:
	.string	"OP_SYSREAD"
.LASF847:
	.string	"Perl_rninstr"
.LASF154:
	.string	"blku_oldretsp"
.LASF526:
	.string	"OP_SHUTDOWN"
.LASF804:
	.string	"repeat_ass_amg"
.LASF772:
	.string	"rshift_ass_amg"
.LASF602:
	.string	"OP_MSGRCV"
.LASF702:
	.string	"si_prev"
.LASF893:
	.string	"message"
.LASF850:
	.string	"table"
.LASF916:
	.string	"tmpenv"
.LASF1014:
	.string	"isdst"
.LASF644:
	.string	"OP_LOCK"
.LASF61:
	.string	"tm_sec"
.LASF649:
	.string	"OP_max"
.LASF1083:
	.string	"PL_top_env"
.LASF43:
	.string	"__saved_mask"
.LASF80:
	.string	"op_next"
.LASF294:
	.string	"xiou_any"
.LASF560:
	.string	"OP_CHDIR"
.LASF146:
	.string	"gp_file"
.LASF474:
	.string	"OP_ENTER"
.LASF899:
	.string	"utf8"
.LASF325:
	.string	"OP_REGCMAYBE"
.LASF151:
	.string	"block"
.LASF455:
	.string	"OP_FLOP"
.LASF493:
	.string	"OP_BINMODE"
.LASF1096:
	.string	"PL_vtbl_isa"
.LASF201:
	.string	"xpvgv"
.LASF228:
	.string	"xio_ifp"
.LASF385:
	.string	"OP_SEQ"
.LASF95:
	.string	"cop_io"
.LASF696:
	.string	"stackinfo"
.LASF774:
	.string	"band_ass_amg"
.LASF781:
	.string	"gt_amg"
.LASF955:
	.string	"hstat"
.LASF966:
	.string	"todo"
.LASF858:
	.string	"next_chars"
.LASF547:
	.string	"OP_FTSOCK"
.LASF195:
	.string	"xhv_keys"
.LASF1000:
	.string	"Perl_init_tm"
.LASF243:
	.string	"xio_flags"
.LASF1059:
	.string	"PL_nomemok"
.LASF623:
	.string	"OP_GSERVENT"
.LASF247:
	.string	"svt_set"
.LASF191:
	.string	"xpvhv"
.LASF806:
	.string	"concat_ass_amg"
.LASF735:
	.string	"want_vtbl_taint"
.LASF833:
	.string	"Perl_delimcpy"
.LASF956:
	.string	"istat"
.LASF848:
	.string	"bigbeg"
.LASF733:
	.string	"want_vtbl_mglob"
.LASF1119:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF514:
	.string	"OP_TELL"
.LASF952:
	.string	"save"
.LASF586:
	.string	"OP_SETPGRP"
.LASF1019:
	.string	"cdev"
.LASF1105:
	.string	"PL_vtbl_pos"
.LASF541:
	.string	"OP_FTROWNED"
.LASF830:
	.string	"Perl_realloc"
.LASF140:
	.string	"gp_hv"
.LASF227:
	.string	"xpvio"
.LASF530:
	.string	"OP_GETPEERNAME"
.LASF384:
	.string	"OP_SGE"
.LASF174:
	.string	"xpviv"
.LASF798:
	.string	"cos_amg"
.LASF938:
	.string	"doexec"
.LASF688:
	.string	"sbu_targ"
.LASF36:
	.string	"overflow_arg_area"
.LASF524:
	.string	"OP_LISTEN"
.LASF382:
	.string	"OP_SGT"
.LASF596:
	.string	"OP_SHMCTL"
.LASF895:
	.string	"next"
.LASF354:
	.string	"OP_DIVIDE"
.LASF960:
	.string	"Perl_wait4pid"
.LASF37:
	.string	"reg_save_area"
.LASF1001:
	.string	"Perl_mini_mktime"
.LASF210:
	.string	"xcv_start"
.LASF13:
	.string	"__off_t"
.LASF137:
	.string	"gp_io"
.LASF141:
	.string	"gp_egv"
.LASF935:
	.string	"pid2"
.LASF923:
	.string	"htovs"
.LASF54:
	.string	"st_size"
.LASF680:
	.string	"sbu_iters"
.LASF399:
	.string	"OP_SRAND"
.LASF1002:
	.string	"yearday"
.LASF709:
	.string	"hek_hash"
.LASF944:
	.string	"oldfd"
.LASF785:
	.string	"ncmp_amg"
.LASF69:
	.string	"tm_isdst"
.LASF93:
	.string	"cop_line"
.LASF209:
	.string	"xcv_stash"
.LASF719:
	.string	"Sigsave_t"
.LASF365:
	.string	"OP_LEFT_SHIFT"
.LASF1023:
	.string	"tdev"
.LASF738:
	.string	"want_vtbl_pos"
.LASF632:
	.string	"OP_GPWNAM"
.LASF973:
	.string	"scriptname"
.LASF1011:
	.string	"hour"
.LASF749:
	.string	"want_vtbl_backref"
.LASF801:
	.string	"log_amg"
.LASF214:
	.string	"xcv_gv"
.LASF495:
	.string	"OP_UNTIE"
.LASF875:
	.string	"Perl_ibcmp"
.LASF396:
	.string	"OP_SIN"
.LASF703:
	.string	"si_next"
.LASF583:
	.string	"OP_KILL"
.LASF171:
	.string	"xpv_cur"
.LASF1004:
	.string	"month"
.LASF451:
	.string	"OP_MAPSTART"
.LASF1045:
	.string	"PL_op_desc"
.LASF1087:
	.string	"PL_use_safe_putenv"
.LASF323:
	.string	"OP_READLINE"
.LASF336:
	.string	"OP_SCHOP"
.LASF165:
	.string	"mg_type"
.LASF569:
	.string	"OP_READLINK"
.LASF96:
	.string	"UNOP"
.LASF460:
	.string	"OP_ANDASSIGN"
.LASF1080:
	.string	"PL_dirty"
.LASF55:
	.string	"st_blksize"
.LASF784:
	.string	"ne_amg"
.LASF170:
	.string	"xpv_pv"
.LASF967:
	.string	"frombase"
.LASF41:
	.string	"__jmpbuf"
.LASF1005:
	.string	"mday"
.LASF1120:
	.string	"opcode"
.LASF1047:
	.string	"PL_opargs"
.LASF462:
	.string	"OP_METHOD"
.LASF339:
	.string	"OP_DEFINED"
.LASF177:
	.string	"xpvmg"
.LASF687:
	.string	"sbu_dstr"
.LASF783:
	.string	"eq_amg"
.LASF51:
	.string	"st_gid"
.LASF879:
	.string	"Perl_savepvn"
.LASF577:
	.string	"OP_CLOSEDIR"
.LASF604:
	.string	"OP_SEMCTL"
.LASF480:
	.string	"OP_LEAVELOOP"
.LASF571:
	.string	"OP_RMDIR"
.LASF900:
	.string	"S_vdie_common"
.LASF510:
	.string	"OP_SYSWRITE"
.LASF292:
	.string	"cv_flags_t"
.LASF145:
	.string	"gp_line"
.LASF641:
	.string	"OP_EGRENT"
.LASF1046:
	.string	"PL_ppaddr"
.LASF679:
	.string	"subst"
.LASF594:
	.string	"OP_SLEEP"
.LASF20:
	.string	"__syscall_slong_t"
.LASF233:
	.string	"xio_page_len"
.LASF338:
	.string	"OP_SCHOMP"
.LASF780:
	.string	"le_amg"
.LASF504:
	.string	"OP_LEAVEWRITE"
.LASF48:
	.string	"st_nlink"
.LASF383:
	.string	"OP_SLE"
.LASF202:
	.string	"xgv_gp"
.LASF859:
	.string	"check_1char_anchor"
.LASF33:
	.string	"__va_list_tag"
.LASF381:
	.string	"OP_SLT"
.LASF437:
	.string	"OP_JOIN"
.LASF164:
	.string	"mg_private"
.LASF1073:
	.string	"PL_Sv"
.LASF337:
	.string	"OP_CHOMP"
.LASF59:
	.string	"st_ctim"
.LASF810:
	.string	"to_av_amg"
.LASF686:
	.string	"sbu_orig"
.LASF430:
	.string	"OP_EXISTS"
.LASF25:
	.string	"__sigset_t"
.LASF188:
	.string	"xav_arylen"
.LASF134:
	.string	"program"
.LASF726:
	.string	"want_vtbl_pack"
.LASF211:
	.string	"xcv_root"
.LASF1041:
	.string	"PL_fold"
.LASF659:
	.string	"old_in_eval"
.LASF270:
	.string	"Sighandler_t"
.LASF163:
	.string	"mg_virtual"
.LASF999:
	.string	"warn_type"
.LASF986:
	.string	"Perl_get_ppaddr"
.LASF479:
	.string	"OP_ENTERLOOP"
.LASF902:
	.string	"olddiehook"
.LASF298:
	.string	"OP_STUB"
.LASF800:
	.string	"exp_amg"
.LASF1051:
	.string	"PL_statusvalue"
.LASF985:
	.string	"Perl_get_opargs"
.LASF807:
	.string	"copy_amg"
.LASF91:
	.string	"cop_seq"
.LASF843:
	.string	"Perl_ninstr"
.LASF489:
	.string	"OP_CLOSE"
.LASF817:
	.string	"max_amg_code"
.LASF386:
	.string	"OP_SNE"
.LASF891:
	.string	"line_mode"
.LASF115:
	.string	"sv_flags"
.LASF773:
	.string	"band_amg"
.LASF593:
	.string	"OP_ALARM"
.LASF374:
	.string	"OP_I_GE"
.LASF755:
	.string	"string_amg"
.LASF725:
	.string	"want_vtbl_sigelem"
.LASF370:
	.string	"OP_I_GT"
.LASF112:
	.string	"broiled"
.LASF238:
	.string	"xio_fmt_gv"
.LASF57:
	.string	"st_atim"
.LASF906:
	.string	"Perl_vcroak"
.LASF981:
	.string	"Perl_get_context"
.LASF494:
	.string	"OP_TIE"
.LASF327:
	.string	"OP_REGCOMP"
.LASF144:
	.string	"gp_flags"
.LASF150:
	.string	"cx_u"
.LASF957:
	.string	"qstat"
.LASF335:
	.string	"OP_CHOP"
.LASF1088:
	.string	"PL_vtbl_sv"
.LASF215:
	.string	"xcv_file"
.LASF136:
	.string	"gp_refcnt"
.LASF670:
	.string	"itervar"
.LASF130:
	.string	"nparens"
.LASF609:
	.string	"OP_LEAVEEVAL"
.LASF272:
	.string	"type"
.LASF1099:
	.string	"PL_vtbl_glob"
.LASF498:
	.string	"OP_DBMCLOSE"
.LASF823:
	.string	"Perl___notused"
.LASF1016:
	.string	"statbuf"
.LASF352:
	.string	"OP_MULTIPLY"
.LASF461:
	.string	"OP_ORASSIGN"
.LASF8:
	.string	"__uid_t"
.LASF527:
	.string	"OP_GSOCKOPT"
.LASF232:
	.string	"xio_page"
.LASF625:
	.string	"OP_SNETENT"
.LASF467:
	.string	"OP_WARN"
.LASF720:
	.string	"PPADDR_t"
.LASF595:
	.string	"OP_SHMGET"
.LASF1021:
	.string	"odev"
.LASF403:
	.string	"OP_INT"
.LASF1003:
	.string	"secs"
.LASF983:
	.string	"Perl_get_op_descs"
.LASF617:
	.string	"OP_GNETENT"
.LASF929:
	.string	"Perl_my_popen_list"
.LASF584:
	.string	"OP_GETPPID"
.LASF750:
	.string	"want_vtbl_utf8"
.LASF860:
	.string	"top2"
.LASF407:
	.string	"OP_LENGTH"
.LASF328:
	.string	"OP_MATCH"
.LASF217:
	.string	"xcv_padlist"
.LASF552:
	.string	"OP_FTPIPE"
.LASF980:
	.string	"Perl_set_context"
.LASF31:
	.string	"__gnuc_va_list"
.LASF928:
	.string	"Perl_my_swabn"
.LASF743:
	.string	"want_vtbl_regexp"
.LASF984:
	.string	"Perl_get_no_modify"
.LASF945:
	.string	"newfd"
.LASF40:
	.string	"__jmp_buf_tag"
.LASF678:
	.string	"blku_loop"
.LASF723:
	.string	"want_vtbl_envelem"
.LASF961:
	.string	"statusp"
.LASF754:
	.string	"nomethod_amg"
.LASF391:
	.string	"OP_NEGATE"
.LASF997:
	.string	"direction"
.LASF135:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF448:
	.string	"OP_REVERSE"
.LASF630:
	.string	"OP_EPROTOENT"
.LASF406:
	.string	"OP_ABS"
.LASF269:
	.string	"PerlIO"
.LASF689:
	.string	"sbu_s"
.LASF18:
	.string	"__blkcnt_t"
.LASF620:
	.string	"OP_GPROTOENT"
.LASF1033:
	.string	"Perl_parse_unicode_opts"
.LASF420:
	.string	"OP_LC"
.LASF715:
	.string	"je_ret"
.LASF718:
	.string	"float"
.LASF671:
	.string	"itersave"
.LASF113:
	.string	"sv_any"
.LASF1048:
	.string	"PL_diehook"
.LASF441:
	.string	"OP_ANONHASH"
.LASF372:
	.string	"OP_I_LE"
.LASF640:
	.string	"OP_SGRENT"
.LASF658:
	.string	"block_eval"
.LASF368:
	.string	"OP_I_LT"
.LASF787:
	.string	"slt_amg"
.LASF459:
	.string	"OP_COND_EXPR"
.LASF553:
	.string	"OP_FTLINK"
.LASF133:
	.string	"reganch"
.LASF262:
	.string	"stashes"
.LASF487:
	.string	"OP_EXIT"
.LASF1026:
	.string	"pathlen"
.LASF119:
	.string	"endp"
.LASF359:
	.string	"OP_ADD"
.LASF603:
	.string	"OP_SEMGET"
.LASF330:
	.string	"OP_SUBST"
.LASF453:
	.string	"OP_RANGE"
.LASF873:
	.string	"cant_find"
.LASF299:
	.string	"OP_SCALAR"
.LASF714:
	.string	"je_prev"
.LASF1049:
	.string	"PL_warnhook"
.LASF71:
	.string	"tm_zone"
.LASF724:
	.string	"want_vtbl_sig"
.LASF626:
	.string	"OP_SPROTOENT"
.LASF601:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF1095:
	.string	"PL_vtbl_dbline"
.LASF1113:
	.string	"PL_vtbl_amagic"
.LASF426:
	.string	"OP_EACH"
.LASF747:
	.string	"want_vtbl_regdata"
.LASF598:
	.string	"OP_SHMWRITE"
.LASF427:
	.string	"OP_VALUES"
.LASF449:
	.string	"OP_GREPSTART"
.LASF24:
	.string	"size_t"
.LASF316:
	.string	"OP_PROTOTYPE"
.LASF855:
	.string	"littlestr"
.LASF870:
	.string	"previous"
.LASF824:
	.string	"Perl_safesyscalloc"
.LASF839:
	.string	"tolen"
.LASF730:
	.string	"want_vtbl_isaelem"
.LASF378:
	.string	"OP_I_NE"
.LASF321:
	.string	"OP_BACKTICK"
.LASF77:
	.string	"d_name"
.LASF1094:
	.string	"PL_vtbl_packelem"
.LASF570:
	.string	"OP_MKDIR"
.LASF289:
	.string	"SVt_PVGV"
.LASF930:
	.string	"mode"
.LASF894:
	.string	"msglen"
.LASF677:
	.string	"blku_eval"
.LASF126:
	.string	"sublen"
.LASF1060:
	.string	"PL_origenviron"
.LASF475:
	.string	"OP_LEAVE"
.LASF184:
	.string	"xav_fill"
.LASF561:
	.string	"OP_CHOWN"
.LASF587:
	.string	"OP_GETPRIORITY"
.LASF668:
	.string	"next_op"
.LASF932:
	.string	"that"
.LASF535:
	.string	"OP_FTREXEC"
.LASF162:
	.string	"mg_moremagic"
.LASF566:
	.string	"OP_RENAME"
.LASF691:
	.string	"sbu_strend"
.LASF92:
	.string	"cop_arybase"
.LASF1071:
	.string	"PL_markstack_ptr"
.LASF38:
	.string	"va_list"
.LASF835:
	.string	"from"
.LASF409:
	.string	"OP_VEC"
.LASF700:
	.string	"si_cxmax"
.LASF502:
	.string	"OP_READ"
.LASF470:
	.string	"OP_LINESEQ"
.LASF168:
	.string	"mg_ptr"
.LASF1084:
	.string	"PL_errors"
.LASF496:
	.string	"OP_TIED"
.LASF347:
	.string	"OP_POSTINC"
.LASF675:
	.string	"itermax"
.LASF434:
	.string	"OP_UNPACK"
.LASF591:
	.string	"OP_LOCALTIME"
.LASF241:
	.string	"xio_subprocess"
.LASF993:
	.string	"Perl_report_evil_fh"
.LASF1040:
	.string	"PL_no_mem"
.LASF744:
	.string	"want_vtbl_collxfrm"
.LASF910:
	.string	"Perl_warn"
.LASF550:
	.string	"OP_FTFILE"
.LASF729:
	.string	"want_vtbl_isa"
.LASF124:
	.string	"subbeg"
.LASF118:
	.string	"startp"
.LASF1013:
	.string	"yday"
.LASF1043:
	.string	"PL_freq"
.LASF811:
	.string	"to_hv_amg"
.LASF841:
	.string	"little"
.LASF637:
	.string	"OP_GGRNAM"
.LASF741:
	.string	"want_vtbl_uvar"
.LASF977:
	.string	"xfailed"
.LASF1117:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF361:
	.string	"OP_SUBTRACT"
.LASF537:
	.string	"OP_FTEWRITE"
.LASF75:
	.string	"d_reclen"
.LASF812:
	.string	"to_gv_amg"
.LASF563:
	.string	"OP_UNLINK"
.LASF117:
	.string	"regexp"
.LASF646:
	.string	"OP_SETSTATE"
.LASF483:
	.string	"OP_NEXT"
.LASF518:
	.string	"OP_IOCTL"
.LASF1057:
	.string	"PL_tainting"
.LASF1115:
	.string	"PL_vtbl_backref"
.LASF968:
	.string	"Perl_same_dirent"
.LASF116:
	.string	"REGEXP"
.LASF114:
	.string	"sv_refcnt"
.LASF478:
	.string	"OP_ITER"
.LASF555:
	.string	"OP_FTSGID"
.LASF310:
	.string	"OP_PUSHRE"
.LASF308:
	.string	"OP_PADHV"
.LASF578:
	.string	"OP_FORK"
.LASF856:
	.string	"littlelen"
.LASF248:
	.string	"svt_len"
.LASF1029:
	.string	"protocol"
.LASF281:
	.string	"SVt_PVIV"
.LASF273:
	.string	"next_off"
.LASF472:
	.string	"OP_DBSTATE"
.LASF86:
	.string	"op_flags"
.LASF1092:
	.string	"PL_vtbl_sigelem"
.LASF60:
	.string	"__unused"
.LASF1012:
	.string	"wday"
.LASF94:
	.string	"cop_warnings"
.LASF705:
	.string	"PERL_SI"
.LASF121:
	.string	"substrs"
.LASF1121:
	.string	"sig_trap"
.LASF633:
	.string	"OP_GPWUID"
.LASF1038:
	.string	"environ"
.LASF727:
	.string	"want_vtbl_packelem"
.LASF959:
	.string	"saved_errno"
.LASF341:
	.string	"OP_STUDY"
.LASF408:
	.string	"OP_SUBSTR"
.LASF156:
	.string	"blku_oldscopesp"
.LASF286:
	.string	"SVt_PVAV"
.LASF1063:
	.string	"PL_bufend"
.LASF614:
	.string	"OP_GHOSTENT"
.LASF699:
	.string	"si_cxix"
.LASF192:
	.string	"xhv_array"
.LASF842:
	.string	"first"
.LASF616:
	.string	"OP_GNBYADDR"
.LASF768:
	.string	"pow_ass_amg"
.LASF822:
	.string	"where"
.LASF125:
	.string	"offsets"
.LASF791:
	.string	"seq_amg"
.LASF442:
	.string	"OP_SPLICE"
.LASF1065:
	.string	"PL_stack_sp"
.LASF387:
	.string	"OP_SCMP"
.LASF574:
	.string	"OP_TELLDIR"
.LASF239:
	.string	"xio_bottom_name"
.LASF388:
	.string	"OP_BIT_AND"
.LASF284:
	.string	"SVt_PVBM"
.LASF880:
	.string	"Perl_savesharedpv"
.LASF12:
	.string	"__nlink_t"
.LASF751:
	.string	"fallback_amg"
.LASF1062:
	.string	"PL_sv_undef"
.LASF47:
	.string	"st_ino"
.LASF49:
	.string	"st_mode"
.LASF160:
	.string	"MAGIC"
.LASF1101:
	.string	"PL_vtbl_nkeys"
.LASF1037:
	.string	"sig_trapped"
.LASF88:
	.string	"cop_label"
.LASF722:
	.string	"want_vtbl_env"
.LASF731:
	.string	"want_vtbl_arylen"
.LASF166:
	.string	"mg_flags"
.LASF663:
	.string	"cur_text"
.LASF181:
	.string	"XPVAV"
.LASF736:
	.string	"want_vtbl_substr"
.LASF288:
	.string	"SVt_PVCV"
.LASF344:
	.string	"OP_I_PREINC"
.LASF908:
	.string	"Perl_vwarn"
.LASF129:
	.string	"prelen"
.LASF707:
	.string	"hent_hek"
.LASF827:
	.string	"nbytes"
.LASF450:
	.string	"OP_GREPWHILE"
.LASF484:
	.string	"OP_REDO"
.LASF83:
	.string	"op_targ"
.LASF221:
	.string	"XPVBM"
.LASF989:
	.string	"env_trans"
.LASF924:
	.string	"value"
.LASF343:
	.string	"OP_PREINC"
.LASF864:
	.string	"Perl_screaminstr"
.LASF872:
	.string	"found"
.LASF240:
	.string	"xio_bottom_gv"
.LASF74:
	.string	"d_off"
.LASF340:
	.string	"OP_UNDEF"
.LASF914:
	.string	"nlen"
.LASF393:
	.string	"OP_NOT"
.LASF491:
	.string	"OP_FILENO"
.LASF836:
	.string	"fromend"
.LASF155:
	.string	"blku_oldmarksp"
.LASF456:
	.string	"OP_AND"
.LASF608:
	.string	"OP_ENTEREVAL"
.LASF851:
	.string	"rarest"
.LASF1044:
	.string	"PL_op_name"
.LASF131:
	.string	"lastparen"
.LASF1056:
	.string	"PL_fdpid"
.LASF776:
	.string	"bor_ass_amg"
.LASF207:
	.string	"XPVCV"
.LASF673:
	.string	"iterary"
.LASF919:
	.string	"Perl_my_swap"
.LASF390:
	.string	"OP_BIT_OR"
.LASF525:
	.string	"OP_ACCEPT"
.LASF866:
	.string	"start_shift"
.LASF497:
	.string	"OP_DBMOPEN"
.LASF1085:
	.string	"PL_screamfirst"
.LASF642:
	.string	"OP_GETLOGIN"
.LASF19:
	.string	"__ssize_t"
.LASF275:
	.string	"reg_data"
.LASF237:
	.string	"xio_fmt_name"
.LASF708:
	.string	"hent_val"
.LASF473:
	.string	"OP_UNSTACK"
.LASF837:
	.string	"delim"
.LASF716:
	.string	"je_mustcatch"
.LASF225:
	.string	"xbm_rare"
.LASF178:
	.string	"xnv_nv"
.LASF32:
	.string	"timespec"
.LASF706:
	.string	"hent_next"
.LASF515:
	.string	"OP_SEEK"
.LASF771:
	.string	"rshift_amg"
.LASF250:
	.string	"svt_free"
.LASF108:
	.string	"op_pmdynflags"
.LASF814:
	.string	"iter_amg"
.LASF26:
	.string	"__val"
.LASF585:
	.string	"OP_GETPGRP"
.LASF290:
	.string	"SVt_PVFM"
.LASF445:
	.string	"OP_SHIFT"
.LASF1020:
	.string	"cino"
.LASF471:
	.string	"OP_NEXTSTATE"
.LASF261:
	.string	"clone_params"
.LASF1104:
	.string	"PL_vtbl_vec"
.LASF818:
	.string	"__sighandler_t"
.LASF949:
	.string	"Perl_rsignal_state"
.LASF991:
	.string	"vtbl_id"
.LASF639:
	.string	"OP_GGRENT"
.LASF1022:
	.string	"oino"
.LASF778:
	.string	"bxor_ass_amg"
.LASF380:
	.string	"OP_I_NCMP"
.LASF988:
	.string	"env_elem"
.LASF358:
	.string	"OP_REPEAT"
.LASF418:
	.string	"OP_LCFIRST"
.LASF878:
	.string	"newaddr"
.LASF557:
	.string	"OP_FTTTY"
.LASF1053:
	.string	"PL_argvgv"
.LASF363:
	.string	"OP_CONCAT"
.LASF50:
	.string	"st_uid"
.LASF690:
	.string	"sbu_m"
.LASF218:
	.string	"xcv_outside"
.LASF295:
	.string	"PADLIST"
.LASF259:
	.string	"any_dxptr"
.LASF844:
	.string	"bigend"
.LASF1070:
	.string	"PL_tmps_floor"
.LASF446:
	.string	"OP_UNSHIFT"
.LASF206:
	.string	"xgv_flags"
.LASF161:
	.string	"magic"
.LASF589:
	.string	"OP_TIME"
.LASF538:
	.string	"OP_FTEEXEC"
.LASF1007:
	.string	"jday"
.LASF635:
	.string	"OP_SPWENT"
.LASF920:
	.string	"result"
.LASF540:
	.string	"OP_FTEOWNED"
.LASF355:
	.string	"OP_I_DIVIDE"
.LASF376:
	.string	"OP_I_EQ"
.LASF287:
	.string	"SVt_PVHV"
.LASF1090:
	.string	"PL_vtbl_envelem"
.LASF276:
	.string	"SVt_NULL"
.LASF1064:
	.string	"PL_sig_pending"
.LASF62:
	.string	"tm_min"
.LASF737:
	.string	"want_vtbl_vec"
.LASF934:
	.string	"errkid"
.LASF606:
	.string	"OP_REQUIRE"
.LASF245:
	.string	"mgvtbl"
.LASF322:
	.string	"OP_GLOB"
.LASF739:
	.string	"want_vtbl_bm"
.LASF575:
	.string	"OP_SEEKDIR"
.LASF200:
	.string	"XPVGV"
.LASF505:
	.string	"OP_PRTF"
.LASF693:
	.string	"sbu_rx"
.LASF244:
	.string	"MGVTBL"
.LASF615:
	.string	"OP_GNBYNAME"
.LASF695:
	.string	"cx_subst"
.LASF35:
	.string	"fp_offset"
.LASF694:
	.string	"cx_blk"
.LASF291:
	.string	"SVt_PVIO"
.LASF16:
	.string	"__time_t"
.LASF34:
	.string	"gp_offset"
.LASF401:
	.string	"OP_LOG"
.LASF127:
	.string	"refcnt"
.LASF348:
	.string	"OP_I_POSTINC"
.LASF958:
	.string	"close_failed"
.LASF813:
	.string	"to_cv_amg"
.LASF685:
	.string	"sbu_rxtainted"
.LASF567:
	.string	"OP_LINK"
.LASF941:
	.string	"Perl_atfork_unlock"
.LASF68:
	.string	"tm_yday"
.LASF782:
	.string	"ge_amg"
.LASF190:
	.string	"XPVHV"
.LASF466:
	.string	"OP_CALLER"
.LASF15:
	.string	"sizetype"
.LASF375:
	.string	"OP_EQ"
.LASF302:
	.string	"OP_CONST"
.LASF104:
	.string	"op_pmnext"
.LASF185:
	.string	"xav_max"
.LASF523:
	.string	"OP_CONNECT"
.LASF212:
	.string	"xcv_xsub"
.LASF590:
	.string	"OP_TMS"
.LASF655:
	.string	"hasargs"
.LASF465:
	.string	"OP_LEAVESUBLV"
.LASF529:
	.string	"OP_GETSOCKNAME"
.LASF87:
	.string	"op_private"
.LASF305:
	.string	"OP_GELEM"
.LASF415:
	.string	"OP_CHR"
.LASF796:
	.string	"dec_amg"
.LASF253:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF964:
	.string	"spid"
.LASF4:
	.string	"signed char"
.LASF1067:
	.string	"PL_stack_base"
.LASF364:
	.string	"OP_STRINGIFY"
.LASF582:
	.string	"OP_EXEC"
.LASF362:
	.string	"OP_I_SUBTRACT"
.LASF226:
	.string	"XPVIO"
.LASF849:
	.string	"Perl_fbm_compile"
.LASF17:
	.string	"__blksize_t"
.LASF173:
	.string	"XPVIV"
.LASF187:
	.string	"xav_alloc"
.LASF907:
	.string	"Perl_croak"
.LASF1008:
	.string	"odd_cent"
.LASF303:
	.string	"OP_GVSV"
.LASF683:
	.string	"sbu_oldsave"
.LASF194:
	.string	"xhv_max"
.LASF1009:
	.string	"odd_year"
.LASF44:
	.string	"sigjmp_buf"
.LASF995:
	.string	"pars"
.LASF128:
	.string	"minlen"
.LASF936:
	.string	"status"
.LASF334:
	.string	"OP_AASSIGN"
.LASF825:
	.string	"count"
.LASF998:
	.string	"vile"
.LASF508:
	.string	"OP_SYSSEEK"
.LASF180:
	.string	"xmg_stash"
.LASF605:
	.string	"OP_SEMOP"
.LASF682:
	.string	"sbu_rflags"
.LASF901:
	.string	"stash"
.LASF1079:
	.string	"PL_in_eval"
.LASF120:
	.string	"regstclass"
.LASF373:
	.string	"OP_GE"
.LASF197:
	.string	"xhv_eiter"
.LASF439:
	.string	"OP_LSLICE"
.LASF67:
	.string	"tm_wday"
.LASF503:
	.string	"OP_ENTERWRITE"
.LASF369:
	.string	"OP_GT"
.LASF304:
	.string	"OP_GV"
.LASF882:
	.string	"Perl_form"
.LASF531:
	.string	"OP_LSTAT"
.LASF500:
	.string	"OP_SELECT"
.LASF979:
	.string	"seen_dot"
.LASF76:
	.string	"d_type"
.LASF285:
	.string	"SVt_PVLV"
.LASF274:
	.string	"reg_substr_data"
.LASF788:
	.string	"sle_amg"
.LASF656:
	.string	"lval"
.LASF652:
	.string	"savearray"
.LASF672:
	.string	"iterlval"
.LASF1116:
	.string	"PL_vtbl_utf8"
.LASF757:
	.string	"add_amg"
.LASF301:
	.string	"OP_WANTARRAY"
.LASF1068:
	.string	"PL_stack_max"
.LASF740:
	.string	"want_vtbl_fm"
.LASF748:
	.string	"want_vtbl_regdatum"
.LASF931:
	.string	"This"
.LASF366:
	.string	"OP_RIGHT_SHIFT"
.LASF885:
	.string	"Perl_vform"
.LASF621:
	.string	"OP_GSBYNAME"
.LASF159:
	.string	"blk_u"
.LASF283:
	.string	"SVt_PVMG"
.LASF186:
	.string	"xof_off"
.LASF588:
	.string	"OP_SETPRIORITY"
.LASF1072:
	.string	"PL_markstack_max"
.LASF760:
	.string	"subtr_ass_amg"
.LASF862:
	.string	"oldlittle"
.LASF828:
	.string	"Perl_calloc"
.LASF638:
	.string	"OP_GGRGID"
.LASF204:
	.string	"xgv_namelen"
.LASF101:
	.string	"op_last"
.LASF307:
	.string	"OP_PADAV"
.LASF267:
	.string	"__dirstream"
.LASF435:
	.string	"OP_PACK"
.LASF256:
	.string	"any_long"
.LASF994:
	.string	"func"
.LASF488:
	.string	"OP_OPEN"
.LASF1069:
	.string	"PL_tmps_ix"
.LASF85:
	.string	"op_seq"
.LASF793:
	.string	"not_amg"
.LASF889:
	.string	"new_cop"
.LASF619:
	.string	"OP_GPBYNUMBER"
.LASF282:
	.string	"SVt_PVNV"
.LASF99:
	.string	"PMOP"
.LASF422:
	.string	"OP_RV2AV"
.LASF506:
	.string	"OP_PRINT"
.LASF224:
	.string	"xbm_previous"
.LASF925:
	.string	"htovl"
.LASF65:
	.string	"tm_mon"
.LASF511:
	.string	"OP_SEND"
.LASF549:
	.string	"OP_FTBLK"
.LASF132:
	.string	"lastcloseparen"
.LASF176:
	.string	"XPVMG"
.LASF752:
	.string	"abs_amg"
.LASF97:
	.string	"unop"
.LASF562:
	.string	"OP_CHROOT"
.LASF1066:
	.string	"PL_op"
.LASF242:
	.string	"xio_type"
.LASF918:
	.string	"Perl_setenv_getix"
.LASF992:
	.string	"Perl_my_fflush_all"
.LASF536:
	.string	"OP_FTEREAD"
.LASF868:
	.string	"old_posp"
.LASF6:
	.string	"long int"
.LASF249:
	.string	"svt_clear"
.LASF1098:
	.string	"PL_vtbl_arylen"
.LASF229:
	.string	"xio_ofp"
.LASF205:
	.string	"xgv_stash"
.LASF405:
	.string	"OP_OCT"
.LASF1028:
	.string	"family"
.LASF660:
	.string	"old_op_type"
.LASF360:
	.string	"OP_I_ADD"
.LASF42:
	.string	"__mask_was_saved"
.LASF66:
	.string	"tm_year"
.LASF216:
	.string	"xcv_depth"
.LASF1024:
	.string	"tino"
.LASF1025:
	.string	"namelen"
.LASF143:
	.string	"gp_cvgen"
.LASF1027:
	.string	"Perl_my_socketpair"
.LASF196:
	.string	"xhv_riter"
.LASF158:
	.string	"blku_gimme"
.LASF665:
	.string	"label"
.LASF953:
	.string	"Perl_rsignal_restore"
.LASF314:
	.string	"OP_RV2CV"
.LASF148:
	.string	"context"
.LASF651:
	.string	"dfoutgv"
.LASF946:
	.string	"Perl_rsignal"
.LASF786:
	.string	"scmp_amg"
.LASF548:
	.string	"OP_FTCHR"
.LASF869:
	.string	"last"
.LASF915:
	.string	"vlen"
.LASF447:
	.string	"OP_SORT"
.LASF223:
	.string	"xbm_useful"
.LASF371:
	.string	"OP_LE"
.LASF14:
	.string	"__pid_t"
.LASF622:
	.string	"OP_GSBYPORT"
.LASF103:
	.string	"op_pmreplstart"
.LASF648:
	.string	"OP_CUSTOM"
.LASF367:
	.string	"OP_LT"
.LASF389:
	.string	"OP_BIT_XOR"
.LASF468:
	.string	"OP_DIE"
.LASF331:
	.string	"OP_SUBSTCONT"
.LASF1091:
	.string	"PL_vtbl_sig"
.LASF943:
	.string	"dup2"
.LASF277:
	.string	"SVt_IV"
.LASF353:
	.string	"OP_I_MULTIPLY"
.LASF271:
	.string	"regnode"
.LASF940:
	.string	"Perl_atfork_lock"
.LASF761:
	.string	"mult_amg"
.LASF397:
	.string	"OP_COS"
.LASF81:
	.string	"op_sibling"
.LASF230:
	.string	"xio_dirpu"
.LASF1086:
	.string	"PL_screamnext"
.LASF255:
	.string	"any_iv"
.LASF424:
	.string	"OP_AELEM"
.LASF887:
	.string	"S_mess_alloc"
.LASF1075:
	.string	"PL_rs"
.LASF198:
	.string	"xhv_pmroot"
.LASF770:
	.string	"lshift_ass_amg"
.LASF394:
	.string	"OP_COMPLEMENT"
.LASF469:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF100:
	.string	"pmop"
.LASF546:
	.string	"OP_FTCTIME"
.LASF452:
	.string	"OP_MAPWHILE"
.LASF867:
	.string	"end_shift"
.LASF544:
	.string	"OP_FTMTIME"
.LASF857:
	.string	"multiline"
.LASF1035:
	.string	"Perl_seed"
.LASF969:
	.string	"tmpstatbuf1"
.LASF970:
	.string	"tmpstatbuf2"
.LASF834:
	.string	"toend"
.LASF436:
	.string	"OP_SPLIT"
.LASF684:
	.string	"sbu_once"
.LASF392:
	.string	"OP_I_NEGATE"
.LASF573:
	.string	"OP_READDIR"
.LASF815:
	.string	"int_amg"
.LASF110:
	.string	"PerlInterpreter"
.LASF922:
	.string	"Perl_my_ntohl"
.LASF874:
	.string	"check_tail"
.LASF756:
	.string	"numer_amg"
.LASF927:
	.string	"vtohl"
.LASF765:
	.string	"modulo_amg"
.LASF1102:
	.string	"PL_vtbl_taint"
.LASF926:
	.string	"vtohs"
.LASF377:
	.string	"OP_NE"
.LASF802:
	.string	"sqrt_amg"
.LASF805:
	.string	"concat_amg"
.LASF613:
	.string	"OP_GHBYADDR"
.LASF1100:
	.string	"PL_vtbl_mglob"
.LASF758:
	.string	"add_ass_amg"
.LASF21:
	.string	"char"
.LASF942:
	.string	"Perl_my_fork"
.LASF458:
	.string	"OP_XOR"
.LASF533:
	.string	"OP_FTRREAD"
.LASF653:
	.string	"argarray"
.LASF777:
	.string	"bxor_amg"
.LASF820:
	.string	"Perl_safesysrealloc"
.LASF235:
	.string	"xio_top_name"
.LASF581:
	.string	"OP_SYSTEM"
.LASF1076:
	.string	"PL_last_in_gv"
.LASF169:
	.string	"mg_len"
.LASF507:
	.string	"OP_SYSOPEN"
.LASF293:
	.string	"xiou_dirp"
.LASF933:
	.string	"did_pipes"
.LASF203:
	.string	"xgv_name"
.LASF324:
	.string	"OP_RCATLINE"
.LASF845:
	.string	"lend"
.LASF457:
	.string	"OP_OR"
.LASF349:
	.string	"OP_POSTDEC"
.LASF764:
	.string	"div_ass_amg"
.LASF650:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF517:
	.string	"OP_FCNTL"
.LASF1093:
	.string	"PL_vtbl_pack"
.LASF1108:
	.string	"PL_vtbl_uvar"
.LASF913:
	.string	"Perl_my_setenv"
.LASF976:
	.string	"xfound"
.LASF542:
	.string	"OP_FTZERO"
.LASF311:
	.string	"OP_RV2GV"
.LASF438:
	.string	"OP_LIST"
.LASF481:
	.string	"OP_RETURN"
.LASF231:
	.string	"xio_lines"
.LASF877:
	.string	"Perl_savepv"
.LASF539:
	.string	"OP_FTIS"
.LASF698:
	.string	"si_cxstack"
.LASF297:
	.string	"OP_NULL"
.LASF172:
	.string	"xpv_len"
.LASF1036:
	.string	"Perl_get_hash_seed"
.LASF1074:
	.string	"PL_statbuf"
.LASF962:
	.string	"finish"
.LASF84:
	.string	"op_type"
.LASF431:
	.string	"OP_RV2HV"
.LASF63:
	.string	"tm_hour"
.LASF1110:
	.string	"PL_vtbl_regexp"
.LASF79:
	.string	"STRLEN"
.LASF1039:
	.string	"PL_no_modify"
.LASF554:
	.string	"OP_FTSUID"
.LASF329:
	.string	"OP_QR"
.LASF413:
	.string	"OP_FORMLINE"
.LASF661:
	.string	"old_namesv"
.LASF580:
	.string	"OP_WAITPID"
.LASF278:
	.string	"SVt_NV"
.LASF410:
	.string	"OP_INDEX"
.LASF912:
	.string	"Perl_vwarner"
.LASF398:
	.string	"OP_RAND"
.LASF411:
	.string	"OP_RINDEX"
.LASF711:
	.string	"hek_key"
.LASF628:
	.string	"OP_EHOSTENT"
.LASF357:
	.string	"OP_I_MODULO"
.LASF1015:
	.string	"Perl_getcwd_sv"
.LASF816:
	.string	"DESTROY_amg"
.LASF821:
	.string	"size"
.LASF64:
	.string	"tm_mday"
.LASF1078:
	.string	"PL_curcop"
.LASF52:
	.string	"__pad0"
.LASF264:
	.string	"proto_perl"
.LASF662:
	.string	"old_eval_root"
.LASF433:
	.string	"OP_HSLICE"
.LASF356:
	.string	"OP_MODULO"
.LASF911:
	.string	"Perl_warner"
.LASF1103:
	.string	"PL_vtbl_substr"
.LASF854:
	.string	"Perl_fbm_instr"
.LASF597:
	.string	"OP_SHMREAD"
.LASF551:
	.string	"OP_FTDIR"
.LASF826:
	.string	"Perl_malloc"
.LASF947:
	.string	"signo"
.LASF939:
	.string	"tmpgv"
.LASF627:
	.string	"OP_SSERVENT"
.LASF797:
	.string	"atan2_amg"
.LASF296:
	.string	"PADOFFSET"
.LASF1018:
	.string	"orig_cino"
.LASF106:
	.string	"op_pmflags"
.LASF766:
	.string	"modulo_ass_amg"
.LASF676:
	.string	"blku_sub"
.LASF111:
	.string	"interpreter"
.LASF987:
	.string	"Perl_getenv_len"
.LASF157:
	.string	"blku_oldpm"
.LASF790:
	.string	"sge_amg"
.LASF819:
	.string	"Perl_safesysmalloc"
.LASF98:
	.string	"op_first"
.LASF78:
	.string	"double"
.LASF974:
	.string	"dosearch"
.LASF72:
	.string	"dirent"
.LASF107:
	.string	"op_pmpermflags"
.LASF746:
	.string	"want_vtbl_amagicelem"
.LASF53:
	.string	"st_rdev"
.LASF917:
	.string	"new_env"
.LASF46:
	.string	"st_dev"
.LASF23:
	.string	"ssize_t"
.LASF82:
	.string	"op_ppaddr"
.LASF975:
	.string	"search_ext"
.LASF645:
	.string	"OP_THREADSV"
.LASF794:
	.string	"compl_amg"
.LASF102:
	.string	"op_pmreplroot"
.LASF254:
	.string	"any_i32"
.LASF795:
	.string	"inc_amg"
.LASF963:
	.string	"Perl_pidgone"
.LASF808:
	.string	"neg_amg"
.LASF1010:
	.string	"Perl_my_strftime"
.LASF840:
	.string	"Perl_instr"
.LASF280:
	.string	"SVt_PV"
.LASF734:
	.string	"want_vtbl_nkeys"
.LASF90:
	.string	"cop_filegv"
.LASF257:
	.string	"any_bool"
.LASF443:
	.string	"OP_PUSH"
.LASF419:
	.string	"OP_UC"
.LASF220:
	.string	"xcv_outside_seq"
.LASF721:
	.string	"want_vtbl_sv"
.LASF346:
	.string	"OP_I_PREDEC"
.LASF123:
	.string	"data"
.LASF522:
	.string	"OP_BIND"
.LASF629:
	.string	"OP_ENETENT"
.LASF576:
	.string	"OP_REWINDDIR"
.LASF701:
	.string	"si_type"
.LASF183:
	.string	"xav_array"
.LASF279:
	.string	"SVt_RV"
.LASF1050:
	.string	"PL_dowarn"
.LASF260:
	.string	"CLONE_PARAMS"
.LASF476:
	.string	"OP_SCOPE"
.LASF612:
	.string	"OP_GHBYNAME"
.LASF345:
	.string	"OP_PREDEC"
.LASF666:
	.string	"resetsp"
.LASF147:
	.string	"PERL_CONTEXT"
.LASF861:
	.string	"check_end"
.LASF948:
	.string	"handler"
.LASF193:
	.string	"xhv_fill"
.LASF965:
	.string	"Perl_repeatcpy"
.LASF175:
	.string	"xiv_iv"
.LASF990:
	.string	"Perl_get_vtbl"
.LASF831:
	.string	"Perl_safesysfree"
.LASF152:
	.string	"blku_oldsp"
.LASF769:
	.string	"lshift_amg"
.LASF950:
	.string	"oldsig"
.LASF579:
	.string	"OP_WAIT"
.LASF485:
	.string	"OP_DUMP"
.LASF803:
	.string	"repeat_amg"
.LASF897:
	.string	"serr"
.LASF9:
	.string	"__gid_t"
.LASF333:
	.string	"OP_SASSIGN"
.LASF876:
	.string	"Perl_ibcmp_locale"
.LASF762:
	.string	"mult_ass_amg"
.LASF667:
	.string	"redo_op"
.LASF423:
	.string	"OP_AELEMFAST"
.LASF710:
	.string	"hek_len"
.LASF417:
	.string	"OP_UCFIRST"
.LASF568:
	.string	"OP_SYMLINK"
.LASF402:
	.string	"OP_SQRT"
.LASF978:
	.string	"tmpbuf"
.LASF832:
	.string	"Perl_mfree"
.LASF600:
	.string	"OP_MSGCTL"
.LASF27:
	.string	"tv_sec"
.LASF846:
	.string	"littleend"
.LASF543:
	.string	"OP_FTSIZE"
.LASF29:
	.string	"long long unsigned int"
.LASF871:
	.string	"stop_pos"
.LASF22:
	.string	"pid_t"
.LASF779:
	.string	"lt_amg"
.LASF513:
	.string	"OP_EOF"
.LASF669:
	.string	"last_op"
.LASF888:
	.string	"S_closest_cop"
.LASF559:
	.string	"OP_FTBINARY"
.LASF532:
	.string	"OP_STAT"
.LASF712:
	.string	"jmpenv"
.LASF432:
	.string	"OP_HELEM"
.LASF56:
	.string	"st_blocks"
.LASF1052:
	.string	"PL_stderrgv"
.LASF717:
	.string	"JMPENV"
.LASF732:
	.string	"want_vtbl_glob"
.LASF309:
	.string	"OP_PADANY"
.LASF313:
	.string	"OP_AV2ARYLEN"
.LASF519:
	.string	"OP_FLOCK"
.LASF742:
	.string	"want_vtbl_defelem"
.LASF414:
	.string	"OP_ORD"
.LASF252:
	.string	"svt_dup"
.LASF1058:
	.string	"PL_mess_sv"
.LASF704:
	.string	"si_markoff"
.LASF70:
	.string	"tm_gmtoff"
.LASF300:
	.string	"OP_PUSHMARK"
.LASF905:
	.string	"Perl_die"
.LASF954:
	.string	"Perl_my_pclose"
.LASF607:
	.string	"OP_DOFILE"
.LASF1017:
	.string	"orig_cdev"
.LASF236:
	.string	"xio_top_gv"
.LASF763:
	.string	"div_amg"
.LASF1006:
	.string	"year"
.LASF429:
	.string	"OP_DELETE"
.LASF982:
	.string	"Perl_get_op_names"
.LASF1034:
	.string	"popt"
.LASF759:
	.string	"subtr_amg"
.LASF692:
	.string	"sbu_rxres"
.LASF1082:
	.string	"PL_curstackinfo"
.LASF1118:
	.string	"util.c"
.LASF464:
	.string	"OP_LEAVESUB"
.LASF306:
	.string	"OP_PADSV"
.LASF318:
	.string	"OP_SREFGEN"
.LASF486:
	.string	"OP_GOTO"
.LASF892:
	.string	"Perl_write_to_stderr"
.LASF996:
	.string	"name"
.LASF109:
	.string	"op_pmstash"
.LASF246:
	.string	"svt_get"
.LASF921:
	.string	"Perl_my_htonl"
.LASF138:
	.string	"gp_form"
.LASF745:
	.string	"want_vtbl_amagic"
.LASF350:
	.string	"OP_I_POSTDEC"
.LASF1054:
	.string	"PL_errgv"
.LASF883:
	.string	"retval"
.LASF312:
	.string	"OP_RV2SV"
.LASF153:
	.string	"blku_oldcop"
.LASF1081:
	.string	"PL_curstack"
.LASF89:
	.string	"cop_stash"
.LASF320:
	.string	"OP_BLESS"
.LASF592:
	.string	"OP_GMTIME"
.LASF863:
	.string	"olds"
.LASF30:
	.string	"long long int"
.LASF265:
	.string	"line_t"
.LASF199:
	.string	"xhv_name"
.LASF558:
	.string	"OP_FTTEXT"
.LASF697:
	.string	"si_stack"
.LASF545:
	.string	"OP_FTATIME"
.LASF251:
	.string	"svt_copy"
.LASF444:
	.string	"OP_POP"
.LASF342:
	.string	"OP_POS"
.LASF351:
	.string	"OP_POW"
.LASF477:
	.string	"OP_ENTERITER"
.LASF317:
	.string	"OP_REFGEN"
.LASF28:
	.string	"tv_nsec"
.LASF1106:
	.string	"PL_vtbl_bm"
.LASF534:
	.string	"OP_FTRWRITE"
.LASF528:
	.string	"OP_SSOCKOPT"
.LASF149:
	.string	"cx_type"
.LASF189:
	.string	"xav_flags"
.LASF1055:
	.string	"PL_forkprocess"
.LASF1032:
	.string	"Perl_sv_nounlocking"
.LASF634:
	.string	"OP_GPWENT"
.LASF886:
	.string	"Perl_mess"
.LASF1031:
	.string	"Perl_sv_nolocking"
.LASF1061:
	.string	"PL_pidstatus"
.LASF674:
	.string	"iterix"
.LASF624:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF482:
	.string	"OP_LAST"
.LASF179:
	.string	"xmg_magic"
.LASF428:
	.string	"OP_KEYS"
.LASF972:
	.string	"Perl_find_script"
.LASF881:
	.string	"Perl_savesvpv"
.LASF1111:
	.string	"PL_vtbl_regdata"
.LASF167:
	.string	"mg_obj"
.LASF896:
	.string	"prev"
.LASF1112:
	.string	"PL_vtbl_regdatum"
.LASF611:
	.string	"OP_LEAVETRY"
.LASF258:
	.string	"any_dptr"
.LASF454:
	.string	"OP_FLIP"
.LASF809:
	.string	"to_sv_amg"
.LASF951:
	.string	"Perl_rsignal_save"
.LASF572:
	.string	"OP_OPEN_DIR"
.LASF937:
	.string	"Perl_my_popen"
.LASF182:
	.string	"xpvav"
.LASF105:
	.string	"op_pmregexp"
.LASF829:
	.string	"elements"
.LASF319:
	.string	"OP_REF"
.LASF521:
	.string	"OP_SOCKPAIR"
.LASF1109:
	.string	"PL_vtbl_defelem"
.LASF501:
	.string	"OP_GETC"
.LASF618:
	.string	"OP_GPBYNAME"
.LASF213:
	.string	"xcv_xsubany"
.LASF1114:
	.string	"PL_vtbl_amagicelem"
.LASF728:
	.string	"want_vtbl_dbline"
.LASF492:
	.string	"OP_UMASK"
.LASF234:
	.string	"xio_lines_left"
.LASF1077:
	.string	"PL_restartop"
.LASF512:
	.string	"OP_RECV"
.LASF865:
	.string	"bigstr"
.LASF139:
	.string	"gp_av"
.LASF753:
	.string	"bool__amg"
.LASF852:
	.string	"frequency"
.LASF222:
	.string	"xpvbm"
.LASF516:
	.string	"OP_TRUNCATE"
.LASF909:
	.string	"oldwarnhook"
.LASF490:
	.string	"OP_PIPE_OP"
.LASF636:
	.string	"OP_EPWENT"
.LASF853:
	.string	"mlen"
.LASF1042:
	.string	"PL_fold_locale"
.LASF664:
	.string	"block_loop"
.LASF315:
	.string	"OP_ANONCODE"
.LASF789:
	.string	"sgt_amg"
.LASF767:
	.string	"pow_amg"
.LASF332:
	.string	"OP_TRANS"
.LASF713:
	.string	"je_buf"
.LASF643:
	.string	"OP_SYSCALL"
.LASF219:
	.string	"xcv_flags"
.LASF647:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF681:
	.string	"sbu_maxiters"
.LASF208:
	.string	"xpvcv"
.LASF395:
	.string	"OP_ATAN2"
.LASF440:
	.string	"OP_ANONLIST"
.LASF520:
	.string	"OP_SOCKET"
.LASF425:
	.string	"OP_ASLICE"
.LASF404:
	.string	"OP_HEX"
.LASF657:
	.string	"oldcomppad"
.LASF268:
	.string	"_PerlIO"
.LASF58:
	.string	"st_mtim"
.LASF499:
	.string	"OP_SSELECT"
.LASF775:
	.string	"bor_amg"
.LASF792:
	.string	"sne_amg"
.LASF599:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF1089:
	.string	"PL_vtbl_env"
.LASF142:
	.string	"gp_cv"
.LASF1107:
	.string	"PL_vtbl_fm"
.LASF421:
	.string	"OP_QUOTEMETA"
.LASF39:
	.string	"__jmp_buf"
.LASF654:
	.string	"olddepth"
.LASF1097:
	.string	"PL_vtbl_isaelem"
.LASF379:
	.string	"OP_NCMP"
.LASF610:
	.string	"OP_ENTERTRY"
.LASF904:
	.string	"was_in_eval"
.LASF73:
	.string	"d_ino"
.LASF884:
	.string	"args"
.LASF564:
	.string	"OP_CHMOD"
.LASF400:
	.string	"OP_EXP"
.LASF416:
	.string	"OP_CRYPT"
.LASF838:
	.string	"retlen"
.LASF565:
	.string	"OP_UTIME"
.LASF799:
	.string	"sin_amg"
.LASF45:
	.string	"stat"
.LASF266:
	.string	"PerlIOl"
.LASF463:
	.string	"OP_ENTERSUB"
.LASF263:
	.string	"flags"
.LASF412:
	.string	"OP_SPRINTF"
.LASF326:
	.string	"OP_REGCRESET"
.LASF971:
	.string	"tmpsv"
.LASF903:
	.string	"Perl_vdie"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
