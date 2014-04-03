	.file	"pp_sys.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pp_sys.c
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
	.data
	.type	zero_but_true, @object
	.size	zero_but_true, 11
zero_but_true:
	.string	"0 but true"
	.section	.rodata
	.align 8
.LC0:
	.string	"switching effective uid is not implemented"
	.text
	.type	S_emulate_eaccess, @function
S_emulate_eaccess:
.LFB2:
	.file 1 "pp_sys.c"
	.loc 1 309 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# path, path
	movl	%esi, -12(%rbp)	# mode, mode
	.loc 1 310 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 312 0
	movl	$-1, %eax	#, D.18085
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_emulate_eaccess, .-S_emulate_eaccess
	.section	.rodata
.LC1:
	.string	"r"
.LC2:
	.string	"``"
.LC3:
	.string	"rb"
.LC4:
	.string	"rt"
.LC5:
	.string	""
	.text
	.globl	Perl_pp_backtick
	.type	Perl_pp_backtick, @function
Perl_pp_backtick:
.LFB3:
	.loc 1 317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$336, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 317 0
	movq	%fs:40, %rax	#, tmp191
	movq	%rax, -24(%rbp)	# tmp191, D.18098
	xorl	%eax, %eax	# tmp191
	.loc 1 318 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1
	movq	24(%rax), %rax	# PL_op.1_16->op_targ, D.18088
	salq	$3, %rax	#, D.18088
	addq	%rdx, %rax	# PL_curpad.0, D.18089
	movq	(%rax), %rax	# *_19, tmp159
	movq	%rax, -320(%rbp)	# tmp159, targ
	.loc 1 321 0
	movq	%rbx, %rax	# sp, sp.2
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.2_21, PL_Sv.3
	movq	%rax, PL_Sv(%rip)	# PL_Sv.3, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.5
	movl	12(%rax), %eax	# PL_Sv.5_24->sv_flags, D.18090
	andl	$262144, %eax	#, D.18090
	testl	%eax, %eax	# D.18090
	je	.L4	#,
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.6
	movq	(%rax), %rax	# PL_Sv.6_27->sv_any, D.18091
	movq	8(%rax), %rax	# MEM[(struct XPV *)_28].xpv_cur, n_a.7
	movq	%rax, -344(%rbp)	# n_a.7, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.8
	movq	(%rax), %rax	# PL_Sv.8_30->sv_any, D.18091
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, iftmp.4
	jmp	.L5	#
.L4:
	.loc 1 321 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.9
	leaq	-344(%rbp), %rcx	#, tmp160
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# PL_Sv.9,
	call	Perl_sv_2pv_flags	#
.L5:
	.loc 1 321 0 discriminator 3
	movq	%rax, -312(%rbp)	# iftmp.4, tmps
	.loc 1 322 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.11
	movzbl	36(%rax), %eax	# PL_op.11_36->op_flags, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	andl	$3, %eax	#, D.18093
	cmpl	$1, %eax	#, D.18093
	je	.L6	#,
	.loc 1 322 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.13
	movzbl	36(%rax), %eax	# PL_op.13_40->op_flags, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	andl	$3, %eax	#, D.18093
	cmpl	$2, %eax	#, D.18093
	je	.L7	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.15
	movzbl	36(%rax), %eax	# PL_op.15_44->op_flags, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	andl	$3, %eax	#, D.18093
	cmpl	$3, %eax	#, D.18093
	je	.L8	#,
	call	Perl_block_gimme	#
	jmp	.L11	#
.L8:
	.loc 1 322 0 discriminator 2
	movl	$1, %eax	#, iftmp.14
	jmp	.L11	#
.L7:
	movl	$0, %eax	#, iftmp.12
	jmp	.L11	#
.L6:
	movl	$128, %eax	#, iftmp.10
.L11:
	.loc 1 322 0 discriminator 3
	movl	%eax, -348(%rbp)	# iftmp.10, gimme
	.loc 1 323 0 is_stmt 1 discriminator 3
	movq	$.LC1, -336(%rbp)	#, mode
	.loc 1 325 0 discriminator 3
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.16
	testb	%al, %al	# PL_tainting.16
	je	.L12	#,
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	$.LC2, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L12:
	.loc 1 326 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.17
	movzbl	37(%rax), %eax	# PL_op.17_57->op_private, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	andl	$16, %eax	#, D.18093
	testl	%eax, %eax	# D.18093
	je	.L13	#,
	.loc 1 327 0
	movq	$.LC3, -336(%rbp)	#, mode
	jmp	.L14	#
.L13:
	.loc 1 328 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.18
	movzbl	37(%rax), %eax	# PL_op.18_62->op_private, D.18092
	movzbl	%al, %eax	# D.18092, D.18093
	andl	$32, %eax	#, D.18093
	testl	%eax, %eax	# D.18093
	je	.L14	#,
	.loc 1 329 0
	movq	$.LC4, -336(%rbp)	#, mode
.L14:
	.loc 1 330 0
	movq	-336(%rbp), %rdx	# mode, tmp161
	movq	-312(%rbp), %rax	# tmps, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	Perl_my_popen	#
	movq	%rax, -304(%rbp)	# tmp163, fp
	.loc 1 331 0
	cmpq	$0, -304(%rbp)	#, fp
	je	.L15	#,
.LBB2:
	.loc 1 332 0
	movq	$0, -328(%rbp)	#, type
	.loc 1 333 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.19
	movq	88(%rax), %rax	# PL_curcop.19_69->cop_io, D.18094
	testq	%rax, %rax	# D.18094
	je	.L16	#,
	.loc 1 334 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.21
	movq	88(%rax), %rax	# PL_curcop.21_71->cop_io, D.18094
	movl	12(%rax), %eax	# _72->sv_flags, D.18090
	andl	$262144, %eax	#, D.18090
	testl	%eax, %eax	# D.18090
	je	.L17	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.22
	movq	88(%rax), %rax	# PL_curcop.22_75->cop_io, D.18094
	movq	(%rax), %rax	# _76->sv_any, D.18091
	movq	(%rax), %rax	# MEM[(struct XPV *)_77].xpv_pv, iftmp.20
	jmp	.L18	#
.L17:
	.loc 1 334 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.23
	movq	88(%rax), %rax	# PL_curcop.23_79->cop_io, D.18094
	movq	%rax, %rdi	# D.18094,
	call	Perl_sv_2pv_nolen	#
.L18:
	.loc 1 334 0 discriminator 3
	movq	%rax, -328(%rbp)	# iftmp.20, type
.L16:
	.loc 1 336 0 is_stmt 1
	cmpq	$0, -328(%rbp)	#, type
	je	.L19	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# type, tmp164
	movzbl	(%rax), %eax	# *type_7, D.18095
	testb	%al, %al	# D.18095
	je	.L19	#,
	.loc 1 337 0 is_stmt 1
	movq	-328(%rbp), %rdx	# type, tmp165
	movq	-336(%rbp), %rcx	# mode, tmp166
	movq	-304(%rbp), %rax	# fp, tmp167
	movq	%rcx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	PerlIO_apply_layers	#
.L19:
	.loc 1 339 0
	cmpl	$128, -348(%rbp)	#, gimme
	jne	.L20	#,
.LBB3:
	.loc 1 341 0
	nop
.L21:
	.loc 1 341 0 is_stmt 0 discriminator 1
	leaq	-288(%rbp), %rcx	#, tmp168
	movq	-304(%rbp), %rax	# fp, tmp169
	movl	$256, %edx	#,
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	Perl_PerlIO_read	#
	testq	%rax, %rax	# D.18096
	jg	.L21	#,
.LBE3:
	jmp	.L22	#
.L20:
	.loc 1 345 0 is_stmt 1
	cmpl	$0, -348(%rbp)	#, gimme
	jne	.L23	#,
	.loc 1 346 0
	call	Perl_push_scope	#
	.loc 1 347 0
	movl	$PL_rs, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 348 0
	movq	$PL_sv_undef, PL_rs(%rip)	#, PL_rs
	.loc 1 349 0
	movq	-320(%rbp), %rax	# targ, tmp170
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	Perl_sv_setpv	#
	.loc 1 350 0
	nop
.L24:
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# targ, tmp171
	movq	(%rax), %rax	# targ_20->sv_any, D.18091
	movq	8(%rax), %rax	# MEM[(struct XPV *)_85].xpv_cur, D.18088
	movl	%eax, %edx	# D.18088, D.18093
	movq	-304(%rbp), %rcx	# fp, tmp172
	movq	-320(%rbp), %rax	# targ, tmp173
	movq	%rcx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	Perl_sv_gets	#
	testq	%rax, %rax	# D.18097
	jne	.L24	#,
	.loc 1 353 0 is_stmt 1
	call	Perl_pop_scope	#
.LBB4:
	.loc 1 354 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.24
	movq	%rax, %rdx	# PL_stack_max.24, PL_stack_max.25
	movq	%rbx, %rax	# sp, sp.26
	subq	%rax, %rdx	# sp.26, D.18096
	movq	%rdx, %rax	# D.18096, D.18096
	cmpq	$7, %rax	#, D.18096
	jg	.L25	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L25:
	.loc 1 354 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-320(%rbp), %rax	# targ, tmp174
	movq	%rax, (%rbx)	# tmp174, *sp_94
.LBE4:
	.loc 1 355 0 is_stmt 1 discriminator 2
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.27
	testb	%al, %al	# PL_tainting.27
	je	.L22	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# targ, tmp175
	movq	%rax, %rdi	# tmp175,
	call	Perl_sv_taint	#
	jmp	.L22	#
.L23:
.LBB5:
	.loc 1 361 0 is_stmt 1
	movl	$79, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -296(%rbp)	# tmp176, sv
	.loc 1 362 0
	movq	-304(%rbp), %rcx	# fp, tmp177
	movq	-296(%rbp), %rax	# sv, tmp178
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	Perl_sv_gets	#
	testq	%rax, %rax	# D.18097
	jne	.L27	#,
	.loc 1 363 0
	movq	-296(%rbp), %rax	# sv, tmp179
	movq	%rax, %rdi	# tmp179,
	call	Perl_sv_free	#
	.loc 1 364 0
	jmp	.L22	#
.L27:
.LBB6:
	.loc 1 366 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.28
	movq	%rax, %rdx	# PL_stack_max.28, PL_stack_max.29
	movq	%rbx, %rax	# sp, sp.30
	subq	%rax, %rdx	# sp.30, D.18096
	movq	%rdx, %rax	# D.18096, D.18096
	cmpq	$7, %rax	#, D.18096
	jg	.L28	#,
	.loc 1 366 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L28:
	.loc 1 366 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-296(%rbp), %rax	# sv, tmp180
	movq	%rax, %rdi	# tmp180,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18094, *sp_104
.LBE6:
	.loc 1 367 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# sv, tmp181
	movq	(%rax), %rax	# sv_97->sv_any, D.18091
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_107].xpv_len, D.18088
	movq	-296(%rbp), %rax	# sv, tmp182
	movq	(%rax), %rax	# sv_97->sv_any, D.18091
	movq	8(%rax), %rax	# MEM[(struct XPV *)_109].xpv_cur, D.18088
	subq	%rax, %rdx	# D.18088, D.18088
	movq	%rdx, %rax	# D.18088, D.18088
	cmpq	$20, %rax	#, D.18088
	jbe	.L29	#,
	.loc 1 368 0
	movq	-296(%rbp), %rax	# sv, tmp183
	movq	(%rax), %rax	# sv_97->sv_any, D.18091
	movq	-296(%rbp), %rdx	# sv, tmp184
	movq	(%rdx), %rdx	# sv_97->sv_any, D.18091
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_113].xpv_cur, D.18088
	addq	$1, %rdx	#, D.18088
	movq	%rdx, 16(%rax)	# D.18088, MEM[(struct XPV *)_112].xpv_len
	.loc 1 369 0
	movq	-296(%rbp), %rax	# sv, tmp185
	movq	(%rax), %r12	# sv_97->sv_any, D.18091
	movq	-296(%rbp), %rax	# sv, tmp186
	movq	(%rax), %rax	# sv_97->sv_any, D.18091
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_117].xpv_len, D.18088
	movq	-296(%rbp), %rax	# sv, tmp187
	movq	(%rax), %rax	# sv_97->sv_any, D.18091
	movq	(%rax), %rax	# MEM[(struct XPV *)_119].xpv_pv, D.18097
	movq	%rdx, %rsi	# D.18088,
	movq	%rax, %rdi	# D.18097,
	call	Perl_safesysrealloc	#
	movq	%rax, (%r12)	# D.18091, MEM[(struct XPV *)_116].xpv_pv
.L29:
	.loc 1 371 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.31
	testb	%al, %al	# PL_tainting.31
	je	.L30	#,
	.loc 1 371 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# sv, tmp188
	movq	%rax, %rdi	# tmp188,
	call	Perl_sv_taint	#
	.loc 1 372 0 is_stmt 1 discriminator 1
	jmp	.L23	#
.L30:
	.loc 1 372 0 is_stmt 0
	jmp	.L23	#
.L22:
.LBE5:
.LBB7:
	.loc 1 374 0 is_stmt 1
	movq	-304(%rbp), %rax	# fp, tmp189
	movq	%rax, %rdi	# tmp189,
	call	Perl_my_pclose	#
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.32, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.33
	cmpl	$-1, %eax	#, PL_statusvalue.33
	je	.L31	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.34
	movzwl	%ax, %eax	# PL_statusvalue.34, PL_statusvalue.35
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.35, PL_statusvalue
.L31:
.LBE7:
	.loc 1 375 0 is_stmt 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.LBE2:
	jmp	.L32	#
.L15:
.LBB8:
	.loc 1 378 0
	movl	$-1, PL_statusvalue(%rip)	#, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.36
	cmpl	$-1, %eax	#, PL_statusvalue.36
	je	.L33	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.37
	movzwl	%ax, %eax	# PL_statusvalue.37, PL_statusvalue.38
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.38, PL_statusvalue
.L33:
.LBE8:
	.loc 1 379 0 is_stmt 1
	cmpl	$0, -348(%rbp)	#, gimme
	jne	.L32	#,
	.loc 1 380 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_130
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.39
	movq	(%rax), %rax	# PL_op.39_131->op_next, D.18087
	jmp	.L35	#
.L32:
	.loc 1 383 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.40
	movq	(%rax), %rax	# PL_op.40_133->op_next, D.18087
.L35:
	.loc 1 384 0
	movq	-24(%rbp), %rcx	# D.18098, tmp192
	xorq	%fs:40, %rcx	#, tmp192
	je	.L36	#,
	call	__stack_chk_fail	#
.L36:
	addq	$336, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_pp_backtick, .-Perl_pp_backtick
	.section	.rodata
.LC6:
	.string	"glob"
.LC7:
	.string	""
	.string	""
	.text
	.globl	Perl_pp_glob
	.type	Perl_pp_glob, @function
Perl_pp_glob:
.LFB4:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
.LBB9:
	.loc 1 389 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	subq	$8, %rbx	#, sp
.LBB10:
	movq	PL_op(%rip), %rax	# PL_op, PL_op.42
	movzbl	36(%rax), %eax	# PL_op.42_5->op_flags, D.18107
	movzbl	%al, %eax	# D.18107, D.18108
	andl	$64, %eax	#, D.18108
	testl	%eax, %eax	# D.18108
	je	.L38	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.43
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.43_9, iftmp.41
	jmp	.L39	#
.L38:
	.loc 1 389 0 discriminator 2
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.44
	movq	PL_op(%rip), %rax	# PL_op, PL_op.45
	movq	24(%rax), %rax	# PL_op.45_13->op_targ, D.18109
	salq	$3, %rax	#, D.18109
	addq	%rdx, %rax	# PL_curpad.44, D.18110
	movq	(%rax), %rax	# *_16, iftmp.41
.L39:
	.loc 1 389 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.41, targ
.LBB11:
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.46
	testq	%rax, %rax	# PL_amagic_generation.46
	je	.L40	#,
.LBB12:
	.loc 1 389 0 discriminator 1
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_19 + -8B], tmp88
	movq	%rax, -40(%rbp)	# tmp88, arg
.L41:
	movq	-40(%rbp), %rax	# arg, tmp89
	movl	12(%rax), %eax	# arg_21->sv_flags, D.18111
	andl	$268435456, %eax	#, D.18111
	testl	%eax, %eax	# D.18111
	je	.L40	#,
	movq	-40(%rbp), %rax	# arg, tmp90
	movl	$9, %ecx	#,
	movl	$63, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmp91, tmpsv
	cmpq	$0, -32(%rbp)	#, tmpsv
	je	.L40	#,
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	subq	$8, %rbx	#, sp
.LBB13:
	movq	-32(%rbp), %rcx	# tmpsv, tmp92
	movq	-48(%rbp), %rax	# targ, tmp93
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_setsv_flags	#
.LBB14:
	movq	-48(%rbp), %rax	# targ, tmp94
	movl	12(%rax), %eax	# targ_18->sv_flags, D.18111
	andl	$16384, %eax	#, D.18111
	testl	%eax, %eax	# D.18111
	je	.L42	#,
	movq	-48(%rbp), %rax	# targ, tmp95
	movq	%rax, %rdi	# tmp95,
	call	Perl_mg_set	#
.L42:
	.loc 1 389 0 discriminator 2
	movq	-48(%rbp), %rax	# targ, tmp96
	movq	%rax, (%rbx)	# tmp96, *sp_26
.LBE14:
.LBE13:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.47
	movq	(%rax), %rax	# PL_op.47_30->op_next, D.18106
	jmp	.L43	#
.L40:
.LBE12:
.LBE11:
.LBE10:
.LBE9:
	.loc 1 395 0 is_stmt 1
	call	Perl_push_scope	#
	.loc 1 398 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.48
	testb	%al, %al	# PL_tainting.48
	je	.L44	#,
	.loc 1 403 0
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 404 0
	movl	$.LC6, %esi	#,
	movl	$PL_no_security, %edi	#,
	call	Perl_taint_proper	#
.L44:
	.loc 1 408 0
	movl	$PL_last_in_gv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 409 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.49
	leaq	-8(%rax), %rdx	#, PL_stack_sp.51
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.51, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.50_34, PL_last_in_gv.52
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.52, PL_last_in_gv
	.loc 1 411 0
	movl	$PL_rs, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 412 0
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18112,
	call	Perl_sv_2mortal	#
	movq	%rax, PL_rs(%rip)	# PL_rs.53, PL_rs
	.loc 1 419 0
	call	Perl_do_readline	#
	movq	%rax, -24(%rbp)	# tmp97, result
	.loc 1 420 0
	call	Perl_pop_scope	#
	.loc 1 421 0
	movq	-24(%rbp), %rax	# result, D.18106
.L43:
	.loc 1 422 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_pp_glob, .-Perl_pp_glob
	.globl	Perl_pp_rcatline
	.type	Perl_pp_rcatline, @function
Perl_pp_rcatline:
.LFB5:
	.loc 1 425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 426 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.54
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.54_1].op_sv, PL_last_in_gv.55
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.55, PL_last_in_gv
	.loc 1 427 0
	call	Perl_do_readline	#
	.loc 1 428 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_pp_rcatline, .-Perl_pp_rcatline
	.section	.rodata
.LC8:
	.string	"\t...caught"
.LC9:
	.string	"Warning: something's wrong"
.LC10:
	.string	"%_"
	.text
	.globl	Perl_pp_warn
	.type	Perl_pp_warn, @function
Perl_pp_warn:
.LFB6:
	.loc 1 431 0
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
	.loc 1 432 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.56
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.57
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.59
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.59, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.58_11, D.18116
	cltq
	salq	$3, %rax	#, D.18117
	leaq	(%rcx,%rax), %r12	#, mark
	.loc 1 436 0
	movq	%rbx, %rdx	# sp, sp.60
	movq	%r12, %rax	# mark, mark.61
	subq	%rax, %rdx	# mark.61, D.18118
	movq	%rdx, %rax	# D.18118, D.18118
	subq	$8, %rax	#, D.18119
	cmpq	$7, %rax	#, D.18119
	jbe	.L48	#,
.LBB15:
	.loc 1 437 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.62
	movq	PL_op(%rip), %rax	# PL_op, PL_op.63
	movq	24(%rax), %rax	# PL_op.63_23->op_targ, D.18117
	salq	$3, %rax	#, D.18117
	addq	%rdx, %rax	# PL_curpad.62, D.18120
	movq	(%rax), %rax	# *_26, tmp109
	movq	%rax, -32(%rbp)	# tmp109, targ
	.loc 1 438 0
	movq	-32(%rbp), %rax	# targ, tmp110
	movq	%rbx, %rcx	# sp,
	movq	%r12, %rdx	# mark,
	movl	$PL_sv_no, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	Perl_do_join	#
	.loc 1 439 0
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, -48(%rbp)	# tmp111, tmpsv
	.loc 1 440 0
	leaq	8(%r12), %rbx	#, sp
.LBE15:
	jmp	.L49	#
.L48:
	.loc 1 443 0
	movq	(%rbx), %rax	# *sp_8, tmp112
	movq	%rax, -48(%rbp)	# tmp112, tmpsv
.L49:
	.loc 1 445 0
	movq	-48(%rbp), %rax	# tmpsv, tmp113
	movl	12(%rax), %eax	# tmpsv_2->sv_flags, D.18121
	andl	$262144, %eax	#, D.18121
	testl	%eax, %eax	# D.18121
	je	.L50	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tmpsv, tmp114
	movq	(%rax), %rax	# tmpsv_2->sv_any, D.18122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_33].xpv_cur, len.65
	movq	%rax, -56(%rbp)	# len.65, len
	movq	-48(%rbp), %rax	# tmpsv, tmp115
	movq	(%rax), %rax	# tmpsv_2->sv_any, D.18122
	movq	(%rax), %rax	# MEM[(struct XPV *)_35].xpv_pv, iftmp.64
	jmp	.L51	#
.L50:
	.loc 1 445 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp116
	movq	-48(%rbp), %rax	# tmpsv, tmp117
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	Perl_sv_2pv_flags	#
.L51:
	.loc 1 445 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.64, tmps
	.loc 1 446 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, tmps
	je	.L52	#,
	.loc 1 446 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# len, len.66
	testq	%rax, %rax	# len.66
	jne	.L53	#,
.L52:
	.loc 1 446 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.67
	testq	%rax, %rax	# PL_errgv.67
	je	.L53	#,
.LBB16:
	.loc 1 447 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.68
	movq	(%rax), %rax	# PL_errgv.68_41->sv_any, D.18123
	movq	56(%rax), %rax	# _42->xgv_gp, D.18124
	movq	(%rax), %rax	# _43->gp_sv, tmp118
	movq	%rax, -24(%rbp)	# tmp118, error
	.loc 1 448 0
	movq	-24(%rbp), %rax	# error, tmp119
	movl	12(%rax), %eax	# error_44->sv_flags, D.18121
	movzbl	%al, %eax	# D.18121, D.18121
	cmpl	$3, %eax	#, D.18121
	ja	.L54	#,
	.loc 1 448 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# error, tmp120
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.18125
	je	.L56	#,
.L54:
	.loc 1 448 0 discriminator 1
	nop
.L56:
	.loc 1 449 0 is_stmt 1
	movq	-24(%rbp), %rax	# error, tmp121
	movl	12(%rax), %eax	# error_44->sv_flags, D.18121
	andl	$262144, %eax	#, D.18121
	testl	%eax, %eax	# D.18121
	je	.L57	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# error, tmp122
	movq	(%rax), %rax	# error_44->sv_any, D.18122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_52].xpv_cur, D.18117
	testq	%rax, %rax	# D.18117
	je	.L57	#,
	.loc 1 450 0 is_stmt 1
	movq	-24(%rbp), %rax	# error, tmp123
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	Perl_sv_catpv	#
.L57:
	.loc 1 451 0
	movq	-24(%rbp), %rax	# error, tmp124
	movq	%rax, -48(%rbp)	# tmp124, tmpsv
	.loc 1 452 0
	movq	-48(%rbp), %rax	# tmpsv, tmp125
	movl	12(%rax), %eax	# tmpsv_54->sv_flags, D.18121
	andl	$262144, %eax	#, D.18121
	testl	%eax, %eax	# D.18121
	je	.L58	#,
	.loc 1 452 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tmpsv, tmp126
	movq	(%rax), %rax	# tmpsv_54->sv_any, D.18122
	movq	8(%rax), %rax	# MEM[(struct XPV *)_57].xpv_cur, len.71
	movq	%rax, -56(%rbp)	# len.71, len
	movq	-48(%rbp), %rax	# tmpsv, tmp127
	movq	(%rax), %rax	# tmpsv_54->sv_any, D.18122
	movq	(%rax), %rax	# MEM[(struct XPV *)_59].xpv_pv, iftmp.70
	jmp	.L59	#
.L58:
	.loc 1 452 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp128
	movq	-48(%rbp), %rax	# tmpsv, tmp129
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	Perl_sv_2pv_flags	#
.L59:
	.loc 1 452 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.70, tmps
.L53:
.LBE16:
	.loc 1 454 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, tmps
	je	.L60	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# len, len.72
	testq	%rax, %rax	# len.72
	jne	.L61	#,
.L60:
	.loc 1 455 0 is_stmt 1
	movl	$26, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18126,
	call	Perl_sv_2mortal	#
	movq	%rax, -48(%rbp)	# tmp130, tmpsv
.L61:
	.loc 1 457 0
	movq	-48(%rbp), %rax	# tmpsv, tmp131
	movq	%rax, %rsi	# tmp131,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 458 0
	movq	$PL_sv_yes, (%rbx)	#, *sp_1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.73
	movq	(%rax), %rax	# PL_op.73_66->op_next, D.18127
	.loc 1 459 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_pp_warn, .-Perl_pp_warn
	.section	.rodata
.LC11:
	.string	"PROPAGATE"
.LC12:
	.string	"\t...propagated"
.LC13:
	.string	"Died"
	.text
	.globl	Perl_pp_die
	.type	Perl_pp_die, @function
Perl_pp_die:
.LFB7:
	.loc 1 462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 463 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.74
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.75
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.77
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.77, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.76_20, D.18132
	cltq
	salq	$3, %rax	#, D.18133
	leaq	(%rcx,%rax), %r12	#, mark
	.loc 1 467 0
	movb	$0, -89(%rbp)	#, multiarg
	.loc 1 471 0
	movq	%rbx, %rdx	# sp, sp.78
	movq	%r12, %rax	# mark, mark.79
	subq	%rax, %rdx	# mark.79, D.18134
	movq	%rdx, %rax	# D.18134, D.18134
	subq	$8, %rax	#, D.18135
	cmpq	$7, %rax	#, D.18135
	jbe	.L64	#,
.LBB17:
	.loc 1 472 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.80
	movq	PL_op(%rip), %rax	# PL_op, PL_op.81
	movq	24(%rax), %rax	# PL_op.81_33->op_targ, D.18133
	salq	$3, %rax	#, D.18133
	addq	%rdx, %rax	# PL_curpad.80, D.18136
	movq	(%rax), %rax	# *_36, tmp169
	movq	%rax, -64(%rbp)	# tmp169, targ
	.loc 1 473 0
	movq	-64(%rbp), %rax	# targ, tmp170
	movq	%rbx, %rcx	# sp,
	movq	%r12, %rdx	# mark,
	movl	$PL_sv_no, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	Perl_do_join	#
	.loc 1 474 0
	movq	-64(%rbp), %rax	# targ, tmp171
	movq	%rax, -72(%rbp)	# tmp171, tmpsv
	.loc 1 475 0
	movq	-72(%rbp), %rax	# tmpsv, tmp172
	movl	12(%rax), %eax	# tmpsv_38->sv_flags, D.18137
	andl	$262144, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	je	.L65	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# tmpsv, tmp173
	movq	(%rax), %rax	# tmpsv_38->sv_any, D.18138
	movq	8(%rax), %rax	# MEM[(struct XPV *)_41].xpv_cur, len.83
	movq	%rax, -88(%rbp)	# len.83, len
	movq	-72(%rbp), %rax	# tmpsv, tmp174
	movq	(%rax), %rax	# tmpsv_38->sv_any, D.18138
	movq	(%rax), %rax	# MEM[(struct XPV *)_43].xpv_pv, iftmp.82
	jmp	.L66	#
.L65:
	.loc 1 475 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp175
	movq	-72(%rbp), %rax	# tmpsv, tmp176
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp176,
	call	Perl_sv_2pv_flags	#
.L66:
	.loc 1 475 0 discriminator 1
	movq	%rax, -80(%rbp)	# iftmp.82, tmps
	.loc 1 476 0 is_stmt 1 discriminator 1
	movb	$1, -89(%rbp)	#, multiarg
	.loc 1 477 0 discriminator 1
	leaq	8(%r12), %rbx	#, sp
.LBE17:
	jmp	.L67	#
.L64:
	.loc 1 480 0
	movq	(%rbx), %rax	# *sp_17, tmp177
	movq	%rax, -72(%rbp)	# tmp177, tmpsv
	.loc 1 481 0
	movq	-72(%rbp), %rax	# tmpsv, tmp178
	movl	12(%rax), %eax	# tmpsv_49->sv_flags, D.18137
	andl	$524288, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	jne	.L68	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# tmpsv, tmp179
	movl	12(%rax), %eax	# tmpsv_49->sv_flags, D.18137
	andl	$262144, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	je	.L69	#,
	movq	-72(%rbp), %rax	# tmpsv, tmp180
	movq	(%rax), %rax	# tmpsv_49->sv_any, D.18138
	movq	8(%rax), %rax	# MEM[(struct XPV *)_54].xpv_cur, len.86
	movq	%rax, -88(%rbp)	# len.86, len
	movq	-72(%rbp), %rax	# tmpsv, tmp181
	movq	(%rax), %rax	# tmpsv_49->sv_any, D.18138
	movq	(%rax), %rax	# MEM[(struct XPV *)_56].xpv_pv, iftmp.85
	jmp	.L71	#
.L69:
	.loc 1 481 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp182
	movq	-72(%rbp), %rax	# tmpsv, tmp183
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp182,
	movq	%rax, %rdi	# tmp183,
	call	Perl_sv_2pv_flags	#
	jmp	.L71	#
.L68:
	movl	$0, %eax	#, iftmp.84
.L71:
	.loc 1 481 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.84, tmps
.L67:
	.loc 1 483 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, tmps
	je	.L72	#,
	.loc 1 483 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# len, len.87
	testq	%rax, %rax	# len.87
	jne	.L73	#,
.L72:
.LBB18:
	.loc 1 484 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.88
	movq	(%rax), %rax	# PL_errgv.88_63->sv_any, D.18139
	movq	56(%rax), %rax	# _64->xgv_gp, D.18140
	movq	(%rax), %rax	# _65->gp_sv, tmp184
	movq	%rax, -56(%rbp)	# tmp184, error
	.loc 1 485 0
	movq	-56(%rbp), %rax	# error, tmp185
	movl	12(%rax), %eax	# error_66->sv_flags, D.18137
	movzbl	%al, %eax	# D.18137, D.18137
	cmpl	$3, %eax	#, D.18137
	ja	.L74	#,
	.loc 1 485 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# error, tmp186
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp186,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.18141
	je	.L76	#,
.L74:
	.loc 1 485 0 discriminator 1
	nop
.L76:
	.loc 1 486 0 is_stmt 1
	cmpb	$0, -89(%rbp)	#, multiarg
	je	.L77	#,
	.loc 1 486 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# error, tmp187
	movl	12(%rax), %eax	# error_66->sv_flags, D.18137
	andl	$524288, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	setne	%al	#, iftmp.90
	jmp	.L78	#
.L77:
	.loc 1 486 0 discriminator 2
	movq	-72(%rbp), %rax	# tmpsv, tmp188
	movl	12(%rax), %eax	# tmpsv_5->sv_flags, D.18137
	andl	$524288, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	setne	%al	#, iftmp.90
.L78:
	.loc 1 486 0 discriminator 3
	testb	%al, %al	# iftmp.90
	je	.L79	#,
	.loc 1 487 0 is_stmt 1
	cmpb	$0, -89(%rbp)	#, multiarg
	jne	.L80	#,
	.loc 1 488 0
	movq	-56(%rbp), %rax	# error, tmp189
	cmpq	-72(%rbp), %rax	# tmpsv, tmp189
	je	.L82	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rcx	# tmpsv, tmp190
	movq	-56(%rbp), %rax	# error, tmp191
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp191,
	call	Perl_sv_setsv_flags	#
	jmp	.L82	#
.L80:
	.loc 1 489 0 is_stmt 1
	movq	-56(%rbp), %rax	# error, tmp192
	movq	%rax, %rdi	# tmp192,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.18132
	je	.L82	#,
.LBB19:
	.loc 1 490 0
	movq	-56(%rbp), %rax	# error, tmp193
	movq	(%rax), %rax	# error_66->sv_any, D.18138
	movq	(%rax), %rax	# MEM[(struct XRV *)_79].xrv_rv, D.18142
	movq	(%rax), %rax	# _80->sv_any, D.18138
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_81].xmg_stash, tmp194
	movq	%rax, -48(%rbp)	# tmp194, stash
	.loc 1 491 0
	movq	-48(%rbp), %rax	# stash, tmp195
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -40(%rbp)	# tmp196, gv
	.loc 1 492 0
	cmpq	$0, -40(%rbp)	#, gv
	je	.L82	#,
.LBB20:
	.loc 1 493 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.92
	movq	56(%rax), %rax	# PL_curcop.92_84->cop_filegv, D.18143
	testq	%rax, %rax	# D.18143
	je	.L83	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.93
	movq	56(%rax), %rax	# PL_curcop.93_86->cop_filegv, D.18143
	movq	(%rax), %rax	# _87->sv_any, D.18139
	movq	56(%rax), %rax	# _88->xgv_gp, D.18140
	movq	(%rax), %rax	# _89->gp_sv, D.18142
	testq	%rax, %rax	# D.18142
	je	.L83	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.95
	movq	56(%rax), %rax	# PL_curcop.95_91->cop_filegv, D.18143
	testq	%rax, %rax	# D.18143
	je	.L84	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.96
	movq	56(%rax), %rax	# PL_curcop.96_93->cop_filegv, D.18143
	movq	(%rax), %rax	# _94->sv_any, D.18139
	movq	56(%rax), %rax	# _95->xgv_gp, D.18140
	movq	(%rax), %rax	# _96->gp_sv, iftmp.94
	jmp	.L85	#
.L84:
	.loc 1 493 0 discriminator 2
	movl	$0, %eax	#, iftmp.94
.L85:
	.loc 1 493 0 discriminator 3
	movq	(%rax), %rax	# iftmp.94_14->sv_any, D.18138
	movq	(%rax), %rax	# MEM[(struct XPV *)_99].xpv_pv, iftmp.91
	jmp	.L86	#
.L83:
	.loc 1 493 0 discriminator 2
	movl	$0, %eax	#, iftmp.91
.L86:
	.loc 1 493 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.91,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.18142,
	call	Perl_sv_2mortal	#
	movq	%rax, -32(%rbp)	# tmp197, file
	.loc 1 494 0 is_stmt 1 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.97
	movl	72(%rax), %eax	# PL_curcop.97_104->cop_line, D.18137
	movl	%eax, %eax	# D.18137, D.18133
	movq	%rax, %rdi	# D.18133,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18142,
	call	Perl_sv_2mortal	#
	movq	%rax, -24(%rbp)	# tmp198, line
	.loc 1 495 0 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.98
	movq	%rax, %rdx	# PL_stack_max.98, PL_stack_max.99
	movq	%rbx, %rax	# sp, sp.100
	subq	%rax, %rdx	# sp.100, D.18134
	movq	%rdx, %rax	# D.18134, D.18134
	cmpq	$23, %rax	#, D.18134
	jg	.L87	#,
	.loc 1 495 0 is_stmt 0 discriminator 1
	movl	$3, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L87:
.LBB21:
	.loc 1 496 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.101
	addq	$4, %rax	#, PL_markstack_ptr.102
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.102, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.103
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.104
	cmpq	%rax, %rdx	# PL_markstack_max.104, PL_markstack_ptr.103
	jne	.L88	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L88:
	.loc 1 496 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.105
	movq	%rbx, %rcx	# sp, sp.106
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.107
	subq	%rdx, %rcx	# PL_stack_base.108, D.18134
	movq	%rcx, %rdx	# D.18134, D.18134
	sarq	$3, %rdx	#, tmp199
	movl	%edx, (%rax)	# D.18132, *PL_markstack_ptr.105_118
.LBE21:
	.loc 1 497 0 is_stmt 1 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# error, tmp200
	movq	%rax, (%rbx)	# tmp200, *sp_126
	.loc 1 498 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# file, tmp201
	movq	%rax, (%rbx)	# tmp201, *sp_127
	.loc 1 499 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# line, tmp202
	movq	%rax, (%rbx)	# tmp202, *sp_128
	.loc 1 500 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 501 0 discriminator 2
	movq	-40(%rbp), %rax	# gv, tmp203
	movq	(%rax), %rax	# gv_83->sv_any, D.18139
	movq	56(%rax), %rax	# _129->xgv_gp, D.18140
	movq	56(%rax), %rax	# _130->gp_cv, D.18145
	movl	$20, %esi	#,
	movq	%rax, %rdi	# D.18145,
	call	Perl_call_sv	#
	.loc 1 503 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.109
	leaq	-8(%rax), %rdx	#, PL_stack_sp.111
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.111, PL_stack_sp
	movq	(%rax), %rcx	# *PL_stack_sp.110_133, D.18142
	movq	-56(%rbp), %rax	# error, tmp204
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.18142,
	movq	%rax, %rdi	# tmp204,
	call	Perl_sv_setsv_flags	#
.L82:
.LBE20:
.LBE19:
	.loc 1 506 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L95	#
.L79:
	.loc 1 509 0
	movq	-56(%rbp), %rax	# error, tmp205
	movl	12(%rax), %eax	# error_66->sv_flags, D.18137
	andl	$262144, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	je	.L90	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# error, tmp206
	movq	(%rax), %rax	# error_66->sv_any, D.18138
	movq	8(%rax), %rax	# MEM[(struct XPV *)_139].xpv_cur, D.18133
	testq	%rax, %rax	# D.18133
	je	.L90	#,
	.loc 1 510 0 is_stmt 1
	movq	-56(%rbp), %rax	# error, tmp207
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	Perl_sv_catpv	#
.L90:
	.loc 1 511 0
	movq	-56(%rbp), %rax	# error, tmp208
	movq	%rax, -72(%rbp)	# tmp208, tmpsv
	.loc 1 512 0
	movq	-72(%rbp), %rax	# tmpsv, tmp209
	movl	12(%rax), %eax	# tmpsv_141->sv_flags, D.18137
	andl	$262144, %eax	#, D.18137
	testl	%eax, %eax	# D.18137
	je	.L91	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# tmpsv, tmp210
	movq	(%rax), %rax	# tmpsv_141->sv_any, D.18138
	movq	8(%rax), %rax	# MEM[(struct XPV *)_144].xpv_cur, len.113
	movq	%rax, -88(%rbp)	# len.113, len
	movq	-72(%rbp), %rax	# tmpsv, tmp211
	movq	(%rax), %rax	# tmpsv_141->sv_any, D.18138
	movq	(%rax), %rax	# MEM[(struct XPV *)_146].xpv_pv, iftmp.112
	jmp	.L92	#
.L91:
	.loc 1 512 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp212
	movq	-72(%rbp), %rax	# tmpsv, tmp213
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	Perl_sv_2pv_flags	#
.L92:
	.loc 1 512 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.112, tmps
.L73:
.LBE18:
	.loc 1 515 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, tmps
	je	.L93	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# len, len.114
	testq	%rax, %rax	# len.114
	jne	.L94	#,
.L93:
	.loc 1 516 0 is_stmt 1
	movl	$4, %esi	#,
	movl	$.LC13, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18142,
	call	Perl_sv_2mortal	#
	movq	%rax, -72(%rbp)	# tmp214, tmpsv
.L94:
	.loc 1 518 0
	movq	-72(%rbp), %rax	# tmpsv, tmp215
	movq	%rax, %rsi	# tmp215,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
.L95:
	.loc 1 519 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_pp_die, .-Perl_pp_die
	.section	.rodata
.LC14:
	.string	"filehandle"
.LC15:
	.string	"OPEN"
	.text
	.globl	Perl_pp_open
	.type	Perl_pp_open, @function
Perl_pp_open:
.LFB8:
	.loc 1 524 0
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
	.loc 1 525 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 526 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.115
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.116
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.118
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.118, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.117_11, D.18150
	cltq
	salq	$3, %rax	#, D.18151
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.119
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.120
	subq	%rax, %rdx	# PL_stack_base.121, D.18152
	movq	%rdx, %rax	# D.18152, D.18152
	sarq	$3, %rax	#, tmp144
	movl	%eax, -92(%rbp)	# D.18152, origmark
	.loc 1 527 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.122
	movq	PL_op(%rip), %rax	# PL_op, PL_op.123
	movq	24(%rax), %rax	# PL_op.123_24->op_targ, D.18151
	salq	$3, %rax	#, D.18151
	addq	%rdx, %rax	# PL_curpad.122, D.18153
	movq	(%rax), %rax	# *_27, tmp145
	movq	%rax, -72(%rbp)	# tmp145, targ
	.loc 1 536 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_29, tmp146
	movq	%rax, -64(%rbp)	# tmp146, gv
	.loc 1 537 0
	movq	-64(%rbp), %rax	# gv, tmp147
	movl	12(%rax), %eax	# gv_30->sv_flags, D.18154
	movzbl	%al, %eax	# D.18154, D.18154
	cmpl	$13, %eax	#, D.18154
	je	.L97	#,
	.loc 1 538 0
	movl	$.LC14, %esi	#,
	movl	$PL_no_usym, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L115	#
.L97:
	.loc 1 539 0
	movq	-64(%rbp), %rax	# gv, tmp148
	movq	(%rax), %rax	# gv_30->sv_any, D.18155
	movq	56(%rax), %rax	# _34->xgv_gp, D.18156
	movq	16(%rax), %rax	# _35->gp_io, tmp149
	movq	%rax, -56(%rbp)	# tmp149, io
	cmpq	$0, -56(%rbp)	#, io
	je	.L99	#,
	.loc 1 540 0
	movq	-64(%rbp), %rax	# gv, tmp150
	movq	(%rax), %rax	# gv_30->sv_any, D.18155
	movq	56(%rax), %rax	# _37->xgv_gp, D.18156
	movq	16(%rax), %rax	# _38->gp_io, D.18157
	movq	(%rax), %rax	# _39->sv_any, D.18158
	movq	-64(%rbp), %rdx	# gv, tmp151
	movq	(%rdx), %rdx	# gv_30->sv_any, D.18155
	movq	56(%rdx), %rdx	# _41->xgv_gp, D.18156
	movq	16(%rdx), %rdx	# _42->gp_io, D.18157
	movq	(%rdx), %rdx	# _43->sv_any, D.18158
	movzbl	163(%rdx), %edx	# _44->xio_flags, D.18159
	andl	$-17, %edx	#, D.18159
	movb	%dl, 163(%rax)	# D.18159, _40->xio_flags
.L99:
	.loc 1 542 0
	cmpq	$0, -56(%rbp)	#, io
	je	.L100	#,
	.loc 1 542 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# io, tmp152
	movl	12(%rax), %eax	# MEM[(struct SV *)io_36].sv_flags, D.18154
	andl	$32768, %eax	#, D.18154
	testl	%eax, %eax	# D.18154
	je	.L101	#,
	movq	-56(%rbp), %rax	# io, tmp153
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	Perl_mg_find	#
	jmp	.L102	#
.L101:
	.loc 1 542 0 discriminator 2
	movl	$0, %eax	#, iftmp.124
.L102:
	.loc 1 542 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.124, mg
	cmpq	$0, -48(%rbp)	#, mg
	je	.L100	#,
	.loc 1 545 0 is_stmt 1
	movq	%r12, %r13	# mark, mark.125
	leaq	-8(%r13), %r12	#, mark
	movq	-48(%rbp), %rax	# mg, tmp154
	movq	24(%rax), %rax	# mg_51->mg_obj, D.18160
	testq	%rax, %rax	# D.18160
	je	.L103	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp155
	movq	24(%rax), %rax	# mg_51->mg_obj, iftmp.126
	jmp	.L104	#
.L103:
	.loc 1 545 0 discriminator 2
	movq	-56(%rbp), %rax	# io, tmp156
	movq	%rax, %rdi	# tmp156,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18160,
	call	Perl_sv_2mortal	#
.L104:
	.loc 1 545 0 discriminator 3
	movq	%rax, 0(%r13)	# iftmp.126, *mark.125_52
.LBB22:
	.loc 1 546 0 is_stmt 1 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.127
	addq	$4, %rax	#, PL_markstack_ptr.128
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.128, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.129
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.130
	cmpq	%rax, %rdx	# PL_markstack_max.130, PL_markstack_ptr.129
	jne	.L105	#,
	.loc 1 546 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L105:
	.loc 1 546 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.131
	movq	%r12, %rcx	# mark, mark.132
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.133
	subq	%rdx, %rcx	# PL_stack_base.134, D.18152
	movq	%rcx, %rdx	# D.18152, D.18152
	sarq	$3, %rdx	#, tmp157
	movl	%edx, (%rax)	# D.18150, *PL_markstack_ptr.131_62
.LBE22:
	.loc 1 547 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 548 0 discriminator 2
	call	Perl_push_scope	#
	.loc 1 549 0 discriminator 2
	movl	$0, %esi	#,
	movl	$.LC15, %edi	#,
	call	Perl_call_method	#
	.loc 1 550 0 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 551 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 552 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.135
	movq	(%rax), %rax	# PL_op.135_71->op_next, D.18149
	jmp	.L115	#
.L100:
	.loc 1 555 0
	cmpq	%rbx, %r12	# sp, mark
	jae	.L106	#,
	.loc 1 556 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_73, tmp158
	movq	%rax, -80(%rbp)	# tmp158, sv
	jmp	.L107	#
.L106:
	.loc 1 559 0
	movq	-64(%rbp), %rax	# gv, tmp159
	movq	(%rax), %rax	# gv_30->sv_any, D.18155
	movq	56(%rax), %rax	# _75->xgv_gp, D.18156
	movq	(%rax), %rax	# _76->gp_sv, tmp160
	movq	%rax, -80(%rbp)	# tmp160, sv
.L107:
	.loc 1 562 0
	movq	-80(%rbp), %rax	# sv, tmp161
	movl	12(%rax), %eax	# sv_3->sv_flags, D.18154
	andl	$262144, %eax	#, D.18154
	testl	%eax, %eax	# D.18154
	je	.L108	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp162
	movq	(%rax), %rax	# sv_3->sv_any, D.18162
	movq	8(%rax), %rax	# MEM[(struct XPV *)_80].xpv_cur, len.137
	movq	%rax, -88(%rbp)	# len.137, len
	movq	-80(%rbp), %rax	# sv, tmp163
	movq	(%rax), %rax	# sv_3->sv_any, D.18162
	movq	(%rax), %rax	# MEM[(struct XPV *)_82].xpv_pv, iftmp.136
	jmp	.L109	#
.L108:
	.loc 1 562 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp164
	movq	-80(%rbp), %rax	# sv, tmp165
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	Perl_sv_2pv_flags	#
.L109:
	.loc 1 562 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.136, tmps
	.loc 1 563 0 is_stmt 1 discriminator 3
	movq	%rbx, %rdx	# sp, sp.138
	movq	%r12, %rax	# mark, mark.139
	subq	%rax, %rdx	# mark.139, D.18152
	movq	%rdx, %rax	# D.18152, D.18152
	sarq	$3, %rax	#, tmp166
	movl	%eax, %ecx	# D.18152, D.18150
	leaq	8(%r12), %rdi	#, D.18153
	movq	-88(%rbp), %rax	# len, len.140
	movl	%eax, %edx	# len.140, D.18150
	movq	-40(%rbp), %rsi	# tmps, tmp167
	movq	-64(%rbp), %rax	# gv, tmp168
	movl	%ecx, 16(%rsp)	# D.18150,
	movq	%rdi, 8(%rsp)	# D.18153,
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp168,
	call	Perl_do_openn	#
	movb	%al, -93(%rbp)	# tmp169, ok
	.loc 1 564 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.141
	movl	-92(%rbp), %edx	# origmark, tmp170
	movslq	%edx, %rdx	# tmp170, D.18151
	salq	$3, %rdx	#, D.18151
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 565 0 discriminator 3
	cmpb	$0, -93(%rbp)	#, ok
	je	.L110	#,
.LBB23:
	.loc 1 566 0
	movl	PL_forkprocess(%rip), %eax	# PL_forkprocess, PL_forkprocess.142
	movslq	%eax, %rdx	# PL_forkprocess.142, D.18152
	movq	-72(%rbp), %rax	# targ, tmp171
	movq	%rdx, %rsi	# D.18152,
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_setiv	#
.LBB24:
	movq	-72(%rbp), %rax	# targ, tmp172
	movl	12(%rax), %eax	# targ_28->sv_flags, D.18154
	andl	$16384, %eax	#, D.18154
	testl	%eax, %eax	# D.18154
	je	.L111	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp173
	movq	%rax, %rdi	# tmp173,
	call	Perl_mg_set	#
.L111:
	.loc 1 566 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-72(%rbp), %rax	# targ, tmp174
	movq	%rax, (%rbx)	# tmp174, *sp_103
.LBE24:
.LBE23:
	jmp	.L112	#
.L110:
	.loc 1 567 0 is_stmt 1
	movl	PL_forkprocess(%rip), %eax	# PL_forkprocess, PL_forkprocess.143
	testl	%eax, %eax	# PL_forkprocess.143
	jne	.L113	#,
.LBB25:
	.loc 1 568 0
	movq	-72(%rbp), %rax	# targ, tmp175
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp175,
	call	Perl_sv_setiv	#
.LBB26:
	movq	-72(%rbp), %rax	# targ, tmp176
	movl	12(%rax), %eax	# targ_28->sv_flags, D.18154
	andl	$16384, %eax	#, D.18154
	testl	%eax, %eax	# D.18154
	je	.L114	#,
	.loc 1 568 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp177
	movq	%rax, %rdi	# tmp177,
	call	Perl_mg_set	#
.L114:
	.loc 1 568 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-72(%rbp), %rax	# targ, tmp178
	movq	%rax, (%rbx)	# tmp178, *sp_108
.LBE26:
.LBE25:
	jmp	.L112	#
.L113:
	.loc 1 570 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_110
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.144
	movq	(%rax), %rax	# PL_op.144_111->op_next, D.18149
	jmp	.L115	#
.L112:
	.loc 1 571 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.145
	movq	(%rax), %rax	# PL_op.145_113->op_next, D.18149
.L115:
	.loc 1 572 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_pp_open, .-Perl_pp_open
	.section	.rodata
.LC16:
	.string	"CLOSE"
	.text
	.globl	Perl_pp_close
	.type	Perl_pp_close, @function
Perl_pp_close:
.LFB9:
	.loc 1 575 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 576 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 581 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.146
	movzbl	37(%rax), %eax	# PL_op.146_11->op_private, D.18166
	movzbl	%al, %eax	# D.18166, D.18167
	andl	$15, %eax	#, D.18167
	testl	%eax, %eax	# D.18167
	jne	.L117	#,
	.loc 1 582 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, tmp105
	movq	%rax, -40(%rbp)	# tmp105, gv
	jmp	.L118	#
.L117:
	.loc 1 584 0
	movq	%rbx, %rax	# sp, sp.147
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.147_16, tmp106
	movq	%rax, -40(%rbp)	# tmp106, gv
.L118:
	.loc 1 586 0
	cmpq	$0, -40(%rbp)	#, gv
	je	.L119	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, gv
	je	.L120	#,
	movq	-40(%rbp), %rax	# gv, tmp107
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_4].sv_flags, D.18168
	movzbl	%al, %eax	# D.18168, D.18168
	cmpl	$13, %eax	#, D.18168
	jne	.L120	#,
	movq	-40(%rbp), %rax	# gv, tmp108
	movq	(%rax), %rax	# gv_4->sv_any, D.18169
	movq	56(%rax), %rax	# _21->xgv_gp, D.18170
	testq	%rax, %rax	# D.18170
	je	.L120	#,
	movq	-40(%rbp), %rax	# gv, tmp109
	movq	(%rax), %rax	# gv_4->sv_any, D.18169
	movq	56(%rax), %rax	# _23->xgv_gp, D.18170
	movq	16(%rax), %rax	# _24->gp_io, iftmp.148
	jmp	.L121	#
.L120:
	.loc 1 586 0 discriminator 2
	movl	$0, %eax	#, iftmp.148
.L121:
	.loc 1 586 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.148, io
	cmpq	$0, -32(%rbp)	#, io
	je	.L119	#,
	.loc 1 587 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp110
	movl	12(%rax), %eax	# MEM[(struct SV *)io_27].sv_flags, D.18168
	andl	$32768, %eax	#, D.18168
	testl	%eax, %eax	# D.18168
	je	.L122	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp111
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	Perl_mg_find	#
	jmp	.L123	#
.L122:
	.loc 1 587 0 discriminator 2
	movl	$0, %eax	#, iftmp.149
.L123:
	.loc 1 587 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.149, mg
	cmpq	$0, -24(%rbp)	#, mg
	je	.L119	#,
.LBB27:
	.loc 1 589 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.150
	addq	$4, %rax	#, PL_markstack_ptr.151
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.151, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.152
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.153
	cmpq	%rax, %rdx	# PL_markstack_max.153, PL_markstack_ptr.152
	jne	.L124	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L124:
	.loc 1 589 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.154
	movq	%rbx, %rcx	# sp, sp.155
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.156
	subq	%rdx, %rcx	# PL_stack_base.157, D.18171
	movq	%rcx, %rdx	# D.18171, D.18171
	sarq	$3, %rdx	#, tmp112
	movl	%edx, (%rax)	# D.18167, *PL_markstack_ptr.154_37
.LBE27:
.LBB28:
	.loc 1 590 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.158
	movq	%rax, %rdx	# PL_stack_max.158, PL_stack_max.159
	movq	%rbx, %rax	# sp, sp.160
	subq	%rax, %rdx	# sp.160, D.18171
	movq	%rdx, %rax	# D.18171, D.18171
	cmpq	$7, %rax	#, D.18171
	jg	.L125	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L125:
	.loc 1 590 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# mg, tmp113
	movq	24(%rax), %rax	# mg_32->mg_obj, D.18173
	testq	%rax, %rax	# D.18173
	je	.L126	#,
	.loc 1 590 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp114
	movq	24(%rax), %rax	# mg_32->mg_obj, iftmp.161
	jmp	.L127	#
.L126:
	.loc 1 590 0 discriminator 2
	movq	-32(%rbp), %rax	# io, tmp115
	movq	%rax, %rdi	# tmp115,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18173,
	call	Perl_sv_2mortal	#
.L127:
	.loc 1 590 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.161, *sp_50
.LBE28:
	.loc 1 591 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 592 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 593 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC16, %edi	#,
	call	Perl_call_method	#
	.loc 1 594 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 595 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 596 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.162
	movq	(%rax), %rax	# PL_op.162_57->op_next, D.18165
	jmp	.L128	#
.L119:
	.loc 1 598 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.163
	movq	%rax, %rdx	# PL_stack_max.163, PL_stack_max.164
	movq	%rbx, %rax	# sp, sp.165
	subq	%rax, %rdx	# sp.165, D.18171
	movq	%rdx, %rax	# D.18171, D.18171
	cmpq	$7, %rax	#, D.18171
	jg	.L129	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L129:
	.loc 1 599 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# gv, tmp116
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	Perl_do_close	#
	testb	%al, %al	# D.18174
	je	.L130	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.166
	jmp	.L131	#
.L130:
	.loc 1 599 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.166
.L131:
	.loc 1 599 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.166, *sp_64
	.loc 1 600 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.167
	movq	(%rax), %rax	# PL_op.167_68->op_next, D.18165
.L128:
	.loc 1 601 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_pp_close, .-Perl_pp_close
	.section	.rodata
.LC17:
	.string	"pipe"
	.text
	.globl	Perl_pp_pipe_op
	.type	Perl_pp_pipe_op, @function
Perl_pp_pipe_op:
.LFB10:
	.loc 1 604 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 655 0
	movl	$.LC17, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 657 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_pp_pipe_op, .-Perl_pp_pipe_op
	.section	.rodata
.LC18:
	.string	"FILENO"
	.text
	.globl	Perl_pp_fileno
	.type	Perl_pp_fileno, @function
Perl_pp_fileno:
.LFB11:
	.loc 1 660 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 661 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.168
	movq	PL_op(%rip), %rax	# PL_op, PL_op.169
	movq	24(%rax), %rax	# PL_op.169_9->op_targ, D.18179
	salq	$3, %rax	#, D.18179
	addq	%rdx, %rax	# PL_curpad.168, D.18180
	movq	(%rax), %rax	# *_12, tmp119
	movq	%rax, -56(%rbp)	# tmp119, targ
	.loc 1 667 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.170
	movzbl	37(%rax), %eax	# PL_op.170_14->op_private, D.18181
	movzbl	%al, %eax	# D.18181, D.18182
	andl	$15, %eax	#, D.18182
	testl	%eax, %eax	# D.18182
	jg	.L135	#,
	.loc 1 668 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_18
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.171
	movq	(%rax), %rax	# PL_op.171_19->op_next, D.18178
	jmp	.L136	#
.L135:
	.loc 1 669 0
	movq	%rbx, %rax	# sp, sp.172
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.172_21, tmp120
	movq	%rax, -48(%rbp)	# tmp120, gv
	.loc 1 671 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L137	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L138	#,
	movq	-48(%rbp), %rax	# gv, tmp121
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_23].sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$13, %eax	#, D.18183
	jne	.L138	#,
	movq	-48(%rbp), %rax	# gv, tmp122
	movq	(%rax), %rax	# gv_23->sv_any, D.18184
	movq	56(%rax), %rax	# _26->xgv_gp, D.18185
	testq	%rax, %rax	# D.18185
	je	.L138	#,
	movq	-48(%rbp), %rax	# gv, tmp123
	movq	(%rax), %rax	# gv_23->sv_any, D.18184
	movq	56(%rax), %rax	# _28->xgv_gp, D.18185
	movq	16(%rax), %rax	# _29->gp_io, iftmp.173
	jmp	.L139	#
.L138:
	.loc 1 671 0 discriminator 2
	movl	$0, %eax	#, iftmp.173
.L139:
	.loc 1 671 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.173, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L137	#,
	.loc 1 672 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp124
	movl	12(%rax), %eax	# MEM[(struct SV *)io_32].sv_flags, D.18183
	andl	$32768, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L140	#,
	.loc 1 672 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp125
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	Perl_mg_find	#
	jmp	.L141	#
.L140:
	.loc 1 672 0 discriminator 2
	movl	$0, %eax	#, iftmp.174
.L141:
	.loc 1 672 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.174, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L137	#,
.LBB29:
	.loc 1 674 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.175
	addq	$4, %rax	#, PL_markstack_ptr.176
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.176, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.177
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.178
	cmpq	%rax, %rdx	# PL_markstack_max.178, PL_markstack_ptr.177
	jne	.L142	#,
	.loc 1 674 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L142:
	.loc 1 674 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.179
	movq	%rbx, %rcx	# sp, sp.180
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.181
	subq	%rdx, %rcx	# PL_stack_base.182, D.18186
	movq	%rcx, %rdx	# D.18186, D.18186
	sarq	$3, %rdx	#, tmp126
	movl	%edx, (%rax)	# D.18182, *PL_markstack_ptr.179_42
.LBE29:
.LBB30:
	.loc 1 675 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.183
	movq	%rax, %rdx	# PL_stack_max.183, PL_stack_max.184
	movq	%rbx, %rax	# sp, sp.185
	subq	%rax, %rdx	# sp.185, D.18186
	movq	%rdx, %rax	# D.18186, D.18186
	cmpq	$7, %rax	#, D.18186
	jg	.L143	#,
	.loc 1 675 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L143:
	.loc 1 675 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp127
	movq	24(%rax), %rax	# mg_37->mg_obj, D.18188
	testq	%rax, %rax	# D.18188
	je	.L144	#,
	.loc 1 675 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp128
	movq	24(%rax), %rax	# mg_37->mg_obj, iftmp.186
	jmp	.L145	#
.L144:
	.loc 1 675 0 discriminator 2
	movq	-40(%rbp), %rax	# io, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18188,
	call	Perl_sv_2mortal	#
.L145:
	.loc 1 675 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.186, *sp_55
.LBE30:
	.loc 1 676 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 677 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 678 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC18, %edi	#,
	call	Perl_call_method	#
	.loc 1 679 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 680 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 681 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.187
	movq	(%rax), %rax	# PL_op.187_62->op_next, D.18178
	jmp	.L136	#
.L137:
	.loc 1 684 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L146	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L147	#,
	movq	-48(%rbp), %rax	# gv, tmp130
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_23].sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$13, %eax	#, D.18183
	jne	.L147	#,
	movq	-48(%rbp), %rax	# gv, tmp131
	movq	(%rax), %rax	# gv_23->sv_any, D.18184
	movq	56(%rax), %rax	# _66->xgv_gp, D.18185
	testq	%rax, %rax	# D.18185
	je	.L147	#,
	movq	-48(%rbp), %rax	# gv, tmp132
	movq	(%rax), %rax	# gv_23->sv_any, D.18184
	movq	56(%rax), %rax	# _68->xgv_gp, D.18185
	movq	16(%rax), %rax	# _69->gp_io, iftmp.188
	jmp	.L148	#
.L147:
	.loc 1 684 0 discriminator 2
	movl	$0, %eax	#, iftmp.188
.L148:
	.loc 1 684 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.188, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L146	#,
	.loc 1 684 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp133
	movq	(%rax), %rax	# io_72->sv_any, D.18189
	movq	56(%rax), %rax	# _73->xio_ifp, tmp134
	movq	%rax, -24(%rbp)	# tmp134, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L149	#,
.L146:
	.loc 1 690 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_83
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.189
	movq	(%rax), %rax	# PL_op.189_84->op_next, D.18178
	jmp	.L136	#
.L149:
.LBB31:
	.loc 1 693 0
	movq	-24(%rbp), %rax	# fp, tmp135
	movq	%rax, %rdi	# tmp135,
	call	Perl_PerlIO_fileno	#
	movslq	%eax, %rdx	# D.18182, D.18186
	movq	-56(%rbp), %rax	# targ, tmp136
	movq	%rdx, %rsi	# D.18186,
	movq	%rax, %rdi	# tmp136,
	call	Perl_sv_setiv	#
.LBB32:
	movq	-56(%rbp), %rax	# targ, tmp137
	movl	12(%rax), %eax	# targ_13->sv_flags, D.18183
	andl	$16384, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L150	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, tmp138
	movq	%rax, %rdi	# tmp138,
	call	Perl_mg_set	#
.L150:
	.loc 1 693 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp139
	movq	%rax, (%rbx)	# tmp139, *sp_79
.LBE32:
.LBE31:
	.loc 1 694 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.190
	movq	(%rax), %rax	# PL_op.190_81->op_next, D.18178
.L136:
	.loc 1 695 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_pp_fileno, .-Perl_pp_fileno
	.section	.rodata
.LC19:
	.string	"umask not implemented"
	.text
	.globl	Perl_pp_umask
	.type	Perl_pp_umask, @function
Perl_pp_umask:
.LFB12:
	.loc 1 698 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 699 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.191
	movq	PL_op(%rip), %rax	# PL_op, PL_op.192
	movq	24(%rax), %rax	# PL_op.192_7->op_targ, D.18192
	salq	$3, %rax	#, D.18192
	addq	%rdx, %rax	# PL_curpad.191, D.18193
	movq	(%rax), %rax	# *_10, tmp90
	movq	%rax, -24(%rbp)	# tmp90, targ
	.loc 1 715 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.193
	movzbl	37(%rax), %eax	# PL_op.193_12->op_private, D.18194
	movzbl	%al, %eax	# D.18194, D.18195
	andl	$15, %eax	#, D.18195
	testl	%eax, %eax	# D.18195
	jle	.L152	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.194
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.194_16, PL_Sv.195
	movq	%rax, PL_Sv(%rip)	# PL_Sv.195, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.197
	movl	12(%rax), %eax	# PL_Sv.197_19->sv_flags, D.18196
	andl	$65536, %eax	#, D.18196
	testl	%eax, %eax	# D.18196
	je	.L153	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.198
	movq	(%rax), %rax	# PL_Sv.198_22->sv_any, D.18197
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_23].xiv_iv, D.18198
	andl	$448, %eax	#, D.18198
	testq	%rax, %rax	# D.18198
	setne	%al	#, iftmp.196
	jmp	.L154	#
.L153:
	.loc 1 715 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.199
	movq	%rax, %rdi	# PL_Sv.199,
	call	Perl_sv_2iv	#
	andl	$448, %eax	#, D.18198
	testq	%rax, %rax	# D.18198
	setne	%al	#, iftmp.196
.L154:
	.loc 1 715 0 discriminator 3
	testb	%al, %al	# iftmp.196
	je	.L152	#,
	.loc 1 716 0 is_stmt 1
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L155	#
.L152:
.LBB33:
	.loc 1 717 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.200
	movq	%rax, %rdx	# PL_stack_max.200, PL_stack_max.201
	movq	%rbx, %rax	# sp, sp.202
	subq	%rax, %rdx	# sp.202, D.18198
	movq	%rdx, %rax	# D.18198, D.18198
	cmpq	$7, %rax	#, D.18198
	jg	.L156	#,
	.loc 1 717 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L156:
	.loc 1 717 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_37
.LBE33:
	.loc 1 719 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.203
	movq	(%rax), %rax	# PL_op.203_39->op_next, D.18191
.L155:
	.loc 1 720 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_pp_umask, .-Perl_pp_umask
	.section	.rodata
.LC20:
	.string	"BINMODE"
	.text
	.globl	Perl_pp_binmode
	.type	Perl_pp_binmode, @function
Perl_pp_binmode:
.LFB13:
	.loc 1 723 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 724 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 729 0
	movq	$0, -56(%rbp)	#, discp
	.loc 1 731 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.204
	movzbl	37(%rax), %eax	# PL_op.204_18->op_private, D.18202
	movzbl	%al, %eax	# D.18202, D.18203
	andl	$15, %eax	#, D.18203
	testl	%eax, %eax	# D.18203
	jg	.L158	#,
	.loc 1 732 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_22
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.205
	movq	(%rax), %rax	# PL_op.205_23->op_next, D.18201
	jmp	.L159	#
.L158:
	.loc 1 733 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.206
	movzbl	37(%rax), %eax	# PL_op.206_25->op_private, D.18202
	movzbl	%al, %eax	# D.18202, D.18203
	andl	$15, %eax	#, D.18203
	cmpl	$1, %eax	#, D.18203
	jle	.L160	#,
	.loc 1 734 0
	movq	%rbx, %rax	# sp, sp.207
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.207_29, tmp184
	movq	%rax, -56(%rbp)	# tmp184, discp
.L160:
	.loc 1 737 0
	movq	%rbx, %rax	# sp, sp.208
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.208_32, tmp185
	movq	%rax, -48(%rbp)	# tmp185, gv
	.loc 1 739 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L161	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L162	#,
	movq	-48(%rbp), %rax	# gv, tmp186
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_34].sv_flags, D.18204
	movzbl	%al, %eax	# D.18204, D.18204
	cmpl	$13, %eax	#, D.18204
	jne	.L162	#,
	movq	-48(%rbp), %rax	# gv, tmp187
	movq	(%rax), %rax	# gv_34->sv_any, D.18205
	movq	56(%rax), %rax	# _37->xgv_gp, D.18206
	testq	%rax, %rax	# D.18206
	je	.L162	#,
	movq	-48(%rbp), %rax	# gv, tmp188
	movq	(%rax), %rax	# gv_34->sv_any, D.18205
	movq	56(%rax), %rax	# _39->xgv_gp, D.18206
	movq	16(%rax), %rax	# _40->gp_io, iftmp.209
	jmp	.L163	#
.L162:
	.loc 1 739 0 discriminator 2
	movl	$0, %eax	#, iftmp.209
.L163:
	.loc 1 739 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.209, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L161	#,
	.loc 1 740 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp189
	movl	12(%rax), %eax	# MEM[(struct SV *)io_43].sv_flags, D.18204
	andl	$32768, %eax	#, D.18204
	testl	%eax, %eax	# D.18204
	je	.L164	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp190
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	Perl_mg_find	#
	jmp	.L165	#
.L164:
	.loc 1 740 0 discriminator 2
	movl	$0, %eax	#, iftmp.210
.L165:
	.loc 1 740 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.210, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L161	#,
.LBB34:
	.loc 1 742 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.211
	addq	$4, %rax	#, PL_markstack_ptr.212
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.212, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.213
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.214
	cmpq	%rax, %rdx	# PL_markstack_max.214, PL_markstack_ptr.213
	jne	.L166	#,
	.loc 1 742 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L166:
	.loc 1 742 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.215
	movq	%rbx, %rcx	# sp, sp.216
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.217
	subq	%rdx, %rcx	# PL_stack_base.218, D.18207
	movq	%rcx, %rdx	# D.18207, D.18207
	sarq	$3, %rdx	#, tmp191
	movl	%edx, (%rax)	# D.18203, *PL_markstack_ptr.215_53
.LBE34:
.LBB35:
	.loc 1 743 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.219
	movq	%rax, %rdx	# PL_stack_max.219, PL_stack_max.220
	movq	%rbx, %rax	# sp, sp.221
	subq	%rax, %rdx	# sp.221, D.18207
	movq	%rdx, %rax	# D.18207, D.18207
	cmpq	$7, %rax	#, D.18207
	jg	.L167	#,
	.loc 1 743 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L167:
	.loc 1 743 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp192
	movq	24(%rax), %rax	# mg_48->mg_obj, D.18209
	testq	%rax, %rax	# D.18209
	je	.L168	#,
	.loc 1 743 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp193
	movq	24(%rax), %rax	# mg_48->mg_obj, iftmp.222
	jmp	.L169	#
.L168:
	.loc 1 743 0 discriminator 2
	movq	-40(%rbp), %rax	# io, tmp194
	movq	%rax, %rdi	# tmp194,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18209,
	call	Perl_sv_2mortal	#
.L169:
	.loc 1 743 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.222, *sp_66
.LBE35:
	.loc 1 744 0 is_stmt 1 discriminator 3
	cmpq	$0, -56(%rbp)	#, discp
	je	.L170	#,
.LBB36:
	.loc 1 745 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.223
	movq	%rax, %rdx	# PL_stack_max.223, PL_stack_max.224
	movq	%rbx, %rax	# sp, sp.225
	subq	%rax, %rdx	# sp.225, D.18207
	movq	%rdx, %rax	# D.18207, D.18207
	cmpq	$7, %rax	#, D.18207
	jg	.L171	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L171:
	.loc 1 745 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# discp, tmp195
	movq	%rax, (%rbx)	# tmp195, *sp_77
.L170:
.LBE36:
	.loc 1 746 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 747 0
	call	Perl_push_scope	#
	.loc 1 748 0
	movl	$0, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_call_method	#
	.loc 1 749 0
	call	Perl_pop_scope	#
	.loc 1 750 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 751 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.226
	movq	(%rax), %rax	# PL_op.226_80->op_next, D.18201
	jmp	.L159	#
.L161:
	.loc 1 754 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.227
	movq	%rax, %rdx	# PL_stack_max.227, PL_stack_max.228
	movq	%rbx, %rax	# sp, sp.229
	subq	%rax, %rdx	# sp.229, D.18207
	movq	%rdx, %rax	# D.18207, D.18207
	cmpq	$7, %rax	#, D.18207
	jg	.L172	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L172:
	.loc 1 755 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L173	#,
	.loc 1 755 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp196
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_34].sv_flags, D.18204
	movzbl	%al, %eax	# D.18204, D.18204
	cmpl	$13, %eax	#, D.18204
	jne	.L173	#,
	movq	-48(%rbp), %rax	# gv, tmp197
	movq	(%rax), %rax	# gv_34->sv_any, D.18205
	movq	56(%rax), %rax	# _89->xgv_gp, D.18206
	testq	%rax, %rax	# D.18206
	je	.L173	#,
	movq	-48(%rbp), %rax	# gv, tmp198
	movq	(%rax), %rax	# gv_34->sv_any, D.18205
	movq	56(%rax), %rax	# _91->xgv_gp, D.18206
	movq	16(%rax), %rax	# _92->gp_io, iftmp.230
	jmp	.L174	#
.L173:
	.loc 1 755 0 discriminator 2
	movl	$0, %eax	#, iftmp.230
.L174:
	.loc 1 755 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.230, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L175	#,
	.loc 1 755 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp199
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movq	56(%rax), %rax	# _96->xio_ifp, tmp200
	movq	%rax, -24(%rbp)	# tmp200, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L176	#,
.L175:
	.loc 1 756 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.231
	movq	80(%rax), %rax	# PL_curcop.231_142->cop_warnings, D.18209
	testq	%rax, %rax	# D.18209
	je	.L177	#,
	.loc 1 756 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.232
	movq	80(%rax), %rax	# PL_curcop.232_144->cop_warnings, D.18209
	cmpq	$32, %rax	#, D.18209
	je	.L177	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.233
	movq	80(%rax), %rax	# PL_curcop.233_146->cop_warnings, D.18209
	cmpq	$16, %rax	#, D.18209
	je	.L178	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.234
	movq	80(%rax), %rax	# PL_curcop.234_148->cop_warnings, D.18209
	movq	(%rax), %rax	# _149->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_150].xpv_pv, D.18214
	addq	$2, %rax	#, D.18214
	movzbl	(%rax), %eax	# *_152, D.18212
	movsbl	%al, %eax	# D.18212, D.18203
	andl	$64, %eax	#, D.18203
	testl	%eax, %eax	# D.18203
	jne	.L178	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.235
	movq	80(%rax), %rax	# PL_curcop.235_156->cop_warnings, D.18209
	movq	(%rax), %rax	# _157->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_158].xpv_pv, D.18214
	addq	$1, %rax	#, D.18214
	movzbl	(%rax), %eax	# *_160, D.18212
	movsbl	%al, %eax	# D.18212, D.18203
	andl	$16, %eax	#, D.18203
	testl	%eax, %eax	# D.18203
	jne	.L178	#,
.L177:
	.loc 1 756 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.236
	movq	80(%rax), %rax	# PL_curcop.236_164->cop_warnings, D.18209
	testq	%rax, %rax	# D.18209
	jne	.L179	#,
	.loc 1 756 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.237
	movzbl	%al, %eax	# PL_dowarn.237, D.18203
	andl	$1, %eax	#, D.18203
	testl	%eax, %eax	# D.18203
	je	.L179	#,
.L178:
	.loc 1 757 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.238
	movzwl	32(%rax), %eax	# PL_op.238_169->op_type, D.18215
	movzwl	%ax, %edx	# D.18215, D.18203
	movq	-40(%rbp), %rcx	# io, tmp201
	movq	-48(%rbp), %rax	# gv, tmp202
	movq	%rcx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	Perl_report_evil_fh	#
.L179:
	.loc 1 758 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_172
	.loc 1 759 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_173
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.239
	movq	(%rax), %rax	# PL_op.239_174->op_next, D.18201
	jmp	.L159	#
.L176:
	.loc 1 762 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 763 0
	cmpq	$0, -56(%rbp)	#, discp
	je	.L180	#,
	.loc 1 764 0 discriminator 1
	movq	-56(%rbp), %rax	# discp, tmp203
	movl	12(%rax), %eax	# discp_6->sv_flags, D.18204
	andl	$262144, %eax	#, D.18204
	.loc 1 763 0 discriminator 1
	testl	%eax, %eax	# D.18204
	je	.L181	#,
	.loc 1 764 0
	movq	-56(%rbp), %rax	# discp, tmp204
	movq	(%rax), %rax	# discp_6->sv_any, D.18211
	.loc 1 763 0
	movq	(%rax), %rax	# MEM[(struct XPV *)_100].xpv_pv, iftmp.241
	jmp	.L182	#
.L181:
	.loc 1 763 0 is_stmt 0 discriminator 3
	movq	-56(%rbp), %rax	# discp, tmp205
	movq	%rax, %rdi	# tmp205,
	call	Perl_sv_2pv_nolen	#
.L182:
	.loc 1 763 0 discriminator 1
	movq	%rax, %rbx	# iftmp.241, iftmp.240
	jmp	.L183	#
.L180:
	.loc 1 763 0 discriminator 2
	movl	$0, %ebx	#, iftmp.240
.L183:
	.loc 1 763 0 discriminator 4
	movq	-56(%rbp), %rax	# discp, tmp206
	movq	%rax, %rdi	# tmp206,
	call	Perl_mode_from_discipline	#
	movl	%eax, %edx	#, D.18203
	movq	-40(%rbp), %rax	# io, tmp207
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movzbl	162(%rax), %eax	# _106->xio_type, D.18212
	movsbl	%al, %esi	# D.18212, D.18203
	movq	-24(%rbp), %rax	# fp, tmp208
	movq	%rbx, %rcx	# iftmp.240,
	movq	%rax, %rdi	# tmp208,
	call	PerlIO_binmode	#
	testl	%eax, %eax	# D.18203
	je	.L184	#,
	.loc 1 765 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp209
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movq	64(%rax), %rax	# _110->xio_ofp, D.18213
	testq	%rax, %rax	# D.18213
	je	.L185	#,
	.loc 1 765 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp210
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movq	64(%rax), %rdx	# _112->xio_ofp, D.18213
	movq	-40(%rbp), %rax	# io, tmp211
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movq	56(%rax), %rax	# _114->xio_ifp, D.18213
	cmpq	%rax, %rdx	# D.18213, D.18213
	je	.L185	#,
	.loc 1 766 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, discp
	je	.L186	#,
	.loc 1 768 0 discriminator 1
	movq	-56(%rbp), %rax	# discp, tmp212
	movl	12(%rax), %eax	# discp_6->sv_flags, D.18204
	andl	$262144, %eax	#, D.18204
	.loc 1 766 0 discriminator 1
	testl	%eax, %eax	# D.18204
	je	.L187	#,
	.loc 1 768 0
	movq	-56(%rbp), %rax	# discp, tmp213
	movq	(%rax), %rax	# discp_6->sv_any, D.18211
	.loc 1 766 0
	movq	(%rax), %rax	# MEM[(struct XPV *)_118].xpv_pv, iftmp.243
	jmp	.L188	#
.L187:
	.loc 1 766 0 is_stmt 0 discriminator 3
	movq	-56(%rbp), %rax	# discp, tmp214
	movq	%rax, %rdi	# tmp214,
	call	Perl_sv_2pv_nolen	#
.L188:
	.loc 1 766 0 discriminator 2
	movq	%rax, %rbx	# iftmp.243, iftmp.242
	jmp	.L189	#
.L186:
	movl	$0, %ebx	#, iftmp.242
.L189:
	.loc 1 766 0 discriminator 4
	movq	-56(%rbp), %rax	# discp, tmp215
	movq	%rax, %rdi	# tmp215,
	call	Perl_mode_from_discipline	#
	movl	%eax, %edx	#, D.18203
	movq	-40(%rbp), %rax	# io, tmp216
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movzbl	162(%rax), %eax	# _124->xio_type, D.18212
	movsbl	%al, %esi	# D.18212, D.18203
	movq	-40(%rbp), %rax	# io, tmp217
	movq	(%rax), %rax	# io_95->sv_any, D.18210
	movq	64(%rax), %rax	# _127->xio_ofp, D.18213
	movq	%rbx, %rcx	# iftmp.242,
	movq	%rax, %rdi	# D.18213,
	call	PerlIO_binmode	#
	testl	%eax, %eax	# D.18203
	jne	.L185	#,
	.loc 1 769 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 770 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_131
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.244
	movq	(%rax), %rax	# PL_op.244_132->op_next, D.18201
	jmp	.L159	#
.L185:
	.loc 1 773 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 774 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_135
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.245
	movq	(%rax), %rax	# PL_op.245_136->op_next, D.18201
	jmp	.L159	#
.L184:
	.loc 1 777 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 778 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_139
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.246
	movq	(%rax), %rax	# PL_op.246_140->op_next, D.18201
.L159:
	.loc 1 780 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_pp_binmode, .-Perl_pp_binmode
	.section	.rodata
.LC21:
	.string	"TIEHASH"
.LC22:
	.string	"TIEARRAY"
.LC23:
	.string	"TIEHANDLE"
.LC24:
	.string	"TIESCALAR"
	.align 8
.LC25:
	.string	"Can't locate object method \"%s\" via package \"%_\""
.LC26:
	.string	"panic: POPSTACK\n"
	.align 8
.LC27:
	.string	"Self-ties of arrays and hashes are not supported"
	.text
	.globl	Perl_pp_tie
	.type	Perl_pp_tie, @function
Perl_pp_tie:
.LFB14:
	.loc 1 783 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 784 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 785 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.247
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.248
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.250
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.250, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.249_20, D.18219
	cltq
	salq	$3, %rax	#, D.18220
	leaq	(%rcx,%rax), %r12	#, mark
	.loc 1 790 0
	movq	%r12, %rdx	# mark, mark.251
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.252
	subq	%rax, %rdx	# PL_stack_base.253, D.18221
	movq	%rdx, %rax	# D.18221, D.18221
	sarq	$3, %rax	#, tmp269
	movl	%eax, -100(%rbp)	# D.18221, markoff
	.loc 1 792 0
	movl	$80, -108(%rbp)	#, how
	.loc 1 795 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_33, tmp270
	movq	%rax, -96(%rbp)	# tmp270, varsv
	.loc 1 796 0
	movq	-96(%rbp), %rax	# varsv, tmp271
	movl	12(%rax), %eax	# varsv_34->sv_flags, D.18222
	movzbl	%al, %eax	# D.18222, D.18222
	cmpl	$11, %eax	#, D.18222
	je	.L192	#,
	cmpl	$13, %eax	#, D.18222
	je	.L193	#,
	cmpl	$10, %eax	#, D.18222
	je	.L194	#,
	jmp	.L220	#
.L192:
	.loc 1 798 0
	movq	$.LC21, -88(%rbp)	#, methname
	.loc 1 799 0
	movq	-96(%rbp), %rax	# varsv, tmp272
	movq	(%rax), %rax	# MEM[(struct HV *)varsv_34].sv_any, D.18223
	movq	$0, 64(%rax)	#, _38->xhv_eiter
	.loc 1 800 0
	jmp	.L195	#
.L194:
	.loc 1 802 0
	movq	$.LC22, -88(%rbp)	#, methname
	.loc 1 803 0
	jmp	.L195	#
.L193:
	.loc 1 810 0
	movq	$.LC23, -88(%rbp)	#, methname
	.loc 1 811 0
	movl	$113, -108(%rbp)	#, how
	.loc 1 814 0
	movq	-96(%rbp), %rax	# varsv, tmp273
	movq	(%rax), %rax	# varsv_34->sv_any, D.18224
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_42].xgv_gp, D.18225
	movq	16(%rax), %rax	# _43->gp_io, D.18226
	testq	%rax, %rax	# D.18226
	jne	.L196	#,
	.loc 1 815 0
	movq	-96(%rbp), %rax	# varsv, tmp274
	movq	(%rax), %rax	# varsv_34->sv_any, D.18224
	movq	56(%rax), %r13	# MEM[(struct XPVGV *)_45].xgv_gp, D.18225
	call	Perl_newIO	#
	movq	%rax, 16(%r13)	# D.18227, _46->gp_io
.L196:
	.loc 1 816 0
	movq	-96(%rbp), %rax	# varsv, tmp275
	movq	(%rax), %rax	# varsv_34->sv_any, D.18224
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_48].xgv_gp, D.18225
	movq	16(%rax), %rax	# _49->gp_io, tmp276
	movq	%rax, -96(%rbp)	# tmp276, varsv
	.loc 1 817 0
	jmp	.L195	#
.L220:
	.loc 1 819 0
	movq	$.LC24, -88(%rbp)	#, methname
	.loc 1 820 0
	movl	$113, -108(%rbp)	#, how
	.loc 1 821 0
	nop
.L195:
	.loc 1 823 0
	movq	%rbx, %rdx	# sp, sp.254
	movq	%r12, %rax	# mark, mark.255
	leaq	8(%rax), %r12	#, mark
	subq	%rax, %rdx	# mark.256, D.18221
	movq	%rdx, %rax	# D.18221, D.18221
	sarq	$3, %rax	#, tmp277
	movl	%eax, -104(%rbp)	# D.18221, items
	.loc 1 824 0
	movq	(%r12), %rax	# *mark_55, D.18228
	movq	%rax, %rdi	# D.18228,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.18219
	je	.L197	#,
	.loc 1 825 0
	call	Perl_push_scope	#
.LBB37:
	.loc 1 826 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.257
	movq	40(%rax), %rax	# PL_curstackinfo.257_62->si_next, tmp278
	movq	%rax, -80(%rbp)	# tmp278, next
	cmpq	$0, -80(%rbp)	#, next
	jne	.L198	#,
	.loc 1 826 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -80(%rbp)	# tmp279, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.258
	movq	-80(%rbp), %rax	# next, tmp280
	movq	%rdx, 32(%rax)	# PL_curstackinfo.258, next_64->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.259
	movq	-80(%rbp), %rdx	# next, tmp281
	movq	%rdx, 40(%rax)	# tmp281, PL_curstackinfo.259_66->si_next
.L198:
	.loc 1 826 0 discriminator 2
	movq	-80(%rbp), %rax	# next, tmp282
	movl	$2, 24(%rax)	#, next_12->si_type
	movq	-80(%rbp), %rax	# next, tmp283
	movl	$-1, 16(%rax)	#, next_12->si_cxix
	movq	-80(%rbp), %rax	# next, tmp284
	movq	(%rax), %rax	# next_12->si_stack, D.18229
	movq	(%rax), %rax	# _67->sv_any, D.18230
	movq	$0, 8(%rax)	#, _68->xav_fill
.LBB38:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.260
	movq	(%rax), %rax	# PL_curstack.260_69->sv_any, D.18230
	movq	%rbx, %rcx	# sp, sp.261
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.262
	subq	%rdx, %rcx	# PL_stack_base.263, D.18221
	movq	%rcx, %rdx	# D.18221, D.18221
	sarq	$3, %rdx	#, tmp285
	movq	%rdx, 8(%rax)	# D.18221, _70->xav_fill
	movq	-80(%rbp), %rax	# next, tmp286
	movq	(%rax), %rax	# next_12->si_stack, D.18229
	movq	(%rax), %rax	# _76->sv_any, D.18230
	movq	(%rax), %rax	# _77->xav_array, PL_stack_base.264
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.264, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.265
	movq	-80(%rbp), %rax	# next, tmp287
	movq	(%rax), %rax	# next_12->si_stack, D.18229
	movq	(%rax), %rax	# _80->sv_any, D.18230
	movq	16(%rax), %rax	# _81->xav_max, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.265, PL_stack_max.266
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.266, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.267
	movq	-80(%rbp), %rax	# next, tmp288
	movq	(%rax), %rax	# next_12->si_stack, D.18229
	movq	(%rax), %rax	# _87->sv_any, D.18230
	movq	8(%rax), %rax	# _88->xav_fill, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.267, PL_stack_sp.268
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.268, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-80(%rbp), %rax	# next, tmp289
	movq	(%rax), %rax	# next_12->si_stack, PL_curstack.269
	movq	%rax, PL_curstack(%rip)	# PL_curstack.269, PL_curstack
.LBE38:
	movq	-80(%rbp), %rax	# next, tmp290
	movq	%rax, PL_curstackinfo(%rip)	# tmp290, PL_curstackinfo
.LBE37:
.LBB39:
	.loc 1 827 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.270
	addq	$4, %rax	#, PL_markstack_ptr.271
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.271, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.272
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.273
	cmpq	%rax, %rdx	# PL_markstack_max.273, PL_markstack_ptr.272
	jne	.L199	#,
	.loc 1 827 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L199:
	.loc 1 827 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.274
	movq	%rbx, %rcx	# sp, sp.275
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.276
	subq	%rdx, %rcx	# PL_stack_base.277, D.18221
	movq	%rcx, %rdx	# D.18221, D.18221
	sarq	$3, %rdx	#, tmp291
	movl	%edx, (%rax)	# D.18219, *PL_markstack_ptr.274_100
.LBE39:
	.loc 1 828 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.278
	movq	%rax, %rdx	# PL_stack_max.278, PL_stack_max.279
	movq	%rbx, %rax	# sp, sp.280
	subq	%rax, %rdx	# sp.280, D.18221
	movq	%rdx, %rax	# D.18221, D.18221
	sarq	$3, %rax	#, tmp292
	movq	%rax, %rdx	# tmp292, D.18221
	movl	-104(%rbp), %eax	# items, items.281
	cltq
	cmpq	%rax, %rdx	# D.18221, D.18221
	jge	.L200	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# items, items.282
	movl	%eax, %edx	# items.282,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	.loc 1 829 0 is_stmt 1 discriminator 1
	jmp	.L201	#
.L200:
	.loc 1 829 0 is_stmt 0
	jmp	.L201	#
.L202:
	.loc 1 830 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	%r12, %rax	# mark, mark.283
	leaq	8(%rax), %r12	#, mark
	movq	(%rax), %rax	# *mark.283_120, D.18228
	movq	%rax, (%rbx)	# D.18228, *sp_119
.L201:
	.loc 1 829 0 discriminator 1
	movl	-104(%rbp), %eax	# items, items.284
	leal	-1(%rax), %edx	#, tmp293
	movl	%edx, -104(%rbp)	# tmp293, items
	testl	%eax, %eax	# items.284
	jne	.L202	#,
	.loc 1 831 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 832 0
	movq	-88(%rbp), %rax	# methname, tmp294
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	Perl_call_method	#
	jmp	.L203	#
.L197:
	.loc 1 838 0
	movq	(%r12), %rax	# *mark_55, D.18228
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18228,
	call	Perl_gv_stashsv	#
	movq	%rax, -64(%rbp)	# tmp295, stash
	.loc 1 839 0
	cmpq	$0, -64(%rbp)	#, stash
	je	.L204	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# methname, tmp296
	movq	-64(%rbp), %rax	# stash, tmp297
	movq	%rdx, %rsi	# tmp296,
	movq	%rax, %rdi	# tmp297,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -56(%rbp)	# tmp298, gv
	cmpq	$0, -56(%rbp)	#, gv
	jne	.L205	#,
.L204:
	.loc 1 840 0 is_stmt 1
	movq	(%r12), %rdx	# *mark_55, D.18228
	movq	-88(%rbp), %rax	# methname, tmp299
	movq	%rax, %rsi	# tmp299,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L206	#
.L205:
	.loc 1 843 0
	call	Perl_push_scope	#
.LBB40:
	.loc 1 844 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.285
	movq	40(%rax), %rax	# PL_curstackinfo.285_126->si_next, tmp300
	movq	%rax, -72(%rbp)	# tmp300, next
	cmpq	$0, -72(%rbp)	#, next
	jne	.L207	#,
	.loc 1 844 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -72(%rbp)	# tmp301, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.286
	movq	-72(%rbp), %rax	# next, tmp302
	movq	%rdx, 32(%rax)	# PL_curstackinfo.286, next_128->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.287
	movq	-72(%rbp), %rdx	# next, tmp303
	movq	%rdx, 40(%rax)	# tmp303, PL_curstackinfo.287_130->si_next
.L207:
	.loc 1 844 0 discriminator 2
	movq	-72(%rbp), %rax	# next, tmp304
	movl	$2, 24(%rax)	#, next_13->si_type
	movq	-72(%rbp), %rax	# next, tmp305
	movl	$-1, 16(%rax)	#, next_13->si_cxix
	movq	-72(%rbp), %rax	# next, tmp306
	movq	(%rax), %rax	# next_13->si_stack, D.18229
	movq	(%rax), %rax	# _131->sv_any, D.18230
	movq	$0, 8(%rax)	#, _132->xav_fill
.LBB41:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.288
	movq	(%rax), %rax	# PL_curstack.288_133->sv_any, D.18230
	movq	%rbx, %rcx	# sp, sp.289
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.290
	subq	%rdx, %rcx	# PL_stack_base.291, D.18221
	movq	%rcx, %rdx	# D.18221, D.18221
	sarq	$3, %rdx	#, tmp307
	movq	%rdx, 8(%rax)	# D.18221, _134->xav_fill
	movq	-72(%rbp), %rax	# next, tmp308
	movq	(%rax), %rax	# next_13->si_stack, D.18229
	movq	(%rax), %rax	# _140->sv_any, D.18230
	movq	(%rax), %rax	# _141->xav_array, PL_stack_base.292
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.292, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.293
	movq	-72(%rbp), %rax	# next, tmp309
	movq	(%rax), %rax	# next_13->si_stack, D.18229
	movq	(%rax), %rax	# _144->sv_any, D.18230
	movq	16(%rax), %rax	# _145->xav_max, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.293, PL_stack_max.294
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.294, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.295
	movq	-72(%rbp), %rax	# next, tmp310
	movq	(%rax), %rax	# next_13->si_stack, D.18229
	movq	(%rax), %rax	# _151->sv_any, D.18230
	movq	8(%rax), %rax	# _152->xav_fill, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.295, PL_stack_sp.296
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.296, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-72(%rbp), %rax	# next, tmp311
	movq	(%rax), %rax	# next_13->si_stack, PL_curstack.297
	movq	%rax, PL_curstack(%rip)	# PL_curstack.297, PL_curstack
.LBE41:
	movq	-72(%rbp), %rax	# next, tmp312
	movq	%rax, PL_curstackinfo(%rip)	# tmp312, PL_curstackinfo
.LBE40:
.LBB42:
	.loc 1 845 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.298
	addq	$4, %rax	#, PL_markstack_ptr.299
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.299, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.300
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.301
	cmpq	%rax, %rdx	# PL_markstack_max.301, PL_markstack_ptr.300
	jne	.L208	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L208:
	.loc 1 845 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.302
	movq	%rbx, %rcx	# sp, sp.303
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.304
	subq	%rdx, %rcx	# PL_stack_base.305, D.18221
	movq	%rcx, %rdx	# D.18221, D.18221
	sarq	$3, %rdx	#, tmp313
	movl	%edx, (%rax)	# D.18219, *PL_markstack_ptr.302_164
.LBE42:
	.loc 1 846 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.306
	movq	%rax, %rdx	# PL_stack_max.306, PL_stack_max.307
	movq	%rbx, %rax	# sp, sp.308
	subq	%rax, %rdx	# sp.308, D.18221
	movq	%rdx, %rax	# D.18221, D.18221
	sarq	$3, %rax	#, tmp314
	movq	%rax, %rdx	# tmp314, D.18221
	movl	-104(%rbp), %eax	# items, items.309
	cltq
	cmpq	%rax, %rdx	# D.18221, D.18221
	jge	.L209	#,
	.loc 1 846 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# items, items.310
	movl	%eax, %edx	# items.310,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	.loc 1 847 0 is_stmt 1 discriminator 1
	jmp	.L210	#
.L209:
	.loc 1 847 0 is_stmt 0
	jmp	.L210	#
.L211:
	.loc 1 848 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	%r12, %rax	# mark, mark.311
	leaq	8(%rax), %r12	#, mark
	movq	(%rax), %rax	# *mark.311_184, D.18228
	movq	%rax, (%rbx)	# D.18228, *sp_183
.L210:
	.loc 1 847 0 discriminator 1
	movl	-104(%rbp), %eax	# items, items.312
	leal	-1(%rax), %edx	#, tmp315
	movl	%edx, -104(%rbp)	# tmp315, items
	testl	%eax, %eax	# items.312
	jne	.L211	#,
	.loc 1 849 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 850 0
	movq	-56(%rbp), %rax	# gv, tmp316
	movq	(%rax), %rax	# gv_125->sv_any, D.18232
	movq	56(%rax), %rax	# _187->xgv_gp, D.18225
	movq	56(%rax), %rax	# _188->gp_cv, D.18233
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18233,
	call	Perl_call_sv	#
.L203:
	.loc 1 852 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 854 0
	movq	(%rbx), %rax	# *sp_192, tmp317
	movq	%rax, -48(%rbp)	# tmp317, sv
.LBB43:
	.loc 1 855 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.313
	movq	32(%rax), %rax	# PL_curstackinfo.313_195->si_prev, tmp318
	movq	%rax, -40(%rbp)	# tmp318, prev
	cmpq	$0, -40(%rbp)	#, prev
	jne	.L212	#,
	.loc 1 855 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.315
	testq	%rax, %rax	# PL_stderrgv.315
	je	.L213	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.316
	movl	12(%rax), %eax	# PL_stderrgv.316_198->sv_flags, D.18222
	movzbl	%al, %eax	# D.18222, D.18222
	cmpl	$13, %eax	#, D.18222
	jne	.L213	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.317
	movq	(%rax), %rax	# PL_stderrgv.317_201->sv_any, D.18232
	movq	56(%rax), %rax	# _202->xgv_gp, D.18225
	movq	16(%rax), %rax	# _203->gp_io, D.18226
	testq	%rax, %rax	# D.18226
	je	.L213	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.318
	movq	(%rax), %rax	# PL_stderrgv.318_205->sv_any, D.18232
	movq	56(%rax), %rax	# _206->xgv_gp, D.18225
	movq	16(%rax), %rax	# _207->gp_io, D.18226
	movq	(%rax), %rax	# _208->sv_any, D.18234
	movq	64(%rax), %rax	# _209->xio_ofp, D.18235
	testq	%rax, %rax	# D.18235
	je	.L213	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.319
	movq	(%rax), %rax	# PL_stderrgv.319_211->sv_any, D.18232
	movq	56(%rax), %rax	# _212->xgv_gp, D.18225
	movq	16(%rax), %rax	# _213->gp_io, D.18226
	movq	(%rax), %rax	# _214->sv_any, D.18234
	movq	64(%rax), %rax	# _215->xio_ofp, iftmp.314
	jmp	.L214	#
.L213:
	.loc 1 855 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L214:
	.loc 1 855 0 discriminator 3
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# iftmp.314,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L212:
.LBB44:
	.loc 1 855 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.320
	movq	(%rax), %rax	# PL_curstack.320_218->sv_any, D.18230
	movq	%rbx, %rcx	# sp, sp.321
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.322
	subq	%rdx, %rcx	# PL_stack_base.323, D.18221
	movq	%rcx, %rdx	# D.18221, D.18221
	sarq	$3, %rdx	#, tmp319
	movq	%rdx, 8(%rax)	# D.18221, _219->xav_fill
	movq	-40(%rbp), %rax	# prev, tmp320
	movq	(%rax), %rax	# prev_196->si_stack, D.18229
	movq	(%rax), %rax	# _225->sv_any, D.18230
	movq	(%rax), %rax	# _226->xav_array, PL_stack_base.324
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.324, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.325
	movq	-40(%rbp), %rax	# prev, tmp321
	movq	(%rax), %rax	# prev_196->si_stack, D.18229
	movq	(%rax), %rax	# _229->sv_any, D.18230
	movq	16(%rax), %rax	# _230->xav_max, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.325, PL_stack_max.326
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.326, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.327
	movq	-40(%rbp), %rax	# prev, tmp322
	movq	(%rax), %rax	# prev_196->si_stack, D.18229
	movq	(%rax), %rax	# _236->sv_any, D.18230
	movq	8(%rax), %rax	# _237->xav_fill, D.18221
	salq	$3, %rax	#, D.18220
	addq	%rdx, %rax	# PL_stack_base.327, PL_stack_sp.328
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.328, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# prev, tmp323
	movq	(%rax), %rax	# prev_196->si_stack, PL_curstack.329
	movq	%rax, PL_curstack(%rip)	# PL_curstack.329, PL_curstack
.LBE44:
	movq	-40(%rbp), %rax	# prev, tmp324
	movq	%rax, PL_curstackinfo(%rip)	# tmp324, PL_curstackinfo
.LBE43:
	.loc 1 856 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp325
	movq	%rax, %rdi	# tmp325,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.18219
	je	.L215	#,
	.loc 1 857 0
	movl	-108(%rbp), %edx	# how, tmp326
	movq	-96(%rbp), %rax	# varsv, tmp327
	movl	%edx, %esi	# tmp326,
	movq	%rax, %rdi	# tmp327,
	call	Perl_sv_unmagic	#
	.loc 1 859 0
	movq	-48(%rbp), %rax	# sv, tmp328
	movq	(%rax), %rax	# sv_193->sv_any, D.18224
	movq	(%rax), %rax	# MEM[(struct XRV *)_247].xrv_rv, D.18228
	cmpq	-96(%rbp), %rax	# varsv, D.18228
	jne	.L216	#,
	.loc 1 860 0 discriminator 1
	movq	-96(%rbp), %rax	# varsv, tmp329
	movl	12(%rax), %eax	# varsv_7->sv_flags, D.18222
	movzbl	%al, %eax	# D.18222, D.18222
	.loc 1 859 0 discriminator 1
	cmpl	$10, %eax	#, D.18222
	je	.L217	#,
	.loc 1 861 0
	movq	-96(%rbp), %rax	# varsv, tmp330
	movl	12(%rax), %eax	# varsv_7->sv_flags, D.18222
	movzbl	%al, %eax	# D.18222, D.18222
	.loc 1 860 0
	cmpl	$11, %eax	#, D.18222
	jne	.L216	#,
.L217:
	.loc 1 862 0
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L216:
	.loc 1 864 0
	movq	-48(%rbp), %rax	# sv, tmp331
	movq	(%rax), %rax	# sv_193->sv_any, D.18224
	movq	(%rax), %rax	# MEM[(struct XRV *)_253].xrv_rv, D.18228
	cmpq	-96(%rbp), %rax	# varsv, D.18228
	je	.L218	#,
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, iftmp.330
	jmp	.L219	#
.L218:
	.loc 1 864 0 discriminator 2
	movl	$0, %eax	#, iftmp.330
.L219:
	.loc 1 864 0 discriminator 3
	movl	-108(%rbp), %edx	# how, tmp332
	movq	-96(%rbp), %rdi	# varsv, tmp333
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# iftmp.330,
	call	Perl_sv_magic	#
.L215:
	.loc 1 866 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 867 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.331
	movl	-100(%rbp), %edx	# markoff, tmp334
	movslq	%edx, %rdx	# tmp334, D.18220
	salq	$3, %rdx	#, D.18220
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 868 0
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# sv, tmp335
	movq	%rax, (%rbx)	# tmp335, *sp_261
	.loc 1 869 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.332
	movq	(%rax), %rax	# PL_op.332_262->op_next, D.18218
.L206:
	.loc 1 870 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_pp_tie, .-Perl_pp_tie
	.section	.rodata
.LC28:
	.string	"UNTIE"
	.align 8
.LC29:
	.string	"untie attempted while %lu inner references still exist"
	.text
	.globl	Perl_pp_untie
	.type	Perl_pp_untie, @function
Perl_pp_untie:
.LFB15:
	.loc 1 873 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 874 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 876 0
	movq	%rbx, %rax	# sp, sp.333
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.333_11, tmp142
	movq	%rax, -56(%rbp)	# tmp142, sv
	.loc 1 877 0
	movq	-56(%rbp), %rax	# sv, tmp143
	movl	12(%rax), %eax	# sv_13->sv_flags, D.18245
	movzbl	%al, %eax	# D.18245, D.18245
	cmpl	$11, %eax	#, D.18245
	je	.L222	#,
	.loc 1 877 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp144
	movl	12(%rax), %eax	# sv_13->sv_flags, D.18245
	movzbl	%al, %eax	# D.18245, D.18245
	cmpl	$10, %eax	#, D.18245
	jne	.L223	#,
.L222:
	.loc 1 877 0 discriminator 1
	movl	$80, %eax	#, iftmp.334
	jmp	.L224	#
.L223:
	movl	$113, %eax	#, iftmp.334
.L224:
	.loc 1 877 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.334, how
	.loc 1 880 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# sv, tmp145
	movl	12(%rax), %eax	# sv_13->sv_flags, D.18245
	movzbl	%al, %eax	# D.18245, D.18245
	cmpl	$13, %eax	#, D.18245
	jne	.L225	#,
	.loc 1 880 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp146
	movq	(%rax), %rax	# sv_13->sv_any, D.18246
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_23].xgv_gp, D.18247
	movq	16(%rax), %rax	# _24->gp_io, tmp147
	movq	%rax, -56(%rbp)	# tmp147, sv
	cmpq	$0, -56(%rbp)	#, sv
	jne	.L225	#,
	.loc 1 881 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_26
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.335
	movq	(%rax), %rax	# PL_op.335_27->op_next, D.18244
	jmp	.L226	#
.L225:
	.loc 1 883 0
	movq	-56(%rbp), %rax	# sv, tmp148
	movl	12(%rax), %eax	# sv_4->sv_flags, D.18245
	andl	$32768, %eax	#, D.18245
	testl	%eax, %eax	# D.18245
	je	.L227	#,
	.loc 1 883 0 is_stmt 0 discriminator 1
	movsbl	-57(%rbp), %edx	# how, D.18248
	movq	-56(%rbp), %rax	# sv, tmp149
	movl	%edx, %esi	# D.18248,
	movq	%rax, %rdi	# tmp149,
	call	Perl_mg_find	#
	jmp	.L228	#
.L227:
	.loc 1 883 0 discriminator 2
	movl	$0, %eax	#, iftmp.336
.L228:
	.loc 1 883 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.336, mg
	cmpq	$0, -48(%rbp)	#, mg
	je	.L229	#,
.LBB45:
	.loc 1 884 0 is_stmt 1
	movq	-48(%rbp), %rax	# mg, tmp150
	movq	24(%rax), %rax	# mg_34->mg_obj, D.18249
	testq	%rax, %rax	# D.18249
	je	.L230	#,
	.loc 1 884 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp151
	movq	24(%rax), %rax	# mg_34->mg_obj, iftmp.337
	jmp	.L231	#
.L230:
	.loc 1 884 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp152
	movq	%rax, %rdi	# tmp152,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18249,
	call	Perl_sv_2mortal	#
.L231:
	.loc 1 884 0 discriminator 3
	movq	(%rax), %rax	# iftmp.337_8->sv_any, D.18246
	movq	(%rax), %rax	# MEM[(struct XRV *)_39].xrv_rv, tmp153
	movq	%rax, -40(%rbp)	# tmp153, obj
	.loc 1 886 0 is_stmt 1 discriminator 3
	movq	$0, -32(%rbp)	#, cv
	.loc 1 887 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, obj
	je	.L229	#,
	.loc 1 888 0
	movq	-40(%rbp), %rax	# obj, tmp154
	movq	(%rax), %rax	# obj_40->sv_any, D.18246
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_42].xmg_stash, D.18250
	movl	$0, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.18250,
	call	Perl_gv_fetchmethod_autoload	#
	movq	%rax, -24(%rbp)	# tmp155, gv
	cmpq	$0, -24(%rbp)	#, gv
	je	.L232	#,
	.loc 1 889 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp156
	movl	12(%rax), %eax	# gv_44->sv_flags, D.18245
	movzbl	%al, %eax	# D.18245, D.18245
	.loc 1 888 0 discriminator 1
	cmpl	$13, %eax	#, D.18245
	jne	.L232	#,
	.loc 1 889 0
	movq	-24(%rbp), %rax	# gv, tmp157
	movq	(%rax), %rax	# gv_44->sv_any, D.18251
	movq	56(%rax), %rax	# _47->xgv_gp, D.18247
	movq	56(%rax), %rax	# _48->gp_cv, tmp158
	movq	%rax, -32(%rbp)	# tmp158, cv
	cmpq	$0, -32(%rbp)	#, cv
	je	.L232	#,
.LBB46:
	.loc 1 890 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.338
	addq	$4, %rax	#, PL_markstack_ptr.339
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.339, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.340
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.341
	cmpq	%rax, %rdx	# PL_markstack_max.341, PL_markstack_ptr.340
	jne	.L233	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L233:
	.loc 1 890 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.342
	movq	%rbx, %rcx	# sp, sp.343
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.344
	subq	%rdx, %rcx	# PL_stack_base.345, D.18252
	movq	%rcx, %rdx	# D.18252, D.18252
	sarq	$3, %rdx	#, tmp159
	movl	%edx, (%rax)	# D.18248, *PL_markstack_ptr.342_54
.LBE46:
.LBB47:
	.loc 1 891 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.346
	movq	%rax, %rdx	# PL_stack_max.346, PL_stack_max.347
	movq	%rbx, %rax	# sp, sp.348
	subq	%rax, %rdx	# sp.348, D.18252
	movq	%rdx, %rax	# D.18252, D.18252
	cmpq	$7, %rax	#, D.18252
	jg	.L234	#,
	.loc 1 891 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L234:
	.loc 1 891 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# mg, tmp160
	movq	24(%rax), %rax	# mg_34->mg_obj, D.18249
	testq	%rax, %rax	# D.18249
	je	.L235	#,
	.loc 1 891 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp161
	movq	24(%rax), %rax	# mg_34->mg_obj, iftmp.349
	jmp	.L236	#
.L235:
	.loc 1 891 0 discriminator 2
	movq	-24(%rbp), %rax	# gv, tmp162
	movq	%rax, %rdi	# tmp162,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18249,
	call	Perl_sv_2mortal	#
.L236:
	.loc 1 891 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.349, *sp_67
.LBE47:
.LBB48:
	.loc 1 892 0 is_stmt 1 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.350
	movq	%rax, %rdx	# PL_stack_max.350, PL_stack_max.351
	movq	%rbx, %rax	# sp, sp.352
	subq	%rax, %rdx	# sp.352, D.18252
	movq	%rdx, %rax	# D.18252, D.18252
	cmpq	$7, %rax	#, D.18252
	jg	.L237	#,
	.loc 1 892 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L237:
	.loc 1 892 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# obj, tmp163
	movl	8(%rax), %eax	# obj_40->sv_refcnt, D.18245
	subl	$1, %eax	#, D.18245
	movl	%eax, %eax	# D.18245, D.18252
	movq	%rax, %rdi	# D.18252,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18249,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18249, *sp_78
.LBE48:
	.loc 1 893 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 894 0 discriminator 2
	call	Perl_push_scope	#
	.loc 1 895 0 discriminator 2
	movq	-32(%rbp), %rax	# cv, tmp164
	movl	$128, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	Perl_call_sv	#
	.loc 1 896 0 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 897 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	jmp	.L229	#
.L232:
	.loc 1 899 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.353
	movq	80(%rax), %rax	# PL_curcop.353_86->cop_warnings, D.18249
	testq	%rax, %rax	# D.18249
	je	.L238	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.354
	movq	80(%rax), %rax	# PL_curcop.354_88->cop_warnings, D.18249
	cmpq	$32, %rax	#, D.18249
	je	.L238	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.355
	movq	80(%rax), %rax	# PL_curcop.355_90->cop_warnings, D.18249
	cmpq	$16, %rax	#, D.18249
	je	.L239	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.356
	movq	80(%rax), %rax	# PL_curcop.356_92->cop_warnings, D.18249
	movq	(%rax), %rax	# _93->sv_any, D.18246
	movq	(%rax), %rax	# MEM[(struct XPV *)_94].xpv_pv, D.18254
	addq	$10, %rax	#, D.18254
	movzbl	(%rax), %eax	# *_96, D.18255
	movsbl	%al, %eax	# D.18255, D.18248
	andl	$64, %eax	#, D.18248
	testl	%eax, %eax	# D.18248
	jne	.L239	#,
.L238:
	.loc 1 899 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.357
	movq	80(%rax), %rax	# PL_curcop.357_100->cop_warnings, D.18249
	testq	%rax, %rax	# D.18249
	jne	.L229	#,
	.loc 1 899 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.358
	movzbl	%al, %eax	# PL_dowarn.358, D.18248
	andl	$1, %eax	#, D.18248
	testl	%eax, %eax	# D.18248
	je	.L229	#,
.L239:
	.loc 1 900 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, mg
	je	.L229	#,
	.loc 1 900 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# obj, tmp165
	movl	8(%rax), %eax	# obj_40->sv_refcnt, D.18245
	cmpl	$1, %eax	#, D.18245
	jbe	.L229	#,
	.loc 1 903 0 is_stmt 1
	movq	-40(%rbp), %rax	# obj, tmp166
	movl	8(%rax), %eax	# obj_40->sv_refcnt, D.18245
	movl	%eax, %eax	# D.18245, D.18256
	.loc 1 901 0
	subq	$1, %rax	#, D.18256
	movq	%rax, %rdx	# D.18256,
	movl	$.LC29, %esi	#,
	movl	$43, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L229:
.LBE45:
	.loc 1 907 0
	movsbl	-57(%rbp), %edx	# how, D.18248
	movq	-56(%rbp), %rax	# sv, tmp167
	movl	%edx, %esi	# D.18248,
	movq	%rax, %rdi	# tmp167,
	call	Perl_sv_unmagic	#
	.loc 1 908 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_110
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.359
	movq	(%rax), %rax	# PL_op.359_111->op_next, D.18244
.L226:
	.loc 1 909 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_pp_untie, .-Perl_pp_untie
	.globl	Perl_pp_tied
	.type	Perl_pp_tied, @function
Perl_pp_tied:
.LFB16:
	.loc 1 912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 913 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 915 0
	movq	%rbx, %rax	# sp, sp.360
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.360_8, tmp83
	movq	%rax, -40(%rbp)	# tmp83, sv
	.loc 1 916 0
	movq	-40(%rbp), %rax	# sv, tmp84
	movl	12(%rax), %eax	# sv_10->sv_flags, D.18260
	movzbl	%al, %eax	# D.18260, D.18260
	cmpl	$11, %eax	#, D.18260
	je	.L241	#,
	.loc 1 916 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_10->sv_flags, D.18260
	movzbl	%al, %eax	# D.18260, D.18260
	cmpl	$10, %eax	#, D.18260
	jne	.L242	#,
.L241:
	.loc 1 916 0 discriminator 1
	movl	$80, %eax	#, iftmp.361
	jmp	.L243	#
.L242:
	movl	$113, %eax	#, iftmp.361
.L243:
	.loc 1 916 0 discriminator 3
	movb	%al, -41(%rbp)	# iftmp.361, how
	.loc 1 919 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp86
	movl	12(%rax), %eax	# sv_10->sv_flags, D.18260
	movzbl	%al, %eax	# D.18260, D.18260
	cmpl	$13, %eax	#, D.18260
	jne	.L244	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp87
	movq	(%rax), %rax	# sv_10->sv_any, D.18261
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_20].xgv_gp, D.18262
	movq	16(%rax), %rax	# _21->gp_io, tmp88
	movq	%rax, -40(%rbp)	# tmp88, sv
	cmpq	$0, -40(%rbp)	#, sv
	jne	.L244	#,
	.loc 1 920 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_23
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.362
	movq	(%rax), %rax	# PL_op.362_24->op_next, D.18259
	jmp	.L245	#
.L244:
	.loc 1 922 0
	movq	-40(%rbp), %rax	# sv, tmp89
	movl	12(%rax), %eax	# sv_1->sv_flags, D.18260
	andl	$32768, %eax	#, D.18260
	testl	%eax, %eax	# D.18260
	je	.L246	#,
	.loc 1 922 0 is_stmt 0 discriminator 1
	movsbl	-41(%rbp), %edx	# how, D.18263
	movq	-40(%rbp), %rax	# sv, tmp90
	movl	%edx, %esi	# D.18263,
	movq	%rax, %rdi	# tmp90,
	call	Perl_mg_find	#
	jmp	.L247	#
.L246:
	.loc 1 922 0 discriminator 2
	movl	$0, %eax	#, iftmp.363
.L247:
	.loc 1 922 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.363, mg
	cmpq	$0, -24(%rbp)	#, mg
	je	.L248	#,
.LBB49:
	.loc 1 923 0 is_stmt 1
	movq	-24(%rbp), %rax	# mg, tmp91
	movq	24(%rax), %rax	# mg_31->mg_obj, D.18264
	testq	%rax, %rax	# D.18264
	je	.L249	#,
	.loc 1 923 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp92
	movq	24(%rax), %rax	# mg_31->mg_obj, iftmp.364
	jmp	.L250	#
.L249:
	.loc 1 923 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp93
	movq	%rax, %rdi	# tmp93,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18264,
	call	Perl_sv_2mortal	#
.L250:
	.loc 1 923 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.364, osv
	.loc 1 924 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# mg, tmp94
	movq	24(%rax), %rax	# mg_31->mg_obj, D.18264
	cmpq	-32(%rbp), %rax	# osv, D.18264
	jne	.L251	#,
	.loc 1 925 0
	movq	-32(%rbp), %rax	# osv, tmp95
	movq	%rax, %rdi	# tmp95,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -32(%rbp)	# tmp96, osv
.L251:
	.loc 1 926 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# osv, tmp97
	movq	%rax, (%rbx)	# tmp97, *sp_39
	.loc 1 927 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.365
	movq	(%rax), %rax	# PL_op.365_40->op_next, D.18259
	jmp	.L245	#
.L248:
.LBE49:
	.loc 1 929 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_42
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.366
	movq	(%rax), %rax	# PL_op.366_43->op_next, D.18259
.L245:
	.loc 1 930 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_pp_tied, .-Perl_pp_tied
	.section	.rodata
.LC30:
	.string	"AnyDBM_File"
.LC31:
	.string	"AnyDBM_File.pm"
.LC32:
	.string	"No dbm on this machine"
	.text
	.globl	Perl_pp_dbmopen
	.type	Perl_pp_dbmopen, @function
Perl_pp_dbmopen:
.LFB17:
	.loc 1 933 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 934 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 936 0
	movq	%rbx, %rax	# sp, sp.367
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.367_9, tmp117
	movq	%rax, -56(%rbp)	# tmp117, right
	movq	%rbx, %rax	# sp, sp.368
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.368_12, tmp118
	movq	%rax, -48(%rbp)	# tmp118, left
	.loc 1 941 0
	movq	%rbx, %rax	# sp, sp.369
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.369_15, tmp119
	movq	%rax, -40(%rbp)	# tmp119, hv
	.loc 1 943 0
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -32(%rbp)	# tmp120, sv
	.loc 1 944 0
	movq	-32(%rbp), %rax	# sv, tmp121
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	Perl_sv_setpv	#
	.loc 1 945 0
	movq	-32(%rbp), %rax	# sv, tmp122
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	Perl_gv_stashsv	#
	movq	%rax, -24(%rbp)	# tmp123, stash
	.loc 1 946 0
	cmpq	$0, -24(%rbp)	#, stash
	je	.L253	#,
	.loc 1 946 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# stash, tmp124
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -64(%rbp)	# tmp125, gv
	cmpq	$0, -64(%rbp)	#, gv
	jne	.L254	#,
.L253:
	.loc 1 947 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 948 0
	movl	$.LC31, %edi	#,
	call	Perl_require_pv	#
	.loc 1 949 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 950 0
	movq	-24(%rbp), %rax	# stash, tmp126
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -64(%rbp)	# tmp127, gv
	cmpq	$0, -64(%rbp)	#, gv
	jne	.L254	#,
	.loc 1 951 0
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L255	#
.L254:
	.loc 1 954 0
	call	Perl_push_scope	#
.LBB50:
	.loc 1 955 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.370
	addq	$4, %rax	#, PL_markstack_ptr.371
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.371, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.372
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.373
	cmpq	%rax, %rdx	# PL_markstack_max.373, PL_markstack_ptr.372
	jne	.L256	#,
	.loc 1 955 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L256:
	.loc 1 955 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.374
	movq	%rbx, %rcx	# sp, sp.375
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.376
	subq	%rdx, %rcx	# PL_stack_base.377, D.18266
	movq	%rcx, %rdx	# D.18266, D.18266
	sarq	$3, %rdx	#, tmp128
	movl	%edx, (%rax)	# D.18267, *PL_markstack_ptr.374_28
.LBE50:
	.loc 1 957 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.378
	movq	%rax, %rdx	# PL_stack_max.378, PL_stack_max.379
	movq	%rbx, %rax	# sp, sp.380
	subq	%rax, %rdx	# sp.380, D.18266
	movq	%rdx, %rax	# D.18266, D.18266
	cmpq	$39, %rax	#, D.18266
	jg	.L257	#,
	.loc 1 957 0 is_stmt 0 discriminator 1
	movl	$5, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L257:
	.loc 1 958 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp129
	movq	%rax, (%rbx)	# tmp129, *sp_41
	.loc 1 959 0
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# left, tmp130
	movq	%rax, (%rbx)	# tmp130, *sp_42
	.loc 1 960 0
	movq	-56(%rbp), %rax	# right, tmp131
	movl	12(%rax), %eax	# right_11->sv_flags, D.18269
	andl	$65536, %eax	#, D.18269
	testl	%eax, %eax	# D.18269
	je	.L258	#,
	.loc 1 960 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# right, tmp132
	movq	(%rax), %rax	# right_11->sv_any, D.18270
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_45].xiv_iv, D.18266
	testq	%rax, %rax	# D.18266
	setne	%al	#, iftmp.381
	jmp	.L259	#
.L258:
	.loc 1 960 0 discriminator 2
	movq	-56(%rbp), %rax	# right, tmp133
	movq	%rax, %rdi	# tmp133,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.18266
	setne	%al	#, iftmp.381
.L259:
	.loc 1 960 0 discriminator 3
	testb	%al, %al	# iftmp.381
	je	.L260	#,
	.loc 1 961 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movl	$66, %edi	#,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18271,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18271, *sp_50
	jmp	.L261	#
.L260:
	.loc 1 963 0
	addq	$8, %rbx	#, sp
	movl	$2, %edi	#,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18271,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18271, *sp_53
.L261:
	.loc 1 964 0
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# right, tmp134
	movq	%rax, (%rbx)	# tmp134, *sp_56
	.loc 1 965 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 966 0
	movq	-64(%rbp), %rax	# gv, tmp135
	movq	(%rax), %rax	# gv_5->sv_any, D.18272
	movq	56(%rax), %rax	# _57->xgv_gp, D.18273
	movq	56(%rax), %rax	# _58->gp_cv, D.18274
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18274,
	call	Perl_call_sv	#
	.loc 1 967 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 969 0
	movq	(%rbx), %rax	# *sp_60, D.18271
	movq	%rax, %rdi	# D.18271,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.18267
	jne	.L262	#,
	.loc 1 970 0
	subq	$8, %rbx	#, sp
.LBB51:
	.loc 1 971 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.382
	addq	$4, %rax	#, PL_markstack_ptr.383
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.383, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.384
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.385
	cmpq	%rax, %rdx	# PL_markstack_max.385, PL_markstack_ptr.384
	jne	.L263	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L263:
	.loc 1 971 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.386
	movq	%rbx, %rcx	# sp, sp.387
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.388
	subq	%rdx, %rcx	# PL_stack_base.389, D.18266
	movq	%rcx, %rdx	# D.18266, D.18266
	sarq	$3, %rdx	#, tmp136
	movl	%edx, (%rax)	# D.18267, *PL_markstack_ptr.386_68
.LBE51:
	.loc 1 972 0 is_stmt 1 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp137
	movq	%rax, (%rbx)	# tmp137, *sp_76
	.loc 1 973 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# left, tmp138
	movq	%rax, (%rbx)	# tmp138, *sp_77
	.loc 1 974 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$0, %edi	#,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18271,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18271, *sp_78
	.loc 1 975 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# right, tmp139
	movq	%rax, (%rbx)	# tmp139, *sp_81
	.loc 1 976 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 977 0 discriminator 2
	movq	-64(%rbp), %rax	# gv, tmp140
	movq	(%rax), %rax	# gv_5->sv_any, D.18272
	movq	56(%rax), %rax	# _82->xgv_gp, D.18273
	movq	56(%rax), %rax	# _83->gp_cv, D.18274
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18274,
	call	Perl_call_sv	#
	.loc 1 978 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.L262:
	.loc 1 981 0
	movq	(%rbx), %rax	# *sp_4, D.18271
	movq	%rax, %rdi	# D.18271,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.18267
	je	.L264	#,
	.loc 1 982 0
	movq	-40(%rbp), %rax	# hv, tmp141
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	Perl_sv_unmagic	#
	.loc 1 983 0
	movq	(%rbx), %rsi	# *sp_4, D.18271
	movq	-40(%rbp), %rax	# hv, tmp142
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$80, %edx	#,
	movq	%rax, %rdi	# tmp142,
	call	Perl_sv_magic	#
.L264:
	.loc 1 985 0
	call	Perl_pop_scope	#
	.loc 1 986 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.390
	movq	(%rax), %rax	# PL_op.390_89->op_next, D.18265
.L255:
	.loc 1 987 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_pp_dbmopen, .-Perl_pp_dbmopen
	.globl	Perl_pp_dbmclose
	.type	Perl_pp_dbmclose, @function
Perl_pp_dbmclose:
.LFB18:
	.loc 1 990 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 991 0
	call	Perl_pp_untie	#
	.loc 1 992 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_pp_dbmclose, .-Perl_pp_dbmclose
	.globl	Perl_pp_sselect
	.type	Perl_pp_sselect, @function
Perl_pp_sselect:
.LFB19:
	.loc 1 995 0
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
	subq	$120, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 997 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.391
	movq	PL_op(%rip), %rax	# PL_op, PL_op.392
	movq	24(%rax), %rax	# PL_op.392_15->op_targ, D.18279
	salq	$3, %rax	#, D.18279
	addq	%rdx, %rax	# PL_curpad.391, D.18280
	movq	(%rax), %rax	# *_18, tmp151
	movq	%rax, -104(%rbp)	# tmp151, targ
	.loc 1 1003 0
	movl	$0, -140(%rbp)	#, maxlen
	.loc 1 1006 0
	leaq	-96(%rbp), %rax	#, tmp152
	movq	%rax, -112(%rbp)	# tmp152, tbuf
	.loc 1 1023 0
	subq	$32, %r13	#, sp
	.loc 1 1024 0
	movl	$1, %r12d	#, i
	jmp	.L268	#
.L271:
	.loc 1 1025 0
	movslq	%r12d, %rax	# i, D.18279
	salq	$3, %rax	#, D.18279
	addq	%r13, %rax	# sp, D.18280
	movq	(%rax), %rax	# *_26, D.18281
	movl	12(%rax), %eax	# _27->sv_flags, D.18282
	andl	$262144, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	jne	.L269	#,
	.loc 1 1026 0
	jmp	.L270	#
.L269:
	.loc 1 1027 0
	movslq	%r12d, %rax	# i, D.18279
	salq	$3, %rax	#, D.18279
	addq	%r13, %rax	# sp, D.18280
	movq	(%rax), %rax	# *_32, D.18281
	movq	(%rax), %rax	# _33->sv_any, D.18283
	movq	8(%rax), %rax	# MEM[(struct XPV *)_34].xpv_cur, D.18279
	movl	%eax, %r14d	# D.18279, j
	.loc 1 1028 0
	cmpl	%r14d, -140(%rbp)	# j, maxlen
	jge	.L270	#,
	.loc 1 1029 0
	movl	%r14d, -140(%rbp)	# j, maxlen
.L270:
	.loc 1 1024 0
	addl	$1, %r12d	#, i
.L268:
	.loc 1 1024 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, i
	jle	.L271	#,
	.loc 1 1059 0 is_stmt 1
	movl	-140(%rbp), %eax	# maxlen, tmp153
	cltd
	shrl	$25, %edx	#, tmp155
	addl	%edx, %eax	# tmp155, tmp156
	andl	$127, %eax	#, tmp157
	subl	%edx, %eax	# tmp155, tmp158
	movl	$128, %edx	#, tmp159
	subl	%eax, %edx	# D.18284, D.18284
	movl	-140(%rbp), %eax	# maxlen, tmp163
	addl	%edx, %eax	# D.18284, tmp162
	movl	%eax, -136(%rbp)	# tmp162, growsize
	.loc 1 1062 0
	movq	32(%r13), %rbx	# MEM[(struct SV * *)sp_22 + 32B], sv
	.loc 1 1063 0
	movl	12(%rbx), %eax	# sv_42->sv_flags, D.18282
	andl	$118423552, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	je	.L272	#,
	.loc 1 1064 0
	movl	12(%rbx), %eax	# sv_42->sv_flags, D.18282
	andl	$131072, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	je	.L273	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_42->sv_any, D.18283
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_47].xnv_nv, iftmp.393
	jmp	.L274	#
.L273:
	.loc 1 1064 0 discriminator 2
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -152(%rbp)	#, %sfp
	movq	-152(%rbp), %rax	# %sfp, iftmp.393
.L274:
	.loc 1 1064 0 discriminator 3
	movq	%rax, -120(%rbp)	# iftmp.393, value
	.loc 1 1065 0 is_stmt 1 discriminator 3
	xorpd	%xmm0, %xmm0	# tmp164
	ucomisd	-120(%rbp), %xmm0	# value, tmp164
	jbe	.L275	#,
	.loc 1 1066 0
	movl	$0, %eax	#, tmp165
	movq	%rax, -120(%rbp)	# tmp165, value
.L275:
	.loc 1 1067 0
	movsd	-120(%rbp), %xmm0	# value, tmp166
	cvttsd2siq	%xmm0, %rax	# tmp166, D.18285
	movq	%rax, -96(%rbp)	# D.18285, timebuf.tv_sec
	.loc 1 1068 0
	movq	-96(%rbp), %rax	# timebuf.tv_sec, D.18285
	cvtsi2sdq	%rax, %xmm0	# D.18285, D.18286
	movsd	-120(%rbp), %xmm1	# value, tmp168
	subsd	%xmm0, %xmm1	# D.18286, tmp167
	movapd	%xmm1, %xmm0	# tmp167, tmp167
	movsd	%xmm0, -120(%rbp)	# tmp167, value
	.loc 1 1069 0
	movsd	-120(%rbp), %xmm1	# value, tmp169
	movsd	.LC34(%rip), %xmm0	#, tmp170
	mulsd	%xmm1, %xmm0	# tmp169, D.18286
	cvttsd2siq	%xmm0, %rax	# D.18286, D.18285
	movq	%rax, -88(%rbp)	# D.18285, timebuf.tv_usec
	jmp	.L277	#
.L272:
	.loc 1 1072 0
	movq	$0, -112(%rbp)	#, tbuf
.L277:
	.loc 1 1074 0
	movl	$1, %r12d	#, i
	jmp	.L278	#
.L286:
	.loc 1 1075 0
	movslq	%r12d, %rax	# i, D.18279
	salq	$3, %rax	#, D.18279
	addq	%r13, %rax	# sp, D.18280
	movq	(%rax), %rbx	# *_62, sv
	.loc 1 1076 0
	movl	12(%rbx), %eax	# sv_63->sv_flags, D.18282
	andl	$118423552, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	jne	.L279	#,
	.loc 1 1077 0
	movslq	%r12d, %rax	# i, tmp171
	movq	$0, -80(%rbp,%rax,8)	#, fd_sets
	.loc 1 1078 0
	jmp	.L280	#
.L279:
	.loc 1 1080 0
	movl	12(%rbx), %eax	# sv_63->sv_flags, D.18282
	andl	$262144, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	jne	.L281	#,
	.loc 1 1081 0
	movl	12(%rbx), %eax	# sv_63->sv_flags, D.18282
	andl	$10223616, %eax	#, D.18282
	cmpl	$262144, %eax	#, D.18282
	jne	.L282	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_63->sv_any, D.18283
	movq	8(%rax), %rax	# MEM[(struct XPV *)_70].xpv_cur, n_a.395
	movq	%rax, -128(%rbp)	# n_a.395, n_a
	jmp	.L281	#
.L282:
	.loc 1 1081 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp172
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp172,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_pvn_force_flags	#
.L281:
	.loc 1 1082 0 is_stmt 1
	movq	(%rbx), %rax	# sv_63->sv_any, D.18283
	movq	16(%rax), %rax	# MEM[(struct XPV *)_75].xpv_len, D.18279
	movl	%eax, %r14d	# D.18279, j
	.loc 1 1083 0
	cmpl	-136(%rbp), %r14d	# growsize, j
	jge	.L283	#,
	.loc 1 1084 0
	movl	-136(%rbp), %eax	# growsize, tmp173
	cltq
	movq	%rax, %rsi	# D.18279,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_grow	#
.L283:
	.loc 1 1086 0
	movq	(%rbx), %rax	# sv_63->sv_any, D.18283
	movq	8(%rax), %rax	# MEM[(struct XPV *)_79].xpv_cur, D.18279
	movl	%eax, %r14d	# D.18279, j
	.loc 1 1087 0
	movq	(%rbx), %rax	# sv_63->sv_any, D.18283
	movq	(%rax), %rdx	# MEM[(struct XPV *)_82].xpv_pv, D.18287
	movslq	%r14d, %rax	# j, D.18288
	leaq	(%rdx,%rax), %r15	#, s
	.loc 1 1088 0
	jmp	.L284	#
.L285:
	.loc 1 1089 0
	movq	%r15, %rax	# s, s.396
	leaq	1(%rax), %r15	#, s
	movb	$0, (%rax)	#, *s.396_87
.L284:
	.loc 1 1088 0 discriminator 1
	addl	$1, %r14d	#, j
	cmpl	-136(%rbp), %r14d	# growsize, j
	jle	.L285	#,
	.loc 1 1100 0
	movq	(%rbx), %rax	# sv_63->sv_any, D.18283
	movq	(%rax), %rdx	# MEM[(struct XPV *)_89].xpv_pv, D.18287
	movslq	%r12d, %rax	# i, tmp174
	movq	%rdx, -80(%rbp,%rax,8)	# D.18287, fd_sets
.L280:
	.loc 1 1074 0
	addl	$1, %r12d	#, i
.L278:
	.loc 1 1074 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, i
	jle	.L286	#,
	.loc 1 1114 0 is_stmt 1
	movq	-56(%rbp), %rcx	# fd_sets, D.18287
	movq	-64(%rbp), %rdx	# fd_sets, D.18287
	movq	-72(%rbp), %rax	# fd_sets, D.18287
	movl	-140(%rbp), %esi	# maxlen, tmp175
	leal	0(,%rsi,8), %edi	#, D.18284
	movq	-112(%rbp), %rsi	# tbuf, tmp176
	movq	%rsi, %r8	# tmp176,
	movq	%rax, %rsi	# D.18287,
	call	select	#
	movl	%eax, -132(%rbp)	# tmp177, nfound
	.loc 1 1121 0
	movl	$1, %r12d	#, i
	jmp	.L287	#
.L289:
	.loc 1 1122 0
	movslq	%r12d, %rax	# i, tmp178
	movq	-80(%rbp,%rax,8), %rax	# fd_sets, D.18287
	testq	%rax, %rax	# D.18287
	je	.L288	#,
	.loc 1 1123 0
	movslq	%r12d, %rax	# i, D.18279
	salq	$3, %rax	#, D.18279
	addq	%r13, %rax	# sp, D.18280
	movq	(%rax), %rbx	# *_101, sv
	.loc 1 1132 0
	movl	12(%rbx), %eax	# sv_102->sv_flags, D.18282
	andl	$16384, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	je	.L288	#,
	.loc 1 1132 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_set	#
.L288:
	.loc 1 1121 0 is_stmt 1
	addl	$1, %r12d	#, i
.L287:
	.loc 1 1121 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, i
	jle	.L289	#,
.LBB52:
	.loc 1 1136 0 is_stmt 1
	movl	-132(%rbp), %eax	# nfound, tmp179
	movslq	%eax, %rdx	# tmp179, D.18285
	movq	-104(%rbp), %rax	# targ, tmp180
	movq	%rdx, %rsi	# D.18285,
	movq	%rax, %rdi	# tmp180,
	call	Perl_sv_setiv	#
.LBB53:
	movq	-104(%rbp), %rax	# targ, tmp181
	movl	12(%rax), %eax	# targ_19->sv_flags, D.18282
	andl	$16384, %eax	#, D.18282
	testl	%eax, %eax	# D.18282
	je	.L290	#,
	.loc 1 1136 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp182
	movq	%rax, %rdi	# tmp182,
	call	Perl_mg_set	#
.L290:
	.loc 1 1136 0 discriminator 2
	addq	$8, %r13	#, sp
	movq	-104(%rbp), %rax	# targ, tmp183
	movq	%rax, 0(%r13)	# tmp183, *sp_109
.LBE53:
.LBE52:
	.loc 1 1137 0 is_stmt 1 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.398
	movzbl	36(%rax), %eax	# PL_op.398_111->op_flags, D.18289
	movzbl	%al, %eax	# D.18289, D.18284
	andl	$3, %eax	#, D.18284
	testl	%eax, %eax	# D.18284
	je	.L291	#,
	.loc 1 1137 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.399
	movzbl	36(%rax), %eax	# PL_op.399_115->op_flags, D.18289
	movzbl	%al, %eax	# D.18289, D.18284
	andl	$3, %eax	#, D.18284
	cmpl	$3, %eax	#, D.18284
	sete	%al	#, iftmp.397
	jmp	.L292	#
.L291:
	.loc 1 1137 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.18284
	sete	%al	#, iftmp.397
.L292:
	.loc 1 1137 0 discriminator 3
	testb	%al, %al	# iftmp.397
	je	.L293	#,
	.loc 1 1137 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, tbuf
	je	.L293	#,
	.loc 1 1138 0 is_stmt 1
	movq	-96(%rbp), %rax	# timebuf.tv_sec, D.18285
	cvtsi2sdq	%rax, %xmm1	# D.18285, D.18286
	.loc 1 1139 0
	movq	-88(%rbp), %rax	# timebuf.tv_usec, D.18285
	cvtsi2sdq	%rax, %xmm0	# D.18285, D.18286
	movsd	.LC34(%rip), %xmm2	#, tmp184
	divsd	%xmm2, %xmm0	# tmp184, D.18286
	.loc 1 1138 0
	addsd	%xmm1, %xmm0	# D.18286, tmp185
	movsd	%xmm0, -120(%rbp)	# tmp185, value
	.loc 1 1140 0
	addq	$8, %r13	#, sp
	movl	$PL_sv_no, %edi	#,
	call	Perl_sv_mortalcopy	#
	movq	%rax, %rbx	#, sv
	movq	%rbx, 0(%r13)	# sv, *sp_128
	.loc 1 1141 0
	movq	-120(%rbp), %rax	# value, tmp186
	movq	%rax, -152(%rbp)	# tmp186, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_setnv	#
.L293:
	.loc 1 1143 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.400
	movq	(%rax), %rax	# PL_op.400_130->op_next, D.18290
	.loc 1 1147 0
	addq	$120, %rsp	#,
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
	.size	Perl_pp_sselect, .-Perl_pp_sselect
	.globl	Perl_setdefout
	.type	Perl_setdefout, @function
Perl_setdefout:
.LFB20:
	.loc 1 1151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gv, gv
	.loc 1 1152 0
	cmpq	$0, -8(%rbp)	#, gv
	je	.L297	#,
	.loc 1 1153 0
	movq	-8(%rbp), %rax	# gv, tmp68
	movq	%rax, PL_Sv(%rip)	# tmp68, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.402
	testq	%rax, %rax	# PL_Sv.402
	je	.L297	#,
	.loc 1 1153 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.403
	movl	8(%rax), %edx	# PL_Sv.403_3->sv_refcnt, D.18292
	addl	$1, %edx	#, D.18292
	movl	%edx, 8(%rax)	# D.18292, PL_Sv.403_3->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.403_3->sv_refcnt, D.18292
	testl	%eax, %eax	# D.18292
	je	.L297	#,
	.loc 1 1153 0
	nop
.L297:
	.loc 1 1154 0 is_stmt 1
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.404
	testq	%rax, %rax	# PL_defoutgv.404
	je	.L299	#,
	.loc 1 1155 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.405
	movq	%rax, %rdi	# PL_defoutgv.405,
	call	Perl_sv_free	#
.L299:
	.loc 1 1156 0
	movq	-8(%rbp), %rax	# gv, tmp69
	movq	%rax, PL_defoutgv(%rip)	# tmp69, PL_defoutgv
	.loc 1 1157 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_setdefout, .-Perl_setdefout
	.globl	Perl_pp_select
	.type	Perl_pp_select, @function
Perl_pp_select:
.LFB21:
	.loc 1 1160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1161 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.406
	movq	PL_op(%rip), %rax	# PL_op, PL_op.407
	movq	24(%rax), %rax	# PL_op.407_10->op_targ, D.18293
	salq	$3, %rax	#, D.18293
	addq	%rdx, %rax	# PL_curpad.406, D.18294
	movq	(%rax), %rax	# *_13, tmp109
	movq	%rax, -48(%rbp)	# tmp109, targ
	.loc 1 1165 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.409
	movzbl	37(%rax), %eax	# PL_op.409_15->op_private, D.18295
	testb	%al, %al	# D.18295
	je	.L301	#,
	.loc 1 1165 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.410
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.410_17, iftmp.408
	jmp	.L302	#
.L301:
	.loc 1 1165 0 discriminator 2
	movl	$0, %eax	#, iftmp.408
.L302:
	.loc 1 1165 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.408, newdefout
	.loc 1 1167 0 is_stmt 1 discriminator 3
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.411
	movq	(%rax), %rax	# PL_defoutgv.411_22->sv_any, D.18296
	movq	56(%rax), %rax	# _23->xgv_gp, D.18297
	movq	48(%rax), %rax	# _24->gp_egv, tmp110
	movq	%rax, -56(%rbp)	# tmp110, egv
	.loc 1 1168 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, egv
	jne	.L303	#,
	.loc 1 1169 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, tmp111
	movq	%rax, -56(%rbp)	# tmp111, egv
.L303:
	.loc 1 1170 0
	movq	-56(%rbp), %rax	# egv, tmp112
	movq	(%rax), %rax	# egv_6->sv_any, D.18296
	movq	80(%rax), %rax	# _27->xgv_stash, tmp113
	movq	%rax, -32(%rbp)	# tmp113, hv
	.loc 1 1171 0
	cmpq	$0, -32(%rbp)	#, hv
	jne	.L304	#,
.LBB54:
	.loc 1 1172 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.412
	movq	%rax, %rdx	# PL_stack_max.412, PL_stack_max.413
	movq	%rbx, %rax	# sp, sp.414
	subq	%rax, %rdx	# sp.414, D.18298
	movq	%rdx, %rax	# D.18298, D.18298
	cmpq	$7, %rax	#, D.18298
	jg	.L305	#,
	.loc 1 1172 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L305:
	.loc 1 1172 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_34
.LBE54:
	jmp	.L306	#
.L304:
.LBB55:
	.loc 1 1174 0 is_stmt 1
	movq	-56(%rbp), %rax	# egv, tmp114
	movq	(%rax), %rax	# egv_6->sv_any, D.18296
	movq	72(%rax), %rax	# _36->xgv_namelen, D.18293
	movl	%eax, %edx	# D.18293, D.18300
	movq	-56(%rbp), %rax	# egv, tmp115
	movq	(%rax), %rax	# egv_6->sv_any, D.18296
	movq	64(%rax), %rsi	# _39->xgv_name, D.18301
	movq	-32(%rbp), %rax	# hv, tmp116
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp116,
	call	Perl_hv_fetch	#
	movq	%rax, -24(%rbp)	# tmp117, gvp
	.loc 1 1175 0
	cmpq	$0, -24(%rbp)	#, gvp
	je	.L307	#,
	.loc 1 1175 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gvp, tmp118
	movq	(%rax), %rax	# *gvp_41, D.18302
	cmpq	-56(%rbp), %rax	# egv, D.18302
	jne	.L307	#,
	.loc 1 1176 0 is_stmt 1
	movq	PL_defoutgv(%rip), %rsi	# PL_defoutgv, PL_defoutgv.415
	movq	-48(%rbp), %rax	# targ, tmp119
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp119,
	call	Perl_gv_efullname4	#
.LBB56:
	.loc 1 1177 0
	movq	-48(%rbp), %rax	# targ, tmp120
	movl	12(%rax), %eax	# targ_14->sv_flags, D.18303
	andl	$16384, %eax	#, D.18303
	testl	%eax, %eax	# D.18303
	je	.L308	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# targ, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_mg_set	#
.L308:
.LBB57:
	.loc 1 1177 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.416
	movq	%rax, %rdx	# PL_stack_max.416, PL_stack_max.417
	movq	%rbx, %rax	# sp, sp.418
	subq	%rax, %rdx	# sp.418, D.18298
	movq	%rdx, %rax	# D.18298, D.18298
	cmpq	$7, %rax	#, D.18298
	jg	.L309	#,
	.loc 1 1177 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L309:
	.loc 1 1177 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# targ, tmp122
	movq	%rax, (%rbx)	# tmp122, *sp_51
.LBE57:
.LBE56:
	jmp	.L306	#
.L307:
.LBB58:
	.loc 1 1180 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.419
	movq	%rax, %rdx	# PL_stack_max.419, PL_stack_max.420
	movq	%rbx, %rax	# sp, sp.421
	subq	%rax, %rdx	# sp.421, D.18298
	movq	%rdx, %rax	# D.18298, D.18298
	cmpq	$7, %rax	#, D.18298
	jg	.L310	#,
	.loc 1 1180 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L310:
	.loc 1 1180 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# egv, tmp123
	movq	%rax, %rdi	# tmp123,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18299,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18299, *sp_58
.L306:
.LBE58:
.LBE55:
	.loc 1 1184 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, newdefout
	je	.L311	#,
	.loc 1 1185 0
	cmpq	$0, -40(%rbp)	#, newdefout
	je	.L312	#,
	.loc 1 1185 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# newdefout, tmp124
	movl	12(%rax), %eax	# MEM[(struct SV *)newdefout_21].sv_flags, D.18303
	movzbl	%al, %eax	# D.18303, D.18303
	cmpl	$13, %eax	#, D.18303
	jne	.L312	#,
	movq	-40(%rbp), %rax	# newdefout, tmp125
	movq	(%rax), %rax	# newdefout_21->sv_any, D.18296
	movq	56(%rax), %rax	# _64->xgv_gp, D.18297
	testq	%rax, %rax	# D.18297
	je	.L312	#,
	movq	-40(%rbp), %rax	# newdefout, tmp126
	movq	(%rax), %rax	# newdefout_21->sv_any, D.18296
	movq	56(%rax), %rax	# _66->xgv_gp, D.18297
	movq	16(%rax), %rax	# _67->gp_io, D.18304
	testq	%rax, %rax	# D.18304
	jne	.L313	#,
.L312:
	.loc 1 1186 0 is_stmt 1
	movq	-40(%rbp), %rax	# newdefout, tmp127
	movq	%rax, %rdi	# tmp127,
	call	Perl_gv_IOadd	#
.L313:
	.loc 1 1187 0
	movq	-40(%rbp), %rax	# newdefout, tmp128
	movq	%rax, %rdi	# tmp128,
	call	Perl_setdefout	#
.L311:
	.loc 1 1190 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.422
	movq	(%rax), %rax	# PL_op.422_69->op_next, D.18305
	.loc 1 1191 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_pp_select, .-Perl_pp_select
	.section	.rodata
.LC35:
	.string	"GETC"
.LC36:
	.string	" "
	.text
	.globl	Perl_pp_getc
	.type	Perl_pp_getc, @function
Perl_pp_getc:
.LFB22:
	.loc 1 1194 0
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
	.loc 1 1195 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.423
	movq	PL_op(%rip), %rax	# PL_op, PL_op.424
	movq	24(%rax), %rax	# PL_op.424_14->op_targ, D.18307
	salq	$3, %rax	#, D.18307
	addq	%rdx, %rax	# PL_curpad.423, D.18308
	movq	(%rax), %rax	# *_17, tmp204
	movq	%rax, -40(%rbp)	# tmp204, targ
	.loc 1 1197 0
	movq	$0, -48(%rbp)	#, io
	.loc 1 1200 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.425
	movzbl	37(%rax), %eax	# PL_op.425_20->op_private, D.18309
	movzbl	%al, %eax	# D.18309, D.18310
	andl	$15, %eax	#, D.18310
	testl	%eax, %eax	# D.18310
	jne	.L316	#,
	.loc 1 1201 0
	movq	PL_stdingv(%rip), %rax	# PL_stdingv, tmp205
	movq	%rax, -56(%rbp)	# tmp205, gv
	jmp	.L317	#
.L316:
	.loc 1 1203 0
	movq	%rbx, %rax	# sp, sp.426
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.426_25, tmp206
	movq	%rax, -56(%rbp)	# tmp206, gv
.L317:
	.loc 1 1205 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L318	#,
	.loc 1 1205 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gv
	je	.L319	#,
	movq	-56(%rbp), %rax	# gv, tmp207
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_3].sv_flags, D.18311
	movzbl	%al, %eax	# D.18311, D.18311
	cmpl	$13, %eax	#, D.18311
	jne	.L319	#,
	movq	-56(%rbp), %rax	# gv, tmp208
	movq	(%rax), %rax	# gv_3->sv_any, D.18312
	movq	56(%rax), %rax	# _30->xgv_gp, D.18313
	testq	%rax, %rax	# D.18313
	je	.L319	#,
	movq	-56(%rbp), %rax	# gv, tmp209
	movq	(%rax), %rax	# gv_3->sv_any, D.18312
	movq	56(%rax), %rax	# _32->xgv_gp, D.18313
	movq	16(%rax), %rax	# _33->gp_io, iftmp.427
	jmp	.L320	#
.L319:
	.loc 1 1205 0 discriminator 2
	movl	$0, %eax	#, iftmp.427
.L320:
	.loc 1 1205 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.427, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L318	#,
	.loc 1 1206 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp210
	movl	12(%rax), %eax	# MEM[(struct SV *)io_36].sv_flags, D.18311
	andl	$32768, %eax	#, D.18311
	testl	%eax, %eax	# D.18311
	je	.L321	#,
	.loc 1 1206 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp211
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	Perl_mg_find	#
	jmp	.L322	#
.L321:
	.loc 1 1206 0 discriminator 2
	movl	$0, %eax	#, iftmp.428
.L322:
	.loc 1 1206 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.428, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L318	#,
.LBB59:
	.loc 1 1208 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.430
	movzbl	36(%rax), %eax	# PL_op.430_42->op_flags, D.18309
	movzbl	%al, %eax	# D.18309, D.18310
	andl	$3, %eax	#, D.18310
	cmpl	$1, %eax	#, D.18310
	je	.L323	#,
	.loc 1 1208 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.432
	movzbl	36(%rax), %eax	# PL_op.432_46->op_flags, D.18309
	movzbl	%al, %eax	# D.18309, D.18310
	andl	$3, %eax	#, D.18310
	cmpl	$2, %eax	#, D.18310
	je	.L324	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.434
	movzbl	36(%rax), %eax	# PL_op.434_50->op_flags, D.18309
	movzbl	%al, %eax	# D.18309, D.18310
	andl	$3, %eax	#, D.18310
	cmpl	$3, %eax	#, D.18310
	je	.L325	#,
	call	Perl_block_gimme	#
	jmp	.L328	#
.L325:
	.loc 1 1208 0 discriminator 2
	movl	$1, %eax	#, iftmp.433
	jmp	.L328	#
.L324:
	movl	$0, %eax	#, iftmp.431
	jmp	.L328	#
.L323:
	movl	$128, %eax	#, iftmp.429
.L328:
	.loc 1 1208 0 discriminator 3
	movl	%eax, -60(%rbp)	# iftmp.429, gimme
.LBB60:
	.loc 1 1209 0 is_stmt 1 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.435
	addq	$4, %rax	#, PL_markstack_ptr.436
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.436, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.437
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.438
	cmpq	%rax, %rdx	# PL_markstack_max.438, PL_markstack_ptr.437
	jne	.L329	#,
	.loc 1 1209 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L329:
	.loc 1 1209 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.439
	movq	%rbx, %rcx	# sp, sp.440
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.441
	subq	%rdx, %rcx	# PL_stack_base.442, D.18314
	movq	%rcx, %rdx	# D.18314, D.18314
	sarq	$3, %rdx	#, tmp212
	movl	%edx, (%rax)	# D.18310, *PL_markstack_ptr.439_65
.LBE60:
.LBB61:
	.loc 1 1210 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.443
	movq	%rax, %rdx	# PL_stack_max.443, PL_stack_max.444
	movq	%rbx, %rax	# sp, sp.445
	subq	%rax, %rdx	# sp.445, D.18314
	movq	%rdx, %rax	# D.18314, D.18314
	cmpq	$7, %rax	#, D.18314
	jg	.L330	#,
	.loc 1 1210 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L330:
	.loc 1 1210 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp213
	movq	24(%rax), %rax	# mg_41->mg_obj, D.18316
	testq	%rax, %rax	# D.18316
	je	.L331	#,
	.loc 1 1210 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp214
	movq	24(%rax), %rax	# mg_41->mg_obj, iftmp.446
	jmp	.L332	#
.L331:
	.loc 1 1210 0 discriminator 2
	movq	-48(%rbp), %rax	# io, tmp215
	movq	%rax, %rdi	# tmp215,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18316,
	call	Perl_sv_2mortal	#
.L332:
	.loc 1 1210 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.446, *sp_78
.LBE61:
	.loc 1 1211 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1212 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1213 0 discriminator 3
	movl	-60(%rbp), %eax	# gimme, tmp216
	movl	%eax, %esi	# tmp216,
	movl	$.LC35, %edi	#,
	call	Perl_call_method	#
	.loc 1 1214 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1215 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1216 0 discriminator 3
	cmpl	$0, -60(%rbp)	#, gimme
	jne	.L333	#,
	.loc 1 1217 0
	movq	(%rbx), %rax	# *sp_84, D.18316
	cmpq	-40(%rbp), %rax	# targ, D.18316
	je	.L333	#,
	.loc 1 1217 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rcx	# *sp_84, D.18316
	movq	-40(%rbp), %rax	# targ, tmp217
	movl	$18, %edx	#,
	movq	%rcx, %rsi	# D.18316,
	movq	%rax, %rdi	# tmp217,
	call	Perl_sv_setsv_flags	#
	movq	-40(%rbp), %rax	# targ, tmp218
	movl	12(%rax), %eax	# targ_18->sv_flags, D.18311
	andl	$16384, %eax	#, D.18311
	testl	%eax, %eax	# D.18311
	je	.L333	#,
	movq	-40(%rbp), %rax	# targ, tmp219
	movq	%rax, %rdi	# tmp219,
	call	Perl_mg_set	#
.L333:
	.loc 1 1218 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.447
	movq	(%rax), %rax	# PL_op.447_89->op_next, D.18306
	jmp	.L334	#
.L318:
.LBE59:
	.loc 1 1220 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L335	#,
	.loc 1 1220 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gv, tmp220
	movq	%rax, %rdi	# tmp220,
	call	Perl_do_eof	#
	testb	%al, %al	# D.18317
	je	.L336	#,
.L335:
	.loc 1 1221 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.448
	movq	80(%rax), %rax	# PL_curcop.448_141->cop_warnings, D.18316
	testq	%rax, %rax	# D.18316
	je	.L337	#,
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.449
	movq	80(%rax), %rax	# PL_curcop.449_143->cop_warnings, D.18316
	cmpq	$32, %rax	#, D.18316
	je	.L337	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.450
	movq	80(%rax), %rax	# PL_curcop.450_145->cop_warnings, D.18316
	cmpq	$16, %rax	#, D.18316
	je	.L338	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.451
	movq	80(%rax), %rax	# PL_curcop.451_147->cop_warnings, D.18316
	movq	(%rax), %rax	# _148->sv_any, D.18318
	movq	(%rax), %rax	# MEM[(struct XPV *)_149].xpv_pv, D.18319
	addq	$2, %rax	#, D.18319
	movzbl	(%rax), %eax	# *_151, D.18317
	movsbl	%al, %eax	# D.18317, D.18310
	andl	$64, %eax	#, D.18310
	testl	%eax, %eax	# D.18310
	jne	.L338	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.452
	movq	80(%rax), %rax	# PL_curcop.452_155->cop_warnings, D.18316
	movq	(%rax), %rax	# _156->sv_any, D.18318
	movq	(%rax), %rax	# MEM[(struct XPV *)_157].xpv_pv, D.18319
	addq	$1, %rax	#, D.18319
	movzbl	(%rax), %eax	# *_159, D.18317
	movsbl	%al, %eax	# D.18317, D.18310
	andl	$16, %eax	#, D.18310
	testl	%eax, %eax	# D.18310
	jne	.L338	#,
.L337:
	.loc 1 1221 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.453
	movq	80(%rax), %rax	# PL_curcop.453_163->cop_warnings, D.18316
	testq	%rax, %rax	# D.18316
	jne	.L339	#,
	.loc 1 1221 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.454
	movzbl	%al, %eax	# PL_dowarn.454, D.18310
	andl	$1, %eax	#, D.18310
	testl	%eax, %eax	# D.18310
	je	.L339	#,
.L338:
	.loc 1 1222 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, io
	je	.L340	#,
	.loc 1 1222 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp221
	movq	(%rax), %rax	# io_4->sv_any, D.18321
	movq	56(%rax), %rax	# _168->xio_ifp, D.18322
	testq	%rax, %rax	# D.18322
	jne	.L339	#,
	movq	-48(%rbp), %rax	# io, tmp222
	movq	(%rax), %rax	# io_4->sv_any, D.18321
	movzbl	162(%rax), %eax	# _170->xio_type, D.18317
	cmpb	$62, %al	#, D.18317
	je	.L339	#,
.L340:
	.loc 1 1223 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.455
	movzwl	32(%rax), %eax	# PL_op.455_172->op_type, D.18323
	movzwl	%ax, %edx	# D.18323, D.18310
	movq	-48(%rbp), %rcx	# io, tmp223
	movq	-56(%rbp), %rax	# gv, tmp224
	movq	%rcx, %rsi	# tmp223,
	movq	%rax, %rdi	# tmp224,
	call	Perl_report_evil_fh	#
.L339:
	.loc 1 1224 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_175
	.loc 1 1225 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_176
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.456
	movq	(%rax), %rax	# PL_op.456_177->op_next, D.18306
	jmp	.L334	#
.L336:
	.loc 1 1227 0
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1228 0
	movq	-40(%rbp), %rax	# targ, tmp225
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp225,
	call	Perl_sv_setpv	#
	.loc 1 1229 0
	movq	-40(%rbp), %rax	# targ, tmp226
	movq	(%rax), %rax	# targ_18->sv_any, D.18318
	movq	(%rax), %r12	# MEM[(struct XPV *)_92].xpv_pv, D.18319
	movq	-56(%rbp), %rax	# gv, tmp227
	movq	(%rax), %rax	# gv_3->sv_any, D.18312
	movq	56(%rax), %rax	# _94->xgv_gp, D.18313
	movq	16(%rax), %rax	# _95->gp_io, D.18320
	movq	(%rax), %rax	# _96->sv_any, D.18321
	movq	56(%rax), %rax	# _97->xio_ifp, D.18322
	movq	%rax, %rdi	# D.18322,
	call	PerlIO_getc	#
	movb	%al, (%r12)	# D.18317, *_93
	.loc 1 1230 0
	movq	-56(%rbp), %rax	# gv, tmp228
	movq	(%rax), %rax	# gv_3->sv_any, D.18312
	movq	56(%rax), %rax	# _101->xgv_gp, D.18313
	movq	16(%rax), %rax	# _102->gp_io, D.18320
	movq	(%rax), %rax	# _103->sv_any, D.18321
	movq	56(%rax), %rax	# _104->xio_ifp, D.18322
	movq	%rax, %rdi	# D.18322,
	call	PerlIO_isutf8	#
	testl	%eax, %eax	# D.18310
	je	.L341	#,
.LBB62:
	.loc 1 1232 0
	movq	-40(%rbp), %rax	# targ, tmp229
	movq	(%rax), %rax	# targ_18->sv_any, D.18318
	movq	(%rax), %rax	# MEM[(struct XPV *)_107].xpv_pv, D.18319
	movzbl	(%rax), %eax	# MEM[(U8 *)_108], D.18309
	movzbl	%al, %eax	# D.18309, D.18310
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.18309
	movzbl	%al, %eax	# D.18309, tmp231
	movq	%rax, -24(%rbp)	# tmp231, len
	.loc 1 1233 0
	cmpq	$1, -24(%rbp)	#, len
	jbe	.L342	#,
	.loc 1 1234 0
	movq	-40(%rbp), %rax	# targ, tmp232
	movq	(%rax), %rax	# targ_18->sv_any, D.18318
	movq	16(%rax), %rax	# MEM[(struct XPV *)_113].xpv_len, D.18307
	movq	-24(%rbp), %rdx	# len, tmp233
	addq	$1, %rdx	#, D.18307
	cmpq	%rdx, %rax	# D.18307, D.18307
	jae	.L344	#,
	.loc 1 1234 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# len, tmp234
	leaq	1(%rax), %rdx	#, D.18307
	movq	-40(%rbp), %rax	# targ, tmp235
	movq	%rdx, %rsi	# D.18307,
	movq	%rax, %rdi	# tmp235,
	call	Perl_sv_grow	#
.L344:
	.loc 1 1235 0 is_stmt 1
	movq	-24(%rbp), %rax	# len, tmp237
	leaq	-1(%rax), %rdx	#, D.18307
	movq	-40(%rbp), %rax	# targ, tmp238
	movq	(%rax), %rax	# targ_18->sv_any, D.18318
	movq	(%rax), %rax	# MEM[(struct XPV *)_121].xpv_pv, D.18319
	leaq	1(%rax), %rcx	#, D.18318
	movq	-56(%rbp), %rax	# gv, tmp239
	movq	(%rax), %rax	# gv_3->sv_any, D.18312
	movq	56(%rax), %rax	# _124->xgv_gp, D.18313
	movq	16(%rax), %rax	# _125->gp_io, D.18320
	movq	(%rax), %rax	# _126->sv_any, D.18321
	movq	56(%rax), %rax	# _127->xio_ifp, D.18322
	movq	%rcx, %rsi	# D.18318,
	movq	%rax, %rdi	# D.18322,
	call	Perl_PerlIO_read	#
	movq	%rax, -24(%rbp)	# D.18314, len
	.loc 1 1236 0
	movq	-40(%rbp), %rax	# targ, tmp240
	movq	(%rax), %rax	# targ_18->sv_any, D.18318
	movq	-24(%rbp), %rdx	# len, tmp241
	addq	$1, %rdx	#, D.18307
	movq	%rdx, 8(%rax)	# D.18307, MEM[(struct XPV *)_131].xpv_cur
.L342:
	.loc 1 1238 0
	movq	-40(%rbp), %rax	# targ, tmp242
	movl	12(%rax), %eax	# targ_18->sv_flags, D.18311
	orl	$536870912, %eax	#, D.18311
	movl	%eax, %edx	# D.18311, D.18311
	movq	-40(%rbp), %rax	# targ, tmp243
	movl	%edx, 12(%rax)	# D.18311, targ_18->sv_flags
.L341:
.LBE62:
.LBB63:
	.loc 1 1240 0
	movq	-40(%rbp), %rax	# targ, tmp244
	movl	12(%rax), %eax	# targ_18->sv_flags, D.18311
	andl	$16384, %eax	#, D.18311
	testl	%eax, %eax	# D.18311
	je	.L345	#,
	.loc 1 1240 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp245
	movq	%rax, %rdi	# tmp245,
	call	Perl_mg_set	#
.L345:
	.loc 1 1240 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp246
	movq	%rax, (%rbx)	# tmp246, *sp_137
.LBE63:
	.loc 1 1241 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.458
	movq	(%rax), %rax	# PL_op.458_139->op_next, D.18306
.L334:
	.loc 1 1242 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_pp_getc, .-Perl_pp_getc
	.globl	Perl_pp_read
	.type	Perl_pp_read, @function
Perl_pp_read:
.LFB23:
	.loc 1 1245 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1246 0
	call	Perl_pp_sysread	#
	.loc 1 1247 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_pp_read, .-Perl_pp_read
	.type	S_doform, @function
S_doform:
.LFB24:
	.loc 1 1251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# cv, cv
	movq	%rsi, -48(%rbp)	# gv, gv
	movq	%rdx, -56(%rbp)	# retop, retop
	.loc 1 1253 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.460
	movzbl	36(%rax), %eax	# PL_op.460_4->op_flags, D.18328
	movzbl	%al, %eax	# D.18328, D.18329
	andl	$3, %eax	#, D.18329
	cmpl	$1, %eax	#, D.18329
	je	.L349	#,
	.loc 1 1253 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.462
	movzbl	36(%rax), %eax	# PL_op.462_8->op_flags, D.18328
	movzbl	%al, %eax	# D.18328, D.18329
	andl	$3, %eax	#, D.18329
	cmpl	$2, %eax	#, D.18329
	je	.L350	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.464
	movzbl	36(%rax), %eax	# PL_op.464_12->op_flags, D.18328
	movzbl	%al, %eax	# D.18328, D.18329
	andl	$3, %eax	#, D.18329
	cmpl	$3, %eax	#, D.18329
	je	.L351	#,
	call	Perl_block_gimme	#
	jmp	.L354	#
.L351:
	.loc 1 1253 0 discriminator 2
	movl	$1, %eax	#, iftmp.463
	jmp	.L354	#
.L350:
	movl	$0, %eax	#, iftmp.461
	jmp	.L354	#
.L349:
	movl	$128, %eax	#, iftmp.459
.L354:
	.loc 1 1253 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.459, gimme
	.loc 1 1255 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1256 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.465
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.465, PL_tmps_floor
	.loc 1 1258 0 discriminator 3
	movq	-56(%rbp), %rax	# retop, tmp151
	movq	%rax, %rdi	# tmp151,
	call	Perl_push_return	#
	.loc 1 1259 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.467
	movl	16(%rax), %edx	# PL_curstackinfo.467_25->si_cxix, D.18329
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.468
	movl	20(%rax), %eax	# PL_curstackinfo.468_27->si_cxmax, D.18329
	cmpl	%eax, %edx	# D.18329, D.18329
	jge	.L355	#,
	.loc 1 1259 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.469
	movl	16(%rax), %edx	# PL_curstackinfo.469_29->si_cxix, D.18329
	addl	$1, %edx	#, D.18329
	movl	%edx, 16(%rax)	# D.18329, PL_curstackinfo.469_29->si_cxix
	jmp	.L356	#
.L355:
	.loc 1 1259 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.470
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.18329, PL_curstackinfo.470_33->si_cxix
.L356:
	.loc 1 1259 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.471
	movq	8(%rax), %rcx	# PL_curstackinfo.471_36->si_cxstack, D.18330
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.472
	movl	16(%rax), %eax	# PL_curstackinfo.472_38->si_cxix, D.18329
	movslq	%eax, %rdx	# D.18329, D.18331
	movq	%rdx, %rax	# D.18331, tmp152
	salq	$3, %rax	#, tmp152
	addq	%rdx, %rax	# D.18331, tmp152
	salq	$4, %rax	#, tmp153
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$6, (%rbx)	#, cx_42->cx_type
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.473
	movq	%rax, %rdx	# PL_stack_sp.473, PL_stack_sp.474
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.475
	subq	%rax, %rdx	# PL_stack_base.476, D.18332
	movq	%rdx, %rax	# D.18332, D.18332
	sarq	$3, %rax	#, tmp154
	movl	%eax, 8(%rbx)	# D.18329, cx_42->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.477
	movq	%rax, 16(%rbx)	# PL_curcop.477, cx_42->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.478
	movq	%rax, %rdx	# PL_markstack_ptr.478, PL_markstack_ptr.479
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.480
	subq	%rax, %rdx	# PL_markstack.481, D.18332
	movq	%rdx, %rax	# D.18332, D.18332
	sarq	$2, %rax	#, tmp155
	movl	%eax, 28(%rbx)	# D.18329, cx_42->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.482
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.482, cx_42->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.483
	movl	%eax, 24(%rbx)	# PL_retstack_ix.483, cx_42->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.484
	movq	%rax, 40(%rbx)	# PL_curpm.484, cx_42->cx_u.cx_blk.blku_oldpm
	movl	-20(%rbp), %eax	# gimme, tmp156
	movb	%al, 48(%rbx)	# D.18328, cx_42->cx_u.cx_blk.blku_gimme
	.loc 1 1260 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# cv, tmp157
	movq	%rax, 56(%rbx)	# tmp157, cx_42->cx_u.cx_blk.blk_u.blku_sub.cv
	movq	-48(%rbp), %rax	# gv, tmp158
	movq	%rax, 64(%rbx)	# tmp158, cx_42->cx_u.cx_blk.blk_u.blku_sub.gv
	movb	$0, 104(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_sub.hasargs
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, PL_defoutgv.485
	movq	%rax, 72(%rbx)	# PL_defoutgv.485, cx_42->cx_u.cx_blk.blk_u.blku_sub.dfoutgv
	movq	72(%rbx), %rax	# cx_42->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, PL_Sv.486
	movq	%rax, PL_Sv(%rip)	# PL_Sv.486, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.488
	testq	%rax, %rax	# PL_Sv.488
	je	.L358	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.489
	movl	8(%rax), %edx	# PL_Sv.489_67->sv_refcnt, D.18333
	addl	$1, %edx	#, D.18333
	movl	%edx, 8(%rax)	# D.18333, PL_Sv.489_67->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.489_67->sv_refcnt, D.18333
	testl	%eax, %eax	# D.18333
	je	.L358	#,
	.loc 1 1260 0
	nop
.L358:
.LBB64:
	.loc 1 1261 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.490
	leal	2(%rax), %edx	#, D.18329
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.491
	cmpl	%eax, %edx	# PL_savestack_max.491, D.18329
	jle	.L359	#,
	.loc 1 1261 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L359:
	.loc 1 1261 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.492
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.493
	leal	1(%rax), %edx	#, PL_savestack_ix.495
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.495, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.18331
	leaq	(%rcx,%rax), %rdx	#, D.18334
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.496
	movq	%rax, (%rdx)	# PL_comppad.496, _82->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.497
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.498
	leal	1(%rax), %edx	#, PL_savestack_ix.500
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.500, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.18331
	addq	%rcx, %rax	# PL_savestack.497, D.18334
	movl	$33, (%rax)	#, _90->any_i32
.LBE64:
	movq	-40(%rbp), %rax	# cv, tmp159
	movq	(%rax), %rax	# cv_62(D)->sv_any, D.18336
	movq	120(%rax), %rax	# _92->xcv_padlist, D.18337
	movq	(%rax), %rax	# _93->sv_any, D.18338
	movq	(%rax), %rax	# _94->xav_array, D.18339
	movq	8(%rax), %rax	# MEM[(struct SV * *)_95 + 8B], PL_comppad.501
	movq	%rax, PL_comppad(%rip)	# PL_comppad.501, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.502
	movq	(%rax), %rax	# PL_comppad.502_97->sv_any, D.18338
	movq	(%rax), %rax	# _98->xav_array, PL_curpad.503
	movq	%rax, PL_curpad(%rip)	# PL_curpad.503, PL_curpad
	.loc 1 1263 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# gv, tmp160
	movq	%rax, %rdi	# tmp160,
	call	Perl_setdefout	#
	.loc 1 1264 0 discriminator 2
	movq	-40(%rbp), %rax	# cv, tmp161
	movq	(%rax), %rax	# cv_62(D)->sv_any, D.18336
	movq	64(%rax), %rax	# _100->xcv_start, D.18340
	.loc 1 1265 0 discriminator 2
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	S_doform, .-S_doform
	.section	.rodata
.LC37:
	.string	"Undefined format \"%s\" called"
.LC38:
	.string	"Not a format reference"
	.text
	.globl	Perl_pp_enterwrite
	.type	Perl_pp_enterwrite, @function
Perl_pp_enterwrite:
.LFB25:
	.loc 1 1268 0
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
	.loc 1 1269 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1275 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.504
	movzbl	37(%rax), %eax	# PL_op.504_11->op_private, D.18342
	movzbl	%al, %eax	# D.18342, D.18343
	andl	$15, %eax	#, D.18343
	testl	%eax, %eax	# D.18343
	jne	.L362	#,
	.loc 1 1276 0
	movq	PL_defoutgv(%rip), %rbx	# PL_defoutgv, gv
	jmp	.L363	#
.L362:
	.loc 1 1278 0
	movq	%r12, %rax	# sp, sp.505
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rbx	# *sp.505_16, gv
	.loc 1 1279 0
	testq	%rbx, %rbx	# gv
	jne	.L363	#,
	.loc 1 1280 0
	movq	PL_defoutgv(%rip), %rbx	# PL_defoutgv, gv
.L363:
	.loc 1 1282 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.506
	movq	%rax, %rdx	# PL_stack_max.506, PL_stack_max.507
	movq	%r12, %rax	# sp, sp.508
	subq	%rax, %rdx	# sp.508, D.18344
	movq	%rdx, %rax	# D.18344, D.18344
	cmpq	$7, %rax	#, D.18344
	jg	.L364	#,
	.loc 1 1282 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L364:
	.loc 1 1283 0 is_stmt 1
	testq	%rbx, %rbx	# gv
	je	.L365	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)gv_3].sv_flags, D.18345
	movzbl	%al, %eax	# D.18345, D.18345
	cmpl	$13, %eax	#, D.18345
	jne	.L365	#,
	movq	(%rbx), %rax	# gv_3->sv_any, D.18346
	movq	56(%rax), %rax	# _27->xgv_gp, D.18347
	testq	%rax, %rax	# D.18347
	je	.L365	#,
	movq	(%rbx), %rax	# gv_3->sv_any, D.18346
	movq	56(%rax), %rax	# _29->xgv_gp, D.18347
	movq	16(%rax), %rax	# _30->gp_io, iftmp.509
	jmp	.L366	#
.L365:
	.loc 1 1283 0 discriminator 2
	movl	$0, %eax	#, iftmp.509
.L366:
	.loc 1 1283 0 discriminator 3
	movq	%rax, %r13	# iftmp.509, io
	.loc 1 1284 0 is_stmt 1 discriminator 3
	testq	%r13, %r13	# io
	jne	.L367	#,
	.loc 1 1285 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_no, (%r12)	#, *sp_34
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.510
	movq	(%rax), %rax	# PL_op.510_35->op_next, D.18341
	jmp	.L368	#
.L367:
	.loc 1 1287 0
	movq	0(%r13), %rax	# io_33->sv_any, D.18348
	movq	136(%rax), %rax	# _37->xio_fmt_gv, D.18349
	testq	%rax, %rax	# D.18349
	je	.L369	#,
	.loc 1 1288 0
	movq	0(%r13), %rax	# io_33->sv_any, D.18348
	movq	136(%rax), %rax	# _39->xio_fmt_gv, tmp102
	movq	%rax, -64(%rbp)	# tmp102, fgv
	jmp	.L370	#
.L369:
	.loc 1 1290 0
	movq	%rbx, -64(%rbp)	# gv, fgv
.L370:
	.loc 1 1292 0
	movq	-64(%rbp), %rax	# fgv, tmp103
	movq	(%rax), %rax	# fgv_4->sv_any, D.18346
	movq	56(%rax), %rax	# _42->xgv_gp, D.18347
	movq	24(%rax), %rax	# _43->gp_form, tmp104
	movq	%rax, -56(%rbp)	# tmp104, cv
	.loc 1 1293 0
	cmpq	$0, -56(%rbp)	#, cv
	jne	.L371	#,
.LBB65:
	.loc 1 1294 0
	movq	$0, -48(%rbp)	#, name
	.loc 1 1295 0
	cmpq	$0, -64(%rbp)	#, fgv
	je	.L372	#,
.LBB66:
	.loc 1 1296 0
	call	Perl_sv_newmortal	#
	movq	%rax, -40(%rbp)	# tmp105, tmpsv
	.loc 1 1297 0
	movq	-64(%rbp), %rsi	# fgv, tmp106
	movq	-40(%rbp), %rax	# tmpsv, tmp107
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp107,
	call	Perl_gv_efullname4	#
	.loc 1 1298 0
	movq	-40(%rbp), %rax	# tmpsv, tmp108
	movl	12(%rax), %eax	# tmpsv_46->sv_flags, D.18345
	andl	$262144, %eax	#, D.18345
	testl	%eax, %eax	# D.18345
	je	.L373	#,
	.loc 1 1298 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tmpsv, tmp109
	movq	(%rax), %rax	# tmpsv_46->sv_any, D.18350
	movq	(%rax), %rax	# MEM[(struct XPV *)_49].xpv_pv, iftmp.511
	jmp	.L374	#
.L373:
	.loc 1 1298 0 discriminator 2
	movq	-40(%rbp), %rax	# tmpsv, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_2pv_nolen	#
.L374:
	.loc 1 1298 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.511, name
.L372:
.LBE66:
	.loc 1 1300 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, name
	je	.L375	#,
	.loc 1 1300 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# name, tmp111
	movzbl	(%rax), %eax	# *name_6, D.18351
	testb	%al, %al	# D.18351
	je	.L375	#,
	.loc 1 1301 0 is_stmt 1
	movq	-48(%rbp), %rax	# name, tmp112
	movq	%rax, %rsi	# tmp112,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L368	#
.L375:
	.loc 1 1302 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L368	#
.L371:
.LBE65:
	.loc 1 1304 0
	movq	-56(%rbp), %rax	# cv, tmp113
	movq	(%rax), %rax	# cv_44->sv_any, D.18352
	movzwl	136(%rax), %eax	# _56->xcv_flags, D.18353
	movzwl	%ax, %eax	# D.18353, D.18343
	andl	$1, %eax	#, D.18343
	testl	%eax, %eax	# D.18343
	je	.L376	#,
	.loc 1 1305 0
	movq	-56(%rbp), %rax	# cv, tmp114
	movq	%rax, %rdi	# tmp114,
	call	Perl_cv_clone	#
	movq	%rax, %rdi	# D.18354,
	call	Perl_sv_2mortal	#
	movq	%rax, -56(%rbp)	# tmp115, cv
.L376:
	.loc 1 1307 0
	movq	0(%r13), %rax	# io_33->sv_any, D.18348
	movq	0(%r13), %rdx	# io_33->sv_any, D.18348
	movzbl	163(%rdx), %edx	# _63->xio_flags, D.18351
	andl	$-9, %edx	#, D.18351
	movb	%dl, 163(%rax)	# D.18351, _62->xio_flags
	.loc 1 1308 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.512
	movq	(%rax), %rdx	# PL_op.512_66->op_next, D.18341
	movq	-56(%rbp), %rax	# cv, tmp116
	movq	%rbx, %rsi	# gv,
	movq	%rax, %rdi	# tmp116,
	call	S_doform	#
.L368:
	.loc 1 1309 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_pp_enterwrite, .-Perl_pp_enterwrite
	.section	.rodata
.LC39:
	.string	"%s_TOP"
.LC40:
	.string	"top"
.LC41:
	.string	"bad top format reference"
	.align 8
.LC42:
	.string	"Undefined top format \"%s\" called"
.LC43:
	.string	"page overflow"
	.text
	.globl	Perl_pp_leavewrite
	.type	Perl_pp_leavewrite, @function
Perl_pp_leavewrite:
.LFB26:
	.loc 1 1312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 1313 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 1314 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.513
	movq	8(%rax), %rcx	# PL_curstackinfo.513_10->si_cxstack, D.18358
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.514
	movl	16(%rax), %eax	# PL_curstackinfo.514_12->si_cxix, D.18359
	movslq	%eax, %rdx	# D.18359, D.18360
	movq	%rdx, %rax	# D.18360, tmp295
	salq	$3, %rax	#, tmp295
	addq	%rdx, %rax	# D.18360, tmp295
	salq	$4, %rax	#, tmp296
	addq	%rcx, %rax	# D.18358, D.18358
	movq	64(%rax), %rax	# _16->cx_u.cx_blk.blk_u.blku_sub.gv, tmp297
	movq	%rax, -104(%rbp)	# tmp297, gv
	.loc 1 1315 0
	movq	-104(%rbp), %rax	# gv, tmp298
	movq	(%rax), %rax	# gv_17->sv_any, D.18361
	movq	56(%rax), %rax	# _18->xgv_gp, D.18362
	movq	16(%rax), %rbx	# _19->gp_io, io
	.loc 1 1316 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	64(%rax), %rax	# _21->xio_ofp, tmp299
	movq	%rax, -96(%rbp)	# tmp299, ofp
	.loc 1 1324 0
	testq	%rbx, %rbx	# io
	je	.L378	#,
	.loc 1 1324 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, ofp
	je	.L378	#,
	.loc 1 1326 0 is_stmt 1
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	104(%rax), %rdx	# _23->xio_lines_left, D.18364
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.515
	movq	(%rax), %rax	# PL_formtarget.515_25->sv_any, D.18365
	movq	144(%rax), %rax	# MEM[(struct XPVFM *)_26].xfm_lines, D.18364
	cmpq	%rax, %rdx	# D.18364, D.18364
	jge	.L378	#,
	.loc 1 1327 0 discriminator 1
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.516
	movq	PL_toptarget(%rip), %rax	# PL_toptarget, PL_toptarget.517
	.loc 1 1326 0 discriminator 1
	cmpq	%rax, %rdx	# PL_toptarget.517, PL_formtarget.516
	je	.L378	#,
.LBB67:
	.loc 1 1331 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	120(%rax), %rax	# _30->xio_top_gv, D.18366
	testq	%rax, %rax	# D.18366
	jne	.L379	#,
.LBB68:
	.loc 1 1335 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	112(%rax), %rax	# _32->xio_top_name, D.18367
	testq	%rax, %rax	# D.18367
	jne	.L380	#,
	.loc 1 1336 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	128(%rax), %rax	# _34->xio_fmt_name, D.18367
	testq	%rax, %rax	# D.18367
	jne	.L381	#,
	.loc 1 1337 0
	movq	(%rbx), %r12	# io_20->sv_any, D.18363
	movq	-104(%rbp), %rax	# gv, tmp300
	movq	(%rax), %rax	# gv_17->sv_any, D.18361
	movq	64(%rax), %rax	# _37->xgv_name, D.18367
	movq	%rax, %rdi	# D.18367,
	call	Perl_savepv	#
	movq	%rax, 128(%r12)	# D.18367, _36->xio_fmt_name
.L381:
	.loc 1 1338 0
	movq	-104(%rbp), %rax	# gv, tmp301
	movq	(%rax), %rax	# gv_17->sv_any, D.18361
	movq	64(%rax), %rax	# _40->xgv_name, D.18367
	movq	%rax, %rsi	# D.18367,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.18368,
	call	Perl_sv_2mortal	#
	movq	%rax, -88(%rbp)	# tmp302, topname
	.loc 1 1339 0
	movq	-88(%rbp), %rax	# topname, tmp303
	movq	(%rax), %rax	# topname_43->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, D.18367
	movl	$14, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18367,
	call	Perl_gv_fetchpv	#
	movq	%rax, -80(%rbp)	# tmp304, topgv
	.loc 1 1340 0
	cmpq	$0, -80(%rbp)	#, topgv
	je	.L382	#,
	.loc 1 1340 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# topgv, tmp305
	movq	(%rax), %rax	# topgv_46->sv_any, D.18361
	movq	56(%rax), %rax	# _47->xgv_gp, D.18362
	movq	24(%rax), %rax	# _48->gp_form, D.18369
	testq	%rax, %rax	# D.18369
	jne	.L383	#,
.L382:
	.loc 1 1341 0 is_stmt 1 discriminator 2
	movl	$14, %edx	#,
	movl	$0, %esi	#,
	movl	$.LC40, %edi	#,
	call	Perl_gv_fetchpv	#
	.loc 1 1340 0 discriminator 2
	testq	%rax, %rax	# D.18366
	jne	.L384	#,
.L383:
	.loc 1 1342 0
	movq	(%rbx), %r12	# io_20->sv_any, D.18363
	movq	-88(%rbp), %rax	# topname, tmp306
	movq	%rax, %rdi	# tmp306,
	call	Perl_savesvpv	#
	movq	%rax, 112(%r12)	# D.18367, _53->xio_top_name
	jmp	.L380	#
.L384:
	.loc 1 1344 0
	movq	(%rbx), %r12	# io_20->sv_any, D.18363
	movl	$.LC40, %edi	#,
	call	Perl_savepv	#
	movq	%rax, 112(%r12)	# D.18367, _51->xio_top_name
.L380:
	.loc 1 1346 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	112(%rax), %rax	# _55->xio_top_name, D.18367
	movl	$14, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18367,
	call	Perl_gv_fetchpv	#
	movq	%rax, -80(%rbp)	# tmp307, topgv
	.loc 1 1347 0
	cmpq	$0, -80(%rbp)	#, topgv
	je	.L385	#,
	.loc 1 1347 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# topgv, tmp308
	movq	(%rax), %rax	# topgv_57->sv_any, D.18361
	movq	56(%rax), %rax	# _58->xgv_gp, D.18362
	movq	24(%rax), %rax	# _59->gp_form, D.18369
	testq	%rax, %rax	# D.18369
	jne	.L386	#,
.L385:
	.loc 1 1348 0 is_stmt 1
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	(%rbx), %rdx	# io_20->sv_any, D.18363
	movq	96(%rdx), %rdx	# _63->xio_page_len, D.18364
	movq	%rdx, 104(%rax)	# D.18364, _62->xio_lines_left
	.loc 1 1349 0
	jmp	.L378	#
.L386:
	.loc 1 1351 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	-80(%rbp), %rdx	# topgv, tmp309
	movq	%rdx, 120(%rax)	# tmp309, _61->xio_top_gv
.L379:
.LBE68:
	.loc 1 1353 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movzbl	163(%rax), %eax	# _65->xio_flags, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$8, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L387	#,
.LBB69:
	.loc 1 1354 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	104(%rax), %rax	# _69->xio_lines_left, D.18364
	movl	%eax, -136(%rbp)	# D.18364, lines
	.loc 1 1355 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.518
	movq	(%rax), %rax	# PL_formtarget.518_72->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_73].xpv_pv, tmp310
	movq	%rax, -120(%rbp)	# tmp310, s
	.loc 1 1356 0
	cmpl	$0, -136(%rbp)	#, lines
	jg	.L388	#,
	.loc 1 1357 0
	jmp	.L378	#
.L388:
	.loc 1 1358 0
	jmp	.L389	#
.L392:
	.loc 1 1359 0
	movq	-120(%rbp), %rax	# s, tmp311
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp311,
	call	strchr	#
	movq	%rax, -120(%rbp)	# tmp312, s
	.loc 1 1360 0
	cmpq	$0, -120(%rbp)	#, s
	jne	.L390	#,
	.loc 1 1361 0
	jmp	.L391	#
.L390:
	.loc 1 1362 0
	addq	$1, -120(%rbp)	#, s
.L389:
	.loc 1 1358 0 discriminator 1
	movl	-136(%rbp), %eax	# lines, lines.519
	leal	-1(%rax), %edx	#, tmp313
	movl	%edx, -136(%rbp)	# tmp313, lines
	testl	%eax, %eax	# lines.519
	jg	.L392	#,
.L391:
	.loc 1 1364 0
	cmpq	$0, -120(%rbp)	#, s
	je	.L387	#,
.LBB70:
	.loc 1 1365 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.520
	movq	(%rax), %rax	# PL_formtarget.520_79->sv_any, D.18365
	movq	8(%rax), %rax	# MEM[(struct XPV *)_80].xpv_cur, tmp314
	movq	%rax, -72(%rbp)	# tmp314, save
	.loc 1 1366 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.521
	movq	(%rax), %rax	# PL_formtarget.521_82->sv_any, D.18365
	movq	-120(%rbp), %rcx	# s, s.522
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.523
	movq	(%rdx), %rdx	# PL_formtarget.523_85->sv_any, D.18365
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_86].xpv_pv, D.18367
	subq	%rdx, %rcx	# D.18364, D.18364
	movq	%rcx, %rdx	# D.18364, D.18364
	movq	%rdx, 8(%rax)	# D.18360, MEM[(struct XPV *)_83].xpv_cur
	.loc 1 1367 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.524
	movq	-96(%rbp), %rdx	# ofp, tmp315
	movq	%rdx, %rsi	# tmp315,
	movq	%rax, %rdi	# PL_formtarget.524,
	call	Perl_do_print	#
	.loc 1 1368 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.525
	movq	(%rax), %rax	# PL_formtarget.525_92->sv_any, D.18365
	movq	-72(%rbp), %rdx	# save, tmp316
	movq	%rdx, 8(%rax)	# tmp316, MEM[(struct XPV *)_93].xpv_cur
	.loc 1 1369 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.526
	movq	-120(%rbp), %rdx	# s, tmp317
	movq	%rdx, %rsi	# tmp317,
	movq	%rax, %rdi	# PL_formtarget.526,
	call	Perl_sv_chop	#
	.loc 1 1370 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.527
	movq	(%rax), %rax	# PL_formtarget.527_95->sv_any, D.18365
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.528
	movq	(%rdx), %rdx	# PL_formtarget.528_97->sv_any, D.18365
	movq	144(%rdx), %rcx	# MEM[(struct XPVFM *)_98].xfm_lines, D.18364
	movq	(%rbx), %rdx	# io_20->sv_any, D.18363
	movq	104(%rdx), %rdx	# _100->xio_lines_left, D.18364
	subq	%rdx, %rcx	# D.18364, D.18364
	movq	%rcx, %rdx	# D.18364, D.18364
	movq	%rdx, 144(%rax)	# D.18364, MEM[(struct XPVFM *)_96].xfm_lines
.L387:
.LBE70:
.LBE69:
	.loc 1 1373 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	104(%rax), %rax	# _103->xio_lines_left, D.18364
	testq	%rax, %rax	# D.18364
	js	.L393	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	88(%rax), %rax	# _105->xio_page, D.18364
	testq	%rax, %rax	# D.18364
	jle	.L393	#,
	.loc 1 1374 0 is_stmt 1
	movq	PL_formfeed(%rip), %rax	# PL_formfeed, PL_formfeed.529
	movq	-96(%rbp), %rdx	# ofp, tmp318
	movq	%rdx, %rsi	# tmp318,
	movq	%rax, %rdi	# PL_formfeed.529,
	call	Perl_do_print	#
.L393:
	.loc 1 1375 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	(%rbx), %rdx	# io_20->sv_any, D.18363
	movq	96(%rdx), %rdx	# _109->xio_page_len, D.18364
	movq	%rdx, 104(%rax)	# D.18364, _108->xio_lines_left
	.loc 1 1376 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	88(%rax), %rdx	# _111->xio_page, D.18364
	addq	$1, %rdx	#, D.18364
	movq	%rdx, 88(%rax)	# D.18364, _111->xio_page
	.loc 1 1377 0
	movq	PL_toptarget(%rip), %rax	# PL_toptarget, PL_toptarget.530
	movq	%rax, PL_formtarget(%rip)	# PL_toptarget.530, PL_formtarget
	.loc 1 1378 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	(%rbx), %rdx	# io_20->sv_any, D.18363
	movzbl	163(%rdx), %edx	# _116->xio_flags, D.18370
	orl	$8, %edx	#, D.18371
	movb	%dl, 163(%rax)	# D.18371, _115->xio_flags
	.loc 1 1379 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	120(%rax), %rax	# _119->xio_top_gv, tmp319
	movq	%rax, -64(%rbp)	# tmp319, fgv
	.loc 1 1380 0
	cmpq	$0, -64(%rbp)	#, fgv
	jne	.L394	#,
	.loc 1 1381 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L395	#
.L394:
	.loc 1 1382 0
	movq	-64(%rbp), %rax	# fgv, tmp320
	movq	(%rax), %rax	# fgv_120->sv_any, D.18361
	movq	56(%rax), %rax	# _122->xgv_gp, D.18362
	movq	24(%rax), %rax	# _123->gp_form, tmp321
	movq	%rax, -128(%rbp)	# tmp321, cv
.LBB71:
	.loc 1 1384 0
	movq	$0, -112(%rbp)	#, name
	.loc 1 1385 0
	cmpq	$0, -128(%rbp)	#, cv
	jne	.L396	#,
.LBB72:
	.loc 1 1386 0
	call	Perl_sv_newmortal	#
	movq	%rax, -56(%rbp)	# tmp322, sv
	.loc 1 1387 0
	movq	-64(%rbp), %rsi	# fgv, tmp323
	movq	-56(%rbp), %rax	# sv, tmp324
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp324,
	call	Perl_gv_efullname4	#
	.loc 1 1388 0
	movq	-56(%rbp), %rax	# sv, tmp325
	movl	12(%rax), %eax	# sv_126->sv_flags, D.18372
	andl	$262144, %eax	#, D.18372
	testl	%eax, %eax	# D.18372
	je	.L397	#,
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp326
	movq	(%rax), %rax	# sv_126->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_129].xpv_pv, iftmp.531
	jmp	.L398	#
.L397:
	.loc 1 1388 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp327
	movq	%rax, %rdi	# tmp327,
	call	Perl_sv_2pv_nolen	#
.L398:
	.loc 1 1388 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.531, name
.L396:
.LBE72:
	.loc 1 1390 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, name
	je	.L399	#,
	.loc 1 1390 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# name, tmp328
	movzbl	(%rax), %eax	# *name_6, D.18370
	testb	%al, %al	# D.18370
	je	.L399	#,
	.loc 1 1391 0 is_stmt 1
	movq	-112(%rbp), %rax	# name, tmp329
	movq	%rax, %rsi	# tmp329,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L395	#
.L399:
.LBE71:
	.loc 1 1397 0
	movq	-128(%rbp), %rax	# cv, tmp330
	movq	(%rax), %rax	# cv_124->sv_any, D.18373
	movzwl	136(%rax), %eax	# _135->xcv_flags, D.18374
	movzwl	%ax, %eax	# D.18374, D.18359
	andl	$1, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L400	#,
	.loc 1 1398 0
	movq	-128(%rbp), %rax	# cv, tmp331
	movq	%rax, %rdi	# tmp331,
	call	Perl_cv_clone	#
	movq	%rax, %rdi	# D.18369,
	call	Perl_sv_2mortal	#
	movq	%rax, -128(%rbp)	# tmp332, cv
.L400:
	.loc 1 1399 0
	movq	PL_op(%rip), %rdx	# PL_op, PL_op.532
	movq	-104(%rbp), %rcx	# gv, tmp333
	movq	-128(%rbp), %rax	# cv, tmp334
	movq	%rcx, %rsi	# tmp333,
	movq	%rax, %rdi	# tmp334,
	call	S_doform	#
	jmp	.L395	#
.L378:
.LBE67:
	.loc 1 1403 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.533
	movq	8(%rax), %rsi	# PL_curstackinfo.533_143->si_cxstack, D.18358
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.534
	movl	16(%rax), %edx	# PL_curstackinfo.534_145->si_cxix, D.18359
	leal	-1(%rdx), %ecx	#, D.18359
	movl	%ecx, 16(%rax)	# D.18359, PL_curstackinfo.534_145->si_cxix
	movslq	%edx, %rdx	# D.18359, D.18360
	movq	%rdx, %rax	# D.18360, tmp335
	salq	$3, %rax	#, tmp335
	addq	%rdx, %rax	# D.18360, tmp335
	salq	$4, %rax	#, tmp336
	leaq	(%rsi,%rax), %r12	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.535
	movl	8(%r12), %edx	# cx_151->cx_u.cx_blk.blku_oldsp, D.18359
	movslq	%edx, %rdx	# D.18359, D.18360
	salq	$3, %rdx	#, D.18360
	addq	%rdx, %rax	# D.18360, tmp337
	movq	%rax, -48(%rbp)	# tmp337, newsp
	movq	16(%r12), %rax	# cx_151->cx_u.cx_blk.blku_oldcop, PL_curcop.536
	movq	%rax, PL_curcop(%rip)	# PL_curcop.536, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.537
	movl	28(%r12), %edx	# cx_151->cx_u.cx_blk.blku_oldmarksp, D.18359
	movslq	%edx, %rdx	# D.18359, D.18360
	salq	$2, %rdx	#, D.18360
	addq	%rdx, %rax	# D.18360, PL_markstack_ptr.538
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.538, PL_markstack_ptr
	movl	32(%r12), %eax	# cx_151->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.539
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.539, PL_scopestack_ix
	movl	24(%r12), %eax	# cx_151->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.540
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.540, PL_retstack_ix
	movq	40(%r12), %rax	# cx_151->cx_u.cx_blk.blku_oldpm, PL_curpm.541
	movq	%rax, PL_curpm(%rip)	# PL_curpm.541, PL_curpm
	movzbl	48(%r12), %eax	# cx_151->cx_u.cx_blk.blku_gimme, D.18375
	movzbl	%al, %eax	# D.18375, tmp338
	movl	%eax, -132(%rbp)	# tmp338, gimme
	.loc 1 1404 0
	movq	72(%r12), %rax	# cx_151->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.18366
	movq	%rax, %rdi	# D.18366,
	call	Perl_setdefout	#
	movq	72(%r12), %rax	# cx_151->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.18366
	movq	%rax, %rdi	# D.18366,
	call	Perl_sv_free	#
	.loc 1 1405 0
	call	Perl_pop_scope	#
	.loc 1 1407 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	64(%rax), %rax	# _170->xio_ofp, tmp339
	movq	%rax, -40(%rbp)	# tmp339, fp
	.loc 1 1408 0
	cmpq	$0, -40(%rbp)	#, fp
	jne	.L401	#,
	.loc 1 1409 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.542
	movq	80(%rax), %rax	# PL_curcop.542_172->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	je	.L402	#,
	.loc 1 1409 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.543
	movq	80(%rax), %rax	# PL_curcop.543_174->cop_warnings, D.18368
	cmpq	$32, %rax	#, D.18368
	je	.L402	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.544
	movq	80(%rax), %rax	# PL_curcop.544_176->cop_warnings, D.18368
	cmpq	$16, %rax	#, D.18368
	je	.L403	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.545
	movq	80(%rax), %rax	# PL_curcop.545_178->cop_warnings, D.18368
	movq	(%rax), %rax	# _179->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_180].xpv_pv, D.18367
	addq	$1, %rax	#, D.18367
	movzbl	(%rax), %eax	# *_182, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$16, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	jne	.L403	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.546
	movq	80(%rax), %rax	# PL_curcop.546_186->cop_warnings, D.18368
	movq	(%rax), %rax	# _187->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_188].xpv_pv, D.18367
	addq	$1, %rax	#, D.18367
	movzbl	(%rax), %eax	# *_190, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$4, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	jne	.L403	#,
.L402:
	.loc 1 1409 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.547
	movq	80(%rax), %rax	# PL_curcop.547_194->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	jne	.L404	#,
	.loc 1 1409 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.548
	movzbl	%al, %eax	# PL_dowarn.548, D.18359
	andl	$1, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L404	#,
.L403:
	.loc 1 1410 0 is_stmt 1
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	56(%rax), %rax	# _199->xio_ifp, D.18376
	testq	%rax, %rax	# D.18376
	je	.L405	#,
	.loc 1 1411 0
	movq	-104(%rbp), %rax	# gv, tmp340
	movl	$-1, %edx	#,
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp340,
	call	Perl_report_evil_fh	#
	jmp	.L404	#
.L405:
	.loc 1 1412 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.549
	movq	80(%rax), %rax	# PL_curcop.549_201->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	je	.L406	#,
	.loc 1 1412 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.550
	movq	80(%rax), %rax	# PL_curcop.550_203->cop_warnings, D.18368
	cmpq	$32, %rax	#, D.18368
	je	.L406	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.551
	movq	80(%rax), %rax	# PL_curcop.551_205->cop_warnings, D.18368
	cmpq	$16, %rax	#, D.18368
	je	.L407	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.552
	movq	80(%rax), %rax	# PL_curcop.552_207->cop_warnings, D.18368
	movq	(%rax), %rax	# _208->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_209].xpv_pv, D.18367
	addq	$1, %rax	#, D.18367
	movzbl	(%rax), %eax	# *_211, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$16, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	jne	.L407	#,
.L406:
	.loc 1 1412 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.553
	movq	80(%rax), %rax	# PL_curcop.553_215->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	jne	.L404	#,
	.loc 1 1412 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.554
	movzbl	%al, %eax	# PL_dowarn.554, D.18359
	andl	$1, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L404	#,
.L407:
	.loc 1 1413 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.555
	movzwl	32(%rax), %eax	# PL_op.555_220->op_type, D.18374
	movzwl	%ax, %edx	# D.18374, D.18359
	movq	-104(%rbp), %rax	# gv, tmp341
	movq	%rbx, %rsi	# io,
	movq	%rax, %rdi	# tmp341,
	call	Perl_report_evil_fh	#
.L404:
	.loc 1 1415 0 discriminator 1
	addq	$8, %r13	#, sp
	movq	$PL_sv_no, 0(%r13)	#, *sp_223
	jmp	.L408	#
.L401:
	.loc 1 1418 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movq	(%rbx), %rdx	# io_20->sv_any, D.18363
	movq	104(%rdx), %rcx	# _225->xio_lines_left, D.18364
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.556
	movq	(%rdx), %rdx	# PL_formtarget.556_227->sv_any, D.18365
	movq	144(%rdx), %rdx	# MEM[(struct XPVFM *)_228].xfm_lines, D.18364
	subq	%rdx, %rcx	# D.18364, D.18364
	movq	%rcx, %rdx	# D.18364, D.18364
	movq	%rdx, 104(%rax)	# D.18364, _224->xio_lines_left
	movq	104(%rax), %rax	# _224->xio_lines_left, D.18364
	testq	%rax, %rax	# D.18364
	jns	.L409	#,
	.loc 1 1419 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.557
	movq	80(%rax), %rax	# PL_curcop.557_232->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	je	.L410	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.558
	movq	80(%rax), %rax	# PL_curcop.558_234->cop_warnings, D.18368
	cmpq	$32, %rax	#, D.18368
	je	.L410	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.559
	movq	80(%rax), %rax	# PL_curcop.559_236->cop_warnings, D.18368
	cmpq	$16, %rax	#, D.18368
	je	.L411	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.560
	movq	80(%rax), %rax	# PL_curcop.560_238->cop_warnings, D.18368
	movq	(%rax), %rax	# _239->sv_any, D.18365
	movq	(%rax), %rax	# MEM[(struct XPV *)_240].xpv_pv, D.18367
	addq	$1, %rax	#, D.18367
	movzbl	(%rax), %eax	# *_242, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$4, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	jne	.L411	#,
.L410:
	.loc 1 1419 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.561
	movq	80(%rax), %rax	# PL_curcop.561_246->cop_warnings, D.18368
	testq	%rax, %rax	# D.18368
	jne	.L409	#,
	.loc 1 1419 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.562
	movzbl	%al, %eax	# PL_dowarn.562, D.18359
	andl	$1, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L409	#,
.L411:
	.loc 1 1420 0 is_stmt 1
	movl	$.LC43, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L409:
	.loc 1 1422 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.563
	movq	-40(%rbp), %rdx	# fp, tmp342
	movq	%rdx, %rsi	# tmp342,
	movq	%rax, %rdi	# PL_formtarget.563,
	call	Perl_do_print	#
	testb	%al, %al	# D.18370
	jne	.L412	#,
	.loc 1 1423 0
	addq	$8, %r13	#, sp
	movq	$PL_sv_no, 0(%r13)	#, *sp_253
	jmp	.L408	#
.L412:
	.loc 1 1425 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.564
	movq	(%rax), %rax	# PL_formtarget.564_254->sv_any, D.18365
	movq	$0, 144(%rax)	#, MEM[(struct XPVFM *)_255].xfm_lines
	.loc 1 1426 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.565
	movq	(%rax), %rax	# PL_formtarget.565_256->sv_any, D.18365
	movq	$0, 8(%rax)	#, MEM[(struct XPV *)_257].xpv_cur
	.loc 1 1427 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.566
	movq	(%rax), %rax	# PL_formtarget.566_258->sv_any, D.18365
	movq	(%rax), %rdx	# MEM[(struct XPV *)_259].xpv_pv, D.18367
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.567
	movq	(%rax), %rax	# PL_formtarget.567_261->sv_any, D.18365
	movq	8(%rax), %rax	# MEM[(struct XPV *)_262].xpv_cur, D.18360
	addq	%rdx, %rax	# D.18367, D.18367
	movb	$0, (%rax)	#, *_264
	.loc 1 1428 0
	movq	(%rbx), %rax	# io_20->sv_any, D.18363
	movzbl	163(%rax), %eax	# _265->xio_flags, D.18370
	movsbl	%al, %eax	# D.18370, D.18359
	andl	$4, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	je	.L413	#,
	.loc 1 1429 0
	movq	-40(%rbp), %rax	# fp, tmp343
	movq	%rax, %rdi	# tmp343,
	call	Perl_PerlIO_flush	#
.L413:
	.loc 1 1430 0
	addq	$8, %r13	#, sp
	movq	$PL_sv_yes, 0(%r13)	#, *sp_269
.L408:
	.loc 1 1434 0
	movq	PL_bodytarget(%rip), %rax	# PL_bodytarget, PL_bodytarget.568
	movq	%rax, PL_formtarget(%rip)	# PL_bodytarget.568, PL_formtarget
	.loc 1 1435 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1436 0
	call	Perl_pop_return	#
.L395:
	.loc 1 1437 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_pp_leavewrite, .-Perl_pp_leavewrite
	.section	.rodata
.LC44:
	.string	"PRINTF"
	.text
	.globl	Perl_pp_prtf
	.type	Perl_pp_prtf, @function
Perl_pp_prtf:
.LFB27:
	.loc 1 1440 0
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
	.loc 1 1441 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.569
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.570
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.572
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.572, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.571_15, D.18383
	cltq
	salq	$3, %rax	#, D.18384
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.573
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.574
	subq	%rax, %rdx	# PL_stack_base.575, D.18385
	movq	%rdx, %rax	# D.18385, D.18385
	sarq	$3, %rax	#, tmp246
	movl	%eax, -64(%rbp)	# D.18385, origmark
	.loc 1 1448 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.576
	movzbl	36(%rax), %eax	# PL_op.576_27->op_flags, D.18386
	movzbl	%al, %eax	# D.18386, D.18383
	andl	$64, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	je	.L415	#,
	.loc 1 1449 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_31, tmp247
	movq	%rax, -56(%rbp)	# tmp247, gv
	jmp	.L416	#
.L415:
	.loc 1 1451 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, tmp248
	movq	%rax, -56(%rbp)	# tmp248, gv
.L416:
	.loc 1 1453 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L417	#,
	.loc 1 1453 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gv
	je	.L418	#,
	movq	-56(%rbp), %rax	# gv, tmp249
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_6].sv_flags, D.18387
	movzbl	%al, %eax	# D.18387, D.18387
	cmpl	$13, %eax	#, D.18387
	jne	.L418	#,
	movq	-56(%rbp), %rax	# gv, tmp250
	movq	(%rax), %rax	# gv_6->sv_any, D.18388
	movq	56(%rax), %rax	# _36->xgv_gp, D.18389
	testq	%rax, %rax	# D.18389
	je	.L418	#,
	movq	-56(%rbp), %rax	# gv, tmp251
	movq	(%rax), %rax	# gv_6->sv_any, D.18388
	movq	56(%rax), %rax	# _38->xgv_gp, D.18389
	movq	16(%rax), %rax	# _39->gp_io, iftmp.577
	jmp	.L419	#
.L418:
	.loc 1 1453 0 discriminator 2
	movl	$0, %eax	#, iftmp.577
.L419:
	.loc 1 1453 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.577, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L417	#,
	.loc 1 1454 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp252
	movl	12(%rax), %eax	# MEM[(struct SV *)io_42].sv_flags, D.18387
	andl	$32768, %eax	#, D.18387
	testl	%eax, %eax	# D.18387
	je	.L420	#,
	.loc 1 1454 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp253
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	Perl_mg_find	#
	jmp	.L421	#
.L420:
	.loc 1 1454 0 discriminator 2
	movl	$0, %eax	#, iftmp.578
.L421:
	.loc 1 1454 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.578, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L417	#,
	.loc 1 1456 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.579
	movl	-64(%rbp), %edx	# origmark, tmp254
	movslq	%edx, %rdx	# tmp254, D.18384
	salq	$3, %rdx	#, D.18384
	addq	%rdx, %rax	# D.18384, D.18390
	cmpq	%r12, %rax	# mark, D.18390
	jne	.L422	#,
	.loc 1 1457 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.580
	movq	%rax, %rdx	# PL_stack_max.580, PL_stack_max.581
	movq	%rbx, %rax	# sp, sp.582
	subq	%rax, %rdx	# sp.582, D.18385
	movq	%rdx, %rax	# D.18385, D.18385
	cmpq	$7, %rax	#, D.18385
	jg	.L423	#,
.LBB73:
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movq	%r12, %rdx	# mark, mark.583
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.584
	subq	%rax, %rdx	# PL_stack_base.585, D.18385
	movq	%rdx, %rax	# D.18385, D.18385
	sarq	$3, %rax	#, tmp255
	movl	%eax, -60(%rbp)	# D.18385, markoff
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.586
	movl	-60(%rbp), %edx	# markoff, tmp256
	movslq	%edx, %rdx	# tmp256, D.18384
	salq	$3, %rdx	#, D.18384
	leaq	(%rax,%rdx), %r12	#, mark
.L423:
.LBE73:
	.loc 1 1458 0 is_stmt 1
	addq	$8, %r12	#, mark
	.loc 1 1459 0
	movq	%rbx, %rdx	# sp, sp.587
	movq	%r12, %rax	# mark, mark.588
	subq	%rax, %rdx	# mark.588, D.18385
	movq	%rdx, %rax	# D.18385, D.18385
	sarq	$3, %rax	#, tmp257
	addq	$1, %rax	#, D.18385
	leaq	0(,%rax,8), %rdx	#, D.18384
	leaq	8(%r12), %rax	#, D.18391
	movq	%r12, %rsi	# mark,
	movq	%rax, %rdi	# D.18391,
	call	memmove	#
	.loc 1 1460 0
	addq	$8, %rbx	#, sp
.L422:
.LBB74:
	.loc 1 1462 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.589
	addq	$4, %rax	#, PL_markstack_ptr.590
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.590, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.591
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.592
	cmpq	%rax, %rdx	# PL_markstack_max.592, PL_markstack_ptr.591
	jne	.L424	#,
	.loc 1 1462 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L424:
	.loc 1 1462 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.593
	leaq	-8(%r12), %rdx	#, D.18390
	movq	%rdx, %rcx	# D.18390, D.18385
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.594
	subq	%rdx, %rcx	# PL_stack_base.595, D.18385
	movq	%rcx, %rdx	# D.18385, D.18385
	sarq	$3, %rdx	#, tmp258
	movl	%edx, (%rax)	# D.18383, *PL_markstack_ptr.593_81
.LBE74:
	.loc 1 1463 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax	# mg, tmp259
	movq	24(%rax), %rax	# mg_47->mg_obj, D.18393
	testq	%rax, %rax	# D.18393
	je	.L425	#,
	.loc 1 1463 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mg, tmp260
	movq	24(%rax), %rax	# mg_47->mg_obj, iftmp.596
	jmp	.L426	#
.L425:
	.loc 1 1463 0 discriminator 2
	movq	-48(%rbp), %rax	# io, tmp261
	movq	%rax, %rdi	# tmp261,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18393,
	call	Perl_sv_2mortal	#
.L426:
	.loc 1 1463 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.596, *mark_5
	.loc 1 1464 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1465 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1466 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC44, %edi	#,
	call	Perl_call_method	#
	.loc 1 1467 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1468 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1469 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.597
	movl	-64(%rbp), %edx	# origmark, tmp262
	movslq	%edx, %rdx	# tmp262, D.18394
	addq	$1, %rdx	#, D.18394
	salq	$3, %rdx	#, D.18394
	leaq	(%rax,%rdx), %r12	#, mark
	.loc 1 1470 0 discriminator 3
	movq	(%rbx), %rax	# *sp_94, D.18393
	movq	%rax, (%r12)	# D.18393, *mark_99
	.loc 1 1471 0 discriminator 3
	movq	%r12, %rbx	# mark, sp
	.loc 1 1472 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.598
	movq	(%rax), %rax	# PL_op.598_102->op_next, D.18382
	jmp	.L427	#
.L417:
	.loc 1 1475 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp263, sv
	.loc 1 1476 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L428	#,
	.loc 1 1476 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gv, tmp264
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_6].sv_flags, D.18387
	movzbl	%al, %eax	# D.18387, D.18387
	cmpl	$13, %eax	#, D.18387
	jne	.L428	#,
	movq	-56(%rbp), %rax	# gv, tmp265
	movq	(%rax), %rax	# gv_6->sv_any, D.18388
	movq	56(%rax), %rax	# _107->xgv_gp, D.18389
	testq	%rax, %rax	# D.18389
	je	.L428	#,
	movq	-56(%rbp), %rax	# gv, tmp266
	movq	(%rax), %rax	# gv_6->sv_any, D.18388
	movq	56(%rax), %rax	# _109->xgv_gp, D.18389
	movq	16(%rax), %rax	# _110->gp_io, iftmp.599
	jmp	.L429	#
.L428:
	.loc 1 1476 0 discriminator 2
	movl	$0, %eax	#, iftmp.599
.L429:
	.loc 1 1476 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.599, io
	cmpq	$0, -48(%rbp)	#, io
	jne	.L430	#,
	.loc 1 1477 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.600
	movq	80(%rax), %rax	# PL_curcop.600_114->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	je	.L431	#,
	.loc 1 1477 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.601
	movq	80(%rax), %rax	# PL_curcop.601_116->cop_warnings, D.18393
	cmpq	$32, %rax	#, D.18393
	je	.L431	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.602
	movq	80(%rax), %rax	# PL_curcop.602_118->cop_warnings, D.18393
	cmpq	$16, %rax	#, D.18393
	je	.L432	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.603
	movq	80(%rax), %rax	# PL_curcop.603_120->cop_warnings, D.18393
	movq	(%rax), %rax	# _121->sv_any, D.18391
	movq	(%rax), %rax	# MEM[(struct XPV *)_122].xpv_pv, D.18395
	addq	$2, %rax	#, D.18395
	movzbl	(%rax), %eax	# *_124, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$64, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	jne	.L432	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.604
	movq	80(%rax), %rax	# PL_curcop.604_128->cop_warnings, D.18393
	movq	(%rax), %rax	# _129->sv_any, D.18391
	movq	(%rax), %rax	# MEM[(struct XPV *)_130].xpv_pv, D.18395
	addq	$1, %rax	#, D.18395
	movzbl	(%rax), %eax	# *_132, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$16, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	jne	.L432	#,
.L431:
	.loc 1 1477 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.605
	movq	80(%rax), %rax	# PL_curcop.605_136->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	jne	.L433	#,
	.loc 1 1477 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.606
	movzbl	%al, %eax	# PL_dowarn.606, D.18383
	andl	$1, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	je	.L433	#,
.L432:
	.loc 1 1478 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.607
	movzwl	32(%rax), %eax	# PL_op.607_141->op_type, D.18397
	movzwl	%ax, %edx	# D.18397, D.18383
	movq	-48(%rbp), %rcx	# io, tmp267
	movq	-56(%rbp), %rax	# gv, tmp268
	movq	%rcx, %rsi	# tmp267,
	movq	%rax, %rdi	# tmp268,
	call	Perl_report_evil_fh	#
.L433:
	.loc 1 1479 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_144
	.loc 1 1480 0
	jmp	.L434	#
.L430:
	.loc 1 1482 0
	movq	-48(%rbp), %rax	# io, tmp269
	movq	(%rax), %rax	# io_113->sv_any, D.18399
	movq	64(%rax), %rax	# _145->xio_ofp, tmp270
	movq	%rax, -24(%rbp)	# tmp270, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L435	#,
	.loc 1 1483 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.608
	movq	80(%rax), %rax	# PL_curcop.608_147->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	je	.L436	#,
	.loc 1 1483 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.609
	movq	80(%rax), %rax	# PL_curcop.609_149->cop_warnings, D.18393
	cmpq	$32, %rax	#, D.18393
	je	.L436	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.610
	movq	80(%rax), %rax	# PL_curcop.610_151->cop_warnings, D.18393
	cmpq	$16, %rax	#, D.18393
	je	.L437	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.611
	movq	80(%rax), %rax	# PL_curcop.611_153->cop_warnings, D.18393
	movq	(%rax), %rax	# _154->sv_any, D.18391
	movq	(%rax), %rax	# MEM[(struct XPV *)_155].xpv_pv, D.18395
	addq	$1, %rax	#, D.18395
	movzbl	(%rax), %eax	# *_157, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$16, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	jne	.L437	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.612
	movq	80(%rax), %rax	# PL_curcop.612_161->cop_warnings, D.18393
	movq	(%rax), %rax	# _162->sv_any, D.18391
	movq	(%rax), %rax	# MEM[(struct XPV *)_163].xpv_pv, D.18395
	addq	$1, %rax	#, D.18395
	movzbl	(%rax), %eax	# *_165, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$4, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	jne	.L437	#,
.L436:
	.loc 1 1483 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.613
	movq	80(%rax), %rax	# PL_curcop.613_169->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	jne	.L438	#,
	.loc 1 1483 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.614
	movzbl	%al, %eax	# PL_dowarn.614, D.18383
	andl	$1, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	je	.L438	#,
.L437:
	.loc 1 1484 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp271
	movq	(%rax), %rax	# io_113->sv_any, D.18399
	movq	56(%rax), %rax	# _174->xio_ifp, D.18400
	testq	%rax, %rax	# D.18400
	je	.L439	#,
	.loc 1 1485 0
	movq	-48(%rbp), %rcx	# io, tmp272
	movq	-56(%rbp), %rax	# gv, tmp273
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# tmp272,
	movq	%rax, %rdi	# tmp273,
	call	Perl_report_evil_fh	#
	jmp	.L438	#
.L439:
	.loc 1 1486 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.615
	movq	80(%rax), %rax	# PL_curcop.615_176->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	je	.L440	#,
	.loc 1 1486 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.616
	movq	80(%rax), %rax	# PL_curcop.616_178->cop_warnings, D.18393
	cmpq	$32, %rax	#, D.18393
	je	.L440	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.617
	movq	80(%rax), %rax	# PL_curcop.617_180->cop_warnings, D.18393
	cmpq	$16, %rax	#, D.18393
	je	.L441	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.618
	movq	80(%rax), %rax	# PL_curcop.618_182->cop_warnings, D.18393
	movq	(%rax), %rax	# _183->sv_any, D.18391
	movq	(%rax), %rax	# MEM[(struct XPV *)_184].xpv_pv, D.18395
	addq	$1, %rax	#, D.18395
	movzbl	(%rax), %eax	# *_186, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$16, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	jne	.L441	#,
.L440:
	.loc 1 1486 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.619
	movq	80(%rax), %rax	# PL_curcop.619_190->cop_warnings, D.18393
	testq	%rax, %rax	# D.18393
	jne	.L438	#,
	.loc 1 1486 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.620
	movzbl	%al, %eax	# PL_dowarn.620, D.18383
	andl	$1, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	je	.L438	#,
.L441:
	.loc 1 1487 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.621
	movzwl	32(%rax), %eax	# PL_op.621_195->op_type, D.18397
	movzwl	%ax, %edx	# D.18397, D.18383
	movq	-48(%rbp), %rcx	# io, tmp274
	movq	-56(%rbp), %rax	# gv, tmp275
	movq	%rcx, %rsi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	Perl_report_evil_fh	#
.L438:
	.loc 1 1489 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_198
	.loc 1 1490 0
	jmp	.L434	#
.L435:
	.loc 1 1493 0
	leaq	8(%r12), %rdx	#, D.18390
	movq	%rbx, %rcx	# sp, sp.622
	movq	%r12, %rax	# mark, mark.623
	subq	%rax, %rcx	# mark.623, D.18385
	movq	%rcx, %rax	# D.18385, D.18385
	sarq	$3, %rax	#, tmp276
	movl	%eax, %ecx	# D.18385, D.18383
	movq	-32(%rbp), %rax	# sv, tmp277
	movl	%ecx, %esi	# D.18383,
	movq	%rax, %rdi	# tmp277,
	call	Perl_do_sprintf	#
	.loc 1 1494 0
	movq	-24(%rbp), %rdx	# fp, tmp278
	movq	-32(%rbp), %rax	# sv, tmp279
	movq	%rdx, %rsi	# tmp278,
	movq	%rax, %rdi	# tmp279,
	call	Perl_do_print	#
	testb	%al, %al	# D.18396
	jne	.L442	#,
	.loc 1 1495 0
	jmp	.L434	#
.L442:
	.loc 1 1497 0
	movq	-48(%rbp), %rax	# io, tmp280
	movq	(%rax), %rax	# io_113->sv_any, D.18399
	movzbl	163(%rax), %eax	# _206->xio_flags, D.18396
	movsbl	%al, %eax	# D.18396, D.18383
	andl	$4, %eax	#, D.18383
	testl	%eax, %eax	# D.18383
	je	.L443	#,
	.loc 1 1498 0
	movq	-24(%rbp), %rax	# fp, tmp281
	movq	%rax, %rdi	# tmp281,
	call	Perl_PerlIO_flush	#
	cmpl	$-1, %eax	#, D.18383
	jne	.L443	#,
	.loc 1 1499 0
	jmp	.L434	#
.L443:
	.loc 1 1501 0
	movq	-32(%rbp), %rax	# sv, tmp282
	movq	%rax, %rdi	# tmp282,
	call	Perl_sv_free	#
	.loc 1 1502 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.624
	movl	-64(%rbp), %edx	# origmark, tmp283
	movslq	%edx, %rdx	# tmp283, D.18384
	salq	$3, %rdx	#, D.18384
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1503 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_215
	.loc 1 1504 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.625
	movq	(%rax), %rax	# PL_op.625_216->op_next, D.18382
	jmp	.L427	#
.L434:
	.loc 1 1507 0
	movq	-32(%rbp), %rax	# sv, tmp284
	movq	%rax, %rdi	# tmp284,
	call	Perl_sv_free	#
	.loc 1 1508 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.626
	movl	-64(%rbp), %edx	# origmark, tmp285
	movslq	%edx, %rdx	# tmp285, D.18384
	salq	$3, %rdx	#, D.18384
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1509 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_222
	.loc 1 1510 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.627
	movq	(%rax), %rax	# PL_op.627_223->op_next, D.18382
.L427:
	.loc 1 1511 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_pp_prtf, .-Perl_pp_prtf
	.globl	Perl_pp_sysopen
	.type	Perl_pp_sysopen, @function
Perl_pp_sysopen:
.LFB28:
	.loc 1 1514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1515 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1522 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.628
	movzbl	37(%rax), %eax	# PL_op.628_8->op_private, D.18402
	movzbl	%al, %eax	# D.18402, D.18403
	andl	$15, %eax	#, D.18403
	cmpl	$3, %eax	#, D.18403
	jle	.L445	#,
	.loc 1 1523 0
	movq	%rbx, %rax	# sp, sp.629
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.629_12, PL_Sv.630
	movq	%rax, PL_Sv(%rip)	# PL_Sv.630, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.632
	movl	12(%rax), %eax	# PL_Sv.632_15->sv_flags, D.18404
	andl	$65536, %eax	#, D.18404
	testl	%eax, %eax	# D.18404
	je	.L446	#,
	.loc 1 1523 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.633
	movq	(%rax), %rax	# PL_Sv.633_18->sv_any, D.18405
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_19].xiv_iv, D.18406
	jmp	.L447	#
.L446:
	.loc 1 1523 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.634
	movq	%rax, %rdi	# PL_Sv.634,
	call	Perl_sv_2iv	#
.L447:
	.loc 1 1523 0 discriminator 1
	movl	%eax, -56(%rbp)	# iftmp.631, perm
	jmp	.L448	#
.L445:
	.loc 1 1525 0 is_stmt 1
	movl	$438, -56(%rbp)	#, perm
.L448:
	.loc 1 1526 0
	movq	%rbx, %rax	# sp, sp.635
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.635_27, PL_Sv.636
	movq	%rax, PL_Sv(%rip)	# PL_Sv.636, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.638
	movl	12(%rax), %eax	# PL_Sv.638_30->sv_flags, D.18404
	andl	$65536, %eax	#, D.18404
	testl	%eax, %eax	# D.18404
	je	.L449	#,
	.loc 1 1526 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.639
	movq	(%rax), %rax	# PL_Sv.639_33->sv_any, D.18405
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_34].xiv_iv, D.18406
	jmp	.L450	#
.L449:
	.loc 1 1526 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.640
	movq	%rax, %rdi	# PL_Sv.640,
	call	Perl_sv_2iv	#
.L450:
	.loc 1 1526 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.637, mode
	.loc 1 1527 0 is_stmt 1 discriminator 3
	movq	%rbx, %rax	# sp, sp.641
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.641_41, tmp104
	movq	%rax, -40(%rbp)	# tmp104, sv
	.loc 1 1528 0 discriminator 3
	movq	%rbx, %rax	# sp, sp.642
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.642_44, tmp105
	movq	%rax, -32(%rbp)	# tmp105, gv
	.loc 1 1532 0 discriminator 3
	movq	-40(%rbp), %rax	# sv, tmp106
	movl	12(%rax), %eax	# sv_43->sv_flags, D.18404
	andl	$262144, %eax	#, D.18404
	testl	%eax, %eax	# D.18404
	je	.L451	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp107
	movq	(%rax), %rax	# sv_43->sv_any, D.18405
	movq	8(%rax), %rax	# MEM[(struct XPV *)_49].xpv_cur, len.644
	movq	%rax, -48(%rbp)	# len.644, len
	movq	-40(%rbp), %rax	# sv, tmp108
	movq	(%rax), %rax	# sv_43->sv_any, D.18405
	movq	(%rax), %rax	# MEM[(struct XPV *)_51].xpv_pv, iftmp.643
	jmp	.L452	#
.L451:
	.loc 1 1532 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp109
	movq	-40(%rbp), %rax	# sv, tmp110
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_2pv_flags	#
.L452:
	.loc 1 1532 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.643, tmps
	.loc 1 1533 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# len, len.645
	movl	%eax, %edx	# len.645, D.18403
	movl	-56(%rbp), %edi	# perm, tmp111
	movl	-52(%rbp), %ecx	# mode, tmp112
	movq	-24(%rbp), %rsi	# tmps, tmp113
	movq	-32(%rbp), %rax	# gv, tmp114
	movq	$0, (%rsp)	#,
	movl	%edi, %r9d	# tmp111,
	movl	%ecx, %r8d	# tmp112,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp114,
	call	Perl_do_open	#
	testb	%al, %al	# D.18407
	je	.L453	#,
	.loc 1 1534 0
	movq	-32(%rbp), %rax	# gv, tmp115
	movq	(%rax), %rax	# gv_46->sv_any, D.18408
	movq	56(%rax), %rax	# _58->xgv_gp, D.18409
	movq	16(%rax), %rax	# _59->gp_io, D.18410
	movq	(%rax), %rax	# _60->sv_any, D.18411
	movq	$0, 80(%rax)	#, _61->xio_lines
	.loc 1 1535 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_62
	jmp	.L454	#
.L453:
	.loc 1 1538 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_63
.L454:
	.loc 1 1540 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.646
	movq	(%rax), %rax	# PL_op.646_64->op_next, D.18412
	.loc 1 1541 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_pp_sysopen, .-Perl_pp_sysopen
	.section	.rodata
.LC45:
	.string	"READ"
.LC46:
	.string	"Negative length"
.LC47:
	.string	"recv"
.LC48:
	.string	"Offset outside string"
	.text
	.globl	Perl_pp_sysread
	.type	Perl_pp_sysread, @function
Perl_pp_sysread:
.LFB29:
	.loc 1 1544 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$160, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 1545 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.647
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.648
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.650
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.650, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.649_36, D.18414
	cltq
	salq	$3, %rax	#, D.18415
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.651
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.652
	subq	%rax, %rdx	# PL_stack_base.653, D.18416
	movq	%rdx, %rax	# D.18416, D.18416
	sarq	$3, %rax	#, tmp366
	movl	%eax, -156(%rbp)	# D.18416, origmark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.654
	movq	PL_op(%rip), %rax	# PL_op, PL_op.655
	movq	24(%rax), %rax	# PL_op.655_49->op_targ, D.18415
	salq	$3, %rax	#, D.18415
	addq	%rdx, %rax	# PL_curpad.654, D.18417
	movq	(%rax), %rax	# *_52, tmp367
	movq	%rax, -80(%rbp)	# tmp367, targ
	.loc 1 1559 0
	movq	$0, -104(%rbp)	#, got
	.loc 1 1561 0
	movb	$0, -165(%rbp)	#, charstart
	.loc 1 1562 0
	movq	$0, -96(%rbp)	#, charskip
	.loc 1 1563 0
	movq	$0, -88(%rbp)	#, skip
	.loc 1 1565 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_58, tmp368
	movq	%rax, -72(%rbp)	# tmp368, gv
	.loc 1 1566 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.656
	movzwl	32(%rax), %eax	# PL_op.656_60->op_type, D.18418
	cmpw	$205, %ax	#, D.18418
	je	.L457	#,
	.loc 1 1566 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.657
	movzwl	32(%rax), %eax	# PL_op.657_62->op_type, D.18418
	cmpw	$212, %ax	#, D.18418
	jne	.L458	#,
.L457:
	.loc 1 1567 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, gv
	je	.L458	#,
	.loc 1 1567 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, gv
	je	.L459	#,
	movq	-72(%rbp), %rax	# gv, tmp369
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_59].sv_flags, D.18419
	movzbl	%al, %eax	# D.18419, D.18419
	cmpl	$13, %eax	#, D.18419
	jne	.L459	#,
	movq	-72(%rbp), %rax	# gv, tmp370
	movq	(%rax), %rax	# gv_59->sv_any, D.18420
	movq	56(%rax), %rax	# _66->xgv_gp, D.18421
	testq	%rax, %rax	# D.18421
	je	.L459	#,
	movq	-72(%rbp), %rax	# gv, tmp371
	movq	(%rax), %rax	# gv_59->sv_any, D.18420
	movq	56(%rax), %rax	# _68->xgv_gp, D.18421
	movq	16(%rax), %rax	# _69->gp_io, iftmp.658
	jmp	.L460	#
.L459:
	.loc 1 1567 0 discriminator 2
	movl	$0, %eax	#, iftmp.658
.L460:
	.loc 1 1567 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.658, io
	cmpq	$0, -64(%rbp)	#, io
	je	.L458	#,
	.loc 1 1568 0 is_stmt 1
	movq	-64(%rbp), %rax	# io, tmp372
	movl	12(%rax), %eax	# MEM[(struct SV *)io_72].sv_flags, D.18419
	andl	$32768, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L461	#,
	.loc 1 1568 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# io, tmp373
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp373,
	call	Perl_mg_find	#
	jmp	.L462	#
.L461:
	.loc 1 1568 0 discriminator 2
	movl	$0, %eax	#, iftmp.659
.L462:
	.loc 1 1568 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.659, mg
	cmpq	$0, -56(%rbp)	#, mg
	je	.L458	#,
.LBB75:
.LBB76:
	.loc 1 1572 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.660
	addq	$4, %rax	#, PL_markstack_ptr.661
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.661, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.662
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.663
	cmpq	%rax, %rdx	# PL_markstack_max.663, PL_markstack_ptr.662
	jne	.L463	#,
	.loc 1 1572 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L463:
	.loc 1 1572 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.664
	leaq	-8(%r12), %rdx	#, D.18417
	movq	%rdx, %rcx	# D.18417, D.18416
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.665
	subq	%rdx, %rcx	# PL_stack_base.666, D.18416
	movq	%rcx, %rdx	# D.18416, D.18416
	sarq	$3, %rdx	#, tmp374
	movl	%edx, (%rax)	# D.18414, *PL_markstack_ptr.664_82
.LBE76:
	.loc 1 1573 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# mg, tmp375
	movq	24(%rax), %rax	# mg_77->mg_obj, D.18423
	testq	%rax, %rax	# D.18423
	je	.L464	#,
	.loc 1 1573 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# mg, tmp376
	movq	24(%rax), %rax	# mg_77->mg_obj, iftmp.667
	jmp	.L465	#
.L464:
	.loc 1 1573 0 discriminator 2
	movq	-64(%rbp), %rax	# io, tmp377
	movq	%rax, %rdi	# tmp377,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18423,
	call	Perl_sv_2mortal	#
.L465:
	.loc 1 1573 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.667, *mark_58
	.loc 1 1574 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1575 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC45, %edi	#,
	call	Perl_call_method	#
	.loc 1 1576 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1577 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1578 0 discriminator 3
	movq	%rbx, %rax	# sp, sp.668
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.668_96, tmp378
	movq	%rax, -48(%rbp)	# tmp378, sv
	.loc 1 1579 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.669
	movl	-156(%rbp), %edx	# origmark, tmp379
	movslq	%edx, %rdx	# tmp379, D.18415
	salq	$3, %rdx	#, D.18415
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1580 0 discriminator 3
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# sv, tmp380
	movq	%rax, (%rbx)	# tmp380, *sp_103
	.loc 1 1581 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.670
	movq	(%rax), %rax	# PL_op.670_104->op_next, D.18413
	jmp	.L522	#
.L458:
.LBE75:
	.loc 1 1584 0
	cmpq	$0, -72(%rbp)	#, gv
	jne	.L467	#,
	.loc 1 1585 0
	jmp	.L468	#
.L467:
	.loc 1 1586 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_106, tmp381
	movq	%rax, -40(%rbp)	# tmp381, bufsv
	.loc 1 1587 0
	movq	-40(%rbp), %rax	# bufsv, tmp382
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$118423552, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	jne	.L469	#,
	.loc 1 1588 0
	movq	-40(%rbp), %rax	# bufsv, tmp383
	movl	$0, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp383,
	call	Perl_sv_setpvn	#
.L469:
	.loc 1 1589 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_110, PL_Sv.671
	movq	%rax, PL_Sv(%rip)	# PL_Sv.671, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.673
	movl	12(%rax), %eax	# PL_Sv.673_112->sv_flags, D.18419
	andl	$65536, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L470	#,
	.loc 1 1589 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.674
	movq	(%rax), %rax	# PL_Sv.674_115->sv_any, D.18424
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_116].xiv_iv, iftmp.672
	jmp	.L471	#
.L470:
	.loc 1 1589 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.675
	movq	%rax, %rdi	# PL_Sv.675,
	call	Perl_sv_2iv	#
.L471:
	.loc 1 1589 0 discriminator 3
	movq	%rax, -128(%rbp)	# iftmp.672, length
	.loc 1 1590 0 is_stmt 1 discriminator 3
	call	__errno_location	#
	movl	$0, (%rax)	#, *_121
	.loc 1 1591 0 discriminator 3
	cmpq	%rbx, %r12	# sp, mark
	jae	.L472	#,
	.loc 1 1592 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_122, PL_Sv.676
	movq	%rax, PL_Sv(%rip)	# PL_Sv.676, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.678
	movl	12(%rax), %eax	# PL_Sv.678_124->sv_flags, D.18419
	andl	$65536, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L473	#,
	.loc 1 1592 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.679
	movq	(%rax), %rax	# PL_Sv.679_127->sv_any, D.18424
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_128].xiv_iv, D.18416
	jmp	.L474	#
.L473:
	.loc 1 1592 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.680
	movq	%rax, %rdi	# PL_Sv.680,
	call	Perl_sv_2iv	#
.L474:
	.loc 1 1592 0 discriminator 1
	movl	%eax, -164(%rbp)	# iftmp.677, offset
	jmp	.L475	#
.L472:
	.loc 1 1594 0 is_stmt 1
	movl	$0, -164(%rbp)	#, offset
.L475:
	.loc 1 1595 0
	cmpq	$0, -72(%rbp)	#, gv
	je	.L476	#,
	.loc 1 1595 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# gv, tmp384
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_59].sv_flags, D.18419
	movzbl	%al, %eax	# D.18419, D.18419
	cmpl	$13, %eax	#, D.18419
	jne	.L476	#,
	movq	-72(%rbp), %rax	# gv, tmp385
	movq	(%rax), %rax	# gv_59->sv_any, D.18420
	movq	56(%rax), %rax	# _138->xgv_gp, D.18421
	testq	%rax, %rax	# D.18421
	je	.L476	#,
	movq	-72(%rbp), %rax	# gv, tmp386
	movq	(%rax), %rax	# gv_59->sv_any, D.18420
	movq	56(%rax), %rax	# _140->xgv_gp, D.18421
	movq	16(%rax), %rax	# _141->gp_io, iftmp.681
	jmp	.L477	#
.L476:
	.loc 1 1595 0 discriminator 2
	movl	$0, %eax	#, iftmp.681
.L477:
	.loc 1 1595 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.681, io
	.loc 1 1596 0 is_stmt 1 discriminator 3
	cmpq	$0, -64(%rbp)	#, io
	je	.L478	#,
	.loc 1 1596 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# io, tmp387
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movq	56(%rax), %rax	# _145->xio_ifp, D.18427
	testq	%rax, %rax	# D.18427
	jne	.L479	#,
.L478:
	.loc 1 1597 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.682
	movq	80(%rax), %rax	# PL_curcop.682_378->cop_warnings, D.18423
	testq	%rax, %rax	# D.18423
	je	.L480	#,
	.loc 1 1597 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.683
	movq	80(%rax), %rax	# PL_curcop.683_380->cop_warnings, D.18423
	cmpq	$32, %rax	#, D.18423
	je	.L480	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.684
	movq	80(%rax), %rax	# PL_curcop.684_382->cop_warnings, D.18423
	cmpq	$16, %rax	#, D.18423
	je	.L481	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.685
	movq	80(%rax), %rax	# PL_curcop.685_384->cop_warnings, D.18423
	movq	(%rax), %rax	# _385->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_386].xpv_pv, D.18433
	addq	$2, %rax	#, D.18433
	movzbl	(%rax), %eax	# *_388, D.18432
	movsbl	%al, %eax	# D.18432, D.18414
	andl	$64, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L481	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.686
	movq	80(%rax), %rax	# PL_curcop.686_392->cop_warnings, D.18423
	movq	(%rax), %rax	# _393->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_394].xpv_pv, D.18433
	addq	$1, %rax	#, D.18433
	movzbl	(%rax), %eax	# *_396, D.18432
	movsbl	%al, %eax	# D.18432, D.18414
	andl	$16, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L481	#,
.L480:
	.loc 1 1597 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.687
	movq	80(%rax), %rax	# PL_curcop.687_400->cop_warnings, D.18423
	testq	%rax, %rax	# D.18423
	jne	.L482	#,
	.loc 1 1597 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.688
	movzbl	%al, %eax	# PL_dowarn.688, D.18414
	andl	$1, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	je	.L482	#,
.L481:
	.loc 1 1598 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.689
	movzwl	32(%rax), %eax	# PL_op.689_405->op_type, D.18418
	movzwl	%ax, %edx	# D.18418, D.18414
	movq	-64(%rbp), %rcx	# io, tmp388
	movq	-72(%rbp), %rax	# gv, tmp389
	movq	%rcx, %rsi	# tmp388,
	movq	%rax, %rdi	# tmp389,
	call	Perl_report_evil_fh	#
.L482:
	.loc 1 1599 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_408
	.loc 1 1600 0
	jmp	.L468	#
.L479:
	.loc 1 1602 0
	movq	-64(%rbp), %rax	# io, tmp390
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movq	56(%rax), %rax	# _147->xio_ifp, D.18427
	movq	%rax, %rdi	# D.18427,
	call	PerlIO_isutf8	#
	movl	%eax, -152(%rbp)	# tmp391, fp_utf8
	cmpl	$0, -152(%rbp)	#, fp_utf8
	je	.L483	#,
	.loc 1 1602 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.690
	movzbl	37(%rax), %eax	# PL_curcop.690_150->op_private, D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	andl	$8, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L483	#,
	.loc 1 1603 0 is_stmt 1
	leaq	-144(%rbp), %rdx	#, tmp392
	movq	-40(%rbp), %rax	# bufsv, tmp393
	movq	%rdx, %rsi	# tmp392,
	movq	%rax, %rdi	# tmp393,
	call	Perl_sv_pvutf8n_force	#
	movq	%rax, -136(%rbp)	# tmp394, buffer
	.loc 1 1605 0
	movq	-40(%rbp), %rax	# bufsv, tmp395
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	orl	$536870912, %eax	#, D.18419
	movl	%eax, %edx	# D.18419, D.18419
	movq	-40(%rbp), %rax	# bufsv, tmp396
	movl	%edx, 12(%rax)	# D.18419, bufsv_107->sv_flags
	.loc 1 1606 0
	movl	$0, -160(%rbp)	#, buffer_utf8
	jmp	.L484	#
.L483:
	.loc 1 1609 0
	movq	-40(%rbp), %rax	# bufsv, tmp397
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$10223616, %eax	#, D.18419
	cmpl	$262144, %eax	#, D.18419
	jne	.L485	#,
	.loc 1 1609 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bufsv, tmp398
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	8(%rax), %rax	# MEM[(struct XPV *)_160].xpv_cur, blen.692
	movq	%rax, -144(%rbp)	# blen.692, blen
	movq	-40(%rbp), %rax	# bufsv, tmp399
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_162].xpv_pv, iftmp.691
	jmp	.L486	#
.L485:
	.loc 1 1609 0 discriminator 2
	leaq	-144(%rbp), %rcx	#, tmp400
	movq	-40(%rbp), %rax	# bufsv, tmp401
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp400,
	movq	%rax, %rdi	# tmp401,
	call	Perl_sv_pvn_force_flags	#
.L486:
	.loc 1 1609 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.691, buffer
	.loc 1 1610 0 is_stmt 1 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.694
	movzbl	37(%rax), %eax	# PL_curcop.694_166->op_private, D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	andl	$8, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L487	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bufsv, tmp402
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$536870912, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L487	#,
	.loc 1 1610 0 discriminator 3
	movl	$1, %eax	#, iftmp.693
	jmp	.L488	#
.L487:
	.loc 1 1610 0 discriminator 2
	movl	$0, %eax	#, iftmp.693
.L488:
	.loc 1 1610 0 discriminator 4
	movl	%eax, -160(%rbp)	# iftmp.693, buffer_utf8
.L484:
	.loc 1 1612 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, length
	jns	.L489	#,
	.loc 1 1613 0
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L522	#
.L489:
	.loc 1 1614 0
	movq	-128(%rbp), %rax	# length, tmp403
	movq	%rax, -32(%rbp)	# tmp403, wanted
	.loc 1 1616 0
	movb	$1, -165(%rbp)	#, charstart
	.loc 1 1617 0
	movq	$0, -96(%rbp)	#, charskip
	.loc 1 1618 0
	movq	$0, -88(%rbp)	#, skip
	.loc 1 1657 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.695
	movzwl	32(%rax), %eax	# PL_op.695_180->op_type, D.18418
	cmpw	$215, %ax	#, D.18418
	jne	.L490	#,
	.loc 1 1658 0
	movl	$.LC47, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L522	#
.L490:
	.loc 1 1660 0
	movq	-40(%rbp), %rax	# bufsv, tmp404
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$536870912, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L491	#,
	.loc 1 1660 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.696
	movzbl	37(%rax), %eax	# PL_curcop.696_185->op_private, D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	andl	$8, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L491	#,
	.loc 1 1662 0 is_stmt 1
	movq	-40(%rbp), %rax	# bufsv, tmp405
	movq	%rax, %rdi	# tmp405,
	call	Perl_sv_len_utf8	#
	movq	%rax, -144(%rbp)	# blen.697, blen
.L491:
	.loc 1 1664 0
	cmpl	$0, -164(%rbp)	#, offset
	jns	.L492	#,
	.loc 1 1665 0
	movl	-164(%rbp), %eax	# offset, tmp406
	negl	%eax	# D.18414
	movl	%eax, %edx	# D.18414, D.18414
	movq	-144(%rbp), %rax	# blen, blen.698
	cmpl	%eax, %edx	# D.18414, D.18414
	jle	.L493	#,
	.loc 1 1666 0
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L522	#
.L493:
	.loc 1 1667 0
	movq	-144(%rbp), %rax	# blen, blen.699
	movl	%eax, %edx	# blen.699, D.18429
	movl	-164(%rbp), %eax	# offset, offset.700
	addl	%edx, %eax	# D.18429, D.18429
	movl	%eax, -164(%rbp)	# D.18429, offset
.L492:
	.loc 1 1669 0
	movq	-40(%rbp), %rax	# bufsv, tmp407
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$536870912, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L494	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.701
	movzbl	37(%rax), %eax	# PL_curcop.701_201->op_private, D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	andl	$8, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L494	#,
	.loc 1 1671 0 is_stmt 1
	movq	-144(%rbp), %rax	# blen, blen.702
	cmpl	-164(%rbp), %eax	# offset, D.18414
	jg	.L495	#,
	.loc 1 1672 0
	movq	-40(%rbp), %rax	# bufsv, tmp408
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	8(%rax), %rax	# MEM[(struct XPV *)_207].xpv_cur, D.18415
	movl	%eax, %edx	# D.18415, D.18429
	movq	-144(%rbp), %rax	# blen, blen.703
	subl	%eax, %edx	# D.18429, D.18429
	movl	-164(%rbp), %eax	# offset, offset.704
	addl	%edx, %eax	# D.18429, D.18429
	movl	%eax, -164(%rbp)	# D.18429, offset
	jmp	.L494	#
.L495:
	.loc 1 1674 0
	movl	-164(%rbp), %edx	# offset, tmp409
	movq	-136(%rbp), %rax	# buffer, tmp410
	movl	%edx, %esi	# tmp409,
	movq	%rax, %rdi	# tmp410,
	call	Perl_utf8_hop	#
	movq	%rax, %rdx	# D.18430, D.18416
	movq	-136(%rbp), %rax	# buffer, buffer.705
	subq	%rax, %rdx	# buffer.705, D.18416
	movq	%rdx, %rax	# D.18416, D.18416
	movl	%eax, -164(%rbp)	# D.18416, offset
.L494:
	.loc 1 1677 0
	movq	-40(%rbp), %rax	# bufsv, tmp411
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	8(%rax), %rax	# MEM[(struct XPV *)_221].xpv_cur, D.18415
	movl	%eax, -148(%rbp)	# D.18415, bufsize
	.loc 1 1683 0
	movq	-40(%rbp), %rax	# bufsv, tmp412
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_224].xpv_len, D.18415
	movl	-164(%rbp), %eax	# offset, tmp413
	movslq	%eax, %rcx	# tmp413, D.18416
	movq	-128(%rbp), %rax	# length, tmp414
	addq	%rcx, %rax	# D.18416, D.18416
	addq	$1, %rax	#, D.18416
	cmpq	%rax, %rdx	# D.18415, D.18415
	jae	.L496	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# offset, tmp415
	movslq	%eax, %rdx	# tmp415, D.18416
	movq	-128(%rbp), %rax	# length, tmp416
	addq	%rdx, %rax	# D.18416, D.18416
	addq	$1, %rax	#, D.18416
	movq	%rax, %rdx	# D.18416, D.18415
	movq	-40(%rbp), %rax	# bufsv, tmp417
	movq	%rdx, %rsi	# D.18415,
	movq	%rax, %rdi	# tmp417,
	call	Perl_sv_grow	#
	jmp	.L497	#
.L496:
	.loc 1 1683 0 discriminator 2
	movq	-40(%rbp), %rax	# bufsv, tmp418
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_235].xpv_pv, iftmp.706
.L497:
	.loc 1 1683 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.706, buffer
	.loc 1 1684 0 is_stmt 1 discriminator 3
	movl	-164(%rbp), %eax	# offset, offset.707
	cmpl	-148(%rbp), %eax	# bufsize, offset.707
	jbe	.L498	#,
	.loc 1 1685 0
	movl	-164(%rbp), %eax	# offset, offset.708
	subl	-148(%rbp), %eax	# bufsize, D.18419
	movl	%eax, %eax	# D.18419, D.18415
	movl	-148(%rbp), %ecx	# bufsize, D.18431
	movq	-136(%rbp), %rdx	# buffer, tmp419
	addq	%rdx, %rcx	# tmp419, D.18424
	movq	%rax, %rdx	# D.18415,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.18424,
	call	memset	#
.L498:
	.loc 1 1687 0
	movl	-164(%rbp), %eax	# offset, tmp420
	cltq
	addq	%rax, -136(%rbp)	# D.18431, buffer
	.loc 1 1688 0
	cmpl	$0, -160(%rbp)	#, buffer_utf8
	jne	.L499	#,
	.loc 1 1689 0
	movq	-40(%rbp), %rax	# bufsv, tmp421
	movq	%rax, -112(%rbp)	# tmp421, read_target
	jmp	.L500	#
.L499:
	.loc 1 1696 0
	movq	-40(%rbp), %rax	# bufsv, tmp422
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movl	-164(%rbp), %edx	# offset, tmp423
	movslq	%edx, %rdx	# tmp423, D.18415
	movq	%rdx, 8(%rax)	# D.18415, MEM[(struct XPV *)_247].xpv_cur
	.loc 1 1698 0
	call	Perl_sv_newmortal	#
	movq	%rax, -112(%rbp)	# tmp424, read_target
	.loc 1 1699 0
	movq	-112(%rbp), %rax	# read_target, tmp425
	movl	12(%rax), %eax	# read_target_249->sv_flags, D.18419
	movzbl	%al, %eax	# D.18419, D.18419
	cmpl	$3, %eax	#, D.18419
	ja	.L501	#,
	.loc 1 1699 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# read_target, tmp426
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp426,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.18432
	je	.L503	#,
.L501:
	.loc 1 1699 0 discriminator 1
	nop
.L503:
	.loc 1 1700 0 is_stmt 1
	movq	-112(%rbp), %rax	# read_target, tmp427
	movq	(%rax), %rax	# read_target_249->sv_any, D.18424
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_255].xpv_len, D.18415
	movq	-128(%rbp), %rax	# length, tmp428
	addq	$1, %rax	#, D.18416
	cmpq	%rax, %rdx	# D.18415, D.18415
	jae	.L504	#,
	.loc 1 1700 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# length, tmp429
	addq	$1, %rax	#, D.18416
	movq	%rax, %rdx	# D.18416, D.18415
	movq	-112(%rbp), %rax	# read_target, tmp430
	movq	%rdx, %rsi	# D.18415,
	movq	%rax, %rdi	# tmp430,
	call	Perl_sv_grow	#
	jmp	.L505	#
.L504:
	.loc 1 1700 0 discriminator 2
	movq	-112(%rbp), %rax	# read_target, tmp431
	movq	(%rax), %rax	# read_target_249->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_262].xpv_pv, iftmp.710
.L505:
	.loc 1 1700 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.710, buffer
.L500:
	.loc 1 1703 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.711
	movzwl	32(%rax), %eax	# PL_op.711_265->op_type, D.18418
	cmpw	$212, %ax	#, D.18418
	jne	.L506	#,
	.loc 1 1712 0
	movq	-128(%rbp), %rbx	# length, length.712
	movq	-64(%rbp), %rax	# io, tmp432
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movq	56(%rax), %rax	# _268->xio_ifp, D.18427
	movq	%rax, %rdi	# D.18427,
	call	Perl_PerlIO_fileno	#
	movq	-136(%rbp), %rcx	# buffer, tmp433
	movq	%rbx, %rdx	# length.712,
	movq	%rcx, %rsi	# tmp433,
	movl	%eax, %edi	# D.18414,
	call	read	#
	movq	%rax, -120(%rbp)	# tmp434, count
	jmp	.L507	#
.L506:
	.loc 1 1731 0
	movq	-128(%rbp), %rdx	# length, length.713
	movq	-64(%rbp), %rax	# io, tmp435
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movq	56(%rax), %rax	# _273->xio_ifp, D.18427
	movq	-136(%rbp), %rcx	# buffer, tmp436
	movq	%rcx, %rsi	# tmp436,
	movq	%rax, %rdi	# D.18427,
	call	Perl_PerlIO_read	#
	movq	%rax, -120(%rbp)	# tmp437, count
	.loc 1 1733 0
	cmpq	$0, -120(%rbp)	#, count
	jne	.L507	#,
	.loc 1 1733 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# io, tmp438
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movq	56(%rax), %rax	# _276->xio_ifp, D.18427
	movq	%rax, %rdi	# D.18427,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.18414
	je	.L507	#,
	.loc 1 1734 0 is_stmt 1
	movq	$-1, -120(%rbp)	#, count
.L507:
	.loc 1 1736 0
	cmpq	$0, -120(%rbp)	#, count
	jns	.L508	#,
	.loc 1 1737 0
	movq	-64(%rbp), %rax	# io, tmp439
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movzbl	162(%rax), %eax	# _280->xio_type, D.18432
	cmpb	$62, %al	#, D.18432
	jne	.L509	#,
	.loc 1 1737 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.714
	movq	80(%rax), %rax	# PL_curcop.714_282->cop_warnings, D.18423
	testq	%rax, %rax	# D.18423
	je	.L510	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.715
	movq	80(%rax), %rax	# PL_curcop.715_284->cop_warnings, D.18423
	cmpq	$32, %rax	#, D.18423
	je	.L510	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.716
	movq	80(%rax), %rax	# PL_curcop.716_286->cop_warnings, D.18423
	cmpq	$16, %rax	#, D.18423
	je	.L511	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.717
	movq	80(%rax), %rax	# PL_curcop.717_288->cop_warnings, D.18423
	movq	(%rax), %rax	# _289->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_290].xpv_pv, D.18433
	addq	$1, %rax	#, D.18433
	movzbl	(%rax), %eax	# *_292, D.18432
	movsbl	%al, %eax	# D.18432, D.18414
	andl	$4, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L511	#,
.L510:
	.loc 1 1737 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.718
	movq	80(%rax), %rax	# PL_curcop.718_296->cop_warnings, D.18423
	testq	%rax, %rax	# D.18423
	jne	.L509	#,
	.loc 1 1737 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.719
	movzbl	%al, %eax	# PL_dowarn.719, D.18414
	andl	$1, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	je	.L509	#,
.L511:
	.loc 1 1738 0 is_stmt 1
	movq	-64(%rbp), %rcx	# io, tmp440
	movq	-72(%rbp), %rax	# gv, tmp441
	movl	$-2, %edx	#,
	movq	%rcx, %rsi	# tmp440,
	movq	%rax, %rdi	# tmp441,
	call	Perl_report_evil_fh	#
	.loc 1 1739 0
	jmp	.L468	#
.L509:
	jmp	.L468	#
.L508:
	.loc 1 1741 0
	movq	-112(%rbp), %rax	# read_target, tmp442
	movq	(%rax), %rax	# read_target_11->sv_any, D.18424
	movq	-136(%rbp), %rcx	# buffer, buffer.720
	movq	-112(%rbp), %rdx	# read_target, tmp443
	movq	(%rdx), %rdx	# read_target_11->sv_any, D.18424
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_303].xpv_pv, D.18433
	subq	%rdx, %rcx	# D.18416, D.18416
	movq	-120(%rbp), %rdx	# count, tmp444
	addq	%rcx, %rdx	# D.18416, D.18416
	movq	%rdx, 8(%rax)	# D.18415, MEM[(struct XPV *)_301].xpv_cur
	.loc 1 1742 0
	movq	-112(%rbp), %rax	# read_target, tmp445
	movq	(%rax), %rax	# read_target_11->sv_any, D.18424
	movq	(%rax), %rdx	# MEM[(struct XPV *)_309].xpv_pv, D.18433
	movq	-112(%rbp), %rax	# read_target, tmp446
	movq	(%rax), %rax	# read_target_11->sv_any, D.18424
	movq	8(%rax), %rax	# MEM[(struct XPV *)_311].xpv_cur, D.18415
	addq	%rdx, %rax	# D.18433, D.18433
	movb	$0, (%rax)	#, *_313
	.loc 1 1743 0
	movq	-112(%rbp), %rax	# read_target, tmp447
	movl	12(%rax), %eax	# read_target_11->sv_flags, D.18419
	andl	$1223753727, %eax	#, D.18419
	movl	%eax, %edx	# D.18419, D.18419
	movq	-112(%rbp), %rax	# read_target, tmp448
	movl	%edx, 12(%rax)	# D.18419, read_target_11->sv_flags
	movq	-112(%rbp), %rax	# read_target, tmp449
	movl	12(%rax), %eax	# read_target_11->sv_flags, D.18419
	orl	$67371008, %eax	#, D.18419
	movl	%eax, %edx	# D.18419, D.18419
	movq	-112(%rbp), %rax	# read_target, tmp450
	movl	%edx, 12(%rax)	# D.18419, read_target_11->sv_flags
	.loc 1 1744 0
	cmpl	$0, -152(%rbp)	#, fp_utf8
	je	.L512	#,
	.loc 1 1744 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.721
	movzbl	37(%rax), %eax	# PL_curcop.721_318->op_private, D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	andl	$8, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L512	#,
.LBB77:
	.loc 1 1746 0 is_stmt 1
	movq	-120(%rbp), %rdx	# count, count.722
	movq	-136(%rbp), %rax	# buffer, tmp454
	addq	%rdx, %rax	# count.722, tmp453
	movq	%rax, -24(%rbp)	# tmp453, bend
	.loc 1 1747 0
	jmp	.L513	#
.L516:
	.loc 1 1748 0
	cmpb	$0, -165(%rbp)	#, charstart
	je	.L514	#,
	.loc 1 1749 0
	movq	-136(%rbp), %rax	# buffer, tmp455
	movzbl	(%rax), %eax	# MEM[(U8 *)buffer_6], D.18428
	movzbl	%al, %eax	# D.18428, D.18414
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.18428
	movzbl	%al, %eax	# D.18428, tmp457
	movq	%rax, -88(%rbp)	# tmp457, skip
	.loc 1 1750 0
	movq	$0, -96(%rbp)	#, charskip
.L514:
	.loc 1 1752 0
	movq	-96(%rbp), %rax	# charskip, tmp458
	movq	-88(%rbp), %rdx	# skip, tmp459
	subq	%rax, %rdx	# tmp458, D.18431
	movq	-136(%rbp), %rax	# buffer, tmp460
	addq	%rdx, %rax	# D.18431, D.18433
	cmpq	-24(%rbp), %rax	# bend, D.18433
	jbe	.L515	#,
	.loc 1 1754 0
	movq	-136(%rbp), %rdx	# buffer, buffer.723
	movq	-24(%rbp), %rax	# bend, bend.724
	subq	%rax, %rdx	# bend.724, D.18416
	movq	%rdx, %rax	# D.18416, D.18416
	movq	%rax, %rdx	# D.18416, D.18415
	movq	-88(%rbp), %rax	# skip, tmp461
	addq	%rdx, %rax	# D.18415, D.18415
	movq	%rax, -128(%rbp)	# D.18415, length
	.loc 1 1755 0
	movq	-24(%rbp), %rdx	# bend, bend.725
	movq	-40(%rbp), %rax	# bufsv, tmp462
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_338].xpv_pv, D.18433
	subq	%rax, %rdx	# D.18416, D.18416
	movq	%rdx, %rax	# D.18416, D.18416
	movl	%eax, -164(%rbp)	# D.18416, offset
	.loc 1 1756 0
	movb	$0, -165(%rbp)	#, charstart
	.loc 1 1757 0
	movq	-120(%rbp), %rax	# count, count.726
	addq	%rax, -96(%rbp)	# count.726, charskip
	.loc 1 1758 0
	jmp	.L494	#
.L515:
	.loc 1 1761 0
	addq	$1, -104(%rbp)	#, got
	.loc 1 1762 0
	movq	-88(%rbp), %rax	# skip, tmp463
	addq	%rax, -136(%rbp)	# tmp463, buffer
	.loc 1 1763 0
	movb	$1, -165(%rbp)	#, charstart
	.loc 1 1764 0
	movq	$0, -96(%rbp)	#, charskip
.L513:
	.loc 1 1747 0 discriminator 1
	movq	-136(%rbp), %rax	# buffer, tmp464
	cmpq	-24(%rbp), %rax	# bend, tmp464
	jb	.L516	#,
	.loc 1 1770 0
	movq	-104(%rbp), %rax	# got, tmp465
	cmpq	-32(%rbp), %rax	# wanted, tmp465
	jae	.L517	#,
	.loc 1 1770 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# count, tmp466
	cmpq	-128(%rbp), %rax	# length, tmp466
	jne	.L517	#,
	.loc 1 1771 0 is_stmt 1
	movq	-104(%rbp), %rax	# got, tmp467
	movq	-32(%rbp), %rdx	# wanted, tmp468
	subq	%rax, %rdx	# tmp467, D.18415
	movq	%rdx, %rax	# D.18415, D.18415
	movq	%rax, -128(%rbp)	# D.18415, length
	.loc 1 1772 0
	movq	-24(%rbp), %rdx	# bend, bend.727
	movq	-40(%rbp), %rax	# bufsv, tmp469
	movq	(%rax), %rax	# bufsv_107->sv_any, D.18424
	movq	(%rax), %rax	# MEM[(struct XPV *)_353].xpv_pv, D.18433
	subq	%rax, %rdx	# D.18416, D.18416
	movq	%rdx, %rax	# D.18416, D.18416
	movl	%eax, -164(%rbp)	# D.18416, offset
	.loc 1 1773 0
	jmp	.L494	#
.L517:
	.loc 1 1776 0
	movq	-104(%rbp), %rax	# got, tmp470
	movq	%rax, -120(%rbp)	# tmp470, count
	.loc 1 1777 0
	movq	-40(%rbp), %rax	# bufsv, tmp471
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	orl	$536870912, %eax	#, D.18419
	movl	%eax, %edx	# D.18419, D.18419
	movq	-40(%rbp), %rax	# bufsv, tmp472
	movl	%edx, 12(%rax)	# D.18419, bufsv_107->sv_flags
.LBE77:
	.loc 1 1744 0
	jmp	.L518	#
.L512:
	.loc 1 1779 0
	cmpl	$0, -160(%rbp)	#, buffer_utf8
	je	.L518	#,
	.loc 1 1782 0
	movq	-112(%rbp), %rcx	# read_target, tmp473
	movq	-40(%rbp), %rax	# bufsv, tmp474
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp473,
	movq	%rax, %rdi	# tmp474,
	call	Perl_sv_catsv_flags	#
.L518:
	.loc 1 1784 0
	movq	-40(%rbp), %rax	# bufsv, tmp475
	movl	12(%rax), %eax	# bufsv_107->sv_flags, D.18419
	andl	$16384, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L519	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bufsv, tmp476
	movq	%rax, %rdi	# tmp476,
	call	Perl_mg_set	#
.L519:
	.loc 1 1786 0 is_stmt 1
	movq	-64(%rbp), %rax	# io, tmp477
	movq	(%rax), %rax	# io_144->sv_any, D.18426
	movzbl	163(%rax), %eax	# _363->xio_flags, D.18432
	movsbl	%al, %eax	# D.18432, D.18414
	andl	$16, %eax	#, D.18414
	testl	%eax, %eax	# D.18414
	jne	.L520	#,
	.loc 1 1787 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.728
	testb	%al, %al	# PL_tainting.728
	je	.L520	#,
	.loc 1 1787 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bufsv, tmp478
	movq	%rax, %rdi	# tmp478,
	call	Perl_sv_taint	#
.L520:
	.loc 1 1788 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.729
	movl	-156(%rbp), %edx	# origmark, tmp479
	movslq	%edx, %rdx	# tmp479, D.18415
	salq	$3, %rdx	#, D.18415
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB78:
	.loc 1 1789 0
	movq	-120(%rbp), %rdx	# count, tmp480
	movq	-80(%rbp), %rax	# targ, tmp481
	movq	%rdx, %rsi	# tmp480,
	movq	%rax, %rdi	# tmp481,
	call	Perl_sv_setiv	#
.LBB79:
	movq	-80(%rbp), %rax	# targ, tmp482
	movl	12(%rax), %eax	# targ_53->sv_flags, D.18419
	andl	$16384, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L521	#,
	.loc 1 1789 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# targ, tmp483
	movq	%rax, %rdi	# tmp483,
	call	Perl_mg_set	#
.L521:
	.loc 1 1789 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-80(%rbp), %rax	# targ, tmp484
	movq	%rax, (%rbx)	# tmp484, *sp_374
.LBE79:
.LBE78:
	.loc 1 1790 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.730
	movq	(%rax), %rax	# PL_op.730_376->op_next, D.18413
	jmp	.L522	#
.L468:
	.loc 1 1793 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.731
	movl	-156(%rbp), %edx	# origmark, tmp485
	movslq	%edx, %rdx	# tmp485, D.18415
	salq	$3, %rdx	#, D.18415
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1794 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_413
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.732
	movq	(%rax), %rax	# PL_op.732_414->op_next, D.18413
.L522:
	.loc 1 1795 0
	addq	$160, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_pp_sysread, .-Perl_pp_sysread
	.globl	Perl_pp_syswrite
	.type	Perl_pp_syswrite, @function
Perl_pp_syswrite:
.LFB30:
	.loc 1 1798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1799 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1800 0
	movq	%rbx, %rdx	# sp, sp.733
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.734
	subq	%rax, %rdx	# PL_stack_base.735, D.18438
	movq	%rdx, %rax	# D.18438, D.18438
	sarq	$3, %rax	#, tmp80
	movl	%eax, %edx	# D.18438, D.18439
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.736
	movl	(%rax), %eax	# *PL_markstack_ptr.736_9, D.18440
	subl	%eax, %edx	# D.18439, D.18439
	movl	%edx, %eax	# D.18439, D.18439
	movl	%eax, -28(%rbp)	# D.18439, items
	.loc 1 1801 0
	cmpl	$2, -28(%rbp)	#, items
	jne	.L524	#,
.LBB80:
	.loc 1 1803 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.737
	movq	%rax, %rdx	# PL_stack_max.737, PL_stack_max.738
	movq	%rbx, %rax	# sp, sp.739
	subq	%rax, %rdx	# sp.739, D.18438
	movq	%rdx, %rax	# D.18438, D.18438
	cmpq	$7, %rax	#, D.18438
	jg	.L525	#,
	.loc 1 1803 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L525:
	.loc 1 1804 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_1, D.18441
	movq	%rax, %rdi	# D.18441,
	call	Perl_sv_len	#
	movq	%rax, %rdi	# D.18438,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18441,
	call	Perl_sv_2mortal	#
	movq	%rax, -24(%rbp)	# tmp81, sv
	.loc 1 1805 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# sv, tmp82
	movq	%rax, (%rbx)	# tmp82, *sp_24
	.loc 1 1806 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
.L524:
.LBE80:
	.loc 1 1808 0
	call	Perl_pp_send	#
	.loc 1 1809 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_pp_syswrite, .-Perl_pp_syswrite
	.section	.rodata
.LC49:
	.string	"WRITE"
.LC50:
	.string	"send"
	.text
	.globl	Perl_pp_send
	.type	Perl_pp_send, @function
Perl_pp_send:
.LFB31:
	.loc 1 1812 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 1813 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.740
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.741
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.743
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.743, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.742_23, D.18445
	cltq
	salq	$3, %rax	#, D.18446
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.744
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.745
	subq	%rax, %rdx	# PL_stack_base.746, D.18447
	movq	%rdx, %rax	# D.18447, D.18447
	sarq	$3, %rax	#, tmp249
	movl	%eax, -108(%rbp)	# D.18447, origmark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.747
	movq	PL_op(%rip), %rax	# PL_op, PL_op.748
	movq	24(%rax), %rax	# PL_op.748_36->op_targ, D.18446
	salq	$3, %rax	#, D.18446
	addq	%rdx, %rax	# PL_curpad.747, D.18448
	movq	(%rax), %rax	# *_39, tmp250
	movq	%rax, -56(%rbp)	# tmp250, targ
	.loc 1 1823 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_41, tmp251
	movq	%rax, -48(%rbp)	# tmp251, gv
	.loc 1 1824 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.749
	movzwl	32(%rax), %eax	# PL_op.749_43->op_type, D.18449
	cmpw	$213, %ax	#, D.18449
	jne	.L528	#,
	.loc 1 1825 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L528	#,
	.loc 1 1825 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L529	#,
	movq	-48(%rbp), %rax	# gv, tmp252
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_42].sv_flags, D.18450
	movzbl	%al, %eax	# D.18450, D.18450
	cmpl	$13, %eax	#, D.18450
	jne	.L529	#,
	movq	-48(%rbp), %rax	# gv, tmp253
	movq	(%rax), %rax	# gv_42->sv_any, D.18451
	movq	56(%rax), %rax	# _47->xgv_gp, D.18452
	testq	%rax, %rax	# D.18452
	je	.L529	#,
	movq	-48(%rbp), %rax	# gv, tmp254
	movq	(%rax), %rax	# gv_42->sv_any, D.18451
	movq	56(%rax), %rax	# _49->xgv_gp, D.18452
	movq	16(%rax), %rax	# _50->gp_io, iftmp.750
	jmp	.L530	#
.L529:
	.loc 1 1825 0 discriminator 2
	movl	$0, %eax	#, iftmp.750
.L530:
	.loc 1 1825 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.750, io
	cmpq	$0, -40(%rbp)	#, io
	je	.L528	#,
	.loc 1 1826 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp255
	movl	12(%rax), %eax	# MEM[(struct SV *)io_53].sv_flags, D.18450
	andl	$32768, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L531	#,
	.loc 1 1826 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp256
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	Perl_mg_find	#
	jmp	.L532	#
.L531:
	.loc 1 1826 0 discriminator 2
	movl	$0, %eax	#, iftmp.751
.L532:
	.loc 1 1826 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.751, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L528	#,
.LBB81:
.LBB82:
	.loc 1 1830 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.752
	addq	$4, %rax	#, PL_markstack_ptr.753
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.753, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.754
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.755
	cmpq	%rax, %rdx	# PL_markstack_max.755, PL_markstack_ptr.754
	jne	.L533	#,
	.loc 1 1830 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L533:
	.loc 1 1830 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.756
	leaq	-8(%r12), %rdx	#, D.18448
	movq	%rdx, %rcx	# D.18448, D.18447
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.757
	subq	%rdx, %rcx	# PL_stack_base.758, D.18447
	movq	%rcx, %rdx	# D.18447, D.18447
	sarq	$3, %rdx	#, tmp257
	movl	%edx, (%rax)	# D.18445, *PL_markstack_ptr.756_63
.LBE82:
	.loc 1 1831 0 is_stmt 1 discriminator 2
	movq	-32(%rbp), %rax	# mg, tmp258
	movq	24(%rax), %rax	# mg_58->mg_obj, D.18454
	testq	%rax, %rax	# D.18454
	je	.L534	#,
	.loc 1 1831 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp259
	movq	24(%rax), %rax	# mg_58->mg_obj, iftmp.759
	jmp	.L535	#
.L534:
	.loc 1 1831 0 discriminator 2
	movq	-40(%rbp), %rax	# io, tmp260
	movq	%rax, %rdi	# tmp260,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18454,
	call	Perl_sv_2mortal	#
.L535:
	.loc 1 1831 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.759, *mark_41
	.loc 1 1832 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1833 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC49, %edi	#,
	call	Perl_call_method	#
	.loc 1 1834 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1835 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1836 0 discriminator 3
	movq	%rbx, %rax	# sp, sp.760
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.760_77, tmp261
	movq	%rax, -24(%rbp)	# tmp261, sv
	.loc 1 1837 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.761
	movl	-108(%rbp), %edx	# origmark, tmp262
	movslq	%edx, %rdx	# tmp262, D.18446
	salq	$3, %rdx	#, D.18446
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1838 0 discriminator 3
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# sv, tmp263
	movq	%rax, (%rbx)	# tmp263, *sp_84
	.loc 1 1839 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.762
	movq	(%rax), %rax	# PL_op.762_85->op_next, D.18444
	jmp	.L573	#
.L528:
.LBE81:
	.loc 1 1841 0
	cmpq	$0, -48(%rbp)	#, gv
	jne	.L537	#,
	.loc 1 1842 0
	jmp	.L538	#
.L537:
	.loc 1 1843 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_87, tmp264
	movq	%rax, -96(%rbp)	# tmp264, bufsv
	.loc 1 1847 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_89, PL_Sv.763
	movq	%rax, PL_Sv(%rip)	# PL_Sv.763, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.765
	movl	12(%rax), %eax	# PL_Sv.765_91->sv_flags, D.18450
	andl	$65536, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L539	#,
	.loc 1 1847 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.766
	movq	(%rax), %rax	# PL_Sv.766_94->sv_any, D.18455
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_95].xiv_iv, D.18447
	jmp	.L540	#
.L539:
	.loc 1 1847 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.767
	movq	%rax, %rdi	# PL_Sv.767,
	call	Perl_sv_2iv	#
.L540:
	.loc 1 1847 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.764, length
	.loc 1 1849 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# length, length.768
	testq	%rax, %rax	# length.768
	jns	.L541	#,
	.loc 1 1850 0
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L541:
	.loc 1 1851 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_104
	.loc 1 1852 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L542	#,
	.loc 1 1852 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp265
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_42].sv_flags, D.18450
	movzbl	%al, %eax	# D.18450, D.18450
	cmpl	$13, %eax	#, D.18450
	jne	.L542	#,
	movq	-48(%rbp), %rax	# gv, tmp266
	movq	(%rax), %rax	# gv_42->sv_any, D.18451
	movq	56(%rax), %rax	# _107->xgv_gp, D.18452
	testq	%rax, %rax	# D.18452
	je	.L542	#,
	movq	-48(%rbp), %rax	# gv, tmp267
	movq	(%rax), %rax	# gv_42->sv_any, D.18451
	movq	56(%rax), %rax	# _109->xgv_gp, D.18452
	movq	16(%rax), %rax	# _110->gp_io, iftmp.769
	jmp	.L543	#
.L542:
	.loc 1 1852 0 discriminator 2
	movl	$0, %eax	#, iftmp.769
.L543:
	.loc 1 1852 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.769, io
	.loc 1 1853 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, io
	je	.L544	#,
	.loc 1 1853 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp268
	movq	(%rax), %rax	# io_113->sv_any, D.18457
	movq	56(%rax), %rax	# _114->xio_ifp, D.18458
	testq	%rax, %rax	# D.18458
	jne	.L545	#,
.L544:
	.loc 1 1854 0 is_stmt 1
	movq	$-1, -72(%rbp)	#, retval
	.loc 1 1855 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.770
	movq	80(%rax), %rax	# PL_curcop.770_229->cop_warnings, D.18454
	testq	%rax, %rax	# D.18454
	je	.L546	#,
	.loc 1 1855 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.771
	movq	80(%rax), %rax	# PL_curcop.771_231->cop_warnings, D.18454
	cmpq	$32, %rax	#, D.18454
	je	.L546	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.772
	movq	80(%rax), %rax	# PL_curcop.772_233->cop_warnings, D.18454
	cmpq	$16, %rax	#, D.18454
	je	.L547	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.773
	movq	80(%rax), %rax	# PL_curcop.773_235->cop_warnings, D.18454
	movq	(%rax), %rax	# _236->sv_any, D.18455
	movq	(%rax), %rax	# MEM[(struct XPV *)_237].xpv_pv, D.18461
	addq	$1, %rax	#, D.18461
	movzbl	(%rax), %eax	# *_239, D.18462
	movsbl	%al, %eax	# D.18462, D.18445
	andl	$16, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	jne	.L547	#,
.L546:
	.loc 1 1855 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.774
	movq	80(%rax), %rax	# PL_curcop.774_243->cop_warnings, D.18454
	testq	%rax, %rax	# D.18454
	jne	.L548	#,
	.loc 1 1855 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.775
	movzbl	%al, %eax	# PL_dowarn.775, D.18445
	andl	$1, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	je	.L548	#,
.L547:
	.loc 1 1856 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.776
	movzwl	32(%rax), %eax	# PL_op.776_248->op_type, D.18449
	movzwl	%ax, %edx	# D.18449, D.18445
	movq	-40(%rbp), %rcx	# io, tmp269
	movq	-48(%rbp), %rax	# gv, tmp270
	movq	%rcx, %rsi	# tmp269,
	movq	%rax, %rdi	# tmp270,
	call	Perl_report_evil_fh	#
.L548:
	.loc 1 1857 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_251
	.loc 1 1858 0
	jmp	.L538	#
.L545:
	.loc 1 1861 0
	movq	-40(%rbp), %rax	# io, tmp271
	movq	(%rax), %rax	# io_113->sv_any, D.18457
	movq	56(%rax), %rax	# _116->xio_ifp, D.18458
	movq	%rax, %rdi	# D.18458,
	call	PerlIO_isutf8	#
	testl	%eax, %eax	# D.18445
	je	.L549	#,
	.loc 1 1862 0
	movq	-96(%rbp), %rax	# bufsv, tmp272
	movl	12(%rax), %eax	# bufsv_88->sv_flags, D.18450
	andl	$536870912, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	jne	.L550	#,
	.loc 1 1863 0
	movq	-96(%rbp), %rax	# bufsv, tmp273
	movq	%rax, %rdi	# tmp273,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.18454,
	call	Perl_sv_2mortal	#
	movq	%rax, -96(%rbp)	# tmp274, bufsv
	.loc 1 1864 0
	leaq	-104(%rbp), %rdx	#, tmp275
	movq	-96(%rbp), %rax	# bufsv, tmp276
	movq	%rdx, %rsi	# tmp275,
	movq	%rax, %rdi	# tmp276,
	call	Perl_sv_2pvutf8	#
	movq	%rax, -88(%rbp)	# tmp277, buffer
	jmp	.L554	#
.L550:
	.loc 1 1866 0
	movq	-96(%rbp), %rax	# bufsv, tmp278
	movl	12(%rax), %eax	# bufsv_88->sv_flags, D.18450
	andl	$262144, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L552	#,
	.loc 1 1866 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# bufsv, tmp279
	movq	(%rax), %rax	# bufsv_88->sv_any, D.18455
	movq	8(%rax), %rax	# MEM[(struct XPV *)_126].xpv_cur, blen.778
	movq	%rax, -104(%rbp)	# blen.778, blen
	movq	-96(%rbp), %rax	# bufsv, tmp280
	movq	(%rax), %rax	# bufsv_88->sv_any, D.18455
	movq	(%rax), %rax	# MEM[(struct XPV *)_128].xpv_pv, iftmp.777
	jmp	.L553	#
.L552:
	.loc 1 1866 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp281
	movq	-96(%rbp), %rax	# bufsv, tmp282
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	Perl_sv_2pv_flags	#
.L553:
	.loc 1 1866 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.777, buffer
	jmp	.L554	#
.L549:
	.loc 1 1869 0 is_stmt 1
	movq	-96(%rbp), %rax	# bufsv, tmp283
	movl	12(%rax), %eax	# bufsv_88->sv_flags, D.18450
	andl	$536870912, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L555	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.779
	movzbl	37(%rax), %eax	# PL_curcop.779_134->op_private, D.18459
	movzbl	%al, %eax	# D.18459, D.18445
	andl	$8, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	jne	.L555	#,
	.loc 1 1871 0 is_stmt 1
	movq	-96(%rbp), %rax	# bufsv, tmp284
	movq	%rax, %rdi	# tmp284,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.18454,
	call	Perl_sv_2mortal	#
	movq	%rax, -96(%rbp)	# tmp285, bufsv
	.loc 1 1872 0
	movq	-96(%rbp), %rax	# bufsv, tmp286
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp286,
	call	Perl_sv_utf8_downgrade	#
.L555:
	.loc 1 1874 0
	movq	-96(%rbp), %rax	# bufsv, tmp287
	movl	12(%rax), %eax	# bufsv_2->sv_flags, D.18450
	andl	$262144, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L556	#,
	.loc 1 1874 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# bufsv, tmp288
	movq	(%rax), %rax	# bufsv_2->sv_any, D.18455
	movq	8(%rax), %rax	# MEM[(struct XPV *)_142].xpv_cur, blen.781
	movq	%rax, -104(%rbp)	# blen.781, blen
	movq	-96(%rbp), %rax	# bufsv, tmp289
	movq	(%rax), %rax	# bufsv_2->sv_any, D.18455
	movq	(%rax), %rax	# MEM[(struct XPV *)_144].xpv_pv, iftmp.780
	jmp	.L557	#
.L556:
	.loc 1 1874 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp290
	movq	-96(%rbp), %rax	# bufsv, tmp291
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp290,
	movq	%rax, %rdi	# tmp291,
	call	Perl_sv_2pv_flags	#
.L557:
	.loc 1 1874 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.780, buffer
.L554:
	.loc 1 1877 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.782
	movzwl	32(%rax), %eax	# PL_op.782_148->op_type, D.18449
	cmpw	$213, %ax	#, D.18449
	jne	.L558	#,
.LBB83:
	.loc 1 1879 0
	movq	-96(%rbp), %rax	# bufsv, tmp292
	movl	12(%rax), %eax	# bufsv_3->sv_flags, D.18450
	andl	$536870912, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L559	#,
	.loc 1 1879 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.783
	movzbl	37(%rax), %eax	# PL_curcop.783_152->op_private, D.18459
	movzbl	%al, %eax	# D.18459, D.18445
	andl	$8, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	jne	.L559	#,
	.loc 1 1881 0 is_stmt 1
	movq	-96(%rbp), %rax	# bufsv, tmp293
	movq	%rax, %rdi	# tmp293,
	call	Perl_sv_len_utf8	#
	movq	%rax, -104(%rbp)	# blen.784, blen
.L559:
	.loc 1 1883 0
	cmpq	%rbx, %r12	# sp, mark
	jae	.L560	#,
	.loc 1 1884 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_157, PL_Sv.785
	movq	%rax, PL_Sv(%rip)	# PL_Sv.785, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.787
	movl	12(%rax), %eax	# PL_Sv.787_159->sv_flags, D.18450
	andl	$65536, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L561	#,
	.loc 1 1884 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.788
	movq	(%rax), %rax	# PL_Sv.788_162->sv_any, D.18455
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_163].xiv_iv, iftmp.786
	jmp	.L562	#
.L561:
	.loc 1 1884 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.789
	movq	%rax, %rdi	# PL_Sv.789,
	call	Perl_sv_2iv	#
.L562:
	.loc 1 1884 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.786, offset
	.loc 1 1885 0 is_stmt 1 discriminator 3
	cmpq	$0, -64(%rbp)	#, offset
	jns	.L563	#,
	.loc 1 1886 0
	movq	-64(%rbp), %rax	# offset, tmp294
	negq	%rax	# D.18447
	movq	%rax, %rdx	# D.18447, D.18447
	movq	-104(%rbp), %rax	# blen, blen.790
	cmpq	%rax, %rdx	# blen.791, D.18447
	jle	.L564	#,
	.loc 1 1887 0
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L564:
	.loc 1 1888 0
	movq	-64(%rbp), %rdx	# offset, offset.792
	movq	-104(%rbp), %rax	# blen, blen.793
	addq	%rdx, %rax	# offset.792, D.18446
	movq	%rax, -64(%rbp)	# D.18446, offset
	jmp	.L565	#
.L563:
	.loc 1 1889 0
	movq	-104(%rbp), %rax	# blen, blen.794
	cmpq	-64(%rbp), %rax	# offset, blen.795
	jg	.L565	#,
	.loc 1 1889 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# blen, blen.796
	testq	%rax, %rax	# blen.796
	je	.L565	#,
	.loc 1 1890 0 is_stmt 1
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L560:
	.loc 1 1892 0
	movq	$0, -64(%rbp)	#, offset
.L565:
	.loc 1 1893 0
	movq	-104(%rbp), %rdx	# blen, blen.797
	movq	-64(%rbp), %rax	# offset, offset.798
	subq	%rax, %rdx	# offset.798, D.18446
	movq	%rdx, %rax	# D.18446, D.18446
	cmpq	-80(%rbp), %rax	# length, D.18446
	jae	.L566	#,
	.loc 1 1894 0
	movq	-104(%rbp), %rdx	# blen, blen.799
	movq	-64(%rbp), %rax	# offset, offset.800
	subq	%rax, %rdx	# offset.800, tmp295
	movq	%rdx, %rax	# tmp295, tmp295
	movq	%rax, -80(%rbp)	# tmp295, length
.L566:
	.loc 1 1895 0
	movq	-96(%rbp), %rax	# bufsv, tmp296
	movl	12(%rax), %eax	# bufsv_3->sv_flags, D.18450
	andl	$536870912, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L567	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.801
	movzbl	37(%rax), %eax	# PL_curcop.801_189->op_private, D.18459
	movzbl	%al, %eax	# D.18459, D.18445
	andl	$8, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	jne	.L567	#,
	.loc 1 1896 0 is_stmt 1
	movq	-64(%rbp), %rax	# offset, tmp297
	movl	%eax, %edx	# tmp297, D.18445
	movq	-88(%rbp), %rax	# buffer, tmp298
	movl	%edx, %esi	# D.18445,
	movq	%rax, %rdi	# tmp298,
	call	Perl_utf8_hop	#
	movq	%rax, -88(%rbp)	# tmp299, buffer
	.loc 1 1897 0
	movq	-80(%rbp), %rax	# length, tmp300
	movl	%eax, %edx	# tmp300, D.18445
	movq	-88(%rbp), %rax	# buffer, tmp301
	movl	%edx, %esi	# D.18445,
	movq	%rax, %rdi	# tmp301,
	call	Perl_utf8_hop	#
	movq	%rax, %rdx	# D.18460, D.18447
	movq	-88(%rbp), %rax	# buffer, buffer.802
	subq	%rax, %rdx	# buffer.802, D.18447
	movq	%rdx, %rax	# D.18447, D.18447
	movq	%rax, -80(%rbp)	# D.18447, length
	jmp	.L568	#
.L567:
	.loc 1 1900 0
	movq	-64(%rbp), %rax	# offset, offset.803
	addq	%rax, -88(%rbp)	# offset.803, buffer
.L568:
	.loc 1 1911 0
	movq	-40(%rbp), %rax	# io, tmp302
	movq	(%rax), %rax	# io_113->sv_any, D.18457
	movq	56(%rax), %rax	# _203->xio_ifp, D.18458
	movq	%rax, %rdi	# D.18458,
	call	Perl_PerlIO_fileno	#
	movq	-80(%rbp), %rdx	# length, tmp303
	movq	-88(%rbp), %rcx	# buffer, tmp304
	movq	%rcx, %rsi	# tmp304,
	movl	%eax, %edi	# D.18445,
	call	write	#
	movq	%rax, -72(%rbp)	# tmp305, retval
.LBE83:
	.loc 1 1931 0
	cmpq	$0, -72(%rbp)	#, retval
	jns	.L570	#,
	jmp	.L574	#
.L558:
	.loc 1 1929 0
	movl	$.LC50, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L574:
	.loc 1 1932 0
	jmp	.L538	#
.L570:
	.loc 1 1933 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.804
	movl	-108(%rbp), %edx	# origmark, tmp306
	movslq	%edx, %rdx	# tmp306, D.18446
	salq	$3, %rdx	#, D.18446
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1934 0
	movq	-96(%rbp), %rax	# bufsv, tmp307
	movl	12(%rax), %eax	# bufsv_3->sv_flags, D.18450
	andl	$536870912, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L571	#,
	.loc 1 1934 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.805
	movzbl	37(%rax), %eax	# PL_curcop.805_213->op_private, D.18459
	movzbl	%al, %eax	# D.18459, D.18445
	andl	$8, %eax	#, D.18445
	testl	%eax, %eax	# D.18445
	jne	.L571	#,
	.loc 1 1935 0 is_stmt 1
	movq	-72(%rbp), %rdx	# retval, retval.806
	movq	-88(%rbp), %rax	# buffer, tmp308
	addq	%rax, %rdx	# tmp308, D.18460
	movq	-88(%rbp), %rax	# buffer, tmp309
	movq	%rdx, %rsi	# D.18460,
	movq	%rax, %rdi	# tmp309,
	call	Perl_utf8_length	#
	movq	%rax, -72(%rbp)	# D.18446, retval
.L571:
.LBB84:
	.loc 1 1939 0
	movq	-72(%rbp), %rdx	# retval, tmp310
	movq	-56(%rbp), %rax	# targ, tmp311
	movq	%rdx, %rsi	# tmp310,
	movq	%rax, %rdi	# tmp311,
	call	Perl_sv_setiv	#
.LBB85:
	movq	-56(%rbp), %rax	# targ, tmp312
	movl	12(%rax), %eax	# targ_40->sv_flags, D.18450
	andl	$16384, %eax	#, D.18450
	testl	%eax, %eax	# D.18450
	je	.L572	#,
	.loc 1 1939 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, tmp313
	movq	%rax, %rdi	# tmp313,
	call	Perl_mg_set	#
.L572:
	.loc 1 1939 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp314
	movq	%rax, (%rbx)	# tmp314, *sp_223
.LBE85:
.LBE84:
	.loc 1 1941 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.807
	movq	(%rax), %rax	# PL_op.807_225->op_next, D.18444
	jmp	.L573	#
.L538:
	.loc 1 1944 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.808
	movl	-108(%rbp), %edx	# origmark, tmp315
	movslq	%edx, %rdx	# tmp315, D.18446
	salq	$3, %rdx	#, D.18446
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 1945 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_256
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.809
	movq	(%rax), %rax	# PL_op.809_257->op_next, D.18444
.L573:
	.loc 1 1946 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_pp_send, .-Perl_pp_send
	.globl	Perl_pp_recv
	.type	Perl_pp_recv, @function
Perl_pp_recv:
.LFB32:
	.loc 1 1949 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1950 0
	call	Perl_pp_sysread	#
	.loc 1 1951 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_pp_recv, .-Perl_pp_recv
	.section	.rodata
.LC51:
	.string	"-"
.LC52:
	.string	"EOF"
	.text
	.globl	Perl_pp_eof
	.type	Perl_pp_eof, @function
Perl_pp_eof:
.LFB33:
	.loc 1 1954 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1955 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1960 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.810
	movzbl	37(%rax), %eax	# PL_op.810_13->op_private, D.18467
	movzbl	%al, %eax	# D.18467, D.18468
	andl	$15, %eax	#, D.18468
	testl	%eax, %eax	# D.18468
	jne	.L578	#,
	.loc 1 1961 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.811
	movzbl	36(%rax), %eax	# PL_op.811_17->op_flags, D.18467
	testb	%al, %al	# D.18469
	jns	.L579	#,
.LBB86:
	.loc 1 1963 0
	movq	PL_argvgv(%rip), %rax	# PL_argvgv, PL_argvgv.812
	movq	(%rax), %rax	# PL_argvgv.812_20->sv_any, D.18470
	movq	56(%rax), %rax	# _21->xgv_gp, D.18471
	movq	48(%rax), %rax	# _22->gp_egv, PL_last_in_gv.813
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.813, PL_last_in_gv
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp150
	movq	%rax, -48(%rbp)	# tmp150, gv
	.loc 1 1964 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L580	#,
	.loc 1 1964 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp151
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_24].sv_flags, D.18472
	movzbl	%al, %eax	# D.18472, D.18472
	cmpl	$13, %eax	#, D.18472
	jne	.L580	#,
	movq	-48(%rbp), %rax	# gv, tmp152
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _27->xgv_gp, D.18471
	testq	%rax, %rax	# D.18471
	je	.L580	#,
	movq	-48(%rbp), %rax	# gv, tmp153
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _29->xgv_gp, D.18471
	movq	16(%rax), %rax	# _30->gp_io, iftmp.814
	jmp	.L581	#
.L580:
	.loc 1 1964 0 discriminator 2
	movl	$0, %eax	#, iftmp.814
.L581:
	.loc 1 1964 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.814, io
	.loc 1 1965 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, io
	je	.L582	#,
	.loc 1 1965 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# io, tmp154
	movq	(%rax), %rax	# io_33->sv_any, D.18473
	movq	56(%rax), %rax	# _34->xio_ifp, D.18474
	testq	%rax, %rax	# D.18474
	jne	.L582	#,
	.loc 1 1966 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp155
	movq	(%rax), %rax	# io_33->sv_any, D.18473
	movzbl	163(%rax), %eax	# _36->xio_flags, D.18475
	movsbl	%al, %eax	# D.18475, D.18468
	andl	$2, %eax	#, D.18468
	testl	%eax, %eax	# D.18468
	je	.L583	#,
	.loc 1 1966 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp156
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _40->xgv_gp, D.18471
	movq	32(%rax), %rax	# _41->gp_av, D.18476
	testq	%rax, %rax	# D.18476
	je	.L584	#,
	movq	-48(%rbp), %rax	# gv, tmp157
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _43->xgv_gp, D.18471
	movq	32(%rax), %rax	# _44->gp_av, iftmp.815
	jmp	.L585	#
.L584:
	.loc 1 1966 0 discriminator 2
	movq	-48(%rbp), %rax	# gv, tmp158
	movq	%rax, %rdi	# tmp158,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _46->sv_any, D.18470
	movq	56(%rax), %rax	# _47->xgv_gp, D.18471
	movq	32(%rax), %rax	# _48->gp_av, iftmp.815
.L585:
	.loc 1 1966 0 discriminator 3
	movq	%rax, %rdi	# iftmp.815,
	call	Perl_av_len	#
	testl	%eax, %eax	# D.18468
	jns	.L583	#,
	.loc 1 1967 0 is_stmt 1
	movq	-40(%rbp), %rax	# io, tmp159
	movq	(%rax), %rax	# io_33->sv_any, D.18473
	movq	$0, 80(%rax)	#, _51->xio_lines
	.loc 1 1968 0
	movq	-40(%rbp), %rax	# io, tmp160
	movq	(%rax), %rax	# io_33->sv_any, D.18473
	movq	-40(%rbp), %rdx	# io, tmp161
	movq	(%rdx), %rdx	# io_33->sv_any, D.18473
	movzbl	163(%rdx), %edx	# _53->xio_flags, D.18475
	andl	$-3, %edx	#, D.18475
	movb	%dl, 163(%rax)	# D.18475, _52->xio_flags
	.loc 1 1969 0
	movq	-48(%rbp), %rax	# gv, tmp162
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	Perl_do_open	#
	.loc 1 1970 0
	movq	-48(%rbp), %rax	# gv, tmp163
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _56->xgv_gp, D.18471
	movq	(%rax), %rax	# _57->gp_sv, D.18478
	movl	$1, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# D.18478,
	call	Perl_sv_setpvn	#
	.loc 1 1971 0
	movq	-48(%rbp), %rax	# gv, tmp164
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _59->xgv_gp, D.18471
	movq	(%rax), %rax	# _60->gp_sv, D.18478
	movl	12(%rax), %eax	# _61->sv_flags, D.18472
	andl	$16384, %eax	#, D.18472
	testl	%eax, %eax	# D.18472
	je	.L586	#,
	.loc 1 1971 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp165
	movq	(%rax), %rax	# gv_24->sv_any, D.18470
	movq	56(%rax), %rax	# _64->xgv_gp, D.18471
	movq	(%rax), %rax	# _65->gp_sv, D.18478
	movq	%rax, %rdi	# D.18478,
	call	Perl_mg_set	#
	jmp	.L582	#
.L586:
	.loc 1 1971 0 discriminator 2
	jmp	.L582	#
.L583:
	.loc 1 1973 0 is_stmt 1
	movq	-48(%rbp), %rax	# gv, tmp166
	movq	%rax, %rdi	# tmp166,
	call	Perl_nextargv	#
	testq	%rax, %rax	# D.18474
	jne	.L582	#,
	.loc 1 1974 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_68
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.816
	movq	(%rax), %rax	# PL_op.816_69->op_next, D.18466
	jmp	.L587	#
.L582:
.LBE86:
	jmp	.L589	#
.L579:
	.loc 1 1978 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp167
	movq	%rax, -48(%rbp)	# tmp167, gv
	jmp	.L589	#
.L578:
	.loc 1 1981 0
	movq	%rbx, %rax	# sp, sp.817
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.817_72, PL_last_in_gv.818
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.818, PL_last_in_gv
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp168
	movq	%rax, -48(%rbp)	# tmp168, gv
.L589:
	.loc 1 1983 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L590	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L591	#,
	movq	-48(%rbp), %rax	# gv, tmp169
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_4].sv_flags, D.18472
	movzbl	%al, %eax	# D.18472, D.18472
	cmpl	$13, %eax	#, D.18472
	jne	.L591	#,
	movq	-48(%rbp), %rax	# gv, tmp170
	movq	(%rax), %rax	# gv_4->sv_any, D.18470
	movq	56(%rax), %rax	# _78->xgv_gp, D.18471
	testq	%rax, %rax	# D.18471
	je	.L591	#,
	movq	-48(%rbp), %rax	# gv, tmp171
	movq	(%rax), %rax	# gv_4->sv_any, D.18470
	movq	56(%rax), %rax	# _80->xgv_gp, D.18471
	movq	16(%rax), %rax	# _81->gp_io, iftmp.819
	jmp	.L592	#
.L591:
	.loc 1 1983 0 discriminator 2
	movl	$0, %eax	#, iftmp.819
.L592:
	.loc 1 1983 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.819, io
	cmpq	$0, -32(%rbp)	#, io
	je	.L590	#,
	.loc 1 1984 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp172
	movl	12(%rax), %eax	# MEM[(struct SV *)io_84].sv_flags, D.18472
	andl	$32768, %eax	#, D.18472
	testl	%eax, %eax	# D.18472
	je	.L593	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp173
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	Perl_mg_find	#
	jmp	.L594	#
.L593:
	.loc 1 1984 0 discriminator 2
	movl	$0, %eax	#, iftmp.820
.L594:
	.loc 1 1984 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.820, mg
	cmpq	$0, -24(%rbp)	#, mg
	je	.L590	#,
.LBB87:
	.loc 1 1986 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.821
	addq	$4, %rax	#, PL_markstack_ptr.822
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.822, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.823
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.824
	cmpq	%rax, %rdx	# PL_markstack_max.824, PL_markstack_ptr.823
	jne	.L595	#,
	.loc 1 1986 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L595:
	.loc 1 1986 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.825
	movq	%rbx, %rcx	# sp, sp.826
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.827
	subq	%rdx, %rcx	# PL_stack_base.828, D.18479
	movq	%rcx, %rdx	# D.18479, D.18479
	sarq	$3, %rdx	#, tmp174
	movl	%edx, (%rax)	# D.18468, *PL_markstack_ptr.825_94
.LBE87:
.LBB88:
	.loc 1 1987 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.829
	movq	%rax, %rdx	# PL_stack_max.829, PL_stack_max.830
	movq	%rbx, %rax	# sp, sp.831
	subq	%rax, %rdx	# sp.831, D.18479
	movq	%rdx, %rax	# D.18479, D.18479
	cmpq	$7, %rax	#, D.18479
	jg	.L596	#,
	.loc 1 1987 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L596:
	.loc 1 1987 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# mg, tmp175
	movq	24(%rax), %rax	# mg_89->mg_obj, D.18478
	testq	%rax, %rax	# D.18478
	je	.L597	#,
	.loc 1 1987 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp176
	movq	24(%rax), %rax	# mg_89->mg_obj, iftmp.832
	jmp	.L598	#
.L597:
	.loc 1 1987 0 discriminator 2
	movq	-32(%rbp), %rax	# io, tmp177
	movq	%rax, %rdi	# tmp177,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18478,
	call	Perl_sv_2mortal	#
.L598:
	.loc 1 1987 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.832, *sp_107
.LBE88:
	.loc 1 1988 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1989 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1990 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC52, %edi	#,
	call	Perl_call_method	#
	.loc 1 1991 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1992 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1993 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.833
	movq	(%rax), %rax	# PL_op.833_114->op_next, D.18466
	jmp	.L587	#
.L590:
	.loc 1 1996 0
	addq	$8, %rbx	#, sp
	cmpq	$0, -48(%rbp)	#, gv
	je	.L599	#,
	.loc 1 1996 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# gv, tmp178
	movq	%rax, %rdi	# tmp178,
	call	Perl_do_eof	#
	testb	%al, %al	# D.18475
	je	.L600	#,
.L599:
	.loc 1 1996 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.834
	jmp	.L601	#
.L600:
	movl	$PL_sv_no, %eax	#, iftmp.834
.L601:
	.loc 1 1996 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.834, *sp_116
	.loc 1 1997 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.835
	movq	(%rax), %rax	# PL_op.835_120->op_next, D.18466
.L587:
	.loc 1 1998 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_pp_eof, .-Perl_pp_eof
	.section	.rodata
.LC53:
	.string	"TELL"
	.text
	.globl	Perl_pp_tell
	.type	Perl_pp_tell, @function
Perl_pp_tell:
.LFB34:
	.loc 1 2001 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2002 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.836
	movq	PL_op(%rip), %rax	# PL_op, PL_op.837
	movq	24(%rax), %rax	# PL_op.837_10->op_targ, D.18484
	salq	$3, %rax	#, D.18484
	addq	%rdx, %rax	# PL_curpad.836, D.18485
	movq	(%rax), %rax	# *_13, tmp109
	movq	%rax, -40(%rbp)	# tmp109, targ
	.loc 1 2007 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.838
	movzbl	37(%rax), %eax	# PL_op.838_15->op_private, D.18486
	movzbl	%al, %eax	# D.18486, D.18487
	andl	$15, %eax	#, D.18487
	testl	%eax, %eax	# D.18487
	jne	.L603	#,
	.loc 1 2008 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp110
	movq	%rax, -48(%rbp)	# tmp110, gv
	jmp	.L604	#
.L603:
	.loc 1 2010 0
	movq	%rbx, %rax	# sp, sp.839
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.839_20, PL_last_in_gv.840
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.840, PL_last_in_gv
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp111
	movq	%rax, -48(%rbp)	# tmp111, gv
.L604:
	.loc 1 2012 0
	cmpq	$0, -48(%rbp)	#, gv
	je	.L605	#,
	.loc 1 2012 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, gv
	je	.L606	#,
	movq	-48(%rbp), %rax	# gv, tmp112
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_3].sv_flags, D.18488
	movzbl	%al, %eax	# D.18488, D.18488
	cmpl	$13, %eax	#, D.18488
	jne	.L606	#,
	movq	-48(%rbp), %rax	# gv, tmp113
	movq	(%rax), %rax	# gv_3->sv_any, D.18489
	movq	56(%rax), %rax	# _26->xgv_gp, D.18490
	testq	%rax, %rax	# D.18490
	je	.L606	#,
	movq	-48(%rbp), %rax	# gv, tmp114
	movq	(%rax), %rax	# gv_3->sv_any, D.18489
	movq	56(%rax), %rax	# _28->xgv_gp, D.18490
	movq	16(%rax), %rax	# _29->gp_io, iftmp.841
	jmp	.L607	#
.L606:
	.loc 1 2012 0 discriminator 2
	movl	$0, %eax	#, iftmp.841
.L607:
	.loc 1 2012 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.841, io
	cmpq	$0, -32(%rbp)	#, io
	je	.L605	#,
	.loc 1 2013 0 is_stmt 1
	movq	-32(%rbp), %rax	# io, tmp115
	movl	12(%rax), %eax	# MEM[(struct SV *)io_32].sv_flags, D.18488
	andl	$32768, %eax	#, D.18488
	testl	%eax, %eax	# D.18488
	je	.L608	#,
	.loc 1 2013 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# io, tmp116
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	Perl_mg_find	#
	jmp	.L609	#
.L608:
	.loc 1 2013 0 discriminator 2
	movl	$0, %eax	#, iftmp.842
.L609:
	.loc 1 2013 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.842, mg
	cmpq	$0, -24(%rbp)	#, mg
	je	.L605	#,
.LBB89:
	.loc 1 2015 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.843
	addq	$4, %rax	#, PL_markstack_ptr.844
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.844, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.845
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.846
	cmpq	%rax, %rdx	# PL_markstack_max.846, PL_markstack_ptr.845
	jne	.L610	#,
	.loc 1 2015 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L610:
	.loc 1 2015 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.847
	movq	%rbx, %rcx	# sp, sp.848
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.849
	subq	%rdx, %rcx	# PL_stack_base.850, D.18491
	movq	%rcx, %rdx	# D.18491, D.18491
	sarq	$3, %rdx	#, tmp117
	movl	%edx, (%rax)	# D.18487, *PL_markstack_ptr.847_42
.LBE89:
.LBB90:
	.loc 1 2016 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.851
	movq	%rax, %rdx	# PL_stack_max.851, PL_stack_max.852
	movq	%rbx, %rax	# sp, sp.853
	subq	%rax, %rdx	# sp.853, D.18491
	movq	%rdx, %rax	# D.18491, D.18491
	cmpq	$7, %rax	#, D.18491
	jg	.L611	#,
	.loc 1 2016 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L611:
	.loc 1 2016 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# mg, tmp118
	movq	24(%rax), %rax	# mg_37->mg_obj, D.18493
	testq	%rax, %rax	# D.18493
	je	.L612	#,
	.loc 1 2016 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp119
	movq	24(%rax), %rax	# mg_37->mg_obj, iftmp.854
	jmp	.L613	#
.L612:
	.loc 1 2016 0 discriminator 2
	movq	-32(%rbp), %rax	# io, tmp120
	movq	%rax, %rdi	# tmp120,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18493,
	call	Perl_sv_2mortal	#
.L613:
	.loc 1 2016 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.854, *sp_55
.LBE90:
	.loc 1 2017 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2018 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 2019 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_call_method	#
	.loc 1 2020 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 2021 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2022 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.855
	movq	(%rax), %rax	# PL_op.855_62->op_next, D.18483
	jmp	.L614	#
.L605:
.LBB91:
	.loc 1 2028 0
	movq	-48(%rbp), %rax	# gv, tmp121
	movq	%rax, %rdi	# tmp121,
	call	Perl_do_tell	#
	movq	%rax, %rdx	#, D.18491
	movq	-40(%rbp), %rax	# targ, tmp122
	movq	%rdx, %rsi	# D.18491,
	movq	%rax, %rdi	# tmp122,
	call	Perl_sv_setiv	#
.LBB92:
	movq	-40(%rbp), %rax	# targ, tmp123
	movl	12(%rax), %eax	# targ_14->sv_flags, D.18488
	andl	$16384, %eax	#, D.18488
	testl	%eax, %eax	# D.18488
	je	.L615	#,
	.loc 1 2028 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp124
	movq	%rax, %rdi	# tmp124,
	call	Perl_mg_set	#
.L615:
	.loc 1 2028 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# targ, tmp125
	movq	%rax, (%rbx)	# tmp125, *sp_67
.LBE92:
.LBE91:
	.loc 1 2030 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.856
	movq	(%rax), %rax	# PL_op.856_69->op_next, D.18483
.L614:
	.loc 1 2031 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_pp_tell, .-Perl_pp_tell
	.globl	Perl_pp_seek
	.type	Perl_pp_seek, @function
Perl_pp_seek:
.LFB35:
	.loc 1 2034 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2035 0
	call	Perl_pp_sysseek	#
	.loc 1 2036 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_pp_seek, .-Perl_pp_seek
	.section	.rodata
.LC54:
	.string	"SEEK"
	.text
	.globl	Perl_pp_sysseek
	.type	Perl_pp_sysseek, @function
Perl_pp_sysseek:
.LFB36:
	.loc 1 2039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2040 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2043 0
	movq	%rbx, %rax	# sp, sp.857
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.857_14, PL_Sv.858
	movq	%rax, PL_Sv(%rip)	# PL_Sv.858, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.860
	movl	12(%rax), %eax	# PL_Sv.860_17->sv_flags, D.18497
	andl	$65536, %eax	#, D.18497
	testl	%eax, %eax	# D.18497
	je	.L619	#,
	.loc 1 2043 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.861
	movq	(%rax), %rax	# PL_Sv.861_20->sv_any, D.18498
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_21].xiv_iv, D.18499
	jmp	.L620	#
.L619:
	.loc 1 2043 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.862
	movq	%rax, %rdi	# PL_Sv.862,
	call	Perl_sv_2iv	#
.L620:
	.loc 1 2043 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.859, whence
	.loc 1 2047 0 is_stmt 1 discriminator 3
	movq	%rbx, %rax	# sp, sp.863
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.863_28, PL_Sv.864
	movq	%rax, PL_Sv(%rip)	# PL_Sv.864, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.866
	movl	12(%rax), %eax	# PL_Sv.866_31->sv_flags, D.18497
	andl	$65536, %eax	#, D.18497
	testl	%eax, %eax	# D.18497
	je	.L621	#,
	.loc 1 2047 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.867
	movq	(%rax), %rax	# PL_Sv.867_34->sv_any, D.18498
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_35].xiv_iv, iftmp.865
	jmp	.L622	#
.L621:
	.loc 1 2047 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.868
	movq	%rax, %rdi	# PL_Sv.868,
	call	Perl_sv_2iv	#
.L622:
	.loc 1 2047 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.865, offset
	.loc 1 2051 0 is_stmt 1 discriminator 3
	movq	%rbx, %rax	# sp, sp.869
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.869_40, PL_last_in_gv.870
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.870, PL_last_in_gv
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, tmp137
	movq	%rax, -56(%rbp)	# tmp137, gv
	.loc 1 2053 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, gv
	je	.L623	#,
	.loc 1 2053 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gv
	je	.L624	#,
	movq	-56(%rbp), %rax	# gv, tmp138
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_43].sv_flags, D.18497
	movzbl	%al, %eax	# D.18497, D.18497
	cmpl	$13, %eax	#, D.18497
	jne	.L624	#,
	movq	-56(%rbp), %rax	# gv, tmp139
	movq	(%rax), %rax	# gv_43->sv_any, D.18500
	movq	56(%rax), %rax	# _46->xgv_gp, D.18501
	testq	%rax, %rax	# D.18501
	je	.L624	#,
	movq	-56(%rbp), %rax	# gv, tmp140
	movq	(%rax), %rax	# gv_43->sv_any, D.18500
	movq	56(%rax), %rax	# _48->xgv_gp, D.18501
	movq	16(%rax), %rax	# _49->gp_io, iftmp.871
	jmp	.L625	#
.L624:
	.loc 1 2053 0 discriminator 2
	movl	$0, %eax	#, iftmp.871
.L625:
	.loc 1 2053 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.871, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L623	#,
	.loc 1 2054 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp141
	movl	12(%rax), %eax	# MEM[(struct SV *)io_52].sv_flags, D.18497
	andl	$32768, %eax	#, D.18497
	testl	%eax, %eax	# D.18497
	je	.L626	#,
	.loc 1 2054 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp142
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	Perl_mg_find	#
	jmp	.L627	#
.L626:
	.loc 1 2054 0 discriminator 2
	movl	$0, %eax	#, iftmp.872
.L627:
	.loc 1 2054 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.872, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L623	#,
.LBB93:
	.loc 1 2056 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.873
	addq	$4, %rax	#, PL_markstack_ptr.874
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.874, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.875
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.876
	cmpq	%rax, %rdx	# PL_markstack_max.876, PL_markstack_ptr.875
	jne	.L628	#,
	.loc 1 2056 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L628:
	.loc 1 2056 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.877
	movq	%rbx, %rcx	# sp, sp.878
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.879
	subq	%rdx, %rcx	# PL_stack_base.880, D.18499
	movq	%rcx, %rdx	# D.18499, D.18499
	sarq	$3, %rdx	#, tmp143
	movl	%edx, (%rax)	# D.18502, *PL_markstack_ptr.877_62
.LBE93:
.LBB94:
	.loc 1 2057 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.881
	movq	%rax, %rdx	# PL_stack_max.881, PL_stack_max.882
	movq	%rbx, %rax	# sp, sp.883
	subq	%rax, %rdx	# sp.883, D.18499
	movq	%rdx, %rax	# D.18499, D.18499
	cmpq	$7, %rax	#, D.18499
	jg	.L629	#,
	.loc 1 2057 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L629:
	.loc 1 2057 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# mg, tmp144
	movq	24(%rax), %rax	# mg_57->mg_obj, D.18504
	testq	%rax, %rax	# D.18504
	je	.L630	#,
	.loc 1 2057 0 discriminator 1
	movq	-40(%rbp), %rax	# mg, tmp145
	movq	24(%rax), %rax	# mg_57->mg_obj, iftmp.884
	jmp	.L631	#
.L630:
	.loc 1 2057 0 discriminator 2
	movq	-48(%rbp), %rax	# io, tmp146
	movq	%rax, %rdi	# tmp146,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18504,
	call	Perl_sv_2mortal	#
.L631:
	.loc 1 2057 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.884, *sp_75
.LBE94:
.LBB95:
	.loc 1 2061 0 is_stmt 1 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.885
	movq	%rax, %rdx	# PL_stack_max.885, PL_stack_max.886
	movq	%rbx, %rax	# sp, sp.887
	subq	%rax, %rdx	# sp.887, D.18499
	movq	%rdx, %rax	# D.18499, D.18499
	cmpq	$7, %rax	#, D.18499
	jg	.L632	#,
	.loc 1 2061 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L632:
	.loc 1 2061 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-64(%rbp), %rax	# offset, tmp147
	movq	%rax, %rdi	# tmp147,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18504,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18504, *sp_86
.LBE95:
.LBB96:
	.loc 1 2063 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.888
	movq	%rax, %rdx	# PL_stack_max.888, PL_stack_max.889
	movq	%rbx, %rax	# sp, sp.890
	subq	%rax, %rdx	# sp.890, D.18499
	movq	%rdx, %rax	# D.18499, D.18499
	cmpq	$7, %rax	#, D.18499
	jg	.L633	#,
	.loc 1 2063 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L633:
	.loc 1 2063 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-68(%rbp), %eax	# whence, tmp148
	cltq
	movq	%rax, %rdi	# D.18499,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18504,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18504, *sp_95
.LBE96:
	.loc 1 2064 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2065 0 discriminator 2
	call	Perl_push_scope	#
	.loc 1 2066 0 discriminator 2
	movl	$0, %esi	#,
	movl	$.LC54, %edi	#,
	call	Perl_call_method	#
	.loc 1 2067 0 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 2068 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2069 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.891
	movq	(%rax), %rax	# PL_op.891_101->op_next, D.18496
	jmp	.L634	#
.L623:
	.loc 1 2072 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.892
	movzwl	32(%rax), %eax	# PL_op.892_103->op_type, D.18505
	cmpw	$218, %ax	#, D.18505
	jne	.L635	#,
	.loc 1 2073 0
	addq	$8, %rbx	#, sp
	movl	-68(%rbp), %edx	# whence, tmp149
	movq	-64(%rbp), %rcx	# offset, tmp150
	movq	-56(%rbp), %rax	# gv, tmp151
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	Perl_do_seek	#
	testb	%al, %al	# D.18506
	je	.L636	#,
	.loc 1 2073 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.893
	jmp	.L637	#
.L636:
	.loc 1 2073 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.893
.L637:
	.loc 1 2073 0 discriminator 1
	movq	%rax, (%rbx)	# iftmp.893, *sp_105
	jmp	.L638	#
.L635:
.LBB97:
	.loc 1 2075 0 is_stmt 1
	movl	-68(%rbp), %edx	# whence, tmp152
	movq	-64(%rbp), %rcx	# offset, tmp153
	movq	-56(%rbp), %rax	# gv, tmp154
	movq	%rcx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	Perl_do_sysseek	#
	movq	%rax, -32(%rbp)	# tmp155, sought
	.loc 1 2076 0
	cmpq	$0, -32(%rbp)	#, sought
	jns	.L639	#,
	.loc 1 2077 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_110
	jmp	.L638	#
.L639:
.LBB98:
	.loc 1 2085 0
	cmpq	$0, -32(%rbp)	#, sought
	je	.L640	#,
	.loc 1 2085 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sought, tmp156
	movq	%rax, %rdi	# tmp156,
	call	Perl_newSViv	#
	jmp	.L641	#
.L640:
	.loc 1 2085 0 discriminator 2
	movl	$10, %esi	#,
	movl	$zero_but_true, %edi	#,
	call	Perl_newSVpvn	#
.L641:
	.loc 1 2079 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.894, sv
	.loc 1 2086 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# sv, tmp157
	movq	%rax, %rdi	# tmp157,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18504, *sp_114
.L638:
.LBE98:
.LBE97:
	.loc 1 2089 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.895
	movq	(%rax), %rax	# PL_op.895_116->op_next, D.18496
.L634:
	.loc 1 2090 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_pp_sysseek, .-Perl_pp_sysseek
	.section	.rodata
.LC55:
	.string	"truncate"
	.text
	.globl	Perl_pp_truncate
	.type	Perl_pp_truncate, @function
Perl_pp_truncate:
.LFB37:
	.loc 1 2093 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2094 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2105 0
	movq	%rbx, %rax	# sp, sp.896
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.896_14, PL_Sv.897
	movq	%rax, PL_Sv(%rip)	# PL_Sv.897, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.899
	movl	12(%rax), %eax	# PL_Sv.899_17->sv_flags, D.18509
	andl	$65536, %eax	#, D.18509
	testl	%eax, %eax	# D.18509
	je	.L643	#,
	.loc 1 2105 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.900
	movq	(%rax), %rax	# PL_Sv.900_20->sv_any, D.18510
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_21].xiv_iv, iftmp.898
	jmp	.L644	#
.L643:
	.loc 1 2105 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.901
	movq	%rax, %rdi	# PL_Sv.901,
	call	Perl_sv_2iv	#
.L644:
	.loc 1 2105 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.898, len
	.loc 1 2110 0 is_stmt 1 discriminator 3
	call	__errno_location	#
	movl	$0, (%rax)	#, *_26
.LBB99:
	.loc 1 2113 0 discriminator 3
	movl	$1, -76(%rbp)	#, result
	.loc 1 2117 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.902
	movzbl	36(%rax), %eax	# PL_op.902_28->op_flags, D.18512
	testb	%al, %al	# D.18513
	jns	.L645	#,
	.loc 1 2118 0
	movq	%rbx, %rax	# sp, sp.903
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.903_31, PL_Sv.904
	movq	%rax, PL_Sv(%rip)	# PL_Sv.904, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.906
	movl	12(%rax), %eax	# PL_Sv.906_34->sv_flags, D.18509
	andl	$262144, %eax	#, D.18509
	testl	%eax, %eax	# D.18509
	je	.L646	#,
	.loc 1 2118 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.907
	movq	(%rax), %rax	# PL_Sv.907_37->sv_any, D.18510
	movq	8(%rax), %rax	# MEM[(struct XPV *)_38].xpv_cur, n_a.908
	movq	%rax, -72(%rbp)	# n_a.908, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.909
	movq	(%rax), %rax	# PL_Sv.909_40->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XPV *)_41].xpv_pv, iftmp.905
	jmp	.L647	#
.L646:
	.loc 1 2118 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.910
	leaq	-72(%rbp), %rcx	#, tmp130
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# PL_Sv.910,
	call	Perl_sv_2pv_flags	#
.L647:
	.loc 1 2118 0 discriminator 3
	movl	$15, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.905,
	call	Perl_gv_fetchpv	#
	movq	%rax, -64(%rbp)	# tmp131, tmpgv
.L648:
	.loc 1 2121 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, tmpgv
	je	.L649	#,
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tmpgv, tmp132
	movl	12(%rax), %eax	# MEM[(struct SV *)tmpgv_7].sv_flags, D.18509
	movzbl	%al, %eax	# D.18509, D.18509
	cmpl	$13, %eax	#, D.18509
	jne	.L649	#,
	movq	-64(%rbp), %rax	# tmpgv, tmp133
	movq	(%rax), %rax	# tmpgv_7->sv_any, D.18516
	movq	56(%rax), %rax	# _81->xgv_gp, D.18517
	testq	%rax, %rax	# D.18517
	je	.L649	#,
	movq	-64(%rbp), %rax	# tmpgv, tmp134
	movq	(%rax), %rax	# tmpgv_7->sv_any, D.18516
	movq	56(%rax), %rax	# _83->xgv_gp, D.18517
	movq	16(%rax), %rax	# _84->gp_io, D.18518
	testq	%rax, %rax	# D.18518
	jne	.L650	#,
.L649:
	.loc 1 2122 0 is_stmt 1
	movl	$0, -76(%rbp)	#, result
	jmp	.L651	#
.L650:
.LBB100:
	.loc 1 2125 0
	movq	-64(%rbp), %rax	# tmpgv, tmp135
	movq	(%rax), %rax	# tmpgv_7->sv_any, D.18516
	movq	56(%rax), %rax	# _86->xgv_gp, D.18517
	movq	16(%rax), %rax	# _87->gp_io, tmp136
	movq	%rax, -56(%rbp)	# tmp136, io
.L652:
	.loc 1 2127 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.911
	testb	%al, %al	# PL_tainting.911
	je	.L653	#,
	.loc 1 2127 0 is_stmt 0 discriminator 1
	movl	$.LC55, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L653:
	.loc 1 2128 0 is_stmt 1
	movq	-56(%rbp), %rax	# io, tmp137
	movq	(%rax), %rax	# io_8->sv_any, D.18519
	movq	56(%rax), %rax	# _91->xio_ifp, tmp138
	movq	%rax, -24(%rbp)	# tmp138, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L654	#,
	.loc 1 2129 0
	movl	$0, -76(%rbp)	#, result
	jmp	.L651	#
.L654:
	.loc 1 2132 0
	movq	-24(%rbp), %rax	# fp, tmp139
	movq	%rax, %rdi	# tmp139,
	call	Perl_PerlIO_flush	#
	.loc 1 2134 0
	movq	-24(%rbp), %rax	# fp, tmp140
	movq	%rax, %rdi	# tmp140,
	call	Perl_PerlIO_fileno	#
	movq	-48(%rbp), %rdx	# len, tmp141
	movq	%rdx, %rsi	# tmp141,
	movl	%eax, %edi	# D.18515,
	call	ftruncate	#
	testl	%eax, %eax	# D.18515
	jns	.L651	#,
	.loc 1 2138 0
	movl	$0, -76(%rbp)	#, result
.LBE100:
	jmp	.L655	#
.L651:
	jmp	.L655	#
.L645:
.LBB101:
	.loc 1 2143 0
	movq	%rbx, %rax	# sp, sp.912
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.912_46, tmp142
	movq	%rax, -40(%rbp)	# tmp142, sv
	.loc 1 2146 0
	movq	-40(%rbp), %rax	# sv, tmp143
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18509
	movzbl	%al, %eax	# D.18509, D.18509
	cmpl	$13, %eax	#, D.18509
	jne	.L656	#,
	.loc 1 2147 0
	movq	-40(%rbp), %rax	# sv, tmp144
	movq	%rax, -64(%rbp)	# tmp144, tmpgv
	.loc 1 2148 0
	jmp	.L648	#
.L656:
	.loc 1 2150 0
	movq	-40(%rbp), %rax	# sv, tmp145
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18509
	andl	$524288, %eax	#, D.18509
	testl	%eax, %eax	# D.18509
	je	.L657	#,
	.loc 1 2150 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp146
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XRV *)_54].xrv_rv, D.18514
	movl	12(%rax), %eax	# _55->sv_flags, D.18509
	movzbl	%al, %eax	# D.18509, D.18509
	cmpl	$13, %eax	#, D.18509
	jne	.L657	#,
	.loc 1 2151 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp147
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XRV *)_58].xrv_rv, tmp148
	movq	%rax, -64(%rbp)	# tmp148, tmpgv
	.loc 1 2152 0
	jmp	.L648	#
.L657:
	.loc 1 2154 0
	movq	-40(%rbp), %rax	# sv, tmp149
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18509
	andl	$524288, %eax	#, D.18509
	testl	%eax, %eax	# D.18509
	je	.L658	#,
	.loc 1 2154 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp150
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XRV *)_62].xrv_rv, D.18514
	movl	12(%rax), %eax	# _63->sv_flags, D.18509
	movzbl	%al, %eax	# D.18509, D.18509
	cmpl	$15, %eax	#, D.18509
	jne	.L658	#,
	.loc 1 2155 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp151
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XRV *)_66].xrv_rv, tmp152
	movq	%rax, -56(%rbp)	# tmp152, io
	.loc 1 2156 0
	jmp	.L652	#
.L658:
	.loc 1 2159 0
	movq	-40(%rbp), %rax	# sv, tmp153
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18509
	andl	$262144, %eax	#, D.18509
	testl	%eax, %eax	# D.18509
	je	.L659	#,
	.loc 1 2159 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp154
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	8(%rax), %rax	# MEM[(struct XPV *)_70].xpv_cur, n_a.914
	movq	%rax, -72(%rbp)	# n_a.914, n_a
	movq	-40(%rbp), %rax	# sv, tmp155
	movq	(%rax), %rax	# sv_48->sv_any, D.18510
	movq	(%rax), %rax	# MEM[(struct XPV *)_72].xpv_pv, iftmp.913
	jmp	.L660	#
.L659:
	.loc 1 2159 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp156
	movq	-40(%rbp), %rax	# sv, tmp157
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	Perl_sv_2pv_flags	#
.L660:
	.loc 1 2159 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.913, name
	.loc 1 2160 0 is_stmt 1 discriminator 3
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.915
	testb	%al, %al	# PL_tainting.915
	je	.L661	#,
	.loc 1 2160 0 is_stmt 0 discriminator 1
	movl	$.LC55, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L661:
	.loc 1 2162 0 is_stmt 1
	movq	-48(%rbp), %rdx	# len, tmp158
	movq	-32(%rbp), %rax	# name, tmp159
	movq	%rdx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	truncate	#
	testl	%eax, %eax	# D.18515
	jns	.L655	#,
	.loc 1 2163 0
	movl	$0, -76(%rbp)	#, result
.L655:
.LBE101:
	.loc 1 2179 0
	cmpl	$0, -76(%rbp)	#, result
	je	.L662	#,
	.loc 1 2180 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_97
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.916
	movq	(%rax), %rax	# PL_op.916_98->op_next, D.18508
	jmp	.L665	#
.L662:
	.loc 1 2181 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_100, D.18515
	testl	%eax, %eax	# D.18515
	jne	.L664	#,
	.loc 1 2182 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_102
.L664:
	.loc 1 2183 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_103
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.917
	movq	(%rax), %rax	# PL_op.917_104->op_next, D.18508
.L665:
.LBE99:
	.loc 1 2185 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_pp_truncate, .-Perl_pp_truncate
	.globl	Perl_pp_fcntl
	.type	Perl_pp_fcntl, @function
Perl_pp_fcntl:
.LFB38:
	.loc 1 2188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2189 0
	call	Perl_pp_ioctl	#
	.loc 1 2190 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_pp_fcntl, .-Perl_pp_fcntl
	.section	.rodata
.LC56:
	.string	"ioctl"
.LC57:
	.string	"fcntl"
	.align 8
.LC58:
	.string	"Possible memory corruption: %s overflowed 3rd argument"
	.text
	.globl	Perl_pp_ioctl
	.type	Perl_pp_ioctl, @function
Perl_pp_ioctl:
.LFB39:
	.loc 1 2193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 2194 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.918
	movq	PL_op(%rip), %rax	# PL_op, PL_op.919
	movq	24(%rax), %rax	# PL_op.919_15->op_targ, D.18523
	salq	$3, %rax	#, D.18523
	addq	%rdx, %rax	# PL_curpad.918, D.18524
	movq	(%rax), %rax	# *_18, tmp188
	movq	%rax, -56(%rbp)	# tmp188, targ
	.loc 1 2195 0
	movq	%rbx, %rax	# sp, sp.920
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.920_20, tmp189
	movq	%rax, -48(%rbp)	# tmp189, argsv
	.loc 1 2196 0
	movq	%rbx, %rax	# sp, sp.921
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.921_23, PL_Sv.922
	movq	%rax, PL_Sv(%rip)	# PL_Sv.922, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.924
	movl	12(%rax), %eax	# PL_Sv.924_26->sv_flags, D.18525
	andl	$65536, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L669	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.925
	movq	(%rax), %rax	# PL_Sv.925_29->sv_any, D.18526
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_30].xuv_uv, D.18523
	jmp	.L670	#
.L669:
	.loc 1 2196 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.926
	movq	%rax, %rdi	# PL_Sv.926,
	call	Perl_sv_2uv	#
.L670:
	.loc 1 2196 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.923, func
	.loc 1 2197 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.927
	movzwl	32(%rax), %eax	# PL_op.927_37->op_type, D.18527
	movzwl	%ax, %eax	# D.18527, tmp190
	movl	%eax, -84(%rbp)	# tmp190, optype
	.loc 1 2200 0 discriminator 3
	movq	%rbx, %rax	# sp, sp.928
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.928_40, tmp191
	movq	%rax, -40(%rbp)	# tmp191, gv
	.loc 1 2201 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, gv
	je	.L671	#,
	.loc 1 2201 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, gv
	je	.L672	#,
	.loc 1 2201 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp192
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_42].sv_flags, D.18525
	movzbl	%al, %eax	# D.18525, D.18525
	cmpl	$13, %eax	#, D.18525
	jne	.L672	#,
	.loc 1 2201 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp193
	movq	(%rax), %rax	# gv_42->sv_any, D.18528
	movq	56(%rax), %rax	# _45->xgv_gp, D.18529
	testq	%rax, %rax	# D.18529
	je	.L672	#,
	movq	-40(%rbp), %rax	# gv, tmp194
	movq	(%rax), %rax	# gv_42->sv_any, D.18528
	movq	56(%rax), %rax	# _47->xgv_gp, D.18529
	movq	16(%rax), %rax	# _48->gp_io, D.18530
	testq	%rax, %rax	# D.18530
	je	.L672	#,
	movq	-40(%rbp), %rax	# gv, tmp195
	movq	(%rax), %rax	# gv_42->sv_any, D.18528
	movq	56(%rax), %rax	# _50->xgv_gp, D.18529
	movq	16(%rax), %rax	# _51->gp_io, iftmp.930
	jmp	.L673	#
.L672:
	.loc 1 2201 0 discriminator 4
	movq	-40(%rbp), %rax	# gv, tmp196
	movq	%rax, %rdi	# tmp196,
	call	Perl_gv_IOadd	#
	movq	(%rax), %rax	# _53->sv_any, D.18528
	movq	56(%rax), %rax	# _54->xgv_gp, D.18529
	movq	16(%rax), %rax	# _55->gp_io, iftmp.930
.L673:
	jmp	.L674	#
.L671:
	.loc 1 2201 0 discriminator 2
	movl	$0, %eax	#, iftmp.929
.L674:
	.loc 1 2201 0 discriminator 6
	movq	%rax, -32(%rbp)	# iftmp.929, io
	.loc 1 2203 0 is_stmt 1 discriminator 6
	cmpq	$0, -32(%rbp)	#, io
	je	.L675	#,
	.loc 1 2203 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, argsv
	je	.L675	#,
	movq	-32(%rbp), %rax	# io, tmp197
	movq	(%rax), %rax	# io_59->sv_any, D.18532
	movq	56(%rax), %rax	# _60->xio_ifp, D.18533
	testq	%rax, %rax	# D.18533
	jne	.L676	#,
.L675:
	.loc 1 2204 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.931
	movq	80(%rax), %rax	# PL_curcop.931_137->cop_warnings, D.18537
	testq	%rax, %rax	# D.18537
	je	.L677	#,
	.loc 1 2204 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.932
	movq	80(%rax), %rax	# PL_curcop.932_139->cop_warnings, D.18537
	cmpq	$32, %rax	#, D.18537
	je	.L677	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.933
	movq	80(%rax), %rax	# PL_curcop.933_141->cop_warnings, D.18537
	cmpq	$16, %rax	#, D.18537
	je	.L678	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.934
	movq	80(%rax), %rax	# PL_curcop.934_143->cop_warnings, D.18537
	movq	(%rax), %rax	# _144->sv_any, D.18526
	movq	(%rax), %rax	# MEM[(struct XPV *)_145].xpv_pv, D.18534
	addq	$2, %rax	#, D.18534
	movzbl	(%rax), %eax	# *_147, D.18536
	movsbl	%al, %eax	# D.18536, D.18535
	andl	$64, %eax	#, D.18535
	testl	%eax, %eax	# D.18535
	jne	.L678	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.935
	movq	80(%rax), %rax	# PL_curcop.935_151->cop_warnings, D.18537
	movq	(%rax), %rax	# _152->sv_any, D.18526
	movq	(%rax), %rax	# MEM[(struct XPV *)_153].xpv_pv, D.18534
	addq	$1, %rax	#, D.18534
	movzbl	(%rax), %eax	# *_155, D.18536
	movsbl	%al, %eax	# D.18536, D.18535
	andl	$16, %eax	#, D.18535
	testl	%eax, %eax	# D.18535
	jne	.L678	#,
.L677:
	.loc 1 2204 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.936
	movq	80(%rax), %rax	# PL_curcop.936_159->cop_warnings, D.18537
	testq	%rax, %rax	# D.18537
	jne	.L679	#,
	.loc 1 2204 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.937
	movzbl	%al, %eax	# PL_dowarn.937, D.18535
	andl	$1, %eax	#, D.18535
	testl	%eax, %eax	# D.18535
	je	.L679	#,
.L678:
	.loc 1 2205 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.938
	movzwl	32(%rax), %eax	# PL_op.938_164->op_type, D.18527
	movzwl	%ax, %edx	# D.18527, D.18535
	movq	-32(%rbp), %rcx	# io, tmp198
	movq	-40(%rbp), %rax	# gv, tmp199
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# tmp199,
	call	Perl_report_evil_fh	#
.L679:
	.loc 1 2206 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_167
	.loc 1 2207 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_168
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.939
	movq	(%rax), %rax	# PL_op.939_169->op_next, D.18522
	jmp	.L680	#
.L676:
	.loc 1 2210 0
	movq	-48(%rbp), %rax	# argsv, tmp200
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$262144, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	jne	.L681	#,
	.loc 1 2210 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argsv, tmp201
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$196608, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	jne	.L682	#,
.L681:
.LBB102:
	.loc 1 2213 0 is_stmt 1
	movq	-48(%rbp), %rax	# argsv, tmp202
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$10223616, %eax	#, D.18525
	cmpl	$262144, %eax	#, D.18525
	jne	.L683	#,
	.loc 1 2213 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argsv, tmp203
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	8(%rax), %rax	# MEM[(struct XPV *)_75].xpv_cur, len.941
	movq	%rax, -80(%rbp)	# len.941, len
	movq	-48(%rbp), %rax	# argsv, tmp204
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	(%rax), %rax	# MEM[(struct XPV *)_77].xpv_pv, iftmp.940
	jmp	.L684	#
.L683:
	.loc 1 2213 0 discriminator 2
	leaq	-80(%rbp), %rcx	#, tmp205
	movq	-48(%rbp), %rax	# argsv, tmp206
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	Perl_sv_pvn_force_flags	#
.L684:
	.loc 1 2213 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.940, s
	.loc 1 2214 0 is_stmt 1 discriminator 3
	movq	$256, -24(%rbp)	#, need
	.loc 1 2215 0 discriminator 3
	movq	-80(%rbp), %rax	# len, len.942
	cmpq	-24(%rbp), %rax	# need, len.942
	jae	.L685	#,
	.loc 1 2216 0
	movq	-24(%rbp), %rax	# need, tmp207
	leaq	1(%rax), %rdx	#, D.18523
	movq	-48(%rbp), %rax	# argsv, tmp208
	movq	%rdx, %rsi	# D.18523,
	movq	%rax, %rdi	# tmp208,
	call	Perl_sv_grow	#
	movq	%rax, -72(%rbp)	# tmp209, s
	.loc 1 2217 0
	movq	-48(%rbp), %rax	# argsv, tmp210
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	-24(%rbp), %rdx	# need, tmp211
	movq	%rdx, 8(%rax)	# tmp211, MEM[(struct XPV *)_85].xpv_cur
.L685:
	.loc 1 2220 0
	movq	-48(%rbp), %rax	# argsv, tmp212
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_86].xpv_cur, D.18523
	movq	-72(%rbp), %rax	# s, tmp213
	addq	%rdx, %rax	# D.18523, D.18534
	movb	$17, (%rax)	#, *_88
.LBE102:
	.loc 1 2210 0
	jmp	.L686	#
.L682:
	.loc 1 2223 0
	movq	-48(%rbp), %rax	# argsv, tmp214
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$65536, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L687	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argsv, tmp215
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_68].xiv_iv, iftmp.943
	jmp	.L688	#
.L687:
	.loc 1 2223 0 discriminator 2
	movq	-48(%rbp), %rax	# argsv, tmp216
	movq	%rax, %rdi	# tmp216,
	call	Perl_sv_2iv	#
.L688:
	.loc 1 2223 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.943, retval
	.loc 1 2224 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# retval, tmp217
	movq	%rax, -72(%rbp)	# tmp217, s
.L686:
	.loc 1 2227 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.944
	testb	%al, %al	# PL_tainting.944
	je	.L689	#,
	.loc 1 2227 0 is_stmt 0 discriminator 1
	cmpl	$221, -84(%rbp)	#, optype
	jne	.L690	#,
	movl	$.LC56, %eax	#, iftmp.945
	jmp	.L691	#
.L690:
	.loc 1 2227 0 discriminator 2
	movl	$.LC57, %eax	#, iftmp.945
.L691:
	.loc 1 2227 0 discriminator 3
	movq	%rax, %rsi	# iftmp.945,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L689:
	.loc 1 2229 0 is_stmt 1
	cmpl	$221, -84(%rbp)	#, optype
	jne	.L692	#,
	.loc 1 2231 0
	movl	-88(%rbp), %r12d	# func, D.18523
	movq	-32(%rbp), %rax	# io, tmp218
	movq	(%rax), %rax	# io_59->sv_any, D.18532
	movq	56(%rax), %rax	# _93->xio_ifp, D.18533
	movq	%rax, %rdi	# D.18533,
	call	Perl_PerlIO_fileno	#
	movq	-72(%rbp), %rdx	# s, tmp219
	movq	%r12, %rsi	# D.18523,
	movl	%eax, %edi	# D.18535,
	movl	$0, %eax	#,
	call	ioctl	#
	cltq
	movq	%rax, -64(%rbp)	# tmp220, retval
	jmp	.L693	#
.L692:
	.loc 1 2242 0
	movl	-88(%rbp), %r12d	# func, func.946
	movq	-32(%rbp), %rax	# io, tmp221
	movq	(%rax), %rax	# io_59->sv_any, D.18532
	movq	56(%rax), %rax	# _99->xio_ifp, D.18533
	movq	%rax, %rdi	# D.18533,
	call	Perl_PerlIO_fileno	#
	movq	-72(%rbp), %rdx	# s, tmp222
	movl	%r12d, %esi	# func.946,
	movl	%eax, %edi	# D.18535,
	movl	$0, %eax	#,
	call	fcntl	#
	cltq
	movq	%rax, -64(%rbp)	# tmp223, retval
.L693:
	.loc 1 2247 0
	movq	-48(%rbp), %rax	# argsv, tmp224
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$262144, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L694	#,
	.loc 1 2248 0
	movq	-48(%rbp), %rax	# argsv, tmp225
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_106].xpv_cur, D.18523
	movq	-72(%rbp), %rax	# s, tmp226
	addq	%rdx, %rax	# D.18523, D.18534
	movzbl	(%rax), %eax	# *_108, D.18536
	cmpb	$17, %al	#, D.18536
	je	.L695	#,
	.loc 1 2250 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.948
	movzwl	32(%rax), %eax	# PL_op.948_110->op_type, D.18527
	.loc 1 2249 0
	cmpw	$351, %ax	#, D.18527
	jne	.L696	#,
	.loc 1 2250 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.949
	.loc 1 2249 0
	movq	%rax, %rdi	# PL_op.949,
	call	Perl_custom_op_name	#
	jmp	.L697	#
.L696:
	.loc 1 2250 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.950
	movzwl	32(%rax), %eax	# PL_op.950_114->op_type, D.18527
	movzwl	%ax, %eax	# D.18527, D.18535
	.loc 1 2249 0 discriminator 1
	cltq
	movq	PL_op_name(,%rax,8), %rax	# PL_op_name, iftmp.947
.L697:
	.loc 1 2249 0 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# iftmp.947,
	movl	$.LC58, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L680	#
.L695:
	.loc 1 2251 0 is_stmt 1
	movq	-48(%rbp), %rax	# argsv, tmp228
	movq	(%rax), %rax	# argsv_22->sv_any, D.18526
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_119].xpv_cur, D.18523
	movq	-72(%rbp), %rax	# s, tmp229
	addq	%rdx, %rax	# D.18523, D.18534
	movb	$0, (%rax)	#, *_121
	.loc 1 2252 0
	movq	-48(%rbp), %rax	# argsv, tmp230
	movl	12(%rax), %eax	# argsv_22->sv_flags, D.18525
	andl	$16384, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L694	#,
	.loc 1 2252 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# argsv, tmp231
	movq	%rax, %rdi	# tmp231,
	call	Perl_mg_set	#
.L694:
	.loc 1 2255 0 is_stmt 1
	cmpq	$-1, -64(%rbp)	#, retval
	jne	.L698	#,
	.loc 1 2256 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_124
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.951
	movq	(%rax), %rax	# PL_op.951_125->op_next, D.18522
	jmp	.L680	#
.L698:
	.loc 1 2257 0
	cmpq	$0, -64(%rbp)	#, retval
	je	.L699	#,
.LBB103:
	.loc 1 2258 0
	movq	-64(%rbp), %rdx	# retval, tmp232
	movq	-56(%rbp), %rax	# targ, tmp233
	movq	%rdx, %rsi	# tmp232,
	movq	%rax, %rdi	# tmp233,
	call	Perl_sv_setiv	#
.LBB104:
	movq	-56(%rbp), %rax	# targ, tmp234
	movl	12(%rax), %eax	# targ_19->sv_flags, D.18525
	andl	$16384, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L700	#,
	.loc 1 2258 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, tmp235
	movq	%rax, %rdi	# tmp235,
	call	Perl_mg_set	#
.L700:
	.loc 1 2258 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp236
	movq	%rax, (%rbx)	# tmp236, *sp_129
.LBE104:
.LBE103:
	jmp	.L701	#
.L699:
.LBB105:
	.loc 1 2261 0 is_stmt 1
	movq	-56(%rbp), %rax	# targ, tmp237
	movl	$10, %edx	#,
	movl	$zero_but_true, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	Perl_sv_setpvn	#
.LBB106:
	movq	-56(%rbp), %rax	# targ, tmp238
	movl	12(%rax), %eax	# targ_19->sv_flags, D.18525
	andl	$16384, %eax	#, D.18525
	testl	%eax, %eax	# D.18525
	je	.L702	#,
	.loc 1 2261 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# targ, tmp239
	movq	%rax, %rdi	# tmp239,
	call	Perl_mg_set	#
.L702:
	.loc 1 2261 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# targ, tmp240
	movq	%rax, (%rbx)	# tmp240, *sp_133
.L701:
.LBE106:
.LBE105:
	.loc 1 2264 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.952
	movq	(%rax), %rax	# PL_op.952_135->op_next, D.18522
.L680:
	.loc 1 2265 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_pp_ioctl, .-Perl_pp_ioctl
	.section	.rodata
.LC59:
	.string	"flock()"
	.text
	.globl	Perl_pp_flock
	.type	Perl_pp_flock, @function
Perl_pp_flock:
.LFB40:
	.loc 1 2268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2301 0
	movl	$.LC59, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2303 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_pp_flock, .-Perl_pp_flock
	.section	.rodata
.LC60:
	.string	"socket"
	.text
	.globl	Perl_pp_socket
	.type	Perl_pp_socket, @function
Perl_pp_socket:
.LFB41:
	.loc 1 2308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2356 0
	movl	$.LC60, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2358 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_pp_socket, .-Perl_pp_socket
	.section	.rodata
.LC61:
	.string	"socketpair"
	.text
	.globl	Perl_pp_sockpair
	.type	Perl_pp_sockpair, @function
Perl_pp_sockpair:
.LFB42:
	.loc 1 2361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2421 0
	movl	$.LC61, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2423 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_pp_sockpair, .-Perl_pp_sockpair
	.section	.rodata
.LC62:
	.string	"bind"
	.text
	.globl	Perl_pp_bind
	.type	Perl_pp_bind, @function
Perl_pp_bind:
.LFB43:
	.loc 1 2426 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2480 0
	movl	$.LC62, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2482 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_pp_bind, .-Perl_pp_bind
	.section	.rodata
.LC63:
	.string	"connect"
	.text
	.globl	Perl_pp_connect
	.type	Perl_pp_connect, @function
Perl_pp_connect:
.LFB44:
	.loc 1 2485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2510 0
	movl	$.LC63, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2512 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_pp_connect, .-Perl_pp_connect
	.section	.rodata
.LC64:
	.string	"listen"
	.text
	.globl	Perl_pp_listen
	.type	Perl_pp_listen, @function
Perl_pp_listen:
.LFB45:
	.loc 1 2515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2536 0
	movl	$.LC64, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2538 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_pp_listen, .-Perl_pp_listen
	.section	.rodata
.LC65:
	.string	"accept"
	.text
	.globl	Perl_pp_accept
	.type	Perl_pp_accept, @function
Perl_pp_accept:
.LFB46:
	.loc 1 2541 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2607 0
	movl	$.LC65, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2609 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_pp_accept, .-Perl_pp_accept
	.section	.rodata
.LC66:
	.string	"shutdown"
	.text
	.globl	Perl_pp_shutdown
	.type	Perl_pp_shutdown, @function
Perl_pp_shutdown:
.LFB47:
	.loc 1 2612 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2631 0
	movl	$.LC66, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2633 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_pp_shutdown, .-Perl_pp_shutdown
	.section	.rodata
.LC67:
	.string	"getsockopt"
	.text
	.globl	Perl_pp_gsockopt
	.type	Perl_pp_gsockopt, @function
Perl_pp_gsockopt:
.LFB48:
	.loc 1 2636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2640 0
	movl	$.LC67, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2642 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	Perl_pp_gsockopt, .-Perl_pp_gsockopt
	.section	.rodata
.LC68:
	.string	"setsockopt"
	.text
	.globl	Perl_pp_ssockopt
	.type	Perl_pp_ssockopt, @function
Perl_pp_ssockopt:
.LFB49:
	.loc 1 2645 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2712 0
	movl	$.LC68, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2714 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_pp_ssockopt, .-Perl_pp_ssockopt
	.section	.rodata
.LC69:
	.string	"getsockname"
	.text
	.globl	Perl_pp_getsockname
	.type	Perl_pp_getsockname, @function
Perl_pp_getsockname:
.LFB50:
	.loc 1 2717 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2721 0
	movl	$.LC69, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2723 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_pp_getsockname, .-Perl_pp_getsockname
	.section	.rodata
.LC70:
	.string	"getpeername"
	.text
	.globl	Perl_pp_getpeername
	.type	Perl_pp_getpeername, @function
Perl_pp_getpeername:
.LFB51:
	.loc 1 2726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2785 0
	movl	$.LC70, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 2787 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_pp_getpeername, .-Perl_pp_getpeername
	.globl	Perl_pp_lstat
	.type	Perl_pp_lstat, @function
Perl_pp_lstat:
.LFB52:
	.loc 1 2792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2793 0
	call	Perl_pp_stat	#
	.loc 1 2794 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_pp_lstat, .-Perl_pp_lstat
	.section	.rodata
.LC71:
	.string	"lstat() on filehandle %s"
	.align 8
.LC72:
	.string	"The stat preceding lstat() wasn't an lstat"
.LC73:
	.string	"stat"
	.text
	.globl	Perl_pp_stat
	.type	Perl_pp_stat, @function
Perl_pp_stat:
.LFB53:
	.loc 1 2797 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2798 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2801 0
	movl	$13, -48(%rbp)	#, max
	.loc 1 2804 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.953
	movzbl	36(%rax), %eax	# PL_op.953_26->op_flags, D.18568
	movzbl	%al, %eax	# D.18568, D.18569
	andl	$16, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	je	.L730	#,
	.loc 1 2805 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.954
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.954_30].op_sv, tmp344
	movq	%rax, -32(%rbp)	# tmp344, gv
	.loc 1 2806 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.955
	movzwl	32(%rax), %eax	# PL_op.955_32->op_type, D.18570
	cmpw	$234, %ax	#, D.18570
	jne	.L731	#,
	.loc 1 2807 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.956
	cmpq	%rax, -32(%rbp)	# PL_defgv.956, gv
	je	.L732	#,
	.loc 1 2808 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.957
	movq	80(%rax), %rax	# PL_curcop.957_35->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	je	.L733	#,
	.loc 1 2808 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.958
	movq	80(%rax), %rax	# PL_curcop.958_37->cop_warnings, D.18571
	cmpq	$32, %rax	#, D.18571
	je	.L733	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.959
	movq	80(%rax), %rax	# PL_curcop.959_39->cop_warnings, D.18571
	cmpq	$16, %rax	#, D.18571
	je	.L734	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.960
	movq	80(%rax), %rax	# PL_curcop.960_41->cop_warnings, D.18571
	movq	(%rax), %rax	# _42->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_43].xpv_pv, D.18573
	addq	$1, %rax	#, D.18573
	movzbl	(%rax), %eax	# *_45, D.18574
	movsbl	%al, %eax	# D.18574, D.18569
	andl	$4, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	jne	.L734	#,
.L733:
	.loc 1 2808 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.961
	movq	80(%rax), %rax	# PL_curcop.961_49->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	jne	.L731	#,
	.loc 1 2808 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.962
	movzbl	%al, %eax	# PL_dowarn.962, D.18569
	andl	$1, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	je	.L731	#,
.L734:
	.loc 1 2810 0 is_stmt 1
	movq	-32(%rbp), %rax	# gv, tmp345
	movq	(%rax), %rax	# gv_31->sv_any, D.18575
	movq	56(%rax), %rax	# _54->xgv_gp, D.18576
	movq	48(%rax), %rax	# _55->gp_egv, D.18577
	testq	%rax, %rax	# D.18577
	je	.L736	#,
	.loc 1 2810 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp346
	movq	(%rax), %rax	# gv_31->sv_any, D.18575
	movq	56(%rax), %rax	# _57->xgv_gp, D.18576
	movq	48(%rax), %rax	# _58->gp_egv, iftmp.963
	jmp	.L737	#
.L736:
	.loc 1 2810 0 discriminator 2
	movq	-32(%rbp), %rax	# gv, iftmp.963
.L737:
	.loc 1 2810 0 discriminator 3
	movq	(%rax), %rax	# iftmp.963_10->sv_any, D.18575
	.loc 1 2809 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _61->xgv_name, D.18573
	movq	%rax, %rdx	# D.18573,
	movl	$.LC71, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L731	#
.L732:
	.loc 1 2811 0
	movl	PL_laststype(%rip), %eax	# PL_laststype, PL_laststype.964
	cmpl	$234, %eax	#, PL_laststype.964
	je	.L731	#,
	.loc 1 2812 0
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L731:
	.loc 1 2816 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.965
	cmpq	%rax, -32(%rbp)	# PL_defgv.965, gv
	je	.L738	#,
	.loc 1 2817 0
	movl	$235, PL_laststype(%rip)	#, PL_laststype
	.loc 1 2818 0
	movq	-32(%rbp), %rax	# gv, tmp347
	movq	%rax, PL_statgv(%rip)	# tmp347, PL_statgv
	.loc 1 2819 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.966
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# PL_statname.966,
	call	Perl_sv_setpv	#
	.loc 1 2821 0
	cmpq	$0, -32(%rbp)	#, gv
	je	.L739	#,
	.loc 1 2820 0
	movq	-32(%rbp), %rax	# gv, tmp348
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_7].sv_flags, D.18578
	movzbl	%al, %eax	# D.18578, D.18578
	cmpl	$13, %eax	#, D.18578
	jne	.L739	#,
	.loc 1 2820 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp349
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _182->xgv_gp, D.18576
	testq	%rax, %rax	# D.18576
	je	.L739	#,
	movq	-32(%rbp), %rax	# gv, tmp350
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _184->xgv_gp, D.18576
	movq	16(%rax), %rax	# _185->gp_io, D.18579
	testq	%rax, %rax	# D.18579
	je	.L739	#,
	movq	-32(%rbp), %rax	# gv, tmp351
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _187->xgv_gp, D.18576
	movq	16(%rax), %rax	# _188->gp_io, D.18579
	movq	(%rax), %rax	# _189->sv_any, D.18580
	movq	56(%rax), %rax	# _190->xio_ifp, D.18581
	testq	%rax, %rax	# D.18581
	je	.L739	#,
	.loc 1 2821 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, gv
	je	.L740	#,
	.loc 1 2821 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp352
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_7].sv_flags, D.18578
	movzbl	%al, %eax	# D.18578, D.18578
	cmpl	$13, %eax	#, D.18578
	jne	.L740	#,
	movq	-32(%rbp), %rax	# gv, tmp353
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _194->xgv_gp, D.18576
	testq	%rax, %rax	# D.18576
	je	.L740	#,
	movq	-32(%rbp), %rax	# gv, tmp354
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _196->xgv_gp, D.18576
	movq	16(%rax), %rax	# _197->gp_io, D.18579
	testq	%rax, %rax	# D.18579
	je	.L740	#,
	movq	-32(%rbp), %rax	# gv, tmp355
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _199->xgv_gp, D.18576
	movq	16(%rax), %rax	# _200->gp_io, iftmp.968
	jmp	.L741	#
.L740:
	.loc 1 2821 0 discriminator 2
	movq	-32(%rbp), %rax	# gv, tmp356
	movq	%rax, %rdi	# tmp356,
	call	Perl_gv_IOadd	#
	movq	(%rax), %rax	# _202->sv_any, D.18575
	movq	56(%rax), %rax	# _203->xgv_gp, D.18576
	movq	16(%rax), %rax	# _204->gp_io, iftmp.968
.L741:
	.loc 1 2821 0 discriminator 3
	movq	(%rax), %rax	# iftmp.968_12->sv_any, D.18580
	movq	56(%rax), %rax	# _206->xio_ifp, D.18581
	movq	%rax, %rdi	# D.18581,
	call	Perl_PerlIO_fileno	#
	movl	$PL_statcache, %esi	#,
	movl	%eax, %edi	# D.18569,
	call	fstat	#
	jmp	.L742	#
.L739:
	.loc 1 2821 0 discriminator 1
	movl	$-1, %eax	#, iftmp.967
.L742:
	.loc 1 2820 0 is_stmt 1
	movl	%eax, PL_laststatval(%rip)	# iftmp.967, PL_laststatval
.L738:
	.loc 1 2823 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.969
	testl	%eax, %eax	# PL_laststatval.969
	jns	.L749	#,
	.loc 1 2824 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.970
	movq	80(%rax), %rax	# PL_curcop.970_212->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	je	.L744	#,
	.loc 1 2824 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.971
	movq	80(%rax), %rax	# PL_curcop.971_214->cop_warnings, D.18571
	cmpq	$32, %rax	#, D.18571
	je	.L744	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.972
	movq	80(%rax), %rax	# PL_curcop.972_216->cop_warnings, D.18571
	cmpq	$16, %rax	#, D.18571
	je	.L745	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.973
	movq	80(%rax), %rax	# PL_curcop.973_218->cop_warnings, D.18571
	movq	(%rax), %rax	# _219->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_220].xpv_pv, D.18573
	addq	$2, %rax	#, D.18573
	movzbl	(%rax), %eax	# *_222, D.18574
	movsbl	%al, %eax	# D.18574, D.18569
	andl	$64, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	jne	.L745	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.974
	movq	80(%rax), %rax	# PL_curcop.974_226->cop_warnings, D.18571
	movq	(%rax), %rax	# _227->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_228].xpv_pv, D.18573
	addq	$1, %rax	#, D.18573
	movzbl	(%rax), %eax	# *_230, D.18574
	movsbl	%al, %eax	# D.18574, D.18569
	andl	$16, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	jne	.L745	#,
.L744:
	.loc 1 2824 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.975
	movq	80(%rax), %rax	# PL_curcop.975_234->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	jne	.L746	#,
	.loc 1 2824 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.976
	movzbl	%al, %eax	# PL_dowarn.976, D.18569
	andl	$1, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	je	.L746	#,
.L745:
	.loc 1 2825 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.977
	movzwl	32(%rax), %eax	# PL_op.977_239->op_type, D.18570
	movzwl	%ax, %edx	# D.18570, D.18569
	cmpq	$0, -32(%rbp)	#, gv
	je	.L747	#,
	.loc 1 2825 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp357
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_7].sv_flags, D.18578
	movzbl	%al, %eax	# D.18578, D.18578
	cmpl	$13, %eax	#, D.18578
	jne	.L747	#,
	movq	-32(%rbp), %rax	# gv, tmp358
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _244->xgv_gp, D.18576
	testq	%rax, %rax	# D.18576
	je	.L747	#,
	movq	-32(%rbp), %rax	# gv, tmp359
	movq	(%rax), %rax	# gv_7->sv_any, D.18575
	movq	56(%rax), %rax	# _246->xgv_gp, D.18576
	movq	16(%rax), %rax	# _247->gp_io, iftmp.978
	jmp	.L748	#
.L747:
	.loc 1 2825 0 discriminator 2
	movl	$0, %eax	#, iftmp.978
.L748:
	.loc 1 2825 0 discriminator 3
	movq	-32(%rbp), %rcx	# gv, tmp360
	movq	%rax, %rsi	# iftmp.978,
	movq	%rcx, %rdi	# tmp360,
	call	Perl_report_evil_fh	#
.L746:
	.loc 1 2826 0 is_stmt 1
	movl	$0, -48(%rbp)	#, max
	jmp	.L749	#
.L730:
.LBB107:
	.loc 1 2830 0
	movq	%rbx, %rax	# sp, sp.979
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.979_64, tmp361
	movq	%rax, -24(%rbp)	# tmp361, sv
	.loc 1 2831 0
	movq	-24(%rbp), %rax	# sv, tmp362
	movl	12(%rax), %eax	# sv_66->sv_flags, D.18578
	movzbl	%al, %eax	# D.18578, D.18578
	cmpl	$13, %eax	#, D.18578
	jne	.L750	#,
	.loc 1 2832 0
	movq	-24(%rbp), %rax	# sv, tmp363
	movq	%rax, -32(%rbp)	# tmp363, gv
	.loc 1 2833 0
	jmp	.L731	#
.L750:
	.loc 1 2835 0
	movq	-24(%rbp), %rax	# sv, tmp364
	movl	12(%rax), %eax	# sv_66->sv_flags, D.18578
	andl	$524288, %eax	#, D.18578
	testl	%eax, %eax	# D.18578
	je	.L751	#,
	.loc 1 2835 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp365
	movq	(%rax), %rax	# sv_66->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XRV *)_72].xrv_rv, D.18571
	movl	12(%rax), %eax	# _73->sv_flags, D.18578
	movzbl	%al, %eax	# D.18578, D.18578
	cmpl	$13, %eax	#, D.18578
	jne	.L751	#,
	.loc 1 2836 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp366
	movq	(%rax), %rax	# sv_66->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XRV *)_76].xrv_rv, tmp367
	movq	%rax, -32(%rbp)	# tmp367, gv
	.loc 1 2837 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.980
	movzwl	32(%rax), %eax	# PL_op.980_78->op_type, D.18570
	cmpw	$234, %ax	#, D.18570
	jne	.L752	#,
	.loc 1 2837 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.981
	movq	80(%rax), %rax	# PL_curcop.981_80->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	je	.L753	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.982
	movq	80(%rax), %rax	# PL_curcop.982_82->cop_warnings, D.18571
	cmpq	$32, %rax	#, D.18571
	je	.L753	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.983
	movq	80(%rax), %rax	# PL_curcop.983_84->cop_warnings, D.18571
	cmpq	$16, %rax	#, D.18571
	je	.L754	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.984
	movq	80(%rax), %rax	# PL_curcop.984_86->cop_warnings, D.18571
	movq	(%rax), %rax	# _87->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_88].xpv_pv, D.18573
	addq	$1, %rax	#, D.18573
	movzbl	(%rax), %eax	# *_90, D.18574
	movsbl	%al, %eax	# D.18574, D.18569
	andl	$4, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	jne	.L754	#,
.L753:
	.loc 1 2837 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.985
	movq	80(%rax), %rax	# PL_curcop.985_94->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	jne	.L752	#,
	.loc 1 2837 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.986
	movzbl	%al, %eax	# PL_dowarn.986, D.18569
	andl	$1, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	je	.L752	#,
.L754:
	.loc 1 2839 0 is_stmt 1
	movq	-32(%rbp), %rax	# gv, tmp368
	movq	(%rax), %rax	# gv_77->sv_any, D.18575
	movq	56(%rax), %rax	# _99->xgv_gp, D.18576
	movq	48(%rax), %rax	# _100->gp_egv, D.18577
	testq	%rax, %rax	# D.18577
	je	.L755	#,
	.loc 1 2839 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp369
	movq	(%rax), %rax	# gv_77->sv_any, D.18575
	movq	56(%rax), %rax	# _102->xgv_gp, D.18576
	movq	48(%rax), %rax	# _103->gp_egv, iftmp.987
	jmp	.L756	#
.L755:
	.loc 1 2839 0 discriminator 2
	movq	-32(%rbp), %rax	# gv, iftmp.987
.L756:
	.loc 1 2839 0 discriminator 3
	movq	(%rax), %rax	# iftmp.987_14->sv_any, D.18575
	.loc 1 2838 0 is_stmt 1 discriminator 3
	movq	64(%rax), %rax	# _106->xgv_name, D.18573
	movq	%rax, %rdx	# D.18573,
	movl	$.LC71, %esi	#,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 2840 0 discriminator 3
	jmp	.L731	#
.L752:
	.loc 1 2840 0 is_stmt 0
	jmp	.L731	#
.L751:
	.loc 1 2842 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp370
	movl	12(%rax), %eax	# sv_66->sv_flags, D.18578
	andl	$262144, %eax	#, D.18578
	testl	%eax, %eax	# D.18578
	je	.L757	#,
	.loc 1 2842 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp371
	movq	(%rax), %rax	# sv_66->sv_any, D.18572
	movq	8(%rax), %rax	# MEM[(struct XPV *)_110].xpv_cur, n_a.989
	movq	%rax, -40(%rbp)	# n_a.989, n_a
	movq	-24(%rbp), %rax	# sv, tmp372
	movq	(%rax), %rax	# sv_66->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_112].xpv_pv, iftmp.988
	jmp	.L758	#
.L757:
	.loc 1 2842 0 discriminator 2
	leaq	-40(%rbp), %rcx	#, tmp373
	movq	-24(%rbp), %rax	# sv, tmp374
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp373,
	movq	%rax, %rdi	# tmp374,
	call	Perl_sv_2pv_flags	#
.L758:
	.loc 1 2842 0 discriminator 3
	movq	PL_statname(%rip), %rdx	# PL_statname, PL_statname.990
	movq	%rax, %rsi	# iftmp.988,
	movq	%rdx, %rdi	# PL_statname.990,
	call	Perl_sv_setpv	#
	.loc 1 2843 0 is_stmt 1 discriminator 3
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 2844 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.991
	movzwl	32(%rax), %eax	# PL_op.991_116->op_type, D.18570
	movzwl	%ax, %eax	# D.18570, PL_laststype.992
	movl	%eax, PL_laststype(%rip)	# PL_laststype.992, PL_laststype
	.loc 1 2845 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.993
	movzwl	32(%rax), %eax	# PL_op.993_119->op_type, D.18570
	cmpw	$234, %ax	#, D.18570
	jne	.L759	#,
	.loc 1 2846 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.995
	movl	12(%rax), %eax	# PL_statname.995_121->sv_flags, D.18578
	andl	$262144, %eax	#, D.18578
	testl	%eax, %eax	# D.18578
	je	.L760	#,
	.loc 1 2846 0 is_stmt 0 discriminator 1
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.996
	movq	(%rax), %rax	# PL_statname.996_124->sv_any, D.18572
	movq	8(%rax), %rax	# MEM[(struct XPV *)_125].xpv_cur, n_a.997
	movq	%rax, -40(%rbp)	# n_a.997, n_a
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.998
	movq	(%rax), %rax	# PL_statname.998_127->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_128].xpv_pv, iftmp.994
	jmp	.L761	#
.L760:
	.loc 1 2846 0 discriminator 2
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.999
	leaq	-40(%rbp), %rcx	#, tmp375
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp375,
	movq	%rax, %rdi	# PL_statname.999,
	call	Perl_sv_2pv_flags	#
.L761:
	.loc 1 2846 0 discriminator 1
	movl	$PL_statcache, %esi	#,
	movq	%rax, %rdi	# iftmp.994,
	call	stat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.1000, PL_laststatval
	jmp	.L762	#
.L759:
	.loc 1 2848 0 is_stmt 1
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1002
	movl	12(%rax), %eax	# PL_statname.1002_133->sv_flags, D.18578
	andl	$262144, %eax	#, D.18578
	testl	%eax, %eax	# D.18578
	je	.L763	#,
	.loc 1 2848 0 is_stmt 0 discriminator 1
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1003
	movq	(%rax), %rax	# PL_statname.1003_136->sv_any, D.18572
	movq	8(%rax), %rax	# MEM[(struct XPV *)_137].xpv_cur, n_a.1004
	movq	%rax, -40(%rbp)	# n_a.1004, n_a
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1005
	movq	(%rax), %rax	# PL_statname.1005_139->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_140].xpv_pv, iftmp.1001
	jmp	.L764	#
.L763:
	.loc 1 2848 0 discriminator 2
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1006
	leaq	-40(%rbp), %rcx	#, tmp376
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp376,
	movq	%rax, %rdi	# PL_statname.1006,
	call	Perl_sv_2pv_flags	#
.L764:
	.loc 1 2848 0 discriminator 3
	movl	$PL_statcache, %esi	#,
	movq	%rax, %rdi	# iftmp.1001,
	call	stat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.1007, PL_laststatval
.L762:
	.loc 1 2849 0 is_stmt 1
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.1008
	testl	%eax, %eax	# PL_laststatval.1008
	jns	.L749	#,
	.loc 1 2850 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1009
	movq	80(%rax), %rax	# PL_curcop.1009_146->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	je	.L765	#,
	.loc 1 2850 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1010
	movq	80(%rax), %rax	# PL_curcop.1010_148->cop_warnings, D.18571
	cmpq	$32, %rax	#, D.18571
	je	.L765	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1011
	movq	80(%rax), %rax	# PL_curcop.1011_150->cop_warnings, D.18571
	cmpq	$16, %rax	#, D.18571
	je	.L766	#,
	.loc 1 2850 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1012
	movq	80(%rax), %rax	# PL_curcop.1012_152->cop_warnings, D.18571
	movq	(%rax), %rax	# _153->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_154].xpv_pv, D.18573
	addq	$2, %rax	#, D.18573
	movzbl	(%rax), %eax	# *_156, D.18574
	movsbl	%al, %eax	# D.18574, D.18569
	andl	$4, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	jne	.L766	#,
.L765:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1013
	movq	80(%rax), %rax	# PL_curcop.1013_160->cop_warnings, D.18571
	testq	%rax, %rax	# D.18571
	jne	.L767	#,
	.loc 1 2850 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1014
	movzbl	%al, %eax	# PL_dowarn.1014, D.18569
	andl	$1, %eax	#, D.18569
	testl	%eax, %eax	# D.18569
	je	.L767	#,
.L766:
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1016
	movl	12(%rax), %eax	# PL_statname.1016_165->sv_flags, D.18578
	andl	$262144, %eax	#, D.18578
	testl	%eax, %eax	# D.18578
	je	.L768	#,
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1017
	movq	(%rax), %rax	# PL_statname.1017_168->sv_any, D.18572
	movq	8(%rax), %rax	# MEM[(struct XPV *)_169].xpv_cur, n_a.1018
	movq	%rax, -40(%rbp)	# n_a.1018, n_a
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1019
	movq	(%rax), %rax	# PL_statname.1019_171->sv_any, D.18572
	movq	(%rax), %rax	# MEM[(struct XPV *)_172].xpv_pv, iftmp.1015
	jmp	.L769	#
.L768:
	.loc 1 2850 0 discriminator 2
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1020
	leaq	-40(%rbp), %rcx	#, tmp377
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp377,
	movq	%rax, %rdi	# PL_statname.1020,
	call	Perl_sv_2pv_flags	#
.L769:
	.loc 1 2850 0 discriminator 3
	movl	$10, %esi	#,
	movq	%rax, %rdi	# iftmp.1015,
	call	strchr	#
	testq	%rax, %rax	# D.18573
	je	.L767	#,
	.loc 1 2851 0 is_stmt 1
	movl	$.LC73, %edx	#,
	movl	$PL_warn_nl, %esi	#,
	movl	$9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L767:
	.loc 1 2852 0
	movl	$0, -48(%rbp)	#, max
.L749:
.LBE107:
	.loc 1 2856 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1022
	movzbl	36(%rax), %eax	# PL_op.1022_251->op_flags, D.18568
	movzbl	%al, %eax	# D.18568, D.18569
	andl	$3, %eax	#, D.18569
	cmpl	$1, %eax	#, D.18569
	je	.L770	#,
	.loc 1 2856 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1024
	movzbl	36(%rax), %eax	# PL_op.1024_255->op_flags, D.18568
	movzbl	%al, %eax	# D.18568, D.18569
	andl	$3, %eax	#, D.18569
	cmpl	$2, %eax	#, D.18569
	je	.L771	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1026
	movzbl	36(%rax), %eax	# PL_op.1026_259->op_flags, D.18568
	movzbl	%al, %eax	# D.18568, D.18569
	andl	$3, %eax	#, D.18569
	cmpl	$3, %eax	#, D.18569
	je	.L772	#,
	call	Perl_block_gimme	#
	jmp	.L775	#
.L772:
	.loc 1 2856 0 discriminator 2
	movl	$1, %eax	#, iftmp.1025
	jmp	.L775	#
.L771:
	movl	$0, %eax	#, iftmp.1023
	jmp	.L775	#
.L770:
	movl	$128, %eax	#, iftmp.1021
.L775:
	.loc 1 2856 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.1021, gimme
	.loc 1 2857 0 is_stmt 1 discriminator 3
	cmpl	$1, -44(%rbp)	#, gimme
	je	.L776	#,
	.loc 1 2858 0
	cmpl	$128, -44(%rbp)	#, gimme
	je	.L777	#,
.LBB108:
	.loc 1 2859 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1027
	movq	%rax, %rdx	# PL_stack_max.1027, PL_stack_max.1028
	movq	%rbx, %rax	# sp, sp.1029
	subq	%rax, %rdx	# sp.1029, D.18582
	movq	%rdx, %rax	# D.18582, D.18582
	cmpq	$7, %rax	#, D.18582
	jg	.L778	#,
	.loc 1 2859 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L778:
	.loc 1 2859 0 discriminator 2
	addq	$8, %rbx	#, sp
	cmpl	$0, -48(%rbp)	#, max
	je	.L779	#,
	.loc 1 2859 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.1030
	jmp	.L780	#
.L779:
	.loc 1 2859 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.1030
.L780:
	.loc 1 2859 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.1030, *sp_275
.L777:
.LBE108:
	.loc 1 2860 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1031
	movq	(%rax), %rax	# PL_op.1031_279->op_next, D.18567
	jmp	.L785	#
.L776:
	.loc 1 2862 0
	cmpl	$0, -48(%rbp)	#, max
	je	.L782	#,
	.loc 1 2863 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1032
	movq	%rax, %rdx	# PL_stack_max.1032, PL_stack_max.1033
	movq	%rbx, %rax	# sp, sp.1034
	subq	%rax, %rdx	# sp.1034, D.18582
	movq	%rdx, %rax	# D.18582, D.18582
	sarq	$3, %rax	#, tmp378
	movq	%rax, %rdx	# tmp378, D.18582
	movl	-48(%rbp), %eax	# max, tmp379
	cltq
	cmpq	%rax, %rdx	# D.18582, D.18582
	jge	.L783	#,
	.loc 1 2863 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# max, tmp380
	movl	%eax, %edx	# tmp380,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L783:
	.loc 1 2864 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1035
	movl	-48(%rbp), %eax	# max, tmp381
	addl	%eax, %edx	# tmp381, D.18569
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1036
	cmpl	%eax, %edx	# PL_tmps_max.1036, D.18569
	jl	.L784	#,
	.loc 1 2864 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# max, tmp382
	movl	%eax, %edi	# tmp382,
	call	Perl_tmps_grow	#
.L784:
	.loc 1 2865 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	PL_statcache(%rip), %rax	# PL_statcache.st_dev, D.18583
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_291
	.loc 1 2866 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+8(%rip), %rax	# PL_statcache.st_ino, D.18583
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_296
	.loc 1 2867 0
	addq	$8, %rbx	#, sp
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18578
	movl	%eax, %eax	# D.18578, D.18583
	movq	%rax, %rdi	# D.18583,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_301
	.loc 1 2868 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+16(%rip), %rax	# PL_statcache.st_nlink, D.18583
	movq	%rax, %rdi	# D.18583,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_306
	.loc 1 2875 0
	addq	$8, %rbx	#, sp
	movl	PL_statcache+28(%rip), %eax	# PL_statcache.st_uid, D.18578
	movl	%eax, %eax	# D.18578, D.18583
	movq	%rax, %rdi	# D.18583,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_310
	.loc 1 2884 0
	addq	$8, %rbx	#, sp
	movl	PL_statcache+32(%rip), %eax	# PL_statcache.st_gid, D.18578
	movl	%eax, %eax	# D.18578, D.18583
	movq	%rax, %rdi	# D.18583,
	call	Perl_newSVuv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_315
	.loc 1 2890 0
	addq	$8, %rbx	#, sp
	movl	$0, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_320
	.loc 1 2895 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+48(%rip), %rax	# PL_statcache.st_size, D.18582
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_323
	.loc 1 2902 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+72(%rip), %rax	# PL_statcache.st_atim.tv_sec, D.18582
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_327
	.loc 1 2903 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+88(%rip), %rax	# PL_statcache.st_mtim.tv_sec, D.18582
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_331
	.loc 1 2904 0
	addq	$8, %rbx	#, sp
	movq	PL_statcache+104(%rip), %rax	# PL_statcache.st_ctim.tv_sec, D.18582
	movq	%rax, %rdi	# D.18582,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_335
	.loc 1 2910 0
	addq	$8, %rbx	#, sp
	movl	$0, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_339
	.loc 1 2911 0
	addq	$8, %rbx	#, sp
	movl	$0, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18571,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18571, *sp_342
.L782:
	.loc 1 2914 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1037
	movq	(%rax), %rax	# PL_op.1037_345->op_next, D.18567
.L785:
	.loc 1 2915 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_pp_stat, .-Perl_pp_stat
	.globl	Perl_pp_ftrread
	.type	Perl_pp_ftrread, @function
Perl_pp_ftrread:
.LFB54:
	.loc 1 2918 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2920 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2934 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 2936 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2937 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L787	#,
	.loc 1 2938 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1038
	movq	(%rax), %rax	# PL_op.1038_6->op_next, D.18587
	jmp	.L788	#
.L787:
	.loc 1 2939 0
	movl	$PL_statcache, %edx	#,
	movl	$0, %esi	#,
	movl	$256, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18588
	je	.L789	#,
	.loc 1 2940 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1039
	movq	(%rax), %rax	# PL_op.1039_10->op_next, D.18587
	jmp	.L788	#
.L789:
	.loc 1 2941 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1040
	movq	(%rax), %rax	# PL_op.1040_13->op_next, D.18587
.L788:
	.loc 1 2942 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_pp_ftrread, .-Perl_pp_ftrread
	.globl	Perl_pp_ftrwrite
	.type	Perl_pp_ftrwrite, @function
Perl_pp_ftrwrite:
.LFB55:
	.loc 1 2945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2947 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2961 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 2963 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2964 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L791	#,
	.loc 1 2965 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1041
	movq	(%rax), %rax	# PL_op.1041_6->op_next, D.18589
	jmp	.L792	#
.L791:
	.loc 1 2966 0
	movl	$PL_statcache, %edx	#,
	movl	$0, %esi	#,
	movl	$128, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18590
	je	.L793	#,
	.loc 1 2967 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1042
	movq	(%rax), %rax	# PL_op.1042_10->op_next, D.18589
	jmp	.L792	#
.L793:
	.loc 1 2968 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1043
	movq	(%rax), %rax	# PL_op.1043_13->op_next, D.18589
.L792:
	.loc 1 2969 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	Perl_pp_ftrwrite, .-Perl_pp_ftrwrite
	.globl	Perl_pp_ftrexec
	.type	Perl_pp_ftrexec, @function
Perl_pp_ftrexec:
.LFB56:
	.loc 1 2972 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2974 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2988 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 2990 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2991 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L795	#,
	.loc 1 2992 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1044
	movq	(%rax), %rax	# PL_op.1044_6->op_next, D.18591
	jmp	.L796	#
.L795:
	.loc 1 2993 0
	movl	$PL_statcache, %edx	#,
	movl	$0, %esi	#,
	movl	$64, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18592
	je	.L797	#,
	.loc 1 2994 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1045
	movq	(%rax), %rax	# PL_op.1045_10->op_next, D.18591
	jmp	.L796	#
.L797:
	.loc 1 2995 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1046
	movq	(%rax), %rax	# PL_op.1046_13->op_next, D.18591
.L796:
	.loc 1 2996 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	Perl_pp_ftrexec, .-Perl_pp_ftrexec
	.globl	Perl_pp_fteread
	.type	Perl_pp_fteread, @function
Perl_pp_fteread:
.LFB57:
	.loc 1 2999 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3001 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3015 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 3017 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3018 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L799	#,
	.loc 1 3019 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1047
	movq	(%rax), %rax	# PL_op.1047_6->op_next, D.18593
	jmp	.L800	#
.L799:
	.loc 1 3020 0
	movl	$PL_statcache, %edx	#,
	movl	$1, %esi	#,
	movl	$256, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18594
	je	.L801	#,
	.loc 1 3021 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1048
	movq	(%rax), %rax	# PL_op.1048_10->op_next, D.18593
	jmp	.L800	#
.L801:
	.loc 1 3022 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1049
	movq	(%rax), %rax	# PL_op.1049_13->op_next, D.18593
.L800:
	.loc 1 3023 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	Perl_pp_fteread, .-Perl_pp_fteread
	.globl	Perl_pp_ftewrite
	.type	Perl_pp_ftewrite, @function
Perl_pp_ftewrite:
.LFB58:
	.loc 1 3026 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3028 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3042 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 3044 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3045 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L803	#,
	.loc 1 3046 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1050
	movq	(%rax), %rax	# PL_op.1050_6->op_next, D.18595
	jmp	.L804	#
.L803:
	.loc 1 3047 0
	movl	$PL_statcache, %edx	#,
	movl	$1, %esi	#,
	movl	$128, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18596
	je	.L805	#,
	.loc 1 3048 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1051
	movq	(%rax), %rax	# PL_op.1051_10->op_next, D.18595
	jmp	.L804	#
.L805:
	.loc 1 3049 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1052
	movq	(%rax), %rax	# PL_op.1052_13->op_next, D.18595
.L804:
	.loc 1 3050 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	Perl_pp_ftewrite, .-Perl_pp_ftewrite
	.globl	Perl_pp_fteexec
	.type	Perl_pp_fteexec, @function
Perl_pp_fteexec:
.LFB59:
	.loc 1 3053 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3055 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3069 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 3071 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3072 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L807	#,
	.loc 1 3073 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1053
	movq	(%rax), %rax	# PL_op.1053_6->op_next, D.18597
	jmp	.L808	#
.L807:
	.loc 1 3074 0
	movl	$PL_statcache, %edx	#,
	movl	$1, %esi	#,
	movl	$64, %edi	#,
	call	Perl_cando	#
	testb	%al, %al	# D.18598
	je	.L809	#,
	.loc 1 3075 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1054
	movq	(%rax), %rax	# PL_op.1054_10->op_next, D.18597
	jmp	.L808	#
.L809:
	.loc 1 3076 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1055
	movq	(%rax), %rax	# PL_op.1055_13->op_next, D.18597
.L808:
	.loc 1 3077 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	Perl_pp_fteexec, .-Perl_pp_fteexec
	.globl	Perl_pp_ftis
	.type	Perl_pp_ftis, @function
Perl_pp_ftis:
.LFB60:
	.loc 1 3080 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3081 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp64, result
	.loc 1 3082 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3083 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L811	#,
	.loc 1 3084 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1056
	movq	(%rax), %rax	# PL_op.1056_5->op_next, D.18599
	jmp	.L812	#
.L811:
	.loc 1 3085 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_7
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1057
	movq	(%rax), %rax	# PL_op.1057_8->op_next, D.18599
.L812:
	.loc 1 3086 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	Perl_pp_ftis, .-Perl_pp_ftis
	.globl	Perl_pp_fteowned
	.type	Perl_pp_fteowned, @function
Perl_pp_fteowned:
.LFB61:
	.loc 1 3089 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3090 0
	call	Perl_pp_ftrowned	#
	.loc 1 3091 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	Perl_pp_fteowned, .-Perl_pp_fteowned
	.globl	Perl_pp_ftrowned
	.type	Perl_pp_ftrowned, @function
Perl_pp_ftrowned:
.LFB62:
	.loc 1 3094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3095 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp69, result
	.loc 1 3096 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3097 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L816	#,
	.loc 1 3098 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1058
	movq	(%rax), %rax	# PL_op.1058_6->op_next, D.18601
	jmp	.L817	#
.L816:
	.loc 1 3099 0
	movl	PL_statcache+28(%rip), %edx	# PL_statcache.st_uid, D.18602
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1060
	movzwl	32(%rax), %eax	# PL_op.1060_9->op_type, D.18603
	.loc 1 3100 0
	cmpw	$243, %ax	#, D.18603
	jne	.L818	#,
	.loc 1 3100 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %eax	# PL_euid, iftmp.1059
	jmp	.L819	#
.L818:
	.loc 1 3100 0 discriminator 2
	movl	PL_uid(%rip), %eax	# PL_uid, iftmp.1059
.L819:
	.loc 1 3099 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.1059, D.18602
	jne	.L820	#,
	.loc 1 3101 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_13
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1061
	movq	(%rax), %rax	# PL_op.1061_14->op_next, D.18601
	jmp	.L817	#
.L820:
	.loc 1 3102 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_16
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1062
	movq	(%rax), %rax	# PL_op.1062_17->op_next, D.18601
.L817:
	.loc 1 3103 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	Perl_pp_ftrowned, .-Perl_pp_ftrowned
	.globl	Perl_pp_ftzero
	.type	Perl_pp_ftzero, @function
Perl_pp_ftzero:
.LFB63:
	.loc 1 3106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3107 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp66, result
	.loc 1 3108 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3109 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L822	#,
	.loc 1 3110 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1063
	movq	(%rax), %rax	# PL_op.1063_5->op_next, D.18604
	jmp	.L823	#
.L822:
	.loc 1 3111 0
	movq	PL_statcache+48(%rip), %rax	# PL_statcache.st_size, D.18605
	testq	%rax, %rax	# D.18605
	jne	.L824	#,
	.loc 1 3112 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_8
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1064
	movq	(%rax), %rax	# PL_op.1064_9->op_next, D.18604
	jmp	.L823	#
.L824:
	.loc 1 3113 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_11
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1065
	movq	(%rax), %rax	# PL_op.1065_12->op_next, D.18604
.L823:
	.loc 1 3114 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	Perl_pp_ftzero, .-Perl_pp_ftzero
	.globl	Perl_pp_ftsize
	.type	Perl_pp_ftsize, @function
Perl_pp_ftsize:
.LFB64:
	.loc 1 3117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3118 0
	call	Perl_my_stat	#
	movl	%eax, -28(%rbp)	# tmp73, result
	.loc 1 3119 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1066
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1067
	movq	24(%rax), %rax	# PL_op.1067_5->op_targ, D.18607
	salq	$3, %rax	#, D.18607
	addq	%rdx, %rax	# PL_curpad.1066, D.18608
	movq	(%rax), %rax	# *_8, tmp74
	movq	%rax, -24(%rbp)	# tmp74, targ
	.loc 1 3120 0
	cmpl	$0, -28(%rbp)	#, result
	jns	.L826	#,
	.loc 1 3121 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1068
	movq	(%rax), %rax	# PL_op.1068_11->op_next, D.18606
	jmp	.L827	#
.L826:
.LBB109:
	.loc 1 3125 0
	movq	PL_statcache+48(%rip), %rdx	# PL_statcache.st_size, D.18609
	movq	-24(%rbp), %rax	# targ, tmp75
	movq	%rdx, %rsi	# D.18609,
	movq	%rax, %rdi	# tmp75,
	call	Perl_sv_setiv	#
.LBB110:
	movq	-24(%rbp), %rax	# targ, tmp76
	movl	12(%rax), %eax	# targ_9->sv_flags, D.18610
	andl	$16384, %eax	#, D.18610
	testl	%eax, %eax	# D.18610
	je	.L828	#,
	.loc 1 3125 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_mg_set	#
.L828:
	.loc 1 3125 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp78
	movq	%rax, (%rbx)	# tmp78, *sp_16
.LBE110:
.LBE109:
	.loc 1 3127 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1069
	movq	(%rax), %rax	# PL_op.1069_18->op_next, D.18606
.L827:
	.loc 1 3128 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	Perl_pp_ftsize, .-Perl_pp_ftsize
	.globl	Perl_pp_ftmtime
	.type	Perl_pp_ftmtime, @function
Perl_pp_ftmtime:
.LFB65:
	.loc 1 3131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3132 0
	call	Perl_my_stat	#
	movl	%eax, -28(%rbp)	# tmp78, result
	.loc 1 3133 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1070
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1071
	movq	24(%rax), %rax	# PL_op.1071_5->op_targ, D.18613
	salq	$3, %rax	#, D.18613
	addq	%rdx, %rax	# PL_curpad.1070, D.18614
	movq	(%rax), %rax	# *_8, tmp79
	movq	%rax, -24(%rbp)	# tmp79, targ
	.loc 1 3134 0
	cmpl	$0, -28(%rbp)	#, result
	jns	.L830	#,
	.loc 1 3135 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1072
	movq	(%rax), %rax	# PL_op.1072_11->op_next, D.18612
	jmp	.L831	#
.L830:
.LBB111:
	.loc 1 3136 0
	movq	PL_basetime(%rip), %rax	# PL_basetime, PL_basetime.1073
	cvtsi2sdq	%rax, %xmm0	# PL_basetime.1073, D.18615
	movq	PL_statcache+88(%rip), %rax	# PL_statcache.st_mtim.tv_sec, D.18616
	cvtsi2sdq	%rax, %xmm1	# D.18616, D.18615
	subsd	%xmm1, %xmm0	# D.18615, D.18615
	movsd	.LC74(%rip), %xmm1	#, tmp80
	divsd	%xmm1, %xmm0	# tmp80, D.18615
	movq	-24(%rbp), %rax	# targ, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_setnv	#
.LBB112:
	movq	-24(%rbp), %rax	# targ, tmp82
	movl	12(%rax), %eax	# targ_9->sv_flags, D.18617
	andl	$16384, %eax	#, D.18617
	testl	%eax, %eax	# D.18617
	je	.L832	#,
	.loc 1 3136 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp83
	movq	%rax, %rdi	# tmp83,
	call	Perl_mg_set	#
.L832:
	.loc 1 3136 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp84
	movq	%rax, (%rbx)	# tmp84, *sp_21
.LBE112:
.LBE111:
	.loc 1 3137 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1074
	movq	(%rax), %rax	# PL_op.1074_23->op_next, D.18612
.L831:
	.loc 1 3138 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	Perl_pp_ftmtime, .-Perl_pp_ftmtime
	.globl	Perl_pp_ftatime
	.type	Perl_pp_ftatime, @function
Perl_pp_ftatime:
.LFB66:
	.loc 1 3141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3142 0
	call	Perl_my_stat	#
	movl	%eax, -28(%rbp)	# tmp78, result
	.loc 1 3143 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1075
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1076
	movq	24(%rax), %rax	# PL_op.1076_5->op_targ, D.18620
	salq	$3, %rax	#, D.18620
	addq	%rdx, %rax	# PL_curpad.1075, D.18621
	movq	(%rax), %rax	# *_8, tmp79
	movq	%rax, -24(%rbp)	# tmp79, targ
	.loc 1 3144 0
	cmpl	$0, -28(%rbp)	#, result
	jns	.L834	#,
	.loc 1 3145 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1077
	movq	(%rax), %rax	# PL_op.1077_11->op_next, D.18619
	jmp	.L835	#
.L834:
.LBB113:
	.loc 1 3146 0
	movq	PL_basetime(%rip), %rax	# PL_basetime, PL_basetime.1078
	cvtsi2sdq	%rax, %xmm0	# PL_basetime.1078, D.18622
	movq	PL_statcache+72(%rip), %rax	# PL_statcache.st_atim.tv_sec, D.18623
	cvtsi2sdq	%rax, %xmm1	# D.18623, D.18622
	subsd	%xmm1, %xmm0	# D.18622, D.18622
	movsd	.LC74(%rip), %xmm1	#, tmp80
	divsd	%xmm1, %xmm0	# tmp80, D.18622
	movq	-24(%rbp), %rax	# targ, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_setnv	#
.LBB114:
	movq	-24(%rbp), %rax	# targ, tmp82
	movl	12(%rax), %eax	# targ_9->sv_flags, D.18624
	andl	$16384, %eax	#, D.18624
	testl	%eax, %eax	# D.18624
	je	.L836	#,
	.loc 1 3146 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp83
	movq	%rax, %rdi	# tmp83,
	call	Perl_mg_set	#
.L836:
	.loc 1 3146 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp84
	movq	%rax, (%rbx)	# tmp84, *sp_21
.LBE114:
.LBE113:
	.loc 1 3147 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1079
	movq	(%rax), %rax	# PL_op.1079_23->op_next, D.18619
.L835:
	.loc 1 3148 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	Perl_pp_ftatime, .-Perl_pp_ftatime
	.globl	Perl_pp_ftctime
	.type	Perl_pp_ftctime, @function
Perl_pp_ftctime:
.LFB67:
	.loc 1 3151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3152 0
	call	Perl_my_stat	#
	movl	%eax, -28(%rbp)	# tmp78, result
	.loc 1 3153 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1080
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1081
	movq	24(%rax), %rax	# PL_op.1081_5->op_targ, D.18627
	salq	$3, %rax	#, D.18627
	addq	%rdx, %rax	# PL_curpad.1080, D.18628
	movq	(%rax), %rax	# *_8, tmp79
	movq	%rax, -24(%rbp)	# tmp79, targ
	.loc 1 3154 0
	cmpl	$0, -28(%rbp)	#, result
	jns	.L838	#,
	.loc 1 3155 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1082
	movq	(%rax), %rax	# PL_op.1082_11->op_next, D.18626
	jmp	.L839	#
.L838:
.LBB115:
	.loc 1 3156 0
	movq	PL_basetime(%rip), %rax	# PL_basetime, PL_basetime.1083
	cvtsi2sdq	%rax, %xmm0	# PL_basetime.1083, D.18629
	movq	PL_statcache+104(%rip), %rax	# PL_statcache.st_ctim.tv_sec, D.18630
	cvtsi2sdq	%rax, %xmm1	# D.18630, D.18629
	subsd	%xmm1, %xmm0	# D.18629, D.18629
	movsd	.LC74(%rip), %xmm1	#, tmp80
	divsd	%xmm1, %xmm0	# tmp80, D.18629
	movq	-24(%rbp), %rax	# targ, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_setnv	#
.LBB116:
	movq	-24(%rbp), %rax	# targ, tmp82
	movl	12(%rax), %eax	# targ_9->sv_flags, D.18631
	andl	$16384, %eax	#, D.18631
	testl	%eax, %eax	# D.18631
	je	.L840	#,
	.loc 1 3156 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp83
	movq	%rax, %rdi	# tmp83,
	call	Perl_mg_set	#
.L840:
	.loc 1 3156 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp84
	movq	%rax, (%rbx)	# tmp84, *sp_21
.LBE116:
.LBE115:
	.loc 1 3157 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1084
	movq	(%rax), %rax	# PL_op.1084_23->op_next, D.18626
.L839:
	.loc 1 3158 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	Perl_pp_ftctime, .-Perl_pp_ftctime
	.globl	Perl_pp_ftsock
	.type	Perl_pp_ftsock, @function
Perl_pp_ftsock:
.LFB68:
	.loc 1 3161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3162 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3163 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3164 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L842	#,
	.loc 1 3165 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1085
	movq	(%rax), %rax	# PL_op.1085_5->op_next, D.18633
	jmp	.L843	#
.L842:
	.loc 1 3166 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18634
	andl	$61440, %eax	#, D.18634
	cmpl	$49152, %eax	#, D.18634
	jne	.L844	#,
	.loc 1 3167 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1086
	movq	(%rax), %rax	# PL_op.1086_10->op_next, D.18633
	jmp	.L843	#
.L844:
	.loc 1 3168 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1087
	movq	(%rax), %rax	# PL_op.1087_13->op_next, D.18633
.L843:
	.loc 1 3169 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	Perl_pp_ftsock, .-Perl_pp_ftsock
	.globl	Perl_pp_ftchr
	.type	Perl_pp_ftchr, @function
Perl_pp_ftchr:
.LFB69:
	.loc 1 3172 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3173 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3174 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3175 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L846	#,
	.loc 1 3176 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1088
	movq	(%rax), %rax	# PL_op.1088_5->op_next, D.18635
	jmp	.L847	#
.L846:
	.loc 1 3177 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18636
	andl	$61440, %eax	#, D.18636
	cmpl	$8192, %eax	#, D.18636
	jne	.L848	#,
	.loc 1 3178 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1089
	movq	(%rax), %rax	# PL_op.1089_10->op_next, D.18635
	jmp	.L847	#
.L848:
	.loc 1 3179 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1090
	movq	(%rax), %rax	# PL_op.1090_13->op_next, D.18635
.L847:
	.loc 1 3180 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	Perl_pp_ftchr, .-Perl_pp_ftchr
	.globl	Perl_pp_ftblk
	.type	Perl_pp_ftblk, @function
Perl_pp_ftblk:
.LFB70:
	.loc 1 3183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3184 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3185 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3186 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L850	#,
	.loc 1 3187 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1091
	movq	(%rax), %rax	# PL_op.1091_5->op_next, D.18637
	jmp	.L851	#
.L850:
	.loc 1 3188 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18638
	andl	$61440, %eax	#, D.18638
	cmpl	$24576, %eax	#, D.18638
	jne	.L852	#,
	.loc 1 3189 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1092
	movq	(%rax), %rax	# PL_op.1092_10->op_next, D.18637
	jmp	.L851	#
.L852:
	.loc 1 3190 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1093
	movq	(%rax), %rax	# PL_op.1093_13->op_next, D.18637
.L851:
	.loc 1 3191 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	Perl_pp_ftblk, .-Perl_pp_ftblk
	.globl	Perl_pp_ftfile
	.type	Perl_pp_ftfile, @function
Perl_pp_ftfile:
.LFB71:
	.loc 1 3194 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3195 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3196 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3197 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L854	#,
	.loc 1 3198 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1094
	movq	(%rax), %rax	# PL_op.1094_5->op_next, D.18639
	jmp	.L855	#
.L854:
	.loc 1 3199 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18640
	andl	$61440, %eax	#, D.18640
	cmpl	$32768, %eax	#, D.18640
	jne	.L856	#,
	.loc 1 3200 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1095
	movq	(%rax), %rax	# PL_op.1095_10->op_next, D.18639
	jmp	.L855	#
.L856:
	.loc 1 3201 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1096
	movq	(%rax), %rax	# PL_op.1096_13->op_next, D.18639
.L855:
	.loc 1 3202 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	Perl_pp_ftfile, .-Perl_pp_ftfile
	.globl	Perl_pp_ftdir
	.type	Perl_pp_ftdir, @function
Perl_pp_ftdir:
.LFB72:
	.loc 1 3205 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3206 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3207 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3208 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L858	#,
	.loc 1 3209 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1097
	movq	(%rax), %rax	# PL_op.1097_5->op_next, D.18641
	jmp	.L859	#
.L858:
	.loc 1 3210 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18642
	andl	$61440, %eax	#, D.18642
	cmpl	$16384, %eax	#, D.18642
	jne	.L860	#,
	.loc 1 3211 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1098
	movq	(%rax), %rax	# PL_op.1098_10->op_next, D.18641
	jmp	.L859	#
.L860:
	.loc 1 3212 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1099
	movq	(%rax), %rax	# PL_op.1099_13->op_next, D.18641
.L859:
	.loc 1 3213 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	Perl_pp_ftdir, .-Perl_pp_ftdir
	.globl	Perl_pp_ftpipe
	.type	Perl_pp_ftpipe, @function
Perl_pp_ftpipe:
.LFB73:
	.loc 1 3216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3217 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3218 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3219 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L862	#,
	.loc 1 3220 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1100
	movq	(%rax), %rax	# PL_op.1100_5->op_next, D.18643
	jmp	.L863	#
.L862:
	.loc 1 3221 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18644
	andl	$61440, %eax	#, D.18644
	cmpl	$4096, %eax	#, D.18644
	jne	.L864	#,
	.loc 1 3222 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1101
	movq	(%rax), %rax	# PL_op.1101_10->op_next, D.18643
	jmp	.L863	#
.L864:
	.loc 1 3223 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1102
	movq	(%rax), %rax	# PL_op.1102_13->op_next, D.18643
.L863:
	.loc 1 3224 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	Perl_pp_ftpipe, .-Perl_pp_ftpipe
	.globl	Perl_pp_ftlink
	.type	Perl_pp_ftlink, @function
Perl_pp_ftlink:
.LFB74:
	.loc 1 3227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3228 0
	call	Perl_my_lstat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3229 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3230 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L866	#,
	.loc 1 3231 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1103
	movq	(%rax), %rax	# PL_op.1103_5->op_next, D.18645
	jmp	.L867	#
.L866:
	.loc 1 3232 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18646
	andl	$61440, %eax	#, D.18646
	cmpl	$40960, %eax	#, D.18646
	jne	.L868	#,
	.loc 1 3233 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_9
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1104
	movq	(%rax), %rax	# PL_op.1104_10->op_next, D.18645
	jmp	.L867	#
.L868:
	.loc 1 3234 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1105
	movq	(%rax), %rax	# PL_op.1105_13->op_next, D.18645
.L867:
	.loc 1 3235 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	Perl_pp_ftlink, .-Perl_pp_ftlink
	.globl	Perl_pp_ftsuid
	.type	Perl_pp_ftsuid, @function
Perl_pp_ftsuid:
.LFB75:
	.loc 1 3238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3239 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3241 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3242 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3243 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L870	#,
	.loc 1 3244 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1106
	movq	(%rax), %rax	# PL_op.1106_6->op_next, D.18647
	jmp	.L871	#
.L870:
	.loc 1 3245 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18648
	andl	$2048, %eax	#, D.18648
	testl	%eax, %eax	# D.18648
	je	.L872	#,
	.loc 1 3246 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1107
	movq	(%rax), %rax	# PL_op.1107_11->op_next, D.18647
	jmp	.L871	#
.L872:
	.loc 1 3248 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_13
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1108
	movq	(%rax), %rax	# PL_op.1108_14->op_next, D.18647
.L871:
	.loc 1 3249 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	Perl_pp_ftsuid, .-Perl_pp_ftsuid
	.globl	Perl_pp_ftsgid
	.type	Perl_pp_ftsgid, @function
Perl_pp_ftsgid:
.LFB76:
	.loc 1 3252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3253 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3255 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3256 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3257 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L874	#,
	.loc 1 3258 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1109
	movq	(%rax), %rax	# PL_op.1109_6->op_next, D.18649
	jmp	.L875	#
.L874:
	.loc 1 3259 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18650
	andl	$1024, %eax	#, D.18650
	testl	%eax, %eax	# D.18650
	je	.L876	#,
	.loc 1 3260 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1110
	movq	(%rax), %rax	# PL_op.1110_11->op_next, D.18649
	jmp	.L875	#
.L876:
	.loc 1 3262 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_13
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1111
	movq	(%rax), %rax	# PL_op.1111_14->op_next, D.18649
.L875:
	.loc 1 3263 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	Perl_pp_ftsgid, .-Perl_pp_ftsgid
	.globl	Perl_pp_ftsvtx
	.type	Perl_pp_ftsvtx, @function
Perl_pp_ftsvtx:
.LFB77:
	.loc 1 3266 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3267 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3269 0
	call	Perl_my_stat	#
	movl	%eax, -20(%rbp)	# tmp67, result
	.loc 1 3270 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3271 0
	cmpl	$0, -20(%rbp)	#, result
	jns	.L878	#,
	.loc 1 3272 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_5
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1112
	movq	(%rax), %rax	# PL_op.1112_6->op_next, D.18651
	jmp	.L879	#
.L878:
	.loc 1 3273 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18652
	andl	$512, %eax	#, D.18652
	testl	%eax, %eax	# D.18652
	je	.L880	#,
	.loc 1 3274 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_10
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1113
	movq	(%rax), %rax	# PL_op.1113_11->op_next, D.18651
	jmp	.L879	#
.L880:
	.loc 1 3276 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_13
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1114
	movq	(%rax), %rax	# PL_op.1114_14->op_next, D.18651
.L879:
	.loc 1 3277 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	Perl_pp_ftsvtx, .-Perl_pp_ftsvtx
	.globl	Perl_pp_fttty
	.type	Perl_pp_fttty, @function
Perl_pp_fttty:
.LFB78:
	.loc 1 3280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3281 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3284 0
	movq	$0, -24(%rbp)	#, tmps
	.loc 1 3287 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1115
	movzbl	36(%rax), %eax	# PL_op.1115_9->op_flags, D.18654
	movzbl	%al, %eax	# D.18654, D.18655
	andl	$16, %eax	#, D.18655
	testl	%eax, %eax	# D.18655
	je	.L882	#,
	.loc 1 3288 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1116
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.1116_13].op_sv, tmp117
	movq	%rax, -32(%rbp)	# tmp117, gv
	jmp	.L883	#
.L882:
	.loc 1 3289 0
	movq	(%rbx), %rax	# *sp_7, D.18656
	movl	12(%rax), %eax	# _15->sv_flags, D.18657
	movzbl	%al, %eax	# D.18657, D.18657
	cmpl	$13, %eax	#, D.18657
	jne	.L884	#,
	.loc 1 3290 0
	movq	%rbx, %rax	# sp, sp.1117
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1117_18, tmp118
	movq	%rax, -32(%rbp)	# tmp118, gv
	jmp	.L883	#
.L884:
	.loc 1 3291 0
	movq	(%rbx), %rax	# *sp_7, D.18656
	movl	12(%rax), %eax	# _21->sv_flags, D.18657
	andl	$524288, %eax	#, D.18657
	testl	%eax, %eax	# D.18657
	je	.L885	#,
	.loc 1 3291 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_7, D.18656
	movq	(%rax), %rax	# _24->sv_any, D.18658
	movq	(%rax), %rax	# MEM[(struct XRV *)_25].xrv_rv, D.18656
	movl	12(%rax), %eax	# _26->sv_flags, D.18657
	movzbl	%al, %eax	# D.18657, D.18657
	cmpl	$13, %eax	#, D.18657
	jne	.L885	#,
	.loc 1 3292 0 is_stmt 1
	movq	%rbx, %rax	# sp, sp.1118
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1118_29, D.18656
	movq	(%rax), %rax	# _31->sv_any, D.18658
	movq	(%rax), %rax	# MEM[(struct XRV *)_32].xrv_rv, tmp119
	movq	%rax, -32(%rbp)	# tmp119, gv
	jmp	.L883	#
.L885:
	.loc 1 3294 0
	movq	%rbx, %rax	# sp, sp.1119
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1119_34, PL_Sv.1120
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1120, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1122
	movl	12(%rax), %eax	# PL_Sv.1122_37->sv_flags, D.18657
	andl	$262144, %eax	#, D.18657
	testl	%eax, %eax	# D.18657
	je	.L886	#,
	.loc 1 3294 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1123
	movq	(%rax), %rax	# PL_Sv.1123_40->sv_any, D.18658
	movq	8(%rax), %rax	# MEM[(struct XPV *)_41].xpv_cur, n_a.1124
	movq	%rax, -40(%rbp)	# n_a.1124, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1125
	movq	(%rax), %rax	# PL_Sv.1125_43->sv_any, D.18658
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, iftmp.1121
	jmp	.L887	#
.L886:
	.loc 1 3294 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1126
	leaq	-40(%rbp), %rcx	#, tmp120
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# PL_Sv.1126,
	call	Perl_sv_2pv_flags	#
.L887:
	.loc 1 3294 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.1121, tmps
	movq	-24(%rbp), %rax	# tmps, tmp121
	movl	$15, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	Perl_gv_fetchpv	#
	movq	%rax, -32(%rbp)	# tmp122, gv
.L883:
	.loc 1 3296 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, gv
	je	.L888	#,
	.loc 1 3296 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# gv, tmp123
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_3].sv_flags, D.18657
	movzbl	%al, %eax	# D.18657, D.18657
	cmpl	$13, %eax	#, D.18657
	jne	.L888	#,
	movq	-32(%rbp), %rax	# gv, tmp124
	movq	(%rax), %rax	# gv_3->sv_any, D.18659
	movq	56(%rax), %rax	# _52->xgv_gp, D.18660
	testq	%rax, %rax	# D.18660
	je	.L888	#,
	movq	-32(%rbp), %rax	# gv, tmp125
	movq	(%rax), %rax	# gv_3->sv_any, D.18659
	movq	56(%rax), %rax	# _54->xgv_gp, D.18660
	movq	16(%rax), %rax	# _55->gp_io, D.18661
	testq	%rax, %rax	# D.18661
	je	.L888	#,
	movq	-32(%rbp), %rax	# gv, tmp126
	movq	(%rax), %rax	# gv_3->sv_any, D.18659
	movq	56(%rax), %rax	# _57->xgv_gp, D.18660
	movq	16(%rax), %rax	# _58->gp_io, D.18661
	movq	(%rax), %rax	# _59->sv_any, D.18662
	movq	56(%rax), %rax	# _60->xio_ifp, D.18663
	testq	%rax, %rax	# D.18663
	je	.L888	#,
	.loc 1 3297 0 is_stmt 1
	movq	-32(%rbp), %rax	# gv, tmp127
	movq	(%rax), %rax	# gv_3->sv_any, D.18659
	movq	56(%rax), %rax	# _62->xgv_gp, D.18660
	movq	16(%rax), %rax	# _63->gp_io, D.18661
	movq	(%rax), %rax	# _64->sv_any, D.18662
	movq	56(%rax), %rax	# _65->xio_ifp, D.18663
	movq	%rax, %rdi	# D.18663,
	call	Perl_PerlIO_fileno	#
	movl	%eax, -44(%rbp)	# tmp128, fd
	jmp	.L889	#
.L888:
	.loc 1 3298 0
	cmpq	$0, -24(%rbp)	#, tmps
	je	.L890	#,
	.loc 1 3298 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmps, tmp129
	movzbl	(%rax), %eax	# *tmps_4, D.18664
	cmpb	$47, %al	#, D.18664
	jle	.L890	#,
	movq	-24(%rbp), %rax	# tmps, tmp130
	movzbl	(%rax), %eax	# *tmps_4, D.18664
	cmpb	$57, %al	#, D.18664
	jg	.L890	#,
	.loc 1 3299 0 is_stmt 1
	movq	-24(%rbp), %rax	# tmps, tmp131
	movq	%rax, %rdi	# tmp131,
	call	atoi	#
	movl	%eax, -44(%rbp)	# tmp132, fd
	jmp	.L889	#
.L890:
	.loc 1 3301 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_71
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1127
	movq	(%rax), %rax	# PL_op.1127_72->op_next, D.18653
	jmp	.L893	#
.L889:
	.loc 1 3302 0
	movl	-44(%rbp), %eax	# fd, tmp133
	movl	%eax, %edi	# tmp133,
	call	isatty	#
	testl	%eax, %eax	# D.18655
	je	.L892	#,
	.loc 1 3303 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_75
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1128
	movq	(%rax), %rax	# PL_op.1128_76->op_next, D.18653
	jmp	.L893	#
.L892:
	.loc 1 3304 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_78
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1129
	movq	(%rax), %rax	# PL_op.1129_79->op_next, D.18653
.L893:
	.loc 1 3305 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	Perl_pp_fttty, .-Perl_pp_fttty
	.section	.rodata
	.align 8
.LC75:
	.string	"-T and -B not implemented on filehandles"
.LC76:
	.string	"open"
	.text
	.globl	Perl_pp_fttext
	.type	Perl_pp_fttext, @function
Perl_pp_fttext:
.LFB79:
	.loc 1 3316 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$576, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 3316 0
	movq	%fs:40, %rax	#, tmp307
	movq	%rax, -24(%rbp)	# tmp307, D.18684
	xorl	%eax, %eax	# tmp307
	.loc 1 3317 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3320 0
	movl	$0, -580(%rbp)	#, odd
	.loc 1 3329 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1130
	movzbl	36(%rax), %eax	# PL_op.1130_27->op_flags, D.18666
	movzbl	%al, %eax	# D.18666, D.18667
	andl	$16, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	je	.L895	#,
	.loc 1 3330 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1131
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.1131_31].op_sv, tmp272
	movq	%rax, -560(%rbp)	# tmp272, gv
	jmp	.L896	#
.L895:
	.loc 1 3331 0
	movq	(%rbx), %rax	# *sp_25, D.18668
	movl	12(%rax), %eax	# _33->sv_flags, D.18669
	movzbl	%al, %eax	# D.18669, D.18669
	cmpl	$13, %eax	#, D.18669
	jne	.L897	#,
	.loc 1 3332 0
	movq	%rbx, %rax	# sp, sp.1132
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1132_36, tmp273
	movq	%rax, -560(%rbp)	# tmp273, gv
	jmp	.L896	#
.L897:
	.loc 1 3333 0
	movq	(%rbx), %rax	# *sp_25, D.18668
	movl	12(%rax), %eax	# _39->sv_flags, D.18669
	andl	$524288, %eax	#, D.18669
	testl	%eax, %eax	# D.18669
	je	.L898	#,
	.loc 1 3333 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_25, D.18668
	movq	(%rax), %rax	# _42->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XRV *)_43].xrv_rv, D.18668
	movl	12(%rax), %eax	# _44->sv_flags, D.18669
	movzbl	%al, %eax	# D.18669, D.18669
	cmpl	$13, %eax	#, D.18669
	jne	.L898	#,
	.loc 1 3334 0 is_stmt 1
	movq	%rbx, %rax	# sp, sp.1133
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1133_47, D.18668
	movq	(%rax), %rax	# _49->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XRV *)_50].xrv_rv, tmp274
	movq	%rax, -560(%rbp)	# tmp274, gv
	jmp	.L896	#
.L898:
	.loc 1 3336 0
	movq	$0, -560(%rbp)	#, gv
.L896:
	.loc 1 3338 0
	cmpq	$0, -560(%rbp)	#, gv
	je	.L899	#,
	.loc 1 3339 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1134
	movq	%rax, %rdx	# PL_stack_max.1134, PL_stack_max.1135
	movq	%rbx, %rax	# sp, sp.1136
	subq	%rax, %rdx	# sp.1136, D.18671
	movq	%rdx, %rax	# D.18671, D.18671
	cmpq	$7, %rax	#, D.18671
	jg	.L900	#,
	.loc 1 3339 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L900:
	.loc 1 3340 0 is_stmt 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1137
	cmpq	%rax, -560(%rbp)	# PL_defgv.1137, gv
	jne	.L901	#,
	.loc 1 3341 0
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1138
	testq	%rax, %rax	# PL_statgv.1138
	je	.L902	#,
	.loc 1 3342 0
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1140
	testq	%rax, %rax	# PL_statgv.1140
	je	.L903	#,
	.loc 1 3342 0 is_stmt 0 discriminator 1
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1141
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_statgv.1141_61].sv_flags, D.18669
	movzbl	%al, %eax	# D.18669, D.18669
	cmpl	$13, %eax	#, D.18669
	jne	.L903	#,
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1142
	movq	(%rax), %rax	# PL_statgv.1142_64->sv_any, D.18672
	movq	56(%rax), %rax	# _65->xgv_gp, D.18673
	testq	%rax, %rax	# D.18673
	je	.L903	#,
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1143
	movq	(%rax), %rax	# PL_statgv.1143_67->sv_any, D.18672
	movq	56(%rax), %rax	# _68->xgv_gp, D.18673
	movq	16(%rax), %rax	# _69->gp_io, iftmp.1139
	jmp	.L904	#
.L903:
	.loc 1 3342 0 discriminator 2
	movl	$0, %eax	#, iftmp.1139
.L904:
	.loc 1 3342 0 discriminator 3
	movq	%rax, %r12	# iftmp.1139, io
	jmp	.L905	#
.L902:
	.loc 1 3344 0 is_stmt 1
	movq	PL_statname(%rip), %r12	# PL_statname, sv
	.loc 1 3345 0
	jmp	.L906	#
.L901:
	.loc 1 3349 0
	movq	-560(%rbp), %rax	# gv, tmp275
	movq	%rax, PL_statgv(%rip)	# tmp275, PL_statgv
	.loc 1 3350 0
	movl	$-1, PL_laststatval(%rip)	#, PL_laststatval
	.loc 1 3351 0
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1144
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# PL_statname.1144,
	call	Perl_sv_setpv	#
	.loc 1 3352 0
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1146
	testq	%rax, %rax	# PL_statgv.1146
	je	.L907	#,
	.loc 1 3352 0 is_stmt 0 discriminator 1
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1147
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_statgv.1147_76].sv_flags, D.18669
	movzbl	%al, %eax	# D.18669, D.18669
	cmpl	$13, %eax	#, D.18669
	jne	.L907	#,
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1148
	movq	(%rax), %rax	# PL_statgv.1148_79->sv_any, D.18672
	movq	56(%rax), %rax	# _80->xgv_gp, D.18673
	testq	%rax, %rax	# D.18673
	je	.L907	#,
	movq	PL_statgv(%rip), %rax	# PL_statgv, PL_statgv.1149
	movq	(%rax), %rax	# PL_statgv.1149_82->sv_any, D.18672
	movq	56(%rax), %rax	# _83->xgv_gp, D.18673
	movq	16(%rax), %rax	# _84->gp_io, iftmp.1145
	jmp	.L908	#
.L907:
	.loc 1 3352 0 discriminator 2
	movl	$0, %eax	#, iftmp.1145
.L908:
	.loc 1 3352 0 discriminator 3
	movq	%rax, %r12	# iftmp.1145, io
.L905:
	.loc 1 3354 0 is_stmt 1
	testq	%r12, %r12	# io
	je	.L909	#,
	.loc 1 3354 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _88->xio_ifp, D.18675
	testq	%rax, %rax	# D.18675
	je	.L909	#,
	.loc 1 3355 0 is_stmt 1
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _90->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	PerlIO_has_base	#
	testl	%eax, %eax	# D.18667
	jne	.L910	#,
	.loc 1 3356 0
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L946	#
.L910:
	.loc 1 3357 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _94->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	Perl_PerlIO_fileno	#
	movl	$PL_statcache, %esi	#,
	movl	%eax, %edi	# D.18667,
	call	fstat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.1150, PL_laststatval
	.loc 1 3358 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.1151
	testl	%eax, %eax	# PL_laststatval.1151
	jns	.L912	#,
	.loc 1 3359 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_99
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1152
	movq	(%rax), %rax	# PL_op.1152_100->op_next, D.18665
	jmp	.L946	#
.L912:
	.loc 1 3360 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18669
	andl	$61440, %eax	#, D.18669
	cmpl	$16384, %eax	#, D.18669
	jne	.L913	#,
	.loc 1 3361 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1153
	movzwl	32(%rax), %eax	# PL_op.1153_104->op_type, D.18676
	cmpw	$261, %ax	#, D.18676
	jne	.L914	#,
	.loc 1 3362 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_106
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1154
	movq	(%rax), %rax	# PL_op.1154_107->op_next, D.18665
	jmp	.L946	#
.L914:
	.loc 1 3364 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_109
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1155
	movq	(%rax), %rax	# PL_op.1155_110->op_next, D.18665
	jmp	.L946	#
.L913:
	.loc 1 3366 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _112->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	Perl_PerlIO_get_cnt	#
	testl	%eax, %eax	# D.18667
	jg	.L915	#,
	.loc 1 3367 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _115->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	PerlIO_getc	#
	movl	%eax, -588(%rbp)	# tmp276, i
	.loc 1 3368 0
	cmpl	$-1, -588(%rbp)	#, i
	je	.L915	#,
	.loc 1 3369 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _118->xio_ifp, D.18675
	movl	-588(%rbp), %edx	# i, tmp277
	movl	%edx, %esi	# tmp277,
	movq	%rax, %rdi	# D.18675,
	call	PerlIO_ungetc	#
.L915:
	.loc 1 3371 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _120->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	Perl_PerlIO_get_cnt	#
	testl	%eax, %eax	# D.18667
	jg	.L916	#,
	.loc 1 3372 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_123
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1156
	movq	(%rax), %rax	# PL_op.1156_124->op_next, D.18665
	jmp	.L946	#
.L916:
	.loc 1 3373 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _126->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	Perl_PerlIO_get_bufsiz	#
	movl	%eax, -584(%rbp)	# tmp278, len
	.loc 1 3374 0
	movq	(%r12), %rax	# io_15->sv_any, D.18674
	movq	56(%rax), %rax	# _129->xio_ifp, D.18675
	movq	%rax, %rdi	# D.18675,
	call	Perl_PerlIO_get_base	#
	movq	%rax, %r12	#, s
	.loc 1 3376 0
	cmpl	$512, -584(%rbp)	#, len
	jle	.L917	#,
	.loc 1 3377 0
	movl	$512, -584(%rbp)	#, len
	.loc 1 3376 0
	jmp	.L918	#
.L917:
	.loc 1 3376 0 is_stmt 0 discriminator 1
	jmp	.L918	#
.L909:
	.loc 1 3380 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1157
	movq	80(%rax), %rax	# PL_curcop.1157_133->cop_warnings, D.18668
	testq	%rax, %rax	# D.18668
	je	.L919	#,
	.loc 1 3380 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1158
	movq	80(%rax), %rax	# PL_curcop.1158_135->cop_warnings, D.18668
	cmpq	$32, %rax	#, D.18668
	je	.L919	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1159
	movq	80(%rax), %rax	# PL_curcop.1159_137->cop_warnings, D.18668
	cmpq	$16, %rax	#, D.18668
	je	.L920	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1160
	movq	80(%rax), %rax	# PL_curcop.1160_139->cop_warnings, D.18668
	movq	(%rax), %rax	# _140->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_141].xpv_pv, D.18677
	addq	$2, %rax	#, D.18677
	movzbl	(%rax), %eax	# *_143, D.18678
	movsbl	%al, %eax	# D.18678, D.18667
	andl	$64, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	jne	.L920	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1161
	movq	80(%rax), %rax	# PL_curcop.1161_147->cop_warnings, D.18668
	movq	(%rax), %rax	# _148->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_149].xpv_pv, D.18677
	addq	$1, %rax	#, D.18677
	movzbl	(%rax), %eax	# *_151, D.18678
	movsbl	%al, %eax	# D.18678, D.18667
	andl	$16, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	jne	.L920	#,
.L919:
	.loc 1 3380 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1162
	movq	80(%rax), %rax	# PL_curcop.1162_155->cop_warnings, D.18668
	testq	%rax, %rax	# D.18668
	jne	.L921	#,
	.loc 1 3380 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1163
	movzbl	%al, %eax	# PL_dowarn.1163, D.18667
	andl	$1, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	je	.L921	#,
.L920:
	.loc 1 3381 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1164
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.1164_160].op_sv, tmp279
	movq	%rax, -560(%rbp)	# tmp279, gv
	.loc 1 3382 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1165
	movzwl	32(%rax), %eax	# PL_op.1165_162->op_type, D.18676
	movzwl	%ax, %edx	# D.18676, D.18667
	cmpq	$0, -560(%rbp)	#, gv
	je	.L922	#,
	.loc 1 3382 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# gv, tmp280
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_161].sv_flags, D.18669
	movzbl	%al, %eax	# D.18669, D.18669
	cmpl	$13, %eax	#, D.18669
	jne	.L922	#,
	movq	-560(%rbp), %rax	# gv, tmp281
	movq	(%rax), %rax	# gv_161->sv_any, D.18672
	movq	56(%rax), %rax	# _167->xgv_gp, D.18673
	testq	%rax, %rax	# D.18673
	je	.L922	#,
	movq	-560(%rbp), %rax	# gv, tmp282
	movq	(%rax), %rax	# gv_161->sv_any, D.18672
	movq	56(%rax), %rax	# _169->xgv_gp, D.18673
	movq	16(%rax), %rax	# _170->gp_io, iftmp.1166
	jmp	.L923	#
.L922:
	.loc 1 3382 0 discriminator 2
	movl	$0, %eax	#, iftmp.1166
.L923:
	.loc 1 3382 0 discriminator 3
	movq	-560(%rbp), %rcx	# gv, tmp283
	movq	%rax, %rsi	# iftmp.1166,
	movq	%rcx, %rdi	# tmp283,
	call	Perl_report_evil_fh	#
.L921:
	.loc 1 3384 0 is_stmt 1
	call	__errno_location	#
	movl	$9, (%rax)	#, *_173
	.loc 1 3385 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_174
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1167
	movq	(%rax), %rax	# PL_op.1167_175->op_next, D.18665
	jmp	.L946	#
.L918:
	jmp	.L924	#
.L899:
	.loc 1 3389 0
	movq	%rbx, %rax	# sp, sp.1168
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %r12	# *sp.1168_177, sv
.L906:
	.loc 1 3391 0
	movq	$0, PL_statgv(%rip)	#, PL_statgv
	.loc 1 3392 0
	movl	$235, PL_laststype(%rip)	#, PL_laststype
	.loc 1 3393 0
	movl	12(%r12), %eax	# sv_16->sv_flags, D.18669
	andl	$262144, %eax	#, D.18669
	testl	%eax, %eax	# D.18669
	je	.L925	#,
	.loc 1 3393 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# sv_16->sv_any, D.18670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_182].xpv_cur, n_a.1170
	movq	%rax, -568(%rbp)	# n_a.1170, n_a
	movq	(%r12), %rax	# sv_16->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_184].xpv_pv, iftmp.1169
	jmp	.L926	#
.L925:
	.loc 1 3393 0 discriminator 2
	leaq	-568(%rbp), %rax	#, tmp284
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp284,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L926:
	.loc 1 3393 0 discriminator 3
	movq	PL_statname(%rip), %rdx	# PL_statname, PL_statname.1171
	movq	%rax, %rsi	# iftmp.1169,
	movq	%rdx, %rdi	# PL_statname.1171,
	call	Perl_sv_setpv	#
	.loc 1 3394 0 is_stmt 1 discriminator 3
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1172
	movq	(%rax), %rax	# PL_statname.1172_188->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_189].xpv_pv, D.18677
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.18677,
	call	PerlIO_open	#
	movq	%rax, -552(%rbp)	# tmp285, fp
	cmpq	$0, -552(%rbp)	#, fp
	jne	.L927	#,
	.loc 1 3395 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1173
	movq	80(%rax), %rax	# PL_curcop.1173_192->cop_warnings, D.18668
	testq	%rax, %rax	# D.18668
	je	.L928	#,
	.loc 1 3395 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1174
	movq	80(%rax), %rax	# PL_curcop.1174_194->cop_warnings, D.18668
	cmpq	$32, %rax	#, D.18668
	je	.L928	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1175
	movq	80(%rax), %rax	# PL_curcop.1175_196->cop_warnings, D.18668
	cmpq	$16, %rax	#, D.18668
	je	.L929	#,
	.loc 1 3395 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1176
	movq	80(%rax), %rax	# PL_curcop.1176_198->cop_warnings, D.18668
	movq	(%rax), %rax	# _199->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_200].xpv_pv, D.18677
	addq	$2, %rax	#, D.18677
	movzbl	(%rax), %eax	# *_202, D.18678
	movsbl	%al, %eax	# D.18678, D.18667
	andl	$4, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	jne	.L929	#,
.L928:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1177
	movq	80(%rax), %rax	# PL_curcop.1177_206->cop_warnings, D.18668
	testq	%rax, %rax	# D.18668
	jne	.L930	#,
	.loc 1 3395 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1178
	movzbl	%al, %eax	# PL_dowarn.1178, D.18667
	andl	$1, %eax	#, D.18667
	testl	%eax, %eax	# D.18667
	je	.L930	#,
.L929:
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1180
	movl	12(%rax), %eax	# PL_statname.1180_211->sv_flags, D.18669
	andl	$262144, %eax	#, D.18669
	testl	%eax, %eax	# D.18669
	je	.L931	#,
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1181
	movq	(%rax), %rax	# PL_statname.1181_214->sv_any, D.18670
	movq	8(%rax), %rax	# MEM[(struct XPV *)_215].xpv_cur, n_a.1182
	movq	%rax, -568(%rbp)	# n_a.1182, n_a
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1183
	movq	(%rax), %rax	# PL_statname.1183_217->sv_any, D.18670
	movq	(%rax), %rax	# MEM[(struct XPV *)_218].xpv_pv, iftmp.1179
	jmp	.L932	#
.L931:
	.loc 1 3395 0 discriminator 2
	movq	PL_statname(%rip), %rax	# PL_statname, PL_statname.1184
	leaq	-568(%rbp), %rcx	#, tmp286
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp286,
	movq	%rax, %rdi	# PL_statname.1184,
	call	Perl_sv_2pv_flags	#
.L932:
	.loc 1 3395 0 discriminator 3
	movl	$10, %esi	#,
	movq	%rax, %rdi	# iftmp.1179,
	call	strchr	#
	testq	%rax, %rax	# D.18677
	je	.L930	#,
	.loc 1 3396 0 is_stmt 1
	movl	$.LC76, %edx	#,
	movl	$PL_warn_nl, %esi	#,
	movl	$9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L930:
	.loc 1 3397 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_223
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1185
	movq	(%rax), %rax	# PL_op.1185_224->op_next, D.18665
	jmp	.L946	#
.L927:
	.loc 1 3399 0
	movq	-552(%rbp), %rax	# fp, tmp287
	movq	%rax, %rdi	# tmp287,
	call	Perl_PerlIO_fileno	#
	movl	$PL_statcache, %esi	#,
	movl	%eax, %edi	# D.18667,
	call	fstat	#
	movl	%eax, PL_laststatval(%rip)	# PL_laststatval.1186, PL_laststatval
	.loc 1 3400 0
	movl	PL_laststatval(%rip), %eax	# PL_laststatval, PL_laststatval.1187
	testl	%eax, %eax	# PL_laststatval.1187
	jns	.L933	#,
	.loc 1 3401 0
	movq	-552(%rbp), %rax	# fp, tmp288
	movq	%rax, %rdi	# tmp288,
	call	Perl_PerlIO_close	#
	.loc 1 3402 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_229
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1188
	movq	(%rax), %rax	# PL_op.1188_230->op_next, D.18665
	jmp	.L946	#
.L933:
	.loc 1 3404 0
	movq	-552(%rbp), %rax	# fp, tmp289
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$60, %esi	#,
	movq	%rax, %rdi	# tmp289,
	call	PerlIO_binmode	#
	.loc 1 3405 0
	leaq	-544(%rbp), %rcx	#, tmp290
	movq	-552(%rbp), %rax	# fp, tmp291
	movl	$512, %edx	#,
	movq	%rcx, %rsi	# tmp290,
	movq	%rax, %rdi	# tmp291,
	call	Perl_PerlIO_read	#
	movl	%eax, -584(%rbp)	# D.18671, len
	.loc 1 3406 0
	movq	-552(%rbp), %rax	# fp, tmp292
	movq	%rax, %rdi	# tmp292,
	call	Perl_PerlIO_close	#
	.loc 1 3407 0
	cmpl	$0, -584(%rbp)	#, len
	jg	.L934	#,
	.loc 1 3408 0
	movl	PL_statcache+24(%rip), %eax	# PL_statcache.st_mode, D.18669
	andl	$61440, %eax	#, D.18669
	cmpl	$16384, %eax	#, D.18669
	jne	.L935	#,
	.loc 1 3408 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1189
	movzwl	32(%rax), %eax	# PL_op.1189_236->op_type, D.18676
	cmpw	$261, %ax	#, D.18676
	jne	.L935	#,
	.loc 1 3409 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_238
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1190
	movq	(%rax), %rax	# PL_op.1190_239->op_next, D.18665
	jmp	.L946	#
.L935:
	.loc 1 3410 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_241
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1191
	movq	(%rax), %rax	# PL_op.1191_242->op_next, D.18665
	jmp	.L946	#
.L934:
	.loc 1 3412 0
	leaq	-544(%rbp), %r12	#, s
.L924:
	.loc 1 3424 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L936	#
.L944:
	.loc 1 3425 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	testb	%al, %al	# D.18680
	jne	.L937	#,
	.loc 1 3426 0
	movl	-584(%rbp), %eax	# len, tmp293
	addl	%eax, -580(%rbp)	# tmp293, odd
	.loc 1 3427 0
	jmp	.L938	#
.L937:
	.loc 1 3433 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	testb	%al, %al	# D.18680
	jns	.L939	#,
	.loc 1 3439 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$-65, %al	#, D.18666
	jbe	.L940	#,
	.loc 1 3439 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$-3, %al	#, D.18666
	ja	.L940	#,
.LBB117:
	.loc 1 3440 0 is_stmt 1
	movzbl	(%r12), %eax	# MEM[(U8 *)s_14], D.18666
	movzbl	%al, %eax	# D.18666, D.18667
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.18666
	movzbl	%al, %eax	# D.18666, tmp295
	movl	%eax, -572(%rbp)	# tmp295, ulen
	.loc 1 3441 0
	movl	-588(%rbp), %eax	# i, tmp296
	movl	-584(%rbp), %edx	# len, tmp297
	subl	%eax, %edx	# tmp296, D.18667
	movl	%edx, %eax	# D.18667, D.18667
	cmpl	-572(%rbp), %eax	# ulen, D.18667
	jle	.L940	#,
.LBB118:
	.loc 1 3443 0
	movl	$1, -576(%rbp)	#, j
	jmp	.L941	#
.L942:
	.loc 1 3444 0
	movl	-576(%rbp), %eax	# j, tmp298
	cltq
	addq	%r12, %rax	# s, D.18682
	movzbl	(%rax), %eax	# *_260, D.18680
	testb	%al, %al	# D.18680
	jns	.L940	#,
	.loc 1 3444 0 is_stmt 0 discriminator 1
	movl	-576(%rbp), %eax	# j, tmp299
	cltq
	addq	%r12, %rax	# s, D.18682
	movzbl	(%rax), %eax	# *_263, D.18680
	cmpb	$-65, %al	#, D.18666
	ja	.L940	#,
	.loc 1 3443 0 is_stmt 1
	addl	$1, -576(%rbp)	#, j
.L941:
	.loc 1 3443 0 is_stmt 0 discriminator 1
	movl	-576(%rbp), %eax	# j, tmp300
	cmpl	-572(%rbp), %eax	# ulen, tmp300
	jl	.L942	#,
	.loc 1 3447 0 is_stmt 1
	subl	$1, -572(%rbp)	#, ulen
	.loc 1 3448 0
	movl	-572(%rbp), %eax	# ulen, tmp301
	cltq
	addq	%rax, %r12	# D.18681, s
	.loc 1 3449 0
	movl	-572(%rbp), %eax	# ulen, tmp302
	addl	%eax, -588(%rbp)	# tmp302, i
	.loc 1 3450 0
	jmp	.L943	#
.L940:
.LBE118:
.LBE117:
	.loc 1 3454 0
	addl	$1, -580(%rbp)	#, odd
	jmp	.L943	#
.L939:
	.loc 1 3456 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$31, %al	#, D.18680
	jg	.L943	#,
	.loc 1 3457 0 discriminator 1
	movzbl	(%r12), %eax	# *s_14, D.18680
	.loc 1 3456 0 discriminator 1
	cmpb	$10, %al	#, D.18680
	je	.L943	#,
	.loc 1 3457 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$13, %al	#, D.18680
	je	.L943	#,
	.loc 1 3457 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$8, %al	#, D.18680
	je	.L943	#,
	.loc 1 3458 0 is_stmt 1 discriminator 1
	movzbl	(%r12), %eax	# *s_14, D.18680
	.loc 1 3457 0 discriminator 1
	cmpb	$9, %al	#, D.18680
	je	.L943	#,
	.loc 1 3458 0
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$12, %al	#, D.18680
	je	.L943	#,
	.loc 1 3458 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *s_14, D.18680
	cmpb	$27, %al	#, D.18680
	je	.L943	#,
	.loc 1 3459 0 is_stmt 1
	addl	$1, -580(%rbp)	#, odd
.L943:
	.loc 1 3424 0
	addl	$1, -588(%rbp)	#, i
	addq	$1, %r12	#, s
.L936:
	.loc 1 3424 0 is_stmt 0 discriminator 1
	movl	-588(%rbp), %eax	# i, tmp303
	cmpl	-584(%rbp), %eax	# len, tmp303
	jl	.L944	#,
.L938:
	.loc 1 3463 0 is_stmt 1
	movl	-580(%rbp), %edx	# odd, tmp304
	movl	%edx, %eax	# tmp304, tmp305
	addl	%eax, %eax	# tmp305
	addl	%edx, %eax	# tmp304, D.18667
	cmpl	-584(%rbp), %eax	# len, D.18667
	setle	%dl	#, D.18683
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1192
	movzwl	32(%rax), %eax	# PL_op.1192_284->op_type, D.18676
	cmpw	$261, %ax	#, D.18676
	sete	%al	#, D.18683
	xorl	%edx, %eax	# D.18683, D.18683
	testb	%al, %al	# D.18683
	je	.L945	#,
	.loc 1 3464 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_288
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1193
	movq	(%rax), %rax	# PL_op.1193_289->op_next, D.18665
	jmp	.L946	#
.L945:
	.loc 1 3466 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_291
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1194
	movq	(%rax), %rax	# PL_op.1194_292->op_next, D.18665
.L946:
	.loc 1 3467 0
	movq	-24(%rbp), %rcx	# D.18684, tmp308
	xorq	%fs:40, %rcx	#, tmp308
	je	.L947	#,
	call	__stack_chk_fail	#
.L947:
	addq	$576, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	Perl_pp_fttext, .-Perl_pp_fttext
	.globl	Perl_pp_ftbinary
	.type	Perl_pp_ftbinary, @function
Perl_pp_ftbinary:
.LFB80:
	.loc 1 3470 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3471 0
	call	Perl_pp_fttext	#
	.loc 1 3472 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	Perl_pp_ftbinary, .-Perl_pp_ftbinary
	.section	.rodata
.LC77:
	.string	"HOME"
.LC78:
	.string	"LOGDIR"
	.align 8
.LC79:
	.string	"chdir('') or chdir(undef) as chdir()"
.LC80:
	.string	"chdir"
	.text
	.globl	Perl_pp_chdir
	.type	Perl_pp_chdir, @function
Perl_pp_chdir:
.LFB81:
	.loc 1 3477 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3478 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1195
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1196
	movq	24(%rax), %rax	# PL_op.1196_12->op_targ, D.18689
	salq	$3, %rax	#, D.18689
	addq	%rdx, %rax	# PL_curpad.1195, D.18690
	movq	(%rax), %rax	# *_15, tmp135
	movq	%rax, -24(%rbp)	# tmp135, targ
	.loc 1 3483 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1197
	movzbl	37(%rax), %eax	# PL_op.1197_17->op_private, D.18691
	movzbl	%al, %eax	# D.18691, D.18692
	andl	$15, %eax	#, D.18692
	cmpl	$1, %eax	#, D.18692
	jne	.L951	#,
	.loc 1 3484 0
	movq	%rbx, %rax	# sp, sp.1198
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1198_21, PL_Sv.1199
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1199, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1201
	movl	12(%rax), %eax	# PL_Sv.1201_24->sv_flags, D.18693
	andl	$262144, %eax	#, D.18693
	testl	%eax, %eax	# D.18693
	je	.L952	#,
	.loc 1 3484 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1202
	movq	(%rax), %rax	# PL_Sv.1202_27->sv_any, D.18694
	movq	8(%rax), %rax	# MEM[(struct XPV *)_28].xpv_cur, n_a.1203
	movq	%rax, -48(%rbp)	# n_a.1203, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1204
	movq	(%rax), %rax	# PL_Sv.1204_30->sv_any, D.18694
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, iftmp.1200
	jmp	.L953	#
.L952:
	.loc 1 3484 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1205
	leaq	-48(%rbp), %rcx	#, tmp136
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# PL_Sv.1205,
	call	Perl_sv_2pv_flags	#
.L953:
	.loc 1 3484 0 discriminator 1
	movq	%rax, -40(%rbp)	# iftmp.1200, tmps
	jmp	.L954	#
.L951:
	.loc 1 3486 0 is_stmt 1
	movq	$0, -40(%rbp)	#, tmps
.L954:
	.loc 1 3488 0
	cmpq	$0, -40(%rbp)	#, tmps
	je	.L955	#,
	.loc 1 3488 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tmps, tmp137
	movzbl	(%rax), %eax	# *tmps_2, D.18695
	testb	%al, %al	# D.18695
	jne	.L956	#,
.L955:
	.loc 1 3489 0 is_stmt 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1207
	movq	(%rax), %rax	# PL_envgv.1207_38->sv_any, D.18696
	movq	56(%rax), %rax	# _39->xgv_gp, D.18697
	movq	40(%rax), %rax	# _40->gp_hv, D.18698
	testq	%rax, %rax	# D.18698
	je	.L957	#,
	.loc 1 3489 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1208
	movq	(%rax), %rax	# PL_envgv.1208_42->sv_any, D.18696
	movq	56(%rax), %rax	# _43->xgv_gp, D.18697
	movq	40(%rax), %rax	# _44->gp_hv, iftmp.1206
	jmp	.L958	#
.L957:
	.loc 1 3489 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1209
	movq	%rax, %rdi	# PL_envgv.1209,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _47->sv_any, D.18696
	movq	56(%rax), %rax	# _48->xgv_gp, D.18697
	movq	40(%rax), %rax	# _49->gp_hv, iftmp.1206
.L958:
	.loc 1 3489 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# iftmp.1206,
	call	Perl_hv_fetch	#
	movq	%rax, -32(%rbp)	# tmp138, svp
	cmpq	$0, -32(%rbp)	#, svp
	jne	.L959	#,
	.loc 1 3490 0 is_stmt 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1211
	movq	(%rax), %rax	# PL_envgv.1211_52->sv_any, D.18696
	movq	56(%rax), %rax	# _53->xgv_gp, D.18697
	movq	40(%rax), %rax	# _54->gp_hv, D.18698
	testq	%rax, %rax	# D.18698
	je	.L960	#,
	.loc 1 3490 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1212
	movq	(%rax), %rax	# PL_envgv.1212_56->sv_any, D.18696
	movq	56(%rax), %rax	# _57->xgv_gp, D.18697
	movq	40(%rax), %rax	# _58->gp_hv, iftmp.1210
	jmp	.L961	#
.L960:
	.loc 1 3490 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.1213
	movq	%rax, %rdi	# PL_envgv.1213,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _61->sv_any, D.18696
	movq	56(%rax), %rax	# _62->xgv_gp, D.18697
	movq	40(%rax), %rax	# _63->gp_hv, iftmp.1210
.L961:
	.loc 1 3490 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# iftmp.1210,
	call	Perl_hv_fetch	#
	movq	%rax, -32(%rbp)	# tmp139, svp
	cmpq	$0, -32(%rbp)	#, svp
	je	.L962	#,
.L959:
	.loc 1 3496 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1214
	movzbl	37(%rax), %eax	# PL_op.1214_73->op_private, D.18691
	movzbl	%al, %eax	# D.18691, D.18692
	andl	$15, %eax	#, D.18692
	cmpl	$1, %eax	#, D.18692
	jne	.L963	#,
	.loc 1 3497 0
	movl	$.LC79, %edi	#,
	call	Perl_deprecate	#
.L963:
	.loc 1 3498 0
	movq	-32(%rbp), %rax	# svp, tmp140
	movq	(%rax), %rax	# *svp_4, D.18700
	movl	12(%rax), %eax	# _77->sv_flags, D.18693
	andl	$262144, %eax	#, D.18693
	testl	%eax, %eax	# D.18693
	je	.L964	#,
	.loc 1 3498 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# svp, tmp141
	movq	(%rax), %rax	# *svp_4, D.18700
	movq	(%rax), %rax	# _80->sv_any, D.18694
	movq	8(%rax), %rax	# MEM[(struct XPV *)_81].xpv_cur, n_a.1216
	movq	%rax, -48(%rbp)	# n_a.1216, n_a
	movq	-32(%rbp), %rax	# svp, tmp142
	movq	(%rax), %rax	# *svp_4, D.18700
	movq	(%rax), %rax	# _83->sv_any, D.18694
	movq	(%rax), %rax	# MEM[(struct XPV *)_84].xpv_pv, iftmp.1215
	jmp	.L965	#
.L964:
	.loc 1 3498 0 discriminator 2
	movq	-32(%rbp), %rax	# svp, tmp143
	movq	(%rax), %rax	# *svp_4, D.18700
	leaq	-48(%rbp), %rcx	#, tmp144
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# D.18700,
	call	Perl_sv_2pv_flags	#
.L965:
	.loc 1 3498 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.1215, tmps
	jmp	.L956	#
.L962:
.LBB119:
	.loc 1 3501 0 is_stmt 1
	movq	-24(%rbp), %rax	# targ, tmp145
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	Perl_sv_setiv	#
.LBB120:
	movq	-24(%rbp), %rax	# targ, tmp146
	movl	12(%rax), %eax	# targ_16->sv_flags, D.18693
	andl	$16384, %eax	#, D.18693
	testl	%eax, %eax	# D.18693
	je	.L966	#,
	.loc 1 3501 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp147
	movq	%rax, %rdi	# tmp147,
	call	Perl_mg_set	#
.L966:
	.loc 1 3501 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp148
	movq	%rax, (%rbx)	# tmp148, *sp_68
.LBE120:
.LBE119:
	.loc 1 3502 0 is_stmt 1 discriminator 2
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1217
	testb	%al, %al	# PL_tainting.1217
	je	.L967	#,
	.loc 1 3502 0 is_stmt 0 discriminator 1
	movl	$.LC80, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L967:
	.loc 1 3503 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1218
	movq	(%rax), %rax	# PL_op.1218_71->op_next, D.18688
	jmp	.L971	#
.L956:
	.loc 1 3507 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1219
	testb	%al, %al	# PL_tainting.1219
	je	.L969	#,
	.loc 1 3507 0 is_stmt 0 discriminator 1
	movl	$.LC80, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L969:
.LBB121:
	.loc 1 3508 0 is_stmt 1
	movq	-40(%rbp), %rax	# tmps, tmp149
	movq	%rax, %rdi	# tmp149,
	call	chdir	#
	notl	%eax	# tmp150
	shrl	$31, %eax	#, tmp151
	movzbl	%al, %edx	# D.18701, D.18702
	movq	-24(%rbp), %rax	# targ, tmp152
	movq	%rdx, %rsi	# D.18702,
	movq	%rax, %rdi	# tmp152,
	call	Perl_sv_setiv	#
.LBB122:
	movq	-24(%rbp), %rax	# targ, tmp153
	movl	12(%rax), %eax	# targ_16->sv_flags, D.18693
	andl	$16384, %eax	#, D.18693
	testl	%eax, %eax	# D.18693
	je	.L970	#,
	.loc 1 3508 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_mg_set	#
.L970:
	.loc 1 3508 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp155
	movq	%rax, (%rbx)	# tmp155, *sp_95
.LBE122:
.LBE121:
	.loc 1 3514 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1220
	movq	(%rax), %rax	# PL_op.1220_97->op_next, D.18688
.L971:
	.loc 1 3515 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	Perl_pp_chdir, .-Perl_pp_chdir
	.section	.rodata
.LC81:
	.string	"chown"
	.text
	.globl	Perl_pp_chown
	.type	Perl_pp_chown, @function
Perl_pp_chown:
.LFB82:
	.loc 1 3518 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3527 0
	movl	$.LC81, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3529 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	Perl_pp_chown, .-Perl_pp_chown
	.section	.rodata
.LC82:
	.string	"chroot"
	.text
	.globl	Perl_pp_chroot
	.type	Perl_pp_chroot, @function
Perl_pp_chroot:
.LFB83:
	.loc 1 3532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3541 0
	movl	$.LC82, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3543 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	Perl_pp_chroot, .-Perl_pp_chroot
	.globl	Perl_pp_unlink
	.type	Perl_pp_unlink, @function
Perl_pp_unlink:
.LFB84:
	.loc 1 3546 0
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
	.loc 1 3547 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1221
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1222
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1224
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1224, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1223_4, D.18711
	cltq
	salq	$3, %rax	#, D.18712
	leaq	(%rcx,%rax), %r12	#, mark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1225
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1226
	movq	24(%rax), %rax	# PL_op.1226_11->op_targ, D.18712
	salq	$3, %rax	#, D.18712
	addq	%rdx, %rax	# PL_curpad.1225, D.18713
	movq	(%rax), %rax	# *_14, tmp83
	movq	%rax, -24(%rbp)	# tmp83, targ
	.loc 1 3549 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1227
	movzwl	32(%rax), %eax	# PL_op.1227_16->op_type, D.18714
	movzwl	%ax, %eax	# D.18714, D.18711
	movq	%rbx, %rdx	# sp,
	movq	%r12, %rsi	# mark,
	movl	%eax, %edi	# D.18711,
	call	Perl_apply	#
	movl	%eax, -28(%rbp)	# tmp84, value
	.loc 1 3550 0
	movq	%r12, %rbx	# mark, sp
.LBB123:
	.loc 1 3551 0
	movl	-28(%rbp), %eax	# value, tmp85
	movslq	%eax, %rdx	# tmp85, D.18715
	movq	-24(%rbp), %rax	# targ, tmp86
	movq	%rdx, %rsi	# D.18715,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_setiv	#
.LBB124:
	movq	-24(%rbp), %rax	# targ, tmp87
	movl	12(%rax), %eax	# targ_15->sv_flags, D.18716
	andl	$16384, %eax	#, D.18716
	testl	%eax, %eax	# D.18716
	je	.L977	#,
	.loc 1 3551 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp88
	movq	%rax, %rdi	# tmp88,
	call	Perl_mg_set	#
.L977:
	.loc 1 3551 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp89
	movq	%rax, (%rbx)	# tmp89, *sp_24
.LBE124:
.LBE123:
	.loc 1 3552 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1228
	movq	(%rax), %rax	# PL_op.1228_26->op_next, D.18718
	.loc 1 3553 0 discriminator 2
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	Perl_pp_unlink, .-Perl_pp_unlink
	.globl	Perl_pp_chmod
	.type	Perl_pp_chmod, @function
Perl_pp_chmod:
.LFB85:
	.loc 1 3556 0
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
	.loc 1 3557 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1229
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1230
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1232
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1232, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1231_4, D.18719
	cltq
	salq	$3, %rax	#, D.18720
	leaq	(%rcx,%rax), %r12	#, mark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1233
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1234
	movq	24(%rax), %rax	# PL_op.1234_11->op_targ, D.18720
	salq	$3, %rax	#, D.18720
	addq	%rdx, %rax	# PL_curpad.1233, D.18721
	movq	(%rax), %rax	# *_14, tmp83
	movq	%rax, -24(%rbp)	# tmp83, targ
	.loc 1 3559 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1235
	movzwl	32(%rax), %eax	# PL_op.1235_16->op_type, D.18722
	movzwl	%ax, %eax	# D.18722, D.18719
	movq	%rbx, %rdx	# sp,
	movq	%r12, %rsi	# mark,
	movl	%eax, %edi	# D.18719,
	call	Perl_apply	#
	movl	%eax, -28(%rbp)	# tmp84, value
	.loc 1 3560 0
	movq	%r12, %rbx	# mark, sp
.LBB125:
	.loc 1 3561 0
	movl	-28(%rbp), %eax	# value, tmp85
	movslq	%eax, %rdx	# tmp85, D.18723
	movq	-24(%rbp), %rax	# targ, tmp86
	movq	%rdx, %rsi	# D.18723,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_setiv	#
.LBB126:
	movq	-24(%rbp), %rax	# targ, tmp87
	movl	12(%rax), %eax	# targ_15->sv_flags, D.18724
	andl	$16384, %eax	#, D.18724
	testl	%eax, %eax	# D.18724
	je	.L980	#,
	.loc 1 3561 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp88
	movq	%rax, %rdi	# tmp88,
	call	Perl_mg_set	#
.L980:
	.loc 1 3561 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp89
	movq	%rax, (%rbx)	# tmp89, *sp_24
.LBE126:
.LBE125:
	.loc 1 3562 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1236
	movq	(%rax), %rax	# PL_op.1236_26->op_next, D.18726
	.loc 1 3563 0 discriminator 2
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	Perl_pp_chmod, .-Perl_pp_chmod
	.globl	Perl_pp_utime
	.type	Perl_pp_utime, @function
Perl_pp_utime:
.LFB86:
	.loc 1 3566 0
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
	.loc 1 3567 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1237
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1238
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1240
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1240, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1239_4, D.18727
	cltq
	salq	$3, %rax	#, D.18728
	leaq	(%rcx,%rax), %r12	#, mark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1241
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1242
	movq	24(%rax), %rax	# PL_op.1242_11->op_targ, D.18728
	salq	$3, %rax	#, D.18728
	addq	%rdx, %rax	# PL_curpad.1241, D.18729
	movq	(%rax), %rax	# *_14, tmp83
	movq	%rax, -24(%rbp)	# tmp83, targ
	.loc 1 3569 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1243
	movzwl	32(%rax), %eax	# PL_op.1243_16->op_type, D.18730
	movzwl	%ax, %eax	# D.18730, D.18727
	movq	%rbx, %rdx	# sp,
	movq	%r12, %rsi	# mark,
	movl	%eax, %edi	# D.18727,
	call	Perl_apply	#
	movl	%eax, -28(%rbp)	# tmp84, value
	.loc 1 3570 0
	movq	%r12, %rbx	# mark, sp
.LBB127:
	.loc 1 3571 0
	movl	-28(%rbp), %eax	# value, tmp85
	movslq	%eax, %rdx	# tmp85, D.18731
	movq	-24(%rbp), %rax	# targ, tmp86
	movq	%rdx, %rsi	# D.18731,
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_setiv	#
.LBB128:
	movq	-24(%rbp), %rax	# targ, tmp87
	movl	12(%rax), %eax	# targ_15->sv_flags, D.18732
	andl	$16384, %eax	#, D.18732
	testl	%eax, %eax	# D.18732
	je	.L983	#,
	.loc 1 3571 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp88
	movq	%rax, %rdi	# tmp88,
	call	Perl_mg_set	#
.L983:
	.loc 1 3571 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp89
	movq	%rax, (%rbx)	# tmp89, *sp_24
.LBE128:
.LBE127:
	.loc 1 3572 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1244
	movq	(%rax), %rax	# PL_op.1244_26->op_next, D.18734
	.loc 1 3573 0 discriminator 2
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	Perl_pp_utime, .-Perl_pp_utime
	.section	.rodata
.LC83:
	.string	"rename"
	.text
	.globl	Perl_pp_rename
	.type	Perl_pp_rename, @function
Perl_pp_rename:
.LFB87:
	.loc 1 3576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3577 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1245
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1246
	movq	24(%rax), %rax	# PL_op.1246_6->op_targ, D.18735
	salq	$3, %rax	#, D.18735
	addq	%rdx, %rax	# PL_curpad.1245, D.18736
	movq	(%rax), %rax	# *_9, tmp101
	movq	%rax, -40(%rbp)	# tmp101, targ
	.loc 1 3581 0
	movq	%rbx, %rax	# sp, sp.1247
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1247_11, PL_Sv.1248
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1248, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1250
	movl	12(%rax), %eax	# PL_Sv.1250_14->sv_flags, D.18737
	andl	$262144, %eax	#, D.18737
	testl	%eax, %eax	# D.18737
	je	.L986	#,
	.loc 1 3581 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1251
	movq	(%rax), %rax	# PL_Sv.1251_17->sv_any, D.18738
	movq	8(%rax), %rax	# MEM[(struct XPV *)_18].xpv_cur, n_a.1252
	movq	%rax, -48(%rbp)	# n_a.1252, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1253
	movq	(%rax), %rax	# PL_Sv.1253_20->sv_any, D.18738
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, iftmp.1249
	jmp	.L987	#
.L986:
	.loc 1 3581 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1254
	leaq	-48(%rbp), %rcx	#, tmp102
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# PL_Sv.1254,
	call	Perl_sv_2pv_flags	#
.L987:
	.loc 1 3581 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1249, tmps2
	.loc 1 3582 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# *sp_12, D.18739
	movl	12(%rax), %eax	# _26->sv_flags, D.18737
	andl	$262144, %eax	#, D.18737
	testl	%eax, %eax	# D.18737
	je	.L988	#,
	.loc 1 3582 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_12, D.18739
	movq	(%rax), %rax	# _29->sv_any, D.18738
	movq	8(%rax), %rax	# MEM[(struct XPV *)_30].xpv_cur, n_a.1256
	movq	%rax, -48(%rbp)	# n_a.1256, n_a
	movq	(%rbx), %rax	# *sp_12, D.18739
	movq	(%rax), %rax	# _32->sv_any, D.18738
	movq	(%rax), %rax	# MEM[(struct XPV *)_33].xpv_pv, iftmp.1255
	jmp	.L989	#
.L988:
	.loc 1 3582 0 discriminator 2
	movq	(%rbx), %rax	# *sp_12, D.18739
	leaq	-48(%rbp), %rcx	#, tmp103
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# D.18739,
	call	Perl_sv_2pv_flags	#
.L989:
	.loc 1 3582 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.1255, tmps
	.loc 1 3583 0 is_stmt 1 discriminator 3
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1257
	testb	%al, %al	# PL_tainting.1257
	je	.L990	#,
	.loc 1 3583 0 is_stmt 0 discriminator 1
	movl	$.LC83, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L990:
	.loc 1 3587 0 is_stmt 1
	movq	-24(%rbp), %rax	# tmps, tmp104
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	stat	#
	movl	%eax, -52(%rbp)	# tmp105, anum
	cmpl	$0, -52(%rbp)	#, anum
	jne	.L991	#,
	.loc 1 3588 0
	movq	-24(%rbp), %rdx	# tmps, tmp106
	movq	-32(%rbp), %rax	# tmps2, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	Perl_same_dirent	#
	testl	%eax, %eax	# D.18740
	je	.L992	#,
	.loc 1 3589 0
	movl	$1, -52(%rbp)	#, anum
	jmp	.L991	#
.L992:
	.loc 1 3591 0
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.1258
	testl	%eax, %eax	# PL_euid.1258
	jne	.L993	#,
	.loc 1 3591 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmps2, tmp108
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	stat	#
	testl	%eax, %eax	# D.18740
	js	.L993	#,
	movl	PL_statbuf+24(%rip), %eax	# PL_statbuf.st_mode, D.18737
	andl	$61440, %eax	#, D.18737
	cmpl	$16384, %eax	#, D.18737
	je	.L994	#,
.L993:
	.loc 1 3592 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmps2, tmp109
	movq	%rax, %rdi	# tmp109,
	call	unlink	#
.L994:
	.loc 1 3593 0
	movq	-32(%rbp), %rdx	# tmps2, tmp110
	movq	-24(%rbp), %rax	# tmps, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	link	#
	movl	%eax, -52(%rbp)	# tmp112, anum
	cmpl	$0, -52(%rbp)	#, anum
	jne	.L991	#,
	.loc 1 3594 0
	movq	-24(%rbp), %rax	# tmps, tmp113
	movq	%rax, %rdi	# tmp113,
	call	unlink	#
	movl	%eax, -52(%rbp)	# tmp114, anum
.L991:
.LBB129:
	.loc 1 3598 0
	movl	-52(%rbp), %eax	# anum, tmp116
	notl	%eax	# tmp115
	shrl	$31, %eax	#, tmp117
	movzbl	%al, %edx	# D.18741, D.18742
	movq	-40(%rbp), %rax	# targ, tmp118
	movq	%rdx, %rsi	# D.18742,
	movq	%rax, %rdi	# tmp118,
	call	Perl_sv_setiv	#
.LBB130:
	movq	-40(%rbp), %rax	# targ, tmp119
	movl	12(%rax), %eax	# targ_10->sv_flags, D.18737
	andl	$16384, %eax	#, D.18737
	testl	%eax, %eax	# D.18737
	je	.L995	#,
	.loc 1 3598 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp120
	movq	%rax, %rdi	# tmp120,
	call	Perl_mg_set	#
.L995:
	.loc 1 3598 0 discriminator 2
	movq	-40(%rbp), %rax	# targ, tmp121
	movq	%rax, (%rbx)	# tmp121, *sp_12
.LBE130:
.LBE129:
	.loc 1 3599 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1259
	movq	(%rax), %rax	# PL_op.1259_53->op_next, D.18743
	.loc 1 3600 0 discriminator 2
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	Perl_pp_rename, .-Perl_pp_rename
	.section	.rodata
.LC84:
	.string	"link"
	.text
	.globl	Perl_pp_link
	.type	Perl_pp_link, @function
Perl_pp_link:
.LFB88:
	.loc 1 3603 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3613 0
	movl	$.LC84, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3615 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	Perl_pp_link, .-Perl_pp_link
	.section	.rodata
.LC85:
	.string	"symlink"
	.text
	.globl	Perl_pp_symlink
	.type	Perl_pp_symlink, @function
Perl_pp_symlink:
.LFB89:
	.loc 1 3618 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3628 0
	movl	$.LC85, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3630 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	Perl_pp_symlink, .-Perl_pp_symlink
	.globl	Perl_pp_readlink
	.type	Perl_pp_readlink, @function
Perl_pp_readlink:
.LFB90:
	.loc 1 3633 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3634 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3653 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1260
	movq	%rax, %rdx	# PL_stack_max.1260, PL_stack_max.1261
	movq	%rbx, %rax	# sp, sp.1262
	subq	%rax, %rdx	# sp.1262, D.18749
	movq	%rdx, %rax	# D.18749, D.18749
	cmpq	$7, %rax	#, D.18749
	jg	.L1002	#,
	.loc 1 3653 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1002:
	.loc 1 3654 0 is_stmt 1
	movq	$PL_sv_undef, (%rbx)	#, *sp_1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1263
	movq	(%rax), %rax	# PL_op.1263_8->op_next, D.18750
	.loc 1 3656 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	Perl_pp_readlink, .-Perl_pp_readlink
	.section	.rodata
.LC86:
	.string	"mkdir"
	.text
	.globl	Perl_pp_mkdir
	.type	Perl_pp_mkdir, @function
Perl_pp_mkdir:
.LFB91:
	.loc 1 3766 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3767 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1264
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1265
	movq	24(%rax), %rax	# PL_op.1265_9->op_targ, D.18751
	salq	$3, %rax	#, D.18751
	addq	%rdx, %rax	# PL_curpad.1264, D.18752
	movq	(%rax), %rax	# *_12, tmp115
	movq	%rax, -24(%rbp)	# tmp115, targ
	.loc 1 3774 0
	movb	$0, -45(%rbp)	#, copy
	.loc 1 3776 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1266
	movzbl	37(%rax), %eax	# PL_op.1266_15->op_private, D.18753
	movzbl	%al, %eax	# D.18753, D.18754
	andl	$15, %eax	#, D.18754
	cmpl	$1, %eax	#, D.18754
	jle	.L1005	#,
	.loc 1 3777 0
	movq	%rbx, %rax	# sp, sp.1267
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1267_19, PL_Sv.1268
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1268, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1270
	movl	12(%rax), %eax	# PL_Sv.1270_22->sv_flags, D.18755
	andl	$65536, %eax	#, D.18755
	testl	%eax, %eax	# D.18755
	je	.L1006	#,
	.loc 1 3777 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1271
	movq	(%rax), %rax	# PL_Sv.1271_25->sv_any, D.18756
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_26].xiv_iv, D.18757
	jmp	.L1007	#
.L1006:
	.loc 1 3777 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1272
	movq	%rax, %rdi	# PL_Sv.1272,
	call	Perl_sv_2iv	#
.L1007:
	.loc 1 3777 0 discriminator 1
	movl	%eax, -44(%rbp)	# iftmp.1269, mode
	jmp	.L1008	#
.L1005:
	.loc 1 3779 0 is_stmt 1
	movl	$511, -44(%rbp)	#, mode
.L1008:
	.loc 1 3781 0
	movq	(%rbx), %rax	# *sp_1, D.18758
	movl	12(%rax), %eax	# _34->sv_flags, D.18755
	andl	$262144, %eax	#, D.18755
	testl	%eax, %eax	# D.18755
	je	.L1009	#,
	.loc 1 3781 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_1, D.18758
	movq	(%rax), %rax	# _37->sv_any, D.18756
	movq	8(%rax), %rax	# MEM[(struct XPV *)_38].xpv_cur, len.1274
	movq	%rax, -40(%rbp)	# len.1274, len
	movq	(%rbx), %rax	# *sp_1, D.18758
	movq	(%rax), %rax	# _40->sv_any, D.18756
	movq	(%rax), %rax	# MEM[(struct XPV *)_41].xpv_pv, iftmp.1273
	jmp	.L1010	#
.L1009:
	.loc 1 3781 0 discriminator 2
	movq	(%rbx), %rax	# *sp_1, D.18758
	leaq	-40(%rbp), %rcx	#, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# D.18758,
	call	Perl_sv_2pv_flags	#
.L1010:
	.loc 1 3781 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1273, tmps
	movq	-40(%rbp), %rax	# len, len.1275
	cmpq	$1, %rax	#, len.1275
	jbe	.L1011	#,
	.loc 1 3781 0 discriminator 1
	movq	-40(%rbp), %rax	# len, len.1276
	leaq	-1(%rax), %rdx	#, D.18759
	movq	-32(%rbp), %rax	# tmps, tmp117
	addq	%rdx, %rax	# D.18759, D.18760
	movzbl	(%rax), %eax	# *_49, D.18761
	cmpb	$47, %al	#, D.18761
	jne	.L1011	#,
.L1013:
	movq	-40(%rbp), %rax	# len, len.1277
	subq	$1, %rax	#, len.1278
	movq	%rax, -40(%rbp)	# len.1278, len
	movq	-40(%rbp), %rax	# len, len.1279
	cmpq	$1, %rax	#, len.1279
	jbe	.L1012	#,
	movq	-40(%rbp), %rax	# len, len.1280
	leaq	-1(%rax), %rdx	#, D.18759
	movq	-32(%rbp), %rax	# tmps, tmp118
	addq	%rdx, %rax	# D.18759, D.18760
	movzbl	(%rax), %eax	# *_56, D.18761
	cmpb	$47, %al	#, D.18761
	je	.L1013	#,
.L1012:
	.loc 1 3781 0 discriminator 2
	movq	-40(%rbp), %rax	# len, len.1281
	movl	%eax, %edx	# len.1281, D.18754
	movq	-32(%rbp), %rax	# tmps, tmp119
	movl	%edx, %esi	# D.18754,
	movq	%rax, %rdi	# tmp119,
	call	Perl_savepvn	#
	movq	%rax, -32(%rbp)	# tmp120, tmps
	movb	$1, -45(%rbp)	#, copy
.L1011:
	.loc 1 3783 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1282
	testb	%al, %al	# PL_tainting.1282
	je	.L1014	#,
	.loc 1 3783 0 is_stmt 0 discriminator 1
	movl	$.LC86, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1014:
.LBB131:
	.loc 1 3785 0 is_stmt 1
	movl	-44(%rbp), %edx	# mode, mode.1283
	movq	-32(%rbp), %rax	# tmps, tmp121
	movl	%edx, %esi	# mode.1283,
	movq	%rax, %rdi	# tmp121,
	call	mkdir	#
	notl	%eax	# tmp122
	shrl	$31, %eax	#, tmp123
	movzbl	%al, %edx	# D.18762, D.18757
	movq	-24(%rbp), %rax	# targ, tmp124
	movq	%rdx, %rsi	# D.18757,
	movq	%rax, %rdi	# tmp124,
	call	Perl_sv_setiv	#
.LBB132:
	movq	-24(%rbp), %rax	# targ, tmp125
	movl	12(%rax), %eax	# targ_13->sv_flags, D.18755
	andl	$16384, %eax	#, D.18755
	testl	%eax, %eax	# D.18755
	je	.L1015	#,
	.loc 1 3785 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp126
	movq	%rax, %rdi	# tmp126,
	call	Perl_mg_set	#
.L1015:
	.loc 1 3785 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp127
	movq	%rax, (%rbx)	# tmp127, *sp_1
.LBE132:
.LBE131:
	.loc 1 3792 0 is_stmt 1 discriminator 2
	cmpb	$0, -45(%rbp)	#, copy
	je	.L1016	#,
	.loc 1 3793 0
	movq	-32(%rbp), %rax	# tmps, tmp128
	movq	%rax, %rdi	# tmp128,
	call	Perl_safesysfree	#
.L1016:
	.loc 1 3794 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1284
	movq	(%rax), %rax	# PL_op.1284_70->op_next, D.18763
	.loc 1 3795 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	Perl_pp_mkdir, .-Perl_pp_mkdir
	.section	.rodata
.LC87:
	.string	"rmdir"
	.text
	.globl	Perl_pp_rmdir
	.type	Perl_pp_rmdir, @function
Perl_pp_rmdir:
.LFB92:
	.loc 1 3798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3799 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1285
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1286
	movq	24(%rax), %rax	# PL_op.1286_6->op_targ, D.18765
	salq	$3, %rax	#, D.18765
	addq	%rdx, %rax	# PL_curpad.1285, D.18766
	movq	(%rax), %rax	# *_9, tmp99
	movq	%rax, -24(%rbp)	# tmp99, targ
	.loc 1 3802 0
	movb	$0, -41(%rbp)	#, copy
	.loc 1 3804 0
	movq	(%rbx), %rax	# *sp_4, D.18767
	movl	12(%rax), %eax	# _12->sv_flags, D.18768
	andl	$262144, %eax	#, D.18768
	testl	%eax, %eax	# D.18768
	je	.L1019	#,
	.loc 1 3804 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_4, D.18767
	movq	(%rax), %rax	# _15->sv_any, D.18769
	movq	8(%rax), %rax	# MEM[(struct XPV *)_16].xpv_cur, len.1288
	movq	%rax, -40(%rbp)	# len.1288, len
	movq	(%rbx), %rax	# *sp_4, D.18767
	movq	(%rax), %rax	# _18->sv_any, D.18769
	movq	(%rax), %rax	# MEM[(struct XPV *)_19].xpv_pv, iftmp.1287
	jmp	.L1020	#
.L1019:
	.loc 1 3804 0 discriminator 2
	movq	(%rbx), %rax	# *sp_4, D.18767
	leaq	-40(%rbp), %rcx	#, tmp100
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.18767,
	call	Perl_sv_2pv_flags	#
.L1020:
	.loc 1 3804 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1287, tmps
	movq	-40(%rbp), %rax	# len, len.1289
	cmpq	$1, %rax	#, len.1289
	jbe	.L1021	#,
	.loc 1 3804 0 discriminator 1
	movq	-40(%rbp), %rax	# len, len.1290
	leaq	-1(%rax), %rdx	#, D.18770
	movq	-32(%rbp), %rax	# tmps, tmp101
	addq	%rdx, %rax	# D.18770, D.18771
	movzbl	(%rax), %eax	# *_27, D.18772
	cmpb	$47, %al	#, D.18772
	jne	.L1021	#,
.L1023:
	movq	-40(%rbp), %rax	# len, len.1291
	subq	$1, %rax	#, len.1292
	movq	%rax, -40(%rbp)	# len.1292, len
	movq	-40(%rbp), %rax	# len, len.1293
	cmpq	$1, %rax	#, len.1293
	jbe	.L1022	#,
	movq	-40(%rbp), %rax	# len, len.1294
	leaq	-1(%rax), %rdx	#, D.18770
	movq	-32(%rbp), %rax	# tmps, tmp102
	addq	%rdx, %rax	# D.18770, D.18771
	movzbl	(%rax), %eax	# *_34, D.18772
	cmpb	$47, %al	#, D.18772
	je	.L1023	#,
.L1022:
	.loc 1 3804 0 discriminator 2
	movq	-40(%rbp), %rax	# len, len.1295
	movl	%eax, %edx	# len.1295, D.18773
	movq	-32(%rbp), %rax	# tmps, tmp103
	movl	%edx, %esi	# D.18773,
	movq	%rax, %rdi	# tmp103,
	call	Perl_savepvn	#
	movq	%rax, -32(%rbp)	# tmp104, tmps
	movb	$1, -41(%rbp)	#, copy
.L1021:
	.loc 1 3805 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1296
	testb	%al, %al	# PL_tainting.1296
	je	.L1024	#,
	.loc 1 3805 0 is_stmt 0 discriminator 1
	movl	$.LC87, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1024:
.LBB133:
	.loc 1 3807 0 is_stmt 1
	movq	-32(%rbp), %rax	# tmps, tmp105
	movq	%rax, %rdi	# tmp105,
	call	rmdir	#
	notl	%eax	# tmp106
	shrl	$31, %eax	#, tmp107
	movzbl	%al, %edx	# D.18774, D.18775
	movq	-24(%rbp), %rax	# targ, tmp108
	movq	%rdx, %rsi	# D.18775,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_setiv	#
.LBB134:
	movq	-24(%rbp), %rax	# targ, tmp109
	movl	12(%rax), %eax	# targ_10->sv_flags, D.18768
	andl	$16384, %eax	#, D.18768
	testl	%eax, %eax	# D.18768
	je	.L1025	#,
	.loc 1 3807 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_mg_set	#
.L1025:
	.loc 1 3807 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp111
	movq	%rax, (%rbx)	# tmp111, *sp_4
.LBE134:
.LBE133:
	.loc 1 3811 0 is_stmt 1 discriminator 2
	cmpb	$0, -41(%rbp)	#, copy
	je	.L1026	#,
	.loc 1 3812 0
	movq	-32(%rbp), %rax	# tmps, tmp112
	movq	%rax, %rdi	# tmp112,
	call	Perl_safesysfree	#
.L1026:
	.loc 1 3813 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1297
	movq	(%rax), %rax	# PL_op.1297_47->op_next, D.18776
	.loc 1 3814 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	Perl_pp_rmdir, .-Perl_pp_rmdir
	.section	.rodata
.LC88:
	.string	"opendir"
	.text
	.globl	Perl_pp_open_dir
	.type	Perl_pp_open_dir, @function
Perl_pp_open_dir:
.LFB93:
	.loc 1 3819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3841 0
	movl	$.LC88, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3843 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	Perl_pp_open_dir, .-Perl_pp_open_dir
	.section	.rodata
.LC89:
	.string	"readdir"
	.text
	.globl	Perl_pp_readdir
	.type	Perl_pp_readdir, @function
Perl_pp_readdir:
.LFB94:
	.loc 1 3846 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3848 0
	movl	$.LC89, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3894 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	Perl_pp_readdir, .-Perl_pp_readdir
	.section	.rodata
.LC90:
	.string	"telldir"
	.text
	.globl	Perl_pp_telldir
	.type	Perl_pp_telldir, @function
Perl_pp_telldir:
.LFB95:
	.loc 1 3897 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3920 0
	movl	$.LC90, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3922 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	Perl_pp_telldir, .-Perl_pp_telldir
	.section	.rodata
.LC91:
	.string	"seekdir"
	.text
	.globl	Perl_pp_seekdir
	.type	Perl_pp_seekdir, @function
Perl_pp_seekdir:
.LFB96:
	.loc 1 3925 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3943 0
	movl	$.LC91, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3945 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	Perl_pp_seekdir, .-Perl_pp_seekdir
	.section	.rodata
.LC92:
	.string	"rewinddir"
	.text
	.globl	Perl_pp_rewinddir
	.type	Perl_pp_rewinddir, @function
Perl_pp_rewinddir:
.LFB97:
	.loc 1 3948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3964 0
	movl	$.LC92, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3966 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	Perl_pp_rewinddir, .-Perl_pp_rewinddir
	.section	.rodata
.LC93:
	.string	"closedir"
	.text
	.globl	Perl_pp_closedir
	.type	Perl_pp_closedir, @function
Perl_pp_closedir:
.LFB98:
	.loc 1 3969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3994 0
	movl	$.LC93, %esi	#,
	movl	$PL_no_dir_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 3996 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	Perl_pp_closedir, .-Perl_pp_closedir
	.section	.rodata
.LC94:
	.string	"$"
	.text
	.globl	Perl_pp_fork
	.type	Perl_pp_fork, @function
Perl_pp_fork:
.LFB99:
	.loc 1 4001 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4003 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1298
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1299
	movq	24(%rax), %rax	# PL_op.1299_5->op_targ, D.18791
	salq	$3, %rax	#, D.18791
	addq	%rdx, %rax	# PL_curpad.1298, D.18792
	movq	(%rax), %rax	# *_8, tmp99
	movq	%rax, -32(%rbp)	# tmp99, targ
	.loc 1 4007 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1300
	movq	%rax, %rdx	# PL_stack_max.1300, PL_stack_max.1301
	movq	%rbx, %rax	# sp, sp.1302
	subq	%rax, %rdx	# sp.1302, D.18793
	movq	%rdx, %rax	# D.18793, D.18793
	cmpq	$7, %rax	#, D.18793
	jg	.L1041	#,
	.loc 1 4007 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1041:
	.loc 1 4008 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
	.loc 1 4009 0
	call	Perl_my_fork	#
	movl	%eax, -36(%rbp)	# tmp100, childpid
	.loc 1 4010 0
	cmpl	$0, -36(%rbp)	#, childpid
	jns	.L1042	#,
	.loc 1 4011 0
	movq	$PL_sv_undef, (%rbx)	#, *sp_1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1303
	movq	(%rax), %rax	# PL_op.1303_16->op_next, D.18790
	jmp	.L1043	#
.L1042:
	.loc 1 4012 0
	cmpl	$0, -36(%rbp)	#, childpid
	jne	.L1044	#,
	.loc 1 4014 0
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC94, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp101, tmpgv
	cmpq	$0, -24(%rbp)	#, tmpgv
	je	.L1045	#,
	.loc 1 4015 0
	movq	-24(%rbp), %rax	# tmpgv, tmp102
	movq	(%rax), %rax	# tmpgv_18->sv_any, D.18794
	movq	56(%rax), %rax	# _19->xgv_gp, D.18795
	movq	(%rax), %rax	# _20->gp_sv, D.18796
	movq	-24(%rbp), %rdx	# tmpgv, tmp103
	movq	(%rdx), %rdx	# tmpgv_18->sv_any, D.18794
	movq	56(%rdx), %rdx	# _22->xgv_gp, D.18795
	movq	(%rdx), %rdx	# _23->gp_sv, D.18796
	movl	12(%rdx), %edx	# _24->sv_flags, D.18797
	andl	$-8388609, %edx	#, D.18797
	movl	%edx, 12(%rax)	# D.18797, _21->sv_flags
	.loc 1 4016 0
	call	getpid	#
	movslq	%eax, %rdx	# D.18798, D.18793
	movq	-24(%rbp), %rax	# tmpgv, tmp104
	movq	(%rax), %rax	# tmpgv_18->sv_any, D.18794
	movq	56(%rax), %rax	# _29->xgv_gp, D.18795
	movq	(%rax), %rax	# _30->gp_sv, D.18796
	movq	%rdx, %rsi	# D.18793,
	movq	%rax, %rdi	# D.18796,
	call	Perl_sv_setiv	#
	.loc 1 4017 0
	movq	-24(%rbp), %rax	# tmpgv, tmp105
	movq	(%rax), %rax	# tmpgv_18->sv_any, D.18794
	movq	56(%rax), %rax	# _32->xgv_gp, D.18795
	movq	(%rax), %rax	# _33->gp_sv, D.18796
	movq	-24(%rbp), %rdx	# tmpgv, tmp106
	movq	(%rdx), %rdx	# tmpgv_18->sv_any, D.18794
	movq	56(%rdx), %rdx	# _35->xgv_gp, D.18795
	movq	(%rdx), %rdx	# _36->gp_sv, D.18796
	movl	12(%rdx), %edx	# _37->sv_flags, D.18797
	orl	$8388608, %edx	#, D.18797
	movl	%edx, 12(%rax)	# D.18797, _34->sv_flags
.L1045:
	.loc 1 4022 0
	movq	PL_pidstatus(%rip), %rax	# PL_pidstatus, PL_pidstatus.1304
	movq	%rax, %rdi	# PL_pidstatus.1304,
	call	Perl_hv_clear	#
.L1044:
.LBB135:
	.loc 1 4024 0
	movl	-36(%rbp), %eax	# childpid, tmp107
	movslq	%eax, %rdx	# tmp107, D.18793
	movq	-32(%rbp), %rax	# targ, tmp108
	movq	%rdx, %rsi	# D.18793,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_setiv	#
.LBB136:
	movq	-32(%rbp), %rax	# targ, tmp109
	movl	12(%rax), %eax	# targ_9->sv_flags, D.18797
	andl	$16384, %eax	#, D.18797
	testl	%eax, %eax	# D.18797
	je	.L1046	#,
	.loc 1 4024 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_mg_set	#
.L1046:
	.loc 1 4024 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, (%rbx)	# tmp111, *sp_44
.LBE136:
.LBE135:
	.loc 1 4025 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1305
	movq	(%rax), %rax	# PL_op.1305_46->op_next, D.18790
.L1043:
	.loc 1 4042 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	Perl_pp_fork, .-Perl_pp_fork
	.globl	Perl_pp_wait
	.type	Perl_pp_wait, @function
Perl_pp_wait:
.LFB100:
	.loc 1 4045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4047 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1306
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1307
	movq	24(%rax), %rax	# PL_op.1307_6->op_targ, D.18800
	salq	$3, %rax	#, D.18800
	addq	%rdx, %rax	# PL_curpad.1306, D.18801
	movq	(%rax), %rax	# *_9, tmp85
	movq	%rax, -24(%rbp)	# tmp85, targ
	.loc 1 4051 0
	movl	PL_signals(%rip), %eax	# PL_signals, PL_signals.1308
	andl	$1, %eax	#, D.18802
	testl	%eax, %eax	# D.18802
	je	.L1048	#,
	.loc 1 4052 0
	leaq	-32(%rbp), %rax	#, tmp86
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp86,
	movl	$-1, %edi	#,
	call	Perl_wait4pid	#
	movl	%eax, -28(%rbp)	# tmp87, childpid
	jmp	.L1049	#
.L1048:
	.loc 1 4054 0
	jmp	.L1050	#
.L1051:
	.loc 1 4056 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.1309
	testl	%eax, %eax	# PL_sig_pending.1309
	je	.L1050	#,
	.loc 1 4056 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L1050:
	.loc 1 4054 0 is_stmt 1 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp88
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp88,
	movl	$-1, %edi	#,
	call	Perl_wait4pid	#
	movl	%eax, -28(%rbp)	# tmp89, childpid
	cmpl	$-1, -28(%rbp)	#, childpid
	jne	.L1049	#,
	.loc 1 4055 0 discriminator 2
	call	__errno_location	#
	movl	(%rax), %eax	# *_15, D.18804
	.loc 1 4054 0 discriminator 2
	cmpl	$4, %eax	#, D.18804
	je	.L1051	#,
.L1049:
.LBB137:
	.loc 1 4063 0
	cmpl	$0, -28(%rbp)	#, childpid
	jle	.L1052	#,
	.loc 1 4063 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# argflags, iftmp.1310
	jmp	.L1053	#
.L1052:
	.loc 1 4063 0 discriminator 2
	movl	$-1, %eax	#, iftmp.1310
.L1053:
	.loc 1 4063 0 discriminator 3
	movl	%eax, PL_statusvalue(%rip)	# iftmp.1310, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1311
	cmpl	$-1, %eax	#, PL_statusvalue.1311
	je	.L1054	#,
	.loc 1 4063 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1312
	movzwl	%ax, %eax	# PL_statusvalue.1312, PL_statusvalue.1313
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1313, PL_statusvalue
.L1054:
.LBE137:
.LBB138:
	.loc 1 4065 0 is_stmt 1
	movl	-28(%rbp), %eax	# childpid, tmp90
	movslq	%eax, %rdx	# tmp90, D.18805
	movq	-24(%rbp), %rax	# targ, tmp91
	movq	%rdx, %rsi	# D.18805,
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_setiv	#
.LBB139:
	movq	-24(%rbp), %rax	# targ, tmp92
	movl	12(%rax), %eax	# targ_10->sv_flags, D.18802
	andl	$16384, %eax	#, D.18802
	testl	%eax, %eax	# D.18802
	je	.L1055	#,
	.loc 1 4065 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp93
	movq	%rax, %rdi	# tmp93,
	call	Perl_mg_set	#
.L1055:
.LBB140:
	.loc 1 4065 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1314
	movq	%rax, %rdx	# PL_stack_max.1314, PL_stack_max.1315
	movq	%rbx, %rax	# sp, sp.1316
	subq	%rax, %rdx	# sp.1316, D.18805
	movq	%rdx, %rax	# D.18805, D.18805
	cmpq	$7, %rax	#, D.18805
	jg	.L1056	#,
	.loc 1 4065 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1056:
	.loc 1 4065 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp94
	movq	%rax, (%rbx)	# tmp94, *sp_31
.LBE140:
.LBE139:
.LBE138:
	.loc 1 4066 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1317
	movq	(%rax), %rax	# PL_op.1317_33->op_next, D.18807
	.loc 1 4070 0 discriminator 2
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	Perl_pp_wait, .-Perl_pp_wait
	.globl	Perl_pp_waitpid
	.type	Perl_pp_waitpid, @function
Perl_pp_waitpid:
.LFB101:
	.loc 1 4073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4075 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1318
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1319
	movq	24(%rax), %rax	# PL_op.1319_7->op_targ, D.18808
	salq	$3, %rax	#, D.18808
	addq	%rdx, %rax	# PL_curpad.1318, D.18809
	movq	(%rax), %rax	# *_10, tmp101
	movq	%rax, -24(%rbp)	# tmp101, targ
	.loc 1 4081 0
	movq	%rbx, %rax	# sp, sp.1320
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1320_12, PL_Sv.1321
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1321, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1323
	movl	12(%rax), %eax	# PL_Sv.1323_15->sv_flags, D.18810
	andl	$65536, %eax	#, D.18810
	testl	%eax, %eax	# D.18810
	je	.L1059	#,
	.loc 1 4081 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1324
	movq	(%rax), %rax	# PL_Sv.1324_18->sv_any, D.18811
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_19].xiv_iv, D.18812
	jmp	.L1060	#
.L1059:
	.loc 1 4081 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1325
	movq	%rax, %rdi	# PL_Sv.1325,
	call	Perl_sv_2iv	#
.L1060:
	.loc 1 4081 0 discriminator 3
	movl	%eax, -32(%rbp)	# iftmp.1322, optype
	.loc 1 4082 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# *sp_13, D.18813
	movl	12(%rax), %eax	# _26->sv_flags, D.18810
	andl	$65536, %eax	#, D.18810
	testl	%eax, %eax	# D.18810
	je	.L1061	#,
	.loc 1 4082 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_13, D.18813
	movq	(%rax), %rax	# _29->sv_any, D.18811
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_30].xiv_iv, D.18812
	jmp	.L1062	#
.L1061:
	.loc 1 4082 0 discriminator 2
	movq	(%rbx), %rax	# *sp_13, D.18813
	movq	%rax, %rdi	# D.18813,
	call	Perl_sv_2iv	#
.L1062:
	.loc 1 4082 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.1326, pid
	.loc 1 4083 0 is_stmt 1 discriminator 3
	movl	PL_signals(%rip), %eax	# PL_signals, PL_signals.1327
	andl	$1, %eax	#, D.18810
	testl	%eax, %eax	# D.18810
	je	.L1063	#,
	.loc 1 4084 0
	movl	-32(%rbp), %edx	# optype, tmp102
	leaq	-40(%rbp), %rcx	#, tmp103
	movl	-28(%rbp), %eax	# pid, tmp104
	movq	%rcx, %rsi	# tmp103,
	movl	%eax, %edi	# tmp104,
	call	Perl_wait4pid	#
	movl	%eax, -36(%rbp)	# tmp105, result
	jmp	.L1064	#
.L1063:
	.loc 1 4086 0
	jmp	.L1065	#
.L1066:
	.loc 1 4088 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.1328
	testl	%eax, %eax	# PL_sig_pending.1328
	je	.L1065	#,
	.loc 1 4088 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L1065:
	.loc 1 4086 0 is_stmt 1 discriminator 1
	movl	-32(%rbp), %edx	# optype, tmp106
	leaq	-40(%rbp), %rcx	#, tmp107
	movl	-28(%rbp), %eax	# pid, tmp108
	movq	%rcx, %rsi	# tmp107,
	movl	%eax, %edi	# tmp108,
	call	Perl_wait4pid	#
	movl	%eax, -36(%rbp)	# tmp109, result
	cmpl	$-1, -36(%rbp)	#, result
	jne	.L1064	#,
	.loc 1 4087 0 discriminator 2
	call	__errno_location	#
	movl	(%rax), %eax	# *_41, D.18815
	.loc 1 4086 0 discriminator 2
	cmpl	$4, %eax	#, D.18815
	je	.L1066	#,
.L1064:
.LBB141:
	.loc 1 4095 0
	cmpl	$0, -36(%rbp)	#, result
	jle	.L1067	#,
	.loc 1 4095 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# argflags, iftmp.1329
	jmp	.L1068	#
.L1067:
	.loc 1 4095 0 discriminator 2
	movl	$-1, %eax	#, iftmp.1329
.L1068:
	.loc 1 4095 0 discriminator 3
	movl	%eax, PL_statusvalue(%rip)	# iftmp.1329, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1330
	cmpl	$-1, %eax	#, PL_statusvalue.1330
	je	.L1069	#,
	.loc 1 4095 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1331
	movzwl	%ax, %eax	# PL_statusvalue.1331, PL_statusvalue.1332
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1332, PL_statusvalue
.L1069:
.LBE141:
.LBB142:
	.loc 1 4097 0 is_stmt 1
	movl	-36(%rbp), %eax	# result, tmp110
	movslq	%eax, %rdx	# tmp110, D.18812
	movq	-24(%rbp), %rax	# targ, tmp111
	movq	%rdx, %rsi	# D.18812,
	movq	%rax, %rdi	# tmp111,
	call	Perl_sv_setiv	#
.LBB143:
	movq	-24(%rbp), %rax	# targ, tmp112
	movl	12(%rax), %eax	# targ_11->sv_flags, D.18810
	andl	$16384, %eax	#, D.18810
	testl	%eax, %eax	# D.18810
	je	.L1070	#,
	.loc 1 4097 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp113
	movq	%rax, %rdi	# tmp113,
	call	Perl_mg_set	#
.L1070:
	.loc 1 4097 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp114
	movq	%rax, (%rbx)	# tmp114, *sp_13
.LBE143:
.LBE142:
	.loc 1 4098 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1333
	movq	(%rax), %rax	# PL_op.1333_53->op_next, D.18816
	.loc 1 4102 0 discriminator 2
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	Perl_pp_waitpid, .-Perl_pp_waitpid
	.section	.rodata
.LC95:
	.string	"system"
.LC96:
	.string	"panic: kid popen errno read"
	.text
	.globl	Perl_pp_system
	.type	Perl_pp_system, @function
Perl_pp_system:
.LFB102:
	.loc 1 4105 0
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
	.loc 1 4106 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1334
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1335
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1337
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1337, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1336_12, D.18818
	cltq
	salq	$3, %rax	#, D.18819
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.1338
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1339
	subq	%rax, %rdx	# PL_stack_base.1340, D.18820
	movq	%rdx, %rax	# D.18820, D.18820
	sarq	$3, %rax	#, tmp163
	movl	%eax, -68(%rbp)	# D.18820, origmark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1341
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1342
	movq	24(%rax), %rax	# PL_op.1342_25->op_targ, D.18819
	salq	$3, %rax	#, D.18819
	addq	%rdx, %rax	# PL_curpad.1341, D.18821
	movq	(%rax), %rax	# *_28, tmp164
	movq	%rax, -32(%rbp)	# tmp164, targ
	.loc 1 4110 0
	movl	$0, -76(%rbp)	#, did_pipes
	.loc 1 4112 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1343
	testb	%al, %al	# PL_tainting.1343
	je	.L1073	#,
	.loc 1 4113 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1344
	testb	%al, %al	# PL_tainting.1344
	je	.L1074	#,
	.loc 1 4113 0 is_stmt 0 discriminator 1
	call	Perl_taint_env	#
	.loc 1 4114 0 is_stmt 1 discriminator 1
	jmp	.L1075	#
.L1074:
	.loc 1 4114 0 is_stmt 0
	jmp	.L1075	#
.L1079:
	.loc 1 4115 0 is_stmt 1
	movq	(%r12), %rax	# *mark_33, D.18822
	movl	12(%rax), %eax	# _34->sv_flags, D.18823
	andl	$262144, %eax	#, D.18823
	testl	%eax, %eax	# D.18823
	jne	.L1077	#,
	.loc 1 4115 0 is_stmt 0 discriminator 2
	movq	(%r12), %rax	# *mark_33, D.18822
	movq	%rax, %rdi	# D.18822,
	call	Perl_sv_2pv_nolen	#
.L1077:
	.loc 1 4116 0 is_stmt 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.1346
	testb	%al, %al	# PL_tainted.1346
	je	.L1075	#,
	.loc 1 4117 0
	jmp	.L1078	#
.L1075:
	.loc 1 4114 0 discriminator 1
	addq	$8, %r12	#, mark
	cmpq	%rbx, %r12	# sp, mark
	jbe	.L1079	#,
.L1078:
	.loc 1 4119 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1347
	movl	-68(%rbp), %edx	# origmark, tmp165
	movslq	%edx, %rdx	# tmp165, D.18819
	salq	$3, %rdx	#, D.18819
	leaq	(%rax,%rdx), %r12	#, mark
	.loc 1 4120 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1348
	testb	%al, %al	# PL_tainting.1348
	je	.L1073	#,
	.loc 1 4120 0 is_stmt 0 discriminator 1
	movl	$.LC95, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1073:
	.loc 1 4122 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
.LBB144:
	.loc 1 4128 0
	leaq	-48(%rbp), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	pipe	#
	testl	%eax, %eax	# D.18818
	js	.L1080	#,
	.loc 1 4129 0
	movl	$1, -76(%rbp)	#, did_pipes
	.loc 1 4130 0
	jmp	.L1081	#
.L1080:
	jmp	.L1081	#
.L1086:
	.loc 1 4131 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_51, D.18818
	cmpl	$11, %eax	#, D.18818
	je	.L1082	#,
	.loc 1 4132 0
	movl	$-1, -60(%rbp)	#, value
	.loc 1 4133 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1349
	movl	-68(%rbp), %edx	# origmark, tmp167
	movslq	%edx, %rdx	# tmp167, D.18819
	salq	$3, %rdx	#, D.18819
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB145:
	.loc 1 4134 0
	movl	-60(%rbp), %eax	# value, tmp168
	movslq	%eax, %rdx	# tmp168, D.18820
	movq	-32(%rbp), %rax	# targ, tmp169
	movq	%rdx, %rsi	# D.18820,
	movq	%rax, %rdi	# tmp169,
	call	Perl_sv_setiv	#
.LBB146:
	movq	-32(%rbp), %rax	# targ, tmp170
	movl	12(%rax), %eax	# targ_29->sv_flags, D.18823
	andl	$16384, %eax	#, D.18823
	testl	%eax, %eax	# D.18823
	je	.L1083	#,
	.loc 1 4134 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp171
	movq	%rax, %rdi	# tmp171,
	call	Perl_mg_set	#
.L1083:
	.loc 1 4134 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp172
	movq	%rax, (%rbx)	# tmp172, *sp_61
.LBE146:
.LBE145:
	.loc 1 4135 0 is_stmt 1 discriminator 2
	cmpl	$0, -76(%rbp)	#, did_pipes
	je	.L1084	#,
	.loc 1 4136 0
	movl	-48(%rbp), %eax	# pp, D.18818
	movl	%eax, %edi	# D.18818,
	call	close	#
	.loc 1 4137 0
	movl	-44(%rbp), %eax	# pp, D.18818
	movl	%eax, %edi	# D.18818,
	call	close	#
.L1084:
	.loc 1 4139 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1350
	movq	(%rax), %rax	# PL_op.1350_65->op_next, D.18817
	jmp	.L1108	#
.L1082:
	.loc 1 4141 0
	movl	$5, %edi	#,
	call	sleep	#
.L1081:
	.loc 1 4130 0 discriminator 1
	call	Perl_my_fork	#
	movl	%eax, -64(%rbp)	# tmp173, childpid
	cmpl	$-1, -64(%rbp)	#, childpid
	je	.L1086	#,
	.loc 1 4143 0
	cmpl	$0, -64(%rbp)	#, childpid
	jle	.L1087	#,
.LBB147:
	.loc 1 4147 0
	cmpl	$0, -76(%rbp)	#, did_pipes
	je	.L1088	#,
	.loc 1 4148 0
	movl	-44(%rbp), %eax	# pp, D.18818
	movl	%eax, %edi	# D.18818,
	call	close	#
.L1088:
	.loc 1 4156 0 discriminator 1
	leaq	-80(%rbp), %rcx	#, tmp174
	movl	-64(%rbp), %eax	# childpid, tmp175
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp174,
	movl	%eax, %edi	# tmp175,
	call	Perl_wait4pid	#
	movl	%eax, -56(%rbp)	# tmp176, result
	.loc 1 4157 0 discriminator 1
	cmpl	$-1, -56(%rbp)	#, result
	jne	.L1089	#,
	call	__errno_location	#
	movl	(%rax), %eax	# *_69, D.18818
	cmpl	$4, %eax	#, D.18818
	je	.L1088	#,
.L1089:
.LBB148:
	.loc 1 4164 0
	cmpl	$-1, -56(%rbp)	#, result
	je	.L1090	#,
	.loc 1 4164 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# status, iftmp.1351
	jmp	.L1091	#
.L1090:
	.loc 1 4164 0 discriminator 2
	movl	$-1, %eax	#, iftmp.1351
.L1091:
	.loc 1 4164 0 discriminator 3
	movl	%eax, PL_statusvalue(%rip)	# iftmp.1351, PL_statusvalue
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1352
	cmpl	$-1, %eax	#, PL_statusvalue.1352
	je	.L1092	#,
	.loc 1 4164 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1353
	movzwl	%ax, %eax	# PL_statusvalue.1353, PL_statusvalue.1354
	movl	%eax, PL_statusvalue(%rip)	# PL_statusvalue.1354, PL_statusvalue
.L1092:
.LBE148:
	.loc 1 4165 0 is_stmt 1
	call	Perl_do_execfree	#
	.loc 1 4166 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1355
	movl	-68(%rbp), %edx	# origmark, tmp177
	movslq	%edx, %rdx	# tmp177, D.18819
	salq	$3, %rdx	#, D.18819
	leaq	(%rax,%rdx), %rbx	#, sp
	.loc 1 4167 0
	cmpl	$0, -76(%rbp)	#, did_pipes
	je	.L1093	#,
.LBB149:
	.loc 1 4169 0
	movl	$0, -72(%rbp)	#, n
	.loc 1 4171 0
	jmp	.L1094	#
.L1097:
	.loc 1 4172 0
	movl	-72(%rbp), %eax	# n, tmp178
	cltq
	movl	$4, %edx	#, tmp179
	subq	%rax, %rdx	# D.18819, D.18819
	movl	-72(%rbp), %eax	# n, tmp180
	cltq
	leaq	-40(%rbp), %rcx	#, tmp181
	addq	%rax, %rcx	# D.18826, D.18824
	movl	-48(%rbp), %eax	# pp, D.18818
	movq	%rcx, %rsi	# D.18824,
	movl	%eax, %edi	# D.18818,
	call	read	#
	movl	%eax, -52(%rbp)	# D.18820, n1
	.loc 1 4175 0
	cmpl	$0, -52(%rbp)	#, n1
	jg	.L1095	#,
	.loc 1 4176 0
	jmp	.L1096	#
.L1095:
	.loc 1 4177 0
	movl	-52(%rbp), %eax	# n1, tmp182
	addl	%eax, -72(%rbp)	# tmp182, n
.L1094:
	.loc 1 4171 0 discriminator 1
	movl	-72(%rbp), %eax	# n, n.1356
	cmpl	$3, %eax	#, n.1356
	jbe	.L1097	#,
.L1096:
	.loc 1 4179 0
	movl	-48(%rbp), %eax	# pp, D.18818
	movl	%eax, %edi	# D.18818,
	call	close	#
	.loc 1 4180 0
	cmpl	$0, -72(%rbp)	#, n
	je	.L1093	#,
	.loc 1 4181 0
	cmpl	$4, -72(%rbp)	#, n
	je	.L1099	#,
	.loc 1 4182 0
	movl	$.LC96, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
.LBE149:
	jmp	.L1108	#
.L1099:
.LBB150:
	.loc 1 4183 0
	call	__errno_location	#
	movl	-40(%rbp), %edx	# errkid, errkid.1357
	movl	%edx, (%rax)	# errkid.1357, *_92
	.loc 1 4184 0
	movl	$-1, PL_statusvalue(%rip)	#, PL_statusvalue
.L1093:
.LBE150:
.LBB151:
	.loc 1 4187 0
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1358
	movslq	%eax, %rdx	# PL_statusvalue.1358, D.18820
	movq	-32(%rbp), %rax	# targ, tmp183
	movq	%rdx, %rsi	# D.18820,
	movq	%rax, %rdi	# tmp183,
	call	Perl_sv_setiv	#
.LBB152:
	movq	-32(%rbp), %rax	# targ, tmp184
	movl	12(%rax), %eax	# targ_29->sv_flags, D.18823
	andl	$16384, %eax	#, D.18823
	testl	%eax, %eax	# D.18823
	je	.L1101	#,
	.loc 1 4187 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp185
	movq	%rax, %rdi	# tmp185,
	call	Perl_mg_set	#
.L1101:
	.loc 1 4187 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp186
	movq	%rax, (%rbx)	# tmp186, *sp_98
.LBE152:
.LBE151:
	.loc 1 4188 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1359
	movq	(%rax), %rax	# PL_op.1359_100->op_next, D.18817
	jmp	.L1108	#
.L1087:
.LBE147:
	.loc 1 4190 0
	cmpl	$0, -76(%rbp)	#, did_pipes
	je	.L1102	#,
	.loc 1 4191 0
	movl	-48(%rbp), %eax	# pp, D.18818
	movl	%eax, %edi	# D.18818,
	call	close	#
	.loc 1 4193 0
	movl	-44(%rbp), %eax	# pp, D.18818
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.18818,
	movl	$0, %eax	#,
	call	fcntl	#
.L1102:
	.loc 1 4196 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1360
	movzbl	36(%rax), %eax	# PL_op.1360_104->op_flags, D.18827
	movzbl	%al, %eax	# D.18827, D.18818
	andl	$64, %eax	#, D.18818
	testl	%eax, %eax	# D.18818
	je	.L1103	#,
.LBB153:
	.loc 1 4197 0
	addq	$8, %r12	#, mark
	movq	(%r12), %rax	# *mark_108, tmp187
	movq	%rax, -24(%rbp)	# tmp187, really
	.loc 1 4198 0
	movl	-44(%rbp), %edx	# pp, D.18818
	movl	-76(%rbp), %ecx	# did_pipes, tmp188
	movq	-24(%rbp), %rax	# really, tmp189
	movl	%ecx, %r8d	# tmp188,
	movl	%edx, %ecx	# D.18818,
	movq	%rbx, %rdx	# sp,
	movq	%r12, %rsi	# mark,
	movq	%rax, %rdi	# tmp189,
	call	Perl_do_aexec5	#
	movsbl	%al, %eax	# D.18828, tmp190
	movl	%eax, -60(%rbp)	# tmp190, value
.LBE153:
	jmp	.L1104	#
.L1103:
	.loc 1 4200 0
	movq	%rbx, %rdx	# sp, sp.1361
	movq	%r12, %rax	# mark, mark.1362
	subq	%rax, %rdx	# mark.1362, D.18820
	movq	%rdx, %rax	# D.18820, D.18820
	subq	$8, %rax	#, D.18829
	cmpq	$7, %rax	#, D.18829
	jbe	.L1105	#,
	.loc 1 4201 0
	movl	-44(%rbp), %eax	# pp, D.18818
	movl	-76(%rbp), %edx	# did_pipes, tmp191
	movl	%edx, %r8d	# tmp191,
	movl	%eax, %ecx	# D.18818,
	movq	%rbx, %rdx	# sp,
	movq	%r12, %rsi	# mark,
	movl	$0, %edi	#,
	call	Perl_do_aexec5	#
	movsbl	%al, %eax	# D.18828, tmp192
	movl	%eax, -60(%rbp)	# tmp192, value
	jmp	.L1104	#
.L1105:
	.loc 1 4203 0
	movl	-44(%rbp), %r12d	# pp, D.18818
	movq	(%rbx), %rax	# *sp_9, D.18822
	movq	%rax, %rdi	# D.18822,
	call	Perl_sv_mortalcopy	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1363, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1365
	movl	12(%rax), %eax	# PL_Sv.1365_124->sv_flags, D.18823
	andl	$262144, %eax	#, D.18823
	testl	%eax, %eax	# D.18823
	je	.L1106	#,
	.loc 1 4203 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1366
	movq	(%rax), %rax	# PL_Sv.1366_127->sv_any, D.18824
	movq	8(%rax), %rax	# MEM[(struct XPV *)_128].xpv_cur, n_a.1367
	movq	%rax, -40(%rbp)	# n_a.1367, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1368
	movq	(%rax), %rax	# PL_Sv.1368_130->sv_any, D.18824
	movq	(%rax), %rax	# MEM[(struct XPV *)_131].xpv_pv, iftmp.1364
	jmp	.L1107	#
.L1106:
	.loc 1 4203 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1369
	leaq	-40(%rbp), %rcx	#, tmp193
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp193,
	movq	%rax, %rdi	# PL_Sv.1369,
	call	Perl_sv_2pv_flags	#
.L1107:
	.loc 1 4203 0 discriminator 3
	movl	-76(%rbp), %edx	# did_pipes, tmp194
	movl	%r12d, %esi	# D.18818,
	movq	%rax, %rdi	# iftmp.1364,
	call	Perl_do_exec3	#
	movsbl	%al, %eax	# D.18828, tmp195
	movl	%eax, -60(%rbp)	# tmp195, value
.L1104:
	.loc 1 4205 0 is_stmt 1
	movl	$-1, %edi	#,
	call	_exit	#
.L1108:
.LBE144:
	.loc 1 4236 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	Perl_pp_system, .-Perl_pp_system
	.section	.rodata
.LC97:
	.string	"exec"
	.text
	.globl	Perl_pp_exec
	.type	Perl_pp_exec, @function
Perl_pp_exec:
.LFB103:
	.loc 1 4239 0
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
	.loc 1 4240 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1371
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1372
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1374
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1374, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1373_8, D.18833
	cltq
	salq	$3, %rax	#, D.18834
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.1375
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1376
	subq	%rax, %rdx	# PL_stack_base.1377, D.18835
	movq	%rdx, %rax	# D.18835, D.18835
	sarq	$3, %rax	#, tmp127
	movl	%eax, -44(%rbp)	# D.18835, origmark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1378
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1379
	movq	24(%rax), %rax	# PL_op.1379_21->op_targ, D.18834
	salq	$3, %rax	#, D.18834
	addq	%rdx, %rax	# PL_curpad.1378, D.18836
	movq	(%rax), %rax	# *_24, tmp128
	movq	%rax, -32(%rbp)	# tmp128, targ
	.loc 1 4244 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1380
	testb	%al, %al	# PL_tainting.1380
	je	.L1110	#,
	.loc 1 4245 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1381
	testb	%al, %al	# PL_tainting.1381
	je	.L1111	#,
	.loc 1 4245 0 is_stmt 0 discriminator 1
	call	Perl_taint_env	#
	.loc 1 4246 0 is_stmt 1 discriminator 1
	jmp	.L1112	#
.L1111:
	.loc 1 4246 0 is_stmt 0
	jmp	.L1112	#
.L1116:
	.loc 1 4247 0 is_stmt 1
	movq	(%rbx), %rax	# *mark_28, D.18837
	movl	12(%rax), %eax	# _29->sv_flags, D.18838
	andl	$262144, %eax	#, D.18838
	testl	%eax, %eax	# D.18838
	jne	.L1114	#,
	.loc 1 4247 0 is_stmt 0 discriminator 2
	movq	(%rbx), %rax	# *mark_28, D.18837
	movq	%rax, %rdi	# D.18837,
	call	Perl_sv_2pv_nolen	#
.L1114:
	.loc 1 4248 0 is_stmt 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.1383
	testb	%al, %al	# PL_tainted.1383
	je	.L1112	#,
	.loc 1 4249 0
	jmp	.L1115	#
.L1112:
	.loc 1 4246 0 discriminator 1
	addq	$8, %rbx	#, mark
	cmpq	%r12, %rbx	# sp, mark
	jbe	.L1116	#,
.L1115:
	.loc 1 4251 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1384
	movl	-44(%rbp), %edx	# origmark, tmp129
	movslq	%edx, %rdx	# tmp129, D.18834
	salq	$3, %rdx	#, D.18834
	leaq	(%rax,%rdx), %rbx	#, mark
	.loc 1 4252 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1385
	testb	%al, %al	# PL_tainting.1385
	je	.L1110	#,
	.loc 1 4252 0 is_stmt 0 discriminator 1
	movl	$.LC97, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1110:
	.loc 1 4254 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_PerlIO_flush	#
	.loc 1 4255 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1386
	movzbl	36(%rax), %eax	# PL_op.1386_43->op_flags, D.18840
	movzbl	%al, %eax	# D.18840, D.18833
	andl	$64, %eax	#, D.18833
	testl	%eax, %eax	# D.18833
	je	.L1117	#,
.LBB154:
	.loc 1 4256 0
	addq	$8, %rbx	#, mark
	movq	(%rbx), %rax	# *mark_47, tmp130
	movq	%rax, -24(%rbp)	# tmp130, really
	.loc 1 4257 0
	movq	-24(%rbp), %rax	# really, tmp131
	movq	%r12, %rdx	# sp,
	movq	%rbx, %rsi	# mark,
	movq	%rax, %rdi	# tmp131,
	call	Perl_do_aexec	#
	movsbl	%al, %eax	# D.18841, tmp132
	movl	%eax, -48(%rbp)	# tmp132, value
.LBE154:
	jmp	.L1118	#
.L1117:
	.loc 1 4259 0
	movq	%r12, %rdx	# sp, sp.1387
	movq	%rbx, %rax	# mark, mark.1388
	subq	%rax, %rdx	# mark.1388, D.18835
	movq	%rdx, %rax	# D.18835, D.18835
	subq	$8, %rax	#, D.18842
	cmpq	$7, %rax	#, D.18842
	jbe	.L1119	#,
	.loc 1 4269 0
	movq	%r12, %rdx	# sp,
	movq	%rbx, %rsi	# mark,
	movl	$0, %edi	#,
	call	Perl_do_aexec	#
	movsbl	%al, %eax	# D.18841, tmp133
	movl	%eax, -48(%rbp)	# tmp133, value
	jmp	.L1118	#
.L1119:
	.loc 1 4280 0
	movq	(%r12), %rax	# *sp_5, D.18837
	movq	%rax, %rdi	# D.18837,
	call	Perl_sv_mortalcopy	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1389, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1391
	movl	12(%rax), %eax	# PL_Sv.1391_60->sv_flags, D.18838
	andl	$262144, %eax	#, D.18838
	testl	%eax, %eax	# D.18838
	je	.L1120	#,
	.loc 1 4280 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1392
	movq	(%rax), %rax	# PL_Sv.1392_63->sv_any, D.18839
	movq	8(%rax), %rax	# MEM[(struct XPV *)_64].xpv_cur, n_a.1393
	movq	%rax, -40(%rbp)	# n_a.1393, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1394
	movq	(%rax), %rax	# PL_Sv.1394_66->sv_any, D.18839
	movq	(%rax), %rax	# MEM[(struct XPV *)_67].xpv_pv, iftmp.1390
	jmp	.L1121	#
.L1120:
	.loc 1 4280 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1395
	leaq	-40(%rbp), %rcx	#, tmp134
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# PL_Sv.1395,
	call	Perl_sv_2pv_flags	#
.L1121:
	.loc 1 4280 0 discriminator 3
	movq	%rax, %rdi	# iftmp.1390,
	call	Perl_do_exec	#
	movsbl	%al, %eax	# D.18841, tmp135
	movl	%eax, -48(%rbp)	# tmp135, value
.L1118:
	.loc 1 4285 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1396
	movl	-44(%rbp), %edx	# origmark, tmp136
	movslq	%edx, %rdx	# tmp136, D.18834
	salq	$3, %rdx	#, D.18834
	leaq	(%rax,%rdx), %r12	#, sp
.LBB155:
	.loc 1 4286 0
	movl	-48(%rbp), %eax	# value, tmp137
	movslq	%eax, %rdx	# tmp137, D.18835
	movq	-32(%rbp), %rax	# targ, tmp138
	movq	%rdx, %rsi	# D.18835,
	movq	%rax, %rdi	# tmp138,
	call	Perl_sv_setiv	#
.LBB156:
	movq	-32(%rbp), %rax	# targ, tmp139
	movl	12(%rax), %eax	# targ_25->sv_flags, D.18838
	andl	$16384, %eax	#, D.18838
	testl	%eax, %eax	# D.18838
	je	.L1122	#,
	.loc 1 4286 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp140
	movq	%rax, %rdi	# tmp140,
	call	Perl_mg_set	#
.L1122:
	.loc 1 4286 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-32(%rbp), %rax	# targ, tmp141
	movq	%rax, (%r12)	# tmp141, *sp_80
.LBE156:
.LBE155:
	.loc 1 4287 0 is_stmt 1 discriminator 2
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1397
	movq	(%rax), %rax	# PL_op.1397_82->op_next, D.18843
	.loc 1 4288 0 discriminator 2
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	Perl_pp_exec, .-Perl_pp_exec
	.section	.rodata
.LC98:
	.string	"kill"
	.text
	.globl	Perl_pp_kill
	.type	Perl_pp_kill, @function
Perl_pp_kill:
.LFB104:
	.loc 1 4291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4300 0
	movl	$.LC98, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4302 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	Perl_pp_kill, .-Perl_pp_kill
	.section	.rodata
.LC99:
	.string	"getppid"
	.text
	.globl	Perl_pp_getppid
	.type	Perl_pp_getppid, @function
Perl_pp_getppid:
.LFB105:
	.loc 1 4305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4315 0
	movl	$.LC99, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4317 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	Perl_pp_getppid, .-Perl_pp_getppid
	.section	.rodata
.LC100:
	.string	"getpgrp()"
	.text
	.globl	Perl_pp_getpgrp
	.type	Perl_pp_getpgrp, @function
Perl_pp_getpgrp:
.LFB106:
	.loc 1 4320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4340 0
	movl	$.LC100, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4342 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	Perl_pp_getpgrp, .-Perl_pp_getpgrp
	.section	.rodata
.LC101:
	.string	"setpgrp()"
	.text
	.globl	Perl_pp_setpgrp
	.type	Perl_pp_setpgrp, @function
Perl_pp_setpgrp:
.LFB107:
	.loc 1 4345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4372 0
	movl	$.LC101, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4374 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	Perl_pp_setpgrp, .-Perl_pp_setpgrp
	.section	.rodata
.LC102:
	.string	"getpriority()"
	.text
	.globl	Perl_pp_getpriority
	.type	Perl_pp_getpriority, @function
Perl_pp_getpriority:
.LFB108:
	.loc 1 4377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4385 0
	movl	$.LC102, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4387 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	Perl_pp_getpriority, .-Perl_pp_getpriority
	.section	.rodata
.LC103:
	.string	"setpriority()"
	.text
	.globl	Perl_pp_setpriority
	.type	Perl_pp_setpriority, @function
Perl_pp_setpriority:
.LFB109:
	.loc 1 4390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4400 0
	movl	$.LC103, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4402 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	Perl_pp_setpriority, .-Perl_pp_setpriority
	.globl	Perl_pp_time
	.type	Perl_pp_time, @function
Perl_pp_time:
.LFB110:
	.loc 1 4407 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4408 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1398
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1399
	movq	24(%rax), %rax	# PL_op.1399_4->op_targ, D.18857
	salq	$3, %rax	#, D.18857
	addq	%rdx, %rax	# PL_curpad.1398, D.18858
	movq	(%rax), %rax	# *_7, tmp76
	movq	%rax, -24(%rbp)	# tmp76, targ
.LBB157:
	.loc 1 4412 0
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, %rdx	#, D.18859
	movq	-24(%rbp), %rax	# targ, tmp77
	movq	%rdx, %rsi	# D.18859,
	movq	%rax, %rdi	# tmp77,
	call	Perl_sv_setiv	#
.LBB158:
	movq	-24(%rbp), %rax	# targ, tmp78
	movl	12(%rax), %eax	# targ_8->sv_flags, D.18860
	andl	$16384, %eax	#, D.18860
	testl	%eax, %eax	# D.18860
	je	.L1137	#,
	.loc 1 4412 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp79
	movq	%rax, %rdi	# tmp79,
	call	Perl_mg_set	#
.L1137:
.LBB159:
	.loc 1 4412 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1400
	movq	%rax, %rdx	# PL_stack_max.1400, PL_stack_max.1401
	movq	%rbx, %rax	# sp, sp.1402
	subq	%rax, %rdx	# sp.1402, D.18859
	movq	%rdx, %rax	# D.18859, D.18859
	cmpq	$7, %rax	#, D.18859
	jg	.L1138	#,
	.loc 1 4412 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1138:
	.loc 1 4412 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp80
	movq	%rax, (%rbx)	# tmp80, *sp_17
.LBE159:
.LBE158:
.LBE157:
	.loc 1 4414 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1403
	movq	(%rax), %rax	# PL_op.1403_19->op_next, D.18862
	.loc 1 4415 0 discriminator 2
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	Perl_pp_time, .-Perl_pp_time
	.section	.rodata
.LC104:
	.string	"times not implemented"
	.text
	.globl	Perl_pp_tms
	.type	Perl_pp_tms, @function
Perl_pp_tms:
.LFB111:
	.loc 1 4418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4449 0
	movl	$.LC104, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4452 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	Perl_pp_tms, .-Perl_pp_tms
	.globl	Perl_pp_localtime
	.type	Perl_pp_localtime, @function
Perl_pp_localtime:
.LFB112:
	.loc 1 4455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4456 0
	call	Perl_pp_gmtime	#
	.loc 1 4457 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	Perl_pp_localtime, .-Perl_pp_localtime
	.section	.rodata
.LC105:
	.string	"%s %s %2d %02d:%02d:%02d %d"
	.text
	.globl	Perl_pp_gmtime
	.type	Perl_pp_gmtime, @function
Perl_pp_gmtime:
.LFB113:
	.loc 1 4460 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4461 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 4468 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1404
	movzbl	37(%rax), %eax	# PL_op.1404_10->op_private, D.18867
	movzbl	%al, %eax	# D.18867, D.18868
	andl	$15, %eax	#, D.18868
	testl	%eax, %eax	# D.18868
	jg	.L1145	#,
	.loc 1 4469 0
	leaq	-40(%rbp), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	time	#
	jmp	.L1146	#
.L1145:
	.loc 1 4474 0
	movq	%rbx, %rax	# sp, sp.1405
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1405_14, PL_Sv.1406
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1406, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1408
	movl	12(%rax), %eax	# PL_Sv.1408_17->sv_flags, D.18869
	andl	$65536, %eax	#, D.18869
	testl	%eax, %eax	# D.18869
	je	.L1147	#,
	.loc 1 4474 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1409
	movq	(%rax), %rax	# PL_Sv.1409_20->sv_any, D.18870
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_21].xiv_iv, iftmp.1407
	jmp	.L1148	#
.L1147:
	.loc 1 4474 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1410
	movq	%rax, %rdi	# PL_Sv.1410,
	call	Perl_sv_2iv	#
.L1148:
	.loc 1 4474 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.1407, when
.L1146:
	.loc 1 4477 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1411
	movzwl	32(%rax), %eax	# PL_op.1411_25->op_type, D.18871
	cmpw	$294, %ax	#, D.18871
	jne	.L1149	#,
	.loc 1 4478 0
	leaq	-40(%rbp), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	localtime	#
	movq	%rax, -32(%rbp)	# tmp152, tmbuf
	jmp	.L1150	#
.L1149:
	.loc 1 4480 0
	leaq	-40(%rbp), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	gmtime	#
	movq	%rax, -32(%rbp)	# tmp154, tmbuf
.L1150:
	.loc 1 4482 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1413
	movzbl	36(%rax), %eax	# PL_op.1413_29->op_flags, D.18867
	movzbl	%al, %eax	# D.18867, D.18868
	andl	$3, %eax	#, D.18868
	testl	%eax, %eax	# D.18868
	je	.L1151	#,
	.loc 1 4482 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1414
	movzbl	36(%rax), %eax	# PL_op.1414_33->op_flags, D.18867
	movzbl	%al, %eax	# D.18867, D.18868
	andl	$3, %eax	#, D.18868
	cmpl	$3, %eax	#, D.18868
	setne	%al	#, iftmp.1412
	jmp	.L1152	#
.L1151:
	.loc 1 4482 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.18868
	setne	%al	#, iftmp.1412
.L1152:
	.loc 1 4482 0 discriminator 3
	testb	%al, %al	# iftmp.1412
	je	.L1153	#,
.LBB160:
	.loc 1 4484 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1415
	movq	%rax, %rdx	# PL_stack_max.1415, PL_stack_max.1416
	movq	%rbx, %rax	# sp, sp.1417
	subq	%rax, %rdx	# sp.1417, D.18872
	movq	%rdx, %rax	# D.18872, D.18872
	cmpq	$7, %rax	#, D.18872
	jg	.L1154	#,
	.loc 1 4484 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1154:
	.loc 1 4485 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1418
	leal	1(%rax), %edx	#, D.18868
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1419
	cmpl	%eax, %edx	# PL_tmps_max.1419, D.18868
	jl	.L1155	#,
	.loc 1 4485 0 is_stmt 0 discriminator 1
	movl	$1, %edi	#,
	call	Perl_tmps_grow	#
.L1155:
	.loc 1 4486 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, tmbuf
	jne	.L1156	#,
	.loc 1 4487 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_48
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1420
	movq	(%rax), %rax	# PL_op.1420_49->op_next, D.18866
	jmp	.L1161	#
.L1156:
	.loc 1 4495 0
	movq	-32(%rbp), %rax	# tmbuf, tmp155
	movl	20(%rax), %eax	# tmbuf_5->tm_year, D.18868
	.loc 1 4488 0
	leal	1900(%rax), %r9d	#, D.18868
	movq	-32(%rbp), %rax	# tmbuf, tmp156
	movl	(%rax), %esi	# tmbuf_5->tm_sec, D.18868
	movq	-32(%rbp), %rax	# tmbuf, tmp157
	movl	4(%rax), %r8d	# tmbuf_5->tm_min, D.18868
	movq	-32(%rbp), %rax	# tmbuf, tmp158
	movl	8(%rax), %edi	# tmbuf_5->tm_hour, D.18868
	movq	-32(%rbp), %rax	# tmbuf, tmp159
	movl	12(%rax), %ecx	# tmbuf_5->tm_mday, D.18868
	.loc 1 4490 0
	movq	-32(%rbp), %rax	# tmbuf, tmp160
	movl	16(%rax), %eax	# tmbuf_5->tm_mon, D.18868
	.loc 1 4488 0
	cltq
	movq	monname.11577(,%rax,8), %rdx	# monname, D.18873
	.loc 1 4489 0
	movq	-32(%rbp), %rax	# tmbuf, tmp162
	movl	24(%rax), %eax	# tmbuf_5->tm_wday, D.18868
	.loc 1 4488 0
	cltq
	movq	dayname.11576(,%rax,8), %rax	# dayname, D.18873
	movl	%r9d, 8(%rsp)	# D.18868,
	movl	%esi, (%rsp)	# D.18868,
	movl	%r8d, %r9d	# D.18868,
	movl	%edi, %r8d	# D.18868,
	movq	%rax, %rsi	# D.18873,
	movl	$.LC105, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, -24(%rbp)	# tmp164, tsv
	.loc 1 4496 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# tsv, tmp165
	movq	%rax, %rdi	# tmp165,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_62
.LBE160:
	jmp	.L1158	#
.L1153:
	.loc 1 4498 0
	cmpq	$0, -32(%rbp)	#, tmbuf
	je	.L1158	#,
	.loc 1 4499 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1421
	movq	%rax, %rdx	# PL_stack_max.1421, PL_stack_max.1422
	movq	%rbx, %rax	# sp, sp.1423
	subq	%rax, %rdx	# sp.1423, D.18872
	movq	%rdx, %rax	# D.18872, D.18872
	cmpq	$71, %rax	#, D.18872
	jg	.L1159	#,
	.loc 1 4499 0 is_stmt 0 discriminator 1
	movl	$9, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1159:
	.loc 1 4500 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1424
	leal	9(%rax), %edx	#, D.18868
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1425
	cmpl	%eax, %edx	# PL_tmps_max.1425, D.18868
	jl	.L1160	#,
	.loc 1 4500 0 is_stmt 0 discriminator 1
	movl	$9, %edi	#,
	call	Perl_tmps_grow	#
.L1160:
	.loc 1 4501 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp166
	movl	(%rax), %eax	# tmbuf_5->tm_sec, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_72
	.loc 1 4502 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp167
	movl	4(%rax), %eax	# tmbuf_5->tm_min, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_77
	.loc 1 4503 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp168
	movl	8(%rax), %eax	# tmbuf_5->tm_hour, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_82
	.loc 1 4504 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp169
	movl	12(%rax), %eax	# tmbuf_5->tm_mday, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_87
	.loc 1 4505 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp170
	movl	16(%rax), %eax	# tmbuf_5->tm_mon, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_92
	.loc 1 4506 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp171
	movl	20(%rax), %eax	# tmbuf_5->tm_year, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_97
	.loc 1 4507 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp172
	movl	24(%rax), %eax	# tmbuf_5->tm_wday, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_102
	.loc 1 4508 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp173
	movl	28(%rax), %eax	# tmbuf_5->tm_yday, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_107
	.loc 1 4509 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# tmbuf, tmp174
	movl	32(%rax), %eax	# tmbuf_5->tm_isdst, D.18868
	cltq
	movq	%rax, %rdi	# D.18872,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18874,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18874, *sp_112
.L1158:
	.loc 1 4511 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1426
	movq	(%rax), %rax	# PL_op.1426_117->op_next, D.18866
.L1161:
	.loc 1 4512 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	Perl_pp_gmtime, .-Perl_pp_gmtime
	.section	.rodata
.LC106:
	.string	"alarm"
	.text
	.globl	Perl_pp_alarm
	.type	Perl_pp_alarm, @function
Perl_pp_alarm:
.LFB114:
	.loc 1 4515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4527 0
	movl	$.LC106, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4529 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	Perl_pp_alarm, .-Perl_pp_alarm
	.globl	Perl_pp_sleep
	.type	Perl_pp_sleep, @function
Perl_pp_sleep:
.LFB115:
	.loc 1 4532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 4533 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1427
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1428
	movq	24(%rax), %rax	# PL_op.1428_6->op_targ, D.18878
	salq	$3, %rax	#, D.18878
	addq	%rdx, %rax	# PL_curpad.1427, D.18879
	movq	(%rax), %rax	# *_9, tmp94
	movq	%rax, -24(%rbp)	# tmp94, targ
	.loc 1 4538 0
	leaq	-40(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	time	#
	.loc 1 4539 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1429
	movzbl	37(%rax), %eax	# PL_op.1429_11->op_private, D.18880
	movzbl	%al, %eax	# D.18880, D.18881
	andl	$15, %eax	#, D.18881
	testl	%eax, %eax	# D.18881
	jg	.L1165	#,
	.loc 1 4540 0
	movl	$2147450879, %edi	#,
	call	sleep	#
	jmp	.L1166	#
.L1165:
	.loc 1 4542 0
	movq	%rbx, %rax	# sp, sp.1430
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1430_15, PL_Sv.1431
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1431, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1433
	movl	12(%rax), %eax	# PL_Sv.1433_18->sv_flags, D.18882
	andl	$65536, %eax	#, D.18882
	testl	%eax, %eax	# D.18882
	je	.L1167	#,
	.loc 1 4542 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1434
	movq	(%rax), %rax	# PL_Sv.1434_21->sv_any, D.18883
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_22].xiv_iv, D.18884
	jmp	.L1168	#
.L1167:
	.loc 1 4542 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1435
	movq	%rax, %rdi	# PL_Sv.1435,
	call	Perl_sv_2iv	#
.L1168:
	.loc 1 4542 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.1432, duration
	.loc 1 4543 0 is_stmt 1 discriminator 3
	movl	-44(%rbp), %eax	# duration, duration.1436
	movl	%eax, %edi	# duration.1436,
	call	sleep	#
.L1166:
	.loc 1 4545 0
	leaq	-32(%rbp), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	time	#
.LBB161:
	.loc 1 4546 0
	movq	-32(%rbp), %rdx	# when, when.1437
	movq	-40(%rbp), %rax	# lasttime, lasttime.1438
	subq	%rax, %rdx	# lasttime.1438, D.18884
	movq	-24(%rbp), %rax	# targ, tmp97
	movq	%rdx, %rsi	# D.18884,
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_setiv	#
.LBB162:
	movq	-24(%rbp), %rax	# targ, tmp98
	movl	12(%rax), %eax	# targ_10->sv_flags, D.18882
	andl	$16384, %eax	#, D.18882
	testl	%eax, %eax	# D.18882
	je	.L1169	#,
	.loc 1 4546 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp99
	movq	%rax, %rdi	# tmp99,
	call	Perl_mg_set	#
.L1169:
.LBB163:
	.loc 1 4546 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1439
	movq	%rax, %rdx	# PL_stack_max.1439, PL_stack_max.1440
	movq	%rbx, %rax	# sp, sp.1441
	subq	%rax, %rdx	# sp.1441, D.18884
	movq	%rdx, %rax	# D.18884, D.18884
	cmpq	$7, %rax	#, D.18884
	jg	.L1170	#,
	.loc 1 4546 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1170:
	.loc 1 4546 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp100
	movq	%rax, (%rbx)	# tmp100, *sp_40
.LBE163:
.LBE162:
.LBE161:
	.loc 1 4547 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1442
	movq	(%rax), %rax	# PL_op.1442_42->op_next, D.18886
	.loc 1 4548 0 discriminator 2
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	Perl_pp_sleep, .-Perl_pp_sleep
	.globl	Perl_pp_shmget
	.type	Perl_pp_shmget, @function
Perl_pp_shmget:
.LFB116:
	.loc 1 4553 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4554 0
	call	Perl_pp_semget	#
	.loc 1 4555 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	Perl_pp_shmget, .-Perl_pp_shmget
	.globl	Perl_pp_shmctl
	.type	Perl_pp_shmctl, @function
Perl_pp_shmctl:
.LFB117:
	.loc 1 4558 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4559 0
	call	Perl_pp_semctl	#
	.loc 1 4560 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	Perl_pp_shmctl, .-Perl_pp_shmctl
	.globl	Perl_pp_shmread
	.type	Perl_pp_shmread, @function
Perl_pp_shmread:
.LFB118:
	.loc 1 4563 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4564 0
	call	Perl_pp_shmwrite	#
	.loc 1 4565 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	Perl_pp_shmread, .-Perl_pp_shmread
	.globl	Perl_pp_shmwrite
	.type	Perl_pp_shmwrite, @function
Perl_pp_shmwrite:
.LFB119:
	.loc 1 4568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4576 0
	call	Perl_pp_semget	#
	.loc 1 4578 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	Perl_pp_shmwrite, .-Perl_pp_shmwrite
	.globl	Perl_pp_msgget
	.type	Perl_pp_msgget, @function
Perl_pp_msgget:
.LFB120:
	.loc 1 4583 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4584 0
	call	Perl_pp_semget	#
	.loc 1 4585 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	Perl_pp_msgget, .-Perl_pp_msgget
	.globl	Perl_pp_msgctl
	.type	Perl_pp_msgctl, @function
Perl_pp_msgctl:
.LFB121:
	.loc 1 4588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4589 0
	call	Perl_pp_semctl	#
	.loc 1 4590 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	Perl_pp_msgctl, .-Perl_pp_msgctl
	.globl	Perl_pp_msgsnd
	.type	Perl_pp_msgsnd, @function
Perl_pp_msgsnd:
.LFB122:
	.loc 1 4593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4601 0
	call	Perl_pp_semget	#
	.loc 1 4603 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	Perl_pp_msgsnd, .-Perl_pp_msgsnd
	.globl	Perl_pp_msgrcv
	.type	Perl_pp_msgrcv, @function
Perl_pp_msgrcv:
.LFB123:
	.loc 1 4606 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4614 0
	call	Perl_pp_semget	#
	.loc 1 4616 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	Perl_pp_msgrcv, .-Perl_pp_msgrcv
	.section	.rodata
	.align 8
.LC107:
	.string	"System V IPC is not implemented on this machine"
	.text
	.globl	Perl_pp_semget
	.type	Perl_pp_semget, @function
Perl_pp_semget:
.LFB124:
	.loc 1 4621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4631 0
	movl	$.LC107, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4633 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	Perl_pp_semget, .-Perl_pp_semget
	.globl	Perl_pp_semctl
	.type	Perl_pp_semctl, @function
Perl_pp_semctl:
.LFB125:
	.loc 1 4636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4651 0
	call	Perl_pp_semget	#
	.loc 1 4653 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	Perl_pp_semctl, .-Perl_pp_semctl
	.globl	Perl_pp_semop
	.type	Perl_pp_semop, @function
Perl_pp_semop:
.LFB126:
	.loc 1 4656 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4664 0
	call	Perl_pp_semget	#
	.loc 1 4666 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	Perl_pp_semop, .-Perl_pp_semop
	.section	.rodata
.LC108:
	.string	"gethostbyname"
	.text
	.globl	Perl_pp_ghbyname
	.type	Perl_pp_ghbyname, @function
Perl_pp_ghbyname:
.LFB127:
	.loc 1 4671 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4675 0
	movl	$.LC108, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4677 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	Perl_pp_ghbyname, .-Perl_pp_ghbyname
	.section	.rodata
.LC109:
	.string	"gethostbyaddr"
	.text
	.globl	Perl_pp_ghbyaddr
	.type	Perl_pp_ghbyaddr, @function
Perl_pp_ghbyaddr:
.LFB128:
	.loc 1 4680 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4684 0
	movl	$.LC109, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4686 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	Perl_pp_ghbyaddr, .-Perl_pp_ghbyaddr
	.section	.rodata
.LC110:
	.string	"gethostent"
	.text
	.globl	Perl_pp_ghostent
	.type	Perl_pp_ghostent, @function
Perl_pp_ghostent:
.LFB129:
	.loc 1 4689 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4783 0
	movl	$.LC110, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4785 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	Perl_pp_ghostent, .-Perl_pp_ghostent
	.section	.rodata
.LC111:
	.string	"getnetbyname"
	.text
	.globl	Perl_pp_gnbyname
	.type	Perl_pp_gnbyname, @function
Perl_pp_gnbyname:
.LFB130:
	.loc 1 4788 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4792 0
	movl	$.LC111, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4794 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	Perl_pp_gnbyname, .-Perl_pp_gnbyname
	.section	.rodata
.LC112:
	.string	"getnetbyaddr"
	.text
	.globl	Perl_pp_gnbyaddr
	.type	Perl_pp_gnbyaddr, @function
Perl_pp_gnbyaddr:
.LFB131:
	.loc 1 4797 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4801 0
	movl	$.LC112, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4803 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	Perl_pp_gnbyaddr, .-Perl_pp_gnbyaddr
	.section	.rodata
.LC113:
	.string	"getnetent"
	.text
	.globl	Perl_pp_gnetent
	.type	Perl_pp_gnetent, @function
Perl_pp_gnetent:
.LFB132:
	.loc 1 4806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4884 0
	movl	$.LC113, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4886 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	Perl_pp_gnetent, .-Perl_pp_gnetent
	.section	.rodata
.LC114:
	.string	"getprotobyname"
	.text
	.globl	Perl_pp_gpbyname
	.type	Perl_pp_gpbyname, @function
Perl_pp_gpbyname:
.LFB133:
	.loc 1 4889 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4893 0
	movl	$.LC114, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4895 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	Perl_pp_gpbyname, .-Perl_pp_gpbyname
	.section	.rodata
.LC115:
	.string	"getprotobynumber"
	.text
	.globl	Perl_pp_gpbynumber
	.type	Perl_pp_gpbynumber, @function
Perl_pp_gpbynumber:
.LFB134:
	.loc 1 4898 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4902 0
	movl	$.LC115, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4904 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	Perl_pp_gpbynumber, .-Perl_pp_gpbynumber
	.section	.rodata
.LC116:
	.string	"getprotoent"
	.text
	.globl	Perl_pp_gprotoent
	.type	Perl_pp_gprotoent, @function
Perl_pp_gprotoent:
.LFB135:
	.loc 1 4907 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4971 0
	movl	$.LC116, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4973 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	Perl_pp_gprotoent, .-Perl_pp_gprotoent
	.section	.rodata
.LC117:
	.string	"getservbyname"
	.text
	.globl	Perl_pp_gsbyname
	.type	Perl_pp_gsbyname, @function
Perl_pp_gsbyname:
.LFB136:
	.loc 1 4976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4980 0
	movl	$.LC117, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4982 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	Perl_pp_gsbyname, .-Perl_pp_gsbyname
	.section	.rodata
.LC118:
	.string	"getservbyport"
	.text
	.globl	Perl_pp_gsbyport
	.type	Perl_pp_gsbyport, @function
Perl_pp_gsbyport:
.LFB137:
	.loc 1 4985 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4989 0
	movl	$.LC118, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 4991 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	Perl_pp_gsbyport, .-Perl_pp_gsbyport
	.section	.rodata
.LC119:
	.string	"getservent"
	.text
	.globl	Perl_pp_gservent
	.type	Perl_pp_gservent, @function
Perl_pp_gservent:
.LFB138:
	.loc 1 4994 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5082 0
	movl	$.LC119, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5084 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	Perl_pp_gservent, .-Perl_pp_gservent
	.section	.rodata
.LC120:
	.string	"sethostent"
	.text
	.globl	Perl_pp_shostent
	.type	Perl_pp_shostent, @function
Perl_pp_shostent:
.LFB139:
	.loc 1 5087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5093 0
	movl	$.LC120, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5095 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	Perl_pp_shostent, .-Perl_pp_shostent
	.section	.rodata
.LC121:
	.string	"setnetent"
	.text
	.globl	Perl_pp_snetent
	.type	Perl_pp_snetent, @function
Perl_pp_snetent:
.LFB140:
	.loc 1 5098 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5104 0
	movl	$.LC121, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5106 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	Perl_pp_snetent, .-Perl_pp_snetent
	.section	.rodata
.LC122:
	.string	"setprotoent"
	.text
	.globl	Perl_pp_sprotoent
	.type	Perl_pp_sprotoent, @function
Perl_pp_sprotoent:
.LFB141:
	.loc 1 5109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5115 0
	movl	$.LC122, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5117 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	Perl_pp_sprotoent, .-Perl_pp_sprotoent
	.section	.rodata
.LC123:
	.string	"setservent"
	.text
	.globl	Perl_pp_sservent
	.type	Perl_pp_sservent, @function
Perl_pp_sservent:
.LFB142:
	.loc 1 5120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5126 0
	movl	$.LC123, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5128 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	Perl_pp_sservent, .-Perl_pp_sservent
	.section	.rodata
.LC124:
	.string	"endhostent"
	.text
	.globl	Perl_pp_ehostent
	.type	Perl_pp_ehostent, @function
Perl_pp_ehostent:
.LFB143:
	.loc 1 5131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5138 0
	movl	$.LC124, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5140 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	Perl_pp_ehostent, .-Perl_pp_ehostent
	.section	.rodata
.LC125:
	.string	"endnetent"
	.text
	.globl	Perl_pp_enetent
	.type	Perl_pp_enetent, @function
Perl_pp_enetent:
.LFB144:
	.loc 1 5143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5150 0
	movl	$.LC125, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5152 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	Perl_pp_enetent, .-Perl_pp_enetent
	.section	.rodata
.LC126:
	.string	"endprotoent"
	.text
	.globl	Perl_pp_eprotoent
	.type	Perl_pp_eprotoent, @function
Perl_pp_eprotoent:
.LFB145:
	.loc 1 5155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5162 0
	movl	$.LC126, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5164 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	Perl_pp_eprotoent, .-Perl_pp_eprotoent
	.section	.rodata
.LC127:
	.string	"endservent"
	.text
	.globl	Perl_pp_eservent
	.type	Perl_pp_eservent, @function
Perl_pp_eservent:
.LFB146:
	.loc 1 5167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5174 0
	movl	$.LC127, %esi	#,
	movl	$PL_no_sock_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5176 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	Perl_pp_eservent, .-Perl_pp_eservent
	.section	.rodata
.LC128:
	.string	"getpwnam"
	.text
	.globl	Perl_pp_gpwnam
	.type	Perl_pp_gpwnam, @function
Perl_pp_gpwnam:
.LFB147:
	.loc 1 5179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5183 0
	movl	$.LC128, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5185 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	Perl_pp_gpwnam, .-Perl_pp_gpwnam
	.section	.rodata
.LC129:
	.string	"getpwuid"
	.text
	.globl	Perl_pp_gpwuid
	.type	Perl_pp_gpwuid, @function
Perl_pp_gpwuid:
.LFB148:
	.loc 1 5188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5192 0
	movl	$.LC129, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5194 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	Perl_pp_gpwuid, .-Perl_pp_gpwuid
	.section	.rodata
.LC130:
	.string	"getpwent"
	.text
	.globl	Perl_pp_gpwent
	.type	Perl_pp_gpwent, @function
Perl_pp_gpwent:
.LFB149:
	.loc 1 5197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5429 0
	movl	$.LC130, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5431 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	Perl_pp_gpwent, .-Perl_pp_gpwent
	.section	.rodata
.LC131:
	.string	"setpwent"
	.text
	.globl	Perl_pp_spwent
	.type	Perl_pp_spwent, @function
Perl_pp_spwent:
.LFB150:
	.loc 1 5434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5440 0
	movl	$.LC131, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5442 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	Perl_pp_spwent, .-Perl_pp_spwent
	.section	.rodata
.LC132:
	.string	"endpwent"
	.text
	.globl	Perl_pp_epwent
	.type	Perl_pp_epwent, @function
Perl_pp_epwent:
.LFB151:
	.loc 1 5445 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5451 0
	movl	$.LC132, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5453 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	Perl_pp_epwent, .-Perl_pp_epwent
	.section	.rodata
.LC133:
	.string	"getgrnam"
	.text
	.globl	Perl_pp_ggrnam
	.type	Perl_pp_ggrnam, @function
Perl_pp_ggrnam:
.LFB152:
	.loc 1 5456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5460 0
	movl	$.LC133, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5462 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	Perl_pp_ggrnam, .-Perl_pp_ggrnam
	.section	.rodata
.LC134:
	.string	"getgrgid"
	.text
	.globl	Perl_pp_ggrgid
	.type	Perl_pp_ggrgid, @function
Perl_pp_ggrgid:
.LFB153:
	.loc 1 5465 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5469 0
	movl	$.LC134, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5471 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	Perl_pp_ggrgid, .-Perl_pp_ggrgid
	.section	.rodata
.LC135:
	.string	"getgrent"
	.text
	.globl	Perl_pp_ggrent
	.type	Perl_pp_ggrent, @function
Perl_pp_ggrent:
.LFB154:
	.loc 1 5474 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5542 0
	movl	$.LC135, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5544 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	Perl_pp_ggrent, .-Perl_pp_ggrent
	.section	.rodata
.LC136:
	.string	"setgrent"
	.text
	.globl	Perl_pp_sgrent
	.type	Perl_pp_sgrent, @function
Perl_pp_sgrent:
.LFB155:
	.loc 1 5547 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5553 0
	movl	$.LC136, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5555 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	Perl_pp_sgrent, .-Perl_pp_sgrent
	.section	.rodata
.LC137:
	.string	"endgrent"
	.text
	.globl	Perl_pp_egrent
	.type	Perl_pp_egrent, @function
Perl_pp_egrent:
.LFB156:
	.loc 1 5558 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5564 0
	movl	$.LC137, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5566 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	Perl_pp_egrent, .-Perl_pp_egrent
	.section	.rodata
.LC138:
	.string	"getlogin"
	.text
	.globl	Perl_pp_getlogin
	.type	Perl_pp_getlogin, @function
Perl_pp_getlogin:
.LFB157:
	.loc 1 5569 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5579 0
	movl	$.LC138, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5581 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	Perl_pp_getlogin, .-Perl_pp_getlogin
	.section	.rodata
.LC139:
	.string	"syscall"
	.text
	.globl	Perl_pp_syscall
	.type	Perl_pp_syscall, @function
Perl_pp_syscall:
.LFB158:
	.loc 1 5586 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5678 0
	movl	$.LC139, %esi	#,
	movl	$PL_no_func, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 5680 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	Perl_pp_syscall, .-Perl_pp_syscall
	.section	.rodata
.LC140:
	.string	"Jan"
.LC141:
	.string	"Feb"
.LC142:
	.string	"Mar"
.LC143:
	.string	"Apr"
.LC144:
	.string	"May"
.LC145:
	.string	"Jun"
.LC146:
	.string	"Jul"
.LC147:
	.string	"Aug"
.LC148:
	.string	"Sep"
.LC149:
	.string	"Oct"
.LC150:
	.string	"Nov"
.LC151:
	.string	"Dec"
	.data
	.align 32
	.type	monname.11577, @object
	.size	monname.11577, 96
monname.11577:
	.quad	.LC140
	.quad	.LC141
	.quad	.LC142
	.quad	.LC143
	.quad	.LC144
	.quad	.LC145
	.quad	.LC146
	.quad	.LC147
	.quad	.LC148
	.quad	.LC149
	.quad	.LC150
	.quad	.LC151
	.section	.rodata
.LC152:
	.string	"Sun"
.LC153:
	.string	"Mon"
.LC154:
	.string	"Tue"
.LC155:
	.string	"Wed"
.LC156:
	.string	"Thu"
.LC157:
	.string	"Fri"
.LC158:
	.string	"Sat"
	.data
	.align 32
	.type	dayname.11576, @object
	.size	dayname.11576, 56
dayname.11576:
	.quad	.LC152
	.quad	.LC153
	.quad	.LC154
	.quad	.LC155
	.quad	.LC156
	.quad	.LC157
	.quad	.LC158
	.section	.rodata
	.align 8
.LC34:
	.long	0
	.long	1093567616
	.align 8
.LC74:
	.long	0
	.long	1089804288
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 8 "/usr/include/unistd.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 10 "/usr/include/dirent.h"
	.file 11 "perl.h"
	.file 12 "op.h"
	.file 13 "cop.h"
	.file 14 "sv.h"
	.file 15 "regexp.h"
	.file 16 "gv.h"
	.file 17 "mg.h"
	.file 18 "av.h"
	.file 19 "hv.h"
	.file 20 "cv.h"
	.file 21 "handy.h"
	.file 22 "perlio.h"
	.file 23 "iperlsys.h"
	.file 24 "pad.h"
	.file 25 "utf8.h"
	.file 26 "opcode.h"
	.file 27 "intrpvar.h"
	.file 28 "thrdvar.h"
	.file 29 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x580f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1089
	.byte	0x1
	.long	.LASF1090
	.long	.LASF1091
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
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0x96
	.long	0x5e
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF20
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF21
	.byte	0x2
	.byte	0xb8
	.long	0x5e
	.uleb128 0x8
	.byte	0x8
	.long	0x11e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0x4
	.long	.LASF23
	.byte	0x2
	.byte	0xc6
	.long	0x3b
	.uleb128 0x4
	.long	.LASF24
	.byte	0x3
	.byte	0x46
	.long	0x91
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3
	.byte	0x50
	.long	0x70
	.uleb128 0x4
	.long	.LASF26
	.byte	0x3
	.byte	0x56
	.long	0xa7
	.uleb128 0x4
	.long	.LASF27
	.byte	0x3
	.byte	0x62
	.long	0xb2
	.uleb128 0x4
	.long	.LASF28
	.byte	0x3
	.byte	0x6d
	.long	0x102
	.uleb128 0x4
	.long	.LASF29
	.byte	0x4
	.byte	0x4b
	.long	0xd4
	.uleb128 0x4
	.long	.LASF30
	.byte	0x5
	.byte	0xd4
	.long	0x42
	.uleb128 0x9
	.long	.LASF33
	.byte	0x10
	.byte	0x4
	.byte	0x78
	.long	0x1a2
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.byte	0x7a
	.long	0xd4
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.byte	0x7b
	.long	0x10d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.long	0x1c7
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x20
	.long	0xd4
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x21
	.long	0xdf
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x7
	.byte	0x36
	.long	0x5e
	.uleb128 0xb
	.byte	0x80
	.byte	0x7
	.byte	0x40
	.long	0x1e7
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x48
	.long	0x1e7
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x1c7
	.long	0x1f7
	.uleb128 0x6
	.long	0xcd
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x7
	.byte	0x4b
	.long	0x1d2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF39
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF40
	.uleb128 0x8
	.byte	0x8
	.long	0x216
	.uleb128 0xc
	.long	0x11e
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.value	0x112
	.long	0x125
	.uleb128 0x9
	.long	.LASF42
	.byte	0x90
	.byte	0x9
	.byte	0x2e
	.long	0x2e8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x9
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0xa
	.long	.LASF45
	.byte	0x9
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF46
	.byte	0x9
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0xa
	.long	.LASF47
	.byte	0x9
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF48
	.byte	0x9
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF50
	.byte	0x9
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0xa
	.long	.LASF51
	.byte	0x9
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0xa
	.long	.LASF52
	.byte	0x9
	.byte	0x4e
	.long	0xec
	.byte	0x38
	.uleb128 0xa
	.long	.LASF53
	.byte	0x9
	.byte	0x50
	.long	0xf7
	.byte	0x40
	.uleb128 0xa
	.long	.LASF54
	.byte	0x9
	.byte	0x5b
	.long	0x17d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF55
	.byte	0x9
	.byte	0x5c
	.long	0x17d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x5d
	.long	0x17d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x6a
	.long	0x2e8
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x10d
	.long	0x2f8
	.uleb128 0x6
	.long	0xcd
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"tm"
	.byte	0x38
	.byte	0x4
	.byte	0x85
	.long	0x388
	.uleb128 0xa
	.long	.LASF58
	.byte	0x4
	.byte	0x87
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x4
	.byte	0x88
	.long	0x57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF60
	.byte	0x4
	.byte	0x89
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF61
	.byte	0x4
	.byte	0x8a
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF62
	.byte	0x4
	.byte	0x8b
	.long	0x57
	.byte	0x10
	.uleb128 0xa
	.long	.LASF63
	.byte	0x4
	.byte	0x8c
	.long	0x57
	.byte	0x14
	.uleb128 0xa
	.long	.LASF64
	.byte	0x4
	.byte	0x8d
	.long	0x57
	.byte	0x18
	.uleb128 0xa
	.long	.LASF65
	.byte	0x4
	.byte	0x8e
	.long	0x57
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF66
	.byte	0x4
	.byte	0x8f
	.long	0x57
	.byte	0x20
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.byte	0x92
	.long	0x5e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF68
	.byte	0x4
	.byte	0x93
	.long	0x210
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	0x11e
	.long	0x398
	.uleb128 0x6
	.long	0xcd
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.string	"DIR"
	.byte	0xa
	.byte	0x80
	.long	0x3a3
	.uleb128 0x10
	.long	.LASF263
	.uleb128 0x11
	.string	"IV"
	.byte	0xb
	.value	0x52b
	.long	0x5e
	.uleb128 0x11
	.string	"UV"
	.byte	0xb
	.value	0x52c
	.long	0x42
	.uleb128 0x11
	.string	"NV"
	.byte	0xb
	.value	0x5f3
	.long	0x3c9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF69
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.value	0x7d3
	.long	0x172
	.uleb128 0x11
	.string	"OP"
	.byte	0xb
	.value	0x7d5
	.long	0x3e7
	.uleb128 0xe
	.string	"op"
	.byte	0x28
	.byte	0xc
	.byte	0xe2
	.long	0x453
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0xe3
	.long	0x14ce
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0xe3
	.long	0x14ce
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0xe3
	.long	0x1ed1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0xe3
	.long	0x1547
	.byte	0x18
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0xe3
	.long	0x1324
	.byte	0x20
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0xe3
	.long	0x1324
	.byte	0x22
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0xe3
	.long	0x131a
	.byte	0x24
	.uleb128 0xa
	.long	.LASF78
	.byte	0xc
	.byte	0xe3
	.long	0x131a
	.byte	0x25
	.byte	0
	.uleb128 0x11
	.string	"COP"
	.byte	0xb
	.value	0x7d6
	.long	0x45f
	.uleb128 0xe
	.string	"cop"
	.byte	0x60
	.byte	0xd
	.byte	0x10
	.long	0x52c
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0x11
	.long	0x14ce
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x11
	.long	0x14ce
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xd
	.byte	0x11
	.long	0x1ed1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF74
	.byte	0xd
	.byte	0x11
	.long	0x1547
	.byte	0x18
	.uleb128 0xa
	.long	.LASF75
	.byte	0xd
	.byte	0x11
	.long	0x1324
	.byte	0x20
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x11
	.long	0x1324
	.byte	0x22
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x11
	.long	0x131a
	.byte	0x24
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x11
	.long	0x131a
	.byte	0x25
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x12
	.long	0x118
	.byte	0x28
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0x17
	.long	0x14b6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF81
	.byte	0xd
	.byte	0x18
	.long	0x14eb
	.byte	0x38
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd
	.byte	0x1a
	.long	0x133a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0x1b
	.long	0x132f
	.byte	0x44
	.uleb128 0xa
	.long	.LASF84
	.byte	0xd
	.byte	0x1c
	.long	0x1345
	.byte	0x48
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0x1d
	.long	0x1362
	.byte	0x50
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x1e
	.long	0x1362
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF87
	.byte	0xb
	.value	0x7db
	.long	0x538
	.uleb128 0x9
	.long	.LASF88
	.byte	0x70
	.byte	0xc
	.byte	0xfd
	.long	0x626
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0xfe
	.long	0x14ce
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0xfe
	.long	0x14ce
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0xfe
	.long	0x1ed1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0xfe
	.long	0x1547
	.byte	0x18
	.uleb128 0xa
	.long	.LASF75
	.byte	0xc
	.byte	0xfe
	.long	0x1324
	.byte	0x20
	.uleb128 0xa
	.long	.LASF76
	.byte	0xc
	.byte	0xfe
	.long	0x1324
	.byte	0x22
	.uleb128 0xa
	.long	.LASF77
	.byte	0xc
	.byte	0xfe
	.long	0x131a
	.byte	0x24
	.uleb128 0xa
	.long	.LASF78
	.byte	0xc
	.byte	0xfe
	.long	0x131a
	.byte	0x25
	.uleb128 0xa
	.long	.LASF89
	.byte	0xc
	.byte	0xff
	.long	0x14ce
	.byte	0x28
	.uleb128 0x12
	.long	.LASF90
	.byte	0xc
	.value	0x100
	.long	0x14ce
	.byte	0x30
	.uleb128 0x12
	.long	.LASF91
	.byte	0xc
	.value	0x101
	.long	0x14ce
	.byte	0x38
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.value	0x102
	.long	0x14ce
	.byte	0x40
	.uleb128 0x12
	.long	.LASF93
	.byte	0xc
	.value	0x103
	.long	0x1ed7
	.byte	0x48
	.uleb128 0x12
	.long	.LASF94
	.byte	0xc
	.value	0x107
	.long	0x1edd
	.byte	0x50
	.uleb128 0x12
	.long	.LASF95
	.byte	0xc
	.value	0x109
	.long	0x133a
	.byte	0x58
	.uleb128 0x12
	.long	.LASF96
	.byte	0xc
	.value	0x10a
	.long	0x133a
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF97
	.byte	0xc
	.value	0x10b
	.long	0x131a
	.byte	0x60
	.uleb128 0x12
	.long	.LASF98
	.byte	0xc
	.value	0x10f
	.long	0x14b6
	.byte	0x68
	.byte	0
	.uleb128 0xd
	.long	.LASF99
	.byte	0xb
	.value	0x7dc
	.long	0x632
	.uleb128 0x13
	.long	.LASF100
	.byte	0x30
	.byte	0xc
	.value	0x14c
	.long	0x6b5
	.uleb128 0x12
	.long	.LASF71
	.byte	0xc
	.value	0x14d
	.long	0x14ce
	.byte	0
	.uleb128 0x12
	.long	.LASF72
	.byte	0xc
	.value	0x14d
	.long	0x14ce
	.byte	0x8
	.uleb128 0x12
	.long	.LASF73
	.byte	0xc
	.value	0x14d
	.long	0x1ed1
	.byte	0x10
	.uleb128 0x12
	.long	.LASF74
	.byte	0xc
	.value	0x14d
	.long	0x1547
	.byte	0x18
	.uleb128 0x12
	.long	.LASF75
	.byte	0xc
	.value	0x14d
	.long	0x1324
	.byte	0x20
	.uleb128 0x12
	.long	.LASF76
	.byte	0xc
	.value	0x14d
	.long	0x1324
	.byte	0x22
	.uleb128 0x12
	.long	.LASF77
	.byte	0xc
	.value	0x14d
	.long	0x131a
	.byte	0x24
	.uleb128 0x12
	.long	.LASF78
	.byte	0xc
	.value	0x14d
	.long	0x131a
	.byte	0x25
	.uleb128 0x12
	.long	.LASF101
	.byte	0xc
	.value	0x14e
	.long	0x1362
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	.LASF102
	.byte	0xb
	.value	0x7e1
	.long	0x6c1
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.byte	0xb
	.value	0xea7
	.long	0x6dc
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0xea8
	.long	0x11e
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"SV"
	.byte	0xb
	.value	0x7ea
	.long	0x6e7
	.uleb128 0xe
	.string	"sv"
	.byte	0x10
	.byte	0xe
	.byte	0x43
	.long	0x717
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x44
	.long	0xea
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x45
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x46
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"AV"
	.byte	0xb
	.value	0x7eb
	.long	0x722
	.uleb128 0xe
	.string	"av"
	.byte	0x10
	.byte	0xe
	.byte	0x55
	.long	0x752
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x56
	.long	0x149e
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x57
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x58
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"HV"
	.byte	0xb
	.value	0x7ec
	.long	0x75d
	.uleb128 0xe
	.string	"hv"
	.byte	0x10
	.byte	0xe
	.byte	0x5b
	.long	0x78d
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x5c
	.long	0x14a4
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x5d
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x5e
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"CV"
	.byte	0xb
	.value	0x7ed
	.long	0x798
	.uleb128 0xe
	.string	"cv"
	.byte	0x10
	.byte	0xe
	.byte	0x4f
	.long	0x7c8
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x50
	.long	0x1498
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x51
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x52
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF108
	.byte	0xb
	.value	0x7ee
	.long	0x7d4
	.uleb128 0x9
	.long	.LASF109
	.byte	0x68
	.byte	0xf
	.byte	0x1f
	.long	0x8ad
	.uleb128 0xa
	.long	.LASF110
	.byte	0xf
	.byte	0x20
	.long	0x13f1
	.byte	0
	.uleb128 0xa
	.long	.LASF111
	.byte	0xf
	.byte	0x21
	.long	0x13f1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF112
	.byte	0xf
	.byte	0x22
	.long	0x13f7
	.byte	0x10
	.uleb128 0xa
	.long	.LASF113
	.byte	0xf
	.byte	0x23
	.long	0x1402
	.byte	0x18
	.uleb128 0xa
	.long	.LASF114
	.byte	0xf
	.byte	0x24
	.long	0x118
	.byte	0x20
	.uleb128 0xa
	.long	.LASF115
	.byte	0xf
	.byte	0x25
	.long	0x140d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF116
	.byte	0xf
	.byte	0x26
	.long	0x118
	.byte	0x30
	.uleb128 0xa
	.long	.LASF117
	.byte	0xf
	.byte	0x28
	.long	0x1413
	.byte	0x38
	.uleb128 0xa
	.long	.LASF118
	.byte	0xf
	.byte	0x29
	.long	0x132f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF119
	.byte	0xf
	.byte	0x2a
	.long	0x132f
	.byte	0x44
	.uleb128 0xa
	.long	.LASF120
	.byte	0xf
	.byte	0x2b
	.long	0x132f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF121
	.byte	0xf
	.byte	0x2c
	.long	0x132f
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF122
	.byte	0xf
	.byte	0x2d
	.long	0x133a
	.byte	0x50
	.uleb128 0xa
	.long	.LASF123
	.byte	0xf
	.byte	0x2e
	.long	0x133a
	.byte	0x54
	.uleb128 0xa
	.long	.LASF124
	.byte	0xf
	.byte	0x2f
	.long	0x133a
	.byte	0x58
	.uleb128 0xa
	.long	.LASF125
	.byte	0xf
	.byte	0x30
	.long	0x133a
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF126
	.byte	0xf
	.byte	0x32
	.long	0x1419
	.byte	0x60
	.byte	0
	.uleb128 0x11
	.string	"GP"
	.byte	0xb
	.value	0x7ef
	.long	0x8b8
	.uleb128 0xe
	.string	"gp"
	.byte	0x58
	.byte	0x10
	.byte	0xb
	.long	0x954
	.uleb128 0xa
	.long	.LASF127
	.byte	0x10
	.byte	0xc
	.long	0x1362
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x10
	.byte	0xd
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF129
	.byte	0x10
	.byte	0xe
	.long	0x152b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF130
	.byte	0x10
	.byte	0xf
	.long	0x14df
	.byte	0x18
	.uleb128 0xa
	.long	.LASF131
	.byte	0x10
	.byte	0x10
	.long	0x14f1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF132
	.byte	0x10
	.byte	0x11
	.long	0x14b6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF133
	.byte	0x10
	.byte	0x12
	.long	0x14eb
	.byte	0x30
	.uleb128 0xa
	.long	.LASF134
	.byte	0x10
	.byte	0x13
	.long	0x14df
	.byte	0x38
	.uleb128 0xa
	.long	.LASF135
	.byte	0x10
	.byte	0x14
	.long	0x133a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF136
	.byte	0x10
	.byte	0x15
	.long	0x133a
	.byte	0x44
	.uleb128 0xa
	.long	.LASF137
	.byte	0x10
	.byte	0x16
	.long	0x1345
	.byte	0x48
	.uleb128 0xa
	.long	.LASF138
	.byte	0x10
	.byte	0x17
	.long	0x118
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.string	"GV"
	.byte	0xb
	.value	0x7f0
	.long	0x95f
	.uleb128 0xe
	.string	"gv"
	.byte	0x10
	.byte	0xe
	.byte	0x49
	.long	0x98f
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x4a
	.long	0x1492
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x4b
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x4c
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.string	"IO"
	.byte	0xb
	.value	0x7f1
	.long	0x99a
	.uleb128 0xe
	.string	"io"
	.byte	0x10
	.byte	0xe
	.byte	0x61
	.long	0x9ca
	.uleb128 0xa
	.long	.LASF105
	.byte	0xe
	.byte	0x62
	.long	0x14aa
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x63
	.long	0x133a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0xe
	.byte	0x64
	.long	0x133a
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF139
	.byte	0xb
	.value	0x7f2
	.long	0x9d6
	.uleb128 0x13
	.long	.LASF140
	.byte	0x90
	.byte	0xd
	.value	0x1a2
	.long	0x9fe
	.uleb128 0x12
	.long	.LASF141
	.byte	0xd
	.value	0x1a3
	.long	0x133a
	.byte	0
	.uleb128 0x12
	.long	.LASF142
	.byte	0xd
	.value	0x1a7
	.long	0x2144
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF143
	.byte	0x88
	.byte	0xd
	.value	0x130
	.long	0xa74
	.uleb128 0x12
	.long	.LASF144
	.byte	0xd
	.value	0x131
	.long	0x132f
	.byte	0
	.uleb128 0x12
	.long	.LASF145
	.byte	0xd
	.value	0x132
	.long	0x207a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF146
	.byte	0xd
	.value	0x133
	.long	0x132f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF147
	.byte	0xd
	.value	0x134
	.long	0x132f
	.byte	0x14
	.uleb128 0x12
	.long	.LASF148
	.byte	0xd
	.value	0x135
	.long	0x132f
	.byte	0x18
	.uleb128 0x12
	.long	.LASF149
	.byte	0xd
	.value	0x136
	.long	0x1ed7
	.byte	0x20
	.uleb128 0x12
	.long	.LASF150
	.byte	0xd
	.value	0x137
	.long	0x131a
	.byte	0x28
	.uleb128 0x12
	.long	.LASF151
	.byte	0xd
	.value	0x13d
	.long	0x204c
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF152
	.byte	0xb
	.value	0x7f5
	.long	0xa80
	.uleb128 0x9
	.long	.LASF153
	.byte	0x30
	.byte	0x11
	.byte	0x1a
	.long	0xaed
	.uleb128 0xa
	.long	.LASF154
	.byte	0x11
	.byte	0x1b
	.long	0x14b0
	.byte	0
	.uleb128 0xa
	.long	.LASF155
	.byte	0x11
	.byte	0x1c
	.long	0x22f3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF156
	.byte	0x11
	.byte	0x1d
	.long	0x1324
	.byte	0x10
	.uleb128 0xa
	.long	.LASF157
	.byte	0x11
	.byte	0x1e
	.long	0x11e
	.byte	0x12
	.uleb128 0xa
	.long	.LASF158
	.byte	0x11
	.byte	0x1f
	.long	0x131a
	.byte	0x13
	.uleb128 0xa
	.long	.LASF159
	.byte	0x11
	.byte	0x20
	.long	0x1362
	.byte	0x18
	.uleb128 0xa
	.long	.LASF160
	.byte	0x11
	.byte	0x21
	.long	0x118
	.byte	0x20
	.uleb128 0xa
	.long	.LASF161
	.byte	0x11
	.byte	0x22
	.long	0x132f
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.string	"XRV"
	.byte	0xb
	.value	0x7f6
	.long	0xaf9
	.uleb128 0xe
	.string	"xrv"
	.byte	0x8
	.byte	0xe
	.byte	0xf5
	.long	0xb12
	.uleb128 0xa
	.long	.LASF162
	.byte	0xe
	.byte	0xf6
	.long	0x1362
	.byte	0
	.byte	0
	.uleb128 0x11
	.string	"XPV"
	.byte	0xb
	.value	0x7f7
	.long	0xb1e
	.uleb128 0xe
	.string	"xpv"
	.byte	0x18
	.byte	0xe
	.byte	0xf9
	.long	0xb4f
	.uleb128 0xa
	.long	.LASF163
	.byte	0xe
	.byte	0xfa
	.long	0x118
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0xe
	.byte	0xfb
	.long	0x3d0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF165
	.byte	0xe
	.byte	0xfc
	.long	0x3d0
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF166
	.byte	0xb
	.value	0x7f8
	.long	0xb5b
	.uleb128 0x9
	.long	.LASF167
	.byte	0x20
	.byte	0xe
	.byte	0xff
	.long	0xb9c
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x100
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x101
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x102
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x103
	.long	0x3a8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF169
	.byte	0xb
	.value	0x7f9
	.long	0xba8
	.uleb128 0x13
	.long	.LASF170
	.byte	0x20
	.byte	0xe
	.value	0x106
	.long	0xbea
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x107
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x108
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x109
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF171
	.byte	0xe
	.value	0x10a
	.long	0x3b3
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF172
	.byte	0xb
	.value	0x7fa
	.long	0xbf6
	.uleb128 0x13
	.long	.LASF173
	.byte	0x28
	.byte	0xe
	.value	0x10d
	.long	0xc45
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x10e
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x10f
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x110
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x111
	.long	0x3a8
	.byte	0x18
	.uleb128 0x12
	.long	.LASF174
	.byte	0xe
	.value	0x112
	.long	0x3be
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.long	.LASF175
	.byte	0xb
	.value	0x7fb
	.long	0xc51
	.uleb128 0x13
	.long	.LASF176
	.byte	0x38
	.byte	0xe
	.value	0x116
	.long	0xcba
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x117
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x118
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x119
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x11a
	.long	0x3a8
	.byte	0x18
	.uleb128 0x12
	.long	.LASF174
	.byte	0xe
	.value	0x11b
	.long	0x3be
	.byte	0x20
	.uleb128 0x12
	.long	.LASF177
	.byte	0xe
	.value	0x11c
	.long	0x14b0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF178
	.byte	0xe
	.value	0x11d
	.long	0x14b6
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF179
	.byte	0xb
	.value	0x7fd
	.long	0xcc6
	.uleb128 0x9
	.long	.LASF180
	.byte	0x50
	.byte	0x12
	.byte	0xb
	.long	0xd4b
	.uleb128 0xa
	.long	.LASF181
	.byte	0x12
	.byte	0xc
	.long	0x118
	.byte	0
	.uleb128 0xa
	.long	.LASF182
	.byte	0x12
	.byte	0xd
	.long	0x15c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF183
	.byte	0x12
	.byte	0xe
	.long	0x15c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF184
	.byte	0x12
	.byte	0xf
	.long	0x3a8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF174
	.byte	0x12
	.byte	0x10
	.long	0x3be
	.byte	0x20
	.uleb128 0xa
	.long	.LASF177
	.byte	0x12
	.byte	0x11
	.long	0x14b0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF178
	.byte	0x12
	.byte	0x12
	.long	0x14b6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF185
	.byte	0x12
	.byte	0x14
	.long	0x2046
	.byte	0x38
	.uleb128 0xa
	.long	.LASF186
	.byte	0x12
	.byte	0x15
	.long	0x1362
	.byte	0x40
	.uleb128 0xa
	.long	.LASF187
	.byte	0x12
	.byte	0x16
	.long	0x131a
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.long	.LASF188
	.byte	0xb
	.value	0x7fe
	.long	0xd57
	.uleb128 0x9
	.long	.LASF189
	.byte	0x58
	.byte	0x13
	.byte	0x22
	.long	0xde8
	.uleb128 0xa
	.long	.LASF190
	.byte	0x13
	.byte	0x23
	.long	0x118
	.byte	0
	.uleb128 0xa
	.long	.LASF191
	.byte	0x13
	.byte	0x24
	.long	0x3d0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF192
	.byte	0x13
	.byte	0x25
	.long	0x3d0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF193
	.byte	0x13
	.byte	0x26
	.long	0x3a8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF174
	.byte	0x13
	.byte	0x27
	.long	0x3be
	.byte	0x20
	.uleb128 0xa
	.long	.LASF177
	.byte	0x13
	.byte	0x29
	.long	0x14b0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF178
	.byte	0x13
	.byte	0x2a
	.long	0x14b6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF194
	.byte	0x13
	.byte	0x2c
	.long	0x132f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF195
	.byte	0x13
	.byte	0x2d
	.long	0x226a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF196
	.byte	0x13
	.byte	0x2e
	.long	0x1ed7
	.byte	0x48
	.uleb128 0xa
	.long	.LASF197
	.byte	0x13
	.byte	0x2f
	.long	0x118
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF198
	.byte	0xb
	.value	0x7ff
	.long	0xdf4
	.uleb128 0x13
	.long	.LASF199
	.byte	0x60
	.byte	0xe
	.value	0x130
	.long	0xe9e
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x131
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x132
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x133
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x134
	.long	0x3a8
	.byte	0x18
	.uleb128 0x12
	.long	.LASF174
	.byte	0xe
	.value	0x135
	.long	0x3be
	.byte	0x20
	.uleb128 0x12
	.long	.LASF177
	.byte	0xe
	.value	0x136
	.long	0x14b0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF178
	.byte	0xe
	.value	0x137
	.long	0x14b6
	.byte	0x30
	.uleb128 0x12
	.long	.LASF200
	.byte	0xe
	.value	0x139
	.long	0x14bc
	.byte	0x38
	.uleb128 0x12
	.long	.LASF201
	.byte	0xe
	.value	0x13a
	.long	0x118
	.byte	0x40
	.uleb128 0x12
	.long	.LASF202
	.byte	0xe
	.value	0x13b
	.long	0x3d0
	.byte	0x48
	.uleb128 0x12
	.long	.LASF203
	.byte	0xe
	.value	0x13c
	.long	0x14b6
	.byte	0x50
	.uleb128 0x12
	.long	.LASF204
	.byte	0xe
	.value	0x13d
	.long	0x131a
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF205
	.byte	0xb
	.value	0x800
	.long	0xeaa
	.uleb128 0x9
	.long	.LASF206
	.byte	0x90
	.byte	0x14
	.byte	0xe
	.long	0xf9b
	.uleb128 0xa
	.long	.LASF163
	.byte	0x14
	.byte	0xf
	.long	0x118
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0x14
	.byte	0x10
	.long	0x3d0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF165
	.byte	0x14
	.byte	0x11
	.long	0x3d0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF184
	.byte	0x14
	.byte	0x12
	.long	0x3a8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF174
	.byte	0x14
	.byte	0x13
	.long	0x3be
	.byte	0x20
	.uleb128 0xa
	.long	.LASF177
	.byte	0x14
	.byte	0x14
	.long	0x14b0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF178
	.byte	0x14
	.byte	0x15
	.long	0x14b6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF207
	.byte	0x14
	.byte	0x17
	.long	0x14b6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF208
	.byte	0x14
	.byte	0x18
	.long	0x14ce
	.byte	0x40
	.uleb128 0xa
	.long	.LASF209
	.byte	0x14
	.byte	0x19
	.long	0x14ce
	.byte	0x48
	.uleb128 0xa
	.long	.LASF210
	.byte	0x14
	.byte	0x1a
	.long	0x14e5
	.byte	0x50
	.uleb128 0xa
	.long	.LASF211
	.byte	0x14
	.byte	0x1b
	.long	0x126b
	.byte	0x58
	.uleb128 0xa
	.long	.LASF212
	.byte	0x14
	.byte	0x1c
	.long	0x14eb
	.byte	0x60
	.uleb128 0xa
	.long	.LASF213
	.byte	0x14
	.byte	0x1d
	.long	0x118
	.byte	0x68
	.uleb128 0xa
	.long	.LASF214
	.byte	0x14
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF215
	.byte	0x14
	.byte	0x1f
	.long	0x1552
	.byte	0x78
	.uleb128 0xa
	.long	.LASF216
	.byte	0x14
	.byte	0x20
	.long	0x14df
	.byte	0x80
	.uleb128 0xa
	.long	.LASF217
	.byte	0x14
	.byte	0x25
	.long	0x14c2
	.byte	0x88
	.uleb128 0xa
	.long	.LASF218
	.byte	0x14
	.byte	0x26
	.long	0x133a
	.byte	0x8c
	.byte	0
	.uleb128 0xd
	.long	.LASF219
	.byte	0xb
	.value	0x802
	.long	0xfa7
	.uleb128 0x13
	.long	.LASF220
	.byte	0x98
	.byte	0xe
	.value	0x152
	.long	0x10b9
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x153
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x154
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x155
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x156
	.long	0x3a8
	.byte	0x18
	.uleb128 0x12
	.long	.LASF174
	.byte	0xe
	.value	0x157
	.long	0x3be
	.byte	0x20
	.uleb128 0x12
	.long	.LASF177
	.byte	0xe
	.value	0x158
	.long	0x14b0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF178
	.byte	0xe
	.value	0x159
	.long	0x14b6
	.byte	0x30
	.uleb128 0x12
	.long	.LASF207
	.byte	0xe
	.value	0x15b
	.long	0x14b6
	.byte	0x38
	.uleb128 0x12
	.long	.LASF208
	.byte	0xe
	.value	0x15c
	.long	0x14ce
	.byte	0x40
	.uleb128 0x12
	.long	.LASF209
	.byte	0xe
	.value	0x15d
	.long	0x14ce
	.byte	0x48
	.uleb128 0x12
	.long	.LASF210
	.byte	0xe
	.value	0x15e
	.long	0x14e5
	.byte	0x50
	.uleb128 0x12
	.long	.LASF211
	.byte	0xe
	.value	0x15f
	.long	0x126b
	.byte	0x58
	.uleb128 0x12
	.long	.LASF212
	.byte	0xe
	.value	0x160
	.long	0x14eb
	.byte	0x60
	.uleb128 0x12
	.long	.LASF213
	.byte	0xe
	.value	0x161
	.long	0x118
	.byte	0x68
	.uleb128 0x12
	.long	.LASF214
	.byte	0xe
	.value	0x162
	.long	0x5e
	.byte	0x70
	.uleb128 0x12
	.long	.LASF215
	.byte	0xe
	.value	0x163
	.long	0x14f1
	.byte	0x78
	.uleb128 0x12
	.long	.LASF216
	.byte	0xe
	.value	0x164
	.long	0x14df
	.byte	0x80
	.uleb128 0x12
	.long	.LASF217
	.byte	0xe
	.value	0x169
	.long	0x14c2
	.byte	0x88
	.uleb128 0x12
	.long	.LASF218
	.byte	0xe
	.value	0x16a
	.long	0x133a
	.byte	0x8c
	.uleb128 0x12
	.long	.LASF221
	.byte	0xe
	.value	0x16d
	.long	0x3a8
	.byte	0x90
	.byte	0
	.uleb128 0xd
	.long	.LASF222
	.byte	0xb
	.value	0x803
	.long	0x10c5
	.uleb128 0x13
	.long	.LASF223
	.byte	0xa8
	.byte	0xe
	.value	0x170
	.long	0x11fe
	.uleb128 0x12
	.long	.LASF163
	.byte	0xe
	.value	0x171
	.long	0x118
	.byte	0
	.uleb128 0x12
	.long	.LASF164
	.byte	0xe
	.value	0x172
	.long	0x3d0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF165
	.byte	0xe
	.value	0x173
	.long	0x3d0
	.byte	0x10
	.uleb128 0x12
	.long	.LASF168
	.byte	0xe
	.value	0x174
	.long	0x3a8
	.byte	0x18
	.uleb128 0x12
	.long	.LASF174
	.byte	0xe
	.value	0x175
	.long	0x3be
	.byte	0x20
	.uleb128 0x12
	.long	.LASF177
	.byte	0xe
	.value	0x176
	.long	0x14b0
	.byte	0x28
	.uleb128 0x12
	.long	.LASF178
	.byte	0xe
	.value	0x177
	.long	0x14b6
	.byte	0x30
	.uleb128 0x12
	.long	.LASF224
	.byte	0xe
	.value	0x179
	.long	0x151f
	.byte	0x38
	.uleb128 0x12
	.long	.LASF225
	.byte	0xe
	.value	0x17a
	.long	0x151f
	.byte	0x40
	.uleb128 0x12
	.long	.LASF226
	.byte	0xe
	.value	0x187
	.long	0x14f7
	.byte	0x48
	.uleb128 0x12
	.long	.LASF227
	.byte	0xe
	.value	0x188
	.long	0x3a8
	.byte	0x50
	.uleb128 0x12
	.long	.LASF228
	.byte	0xe
	.value	0x189
	.long	0x3a8
	.byte	0x58
	.uleb128 0x12
	.long	.LASF229
	.byte	0xe
	.value	0x18a
	.long	0x3a8
	.byte	0x60
	.uleb128 0x12
	.long	.LASF230
	.byte	0xe
	.value	0x18b
	.long	0x3a8
	.byte	0x68
	.uleb128 0x12
	.long	.LASF231
	.byte	0xe
	.value	0x18c
	.long	0x118
	.byte	0x70
	.uleb128 0x12
	.long	.LASF232
	.byte	0xe
	.value	0x18d
	.long	0x14eb
	.byte	0x78
	.uleb128 0x12
	.long	.LASF233
	.byte	0xe
	.value	0x18e
	.long	0x118
	.byte	0x80
	.uleb128 0x12
	.long	.LASF234
	.byte	0xe
	.value	0x18f
	.long	0x14eb
	.byte	0x88
	.uleb128 0x12
	.long	.LASF235
	.byte	0xe
	.value	0x190
	.long	0x118
	.byte	0x90
	.uleb128 0x12
	.long	.LASF236
	.byte	0xe
	.value	0x191
	.long	0x14eb
	.byte	0x98
	.uleb128 0x12
	.long	.LASF237
	.byte	0xe
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF238
	.byte	0xe
	.value	0x193
	.long	0x11e
	.byte	0xa2
	.uleb128 0x12
	.long	.LASF239
	.byte	0xe
	.value	0x194
	.long	0x11e
	.byte	0xa3
	.byte	0
	.uleb128 0xd
	.long	.LASF240
	.byte	0xb
	.value	0x804
	.long	0x120a
	.uleb128 0x9
	.long	.LASF241
	.byte	0x38
	.byte	0x11
	.byte	0xe
	.long	0x126b
	.uleb128 0xa
	.long	.LASF242
	.byte	0x11
	.byte	0xf
	.long	0x228a
	.byte	0
	.uleb128 0xa
	.long	.LASF243
	.byte	0x11
	.byte	0x10
	.long	0x228a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF244
	.byte	0x11
	.byte	0x11
	.long	0x22a4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF245
	.byte	0x11
	.byte	0x12
	.long	0x228a
	.byte	0x18
	.uleb128 0xa
	.long	.LASF246
	.byte	0x11
	.byte	0x13
	.long	0x228a
	.byte	0x20
	.uleb128 0xa
	.long	.LASF247
	.byte	0x11
	.byte	0x14
	.long	0x22cd
	.byte	0x28
	.uleb128 0xa
	.long	.LASF248
	.byte	0x11
	.byte	0x16
	.long	0x22ed
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.string	"ANY"
	.byte	0xb
	.value	0x805
	.long	0x1277
	.uleb128 0x14
	.string	"any"
	.byte	0x8
	.byte	0xb
	.value	0x9f1
	.long	0x12d9
	.uleb128 0x15
	.long	.LASF249
	.byte	0xb
	.value	0x9f2
	.long	0xea
	.uleb128 0x15
	.long	.LASF250
	.byte	0xb
	.value	0x9f3
	.long	0x132f
	.uleb128 0x15
	.long	.LASF251
	.byte	0xb
	.value	0x9f4
	.long	0x3a8
	.uleb128 0x15
	.long	.LASF252
	.byte	0xb
	.value	0x9f5
	.long	0x5e
	.uleb128 0x15
	.long	.LASF253
	.byte	0xb
	.value	0x9f6
	.long	0x11e
	.uleb128 0x15
	.long	.LASF254
	.byte	0xb
	.value	0x9f7
	.long	0x135c
	.uleb128 0x15
	.long	.LASF255
	.byte	0xb
	.value	0x9f8
	.long	0x135c
	.byte	0
	.uleb128 0xd
	.long	.LASF256
	.byte	0xb
	.value	0x808
	.long	0x12e5
	.uleb128 0x13
	.long	.LASF257
	.byte	0x18
	.byte	0xe
	.value	0x4ed
	.long	0x131a
	.uleb128 0x12
	.long	.LASF258
	.byte	0xe
	.value	0x4ee
	.long	0x14f1
	.byte	0
	.uleb128 0x12
	.long	.LASF259
	.byte	0xe
	.value	0x4ef
	.long	0x3b3
	.byte	0x8
	.uleb128 0x12
	.long	.LASF260
	.byte	0xe
	.value	0x4f0
	.long	0x1525
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"U8"
	.byte	0x15
	.byte	0x85
	.long	0x2d
	.uleb128 0xf
	.string	"U16"
	.byte	0x15
	.byte	0x87
	.long	0x34
	.uleb128 0xf
	.string	"I32"
	.byte	0x15
	.byte	0x88
	.long	0x57
	.uleb128 0xf
	.string	"U32"
	.byte	0x15
	.byte	0x89
	.long	0x3b
	.uleb128 0xd
	.long	.LASF261
	.byte	0x15
	.value	0x209
	.long	0x133a
	.uleb128 0x16
	.long	0x135c
	.uleb128 0x17
	.long	0xea
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1351
	.uleb128 0x8
	.byte	0x8
	.long	0x6dc
	.uleb128 0x5
	.long	0x11e
	.long	0x1378
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF262
	.byte	0x16
	.byte	0x63
	.long	0x1383
	.uleb128 0x10
	.long	.LASF264
	.uleb128 0x4
	.long	.LASF265
	.byte	0x16
	.byte	0x65
	.long	0x1393
	.uleb128 0x8
	.byte	0x8
	.long	0x1378
	.uleb128 0x4
	.long	.LASF266
	.byte	0x17
	.byte	0x36
	.long	0x13a4
	.uleb128 0x8
	.byte	0x8
	.long	0x13aa
	.uleb128 0x16
	.long	0x13b5
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF267
	.byte	0x4
	.byte	0xf
	.byte	0x13
	.long	0x13e6
	.uleb128 0xa
	.long	.LASF259
	.byte	0xf
	.byte	0x14
	.long	0x131a
	.byte	0
	.uleb128 0xa
	.long	.LASF268
	.byte	0xf
	.byte	0x15
	.long	0x131a
	.byte	0x1
	.uleb128 0xa
	.long	.LASF269
	.byte	0xf
	.byte	0x16
	.long	0x1324
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF267
	.byte	0xf
	.byte	0x19
	.long	0x13b5
	.uleb128 0x8
	.byte	0x8
	.long	0x132f
	.uleb128 0x8
	.byte	0x8
	.long	0x13e6
	.uleb128 0x10
	.long	.LASF270
	.uleb128 0x8
	.byte	0x8
	.long	0x13fd
	.uleb128 0x10
	.long	.LASF271
	.uleb128 0x8
	.byte	0x8
	.long	0x1408
	.uleb128 0x8
	.byte	0x8
	.long	0x133a
	.uleb128 0x5
	.long	0x13e6
	.long	0x1429
	.uleb128 0x6
	.long	0xcd
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x1492
	.uleb128 0x19
	.long	.LASF272
	.sleb128 0
	.uleb128 0x19
	.long	.LASF273
	.sleb128 1
	.uleb128 0x19
	.long	.LASF274
	.sleb128 2
	.uleb128 0x19
	.long	.LASF275
	.sleb128 3
	.uleb128 0x19
	.long	.LASF276
	.sleb128 4
	.uleb128 0x19
	.long	.LASF277
	.sleb128 5
	.uleb128 0x19
	.long	.LASF278
	.sleb128 6
	.uleb128 0x19
	.long	.LASF279
	.sleb128 7
	.uleb128 0x19
	.long	.LASF280
	.sleb128 8
	.uleb128 0x19
	.long	.LASF281
	.sleb128 9
	.uleb128 0x19
	.long	.LASF282
	.sleb128 10
	.uleb128 0x19
	.long	.LASF283
	.sleb128 11
	.uleb128 0x19
	.long	.LASF284
	.sleb128 12
	.uleb128 0x19
	.long	.LASF285
	.sleb128 13
	.uleb128 0x19
	.long	.LASF286
	.sleb128 14
	.uleb128 0x19
	.long	.LASF287
	.sleb128 15
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xde8
	.uleb128 0x8
	.byte	0x8
	.long	0xe9e
	.uleb128 0x8
	.byte	0x8
	.long	0xcba
	.uleb128 0x8
	.byte	0x8
	.long	0xd4b
	.uleb128 0x8
	.byte	0x8
	.long	0x10b9
	.uleb128 0x8
	.byte	0x8
	.long	0xa74
	.uleb128 0x8
	.byte	0x8
	.long	0x752
	.uleb128 0x8
	.byte	0x8
	.long	0x8ad
	.uleb128 0xd
	.long	.LASF288
	.byte	0xe
	.value	0x150
	.long	0x1324
	.uleb128 0x8
	.byte	0x8
	.long	0x3dc
	.uleb128 0x16
	.long	0x14df
	.uleb128 0x17
	.long	0x14df
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x78d
	.uleb128 0x8
	.byte	0x8
	.long	0x14d4
	.uleb128 0x8
	.byte	0x8
	.long	0x954
	.uleb128 0x8
	.byte	0x8
	.long	0x717
	.uleb128 0x1a
	.byte	0x8
	.byte	0xe
	.value	0x184
	.long	0x1519
	.uleb128 0x15
	.long	.LASF289
	.byte	0xe
	.value	0x185
	.long	0x1519
	.uleb128 0x15
	.long	.LASF290
	.byte	0xe
	.value	0x186
	.long	0xea
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x398
	.uleb128 0x8
	.byte	0x8
	.long	0x1388
	.uleb128 0x8
	.byte	0x8
	.long	0x6b5
	.uleb128 0x8
	.byte	0x8
	.long	0x99a
	.uleb128 0x4
	.long	.LASF291
	.byte	0x18
	.byte	0x13
	.long	0x717
	.uleb128 0xf
	.string	"PAD"
	.byte	0x18
	.byte	0x14
	.long	0x717
	.uleb128 0x4
	.long	.LASF292
	.byte	0x18
	.byte	0x1d
	.long	0x42
	.uleb128 0x8
	.byte	0x8
	.long	0x1531
	.uleb128 0x1b
	.long	.LASF1092
	.byte	0x4
	.byte	0x1d
	.byte	0xf
	.long	0x1ecc
	.uleb128 0x19
	.long	.LASF293
	.sleb128 0
	.uleb128 0x19
	.long	.LASF294
	.sleb128 1
	.uleb128 0x19
	.long	.LASF295
	.sleb128 2
	.uleb128 0x19
	.long	.LASF296
	.sleb128 3
	.uleb128 0x19
	.long	.LASF297
	.sleb128 4
	.uleb128 0x19
	.long	.LASF298
	.sleb128 5
	.uleb128 0x19
	.long	.LASF299
	.sleb128 6
	.uleb128 0x19
	.long	.LASF300
	.sleb128 7
	.uleb128 0x19
	.long	.LASF301
	.sleb128 8
	.uleb128 0x19
	.long	.LASF302
	.sleb128 9
	.uleb128 0x19
	.long	.LASF303
	.sleb128 10
	.uleb128 0x19
	.long	.LASF304
	.sleb128 11
	.uleb128 0x19
	.long	.LASF305
	.sleb128 12
	.uleb128 0x19
	.long	.LASF306
	.sleb128 13
	.uleb128 0x19
	.long	.LASF307
	.sleb128 14
	.uleb128 0x19
	.long	.LASF308
	.sleb128 15
	.uleb128 0x19
	.long	.LASF309
	.sleb128 16
	.uleb128 0x19
	.long	.LASF310
	.sleb128 17
	.uleb128 0x19
	.long	.LASF311
	.sleb128 18
	.uleb128 0x19
	.long	.LASF312
	.sleb128 19
	.uleb128 0x19
	.long	.LASF313
	.sleb128 20
	.uleb128 0x19
	.long	.LASF314
	.sleb128 21
	.uleb128 0x19
	.long	.LASF315
	.sleb128 22
	.uleb128 0x19
	.long	.LASF316
	.sleb128 23
	.uleb128 0x19
	.long	.LASF317
	.sleb128 24
	.uleb128 0x19
	.long	.LASF318
	.sleb128 25
	.uleb128 0x19
	.long	.LASF319
	.sleb128 26
	.uleb128 0x19
	.long	.LASF320
	.sleb128 27
	.uleb128 0x19
	.long	.LASF321
	.sleb128 28
	.uleb128 0x19
	.long	.LASF322
	.sleb128 29
	.uleb128 0x19
	.long	.LASF323
	.sleb128 30
	.uleb128 0x19
	.long	.LASF324
	.sleb128 31
	.uleb128 0x19
	.long	.LASF325
	.sleb128 32
	.uleb128 0x19
	.long	.LASF326
	.sleb128 33
	.uleb128 0x19
	.long	.LASF327
	.sleb128 34
	.uleb128 0x19
	.long	.LASF328
	.sleb128 35
	.uleb128 0x19
	.long	.LASF329
	.sleb128 36
	.uleb128 0x19
	.long	.LASF330
	.sleb128 37
	.uleb128 0x19
	.long	.LASF331
	.sleb128 38
	.uleb128 0x19
	.long	.LASF332
	.sleb128 39
	.uleb128 0x19
	.long	.LASF333
	.sleb128 40
	.uleb128 0x19
	.long	.LASF334
	.sleb128 41
	.uleb128 0x19
	.long	.LASF335
	.sleb128 42
	.uleb128 0x19
	.long	.LASF336
	.sleb128 43
	.uleb128 0x19
	.long	.LASF337
	.sleb128 44
	.uleb128 0x19
	.long	.LASF338
	.sleb128 45
	.uleb128 0x19
	.long	.LASF339
	.sleb128 46
	.uleb128 0x19
	.long	.LASF340
	.sleb128 47
	.uleb128 0x19
	.long	.LASF341
	.sleb128 48
	.uleb128 0x19
	.long	.LASF342
	.sleb128 49
	.uleb128 0x19
	.long	.LASF343
	.sleb128 50
	.uleb128 0x19
	.long	.LASF344
	.sleb128 51
	.uleb128 0x19
	.long	.LASF345
	.sleb128 52
	.uleb128 0x19
	.long	.LASF346
	.sleb128 53
	.uleb128 0x19
	.long	.LASF347
	.sleb128 54
	.uleb128 0x19
	.long	.LASF348
	.sleb128 55
	.uleb128 0x19
	.long	.LASF349
	.sleb128 56
	.uleb128 0x19
	.long	.LASF350
	.sleb128 57
	.uleb128 0x19
	.long	.LASF351
	.sleb128 58
	.uleb128 0x19
	.long	.LASF352
	.sleb128 59
	.uleb128 0x19
	.long	.LASF353
	.sleb128 60
	.uleb128 0x19
	.long	.LASF354
	.sleb128 61
	.uleb128 0x19
	.long	.LASF355
	.sleb128 62
	.uleb128 0x19
	.long	.LASF356
	.sleb128 63
	.uleb128 0x19
	.long	.LASF357
	.sleb128 64
	.uleb128 0x19
	.long	.LASF358
	.sleb128 65
	.uleb128 0x19
	.long	.LASF359
	.sleb128 66
	.uleb128 0x19
	.long	.LASF360
	.sleb128 67
	.uleb128 0x19
	.long	.LASF361
	.sleb128 68
	.uleb128 0x19
	.long	.LASF362
	.sleb128 69
	.uleb128 0x19
	.long	.LASF363
	.sleb128 70
	.uleb128 0x19
	.long	.LASF364
	.sleb128 71
	.uleb128 0x19
	.long	.LASF365
	.sleb128 72
	.uleb128 0x19
	.long	.LASF366
	.sleb128 73
	.uleb128 0x19
	.long	.LASF367
	.sleb128 74
	.uleb128 0x19
	.long	.LASF368
	.sleb128 75
	.uleb128 0x19
	.long	.LASF369
	.sleb128 76
	.uleb128 0x19
	.long	.LASF370
	.sleb128 77
	.uleb128 0x19
	.long	.LASF371
	.sleb128 78
	.uleb128 0x19
	.long	.LASF372
	.sleb128 79
	.uleb128 0x19
	.long	.LASF373
	.sleb128 80
	.uleb128 0x19
	.long	.LASF374
	.sleb128 81
	.uleb128 0x19
	.long	.LASF375
	.sleb128 82
	.uleb128 0x19
	.long	.LASF376
	.sleb128 83
	.uleb128 0x19
	.long	.LASF377
	.sleb128 84
	.uleb128 0x19
	.long	.LASF378
	.sleb128 85
	.uleb128 0x19
	.long	.LASF379
	.sleb128 86
	.uleb128 0x19
	.long	.LASF380
	.sleb128 87
	.uleb128 0x19
	.long	.LASF381
	.sleb128 88
	.uleb128 0x19
	.long	.LASF382
	.sleb128 89
	.uleb128 0x19
	.long	.LASF383
	.sleb128 90
	.uleb128 0x19
	.long	.LASF384
	.sleb128 91
	.uleb128 0x19
	.long	.LASF385
	.sleb128 92
	.uleb128 0x19
	.long	.LASF386
	.sleb128 93
	.uleb128 0x19
	.long	.LASF387
	.sleb128 94
	.uleb128 0x19
	.long	.LASF388
	.sleb128 95
	.uleb128 0x19
	.long	.LASF389
	.sleb128 96
	.uleb128 0x19
	.long	.LASF390
	.sleb128 97
	.uleb128 0x19
	.long	.LASF391
	.sleb128 98
	.uleb128 0x19
	.long	.LASF392
	.sleb128 99
	.uleb128 0x19
	.long	.LASF393
	.sleb128 100
	.uleb128 0x19
	.long	.LASF394
	.sleb128 101
	.uleb128 0x19
	.long	.LASF395
	.sleb128 102
	.uleb128 0x19
	.long	.LASF396
	.sleb128 103
	.uleb128 0x19
	.long	.LASF397
	.sleb128 104
	.uleb128 0x19
	.long	.LASF398
	.sleb128 105
	.uleb128 0x19
	.long	.LASF399
	.sleb128 106
	.uleb128 0x19
	.long	.LASF400
	.sleb128 107
	.uleb128 0x19
	.long	.LASF401
	.sleb128 108
	.uleb128 0x19
	.long	.LASF402
	.sleb128 109
	.uleb128 0x19
	.long	.LASF403
	.sleb128 110
	.uleb128 0x19
	.long	.LASF404
	.sleb128 111
	.uleb128 0x19
	.long	.LASF405
	.sleb128 112
	.uleb128 0x19
	.long	.LASF406
	.sleb128 113
	.uleb128 0x19
	.long	.LASF407
	.sleb128 114
	.uleb128 0x19
	.long	.LASF408
	.sleb128 115
	.uleb128 0x19
	.long	.LASF409
	.sleb128 116
	.uleb128 0x19
	.long	.LASF410
	.sleb128 117
	.uleb128 0x19
	.long	.LASF411
	.sleb128 118
	.uleb128 0x19
	.long	.LASF412
	.sleb128 119
	.uleb128 0x19
	.long	.LASF413
	.sleb128 120
	.uleb128 0x19
	.long	.LASF414
	.sleb128 121
	.uleb128 0x19
	.long	.LASF415
	.sleb128 122
	.uleb128 0x19
	.long	.LASF416
	.sleb128 123
	.uleb128 0x19
	.long	.LASF417
	.sleb128 124
	.uleb128 0x19
	.long	.LASF418
	.sleb128 125
	.uleb128 0x19
	.long	.LASF419
	.sleb128 126
	.uleb128 0x19
	.long	.LASF420
	.sleb128 127
	.uleb128 0x19
	.long	.LASF421
	.sleb128 128
	.uleb128 0x19
	.long	.LASF422
	.sleb128 129
	.uleb128 0x19
	.long	.LASF423
	.sleb128 130
	.uleb128 0x19
	.long	.LASF424
	.sleb128 131
	.uleb128 0x19
	.long	.LASF425
	.sleb128 132
	.uleb128 0x19
	.long	.LASF426
	.sleb128 133
	.uleb128 0x19
	.long	.LASF427
	.sleb128 134
	.uleb128 0x19
	.long	.LASF428
	.sleb128 135
	.uleb128 0x19
	.long	.LASF429
	.sleb128 136
	.uleb128 0x19
	.long	.LASF430
	.sleb128 137
	.uleb128 0x19
	.long	.LASF431
	.sleb128 138
	.uleb128 0x19
	.long	.LASF432
	.sleb128 139
	.uleb128 0x19
	.long	.LASF433
	.sleb128 140
	.uleb128 0x19
	.long	.LASF434
	.sleb128 141
	.uleb128 0x19
	.long	.LASF435
	.sleb128 142
	.uleb128 0x19
	.long	.LASF436
	.sleb128 143
	.uleb128 0x19
	.long	.LASF437
	.sleb128 144
	.uleb128 0x19
	.long	.LASF438
	.sleb128 145
	.uleb128 0x19
	.long	.LASF439
	.sleb128 146
	.uleb128 0x19
	.long	.LASF440
	.sleb128 147
	.uleb128 0x19
	.long	.LASF441
	.sleb128 148
	.uleb128 0x19
	.long	.LASF442
	.sleb128 149
	.uleb128 0x19
	.long	.LASF443
	.sleb128 150
	.uleb128 0x19
	.long	.LASF444
	.sleb128 151
	.uleb128 0x19
	.long	.LASF445
	.sleb128 152
	.uleb128 0x19
	.long	.LASF446
	.sleb128 153
	.uleb128 0x19
	.long	.LASF447
	.sleb128 154
	.uleb128 0x19
	.long	.LASF448
	.sleb128 155
	.uleb128 0x19
	.long	.LASF449
	.sleb128 156
	.uleb128 0x19
	.long	.LASF450
	.sleb128 157
	.uleb128 0x19
	.long	.LASF451
	.sleb128 158
	.uleb128 0x19
	.long	.LASF452
	.sleb128 159
	.uleb128 0x19
	.long	.LASF453
	.sleb128 160
	.uleb128 0x19
	.long	.LASF454
	.sleb128 161
	.uleb128 0x19
	.long	.LASF455
	.sleb128 162
	.uleb128 0x19
	.long	.LASF456
	.sleb128 163
	.uleb128 0x19
	.long	.LASF457
	.sleb128 164
	.uleb128 0x19
	.long	.LASF458
	.sleb128 165
	.uleb128 0x19
	.long	.LASF459
	.sleb128 166
	.uleb128 0x19
	.long	.LASF460
	.sleb128 167
	.uleb128 0x19
	.long	.LASF461
	.sleb128 168
	.uleb128 0x19
	.long	.LASF462
	.sleb128 169
	.uleb128 0x19
	.long	.LASF463
	.sleb128 170
	.uleb128 0x19
	.long	.LASF464
	.sleb128 171
	.uleb128 0x19
	.long	.LASF465
	.sleb128 172
	.uleb128 0x19
	.long	.LASF466
	.sleb128 173
	.uleb128 0x19
	.long	.LASF467
	.sleb128 174
	.uleb128 0x19
	.long	.LASF468
	.sleb128 175
	.uleb128 0x19
	.long	.LASF469
	.sleb128 176
	.uleb128 0x19
	.long	.LASF470
	.sleb128 177
	.uleb128 0x19
	.long	.LASF471
	.sleb128 178
	.uleb128 0x19
	.long	.LASF472
	.sleb128 179
	.uleb128 0x19
	.long	.LASF473
	.sleb128 180
	.uleb128 0x19
	.long	.LASF474
	.sleb128 181
	.uleb128 0x19
	.long	.LASF475
	.sleb128 182
	.uleb128 0x19
	.long	.LASF476
	.sleb128 183
	.uleb128 0x19
	.long	.LASF477
	.sleb128 184
	.uleb128 0x19
	.long	.LASF478
	.sleb128 185
	.uleb128 0x19
	.long	.LASF479
	.sleb128 186
	.uleb128 0x19
	.long	.LASF480
	.sleb128 187
	.uleb128 0x19
	.long	.LASF481
	.sleb128 188
	.uleb128 0x19
	.long	.LASF482
	.sleb128 189
	.uleb128 0x19
	.long	.LASF483
	.sleb128 190
	.uleb128 0x19
	.long	.LASF484
	.sleb128 191
	.uleb128 0x19
	.long	.LASF485
	.sleb128 192
	.uleb128 0x19
	.long	.LASF486
	.sleb128 193
	.uleb128 0x19
	.long	.LASF487
	.sleb128 194
	.uleb128 0x19
	.long	.LASF488
	.sleb128 195
	.uleb128 0x19
	.long	.LASF489
	.sleb128 196
	.uleb128 0x19
	.long	.LASF490
	.sleb128 197
	.uleb128 0x19
	.long	.LASF491
	.sleb128 198
	.uleb128 0x19
	.long	.LASF492
	.sleb128 199
	.uleb128 0x19
	.long	.LASF493
	.sleb128 200
	.uleb128 0x19
	.long	.LASF494
	.sleb128 201
	.uleb128 0x19
	.long	.LASF495
	.sleb128 202
	.uleb128 0x19
	.long	.LASF496
	.sleb128 203
	.uleb128 0x19
	.long	.LASF497
	.sleb128 204
	.uleb128 0x19
	.long	.LASF498
	.sleb128 205
	.uleb128 0x19
	.long	.LASF499
	.sleb128 206
	.uleb128 0x19
	.long	.LASF500
	.sleb128 207
	.uleb128 0x19
	.long	.LASF501
	.sleb128 208
	.uleb128 0x19
	.long	.LASF502
	.sleb128 209
	.uleb128 0x19
	.long	.LASF503
	.sleb128 210
	.uleb128 0x19
	.long	.LASF504
	.sleb128 211
	.uleb128 0x19
	.long	.LASF505
	.sleb128 212
	.uleb128 0x19
	.long	.LASF506
	.sleb128 213
	.uleb128 0x19
	.long	.LASF507
	.sleb128 214
	.uleb128 0x19
	.long	.LASF508
	.sleb128 215
	.uleb128 0x19
	.long	.LASF509
	.sleb128 216
	.uleb128 0x19
	.long	.LASF510
	.sleb128 217
	.uleb128 0x19
	.long	.LASF511
	.sleb128 218
	.uleb128 0x19
	.long	.LASF512
	.sleb128 219
	.uleb128 0x19
	.long	.LASF513
	.sleb128 220
	.uleb128 0x19
	.long	.LASF514
	.sleb128 221
	.uleb128 0x19
	.long	.LASF515
	.sleb128 222
	.uleb128 0x19
	.long	.LASF516
	.sleb128 223
	.uleb128 0x19
	.long	.LASF517
	.sleb128 224
	.uleb128 0x19
	.long	.LASF518
	.sleb128 225
	.uleb128 0x19
	.long	.LASF519
	.sleb128 226
	.uleb128 0x19
	.long	.LASF520
	.sleb128 227
	.uleb128 0x19
	.long	.LASF521
	.sleb128 228
	.uleb128 0x19
	.long	.LASF522
	.sleb128 229
	.uleb128 0x19
	.long	.LASF523
	.sleb128 230
	.uleb128 0x19
	.long	.LASF524
	.sleb128 231
	.uleb128 0x19
	.long	.LASF525
	.sleb128 232
	.uleb128 0x19
	.long	.LASF526
	.sleb128 233
	.uleb128 0x19
	.long	.LASF527
	.sleb128 234
	.uleb128 0x19
	.long	.LASF528
	.sleb128 235
	.uleb128 0x19
	.long	.LASF529
	.sleb128 236
	.uleb128 0x19
	.long	.LASF530
	.sleb128 237
	.uleb128 0x19
	.long	.LASF531
	.sleb128 238
	.uleb128 0x19
	.long	.LASF532
	.sleb128 239
	.uleb128 0x19
	.long	.LASF533
	.sleb128 240
	.uleb128 0x19
	.long	.LASF534
	.sleb128 241
	.uleb128 0x19
	.long	.LASF535
	.sleb128 242
	.uleb128 0x19
	.long	.LASF536
	.sleb128 243
	.uleb128 0x19
	.long	.LASF537
	.sleb128 244
	.uleb128 0x19
	.long	.LASF538
	.sleb128 245
	.uleb128 0x19
	.long	.LASF539
	.sleb128 246
	.uleb128 0x19
	.long	.LASF540
	.sleb128 247
	.uleb128 0x19
	.long	.LASF541
	.sleb128 248
	.uleb128 0x19
	.long	.LASF542
	.sleb128 249
	.uleb128 0x19
	.long	.LASF543
	.sleb128 250
	.uleb128 0x19
	.long	.LASF544
	.sleb128 251
	.uleb128 0x19
	.long	.LASF545
	.sleb128 252
	.uleb128 0x19
	.long	.LASF546
	.sleb128 253
	.uleb128 0x19
	.long	.LASF547
	.sleb128 254
	.uleb128 0x19
	.long	.LASF548
	.sleb128 255
	.uleb128 0x19
	.long	.LASF549
	.sleb128 256
	.uleb128 0x19
	.long	.LASF550
	.sleb128 257
	.uleb128 0x19
	.long	.LASF551
	.sleb128 258
	.uleb128 0x19
	.long	.LASF552
	.sleb128 259
	.uleb128 0x19
	.long	.LASF553
	.sleb128 260
	.uleb128 0x19
	.long	.LASF554
	.sleb128 261
	.uleb128 0x19
	.long	.LASF555
	.sleb128 262
	.uleb128 0x19
	.long	.LASF556
	.sleb128 263
	.uleb128 0x19
	.long	.LASF557
	.sleb128 264
	.uleb128 0x19
	.long	.LASF558
	.sleb128 265
	.uleb128 0x19
	.long	.LASF559
	.sleb128 266
	.uleb128 0x19
	.long	.LASF560
	.sleb128 267
	.uleb128 0x19
	.long	.LASF561
	.sleb128 268
	.uleb128 0x19
	.long	.LASF562
	.sleb128 269
	.uleb128 0x19
	.long	.LASF563
	.sleb128 270
	.uleb128 0x19
	.long	.LASF564
	.sleb128 271
	.uleb128 0x19
	.long	.LASF565
	.sleb128 272
	.uleb128 0x19
	.long	.LASF566
	.sleb128 273
	.uleb128 0x19
	.long	.LASF567
	.sleb128 274
	.uleb128 0x19
	.long	.LASF568
	.sleb128 275
	.uleb128 0x19
	.long	.LASF569
	.sleb128 276
	.uleb128 0x19
	.long	.LASF570
	.sleb128 277
	.uleb128 0x19
	.long	.LASF571
	.sleb128 278
	.uleb128 0x19
	.long	.LASF572
	.sleb128 279
	.uleb128 0x19
	.long	.LASF573
	.sleb128 280
	.uleb128 0x19
	.long	.LASF574
	.sleb128 281
	.uleb128 0x19
	.long	.LASF575
	.sleb128 282
	.uleb128 0x19
	.long	.LASF576
	.sleb128 283
	.uleb128 0x19
	.long	.LASF577
	.sleb128 284
	.uleb128 0x19
	.long	.LASF578
	.sleb128 285
	.uleb128 0x19
	.long	.LASF579
	.sleb128 286
	.uleb128 0x19
	.long	.LASF580
	.sleb128 287
	.uleb128 0x19
	.long	.LASF581
	.sleb128 288
	.uleb128 0x19
	.long	.LASF582
	.sleb128 289
	.uleb128 0x19
	.long	.LASF583
	.sleb128 290
	.uleb128 0x19
	.long	.LASF584
	.sleb128 291
	.uleb128 0x19
	.long	.LASF585
	.sleb128 292
	.uleb128 0x19
	.long	.LASF586
	.sleb128 293
	.uleb128 0x19
	.long	.LASF587
	.sleb128 294
	.uleb128 0x19
	.long	.LASF588
	.sleb128 295
	.uleb128 0x19
	.long	.LASF589
	.sleb128 296
	.uleb128 0x19
	.long	.LASF590
	.sleb128 297
	.uleb128 0x19
	.long	.LASF591
	.sleb128 298
	.uleb128 0x19
	.long	.LASF592
	.sleb128 299
	.uleb128 0x19
	.long	.LASF593
	.sleb128 300
	.uleb128 0x19
	.long	.LASF594
	.sleb128 301
	.uleb128 0x19
	.long	.LASF595
	.sleb128 302
	.uleb128 0x19
	.long	.LASF596
	.sleb128 303
	.uleb128 0x19
	.long	.LASF597
	.sleb128 304
	.uleb128 0x19
	.long	.LASF598
	.sleb128 305
	.uleb128 0x19
	.long	.LASF599
	.sleb128 306
	.uleb128 0x19
	.long	.LASF600
	.sleb128 307
	.uleb128 0x19
	.long	.LASF601
	.sleb128 308
	.uleb128 0x19
	.long	.LASF602
	.sleb128 309
	.uleb128 0x19
	.long	.LASF603
	.sleb128 310
	.uleb128 0x19
	.long	.LASF604
	.sleb128 311
	.uleb128 0x19
	.long	.LASF605
	.sleb128 312
	.uleb128 0x19
	.long	.LASF606
	.sleb128 313
	.uleb128 0x19
	.long	.LASF607
	.sleb128 314
	.uleb128 0x19
	.long	.LASF608
	.sleb128 315
	.uleb128 0x19
	.long	.LASF609
	.sleb128 316
	.uleb128 0x19
	.long	.LASF610
	.sleb128 317
	.uleb128 0x19
	.long	.LASF611
	.sleb128 318
	.uleb128 0x19
	.long	.LASF612
	.sleb128 319
	.uleb128 0x19
	.long	.LASF613
	.sleb128 320
	.uleb128 0x19
	.long	.LASF614
	.sleb128 321
	.uleb128 0x19
	.long	.LASF615
	.sleb128 322
	.uleb128 0x19
	.long	.LASF616
	.sleb128 323
	.uleb128 0x19
	.long	.LASF617
	.sleb128 324
	.uleb128 0x19
	.long	.LASF618
	.sleb128 325
	.uleb128 0x19
	.long	.LASF619
	.sleb128 326
	.uleb128 0x19
	.long	.LASF620
	.sleb128 327
	.uleb128 0x19
	.long	.LASF621
	.sleb128 328
	.uleb128 0x19
	.long	.LASF622
	.sleb128 329
	.uleb128 0x19
	.long	.LASF623
	.sleb128 330
	.uleb128 0x19
	.long	.LASF624
	.sleb128 331
	.uleb128 0x19
	.long	.LASF625
	.sleb128 332
	.uleb128 0x19
	.long	.LASF626
	.sleb128 333
	.uleb128 0x19
	.long	.LASF627
	.sleb128 334
	.uleb128 0x19
	.long	.LASF628
	.sleb128 335
	.uleb128 0x19
	.long	.LASF629
	.sleb128 336
	.uleb128 0x19
	.long	.LASF630
	.sleb128 337
	.uleb128 0x19
	.long	.LASF631
	.sleb128 338
	.uleb128 0x19
	.long	.LASF632
	.sleb128 339
	.uleb128 0x19
	.long	.LASF633
	.sleb128 340
	.uleb128 0x19
	.long	.LASF634
	.sleb128 341
	.uleb128 0x19
	.long	.LASF635
	.sleb128 342
	.uleb128 0x19
	.long	.LASF636
	.sleb128 343
	.uleb128 0x19
	.long	.LASF637
	.sleb128 344
	.uleb128 0x19
	.long	.LASF638
	.sleb128 345
	.uleb128 0x19
	.long	.LASF639
	.sleb128 346
	.uleb128 0x19
	.long	.LASF640
	.sleb128 347
	.uleb128 0x19
	.long	.LASF641
	.sleb128 348
	.uleb128 0x19
	.long	.LASF642
	.sleb128 349
	.uleb128 0x19
	.long	.LASF643
	.sleb128 350
	.uleb128 0x19
	.long	.LASF644
	.sleb128 351
	.uleb128 0x19
	.long	.LASF645
	.sleb128 352
	.byte	0
	.uleb128 0x1c
	.long	0x14ce
	.uleb128 0x8
	.byte	0x8
	.long	0x1ecc
	.uleb128 0x8
	.byte	0x8
	.long	0x52c
	.uleb128 0x8
	.byte	0x8
	.long	0x7c8
	.uleb128 0x9
	.long	.LASF646
	.byte	0x40
	.byte	0xd
	.byte	0x70
	.long	0x1f5a
	.uleb128 0x1d
	.string	"cv"
	.byte	0xd
	.byte	0x71
	.long	0x14df
	.byte	0
	.uleb128 0x1d
	.string	"gv"
	.byte	0xd
	.byte	0x72
	.long	0x14eb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF647
	.byte	0xd
	.byte	0x73
	.long	0x14eb
	.byte	0x10
	.uleb128 0xa
	.long	.LASF648
	.byte	0xd
	.byte	0x75
	.long	0x14f1
	.byte	0x18
	.uleb128 0xa
	.long	.LASF649
	.byte	0xd
	.byte	0x77
	.long	0x14f1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF650
	.byte	0xd
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xa
	.long	.LASF651
	.byte	0xd
	.byte	0x79
	.long	0x131a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF652
	.byte	0xd
	.byte	0x7a
	.long	0x131a
	.byte	0x31
	.uleb128 0xa
	.long	.LASF653
	.byte	0xd
	.byte	0x7b
	.long	0x1f5a
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x153c
	.uleb128 0x9
	.long	.LASF654
	.byte	0x28
	.byte	0xd
	.byte	0xd3
	.long	0x1fb4
	.uleb128 0xa
	.long	.LASF655
	.byte	0xd
	.byte	0xd4
	.long	0x132f
	.byte	0
	.uleb128 0xa
	.long	.LASF656
	.byte	0xd
	.byte	0xd5
	.long	0x132f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF657
	.byte	0xd
	.byte	0xd6
	.long	0x1362
	.byte	0x8
	.uleb128 0xa
	.long	.LASF658
	.byte	0xd
	.byte	0xd7
	.long	0x14ce
	.byte	0x10
	.uleb128 0xa
	.long	.LASF659
	.byte	0xd
	.byte	0xd8
	.long	0x1362
	.byte	0x18
	.uleb128 0x1d
	.string	"cv"
	.byte	0xd
	.byte	0xd9
	.long	0x14df
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.long	.LASF660
	.byte	0x58
	.byte	0xd
	.byte	0xf0
	.long	0x2046
	.uleb128 0xa
	.long	.LASF661
	.byte	0xd
	.byte	0xf1
	.long	0x118
	.byte	0
	.uleb128 0xa
	.long	.LASF662
	.byte	0xd
	.byte	0xf2
	.long	0x132f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF663
	.byte	0xd
	.byte	0xf3
	.long	0x14ce
	.byte	0x10
	.uleb128 0xa
	.long	.LASF664
	.byte	0xd
	.byte	0xf4
	.long	0x14ce
	.byte	0x18
	.uleb128 0xa
	.long	.LASF665
	.byte	0xd
	.byte	0xf5
	.long	0x14ce
	.byte	0x20
	.uleb128 0xa
	.long	.LASF666
	.byte	0xd
	.byte	0xfa
	.long	0x2046
	.byte	0x28
	.uleb128 0xa
	.long	.LASF667
	.byte	0xd
	.byte	0xfc
	.long	0x1362
	.byte	0x30
	.uleb128 0xa
	.long	.LASF668
	.byte	0xd
	.byte	0xfd
	.long	0x1362
	.byte	0x38
	.uleb128 0xa
	.long	.LASF669
	.byte	0xd
	.byte	0xfe
	.long	0x14f1
	.byte	0x40
	.uleb128 0xa
	.long	.LASF670
	.byte	0xd
	.byte	0xff
	.long	0x3a8
	.byte	0x48
	.uleb128 0x12
	.long	.LASF671
	.byte	0xd
	.value	0x100
	.long	0x3a8
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1362
	.uleb128 0x1a
	.byte	0x58
	.byte	0xd
	.value	0x139
	.long	0x207a
	.uleb128 0x15
	.long	.LASF672
	.byte	0xd
	.value	0x13a
	.long	0x1ee3
	.uleb128 0x15
	.long	.LASF673
	.byte	0xd
	.value	0x13b
	.long	0x1f60
	.uleb128 0x15
	.long	.LASF674
	.byte	0xd
	.value	0x13c
	.long	0x1fb4
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x453
	.uleb128 0x13
	.long	.LASF675
	.byte	0x58
	.byte	0xd
	.value	0x16e
	.long	0x2144
	.uleb128 0x12
	.long	.LASF676
	.byte	0xd
	.value	0x16f
	.long	0x132f
	.byte	0
	.uleb128 0x12
	.long	.LASF677
	.byte	0xd
	.value	0x170
	.long	0x132f
	.byte	0x4
	.uleb128 0x12
	.long	.LASF678
	.byte	0xd
	.value	0x171
	.long	0x132f
	.byte	0x8
	.uleb128 0x12
	.long	.LASF679
	.byte	0xd
	.value	0x172
	.long	0x132f
	.byte	0xc
	.uleb128 0x12
	.long	.LASF680
	.byte	0xd
	.value	0x173
	.long	0x11e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF681
	.byte	0xd
	.value	0x174
	.long	0x11e
	.byte	0x11
	.uleb128 0x12
	.long	.LASF682
	.byte	0xd
	.value	0x175
	.long	0x118
	.byte	0x18
	.uleb128 0x12
	.long	.LASF683
	.byte	0xd
	.value	0x176
	.long	0x1362
	.byte	0x20
	.uleb128 0x12
	.long	.LASF684
	.byte	0xd
	.value	0x177
	.long	0x1362
	.byte	0x28
	.uleb128 0x12
	.long	.LASF685
	.byte	0xd
	.value	0x178
	.long	0x118
	.byte	0x30
	.uleb128 0x12
	.long	.LASF686
	.byte	0xd
	.value	0x179
	.long	0x118
	.byte	0x38
	.uleb128 0x12
	.long	.LASF687
	.byte	0xd
	.value	0x17a
	.long	0x118
	.byte	0x40
	.uleb128 0x12
	.long	.LASF688
	.byte	0xd
	.value	0x17b
	.long	0xea
	.byte	0x48
	.uleb128 0x12
	.long	.LASF689
	.byte	0xd
	.value	0x17c
	.long	0x1edd
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.byte	0x88
	.byte	0xd
	.value	0x1a4
	.long	0x2166
	.uleb128 0x15
	.long	.LASF690
	.byte	0xd
	.value	0x1a5
	.long	0x9fe
	.uleb128 0x15
	.long	.LASF691
	.byte	0xd
	.value	0x1a6
	.long	0x2080
	.byte	0
	.uleb128 0x13
	.long	.LASF692
	.byte	0x38
	.byte	0xd
	.value	0x20c
	.long	0x21dc
	.uleb128 0x12
	.long	.LASF693
	.byte	0xd
	.value	0x20d
	.long	0x14f1
	.byte	0
	.uleb128 0x12
	.long	.LASF694
	.byte	0xd
	.value	0x20e
	.long	0x21dc
	.byte	0x8
	.uleb128 0x12
	.long	.LASF695
	.byte	0xd
	.value	0x20f
	.long	0x132f
	.byte	0x10
	.uleb128 0x12
	.long	.LASF696
	.byte	0xd
	.value	0x210
	.long	0x132f
	.byte	0x14
	.uleb128 0x12
	.long	.LASF697
	.byte	0xd
	.value	0x211
	.long	0x132f
	.byte	0x18
	.uleb128 0x12
	.long	.LASF698
	.byte	0xd
	.value	0x212
	.long	0x21e2
	.byte	0x20
	.uleb128 0x12
	.long	.LASF699
	.byte	0xd
	.value	0x213
	.long	0x21e2
	.byte	0x28
	.uleb128 0x12
	.long	.LASF700
	.byte	0xd
	.value	0x214
	.long	0x132f
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9ca
	.uleb128 0x8
	.byte	0x8
	.long	0x2166
	.uleb128 0xd
	.long	.LASF701
	.byte	0xd
	.value	0x219
	.long	0x2166
	.uleb128 0xf
	.string	"HE"
	.byte	0x13
	.byte	0xc
	.long	0x21fe
	.uleb128 0xe
	.string	"he"
	.byte	0x18
	.byte	0x13
	.byte	0x10
	.long	0x222e
	.uleb128 0xa
	.long	.LASF702
	.byte	0x13
	.byte	0x11
	.long	0x226a
	.byte	0
	.uleb128 0xa
	.long	.LASF703
	.byte	0x13
	.byte	0x12
	.long	0x2270
	.byte	0x8
	.uleb128 0xa
	.long	.LASF704
	.byte	0x13
	.byte	0x13
	.long	0x1362
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"HEK"
	.byte	0x13
	.byte	0xd
	.long	0x2239
	.uleb128 0xe
	.string	"hek"
	.byte	0xc
	.byte	0x13
	.byte	0x17
	.long	0x226a
	.uleb128 0xa
	.long	.LASF705
	.byte	0x13
	.byte	0x18
	.long	0x133a
	.byte	0
	.uleb128 0xa
	.long	.LASF706
	.byte	0x13
	.byte	0x19
	.long	0x132f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF707
	.byte	0x13
	.byte	0x1a
	.long	0x1368
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x21f4
	.uleb128 0x8
	.byte	0x8
	.long	0x222e
	.uleb128 0x1e
	.long	0x57
	.long	0x228a
	.uleb128 0x17
	.long	0x1362
	.uleb128 0x17
	.long	0x14b0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2276
	.uleb128 0x1e
	.long	0x133a
	.long	0x22a4
	.uleb128 0x17
	.long	0x1362
	.uleb128 0x17
	.long	0x14b0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2290
	.uleb128 0x1e
	.long	0x57
	.long	0x22cd
	.uleb128 0x17
	.long	0x1362
	.uleb128 0x17
	.long	0x14b0
	.uleb128 0x17
	.long	0x1362
	.uleb128 0x17
	.long	0x210
	.uleb128 0x17
	.long	0x57
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x22aa
	.uleb128 0x1e
	.long	0x57
	.long	0x22e7
	.uleb128 0x17
	.long	0x14b0
	.uleb128 0x17
	.long	0x22e7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12d9
	.uleb128 0x8
	.byte	0x8
	.long	0x22d3
	.uleb128 0x8
	.byte	0x8
	.long	0x11fe
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF708
	.uleb128 0xd
	.long	.LASF709
	.byte	0xb
	.value	0xc9a
	.long	0x1399
	.uleb128 0x1f
	.byte	0x4
	.byte	0xb
	.value	0xfb1
	.long	0x24ab
	.uleb128 0x19
	.long	.LASF710
	.sleb128 0
	.uleb128 0x19
	.long	.LASF711
	.sleb128 1
	.uleb128 0x19
	.long	.LASF712
	.sleb128 2
	.uleb128 0x19
	.long	.LASF713
	.sleb128 3
	.uleb128 0x19
	.long	.LASF714
	.sleb128 4
	.uleb128 0x19
	.long	.LASF715
	.sleb128 5
	.uleb128 0x19
	.long	.LASF716
	.sleb128 6
	.uleb128 0x19
	.long	.LASF717
	.sleb128 7
	.uleb128 0x19
	.long	.LASF718
	.sleb128 8
	.uleb128 0x19
	.long	.LASF719
	.sleb128 9
	.uleb128 0x19
	.long	.LASF720
	.sleb128 10
	.uleb128 0x19
	.long	.LASF721
	.sleb128 11
	.uleb128 0x19
	.long	.LASF722
	.sleb128 12
	.uleb128 0x19
	.long	.LASF723
	.sleb128 13
	.uleb128 0x19
	.long	.LASF724
	.sleb128 14
	.uleb128 0x19
	.long	.LASF725
	.sleb128 15
	.uleb128 0x19
	.long	.LASF726
	.sleb128 16
	.uleb128 0x19
	.long	.LASF727
	.sleb128 17
	.uleb128 0x19
	.long	.LASF728
	.sleb128 18
	.uleb128 0x19
	.long	.LASF729
	.sleb128 19
	.uleb128 0x19
	.long	.LASF730
	.sleb128 20
	.uleb128 0x19
	.long	.LASF731
	.sleb128 21
	.uleb128 0x19
	.long	.LASF732
	.sleb128 22
	.uleb128 0x19
	.long	.LASF733
	.sleb128 23
	.uleb128 0x19
	.long	.LASF734
	.sleb128 24
	.uleb128 0x19
	.long	.LASF735
	.sleb128 25
	.uleb128 0x19
	.long	.LASF736
	.sleb128 26
	.uleb128 0x19
	.long	.LASF737
	.sleb128 27
	.uleb128 0x19
	.long	.LASF738
	.sleb128 28
	.uleb128 0x19
	.long	.LASF739
	.sleb128 29
	.uleb128 0x19
	.long	.LASF740
	.sleb128 30
	.uleb128 0x19
	.long	.LASF741
	.sleb128 31
	.uleb128 0x19
	.long	.LASF742
	.sleb128 32
	.uleb128 0x19
	.long	.LASF743
	.sleb128 33
	.uleb128 0x19
	.long	.LASF744
	.sleb128 34
	.uleb128 0x19
	.long	.LASF745
	.sleb128 35
	.uleb128 0x19
	.long	.LASF746
	.sleb128 36
	.uleb128 0x19
	.long	.LASF747
	.sleb128 37
	.uleb128 0x19
	.long	.LASF748
	.sleb128 38
	.uleb128 0x19
	.long	.LASF749
	.sleb128 39
	.uleb128 0x19
	.long	.LASF750
	.sleb128 40
	.uleb128 0x19
	.long	.LASF751
	.sleb128 41
	.uleb128 0x19
	.long	.LASF752
	.sleb128 42
	.uleb128 0x19
	.long	.LASF753
	.sleb128 43
	.uleb128 0x19
	.long	.LASF754
	.sleb128 44
	.uleb128 0x19
	.long	.LASF755
	.sleb128 45
	.uleb128 0x19
	.long	.LASF756
	.sleb128 46
	.uleb128 0x19
	.long	.LASF757
	.sleb128 47
	.uleb128 0x19
	.long	.LASF758
	.sleb128 48
	.uleb128 0x19
	.long	.LASF759
	.sleb128 49
	.uleb128 0x19
	.long	.LASF760
	.sleb128 50
	.uleb128 0x19
	.long	.LASF761
	.sleb128 51
	.uleb128 0x19
	.long	.LASF762
	.sleb128 52
	.uleb128 0x19
	.long	.LASF763
	.sleb128 53
	.uleb128 0x19
	.long	.LASF764
	.sleb128 54
	.uleb128 0x19
	.long	.LASF765
	.sleb128 55
	.uleb128 0x19
	.long	.LASF766
	.sleb128 56
	.uleb128 0x19
	.long	.LASF767
	.sleb128 57
	.uleb128 0x19
	.long	.LASF768
	.sleb128 58
	.uleb128 0x19
	.long	.LASF769
	.sleb128 59
	.uleb128 0x19
	.long	.LASF770
	.sleb128 60
	.uleb128 0x19
	.long	.LASF771
	.sleb128 61
	.uleb128 0x19
	.long	.LASF772
	.sleb128 62
	.uleb128 0x19
	.long	.LASF773
	.sleb128 63
	.uleb128 0x19
	.long	.LASF774
	.sleb128 64
	.uleb128 0x19
	.long	.LASF775
	.sleb128 65
	.uleb128 0x19
	.long	.LASF776
	.sleb128 66
	.byte	0
	.uleb128 0x20
	.long	.LASF829
	.byte	0x1
	.value	0x134
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ec
	.uleb128 0x21
	.long	.LASF777
	.byte	0x1
	.value	0x134
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF778
	.byte	0x1
	.value	0x134
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF783
	.byte	0x1
	.value	0x13c
	.long	0x14ce
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e4
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x13e
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x13e
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x13f
	.long	0x151f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0x140
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x141
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x24
	.long	.LASF781
	.byte	0x1
	.value	0x142
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x24
	.long	.LASF778
	.byte	0x1
	.value	0x143
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.long	.LASF268
	.byte	0x1
	.value	0x14c
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x25c1
	.uleb128 0x24
	.long	.LASF782
	.byte	0x1
	.value	0x154
	.long	0x388
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x166
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF784
	.byte	0x1
	.value	0x182
	.long	0x14ce
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b5
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0x184
	.long	0x14ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF836
	.byte	0x1
	.value	0x185
	.quad	.L41
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x185
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x185
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x185
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.long	.LASF786
	.byte	0x1
	.value	0x185
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.value	0x185
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF798
	.byte	0x1
	.value	0x1a8
	.long	0x14ce
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF787
	.byte	0x1
	.value	0x1ae
	.long	0x14ce
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2785
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1b0
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x1b0
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF786
	.byte	0x1
	.value	0x1b1
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x1b2
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x1b3
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2763
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x1b5
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x24
	.long	.LASF789
	.byte	0x1
	.value	0x1bf
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF790
	.byte	0x1
	.value	0x1cd
	.long	0x14ce
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x28aa
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1cf
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x1cf
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x1d0
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF786
	.byte	0x1
	.value	0x1d1
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x1d2
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF791
	.byte	0x1
	.value	0x1d3
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x2828
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x1d8
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.long	.LASF789
	.byte	0x1
	.value	0x1e4
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x24
	.long	.LASF792
	.byte	0x1
	.value	0x1ea
	.long	0x14b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x1eb
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x24
	.long	.LASF793
	.byte	0x1
	.value	0x1ed
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF794
	.byte	0x1
	.value	0x1ee
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF795
	.byte	0x1
	.value	0x20b
	.long	0x14ce
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2971
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x20d
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x20e
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x20e
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x20f
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x210
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x211
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x212
	.long	0x2971
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x213
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x214
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x215
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"ok"
	.byte	0x1
	.value	0x216
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x98f
	.uleb128 0x22
	.long	.LASF797
	.byte	0x1
	.value	0x23e
	.long	0x14ce
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d1
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x240
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x241
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x242
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x243
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF799
	.byte	0x1
	.value	0x25b
	.long	0x14ce
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF800
	.byte	0x1
	.value	0x293
	.long	0x14ce
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a67
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x295
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x295
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x296
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x297
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x298
	.long	0x151f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x299
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.long	.LASF801
	.byte	0x1
	.value	0x2b9
	.long	0x14ce
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aa6
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x2bb
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x2bb
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF802
	.byte	0x1
	.value	0x2d2
	.long	0x14ce
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b1e
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x2d4
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x2d5
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x2d6
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x2d7
	.long	0x151f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x2d8
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF803
	.byte	0x1
	.value	0x2d9
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.long	.LASF804
	.byte	0x1
	.value	0x30e
	.long	0x14ce
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c53
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x310
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x311
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF805
	.byte	0x1
	.value	0x312
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF792
	.byte	0x1
	.value	0x313
	.long	0x14b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x314
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x315
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF806
	.byte	0x1
	.value	0x316
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF807
	.byte	0x1
	.value	0x317
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"how"
	.byte	0x1
	.value	0x318
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x24
	.long	.LASF808
	.byte	0x1
	.value	0x319
	.long	0x133a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x2bfe
	.uleb128 0x24
	.long	.LASF809
	.byte	0x1
	.value	0x33a
	.long	0x2c53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x2c24
	.uleb128 0x24
	.long	.LASF809
	.byte	0x1
	.value	0x34c
	.long	0x2c53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x25
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x357
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF810
	.byte	0x1
	.value	0x357
	.long	0x2c53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x21e8
	.uleb128 0x22
	.long	.LASF811
	.byte	0x1
	.value	0x368
	.long	0x14ce
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cf3
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x36a
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x36b
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x36c
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"how"
	.byte	0x1
	.value	0x36d
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x25
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x23
	.string	"obj"
	.byte	0x1
	.value	0x374
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x375
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"cv"
	.byte	0x1
	.value	0x376
	.long	0x14df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF812
	.byte	0x1
	.value	0x38f
	.long	0x14ce
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d6f
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x391
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x392
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x393
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"how"
	.byte	0x1
	.value	0x394
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x25
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x23
	.string	"osv"
	.byte	0x1
	.value	0x39b
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF813
	.byte	0x1
	.value	0x3a4
	.long	0x14ce
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df8
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x3a6
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"hv"
	.byte	0x1
	.value	0x3a7
	.long	0x14b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF814
	.byte	0x1
	.value	0x3a8
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF815
	.byte	0x1
	.value	0x3a8
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF792
	.byte	0x1
	.value	0x3a9
	.long	0x14b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x3aa
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x3ab
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF816
	.byte	0x1
	.value	0x3dd
	.long	0x14ce
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF817
	.byte	0x1
	.value	0x3e2
	.long	0x14ce
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f07
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x3e5
	.long	0x2046
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x3e5
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x3e6
	.long	0x132f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x3e7
	.long	0x132f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x3e8
	.long	0x118
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x3e9
	.long	0x1362
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0x3ea
	.long	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF819
	.byte	0x1
	.value	0x3eb
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.long	.LASF820
	.byte	0x1
	.value	0x3ec
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.long	.LASF821
	.byte	0x1
	.value	0x3ed
	.long	0x1a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.value	0x3ee
	.long	0x2f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF823
	.byte	0x1
	.value	0x3ef
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF824
	.byte	0x1
	.value	0x3f0
	.long	0x2f0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0x3f1
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1a2
	.uleb128 0x5
	.long	0x118
	.long	0x2f1d
	.uleb128 0x6
	.long	0xcd
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.long	.LASF1093
	.byte	0x1
	.value	0x47e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f4a
	.uleb128 0x2a
	.string	"gv"
	.byte	0x1
	.value	0x47e
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF825
	.byte	0x1
	.value	0x487
	.long	0x14ce
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd7
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x489
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x489
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF826
	.byte	0x1
	.value	0x48a
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"egv"
	.byte	0x1
	.value	0x48a
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"hv"
	.byte	0x1
	.value	0x48b
	.long	0x14b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x23
	.string	"gvp"
	.byte	0x1
	.value	0x496
	.long	0x2fd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x14eb
	.uleb128 0x22
	.long	.LASF827
	.byte	0x1
	.value	0x4a9
	.long	0x14ce
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x308e
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x4ab
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x4ab
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x4ac
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x4ad
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x4ae
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x306c
	.uleb128 0x24
	.long	.LASF781
	.byte	0x1
	.value	0x4b8
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x25
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x4d0
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0x4dc
	.long	0x14ce
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF830
	.byte	0x1
	.value	0x4e2
	.long	0x14ce
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3117
	.uleb128 0x2a
	.string	"cv"
	.byte	0x1
	.value	0x4e2
	.long	0x14df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"gv"
	.byte	0x1
	.value	0x4e2
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF831
	.byte	0x1
	.value	0x4e2
	.long	0x14ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"cx"
	.byte	0x1
	.value	0x4e4
	.long	0x21dc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF781
	.byte	0x1
	.value	0x4e5
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF832
	.byte	0x1
	.value	0x4f3
	.long	0x14ce
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x31c2
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x4f5
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x4f6
	.long	0x14eb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x4f7
	.long	0x2971
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"fgv"
	.byte	0x1
	.value	0x4f8
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"cv"
	.byte	0x1
	.value	0x4f9
	.long	0x14df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x24
	.long	.LASF833
	.byte	0x1
	.value	0x50e
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x24
	.long	.LASF786
	.byte	0x1
	.value	0x510
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF834
	.byte	0x1
	.value	0x51f
	.long	0x14ce
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3368
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x521
	.long	0x2046
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x522
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x523
	.long	0x2971
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"ofp"
	.byte	0x1
	.value	0x524
	.long	0x151f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x525
	.long	0x151f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF835
	.byte	0x1
	.value	0x526
	.long	0x2046
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF781
	.byte	0x1
	.value	0x527
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x23
	.string	"cx"
	.byte	0x1
	.value	0x528
	.long	0x21dc
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF837
	.byte	0x1
	.value	0x57a
	.quad	.L378
	.uleb128 0x25
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x23
	.string	"fgv"
	.byte	0x1
	.value	0x531
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"cv"
	.byte	0x1
	.value	0x532
	.long	0x14df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x32cd
	.uleb128 0x24
	.long	.LASF838
	.byte	0x1
	.value	0x534
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF839
	.byte	0x1
	.value	0x535
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x26
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x3323
	.uleb128 0x24
	.long	.LASF840
	.byte	0x1
	.value	0x54a
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x54b
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x24
	.long	.LASF841
	.byte	0x1
	.value	0x555
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x24
	.long	.LASF833
	.byte	0x1
	.value	0x568
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x56a
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF842
	.byte	0x1
	.value	0x59f
	.long	0x14ce
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x342f
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x5a1
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x5a1
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x5a1
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x5a2
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x5a3
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x5a4
	.long	0x151f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x5a5
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x5a6
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF843
	.byte	0x1
	.value	0x5e2
	.quad	.L434
	.uleb128 0x25
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x24
	.long	.LASF806
	.byte	0x1
	.value	0x5b1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF844
	.byte	0x1
	.value	0x5e9
	.long	0x14ce
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x34b9
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x5eb
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x5ec
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x5ed
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x5ee
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x5ef
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF778
	.byte	0x1
	.value	0x5f0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF845
	.byte	0x1
	.value	0x5f0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x22
	.long	.LASF846
	.byte	0x1
	.value	0x607
	.long	0x14ce
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3697
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x609
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x609
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x609
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x609
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF847
	.byte	0x1
	.value	0x60a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x60b
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x60c
	.long	0x2971
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF848
	.byte	0x1
	.value	0x60d
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF849
	.byte	0x1
	.value	0x60e
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF850
	.byte	0x1
	.value	0x60f
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF851
	.byte	0x1
	.value	0x610
	.long	0x21b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.long	.LASF852
	.byte	0x1
	.value	0x611
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF853
	.byte	0x1
	.value	0x612
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x613
	.long	0x14b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF854
	.byte	0x1
	.value	0x614
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF855
	.byte	0x1
	.value	0x615
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF856
	.byte	0x1
	.value	0x616
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.string	"got"
	.byte	0x1
	.value	0x617
	.long	0x172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF857
	.byte	0x1
	.value	0x618
	.long	0x172
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF858
	.byte	0x1
	.value	0x619
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.uleb128 0x24
	.long	.LASF859
	.byte	0x1
	.value	0x61a
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF860
	.byte	0x1
	.value	0x61b
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF861
	.byte	0x1
	.value	0x700
	.quad	.L468
	.uleb128 0x27
	.long	.LASF862
	.byte	0x1
	.value	0x68c
	.quad	.L494
	.uleb128 0x26
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x3675
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x622
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x24
	.long	.LASF863
	.byte	0x1
	.value	0x6d2
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF864
	.byte	0x1
	.value	0x705
	.long	0x14ce
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f6
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x707
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF808
	.byte	0x1
	.value	0x708
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x70a
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF865
	.byte	0x1
	.value	0x713
	.long	0x14ce
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3824
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x715
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x715
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x715
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x715
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x716
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x717
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF852
	.byte	0x1
	.value	0x718
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF848
	.byte	0x1
	.value	0x719
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF849
	.byte	0x1
	.value	0x71a
	.long	0x172
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF866
	.byte	0x1
	.value	0x71b
	.long	0x15c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF853
	.byte	0x1
	.value	0x71c
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x71d
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF861
	.byte	0x1
	.value	0x797
	.quad	.L538
	.uleb128 0x26
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x3801
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x724
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x24
	.long	.LASF847
	.byte	0x1
	.value	0x756
	.long	0x3a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF867
	.byte	0x1
	.value	0x79c
	.long	0x14ce
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF868
	.byte	0x1
	.value	0x7a1
	.long	0x14ce
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x38bc
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x7a3
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x7a4
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x7a5
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x7a6
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x7aa
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF869
	.byte	0x1
	.value	0x7d0
	.long	0x14ce
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3925
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x7d2
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x7d2
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x7d3
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x7d4
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x7d5
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF870
	.byte	0x1
	.value	0x7f1
	.long	0x14ce
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF871
	.byte	0x1
	.value	0x7f6
	.long	0x14ce
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ff
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x7f8
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x7f9
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x7fa
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF872
	.byte	0x1
	.value	0x7fb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF847
	.byte	0x1
	.value	0x7ff
	.long	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.value	0x801
	.long	0x14b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x24
	.long	.LASF873
	.byte	0x1
	.value	0x81b
	.long	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x81f
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF874
	.byte	0x1
	.value	0x82c
	.long	0x14ce
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b02
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x82e
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x834
	.long	0x146
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF875
	.byte	0x1
	.value	0x848
	.quad	.L648
	.uleb128 0x27
	.long	.LASF876
	.byte	0x1
	.value	0x84e
	.quad	.L652
	.uleb128 0x25
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0x840
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0x841
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.long	.LASF877
	.byte	0x1
	.value	0x842
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x843
	.long	0x2971
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x3ad1
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x84c
	.long	0x151f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0x85f
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF833
	.byte	0x1
	.value	0x860
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF878
	.byte	0x1
	.value	0x88b
	.long	0x14ce
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF879
	.byte	0x1
	.value	0x890
	.long	0x14ce
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bfa
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x892
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x892
	.long	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF880
	.byte	0x1
	.value	0x893
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF881
	.byte	0x1
	.value	0x894
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF882
	.byte	0x1
	.value	0x895
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x896
	.long	0x118
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF866
	.byte	0x1
	.value	0x897
	.long	0x3a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0x898
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0x899
	.long	0x2971
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x8a3
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF883
	.byte	0x1
	.value	0x8a4
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF884
	.byte	0x1
	.value	0x8db
	.long	0x14ce
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF885
	.byte	0x1
	.value	0x903
	.long	0x14ce
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF886
	.byte	0x1
	.value	0x938
	.long	0x14ce
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF887
	.byte	0x1
	.value	0x979
	.long	0x14ce
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF888
	.byte	0x1
	.value	0x9b4
	.long	0x14ce
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF889
	.byte	0x1
	.value	0x9d2
	.long	0x14ce
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF890
	.byte	0x1
	.value	0x9ec
	.long	0x14ce
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF891
	.byte	0x1
	.value	0xa33
	.long	0x14ce
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF892
	.byte	0x1
	.value	0xa4b
	.long	0x14ce
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF893
	.byte	0x1
	.value	0xa54
	.long	0x14ce
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF894
	.byte	0x1
	.value	0xa9c
	.long	0x14ce
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF895
	.byte	0x1
	.value	0xaa5
	.long	0x14ce
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF896
	.byte	0x1
	.value	0xae7
	.long	0x14ce
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF897
	.byte	0x1
	.value	0xaec
	.long	0x14ce
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e1b
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xaee
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0xaef
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF781
	.byte	0x1
	.value	0xaf0
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"max"
	.byte	0x1
	.value	0xaf1
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0xaf2
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF898
	.byte	0x1
	.value	0xaff
	.quad	.L731
	.uleb128 0x25
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0xb0e
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF899
	.byte	0x1
	.value	0xb65
	.long	0x14ce
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e5a
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xb67
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xb68
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF900
	.byte	0x1
	.value	0xb80
	.long	0x14ce
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e99
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xb82
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xb83
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF901
	.byte	0x1
	.value	0xb9b
	.long	0x14ce
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ed8
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xb9d
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xb9e
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF902
	.byte	0x1
	.value	0xbb6
	.long	0x14ce
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f17
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xbb8
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xbb9
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF903
	.byte	0x1
	.value	0xbd1
	.long	0x14ce
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f56
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xbd3
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xbd4
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF904
	.byte	0x1
	.value	0xbec
	.long	0x14ce
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f95
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xbee
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xbef
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF905
	.byte	0x1
	.value	0xc07
	.long	0x14ce
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fd4
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc09
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc0a
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x28
	.long	.LASF906
	.byte	0x1
	.value	0xc10
	.long	0x14ce
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF907
	.byte	0x1
	.value	0xc15
	.long	0x14ce
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4031
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc17
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc18
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF908
	.byte	0x1
	.value	0xc21
	.long	0x14ce
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4070
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc23
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc24
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF909
	.byte	0x1
	.value	0xc2c
	.long	0x14ce
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x40be
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc2e
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc2f
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xc2f
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF910
	.byte	0x1
	.value	0xc3a
	.long	0x14ce
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x410c
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc3c
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc3d
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xc3d
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF911
	.byte	0x1
	.value	0xc44
	.long	0x14ce
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x415a
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc46
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc47
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xc47
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF912
	.byte	0x1
	.value	0xc4e
	.long	0x14ce
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a8
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc50
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc51
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xc51
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF913
	.byte	0x1
	.value	0xc58
	.long	0x14ce
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e7
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc5a
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc5b
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF914
	.byte	0x1
	.value	0xc63
	.long	0x14ce
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x4226
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc65
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc66
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF915
	.byte	0x1
	.value	0xc6e
	.long	0x14ce
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x4265
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc70
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc71
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF916
	.byte	0x1
	.value	0xc79
	.long	0x14ce
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a4
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc7b
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc7c
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF917
	.byte	0x1
	.value	0xc84
	.long	0x14ce
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e3
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc86
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc87
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF918
	.byte	0x1
	.value	0xc8f
	.long	0x14ce
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x4322
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc91
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc92
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF919
	.byte	0x1
	.value	0xc9a
	.long	0x14ce
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x4361
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xc9c
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xc9d
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF920
	.byte	0x1
	.value	0xca5
	.long	0x14ce
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a0
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xca7
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xca9
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF921
	.byte	0x1
	.value	0xcb3
	.long	0x14ce
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x43df
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xcb5
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xcb7
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF922
	.byte	0x1
	.value	0xcc1
	.long	0x14ce
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x441e
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xcc3
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xcc5
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF923
	.byte	0x1
	.value	0xccf
	.long	0x14ce
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x4488
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xcd1
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.value	0xcd2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0xcd3
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0xcd4
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0xcd5
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x22
	.long	.LASF924
	.byte	0x1
	.value	0xcf3
	.long	0x14ce
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x45ac
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xcf5
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0xcf6
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xcf7
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x23
	.string	"odd"
	.byte	0x1
	.value	0xcf8
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x24
	.long	.LASF822
	.byte	0x1
	.value	0xcf9
	.long	0x45ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0xcfa
	.long	0x45bd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"io"
	.byte	0x1
	.value	0xcfb
	.long	0x2971
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.value	0xcfc
	.long	0x1362
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"gv"
	.byte	0x1
	.value	0xcfd
	.long	0x14eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0xcfe
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0xcff
	.long	0x151f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x27
	.long	.LASF925
	.byte	0x1
	.value	0xd3e
	.quad	.L906
	.uleb128 0x27
	.long	.LASF926
	.byte	0x1
	.value	0xd7d
	.quad	.L940
	.uleb128 0x25
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x24
	.long	.LASF927
	.byte	0x1
	.value	0xd70
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x25
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0xd72
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x49
	.long	0x45bd
	.uleb128 0x2b
	.long	0xcd
	.value	0x1ff
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x49
	.uleb128 0x28
	.long	.LASF928
	.byte	0x1
	.value	0xd8d
	.long	0x14ce
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF929
	.byte	0x1
	.value	0xd94
	.long	0x14ce
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x464d
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xd96
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xd96
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0xd97
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"svp"
	.byte	0x1
	.value	0xd98
	.long	0x2046
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0xd99
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x28
	.long	.LASF930
	.byte	0x1
	.value	0xdbd
	.long	0x14ce
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF931
	.byte	0x1
	.value	0xdcb
	.long	0x14ce
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF932
	.byte	0x1
	.value	0xdd9
	.long	0x14ce
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x46e5
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xddb
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0xddb
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xddb
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0xddc
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF933
	.byte	0x1
	.value	0xde3
	.long	0x14ce
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x4741
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xde5
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0xde5
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xde5
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0xde6
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF934
	.byte	0x1
	.value	0xded
	.long	0x14ce
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x479d
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xdef
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0xdef
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xdef
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0xdf0
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF935
	.byte	0x1
	.value	0xdf7
	.long	0x14ce
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x4819
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xdf9
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xdf9
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF936
	.byte	0x1
	.value	0xdfa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0xdfb
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF937
	.byte	0x1
	.value	0xdfd
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0xdfe
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF938
	.byte	0x1
	.value	0xe12
	.long	0x14ce
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF939
	.byte	0x1
	.value	0xe21
	.long	0x14ce
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF940
	.byte	0x1
	.value	0xe30
	.long	0x14ce
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x4885
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xe32
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF941
	.byte	0x1
	.value	0xeb5
	.long	0x14ce
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x4900
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xeb7
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xeb7
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF778
	.byte	0x1
	.value	0xeb8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xebc
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0xebd
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF942
	.byte	0x1
	.value	0xebe
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.byte	0
	.uleb128 0x22
	.long	.LASF943
	.byte	0x1
	.value	0xed5
	.long	0x14ce
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x496c
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xed7
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xed7
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0xed8
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0xed9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF942
	.byte	0x1
	.value	0xeda
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.byte	0
	.uleb128 0x28
	.long	.LASF944
	.byte	0x1
	.value	0xeea
	.long	0x14ce
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF945
	.byte	0x1
	.value	0xf05
	.long	0x14ce
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF946
	.byte	0x1
	.value	0xf38
	.long	0x14ce
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF947
	.byte	0x1
	.value	0xf54
	.long	0x14ce
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF948
	.byte	0x1
	.value	0xf6b
	.long	0x14ce
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF949
	.byte	0x1
	.value	0xf80
	.long	0x14ce
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF950
	.byte	0x1
	.value	0xfa0
	.long	0x14ce
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a7d
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xfa3
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xfa3
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF951
	.byte	0x1
	.value	0xfa4
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF877
	.byte	0x1
	.value	0xfa5
	.long	0x14eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF952
	.byte	0x1
	.value	0xfcc
	.long	0x14ce
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ada
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xfcf
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xfcf
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF951
	.byte	0x1
	.value	0xfd0
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF953
	.byte	0x1
	.value	0xfd1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.long	.LASF954
	.byte	0x1
	.value	0xfe8
	.long	0x14ce
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b55
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0xfeb
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0xfeb
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"pid"
	.byte	0x1
	.value	0xfec
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0xfed
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF882
	.byte	0x1
	.value	0xfee
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF953
	.byte	0x1
	.value	0xfef
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x22
	.long	.LASF955
	.byte	0x1
	.value	0x1008
	.long	0x14ce
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cb2
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x100a
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x100a
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x100a
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x100a
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0x100b
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0x100c
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0x100d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF956
	.byte	0x1
	.value	0x100e
	.long	0x132f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.uleb128 0x24
	.long	.LASF951
	.byte	0x1
	.value	0x101d
	.long	0x151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"pp"
	.byte	0x1
	.value	0x101e
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.long	0x4c8f
	.uleb128 0x2c
	.long	.LASF957
	.byte	0x1
	.value	0x1030
	.long	0x2300
	.uleb128 0x2c
	.long	.LASF958
	.byte	0x1
	.value	0x1030
	.long	0x2300
	.uleb128 0x24
	.long	.LASF959
	.byte	0x1
	.value	0x1031
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	.LASF960
	.byte	0x1
	.value	0x1048
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x1049
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"n1"
	.byte	0x1
	.value	0x1049
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.uleb128 0x24
	.long	.LASF961
	.byte	0x1
	.value	0x1065
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF962
	.byte	0x1
	.value	0x108e
	.long	0x14ce
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d4d
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1090
	.long	0x2046
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x1090
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF796
	.byte	0x1
	.value	0x1090
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x1090
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF818
	.byte	0x1
	.value	0x1091
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"n_a"
	.byte	0x1
	.value	0x1092
	.long	0x3d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.uleb128 0x24
	.long	.LASF961
	.byte	0x1
	.value	0x10a0
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF963
	.byte	0x1
	.value	0x10c2
	.long	0x14ce
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF964
	.byte	0x1
	.value	0x10d0
	.long	0x14ce
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF965
	.byte	0x1
	.value	0x10df
	.long	0x14ce
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF966
	.byte	0x1
	.value	0x10f8
	.long	0x14ce
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF967
	.byte	0x1
	.value	0x1118
	.long	0x14ce
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF968
	.byte	0x1
	.value	0x1125
	.long	0x14ce
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF969
	.byte	0x1
	.value	0x1136
	.long	0x14ce
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e40
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x1138
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x1138
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF970
	.byte	0x1
	.value	0x1141
	.long	0x14ce
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF971
	.byte	0x1
	.value	0x1166
	.long	0x14ce
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF972
	.byte	0x1
	.value	0x116b
	.long	0x14ce
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f17
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x116d
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF973
	.byte	0x1
	.value	0x116e
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF974
	.byte	0x1
	.value	0x116f
	.long	0x4f17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF975
	.byte	0x1
	.value	0x1170
	.long	0x4f1d
	.uleb128 0x9
	.byte	0x3
	.quad	dayname.11576
	.uleb128 0x24
	.long	.LASF976
	.byte	0x1
	.value	0x1171
	.long	0x4f2d
	.uleb128 0x9
	.byte	0x3
	.quad	monname.11577
	.uleb128 0x25
	.quad	.LBB160
	.quad	.LBE160-.LBB160
	.uleb128 0x23
	.string	"tsv"
	.byte	0x1
	.value	0x1183
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2f8
	.uleb128 0x5
	.long	0x118
	.long	0x4f2d
	.uleb128 0x6
	.long	0xcd
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x118
	.long	0x4f3d
	.uleb128 0x6
	.long	0xcd
	.byte	0xb
	.byte	0
	.uleb128 0x28
	.long	.LASF977
	.byte	0x1
	.value	0x11a2
	.long	0x14ce
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF978
	.byte	0x1
	.value	0x11b3
	.long	0x14ce
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fc7
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.value	0x11b5
	.long	0x2046
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF779
	.byte	0x1
	.value	0x11b5
	.long	0x1362
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF979
	.byte	0x1
	.value	0x11b6
	.long	0x132f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF980
	.byte	0x1
	.value	0x11b7
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF973
	.byte	0x1
	.value	0x11b8
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF981
	.byte	0x1
	.value	0x11c8
	.long	0x14ce
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF982
	.byte	0x1
	.value	0x11cd
	.long	0x14ce
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF983
	.byte	0x1
	.value	0x11d2
	.long	0x14ce
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF984
	.byte	0x1
	.value	0x11d7
	.long	0x14ce
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF985
	.byte	0x1
	.value	0x11e6
	.long	0x14ce
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF986
	.byte	0x1
	.value	0x11eb
	.long	0x14ce
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF987
	.byte	0x1
	.value	0x11f0
	.long	0x14ce
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF988
	.byte	0x1
	.value	0x11fd
	.long	0x14ce
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF989
	.byte	0x1
	.value	0x120c
	.long	0x14ce
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF990
	.byte	0x1
	.value	0x121b
	.long	0x14ce
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF991
	.byte	0x1
	.value	0x122f
	.long	0x14ce
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF992
	.byte	0x1
	.value	0x123e
	.long	0x14ce
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF993
	.byte	0x1
	.value	0x1247
	.long	0x14ce
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF994
	.byte	0x1
	.value	0x1250
	.long	0x14ce
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF995
	.byte	0x1
	.value	0x12b3
	.long	0x14ce
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF996
	.byte	0x1
	.value	0x12bc
	.long	0x14ce
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF997
	.byte	0x1
	.value	0x12c5
	.long	0x14ce
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF998
	.byte	0x1
	.value	0x1318
	.long	0x14ce
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF999
	.byte	0x1
	.value	0x1321
	.long	0x14ce
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1000
	.byte	0x1
	.value	0x132a
	.long	0x14ce
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1001
	.byte	0x1
	.value	0x136f
	.long	0x14ce
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1002
	.byte	0x1
	.value	0x1378
	.long	0x14ce
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1003
	.byte	0x1
	.value	0x1381
	.long	0x14ce
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1004
	.byte	0x1
	.value	0x13de
	.long	0x14ce
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1005
	.byte	0x1
	.value	0x13e9
	.long	0x14ce
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1006
	.byte	0x1
	.value	0x13f4
	.long	0x14ce
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1007
	.byte	0x1
	.value	0x13ff
	.long	0x14ce
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1008
	.byte	0x1
	.value	0x140a
	.long	0x14ce
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1009
	.byte	0x1
	.value	0x1416
	.long	0x14ce
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1010
	.byte	0x1
	.value	0x1422
	.long	0x14ce
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1011
	.byte	0x1
	.value	0x142e
	.long	0x14ce
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1012
	.byte	0x1
	.value	0x143a
	.long	0x14ce
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1013
	.byte	0x1
	.value	0x1443
	.long	0x14ce
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1014
	.byte	0x1
	.value	0x144c
	.long	0x14ce
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1015
	.byte	0x1
	.value	0x1539
	.long	0x14ce
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x1
	.value	0x1544
	.long	0x14ce
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1017
	.byte	0x1
	.value	0x154f
	.long	0x14ce
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1018
	.byte	0x1
	.value	0x1558
	.long	0x14ce
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1019
	.byte	0x1
	.value	0x1561
	.long	0x14ce
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1020
	.byte	0x1
	.value	0x15aa
	.long	0x14ce
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1021
	.byte	0x1
	.value	0x15b5
	.long	0x14ce
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1022
	.byte	0x1
	.value	0x15c0
	.long	0x14ce
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF1023
	.byte	0x1
	.value	0x15d1
	.long	0x14ce
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	0x11e
	.long	0x54e1
	.uleb128 0x6
	.long	0xcd
	.byte	0xa
	.byte	0
	.uleb128 0x2e
	.long	.LASF1024
	.byte	0x1
	.byte	0xae
	.long	0x54d1
	.uleb128 0x9
	.byte	0x3
	.quad	zero_but_true
	.uleb128 0x5
	.long	0x2d
	.long	0x5501
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	.LASF1025
	.byte	0x19
	.byte	0x29
	.long	0x550c
	.uleb128 0xc
	.long	0x54f6
	.uleb128 0x5
	.long	0x11e
	.long	0x551c
	.uleb128 0x2f
	.byte	0
	.uleb128 0x31
	.long	.LASF1026
	.byte	0xb
	.value	0xceb
	.long	0x5528
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x31
	.long	.LASF1027
	.byte	0xb
	.value	0xcf1
	.long	0x5539
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x31
	.long	.LASF1028
	.byte	0xb
	.value	0xcfb
	.long	0x554a
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x31
	.long	.LASF1029
	.byte	0xb
	.value	0xcfd
	.long	0x555b
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x31
	.long	.LASF1030
	.byte	0xb
	.value	0xcff
	.long	0x556c
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x31
	.long	.LASF1031
	.byte	0xb
	.value	0xd01
	.long	0x557d
	.uleb128 0xc
	.long	0x5511
	.uleb128 0x5
	.long	0x118
	.long	0x558d
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	.LASF1032
	.byte	0x1a
	.byte	0x1e
	.long	0x5582
	.uleb128 0x30
	.long	.LASF1033
	.byte	0x1b
	.byte	0x16
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1034
	.byte	0x1b
	.byte	0x34
	.long	0x131a
	.uleb128 0x30
	.long	.LASF1035
	.byte	0x1b
	.byte	0x42
	.long	0x167
	.uleb128 0x30
	.long	.LASF1036
	.byte	0x1b
	.byte	0x43
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1037
	.byte	0x1b
	.byte	0x49
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1038
	.byte	0x1b
	.byte	0x50
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1039
	.byte	0x1b
	.byte	0x51
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1040
	.byte	0x1b
	.byte	0x52
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1041
	.byte	0x1b
	.byte	0x53
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1042
	.byte	0x1b
	.byte	0x5d
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1043
	.byte	0x1b
	.byte	0x92
	.long	0x57
	.uleb128 0x30
	.long	.LASF1044
	.byte	0x1b
	.byte	0x98
	.long	0x11e
	.uleb128 0x30
	.long	.LASF1045
	.byte	0x1b
	.byte	0xaf
	.long	0x57
	.uleb128 0x30
	.long	.LASF1046
	.byte	0x1b
	.byte	0xb0
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1047
	.byte	0x1b
	.byte	0xed
	.long	0x13b
	.uleb128 0x30
	.long	.LASF1048
	.byte	0x1b
	.byte	0xee
	.long	0x13b
	.uleb128 0x30
	.long	.LASF1049
	.byte	0x1b
	.byte	0xf8
	.long	0x14b6
	.uleb128 0x31
	.long	.LASF1050
	.byte	0x1b
	.value	0x125
	.long	0x6dc
	.uleb128 0x31
	.long	.LASF1051
	.byte	0x1b
	.value	0x126
	.long	0x6dc
	.uleb128 0x31
	.long	.LASF1052
	.byte	0x1b
	.value	0x127
	.long	0x6dc
	.uleb128 0x31
	.long	.LASF1053
	.byte	0x1b
	.value	0x166
	.long	0x5e
	.uleb128 0x31
	.long	.LASF1054
	.byte	0x1b
	.value	0x1e2
	.long	0x57
	.uleb128 0x31
	.long	.LASF1055
	.byte	0x1b
	.value	0x21a
	.long	0x133a
	.uleb128 0x30
	.long	.LASF1056
	.byte	0x1c
	.byte	0x22
	.long	0x2046
	.uleb128 0x30
	.long	.LASF1057
	.byte	0x1c
	.byte	0x26
	.long	0x14ce
	.uleb128 0x30
	.long	.LASF1058
	.byte	0x1c
	.byte	0x28
	.long	0x2046
	.uleb128 0x30
	.long	.LASF1059
	.byte	0x1c
	.byte	0x2a
	.long	0x2046
	.uleb128 0x30
	.long	.LASF1060
	.byte	0x1c
	.byte	0x2b
	.long	0x2046
	.uleb128 0x30
	.long	.LASF1061
	.byte	0x1c
	.byte	0x2e
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1062
	.byte	0x1c
	.byte	0x31
	.long	0x56e8
	.uleb128 0x8
	.byte	0x8
	.long	0x126b
	.uleb128 0x30
	.long	.LASF1063
	.byte	0x1c
	.byte	0x33
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1064
	.byte	0x1c
	.byte	0x34
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1065
	.byte	0x1c
	.byte	0x37
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1066
	.byte	0x1c
	.byte	0x38
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1067
	.byte	0x1c
	.byte	0x39
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1068
	.byte	0x1c
	.byte	0x3b
	.long	0x13f1
	.uleb128 0x30
	.long	.LASF1069
	.byte	0x1c
	.byte	0x3c
	.long	0x13f1
	.uleb128 0x30
	.long	.LASF1070
	.byte	0x1c
	.byte	0x3d
	.long	0x13f1
	.uleb128 0x30
	.long	.LASF1071
	.byte	0x1c
	.byte	0x40
	.long	0x132f
	.uleb128 0x30
	.long	.LASF1072
	.byte	0x1c
	.byte	0x43
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1073
	.byte	0x1c
	.byte	0x55
	.long	0x227
	.uleb128 0x30
	.long	.LASF1074
	.byte	0x1c
	.byte	0x56
	.long	0x227
	.uleb128 0x30
	.long	.LASF1075
	.byte	0x1c
	.byte	0x57
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1076
	.byte	0x1c
	.byte	0x58
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1077
	.byte	0x1c
	.byte	0x5f
	.long	0x11e
	.uleb128 0x30
	.long	.LASF1078
	.byte	0x1c
	.byte	0x60
	.long	0x1ed7
	.uleb128 0x30
	.long	.LASF1079
	.byte	0x1c
	.byte	0x73
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1080
	.byte	0x1c
	.byte	0x74
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1081
	.byte	0x1c
	.byte	0x76
	.long	0x14eb
	.uleb128 0x30
	.long	.LASF1082
	.byte	0x1c
	.byte	0x78
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1083
	.byte	0x1c
	.byte	0x79
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1084
	.byte	0x1c
	.byte	0x7a
	.long	0x1362
	.uleb128 0x30
	.long	.LASF1085
	.byte	0x1c
	.byte	0x81
	.long	0x57eb
	.uleb128 0x32
	.long	0x207a
	.uleb128 0x30
	.long	.LASF1086
	.byte	0x1c
	.byte	0x87
	.long	0x14f1
	.uleb128 0x30
	.long	.LASF1087
	.byte	0x1c
	.byte	0x88
	.long	0x2c53
	.uleb128 0x31
	.long	.LASF1088
	.byte	0x1c
	.value	0x115
	.long	0x14f1
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB149-.Ltext0
	.quad	.LBE149-.Ltext0
	.quad	.LBB150-.Ltext0
	.quad	.LBE150-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF627:
	.string	"OP_ESERVENT"
.LASF552:
	.string	"OP_FTSVTX"
.LASF114:
	.string	"precomp"
.LASF505:
	.string	"OP_SYSREAD"
.LASF858:
	.string	"charstart"
.LASF146:
	.string	"blku_oldretsp"
.LASF522:
	.string	"OP_SHUTDOWN"
.LASF763:
	.string	"repeat_ass_amg"
.LASF731:
	.string	"rshift_ass_amg"
.LASF598:
	.string	"OP_MSGRCV"
.LASF698:
	.string	"si_prev"
.LASF994:
	.string	"Perl_pp_ghostent"
.LASF1055:
	.string	"PL_signals"
.LASF220:
	.string	"xpvfm"
.LASF1078:
	.string	"PL_curpm"
.LASF821:
	.string	"timebuf"
.LASF640:
	.string	"OP_LOCK"
.LASF58:
	.string	"tm_sec"
.LASF645:
	.string	"OP_max"
.LASF71:
	.string	"op_next"
.LASF290:
	.string	"xiou_any"
.LASF556:
	.string	"OP_CHDIR"
.LASF138:
	.string	"gp_file"
.LASF1028:
	.string	"PL_no_security"
.LASF470:
	.string	"OP_ENTER"
.LASF1016:
	.string	"Perl_pp_epwent"
.LASF825:
	.string	"Perl_pp_select"
.LASF321:
	.string	"OP_REGCMAYBE"
.LASF143:
	.string	"block"
.LASF451:
	.string	"OP_FLOP"
.LASF489:
	.string	"OP_BINMODE"
.LASF199:
	.string	"xpvgv"
.LASF224:
	.string	"xio_ifp"
.LASF381:
	.string	"OP_SEQ"
.LASF86:
	.string	"cop_io"
.LASF692:
	.string	"stackinfo"
.LASF836:
	.string	"am_again"
.LASF733:
	.string	"band_ass_amg"
.LASF740:
	.string	"gt_amg"
.LASF1012:
	.string	"Perl_pp_gpwnam"
.LASF543:
	.string	"OP_FTSOCK"
.LASF193:
	.string	"xhv_keys"
.LASF780:
	.string	"tmps"
.LASF239:
	.string	"xio_flags"
.LASF619:
	.string	"OP_GSERVENT"
.LASF243:
	.string	"svt_set"
.LASF189:
	.string	"xpvhv"
.LASF765:
	.string	"concat_ass_amg"
.LASF897:
	.string	"Perl_pp_stat"
.LASF1091:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF510:
	.string	"OP_TELL"
.LASF841:
	.string	"save"
.LASF1030:
	.string	"PL_no_dir_func"
.LASF582:
	.string	"OP_SETPGRP"
.LASF822:
	.string	"tbuf"
.LASF1071:
	.string	"PL_retstack_ix"
.LASF537:
	.string	"OP_FTROWNED"
.LASF132:
	.string	"gp_hv"
.LASF223:
	.string	"xpvio"
.LASF526:
	.string	"OP_GETPEERNAME"
.LASF380:
	.string	"OP_SGE"
.LASF167:
	.string	"xpviv"
.LASF757:
	.string	"cos_amg"
.LASF956:
	.string	"did_pipes"
.LASF1088:
	.string	"PL_comppad"
.LASF684:
	.string	"sbu_targ"
.LASF462:
	.string	"OP_CALLER"
.LASF29:
	.string	"time_t"
.LASF520:
	.string	"OP_LISTEN"
.LASF378:
	.string	"OP_SGT"
.LASF859:
	.string	"charskip"
.LASF592:
	.string	"OP_SHMCTL"
.LASF931:
	.string	"Perl_pp_chroot"
.LASF809:
	.string	"next"
.LASF350:
	.string	"OP_DIVIDE"
.LASF849:
	.string	"length"
.LASF991:
	.string	"Perl_pp_semop"
.LASF208:
	.string	"xcv_start"
.LASF13:
	.string	"__off_t"
.LASF129:
	.string	"gp_io"
.LASF133:
	.string	"gp_egv"
.LASF51:
	.string	"st_size"
.LASF676:
	.string	"sbu_iters"
.LASF395:
	.string	"OP_SRAND"
.LASF896:
	.string	"Perl_pp_lstat"
.LASF705:
	.string	"hek_hash"
.LASF744:
	.string	"ncmp_amg"
.LASF66:
	.string	"tm_isdst"
.LASF84:
	.string	"cop_line"
.LASF1011:
	.string	"Perl_pp_eservent"
.LASF207:
	.string	"xcv_stash"
.LASF709:
	.string	"Sigsave_t"
.LASF361:
	.string	"OP_LEFT_SHIFT"
.LASF1062:
	.string	"PL_savestack"
.LASF1077:
	.string	"PL_tainted"
.LASF628:
	.string	"OP_GPWNAM"
.LASF760:
	.string	"log_amg"
.LASF212:
	.string	"xcv_gv"
.LASF491:
	.string	"OP_UNTIE"
.LASF392:
	.string	"OP_SIN"
.LASF699:
	.string	"si_next"
.LASF880:
	.string	"argsv"
.LASF579:
	.string	"OP_KILL"
.LASF788:
	.string	"mark"
.LASF164:
	.string	"xpv_cur"
.LASF982:
	.string	"Perl_pp_shmctl"
.LASF447:
	.string	"OP_MAPSTART"
.LASF928:
	.string	"Perl_pp_ftbinary"
.LASF319:
	.string	"OP_READLINE"
.LASF332:
	.string	"OP_SCHOP"
.LASF157:
	.string	"mg_type"
.LASF565:
	.string	"OP_READLINK"
.LASF456:
	.string	"OP_ANDASSIGN"
.LASF52:
	.string	"st_blksize"
.LASF743:
	.string	"ne_amg"
.LASF828:
	.string	"Perl_pp_read"
.LASF163:
	.string	"xpv_pv"
.LASF863:
	.string	"bend"
.LASF777:
	.string	"path"
.LASF957:
	.string	"ihand"
.LASF781:
	.string	"gimme"
.LASF1092:
	.string	"opcode"
.LASF458:
	.string	"OP_METHOD"
.LASF941:
	.string	"Perl_pp_mkdir"
.LASF827:
	.string	"Perl_pp_getc"
.LASF915:
	.string	"Perl_pp_ftblk"
.LASF1027:
	.string	"PL_no_usym"
.LASF1029:
	.string	"PL_no_sock_func"
.LASF335:
	.string	"OP_DEFINED"
.LASF176:
	.string	"xpvmg"
.LASF813:
	.string	"Perl_pp_dbmopen"
.LASF683:
	.string	"sbu_dstr"
.LASF742:
	.string	"eq_amg"
.LASF48:
	.string	"st_gid"
.LASF573:
	.string	"OP_CLOSEDIR"
.LASF600:
	.string	"OP_SEMCTL"
.LASF476:
	.string	"OP_LEAVELOOP"
.LASF567:
	.string	"OP_RMDIR"
.LASF506:
	.string	"OP_SYSWRITE"
.LASF288:
	.string	"cv_flags_t"
.LASF137:
	.string	"gp_line"
.LASF637:
	.string	"OP_EGRENT"
.LASF944:
	.string	"Perl_pp_open_dir"
.LASF675:
	.string	"subst"
.LASF21:
	.string	"__syscall_slong_t"
.LASF229:
	.string	"xio_page_len"
.LASF334:
	.string	"OP_SCHOMP"
.LASF804:
	.string	"Perl_pp_tie"
.LASF739:
	.string	"le_amg"
.LASF500:
	.string	"OP_LEAVEWRITE"
.LASF45:
	.string	"st_nlink"
.LASF379:
	.string	"OP_SLE"
.LASF173:
	.string	"xpvnv"
.LASF200:
	.string	"xgv_gp"
.LASF862:
	.string	"more_bytes"
.LASF499:
	.string	"OP_ENTERWRITE"
.LASF377:
	.string	"OP_SLT"
.LASF433:
	.string	"OP_JOIN"
.LASF156:
	.string	"mg_private"
.LASF1072:
	.string	"PL_Sv"
.LASF333:
	.string	"OP_CHOMP"
.LASF56:
	.string	"st_ctim"
.LASF867:
	.string	"Perl_pp_recv"
.LASF769:
	.string	"to_av_amg"
.LASF1019:
	.string	"Perl_pp_ggrent"
.LASF682:
	.string	"sbu_orig"
.LASF914:
	.string	"Perl_pp_ftchr"
.LASF426:
	.string	"OP_EXISTS"
.LASF186:
	.string	"xav_arylen"
.LASF126:
	.string	"program"
.LASF904:
	.string	"Perl_pp_fteexec"
.LASF209:
	.string	"xcv_root"
.LASF873:
	.string	"sought"
.LASF908:
	.string	"Perl_pp_ftzero"
.LASF655:
	.string	"old_in_eval"
.LASF266:
	.string	"Sighandler_t"
.LASF155:
	.string	"mg_virtual"
.LASF475:
	.string	"OP_ENTERLOOP"
.LASF294:
	.string	"OP_STUB"
.LASF1035:
	.string	"PL_basetime"
.LASF759:
	.string	"exp_amg"
.LASF1037:
	.string	"PL_statusvalue"
.LASF766:
	.string	"copy_amg"
.LASF1036:
	.string	"PL_formfeed"
.LASF900:
	.string	"Perl_pp_ftrwrite"
.LASF82:
	.string	"cop_seq"
.LASF485:
	.string	"OP_CLOSE"
.LASF965:
	.string	"Perl_pp_getpgrp"
.LASF1009:
	.string	"Perl_pp_enetent"
.LASF382:
	.string	"OP_SNE"
.LASF107:
	.string	"sv_flags"
.LASF732:
	.string	"band_amg"
.LASF589:
	.string	"OP_ALARM"
.LASF370:
	.string	"OP_I_GE"
.LASF1021:
	.string	"Perl_pp_egrent"
.LASF714:
	.string	"string_amg"
.LASF920:
	.string	"Perl_pp_ftsuid"
.LASF1082:
	.string	"PL_formtarget"
.LASF854:
	.string	"fp_utf8"
.LASF366:
	.string	"OP_I_GT"
.LASF104:
	.string	"broiled"
.LASF234:
	.string	"xio_fmt_gv"
.LASF54:
	.string	"st_atim"
.LASF1025:
	.string	"PL_utf8skip"
.LASF490:
	.string	"OP_TIE"
.LASF323:
	.string	"OP_REGCOMP"
.LASF136:
	.string	"gp_flags"
.LASF142:
	.string	"cx_u"
.LASF331:
	.string	"OP_CHOP"
.LASF213:
	.string	"xcv_file"
.LASF128:
	.string	"gp_refcnt"
.LASF666:
	.string	"itervar"
.LASF122:
	.string	"nparens"
.LASF605:
	.string	"OP_LEAVEEVAL"
.LASF268:
	.string	"type"
.LASF494:
	.string	"OP_DBMCLOSE"
.LASF348:
	.string	"OP_MULTIPLY"
.LASF457:
	.string	"OP_ORASSIGN"
.LASF901:
	.string	"Perl_pp_ftrexec"
.LASF8:
	.string	"__uid_t"
.LASF523:
	.string	"OP_GSOCKOPT"
.LASF228:
	.string	"xio_page"
.LASF621:
	.string	"OP_SNETENT"
.LASF1048:
	.string	"PL_euid"
.LASF1045:
	.string	"PL_laststatval"
.LASF463:
	.string	"OP_WARN"
.LASF591:
	.string	"OP_SHMGET"
.LASF878:
	.string	"Perl_pp_fcntl"
.LASF399:
	.string	"OP_INT"
.LASF613:
	.string	"OP_GNETENT"
.LASF917:
	.string	"Perl_pp_ftdir"
.LASF580:
	.string	"OP_GETPPID"
.LASF872:
	.string	"whence"
.LASF778:
	.string	"mode"
.LASF403:
	.string	"OP_LENGTH"
.LASF324:
	.string	"OP_MATCH"
.LASF215:
	.string	"xcv_padlist"
.LASF548:
	.string	"OP_FTPIPE"
.LASF477:
	.string	"OP_RETURN"
.LASF871:
	.string	"Perl_pp_sysseek"
.LASF674:
	.string	"blku_loop"
.LASF713:
	.string	"nomethod_amg"
.LASF387:
	.string	"OP_NEGATE"
.LASF955:
	.string	"Perl_pp_system"
.LASF127:
	.string	"gp_sv"
.LASF1002:
	.string	"Perl_pp_gsbyport"
.LASF0:
	.string	"unsigned char"
.LASF1023:
	.string	"Perl_pp_syscall"
.LASF444:
	.string	"OP_REVERSE"
.LASF1033:
	.string	"PL_envgv"
.LASF626:
	.string	"OP_EPROTOENT"
.LASF402:
	.string	"OP_ABS"
.LASF265:
	.string	"PerlIO"
.LASF685:
	.string	"sbu_s"
.LASF36:
	.string	"__fd_mask"
.LASF19:
	.string	"__blkcnt_t"
.LASF927:
	.string	"ulen"
.LASF616:
	.string	"OP_GPROTOENT"
.LASF708:
	.string	"float"
.LASF860:
	.string	"skip"
.LASF667:
	.string	"itersave"
.LASF1076:
	.string	"PL_statname"
.LASF876:
	.string	"do_ftruncate_io"
.LASF1018:
	.string	"Perl_pp_ggrgid"
.LASF170:
	.string	"xpvuv"
.LASF105:
	.string	"sv_any"
.LASF869:
	.string	"Perl_pp_tell"
.LASF1049:
	.string	"PL_pidstatus"
.LASF437:
	.string	"OP_ANONHASH"
.LASF368:
	.string	"OP_I_LE"
.LASF636:
	.string	"OP_SGRENT"
.LASF654:
	.string	"block_eval"
.LASF364:
	.string	"OP_I_LT"
.LASF746:
	.string	"slt_amg"
.LASF455:
	.string	"OP_COND_EXPR"
.LASF549:
	.string	"OP_FTLINK"
.LASF125:
	.string	"reganch"
.LASF948:
	.string	"Perl_pp_rewinddir"
.LASF258:
	.string	"stashes"
.LASF483:
	.string	"OP_EXIT"
.LASF111:
	.string	"endp"
.LASF26:
	.string	"off_t"
.LASF599:
	.string	"OP_SEMGET"
.LASF326:
	.string	"OP_SUBST"
.LASF952:
	.string	"Perl_pp_wait"
.LASF449:
	.string	"OP_RANGE"
.LASF295:
	.string	"OP_SCALAR"
.LASF808:
	.string	"items"
.LASF68:
	.string	"tm_zone"
.LASF975:
	.string	"dayname"
.LASF622:
	.string	"OP_SPROTOENT"
.LASF597:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF422:
	.string	"OP_EACH"
.LASF839:
	.string	"topname"
.LASF594:
	.string	"OP_SHMWRITE"
.LASF423:
	.string	"OP_VALUES"
.LASF445:
	.string	"OP_GREPSTART"
.LASF902:
	.string	"Perl_pp_fteread"
.LASF30:
	.string	"size_t"
.LASF35:
	.string	"tv_usec"
.LASF1000:
	.string	"Perl_pp_gprotoent"
.LASF312:
	.string	"OP_PROTOTYPE"
.LASF910:
	.string	"Perl_pp_ftmtime"
.LASF374:
	.string	"OP_I_NE"
.LASF986:
	.string	"Perl_pp_msgctl"
.LASF1063:
	.string	"PL_savestack_ix"
.LASF979:
	.string	"duration"
.LASF317:
	.string	"OP_BACKTICK"
.LASF566:
	.string	"OP_MKDIR"
.LASF1003:
	.string	"Perl_pp_gservent"
.LASF831:
	.string	"retop"
.LASF1040:
	.string	"PL_defgv"
.LASF285:
	.string	"SVt_PVGV"
.LASF673:
	.string	"blku_eval"
.LASF963:
	.string	"Perl_pp_kill"
.LASF118:
	.string	"sublen"
.LASF960:
	.string	"errkid"
.LASF974:
	.string	"tmbuf"
.LASF471:
	.string	"OP_LEAVE"
.LASF182:
	.string	"xav_fill"
.LASF557:
	.string	"OP_CHOWN"
.LASF583:
	.string	"OP_GETPRIORITY"
.LASF664:
	.string	"next_op"
.LASF531:
	.string	"OP_FTREXEC"
.LASF154:
	.string	"mg_moremagic"
.LASF562:
	.string	"OP_RENAME"
.LASF907:
	.string	"Perl_pp_ftrowned"
.LASF687:
	.string	"sbu_strend"
.LASF970:
	.string	"Perl_pp_tms"
.LASF83:
	.string	"cop_arybase"
.LASF1069:
	.string	"PL_markstack_ptr"
.LASF17:
	.string	"__suseconds_t"
.LASF405:
	.string	"OP_VEC"
.LASF696:
	.string	"si_cxmax"
.LASF498:
	.string	"OP_READ"
.LASF466:
	.string	"OP_LINESEQ"
.LASF160:
	.string	"mg_ptr"
.LASF492:
	.string	"OP_TIED"
.LASF343:
	.string	"OP_POSTINC"
.LASF794:
	.string	"line"
.LASF671:
	.string	"itermax"
.LASF997:
	.string	"Perl_pp_gnetent"
.LASF430:
	.string	"OP_UNPACK"
.LASF587:
	.string	"OP_LOCALTIME"
.LASF237:
	.string	"xio_subprocess"
.LASF546:
	.string	"OP_FTFILE"
.LASF116:
	.string	"subbeg"
.LASF110:
	.string	"startp"
.LASF814:
	.string	"right"
.LASF770:
	.string	"to_hv_amg"
.LASF945:
	.string	"Perl_pp_readdir"
.LASF633:
	.string	"OP_GGRNAM"
.LASF789:
	.string	"error"
.LASF1089:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF357:
	.string	"OP_SUBTRACT"
.LASF533:
	.string	"OP_FTEWRITE"
.LASF1004:
	.string	"Perl_pp_shostent"
.LASF771:
	.string	"to_gv_amg"
.LASF559:
	.string	"OP_UNLINK"
.LASF823:
	.string	"growsize"
.LASF109:
	.string	"regexp"
.LASF642:
	.string	"OP_SETSTATE"
.LASF479:
	.string	"OP_NEXT"
.LASF514:
	.string	"OP_IOCTL"
.LASF899:
	.string	"Perl_pp_ftrread"
.LASF1044:
	.string	"PL_tainting"
.LASF888:
	.string	"Perl_pp_connect"
.LASF972:
	.string	"Perl_pp_gmtime"
.LASF935:
	.string	"Perl_pp_rename"
.LASF108:
	.string	"REGEXP"
.LASF106:
	.string	"sv_refcnt"
.LASF889:
	.string	"Perl_pp_listen"
.LASF474:
	.string	"OP_ITER"
.LASF551:
	.string	"OP_FTSGID"
.LASF306:
	.string	"OP_PUSHRE"
.LASF844:
	.string	"Perl_pp_sysopen"
.LASF304:
	.string	"OP_PADHV"
.LASF574:
	.string	"OP_FORK"
.LASF244:
	.string	"svt_len"
.LASF993:
	.string	"Perl_pp_ghbyaddr"
.LASF776:
	.string	"max_amg_code"
.LASF269:
	.string	"next_off"
.LASF468:
	.string	"OP_DBSTATE"
.LASF884:
	.string	"Perl_pp_flock"
.LASF77:
	.string	"op_flags"
.LASF826:
	.string	"newdefout"
.LASF57:
	.string	"__unused"
.LASF85:
	.string	"cop_warnings"
.LASF701:
	.string	"PERL_SI"
.LASF796:
	.string	"origmark"
.LASF41:
	.string	"socklen_t"
.LASF113:
	.string	"substrs"
.LASF951:
	.string	"childpid"
.LASF1075:
	.string	"PL_statgv"
.LASF629:
	.string	"OP_GPWUID"
.LASF337:
	.string	"OP_STUDY"
.LASF404:
	.string	"OP_SUBSTR"
.LASF148:
	.string	"blku_oldscopesp"
.LASF282:
	.string	"SVt_PVAV"
.LASF949:
	.string	"Perl_pp_closedir"
.LASF610:
	.string	"OP_GHOSTENT"
.LASF695:
	.string	"si_cxix"
.LASF1026:
	.string	"PL_warn_nl"
.LASF190:
	.string	"xhv_array"
.LASF612:
	.string	"OP_GNBYADDR"
.LASF727:
	.string	"pow_ass_amg"
.LASF864:
	.string	"Perl_pp_syswrite"
.LASF117:
	.string	"offsets"
.LASF750:
	.string	"seq_amg"
.LASF438:
	.string	"OP_SPLICE"
.LASF895:
	.string	"Perl_pp_getpeername"
.LASF383:
	.string	"OP_SCMP"
.LASF570:
	.string	"OP_TELLDIR"
.LASF235:
	.string	"xio_bottom_name"
.LASF384:
	.string	"OP_BIT_AND"
.LASF793:
	.string	"file"
.LASF280:
	.string	"SVt_PVBM"
.LASF12:
	.string	"__nlink_t"
.LASF710:
	.string	"fallback_amg"
.LASF1050:
	.string	"PL_sv_undef"
.LASF44:
	.string	"st_ino"
.LASF46:
	.string	"st_mode"
.LASF152:
	.string	"MAGIC"
.LASF79:
	.string	"cop_label"
.LASF1083:
	.string	"PL_bodytarget"
.LASF954:
	.string	"Perl_pp_waitpid"
.LASF158:
	.string	"mg_flags"
.LASF659:
	.string	"cur_text"
.LASF179:
	.string	"XPVAV"
.LASF100:
	.string	"svop"
.LASF284:
	.string	"SVt_PVCV"
.LASF787:
	.string	"Perl_pp_warn"
.LASF340:
	.string	"OP_I_PREINC"
.LASF121:
	.string	"prelen"
.LASF703:
	.string	"hent_hek"
.LASF1085:
	.string	"PL_curcop"
.LASF446:
	.string	"OP_GREPWHILE"
.LASF983:
	.string	"Perl_pp_shmread"
.LASF480:
	.string	"OP_REDO"
.LASF74:
	.string	"op_targ"
.LASF818:
	.string	"value"
.LASF339:
	.string	"OP_PREINC"
.LASF236:
	.string	"xio_bottom_gv"
.LASF885:
	.string	"Perl_pp_socket"
.LASF1039:
	.string	"PL_stderrgv"
.LASF336:
	.string	"OP_UNDEF"
.LASF389:
	.string	"OP_NOT"
.LASF487:
	.string	"OP_FILENO"
.LASF147:
	.string	"blku_oldmarksp"
.LASF452:
	.string	"OP_AND"
.LASF23:
	.string	"__socklen_t"
.LASF604:
	.string	"OP_ENTEREVAL"
.LASF985:
	.string	"Perl_pp_msgget"
.LASF1032:
	.string	"PL_op_name"
.LASF123:
	.string	"lastparen"
.LASF735:
	.string	"bor_ass_amg"
.LASF205:
	.string	"XPVCV"
.LASF669:
	.string	"iterary"
.LASF1064:
	.string	"PL_savestack_max"
.LASF386:
	.string	"OP_BIT_OR"
.LASF1007:
	.string	"Perl_pp_sservent"
.LASF521:
	.string	"OP_ACCEPT"
.LASF835:
	.string	"newsp"
.LASF1058:
	.string	"PL_curpad"
.LASF493:
	.string	"OP_DBMOPEN"
.LASF638:
	.string	"OP_GETLOGIN"
.LASF20:
	.string	"__ssize_t"
.LASF271:
	.string	"reg_data"
.LASF233:
	.string	"xio_fmt_name"
.LASF704:
	.string	"hent_val"
.LASF469:
	.string	"OP_UNSTACK"
.LASF1024:
	.string	"zero_but_true"
.LASF174:
	.string	"xnv_nv"
.LASF33:
	.string	"timespec"
.LASF702:
	.string	"hent_next"
.LASF511:
	.string	"OP_SEEK"
.LASF730:
	.string	"rshift_amg"
.LASF246:
	.string	"svt_free"
.LASF97:
	.string	"op_pmdynflags"
.LASF801:
	.string	"Perl_pp_umask"
.LASF861:
	.string	"say_undef"
.LASF773:
	.string	"iter_amg"
.LASF748:
	.string	"sgt_amg"
.LASF922:
	.string	"Perl_pp_ftsvtx"
.LASF286:
	.string	"SVt_PVFM"
.LASF892:
	.string	"Perl_pp_gsockopt"
.LASF995:
	.string	"Perl_pp_gnbyname"
.LASF441:
	.string	"OP_SHIFT"
.LASF1042:
	.string	"PL_errgv"
.LASF467:
	.string	"OP_NEXTSTATE"
.LASF257:
	.string	"clone_params"
.LASF988:
	.string	"Perl_pp_msgrcv"
.LASF635:
	.string	"OP_GGRENT"
.LASF737:
	.string	"bxor_ass_amg"
.LASF376:
	.string	"OP_I_NCMP"
.LASF969:
	.string	"Perl_pp_time"
.LASF354:
	.string	"OP_REPEAT"
.LASF414:
	.string	"OP_LCFIRST"
.LASF553:
	.string	"OP_FTTTY"
.LASF905:
	.string	"Perl_pp_ftis"
.LASF1041:
	.string	"PL_argvgv"
.LASF882:
	.string	"optype"
.LASF359:
	.string	"OP_CONCAT"
.LASF47:
	.string	"st_uid"
.LASF686:
	.string	"sbu_m"
.LASF216:
	.string	"xcv_outside"
.LASF291:
	.string	"PADLIST"
.LASF255:
	.string	"any_dxptr"
.LASF1066:
	.string	"PL_tmps_floor"
.LASF442:
	.string	"OP_UNSHIFT"
.LASF204:
	.string	"xgv_flags"
.LASF153:
	.string	"magic"
.LASF219:
	.string	"XPVFM"
.LASF585:
	.string	"OP_TIME"
.LASF534:
	.string	"OP_FTEEXEC"
.LASF1052:
	.string	"PL_sv_yes"
.LASF631:
	.string	"OP_SPWENT"
.LASF886:
	.string	"Perl_pp_sockpair"
.LASF785:
	.string	"result"
.LASF536:
	.string	"OP_FTEOWNED"
.LASF351:
	.string	"OP_I_DIVIDE"
.LASF372:
	.string	"OP_I_EQ"
.LASF1046:
	.string	"PL_laststype"
.LASF283:
	.string	"SVt_PVHV"
.LASF874:
	.string	"Perl_pp_truncate"
.LASF272:
	.string	"SVt_NULL"
.LASF1054:
	.string	"PL_sig_pending"
.LASF59:
	.string	"tm_min"
.LASF933:
	.string	"Perl_pp_chmod"
.LASF602:
	.string	"OP_REQUIRE"
.LASF913:
	.string	"Perl_pp_ftsock"
.LASF241:
	.string	"mgvtbl"
.LASF791:
	.string	"multiarg"
.LASF947:
	.string	"Perl_pp_seekdir"
.LASF318:
	.string	"OP_GLOB"
.LASF571:
	.string	"OP_SEEKDIR"
.LASF939:
	.string	"Perl_pp_symlink"
.LASF198:
	.string	"XPVGV"
.LASF934:
	.string	"Perl_pp_utime"
.LASF946:
	.string	"Perl_pp_telldir"
.LASF501:
	.string	"OP_PRTF"
.LASF689:
	.string	"sbu_rx"
.LASF240:
	.string	"MGVTBL"
.LASF611:
	.string	"OP_GNBYNAME"
.LASF691:
	.string	"cx_subst"
.LASF690:
	.string	"cx_blk"
.LASF287:
	.string	"SVt_PVIO"
.LASF16:
	.string	"__time_t"
.LASF277:
	.string	"SVt_PVIV"
.LASF397:
	.string	"OP_LOG"
.LASF119:
	.string	"refcnt"
.LASF344:
	.string	"OP_I_POSTINC"
.LASF772:
	.string	"to_cv_amg"
.LASF681:
	.string	"sbu_rxtainted"
.LASF563:
	.string	"OP_LINK"
.LASF65:
	.string	"tm_yday"
.LASF741:
	.string	"ge_amg"
.LASF188:
	.string	"XPVHV"
.LASF15:
	.string	"sizetype"
.LASF371:
	.string	"OP_EQ"
.LASF298:
	.string	"OP_CONST"
.LASF799:
	.string	"Perl_pp_pipe_op"
.LASF820:
	.string	"nfound"
.LASF812:
	.string	"Perl_pp_tied"
.LASF93:
	.string	"op_pmnext"
.LASF183:
	.string	"xav_max"
.LASF519:
	.string	"OP_CONNECT"
.LASF210:
	.string	"xcv_xsub"
.LASF586:
	.string	"OP_TMS"
.LASF651:
	.string	"hasargs"
.LASF461:
	.string	"OP_LEAVESUBLV"
.LASF525:
	.string	"OP_GETSOCKNAME"
.LASF78:
	.string	"op_private"
.LASF301:
	.string	"OP_GELEM"
.LASF411:
	.string	"OP_CHR"
.LASF755:
	.string	"dec_amg"
.LASF249:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF999:
	.string	"Perl_pp_gpbynumber"
.LASF1059:
	.string	"PL_stack_base"
.LASF929:
	.string	"Perl_pp_chdir"
.LASF360:
	.string	"OP_STRINGIFY"
.LASF578:
	.string	"OP_EXEC"
.LASF358:
	.string	"OP_I_SUBTRACT"
.LASF222:
	.string	"XPVIO"
.LASF18:
	.string	"__blksize_t"
.LASF166:
	.string	"XPVIV"
.LASF984:
	.string	"Perl_pp_shmwrite"
.LASF185:
	.string	"xav_alloc"
.LASF355:
	.string	"OP_ADD"
.LASF299:
	.string	"OP_GVSV"
.LASF679:
	.string	"sbu_oldsave"
.LASF192:
	.string	"xhv_max"
.LASF120:
	.string	"minlen"
.LASF959:
	.string	"status"
.LASF330:
	.string	"OP_AASSIGN"
.LASF1074:
	.string	"PL_statcache"
.LASF850:
	.string	"count"
.LASF909:
	.string	"Perl_pp_ftsize"
.LASF504:
	.string	"OP_SYSSEEK"
.LASF178:
	.string	"xmg_stash"
.LASF601:
	.string	"OP_SEMOP"
.LASF678:
	.string	"sbu_rflags"
.LASF792:
	.string	"stash"
.LASF980:
	.string	"lasttime"
.LASF112:
	.string	"regstclass"
.LASF369:
	.string	"OP_GE"
.LASF783:
	.string	"Perl_pp_backtick"
.LASF195:
	.string	"xhv_eiter"
.LASF435:
	.string	"OP_LSLICE"
.LASF64:
	.string	"tm_wday"
.LASF1008:
	.string	"Perl_pp_ehostent"
.LASF365:
	.string	"OP_GT"
.LASF300:
	.string	"OP_GV"
.LASF527:
	.string	"OP_LSTAT"
.LASF496:
	.string	"OP_SELECT"
.LASF590:
	.string	"OP_SLEEP"
.LASF281:
	.string	"SVt_PVLV"
.LASF270:
	.string	"reg_substr_data"
.LASF747:
	.string	"sle_amg"
.LASF652:
	.string	"lval"
.LASF648:
	.string	"savearray"
.LASF668:
	.string	"iterlval"
.LASF672:
	.string	"blku_sub"
.LASF716:
	.string	"add_amg"
.LASF297:
	.string	"OP_WANTARRAY"
.LASF1060:
	.string	"PL_stack_max"
.LASF855:
	.string	"buffer_utf8"
.LASF950:
	.string	"Perl_pp_fork"
.LASF362:
	.string	"OP_RIGHT_SHIFT"
.LASF617:
	.string	"OP_GSBYNAME"
.LASF151:
	.string	"blk_u"
.LASF279:
	.string	"SVt_PVMG"
.LASF184:
	.string	"xof_off"
.LASF584:
	.string	"OP_SETPRIORITY"
.LASF843:
	.string	"just_say_no"
.LASF719:
	.string	"subtr_ass_amg"
.LASF911:
	.string	"Perl_pp_ftatime"
.LASF634:
	.string	"OP_GGRGID"
.LASF202:
	.string	"xgv_namelen"
.LASF1013:
	.string	"Perl_pp_gpwuid"
.LASF90:
	.string	"op_last"
.LASF303:
	.string	"OP_PADAV"
.LASF263:
	.string	"__dirstream"
.LASF431:
	.string	"OP_PACK"
.LASF252:
	.string	"any_long"
.LASF881:
	.string	"func"
.LASF990:
	.string	"Perl_pp_semctl"
.LASF484:
	.string	"OP_OPEN"
.LASF797:
	.string	"Perl_pp_close"
.LASF1065:
	.string	"PL_tmps_ix"
.LASF76:
	.string	"op_seq"
.LASF752:
	.string	"not_amg"
.LASF1086:
	.string	"PL_curstack"
.LASF615:
	.string	"OP_GPBYNUMBER"
.LASF803:
	.string	"discp"
.LASF150:
	.string	"blku_gimme"
.LASF278:
	.string	"SVt_PVNV"
.LASF87:
	.string	"PMOP"
.LASF418:
	.string	"OP_RV2AV"
.LASF502:
	.string	"OP_PRINT"
.LASF62:
	.string	"tm_mon"
.LASF507:
	.string	"OP_SEND"
.LASF545:
	.string	"OP_FTBLK"
.LASF942:
	.string	"copy"
.LASF124:
	.string	"lastcloseparen"
.LASF998:
	.string	"Perl_pp_gpbyname"
.LASF175:
	.string	"XPVMG"
.LASF711:
	.string	"abs_amg"
.LASF558:
	.string	"OP_CHROOT"
.LASF1057:
	.string	"PL_op"
.LASF238:
	.string	"xio_type"
.LASF532:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF893:
	.string	"Perl_pp_ssockopt"
.LASF245:
	.string	"svt_clear"
.LASF903:
	.string	"Perl_pp_ftewrite"
.LASF225:
	.string	"xio_ofp"
.LASF203:
	.string	"xgv_stash"
.LASF401:
	.string	"OP_OCT"
.LASF811:
	.string	"Perl_pp_untie"
.LASF656:
	.string	"old_op_type"
.LASF356:
	.string	"OP_I_ADD"
.LASF91:
	.string	"op_pmreplroot"
.LASF63:
	.string	"tm_year"
.LASF936:
	.string	"anum"
.LASF958:
	.string	"qhand"
.LASF214:
	.string	"xcv_depth"
.LASF34:
	.string	"timeval"
.LASF135:
	.string	"gp_cvgen"
.LASF172:
	.string	"XPVNV"
.LASF194:
	.string	"xhv_riter"
.LASF37:
	.string	"__fds_bits"
.LASF661:
	.string	"label"
.LASF310:
	.string	"OP_RV2CV"
.LASF140:
	.string	"context"
.LASF647:
	.string	"dfoutgv"
.LASF830:
	.string	"S_doform"
.LASF1038:
	.string	"PL_stdingv"
.LASF745:
	.string	"scmp_amg"
.LASF544:
	.string	"OP_FTCHR"
.LASF851:
	.string	"bufsize"
.LASF1051:
	.string	"PL_sv_no"
.LASF443:
	.string	"OP_SORT"
.LASF416:
	.string	"OP_LC"
.LASF367:
	.string	"OP_LE"
.LASF14:
	.string	"__pid_t"
.LASF618:
	.string	"OP_GSBYPORT"
.LASF92:
	.string	"op_pmreplstart"
.LASF644:
	.string	"OP_CUSTOM"
.LASF363:
	.string	"OP_LT"
.LASF385:
	.string	"OP_BIT_XOR"
.LASF464:
	.string	"OP_DIE"
.LASF327:
	.string	"OP_SUBSTCONT"
.LASF853:
	.string	"blen"
.LASF996:
	.string	"Perl_pp_gnbyaddr"
.LASF1061:
	.string	"PL_scopestack_ix"
.LASF273:
	.string	"SVt_IV"
.LASF349:
	.string	"OP_I_MULTIPLY"
.LASF267:
	.string	"regnode"
.LASF943:
	.string	"Perl_pp_rmdir"
.LASF720:
	.string	"mult_amg"
.LASF393:
	.string	"OP_COS"
.LASF817:
	.string	"Perl_pp_sselect"
.LASF840:
	.string	"lines"
.LASF72:
	.string	"op_sibling"
.LASF226:
	.string	"xio_dirpu"
.LASF38:
	.string	"fd_set"
.LASF251:
	.string	"any_iv"
.LASF420:
	.string	"OP_AELEM"
.LASF1010:
	.string	"Perl_pp_eprotoent"
.LASF1079:
	.string	"PL_rs"
.LASF196:
	.string	"xhv_pmroot"
.LASF729:
	.string	"lshift_ass_amg"
.LASF390:
	.string	"OP_COMPLEMENT"
.LASF465:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF88:
	.string	"pmop"
.LASF1093:
	.string	"Perl_setdefout"
.LASF1084:
	.string	"PL_toptarget"
.LASF542:
	.string	"OP_FTCTIME"
.LASF448:
	.string	"OP_MAPWHILE"
.LASF870:
	.string	"Perl_pp_seek"
.LASF540:
	.string	"OP_FTMTIME"
.LASF432:
	.string	"OP_SPLIT"
.LASF680:
	.string	"sbu_once"
.LASF388:
	.string	"OP_I_NEGATE"
.LASF569:
	.string	"OP_READDIR"
.LASF774:
	.string	"int_amg"
.LASF102:
	.string	"PerlInterpreter"
.LASF715:
	.string	"numer_amg"
.LASF724:
	.string	"modulo_amg"
.LASF856:
	.string	"read_target"
.LASF373:
	.string	"OP_NE"
.LASF761:
	.string	"sqrt_amg"
.LASF764:
	.string	"concat_amg"
.LASF609:
	.string	"OP_GHBYADDR"
.LASF981:
	.string	"Perl_pp_shmget"
.LASF717:
	.string	"add_ass_amg"
.LASF22:
	.string	"char"
.LASF891:
	.string	"Perl_pp_shutdown"
.LASF846:
	.string	"Perl_pp_sysread"
.LASF454:
	.string	"OP_XOR"
.LASF529:
	.string	"OP_FTRREAD"
.LASF649:
	.string	"argarray"
.LASF736:
	.string	"bxor_amg"
.LASF231:
	.string	"xio_top_name"
.LASF829:
	.string	"S_emulate_eaccess"
.LASF577:
	.string	"OP_SYSTEM"
.LASF1080:
	.string	"PL_last_in_gv"
.LASF161:
	.string	"mg_len"
.LASF503:
	.string	"OP_SYSOPEN"
.LASF289:
	.string	"xiou_dirp"
.LASF918:
	.string	"Perl_pp_ftpipe"
.LASF201:
	.string	"xgv_name"
.LASF320:
	.string	"OP_RCATLINE"
.LASF453:
	.string	"OP_OR"
.LASF345:
	.string	"OP_POSTDEC"
.LASF1006:
	.string	"Perl_pp_sprotoent"
.LASF723:
	.string	"div_ass_amg"
.LASF646:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF513:
	.string	"OP_FCNTL"
.LASF538:
	.string	"OP_FTZERO"
.LASF307:
	.string	"OP_RV2GV"
.LASF434:
	.string	"OP_LIST"
.LASF834:
	.string	"Perl_pp_leavewrite"
.LASF790:
	.string	"Perl_pp_die"
.LASF227:
	.string	"xio_lines"
.LASF1056:
	.string	"PL_stack_sp"
.LASF832:
	.string	"Perl_pp_enterwrite"
.LASF535:
	.string	"OP_FTIS"
.LASF802:
	.string	"Perl_pp_binmode"
.LASF1022:
	.string	"Perl_pp_getlogin"
.LASF694:
	.string	"si_cxstack"
.LASF293:
	.string	"OP_NULL"
.LASF165:
	.string	"xpv_len"
.LASF1014:
	.string	"Perl_pp_gpwent"
.LASF1073:
	.string	"PL_statbuf"
.LASF75:
	.string	"op_type"
.LASF427:
	.string	"OP_RV2HV"
.LASF784:
	.string	"Perl_pp_glob"
.LASF838:
	.string	"topgv"
.LASF60:
	.string	"tm_hour"
.LASF848:
	.string	"buffer"
.LASF924:
	.string	"Perl_pp_fttext"
.LASF70:
	.string	"STRLEN"
.LASF842:
	.string	"Perl_pp_prtf"
.LASF1070:
	.string	"PL_markstack_max"
.LASF550:
	.string	"OP_FTSUID"
.LASF325:
	.string	"OP_QR"
.LASF409:
	.string	"OP_FORMLINE"
.LASF657:
	.string	"old_namesv"
.LASF930:
	.string	"Perl_pp_chown"
.LASF1020:
	.string	"Perl_pp_sgrent"
.LASF576:
	.string	"OP_WAITPID"
.LASF919:
	.string	"Perl_pp_ftlink"
.LASF274:
	.string	"SVt_NV"
.LASF406:
	.string	"OP_INDEX"
.LASF394:
	.string	"OP_RAND"
.LASF966:
	.string	"Perl_pp_setpgrp"
.LASF407:
	.string	"OP_RINDEX"
.LASF978:
	.string	"Perl_pp_sleep"
.LASF707:
	.string	"hek_key"
.LASF624:
	.string	"OP_EHOSTENT"
.LASF989:
	.string	"Perl_pp_semget"
.LASF353:
	.string	"OP_I_MODULO"
.LASF976:
	.string	"monname"
.LASF775:
	.string	"DESTROY_amg"
.LASF61:
	.string	"tm_mday"
.LASF169:
	.string	"XPVUV"
.LASF49:
	.string	"__pad0"
.LASF260:
	.string	"proto_perl"
.LASF658:
	.string	"old_eval_root"
.LASF429:
	.string	"OP_HSLICE"
.LASF987:
	.string	"Perl_pp_msgsnd"
.LASF352:
	.string	"OP_MODULO"
.LASF971:
	.string	"Perl_pp_localtime"
.LASF101:
	.string	"op_sv"
.LASF593:
	.string	"OP_SHMREAD"
.LASF962:
	.string	"Perl_pp_exec"
.LASF547:
	.string	"OP_FTDIR"
.LASF877:
	.string	"tmpgv"
.LASF623:
	.string	"OP_SSERVENT"
.LASF756:
	.string	"atan2_amg"
.LASF883:
	.string	"need"
.LASF906:
	.string	"Perl_pp_fteowned"
.LASF292:
	.string	"PADOFFSET"
.LASF95:
	.string	"op_pmflags"
.LASF725:
	.string	"modulo_ass_amg"
.LASF925:
	.string	"really_filename"
.LASF171:
	.string	"xuv_uv"
.LASF103:
	.string	"interpreter"
.LASF852:
	.string	"bufsv"
.LASF149:
	.string	"blku_oldpm"
.LASF749:
	.string	"sge_amg"
.LASF89:
	.string	"op_first"
.LASF69:
	.string	"double"
.LASF1081:
	.string	"PL_defoutgv"
.LASF221:
	.string	"xfm_lines"
.LASF96:
	.string	"op_pmpermflags"
.LASF162:
	.string	"xrv_rv"
.LASF50:
	.string	"st_rdev"
.LASF43:
	.string	"st_dev"
.LASF28:
	.string	"ssize_t"
.LASF73:
	.string	"op_ppaddr"
.LASF641:
	.string	"OP_THREADSV"
.LASF753:
	.string	"compl_amg"
.LASF250:
	.string	"any_i32"
.LASF977:
	.string	"Perl_pp_alarm"
.LASF754:
	.string	"inc_amg"
.LASF767:
	.string	"neg_amg"
.LASF276:
	.string	"SVt_PV"
.LASF81:
	.string	"cop_filegv"
.LASF253:
	.string	"any_bool"
.LASF439:
	.string	"OP_PUSH"
.LASF415:
	.string	"OP_UC"
.LASF218:
	.string	"xcv_outside_seq"
.LASF342:
	.string	"OP_I_PREDEC"
.LASF115:
	.string	"data"
.LASF518:
	.string	"OP_BIND"
.LASF625:
	.string	"OP_ENETENT"
.LASF572:
	.string	"OP_REWINDDIR"
.LASF697:
	.string	"si_type"
.LASF181:
	.string	"xav_array"
.LASF275:
	.string	"SVt_RV"
.LASF1034:
	.string	"PL_dowarn"
.LASF256:
	.string	"CLONE_PARAMS"
.LASF472:
	.string	"OP_SCOPE"
.LASF608:
	.string	"OP_GHBYNAME"
.LASF341:
	.string	"OP_PREDEC"
.LASF806:
	.string	"markoff"
.LASF662:
	.string	"resetsp"
.LASF795:
	.string	"Perl_pp_open"
.LASF139:
	.string	"PERL_CONTEXT"
.LASF940:
	.string	"Perl_pp_readlink"
.LASF916:
	.string	"Perl_pp_ftfile"
.LASF191:
	.string	"xhv_fill"
.LASF953:
	.string	"argflags"
.LASF168:
	.string	"xiv_iv"
.LASF1017:
	.string	"Perl_pp_ggrnam"
.LASF865:
	.string	"Perl_pp_send"
.LASF815:
	.string	"left"
.LASF144:
	.string	"blku_oldsp"
.LASF728:
	.string	"lshift_amg"
.LASF898:
	.string	"do_fstat"
.LASF575:
	.string	"OP_WAIT"
.LASF481:
	.string	"OP_DUMP"
.LASF762:
	.string	"repeat_amg"
.LASF938:
	.string	"Perl_pp_link"
.LASF9:
	.string	"__gid_t"
.LASF329:
	.string	"OP_SASSIGN"
.LASF932:
	.string	"Perl_pp_unlink"
.LASF721:
	.string	"mult_ass_amg"
.LASF663:
	.string	"redo_op"
.LASF419:
	.string	"OP_AELEMFAST"
.LASF921:
	.string	"Perl_pp_ftsgid"
.LASF706:
	.string	"hek_len"
.LASF413:
	.string	"OP_UCFIRST"
.LASF24:
	.string	"mode_t"
.LASF564:
	.string	"OP_SYMLINK"
.LASF398:
	.string	"OP_SQRT"
.LASF782:
	.string	"tmpbuf"
.LASF596:
	.string	"OP_MSGCTL"
.LASF31:
	.string	"tv_sec"
.LASF1068:
	.string	"PL_markstack"
.LASF1001:
	.string	"Perl_pp_gsbyname"
.LASF539:
	.string	"OP_FTSIZE"
.LASF39:
	.string	"long long unsigned int"
.LASF847:
	.string	"offset"
.LASF27:
	.string	"pid_t"
.LASF738:
	.string	"lt_amg"
.LASF509:
	.string	"OP_EOF"
.LASF665:
	.string	"last_op"
.LASF25:
	.string	"uid_t"
.LASF555:
	.string	"OP_FTBINARY"
.LASF528:
	.string	"OP_STAT"
.LASF837:
	.string	"forget_top"
.LASF428:
	.string	"OP_HELEM"
.LASF53:
	.string	"st_blocks"
.LASF926:
	.string	"not_utf8"
.LASF305:
	.string	"OP_PADANY"
.LASF309:
	.string	"OP_AV2ARYLEN"
.LASF515:
	.string	"OP_FLOCK"
.LASF410:
	.string	"OP_ORD"
.LASF248:
	.string	"svt_dup"
.LASF700:
	.string	"si_markoff"
.LASF67:
	.string	"tm_gmtoff"
.LASF875:
	.string	"do_ftruncate_gv"
.LASF296:
	.string	"OP_PUSHMARK"
.LASF973:
	.string	"when"
.LASF967:
	.string	"Perl_pp_getpriority"
.LASF603:
	.string	"OP_DOFILE"
.LASF232:
	.string	"xio_top_gv"
.LASF722:
	.string	"div_amg"
.LASF819:
	.string	"maxlen"
.LASF992:
	.string	"Perl_pp_ghbyname"
.LASF1053:
	.string	"PL_amagic_generation"
.LASF425:
	.string	"OP_DELETE"
.LASF894:
	.string	"Perl_pp_getsockname"
.LASF718:
	.string	"subtr_amg"
.LASF1067:
	.string	"PL_tmps_max"
.LASF688:
	.string	"sbu_rxres"
.LASF824:
	.string	"fd_sets"
.LASF1087:
	.string	"PL_curstackinfo"
.LASF879:
	.string	"Perl_pp_ioctl"
.LASF460:
	.string	"OP_LEAVESUB"
.LASF302:
	.string	"OP_PADSV"
.LASF314:
	.string	"OP_SREFGEN"
.LASF482:
	.string	"OP_GOTO"
.LASF833:
	.string	"name"
.LASF98:
	.string	"op_pmstash"
.LASF242:
	.string	"svt_get"
.LASF1005:
	.string	"Perl_pp_snetent"
.LASF130:
	.string	"gp_form"
.LASF346:
	.string	"OP_I_POSTDEC"
.LASF866:
	.string	"retval"
.LASF308:
	.string	"OP_RV2SV"
.LASF145:
	.string	"blku_oldcop"
.LASF868:
	.string	"Perl_pp_eof"
.LASF80:
	.string	"cop_stash"
.LASF964:
	.string	"Perl_pp_getppid"
.LASF1031:
	.string	"PL_no_func"
.LASF800:
	.string	"Perl_pp_fileno"
.LASF316:
	.string	"OP_BLESS"
.LASF588:
	.string	"OP_GMTIME"
.LASF40:
	.string	"long long int"
.LASF261:
	.string	"line_t"
.LASF197:
	.string	"xhv_name"
.LASF554:
	.string	"OP_FTTEXT"
.LASF693:
	.string	"si_stack"
.LASF541:
	.string	"OP_FTATIME"
.LASF247:
	.string	"svt_copy"
.LASF440:
	.string	"OP_POP"
.LASF338:
	.string	"OP_POS"
.LASF347:
	.string	"OP_POW"
.LASF473:
	.string	"OP_ENTERITER"
.LASF890:
	.string	"Perl_pp_accept"
.LASF313:
	.string	"OP_REFGEN"
.LASF968:
	.string	"Perl_pp_setpriority"
.LASF779:
	.string	"targ"
.LASF32:
	.string	"tv_nsec"
.LASF530:
	.string	"OP_FTRWRITE"
.LASF524:
	.string	"OP_SSOCKOPT"
.LASF141:
	.string	"cx_type"
.LASF99:
	.string	"SVOP"
.LASF816:
	.string	"Perl_pp_dbmclose"
.LASF187:
	.string	"xav_flags"
.LASF1043:
	.string	"PL_forkprocess"
.LASF630:
	.string	"OP_GPWENT"
.LASF670:
	.string	"iterix"
.LASF620:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF478:
	.string	"OP_LAST"
.LASF177:
	.string	"xmg_magic"
.LASF424:
	.string	"OP_KEYS"
.LASF159:
	.string	"mg_obj"
.LASF810:
	.string	"prev"
.LASF607:
	.string	"OP_LEAVETRY"
.LASF254:
	.string	"any_dptr"
.LASF450:
	.string	"OP_FLIP"
.LASF768:
	.string	"to_sv_amg"
.LASF568:
	.string	"OP_OPEN_DIR"
.LASF180:
	.string	"xpvav"
.LASF94:
	.string	"op_pmregexp"
.LASF315:
	.string	"OP_REF"
.LASF845:
	.string	"perm"
.LASF517:
	.string	"OP_SOCKPAIR"
.LASF497:
	.string	"OP_GETC"
.LASF937:
	.string	"tmps2"
.LASF614:
	.string	"OP_GPBYNAME"
.LASF211:
	.string	"xcv_xsubany"
.LASF488:
	.string	"OP_UMASK"
.LASF230:
	.string	"xio_lines_left"
.LASF508:
	.string	"OP_RECV"
.LASF131:
	.string	"gp_av"
.LASF961:
	.string	"really"
.LASF712:
	.string	"bool__amg"
.LASF512:
	.string	"OP_TRUNCATE"
.LASF486:
	.string	"OP_PIPE_OP"
.LASF632:
	.string	"OP_EPWENT"
.LASF798:
	.string	"Perl_pp_rcatline"
.LASF1015:
	.string	"Perl_pp_spwent"
.LASF660:
	.string	"block_loop"
.LASF311:
	.string	"OP_ANONCODE"
.LASF912:
	.string	"Perl_pp_ftctime"
.LASF726:
	.string	"pow_amg"
.LASF328:
	.string	"OP_TRANS"
.LASF1047:
	.string	"PL_uid"
.LASF639:
	.string	"OP_SYSCALL"
.LASF217:
	.string	"xcv_flags"
.LASF643:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF677:
	.string	"sbu_maxiters"
.LASF206:
	.string	"xpvcv"
.LASF391:
	.string	"OP_ATAN2"
.LASF436:
	.string	"OP_ANONLIST"
.LASF516:
	.string	"OP_SOCKET"
.LASF421:
	.string	"OP_ASLICE"
.LASF400:
	.string	"OP_HEX"
.LASF653:
	.string	"oldcomppad"
.LASF264:
	.string	"_PerlIO"
.LASF55:
	.string	"st_mtim"
.LASF495:
	.string	"OP_SSELECT"
.LASF734:
	.string	"bor_amg"
.LASF751:
	.string	"sne_amg"
.LASF595:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF134:
	.string	"gp_cv"
.LASF1090:
	.string	"pp_sys.c"
.LASF805:
	.string	"varsv"
.LASF417:
	.string	"OP_QUOTEMETA"
.LASF581:
	.string	"OP_GETPGRP"
.LASF650:
	.string	"olddepth"
.LASF857:
	.string	"wanted"
.LASF375:
	.string	"OP_NCMP"
.LASF606:
	.string	"OP_ENTERTRY"
.LASF560:
	.string	"OP_CHMOD"
.LASF396:
	.string	"OP_EXP"
.LASF807:
	.string	"methname"
.LASF412:
	.string	"OP_CRYPT"
.LASF561:
	.string	"OP_UTIME"
.LASF758:
	.string	"sin_amg"
.LASF42:
	.string	"stat"
.LASF262:
	.string	"PerlIOl"
.LASF459:
	.string	"OP_ENTERSUB"
.LASF259:
	.string	"flags"
.LASF408:
	.string	"OP_SPRINTF"
.LASF322:
	.string	"OP_REGCRESET"
.LASF786:
	.string	"tmpsv"
.LASF923:
	.string	"Perl_pp_fttty"
.LASF887:
	.string	"Perl_pp_bind"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
