	.file	"Cwd.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Cwd.c -mtune=generic
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
	.section	.rodata
.LC0:
	.string	"/"
	.text
	.type	bsd_realpath, @function
bsd_realpath:
.LFB2:
	.file 1 "Cwd.c"
	.loc 1 85 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8264, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -8264(%rbp)	# path, path
	movq	%rsi, -8272(%rbp)	# resolved, resolved
	.loc 1 85 0
	movq	%fs:40, %rax	#, tmp126
	movq	%rax, -24(%rbp)	# tmp126, D.10558
	xorl	%eax, %eax	# tmp126
	.loc 1 92 0
	movl	$0, -8244(%rbp)	#, symlinks
	.loc 1 105 0
	leaq	-4128(%rbp), %rax	#, tmp85
	movl	$4095, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	getcwd	#
	testq	%rax, %rax	# D.10553
	jne	.L2	#,
	.loc 1 106 0
	movq	-8272(%rbp), %rax	# resolved, tmp86
	movw	$46, (%rax)	#, MEM[(void *)resolved_9(D)]
	.loc 1 107 0
	movl	$0, %eax	#, D.10553
	jmp	.L19	#
.L2:
	.loc 1 119 0
	movq	-8264(%rbp), %rcx	# path, tmp87
	movq	-8272(%rbp), %rax	# resolved, tmp88
	movl	$4095, %edx	#,
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	strncpy	#
	.loc 1 120 0
	movq	-8272(%rbp), %rax	# resolved, tmp89
	addq	$4095, %rax	#, D.10553
	movb	$0, (%rax)	#, *_12
.L4:
	.loc 1 122 0
	movq	-8272(%rbp), %rax	# resolved, tmp90
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	strrchr	#
	movq	%rax, -8232(%rbp)	# tmp91, q
	.loc 1 123 0
	cmpq	$0, -8232(%rbp)	#, q
	je	.L5	#,
	.loc 1 124 0
	movq	-8232(%rbp), %rax	# q, tmp95
	addq	$1, %rax	#, tmp94
	movq	%rax, -8240(%rbp)	# tmp94, p
	.loc 1 125 0
	movq	-8232(%rbp), %rax	# q, tmp96
	cmpq	-8272(%rbp), %rax	# resolved, tmp96
	jne	.L6	#,
	.loc 1 126 0
	movq	$.LC0, -8232(%rbp)	#, q
	jmp	.L7	#
.L6:
	.loc 1 129 0 discriminator 1
	subq	$1, -8232(%rbp)	#, q
	.loc 1 130 0 discriminator 1
	movq	-8232(%rbp), %rax	# q, tmp97
	cmpq	-8272(%rbp), %rax	# resolved, tmp97
	jbe	.L8	#,
	movq	-8232(%rbp), %rax	# q, tmp98
	movzbl	(%rax), %eax	# *q_16, D.10554
	cmpb	$47, %al	#, D.10554
	je	.L6	#,
.L8:
	.loc 1 131 0
	movq	-8232(%rbp), %rax	# q, tmp99
	addq	$1, %rax	#, D.10553
	movb	$0, (%rax)	#, *_18
	.loc 1 132 0
	movq	-8272(%rbp), %rax	# resolved, tmp100
	movq	%rax, -8232(%rbp)	# tmp100, q
.L7:
	.loc 1 134 0
	movq	-8232(%rbp), %rax	# q, tmp101
	movq	%rax, %rdi	# tmp101,
	call	chdir	#
	testl	%eax, %eax	# D.10555
	jns	.L9	#,
	.loc 1 135 0
	jmp	.L10	#
.L5:
	.loc 1 137 0
	movq	-8272(%rbp), %rax	# resolved, tmp102
	movq	%rax, -8240(%rbp)	# tmp102, p
.L9:
	.loc 1 169 0
	movq	-8240(%rbp), %rdx	# p, tmp103
	leaq	-8224(%rbp), %rax	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	strcpy	#
	.loc 1 170 0
	movq	-8272(%rbp), %rax	# resolved, tmp105
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	getcwd	#
	testq	%rax, %rax	# D.10553
	jne	.L11	#,
	.loc 1 171 0
	jmp	.L10	#
.L11:
	.loc 1 177 0
	movq	-8272(%rbp), %rax	# resolved, tmp106
	movzbl	(%rax), %eax	# *resolved_9(D), D.10554
	cmpb	$47, %al	#, D.10554
	jne	.L12	#,
	.loc 1 177 0 is_stmt 0 discriminator 1
	movq	-8272(%rbp), %rax	# resolved, tmp107
	addq	$1, %rax	#, D.10553
	movzbl	(%rax), %eax	# *_24, D.10554
	testb	%al, %al	# D.10554
	jne	.L12	#,
	.loc 1 178 0 is_stmt 1
	movl	$1, -8252(%rbp)	#, rootd
	jmp	.L13	#
.L12:
	.loc 1 180 0
	movl	$0, -8252(%rbp)	#, rootd
.L13:
	.loc 1 182 0
	movzbl	-8224(%rbp), %eax	# wbuf, D.10554
	testb	%al, %al	# D.10554
	je	.L14	#,
	.loc 1 183 0
	movq	-8272(%rbp), %rax	# resolved, tmp108
	movq	%rax, %rdi	# tmp108,
	call	strlen	#
	movq	%rax, %rbx	#, D.10556
	leaq	-8224(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen	#
	leaq	(%rbx,%rax), %rdx	#, D.10556
	movl	$1, %eax	#, tmp110
	subl	-8252(%rbp), %eax	# rootd, D.10555
	cltq
	addq	%rdx, %rax	# D.10556, D.10556
	addq	$1, %rax	#, D.10556
	cmpq	$4096, %rax	#, D.10556
	jbe	.L15	#,
	.loc 1 184 0
	call	__errno_location	#
	movl	$36, (%rax)	#, *_36
	.loc 1 185 0
	jmp	.L10	#
.L15:
	.loc 1 187 0
	cmpl	$0, -8252(%rbp)	#, rootd
	jne	.L16	#,
	.loc 1 188 0
	movq	-8272(%rbp), %rax	# resolved, tmp111
	movq	$-1, %rcx	#, tmp115
	movq	%rax, %rdx	# tmp111, tmp114
	movl	$0, %eax	#, tmp116
	movq	%rdx, %rdi	# tmp114, tmp114
	repnz scasb
	movq	%rcx, %rax	# tmp112, tmp112
	notq	%rax	# tmp113
	leaq	-1(%rax), %rdx	#, D.10556
	movq	-8272(%rbp), %rax	# resolved, tmp117
	addq	%rdx, %rax	# D.10556, D.10553
	movw	$47, (%rax)	#, MEM[(void *)_38]
.L16:
	.loc 1 189 0
	leaq	-8224(%rbp), %rdx	#, tmp118
	movq	-8272(%rbp), %rax	# resolved, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	strcat	#
.L14:
	.loc 1 199 0
	leaq	-4128(%rbp), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	chdir	#
	testl	%eax, %eax	# D.10555
	jns	.L17	#,
	.loc 1 200 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_40, tmp121
	movl	%eax, -8248(%rbp)	# tmp121, serrno
	.loc 1 201 0
	jmp	.L18	#
.L17:
	.loc 1 209 0
	movq	-8272(%rbp), %rax	# resolved, D.10553
	jmp	.L19	#
.L10:
	.loc 1 211 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_43, tmp122
	movl	%eax, -8248(%rbp)	# tmp122, serrno
	.loc 1 215 0
	leaq	-4128(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	chdir	#
.L18:
	.loc 1 222 0
	call	__errno_location	#
	movl	-8248(%rbp), %edx	# serrno, tmp124
	movl	%edx, (%rax)	# tmp124, *_45
	.loc 1 223 0
	movl	$0, %eax	#, D.10553
.L19:
	.loc 1 225 0
	movq	-24(%rbp), %rbx	# D.10558, tmp127
	xorq	%fs:40, %rbx	#, tmp127
	je	.L20	#,
	call	__stack_chk_fail	#
.L20:
	addq	$8264, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bsd_realpath, .-bsd_realpath
	.section	.rodata
.LC1:
	.string	"Usage: Cwd::fastcwd()"
	.text
	.globl	XS_Cwd_fastcwd
	.type	XS_Cwd_fastcwd, @function
XS_Cwd_fastcwd:
.LFB3:
	.loc 1 407 0
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
	.loc 1 408 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.3
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.3, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.2_5, D.10562
	cltq
	salq	$3, %rax	#, D.10563
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.5
	subq	%rax, %rdx	# PL_stack_base.6, D.10564
	movq	%rdx, %rax	# D.10564, D.10564
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.10565
	movl	%eax, -32(%rbp)	# D.10565, ax
	movq	%rbx, %rdx	# sp, sp.7
	movq	%r12, %rax	# mark, mark.8
	subq	%rax, %rdx	# mark.8, D.10564
	movq	%rdx, %rax	# D.10564, D.10564
	sarq	$3, %rax	#, tmp100
	movl	%eax, -28(%rbp)	# D.10564, items
	.loc 1 409 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L27	#,
	.loc 1 410 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L27:
	.loc 1 412 0
	movl	-28(%rbp), %eax	# items, tmp101
	cltq
	salq	$3, %rax	#, D.10563
	negq	%rax	# D.10566
	addq	%rax, %rbx	# D.10566, sp
.LBB2:
	.loc 1 416 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.10
	movzbl	37(%rax), %eax	# PL_op.10_28->op_private, D.10567
	movzbl	%al, %eax	# D.10567, D.10562
	andl	$32, %eax	#, D.10562
	testl	%eax, %eax	# D.10562
	je	.L23	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.11
	movq	PL_op(%rip), %rax	# PL_op, PL_op.12
	movq	24(%rax), %rax	# PL_op.12_33->op_targ, D.10563
	salq	$3, %rax	#, D.10563
	addq	%rdx, %rax	# PL_curpad.11, D.10568
	movq	(%rax), %rax	# *_36, iftmp.9
	jmp	.L24	#
.L23:
	.loc 1 416 0 discriminator 2
	call	Perl_sv_newmortal	#
.L24:
	.loc 1 416 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.9, targ
	.loc 1 417 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# targ, tmp102
	movq	%rax, %rdi	# tmp102,
	call	Perl_getcwd_sv	#
	.loc 1 418 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.13
	movl	-32(%rbp), %edx	# ax, tmp103
	movslq	%edx, %rdx	# tmp103, D.10563
	salq	$3, %rdx	#, D.10563
	subq	$8, %rdx	#, D.10566
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB3:
	movq	-24(%rbp), %rax	# targ, tmp104
	movl	12(%rax), %eax	# targ_39->sv_flags, D.10569
	andl	$16384, %eax	#, D.10569
	testl	%eax, %eax	# D.10569
	je	.L25	#,
	.loc 1 418 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_mg_set	#
.L25:
	.loc 1 418 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp106
	movq	%rax, (%rbx)	# tmp106, *sp_47
.LBE3:
.LBE2:
	.loc 1 424 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 425 0 discriminator 2
	nop
	.loc 1 427 0 discriminator 2
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	XS_Cwd_fastcwd, .-XS_Cwd_fastcwd
	.section	.rodata
	.align 8
.LC2:
	.string	"Usage: Cwd::abs_path(pathsv=Nullsv)"
.LC3:
	.string	"."
	.text
	.globl	XS_Cwd_abs_path
	.type	XS_Cwd_abs_path, @function
XS_Cwd_abs_path:
.LFB4:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$4160, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -4168(%rbp)	# cv, cv
	.loc 1 431 0
	movq	%fs:40, %rax	#, tmp138
	movq	%rax, -24(%rbp)	# tmp138, D.10583
	xorl	%eax, %eax	# tmp138
	.loc 1 432 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.14
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.15
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.17
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.17, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.16_8, D.10572
	cltq
	salq	$3, %rax	#, D.10573
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.18
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.19
	subq	%rax, %rdx	# PL_stack_base.20, D.10574
	movq	%rdx, %rax	# D.10574, D.10574
	sarq	$3, %rax	#, tmp115
	addl	$1, %eax	#, D.10575
	movl	%eax, -4160(%rbp)	# D.10575, ax
	movq	%rbx, %rdx	# sp, sp.21
	movq	%r12, %rax	# mark, mark.22
	subq	%rax, %rdx	# mark.22, D.10574
	movq	%rdx, %rax	# D.10574, D.10574
	sarq	$3, %rax	#, tmp116
	movl	%eax, -4156(%rbp)	# D.10574, items
	.loc 1 433 0
	cmpl	$0, -4156(%rbp)	#, items
	js	.L29	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	cmpl	$1, -4156(%rbp)	#, items
	jle	.L30	#,
.L29:
	.loc 1 434 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L30:
	.loc 1 435 0
	movl	-4156(%rbp), %eax	# items, tmp117
	cltq
	salq	$3, %rax	#, D.10573
	negq	%rax	# D.10576
	addq	%rax, %rbx	# D.10576, sp
.LBB4:
	.loc 1 439 0
	cmpl	$0, -4156(%rbp)	#, items
	jg	.L31	#,
	.loc 1 440 0
	movq	$0, -4152(%rbp)	#, pathsv
	jmp	.L32	#
.L31:
	.loc 1 442 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.23
	movl	-4160(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.10573
	salq	$3, %rdx	#, D.10573
	addq	%rdx, %rax	# D.10573, D.10577
	movq	(%rax), %rax	# *_35, tmp119
	movq	%rax, -4152(%rbp)	# tmp119, pathsv
.L32:
.LBB5:
	.loc 1 446 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.25
	movzbl	37(%rax), %eax	# PL_op.25_37->op_private, D.10578
	movzbl	%al, %eax	# D.10578, D.10572
	andl	$32, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L33	#,
	.loc 1 446 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.26
	movq	PL_op(%rip), %rax	# PL_op, PL_op.27
	movq	24(%rax), %rax	# PL_op.27_42->op_targ, D.10573
	salq	$3, %rax	#, D.10573
	addq	%rdx, %rax	# PL_curpad.26, D.10577
	movq	(%rax), %rax	# *_45, iftmp.24
	jmp	.L34	#
.L33:
	.loc 1 446 0 discriminator 2
	call	Perl_sv_newmortal	#
.L34:
	.loc 1 446 0 discriminator 3
	movq	%rax, -4144(%rbp)	# iftmp.24, targ
	.loc 1 450 0 is_stmt 1 discriminator 3
	cmpq	$0, -4152(%rbp)	#, pathsv
	je	.L35	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-4152(%rbp), %rax	# pathsv, tmp120
	movl	12(%rax), %eax	# pathsv_1->sv_flags, D.10579
	andl	$262144, %eax	#, D.10579
	testl	%eax, %eax	# D.10579
	je	.L36	#,
	movq	-4152(%rbp), %rax	# pathsv, tmp121
	movq	(%rax), %rax	# pathsv_1->sv_any, D.10580
	movq	(%rax), %rax	# MEM[(struct XPV *)_51].xpv_pv, iftmp.29
	jmp	.L38	#
.L36:
	.loc 1 450 0 discriminator 2
	movq	-4152(%rbp), %rax	# pathsv, tmp122
	movq	%rax, %rdi	# tmp122,
	call	Perl_sv_2pv_nolen	#
	jmp	.L38	#
.L35:
	movl	$.LC3, %eax	#, iftmp.28
.L38:
	.loc 1 450 0 discriminator 3
	movq	%rax, -4136(%rbp)	# iftmp.28, path
	.loc 1 452 0 is_stmt 1 discriminator 3
	leaq	-4128(%rbp), %rdx	#, tmp123
	movq	-4136(%rbp), %rax	# path, tmp124
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	movl	$0, %eax	#,
	call	bsd_realpath	#
	testq	%rax, %rax	# D.10581
	je	.L39	#,
	.loc 1 453 0
	leaq	-4128(%rbp), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	strlen	#
	movq	%rax, %rdx	#, D.10573
	leaq	-4128(%rbp), %rcx	#, tmp126
	movq	-4144(%rbp), %rax	# targ, tmp127
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_setpvn	#
	.loc 1 454 0
	movq	-4144(%rbp), %rax	# targ, tmp128
	movl	12(%rax), %eax	# targ_48->sv_flags, D.10579
	andl	$1223753727, %eax	#, D.10579
	movl	%eax, %edx	# D.10579, D.10579
	movq	-4144(%rbp), %rax	# targ, tmp129
	movl	%edx, 12(%rax)	# D.10579, targ_48->sv_flags
	movq	-4144(%rbp), %rax	# targ, tmp130
	movl	12(%rax), %eax	# targ_48->sv_flags, D.10579
	orl	$67371008, %eax	#, D.10579
	movl	%eax, %edx	# D.10579, D.10579
	movq	-4144(%rbp), %rax	# targ, tmp131
	movl	%edx, 12(%rax)	# D.10579, targ_48->sv_flags
	.loc 1 455 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.30
	testb	%al, %al	# PL_tainting.30
	je	.L41	#,
	.loc 1 455 0 is_stmt 0 discriminator 1
	movq	-4144(%rbp), %rax	# targ, tmp132
	movq	%rax, %rdi	# tmp132,
	call	Perl_sv_taint	#
	jmp	.L41	#
.L39:
	.loc 1 458 0 is_stmt 1
	movq	-4144(%rbp), %rax	# targ, tmp133
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	Perl_sv_setsv_flags	#
.L41:
	.loc 1 460 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.31
	movl	-4160(%rbp), %edx	# ax, tmp134
	movslq	%edx, %rdx	# tmp134, D.10573
	salq	$3, %rdx	#, D.10573
	subq	$8, %rdx	#, D.10576
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB6:
	movq	-4144(%rbp), %rax	# targ, tmp135
	movl	12(%rax), %eax	# targ_48->sv_flags, D.10579
	andl	$16384, %eax	#, D.10579
	testl	%eax, %eax	# D.10579
	je	.L42	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-4144(%rbp), %rax	# targ, tmp136
	movq	%rax, %rdi	# tmp136,
	call	Perl_mg_set	#
.L42:
	.loc 1 460 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-4144(%rbp), %rax	# targ, tmp137
	movq	%rax, (%rbx)	# tmp137, *sp_71
.LBE6:
.LBE5:
	.loc 1 466 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 467 0 discriminator 2
	nop
.LBE4:
	.loc 1 469 0 discriminator 2
	movq	-24(%rbp), %rax	# D.10583, tmp139
	xorq	%fs:40, %rax	#, tmp139
	je	.L44	#,
	.loc 1 469 0 is_stmt 0
	call	__stack_chk_fail	#
.L44:
	addq	$4160, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	XS_Cwd_abs_path, .-XS_Cwd_abs_path
	.section	.rodata
.LC4:
	.string	"Cwd.c"
.LC5:
	.string	"Cwd::fastcwd"
.LC6:
	.string	"Cwd::abs_path"
	.text
	.globl	boot_Cwd
	.type	boot_Cwd, @function
boot_Cwd:
.LFB5:
	.loc 1 524 0 is_stmt 1
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
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 525 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.32
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.33
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.35
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.35, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.34_4, D.10586
	cltq
	salq	$3, %rax	#, D.10587
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.36
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.37
	subq	%rax, %rdx	# PL_stack_base.38, D.10588
	movq	%rdx, %rax	# D.10588, D.10588
	sarq	$3, %rax	#, tmp90
	addl	$1, %eax	#, D.10589
	movl	%eax, -40(%rbp)	# D.10589, ax
	movq	%r12, %rdx	# sp, sp.39
	movq	%rbx, %rax	# mark, mark.40
	subq	%rax, %rdx	# mark.40, D.10588
	movq	%rdx, %rax	# D.10588, D.10588
	sarq	$3, %rax	#, tmp91
	movl	%eax, -36(%rbp)	# D.10588, items
	.loc 1 526 0
	movq	$.LC4, -32(%rbp)	#, file
	.loc 1 530 0
	movq	-32(%rbp), %rax	# file, tmp92
	movq	%rax, %rdx	# tmp92,
	movl	$XS_Cwd_fastcwd, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newXS	#
	.loc 1 531 0
	movq	-32(%rbp), %rax	# file, tmp93
	movq	%rax, %rdx	# tmp93,
	movl	$XS_Cwd_abs_path, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_newXS	#
.LBB7:
	.loc 1 544 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.41
	movl	-40(%rbp), %edx	# ax, tmp94
	movslq	%edx, %rdx	# tmp94, D.10587
	salq	$3, %rdx	#, D.10587
	addq	%rdx, %rax	# D.10587, D.10590
	movq	$PL_sv_yes, (%rax)	#, *_27
.LBB8:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.42
	movl	-40(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rcx	# tmp95, D.10591
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.43
	addq	%rcx, %rdx	# D.10591, D.10591
	salq	$3, %rdx	#, D.10591
	subq	$8, %rdx	#, D.10591
	addq	%rdx, %rax	# D.10591, PL_stack_sp.44
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.44, PL_stack_sp
	nop
.LBE8:
.LBE7:
	.loc 1 545 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	boot_Cwd, .-boot_Cwd
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "sv.h"
	.file 9 "regexp.h"
	.file 10 "gv.h"
	.file 11 "mg.h"
	.file 12 "av.h"
	.file 13 "hv.h"
	.file 14 "cv.h"
	.file 15 "handy.h"
	.file 16 "perlio.h"
	.file 17 "pad.h"
	.file 18 "intrpvar.h"
	.file 19 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x116c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF217
	.byte	0x1
	.long	.LASF218
	.long	.LASF219
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc0
	.uleb128 0x9
	.long	.LASF171
	.uleb128 0xa
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xe6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x104
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x170
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xc9b
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xc9b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xd1f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xd09
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xb76
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xb76
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xb6c
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xb6c
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x7db
	.long	0x17c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x26a
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xc9b
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xc9b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xd1f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xd09
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xb76
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xb76
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xb6c
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xb6c
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xc9b
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xc9b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xc9b
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xc9b
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xd25
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xd2b
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xb8c
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xb8c
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xb6c
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xc83
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x7e1
	.long	0x276
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x291
	.uleb128 0xf
	.long	.LASF38
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x29c
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.long	0x2cc
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x45
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x2d7
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x8
	.byte	0x55
	.long	0x307
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x56
	.long	0xc6b
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x312
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.long	0x342
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x5c
	.long	0xc71
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x34d
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x8
	.byte	0x4f
	.long	0x37d
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x50
	.long	0xc65
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x7ee
	.long	0x389
	.uleb128 0xe
	.long	.LASF43
	.byte	0x68
	.byte	0x9
	.byte	0x1f
	.long	0x462
	.uleb128 0xd
	.long	.LASF44
	.byte	0x9
	.byte	0x20
	.long	0xc27
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xc27
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xc2d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xc38
	.byte	0x18
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x25
	.long	0xc43
	.byte	0x28
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x28
	.long	0xc49
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xb81
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xb81
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xb81
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xb81
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xb8c
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xb8c
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xb8c
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xb8c
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xc4f
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x46d
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xa
	.byte	0xb
	.long	0x509
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0xc
	.long	0xbb4
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xcf8
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xcac
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xcbe
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xc83
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xcb8
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xcac
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xb8c
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xb8c
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xb97
	.byte	0x48
	.uleb128 0xd
	.long	.LASF72
	.byte	0xa
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x514
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x8
	.byte	0x49
	.long	0x544
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x4a
	.long	0xc5f
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x8
	.byte	0x61
	.long	0x574
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x62
	.long	0xc77
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xb8c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xb8c
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.value	0x7f5
	.long	0x580
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xb
	.byte	0x1a
	.long	0x5ed
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0xc7d
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xe36
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xb76
	.byte	0x10
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x1f
	.long	0xb6c
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xbb4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF81
	.byte	0xb
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF82
	.byte	0xb
	.byte	0x22
	.long	0xb81
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x5f9
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x8
	.byte	0xf9
	.long	0x62a
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0x8
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x6
	.value	0x7fd
	.long	0x636
	.uleb128 0xe
	.long	.LASF87
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x6bb
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF93
	.byte	0xc
	.byte	0x11
	.long	0xc7d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0x12
	.long	0xc83
	.byte	0x30
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0x14
	.long	0xd31
	.byte	0x38
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0x15
	.long	0xbb4
	.byte	0x40
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0x16
	.long	0xb6c
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.value	0x7fe
	.long	0x6c7
	.uleb128 0xe
	.long	.LASF99
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x758
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF101
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF93
	.byte	0xd
	.byte	0x29
	.long	0xc7d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF94
	.byte	0xd
	.byte	0x2a
	.long	0xc83
	.byte	0x30
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x2c
	.long	0xb81
	.byte	0x38
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x2d
	.long	0xdad
	.byte	0x40
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x2e
	.long	0xd25
	.byte	0x48
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF108
	.byte	0x6
	.value	0x7ff
	.long	0x764
	.uleb128 0x10
	.long	.LASF109
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x80e
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x8
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x136
	.long	0xc7d
	.byte	0x28
	.uleb128 0xf
	.long	.LASF94
	.byte	0x8
	.value	0x137
	.long	0xc83
	.byte	0x30
	.uleb128 0xf
	.long	.LASF111
	.byte	0x8
	.value	0x139
	.long	0xc89
	.byte	0x38
	.uleb128 0xf
	.long	.LASF112
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF113
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x13c
	.long	0xc83
	.byte	0x50
	.uleb128 0xf
	.long	.LASF115
	.byte	0x8
	.value	0x13d
	.long	0xb6c
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x6
	.value	0x800
	.long	0x81a
	.uleb128 0xe
	.long	.LASF117
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x90b
	.uleb128 0xd
	.long	.LASF83
	.byte	0xe
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xe
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xe
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF91
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF93
	.byte	0xe
	.byte	0x14
	.long	0xc7d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF94
	.byte	0xe
	.byte	0x15
	.long	0xc83
	.byte	0x30
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0x17
	.long	0xc83
	.byte	0x38
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x18
	.long	0xc9b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x19
	.long	0xc9b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x1a
	.long	0xcb2
	.byte	0x50
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x1b
	.long	0xabd
	.byte	0x58
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x1c
	.long	0xcb8
	.byte	0x60
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1f
	.long	0xd14
	.byte	0x78
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x20
	.long	0xcac
	.byte	0x80
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x25
	.long	0xc8f
	.byte	0x88
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x26
	.long	0xb8c
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF130
	.byte	0x6
	.value	0x803
	.long	0x917
	.uleb128 0x10
	.long	.LASF131
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xa50
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x8
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x176
	.long	0xc7d
	.byte	0x28
	.uleb128 0xf
	.long	.LASF94
	.byte	0x8
	.value	0x177
	.long	0xc83
	.byte	0x30
	.uleb128 0xf
	.long	.LASF132
	.byte	0x8
	.value	0x179
	.long	0xcec
	.byte	0x38
	.uleb128 0xf
	.long	.LASF133
	.byte	0x8
	.value	0x17a
	.long	0xcec
	.byte	0x40
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.value	0x187
	.long	0xcc4
	.byte	0x48
	.uleb128 0xf
	.long	.LASF135
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x18d
	.long	0xcb8
	.byte	0x78
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18f
	.long	0xcb8
	.byte	0x88
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x191
	.long	0xcb8
	.byte	0x98
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF148
	.byte	0x6
	.value	0x804
	.long	0xa5c
	.uleb128 0xe
	.long	.LASF149
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xabd
	.uleb128 0xd
	.long	.LASF150
	.byte	0xb
	.byte	0xf
	.long	0xdcd
	.byte	0
	.uleb128 0xd
	.long	.LASF151
	.byte	0xb
	.byte	0x10
	.long	0xdcd
	.byte	0x8
	.uleb128 0xd
	.long	.LASF152
	.byte	0xb
	.byte	0x11
	.long	0xde7
	.byte	0x10
	.uleb128 0xd
	.long	.LASF153
	.byte	0xb
	.byte	0x12
	.long	0xdcd
	.byte	0x18
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0x13
	.long	0xdcd
	.byte	0x20
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x14
	.long	0xe10
	.byte	0x28
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x16
	.long	0xe30
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xac9
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xb2b
	.uleb128 0x12
	.long	.LASF157
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF158
	.byte	0x6
	.value	0x9f3
	.long	0xb81
	.uleb128 0x12
	.long	.LASF159
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF160
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF161
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f7
	.long	0xbae
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f8
	.long	0xbae
	.byte	0
	.uleb128 0xb
	.long	.LASF164
	.byte	0x6
	.value	0x808
	.long	0xb37
	.uleb128 0x10
	.long	.LASF165
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xb6c
	.uleb128 0xf
	.long	.LASF166
	.byte	0x8
	.value	0x4ee
	.long	0xcbe
	.byte	0
	.uleb128 0xf
	.long	.LASF167
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF168
	.byte	0x8
	.value	0x4f0
	.long	0xcf2
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0xf
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0xf
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0xf
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0xf
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF169
	.byte	0xf
	.value	0x209
	.long	0xb8c
	.uleb128 0x13
	.long	0xbae
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba3
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xbca
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF170
	.byte	0x10
	.byte	0x63
	.long	0xbd5
	.uleb128 0x9
	.long	.LASF172
	.uleb128 0x5
	.long	.LASF173
	.byte	0x10
	.byte	0x65
	.long	0xbe5
	.uleb128 0x6
	.byte	0x8
	.long	0xbca
	.uleb128 0xe
	.long	.LASF174
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xc1c
	.uleb128 0xd
	.long	.LASF167
	.byte	0x9
	.byte	0x14
	.long	0xb6c
	.byte	0
	.uleb128 0xd
	.long	.LASF175
	.byte	0x9
	.byte	0x15
	.long	0xb6c
	.byte	0x1
	.uleb128 0xd
	.long	.LASF176
	.byte	0x9
	.byte	0x16
	.long	0xb76
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF174
	.byte	0x9
	.byte	0x19
	.long	0xbeb
	.uleb128 0x6
	.byte	0x8
	.long	0xb81
	.uleb128 0x6
	.byte	0x8
	.long	0xc1c
	.uleb128 0x9
	.long	.LASF177
	.uleb128 0x6
	.byte	0x8
	.long	0xc33
	.uleb128 0x9
	.long	.LASF178
	.uleb128 0x6
	.byte	0x8
	.long	0xc3e
	.uleb128 0x6
	.byte	0x8
	.long	0xb8c
	.uleb128 0x15
	.long	0xc1c
	.long	0xc5f
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x758
	.uleb128 0x6
	.byte	0x8
	.long	0x80e
	.uleb128 0x6
	.byte	0x8
	.long	0x62a
	.uleb128 0x6
	.byte	0x8
	.long	0x6bb
	.uleb128 0x6
	.byte	0x8
	.long	0x90b
	.uleb128 0x6
	.byte	0x8
	.long	0x574
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x462
	.uleb128 0xb
	.long	.LASF179
	.byte	0x8
	.value	0x150
	.long	0xb76
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xcac
	.uleb128 0x14
	.long	0xcac
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xca1
	.uleb128 0x6
	.byte	0x8
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x2cc
	.uleb128 0x17
	.byte	0x8
	.byte	0x8
	.value	0x184
	.long	0xce6
	.uleb128 0x12
	.long	.LASF180
	.byte	0x8
	.value	0x185
	.long	0xce6
	.uleb128 0x12
	.long	.LASF181
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xbda
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF182
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF183
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xcfe
	.uleb128 0x18
	.long	0xc9b
	.uleb128 0x6
	.byte	0x8
	.long	0xd1a
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xbb4
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xd41
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xd71
	.uleb128 0xd
	.long	.LASF184
	.byte	0xd
	.byte	0x11
	.long	0xdad
	.byte	0
	.uleb128 0xd
	.long	.LASF185
	.byte	0xd
	.byte	0x12
	.long	0xdb3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF186
	.byte	0xd
	.byte	0x13
	.long	0xbb4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xd7c
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xdad
	.uleb128 0xd
	.long	.LASF187
	.byte	0xd
	.byte	0x18
	.long	0xb8c
	.byte	0
	.uleb128 0xd
	.long	.LASF188
	.byte	0xd
	.byte	0x19
	.long	0xb81
	.byte	0x4
	.uleb128 0xd
	.long	.LASF189
	.byte	0xd
	.byte	0x1a
	.long	0xbba
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd37
	.uleb128 0x6
	.byte	0x8
	.long	0xd71
	.uleb128 0x19
	.long	0x57
	.long	0xdcd
	.uleb128 0x14
	.long	0xbb4
	.uleb128 0x14
	.long	0xc7d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdb9
	.uleb128 0x19
	.long	0xb8c
	.long	0xde7
	.uleb128 0x14
	.long	0xbb4
	.uleb128 0x14
	.long	0xc7d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdd3
	.uleb128 0x19
	.long	0x57
	.long	0xe10
	.uleb128 0x14
	.long	0xbb4
	.uleb128 0x14
	.long	0xc7d
	.uleb128 0x14
	.long	0xbb4
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xded
	.uleb128 0x19
	.long	0x57
	.long	0xe2a
	.uleb128 0x14
	.long	0xc7d
	.uleb128 0x14
	.long	0xe2a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2b
	.uleb128 0x6
	.byte	0x8
	.long	0xe16
	.uleb128 0x6
	.byte	0x8
	.long	0xa50
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF190
	.uleb128 0x1a
	.long	.LASF220
	.byte	0x1
	.byte	0x52
	.long	0x79
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1c
	.uleb128 0x1b
	.long	.LASF191
	.byte	0x1
	.byte	0x53
	.long	0xaa
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x1b
	.long	.LASF192
	.byte	0x1
	.byte	0x54
	.long	0x79
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8268
	.uleb128 0x1c
	.long	.LASF194
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x5b
	.long	0x79
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.byte	0x5b
	.long	0x79
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x1c
	.long	.LASF195
	.byte	0x1
	.byte	0x5b
	.long	0xf1c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x1c
	.long	.LASF196
	.byte	0x1
	.byte	0x5c
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8260
	.uleb128 0x1d
	.string	"wd"
	.byte	0x1
	.byte	0x67
	.long	0xf1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x1
	.byte	0x79
	.quad	.L4
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x1
	.byte	0xd3
	.quad	.L10
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x1
	.byte	0xda
	.quad	.L18
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0xf2d
	.uleb128 0x1f
	.long	0x65
	.value	0xfff
	.byte	0
	.uleb128 0x20
	.long	.LASF203
	.byte	0x1
	.value	0x196
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb3
	.uleb128 0x21
	.string	"cv"
	.byte	0x1
	.value	0x196
	.long	0xcac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x198
	.long	0xd31
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF200
	.byte	0x1
	.value	0x198
	.long	0xd31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x198
	.long	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x198
	.long	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.long	.LASF202
	.byte	0x1
	.value	0x1a0
	.long	0xbb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF204
	.byte	0x1
	.value	0x1ae
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x107f
	.uleb128 0x21
	.string	"cv"
	.byte	0x1
	.value	0x1ae
	.long	0xcac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4184
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1b0
	.long	0xd31
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF200
	.byte	0x1
	.value	0x1b0
	.long	0xd31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1b0
	.long	0xb81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4176
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x1b0
	.long	0xb81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4172
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.long	.LASF205
	.byte	0x1
	.value	0x1b5
	.long	0xbb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.long	.LASF202
	.byte	0x1
	.value	0x1be
	.long	0xbb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4160
	.uleb128 0x23
	.long	.LASF191
	.byte	0x1
	.value	0x1bf
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4152
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0x1c0
	.long	0xf1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF206
	.byte	0x1
	.value	0x20b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1115
	.uleb128 0x21
	.string	"cv"
	.byte	0x1
	.value	0x20b
	.long	0xcac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x20d
	.long	0xd31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.long	.LASF200
	.byte	0x1
	.value	0x20d
	.long	0xd31
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x20d
	.long	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x20d
	.long	0xb81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF207
	.byte	0x1
	.value	0x20e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.long	.LASF208
	.byte	0x1
	.value	0x220
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF209
	.byte	0x12
	.byte	0x98
	.long	0x7f
	.uleb128 0x26
	.long	.LASF210
	.byte	0x12
	.value	0x125
	.long	0x291
	.uleb128 0x26
	.long	.LASF211
	.byte	0x12
	.value	0x127
	.long	0x291
	.uleb128 0x25
	.long	.LASF212
	.byte	0x13
	.byte	0x22
	.long	0xd31
	.uleb128 0x25
	.long	.LASF213
	.byte	0x13
	.byte	0x26
	.long	0xc9b
	.uleb128 0x25
	.long	.LASF214
	.byte	0x13
	.byte	0x28
	.long	0xd31
	.uleb128 0x25
	.long	.LASF215
	.byte	0x13
	.byte	0x2a
	.long	0xd31
	.uleb128 0x25
	.long	.LASF216
	.byte	0x13
	.byte	0x3c
	.long	0xc27
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF137:
	.string	"xio_page_len"
.LASF143:
	.string	"xio_bottom_name"
.LASF61:
	.string	"gp_sv"
.LASF170:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF219:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF116:
	.string	"XPVCV"
.LASF150:
	.string	"svt_get"
.LASF218:
	.string	"Cwd.c"
.LASF146:
	.string	"xio_type"
.LASF117:
	.string	"xpvcv"
.LASF79:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF167:
	.string	"flags"
.LASF101:
	.string	"xhv_fill"
.LASF72:
	.string	"gp_file"
.LASF147:
	.string	"xio_flags"
.LASF180:
	.string	"xiou_dirp"
.LASF174:
	.string	"regnode"
.LASF161:
	.string	"any_bool"
.LASF31:
	.string	"op_pmregexp"
.LASF182:
	.string	"PADLIST"
.LASF48:
	.string	"precomp"
.LASF97:
	.string	"xav_flags"
.LASF114:
	.string	"xgv_stash"
.LASF45:
	.string	"endp"
.LASF10:
	.string	"ssize_t"
.LASF172:
	.string	"_PerlIO"
.LASF220:
	.string	"bsd_realpath"
.LASF121:
	.string	"xcv_xsub"
.LASF75:
	.string	"mg_moremagic"
.LASF68:
	.string	"gp_cv"
.LASF90:
	.string	"xav_max"
.LASF173:
	.string	"PerlIO"
.LASF190:
	.string	"float"
.LASF103:
	.string	"xhv_keys"
.LASF47:
	.string	"substrs"
.LASF208:
	.string	"tmpXSoff"
.LASF149:
	.string	"mgvtbl"
.LASF124:
	.string	"xcv_file"
.LASF123:
	.string	"xcv_gv"
.LASF194:
	.string	"serrno"
.LASF12:
	.string	"long long unsigned int"
.LASF207:
	.string	"file"
.LASF42:
	.string	"REGEXP"
.LASF204:
	.string	"XS_Cwd_abs_path"
.LASF178:
	.string	"reg_data"
.LASF165:
	.string	"clone_params"
.LASF177:
	.string	"reg_substr_data"
.LASF77:
	.string	"mg_private"
.LASF110:
	.string	"xiv_iv"
.LASF115:
	.string	"xgv_flags"
.LASF135:
	.string	"xio_lines"
.LASF37:
	.string	"interpreter"
.LASF66:
	.string	"gp_hv"
.LASF83:
	.string	"xpv_pv"
.LASF108:
	.string	"XPVGV"
.LASF197:
	.string	"loop"
.LASF138:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF187:
	.string	"hek_hash"
.LASF163:
	.string	"any_dxptr"
.LASF109:
	.string	"xpvgv"
.LASF169:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF82:
	.string	"mg_len"
.LASF80:
	.string	"mg_obj"
.LASF125:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF142:
	.string	"xio_fmt_gv"
.LASF214:
	.string	"PL_curpad"
.LASF189:
	.string	"hek_key"
.LASF205:
	.string	"pathsv"
.LASF60:
	.string	"program"
.LASF63:
	.string	"gp_io"
.LASF106:
	.string	"xhv_pmroot"
.LASF98:
	.string	"XPVHV"
.LASF196:
	.string	"symlinks"
.LASF153:
	.string	"svt_clear"
.LASF191:
	.string	"path"
.LASF134:
	.string	"xio_dirpu"
.LASF99:
	.string	"xpvhv"
.LASF28:
	.string	"op_pmreplroot"
.LASF34:
	.string	"op_pmdynflags"
.LASF155:
	.string	"svt_copy"
.LASF85:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF130:
	.string	"XPVIO"
.LASF159:
	.string	"any_iv"
.LASF166:
	.string	"stashes"
.LASF55:
	.string	"prelen"
.LASF62:
	.string	"gp_refcnt"
.LASF57:
	.string	"lastparen"
.LASF131:
	.string	"xpvio"
.LASF202:
	.string	"targ"
.LASF49:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF215:
	.string	"PL_stack_base"
.LASF210:
	.string	"PL_sv_undef"
.LASF52:
	.string	"sublen"
.LASF27:
	.string	"op_last"
.LASF185:
	.string	"hent_hek"
.LASF59:
	.string	"reganch"
.LASF50:
	.string	"subbeg"
.LASF168:
	.string	"proto_perl"
.LASF74:
	.string	"magic"
.LASF184:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF100:
	.string	"xhv_array"
.LASF139:
	.string	"xio_top_name"
.LASF58:
	.string	"lastcloseparen"
.LASF81:
	.string	"mg_ptr"
.LASF200:
	.string	"mark"
.LASF176:
	.string	"next_off"
.LASF76:
	.string	"mg_virtual"
.LASF24:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF107:
	.string	"xhv_name"
.LASF203:
	.string	"XS_Cwd_fastcwd"
.LASF211:
	.string	"PL_sv_yes"
.LASF132:
	.string	"xio_ifp"
.LASF38:
	.string	"broiled"
.LASF198:
	.string	"err1"
.LASF199:
	.string	"err2"
.LASF16:
	.string	"op_next"
.LASF67:
	.string	"gp_egv"
.LASF44:
	.string	"startp"
.LASF201:
	.string	"items"
.LASF39:
	.string	"sv_any"
.LASF35:
	.string	"op_pmstash"
.LASF136:
	.string	"xio_page"
.LASF181:
	.string	"xiou_any"
.LASF209:
	.string	"PL_tainting"
.LASF29:
	.string	"op_pmreplstart"
.LASF73:
	.string	"MAGIC"
.LASF152:
	.string	"svt_len"
.LASF217:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF41:
	.string	"sv_flags"
.LASF36:
	.string	"PerlInterpreter"
.LASF95:
	.string	"xav_alloc"
.LASF105:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF64:
	.string	"gp_form"
.LASF26:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF119:
	.string	"xcv_start"
.LASF129:
	.string	"xcv_outside_seq"
.LASF88:
	.string	"xav_array"
.LASF145:
	.string	"xio_subprocess"
.LASF51:
	.string	"offsets"
.LASF91:
	.string	"xof_off"
.LASF188:
	.string	"hek_len"
.LASF148:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF53:
	.string	"refcnt"
.LASF96:
	.string	"xav_arylen"
.LASF118:
	.string	"xcv_stash"
.LASF113:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF120:
	.string	"xcv_root"
.LASF43:
	.string	"regexp"
.LASF186:
	.string	"hent_val"
.LASF127:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF32:
	.string	"op_pmflags"
.LASF102:
	.string	"xhv_max"
.LASF195:
	.string	"wbuf"
.LASF126:
	.string	"xcv_padlist"
.LASF93:
	.string	"xmg_magic"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF158:
	.string	"any_i32"
.LASF151:
	.string	"svt_set"
.LASF164:
	.string	"CLONE_PARAMS"
.LASF141:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF171:
	.string	"__dirstream"
.LASF160:
	.string	"any_long"
.LASF25:
	.string	"pmop"
.LASF89:
	.string	"xav_fill"
.LASF175:
	.string	"type"
.LASF0:
	.string	"unsigned char"
.LASF104:
	.string	"xhv_riter"
.LASF111:
	.string	"xgv_gp"
.LASF30:
	.string	"op_pmnext"
.LASF40:
	.string	"sv_refcnt"
.LASF92:
	.string	"xnv_nv"
.LASF192:
	.string	"resolved"
.LASF128:
	.string	"xcv_flags"
.LASF70:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF78:
	.string	"mg_type"
.LASF193:
	.string	"rootd"
.LASF156:
	.string	"svt_dup"
.LASF144:
	.string	"xio_bottom_gv"
.LASF84:
	.string	"xpv_cur"
.LASF157:
	.string	"any_ptr"
.LASF86:
	.string	"XPVAV"
.LASF154:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF183:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF33:
	.string	"op_pmpermflags"
.LASF87:
	.string	"xpvav"
.LASF94:
	.string	"xmg_stash"
.LASF65:
	.string	"gp_av"
.LASF69:
	.string	"gp_cvgen"
.LASF71:
	.string	"gp_line"
.LASF54:
	.string	"minlen"
.LASF122:
	.string	"xcv_xsubany"
.LASF179:
	.string	"cv_flags_t"
.LASF133:
	.string	"xio_ofp"
.LASF216:
	.string	"PL_markstack_ptr"
.LASF46:
	.string	"regstclass"
.LASF140:
	.string	"xio_top_gv"
.LASF56:
	.string	"nparens"
.LASF212:
	.string	"PL_stack_sp"
.LASF206:
	.string	"boot_Cwd"
.LASF162:
	.string	"any_dptr"
.LASF213:
	.string	"PL_op"
.LASF112:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
