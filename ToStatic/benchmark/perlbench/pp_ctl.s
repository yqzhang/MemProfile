	.file	"pp_ctl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pp_ctl.c
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
	.globl	Perl_pp_wantarray
	.type	Perl_pp_wantarray, @function
Perl_pp_wantarray:
.LFB2:
	.file 1 "pp_ctl.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 45 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 47 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.0
	movq	%rax, %rdx	# PL_stack_max.0, PL_stack_max.1
	movq	%rbx, %rax	# sp, sp.2
	subq	%rax, %rdx	# sp.2, D.19007
	movq	%rdx, %rax	# D.19007, D.19007
	cmpq	$7, %rax	#, D.19007
	jg	.L2	#,
	.loc 1 47 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L2:
	.loc 1 49 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.3
	movl	16(%rax), %eax	# PL_curstackinfo.3_9->si_cxix, D.19008
	movl	%eax, %edi	# D.19008,
	call	S_dopoptosub	#
	movl	%eax, -20(%rbp)	# tmp79, cxix
	.loc 1 50 0
	cmpl	$0, -20(%rbp)	#, cxix
	jns	.L3	#,
	.loc 1 51 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_12
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.4
	movq	(%rax), %rax	# PL_op.4_13->op_next, D.19006
	jmp	.L4	#
.L3:
	.loc 1 53 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.5
	movq	8(%rax), %rcx	# PL_curstackinfo.5_15->si_cxstack, D.19009
	movl	-20(%rbp), %eax	# cxix, tmp80
	movslq	%eax, %rdx	# tmp80, D.19010
	movq	%rdx, %rax	# D.19010, tmp81
	salq	$3, %rax	#, tmp81
	addq	%rdx, %rax	# D.19010, tmp81
	salq	$4, %rax	#, tmp82
	addq	%rcx, %rax	# D.19009, D.19009
	movzbl	48(%rax), %eax	# _19->cx_u.cx_blk.blku_gimme, D.19011
	movzbl	%al, %eax	# D.19011, D.19008
	testl	%eax, %eax	# D.19008
	je	.L6	#,
	cmpl	$1, %eax	#, D.19008
	jne	.L8	#,
	.loc 1 55 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_22
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.6
	movq	(%rax), %rax	# PL_op.6_23->op_next, D.19006
	jmp	.L4	#
.L6:
	.loc 1 57 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_25
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.7
	movq	(%rax), %rax	# PL_op.7_26->op_next, D.19006
	jmp	.L4	#
.L8:
	.loc 1 59 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_28
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.8
	movq	(%rax), %rax	# PL_op.8_29->op_next, D.19006
.L4:
	.loc 1 61 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_pp_wantarray, .-Perl_pp_wantarray
	.globl	Perl_pp_regcmaybe
	.type	Perl_pp_regcmaybe, @function
Perl_pp_regcmaybe:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 65 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.9
	movq	(%rax), %rax	# PL_op.9_1->op_next, D.19012
	.loc 1 66 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_pp_regcmaybe, .-Perl_pp_regcmaybe
	.globl	Perl_pp_regcreset
	.type	Perl_pp_regcreset, @function
Perl_pp_regcreset:
.LFB4:
	.loc 1 69 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 72 0
	movl	$0, PL_reginterp_cnt(%rip)	#, PL_reginterp_cnt
	.loc 1 73 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 74 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.10
	movq	(%rax), %rax	# PL_op.10_1->op_next, D.19013
	.loc 1 75 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_pp_regcreset, .-Perl_pp_regcreset
	.section	.rodata
.LC0:
	.string	"\\s+"
	.text
	.globl	Perl_pp_regcomp
	.type	Perl_pp_regcomp, @function
Perl_pp_regcomp:
.LFB5:
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 79 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 80 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.11
	movq	48(%rax), %rbx	# MEM[(struct LOGOP *)PL_op.11_6].op_other, pm
	.loc 1 84 0
	movq	$0, -64(%rbp)	#, mg
	.loc 1 86 0
	movq	%r13, %rax	# sp, sp.12
	leaq	-8(%rax), %r13	#, sp
	movq	(%rax), %rax	# *sp.12_9, tmp146
	movq	%rax, -56(%rbp)	# tmp146, tmpstr
	.loc 1 94 0
	movq	-56(%rbp), %rax	# tmpstr, tmp147
	movl	12(%rax), %eax	# tmpstr_11->sv_flags, D.19014
	andl	$524288, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L14	#,
.LBB2:
	.loc 1 95 0
	movq	-56(%rbp), %rax	# tmpstr, tmp148
	movq	(%rax), %rax	# tmpstr_11->sv_any, D.19015
	movq	(%rax), %rax	# MEM[(struct XRV *)_14].xrv_rv, tmp149
	movq	%rax, -48(%rbp)	# tmp149, sv
	.loc 1 96 0
	movq	-48(%rbp), %rax	# sv, tmp150
	movl	12(%rax), %eax	# sv_15->sv_flags, D.19014
	andl	$57344, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L14	#,
	.loc 1 97 0
	movq	-48(%rbp), %rax	# sv, tmp151
	movl	$114, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	Perl_mg_find	#
	movq	%rax, -64(%rbp)	# tmp152, mg
.L14:
.LBE2:
	.loc 1 99 0
	cmpq	$0, -64(%rbp)	#, mg
	je	.L15	#,
.LBB3:
	.loc 1 100 0
	movq	-64(%rbp), %rax	# mg, tmp153
	movq	24(%rax), %rax	# mg_3->mg_obj, tmp154
	movq	%rax, -40(%rbp)	# tmp154, re
	.loc 1 101 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.13
	movq	80(%rbx), %rdx	# pm_7->op_pmregexp, D.19016
	movq	%rdx, %rdi	# D.19016,
	call	*%rax	# PL_regfree.13
	.loc 1 102 0
	cmpq	$0, -40(%rbp)	#, re
	je	.L17	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# re, tmp155
	movl	68(%rax), %eax	# re_19->refcnt, D.19017
	leal	1(%rax), %ecx	#, D.19017
	movq	-40(%rbp), %rdx	# re, tmp156
	movl	%ecx, 68(%rdx)	# D.19017, re_19->refcnt
	testl	%eax, %eax	# D.19017
	je	.L17	#,
	.loc 1 102 0
	nop
.L17:
	.loc 1 102 0 discriminator 3
	movq	-40(%rbp), %rax	# re, tmp157
	movq	%rax, 80(%rbx)	# tmp157, pm_7->op_pmregexp
.LBE3:
	jmp	.L18	#
.L15:
	.loc 1 105 0 is_stmt 1
	movq	-56(%rbp), %rax	# tmpstr, tmp158
	movl	12(%rax), %eax	# tmpstr_11->sv_flags, D.19014
	andl	$262144, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L19	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# tmpstr, tmp159
	movq	(%rax), %rax	# tmpstr_11->sv_any, D.19015
	movq	8(%rax), %rax	# MEM[(struct XPV *)_29].xpv_cur, len.16
	movq	%rax, -72(%rbp)	# len.16, len
	movq	-56(%rbp), %rax	# tmpstr, tmp160
	movq	(%rax), %rax	# tmpstr_11->sv_any, D.19015
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, iftmp.15
	jmp	.L20	#
.L19:
	.loc 1 105 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp161
	movq	-56(%rbp), %rax	# tmpstr, tmp162
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	Perl_sv_2pv_flags	#
.L20:
	.loc 1 105 0 discriminator 3
	movq	%rax, %r12	# iftmp.15, t
	.loc 1 108 0 is_stmt 1 discriminator 3
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	testq	%rax, %rax	# D.19016
	je	.L21	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	movq	32(%rax), %rax	# _36->precomp, D.19018
	testq	%rax, %rax	# D.19018
	je	.L21	#,
	.loc 1 109 0 is_stmt 1 discriminator 1
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	movl	76(%rax), %edx	# _38->prelen, D.19017
	movq	-72(%rbp), %rax	# len, len.17
	.loc 1 108 0 discriminator 1
	cmpl	%eax, %edx	# D.19017, D.19017
	jne	.L21	#,
	.loc 1 110 0
	movq	-72(%rbp), %rdx	# len, len.18
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	movq	32(%rax), %rax	# _43->precomp, D.19018
	movq	%r12, %rsi	# t,
	movq	%rax, %rdi	# D.19018,
	call	memcmp	#
	.loc 1 109 0
	testl	%eax, %eax	# D.19017
	je	.L18	#,
.L21:
	.loc 1 112 0
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	testq	%rax, %rax	# D.19016
	je	.L22	#,
	.loc 1 113 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.19
	movq	80(%rbx), %rdx	# pm_7->op_pmregexp, D.19016
	movq	%rdx, %rdi	# D.19016,
	call	*%rax	# PL_regfree.19
	.loc 1 114 0
	movq	$0, 80(%rbx)	#, pm_7->op_pmregexp
.L22:
	.loc 1 116 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.20
	movzbl	36(%rax), %eax	# PL_op.20_49->op_flags, D.19019
	testb	%al, %al	# D.19020
	jns	.L23	#,
	.loc 1 117 0
	movl	$2147483647, PL_reginterp_cnt(%rip)	#, PL_reginterp_cnt
.L23:
	.loc 1 119 0
	movl	92(%rbx), %eax	# pm_7->op_pmpermflags, D.19014
	movl	%eax, 88(%rbx)	# D.19014, pm_7->op_pmflags
	.loc 1 120 0
	movq	-56(%rbp), %rax	# tmpstr, tmp163
	movl	12(%rax), %eax	# tmpstr_11->sv_flags, D.19014
	andl	$536870912, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L24	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.21
	movzbl	37(%rax), %eax	# PL_curcop.21_55->op_private, D.19019
	movzbl	%al, %eax	# D.19019, D.19017
	andl	$8, %eax	#, D.19017
	testl	%eax, %eax	# D.19017
	jne	.L24	#,
	.loc 1 121 0 is_stmt 1
	movzbl	96(%rbx), %eax	# pm_7->op_pmdynflags, D.19019
	orl	$8, %eax	#, D.19019
	movb	%al, 96(%rbx)	# D.19019, pm_7->op_pmdynflags
	jmp	.L25	#
.L24:
	.loc 1 123 0
	movzbl	96(%rbx), %eax	# pm_7->op_pmdynflags, D.19019
	andl	$-9, %eax	#, D.19019
	movb	%al, 96(%rbx)	# D.19019, pm_7->op_pmdynflags
	.loc 1 124 0
	movzbl	96(%rbx), %eax	# pm_7->op_pmdynflags, D.19019
	movzbl	%al, %eax	# D.19019, D.19017
	andl	$4, %eax	#, D.19017
	testl	%eax, %eax	# D.19017
	je	.L25	#,
	.loc 1 125 0
	leaq	-72(%rbp), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	movq	%r12, %rdi	# t,
	call	Perl_bytes_to_utf8	#
	movq	%rax, %r12	#, t
.L25:
	.loc 1 127 0
	movq	PL_regcompp(%rip), %rax	# PL_regcompp, PL_regcompp.22
	movq	-72(%rbp), %rdx	# len, len.23
	leaq	(%r12,%rdx), %rcx	#, D.19018
	movq	%rbx, %rdx	# pm,
	movq	%rcx, %rsi	# D.19018,
	movq	%r12, %rdi	# t,
	call	*%rax	# PL_regcompp.22
	movq	%rax, 80(%rbx)	# D.19021, pm_7->op_pmregexp
	.loc 1 128 0
	movq	-56(%rbp), %rax	# tmpstr, tmp165
	movl	12(%rax), %eax	# tmpstr_11->sv_flags, D.19014
	andl	$536870912, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L26	#,
	.loc 1 128 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.24
	movzbl	37(%rax), %eax	# PL_curcop.24_73->op_private, D.19019
	movzbl	%al, %eax	# D.19019, D.19017
	andl	$8, %eax	#, D.19017
	testl	%eax, %eax	# D.19017
	je	.L27	#,
.L26:
	.loc 1 128 0 discriminator 1
	movzbl	96(%rbx), %eax	# pm_7->op_pmdynflags, D.19019
	movzbl	%al, %eax	# D.19019, D.19017
	andl	$4, %eax	#, D.19017
	testl	%eax, %eax	# D.19017
	je	.L27	#,
	.loc 1 129 0 is_stmt 1
	movq	%r12, %rdi	# t,
	call	Perl_safesysfree	#
.L27:
	.loc 1 130 0
	movl	$0, PL_reginterp_cnt(%rip)	#, PL_reginterp_cnt
.L18:
	.loc 1 144 0
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	movl	76(%rax), %eax	# _80->prelen, D.19017
	testl	%eax, %eax	# D.19017
	jne	.L28	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.25
	testq	%rax, %rax	# PL_curpm.25
	je	.L28	#,
	.loc 1 145 0 is_stmt 1
	movq	PL_curpm(%rip), %rbx	# PL_curpm, pm
	jmp	.L29	#
.L28:
	.loc 1 146 0
	movq	80(%rbx), %rax	# pm_7->op_pmregexp, D.19016
	movq	32(%rax), %rax	# _84->precomp, D.19018
	movq	%rax, %rsi	# D.19018,
	movl	$.LC0, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.19017
	jne	.L30	#,
	.loc 1 147 0
	movl	88(%rbx), %eax	# pm_7->op_pmflags, D.19014
	orl	$32, %eax	#, D.19014
	movl	%eax, 88(%rbx)	# D.19014, pm_7->op_pmflags
	jmp	.L29	#
.L30:
	.loc 1 149 0
	movl	88(%rbx), %eax	# pm_7->op_pmflags, D.19014
	andl	$-33, %eax	#, D.19014
	movl	%eax, 88(%rbx)	# D.19014, pm_7->op_pmflags
.L29:
	.loc 1 152 0
	movl	88(%rbx), %eax	# pm_1->op_pmflags, D.19014
	andl	$128, %eax	#, D.19014
	testl	%eax, %eax	# D.19014
	je	.L31	#,
	.loc 1 153 0
	movzbl	37(%rbx), %eax	# pm_1->op_private, D.19019
	andl	$-65, %eax	#, D.19019
	movb	%al, 37(%rbx)	# D.19019, pm_1->op_private
	.loc 1 156 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.26
	movq	40(%rax), %rax	# MEM[(struct LOGOP *)PL_op.26_95].op_first, D.19022
	movq	PL_op(%rip), %rdx	# PL_op, PL_op.27
	movq	(%rdx), %rdx	# PL_op.27_97->op_next, D.19022
	movq	%rdx, (%rax)	# D.19022, _96->op_next
.L31:
	.loc 1 159 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.28
	movq	(%rax), %rax	# PL_op.28_99->op_next, D.19022
	.loc 1 160 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_pp_regcomp, .-Perl_pp_regcomp
	.section	.rodata
.LC1:
	.string	"Substitution loop"
	.text
	.globl	Perl_pp_substcont
	.type	Perl_pp_substcont, @function
Perl_pp_substcont:
.LFB6:
	.loc 1 163 0
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
	subq	$104, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 164 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, sp
	movq	%rax, -120(%rbp)	# sp, %sfp
	.loc 1 165 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.29
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.29_10].op_other, pm
	movq	%rax, %rsi	# pm, pm
	movq	%rsi, -128(%rbp)	# pm, %sfp
	.loc 1 166 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.30
	movq	8(%rax), %rcx	# PL_curstackinfo.30_12->si_cxstack, D.19025
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.31
	movl	16(%rax), %eax	# PL_curstackinfo.31_14->si_cxix, D.19026
	movslq	%eax, %rdx	# D.19026, D.19027
	movq	%rdx, %rax	# D.19027, tmp264
	salq	$3, %rax	#, tmp264
	addq	%rdx, %rax	# D.19027, tmp264
	salq	$4, %rax	#, tmp265
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 167 0
	movq	40(%rbx), %r14	# cx_18->cx_u.cx_subst.sbu_dstr, dstr
	.loc 1 168 0
	movq	56(%rbx), %r13	# cx_18->cx_u.cx_subst.sbu_s, s
	.loc 1 169 0
	movq	64(%rbx), %r15	# cx_18->cx_u.cx_subst.sbu_m, m
	.loc 1 170 0
	movq	32(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_orig, tmp266
	movq	%rax, -96(%rbp)	# tmp266, orig
	.loc 1 171 0
	movq	88(%rbx), %r12	# cx_18->cx_u.cx_subst.sbu_rx, rx
	.loc 1 172 0
	movq	$0, -88(%rbp)	#, nsv
	.loc 1 173 0
	movq	%rsi, %rax	# pm, pm
	movq	80(%rax), %rax	# pm_11->op_pmregexp, tmp267
	movq	%rax, -72(%rbp)	# tmp267, old
	.loc 1 174 0
	cmpq	%r12, -72(%rbp)	# rx, old
	je	.L34	#,
	.loc 1 175 0
	cmpq	$0, -72(%rbp)	#, old
	je	.L35	#,
	.loc 1 176 0
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.32
	movq	-72(%rbp), %rdx	# old, tmp268
	movq	%rdx, %rdi	# tmp268,
	call	*%rax	# PL_regfree.32
.L35:
	.loc 1 177 0
	movq	-128(%rbp), %rax	# %sfp, pm
	movq	%r12, 80(%rax)	# rx, pm_11->op_pmregexp
.L34:
	.loc 1 180 0
	leaq	80(%rbx), %rax	#, D.19028
	movq	%r12, %rsi	# rx,
	movq	%rax, %rdi	# D.19028,
	call	Perl_rxres_restore	#
	.loc 1 181 0
	movq	48(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_targ, D.19029
	movl	12(%rax), %eax	# _28->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L36	#,
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	92(%r12), %eax	# rx_23->reganch, D.19030
	orl	$268435456, %eax	#, D.19030
	movl	%eax, 92(%r12)	# D.19030, rx_23->reganch
	movb	$1, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
	jmp	.L37	#
.L36:
	.loc 1 181 0 discriminator 2
	movl	92(%r12), %eax	# rx_23->reganch, D.19030
	andl	$-268435457, %eax	#, D.19030
	movl	%eax, 92(%r12)	# D.19030, rx_23->reganch
	movb	$0, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
.L37:
	.loc 1 183 0 is_stmt 1
	movl	8(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_iters, D.19026
	leal	1(%rax), %edx	#, D.19026
	movl	%edx, 8(%rbx)	# D.19026, cx_18->cx_u.cx_subst.sbu_iters
	testl	%eax, %eax	# D.19026
	je	.L38	#,
.LBB4:
	.loc 1 184 0
	movl	8(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_iters, tmp269
	movl	%eax, -100(%rbp)	# tmp269, saviters
	.loc 1 185 0
	movl	8(%rbx), %edx	# cx_18->cx_u.cx_subst.sbu_iters, D.19026
	movl	12(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_maxiters, D.19026
	cmpl	%eax, %edx	# D.19026, D.19026
	jle	.L39	#,
	.loc 1 186 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L40	#
.L39:
	.loc 1 188 0
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	movsbl	%al, %eax	# D.19031, D.19026
	andl	$2, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	jne	.L41	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# %sfp, sp
	movq	(%rax), %rax	# *sp_9, D.19029
	movl	12(%rax), %eax	# _47->sv_flags, D.19030
	andl	$57344, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L41	#,
	movq	-120(%rbp), %rax	# %sfp, sp
	movq	(%rax), %rax	# *sp_9, D.19029
	movq	%rax, %rdi	# D.19029,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.19031
	je	.L41	#,
	.loc 1 189 0 is_stmt 1
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	orl	$2, %eax	#, D.19032
	movb	%al, 25(%rbx)	# D.19032, cx_18->cx_u.cx_subst.sbu_rxtainted
.L41:
	.loc 1 190 0
	movq	-120(%rbp), %rax	# %sfp, sp.34
	leaq	-8(%rax), %rcx	#, sp
	movq	%rcx, -120(%rbp)	# sp, %sfp
	movq	(%rax), %rax	# *sp.34_54, D.19029
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.19029,
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_catsv_flags	#
	.loc 1 193 0
	movzbl	24(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_once, D.19031
	testb	%al, %al	# D.19031
	jne	.L42	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	movq	PL_regexecp(%rip), %r10	# PL_regexecp, PL_regexecp.35
	.loc 1 195 0 is_stmt 1 discriminator 1
	movl	16(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rflags, D.19026
	andl	$1, %eax	#, D.19026
	.loc 1 193 0 discriminator 1
	testl	%eax, %eax	# D.19026
	je	.L43	#,
	movl	$24, %eax	#, iftmp.36
	jmp	.L44	#
.L43:
	.loc 1 193 0 is_stmt 0 discriminator 2
	movl	$25, %eax	#, iftmp.36
.L44:
	.loc 1 193 0 discriminator 3
	movq	48(%rbx), %rdi	# cx_18->cx_u.cx_subst.sbu_targ, D.19029
	cmpq	%r15, %r13	# m, s
	sete	%dl	#, D.19033
	movzbl	%dl, %esi	# D.19033, D.19026
	movq	72(%rbx), %rdx	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	movq	-96(%rbp), %rcx	# orig, tmp270
	movl	%eax, 8(%rsp)	# iftmp.36,
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# D.19029,
	movl	%esi, %r8d	# D.19026,
	movq	%r13, %rsi	# s,
	movq	%r12, %rdi	# rx,
	call	*%r10	# PL_regexecp.35
	testl	%eax, %eax	# D.19026
	jne	.L45	#,
.L42:
.LBB5:
	.loc 1 199 0 is_stmt 1
	movq	48(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_targ, tmp271
	movq	%rax, -64(%rbp)	# tmp271, targ
	.loc 1 202 0
	movq	72(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	cmpq	%r13, %rax	# s, D.19034
	jbe	.L46	#,
	.loc 1 203 0
	movl	12(%r14), %eax	# dstr_19->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L47	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.37
	movzbl	37(%rax), %eax	# PL_curcop.37_72->op_private, D.19035
	movzbl	%al, %eax	# D.19035, D.19026
	andl	$8, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	jne	.L47	#,
	movq	-64(%rbp), %rax	# targ, tmp272
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	jne	.L47	#,
.LBB6:
	.loc 1 204 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, nsv
	jne	.L48	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movq	72(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	movq	%rax, %rdx	# D.19034, D.19036
	movq	%r13, %rax	# s, s.38
	subq	%rax, %rdx	# s.38, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movq	%rax, %rsi	# D.19027,
	movq	%r13, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19029,
	call	Perl_sv_2mortal	#
	movq	%rax, -88(%rbp)	# tmp273, nsv
	jmp	.L49	#
.L48:
	.loc 1 204 0 discriminator 2
	movq	72(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	movq	%rax, %rdx	# D.19034, D.19036
	movq	%r13, %rax	# s, s.39
	subq	%rax, %rdx	# s.39, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movq	%rax, %rdx	# D.19036, D.19027
	movq	-88(%rbp), %rax	# nsv, tmp274
	movq	%r13, %rsi	# s,
	movq	%rax, %rdi	# tmp274,
	call	Perl_sv_setpvn	#
.L49:
	.loc 1 204 0 discriminator 1
	movq	-88(%rbp), %rax	# nsv, tmp275
	movl	12(%rax), %eax	# nsv_4->sv_flags, D.19030
	andl	$-536870913, %eax	#, D.19030
	movl	%eax, %edx	# D.19030, D.19030
	movq	-88(%rbp), %rax	# nsv, tmp276
	movl	%edx, 12(%rax)	# D.19030, nsv_4->sv_flags
	movq	-88(%rbp), %rax	# nsv, tmp277
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	-88(%rbp), %rax	# nsv, tmp278
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp278,
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_catsv_flags	#
.LBE6:
	jmp	.L46	#
.L47:
	.loc 1 206 0 is_stmt 1
	movq	72(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	movq	%rax, %rdx	# D.19034, D.19036
	movq	%r13, %rax	# s, s.40
	subq	%rax, %rdx	# s.40, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# D.19027,
	movq	%r13, %rsi	# s,
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_catpvn_flags	#
.L46:
	.loc 1 208 0
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	movb	%al, 25(%rbx)	# D.19031, cx_18->cx_u.cx_subst.sbu_rxtainted
	.loc 1 210 0
	movq	-64(%rbp), %rax	# targ, tmp279
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	andl	$2097152, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L51	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# targ, tmp280
	movq	%rax, %rdi	# tmp280,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.19026
	je	.L51	#,
	.loc 1 210 0
	nop
.L51:
	.loc 1 211 0 is_stmt 1
	movq	-64(%rbp), %rax	# targ, tmp281
	movq	(%rax), %rax	# targ_68->sv_any, D.19037
	movq	16(%rax), %rax	# MEM[(struct XPV *)_103].xpv_len, D.19027
	testq	%rax, %rax	# D.19027
	je	.L52	#,
	.loc 1 212 0
	movq	-64(%rbp), %rax	# targ, tmp282
	movq	(%rax), %rax	# targ_68->sv_any, D.19037
	movq	(%rax), %rax	# MEM[(struct XPV *)_105].xpv_pv, D.19034
	movq	%rax, %rdi	# D.19034,
	call	Perl_safesysfree	#
.L52:
	.loc 1 213 0
	movq	-64(%rbp), %rax	# targ, tmp283
	movq	(%rax), %rax	# targ_68->sv_any, D.19037
	movq	(%r14), %rdx	# dstr_19->sv_any, D.19037
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_108].xpv_pv, D.19034
	movq	%rdx, (%rax)	# D.19034, MEM[(struct XPV *)_107].xpv_pv
	.loc 1 214 0
	movq	-64(%rbp), %rax	# targ, tmp284
	movq	(%rax), %rax	# targ_68->sv_any, D.19037
	movq	(%r14), %rdx	# dstr_19->sv_any, D.19037
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_111].xpv_cur, D.19027
	movq	%rdx, 8(%rax)	# D.19027, MEM[(struct XPV *)_110].xpv_cur
	.loc 1 215 0
	movq	-64(%rbp), %rax	# targ, tmp285
	movq	(%rax), %rax	# targ_68->sv_any, D.19037
	movq	(%r14), %rdx	# dstr_19->sv_any, D.19037
	movq	16(%rdx), %rdx	# MEM[(struct XPV *)_114].xpv_len, D.19027
	movq	%rdx, 16(%rax)	# D.19027, MEM[(struct XPV *)_113].xpv_len
	.loc 1 216 0
	movl	12(%r14), %eax	# dstr_19->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L53	#,
	.loc 1 216 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.42
	movzbl	37(%rax), %eax	# PL_curcop.42_118->op_private, D.19035
	movzbl	%al, %eax	# D.19035, D.19026
	andl	$8, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	jne	.L53	#,
	.loc 1 217 0 is_stmt 1
	movq	-64(%rbp), %rax	# targ, tmp286
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	orl	$536870912, %eax	#, D.19030
	movl	%eax, %edx	# D.19030, D.19030
	movq	-64(%rbp), %rax	# targ, tmp287
	movl	%edx, 12(%rax)	# D.19030, targ_68->sv_flags
.L53:
	.loc 1 218 0
	movq	(%r14), %rax	# dstr_19->sv_any, D.19037
	movq	$0, (%rax)	#, MEM[(struct XPV *)_124].xpv_pv
	.loc 1 219 0
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_free	#
	.loc 1 221 0
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	movsbl	%al, %eax	# D.19031, D.19026
	andl	$1, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	je	.L54	#,
	.loc 1 221 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L54:
	.loc 1 222 0 is_stmt 1
	addq	$8, -120(%rbp)	#, %sfp
	movl	-100(%rbp), %eax	# saviters, tmp288
	subl	$1, %eax	#, D.19026
	cltq
	movq	%rax, %rdi	# D.19036,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19029,
	call	Perl_sv_2mortal	#
	movq	-120(%rbp), %rcx	# %sfp, sp
	movq	%rax, (%rcx)	# D.19029, *sp_128
	.loc 1 224 0
	movq	-64(%rbp), %rax	# targ, tmp289
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	andl	$1760624639, %eax	#, D.19030
	movl	%eax, %edx	# D.19030, D.19030
	movq	-64(%rbp), %rax	# targ, tmp290
	movl	%edx, 12(%rax)	# D.19030, targ_68->sv_flags
	movq	-64(%rbp), %rax	# targ, tmp291
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	orl	$67371008, %eax	#, D.19030
	movl	%eax, %edx	# D.19030, D.19030
	movq	-64(%rbp), %rax	# targ, tmp292
	movl	%edx, 12(%rax)	# D.19030, targ_68->sv_flags
	.loc 1 225 0
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	testb	%al, %al	# D.19031
	je	.L55	#,
	.loc 1 225 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L55:
	.loc 1 226 0 is_stmt 1
	movq	-64(%rbp), %rax	# targ, tmp293
	movl	12(%rax), %eax	# targ_68->sv_flags, D.19030
	andl	$16384, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L56	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# targ, tmp294
	movq	%rax, %rdi	# tmp294,
	call	Perl_mg_set	#
.L56:
	.loc 1 227 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.43
	testb	%al, %al	# PL_tainting.43
	je	.L57	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.44
	testb	%al, %al	# PL_tainted.44
	je	.L57	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.45
	testb	%al, %al	# PL_tainting.45
	je	.L57	#,
	movq	-64(%rbp), %rax	# targ, tmp295
	movq	%rax, %rdi	# tmp295,
	call	Perl_sv_taint	#
.L57:
	.loc 1 229 0 is_stmt 1
	movl	20(%rbx), %edx	# cx_18->cx_u.cx_subst.sbu_oldsave, D.19026
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.46
	cmpl	%eax, %edx	# PL_savestack_ix.46, D.19026
	jge	.L58	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	movl	20(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_oldsave, D.19026
	movl	%eax, %edi	# D.19026,
	call	Perl_leave_scope	#
.L58:
	.loc 1 230 0 is_stmt 1
	movq	PL_regfree(%rip), %rax	# PL_regfree, PL_regfree.47
	movq	%r12, %rdi	# rx,
	call	*%rax	# PL_regfree.47
	.loc 1 231 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.48
	movq	8(%rax), %rsi	# PL_curstackinfo.48_147->si_cxstack, D.19025
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.49
	movl	16(%rax), %edx	# PL_curstackinfo.49_149->si_cxix, D.19026
	leal	-1(%rdx), %ecx	#, D.19026
	movl	%ecx, 16(%rax)	# D.19026, PL_curstackinfo.49_149->si_cxix
	movslq	%edx, %rdx	# D.19026, D.19027
	movq	%rdx, %rax	# D.19027, tmp296
	salq	$3, %rax	#, tmp296
	addq	%rdx, %rax	# D.19027, tmp296
	salq	$4, %rax	#, tmp297
	leaq	(%rsi,%rax), %rbx	#, cx
	leaq	80(%rbx), %rax	#, D.19028
	movq	%rax, %rdi	# D.19028,
	call	Perl_rxres_free	#
	.loc 1 232 0
	movq	-120(%rbp), %rax	# %sfp, sp
	movq	%rax, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-128(%rbp), %rax	# %sfp, pm
	movq	(%rax), %rax	# pm_11->op_next, D.19024
	jmp	.L40	#
.L45:
.LBE5:
	.loc 1 234 0
	movl	-100(%rbp), %eax	# saviters, tmp298
	movl	%eax, 8(%rbx)	# tmp298, cx_18->cx_u.cx_subst.sbu_iters
.L38:
.LBE4:
	.loc 1 236 0
	movl	92(%r12), %eax	# rx_23->reganch, D.19030
	andl	$262144, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L59	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movq	48(%r12), %rax	# rx_23->subbeg, D.19034
	cmpq	-96(%rbp), %rax	# orig, D.19034
	je	.L59	#,
	.loc 1 237 0 is_stmt 1
	movq	%r13, %r15	# s, m
	.loc 1 238 0
	movq	-96(%rbp), %r13	# orig, s
	.loc 1 239 0
	movq	48(%r12), %rax	# rx_23->subbeg, tmp299
	movq	%rax, -96(%rbp)	# tmp299, orig
	movq	-96(%rbp), %rax	# orig, tmp300
	movq	%rax, 32(%rbx)	# tmp300, cx_18->cx_u.cx_subst.sbu_orig
	.loc 1 240 0
	movq	%r15, %rdx	# m, m.50
	movq	%r13, %rax	# s, s.51
	subq	%rax, %rdx	# s.51, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movq	%rax, %rdx	# D.19036, D.19038
	movq	-96(%rbp), %rax	# orig, tmp301
	leaq	(%rdx,%rax), %r13	#, s
	.loc 1 241 0
	movq	72(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_strend, D.19034
	movq	%rax, %rdx	# D.19034, D.19036
	movq	%r15, %rax	# m, m.52
	subq	%rax, %rdx	# m.52, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	addq	%r13, %rax	# s, D.19034
	movq	%rax, 72(%rbx)	# D.19034, cx_18->cx_u.cx_subst.sbu_strend
.L59:
	.loc 1 243 0
	movq	(%r12), %rax	# rx_23->startp, D.19039
	movl	(%rax), %eax	# *_175, D.19026
	movslq	%eax, %rdx	# D.19026, D.19038
	movq	-96(%rbp), %rax	# orig, tmp302
	leaq	(%rdx,%rax), %r15	#, m
	movq	%r15, 64(%rbx)	# m, cx_18->cx_u.cx_subst.sbu_m
	.loc 1 244 0
	cmpq	%r13, %r15	# s, m
	jbe	.L60	#,
	.loc 1 245 0
	movl	12(%r14), %eax	# dstr_19->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L61	#,
	.loc 1 245 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.53
	movzbl	37(%rax), %eax	# PL_curcop.53_181->op_private, D.19035
	movzbl	%al, %eax	# D.19035, D.19026
	andl	$8, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	jne	.L61	#,
	movq	48(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_targ, D.19029
	movl	12(%rax), %eax	# _185->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	jne	.L61	#,
.LBB7:
	.loc 1 246 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, nsv
	jne	.L62	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movq	%r15, %rdx	# m, m.54
	movq	%r13, %rax	# s, s.55
	subq	%rax, %rdx	# s.55, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movq	%rax, %rsi	# D.19027,
	movq	%r13, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19029,
	call	Perl_sv_2mortal	#
	movq	%rax, -88(%rbp)	# tmp303, nsv
	jmp	.L63	#
.L62:
	.loc 1 246 0 discriminator 2
	movq	%r15, %rdx	# m, m.56
	movq	%r13, %rax	# s, s.57
	subq	%rax, %rdx	# s.57, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movq	%rax, %rdx	# D.19036, D.19027
	movq	-88(%rbp), %rax	# nsv, tmp304
	movq	%r13, %rsi	# s,
	movq	%rax, %rdi	# tmp304,
	call	Perl_sv_setpvn	#
.L63:
	.loc 1 246 0 discriminator 1
	movq	-88(%rbp), %rax	# nsv, tmp305
	movl	12(%rax), %eax	# nsv_5->sv_flags, D.19030
	andl	$-536870913, %eax	#, D.19030
	movl	%eax, %edx	# D.19030, D.19030
	movq	-88(%rbp), %rax	# nsv, tmp306
	movl	%edx, 12(%rax)	# D.19030, nsv_5->sv_flags
	movq	-88(%rbp), %rax	# nsv, tmp307
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp307,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	-88(%rbp), %rax	# nsv, tmp308
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp308,
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_catsv_flags	#
.LBE7:
	jmp	.L60	#
.L61:
	.loc 1 248 0 is_stmt 1
	movq	%r15, %rdx	# m, m.58
	movq	%r13, %rax	# s, s.59
	subq	%rax, %rdx	# s.59, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# D.19027,
	movq	%r13, %rsi	# s,
	movq	%r14, %rdi	# dstr,
	call	Perl_sv_catpvn_flags	#
.L60:
	.loc 1 250 0
	movq	8(%r12), %rax	# rx_23->endp, D.19039
	movl	(%rax), %eax	# *_204, D.19026
	movslq	%eax, %rdx	# D.19026, D.19038
	movq	-96(%rbp), %rax	# orig, tmp309
	addq	%rdx, %rax	# D.19038, D.19034
	movq	%rax, 56(%rbx)	# D.19034, cx_18->cx_u.cx_subst.sbu_s
.LBB8:
	.loc 1 252 0
	movq	48(%rbx), %rax	# cx_18->cx_u.cx_subst.sbu_targ, tmp310
	movq	%rax, -56(%rbp)	# tmp310, sv
	.loc 1 255 0
	movq	-56(%rbp), %rax	# sv, tmp311
	movl	12(%rax), %eax	# sv_208->sv_flags, D.19030
	movzbl	%al, %eax	# D.19030, D.19030
	cmpl	$6, %eax	#, D.19030
	ja	.L64	#,
	.loc 1 256 0
	movq	-56(%rbp), %rax	# sv, tmp312
	movl	12(%rax), %eax	# sv_208->sv_flags, D.19030
	movzbl	%al, %eax	# D.19030, D.19030
	cmpl	$6, %eax	#, D.19030
	ja	.L65	#,
	.loc 1 256 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp313
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp313,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.19031
	je	.L64	#,
.L65:
	.loc 1 256 0 discriminator 1
	nop
.L64:
	.loc 1 257 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp314
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp314,
	call	Perl_mg_find	#
	movq	%rax, -80(%rbp)	# tmp315, mg
	cmpq	$0, -80(%rbp)	#, mg
	jne	.L67	#,
	.loc 1 258 0
	movq	-56(%rbp), %rax	# sv, tmp316
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp316,
	call	Perl_sv_magic	#
	.loc 1 259 0
	movq	-56(%rbp), %rax	# sv, tmp317
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp317,
	call	Perl_mg_find	#
	movq	%rax, -80(%rbp)	# tmp318, mg
.L67:
	.loc 1 261 0
	movq	%r15, %rdx	# m, m.61
	movq	-96(%rbp), %rax	# orig, orig.62
	subq	%rax, %rdx	# orig.62, D.19036
	movq	%rdx, %rax	# D.19036, D.19036
	movl	%eax, -104(%rbp)	# i.63, i
	.loc 1 262 0
	movq	-56(%rbp), %rax	# sv, tmp319
	movl	12(%rax), %eax	# sv_208->sv_flags, D.19030
	andl	$536870912, %eax	#, D.19030
	testl	%eax, %eax	# D.19030
	je	.L68	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.64
	movzbl	37(%rax), %eax	# PL_curcop.64_224->op_private, D.19035
	movzbl	%al, %eax	# D.19035, D.19026
	andl	$8, %eax	#, D.19026
	testl	%eax, %eax	# D.19026
	jne	.L68	#,
	.loc 1 263 0 is_stmt 1
	leaq	-104(%rbp), %rdx	#, tmp320
	movq	-56(%rbp), %rax	# sv, tmp321
	movq	%rdx, %rsi	# tmp320,
	movq	%rax, %rdi	# tmp321,
	call	Perl_sv_pos_b2u	#
.L68:
	.loc 1 264 0
	movl	-104(%rbp), %edx	# i, i.65
	movq	-80(%rbp), %rax	# mg, tmp322
	movl	%edx, 40(%rax)	# i.65, mg_6->mg_len
.LBE8:
	.loc 1 266 0
	cmpq	%r12, -72(%rbp)	# rx, old
	je	.L69	#,
	.loc 1 267 0
	testq	%r12, %r12	# rx
	je	.L69	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movl	68(%r12), %eax	# rx_23->refcnt, D.19026
	leal	1(%rax), %edx	#, D.19026
	movl	%edx, 68(%r12)	# D.19026, rx_23->refcnt
	testl	%eax, %eax	# D.19026
	je	.L69	#,
	.loc 1 267 0
	nop
.L69:
	.loc 1 268 0 is_stmt 1
	movzbl	25(%rbx), %eax	# cx_18->cx_u.cx_subst.sbu_rxtainted, D.19031
	movb	%al, 25(%rbx)	# D.19031, cx_18->cx_u.cx_subst.sbu_rxtainted
	.loc 1 269 0
	leaq	80(%rbx), %rax	#, D.19028
	movq	%r12, %rsi	# rx,
	movq	%rax, %rdi	# D.19028,
	call	Perl_rxres_save	#
	.loc 1 270 0
	movq	-120(%rbp), %rax	# %sfp, sp
	movq	%rax, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-128(%rbp), %rax	# %sfp, pm
	movq	64(%rax), %rax	# pm_11->op_pmreplstart, D.19024
.L40:
	.loc 1 271 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_pp_substcont, .-Perl_pp_substcont
	.globl	Perl_rxres_save
	.type	Perl_rxres_save, @function
Perl_rxres_save:
.LFB7:
	.loc 1 275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# rsp, rsp
	movq	%rsi, -32(%rbp)	# rx, rx
	.loc 1 276 0
	movq	-24(%rbp), %rax	# rsp, tmp100
	movq	(%rax), %rax	# *rsp_6(D), tmp101
	movq	%rax, -8(%rbp)	# tmp101, p
	.loc 1 279 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L72	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp102
	addq	$8, %rax	#, D.19042
	movq	(%rax), %rdx	# *_8, D.19043
	movq	-32(%rbp), %rax	# rx, tmp103
	movl	80(%rax), %eax	# rx_10(D)->nparens, D.19044
	movl	%eax, %eax	# D.19044, D.19043
	cmpq	%rax, %rdx	# D.19043, D.19043
	jae	.L73	#,
.L72:
	.loc 1 280 0 is_stmt 1
	movq	-32(%rbp), %rax	# rx, tmp104
	movl	80(%rax), %eax	# rx_10(D)->nparens, D.19044
	addl	$3, %eax	#, D.19044
	addl	%eax, %eax	# tmp105
	movl	%eax, -12(%rbp)	# tmp105, i
	.loc 1 281 0
	cmpq	$0, -8(%rbp)	#, p
	jne	.L74	#,
	.loc 1 282 0
	movl	-12(%rbp), %eax	# i, D.19043
	salq	$3, %rax	#, D.19043
	movq	%rax, %rdi	# D.19043,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp106, p
	jmp	.L75	#
.L74:
	.loc 1 284 0
	movl	-12(%rbp), %eax	# i, D.19043
	leaq	0(,%rax,8), %rdx	#, D.19043
	movq	-8(%rbp), %rax	# p, tmp107
	movq	%rdx, %rsi	# D.19043,
	movq	%rax, %rdi	# tmp107,
	call	Perl_safesysrealloc	#
	movq	%rax, -8(%rbp)	# tmp108, p
.L75:
	.loc 1 285 0
	movq	-24(%rbp), %rax	# rsp, tmp109
	movq	-8(%rbp), %rdx	# p, tmp110
	movq	%rdx, (%rax)	# tmp110, *rsp_6(D)
.L73:
	.loc 1 288 0
	movq	-8(%rbp), %rax	# p, p.67
	leaq	8(%rax), %rdx	#, tmp111
	movq	%rdx, -8(%rbp)	# tmp111, p
	movq	-32(%rbp), %rdx	# rx, tmp112
	movl	92(%rdx), %edx	# rx_10(D)->reganch, D.19044
	andl	$262144, %edx	#, D.19044
	testl	%edx, %edx	# D.19044
	je	.L76	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# rx, tmp113
	movq	48(%rdx), %rdx	# rx_10(D)->subbeg, D.19045
	jmp	.L77	#
.L76:
	.loc 1 288 0 discriminator 2
	movl	$0, %edx	#, iftmp.68
.L77:
	.loc 1 288 0 discriminator 3
	movq	%rdx, (%rax)	# iftmp.68, *p.67_22
	.loc 1 289 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# rx, tmp114
	movl	92(%rax), %eax	# rx_10(D)->reganch, D.19044
	andl	$-262145, %eax	#, D.19044
	movl	%eax, %edx	# D.19044, D.19044
	movq	-32(%rbp), %rax	# rx, tmp115
	movl	%edx, 92(%rax)	# D.19044, rx_10(D)->reganch
	.loc 1 291 0 discriminator 3
	movq	-8(%rbp), %rax	# p, p.69
	leaq	8(%rax), %rdx	#, tmp116
	movq	%rdx, -8(%rbp)	# tmp116, p
	movq	-32(%rbp), %rdx	# rx, tmp117
	movl	80(%rdx), %edx	# rx_10(D)->nparens, D.19044
	movl	%edx, %edx	# D.19044, D.19043
	movq	%rdx, (%rax)	# D.19043, *p.69_31
	.loc 1 293 0 discriminator 3
	movq	-8(%rbp), %rax	# p, p.70
	leaq	8(%rax), %rdx	#, tmp118
	movq	%rdx, -8(%rbp)	# tmp118, p
	movq	-32(%rbp), %rdx	# rx, tmp119
	movq	48(%rdx), %rdx	# rx_10(D)->subbeg, D.19045
	movq	%rdx, (%rax)	# D.19043, *p.70_35
	.loc 1 294 0 discriminator 3
	movq	-8(%rbp), %rax	# p, p.71
	leaq	8(%rax), %rdx	#, tmp120
	movq	%rdx, -8(%rbp)	# tmp120, p
	movq	-32(%rbp), %rdx	# rx, tmp121
	movl	64(%rdx), %edx	# rx_10(D)->sublen, D.19046
	movslq	%edx, %rdx	# D.19046, D.19043
	movq	%rdx, (%rax)	# D.19043, *p.71_39
	.loc 1 295 0 discriminator 3
	movl	$0, -12(%rbp)	#, i
	jmp	.L78	#
.L79:
	.loc 1 296 0 discriminator 2
	movq	-8(%rbp), %rax	# p, p.72
	leaq	8(%rax), %rdx	#, tmp122
	movq	%rdx, -8(%rbp)	# tmp122, p
	movq	-32(%rbp), %rdx	# rx, tmp123
	movq	(%rdx), %rdx	# rx_10(D)->startp, D.19047
	movl	-12(%rbp), %ecx	# i, D.19043
	salq	$2, %rcx	#, D.19043
	addq	%rcx, %rdx	# D.19043, D.19047
	movl	(%rdx), %edx	# *_50, D.19046
	movslq	%edx, %rdx	# D.19046, D.19043
	movq	%rdx, (%rax)	# D.19043, *p.72_45
	.loc 1 297 0 discriminator 2
	movq	-8(%rbp), %rax	# p, p.73
	leaq	8(%rax), %rdx	#, tmp124
	movq	%rdx, -8(%rbp)	# tmp124, p
	movq	-32(%rbp), %rdx	# rx, tmp125
	movq	8(%rdx), %rdx	# rx_10(D)->endp, D.19047
	movl	-12(%rbp), %ecx	# i, D.19043
	salq	$2, %rcx	#, D.19043
	addq	%rcx, %rdx	# D.19043, D.19047
	movl	(%rdx), %edx	# *_58, D.19046
	movslq	%edx, %rdx	# D.19046, D.19043
	movq	%rdx, (%rax)	# D.19043, *p.73_53
	.loc 1 295 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L78:
	.loc 1 295 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# rx, tmp126
	movl	80(%rax), %eax	# rx_10(D)->nparens, D.19044
	cmpl	-12(%rbp), %eax	# i, D.19044
	jae	.L79	#,
	.loc 1 299 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_rxres_save, .-Perl_rxres_save
	.globl	Perl_rxres_restore
	.type	Perl_rxres_restore, @function
Perl_rxres_restore:
.LFB8:
	.loc 1 303 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# rsp, rsp
	movq	%rsi, -32(%rbp)	# rx, rx
	.loc 1 304 0
	movq	-24(%rbp), %rax	# rsp, tmp94
	movq	(%rax), %rax	# *rsp_3(D), tmp95
	movq	%rax, -8(%rbp)	# tmp95, p
	.loc 1 307 0
	movq	-32(%rbp), %rax	# rx, tmp96
	movl	92(%rax), %eax	# rx_5(D)->reganch, D.19048
	andl	$262144, %eax	#, D.19048
	testl	%eax, %eax	# D.19048
	je	.L81	#,
	.loc 1 308 0
	movq	-32(%rbp), %rax	# rx, tmp97
	movq	48(%rax), %rax	# rx_5(D)->subbeg, D.19049
	movq	%rax, %rdi	# D.19049,
	call	Perl_safesysfree	#
.L81:
	.loc 1 309 0
	movq	-8(%rbp), %rax	# p, tmp98
	movq	(%rax), %rax	# *p_4, D.19050
	testq	%rax, %rax	# D.19050
	je	.L82	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# rx, tmp99
	movl	92(%rax), %eax	# rx_5(D)->reganch, D.19048
	orl	$262144, %eax	#, D.19048
	movl	%eax, %edx	# D.19048, D.19048
	movq	-32(%rbp), %rax	# rx, tmp100
	movl	%edx, 92(%rax)	# D.19048, rx_5(D)->reganch
	jmp	.L83	#
.L82:
	.loc 1 309 0 discriminator 2
	movq	-32(%rbp), %rax	# rx, tmp102
	movl	92(%rax), %eax	# rx_5(D)->reganch, D.19048
	andl	$-262145, %eax	#, D.19048
	movl	%eax, %edx	# D.19048, D.19048
	movq	-32(%rbp), %rax	# rx, tmp103
	movl	%edx, 92(%rax)	# D.19048, rx_5(D)->reganch
.L83:
	.loc 1 310 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, p.75
	leaq	8(%rax), %rdx	#, tmp105
	movq	%rdx, -8(%rbp)	# tmp105, p
	movq	$0, (%rax)	#, *p.75_16
	.loc 1 312 0
	movq	-8(%rbp), %rax	# p, p.76
	leaq	8(%rax), %rdx	#, tmp106
	movq	%rdx, -8(%rbp)	# tmp106, p
	movq	(%rax), %rax	# *p.76_18, D.19050
	movl	%eax, %edx	# D.19050, D.19048
	movq	-32(%rbp), %rax	# rx, tmp107
	movl	%edx, 80(%rax)	# D.19048, rx_5(D)->nparens
	.loc 1 314 0
	movq	-8(%rbp), %rax	# p, p.77
	leaq	8(%rax), %rdx	#, tmp108
	movq	%rdx, -8(%rbp)	# tmp108, p
	movq	(%rax), %rax	# *p.77_22, D.19050
	movq	%rax, %rdx	# D.19050, D.19049
	movq	-32(%rbp), %rax	# rx, tmp109
	movq	%rdx, 48(%rax)	# D.19049, rx_5(D)->subbeg
	.loc 1 315 0
	movq	-8(%rbp), %rax	# p, p.78
	leaq	8(%rax), %rdx	#, tmp110
	movq	%rdx, -8(%rbp)	# tmp110, p
	movq	(%rax), %rax	# *p.78_26, D.19050
	movl	%eax, %edx	# D.19050, D.19051
	movq	-32(%rbp), %rax	# rx, tmp111
	movl	%edx, 64(%rax)	# D.19051, rx_5(D)->sublen
	.loc 1 316 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L84	#
.L85:
	.loc 1 317 0 discriminator 2
	movq	-32(%rbp), %rax	# rx, tmp112
	movq	(%rax), %rax	# rx_5(D)->startp, D.19052
	movl	-12(%rbp), %edx	# i, D.19050
	salq	$2, %rdx	#, D.19050
	leaq	(%rax,%rdx), %rcx	#, D.19052
	movq	-8(%rbp), %rax	# p, p.79
	leaq	8(%rax), %rdx	#, tmp113
	movq	%rdx, -8(%rbp)	# tmp113, p
	movq	(%rax), %rax	# *p.79_36, D.19050
	movl	%eax, (%rcx)	# D.19051, *_35
	.loc 1 318 0 discriminator 2
	movq	-32(%rbp), %rax	# rx, tmp114
	movq	8(%rax), %rax	# rx_5(D)->endp, D.19052
	movl	-12(%rbp), %edx	# i, D.19050
	salq	$2, %rdx	#, D.19050
	leaq	(%rax,%rdx), %rcx	#, D.19052
	movq	-8(%rbp), %rax	# p, p.80
	leaq	8(%rax), %rdx	#, tmp115
	movq	%rdx, -8(%rbp)	# tmp115, p
	movq	(%rax), %rax	# *p.80_44, D.19050
	movl	%eax, (%rcx)	# D.19051, *_43
	.loc 1 316 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L84:
	.loc 1 316 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# rx, tmp116
	movl	80(%rax), %eax	# rx_5(D)->nparens, D.19048
	cmpl	-12(%rbp), %eax	# i, D.19048
	jae	.L85	#,
	.loc 1 320 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_rxres_restore, .-Perl_rxres_restore
	.globl	Perl_rxres_free
	.type	Perl_rxres_free, @function
Perl_rxres_free:
.LFB9:
	.loc 1 324 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# rsp, rsp
	.loc 1 325 0
	movq	-24(%rbp), %rax	# rsp, tmp61
	movq	(%rax), %rax	# *rsp_1(D), tmp62
	movq	%rax, -8(%rbp)	# tmp62, p
	.loc 1 327 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L86	#,
	.loc 1 328 0
	movq	-8(%rbp), %rax	# p, tmp63
	movq	(%rax), %rax	# *p_2, D.19053
	movq	%rax, %rdi	# D.19054,
	call	Perl_safesysfree	#
	.loc 1 329 0
	movq	-8(%rbp), %rax	# p, tmp64
	movq	%rax, %rdi	# tmp64,
	call	Perl_safesysfree	#
	.loc 1 330 0
	movq	-24(%rbp), %rax	# rsp, tmp65
	movq	$0, (%rax)	#, *rsp_1(D)
.L86:
	.loc 1 332 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_rxres_free, .-Perl_rxres_free
	.section	.rodata
.LC2:
	.string	"Not enough format arguments"
.LC3:
	.string	"%#0*.*f"
.LC4:
	.string	"%0*.*f"
.LC5:
	.string	"%#*.*f"
.LC6:
	.string	"%*.*f"
.LC7:
	.string	"Runaway format"
.LC8:
	.string	"   "
	.text
	.globl	Perl_pp_formline
	.type	Perl_pp_formline, @function
Perl_pp_formline:
.LFB10:
	.loc 1 335 0
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
	subq	$168, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 336 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, sp
	movq	%rax, -192(%rbp)	# sp, %sfp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.81
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.82
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.84
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.84, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.83_154, D.19056
	cltq
	salq	$3, %rax	#, D.19057
	addq	%rcx, %rax	# PL_stack_base.81, mark
	movq	%rax, -184(%rbp)	# mark, %sfp
	movq	%rax, %rdx	# mark, mark.85
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.86
	subq	%rax, %rdx	# PL_stack_base.87, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	sarq	$3, %rax	#, tmp678
	movl	%eax, -132(%rbp)	# D.19058, origmark
	.loc 1 337 0
	addq	$8, -184(%rbp)	#, %sfp
	movq	-184(%rbp), %rax	# %sfp, mark
	movq	(%rax), %r15	# *mark_166, tmpForm
	.loc 1 344 0
	movl	$0, %r14d	#, sv
	.loc 1 345 0
	movq	$0, -120(%rbp)	#, item
	.loc 1 346 0
	movl	$0, -148(%rbp)	#, itemsize
	.loc 1 347 0
	movl	$0, -140(%rbp)	#, fieldsize
	.loc 1 348 0
	movl	$0, -136(%rbp)	#, lines
	.loc 1 349 0
	movq	PL_chopset(%rip), %rax	# PL_chopset, PL_chopset.88
	movl	$32, %esi	#,
	movq	%rax, %rdi	# PL_chopset.88,
	call	strchr	#
	testq	%rax, %rax	# D.19059
	setne	%al	#, D.19060
	movb	%al, -154(%rbp)	# D.19060, chopspace
	.loc 1 350 0
	movq	$0, -112(%rbp)	#, chophere
	.loc 1 351 0
	movq	$0, -104(%rbp)	#, linemark
	.loc 1 353 0
	movb	$0, -153(%rbp)	#, gotsome
	.loc 1 355 0
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$262144, %eax	#, D.19061
	.loc 1 356 0
	testl	%eax, %eax	# D.19061
	je	.L89	#,
	.loc 1 356 0 is_stmt 0 discriminator 1
	movq	(%r15), %rax	# tmpForm_167->sv_any, D.19062
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_181].xpv_cur, D.19057
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.91
	movzbl	37(%rax), %eax	# PL_curcop.91_183->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	je	.L90	#,
	movl	$1, %eax	#, iftmp.90
	jmp	.L91	#
.L90:
	.loc 1 356 0 discriminator 2
	movl	$3, %eax	#, iftmp.90
.L91:
	.loc 1 356 0 discriminator 1
	imulq	%rdx, %rax	# D.19057, D.19057
	addq	$1, %rax	#, iftmp.89
	jmp	.L92	#
.L89:
	.loc 1 356 0 discriminator 2
	movl	$0, %eax	#, iftmp.89
.L92:
	.loc 1 355 0 is_stmt 1
	movq	%rax, -72(%rbp)	# iftmp.89, fudge
	.loc 1 357 0
	movb	$0, -152(%rbp)	#, item_is_utf8
	.loc 1 358 0
	movb	$0, -151(%rbp)	#, targ_is_utf8
	.loc 1 359 0
	movq	$0, -96(%rbp)	#, nsv
	.loc 1 360 0
	movq	$0, -88(%rbp)	#, parseres
	.loc 1 364 0
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$57344, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L93	#,
	.loc 1 364 0 is_stmt 0 discriminator 1
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	testl	%eax, %eax	# D.19064
	js	.L94	#,
.L93:
	.loc 1 365 0 is_stmt 1
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$8388608, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L95	#,
	.loc 1 366 0
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$-8388609, %eax	#, D.19061
	movl	%eax, 12(%r15)	# D.19061, tmpForm_167->sv_flags
	.loc 1 367 0
	movq	%r15, %rdi	# tmpForm,
	call	S_doparseform	#
	movq	%rax, -88(%rbp)	# tmp679, parseres
	.loc 1 368 0
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	orl	$8388608, %eax	#, D.19061
	movl	%eax, 12(%r15)	# D.19061, tmpForm_167->sv_flags
	jmp	.L96	#
.L95:
	.loc 1 371 0
	movq	%r15, %rdi	# tmpForm,
	call	S_doparseform	#
	movq	%rax, -88(%rbp)	# tmp680, parseres
.L96:
	.loc 1 372 0
	cmpq	$0, -88(%rbp)	#, parseres
	je	.L94	#,
	.loc 1 373 0
	movq	-88(%rbp), %rax	# parseres, D.19055
	jmp	.L271	#
.L94:
	.loc 1 375 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.93
	movl	12(%rax), %eax	# PL_formtarget.93_210->sv_flags, D.19061
	andl	$10223616, %eax	#, D.19061
	cmpl	$262144, %eax	#, D.19061
	jne	.L98	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.94
	movq	(%rax), %rax	# PL_formtarget.94_213->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_214].xpv_cur, len.95
	movq	%rax, -128(%rbp)	# len.95, len
	jmp	.L99	#
.L98:
	.loc 1 375 0 discriminator 2
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.97
	leaq	-128(%rbp), %rcx	#, tmp681
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp681,
	movq	%rax, %rdi	# PL_formtarget.97,
	call	Perl_sv_pvn_force_flags	#
.L99:
	.loc 1 376 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.98
	movl	12(%rax), %eax	# PL_formtarget.98_221->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L100	#,
	.loc 1 376 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.99
	movzbl	37(%rax), %eax	# PL_curcop.99_224->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L100	#,
	.loc 1 377 0 is_stmt 1
	movb	$1, -151(%rbp)	#, targ_is_utf8
.L100:
	.loc 1 378 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.101
	movq	(%rax), %rax	# PL_formtarget.101_229->sv_any, D.19062
	movq	16(%rax), %rax	# MEM[(struct XPV *)_230].xpv_len, D.19057
	movq	-128(%rbp), %rcx	# len, len.102
	movq	-72(%rbp), %rdx	# fudge, tmp682
	addq	%rcx, %rdx	# len.102, D.19057
	addq	$1, %rdx	#, D.19057
	cmpq	%rdx, %rax	# D.19057, D.19057
	jae	.L101	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rdx	# len, len.103
	movq	-72(%rbp), %rax	# fudge, tmp683
	addq	%rdx, %rax	# len.103, D.19057
	leaq	1(%rax), %rdx	#, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.104
	movq	%rdx, %rsi	# D.19057,
	movq	%rax, %rdi	# PL_formtarget.104,
	call	Perl_sv_grow	#
	jmp	.L102	#
.L101:
	.loc 1 378 0 discriminator 2
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.105
	movq	(%rax), %rax	# PL_formtarget.105_240->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_241].xpv_pv, iftmp.100
.L102:
	.loc 1 378 0 discriminator 3
	movq	%rax, %r12	# iftmp.100, t
	.loc 1 379 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# len, len.106
	addq	%rax, %r12	# len.106, t
	.loc 1 380 0 discriminator 3
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$262144, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L103	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	(%r15), %rax	# tmpForm_167->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_248].xpv_cur, len.108
	movq	%rax, -128(%rbp)	# len.108, len
	movq	(%r15), %rax	# tmpForm_167->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_250].xpv_pv, iftmp.107
	jmp	.L104	#
.L103:
	.loc 1 380 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp684
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp684,
	movq	%r15, %rdi	# tmpForm,
	call	Perl_sv_2pv_flags	#
.L104:
	.loc 1 380 0 discriminator 3
	movq	%rax, %rsi	# iftmp.107, f
	movq	%rsi, -176(%rbp)	# f, %sfp
	.loc 1 382 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rdx	# len, len.109
	movq	(%r15), %rax	# tmpForm_167->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_255].xpv_cur, D.19057
	andl	$3, %eax	#, D.19065
	subq	%rax, %rdx	# D.19065, D.19065
	movq	%rdx, %rax	# D.19065, D.19065
	addq	$4, %rax	#, D.19065
	leaq	(%rsi,%rax), %rbx	#, s
	.loc 1 384 0 discriminator 3
	movq	%rbx, -168(%rbp)	# s, %sfp
	jmp	.L270	#
.L272:
	.loc 1 834 0
	nop
.L270:
	.loc 1 416 0
	movq	-168(%rbp), %rax	# %sfp, fpc.110
	leaq	4(%rax), %rsi	#, fpc
	movq	%rsi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.110_262, D.19061
	cmpl	$17, %eax	#, D.19061
	ja	.L272	#,
	movl	%eax, %eax	# D.19061, tmp685
	movq	.L107(,%rax,8), %rax	#, tmp686
	jmp	*%rax	# tmp686
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L106
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.text
.L108:
	.loc 1 418 0
	movq	%r12, -104(%rbp)	# t, linemark
	.loc 1 419 0
	addl	$1, -136(%rbp)	#, lines
	.loc 1 420 0
	movb	$0, -153(%rbp)	#, gotsome
	.loc 1 421 0
	jmp	.L105	#
.L109:
	.loc 1 424 0
	movq	-168(%rbp), %rax	# %sfp, fpc.111
	leaq	4(%rax), %rsi	#, fpc
	movq	%rsi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.111_268, D.19061
	movl	%eax, %r13d	# D.19061, arg
	.loc 1 425 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	je	.L125	#,
	.loc 1 425 0 is_stmt 0 discriminator 1
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	jne	.L125	#,
	.loc 1 426 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.112
	movq	(%rax), %rax	# PL_formtarget.112_274->sv_any, D.19062
	movq	%r12, %rcx	# t, t.113
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.114
	movq	(%rdx), %rdx	# PL_formtarget.114_277->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_278].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_275].xpv_cur
	.loc 1 427 0
	movb	$0, (%r12)	#, *t_7
.LBB9:
	.loc 1 428 0
	cmpq	$0, -96(%rbp)	#, nsv
	jne	.L126	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# arg, D.19057
	movq	%rax, %rsi	# D.19057,
	movq	-176(%rbp), %rdi	# %sfp,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19066,
	call	Perl_sv_2mortal	#
	movq	%rax, -96(%rbp)	# tmp687, nsv
	jmp	.L127	#
.L126:
	.loc 1 428 0 discriminator 2
	movslq	%r13d, %rdx	# arg, D.19057
	movq	-96(%rbp), %rax	# nsv, tmp688
	movq	-176(%rbp), %rsi	# %sfp,
	movq	%rax, %rdi	# tmp688,
	call	Perl_sv_setpvn	#
.L127:
	.loc 1 428 0 discriminator 1
	movq	-96(%rbp), %rax	# nsv, tmp689
	movl	12(%rax), %eax	# nsv_131->sv_flags, D.19061
	andl	$-536870913, %eax	#, D.19061
	movl	%eax, %edx	# D.19061, D.19061
	movq	-96(%rbp), %rax	# nsv, tmp690
	movl	%edx, 12(%rax)	# D.19061, nsv_131->sv_flags
	movq	-96(%rbp), %rax	# nsv, tmp691
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp691,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.115
	movq	-96(%rbp), %rcx	# nsv, tmp692
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp692,
	movq	%rax, %rdi	# PL_formtarget.115,
	call	Perl_sv_catsv_flags	#
.LBE9:
	.loc 1 429 0 is_stmt 1 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.116
	movq	(%rax), %rax	# PL_formtarget.116_290->sv_any, D.19062
	movq	(%rax), %rdx	# MEM[(struct XPV *)_291].xpv_pv, D.19059
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.117
	movq	(%rax), %rax	# PL_formtarget.117_293->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_294].xpv_cur, D.19057
	leaq	(%rdx,%rax), %r12	#, t
	.loc 1 430 0 discriminator 1
	jmp	.L105	#
.L125:
	.loc 1 432 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	jne	.L128	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	12(%r15), %eax	# tmpForm_167->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L128	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.118
	movzbl	37(%rax), %eax	# PL_curcop.118_299->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L128	#,
	.loc 1 433 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.119
	movq	(%rax), %rax	# PL_formtarget.119_303->sv_any, D.19062
	movq	%r12, %rcx	# t, t.120
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.121
	movq	(%rdx), %rdx	# PL_formtarget.121_306->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_307].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_304].xpv_cur
	.loc 1 434 0
	movb	$0, (%r12)	#, *t_7
	.loc 1 435 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.122
	movl	$2, %esi	#,
	movq	%rax, %rdi	# PL_formtarget.122,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 436 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.124
	movq	(%rax), %rax	# PL_formtarget.124_313->sv_any, D.19062
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_314].xpv_len, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.125
	movq	(%rax), %rax	# PL_formtarget.125_316->sv_any, D.19062
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_317].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp693
	addq	%rcx, %rax	# D.19057, D.19057
	addq	$1, %rax	#, D.19057
	cmpq	%rax, %rdx	# D.19057, D.19057
	jae	.L130	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.126
	movq	(%rax), %rax	# PL_formtarget.126_321->sv_any, D.19062
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_322].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp694
	addq	%rdx, %rax	# D.19057, D.19057
	leaq	1(%rax), %rdx	#, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.127
	movq	%rdx, %rsi	# D.19057,
	movq	%rax, %rdi	# PL_formtarget.127,
	call	Perl_sv_grow	#
.L130:
	.loc 1 437 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.129
	movq	(%rax), %rax	# PL_formtarget.129_331->sv_any, D.19062
	movq	(%rax), %rdx	# MEM[(struct XPV *)_332].xpv_pv, D.19059
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.130
	movq	(%rax), %rax	# PL_formtarget.130_334->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_335].xpv_cur, D.19057
	leaq	(%rdx,%rax), %r12	#, t
	.loc 1 438 0
	movb	$1, -151(%rbp)	#, targ_is_utf8
	.loc 1 440 0
	jmp	.L131	#
.L128:
	jmp	.L131	#
.L132:
	.loc 1 441 0
	movq	%r12, %rax	# t, t.131
	leaq	1(%rax), %r12	#, t
	movq	-176(%rbp), %rdx	# %sfp, f.132
	leaq	1(%rdx), %rdi	#, f
	movq	%rdi, -176(%rbp)	# f, %sfp
	movzbl	(%rdx), %edx	# *f.132_343, D.19067
	movb	%dl, (%rax)	# D.19067, *t.131_341
.L131:
	.loc 1 440 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.133
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.133
	jne	.L132	#,
	.loc 1 442 0
	jmp	.L105	#
.L110:
	.loc 1 445 0
	movq	-168(%rbp), %rax	# %sfp, fpc.134
	leaq	4(%rax), %rsi	#, fpc
	movq	%rsi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.134_346, D.19061
	movl	%eax, %eax	# D.19061, D.19065
	addq	%rax, -176(%rbp)	# D.19065, %sfp
	.loc 1 446 0
	jmp	.L105	#
.L111:
	.loc 1 449 0
	movq	-168(%rbp), %rax	# %sfp, fpc.135
	leaq	4(%rax), %rdi	#, fpc
	movq	%rdi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.135_351, D.19061
	movl	%eax, %r13d	# D.19061, arg
	.loc 1 450 0
	movslq	%r13d, %rax	# arg, D.19065
	addq	%rax, -176(%rbp)	# D.19065, %sfp
	.loc 1 451 0
	movl	%r13d, -140(%rbp)	# arg, fieldsize
	.loc 1 453 0
	movq	-192(%rbp), %rax	# %sfp, sp
	cmpq	%rax, -184(%rbp)	# sp, %sfp
	jae	.L133	#,
	.loc 1 454 0
	addq	$8, -184(%rbp)	#, %sfp
	movq	-184(%rbp), %rax	# %sfp, mark
	movq	(%rax), %r14	# *mark_358, sv
	jmp	.L134	#
.L133:
	.loc 1 456 0
	movl	$PL_sv_no, %r14d	#, sv
	.loc 1 457 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.136
	movq	80(%rax), %rax	# PL_curcop.136_361->cop_warnings, D.19066
	testq	%rax, %rax	# D.19066
	je	.L135	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.137
	movq	80(%rax), %rax	# PL_curcop.137_363->cop_warnings, D.19066
	cmpq	$32, %rax	#, D.19066
	je	.L135	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.138
	movq	80(%rax), %rax	# PL_curcop.138_365->cop_warnings, D.19066
	cmpq	$16, %rax	#, D.19066
	je	.L136	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.139
	movq	80(%rax), %rax	# PL_curcop.139_367->cop_warnings, D.19066
	movq	(%rax), %rax	# _368->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_369].xpv_pv, D.19059
	addq	$7, %rax	#, D.19059
	movzbl	(%rax), %eax	# *_371, D.19067
	movsbl	%al, %eax	# D.19067, D.19056
	andl	$1, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L136	#,
.L135:
	.loc 1 457 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.140
	movq	80(%rax), %rax	# PL_curcop.140_375->cop_warnings, D.19066
	testq	%rax, %rax	# D.19066
	jne	.L134	#,
	.loc 1 457 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.141
	movzbl	%al, %eax	# PL_dowarn.141, D.19056
	andl	$1, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	je	.L134	#,
.L136:
	.loc 1 458 0 is_stmt 1
	movl	$.LC2, %esi	#,
	movl	$28, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 460 0
	jmp	.L105	#
.L134:
	jmp	.L105	#
.L112:
	.loc 1 463 0
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$262144, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L137	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_382].xpv_cur, len.143
	movq	%rax, -128(%rbp)	# len.143, len
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_384].xpv_pv, iftmp.142
	jmp	.L138	#
.L137:
	.loc 1 463 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp695
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp695,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L138:
	.loc 1 463 0 discriminator 3
	movq	%rax, %rbx	# iftmp.142, s
	movq	%rbx, -120(%rbp)	# s, item
	.loc 1 464 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# len, len.144
	movl	%eax, -148(%rbp)	# itemsize.145, itemsize
	.loc 1 465 0 discriminator 3
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L139	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.146
	movzbl	37(%rax), %eax	# PL_curcop.146_393->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L139	#,
	.loc 1 466 0 is_stmt 1
	movq	%r14, %rdi	# sv,
	call	Perl_sv_len_utf8	#
	movl	%eax, -148(%rbp)	# itemsize.147, itemsize
	.loc 1 467 0
	movq	-128(%rbp), %rax	# len, len.148
	movl	%eax, %edx	# len.148, D.19056
	movl	-148(%rbp), %eax	# itemsize, itemsize.149
	cmpl	%eax, %edx	# itemsize.149, D.19056
	je	.L139	#,
.LBB10:
	.loc 1 469 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.150
	cmpl	-140(%rbp), %eax	# fieldsize, itemsize.150
	jle	.L140	#,
	.loc 1 470 0
	movl	-140(%rbp), %eax	# fieldsize, tmp696
	movl	%eax, -148(%rbp)	# tmp696, itemsize
	.loc 1 471 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.151
	movl	%eax, -144(%rbp)	# itemsize.151, itembytes
	.loc 1 472 0
	leaq	-144(%rbp), %rax	#, tmp697
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp697,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_pos_u2b	#
	jmp	.L141	#
.L140:
	.loc 1 475 0
	movq	-128(%rbp), %rax	# len, len.152
	movl	%eax, -144(%rbp)	# itembytes.153, itembytes
.L141:
	.loc 1 476 0
	movl	-144(%rbp), %eax	# itembytes, itembytes.154
	cltq
	addq	%rbx, %rax	# s, tmp698
	movq	%rax, -112(%rbp)	# tmp698, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 477 0
	jmp	.L142	#
.L146:
	.loc 1 478 0
	movzbl	(%rbx), %eax	# *s_37, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L143	#,
	.loc 1 479 0
	movb	$1, -153(%rbp)	#, gotsome
	jmp	.L144	#
.L143:
	.loc 1 480 0
	movzbl	(%rbx), %eax	# *s_37, D.19067
	cmpb	$10, %al	#, D.19067
	jne	.L144	#,
	.loc 1 481 0
	jmp	.L145	#
.L144:
	.loc 1 482 0
	addq	$1, %rbx	#, s
.L142:
	.loc 1 477 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L146	#,
.L145:
	.loc 1 484 0
	movb	$1, -152(%rbp)	#, item_is_utf8
	.loc 1 485 0
	movq	%rbx, %rdx	# s, s.155
	movq	-120(%rbp), %rax	# item, item.156
	subq	%rax, %rdx	# item.156, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.157, itemsize
	.loc 1 486 0
	leaq	-148(%rbp), %rax	#, tmp699
	movq	%rax, %rsi	# tmp699,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_pos_b2u	#
	.loc 1 487 0
	nop
	jmp	.L105	#
.L139:
.LBE10:
	.loc 1 490 0
	movb	$0, -152(%rbp)	#, item_is_utf8
	.loc 1 491 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.158
	cmpl	-140(%rbp), %eax	# fieldsize, itemsize.158
	jle	.L147	#,
	.loc 1 492 0
	movl	-140(%rbp), %eax	# fieldsize, tmp700
	movl	%eax, -148(%rbp)	# tmp700, itemsize
.L147:
	.loc 1 493 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.159
	cltq
	addq	%rbx, %rax	# s, tmp701
	movq	%rax, -112(%rbp)	# tmp701, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 494 0
	jmp	.L148	#
.L152:
	.loc 1 495 0
	movzbl	(%rbx), %eax	# *s_38, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L149	#,
	.loc 1 496 0
	movb	$1, -153(%rbp)	#, gotsome
	jmp	.L150	#
.L149:
	.loc 1 497 0
	movzbl	(%rbx), %eax	# *s_38, D.19067
	cmpb	$10, %al	#, D.19067
	jne	.L150	#,
	.loc 1 498 0
	jmp	.L151	#
.L150:
	.loc 1 499 0
	addq	$1, %rbx	#, s
.L148:
	.loc 1 494 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L152	#,
.L151:
	.loc 1 501 0
	movq	%rbx, %rdx	# s, s.160
	movq	-120(%rbp), %rax	# item, item.161
	subq	%rax, %rdx	# item.161, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.162, itemsize
	.loc 1 502 0
	jmp	.L105	#
.L113:
	.loc 1 505 0
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$262144, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L153	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_437].xpv_cur, len.164
	movq	%rax, -128(%rbp)	# len.164, len
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_439].xpv_pv, iftmp.163
	jmp	.L154	#
.L153:
	.loc 1 505 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp702
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp702,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L154:
	.loc 1 505 0 discriminator 3
	movq	%rax, %rbx	# iftmp.163, s
	movq	%rbx, -120(%rbp)	# s, item
	.loc 1 506 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# len, len.165
	movl	%eax, -148(%rbp)	# itemsize.166, itemsize
	.loc 1 507 0 discriminator 3
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L155	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.167
	movzbl	37(%rax), %eax	# PL_curcop.167_448->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L155	#,
	.loc 1 508 0 is_stmt 1
	movq	%r14, %rdi	# sv,
	call	Perl_sv_len_utf8	#
	movl	%eax, -148(%rbp)	# itemsize.168, itemsize
	.loc 1 509 0
	movq	-128(%rbp), %rax	# len, len.169
	movl	%eax, %edx	# len.169, D.19056
	movl	-148(%rbp), %eax	# itemsize, itemsize.170
	cmpl	%eax, %edx	# itemsize.170, D.19056
	je	.L155	#,
.LBB11:
	.loc 1 511 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.171
	cmpl	-140(%rbp), %eax	# fieldsize, itemsize.171
	jg	.L156	#,
	.loc 1 512 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.172
	cltq
	addq	%rbx, %rax	# s, tmp703
	movq	%rax, -112(%rbp)	# tmp703, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 513 0
	jmp	.L157	#
.L160:
	.loc 1 514 0
	movzbl	(%rbx), %eax	# *s_39, D.19067
	cmpb	$13, %al	#, D.19067
	jne	.L158	#,
	.loc 1 515 0
	movq	%rbx, %rdx	# s, s.173
	movq	-120(%rbp), %rax	# item, item.174
	subq	%rax, %rdx	# item.174, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.175, itemsize
	.loc 1 516 0
	movq	%rbx, -112(%rbp)	# s, chophere
	.loc 1 517 0
	nop
	jmp	.L161	#
.L158:
	.loc 1 519 0
	movq	%rbx, %rax	# s, s.176
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.176_468, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L157	#,
	.loc 1 520 0
	movb	$1, -153(%rbp)	#, gotsome
.L157:
	.loc 1 513 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L160	#,
	jmp	.L161	#
.L156:
	.loc 1 524 0
	movl	-140(%rbp), %eax	# fieldsize, tmp704
	movl	%eax, -148(%rbp)	# tmp704, itemsize
	.loc 1 525 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.177
	movl	%eax, -144(%rbp)	# itemsize.177, itembytes
	.loc 1 526 0
	leaq	-144(%rbp), %rax	#, tmp705
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp705,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_pos_u2b	#
	.loc 1 527 0
	movl	-144(%rbp), %eax	# itembytes, itembytes.178
	cltq
	addq	%rbx, %rax	# s, tmp706
	movq	%rax, -112(%rbp)	# tmp706, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 528 0
	jmp	.L162	#
.L170:
	.loc 1 529 0
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L163	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L163	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L163	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L163	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$12, %al	#, D.19067
	jne	.L164	#,
.L163:
	.loc 1 530 0 is_stmt 1
	cmpb	$0, -154(%rbp)	#, chopspace
	je	.L165	#,
	.loc 1 531 0
	movq	%rbx, -112(%rbp)	# s, chophere
.L165:
	.loc 1 532 0
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$13, %al	#, D.19067
	jne	.L166	#,
	.loc 1 533 0
	jmp	.L167	#
.L166:
	.loc 1 532 0 discriminator 1
	jmp	.L168	#
.L164:
	.loc 1 536 0
	movzbl	(%rbx), %eax	# *s_40, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L169	#,
	.loc 1 537 0
	movb	$1, -153(%rbp)	#, gotsome
.L169:
	.loc 1 538 0
	movzbl	(%rbx), %eax	# *s_40, D.19067
	movsbl	%al, %edx	# D.19067, D.19056
	movq	PL_chopset(%rip), %rax	# PL_chopset, PL_chopset.179
	movl	%edx, %esi	# D.19056,
	movq	%rax, %rdi	# PL_chopset.179,
	call	strchr	#
	testq	%rax, %rax	# D.19059
	je	.L168	#,
	.loc 1 539 0
	leaq	1(%rbx), %rax	#, tmp707
	movq	%rax, -112(%rbp)	# tmp707, chophere
.L168:
	.loc 1 541 0
	addq	$1, %rbx	#, s
.L162:
	.loc 1 528 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L170	#,
	.loc 1 528 0 is_stmt 0 discriminator 2
	cmpq	%r13, %rbx	# send, s
	jne	.L167	#,
	.loc 1 528 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L170	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L170	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L170	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L170	#,
	movzbl	(%rbx), %eax	# *s_40, D.19067
	cmpb	$12, %al	#, D.19067
	je	.L170	#,
.L167:
	.loc 1 543 0 is_stmt 1
	movq	-112(%rbp), %rdx	# chophere, chophere.180
	movq	-120(%rbp), %rax	# item, item.181
	subq	%rax, %rdx	# item.181, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.182, itemsize
	.loc 1 544 0
	leaq	-148(%rbp), %rax	#, tmp708
	movq	%rax, %rsi	# tmp708,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_pos_b2u	#
.L161:
	.loc 1 546 0
	movb	$1, -152(%rbp)	#, item_is_utf8
	.loc 1 547 0
	nop
	jmp	.L105	#
.L155:
.LBE11:
	.loc 1 550 0
	movb	$0, -152(%rbp)	#, item_is_utf8
	.loc 1 551 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.183
	cmpl	-140(%rbp), %eax	# fieldsize, itemsize.183
	jg	.L171	#,
	.loc 1 552 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.184
	cltq
	addq	%rbx, %rax	# s, tmp709
	movq	%rax, -112(%rbp)	# tmp709, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 553 0
	jmp	.L172	#
.L175:
	.loc 1 554 0
	movzbl	(%rbx), %eax	# *s_41, D.19067
	cmpb	$13, %al	#, D.19067
	jne	.L173	#,
	.loc 1 555 0
	movq	%rbx, %rdx	# s, s.185
	movq	-120(%rbp), %rax	# item, item.186
	subq	%rax, %rdx	# item.186, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.187, itemsize
	.loc 1 556 0
	movq	%rbx, -112(%rbp)	# s, chophere
	.loc 1 557 0
	nop
	jmp	.L176	#
.L173:
	.loc 1 559 0
	movq	%rbx, %rax	# s, s.188
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.188_516, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L172	#,
	.loc 1 560 0
	movb	$1, -153(%rbp)	#, gotsome
.L172:
	.loc 1 553 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L175	#,
	jmp	.L176	#
.L171:
	.loc 1 564 0
	movl	-140(%rbp), %eax	# fieldsize, tmp710
	movl	%eax, -148(%rbp)	# tmp710, itemsize
	.loc 1 565 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.189
	cltq
	addq	%rbx, %rax	# s, tmp711
	movq	%rax, -112(%rbp)	# tmp711, chophere
	movq	-112(%rbp), %r13	# chophere, send
	.loc 1 566 0
	jmp	.L177	#
.L185:
	.loc 1 567 0
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L178	#,
	.loc 1 567 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L178	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L178	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L178	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$12, %al	#, D.19067
	jne	.L179	#,
.L178:
	.loc 1 568 0 is_stmt 1
	cmpb	$0, -154(%rbp)	#, chopspace
	je	.L180	#,
	.loc 1 569 0
	movq	%rbx, -112(%rbp)	# s, chophere
.L180:
	.loc 1 570 0
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$13, %al	#, D.19067
	jne	.L181	#,
	.loc 1 571 0
	jmp	.L182	#
.L181:
	.loc 1 570 0 discriminator 1
	jmp	.L183	#
.L179:
	.loc 1 574 0
	movzbl	(%rbx), %eax	# *s_42, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	je	.L184	#,
	.loc 1 575 0
	movb	$1, -153(%rbp)	#, gotsome
.L184:
	.loc 1 576 0
	movzbl	(%rbx), %eax	# *s_42, D.19067
	movsbl	%al, %edx	# D.19067, D.19056
	movq	PL_chopset(%rip), %rax	# PL_chopset, PL_chopset.190
	movl	%edx, %esi	# D.19056,
	movq	%rax, %rdi	# PL_chopset.190,
	call	strchr	#
	testq	%rax, %rax	# D.19059
	je	.L183	#,
	.loc 1 577 0
	leaq	1(%rbx), %rax	#, tmp712
	movq	%rax, -112(%rbp)	# tmp712, chophere
.L183:
	.loc 1 579 0
	addq	$1, %rbx	#, s
.L177:
	.loc 1 566 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L185	#,
	.loc 1 566 0 is_stmt 0 discriminator 2
	cmpq	%r13, %rbx	# send, s
	jne	.L182	#,
	.loc 1 566 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L185	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L185	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L185	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L185	#,
	movzbl	(%rbx), %eax	# *s_42, D.19067
	cmpb	$12, %al	#, D.19067
	je	.L185	#,
.L182:
	.loc 1 581 0 is_stmt 1
	movq	-112(%rbp), %rdx	# chophere, chophere.191
	movq	-120(%rbp), %rax	# item, item.192
	subq	%rax, %rdx	# item.192, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, -148(%rbp)	# itemsize.193, itemsize
	.loc 1 583 0
	jmp	.L105	#
.L176:
	jmp	.L105	#
.L114:
	.loc 1 586 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.194
	movl	-140(%rbp), %edx	# fieldsize, tmp713
	subl	%eax, %edx	# itemsize.194, arg
	movl	%edx, %r13d	# arg, arg
	.loc 1 587 0
	testl	%r13d, %r13d	# arg
	je	.L186	#,
	.loc 1 588 0
	subl	%r13d, -140(%rbp)	# arg, fieldsize
	.loc 1 589 0
	jmp	.L187	#
.L188:
	.loc 1 590 0
	movq	%r12, %rax	# t, t.195
	leaq	1(%rax), %r12	#, t
	movb	$32, (%rax)	#, *t.195_555
.L187:
	.loc 1 589 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.196
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.196
	jg	.L188	#,
.L186:
	.loc 1 592 0
	jmp	.L105	#
.L115:
	.loc 1 595 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.197
	movl	-140(%rbp), %edx	# fieldsize, tmp714
	subl	%eax, %edx	# itemsize.197, arg
	movl	%edx, %r13d	# arg, arg
	.loc 1 596 0
	testl	%r13d, %r13d	# arg
	je	.L189	#,
	.loc 1 597 0
	movl	%r13d, %eax	# arg, tmp716
	shrl	$31, %eax	#, tmp716
	addl	%r13d, %eax	# arg, tmp717
	sarl	%eax	# tmp718
	movl	%eax, %r13d	# tmp718, arg
	.loc 1 598 0
	subl	%r13d, -140(%rbp)	# arg, fieldsize
	.loc 1 599 0
	jmp	.L190	#
.L191:
	.loc 1 600 0
	movq	%r12, %rax	# t, t.198
	leaq	1(%rax), %r12	#, t
	movb	$32, (%rax)	#, *t.198_563
.L190:
	.loc 1 599 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.199
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.199
	jg	.L191	#,
.L189:
	.loc 1 602 0
	jmp	.L105	#
.L116:
	.loc 1 605 0
	movl	-148(%rbp), %r13d	# itemsize, arg
	.loc 1 606 0
	movq	-120(%rbp), %rbx	# item, s
	.loc 1 607 0
	cmpb	$0, -152(%rbp)	#, item_is_utf8
	je	.L192	#,
	.loc 1 608 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	jne	.L193	#,
	.loc 1 609 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.200
	movq	(%rax), %rax	# PL_formtarget.200_567->sv_any, D.19062
	movq	%r12, %rcx	# t, t.201
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.202
	movq	(%rdx), %rdx	# PL_formtarget.202_570->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_571].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_568].xpv_cur
	.loc 1 610 0
	movb	$0, (%r12)	#, *t_7
	.loc 1 611 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.203
	movl	$2, %esi	#,
	movq	%rax, %rdi	# PL_formtarget.203,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 612 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.205
	movq	(%rax), %rax	# PL_formtarget.205_577->sv_any, D.19062
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_578].xpv_len, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.206
	movq	(%rax), %rax	# PL_formtarget.206_580->sv_any, D.19062
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_581].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp719
	addq	%rcx, %rax	# D.19057, D.19057
	addq	$1, %rax	#, D.19057
	cmpq	%rax, %rdx	# D.19057, D.19057
	jae	.L195	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.207
	movq	(%rax), %rax	# PL_formtarget.207_585->sv_any, D.19062
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_586].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp720
	addq	%rdx, %rax	# D.19057, D.19057
	leaq	1(%rax), %rdx	#, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.208
	movq	%rdx, %rsi	# D.19057,
	movq	%rax, %rdi	# PL_formtarget.208,
	call	Perl_sv_grow	#
.L195:
	.loc 1 613 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.210
	movq	(%rax), %rax	# PL_formtarget.210_595->sv_any, D.19062
	movq	(%rax), %rdx	# MEM[(struct XPV *)_596].xpv_pv, D.19059
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.211
	movq	(%rax), %rax	# PL_formtarget.211_598->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_599].xpv_cur, D.19057
	leaq	(%rdx,%rax), %r12	#, t
	.loc 1 614 0
	movb	$1, -151(%rbp)	#, targ_is_utf8
	.loc 1 616 0
	jmp	.L196	#
.L193:
	jmp	.L196	#
.L208:
	.loc 1 617 0
	movzbl	(%rbx), %eax	# *s_50, D.19067
	testb	%al, %al	# D.19067
	jns	.L197	#,
.LBB12:
	.loc 1 618 0
	movzbl	(%rbx), %eax	# MEM[(U8 *)s_50], D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.19063
	movzbl	%al, %eax	# D.19063, tmp722
	movq	%rax, -64(%rbp)	# tmp722, skip
	.loc 1 619 0
	cmpq	$7, -64(%rbp)	#, skip
	ja	.L198	#,
	movq	-64(%rbp), %rax	# skip, tmp724
	salq	$3, %rax	#, tmp723
	addq	$.L200, %rax	#, tmp725
	movq	(%rax), %rax	#, tmp726
	jmp	*%rax	# tmp726
	.section	.rodata
	.align 8
	.align 4
.L200:
	.quad	.L198
	.quad	.L199
	.quad	.L201
	.quad	.L202
	.quad	.L203
	.quad	.L204
	.quad	.L205
	.quad	.L206
	.text
.L198:
	.loc 1 621 0
	movq	-64(%rbp), %rax	# skip, tmp727
	movq	%rax, %rdx	# tmp727,
	movq	%rbx, %rsi	# s,
	movq	%r12, %rdi	# t,
	call	memmove	#
	.loc 1 622 0
	movq	-64(%rbp), %rax	# skip, tmp730
	addq	%rbx, %rax	# s, tmp729
	movq	%rax, %rbx	# tmp729, s
	.loc 1 623 0
	movq	-64(%rbp), %rax	# skip, tmp733
	addq	%r12, %rax	# t, tmp732
	movq	%rax, %r12	# tmp732, t
	.loc 1 624 0
	nop
	jmp	.L196	#
.L206:
	.loc 1 625 0
	movq	%r12, %rax	# t, t.212
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.213
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.213_614, D.19067
	movb	%dl, (%rax)	# D.19067, *t.212_612
.L205:
	.loc 1 626 0
	movq	%r12, %rax	# t, t.214
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.215
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.215_619, D.19067
	movb	%dl, (%rax)	# D.19067, *t.214_617
.L204:
	.loc 1 627 0
	movq	%r12, %rax	# t, t.216
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.217
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.217_624, D.19067
	movb	%dl, (%rax)	# D.19067, *t.216_622
.L203:
	.loc 1 628 0
	movq	%r12, %rax	# t, t.218
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.219
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.219_629, D.19067
	movb	%dl, (%rax)	# D.19067, *t.218_627
.L202:
	.loc 1 629 0
	movq	%r12, %rax	# t, t.220
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.221
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.221_634, D.19067
	movb	%dl, (%rax)	# D.19067, *t.220_632
.L201:
	.loc 1 630 0
	movq	%r12, %rax	# t, t.222
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.223
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.223_639, D.19067
	movb	%dl, (%rax)	# D.19067, *t.222_637
.L199:
	.loc 1 631 0
	movq	%r12, %rax	# t, t.224
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.225
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.225_644, D.19067
	movb	%dl, (%rax)	# D.19067, *t.224_642
.LBE12:
	jmp	.L196	#
.L197:
	.loc 1 635 0
	movq	%r12, %rax	# t, t.226
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.227
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.227_649, D.19067
	movb	%dl, (%rax)	# D.19067, *t.226_647
	movzbl	(%rax), %eax	# *t.226_647, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	jne	.L196	#,
	.loc 1 636 0
	leaq	-1(%r12), %rax	#, D.19059
	movb	$32, (%rax)	#, *_654
.L196:
	.loc 1 616 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.228
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.228
	jne	.L208	#,
	.loc 1 639 0
	jmp	.L105	#
.L192:
	.loc 1 641 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	je	.L209	#,
	.loc 1 641 0 is_stmt 0 discriminator 1
	cmpb	$0, -152(%rbp)	#, item_is_utf8
	jne	.L209	#,
	.loc 1 642 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.229
	movq	(%rax), %rax	# PL_formtarget.229_655->sv_any, D.19062
	movq	%r12, %rcx	# t, t.230
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.231
	movq	(%rdx), %rdx	# PL_formtarget.231_658->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_659].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_656].xpv_cur
	.loc 1 643 0
	movb	$0, (%r12)	#, *t_7
.LBB13:
	.loc 1 644 0
	cmpq	$0, -96(%rbp)	#, nsv
	jne	.L210	#,
	.loc 1 644 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# arg, D.19057
	movq	%rax, %rsi	# D.19057,
	movq	%rbx, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19066,
	call	Perl_sv_2mortal	#
	movq	%rax, -96(%rbp)	# tmp734, nsv
	jmp	.L211	#
.L210:
	.loc 1 644 0 discriminator 2
	movslq	%r13d, %rdx	# arg, D.19057
	movq	-96(%rbp), %rax	# nsv, tmp735
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp735,
	call	Perl_sv_setpvn	#
.L211:
	.loc 1 644 0 discriminator 1
	movq	-96(%rbp), %rax	# nsv, tmp736
	movl	12(%rax), %eax	# nsv_132->sv_flags, D.19061
	andl	$-536870913, %eax	#, D.19061
	movl	%eax, %edx	# D.19061, D.19061
	movq	-96(%rbp), %rax	# nsv, tmp737
	movl	%edx, 12(%rax)	# D.19061, nsv_132->sv_flags
	movq	-96(%rbp), %rax	# nsv, tmp738
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp738,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.232
	movq	-96(%rbp), %rcx	# nsv, tmp739
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp739,
	movq	%rax, %rdi	# PL_formtarget.232,
	call	Perl_sv_catsv_flags	#
.LBE13:
	.loc 1 645 0 is_stmt 1 discriminator 1
	jmp	.L212	#
.L214:
	.loc 1 650 0
	movzbl	(%r12), %eax	# *t_23, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	jne	.L213	#,
	.loc 1 652 0
	movb	$32, (%r12)	#, *t_23
.L213:
	.loc 1 645 0
	addq	$1, %r12	#, t
.L212:
	.loc 1 645 0 is_stmt 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.233
	movq	(%rax), %rax	# PL_formtarget.233_671->sv_any, D.19062
	movq	(%rax), %rdx	# MEM[(struct XPV *)_672].xpv_pv, D.19059
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.234
	movq	(%rax), %rax	# PL_formtarget.234_674->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_675].xpv_cur, D.19057
	addq	%rdx, %rax	# D.19059, D.19059
	cmpq	%r12, %rax	# t, D.19059
	ja	.L214	#,
	.loc 1 654 0 is_stmt 1
	jmp	.L105	#
.L209:
	.loc 1 656 0
	jmp	.L215	#
.L216:
	.loc 1 661 0
	movq	%r12, %rax	# t, t.235
	leaq	1(%rax), %r12	#, t
	movq	%rbx, %rdx	# s, s.236
	leaq	1(%rdx), %rbx	#, s
	movzbl	(%rdx), %edx	# *s.236_685, D.19067
	movb	%dl, (%rax)	# D.19067, *t.235_683
	movzbl	(%rax), %eax	# *t.235_683, D.19067
	andl	$-32, %eax	#, D.19068
	testb	%al, %al	# D.19068
	jne	.L215	#,
	.loc 1 663 0
	leaq	-1(%r12), %rax	#, D.19059
	movb	$32, (%rax)	#, *_690
.L215:
	.loc 1 656 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.237
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.237
	jne	.L216	#,
	.loc 1 665 0
	jmp	.L105	#
.L117:
	.loc 1 668 0
	movq	-112(%rbp), %rbx	# chophere, s
	.loc 1 669 0
	cmpb	$0, -154(%rbp)	#, chopspace
	je	.L217	#,
	.loc 1 670 0
	jmp	.L218	#
.L219:
	.loc 1 671 0
	addq	$1, %rbx	#, s
.L218:
	.loc 1 670 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_52, D.19067
	testb	%al, %al	# D.19067
	je	.L217	#,
	.loc 1 670 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_52, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L219	#,
	.loc 1 670 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_52, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L219	#,
	movzbl	(%rbx), %eax	# *s_52, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L219	#,
	movzbl	(%rbx), %eax	# *s_52, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L219	#,
	movzbl	(%rbx), %eax	# *s_52, D.19067
	cmpb	$12, %al	#, D.19067
	je	.L219	#,
.L217:
	.loc 1 673 0 is_stmt 1
	movq	%rbx, %rsi	# s,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_chop	#
	.loc 1 674 0
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$16384, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L220	#,
	.loc 1 674 0 is_stmt 0 discriminator 1
	movq	%r14, %rdi	# sv,
	call	Perl_mg_set	#
	.loc 1 675 0 is_stmt 1 discriminator 1
	jmp	.L105	#
.L220:
	.loc 1 675 0 is_stmt 0
	jmp	.L105	#
.L124:
	.loc 1 678 0 is_stmt 1
	movb	$0, -154(%rbp)	#, chopspace
	.loc 1 679 0
	movb	$1, -150(%rbp)	#, oneline
	.loc 1 680 0
	jmp	.L221	#
.L118:
	.loc 1 682 0
	movb	$0, -150(%rbp)	#, oneline
.L221:
	.loc 1 684 0
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$262144, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L222	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_706].xpv_cur, len.239
	movq	%rax, -128(%rbp)	# len.239, len
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_708].xpv_pv, iftmp.238
	jmp	.L223	#
.L222:
	.loc 1 684 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp740
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp740,
	movq	%r14, %rdi	# sv,
	call	Perl_sv_2pv_flags	#
.L223:
	.loc 1 684 0 discriminator 3
	movq	%rax, %rbx	# iftmp.238, s
	movq	%rbx, -120(%rbp)	# s, item
	.loc 1 685 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# len, len.240
	movl	%eax, -148(%rbp)	# itemsize.241, itemsize
	.loc 1 686 0 discriminator 3
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$536870912, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L224	#,
	.loc 1 686 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.243
	movzbl	37(%rax), %eax	# PL_curcop.243_717->op_private, D.19063
	movzbl	%al, %eax	# D.19063, D.19056
	andl	$8, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	jne	.L224	#,
	.loc 1 686 0 discriminator 3
	movl	$1, %eax	#, iftmp.242
	jmp	.L225	#
.L224:
	.loc 1 686 0 discriminator 2
	movl	$0, %eax	#, iftmp.242
.L225:
	.loc 1 686 0 discriminator 4
	movb	%al, -152(%rbp)	# iftmp.242, item_is_utf8
	cmpb	$0, -152(%rbp)	#, item_is_utf8
	je	.L226	#,
	.loc 1 687 0 is_stmt 1
	movq	%r14, %rdi	# sv,
	call	Perl_sv_len_utf8	#
	movl	%eax, -148(%rbp)	# itemsize.244, itemsize
.L226:
	.loc 1 688 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.245
	testl	%eax, %eax	# itemsize.245
	je	.L227	#,
.LBB14:
	.loc 1 689 0
	movb	$0, -149(%rbp)	#, chopped
	.loc 1 690 0
	movb	$1, -153(%rbp)	#, gotsome
	.loc 1 691 0
	movq	-128(%rbp), %rax	# len, len.246
	leaq	(%rbx,%rax), %r13	#, send
	.loc 1 692 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.247
	cltq
	addq	%rbx, %rax	# s, tmp741
	movq	%rax, -112(%rbp)	# tmp741, chophere
	.loc 1 693 0
	jmp	.L228	#
.L232:
	.loc 1 694 0
	movq	%rbx, %rax	# s, s.248
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.248_734, D.19067
	cmpb	$10, %al	#, D.19067
	jne	.L228	#,
	.loc 1 695 0
	cmpb	$0, -150(%rbp)	#, oneline
	je	.L229	#,
	.loc 1 696 0
	movb	$1, -149(%rbp)	#, chopped
	.loc 1 697 0
	movq	%rbx, -112(%rbp)	# s, chophere
	.loc 1 698 0
	jmp	.L230	#
.L229:
	.loc 1 700 0
	cmpq	%r13, %rbx	# send, s
	jne	.L231	#,
	.loc 1 701 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.249
	subl	$1, %eax	#, itemsize.250
	movl	%eax, -148(%rbp)	# itemsize.250, itemsize
	.loc 1 702 0
	movb	$1, -149(%rbp)	#, chopped
	jmp	.L228	#
.L231:
	.loc 1 704 0
	addl	$1, -136(%rbp)	#, lines
.L228:
	.loc 1 693 0 discriminator 1
	cmpq	%r13, %rbx	# send, s
	jb	.L232	#,
.L230:
	.loc 1 708 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.251
	movq	(%rax), %rax	# PL_formtarget.251_743->sv_any, D.19062
	movq	%r12, %rcx	# t, t.252
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.253
	movq	(%rdx), %rdx	# PL_formtarget.253_746->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_747].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_744].xpv_cur
	.loc 1 709 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	je	.L233	#,
	.loc 1 710 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.254
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.255
	movl	12(%rdx), %edx	# PL_formtarget.255_753->sv_flags, D.19061
	orl	$536870912, %edx	#, D.19061
	movl	%edx, 12(%rax)	# D.19061, PL_formtarget.254_752->sv_flags
.L233:
	.loc 1 711 0
	cmpb	$0, -150(%rbp)	#, oneline
	je	.L234	#,
	.loc 1 712 0
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	-112(%rbp), %rcx	# chophere, chophere.256
	movq	-120(%rbp), %rdx	# item, item.257
	subq	%rdx, %rcx	# item.257, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_756].xpv_cur
	.loc 1 713 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.258
	movl	$2, %edx	#,
	movq	%r14, %rsi	# sv,
	movq	%rax, %rdi	# PL_formtarget.258,
	call	Perl_sv_catsv_flags	#
	.loc 1 714 0
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movl	-148(%rbp), %edx	# itemsize, itemsize.259
	movslq	%edx, %rdx	# itemsize.259, D.19057
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_762].xpv_cur
	jmp	.L235	#
.L234:
	.loc 1 716 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.260
	movl	$2, %edx	#,
	movq	%r14, %rsi	# sv,
	movq	%rax, %rdi	# PL_formtarget.260,
	call	Perl_sv_catsv_flags	#
.L235:
	.loc 1 717 0
	cmpb	$0, -149(%rbp)	#, chopped
	je	.L236	#,
	.loc 1 718 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.261
	movq	(%rax), %rax	# PL_formtarget.261_766->sv_any, D.19062
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.262
	movq	(%rdx), %rdx	# PL_formtarget.262_768->sv_any, D.19062
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_769].xpv_cur, D.19057
	subq	$1, %rdx	#, D.19057
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_767].xpv_cur
.L236:
	.loc 1 719 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.264
	movq	(%rax), %rax	# PL_formtarget.264_772->sv_any, D.19062
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_773].xpv_len, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.265
	movq	(%rax), %rax	# PL_formtarget.265_775->sv_any, D.19062
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_776].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp742
	addq	%rcx, %rax	# D.19057, D.19057
	addq	$1, %rax	#, D.19057
	cmpq	%rax, %rdx	# D.19057, D.19057
	jae	.L238	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.266
	movq	(%rax), %rax	# PL_formtarget.266_780->sv_any, D.19062
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_781].xpv_cur, D.19057
	movq	-72(%rbp), %rax	# fudge, tmp743
	addq	%rdx, %rax	# D.19057, D.19057
	leaq	1(%rax), %rdx	#, D.19057
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.267
	movq	%rdx, %rsi	# D.19057,
	movq	%rax, %rdi	# PL_formtarget.267,
	call	Perl_sv_grow	#
.L238:
	.loc 1 720 0 is_stmt 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.269
	movq	(%rax), %rax	# PL_formtarget.269_790->sv_any, D.19062
	movq	(%rax), %rdx	# MEM[(struct XPV *)_791].xpv_pv, D.19059
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.270
	movq	(%rax), %rax	# PL_formtarget.270_793->sv_any, D.19062
	movq	8(%rax), %rax	# MEM[(struct XPV *)_794].xpv_cur, D.19057
	leaq	(%rdx,%rax), %r12	#, t
	.loc 1 721 0
	cmpb	$0, -152(%rbp)	#, item_is_utf8
	je	.L227	#,
	.loc 1 722 0
	movb	$1, -151(%rbp)	#, targ_is_utf8
.LBE14:
	.loc 1 724 0
	jmp	.L105	#
.L227:
	jmp	.L105	#
.L123:
	.loc 1 727 0
	movq	-168(%rbp), %rax	# %sfp, fpc.271
	leaq	4(%rax), %rsi	#, fpc
	movq	%rsi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.271_798, D.19061
	movl	%eax, %r13d	# D.19061, arg
	.loc 1 731 0
	movl	%r13d, %eax	# arg, D.19056
	andl	$256, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	je	.L239	#,
	.loc 1 731 0 is_stmt 0 discriminator 1
	movl	$.LC3, %eax	#, iftmp.272
	jmp	.L240	#
.L239:
	.loc 1 731 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.272
.L240:
	.loc 1 731 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.272, fmt
	.loc 1 733 0 is_stmt 1 discriminator 3
	jmp	.L241	#
.L119:
	.loc 1 735 0
	movq	-168(%rbp), %rax	# %sfp, fpc.273
	leaq	4(%rax), %rdi	#, fpc
	movq	%rdi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.273_806, D.19061
	movl	%eax, %r13d	# D.19061, arg
	.loc 1 739 0
	movl	%r13d, %eax	# arg, D.19056
	andl	$256, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	je	.L242	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	movl	$.LC5, %eax	#, iftmp.274
	jmp	.L243	#
.L242:
	.loc 1 739 0 discriminator 2
	movl	$.LC6, %eax	#, iftmp.274
.L243:
	.loc 1 739 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.274, fmt
.L241:
	.loc 1 744 0 is_stmt 1
	movl	%r13d, %eax	# arg, D.19056
	andl	$512, %eax	#, D.19056
	testl	%eax, %eax	# D.19056
	je	.L244	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$118423552, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	jne	.L244	#,
	.loc 1 745 0 is_stmt 1
	movl	-140(%rbp), %r13d	# fieldsize, arg
	.loc 1 746 0
	jmp	.L245	#
.L246:
	.loc 1 747 0
	movq	%r12, %rax	# t, t.275
	leaq	1(%rax), %r12	#, t
	movb	$32, (%rax)	#, *t.275_820
.L245:
	.loc 1 746 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.276
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.276
	jne	.L246	#,
	.loc 1 748 0
	jmp	.L105	#
.L244:
	.loc 1 750 0
	movb	$1, -153(%rbp)	#, gotsome
	.loc 1 751 0
	movl	12(%r14), %eax	# sv_68->sv_flags, D.19061
	andl	$131072, %eax	#, D.19061
	testl	%eax, %eax	# D.19061
	je	.L247	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# sv_68->sv_any, D.19062
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_825].xnv_nv, iftmp.277
	jmp	.L248	#
.L247:
	.loc 1 751 0 discriminator 2
	movq	%r14, %rdi	# sv,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, iftmp.277
.L248:
	.loc 1 751 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.277, value
	.loc 1 753 0 is_stmt 1 discriminator 3
	movl	-140(%rbp), %edx	# fieldsize, tmp744
	movq	-56(%rbp), %rax	# value, tmp745
	movl	%r13d, %esi	# arg,
	movl	%edx, %edi	# tmp744,
	movq	%rax, -200(%rbp)	# tmp745, %sfp
	movsd	-200(%rbp), %xmm0	# %sfp,
	call	S_num_overflow	#
	testb	%al, %al	# D.19067
	je	.L249	#,
	.loc 1 754 0
	movl	-140(%rbp), %r13d	# fieldsize, arg
	.loc 1 755 0
	jmp	.L250	#
.L251:
	.loc 1 756 0
	movq	%r12, %rax	# t, t.278
	leaq	1(%rax), %r12	#, t
	movb	$35, (%rax)	#, *t.278_833
.L250:
	.loc 1 755 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.279
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.279
	jne	.L251	#,
	.loc 1 757 0
	jmp	.L105	#
.L249:
	.loc 1 762 0
	movzbl	%r13b, %ecx	# arg, D.19056
	movq	-56(%rbp), %rax	# value, tmp746
	movl	-140(%rbp), %edx	# fieldsize, tmp747
	movq	-80(%rbp), %rsi	# fmt, tmp748
	movq	%rax, -200(%rbp)	# tmp746, %sfp
	movsd	-200(%rbp), %xmm0	# %sfp,
	movq	%r12, %rdi	# t,
	movl	$1, %eax	#,
	call	sprintf	#
	.loc 1 765 0
	movl	-140(%rbp), %eax	# fieldsize, tmp749
	cltq
	addq	%rax, %r12	# D.19065, t
	.loc 1 766 0
	jmp	.L105	#
.L120:
	.loc 1 769 0
	addq	$1, -176(%rbp)	#, %sfp
	.loc 1 770 0
	nop
.L253:
	.loc 1 770 0 is_stmt 0 discriminator 1
	movq	%r12, %rax	# t, t.280
	leaq	-1(%rax), %r12	#, t
	cmpq	-104(%rbp), %rax	# linemark, t.280
	jbe	.L252	#,
	.loc 1 770 0 discriminator 2
	movzbl	(%r12), %eax	# *t_840, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L253	#,
.L252:
	.loc 1 771 0 is_stmt 1
	addq	$1, %r12	#, t
	.loc 1 772 0
	movq	%r12, %rax	# t, t.281
	leaq	1(%rax), %r12	#, t
	movb	$10, (%rax)	#, *t.281_843
	.loc 1 773 0
	jmp	.L105	#
.L121:
	.loc 1 776 0
	movq	-168(%rbp), %rax	# %sfp, fpc.282
	leaq	4(%rax), %rsi	#, fpc
	movq	%rsi, -168(%rbp)	# fpc, %sfp
	movl	(%rax), %eax	# *fpc.282_845, D.19061
	movl	%eax, %r13d	# D.19061, arg
	.loc 1 777 0
	cmpb	$0, -153(%rbp)	#, gotsome
	je	.L254	#,
	.loc 1 778 0
	testl	%r13d, %r13d	# arg
	je	.L255	#,
	.loc 1 779 0
	movb	$0, (%r12)	#, *t_7
	.loc 1 780 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.283
	movq	(%rax), %rax	# PL_formtarget.283_849->sv_any, D.19062
	movq	%r12, %rcx	# t, t.284
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.285
	movq	(%rdx), %rdx	# PL_formtarget.285_852->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_853].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_850].xpv_cur
	.loc 1 781 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.286
	movq	(%rax), %rax	# PL_formtarget.286_858->sv_any, D.19062
	movq	144(%rax), %rax	# MEM[(struct XPVFM *)_859].xfm_lines, D.19058
	movl	%eax, %edx	# D.19058, D.19069
	movl	-136(%rbp), %eax	# lines, lines.287
	addl	%edx, %eax	# D.19069, D.19069
	movl	%eax, -136(%rbp)	# D.19069, lines
	.loc 1 782 0
	cmpl	$200, -136(%rbp)	#, lines
	jne	.L256	#,
	.loc 1 783 0
	movq	%r12, %rdx	# t, t.288
	movq	-104(%rbp), %rax	# linemark, linemark.289
	subq	%rax, %rdx	# linemark.289, D.19058
	movq	%rdx, %rax	# D.19058, D.19058
	movl	%eax, %r13d	# D.19058, arg
	.loc 1 784 0
	movslq	%r13d, %rdx	# arg, D.19057
	movslq	%r13d, %rax	# arg, D.19065
	negq	%rax	# D.19065
	movq	%rax, %rcx	# D.19065, D.19065
	movq	-104(%rbp), %rax	# linemark, tmp750
	addq	%rax, %rcx	# tmp750, D.19059
	movq	-104(%rbp), %rax	# linemark, tmp751
	movq	%rcx, %rsi	# D.19059,
	movq	%rax, %rdi	# tmp751,
	call	strncmp	#
	testl	%eax, %eax	# D.19056
	jne	.L256	#,
	.loc 1 785 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L271	#
.L256:
	.loc 1 787 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	je	.L257	#,
	.loc 1 788 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.290
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.291
	movl	12(%rdx), %edx	# PL_formtarget.291_876->sv_flags, D.19061
	orl	$536870912, %edx	#, D.19061
	movl	%edx, 12(%rax)	# D.19061, PL_formtarget.290_875->sv_flags
.L257:
	.loc 1 789 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.292
	movq	(%rax), %rax	# PL_formtarget.292_879->sv_any, D.19062
	movl	-136(%rbp), %edx	# lines, tmp752
	movslq	%edx, %rdx	# tmp752, D.19058
	movq	%rdx, 144(%rax)	# D.19058, MEM[(struct XPVFM *)_880].xfm_lines
	.loc 1 790 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.293
	movl	-132(%rbp), %edx	# origmark, tmp753
	movslq	%edx, %rdx	# tmp753, D.19057
	salq	$3, %rdx	#, D.19057
	addq	%rdx, %rax	# D.19057, sp
	.loc 1 791 0
	movq	%rax, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.294
	movq	40(%rax), %rax	# MEM[(struct LISTOP *)PL_op.294_886].op_first, D.19055
	jmp	.L271	#
.L254:
	.loc 1 795 0
	movq	-104(%rbp), %r12	# linemark, t
	.loc 1 796 0
	subl	$1, -136(%rbp)	#, lines
	.loc 1 798 0
	jmp	.L105	#
.L255:
	jmp	.L105	#
.L122:
	.loc 1 801 0
	movq	-112(%rbp), %rbx	# chophere, s
	.loc 1 802 0
	movq	-128(%rbp), %rdx	# len, len.295
	movq	-120(%rbp), %rax	# item, tmp754
	leaq	(%rdx,%rax), %r13	#, send
	.loc 1 803 0
	cmpb	$0, -154(%rbp)	#, chopspace
	je	.L258	#,
	.loc 1 804 0
	jmp	.L259	#
.L261:
	.loc 1 805 0
	addq	$1, %rbx	#, s
.L259:
	.loc 1 804 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_55, D.19067
	testb	%al, %al	# D.19067
	je	.L258	#,
	.loc 1 804 0 is_stmt 0 discriminator 2
	movzbl	(%rbx), %eax	# *s_55, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L260	#,
	movzbl	(%rbx), %eax	# *s_55, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L260	#,
	.loc 1 804 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_55, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L260	#,
	movzbl	(%rbx), %eax	# *s_55, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L260	#,
	movzbl	(%rbx), %eax	# *s_55, D.19067
	cmpb	$12, %al	#, D.19067
	jne	.L258	#,
.L260:
	cmpq	%r13, %rbx	# send, s
	jb	.L261	#,
.L258:
	.loc 1 807 0 is_stmt 1
	cmpq	%r13, %rbx	# send, s
	jae	.L262	#,
	.loc 1 808 0
	movl	-148(%rbp), %eax	# itemsize, itemsize.296
	movl	-140(%rbp), %edx	# fieldsize, tmp755
	subl	%eax, %edx	# itemsize.296, arg
	movl	%edx, %r13d	# arg, arg
	.loc 1 809 0
	testl	%r13d, %r13d	# arg
	je	.L263	#,
	.loc 1 810 0
	subl	%r13d, -140(%rbp)	# arg, fieldsize
	.loc 1 811 0
	jmp	.L264	#
.L265:
	.loc 1 812 0
	movq	%r12, %rax	# t, t.297
	leaq	1(%rax), %r12	#, t
	movb	$32, (%rax)	#, *t.297_905
.L264:
	.loc 1 811 0 discriminator 1
	movl	%r13d, %eax	# arg, arg.298
	leal	-1(%rax), %r13d	#, arg
	testl	%eax, %eax	# arg.298
	jg	.L265	#,
.L263:
	.loc 1 814 0
	leaq	-3(%r12), %rbx	#, s
	.loc 1 815 0
	movl	$3, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strncmp	#
	testl	%eax, %eax	# D.19056
	jne	.L266	#,
	.loc 1 816 0
	jmp	.L267	#
.L268:
	.loc 1 817 0
	subq	$1, %rbx	#, s
.L267:
	.loc 1 816 0 discriminator 1
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.299
	movq	(%rax), %rax	# PL_formtarget.299_909->sv_any, D.19062
	movq	(%rax), %rax	# MEM[(struct XPV *)_910].xpv_pv, D.19059
	cmpq	%rbx, %rax	# s, D.19059
	jae	.L266	#,
	.loc 1 816 0 is_stmt 0 discriminator 2
	leaq	-1(%rbx), %rax	#, D.19059
	movzbl	(%rax), %eax	# *_912, D.19067
	cmpb	$32, %al	#, D.19067
	je	.L268	#,
	.loc 1 816 0 discriminator 1
	leaq	-1(%rbx), %rax	#, D.19059
	movzbl	(%rax), %eax	# *_914, D.19067
	cmpb	$9, %al	#, D.19067
	je	.L268	#,
	leaq	-1(%rbx), %rax	#, D.19059
	movzbl	(%rax), %eax	# *_916, D.19067
	cmpb	$10, %al	#, D.19067
	je	.L268	#,
	leaq	-1(%rbx), %rax	#, D.19059
	movzbl	(%rax), %eax	# *_918, D.19067
	cmpb	$13, %al	#, D.19067
	je	.L268	#,
	leaq	-1(%rbx), %rax	#, D.19059
	movzbl	(%rax), %eax	# *_920, D.19067
	cmpb	$12, %al	#, D.19067
	je	.L268	#,
.L266:
	.loc 1 819 0 is_stmt 1
	movq	%rbx, %rax	# s, s.300
	leaq	1(%rax), %rbx	#, s
	movb	$46, (%rax)	#, *s.300_923
	.loc 1 820 0
	movq	%rbx, %rax	# s, s.301
	leaq	1(%rax), %rbx	#, s
	movb	$46, (%rax)	#, *s.301_925
	.loc 1 821 0
	movq	%rbx, %rax	# s, s.302
	leaq	1(%rax), %rbx	#, s
	movb	$46, (%rax)	#, *s.302_927
	.loc 1 823 0
	jmp	.L105	#
.L262:
	jmp	.L105	#
.L106:
	.loc 1 826 0
	movb	$0, (%r12)	#, *t_7
	.loc 1 827 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.303
	movq	(%rax), %rax	# PL_formtarget.303_929->sv_any, D.19062
	movq	%r12, %rcx	# t, t.304
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.305
	movq	(%rdx), %rdx	# PL_formtarget.305_932->sv_any, D.19062
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_933].xpv_pv, D.19059
	subq	%rdx, %rcx	# D.19058, D.19058
	movq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 8(%rax)	# D.19057, MEM[(struct XPV *)_930].xpv_cur
	.loc 1 828 0
	cmpb	$0, -151(%rbp)	#, targ_is_utf8
	je	.L269	#,
	.loc 1 829 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.306
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.307
	movl	12(%rdx), %edx	# PL_formtarget.307_939->sv_flags, D.19061
	orl	$536870912, %edx	#, D.19061
	movl	%edx, 12(%rax)	# D.19061, PL_formtarget.306_938->sv_flags
.L269:
	.loc 1 830 0
	movq	PL_formtarget(%rip), %rax	# PL_formtarget, PL_formtarget.308
	movq	(%rax), %rax	# PL_formtarget.308_942->sv_any, D.19062
	movq	PL_formtarget(%rip), %rdx	# PL_formtarget, PL_formtarget.309
	movq	(%rdx), %rdx	# PL_formtarget.309_944->sv_any, D.19062
	movq	144(%rdx), %rcx	# MEM[(struct XPVFM *)_945].xfm_lines, D.19058
	movl	-136(%rbp), %edx	# lines, tmp756
	movslq	%edx, %rdx	# tmp756, D.19058
	addq	%rcx, %rdx	# D.19058, D.19058
	movq	%rdx, 144(%rax)	# D.19058, MEM[(struct XPVFM *)_943].xfm_lines
	.loc 1 831 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.310
	movl	-132(%rbp), %edx	# origmark, tmp757
	movslq	%edx, %rdx	# tmp757, D.19057
	salq	$3, %rdx	#, D.19057
	addq	%rdx, %rax	# D.19057, sp
	movq	%rax, -192(%rbp)	# sp, %sfp
	.loc 1 832 0
	addq	$8, -192(%rbp)	#, %sfp
	movq	-192(%rbp), %rax	# %sfp, sp
	movq	$PL_sv_yes, (%rax)	#, *sp_953
	movq	%rax, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.311
	movq	(%rax), %rax	# PL_op.311_954->op_next, D.19055
	jmp	.L271	#
.L105:
	.loc 1 834 0
	jmp	.L272	#
.L271:
	.loc 1 835 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_pp_formline, .-Perl_pp_formline
	.globl	Perl_pp_grepstart
	.type	Perl_pp_grepstart, @function
Perl_pp_grepstart:
.LFB11:
	.loc 1 838 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 839 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 842 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.312
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.313
	movl	(%rax), %eax	# *PL_markstack_ptr.313_6, D.19079
	cltq
	salq	$3, %rax	#, D.19080
	addq	%rdx, %rax	# PL_stack_base.312, D.19081
	cmpq	%rbx, %rax	# sp, D.19081
	jne	.L274	#,
	.loc 1 843 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.314
	subq	$4, %rax	#, PL_markstack_ptr.316
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.316, PL_markstack_ptr
	.loc 1 844 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.317
	movzbl	36(%rax), %eax	# PL_op.317_14->op_flags, D.19082
	movzbl	%al, %eax	# D.19082, D.19079
	andl	$3, %eax	#, D.19079
	cmpl	$1, %eax	#, D.19079
	je	.L275	#,
	.loc 1 844 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.318
	movzbl	36(%rax), %eax	# PL_op.318_18->op_flags, D.19082
	movzbl	%al, %eax	# D.19082, D.19079
	andl	$3, %eax	#, D.19079
	cmpl	$2, %eax	#, D.19079
	je	.L276	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.319
	movzbl	36(%rax), %eax	# PL_op.319_22->op_flags, D.19082
	movzbl	%al, %eax	# D.19082, D.19079
	andl	$3, %eax	#, D.19079
	cmpl	$3, %eax	#, D.19079
	je	.L275	#,
	.loc 1 844 0 discriminator 2
	call	Perl_block_gimme	#
	testl	%eax, %eax	# D.19079
	jne	.L275	#,
.L276:
.LBB15:
	.loc 1 845 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.320
	movq	%rax, %rdx	# PL_stack_max.320, PL_stack_max.321
	movq	%rbx, %rax	# sp, sp.322
	subq	%rax, %rdx	# sp.322, D.19083
	movq	%rdx, %rax	# D.19083, D.19083
	cmpq	$7, %rax	#, D.19083
	jg	.L277	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L277:
	.loc 1 845 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19084,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19084, *sp_32
.L275:
.LBE15:
	.loc 1 846 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.323
	movq	(%rax), %rax	# PL_op.323_36->op_next, D.19078
	movq	(%rax), %rax	# _37->op_next, D.19078
	jmp	.L278	#
.L274:
	.loc 1 848 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.324
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.325
	movl	(%rax), %eax	# *PL_markstack_ptr.325_40, D.19079
	cltq
	addq	$1, %rax	#, D.19085
	salq	$3, %rax	#, D.19085
	addq	%rdx, %rax	# PL_stack_base.324, PL_stack_sp.326
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.326, PL_stack_sp
	.loc 1 849 0
	call	Perl_pp_pushmark	#
	.loc 1 850 0
	call	Perl_pp_pushmark	#
	.loc 1 851 0
	call	Perl_push_scope	#
	.loc 1 853 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.327
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.327, PL_tmps_floor
	.loc 1 855 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.328
	movq	(%rax), %rax	# PL_defgv.328_47->sv_any, D.19086
	movq	56(%rax), %rax	# _48->xgv_gp, D.19087
	movq	%rax, %rdi	# D.19081,
	call	Perl_save_sptr	#
	.loc 1 856 0
	call	Perl_push_scope	#
	.loc 1 857 0
	movl	$PL_curpm, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 859 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.329
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.330
	movl	(%rax), %eax	# *PL_markstack_ptr.330_52, D.19079
	cltq
	salq	$3, %rax	#, D.19080
	addq	%rdx, %rax	# PL_stack_base.329, D.19081
	movq	(%rax), %rax	# *_56, tmp120
	movq	%rax, -24(%rbp)	# tmp120, src
	.loc 1 860 0
	movq	-24(%rbp), %rax	# src, tmp121
	movl	12(%rax), %eax	# src_57->sv_flags, D.19088
	andb	$247, %ah	#, D.19088
	movl	%eax, %edx	# D.19088, D.19088
	movq	-24(%rbp), %rax	# src, tmp122
	movl	%edx, 12(%rax)	# D.19088, src_57->sv_flags
	.loc 1 861 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.331
	movq	(%rax), %rax	# PL_defgv.331_60->sv_any, D.19086
	movq	56(%rax), %rax	# _61->xgv_gp, D.19087
	movq	-24(%rbp), %rdx	# src, tmp123
	movq	%rdx, (%rax)	# tmp123, _62->gp_sv
	.loc 1 863 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 864 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.332
	movzwl	32(%rax), %eax	# PL_op.332_63->op_type, D.19089
	cmpw	$154, %ax	#, D.19089
	jne	.L279	#,
	.loc 1 865 0
	call	Perl_pp_pushmark	#
.L279:
	.loc 1 866 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.333
	movq	(%rax), %rax	# PL_op.333_65->op_next, D.19078
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)_66].op_other, D.19078
.L278:
	.loc 1 867 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_pp_grepstart, .-Perl_pp_grepstart
	.section	.rodata
.LC9:
	.string	"panic: mapstart"
	.text
	.globl	Perl_pp_mapstart
	.type	Perl_pp_mapstart, @function
Perl_pp_mapstart:
.LFB12:
	.loc 1 870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 871 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	.loc 1 872 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_pp_mapstart, .-Perl_pp_mapstart
	.globl	Perl_pp_mapwhile
	.type	Perl_pp_mapwhile, @function
Perl_pp_mapwhile:
.LFB13:
	.loc 1 875 0
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
	.loc 1 876 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 877 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.335
	movzbl	36(%rax), %eax	# PL_op.335_23->op_flags, D.19093
	movzbl	%al, %eax	# D.19093, D.19094
	andl	$3, %eax	#, D.19094
	cmpl	$1, %eax	#, D.19094
	je	.L283	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.337
	movzbl	36(%rax), %eax	# PL_op.337_27->op_flags, D.19093
	movzbl	%al, %eax	# D.19093, D.19094
	andl	$3, %eax	#, D.19094
	cmpl	$2, %eax	#, D.19094
	je	.L284	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.339
	movzbl	36(%rax), %eax	# PL_op.339_31->op_flags, D.19093
	movzbl	%al, %eax	# D.19093, D.19094
	andl	$3, %eax	#, D.19094
	cmpl	$3, %eax	#, D.19094
	je	.L285	#,
	call	Perl_block_gimme	#
	jmp	.L288	#
.L285:
	.loc 1 877 0 discriminator 2
	movl	$1, %eax	#, iftmp.338
	jmp	.L288	#
.L284:
	movl	$0, %eax	#, iftmp.336
	jmp	.L288	#
.L283:
	movl	$128, %eax	#, iftmp.334
.L288:
	.loc 1 877 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.334, gimme
	.loc 1 878 0 is_stmt 1 discriminator 3
	movq	%rbx, %rdx	# sp, sp.340
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.341
	subq	%rax, %rdx	# PL_stack_base.342, D.19095
	movq	%rdx, %rax	# D.19095, D.19095
	sarq	$3, %rax	#, tmp219
	movl	%eax, %edx	# D.19095, D.19096
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.343
	movl	(%rax), %eax	# *PL_markstack_ptr.343_48, D.19094
	subl	%eax, %edx	# D.19096, D.19096
	movl	%edx, %eax	# D.19096, D.19096
	movl	%eax, -64(%rbp)	# D.19096, items
	.loc 1 885 0 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.344
	subq	$4, %rax	#, D.19097
	movl	(%rax), %edx	# *_54, D.19094
	addl	$1, %edx	#, D.19094
	movl	%edx, (%rax)	# D.19094, *_54
	.loc 1 888 0 discriminator 3
	cmpl	$0, -64(%rbp)	#, items
	je	.L289	#,
	.loc 1 888 0 is_stmt 0 discriminator 1
	cmpl	$128, -52(%rbp)	#, gimme
	je	.L289	#,
	.loc 1 890 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.345
	subq	$4, %rax	#, D.19097
	movl	(%rax), %edx	# *_58, D.19094
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.346
	subq	$8, %rax	#, D.19097
	movl	(%rax), %eax	# *_61, D.19094
	subl	%eax, %edx	# D.19094, D.19094
	movl	%edx, %eax	# D.19094, D.19094
	cmpl	-64(%rbp), %eax	# items, D.19094
	jge	.L290	#,
	.loc 1 899 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.347
	subq	$8, %rax	#, D.19097
	movl	(%rax), %edx	# *_65, D.19094
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.348
	subq	$4, %rax	#, D.19097
	movl	(%rax), %eax	# *_68, D.19094
	subl	%eax, %edx	# D.19094, D.19094
	movl	-64(%rbp), %eax	# items, tmp223
	addl	%edx, %eax	# D.19094, tmp222
	movl	%eax, -56(%rbp)	# tmp222, shift
	.loc 1 902 0
	movq	%rbx, %rdx	# sp, sp.349
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.350
	subq	%rax, %rdx	# PL_stack_base.351, D.19095
	movq	%rdx, %rax	# D.19095, D.19095
	sarq	$3, %rax	#, tmp224
	movl	%eax, %edx	# D.19095, D.19096
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.352
	subq	$4, %rax	#, D.19097
	movl	(%rax), %eax	# *_79, D.19094
	subl	%eax, %edx	# D.19096, D.19096
	movl	%edx, %eax	# D.19096, D.19096
	addl	$1, %eax	#, D.19096
	movl	%eax, -60(%rbp)	# D.19096, count
	.loc 1 912 0
	movl	-56(%rbp), %eax	# shift, tmp225
	cmpl	-60(%rbp), %eax	# count, tmp225
	jge	.L291	#,
	.loc 1 913 0
	movl	-60(%rbp), %eax	# count, tmp226
	movl	%eax, -56(%rbp)	# tmp226, shift
.L291:
	.loc 1 915 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.353
	movq	%rax, %rdx	# PL_stack_max.353, PL_stack_max.354
	movq	%rbx, %rax	# sp, sp.355
	subq	%rax, %rdx	# sp.355, D.19095
	movq	%rdx, %rax	# D.19095, D.19095
	sarq	$3, %rax	#, tmp227
	movq	%rax, %rdx	# tmp227, D.19095
	movl	-56(%rbp), %eax	# shift, tmp228
	cltq
	cmpq	%rax, %rdx	# D.19095, D.19095
	jge	.L292	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# shift, tmp229
	movl	%eax, %edx	# tmp229,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L292:
	.loc 1 916 0 is_stmt 1
	movq	%rbx, -48(%rbp)	# sp, src
	.loc 1 917 0
	movl	-56(%rbp), %eax	# shift, tmp230
	cltq
	salq	$3, %rax	#, D.19098
	addq	%rax, %rbx	# D.19098, sp
	movq	%rbx, -40(%rbp)	# sp, dst
	.loc 1 918 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.356
	subq	$4, %rax	#, D.19097
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.357
	subq	$4, %rdx	#, D.19097
	movl	(%rdx), %ecx	# *_101, D.19094
	movl	-56(%rbp), %edx	# shift, tmp231
	addl	%ecx, %edx	# D.19094, D.19094
	movl	%edx, (%rax)	# D.19094, *_99
	.loc 1 919 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.358
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.359
	movl	(%rdx), %ecx	# *PL_markstack_ptr.359_105, D.19094
	movl	-56(%rbp), %edx	# shift, tmp232
	addl	%ecx, %edx	# D.19094, D.19094
	movl	%edx, (%rax)	# D.19094, *PL_markstack_ptr.358_104
	.loc 1 920 0
	jmp	.L293	#
.L294:
	.loc 1 921 0
	movq	-40(%rbp), %rax	# dst, dst.360
	leaq	-8(%rax), %rdx	#, tmp233
	movq	%rdx, -40(%rbp)	# tmp233, dst
	movq	-48(%rbp), %rdx	# src, src.361
	leaq	-8(%rdx), %rcx	#, tmp234
	movq	%rcx, -48(%rbp)	# tmp234, src
	movq	(%rdx), %rdx	# *src.361_112, D.19099
	movq	%rdx, (%rax)	# D.19099, *dst.360_110
.L293:
	.loc 1 920 0 discriminator 1
	movl	-60(%rbp), %eax	# count, count.362
	leal	-1(%rax), %edx	#, tmp235
	movl	%edx, -60(%rbp)	# tmp235, count
	testl	%eax, %eax	# count.362
	jne	.L294	#,
.L290:
	.loc 1 924 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.363
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.364
	subq	$8, %rax	#, D.19097
	movq	PL_markstack_ptr(%rip), %rcx	# PL_markstack_ptr, PL_markstack_ptr.365
	subq	$8, %rcx	#, D.19097
	movl	(%rcx), %esi	# *_119, D.19094
	movl	-64(%rbp), %ecx	# items, tmp236
	addl	%esi, %ecx	# D.19094, D.19094
	movl	%ecx, (%rax)	# D.19094, *_117
	movl	(%rax), %eax	# *_117, D.19094
	cltq
	salq	$3, %rax	#, D.19098
	subq	$8, %rax	#, D.19100
	addq	%rdx, %rax	# PL_stack_base.363, tmp237
	movq	%rax, -40(%rbp)	# tmp237, dst
	.loc 1 925 0
	cmpl	$1, -52(%rbp)	#, gimme
	jne	.L295	#,
	.loc 1 926 0
	jmp	.L296	#
.L299:
	.loc 1 927 0
	movq	-40(%rbp), %r12	# dst, dst.366
	leaq	-8(%r12), %rax	#, tmp238
	movq	%rax, -40(%rbp)	# tmp238, dst
	movq	(%rbx), %rax	# *sp_4, D.19099
	movl	12(%rax), %eax	# _131->sv_flags, D.19101
	andl	$2048, %eax	#, D.19101
	testl	%eax, %eax	# D.19101
	je	.L297	#,
	.loc 1 927 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.368
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.368_134, iftmp.367
	jmp	.L298	#
.L297:
	.loc 1 927 0 discriminator 2
	movq	%rbx, %rax	# sp, sp.369
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.369_137, D.19099
	movq	%rax, %rdi	# D.19099,
	call	Perl_sv_mortalcopy	#
.L298:
	.loc 1 927 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.367, *dst.366_129
.L296:
	.loc 1 926 0 is_stmt 1 discriminator 1
	movl	-64(%rbp), %eax	# items, items.370
	leal	-1(%rax), %edx	#, tmp239
	movl	%edx, -64(%rbp)	# tmp239, items
	testl	%eax, %eax	# items.370
	jg	.L299	#,
	jmp	.L289	#
.L295:
	.loc 1 933 0
	jmp	.L300	#
.L301:
	.loc 1 934 0
	movq	%rbx, %rax	# sp, sp.371
	leaq	-8(%rax), %rbx	#, sp
	.loc 1 935 0
	movq	-40(%rbp), %rax	# dst, dst.372
	leaq	-8(%rax), %rdx	#, tmp240
	movq	%rdx, -40(%rbp)	# tmp240, dst
	movq	$PL_sv_undef, (%rax)	#, *dst.372_145
.L300:
	.loc 1 933 0 discriminator 1
	movl	-64(%rbp), %eax	# items, items.373
	leal	-1(%rax), %edx	#, tmp241
	movl	%edx, -64(%rbp)	# tmp241, items
	testl	%eax, %eax	# items.373
	jg	.L301	#,
.L289:
	.loc 1 939 0
	call	Perl_pop_scope	#
	.loc 1 942 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.374
	subq	$4, %rax	#, D.19097
	movl	(%rax), %edx	# *_148, D.19094
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.375
	movl	(%rax), %eax	# *PL_markstack_ptr.375_150, D.19094
	cmpl	%eax, %edx	# D.19094, D.19094
	jle	.L302	#,
	.loc 1 944 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.376
	subq	$4, %rax	#, PL_markstack_ptr.378
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.378, PL_markstack_ptr
	.loc 1 945 0
	call	Perl_pop_scope	#
	.loc 1 946 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.379
	subq	$4, %rax	#, PL_markstack_ptr.381
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.381, PL_markstack_ptr
	.loc 1 947 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.382
	movl	(%rax), %edx	# *PL_markstack_ptr.382_158, D.19094
	subl	$1, %edx	#, D.19094
	movl	%edx, (%rax)	# D.19094, *PL_markstack_ptr.382_158
	movl	(%rax), %edx	# *PL_markstack_ptr.382_158, D.19094
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.383
	subq	$4, %rax	#, D.19097
	movl	(%rax), %eax	# *_163, D.19094
	subl	%eax, %edx	# D.19094, tmp242
	movl	%edx, %eax	# tmp242, tmp242
	movl	%eax, -64(%rbp)	# tmp242, items
	.loc 1 948 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.384
	subq	$4, %rax	#, PL_markstack_ptr.386
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.386, PL_markstack_ptr
	.loc 1 949 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.387
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.388
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.390
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.390, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.389_171, D.19094
	cltq
	salq	$3, %rax	#, D.19098
	leaq	(%rcx,%rax), %rbx	#, sp
	.loc 1 950 0
	cmpl	$0, -52(%rbp)	#, gimme
	jne	.L303	#,
.LBB16:
	.loc 1 951 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.391
	movq	PL_op(%rip), %rax	# PL_op, PL_op.392
	movq	24(%rax), %rax	# PL_op.392_178->op_targ, D.19098
	salq	$3, %rax	#, D.19098
	addq	%rdx, %rax	# PL_curpad.391, D.19102
	movq	(%rax), %rax	# *_181, tmp243
	movq	%rax, -32(%rbp)	# tmp243, targ
.LBB17:
	.loc 1 952 0
	movl	-64(%rbp), %eax	# items, tmp244
	movslq	%eax, %rdx	# tmp244, D.19095
	movq	-32(%rbp), %rax	# targ, tmp245
	movq	%rdx, %rsi	# D.19095,
	movq	%rax, %rdi	# tmp245,
	call	Perl_sv_setiv	#
.LBB18:
	movq	-32(%rbp), %rax	# targ, tmp246
	movl	12(%rax), %eax	# targ_182->sv_flags, D.19101
	andl	$16384, %eax	#, D.19101
	testl	%eax, %eax	# D.19101
	je	.L304	#,
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp247
	movq	%rax, %rdi	# tmp247,
	call	Perl_mg_set	#
.L304:
.LBB19:
	.loc 1 952 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.393
	movq	%rax, %rdx	# PL_stack_max.393, PL_stack_max.394
	movq	%rbx, %rax	# sp, sp.395
	subq	%rax, %rdx	# sp.395, D.19095
	movq	%rdx, %rax	# D.19095, D.19095
	cmpq	$7, %rax	#, D.19095
	jg	.L305	#,
	.loc 1 952 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L305:
	.loc 1 952 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp248
	movq	%rax, (%rbx)	# tmp248, *sp_191
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	jmp	.L306	#
.L303:
	.loc 1 954 0 is_stmt 1
	cmpl	$1, -52(%rbp)	#, gimme
	jne	.L306	#,
	.loc 1 955 0
	movl	-64(%rbp), %eax	# items, tmp249
	cltq
	salq	$3, %rax	#, D.19098
	addq	%rax, %rbx	# D.19098, sp
.L306:
	.loc 1 956 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.396
	movq	(%rax), %rax	# PL_op.396_196->op_next, D.19092
	jmp	.L307	#
.L302:
.LBB20:
	.loc 1 961 0
	call	Perl_push_scope	#
	.loc 1 962 0
	movl	$PL_curpm, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 965 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.397
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.398
	subq	$4, %rdx	#, D.19097
	movl	(%rdx), %edx	# *_200, D.19094
	movslq	%edx, %rdx	# D.19094, D.19098
	salq	$3, %rdx	#, D.19098
	addq	%rdx, %rax	# D.19098, D.19102
	movq	(%rax), %rax	# *_204, tmp250
	movq	%rax, -24(%rbp)	# tmp250, src
	.loc 1 966 0
	movq	-24(%rbp), %rax	# src, tmp251
	movl	12(%rax), %eax	# src_205->sv_flags, D.19101
	andb	$247, %ah	#, D.19101
	movl	%eax, %edx	# D.19101, D.19101
	movq	-24(%rbp), %rax	# src, tmp252
	movl	%edx, 12(%rax)	# D.19101, src_205->sv_flags
	.loc 1 967 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.399
	movq	(%rax), %rax	# PL_defgv.399_208->sv_any, D.19103
	movq	56(%rax), %rax	# _209->xgv_gp, D.19104
	movq	-24(%rbp), %rdx	# src, tmp253
	movq	%rdx, (%rax)	# tmp253, _210->gp_sv
	.loc 1 969 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.400
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.400_211].op_other, D.19092
.L307:
.LBE20:
	.loc 1 971 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_pp_mapwhile, .-Perl_pp_mapwhile
	.globl	Perl_pp_range
	.type	Perl_pp_range, @function
Perl_pp_range:
.LFB14:
	.loc 1 976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 977 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.402
	movzbl	36(%rax), %eax	# PL_op.402_8->op_flags, D.19106
	movzbl	%al, %eax	# D.19106, D.19107
	andl	$3, %eax	#, D.19107
	testl	%eax, %eax	# D.19107
	je	.L309	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.403
	movzbl	36(%rax), %eax	# PL_op.403_12->op_flags, D.19106
	movzbl	%al, %eax	# D.19106, D.19107
	andl	$3, %eax	#, D.19107
	cmpl	$3, %eax	#, D.19107
	sete	%al	#, iftmp.401
	jmp	.L310	#
.L309:
	.loc 1 977 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.19107
	sete	%al	#, iftmp.401
.L310:
	.loc 1 977 0 discriminator 3
	testb	%al, %al	# iftmp.401
	je	.L311	#,
	.loc 1 978 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.404
	movq	(%rax), %rax	# PL_op.404_19->op_next, D.19105
	jmp	.L312	#
.L311:
	.loc 1 979 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.405
	movq	PL_op(%rip), %rax	# PL_op, PL_op.406
	movq	24(%rax), %rax	# PL_op.406_22->op_targ, D.19108
	salq	$3, %rax	#, D.19108
	addq	%rdx, %rax	# PL_curpad.405, D.19109
	movq	(%rax), %rax	# *_25, PL_Sv.407
	movq	%rax, PL_Sv(%rip)	# PL_Sv.407, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.409
	testq	%rax, %rax	# PL_Sv.409
	je	.L313	#,
	.loc 1 979 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.411
	movl	12(%rax), %eax	# PL_Sv.411_28->sv_flags, D.19110
	andl	$262144, %eax	#, D.19110
	testl	%eax, %eax	# D.19110
	je	.L314	#,
	.loc 1 979 0 discriminator 3
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.413
	movq	(%rax), %rax	# PL_Sv.413_31->sv_any, PL_Xpv.414
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.414, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.415
	testq	%rax, %rax	# PL_Xpv.415
	je	.L315	#,
	.loc 1 979 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.416
	movq	8(%rax), %rax	# PL_Xpv.416_34->xpv_cur, D.19108
	cmpq	$1, %rax	#, D.19108
	ja	.L316	#,
	.loc 1 979 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.417
	movq	8(%rax), %rax	# PL_Xpv.417_36->xpv_cur, D.19108
	testq	%rax, %rax	# D.19108
	je	.L315	#,
	.loc 1 979 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.418
	movq	(%rax), %rax	# PL_Xpv.418_38->xpv_pv, D.19111
	movzbl	(%rax), %eax	# *_39, D.19112
	cmpb	$48, %al	#, D.19112
	je	.L315	#,
.L316:
	.loc 1 979 0 discriminator 3
	movl	$1, %eax	#, iftmp.412
	jmp	.L317	#
.L315:
	.loc 1 979 0 discriminator 2
	movl	$0, %eax	#, iftmp.412
.L317:
	.loc 1 979 0 discriminator 5
	testl	%eax, %eax	# iftmp.412
	setne	%al	#, iftmp.410
	jmp	.L323	#
.L314:
	.loc 1 979 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.420
	movl	12(%rax), %eax	# PL_Sv.420_44->sv_flags, D.19110
	andl	$65536, %eax	#, D.19110
	testl	%eax, %eax	# D.19110
	je	.L319	#,
	.loc 1 979 0 discriminator 5
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.421
	movq	(%rax), %rax	# PL_Sv.421_47->sv_any, D.19113
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_48].xiv_iv, D.19114
	testq	%rax, %rax	# D.19114
	setne	%al	#, iftmp.419
	jmp	.L323	#
.L319:
	.loc 1 979 0 discriminator 6
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.423
	movl	12(%rax), %eax	# PL_Sv.423_51->sv_flags, D.19110
	andl	$131072, %eax	#, D.19110
	testl	%eax, %eax	# D.19110
	je	.L321	#,
	.loc 1 979 0 discriminator 7
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.424
	movq	(%rax), %rax	# PL_Sv.424_54->sv_any, D.19113
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_55].xnv_nv, D.19115
	xorpd	%xmm1, %xmm1	# tmp114
	ucomisd	%xmm1, %xmm0	# tmp114, D.19115
	setp	%dl	#, tmp113
	movl	$1, %eax	#, tmp116
	xorpd	%xmm1, %xmm1	# tmp115
	ucomisd	%xmm1, %xmm0	# tmp115, D.19115
	cmove	%edx, %eax	# tmp113,, iftmp.422
	jmp	.L323	#
.L321:
	.loc 1 979 0 discriminator 8
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.425
	movq	%rax, %rdi	# PL_Sv.425,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.19112
	setne	%al	#, iftmp.422
	jmp	.L323	#
.L313:
	.loc 1 979 0 discriminator 2
	movl	$0, %eax	#, iftmp.408
.L323:
	.loc 1 979 0 discriminator 11
	testb	%al, %al	# iftmp.408
	je	.L324	#,
	.loc 1 980 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.426
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.426_65].op_other, D.19105
	jmp	.L312	#
.L324:
	.loc 1 982 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.427
	movq	(%rax), %rax	# PL_op.427_67->op_next, D.19105
.L312:
	.loc 1 983 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_pp_range, .-Perl_pp_range
	.section	.rodata
.LC11:
	.string	"."
.LC12:
	.string	""
	.text
	.globl	Perl_pp_flip
	.type	Perl_pp_flip, @function
Perl_pp_flip:
.LFB15:
	.loc 1 986 0
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
	.loc 1 987 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 989 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.429
	movzbl	36(%rax), %eax	# PL_op.429_14->op_flags, D.19117
	movzbl	%al, %eax	# D.19117, D.19118
	andl	$3, %eax	#, D.19118
	testl	%eax, %eax	# D.19118
	je	.L326	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.430
	movzbl	36(%rax), %eax	# PL_op.430_18->op_flags, D.19117
	movzbl	%al, %eax	# D.19117, D.19118
	andl	$3, %eax	#, D.19118
	cmpl	$3, %eax	#, D.19118
	sete	%al	#, iftmp.428
	jmp	.L327	#
.L326:
	.loc 1 989 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.19118
	sete	%al	#, iftmp.428
.L327:
	.loc 1 989 0 discriminator 3
	testb	%al, %al	# iftmp.428
	je	.L328	#,
	.loc 1 990 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.431
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_op.431_25].op_first, D.19116
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)_26].op_other, D.19116
	jmp	.L329	#
.L328:
.LBB21:
	.loc 1 993 0
	movq	(%rbx), %rax	# *sp_13, tmp167
	movq	%rax, -40(%rbp)	# tmp167, sv
	.loc 1 994 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.432
	movq	PL_op(%rip), %rax	# PL_op, PL_op.433
	movq	24(%rax), %rax	# PL_op.433_30->op_targ, D.19119
	salq	$3, %rax	#, D.19119
	addq	%rdx, %rax	# PL_curpad.432, D.19120
	movq	(%rax), %rax	# *_33, tmp168
	movq	%rax, -32(%rbp)	# tmp168, targ
	.loc 1 995 0
	movl	$0, -44(%rbp)	#, flip
	.loc 1 997 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.434
	movzbl	37(%rax), %eax	# PL_op.434_36->op_private, D.19117
	movzbl	%al, %eax	# D.19117, D.19118
	andl	$64, %eax	#, D.19118
	testl	%eax, %eax	# D.19118
	je	.L330	#,
	.loc 1 998 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.435
	testq	%rax, %rax	# PL_last_in_gv.435
	je	.L331	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.436
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.436_41].sv_flags, D.19121
	movzbl	%al, %eax	# D.19121, D.19121
	cmpl	$13, %eax	#, D.19121
	jne	.L331	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.437
	movq	(%rax), %rax	# PL_last_in_gv.437_44->sv_any, D.19122
	movq	56(%rax), %rax	# _45->xgv_gp, D.19123
	testq	%rax, %rax	# D.19123
	je	.L331	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.438
	movq	(%rax), %rax	# PL_last_in_gv.438_47->sv_any, D.19122
	movq	56(%rax), %rax	# _48->xgv_gp, D.19123
	movq	16(%rax), %rax	# _49->gp_io, D.19124
	testq	%rax, %rax	# D.19124
	je	.L331	#,
	.loc 1 999 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp169
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19121
	andl	$65536, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L332	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp170
	movq	(%rax), %rax	# sv_28->sv_any, D.19125
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_53].xiv_iv, iftmp.439
	jmp	.L333	#
.L332:
	.loc 1 999 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp171
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_2iv	#
.L333:
	.loc 1 999 0 discriminator 3
	movq	PL_last_in_gv(%rip), %rdx	# PL_last_in_gv, PL_last_in_gv.440
	movq	(%rdx), %rdx	# PL_last_in_gv.440_56->sv_any, D.19122
	movq	56(%rdx), %rdx	# _57->xgv_gp, D.19123
	movq	16(%rdx), %rdx	# _58->gp_io, D.19124
	movq	(%rdx), %rdx	# _59->sv_any, D.19126
	movq	80(%rdx), %rdx	# _60->xio_lines, D.19127
	cmpq	%rdx, %rax	# D.19127, iftmp.439
	sete	%al	#, D.19128
	movzbl	%al, %eax	# D.19128, tmp172
	movl	%eax, -44(%rbp)	# tmp172, flip
	jmp	.L334	#
.L331:
.LBB22:
	.loc 1 1002 0 is_stmt 1
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -24(%rbp)	# tmp173, gv
	.loc 1 1003 0
	cmpq	$0, -24(%rbp)	#, gv
	je	.L334	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp174
	movq	(%rax), %rax	# gv_64->sv_any, D.19122
	movq	56(%rax), %rax	# _65->xgv_gp, D.19123
	movq	(%rax), %rax	# _66->gp_sv, D.19129
	testq	%rax, %rax	# D.19129
	je	.L334	#,
	movq	-40(%rbp), %rax	# sv, tmp175
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19121
	andl	$65536, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L335	#,
	movq	-40(%rbp), %rax	# sv, tmp176
	movq	(%rax), %rax	# sv_28->sv_any, D.19125
	movq	24(%rax), %r12	# MEM[(struct XPVIV *)_70].xiv_iv, iftmp.441
	jmp	.L336	#
.L335:
	.loc 1 1003 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp177
	movq	%rax, %rdi	# tmp177,
	call	Perl_sv_2iv	#
	movq	%rax, %r12	#, iftmp.441
.L336:
	.loc 1 1003 0 discriminator 3
	movq	-24(%rbp), %rax	# gv, tmp178
	movq	(%rax), %rax	# gv_64->sv_any, D.19122
	movq	56(%rax), %rax	# _73->xgv_gp, D.19123
	movq	(%rax), %rax	# _74->gp_sv, D.19129
	movl	12(%rax), %eax	# _75->sv_flags, D.19121
	andl	$65536, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L337	#,
	.loc 1 1003 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp179
	movq	(%rax), %rax	# gv_64->sv_any, D.19122
	movq	56(%rax), %rax	# _78->xgv_gp, D.19123
	movq	(%rax), %rax	# _79->gp_sv, D.19129
	movq	(%rax), %rax	# _80->sv_any, D.19125
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_81].xiv_iv, iftmp.442
	jmp	.L338	#
.L337:
	.loc 1 1003 0 discriminator 2
	movq	-24(%rbp), %rax	# gv, tmp180
	movq	(%rax), %rax	# gv_64->sv_any, D.19122
	movq	56(%rax), %rax	# _83->xgv_gp, D.19123
	movq	(%rax), %rax	# _84->gp_sv, D.19129
	movq	%rax, %rdi	# D.19129,
	call	Perl_sv_2iv	#
.L338:
	.loc 1 1003 0 discriminator 3
	cmpq	%rax, %r12	# iftmp.442, iftmp.441
	sete	%al	#, D.19128
	movzbl	%al, %eax	# D.19128, tmp181
	movl	%eax, -44(%rbp)	# tmp181, flip
.LBE22:
	jmp	.L339	#
.L334:
	jmp	.L339	#
.L330:
	.loc 1 1006 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, sv
	je	.L340	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp182
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19121
	andl	$262144, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L341	#,
	movq	-40(%rbp), %rax	# sv, tmp183
	movq	(%rax), %rax	# sv_28->sv_any, PL_Xpv.446
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.446, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.447
	testq	%rax, %rax	# PL_Xpv.447
	je	.L342	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.448
	movq	8(%rax), %rax	# PL_Xpv.448_93->xpv_cur, D.19119
	cmpq	$1, %rax	#, D.19119
	ja	.L343	#,
	.loc 1 1006 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.449
	movq	8(%rax), %rax	# PL_Xpv.449_95->xpv_cur, D.19119
	testq	%rax, %rax	# D.19119
	je	.L342	#,
	.loc 1 1006 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.450
	movq	(%rax), %rax	# PL_Xpv.450_97->xpv_pv, D.19130
	movzbl	(%rax), %eax	# *_98, D.19131
	cmpb	$48, %al	#, D.19131
	je	.L342	#,
.L343:
	.loc 1 1006 0 discriminator 3
	movl	$1, %eax	#, iftmp.445
	jmp	.L344	#
.L342:
	.loc 1 1006 0 discriminator 2
	movl	$0, %eax	#, iftmp.445
.L344:
	jmp	.L350	#
.L341:
	movq	-40(%rbp), %rax	# sv, tmp184
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19121
	andl	$65536, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L346	#,
	.loc 1 1006 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp185
	movq	(%rax), %rax	# sv_28->sv_any, D.19125
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_105].xiv_iv, D.19127
	testq	%rax, %rax	# D.19127
	setne	%al	#, D.19128
	movzbl	%al, %eax	# D.19128, iftmp.451
	jmp	.L350	#
.L346:
	.loc 1 1006 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp186
	movl	12(%rax), %eax	# sv_28->sv_flags, D.19121
	andl	$131072, %eax	#, D.19121
	testl	%eax, %eax	# D.19121
	je	.L348	#,
	.loc 1 1006 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp187
	movq	(%rax), %rax	# sv_28->sv_any, D.19125
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_111].xnv_nv, D.19132
	xorpd	%xmm1, %xmm1	# tmp189
	ucomisd	%xmm1, %xmm0	# tmp189, D.19132
	setp	%dl	#, tmp188
	movl	$1, %eax	#, tmp191
	xorpd	%xmm1, %xmm1	# tmp190
	ucomisd	%xmm1, %xmm0	# tmp190, D.19132
	cmove	%edx, %eax	# tmp188,, D.19128
	movzbl	%al, %eax	# D.19128, iftmp.452
	jmp	.L350	#
.L348:
	.loc 1 1006 0 discriminator 2
	movq	-40(%rbp), %rax	# sv, tmp192
	movq	%rax, %rdi	# tmp192,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.19131, iftmp.452
	jmp	.L350	#
.L340:
	movl	$0, %eax	#, iftmp.443
.L350:
	.loc 1 1006 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.443, flip
.L339:
	.loc 1 1008 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, flip
	je	.L351	#,
	.loc 1 1009 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.453
	movq	PL_op(%rip), %rax	# PL_op, PL_op.454
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_op.454_123].op_first, D.19116
	movq	24(%rax), %rax	# _124->op_targ, D.19119
	salq	$3, %rax	#, D.19119
	addq	%rdx, %rax	# PL_curpad.453, D.19120
	movq	(%rax), %rax	# *_127, D.19129
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19129,
	call	Perl_sv_setiv	#
	.loc 1 1010 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.455
	movzbl	36(%rax), %eax	# PL_op.455_129->op_flags, D.19117
	testb	%al, %al	# D.19133
	jns	.L352	#,
	.loc 1 1011 0
	movq	-32(%rbp), %rax	# targ, tmp193
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp193,
	call	Perl_sv_setiv	#
	.loc 1 1012 0
	movq	-32(%rbp), %rax	# targ, tmp194
	movq	%rax, (%rbx)	# tmp194, *sp_13
	.loc 1 1013 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.456
	movq	(%rax), %rax	# PL_op.456_132->op_next, D.19116
	jmp	.L329	#
.L352:
	.loc 1 1016 0
	movq	-32(%rbp), %rax	# targ, tmp195
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	Perl_sv_setiv	#
	.loc 1 1017 0
	subq	$8, %rbx	#, sp
	.loc 1 1018 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.457
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_op.457_135].op_first, D.19116
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)_136].op_other, D.19116
	jmp	.L329	#
.L351:
	.loc 1 1021 0
	movq	-32(%rbp), %rax	# targ, tmp196
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	Perl_sv_setpv	#
	.loc 1 1022 0
	movq	-32(%rbp), %rax	# targ, tmp197
	movq	%rax, (%rbx)	# tmp197, *sp_13
	.loc 1 1023 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.458
	movq	(%rax), %rax	# PL_op.458_138->op_next, D.19116
.L329:
.LBE21:
	.loc 1 1025 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_pp_flip, .-Perl_pp_flip
	.section	.rodata
	.align 8
.LC15:
	.string	"Range iterator outside integer range"
.LC16:
	.string	"E0"
	.text
	.globl	Perl_pp_flop
	.type	Perl_pp_flop, @function
Perl_pp_flop:
.LFB16:
	.loc 1 1039 0
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
	subq	$96, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	.loc 1 1040 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1042 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.460
	movzbl	36(%rax), %eax	# PL_op.460_29->op_flags, D.19137
	movzbl	%al, %eax	# D.19137, D.19138
	andl	$3, %eax	#, D.19138
	testl	%eax, %eax	# D.19138
	je	.L354	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.461
	movzbl	36(%rax), %eax	# PL_op.461_33->op_flags, D.19137
	movzbl	%al, %eax	# D.19137, D.19138
	andl	$3, %eax	#, D.19138
	cmpl	$3, %eax	#, D.19138
	sete	%al	#, iftmp.459
	jmp	.L355	#
.L354:
	.loc 1 1042 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.19138
	sete	%al	#, iftmp.459
.L355:
	.loc 1 1042 0 discriminator 3
	testb	%al, %al	# iftmp.459
	je	.L356	#,
.LBB23:
	.loc 1 1043 0 is_stmt 1
	movq	%rbx, %rax	# sp, sp.462
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.462_40, tmp264
	movq	%rax, -96(%rbp)	# tmp264, right
	movq	%rbx, %rax	# sp, sp.463
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.463_43, tmp265
	movq	%rax, -88(%rbp)	# tmp265, left
	.loc 1 1048 0
	movq	-88(%rbp), %rax	# left, tmp266
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$8192, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L357	#,
	.loc 1 1049 0
	movq	-88(%rbp), %rax	# left, tmp267
	movq	%rax, %rdi	# tmp267,
	call	Perl_mg_get	#
.L357:
	.loc 1 1050 0
	movq	-96(%rbp), %rax	# right, tmp268
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$8192, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L358	#,
	.loc 1 1051 0
	movq	-96(%rbp), %rax	# right, tmp269
	movq	%rax, %rdi	# tmp269,
	call	Perl_mg_get	#
.L358:
	.loc 1 1053 0
	movq	-88(%rbp), %rax	# left, tmp270
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$50331648, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	jne	.L359	#,
	.loc 1 1053 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# left, tmp271
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L360	#,
	movq	-88(%rbp), %rax	# left, tmp272
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$67108864, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L359	#,
.L360:
	.loc 1 1053 0 discriminator 2
	movq	-96(%rbp), %rax	# right, tmp273
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$50331648, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	jne	.L359	#,
	.loc 1 1053 0 discriminator 1
	movq	-96(%rbp), %rax	# right, tmp274
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L361	#,
	movq	-96(%rbp), %rax	# right, tmp275
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$67108864, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L359	#,
.L361:
	.loc 1 1053 0 discriminator 2
	movq	-88(%rbp), %rax	# left, tmp276
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	jne	.L362	#,
	.loc 1 1053 0 discriminator 1
	movq	-96(%rbp), %rax	# right, tmp277
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	jne	.L363	#,
.L362:
	.loc 1 1053 0 discriminator 2
	movq	-88(%rbp), %rax	# left, tmp278
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L364	#,
	movq	-88(%rbp), %rax	# left, tmp279
	movq	%rax, %rdi	# tmp279,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.19138
	je	.L365	#,
.L364:
	.loc 1 1053 0 discriminator 1
	movq	-88(%rbp), %rax	# left, tmp280
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$67108864, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L365	#,
	movq	-88(%rbp), %rax	# left, tmp281
	movq	(%rax), %rax	# left_45->sv_any, D.19140
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, D.19141
	movzbl	(%rax), %eax	# *_72, D.19142
	cmpb	$48, %al	#, D.19142
	je	.L365	#,
.L363:
	movq	-96(%rbp), %rax	# right, tmp282
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L359	#,
	movq	-96(%rbp), %rax	# right, tmp283
	movq	%rax, %rdi	# tmp283,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.19138
	je	.L365	#,
.L359:
	.loc 1 1054 0 is_stmt 1
	movq	-88(%rbp), %rax	# left, tmp284
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L366	#,
	.loc 1 1054 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# left, tmp285
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$131072, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L367	#,
	.loc 1 1054 0 discriminator 3
	movq	-88(%rbp), %rax	# left, tmp286
	movq	(%rax), %rax	# left_45->sv_any, D.19140
	movsd	32(%rax), %xmm1	# MEM[(struct XPVNV *)_115].xnv_nv, D.19146
	movsd	.LC13(%rip), %xmm0	#, tmp287
	ucomisd	%xmm1, %xmm0	# D.19146, tmp287
	ja	.L368	#,
	jmp	.L366	#
.L367:
	.loc 1 1054 0 discriminator 4
	movq	-88(%rbp), %rax	# left, tmp288
	movq	%rax, %rdi	# tmp288,
	call	Perl_sv_2nv	#
	movsd	.LC13(%rip), %xmm1	#, tmp289
	ucomisd	%xmm0, %xmm1	# D.19146, tmp289
	ja	.L368	#,
.L366:
	.loc 1 1055 0 is_stmt 1 discriminator 2
	movq	-96(%rbp), %rax	# right, tmp290
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$118423552, %eax	#, D.19139
	.loc 1 1054 0 discriminator 2
	testl	%eax, %eax	# D.19139
	je	.L369	#,
	.loc 1 1055 0 discriminator 1
	movq	-96(%rbp), %rax	# right, tmp291
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$131072, %eax	#, D.19139
	.loc 1 1054 0 discriminator 1
	testl	%eax, %eax	# D.19139
	je	.L370	#,
	.loc 1 1055 0
	movq	-96(%rbp), %rax	# right, tmp292
	movq	(%rax), %rax	# right_42->sv_any, D.19140
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_122].xnv_nv, D.19146
	ucomisd	.LC14(%rip), %xmm0	#, D.19146
	ja	.L368	#,
	jmp	.L369	#
.L370:
	movq	-96(%rbp), %rax	# right, tmp293
	movq	%rax, %rdi	# tmp293,
	call	Perl_sv_2nv	#
	ucomisd	.LC14(%rip), %xmm0	#, D.19146
	jbe	.L369	#,
.L368:
	.loc 1 1056 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L372	#
.L369:
	.loc 1 1057 0
	movq	-88(%rbp), %rax	# left, tmp294
	movl	12(%rax), %eax	# left_45->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L373	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# left, tmp295
	movq	(%rax), %rax	# left_45->sv_any, D.19140
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_127].xiv_iv, iftmp.464
	jmp	.L374	#
.L373:
	.loc 1 1057 0 discriminator 2
	movq	-88(%rbp), %rax	# left, tmp296
	movq	%rax, %rdi	# tmp296,
	call	Perl_sv_2iv	#
.L374:
	.loc 1 1057 0 discriminator 3
	movq	%rax, %r14	# iftmp.464, i
	.loc 1 1058 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# right, tmp297
	movl	12(%rax), %eax	# right_42->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L375	#,
	.loc 1 1058 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# right, tmp298
	movq	(%rax), %rax	# right_42->sv_any, D.19140
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_133].xiv_iv, iftmp.465
	jmp	.L376	#
.L375:
	.loc 1 1058 0 discriminator 2
	movq	-96(%rbp), %rax	# right, tmp299
	movq	%rax, %rdi	# tmp299,
	call	Perl_sv_2iv	#
.L376:
	.loc 1 1058 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.465, max
	.loc 1 1059 0 is_stmt 1 discriminator 3
	cmpq	%r14, -64(%rbp)	# i, max
	jl	.L377	#,
	.loc 1 1060 0
	movq	-64(%rbp), %rax	# max, tmp300
	subq	%r14, %rax	# i, D.19144
	leaq	1(%rax), %r13	#, j
	.loc 1 1061 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.466
	cltq
	leaq	(%rax,%r13), %rdx	#, D.19144
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.467
	cltq
	cmpq	%rax, %rdx	# D.19144, D.19144
	jl	.L378	#,
	.loc 1 1061 0 is_stmt 0 discriminator 1
	movl	%r13d, %eax	# j, D.19138
	movl	%eax, %edi	# D.19138,
	call	Perl_tmps_grow	#
.L378:
	.loc 1 1062 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.468
	movq	%rax, %rdx	# PL_stack_max.468, PL_stack_max.469
	movq	%rbx, %rax	# sp, sp.470
	subq	%rax, %rdx	# sp.470, D.19144
	movq	%rdx, %rax	# D.19144, D.19144
	sarq	$3, %rax	#, tmp301
	movq	%rax, %rdx	# tmp301, D.19144
	movl	%r13d, %eax	# j, D.19138
	cltq
	cmpq	%rax, %rdx	# D.19144, D.19144
	jge	.L380	#,
	.loc 1 1062 0 is_stmt 0 discriminator 1
	movl	%r13d, %eax	# j, D.19138
	movl	%eax, %edx	# D.19138,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	.loc 1 1066 0 is_stmt 1 discriminator 1
	jmp	.L381	#
.L377:
	.loc 1 1065 0
	movl	$0, %r13d	#, j
	.loc 1 1066 0
	jmp	.L381	#
.L380:
	jmp	.L381	#
.L382:
	.loc 1 1067 0
	movq	%r14, %rax	# i, i.471
	leaq	1(%rax), %r14	#, i
	movq	%rax, %rdi	# i.471,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19145,
	call	Perl_sv_2mortal	#
	movq	%rax, %r12	#, sv
	.loc 1 1068 0
	addq	$8, %rbx	#, sp
	movq	%r12, (%rbx)	# sv, *sp_161
.L381:
	.loc 1 1066 0 discriminator 1
	movq	%r13, %rax	# j, j.472
	leaq	-1(%rax), %r13	#, j
	testq	%rax, %rax	# j.472
	jne	.L382	#,
	.loc 1 1053 0
	jmp	.L383	#
.L365:
.LBB24:
	.loc 1 1072 0
	movq	-96(%rbp), %rax	# right, tmp302
	movq	%rax, %rdi	# tmp302,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -80(%rbp)	# tmp303, final
	.loc 1 1074 0
	movq	-80(%rbp), %rax	# final, tmp304
	movl	12(%rax), %eax	# final_77->sv_flags, D.19139
	andl	$262144, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L384	#,
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# final, tmp305
	movq	(%rax), %rax	# final_77->sv_any, D.19140
	movq	8(%rax), %rax	# MEM[(struct XPV *)_80].xpv_cur, len.474
	movq	%rax, -112(%rbp)	# len.474, len
	movq	-80(%rbp), %rax	# final, tmp306
	movq	(%rax), %rax	# final_77->sv_any, D.19140
	movq	(%rax), %rax	# MEM[(struct XPV *)_82].xpv_pv, iftmp.473
	jmp	.L385	#
.L384:
	.loc 1 1074 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp307
	movq	-80(%rbp), %rax	# final, tmp308
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp307,
	movq	%rax, %rdi	# tmp308,
	call	Perl_sv_2pv_flags	#
.L385:
	.loc 1 1074 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.473, tmps
	.loc 1 1076 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# left, tmp309
	movq	%rax, %rdi	# tmp309,
	call	Perl_sv_mortalcopy	#
	movq	%rax, %r12	#, sv
	.loc 1 1077 0 discriminator 3
	movl	12(%r12), %eax	# sv_86->sv_flags, D.19139
	andl	$10223616, %eax	#, D.19139
	cmpl	$262144, %eax	#, D.19139
	jne	.L386	#,
	.loc 1 1077 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# sv_86->sv_any, D.19140
	movq	8(%rax), %rax	# MEM[(struct XPV *)_89].xpv_cur, n_a.476
	movq	%rax, -104(%rbp)	# n_a.476, n_a
	.loc 1 1078 0 is_stmt 1 discriminator 1
	jmp	.L388	#
.L386:
	.loc 1 1077 0 discriminator 2
	leaq	-104(%rbp), %rax	#, tmp310
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp310,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_pvn_force_flags	#
	.loc 1 1078 0 discriminator 2
	jmp	.L388	#
.L392:
.LBB25:
	.loc 1 1079 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.477
	movq	%rax, %rdx	# PL_stack_max.477, PL_stack_max.478
	movq	%rbx, %rax	# sp, sp.479
	subq	%rax, %rdx	# sp.479, D.19144
	movq	%rdx, %rax	# D.19144, D.19144
	cmpq	$7, %rax	#, D.19144
	jg	.L389	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L389:
	.loc 1 1079 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	%r12, (%rbx)	# sv, *sp_104
.LBE25:
	.loc 1 1080 0 is_stmt 1 discriminator 2
	movq	(%r12), %rax	# sv_12->sv_any, D.19140
	movq	(%rax), %rax	# MEM[(struct XPV *)_106].xpv_pv, D.19141
	movq	-72(%rbp), %rdx	# tmps, tmp311
	movq	%rdx, %rsi	# tmp311,
	movq	%rax, %rdi	# D.19141,
	call	strcmp	#
	testl	%eax, %eax	# D.19138
	jne	.L390	#,
	.loc 1 1081 0
	jmp	.L383	#
.L390:
	.loc 1 1082 0
	movq	%r12, %rdi	# sv,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.19145,
	call	Perl_sv_2mortal	#
	movq	%rax, %r12	#, sv
	.loc 1 1083 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_inc	#
.L388:
	.loc 1 1078 0 discriminator 1
	movl	12(%r12), %eax	# sv_12->sv_flags, D.19139
	andl	$50331648, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	jne	.L383	#,
	.loc 1 1078 0 is_stmt 0 discriminator 2
	movq	(%r12), %rax	# sv_12->sv_any, D.19140
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_96].xpv_cur, D.19143
	movq	-112(%rbp), %rax	# len, len.480
	cmpq	%rax, %rdx	# len.480, D.19143
	jbe	.L392	#,
.LBE24:
.LBE23:
	jmp	.L393	#
.L383:
	jmp	.L393	#
.L356:
.LBB26:
	.loc 1 1088 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_28, tmp312
	movq	%rax, -56(%rbp)	# tmp312, sv
	.loc 1 1089 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.481
	movq	PL_op(%rip), %rax	# PL_op, PL_op.482
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_op.482_165].op_first, D.19136
	movq	24(%rax), %rax	# _166->op_targ, D.19143
	salq	$3, %rax	#, D.19143
	addq	%rdx, %rax	# PL_curpad.481, D.19147
	movq	(%rax), %rax	# *_169, tmp313
	movq	%rax, -48(%rbp)	# tmp313, targ
	.loc 1 1090 0
	movl	$0, -116(%rbp)	#, flop
	.loc 1 1091 0
	movq	-48(%rbp), %rax	# targ, tmp314
	movq	%rax, %rdi	# tmp314,
	call	Perl_sv_inc	#
	.loc 1 1093 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.483
	movzbl	37(%rax), %eax	# PL_op.483_172->op_private, D.19137
	movzbl	%al, %eax	# D.19137, D.19138
	andl	$64, %eax	#, D.19138
	testl	%eax, %eax	# D.19138
	je	.L394	#,
	.loc 1 1094 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.484
	testq	%rax, %rax	# PL_last_in_gv.484
	je	.L395	#,
	.loc 1 1094 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.485
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.485_177].sv_flags, D.19139
	movzbl	%al, %eax	# D.19139, D.19139
	cmpl	$13, %eax	#, D.19139
	jne	.L395	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.486
	movq	(%rax), %rax	# PL_last_in_gv.486_180->sv_any, D.19148
	movq	56(%rax), %rax	# _181->xgv_gp, D.19149
	testq	%rax, %rax	# D.19149
	je	.L395	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.487
	movq	(%rax), %rax	# PL_last_in_gv.487_183->sv_any, D.19148
	movq	56(%rax), %rax	# _184->xgv_gp, D.19149
	movq	16(%rax), %rax	# _185->gp_io, D.19150
	testq	%rax, %rax	# D.19150
	je	.L395	#,
	.loc 1 1095 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp315
	movl	12(%rax), %eax	# sv_163->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L396	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp316
	movq	(%rax), %rax	# sv_163->sv_any, D.19140
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_189].xiv_iv, iftmp.488
	jmp	.L397	#
.L396:
	.loc 1 1095 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp317
	movq	%rax, %rdi	# tmp317,
	call	Perl_sv_2iv	#
.L397:
	.loc 1 1095 0 discriminator 3
	movq	PL_last_in_gv(%rip), %rdx	# PL_last_in_gv, PL_last_in_gv.489
	movq	(%rdx), %rdx	# PL_last_in_gv.489_192->sv_any, D.19148
	movq	56(%rdx), %rdx	# _193->xgv_gp, D.19149
	movq	16(%rdx), %rdx	# _194->gp_io, D.19150
	movq	(%rdx), %rdx	# _195->sv_any, D.19151
	movq	80(%rdx), %rdx	# _196->xio_lines, D.19144
	cmpq	%rdx, %rax	# D.19144, iftmp.488
	sete	%al	#, D.19152
	movzbl	%al, %eax	# D.19152, tmp318
	movl	%eax, -116(%rbp)	# tmp318, flop
	jmp	.L398	#
.L395:
.LBB27:
	.loc 1 1098 0 is_stmt 1
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -40(%rbp)	# tmp319, gv
	.loc 1 1099 0
	cmpq	$0, -40(%rbp)	#, gv
	je	.L398	#,
	.loc 1 1099 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp320
	movq	(%rax), %rax	# gv_200->sv_any, D.19148
	movq	56(%rax), %rax	# _201->xgv_gp, D.19149
	movq	(%rax), %rax	# _202->gp_sv, D.19145
	testq	%rax, %rax	# D.19145
	je	.L398	#,
	movq	-56(%rbp), %rax	# sv, tmp321
	movl	12(%rax), %eax	# sv_163->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L399	#,
	movq	-56(%rbp), %rax	# sv, tmp322
	movq	(%rax), %rax	# sv_163->sv_any, D.19140
	movq	24(%rax), %r12	# MEM[(struct XPVIV *)_206].xiv_iv, iftmp.490
	jmp	.L400	#
.L399:
	.loc 1 1099 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp323
	movq	%rax, %rdi	# tmp323,
	call	Perl_sv_2iv	#
	movq	%rax, %r12	#, iftmp.490
.L400:
	.loc 1 1099 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp324
	movq	(%rax), %rax	# gv_200->sv_any, D.19148
	movq	56(%rax), %rax	# _209->xgv_gp, D.19149
	movq	(%rax), %rax	# _210->gp_sv, D.19145
	movl	12(%rax), %eax	# _211->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L401	#,
	.loc 1 1099 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp325
	movq	(%rax), %rax	# gv_200->sv_any, D.19148
	movq	56(%rax), %rax	# _214->xgv_gp, D.19149
	movq	(%rax), %rax	# _215->gp_sv, D.19145
	movq	(%rax), %rax	# _216->sv_any, D.19140
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_217].xiv_iv, iftmp.491
	jmp	.L402	#
.L401:
	.loc 1 1099 0 discriminator 2
	movq	-40(%rbp), %rax	# gv, tmp326
	movq	(%rax), %rax	# gv_200->sv_any, D.19148
	movq	56(%rax), %rax	# _219->xgv_gp, D.19149
	movq	(%rax), %rax	# _220->gp_sv, D.19145
	movq	%rax, %rdi	# D.19145,
	call	Perl_sv_2iv	#
.L402:
	.loc 1 1099 0 discriminator 3
	cmpq	%rax, %r12	# iftmp.491, iftmp.490
	sete	%al	#, D.19152
	movzbl	%al, %eax	# D.19152, tmp327
	movl	%eax, -116(%rbp)	# tmp327, flop
.LBE27:
	jmp	.L403	#
.L398:
	jmp	.L403	#
.L394:
	.loc 1 1103 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, sv
	je	.L404	#,
	.loc 1 1103 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp328
	movl	12(%rax), %eax	# sv_163->sv_flags, D.19139
	andl	$262144, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L405	#,
	movq	-56(%rbp), %rax	# sv, tmp329
	movq	(%rax), %rax	# sv_163->sv_any, PL_Xpv.495
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.495, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.496
	testq	%rax, %rax	# PL_Xpv.496
	je	.L406	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.497
	movq	8(%rax), %rax	# PL_Xpv.497_229->xpv_cur, D.19143
	cmpq	$1, %rax	#, D.19143
	ja	.L407	#,
	.loc 1 1103 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.498
	movq	8(%rax), %rax	# PL_Xpv.498_231->xpv_cur, D.19143
	testq	%rax, %rax	# D.19143
	je	.L406	#,
	.loc 1 1103 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.499
	movq	(%rax), %rax	# PL_Xpv.499_233->xpv_pv, D.19141
	movzbl	(%rax), %eax	# *_234, D.19142
	cmpb	$48, %al	#, D.19142
	je	.L406	#,
.L407:
	.loc 1 1103 0 discriminator 3
	movl	$1, %eax	#, iftmp.494
	jmp	.L408	#
.L406:
	.loc 1 1103 0 discriminator 2
	movl	$0, %eax	#, iftmp.494
.L408:
	jmp	.L414	#
.L405:
	movq	-56(%rbp), %rax	# sv, tmp330
	movl	12(%rax), %eax	# sv_163->sv_flags, D.19139
	andl	$65536, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L410	#,
	.loc 1 1103 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp331
	movq	(%rax), %rax	# sv_163->sv_any, D.19140
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_241].xiv_iv, D.19144
	testq	%rax, %rax	# D.19144
	setne	%al	#, D.19152
	movzbl	%al, %eax	# D.19152, iftmp.500
	jmp	.L414	#
.L410:
	.loc 1 1103 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp332
	movl	12(%rax), %eax	# sv_163->sv_flags, D.19139
	andl	$131072, %eax	#, D.19139
	testl	%eax, %eax	# D.19139
	je	.L412	#,
	.loc 1 1103 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp333
	movq	(%rax), %rax	# sv_163->sv_any, D.19140
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_247].xnv_nv, D.19146
	xorpd	%xmm1, %xmm1	# tmp335
	ucomisd	%xmm1, %xmm0	# tmp335, D.19146
	setp	%dl	#, tmp334
	movl	$1, %eax	#, tmp337
	xorpd	%xmm1, %xmm1	# tmp336
	ucomisd	%xmm1, %xmm0	# tmp336, D.19146
	cmove	%edx, %eax	# tmp334,, D.19152
	movzbl	%al, %eax	# D.19152, iftmp.501
	jmp	.L414	#
.L412:
	.loc 1 1103 0 discriminator 2
	movq	-56(%rbp), %rax	# sv, tmp338
	movq	%rax, %rdi	# tmp338,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.19142, iftmp.501
	jmp	.L414	#
.L404:
	movl	$0, %eax	#, iftmp.492
.L414:
	.loc 1 1103 0 discriminator 3
	movl	%eax, -116(%rbp)	# iftmp.492, flop
.L403:
	.loc 1 1106 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, flop
	je	.L415	#,
	.loc 1 1107 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.502
	movq	PL_op(%rip), %rax	# PL_op, PL_op.503
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_op.503_259].op_first, D.19136
	movq	40(%rax), %rax	# MEM[(struct UNOP *)_260].op_first, D.19136
	movq	24(%rax), %rax	# _261->op_targ, D.19143
	salq	$3, %rax	#, D.19143
	addq	%rdx, %rax	# PL_curpad.502, D.19147
	movq	(%rax), %rax	# *_264, D.19145
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19145,
	call	Perl_sv_setiv	#
	.loc 1 1108 0
	movq	-48(%rbp), %rax	# targ, tmp339
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp339,
	call	Perl_sv_catpv	#
.L415:
	.loc 1 1110 0
	movq	-48(%rbp), %rax	# targ, tmp340
	movq	%rax, (%rbx)	# tmp340, *sp_28
.L393:
.LBE26:
	.loc 1 1113 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.504
	movq	(%rax), %rax	# PL_op.504_266->op_next, D.19136
.L372:
	.loc 1 1114 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_pp_flop, .-Perl_pp_flop
	.section	.rodata
.LC17:
	.string	"pseudo-block"
.LC18:
	.string	"subroutine"
.LC19:
	.string	"eval"
.LC20:
	.string	"loop"
.LC21:
	.string	"substitution"
.LC22:
	.string	"block"
.LC23:
	.string	"format"
	.data
	.align 32
	.type	context_name, @object
	.size	context_name, 56
context_name:
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.section	.rodata
.LC24:
	.string	"Exiting %s via %s"
	.text
	.type	S_dopoptolabel, @function
S_dopoptolabel:
.LFB17:
	.loc 1 1130 0
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
	movq	%rdi, -24(%rbp)	# label, label
	.loc 1 1134 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.505
	movl	16(%rax), %ebx	# PL_curstackinfo.505_4->si_cxix, i
	jmp	.L417	#
.L431:
	.loc 1 1135 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.506
	movq	8(%rax), %rcx	# PL_curstackinfo.506_6->si_cxstack, D.19163
	movslq	%ebx, %rdx	# i, D.19164
	movq	%rdx, %rax	# D.19164, tmp103
	salq	$3, %rax	#, tmp103
	addq	%rdx, %rax	# D.19164, tmp103
	salq	$4, %rax	#, tmp104
	leaq	(%rcx,%rax), %r12	#, cx
	.loc 1 1136 0
	movl	(%r12), %eax	# cx_10->cx_type, D.19165
	movzbl	%al, %eax	# D.19165, D.19165
	cmpl	$6, %eax	#, D.19165
	ja	.L418	#,
	movl	%eax, %eax	# D.19165, tmp105
	movq	.L420(,%rax,8), %rax	#, tmp106
	jmp	*%rax	# tmp106
	.section	.rodata
	.align 8
	.align 4
.L420:
	.quad	.L419
	.quad	.L419
	.quad	.L419
	.quad	.L421
	.quad	.L419
	.quad	.L418
	.quad	.L419
	.text
.L419:
	.loc 1 1142 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.507
	movq	80(%rax), %rax	# PL_curcop.507_13->cop_warnings, D.19166
	testq	%rax, %rax	# D.19166
	je	.L422	#,
	.loc 1 1142 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.508
	movq	80(%rax), %rax	# PL_curcop.508_15->cop_warnings, D.19166
	cmpq	$32, %rax	#, D.19166
	je	.L422	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.509
	movq	80(%rax), %rax	# PL_curcop.509_17->cop_warnings, D.19166
	cmpq	$16, %rax	#, D.19166
	je	.L423	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.510
	movq	80(%rax), %rax	# PL_curcop.510_19->cop_warnings, D.19166
	movq	(%rax), %rax	# _20->sv_any, D.19167
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, D.19168
	movzbl	(%rax), %eax	# *_22, D.19169
	movsbl	%al, %eax	# D.19169, D.19170
	andl	$64, %eax	#, D.19170
	testl	%eax, %eax	# D.19170
	jne	.L423	#,
.L422:
	.loc 1 1142 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.511
	movq	80(%rax), %rax	# PL_curcop.511_26->cop_warnings, D.19166
	testq	%rax, %rax	# D.19166
	jne	.L424	#,
	.loc 1 1142 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.512
	movzbl	%al, %eax	# PL_dowarn.512, D.19170
	andl	$1, %eax	#, D.19170
	testl	%eax, %eax	# D.19170
	je	.L424	#,
.L423:
	.loc 1 1144 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.514
	movzwl	32(%rax), %eax	# PL_op.514_31->op_type, D.19171
	.loc 1 1143 0
	cmpw	$351, %ax	#, D.19171
	jne	.L425	#,
	.loc 1 1144 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.515
	.loc 1 1143 0
	movq	%rax, %rdi	# PL_op.515,
	call	Perl_custom_op_name	#
	jmp	.L426	#
.L425:
	.loc 1 1144 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.516
	movzwl	32(%rax), %eax	# PL_op.516_35->op_type, D.19171
	movzwl	%ax, %eax	# D.19171, D.19170
	.loc 1 1143 0 discriminator 1
	cltq
	movq	PL_op_name(,%rax,8), %rax	# PL_op_name, iftmp.513
.L426:
	.loc 1 1144 0 discriminator 2
	movl	(%r12), %edx	# cx_10->cx_type, D.19165
	movzbl	%dl, %edx	# D.19165, D.19165
	.loc 1 1143 0 discriminator 2
	movl	%edx, %edx	# D.19165, tmp108
	movq	context_name(,%rdx,8), %rdx	# context_name, D.19168
	movq	%rax, %rcx	# iftmp.513,
	movl	$.LC24, %esi	#,
	movl	$3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L424:
	.loc 1 1145 0
	movl	(%r12), %eax	# cx_10->cx_type, D.19165
	movzbl	%al, %eax	# D.19165, D.19165
	testl	%eax, %eax	# D.19165
	jne	.L427	#,
	.loc 1 1146 0
	movl	$-1, %eax	#, D.19162
	jmp	.L428	#
.L427:
	.loc 1 1147 0
	jmp	.L418	#
.L421:
	.loc 1 1149 0
	movq	56(%r12), %rax	# cx_10->cx_u.cx_blk.blk_u.blku_loop.label, D.19168
	testq	%rax, %rax	# D.19168
	je	.L429	#,
	.loc 1 1150 0 discriminator 1
	movq	56(%r12), %rdx	# cx_10->cx_u.cx_blk.blk_u.blku_loop.label, D.19168
	movq	-24(%rbp), %rax	# label, tmp109
	movq	%rdx, %rsi	# D.19168,
	movq	%rax, %rdi	# tmp109,
	call	strcmp	#
	.loc 1 1149 0 discriminator 1
	testl	%eax, %eax	# D.19170
	je	.L430	#,
.L429:
	.loc 1 1153 0
	jmp	.L418	#
.L430:
	.loc 1 1156 0
	movl	%ebx, %eax	# i, D.19162
	jmp	.L428	#
.L418:
	.loc 1 1134 0
	subl	$1, %ebx	#, i
.L417:
	.loc 1 1134 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx	# i
	jns	.L431	#,
	.loc 1 1159 0 is_stmt 1
	movl	%ebx, %eax	# i, D.19162
.L428:
	.loc 1 1160 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	S_dopoptolabel, .-S_dopoptolabel
	.globl	Perl_dowantarray
	.type	Perl_dowantarray, @function
Perl_dowantarray:
.LFB18:
	.loc 1 1164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1165 0
	call	Perl_block_gimme	#
	movl	%eax, -4(%rbp)	# tmp62, gimme
	.loc 1 1166 0
	cmpl	$128, -4(%rbp)	#, gimme
	je	.L433	#,
	.loc 1 1166 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# gimme, iftmp.517
	jmp	.L434	#
.L433:
	.loc 1 1166 0 discriminator 2
	movl	$0, %eax	#, iftmp.517
.L434:
	.loc 1 1167 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_dowantarray, .-Perl_dowantarray
	.section	.rodata
.LC25:
	.string	"panic: bad gimme: %d\n"
	.text
	.globl	Perl_block_gimme
	.type	Perl_block_gimme, @function
Perl_block_gimme:
.LFB19:
	.loc 1 1171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1174 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.518
	movl	16(%rax), %eax	# PL_curstackinfo.518_2->si_cxix, D.19175
	movl	%eax, %edi	# D.19175,
	call	S_dopoptosub	#
	movl	%eax, -4(%rbp)	# tmp77, cxix
	.loc 1 1175 0
	cmpl	$0, -4(%rbp)	#, cxix
	jns	.L437	#,
	.loc 1 1176 0
	movl	$128, %eax	#, D.19174
	jmp	.L438	#
.L437:
	.loc 1 1178 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.519
	movq	8(%rax), %rcx	# PL_curstackinfo.519_6->si_cxstack, D.19176
	movl	-4(%rbp), %eax	# cxix, tmp78
	movslq	%eax, %rdx	# tmp78, D.19177
	movq	%rdx, %rax	# D.19177, tmp79
	salq	$3, %rax	#, tmp79
	addq	%rdx, %rax	# D.19177, tmp79
	salq	$4, %rax	#, tmp80
	addq	%rcx, %rax	# D.19176, D.19176
	movzbl	48(%rax), %eax	# _10->cx_u.cx_blk.blku_gimme, D.19178
	movzbl	%al, %eax	# D.19178, D.19175
	cmpl	$1, %eax	#, D.19175
	je	.L440	#,
	cmpl	$128, %eax	#, D.19175
	je	.L441	#,
	testl	%eax, %eax	# D.19175
	je	.L442	#,
	jmp	.L443	#
.L441:
	.loc 1 1180 0
	movl	$128, %eax	#, D.19174
	jmp	.L438	#
.L442:
	.loc 1 1182 0
	movl	$0, %eax	#, D.19174
	jmp	.L438	#
.L440:
	.loc 1 1184 0
	movl	$1, %eax	#, D.19174
	jmp	.L438	#
.L443:
	.loc 1 1186 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.520
	movq	8(%rax), %rcx	# PL_curstackinfo.520_16->si_cxstack, D.19176
	movl	-4(%rbp), %eax	# cxix, tmp81
	movslq	%eax, %rdx	# tmp81, D.19177
	movq	%rdx, %rax	# D.19177, tmp82
	salq	$3, %rax	#, tmp82
	addq	%rdx, %rax	# D.19177, tmp82
	salq	$4, %rax	#, tmp83
	addq	%rcx, %rax	# D.19176, D.19176
	movzbl	48(%rax), %eax	# _20->cx_u.cx_blk.blku_gimme, D.19178
	movzbl	%al, %eax	# D.19178, D.19175
	movl	%eax, %esi	# D.19175,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1188 0
	movl	$0, %eax	#, D.19174
.L438:
	.loc 1 1190 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_block_gimme, .-Perl_block_gimme
	.globl	Perl_is_lvalue_sub
	.type	Perl_is_lvalue_sub, @function
Perl_is_lvalue_sub:
.LFB20:
	.loc 1 1194 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1197 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.521
	movl	16(%rax), %eax	# PL_curstackinfo.521_2->si_cxix, D.19181
	movl	%eax, %edi	# D.19181,
	call	S_dopoptosub	#
	movl	%eax, -4(%rbp)	# tmp85, cxix
	.loc 1 1200 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.522
	movq	8(%rax), %rcx	# PL_curstackinfo.522_5->si_cxstack, D.19182
	movl	-4(%rbp), %eax	# cxix, tmp86
	movslq	%eax, %rdx	# tmp86, D.19183
	movq	%rdx, %rax	# D.19183, tmp87
	salq	$3, %rax	#, tmp87
	addq	%rdx, %rax	# D.19183, tmp87
	salq	$4, %rax	#, tmp88
	addq	%rcx, %rax	# D.19182, D.19182
	movzbl	105(%rax), %eax	# _9->cx_u.cx_blk.blk_u.blku_sub.lval, D.19184
	testb	%al, %al	# D.19184
	je	.L445	#,
	.loc 1 1200 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.523
	movq	8(%rax), %rcx	# PL_curstackinfo.523_11->si_cxstack, D.19182
	movl	-4(%rbp), %eax	# cxix, tmp89
	movslq	%eax, %rdx	# tmp89, D.19183
	movq	%rdx, %rax	# D.19183, tmp90
	salq	$3, %rax	#, tmp90
	addq	%rdx, %rax	# D.19183, tmp90
	salq	$4, %rax	#, tmp91
	addq	%rcx, %rax	# D.19182, D.19182
	movq	56(%rax), %rax	# _15->cx_u.cx_blk.blk_u.blku_sub.cv, D.19185
	movq	(%rax), %rax	# _16->sv_any, D.19186
	movzwl	136(%rax), %eax	# _17->xcv_flags, D.19187
	movzwl	%ax, %eax	# D.19187, D.19181
	andl	$256, %eax	#, D.19181
	testl	%eax, %eax	# D.19181
	je	.L445	#,
	.loc 1 1201 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.524
	movq	8(%rax), %rcx	# PL_curstackinfo.524_21->si_cxstack, D.19182
	movl	-4(%rbp), %eax	# cxix, tmp92
	movslq	%eax, %rdx	# tmp92, D.19183
	movq	%rdx, %rax	# D.19183, tmp93
	salq	$3, %rax	#, tmp93
	addq	%rdx, %rax	# D.19183, tmp93
	salq	$4, %rax	#, tmp94
	addq	%rcx, %rax	# D.19182, D.19182
	movzbl	105(%rax), %eax	# _25->cx_u.cx_blk.blk_u.blku_sub.lval, D.19184
	movzbl	%al, %eax	# D.19184, D.19180
	jmp	.L446	#
.L445:
	.loc 1 1203 0
	movl	$0, %eax	#, D.19180
.L446:
	.loc 1 1204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_is_lvalue_sub, .-Perl_is_lvalue_sub
	.type	S_dopoptosub, @function
S_dopoptosub:
.LFB21:
	.loc 1 1208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# startingblock, startingblock
	.loc 1 1209 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.525
	movq	8(%rax), %rax	# PL_curstackinfo.525_1->si_cxstack, D.19188
	movl	-4(%rbp), %edx	# startingblock, tmp63
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# D.19188,
	call	S_dopoptosub_at	#
	.loc 1 1210 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	S_dopoptosub, .-S_dopoptosub
	.type	S_dopoptosub_at, @function
S_dopoptosub_at:
.LFB22:
	.loc 1 1214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# cxstk, cxstk
	movl	%esi, -36(%rbp)	# startingblock, startingblock
	.loc 1 1217 0
	movl	-36(%rbp), %eax	# startingblock, tmp66
	movl	%eax, -12(%rbp)	# tmp66, i
	jmp	.L450	#
.L454:
	.loc 1 1218 0
	movl	-12(%rbp), %eax	# i, tmp67
	movslq	%eax, %rdx	# tmp67, D.19191
	movq	%rdx, %rax	# D.19191, tmp68
	salq	$3, %rax	#, tmp68
	addq	%rdx, %rax	# D.19191, tmp68
	salq	$4, %rax	#, tmp69
	movq	%rax, %rdx	# tmp68, D.19191
	movq	-32(%rbp), %rax	# cxstk, tmp70
	leaq	(%rdx,%rax), %rbx	#, cx
	.loc 1 1219 0
	movl	(%rbx), %eax	# cx_8->cx_type, D.19192
	movzbl	%al, %eax	# D.19192, D.19192
	cmpl	$1, %eax	#, D.19192
	jb	.L451	#,
	cmpl	$2, %eax	#, D.19192
	jbe	.L452	#,
	cmpl	$6, %eax	#, D.19192
	je	.L452	#,
.L451:
	.loc 1 1217 0
	subl	$1, -12(%rbp)	#, i
	jmp	.L450	#
.L452:
	.loc 1 1226 0
	movl	-12(%rbp), %eax	# i, D.19190
	jmp	.L453	#
.L450:
	.loc 1 1217 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L454	#,
	.loc 1 1229 0
	movl	-12(%rbp), %eax	# i, D.19190
.L453:
	.loc 1 1230 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	S_dopoptosub_at, .-S_dopoptosub_at
	.type	S_dopoptoeval, @function
S_dopoptoeval:
.LFB23:
	.loc 1 1234 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# startingblock, startingblock
	.loc 1 1237 0
	movl	-28(%rbp), %eax	# startingblock, tmp68
	movl	%eax, -12(%rbp)	# tmp68, i
	jmp	.L456	#
.L460:
	.loc 1 1238 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.526
	movq	8(%rax), %rcx	# PL_curstackinfo.526_5->si_cxstack, D.19194
	movl	-12(%rbp), %eax	# i, tmp69
	movslq	%eax, %rdx	# tmp69, D.19195
	movq	%rdx, %rax	# D.19195, tmp70
	salq	$3, %rax	#, tmp70
	addq	%rdx, %rax	# D.19195, tmp70
	salq	$4, %rax	#, tmp71
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 1239 0
	movl	(%rbx), %eax	# cx_9->cx_type, D.19196
	movzbl	%al, %eax	# D.19196, D.19196
	cmpl	$2, %eax	#, D.19196
	je	.L458	#,
	.loc 1 1237 0
	subl	$1, -12(%rbp)	#, i
	jmp	.L456	#
.L458:
	.loc 1 1244 0
	movl	-12(%rbp), %eax	# i, D.19193
	jmp	.L459	#
.L456:
	.loc 1 1237 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L460	#,
	.loc 1 1247 0
	movl	-12(%rbp), %eax	# i, D.19193
.L459:
	.loc 1 1248 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	S_dopoptoeval, .-S_dopoptoeval
	.type	S_dopoptoloop, @function
S_dopoptoloop:
.LFB24:
	.loc 1 1252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# startingblock, startingblock
	.loc 1 1255 0
	movl	-36(%rbp), %eax	# startingblock, tmp98
	movl	%eax, -20(%rbp)	# tmp98, i
	jmp	.L462	#
.L474:
	.loc 1 1256 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.527
	movq	8(%rax), %rcx	# PL_curstackinfo.527_6->si_cxstack, D.19198
	movl	-20(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, D.19199
	movq	%rdx, %rax	# D.19199, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# D.19199, tmp100
	salq	$4, %rax	#, tmp101
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 1257 0
	movl	(%rbx), %eax	# cx_10->cx_type, D.19200
	movzbl	%al, %eax	# D.19200, D.19200
	cmpl	$6, %eax	#, D.19200
	ja	.L463	#,
	movl	%eax, %eax	# D.19200, tmp102
	movq	.L465(,%rax,8), %rax	#, tmp103
	jmp	*%rax	# tmp103
	.section	.rodata
	.align 8
	.align 4
.L465:
	.quad	.L464
	.quad	.L464
	.quad	.L464
	.quad	.L466
	.quad	.L464
	.quad	.L463
	.quad	.L464
	.text
.L464:
	.loc 1 1263 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.528
	movq	80(%rax), %rax	# PL_curcop.528_13->cop_warnings, D.19201
	testq	%rax, %rax	# D.19201
	je	.L467	#,
	.loc 1 1263 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.529
	movq	80(%rax), %rax	# PL_curcop.529_15->cop_warnings, D.19201
	cmpq	$32, %rax	#, D.19201
	je	.L467	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.530
	movq	80(%rax), %rax	# PL_curcop.530_17->cop_warnings, D.19201
	cmpq	$16, %rax	#, D.19201
	je	.L468	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.531
	movq	80(%rax), %rax	# PL_curcop.531_19->cop_warnings, D.19201
	movq	(%rax), %rax	# _20->sv_any, D.19202
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, D.19203
	movzbl	(%rax), %eax	# *_22, D.19204
	movsbl	%al, %eax	# D.19204, D.19205
	andl	$64, %eax	#, D.19205
	testl	%eax, %eax	# D.19205
	jne	.L468	#,
.L467:
	.loc 1 1263 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.532
	movq	80(%rax), %rax	# PL_curcop.532_26->cop_warnings, D.19201
	testq	%rax, %rax	# D.19201
	jne	.L469	#,
	.loc 1 1263 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.533
	movzbl	%al, %eax	# PL_dowarn.533, D.19205
	andl	$1, %eax	#, D.19205
	testl	%eax, %eax	# D.19205
	je	.L469	#,
.L468:
	.loc 1 1265 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.535
	movzwl	32(%rax), %eax	# PL_op.535_31->op_type, D.19206
	.loc 1 1264 0
	cmpw	$351, %ax	#, D.19206
	jne	.L470	#,
	.loc 1 1265 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.536
	.loc 1 1264 0
	movq	%rax, %rdi	# PL_op.536,
	call	Perl_custom_op_name	#
	jmp	.L471	#
.L470:
	.loc 1 1265 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.537
	movzwl	32(%rax), %eax	# PL_op.537_35->op_type, D.19206
	movzwl	%ax, %eax	# D.19206, D.19205
	.loc 1 1264 0 discriminator 1
	cltq
	movq	PL_op_name(,%rax,8), %rax	# PL_op_name, iftmp.534
.L471:
	.loc 1 1265 0 discriminator 2
	movl	(%rbx), %edx	# cx_10->cx_type, D.19200
	movzbl	%dl, %edx	# D.19200, D.19200
	.loc 1 1264 0 discriminator 2
	movl	%edx, %edx	# D.19200, tmp105
	movq	context_name(,%rdx,8), %rdx	# context_name, D.19203
	movq	%rax, %rcx	# iftmp.534,
	movl	$.LC24, %esi	#,
	movl	$3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L469:
	.loc 1 1266 0
	movl	(%rbx), %eax	# cx_10->cx_type, D.19200
	movzbl	%al, %eax	# D.19200, D.19200
	testl	%eax, %eax	# D.19200
	jne	.L472	#,
	.loc 1 1267 0
	movl	$-1, %eax	#, D.19197
	jmp	.L473	#
.L472:
	.loc 1 1268 0
	jmp	.L463	#
.L466:
	.loc 1 1271 0
	movl	-20(%rbp), %eax	# i, D.19197
	jmp	.L473	#
.L463:
	.loc 1 1255 0
	subl	$1, -20(%rbp)	#, i
.L462:
	.loc 1 1255 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L474	#,
	.loc 1 1274 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, D.19197
.L473:
	.loc 1 1275 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	S_dopoptoloop, .-S_dopoptoloop
	.globl	Perl_dounwind
	.type	Perl_dounwind, @function
Perl_dounwind:
.LFB25:
	.loc 1 1279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# cxix, cxix
	.loc 1 1283 0
	jmp	.L476	#
.L492:
.LBB28:
	.loc 1 1285 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.538
	movq	8(%rax), %rcx	# PL_curstackinfo.538_5->si_cxstack, D.19208
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.539
	movl	16(%rax), %eax	# PL_curstackinfo.539_7->si_cxix, D.19207
	movslq	%eax, %rdx	# D.19207, D.19209
	movq	%rdx, %rax	# D.19209, tmp149
	salq	$3, %rax	#, tmp149
	addq	%rdx, %rax	# D.19209, tmp149
	salq	$4, %rax	#, tmp150
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 1289 0
	movl	(%rbx), %eax	# cx_11->cx_type, D.19210
	movzbl	%al, %eax	# D.19210, D.19210
	cmpl	$6, %eax	#, D.19210
	ja	.L477	#,
	movl	%eax, %eax	# D.19210, tmp151
	movq	.L479(,%rax,8), %rax	#, tmp152
	jmp	*%rax	# tmp152
	.section	.rodata
	.align 8
	.align 4
.L479:
	.quad	.L477
	.quad	.L480
	.quad	.L481
	.quad	.L482
	.quad	.L483
	.quad	.L477
	.quad	.L484
	.text
.L483:
	.loc 1 1291 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.540
	movq	8(%rax), %rsi	# PL_curstackinfo.540_14->si_cxstack, D.19208
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.541
	movl	16(%rax), %edx	# PL_curstackinfo.541_16->si_cxix, D.19207
	leal	-1(%rdx), %ecx	#, D.19207
	movl	%ecx, 16(%rax)	# D.19207, PL_curstackinfo.541_16->si_cxix
	movslq	%edx, %rdx	# D.19207, D.19209
	movq	%rdx, %rax	# D.19209, tmp153
	salq	$3, %rax	#, tmp153
	addq	%rdx, %rax	# D.19209, tmp153
	salq	$4, %rax	#, tmp154
	leaq	(%rsi,%rax), %rbx	#, cx
	leaq	80(%rbx), %rax	#, D.19211
	movq	%rax, %rdi	# D.19211,
	call	Perl_rxres_free	#
	.loc 1 1292 0
	jmp	.L476	#
.L480:
.LBB29:
	.loc 1 1294 0
	movzbl	104(%rbx), %eax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19212
	testb	%al, %al	# D.19212
	je	.L485	#,
.LBB30:
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.542
	movq	(%rax), %rax	# PL_defgv.542_25->sv_any, D.19213
	movq	56(%rax), %rax	# _26->xgv_gp, D.19214
	movq	32(%rax), %rax	# _27->gp_av, D.19215
	movq	%rax, %rdi	# D.19215,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.543
	movq	(%rax), %rax	# PL_defgv.543_29->sv_any, D.19213
	movq	56(%rax), %rax	# _30->xgv_gp, D.19214
	movq	80(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.savearray, D.19215
	movq	%rdx, 32(%rax)	# D.19215, _31->gp_av
.LBE30:
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _34->sv_any, D.19216
	movzbl	72(%rax), %eax	# _35->xav_flags, D.19212
	movzbl	%al, %eax	# D.19212, D.19207
	andl	$1, %eax	#, D.19207
	testl	%eax, %eax	# D.19207
	je	.L486	#,
.LBB31:
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _39->sv_any, D.19216
	movq	8(%rax), %rax	# _40->xav_fill, tmp155
	movq	%rax, -32(%rbp)	# tmp155, fill
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	%rax, %rdi	# D.19215,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.19215, cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-32(%rbp), %rax	# fill, tmp156
	movl	%eax, %edx	# tmp156, D.19207
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movl	%edx, %esi	# D.19207,
	movq	%rax, %rdi	# D.19215,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _46->sv_any, D.19216
	movb	$2, 72(%rax)	#, _47->xav_flags
	movq	112(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.19217
	movq	(%rax), %rax	# MEM[(struct AV *)_48].sv_any, D.19216
	movq	(%rax), %rax	# _49->xav_array, D.19218
	movq	88(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	%rdx, (%rax)	# D.19215, MEM[(struct SV * *)_50]
.LBE31:
	jmp	.L485	#
.L486:
.LBB32:
	.loc 1 1294 0 discriminator 2
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _52->sv_any, D.19216
	movq	88(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rdx), %rdx	# _54->sv_any, D.19216
	movq	16(%rdx), %rcx	# _55->xav_max, D.19219
	movq	88(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rdx), %rdx	# _57->sv_any, D.19216
	movq	(%rdx), %rdx	# _58->xav_array, D.19218
	movq	%rdx, %rsi	# D.19218, D.19219
	movq	88(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rdx), %rdx	# _61->sv_any, D.19216
	movq	56(%rdx), %rdx	# _62->xav_alloc, D.19220
	subq	%rdx, %rsi	# D.19219, D.19219
	movq	%rsi, %rdx	# D.19219, D.19219
	sarq	$3, %rdx	#, tmp157
	addq	%rcx, %rdx	# D.19219, D.19219
	movq	%rdx, 16(%rax)	# D.19219, _53->xav_max
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _68->sv_any, D.19216
	movq	88(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rdx), %rdx	# _70->sv_any, D.19216
	movq	56(%rdx), %rdx	# _71->xav_alloc, D.19220
	movq	%rdx, (%rax)	# D.19220, MEM[(struct XPV *)_69].xpv_pv
	movq	88(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19215
	movq	(%rax), %rax	# _73->sv_any, D.19216
	movq	$-1, 8(%rax)	#, _74->xav_fill
.L485:
.LBE32:
	movq	56(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.cv, tmp158
	movq	%rax, -40(%rbp)	# tmp158, sv
	cmpq	$0, -40(%rbp)	#, sv
	je	.L487	#,
	.loc 1 1294 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp159
	movq	(%rax), %rax	# MEM[(struct CV *)sv_76].sv_any, D.19222
	movq	96(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.19219
	movq	%rdx, 112(%rax)	# D.19219, _77->xcv_depth
	movq	112(%rax), %rax	# _77->xcv_depth, D.19219
	testq	%rax, %rax	# D.19219
	je	.L487	#,
	movq	$0, -40(%rbp)	#, sv
.L487:
.LBE29:
	.loc 1 1295 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, sv
	je	.L488	#,
	.loc 1 1295 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp160
	movq	%rax, %rdi	# tmp160,
	call	Perl_sv_free	#
	.loc 1 1296 0 is_stmt 1 discriminator 1
	jmp	.L477	#
.L488:
	.loc 1 1296 0 is_stmt 0
	jmp	.L477	#
.L481:
.LBB33:
	.loc 1 1298 0 is_stmt 1
	movl	56(%rbx), %eax	# cx_11->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.544
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.544, PL_in_eval
	movl	60(%rbx), %eax	# cx_11->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp161
	movl	%eax, -44(%rbp)	# tmp161, optype
	movq	72(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.545
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.545, PL_eval_root
	movq	64(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19223
	testq	%rax, %rax	# D.19223
	je	.L489	#,
	.loc 1 1298 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19223
	movq	%rax, %rdi	# D.19223,
	call	Perl_sv_2mortal	#
.LBE33:
	.loc 1 1299 0 is_stmt 1 discriminator 1
	jmp	.L477	#
.L489:
	.loc 1 1299 0 is_stmt 0
	jmp	.L477	#
.L482:
	.loc 1 1301 0 is_stmt 1
	movq	112(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19223
	movq	%rax, %rdi	# D.19223,
	call	Perl_sv_free	#
	movq	96(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19220
	testq	%rax, %rax	# D.19220
	je	.L490	#,
.LBB34:
	.loc 1 1301 0 is_stmt 0 discriminator 1
	movq	96(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_loop.itervar, tmp162
	movq	%rax, -24(%rbp)	# tmp162, s_v_p
	movq	-24(%rbp), %rax	# s_v_p, tmp163
	movq	(%rax), %rax	# *s_v_p_88, D.19223
	movq	%rax, %rdi	# D.19223,
	call	Perl_sv_2mortal	#
	movq	104(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_loop.itersave, D.19223
	movq	-24(%rbp), %rax	# s_v_p, tmp164
	movq	%rdx, (%rax)	# D.19223, *s_v_p_88
.L490:
.LBE34:
	.loc 1 1301 0 discriminator 2
	movq	120(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19215
	testq	%rax, %rax	# D.19215
	je	.L491	#,
	.loc 1 1301 0 discriminator 1
	movq	120(%rbx), %rdx	# cx_11->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19215
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.546
	cmpq	%rax, %rdx	# PL_curstack.546, D.19215
	je	.L491	#,
	movq	120(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19215
	movq	%rax, %rdi	# D.19215,
	call	Perl_sv_free	#
	.loc 1 1302 0 is_stmt 1 discriminator 1
	jmp	.L477	#
.L491:
	.loc 1 1302 0 is_stmt 0
	jmp	.L477	#
.L484:
	.loc 1 1306 0 is_stmt 1
	movq	72(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19224
	movq	%rax, %rdi	# D.19224,
	call	Perl_setdefout	#
	movq	72(%rbx), %rax	# cx_11->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19224
	movq	%rax, %rdi	# D.19224,
	call	Perl_sv_free	#
	.loc 1 1307 0
	nop
.L477:
	.loc 1 1309 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.547
	movl	16(%rax), %edx	# PL_curstackinfo.547_97->si_cxix, D.19207
	subl	$1, %edx	#, D.19207
	movl	%edx, 16(%rax)	# D.19207, PL_curstackinfo.547_97->si_cxix
.L476:
.LBE28:
	.loc 1 1283 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.548
	movl	16(%rax), %eax	# PL_curstackinfo.548_2->si_cxix, D.19207
	cmpl	-52(%rbp), %eax	# cxix, D.19207
	jg	.L492	#,
	.loc 1 1311 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_dounwind, .-Perl_dounwind
	.section	.rodata
.LC26:
	.string	"%_"
	.text
	.globl	Perl_qerror
	.type	Perl_qerror, @function
Perl_qerror:
.LFB26:
	.loc 1 1315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# err, err
	.loc 1 1316 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.549
	testl	%eax, %eax	# PL_in_eval.549
	je	.L494	#,
	.loc 1 1317 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.550
	movq	(%rax), %rax	# PL_errgv.550_2->sv_any, D.19225
	movq	56(%rax), %rax	# _3->xgv_gp, D.19226
	movq	(%rax), %rax	# _4->gp_sv, D.19227
	movq	-8(%rbp), %rcx	# err, tmp68
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.19227,
	call	Perl_sv_catsv_flags	#
	jmp	.L495	#
.L494:
	.loc 1 1318 0
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.551
	testq	%rax, %rax	# PL_errors.551
	je	.L496	#,
	.loc 1 1319 0
	movq	PL_errors(%rip), %rax	# PL_errors, PL_errors.552
	movq	-8(%rbp), %rcx	# err, tmp69
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# PL_errors.552,
	call	Perl_sv_catsv_flags	#
	jmp	.L495	#
.L496:
	.loc 1 1321 0
	movq	-8(%rbp), %rax	# err, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L495:
	.loc 1 1322 0
	movl	PL_error_count(%rip), %eax	# PL_error_count, PL_error_count.553
	addl	$1, %eax	#, PL_error_count.554
	movl	%eax, PL_error_count(%rip)	# PL_error_count.554, PL_error_count
	.loc 1 1323 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_qerror, .-Perl_qerror
	.section	.rodata
.LC27:
	.string	"panic: POPSTACK\n"
.LC28:
	.string	"panic: die "
.LC29:
	.string	"Unknown error\n"
	.align 8
.LC30:
	.string	"%sCompilation failed in require"
	.text
	.globl	Perl_die_where
	.type	Perl_die_where, @function
Perl_die_where:
.LFB27:
	.loc 1 1327 0
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
	movq	%rdi, -104(%rbp)	# message, message
	movq	%rsi, -112(%rbp)	# msglen, msglen
	.loc 1 1330 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.555
	testl	%eax, %eax	# PL_in_eval.555
	je	.L498	#,
.LBB35:
	.loc 1 1336 0
	cmpq	$0, -104(%rbp)	#, message
	je	.L499	#,
	.loc 1 1337 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.556
	andl	$4, %eax	#, D.19230
	testl	%eax, %eax	# D.19230
	je	.L500	#,
.LBB36:
	.loc 1 1339 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.557
	movq	(%rax), %rax	# PL_errgv.557_18->sv_any, D.19231
	movq	56(%rax), %rax	# _19->xgv_gp, D.19232
	movq	(%rax), %rax	# _20->gp_sv, tmp303
	movq	%rax, -48(%rbp)	# tmp303, err
	.loc 1 1340 0
	movq	$0, -56(%rbp)	#, e
	.loc 1 1341 0
	movq	-48(%rbp), %rax	# err, tmp304
	movl	12(%rax), %eax	# err_21->sv_flags, D.19233
	andl	$262144, %eax	#, D.19233
	testl	%eax, %eax	# D.19233
	jne	.L501	#,
	.loc 1 1342 0
	movq	-48(%rbp), %rax	# err, tmp305
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp305,
	call	Perl_sv_setpv	#
	jmp	.L502	#
.L501:
	.loc 1 1343 0
	movq	-48(%rbp), %rax	# err, tmp306
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	8(%rax), %rax	# MEM[(struct XPV *)_25].xpv_cur, D.19235
	movq	-112(%rbp), %rdx	# msglen, msglen.558
	addq	$14, %rdx	#, D.19235
	cmpq	%rdx, %rax	# D.19235, D.19235
	jb	.L502	#,
	.loc 1 1344 0
	movq	-48(%rbp), %rax	# err, tmp307
	movl	12(%rax), %eax	# err_21->sv_flags, D.19233
	andl	$262144, %eax	#, D.19233
	testl	%eax, %eax	# D.19233
	je	.L503	#,
	.loc 1 1344 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# err, tmp308
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	8(%rax), %rax	# MEM[(struct XPV *)_31].xpv_cur, n_a.560
	movq	%rax, -72(%rbp)	# n_a.560, n_a
	movq	-48(%rbp), %rax	# err, tmp309
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	(%rax), %rax	# MEM[(struct XPV *)_33].xpv_pv, iftmp.559
	jmp	.L504	#
.L503:
	.loc 1 1344 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp310
	movq	-48(%rbp), %rax	# err, tmp311
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp310,
	movq	%rax, %rdi	# tmp311,
	call	Perl_sv_2pv_flags	#
.L504:
	.loc 1 1344 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.559, e
	.loc 1 1345 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rdx	# n_a, n_a.561
	movq	-112(%rbp), %rax	# msglen, msglen.562
	subq	%rax, %rdx	# msglen.562, D.19235
	movq	%rdx, %rax	# D.19235, D.19235
	addq	%rax, -56(%rbp)	# D.19235, e
	.loc 1 1346 0 discriminator 3
	movq	-56(%rbp), %rax	# e, tmp312
	movzbl	(%rax), %edx	# *e_40, D.19236
	movq	-104(%rbp), %rax	# message, tmp313
	movzbl	(%rax), %eax	# *message_15(D), D.19236
	cmpb	%al, %dl	# D.19236, D.19236
	jne	.L505	#,
	.loc 1 1346 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rdx	# message, tmp314
	movq	-56(%rbp), %rax	# e, tmp315
	movq	%rdx, %rsi	# tmp314,
	movq	%rax, %rdi	# tmp315,
	call	strcmp	#
	testl	%eax, %eax	# D.19230
	je	.L502	#,
.L505:
	.loc 1 1347 0 is_stmt 1
	movq	$0, -56(%rbp)	#, e
.L502:
	.loc 1 1349 0
	cmpq	$0, -56(%rbp)	#, e
	jne	.L506	#,
	.loc 1 1350 0
	movq	-48(%rbp), %rax	# err, tmp316
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_45].xpv_len, D.19235
	movq	-48(%rbp), %rax	# err, tmp317
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_47].xpv_cur, D.19235
	movq	-112(%rbp), %rax	# msglen, msglen.564
	addq	%rcx, %rax	# D.19235, D.19235
	addq	$15, %rax	#, D.19235
	cmpq	%rax, %rdx	# D.19235, D.19235
	jae	.L508	#,
	.loc 1 1350 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# err, tmp318
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_52].xpv_cur, D.19235
	movq	-112(%rbp), %rax	# msglen, msglen.565
	addq	%rdx, %rax	# D.19235, D.19235
	leaq	15(%rax), %rdx	#, D.19235
	movq	-48(%rbp), %rax	# err, tmp319
	movq	%rdx, %rsi	# D.19235,
	movq	%rax, %rdi	# tmp319,
	call	Perl_sv_grow	#
.L508:
	.loc 1 1351 0 is_stmt 1
	movq	-48(%rbp), %rax	# err, tmp321
	movl	$2, %ecx	#,
	movl	$14, %edx	#,
	movl	$prefix.10700, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1352 0
	movq	-112(%rbp), %rdx	# msglen, msglen.566
	movq	-104(%rbp), %rsi	# message, tmp322
	movq	-48(%rbp), %rax	# err, tmp323
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp323,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1353 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.567
	movq	80(%rax), %rax	# PL_curcop.567_61->cop_warnings, D.19237
	testq	%rax, %rax	# D.19237
	je	.L509	#,
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.568
	movq	80(%rax), %rax	# PL_curcop.568_63->cop_warnings, D.19237
	cmpq	$32, %rax	#, D.19237
	je	.L509	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.569
	movq	80(%rax), %rax	# PL_curcop.569_65->cop_warnings, D.19237
	cmpq	$16, %rax	#, D.19237
	je	.L510	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.570
	movq	80(%rax), %rax	# PL_curcop.570_67->cop_warnings, D.19237
	movq	(%rax), %rax	# _68->sv_any, D.19234
	movq	(%rax), %rax	# MEM[(struct XPV *)_69].xpv_pv, D.19238
	addq	$3, %rax	#, D.19238
	movzbl	(%rax), %eax	# *_71, D.19236
	movsbl	%al, %eax	# D.19236, D.19230
	andl	$1, %eax	#, D.19230
	testl	%eax, %eax	# D.19230
	jne	.L510	#,
.L509:
	.loc 1 1353 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.571
	movq	80(%rax), %rax	# PL_curcop.571_75->cop_warnings, D.19237
	testq	%rax, %rax	# D.19237
	jne	.L506	#,
	.loc 1 1353 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.572
	movzbl	%al, %eax	# PL_dowarn.572, D.19230
	andl	$1, %eax	#, D.19230
	testl	%eax, %eax	# D.19230
	je	.L506	#,
.L510:
.LBB37:
	.loc 1 1354 0 is_stmt 1
	movq	-48(%rbp), %rax	# err, tmp324
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_80].xpv_cur, D.19235
	movq	-112(%rbp), %rax	# msglen, msglen.573
	subq	%rax, %rdx	# msglen.573, D.19235
	movq	%rdx, %rax	# D.19235, D.19235
	subq	$14, %rax	#, tmp325
	movq	%rax, -40(%rbp)	# tmp325, start
	.loc 1 1355 0
	movq	-48(%rbp), %rax	# err, tmp326
	movq	(%rax), %rax	# err_21->sv_any, D.19234
	movq	(%rax), %rdx	# MEM[(struct XPV *)_85].xpv_pv, D.19238
	movq	-40(%rbp), %rax	# start, tmp327
	addq	%rdx, %rax	# D.19238, D.19239
	movq	%rax, %rsi	# D.19239,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.LBE37:
.LBE36:
	jmp	.L499	#
.L506:
	jmp	.L499	#
.L500:
	.loc 1 1360 0
	movq	-112(%rbp), %rdx	# msglen, msglen.574
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.575
	movq	(%rax), %rax	# PL_errgv.575_89->sv_any, D.19231
	movq	56(%rax), %rax	# _90->xgv_gp, D.19232
	movq	(%rax), %rax	# _91->gp_sv, D.19237
	movq	-104(%rbp), %rcx	# message, tmp328
	movq	%rcx, %rsi	# tmp328,
	movq	%rax, %rdi	# D.19237,
	call	Perl_sv_setpvn	#
	.loc 1 1364 0
	jmp	.L511	#
.L499:
	jmp	.L511	#
.L516:
	.loc 1 1367 0
	movl	$-1, %edi	#,
	call	Perl_dounwind	#
.LBB38:
	.loc 1 1368 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.576
	movq	32(%rax), %rax	# PL_curstackinfo.576_99->si_prev, tmp329
	movq	%rax, -32(%rbp)	# tmp329, prev
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L512	#,
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.578
	testq	%rax, %rax	# PL_stderrgv.578
	je	.L513	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.579
	movl	12(%rax), %eax	# PL_stderrgv.579_102->sv_flags, D.19233
	movzbl	%al, %eax	# D.19233, D.19233
	cmpl	$13, %eax	#, D.19233
	jne	.L513	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.580
	movq	(%rax), %rax	# PL_stderrgv.580_105->sv_any, D.19231
	movq	56(%rax), %rax	# _106->xgv_gp, D.19232
	movq	16(%rax), %rax	# _107->gp_io, D.19241
	testq	%rax, %rax	# D.19241
	je	.L513	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.581
	movq	(%rax), %rax	# PL_stderrgv.581_109->sv_any, D.19231
	movq	56(%rax), %rax	# _110->xgv_gp, D.19232
	movq	16(%rax), %rax	# _111->gp_io, D.19241
	movq	(%rax), %rax	# _112->sv_any, D.19242
	movq	64(%rax), %rax	# _113->xio_ofp, D.19243
	testq	%rax, %rax	# D.19243
	je	.L513	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.582
	movq	(%rax), %rax	# PL_stderrgv.582_115->sv_any, D.19231
	movq	56(%rax), %rax	# _116->xgv_gp, D.19232
	movq	16(%rax), %rax	# _117->gp_io, D.19241
	movq	(%rax), %rax	# _118->sv_any, D.19242
	movq	64(%rax), %rax	# _119->xio_ofp, iftmp.577
	jmp	.L514	#
.L513:
	.loc 1 1368 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L514:
	.loc 1 1368 0 discriminator 3
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# iftmp.577,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L512:
.LBB39:
	.loc 1 1368 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.583
	movq	(%rax), %rax	# PL_curstack.583_122->sv_any, D.19244
	movq	%rbx, %rcx	# sp, sp.584
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.585
	subq	%rdx, %rcx	# PL_stack_base.586, D.19245
	movq	%rcx, %rdx	# D.19245, D.19245
	sarq	$3, %rdx	#, tmp330
	movq	%rdx, 8(%rax)	# D.19245, _123->xav_fill
	movq	-32(%rbp), %rax	# prev, tmp331
	movq	(%rax), %rax	# prev_100->si_stack, D.19246
	movq	(%rax), %rax	# _129->sv_any, D.19244
	movq	(%rax), %rax	# _130->xav_array, PL_stack_base.587
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.587, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.588
	movq	-32(%rbp), %rax	# prev, tmp332
	movq	(%rax), %rax	# prev_100->si_stack, D.19246
	movq	(%rax), %rax	# _133->sv_any, D.19244
	movq	16(%rax), %rax	# _134->xav_max, D.19245
	salq	$3, %rax	#, D.19235
	addq	%rdx, %rax	# PL_stack_base.588, PL_stack_max.589
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.589, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.590
	movq	-32(%rbp), %rax	# prev, tmp333
	movq	(%rax), %rax	# prev_100->si_stack, D.19246
	movq	(%rax), %rax	# _140->sv_any, D.19244
	movq	8(%rax), %rax	# _141->xav_fill, D.19245
	salq	$3, %rax	#, D.19235
	addq	%rdx, %rax	# PL_stack_base.590, PL_stack_sp.591
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.591, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# prev, tmp334
	movq	(%rax), %rax	# prev_100->si_stack, PL_curstack.592
	movq	%rax, PL_curstack(%rip)	# PL_curstack.592, PL_curstack
.LBE39:
	movq	-32(%rbp), %rax	# prev, tmp335
	movq	%rax, PL_curstackinfo(%rip)	# tmp335, PL_curstackinfo
.L511:
.LBE38:
	.loc 1 1364 0 is_stmt 1 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.593
	movl	16(%rax), %eax	# PL_curstackinfo.593_93->si_cxix, D.19230
	movl	%eax, %edi	# D.19230,
	call	S_dopoptoeval	#
	movl	%eax, -84(%rbp)	# tmp336, cxix
	cmpl	$0, -84(%rbp)	#, cxix
	jns	.L515	#,
	.loc 1 1365 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.594
	movq	32(%rax), %rax	# PL_curstackinfo.594_96->si_prev, D.19240
	testq	%rax, %rax	# D.19240
	jne	.L516	#,
.L515:
	.loc 1 1371 0
	cmpl	$0, -84(%rbp)	#, cxix
	js	.L498	#,
.LBB40:
	.loc 1 1374 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.595
	movl	16(%rax), %eax	# PL_curstackinfo.595_150->si_cxix, D.19230
	cmpl	-84(%rbp), %eax	# cxix, D.19230
	jle	.L517	#,
	.loc 1 1375 0
	movl	-84(%rbp), %eax	# cxix, tmp337
	movl	%eax, %edi	# tmp337,
	call	Perl_dounwind	#
.L517:
	.loc 1 1377 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.596
	movq	8(%rax), %rsi	# PL_curstackinfo.596_152->si_cxstack, D.19248
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.597
	movl	16(%rax), %edx	# PL_curstackinfo.597_154->si_cxix, D.19230
	leal	-1(%rdx), %ecx	#, D.19230
	movl	%ecx, 16(%rax)	# D.19230, PL_curstackinfo.597_154->si_cxix
	movslq	%edx, %rdx	# D.19230, D.19235
	movq	%rdx, %rax	# D.19235, tmp338
	salq	$3, %rax	#, tmp338
	addq	%rdx, %rax	# D.19235, tmp338
	salq	$4, %rax	#, tmp339
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.598
	movl	8(%rbx), %edx	# cx_160->cx_u.cx_blk.blku_oldsp, D.19230
	movslq	%edx, %rdx	# D.19230, D.19235
	salq	$3, %rdx	#, D.19235
	addq	%rdx, %rax	# D.19235, tmp340
	movq	%rax, -64(%rbp)	# tmp340, newsp
	movq	16(%rbx), %rax	# cx_160->cx_u.cx_blk.blku_oldcop, PL_curcop.599
	movq	%rax, PL_curcop(%rip)	# PL_curcop.599, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.600
	movl	28(%rbx), %edx	# cx_160->cx_u.cx_blk.blku_oldmarksp, D.19230
	movslq	%edx, %rdx	# D.19230, D.19235
	salq	$2, %rdx	#, D.19235
	addq	%rdx, %rax	# D.19235, PL_markstack_ptr.601
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.601, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_160->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.602
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.602, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_160->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.603
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.603, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_160->cx_u.cx_blk.blku_oldpm, PL_curpm.604
	movq	%rax, PL_curpm(%rip)	# PL_curpm.604, PL_curpm
	movzbl	48(%rbx), %eax	# cx_160->cx_u.cx_blk.blku_gimme, D.19249
	movzbl	%al, %eax	# D.19249, tmp341
	movl	%eax, -80(%rbp)	# tmp341, gimme
	.loc 1 1378 0
	movl	(%rbx), %eax	# cx_160->cx_type, D.19233
	movzbl	%al, %eax	# D.19233, D.19233
	cmpl	$2, %eax	#, D.19233
	je	.L518	#,
	.loc 1 1379 0
	cmpq	$0, -104(%rbp)	#, message
	jne	.L519	#,
	.loc 1 1380 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.605
	movq	(%rax), %rax	# PL_errgv.605_179->sv_any, D.19231
	movq	56(%rax), %rax	# _180->xgv_gp, D.19232
	movq	(%rax), %rax	# _181->gp_sv, PL_Sv.606
	movq	%rax, PL_Sv(%rip)	# PL_Sv.606, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.608
	movl	12(%rax), %eax	# PL_Sv.608_183->sv_flags, D.19233
	andl	$262144, %eax	#, D.19233
	testl	%eax, %eax	# D.19233
	je	.L520	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.609
	movq	(%rax), %rax	# PL_Sv.609_186->sv_any, D.19234
	movq	8(%rax), %rax	# MEM[(struct XPV *)_187].xpv_cur, msglen.610
	movq	%rax, -112(%rbp)	# msglen.610, msglen
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.611
	movq	(%rax), %rax	# PL_Sv.611_189->sv_any, D.19234
	movq	(%rax), %rax	# MEM[(struct XPV *)_190].xpv_pv, iftmp.607
	jmp	.L521	#
.L520:
	.loc 1 1380 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.612
	leaq	-112(%rbp), %rcx	#, tmp342
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp342,
	movq	%rax, %rdi	# PL_Sv.612,
	call	Perl_sv_2pv_flags	#
.L521:
	.loc 1 1380 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.607, message
.L519:
	.loc 1 1381 0 is_stmt 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.614
	testq	%rax, %rax	# PL_stderrgv.614
	je	.L522	#,
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.615
	movl	12(%rax), %eax	# PL_stderrgv.615_196->sv_flags, D.19233
	movzbl	%al, %eax	# D.19233, D.19233
	cmpl	$13, %eax	#, D.19233
	jne	.L522	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.616
	movq	(%rax), %rax	# PL_stderrgv.616_199->sv_any, D.19231
	movq	56(%rax), %rax	# _200->xgv_gp, D.19232
	movq	16(%rax), %rax	# _201->gp_io, D.19241
	testq	%rax, %rax	# D.19241
	je	.L522	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.617
	movq	(%rax), %rax	# PL_stderrgv.617_203->sv_any, D.19231
	movq	56(%rax), %rax	# _204->xgv_gp, D.19232
	movq	16(%rax), %rax	# _205->gp_io, D.19241
	movq	(%rax), %rax	# _206->sv_any, D.19242
	movq	64(%rax), %rax	# _207->xio_ofp, D.19243
	testq	%rax, %rax	# D.19243
	je	.L522	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.618
	movq	(%rax), %rax	# PL_stderrgv.618_209->sv_any, D.19231
	movq	56(%rax), %rax	# _210->xgv_gp, D.19232
	movq	16(%rax), %rax	# _211->gp_io, D.19241
	movq	(%rax), %rax	# _212->sv_any, D.19242
	movq	64(%rax), %rax	# _213->xio_ofp, iftmp.613
	jmp	.L523	#
.L522:
	.loc 1 1381 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L523:
	.loc 1 1381 0 discriminator 3
	movl	$11, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# iftmp.613,
	call	Perl_PerlIO_write	#
	.loc 1 1382 0 is_stmt 1 discriminator 3
	movq	-112(%rbp), %r12	# msglen, msglen.619
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.621
	testq	%rax, %rax	# PL_stderrgv.621
	je	.L524	#,
	.loc 1 1382 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.622
	movl	12(%rax), %eax	# PL_stderrgv.622_218->sv_flags, D.19233
	movzbl	%al, %eax	# D.19233, D.19233
	cmpl	$13, %eax	#, D.19233
	jne	.L524	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.623
	movq	(%rax), %rax	# PL_stderrgv.623_221->sv_any, D.19231
	movq	56(%rax), %rax	# _222->xgv_gp, D.19232
	movq	16(%rax), %rax	# _223->gp_io, D.19241
	testq	%rax, %rax	# D.19241
	je	.L524	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.624
	movq	(%rax), %rax	# PL_stderrgv.624_225->sv_any, D.19231
	movq	56(%rax), %rax	# _226->xgv_gp, D.19232
	movq	16(%rax), %rax	# _227->gp_io, D.19241
	movq	(%rax), %rax	# _228->sv_any, D.19242
	movq	64(%rax), %rax	# _229->xio_ofp, D.19243
	testq	%rax, %rax	# D.19243
	je	.L524	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.625
	movq	(%rax), %rax	# PL_stderrgv.625_231->sv_any, D.19231
	movq	56(%rax), %rax	# _232->xgv_gp, D.19232
	movq	16(%rax), %rax	# _233->gp_io, D.19241
	movq	(%rax), %rax	# _234->sv_any, D.19242
	movq	64(%rax), %rax	# _235->xio_ofp, iftmp.620
	jmp	.L525	#
.L524:
	.loc 1 1382 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L525:
	.loc 1 1382 0 discriminator 3
	movq	-104(%rbp), %rcx	# message, tmp343
	movq	%r12, %rdx	# msglen.619,
	movq	%rcx, %rsi	# tmp343,
	movq	%rax, %rdi	# iftmp.620,
	call	Perl_PerlIO_write	#
	.loc 1 1383 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L518:
.LBB41:
	.loc 1 1385 0
	movl	56(%rbx), %eax	# cx_160->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.626
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.626, PL_in_eval
	movl	60(%rbx), %eax	# cx_160->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp344
	movl	%eax, -76(%rbp)	# tmp344, optype
	movq	72(%rbx), %rax	# cx_160->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.627
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.627, PL_eval_root
	movq	64(%rbx), %rax	# cx_160->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19237
	testq	%rax, %rax	# D.19237
	je	.L526	#,
	.loc 1 1385 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_160->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19237
	movq	%rax, %rdi	# D.19237,
	call	Perl_sv_2mortal	#
.L526:
.LBE41:
	.loc 1 1387 0 is_stmt 1
	cmpl	$0, -80(%rbp)	#, gimme
	jne	.L527	#,
	.loc 1 1388 0
	addq	$8, -64(%rbp)	#, newsp
	movq	-64(%rbp), %rax	# newsp, tmp345
	movq	$PL_sv_undef, (%rax)	#, *newsp_243
.L527:
	.loc 1 1389 0
	movq	-64(%rbp), %rax	# newsp, tmp346
	movq	%rax, PL_stack_sp(%rip)	# tmp346, PL_stack_sp
	.loc 1 1391 0
	call	Perl_pop_scope	#
	.loc 1 1397 0
	movq	16(%rbx), %rax	# cx_160->cx_u.cx_blk.blku_oldcop, PL_curcop.628
	movq	%rax, PL_curcop(%rip)	# PL_curcop.628, PL_curcop
	.loc 1 1399 0
	cmpl	$309, -76(%rbp)	#, optype
	jne	.L528	#,
.LBB42:
	.loc 1 1400 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.629
	movq	(%rax), %rax	# PL_errgv.629_245->sv_any, D.19231
	movq	56(%rax), %rax	# _246->xgv_gp, D.19232
	movq	(%rax), %rax	# _247->gp_sv, PL_Sv.630
	movq	%rax, PL_Sv(%rip)	# PL_Sv.630, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.632
	movl	12(%rax), %eax	# PL_Sv.632_249->sv_flags, D.19233
	andl	$262144, %eax	#, D.19233
	testl	%eax, %eax	# D.19233
	je	.L529	#,
	.loc 1 1400 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.633
	movq	(%rax), %rax	# PL_Sv.633_252->sv_any, D.19234
	movq	8(%rax), %rax	# MEM[(struct XPV *)_253].xpv_cur, n_a.634
	movq	%rax, -72(%rbp)	# n_a.634, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.635
	movq	(%rax), %rax	# PL_Sv.635_255->sv_any, D.19234
	movq	(%rax), %rax	# MEM[(struct XPV *)_256].xpv_pv, iftmp.631
	jmp	.L530	#
.L529:
	.loc 1 1400 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.636
	leaq	-72(%rbp), %rcx	#, tmp347
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp347,
	movq	%rax, %rdi	# PL_Sv.636,
	call	Perl_sv_2pv_flags	#
.L530:
	.loc 1 1400 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.631, msg
	.loc 1 1402 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# msg, tmp348
	movzbl	(%rax), %eax	# *msg_260, D.19236
	.loc 1 1401 0 discriminator 3
	testb	%al, %al	# D.19236
	je	.L531	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msg, iftmp.637
	jmp	.L532	#
.L531:
	.loc 1 1401 0 discriminator 2
	movl	$.LC29, %eax	#, iftmp.637
.L532:
	.loc 1 1401 0 discriminator 3
	movq	%rax, %rsi	# iftmp.637,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L537	#
.L528:
.LBE42:
	.loc 1 1404 0 is_stmt 1
	call	Perl_pop_return	#
	jmp	.L537	#
.L498:
.LBE40:
.LBE35:
	.loc 1 1407 0
	cmpq	$0, -104(%rbp)	#, message
	jne	.L534	#,
	.loc 1 1408 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.638
	movq	(%rax), %rax	# PL_errgv.638_266->sv_any, D.19231
	movq	56(%rax), %rax	# _267->xgv_gp, D.19232
	movq	(%rax), %rax	# _268->gp_sv, PL_Sv.639
	movq	%rax, PL_Sv(%rip)	# PL_Sv.639, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.641
	movl	12(%rax), %eax	# PL_Sv.641_270->sv_flags, D.19233
	andl	$262144, %eax	#, D.19233
	testl	%eax, %eax	# D.19233
	je	.L535	#,
	.loc 1 1408 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.642
	movq	(%rax), %rax	# PL_Sv.642_273->sv_any, D.19234
	movq	8(%rax), %rax	# MEM[(struct XPV *)_274].xpv_cur, msglen.643
	movq	%rax, -112(%rbp)	# msglen.643, msglen
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.644
	movq	(%rax), %rax	# PL_Sv.644_276->sv_any, D.19234
	movq	(%rax), %rax	# MEM[(struct XPV *)_277].xpv_pv, iftmp.640
	jmp	.L536	#
.L535:
	.loc 1 1408 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.645
	leaq	-112(%rbp), %rcx	#, tmp349
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp349,
	movq	%rax, %rdi	# PL_Sv.645,
	call	Perl_sv_2pv_flags	#
.L536:
	.loc 1 1408 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.640, message
.L534:
	.loc 1 1410 0 is_stmt 1
	movq	-112(%rbp), %rax	# msglen, msglen.646
	movl	%eax, %edx	# msglen.646, D.19230
	movq	-104(%rbp), %rax	# message, tmp350
	movl	%edx, %esi	# D.19230,
	movq	%rax, %rdi	# tmp350,
	call	Perl_write_to_stderr	#
	.loc 1 1411 0
	call	Perl_my_failure_exit	#
	.loc 1 1413 0
	movl	$0, %eax	#, D.19229
.L537:
	.loc 1 1414 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_die_where, .-Perl_die_where
	.globl	Perl_pp_xor
	.type	Perl_pp_xor, @function
Perl_pp_xor:
.LFB28:
	.loc 1 1417 0
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
	.loc 1 1418 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	%rbx, %rax	# sp, sp.647
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.647_13, tmp119
	movq	%rax, -32(%rbp)	# tmp119, right
	movq	(%rbx), %rax	# *sp_14, tmp120
	movq	%rax, -24(%rbp)	# tmp120, left
	.loc 1 1419 0
	cmpq	$0, -24(%rbp)	#, left
	je	.L539	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# left, tmp121
	movl	12(%rax), %eax	# left_16->sv_flags, D.19255
	andl	$262144, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L540	#,
	movq	-24(%rbp), %rax	# left, tmp122
	movq	(%rax), %rax	# left_16->sv_any, PL_Xpv.651
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.651, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.652
	testq	%rax, %rax	# PL_Xpv.652
	je	.L541	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.653
	movq	8(%rax), %rax	# PL_Xpv.653_21->xpv_cur, D.19256
	cmpq	$1, %rax	#, D.19256
	ja	.L542	#,
	.loc 1 1419 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.654
	movq	8(%rax), %rax	# PL_Xpv.654_23->xpv_cur, D.19256
	testq	%rax, %rax	# D.19256
	je	.L541	#,
	.loc 1 1419 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.655
	movq	(%rax), %rax	# PL_Xpv.655_25->xpv_pv, D.19257
	movzbl	(%rax), %eax	# *_26, D.19258
	cmpb	$48, %al	#, D.19258
	je	.L541	#,
.L542:
	.loc 1 1419 0 discriminator 3
	movl	$1, %eax	#, iftmp.650
	jmp	.L543	#
.L541:
	.loc 1 1419 0 discriminator 2
	movl	$0, %eax	#, iftmp.650
.L543:
	jmp	.L544	#
.L540:
	movq	-24(%rbp), %rax	# left, tmp123
	movl	12(%rax), %eax	# left_16->sv_flags, D.19255
	andl	$65536, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L545	#,
	.loc 1 1419 0 discriminator 1
	movq	-24(%rbp), %rax	# left, tmp124
	movq	(%rax), %rax	# left_16->sv_any, D.19259
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_33].xiv_iv, D.19260
	testq	%rax, %rax	# D.19260
	setne	%al	#, D.19261
	movzbl	%al, %eax	# D.19261, iftmp.656
	jmp	.L544	#
.L545:
	.loc 1 1419 0 discriminator 2
	movq	-24(%rbp), %rax	# left, tmp125
	movl	12(%rax), %eax	# left_16->sv_flags, D.19255
	andl	$131072, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L547	#,
	.loc 1 1419 0 discriminator 1
	movq	-24(%rbp), %rax	# left, tmp126
	movq	(%rax), %rax	# left_16->sv_any, D.19259
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_39].xnv_nv, D.19262
	xorpd	%xmm1, %xmm1	# tmp128
	ucomisd	%xmm1, %xmm0	# tmp128, D.19262
	setp	%dl	#, tmp127
	movl	$1, %eax	#, tmp130
	xorpd	%xmm1, %xmm1	# tmp129
	ucomisd	%xmm1, %xmm0	# tmp129, D.19262
	cmove	%edx, %eax	# tmp127,, D.19261
	movzbl	%al, %eax	# D.19261, iftmp.657
	jmp	.L544	#
.L547:
	.loc 1 1419 0 discriminator 2
	movq	-24(%rbp), %rax	# left, tmp131
	movq	%rax, %rdi	# tmp131,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.19258, iftmp.657
.L544:
	.loc 1 1419 0 discriminator 1
	movl	%eax, %r12d	# iftmp.649, iftmp.648
	jmp	.L549	#
.L539:
	.loc 1 1419 0 discriminator 2
	movl	$0, %r12d	#, iftmp.648
.L549:
	.loc 1 1419 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, right
	je	.L550	#,
	.loc 1 1419 0 discriminator 1
	movq	-32(%rbp), %rax	# right, tmp132
	movl	12(%rax), %eax	# right_15->sv_flags, D.19255
	andl	$262144, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L551	#,
	movq	-32(%rbp), %rax	# right, tmp133
	movq	(%rax), %rax	# right_15->sv_any, PL_Xpv.661
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.661, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.662
	testq	%rax, %rax	# PL_Xpv.662
	je	.L552	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.663
	movq	8(%rax), %rax	# PL_Xpv.663_53->xpv_cur, D.19256
	cmpq	$1, %rax	#, D.19256
	ja	.L553	#,
	.loc 1 1419 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.664
	movq	8(%rax), %rax	# PL_Xpv.664_55->xpv_cur, D.19256
	testq	%rax, %rax	# D.19256
	je	.L552	#,
	.loc 1 1419 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.665
	movq	(%rax), %rax	# PL_Xpv.665_57->xpv_pv, D.19257
	movzbl	(%rax), %eax	# *_58, D.19258
	cmpb	$48, %al	#, D.19258
	je	.L552	#,
.L553:
	.loc 1 1419 0 discriminator 3
	movl	$1, %eax	#, iftmp.660
	jmp	.L554	#
.L552:
	.loc 1 1419 0 discriminator 2
	movl	$0, %eax	#, iftmp.660
.L554:
	jmp	.L560	#
.L551:
	movq	-32(%rbp), %rax	# right, tmp134
	movl	12(%rax), %eax	# right_15->sv_flags, D.19255
	andl	$65536, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L556	#,
	.loc 1 1419 0 discriminator 1
	movq	-32(%rbp), %rax	# right, tmp135
	movq	(%rax), %rax	# right_15->sv_any, D.19259
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_65].xiv_iv, D.19260
	testq	%rax, %rax	# D.19260
	setne	%al	#, D.19261
	movzbl	%al, %eax	# D.19261, iftmp.666
	jmp	.L560	#
.L556:
	.loc 1 1419 0 discriminator 2
	movq	-32(%rbp), %rax	# right, tmp136
	movl	12(%rax), %eax	# right_15->sv_flags, D.19255
	andl	$131072, %eax	#, D.19255
	testl	%eax, %eax	# D.19255
	je	.L558	#,
	.loc 1 1419 0 discriminator 1
	movq	-32(%rbp), %rax	# right, tmp137
	movq	(%rax), %rax	# right_15->sv_any, D.19259
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_71].xnv_nv, D.19262
	xorpd	%xmm1, %xmm1	# tmp139
	ucomisd	%xmm1, %xmm0	# tmp139, D.19262
	setp	%dl	#, tmp138
	movl	$1, %eax	#, tmp141
	xorpd	%xmm1, %xmm1	# tmp140
	ucomisd	%xmm1, %xmm0	# tmp140, D.19262
	cmove	%edx, %eax	# tmp138,, D.19261
	movzbl	%al, %eax	# D.19261, iftmp.667
	jmp	.L560	#
.L558:
	.loc 1 1419 0 discriminator 2
	movq	-32(%rbp), %rax	# right, tmp142
	movq	%rax, %rdi	# tmp142,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.19258, iftmp.667
	jmp	.L560	#
.L550:
	movl	$0, %eax	#, iftmp.658
.L560:
	.loc 1 1419 0 discriminator 3
	cmpl	%eax, %r12d	# iftmp.658, iftmp.648
	je	.L561	#,
	.loc 1 1420 0 is_stmt 1
	movq	$PL_sv_yes, (%rbx)	#, *sp_14
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.668
	movq	(%rax), %rax	# PL_op.668_81->op_next, D.19254
	jmp	.L562	#
.L561:
	.loc 1 1422 0
	movq	$PL_sv_no, (%rbx)	#, *sp_14
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.669
	movq	(%rax), %rax	# PL_op.669_83->op_next, D.19254
.L562:
	.loc 1 1423 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_pp_xor, .-Perl_pp_xor
	.globl	Perl_pp_andassign
	.type	Perl_pp_andassign, @function
Perl_pp_andassign:
.LFB29:
	.loc 1 1426 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1427 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1428 0
	movq	(%rbx), %rax	# *sp_7, D.19264
	testq	%rax, %rax	# D.19264
	je	.L564	#,
	.loc 1 1428 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_7, D.19264
	movl	12(%rax), %eax	# _9->sv_flags, D.19265
	andl	$262144, %eax	#, D.19265
	testl	%eax, %eax	# D.19265
	je	.L565	#,
	.loc 1 1428 0 discriminator 3
	movq	(%rbx), %rax	# *sp_7, D.19264
	movq	(%rax), %rax	# _12->sv_any, PL_Xpv.673
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.673, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.674
	testq	%rax, %rax	# PL_Xpv.674
	je	.L566	#,
	.loc 1 1428 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.675
	movq	8(%rax), %rax	# PL_Xpv.675_15->xpv_cur, D.19266
	cmpq	$1, %rax	#, D.19266
	ja	.L567	#,
	.loc 1 1428 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.676
	movq	8(%rax), %rax	# PL_Xpv.676_17->xpv_cur, D.19266
	testq	%rax, %rax	# D.19266
	je	.L566	#,
	.loc 1 1428 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.677
	movq	(%rax), %rax	# PL_Xpv.677_19->xpv_pv, D.19267
	movzbl	(%rax), %eax	# *_20, D.19268
	cmpb	$48, %al	#, D.19268
	jne	.L567	#,
.L566:
	.loc 1 1428 0 discriminator 5
	movl	$1, %eax	#, iftmp.672
	jmp	.L568	#
.L567:
	.loc 1 1428 0 discriminator 8
	movl	$0, %eax	#, iftmp.672
.L568:
	.loc 1 1428 0 discriminator 9
	andl	$1, %eax	#, iftmp.671
	jmp	.L574	#
.L565:
	.loc 1 1428 0 discriminator 4
	movq	(%rbx), %rax	# *sp_7, D.19264
	movl	12(%rax), %eax	# _25->sv_flags, D.19265
	andl	$65536, %eax	#, D.19265
	testl	%eax, %eax	# D.19265
	je	.L570	#,
	.loc 1 1428 0 discriminator 10
	movq	(%rbx), %rax	# *sp_7, D.19264
	movq	(%rax), %rax	# _28->sv_any, D.19269
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_29].xiv_iv, D.19270
	testq	%rax, %rax	# D.19270
	sete	%al	#, iftmp.678
	jmp	.L574	#
.L570:
	.loc 1 1428 0 discriminator 11
	movq	(%rbx), %rax	# *sp_7, D.19264
	movl	12(%rax), %eax	# _32->sv_flags, D.19265
	andl	$131072, %eax	#, D.19265
	testl	%eax, %eax	# D.19265
	je	.L572	#,
	.loc 1 1428 0 discriminator 12
	movq	(%rbx), %rax	# *sp_7, D.19264
	movq	(%rax), %rax	# _35->sv_any, D.19269
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_36].xnv_nv, D.19271
	xorpd	%xmm1, %xmm1	# tmp98
	ucomisd	%xmm1, %xmm0	# tmp98, D.19271
	setnp	%dl	#, tmp97
	movl	$0, %eax	#, tmp100
	xorpd	%xmm1, %xmm1	# tmp99
	ucomisd	%xmm1, %xmm0	# tmp99, D.19271
	cmove	%edx, %eax	# tmp97,, iftmp.679
	jmp	.L574	#
.L572:
	.loc 1 1428 0 discriminator 13
	movq	(%rbx), %rax	# *sp_7, D.19264
	movq	%rax, %rdi	# D.19264,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.19268
	sete	%al	#, iftmp.679
	jmp	.L574	#
.L564:
	.loc 1 1428 0 discriminator 2
	movl	$1, %eax	#, iftmp.670
.L574:
	.loc 1 1428 0 discriminator 16
	testb	%al, %al	# iftmp.670
	je	.L575	#,
	.loc 1 1429 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.680
	movq	(%rax), %rax	# PL_op.680_46->op_next, D.19263
	jmp	.L576	#
.L575:
	.loc 1 1431 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.681
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.681_48].op_other, D.19263
.L576:
	.loc 1 1432 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_pp_andassign, .-Perl_pp_andassign
	.globl	Perl_pp_orassign
	.type	Perl_pp_orassign, @function
Perl_pp_orassign:
.LFB30:
	.loc 1 1435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1436 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1437 0
	movq	(%rbx), %rax	# *sp_7, D.19273
	testq	%rax, %rax	# D.19273
	je	.L578	#,
	.loc 1 1437 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_7, D.19273
	movl	12(%rax), %eax	# _9->sv_flags, D.19274
	andl	$262144, %eax	#, D.19274
	testl	%eax, %eax	# D.19274
	je	.L579	#,
	.loc 1 1437 0 discriminator 3
	movq	(%rbx), %rax	# *sp_7, D.19273
	movq	(%rax), %rax	# _12->sv_any, PL_Xpv.685
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.685, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.686
	testq	%rax, %rax	# PL_Xpv.686
	je	.L580	#,
	.loc 1 1437 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.687
	movq	8(%rax), %rax	# PL_Xpv.687_15->xpv_cur, D.19275
	cmpq	$1, %rax	#, D.19275
	ja	.L581	#,
	.loc 1 1437 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.688
	movq	8(%rax), %rax	# PL_Xpv.688_17->xpv_cur, D.19275
	testq	%rax, %rax	# D.19275
	je	.L580	#,
	.loc 1 1437 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.689
	movq	(%rax), %rax	# PL_Xpv.689_19->xpv_pv, D.19276
	movzbl	(%rax), %eax	# *_20, D.19277
	cmpb	$48, %al	#, D.19277
	je	.L580	#,
.L581:
	.loc 1 1437 0 discriminator 7
	movl	$1, %eax	#, iftmp.684
	jmp	.L582	#
.L580:
	.loc 1 1437 0 discriminator 6
	movl	$0, %eax	#, iftmp.684
.L582:
	.loc 1 1437 0 discriminator 9
	andl	$1, %eax	#, iftmp.683
	jmp	.L588	#
.L579:
	.loc 1 1437 0 discriminator 4
	movq	(%rbx), %rax	# *sp_7, D.19273
	movl	12(%rax), %eax	# _25->sv_flags, D.19274
	andl	$65536, %eax	#, D.19274
	testl	%eax, %eax	# D.19274
	je	.L584	#,
	.loc 1 1437 0 discriminator 10
	movq	(%rbx), %rax	# *sp_7, D.19273
	movq	(%rax), %rax	# _28->sv_any, D.19278
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_29].xiv_iv, D.19279
	testq	%rax, %rax	# D.19279
	setne	%al	#, iftmp.690
	jmp	.L588	#
.L584:
	.loc 1 1437 0 discriminator 11
	movq	(%rbx), %rax	# *sp_7, D.19273
	movl	12(%rax), %eax	# _32->sv_flags, D.19274
	andl	$131072, %eax	#, D.19274
	testl	%eax, %eax	# D.19274
	je	.L586	#,
	.loc 1 1437 0 discriminator 12
	movq	(%rbx), %rax	# *sp_7, D.19273
	movq	(%rax), %rax	# _35->sv_any, D.19278
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_36].xnv_nv, D.19280
	xorpd	%xmm1, %xmm1	# tmp98
	ucomisd	%xmm1, %xmm0	# tmp98, D.19280
	setp	%dl	#, tmp97
	movl	$1, %eax	#, tmp100
	xorpd	%xmm1, %xmm1	# tmp99
	ucomisd	%xmm1, %xmm0	# tmp99, D.19280
	cmove	%edx, %eax	# tmp97,, iftmp.691
	jmp	.L588	#
.L586:
	.loc 1 1437 0 discriminator 13
	movq	(%rbx), %rax	# *sp_7, D.19273
	movq	%rax, %rdi	# D.19273,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.19277
	setne	%al	#, iftmp.691
	jmp	.L588	#
.L578:
	.loc 1 1437 0 discriminator 2
	movl	$0, %eax	#, iftmp.682
.L588:
	.loc 1 1437 0 discriminator 16
	testb	%al, %al	# iftmp.682
	je	.L589	#,
	.loc 1 1438 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.692
	movq	(%rax), %rax	# PL_op.692_46->op_next, D.19272
	jmp	.L590	#
.L589:
	.loc 1 1440 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.693
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.693_48].op_other, D.19272
.L590:
	.loc 1 1441 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_pp_orassign, .-Perl_pp_orassign
	.section	.rodata
.LC31:
	.string	"(unknown)"
.LC32:
	.string	"(eval)"
.LC33:
	.string	"DB::args"
.LC34:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC35:
	.string	"warnings::Bits"
.LC36:
	.string	"all"
.LC37:
	.string	"UUUUUUUUUUUU"
	.text
	.globl	Perl_pp_caller
	.type	Perl_pp_caller, @function
Perl_pp_caller:
.LFB31:
	.loc 1 1444 0
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
	subq	$112, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	.loc 1 1445 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1446 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.694
	movl	16(%rax), %eax	# PL_curstackinfo.694_31->si_cxix, D.19282
	movl	%eax, %edi	# D.19282,
	call	S_dopoptosub	#
	movl	%eax, %r13d	#, cxix
	.loc 1 1448 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.695
	movq	8(%rax), %r14	# PL_curstackinfo.695_34->si_cxstack, ccstack
	.loc 1 1449 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, tmp314
	movq	%rax, -120(%rbp)	# tmp314, top_si
	.loc 1 1454 0
	movl	$0, -136(%rbp)	#, count
	.loc 1 1456 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.696
	movzbl	37(%rax), %eax	# PL_op.696_38->op_private, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$15, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	je	.L592	#,
	.loc 1 1457 0
	movq	%rbx, %rax	# sp, sp.697
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.697_42, PL_Sv.698
	movq	%rax, PL_Sv(%rip)	# PL_Sv.698, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.700
	movl	12(%rax), %eax	# PL_Sv.700_45->sv_flags, D.19284
	andl	$65536, %eax	#, D.19284
	testl	%eax, %eax	# D.19284
	je	.L593	#,
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.701
	movq	(%rax), %rax	# PL_Sv.701_48->sv_any, D.19285
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_49].xiv_iv, D.19286
	jmp	.L594	#
.L593:
	.loc 1 1457 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.702
	movq	%rax, %rdi	# PL_Sv.702,
	call	Perl_sv_2iv	#
.L594:
	.loc 1 1457 0 discriminator 3
	movl	%eax, -136(%rbp)	# iftmp.699, count
	.loc 1 1461 0 is_stmt 1 discriminator 3
	jmp	.L595	#
.L592:
	.loc 1 1461 0 is_stmt 0
	jmp	.L595	#
.L597:
	.loc 1 1462 0 is_stmt 1
	movq	-120(%rbp), %rax	# top_si, tmp315
	movq	32(%rax), %rax	# top_si_18->si_prev, tmp316
	movq	%rax, -120(%rbp)	# tmp316, top_si
	.loc 1 1463 0
	movq	-120(%rbp), %rax	# top_si, tmp317
	movq	8(%rax), %r14	# top_si_57->si_cxstack, ccstack
	.loc 1 1464 0
	movq	-120(%rbp), %rax	# top_si, tmp318
	movl	16(%rax), %eax	# top_si_57->si_cxix, D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r14, %rdi	# ccstack,
	call	S_dopoptosub_at	#
	movl	%eax, %r13d	#, cxix
.L595:
	.loc 1 1461 0 discriminator 1
	testl	%r13d, %r13d	# cxix
	jns	.L596	#,
	.loc 1 1461 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# top_si, tmp319
	movl	24(%rax), %eax	# top_si_18->si_type, D.19282
	cmpl	$1, %eax	#, D.19282
	jne	.L597	#,
.L596:
	.loc 1 1466 0 is_stmt 1
	testl	%r13d, %r13d	# cxix
	jns	.L598	#,
	.loc 1 1467 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.704
	movzbl	36(%rax), %eax	# PL_op.704_61->op_flags, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$3, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	je	.L599	#,
	.loc 1 1467 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.705
	movzbl	36(%rax), %eax	# PL_op.705_65->op_flags, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$3, %eax	#, D.19282
	cmpl	$3, %eax	#, D.19282
	setne	%al	#, iftmp.703
	jmp	.L600	#
.L599:
	.loc 1 1467 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.19282
	setne	%al	#, iftmp.703
.L600:
	.loc 1 1467 0 discriminator 3
	testb	%al, %al	# iftmp.703
	je	.L601	#,
	.loc 1 1468 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.706
	movq	%rax, %rdx	# PL_stack_max.706, PL_stack_max.707
	movq	%rbx, %rax	# sp, sp.708
	subq	%rax, %rdx	# sp.708, D.19286
	movq	%rdx, %rax	# D.19286, D.19286
	cmpq	$7, %rax	#, D.19286
	jg	.L602	#,
	.loc 1 1468 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L602:
	.loc 1 1469 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_77
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.709
	movq	(%rax), %rax	# PL_op.709_78->op_next, D.19281
	jmp	.L603	#
.L601:
	.loc 1 1471 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.710
	movq	(%rax), %rax	# PL_op.710_80->op_next, D.19281
	jmp	.L603	#
.L598:
	.loc 1 1474 0
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.711
	testq	%rax, %rax	# PL_DBsub.711
	je	.L604	#,
	.loc 1 1474 0 is_stmt 0 discriminator 1
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.712
	movq	(%rax), %rax	# PL_DBsub.712_83->sv_any, D.19287
	movq	56(%rax), %rax	# _84->xgv_gp, D.19288
	movq	56(%rax), %rax	# _85->gp_cv, D.19289
	testq	%rax, %rax	# D.19289
	je	.L604	#,
	testl	%r13d, %r13d	# cxix
	js	.L604	#,
	.loc 1 1475 0 is_stmt 1 discriminator 1
	movslq	%r13d, %rdx	# cxix, D.19290
	movq	%rdx, %rax	# D.19290, tmp320
	salq	$3, %rax	#, tmp320
	addq	%rdx, %rax	# D.19290, tmp320
	salq	$4, %rax	#, tmp321
	addq	%r14, %rax	# ccstack, D.19291
	movq	56(%rax), %rdx	# _89->cx_u.cx_blk.blk_u.blku_sub.cv, D.19289
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.713
	movq	(%rax), %rax	# PL_DBsub.713_91->sv_any, D.19287
	movq	56(%rax), %rax	# _92->xgv_gp, D.19288
	movq	56(%rax), %rax	# _93->gp_cv, D.19289
	.loc 1 1474 0 discriminator 1
	cmpq	%rax, %rdx	# D.19289, D.19289
	jne	.L604	#,
	.loc 1 1476 0
	addl	$1, -136(%rbp)	#, count
.L604:
	.loc 1 1477 0
	movl	-136(%rbp), %eax	# count, count.714
	leal	-1(%rax), %edx	#, tmp322
	movl	%edx, -136(%rbp)	# tmp322, count
	testl	%eax, %eax	# count.714
	jne	.L605	#,
	.loc 1 1478 0
	nop
	.loc 1 1482 0
	movslq	%r13d, %rdx	# cxix, D.19290
	movq	%rdx, %rax	# D.19290, tmp323
	salq	$3, %rax	#, tmp323
	addq	%rdx, %rax	# D.19290, tmp323
	salq	$4, %rax	#, tmp324
	leaq	(%r14,%rax), %r12	#, cx
	.loc 1 1483 0
	movl	(%r12), %eax	# cx_100->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$1, %eax	#, D.19284
	je	.L607	#,
	jmp	.L647	#
.L605:
	.loc 1 1479 0
	leal	-1(%r13), %eax	#, D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r14, %rdi	# ccstack,
	call	S_dopoptosub_at	#
	movl	%eax, %r13d	#, cxix
	.loc 1 1480 0
	jmp	.L592	#
.L647:
	.loc 1 1483 0 discriminator 1
	movl	(%r12), %eax	# cx_100->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$6, %eax	#, D.19284
	jne	.L608	#,
.L607:
	.loc 1 1484 0
	leal	-1(%r13), %eax	#, D.19282
	movl	%eax, %esi	# D.19282,
	movq	%r14, %rdi	# ccstack,
	call	S_dopoptosub_at	#
	movl	%eax, -132(%rbp)	# tmp325, dbcxix
	.loc 1 1488 0
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.715
	testq	%rax, %rax	# PL_DBsub.715
	je	.L608	#,
	.loc 1 1488 0 is_stmt 0 discriminator 1
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.716
	movq	(%rax), %rax	# PL_DBsub.716_108->sv_any, D.19287
	movq	56(%rax), %rax	# _109->xgv_gp, D.19288
	movq	56(%rax), %rax	# _110->gp_cv, D.19289
	testq	%rax, %rax	# D.19289
	je	.L608	#,
	cmpl	$0, -132(%rbp)	#, dbcxix
	js	.L608	#,
	movl	-132(%rbp), %eax	# dbcxix, tmp326
	movslq	%eax, %rdx	# tmp326, D.19290
	movq	%rdx, %rax	# D.19290, tmp327
	salq	$3, %rax	#, tmp327
	addq	%rdx, %rax	# D.19290, tmp327
	salq	$4, %rax	#, tmp328
	addq	%r14, %rax	# ccstack, D.19291
	movq	56(%rax), %rdx	# _114->cx_u.cx_blk.blk_u.blku_sub.cv, D.19289
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.717
	movq	(%rax), %rax	# PL_DBsub.717_116->sv_any, D.19287
	movq	56(%rax), %rax	# _117->xgv_gp, D.19288
	movq	56(%rax), %rax	# _118->gp_cv, D.19289
	cmpq	%rax, %rdx	# D.19289, D.19289
	jne	.L608	#,
	.loc 1 1489 0 is_stmt 1
	movl	-132(%rbp), %eax	# dbcxix, tmp329
	movslq	%eax, %rdx	# tmp329, D.19290
	movq	%rdx, %rax	# D.19290, tmp330
	salq	$3, %rax	#, tmp330
	addq	%rdx, %rax	# D.19290, tmp330
	salq	$4, %rax	#, tmp331
	leaq	(%r14,%rax), %r12	#, cx
.L608:
	.loc 1 1492 0
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	48(%rax), %rax	# _123->cop_stash, D.19293
	testq	%rax, %rax	# D.19293
	je	.L609	#,
	.loc 1 1492 0 is_stmt 0 discriminator 1
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	48(%rax), %rax	# _125->cop_stash, D.19293
	movq	(%rax), %rax	# _126->sv_any, D.19294
	movq	80(%rax), %rax	# _127->xhv_name, iftmp.718
	jmp	.L610	#
.L609:
	.loc 1 1492 0 discriminator 2
	movl	$0, %eax	#, iftmp.718
.L610:
	.loc 1 1492 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.718, stashname
	.loc 1 1493 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.720
	movzbl	36(%rax), %eax	# PL_op.720_131->op_flags, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$3, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	je	.L611	#,
	.loc 1 1493 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.721
	movzbl	36(%rax), %eax	# PL_op.721_135->op_flags, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$3, %eax	#, D.19282
	cmpl	$3, %eax	#, D.19282
	setne	%al	#, iftmp.719
	jmp	.L612	#
.L611:
	.loc 1 1493 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.19282
	setne	%al	#, iftmp.719
.L612:
	.loc 1 1493 0 discriminator 3
	testb	%al, %al	# iftmp.719
	je	.L613	#,
	.loc 1 1494 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.722
	movq	%rax, %rdx	# PL_stack_max.722, PL_stack_max.723
	movq	%rbx, %rax	# sp, sp.724
	subq	%rax, %rdx	# sp.724, D.19286
	movq	%rdx, %rax	# D.19286, D.19286
	cmpq	$7, %rax	#, D.19286
	jg	.L614	#,
	.loc 1 1494 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L614:
	.loc 1 1495 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, stashname
	jne	.L615	#,
	.loc 1 1496 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_147
	jmp	.L616	#
.L615:
.LBB43:
	.loc 1 1498 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.725
	movq	PL_op(%rip), %rax	# PL_op, PL_op.726
	movq	24(%rax), %rax	# PL_op.726_149->op_targ, D.19290
	salq	$3, %rax	#, D.19290
	addq	%rdx, %rax	# PL_curpad.725, D.19295
	movq	(%rax), %rax	# *_152, tmp332
	movq	%rax, -96(%rbp)	# tmp332, targ
	.loc 1 1499 0
	movq	-104(%rbp), %rdx	# stashname, tmp333
	movq	-96(%rbp), %rax	# targ, tmp334
	movq	%rdx, %rsi	# tmp333,
	movq	%rax, %rdi	# tmp334,
	call	Perl_sv_setpv	#
	.loc 1 1500 0
	addq	$8, %rbx	#, sp
	movq	-96(%rbp), %rax	# targ, tmp335
	movq	%rax, (%rbx)	# tmp335, *sp_154
.L616:
.LBE43:
	.loc 1 1502 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.727
	movq	(%rax), %rax	# PL_op.727_155->op_next, D.19281
	jmp	.L603	#
.L613:
	.loc 1 1505 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.728
	movq	%rax, %rdx	# PL_stack_max.728, PL_stack_max.729
	movq	%rbx, %rax	# sp, sp.730
	subq	%rax, %rdx	# sp.730, D.19286
	movq	%rdx, %rax	# D.19286, D.19286
	cmpq	$79, %rax	#, D.19286
	jg	.L617	#,
	.loc 1 1505 0 is_stmt 0 discriminator 1
	movl	$10, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L617:
	.loc 1 1507 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, stashname
	jne	.L618	#,
	.loc 1 1508 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_162
	jmp	.L619	#
.L618:
	.loc 1 1510 0
	addq	$8, %rbx	#, sp
	movq	-104(%rbp), %rax	# stashname, tmp336
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp336,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_163
.L619:
	.loc 1 1511 0
	addq	$8, %rbx	#, sp
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	56(%rax), %rax	# _167->cop_filegv, D.19297
	testq	%rax, %rax	# D.19297
	je	.L620	#,
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	56(%rax), %rax	# _169->cop_filegv, D.19297
	movq	(%rax), %rax	# _170->sv_any, D.19287
	movq	56(%rax), %rax	# _171->xgv_gp, D.19288
	movq	(%rax), %rax	# _172->gp_sv, D.19296
	testq	%rax, %rax	# D.19296
	je	.L620	#,
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	56(%rax), %rax	# _174->cop_filegv, D.19297
	testq	%rax, %rax	# D.19297
	je	.L621	#,
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	56(%rax), %rax	# _176->cop_filegv, D.19297
	movq	(%rax), %rax	# _177->sv_any, D.19287
	movq	56(%rax), %rax	# _178->xgv_gp, D.19288
	movq	(%rax), %rax	# _179->gp_sv, iftmp.732
	jmp	.L622	#
.L621:
	.loc 1 1511 0 discriminator 2
	movl	$0, %eax	#, iftmp.732
.L622:
	.loc 1 1511 0 discriminator 3
	movq	(%rax), %rax	# iftmp.732_29->sv_any, D.19285
	movq	(%rax), %rax	# MEM[(struct XPV *)_182].xpv_pv, iftmp.731
	jmp	.L623	#
.L620:
	.loc 1 1511 0 discriminator 2
	movl	$0, %eax	#, iftmp.731
.L623:
	.loc 1 1511 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.731,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_166
	.loc 1 1512 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movl	72(%rax), %eax	# _188->cop_line, D.19284
	cltq
	movq	%rax, %rdi	# D.19286,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_187
	.loc 1 1513 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.733
	movzbl	37(%rax), %eax	# PL_op.733_194->op_private, D.19283
	movzbl	%al, %eax	# D.19283, D.19282
	andl	$15, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	jne	.L624	#,
	.loc 1 1514 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.734
	movq	(%rax), %rax	# PL_op.734_198->op_next, D.19281
	jmp	.L603	#
.L624:
	.loc 1 1515 0
	movl	(%r12), %eax	# cx_14->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$1, %eax	#, D.19284
	je	.L625	#,
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movl	(%r12), %eax	# cx_14->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$6, %eax	#, D.19284
	jne	.L626	#,
.L625:
.LBB44:
	.loc 1 1516 0 is_stmt 1
	movslq	%r13d, %rdx	# cxix, D.19290
	movq	%rdx, %rax	# D.19290, tmp337
	salq	$3, %rax	#, tmp337
	addq	%rdx, %rax	# D.19290, tmp337
	salq	$4, %rax	#, tmp338
	addq	%r14, %rax	# ccstack, D.19291
	movq	56(%rax), %rax	# _212->cx_u.cx_blk.blk_u.blku_sub.cv, D.19289
	movq	(%rax), %rax	# _213->sv_any, D.19298
	movq	96(%rax), %rax	# _214->xcv_gv, tmp339
	movq	%rax, -88(%rbp)	# tmp339, cvgv
	.loc 1 1518 0
	movq	-88(%rbp), %rax	# cvgv, tmp340
	movl	12(%rax), %eax	# cvgv_215->sv_flags, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$13, %eax	#, D.19284
	jne	.L627	#,
	.loc 1 1519 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -80(%rbp)	# tmp341, sv
	.loc 1 1520 0
	movq	-88(%rbp), %rsi	# cvgv, tmp342
	movq	-80(%rbp), %rax	# sv, tmp343
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp343,
	call	Perl_gv_efullname4	#
	.loc 1 1521 0
	addq	$8, %rbx	#, sp
	movq	-80(%rbp), %rax	# sv, tmp344
	movq	%rax, %rdi	# tmp344,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_219
	.loc 1 1522 0
	addq	$8, %rbx	#, sp
	movzbl	104(%r12), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19283
	movzbl	%al, %eax	# D.19283, D.19286
	movq	%rax, %rdi	# D.19286,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_221
.LBE44:
	.loc 1 1515 0
	jmp	.L629	#
.L627:
.LBB45:
	.loc 1 1525 0
	addq	$8, %rbx	#, sp
	movl	$9, %esi	#,
	movl	$.LC31, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_226
	.loc 1 1526 0
	addq	$8, %rbx	#, sp
	movzbl	104(%r12), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19283
	movzbl	%al, %eax	# D.19283, D.19286
	movq	%rax, %rdi	# D.19286,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_229
.LBE45:
	.loc 1 1515 0
	jmp	.L629	#
.L626:
	.loc 1 1530 0
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC32, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_204
	.loc 1 1531 0
	addq	$8, %rbx	#, sp
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_207
.L629:
	.loc 1 1533 0
	movzbl	48(%r12), %eax	# cx_14->cx_u.cx_blk.blku_gimme, D.19283
	movzbl	%al, %eax	# D.19283, tmp345
	movl	%eax, -128(%rbp)	# tmp345, gimme
	.loc 1 1534 0
	cmpl	$128, -128(%rbp)	#, gimme
	jne	.L630	#,
	.loc 1 1535 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_236
	jmp	.L631	#
.L630:
	.loc 1 1537 0
	addq	$8, %rbx	#, sp
	movl	-128(%rbp), %eax	# gimme, tmp346
	cltq
	andl	$1, %eax	#, D.19286
	movq	%rax, %rdi	# D.19286,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_237
.L631:
	.loc 1 1538 0
	movl	(%r12), %eax	# cx_14->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$2, %eax	#, D.19284
	jne	.L632	#,
	.loc 1 1540 0
	movl	60(%r12), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_op_type, D.19282
	cmpl	$311, %eax	#, D.19282
	jne	.L633	#,
	.loc 1 1541 0
	addq	$8, %rbx	#, sp
	movq	80(%r12), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.cur_text, D.19296
	movq	%rax, (%rbx)	# D.19296, *sp_245
	.loc 1 1542 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_247
	jmp	.L636	#
.L633:
	.loc 1 1545 0
	movq	64(%r12), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19296
	testq	%rax, %rax	# D.19296
	je	.L635	#,
	.loc 1 1546 0
	addq	$8, %rbx	#, sp
	movq	64(%r12), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19296
	movq	%rax, %rdi	# D.19296,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_249
	.loc 1 1547 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_253
	jmp	.L636	#
.L635:
	.loc 1 1551 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_254
	.loc 1 1552 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_255
	jmp	.L636	#
.L632:
	.loc 1 1556 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_256
	.loc 1 1557 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_257
.L636:
	.loc 1 1559 0
	movl	(%r12), %eax	# cx_14->cx_type, D.19284
	movzbl	%al, %eax	# D.19284, D.19284
	cmpl	$1, %eax	#, D.19284
	jne	.L637	#,
	.loc 1 1559 0 is_stmt 0 discriminator 1
	movzbl	104(%r12), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19283
	testb	%al, %al	# D.19283
	je	.L637	#,
	.loc 1 1560 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.735
	movq	48(%rax), %rdx	# PL_curcop.735_261->cop_stash, D.19293
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.736
	cmpq	%rax, %rdx	# PL_debstash.736, D.19293
	jne	.L637	#,
.LBB46:
	.loc 1 1562 0
	movq	88(%r12), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_sub.argarray, tmp347
	movq	%rax, -72(%rbp)	# tmp347, ary
	.loc 1 1563 0
	movq	-72(%rbp), %rax	# ary, tmp348
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	(%rax), %rax	# _265->xav_array, D.19300
	movq	%rax, %rdx	# D.19300, D.19286
	movq	-72(%rbp), %rax	# ary, tmp349
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	56(%rax), %rax	# _268->xav_alloc, D.19295
	subq	%rax, %rdx	# D.19286, D.19286
	movq	%rdx, %rax	# D.19286, D.19286
	sarq	$3, %rax	#, tmp350
	movl	%eax, -124(%rbp)	# D.19286, off
	.loc 1 1565 0
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.737
	testq	%rax, %rax	# PL_dbargs.737
	jne	.L638	#,
.LBB47:
	.loc 1 1567 0
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC33, %edi	#,
	call	Perl_gv_fetchpv	#
	movq	%rax, -64(%rbp)	# tmp351, tmpgv
	movq	-64(%rbp), %rax	# tmpgv, tmp352
	movq	%rax, %rdi	# tmp352,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _276->sv_any, D.19287
	movq	56(%rax), %rax	# _277->xgv_gp, D.19288
	movq	32(%rax), %rax	# _278->gp_av, PL_dbargs.738
	movq	%rax, PL_dbargs(%rip)	# PL_dbargs.738, PL_dbargs
	.loc 1 1569 0
	movq	-64(%rbp), %rax	# tmpgv, tmp353
	movq	(%rax), %rax	# tmpgv_275->sv_any, D.19287
	movq	-64(%rbp), %rdx	# tmpgv, tmp354
	movq	(%rdx), %rdx	# tmpgv_275->sv_any, D.19287
	movzbl	88(%rdx), %edx	# _281->xgv_flags, D.19283
	orl	$2, %edx	#, D.19283
	movb	%dl, 88(%rax)	# D.19283, _280->xgv_flags
	.loc 1 1570 0
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.739
	movq	(%rax), %rax	# PL_dbargs.739_284->sv_any, D.19299
	movq	PL_dbargs(%rip), %rdx	# PL_dbargs, PL_dbargs.740
	movq	(%rdx), %rdx	# PL_dbargs.740_286->sv_any, D.19299
	movzbl	72(%rdx), %edx	# _287->xav_flags, D.19283
	andl	$-2, %edx	#, D.19283
	movb	%dl, 72(%rax)	# D.19283, _285->xav_flags
.L638:
.LBE47:
	.loc 1 1573 0
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.741
	movq	(%rax), %rax	# PL_dbargs.741_290->sv_any, D.19299
	movq	16(%rax), %rdx	# _291->xav_max, D.19286
	movq	-72(%rbp), %rax	# ary, tmp355
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	8(%rax), %rcx	# _293->xav_fill, D.19286
	movl	-124(%rbp), %eax	# off, tmp356
	cltq
	addq	%rcx, %rax	# D.19286, D.19286
	cmpq	%rax, %rdx	# D.19286, D.19286
	jge	.L639	#,
	.loc 1 1574 0
	movq	-72(%rbp), %rax	# ary, tmp357
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	8(%rax), %rax	# _297->xav_fill, D.19286
	movl	%eax, %edx	# D.19286, D.19301
	movl	-124(%rbp), %eax	# off, off.742
	addl	%edx, %eax	# D.19301, D.19301
	movl	%eax, %edx	# D.19301, D.19282
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.743
	movl	%edx, %esi	# D.19282,
	movq	%rax, %rdi	# PL_dbargs.743,
	call	Perl_av_extend	#
.L639:
	.loc 1 1575 0
	movq	-72(%rbp), %rax	# ary, tmp358
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	8(%rax), %rax	# _304->xav_fill, D.19286
	leaq	1(%rax), %rdx	#, D.19286
	movl	-124(%rbp), %eax	# off, tmp359
	cltq
	addq	%rdx, %rax	# D.19286, D.19286
	leaq	0(,%rax,8), %rdx	#, D.19290
	movq	-72(%rbp), %rax	# ary, tmp360
	movq	(%rax), %rax	# ary_264->sv_any, D.19299
	movq	56(%rax), %rcx	# _311->xav_alloc, D.19295
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.744
	movq	(%rax), %rax	# PL_dbargs.744_313->sv_any, D.19299
	movq	(%rax), %rax	# _314->xav_array, D.19300
	movq	%rcx, %rsi	# D.19295,
	movq	%rax, %rdi	# D.19300,
	call	memcpy	#
	.loc 1 1576 0
	movq	PL_dbargs(%rip), %rax	# PL_dbargs, PL_dbargs.745
	movq	(%rax), %rax	# PL_dbargs.745_316->sv_any, D.19299
	movq	-72(%rbp), %rdx	# ary, tmp361
	movq	(%rdx), %rdx	# ary_264->sv_any, D.19299
	movq	8(%rdx), %rcx	# _318->xav_fill, D.19286
	movl	-124(%rbp), %edx	# off, tmp362
	movslq	%edx, %rdx	# tmp362, D.19286
	addq	%rcx, %rdx	# D.19286, D.19286
	movq	%rdx, 8(%rax)	# D.19286, _317->xav_fill
.L637:
.LBE46:
	.loc 1 1581 0
	addq	$8, %rbx	#, sp
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movzbl	37(%rax), %eax	# _323->op_private, D.19283
	movzbl	%al, %eax	# D.19283, D.19286
	movq	%rax, %rdi	# D.19286,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19296,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_322
.LBB48:
	.loc 1 1585 0
	movq	16(%r12), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, D.19292
	movq	80(%rax), %rax	# _328->cop_warnings, tmp363
	movq	%rax, -56(%rbp)	# tmp363, old_warnings
	.loc 1 1587 0
	cmpq	$32, -56(%rbp)	#, old_warnings
	je	.L640	#,
	.loc 1 1587 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, old_warnings
	jne	.L641	#,
	.loc 1 1588 0 is_stmt 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.746
	movzbl	%al, %eax	# PL_dowarn.746, D.19282
	andl	$1, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	jne	.L641	#,
.L640:
	.loc 1 1589 0
	movl	$12, %esi	#,
	movl	$.LC34, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -112(%rbp)	# tmp364, mask
	jmp	.L642	#
.L641:
	.loc 1 1590 0
	cmpq	$16, -56(%rbp)	#, old_warnings
	je	.L643	#,
	.loc 1 1590 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, old_warnings
	jne	.L644	#,
	.loc 1 1591 0 is_stmt 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.747
	movzbl	%al, %eax	# PL_dowarn.747, D.19282
	andl	$1, %eax	#, D.19282
	testl	%eax, %eax	# D.19282
	je	.L644	#,
.L643:
.LBB49:
	.loc 1 1595 0
	movl	$0, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_get_hv	#
	movq	%rax, -48(%rbp)	# tmp365, bits
	.loc 1 1596 0
	cmpq	$0, -48(%rbp)	#, bits
	je	.L645	#,
	.loc 1 1596 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# bits, tmp366
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp367, bits_all
	cmpq	$0, -40(%rbp)	#, bits_all
	je	.L645	#,
	.loc 1 1597 0 is_stmt 1
	movq	-40(%rbp), %rax	# bits_all, tmp368
	movq	(%rax), %rax	# *bits_all_338, D.19296
	movq	%rax, %rdi	# D.19296,
	call	Perl_newSVsv	#
	movq	%rax, -112(%rbp)	# tmp369, mask
.LBE49:
	.loc 1 1591 0
	jmp	.L642	#
.L645:
.LBB50:
	.loc 1 1600 0
	movl	$12, %esi	#,
	movl	$.LC37, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -112(%rbp)	# tmp370, mask
.LBE50:
	.loc 1 1591 0
	jmp	.L642	#
.L644:
	.loc 1 1604 0
	movq	-56(%rbp), %rax	# old_warnings, tmp371
	movq	%rax, %rdi	# tmp371,
	call	Perl_newSVsv	#
	movq	%rax, -112(%rbp)	# tmp372, mask
.L642:
	.loc 1 1605 0
	addq	$8, %rbx	#, sp
	movq	-112(%rbp), %rax	# mask, tmp373
	movq	%rax, %rdi	# tmp373,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19296, *sp_343
.LBE48:
	.loc 1 1607 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.748
	movq	(%rax), %rax	# PL_op.748_345->op_next, D.19281
.L603:
	.loc 1 1608 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_pp_caller, .-Perl_pp_caller
	.globl	Perl_pp_reset
	.type	Perl_pp_reset, @function
Perl_pp_reset:
.LFB32:
	.loc 1 1611 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1612 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1616 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.749
	movzbl	37(%rax), %eax	# PL_op.749_5->op_private, D.19309
	movzbl	%al, %eax	# D.19309, D.19310
	andl	$15, %eax	#, D.19310
	testl	%eax, %eax	# D.19310
	jg	.L649	#,
	.loc 1 1617 0
	movq	$.LC12, -24(%rbp)	#, tmps
	jmp	.L650	#
.L649:
	.loc 1 1619 0
	movq	%rbx, %rax	# sp, sp.750
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.750_10, PL_Sv.751
	movq	%rax, PL_Sv(%rip)	# PL_Sv.751, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.753
	movl	12(%rax), %eax	# PL_Sv.753_13->sv_flags, D.19311
	andl	$262144, %eax	#, D.19311
	testl	%eax, %eax	# D.19311
	je	.L651	#,
	.loc 1 1619 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.754
	movq	(%rax), %rax	# PL_Sv.754_16->sv_any, D.19312
	movq	8(%rax), %rax	# MEM[(struct XPV *)_17].xpv_cur, n_a.755
	movq	%rax, -32(%rbp)	# n_a.755, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.756
	movq	(%rax), %rax	# PL_Sv.756_19->sv_any, D.19312
	movq	(%rax), %rax	# MEM[(struct XPV *)_20].xpv_pv, iftmp.752
	jmp	.L652	#
.L651:
	.loc 1 1619 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.757
	leaq	-32(%rbp), %rcx	#, tmp81
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# PL_Sv.757,
	call	Perl_sv_2pv_flags	#
.L652:
	.loc 1 1619 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.752, tmps
.L650:
	.loc 1 1620 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.758
	movq	48(%rax), %rdx	# PL_curcop.758_25->cop_stash, D.19313
	movq	-24(%rbp), %rax	# tmps, tmp82
	movq	%rdx, %rsi	# D.19313,
	movq	%rax, %rdi	# tmp82,
	call	Perl_sv_reset	#
	.loc 1 1621 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_27
	.loc 1 1622 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.759
	movq	(%rax), %rax	# PL_op.759_28->op_next, D.19314
	.loc 1 1623 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_pp_reset, .-Perl_pp_reset
	.globl	Perl_pp_lineseq
	.type	Perl_pp_lineseq, @function
Perl_pp_lineseq:
.LFB33:
	.loc 1 1626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1627 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.760
	movq	(%rax), %rax	# PL_op.760_1->op_next, D.19315
	.loc 1 1628 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_pp_lineseq, .-Perl_pp_lineseq
	.section	.rodata
.LC38:
	.string	"No DB::DB routine defined"
	.text
	.globl	Perl_pp_dbstate
	.type	Perl_pp_dbstate, @function
Perl_pp_dbstate:
.LFB34:
	.loc 1 1633 0
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
	.loc 1 1634 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.761
	movq	%rax, PL_curcop(%rip)	# PL_op.761, PL_curcop
	.loc 1 1635 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1636 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.762
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.763
	movq	8(%rax), %rsi	# PL_curstackinfo.763_4->si_cxstack, D.19317
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.764
	movl	16(%rax), %eax	# PL_curstackinfo.764_6->si_cxix, D.19318
	movslq	%eax, %rdx	# D.19318, D.19319
	movq	%rdx, %rax	# D.19319, tmp226
	salq	$3, %rax	#, tmp226
	addq	%rdx, %rax	# D.19319, tmp226
	salq	$4, %rax	#, tmp227
	addq	%rsi, %rax	# D.19317, D.19317
	movl	8(%rax), %eax	# _10->cx_u.cx_blk.blku_oldsp, D.19318
	cltq
	salq	$3, %rax	#, D.19319
	addq	%rcx, %rax	# PL_stack_base.762, PL_stack_sp.765
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.765, PL_stack_sp
	.loc 1 1637 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.766
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.767
	cmpl	%eax, %edx	# PL_tmps_floor.767, PL_tmps_ix.766
	jle	.L657	#,
	.loc 1 1637 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L657:
	.loc 1 1639 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.768
	movzbl	36(%rax), %eax	# PL_op.768_17->op_flags, D.19320
	testb	%al, %al	# D.19321
	js	.L658	#,
	.loc 1 1640 0 discriminator 1
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.769
	movl	12(%rax), %eax	# PL_DBsingle.769_20->sv_flags, D.19322
	andl	$65536, %eax	#, D.19322
	.loc 1 1639 0 discriminator 1
	testl	%eax, %eax	# D.19322
	je	.L659	#,
	.loc 1 1640 0
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.770
	movq	(%rax), %rax	# PL_DBsingle.770_23->sv_any, D.19323
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_24].xiv_iv, D.19324
	testq	%rax, %rax	# D.19324
	jne	.L658	#,
	jmp	.L660	#
.L659:
	movq	PL_DBsingle(%rip), %rax	# PL_DBsingle, PL_DBsingle.771
	movq	%rax, %rdi	# PL_DBsingle.771,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.19324
	jne	.L658	#,
.L660:
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movq	PL_DBsignal(%rip), %rax	# PL_DBsignal, PL_DBsignal.772
	movl	12(%rax), %eax	# PL_DBsignal.772_28->sv_flags, D.19322
	andl	$65536, %eax	#, D.19322
	.loc 1 1639 0 is_stmt 1 discriminator 1
	testl	%eax, %eax	# D.19322
	je	.L661	#,
	.loc 1 1640 0
	movq	PL_DBsignal(%rip), %rax	# PL_DBsignal, PL_DBsignal.773
	movq	(%rax), %rax	# PL_DBsignal.773_31->sv_any, D.19323
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_32].xiv_iv, D.19324
	testq	%rax, %rax	# D.19324
	jne	.L658	#,
	jmp	.L662	#
.L661:
	movq	PL_DBsignal(%rip), %rax	# PL_DBsignal, PL_DBsignal.774
	movq	%rax, %rdi	# PL_DBsignal.774,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.19324
	jne	.L658	#,
.L662:
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movq	PL_DBtrace(%rip), %rax	# PL_DBtrace, PL_DBtrace.775
	movl	12(%rax), %eax	# PL_DBtrace.775_36->sv_flags, D.19322
	andl	$65536, %eax	#, D.19322
	.loc 1 1639 0 is_stmt 1 discriminator 1
	testl	%eax, %eax	# D.19322
	je	.L663	#,
	.loc 1 1640 0
	movq	PL_DBtrace(%rip), %rax	# PL_DBtrace, PL_DBtrace.776
	movq	(%rax), %rax	# PL_DBtrace.776_39->sv_any, D.19323
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_40].xiv_iv, D.19324
	testq	%rax, %rax	# D.19324
	jne	.L658	#,
	jmp	.L664	#
.L663:
	movq	PL_DBtrace(%rip), %rax	# PL_DBtrace, PL_DBtrace.777
	movq	%rax, %rdi	# PL_DBtrace.777,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.19324
	je	.L664	#,
.L658:
.LBB51:
	.loc 1 1642 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 1645 0
	movl	$1, -44(%rbp)	#, gimme
	.loc 1 1649 0
	movq	PL_DBgv(%rip), %rax	# PL_DBgv, tmp228
	movq	%rax, -40(%rbp)	# tmp228, gv
	.loc 1 1650 0
	movq	-40(%rbp), %rax	# gv, tmp229
	movq	(%rax), %rax	# gv_48->sv_any, D.19325
	movq	56(%rax), %rax	# _49->xgv_gp, D.19326
	movq	56(%rax), %r12	# _50->gp_cv, cv
	.loc 1 1651 0
	testq	%r12, %r12	# cv
	jne	.L665	#,
	.loc 1 1652 0
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L666	#
.L665:
	.loc 1 1654 0
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	112(%rax), %rax	# _53->xcv_depth, D.19324
	testq	%rax, %rax	# D.19324
	jle	.L667	#,
	.loc 1 1654 0 is_stmt 0 discriminator 1
	movl	PL_debug(%rip), %eax	# PL_debug, PL_debug.778
	andl	$1073741824, %eax	#, D.19322
	testl	%eax, %eax	# D.19322
	jne	.L667	#,
	.loc 1 1656 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.779
	movq	(%rax), %rax	# PL_op.779_57->op_next, D.19316
	jmp	.L666	#
.L667:
	.loc 1 1658 0
	call	Perl_push_scope	#
	.loc 1 1659 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.780
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.780, PL_tmps_floor
	.loc 1 1661 0
	movl	$PL_debug, %edi	#,
	call	Perl_save_I32	#
.LBB52:
	.loc 1 1662 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.781
	leal	2(%rax), %edx	#, D.19318
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.782
	cmpl	%eax, %edx	# PL_savestack_max.782, D.19318
	jle	.L668	#,
	.loc 1 1662 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L668:
	.loc 1 1662 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.783
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.784
	leal	1(%rax), %edx	#, PL_savestack_ix.786
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.786, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19319
	leaq	(%rcx,%rax), %rdx	#, D.19328
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.787
	movq	%rax, %rcx	# PL_stack_sp.787, PL_stack_sp.788
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.789
	subq	%rax, %rcx	# PL_stack_base.790, D.19324
	movq	%rcx, %rax	# D.19324, D.19324
	sarq	$3, %rax	#, tmp230
	movl	%eax, (%rdx)	# D.19318, _69->any_i32
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.791
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.792
	leal	1(%rax), %edx	#, PL_savestack_ix.794
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.794, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19319
	addq	%rcx, %rax	# PL_savestack.791, D.19328
	movl	$22, (%rax)	#, _83->any_i32
.LBE52:
	.loc 1 1663 0 is_stmt 1 discriminator 2
	movl	$0, PL_debug(%rip)	#, PL_debug
	.loc 1 1664 0 discriminator 2
	movb	$0, -45(%rbp)	#, hasargs
	.loc 1 1665 0 discriminator 2
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	.loc 1 1667 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.795
	movq	(%rax), %rax	# PL_op.795_87->op_next, D.19316
	movq	%rax, %rdi	# D.19316,
	call	Perl_push_return	#
	.loc 1 1668 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.797
	movl	16(%rax), %edx	# PL_curstackinfo.797_89->si_cxix, D.19318
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.798
	movl	20(%rax), %eax	# PL_curstackinfo.798_91->si_cxmax, D.19318
	cmpl	%eax, %edx	# D.19318, D.19318
	jge	.L669	#,
	.loc 1 1668 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.799
	movl	16(%rax), %edx	# PL_curstackinfo.799_93->si_cxix, D.19318
	addl	$1, %edx	#, D.19318
	movl	%edx, 16(%rax)	# D.19318, PL_curstackinfo.799_93->si_cxix
	jmp	.L670	#
.L669:
	.loc 1 1668 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.800
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19318, PL_curstackinfo.800_97->si_cxix
.L670:
	.loc 1 1668 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.801
	movq	8(%rax), %rcx	# PL_curstackinfo.801_100->si_cxstack, D.19317
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.802
	movl	16(%rax), %eax	# PL_curstackinfo.802_102->si_cxix, D.19318
	movslq	%eax, %rdx	# D.19318, D.19319
	movq	%rdx, %rax	# D.19319, tmp231
	salq	$3, %rax	#, tmp231
	addq	%rdx, %rax	# D.19319, tmp231
	salq	$4, %rax	#, tmp232
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$1, (%rbx)	#, cx_106->cx_type
	movq	%r13, %rdx	# sp, sp.803
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.804
	subq	%rax, %rdx	# PL_stack_base.805, D.19324
	movq	%rdx, %rax	# D.19324, D.19324
	sarq	$3, %rax	#, tmp233
	movl	%eax, 8(%rbx)	# D.19318, cx_106->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.806
	movq	%rax, 16(%rbx)	# PL_curcop.806, cx_106->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.807
	movq	%rax, %rdx	# PL_markstack_ptr.807, PL_markstack_ptr.808
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.809
	subq	%rax, %rdx	# PL_markstack.810, D.19324
	movq	%rdx, %rax	# D.19324, D.19324
	sarq	$2, %rax	#, tmp234
	movl	%eax, 28(%rbx)	# D.19318, cx_106->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.811
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.811, cx_106->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.812
	movl	%eax, 24(%rbx)	# PL_retstack_ix.812, cx_106->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.813
	movq	%rax, 40(%rbx)	# PL_curpm.813, cx_106->cx_u.cx_blk.blku_oldpm
	movl	-44(%rbp), %eax	# gimme, tmp235
	movb	%al, 48(%rbx)	# D.19320, cx_106->cx_u.cx_blk.blku_gimme
	.loc 1 1669 0 is_stmt 1 discriminator 3
	movq	%r12, 56(%rbx)	# cv, cx_106->cx_u.cx_blk.blk_u.blku_sub.cv
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	112(%rax), %rax	# _125->xcv_depth, D.19324
	movq	%rax, 96(%rbx)	# D.19324, cx_106->cx_u.cx_blk.blk_u.blku_sub.olddepth
	movzbl	-45(%rbp), %eax	# hasargs, tmp236
	movb	%al, 104(%rbx)	# tmp236, cx_106->cx_u.cx_blk.blk_u.blku_sub.hasargs
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	112(%rax), %rax	# _127->xcv_depth, D.19324
	testq	%rax, %rax	# D.19324
	jne	.L671	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movq	%r12, PL_Sv(%rip)	# cv, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.815
	testq	%rax, %rax	# PL_Sv.815
	je	.L673	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.816
	movl	8(%rax), %edx	# PL_Sv.816_130->sv_refcnt, D.19322
	addl	$1, %edx	#, D.19322
	movl	%edx, 8(%rax)	# D.19322, PL_Sv.816_130->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.816_130->sv_refcnt, D.19322
	testl	%eax, %eax	# D.19322
	je	.L673	#,
	.loc 1 1669 0
	nop
.L673:
	.loc 1 1669 0 discriminator 4
	movq	%r12, PL_Sv(%rip)	# cv, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.818
	testq	%rax, %rax	# PL_Sv.818
	je	.L675	#,
	.loc 1 1669 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.819
	movl	8(%rax), %edx	# PL_Sv.819_137->sv_refcnt, D.19322
	addl	$1, %edx	#, D.19322
	movl	%edx, 8(%rax)	# D.19322, PL_Sv.819_137->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.819_137->sv_refcnt, D.19322
	testl	%eax, %eax	# D.19322
	je	.L675	#,
	.loc 1 1669 0
	nop
.L675:
	.loc 1 1669 0 discriminator 4
	movq	%r12, %rdi	# cv,
	call	Perl_save_freesv	#
.L671:
	.loc 1 1669 0 discriminator 2
	movb	$0, 105(%rbx)	#, cx_106->cx_u.cx_blk.blk_u.blku_sub.lval
	.loc 1 1670 0 is_stmt 1 discriminator 2
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	112(%rax), %rdx	# _143->xcv_depth, D.19324
	addq	$1, %rdx	#, D.19324
	movq	%rdx, 112(%rax)	# D.19324, _143->xcv_depth
.LBB53:
	.loc 1 1671 0 discriminator 2
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.820
	leal	2(%rax), %edx	#, D.19318
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.821
	cmpl	%eax, %edx	# PL_savestack_max.821, D.19318
	jle	.L676	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L676:
	.loc 1 1671 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.822
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.823
	leal	1(%rax), %edx	#, PL_savestack_ix.825
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.825, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19319
	leaq	(%rcx,%rax), %rdx	#, D.19328
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.826
	movq	%rax, (%rdx)	# PL_comppad.826, _155->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.827
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.828
	leal	1(%rax), %edx	#, PL_savestack_ix.830
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.830, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19319
	addq	%rcx, %rax	# PL_savestack.827, D.19328
	movl	$33, (%rax)	#, _163->any_i32
.LBE53:
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	120(%rax), %rax	# _165->xcv_padlist, D.19330
	movq	(%rax), %rax	# _166->sv_any, D.19331
	movq	(%rax), %rax	# _167->xav_array, D.19332
	movq	8(%rax), %rax	# MEM[(struct SV * *)_168 + 8B], PL_comppad.831
	movq	%rax, PL_comppad(%rip)	# PL_comppad.831, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.832
	movq	(%rax), %rax	# PL_comppad.832_170->sv_any, D.19331
	movq	(%rax), %rax	# _171->xav_array, PL_curpad.833
	movq	%rax, PL_curpad(%rip)	# PL_curpad.833, PL_curpad
	.loc 1 1672 0 is_stmt 1 discriminator 2
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	(%r12), %rax	# cv_51->sv_any, D.19327
	movq	64(%rax), %rax	# _173->xcv_start, D.19316
	jmp	.L666	#
.L664:
.LBE51:
	.loc 1 1675 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.834
	movq	(%rax), %rax	# PL_op.834_44->op_next, D.19316
.L666:
	.loc 1 1676 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_pp_dbstate, .-Perl_pp_dbstate
	.globl	Perl_pp_scope
	.type	Perl_pp_scope, @function
Perl_pp_scope:
.LFB35:
	.loc 1 1679 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1680 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.835
	movq	(%rax), %rax	# PL_op.835_1->op_next, D.19334
	.loc 1 1681 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_pp_scope, .-Perl_pp_scope
	.globl	Perl_pp_enteriter
	.type	Perl_pp_enteriter, @function
Perl_pp_enteriter:
.LFB36:
	.loc 1 1684 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 1685 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.836
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.837
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.839
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.839, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.838_15, D.19336
	cltq
	salq	$3, %rax	#, D.19337
	leaq	(%rcx,%rax), %r13	#, mark
	.loc 1 1687 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.841
	movzbl	36(%rax), %eax	# PL_op.841_21->op_flags, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$3, %eax	#, D.19336
	cmpl	$1, %eax	#, D.19336
	je	.L680	#,
	.loc 1 1687 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.843
	movzbl	36(%rax), %eax	# PL_op.843_25->op_flags, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$3, %eax	#, D.19336
	cmpl	$2, %eax	#, D.19336
	je	.L681	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.845
	movzbl	36(%rax), %eax	# PL_op.845_29->op_flags, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$3, %eax	#, D.19336
	cmpl	$3, %eax	#, D.19336
	je	.L682	#,
	call	Perl_block_gimme	#
	jmp	.L685	#
.L682:
	.loc 1 1687 0 discriminator 2
	movl	$1, %eax	#, iftmp.844
	jmp	.L685	#
.L681:
	movl	$0, %eax	#, iftmp.842
	jmp	.L685	#
.L680:
	movl	$128, %eax	#, iftmp.840
.L685:
	.loc 1 1687 0 discriminator 3
	movl	%eax, -80(%rbp)	# iftmp.840, gimme
	.loc 1 1689 0 is_stmt 1 discriminator 3
	movl	$3, -76(%rbp)	#, cxtype
	.loc 1 1694 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1695 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.846
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.846, PL_tmps_floor
	.loc 1 1705 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.847
	movq	24(%rax), %rax	# PL_op.847_42->op_targ, D.19337
	testq	%rax, %rax	# D.19337
	je	.L686	#,
	.loc 1 1707 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.848
	movq	PL_op(%rip), %rax	# PL_op, PL_op.849
	movq	24(%rax), %rax	# PL_op.849_45->op_targ, D.19337
	salq	$3, %rax	#, D.19337
	addq	%rdx, %rax	# PL_curpad.848, tmp276
	movq	%rax, -64(%rbp)	# tmp276, svp
	.loc 1 1708 0
	movq	-64(%rbp), %rax	# svp, tmp277
	movq	%rax, %rdi	# tmp277,
	call	Perl_save_sptr	#
	jmp	.L687	#
.L686:
.LBB54:
	.loc 1 1716 0
	movq	%r12, %rax	# sp, sp.850
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.850_49, tmp278
	movq	%rax, -56(%rbp)	# tmp278, gv
	.loc 1 1717 0
	movq	-56(%rbp), %rax	# gv, tmp279
	movq	(%rax), %rax	# gv_51->sv_any, D.19339
	movq	56(%rax), %rax	# _52->xgv_gp, D.19340
	movq	%rax, -64(%rbp)	# D.19340, svp
	.loc 1 1718 0
	movq	-64(%rbp), %rax	# svp, tmp280
	movq	%rax, %rdi	# tmp280,
	call	Perl_save_generic_svref	#
	.loc 1 1719 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	-64(%rbp), %rdx	# svp, tmp281
	movq	%rax, (%rdx)	# D.19341, *svp_54
.L687:
.LBE54:
	.loc 1 1725 0
	call	Perl_push_scope	#
	.loc 1 1727 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.852
	movl	16(%rax), %edx	# PL_curstackinfo.852_56->si_cxix, D.19336
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.853
	movl	20(%rax), %eax	# PL_curstackinfo.853_58->si_cxmax, D.19336
	cmpl	%eax, %edx	# D.19336, D.19336
	jge	.L688	#,
	.loc 1 1727 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.854
	movl	16(%rax), %edx	# PL_curstackinfo.854_60->si_cxix, D.19336
	addl	$1, %edx	#, D.19336
	movl	%edx, 16(%rax)	# D.19336, PL_curstackinfo.854_60->si_cxix
	jmp	.L689	#
.L688:
	.loc 1 1727 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.855
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19336, PL_curstackinfo.855_64->si_cxix
.L689:
	.loc 1 1727 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.856
	movq	8(%rax), %rcx	# PL_curstackinfo.856_67->si_cxstack, D.19342
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.857
	movl	16(%rax), %eax	# PL_curstackinfo.857_69->si_cxix, D.19336
	movslq	%eax, %rdx	# D.19336, D.19337
	movq	%rdx, %rax	# D.19337, tmp282
	salq	$3, %rax	#, tmp282
	addq	%rdx, %rax	# D.19337, tmp282
	salq	$4, %rax	#, tmp283
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	-76(%rbp), %eax	# cxtype, tmp284
	movl	%eax, (%rbx)	# tmp284, cx_73->cx_type
	movq	%r12, %rdx	# sp, sp.858
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.859
	subq	%rax, %rdx	# PL_stack_base.860, D.19343
	movq	%rdx, %rax	# D.19343, D.19343
	sarq	$3, %rax	#, tmp285
	movl	%eax, 8(%rbx)	# D.19336, cx_73->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.861
	movq	%rax, 16(%rbx)	# PL_curcop.861, cx_73->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.862
	movq	%rax, %rdx	# PL_markstack_ptr.862, PL_markstack_ptr.863
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.864
	subq	%rax, %rdx	# PL_markstack.865, D.19343
	movq	%rdx, %rax	# D.19343, D.19343
	sarq	$2, %rax	#, tmp286
	movl	%eax, 28(%rbx)	# D.19336, cx_73->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.866
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.866, cx_73->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.867
	movl	%eax, 24(%rbx)	# PL_retstack_ix.867, cx_73->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.868
	movq	%rax, 40(%rbx)	# PL_curpm.868, cx_73->cx_u.cx_blk.blku_oldpm
	movl	-80(%rbp), %eax	# gimme, tmp287
	movb	%al, 48(%rbx)	# D.19338, cx_73->cx_u.cx_blk.blku_gimme
	.loc 1 1731 0 is_stmt 1 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.869
	movq	40(%rax), %rax	# PL_curcop.869_92->cop_label, D.19344
	movq	%rax, 56(%rbx)	# D.19344, cx_73->cx_u.cx_blk.blk_u.blku_loop.label
	movq	%r13, %rdx	# mark, mark.870
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.871
	subq	%rax, %rdx	# PL_stack_base.872, D.19343
	movq	%rdx, %rax	# D.19343, D.19343
	sarq	$3, %rax	#, tmp288
	movl	%eax, 64(%rbx)	# D.19336, cx_73->cx_u.cx_blk.blk_u.blku_loop.resetsp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.873
	movq	56(%rax), %rax	# MEM[(struct LOOP *)PL_op.873_100].op_redoop, D.19335
	movq	%rax, 72(%rbx)	# D.19335, cx_73->cx_u.cx_blk.blk_u.blku_loop.redo_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.874
	movq	64(%rax), %rax	# MEM[(struct LOOP *)PL_op.874_102].op_nextop, D.19335
	movq	%rax, 80(%rbx)	# D.19335, cx_73->cx_u.cx_blk.blk_u.blku_loop.next_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.875
	movq	72(%rax), %rax	# MEM[(struct LOOP *)PL_op.875_104].op_lastop, D.19335
	movq	%rax, 88(%rbx)	# D.19335, cx_73->cx_u.cx_blk.blk_u.blku_loop.last_op
	movq	$0, 112(%rbx)	#, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterlval
	movq	$0, 120(%rbx)	#, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary
	movq	$-1, 128(%rbx)	#, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	-64(%rbp), %rax	# svp, tmp289
	movq	%rax, 96(%rbx)	# tmp289, cx_73->cx_u.cx_blk.blk_u.blku_loop.itervar
	movq	96(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19345
	testq	%rax, %rax	# D.19345
	je	.L690	#,
	.loc 1 1731 0 is_stmt 0 discriminator 1
	movq	96(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19345
	movq	(%rax), %rax	# *_107, PL_Sv.876
	movq	%rax, PL_Sv(%rip)	# PL_Sv.876, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.878
	testq	%rax, %rax	# PL_Sv.878
	je	.L692	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.879
	movl	8(%rax), %edx	# PL_Sv.879_110->sv_refcnt, D.19346
	addl	$1, %edx	#, D.19346
	movl	%edx, 8(%rax)	# D.19346, PL_Sv.879_110->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.879_110->sv_refcnt, D.19346
	testl	%eax, %eax	# D.19346
	je	.L692	#,
	.loc 1 1731 0
	nop
.L692:
	.loc 1 1731 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.880
	movq	%rax, 104(%rbx)	# PL_Sv.880, cx_73->cx_u.cx_blk.blk_u.blku_loop.itersave
	jmp	.L693	#
.L690:
	.loc 1 1731 0 discriminator 2
	movq	$0, 104(%rbx)	#, cx_73->cx_u.cx_blk.blk_u.blku_loop.itersave
.L693:
	.loc 1 1733 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.881
	movzbl	36(%rax), %eax	# PL_op.881_117->op_flags, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$64, %eax	#, D.19336
	testl	%eax, %eax	# D.19336
	je	.L694	#,
	.loc 1 1734 0
	movq	%r12, %rax	# sp, sp.882
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.882_121, PL_Sv.883
	movq	%rax, PL_Sv(%rip)	# PL_Sv.883, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.885
	testq	%rax, %rax	# PL_Sv.885
	je	.L696	#,
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.886
	movl	8(%rax), %edx	# PL_Sv.886_125->sv_refcnt, D.19346
	addl	$1, %edx	#, D.19346
	movl	%edx, 8(%rax)	# D.19346, PL_Sv.886_125->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.886_125->sv_refcnt, D.19346
	testl	%eax, %eax	# D.19346
	je	.L696	#,
	.loc 1 1734 0
	nop
.L696:
	.loc 1 1734 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.887
	movq	%rax, 120(%rbx)	# PL_Sv.887, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary
	.loc 1 1735 0 is_stmt 1 discriminator 4
	movq	120(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19347
	movl	12(%rax), %eax	# _132->sv_flags, D.19346
	movzbl	%al, %eax	# D.19346, D.19346
	cmpl	$10, %eax	#, D.19346
	je	.L697	#,
.LBB55:
	.loc 1 1736 0
	movq	%r12, %rax	# sp, sp.888
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.888_135, tmp290
	movq	%rax, -48(%rbp)	# tmp290, sv
	.loc 1 1737 0
	movq	120(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary, tmp291
	movq	%rax, -40(%rbp)	# tmp291, right
	.loc 1 1738 0
	movq	-48(%rbp), %rax	# sv, tmp292
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$50331648, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	jne	.L698	#,
	.loc 1 1738 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp293
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L699	#,
	movq	-48(%rbp), %rax	# sv, tmp294
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$67108864, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L698	#,
.L699:
	.loc 1 1738 0 discriminator 2
	movq	-40(%rbp), %rax	# right, tmp295
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$50331648, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	jne	.L698	#,
	.loc 1 1738 0 discriminator 1
	movq	-40(%rbp), %rax	# right, tmp296
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L700	#,
	movq	-40(%rbp), %rax	# right, tmp297
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$67108864, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L698	#,
.L700:
	.loc 1 1738 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp298
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	jne	.L701	#,
	.loc 1 1738 0 discriminator 1
	movq	-40(%rbp), %rax	# right, tmp299
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	jne	.L702	#,
.L701:
	.loc 1 1738 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp300
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L703	#,
	movq	-48(%rbp), %rax	# sv, tmp301
	movq	%rax, %rdi	# tmp301,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.19336
	je	.L704	#,
.L703:
	.loc 1 1738 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp302
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$67108864, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L704	#,
	movq	-48(%rbp), %rax	# sv, tmp303
	movq	(%rax), %rax	# sv_137->sv_any, D.19348
	movq	(%rax), %rax	# MEM[(struct XPV *)_160].xpv_pv, D.19344
	movzbl	(%rax), %eax	# *_161, D.19349
	cmpb	$48, %al	#, D.19349
	je	.L704	#,
.L702:
	movq	-40(%rbp), %rax	# right, tmp304
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L698	#,
	movq	-40(%rbp), %rax	# right, tmp305
	movq	%rax, %rdi	# tmp305,
	call	Perl_looks_like_number	#
	testl	%eax, %eax	# D.19336
	je	.L704	#,
.L698:
	.loc 1 1739 0 is_stmt 1
	movq	-48(%rbp), %rax	# sv, tmp306
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L705	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp307
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$131072, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L706	#,
	.loc 1 1739 0 discriminator 3
	movq	-48(%rbp), %rax	# sv, tmp308
	movq	(%rax), %rax	# sv_137->sv_any, D.19348
	movsd	32(%rax), %xmm1	# MEM[(struct XPVNV *)_185].xnv_nv, D.19350
	movsd	.LC13(%rip), %xmm0	#, tmp309
	ucomisd	%xmm1, %xmm0	# D.19350, tmp309
	ja	.L707	#,
	jmp	.L705	#
.L706:
	.loc 1 1739 0 discriminator 4
	movq	-48(%rbp), %rax	# sv, tmp310
	movq	%rax, %rdi	# tmp310,
	call	Perl_sv_2nv	#
	movsd	.LC13(%rip), %xmm1	#, tmp311
	ucomisd	%xmm0, %xmm1	# D.19350, tmp311
	ja	.L707	#,
.L705:
	.loc 1 1740 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax	# right, tmp312
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$118423552, %eax	#, D.19346
	.loc 1 1739 0 discriminator 2
	testl	%eax, %eax	# D.19346
	je	.L708	#,
	.loc 1 1740 0 discriminator 1
	movq	-40(%rbp), %rax	# right, tmp313
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$131072, %eax	#, D.19346
	.loc 1 1739 0 discriminator 1
	testl	%eax, %eax	# D.19346
	je	.L709	#,
	.loc 1 1740 0
	movq	-40(%rbp), %rax	# right, tmp314
	movq	(%rax), %rax	# right_138->sv_any, D.19348
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_192].xnv_nv, D.19350
	ucomisd	.LC14(%rip), %xmm0	#, D.19350
	jae	.L707	#,
	jmp	.L708	#
.L709:
	movq	-40(%rbp), %rax	# right, tmp315
	movq	%rax, %rdi	# tmp315,
	call	Perl_sv_2nv	#
	ucomisd	.LC14(%rip), %xmm0	#, D.19350
	jb	.L708	#,
.L707:
	.loc 1 1741 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L711	#
.L708:
	.loc 1 1742 0
	movq	-48(%rbp), %rax	# sv, tmp316
	movl	12(%rax), %eax	# sv_137->sv_flags, D.19346
	andl	$65536, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L712	#,
	.loc 1 1742 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp317
	movq	(%rax), %rax	# sv_137->sv_any, D.19348
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_197].xiv_iv, iftmp.889
	jmp	.L713	#
.L712:
	.loc 1 1742 0 discriminator 2
	movq	-48(%rbp), %rax	# sv, tmp318
	movq	%rax, %rdi	# tmp318,
	call	Perl_sv_2iv	#
.L713:
	.loc 1 1742 0 discriminator 3
	movq	%rax, 128(%rbx)	# iftmp.889, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterix
	.loc 1 1743 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# right, tmp319
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$65536, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L714	#,
	.loc 1 1743 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# right, tmp320
	movq	(%rax), %rax	# right_138->sv_any, D.19348
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_202].xiv_iv, iftmp.890
	jmp	.L715	#
.L714:
	.loc 1 1743 0 discriminator 2
	movq	-40(%rbp), %rax	# right, tmp321
	movq	%rax, %rdi	# tmp321,
	call	Perl_sv_2iv	#
.L715:
	.loc 1 1743 0 discriminator 3
	movq	%rax, 136(%rbx)	# iftmp.890, cx_73->cx_u.cx_blk.blk_u.blku_loop.itermax
	jmp	.L716	#
.L704:
.LBB56:
	.loc 1 1747 0 is_stmt 1
	movq	-48(%rbp), %rax	# sv, tmp322
	movq	%rax, %rdi	# tmp322,
	call	Perl_newSVsv	#
	movq	%rax, 112(%rbx)	# D.19341, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterlval
	.loc 1 1748 0
	movq	112(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19341
	movl	12(%rax), %eax	# _167->sv_flags, D.19346
	andl	$10223616, %eax	#, D.19346
	cmpl	$262144, %eax	#, D.19346
	jne	.L717	#,
	.loc 1 1748 0 is_stmt 0 discriminator 1
	movq	112(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19341
	movq	(%rax), %rax	# _170->sv_any, D.19348
	movq	8(%rax), %rax	# MEM[(struct XPV *)_171].xpv_cur, n_a.891
	movq	%rax, -72(%rbp)	# n_a.891, n_a
	jmp	.L718	#
.L717:
	.loc 1 1748 0 discriminator 2
	movq	112(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19341
	leaq	-72(%rbp), %rcx	#, tmp323
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp323,
	movq	%rax, %rdi	# D.19341,
	call	Perl_sv_pvn_force_flags	#
.L718:
	.loc 1 1749 0 is_stmt 1
	movq	-40(%rbp), %rax	# right, tmp324
	movl	12(%rax), %eax	# right_138->sv_flags, D.19346
	andl	$262144, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L719	#,
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# right, tmp325
	movq	(%rax), %rax	# right_138->sv_any, D.19348
	movq	8(%rax), %rax	# MEM[(struct XPV *)_178].xpv_cur, n_a.892
	movq	%rax, -72(%rbp)	# n_a.892, n_a
	jmp	.L716	#
.L719:
	.loc 1 1749 0 discriminator 2
	leaq	-72(%rbp), %rcx	#, tmp327
	movq	-40(%rbp), %rax	# right, tmp328
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp327,
	movq	%rax, %rdi	# tmp328,
	call	Perl_sv_2pv_flags	#
.LBE56:
.LBE55:
	jmp	.L724	#
.L716:
	jmp	.L724	#
.L697:
	.loc 1 1752 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.893
	movzbl	37(%rax), %eax	# PL_op.893_206->op_private, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$4, %eax	#, D.19336
	testl	%eax, %eax	# D.19336
	je	.L724	#,
	.loc 1 1753 0
	movq	$-1, 136(%rbx)	#, cx_73->cx_u.cx_blk.blk_u.blku_loop.itermax
	.loc 1 1754 0
	movq	120(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19347
	movl	12(%rax), %eax	# MEM[(struct SV *)_210].sv_flags, D.19346
	andl	$32768, %eax	#, D.19346
	testl	%eax, %eax	# D.19346
	je	.L722	#,
	.loc 1 1754 0 is_stmt 0 discriminator 1
	movq	120(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19347
	movq	%rax, %rdi	# D.19347,
	call	Perl_mg_size	#
	cltq
	jmp	.L723	#
.L722:
	.loc 1 1754 0 discriminator 2
	movq	120(%rbx), %rax	# cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19347
	movq	(%rax), %rax	# _216->sv_any, D.19351
	movq	8(%rax), %rax	# _217->xav_fill, iftmp.894
.L723:
	.loc 1 1754 0 discriminator 3
	movq	%rax, 128(%rbx)	# iftmp.894, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterix
	jmp	.L724	#
.L694:
	.loc 1 1759 0 is_stmt 1
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.895
	movq	%rax, 120(%rbx)	# PL_curstack.895, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterary
	.loc 1 1760 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.896
	movq	(%rax), %rax	# PL_curstack.896_220->sv_any, D.19351
	movq	%r12, %rcx	# sp, sp.897
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.898
	subq	%rdx, %rcx	# PL_stack_base.899, D.19343
	movq	%rcx, %rdx	# D.19343, D.19343
	sarq	$3, %rdx	#, tmp329
	movq	%rdx, 8(%rax)	# D.19343, _221->xav_fill
	.loc 1 1761 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.900
	movzbl	37(%rax), %eax	# PL_op.900_227->op_private, D.19338
	movzbl	%al, %eax	# D.19338, D.19336
	andl	$4, %eax	#, D.19336
	testl	%eax, %eax	# D.19336
	je	.L725	#,
	.loc 1 1762 0
	movq	%r13, %rdx	# mark, mark.901
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.902
	subq	%rax, %rdx	# PL_stack_base.903, D.19343
	movq	%rdx, %rax	# D.19343, D.19343
	sarq	$3, %rax	#, tmp330
	movq	%rax, 136(%rbx)	# D.19343, cx_73->cx_u.cx_blk.blk_u.blku_loop.itermax
	.loc 1 1763 0
	movl	8(%rbx), %eax	# cx_73->cx_u.cx_blk.blku_oldsp, D.19336
	cltq
	movq	%rax, 128(%rbx)	# D.19343, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterix
	jmp	.L724	#
.L725:
	.loc 1 1766 0
	movq	%r13, %rdx	# mark, mark.904
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.905
	subq	%rax, %rdx	# PL_stack_base.906, D.19343
	movq	%rdx, %rax	# D.19343, D.19343
	sarq	$3, %rax	#, tmp331
	movq	%rax, 128(%rbx)	# D.19343, cx_73->cx_u.cx_blk.blk_u.blku_loop.iterix
.L724:
	.loc 1 1770 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.907
	movq	(%rax), %rax	# PL_op.907_243->op_next, D.19335
.L711:
	.loc 1 1771 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_pp_enteriter, .-Perl_pp_enteriter
	.globl	Perl_pp_enterloop
	.type	Perl_pp_enterloop, @function
Perl_pp_enterloop:
.LFB37:
	.loc 1 1774 0
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
	.loc 1 1775 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1777 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.909
	movzbl	36(%rax), %eax	# PL_op.909_5->op_flags, D.19352
	movzbl	%al, %eax	# D.19352, D.19353
	andl	$3, %eax	#, D.19353
	cmpl	$1, %eax	#, D.19353
	je	.L727	#,
	.loc 1 1777 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.911
	movzbl	36(%rax), %eax	# PL_op.911_9->op_flags, D.19352
	movzbl	%al, %eax	# D.19352, D.19353
	andl	$3, %eax	#, D.19353
	cmpl	$2, %eax	#, D.19353
	je	.L728	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.913
	movzbl	36(%rax), %eax	# PL_op.913_13->op_flags, D.19352
	movzbl	%al, %eax	# D.19352, D.19353
	andl	$3, %eax	#, D.19353
	cmpl	$3, %eax	#, D.19353
	je	.L729	#,
	call	Perl_block_gimme	#
	jmp	.L732	#
.L729:
	.loc 1 1777 0 discriminator 2
	movl	$1, %eax	#, iftmp.912
	jmp	.L732	#
.L728:
	movl	$0, %eax	#, iftmp.910
	jmp	.L732	#
.L727:
	movl	$128, %eax	#, iftmp.908
.L732:
	.loc 1 1777 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.908, gimme
	.loc 1 1779 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1780 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.914
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.914, PL_tmps_floor
	.loc 1 1781 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1783 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.916
	movl	16(%rax), %edx	# PL_curstackinfo.916_25->si_cxix, D.19353
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.917
	movl	20(%rax), %eax	# PL_curstackinfo.917_27->si_cxmax, D.19353
	cmpl	%eax, %edx	# D.19353, D.19353
	jge	.L733	#,
	.loc 1 1783 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.918
	movl	16(%rax), %edx	# PL_curstackinfo.918_29->si_cxix, D.19353
	addl	$1, %edx	#, D.19353
	movl	%edx, 16(%rax)	# D.19353, PL_curstackinfo.918_29->si_cxix
	jmp	.L734	#
.L733:
	.loc 1 1783 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.919
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19353, PL_curstackinfo.919_33->si_cxix
.L734:
	.loc 1 1783 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.920
	movq	8(%rax), %rcx	# PL_curstackinfo.920_36->si_cxstack, D.19354
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.921
	movl	16(%rax), %eax	# PL_curstackinfo.921_38->si_cxix, D.19353
	movslq	%eax, %rdx	# D.19353, D.19355
	movq	%rdx, %rax	# D.19355, tmp140
	salq	$3, %rax	#, tmp140
	addq	%rdx, %rax	# D.19355, tmp140
	salq	$4, %rax	#, tmp141
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$3, (%rbx)	#, cx_42->cx_type
	movq	%r12, %rdx	# sp, sp.922
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.923
	subq	%rax, %rdx	# PL_stack_base.924, D.19356
	movq	%rdx, %rax	# D.19356, D.19356
	sarq	$3, %rax	#, tmp142
	movl	%eax, 8(%rbx)	# D.19353, cx_42->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.925
	movq	%rax, 16(%rbx)	# PL_curcop.925, cx_42->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.926
	movq	%rax, %rdx	# PL_markstack_ptr.926, PL_markstack_ptr.927
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.928
	subq	%rax, %rdx	# PL_markstack.929, D.19356
	movq	%rdx, %rax	# D.19356, D.19356
	sarq	$2, %rax	#, tmp143
	movl	%eax, 28(%rbx)	# D.19353, cx_42->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.930
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.930, cx_42->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.931
	movl	%eax, 24(%rbx)	# PL_retstack_ix.931, cx_42->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.932
	movq	%rax, 40(%rbx)	# PL_curpm.932, cx_42->cx_u.cx_blk.blku_oldpm
	movl	-20(%rbp), %eax	# gimme, tmp144
	movb	%al, 48(%rbx)	# D.19352, cx_42->cx_u.cx_blk.blku_gimme
	.loc 1 1784 0 is_stmt 1 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.933
	movq	40(%rax), %rax	# PL_curcop.933_61->cop_label, D.19357
	movq	%rax, 56(%rbx)	# D.19357, cx_42->cx_u.cx_blk.blk_u.blku_loop.label
	movq	%r12, %rdx	# sp, sp.934
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.935
	subq	%rax, %rdx	# PL_stack_base.936, D.19356
	movq	%rdx, %rax	# D.19356, D.19356
	sarq	$3, %rax	#, tmp145
	movl	%eax, 64(%rbx)	# D.19353, cx_42->cx_u.cx_blk.blk_u.blku_loop.resetsp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.937
	movq	56(%rax), %rax	# MEM[(struct LOOP *)PL_op.937_69].op_redoop, D.19358
	movq	%rax, 72(%rbx)	# D.19358, cx_42->cx_u.cx_blk.blk_u.blku_loop.redo_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.938
	movq	64(%rax), %rax	# MEM[(struct LOOP *)PL_op.938_71].op_nextop, D.19358
	movq	%rax, 80(%rbx)	# D.19358, cx_42->cx_u.cx_blk.blk_u.blku_loop.next_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.939
	movq	72(%rax), %rax	# MEM[(struct LOOP *)PL_op.939_73].op_lastop, D.19358
	movq	%rax, 88(%rbx)	# D.19358, cx_42->cx_u.cx_blk.blk_u.blku_loop.last_op
	movq	$0, 112(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_loop.iterlval
	movq	$0, 120(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_loop.iterary
	movq	$-1, 128(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	$0, 96(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_loop.itervar
	movq	96(%rbx), %rax	# cx_42->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19359
	testq	%rax, %rax	# D.19359
	je	.L735	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movq	96(%rbx), %rax	# cx_42->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19359
	movq	(%rax), %rax	# *_76, PL_Sv.940
	movq	%rax, PL_Sv(%rip)	# PL_Sv.940, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.942
	testq	%rax, %rax	# PL_Sv.942
	je	.L737	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.943
	movl	8(%rax), %edx	# PL_Sv.943_79->sv_refcnt, D.19360
	addl	$1, %edx	#, D.19360
	movl	%edx, 8(%rax)	# D.19360, PL_Sv.943_79->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.943_79->sv_refcnt, D.19360
	testl	%eax, %eax	# D.19360
	je	.L737	#,
	.loc 1 1784 0
	nop
.L737:
	.loc 1 1784 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.944
	movq	%rax, 104(%rbx)	# PL_Sv.944, cx_42->cx_u.cx_blk.blk_u.blku_loop.itersave
	jmp	.L738	#
.L735:
	.loc 1 1784 0 discriminator 2
	movq	$0, 104(%rbx)	#, cx_42->cx_u.cx_blk.blk_u.blku_loop.itersave
.L738:
	.loc 1 1786 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.945
	movq	(%rax), %rax	# PL_op.945_86->op_next, D.19358
	.loc 1 1787 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_pp_enterloop, .-Perl_pp_enterloop
	.globl	Perl_pp_leaveloop
	.type	Perl_pp_leaveloop, @function
Perl_pp_leaveloop:
.LFB38:
	.loc 1 1790 0
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
	.loc 1 1791 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1798 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.946
	movq	8(%rax), %rsi	# PL_curstackinfo.946_6->si_cxstack, D.19361
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.947
	movl	16(%rax), %edx	# PL_curstackinfo.947_8->si_cxix, D.19362
	leal	-1(%rdx), %ecx	#, D.19362
	movl	%ecx, 16(%rax)	# D.19362, PL_curstackinfo.947_8->si_cxix
	movslq	%edx, %rdx	# D.19362, D.19363
	movq	%rdx, %rax	# D.19363, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# D.19363, tmp100
	salq	$4, %rax	#, tmp101
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.948
	movl	8(%rbx), %edx	# cx_14->cx_u.cx_blk.blku_oldsp, D.19362
	movslq	%edx, %rdx	# D.19362, D.19363
	salq	$3, %rdx	#, D.19363
	addq	%rdx, %rax	# D.19363, tmp102
	movq	%rax, -48(%rbp)	# tmp102, newsp
	movq	16(%rbx), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, PL_curcop.949
	movq	%rax, PL_curcop(%rip)	# PL_curcop.949, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.950
	movl	28(%rbx), %edx	# cx_14->cx_u.cx_blk.blku_oldmarksp, D.19362
	movslq	%edx, %rdx	# D.19362, D.19363
	salq	$2, %rdx	#, D.19363
	addq	%rdx, %rax	# D.19363, PL_markstack_ptr.951
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.951, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.952
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.952, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.953
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.953, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_14->cx_u.cx_blk.blku_oldpm, tmp103
	movq	%rax, -32(%rbp)	# tmp103, newpm
	movzbl	48(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_gimme, D.19364
	movzbl	%al, %eax	# D.19364, tmp104
	movl	%eax, -52(%rbp)	# tmp104, gimme
	.loc 1 1799 0
	movq	-48(%rbp), %rax	# newsp, tmp105
	movq	%rax, -40(%rbp)	# tmp105, mark
	.loc 1 1800 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.954
	movl	64(%rbx), %edx	# cx_14->cx_u.cx_blk.blk_u.blku_loop.resetsp, D.19362
	movslq	%edx, %rdx	# D.19362, D.19363
	salq	$3, %rdx	#, D.19363
	addq	%rdx, %rax	# D.19363, tmp106
	movq	%rax, -48(%rbp)	# tmp106, newsp
	.loc 1 1802 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1803 0
	cmpl	$128, -52(%rbp)	#, gimme
	je	.L741	#,
	.loc 1 1805 0
	cmpl	$0, -52(%rbp)	#, gimme
	jne	.L742	#,
	.loc 1 1806 0
	cmpq	%r12, -40(%rbp)	# sp, mark
	jae	.L743	#,
	.loc 1 1807 0
	addq	$8, -48(%rbp)	#, newsp
	movq	(%r12), %rax	# *sp_5, D.19365
	movq	%rax, %rdi	# D.19365,
	call	Perl_sv_mortalcopy	#
	movq	-48(%rbp), %rdx	# newsp, tmp107
	movq	%rax, (%rdx)	# D.19365, *newsp_37
	jmp	.L741	#
.L743:
	.loc 1 1809 0
	addq	$8, -48(%rbp)	#, newsp
	movq	-48(%rbp), %rax	# newsp, tmp108
	movq	$PL_sv_undef, (%rax)	#, *newsp_40
	jmp	.L741	#
.L742:
	.loc 1 1812 0
	jmp	.L745	#
.L746:
	.loc 1 1813 0
	addq	$8, -48(%rbp)	#, newsp
	addq	$8, -40(%rbp)	#, mark
	movq	-40(%rbp), %rax	# mark, tmp109
	movq	(%rax), %rax	# *mark_42, D.19365
	movq	%rax, %rdi	# D.19365,
	call	Perl_sv_mortalcopy	#
	movq	-48(%rbp), %rdx	# newsp, tmp110
	movq	%rax, (%rdx)	# D.19365, *newsp_41
	.loc 1 1814 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L745:
	.loc 1 1812 0 discriminator 1
	cmpq	%r12, -40(%rbp)	# sp, mark
	jb	.L746	#,
.L741:
	.loc 1 1817 0
	movq	-48(%rbp), %r12	# newsp, sp
	.loc 1 1818 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1820 0
	movq	112(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19365
	movq	%rax, %rdi	# D.19365,
	call	Perl_sv_free	#
	movq	96(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19366
	testq	%rax, %rax	# D.19366
	je	.L747	#,
.LBB57:
	.loc 1 1820 0 is_stmt 0 discriminator 1
	movq	96(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_loop.itervar, tmp111
	movq	%rax, -24(%rbp)	# tmp111, s_v_p
	movq	-24(%rbp), %rax	# s_v_p, tmp112
	movq	(%rax), %rax	# *s_v_p_48, D.19365
	movq	%rax, %rdi	# D.19365,
	call	Perl_sv_2mortal	#
	movq	104(%rbx), %rdx	# cx_14->cx_u.cx_blk.blk_u.blku_loop.itersave, D.19365
	movq	-24(%rbp), %rax	# s_v_p, tmp113
	movq	%rdx, (%rax)	# D.19365, *s_v_p_48
.L747:
.LBE57:
	.loc 1 1820 0 discriminator 2
	movq	120(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19367
	testq	%rax, %rax	# D.19367
	je	.L748	#,
	.loc 1 1820 0 discriminator 1
	movq	120(%rbx), %rdx	# cx_14->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19367
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.955
	cmpq	%rax, %rdx	# PL_curstack.955, D.19367
	je	.L748	#,
	movq	120(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19367
	movq	%rax, %rdi	# D.19367,
	call	Perl_sv_free	#
.L748:
	.loc 1 1821 0 is_stmt 1
	movq	-32(%rbp), %rax	# newpm, tmp114
	movq	%rax, PL_curpm(%rip)	# tmp114, PL_curpm
	.loc 1 1823 0
	call	Perl_pop_scope	#
	.loc 1 1824 0
	call	Perl_pop_scope	#
	.loc 1 1826 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.956
	movq	(%rax), %rax	# PL_op.956_55->op_next, D.19368
	.loc 1 1827 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_pp_leaveloop, .-Perl_pp_leaveloop
	.section	.rodata
	.align 8
.LC39:
	.string	"Can't return outside a subroutine"
	.align 8
.LC40:
	.string	"%_ did not return a true value"
.LC41:
	.string	"panic: return"
	.text
	.globl	Perl_pp_return
	.type	Perl_pp_return, @function
Perl_pp_return:
.LFB39:
	.loc 1 1830 0
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
	.loc 1 1831 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.957
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.958
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.960
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.960, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.959_21, D.19370
	cltq
	salq	$3, %rax	#, D.19371
	leaq	(%rcx,%rax), %r13	#, mark
	.loc 1 1834 0
	movb	$0, -86(%rbp)	#, popsub2
	.loc 1 1835 0
	movb	$0, -85(%rbp)	#, clear_errsv
	.loc 1 1839 0
	movl	$0, -84(%rbp)	#, optype
	.loc 1 1842 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.961
	movl	24(%rax), %eax	# PL_curstackinfo.961_30->si_type, D.19370
	cmpl	$3, %eax	#, D.19370
	jne	.L751	#,
	.loc 1 1843 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.962
	movl	16(%rax), %edx	# PL_curstackinfo.962_32->si_cxix, D.19370
	movl	PL_sortcxix(%rip), %eax	# PL_sortcxix, PL_sortcxix.963
	cmpl	%eax, %edx	# PL_sortcxix.963, D.19370
	je	.L752	#,
	.loc 1 1844 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.964
	movl	16(%rax), %eax	# PL_curstackinfo.964_35->si_cxix, D.19370
	movl	%eax, %edi	# D.19370,
	call	S_dopoptosub	#
	movl	PL_sortcxix(%rip), %edx	# PL_sortcxix, PL_sortcxix.965
	cmpl	%edx, %eax	# PL_sortcxix.965, D.19370
	jg	.L751	#,
.L752:
	.loc 1 1846 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.966
	movl	16(%rax), %edx	# PL_curstackinfo.966_39->si_cxix, D.19370
	movl	PL_sortcxix(%rip), %eax	# PL_sortcxix, PL_sortcxix.967
	cmpl	%eax, %edx	# PL_sortcxix.967, D.19370
	jle	.L753	#,
	.loc 1 1847 0
	movl	PL_sortcxix(%rip), %eax	# PL_sortcxix, PL_sortcxix.968
	movl	%eax, %edi	# PL_sortcxix.968,
	call	Perl_dounwind	#
.L753:
	.loc 1 1848 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.969
	movq	(%rax), %rax	# PL_curstack.969_43->sv_any, D.19372
	movq	(%rax), %rax	# _44->xav_array, D.19373
	leaq	8(%rax), %rdx	#, D.19374
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	%rax, (%rdx)	# D.19375, *_46
	.loc 1 1849 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.970
	addq	$8, %rax	#, PL_stack_sp.971
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.971, PL_stack_sp
	.loc 1 1850 0
	movl	$0, %eax	#, D.19369
	jmp	.L754	#
.L751:
	.loc 1 1854 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.972
	movl	16(%rax), %eax	# PL_curstackinfo.972_51->si_cxix, D.19370
	movl	%eax, %edi	# D.19370,
	call	S_dopoptosub	#
	movl	%eax, -80(%rbp)	# tmp280, cxix
	.loc 1 1855 0
	cmpl	$0, -80(%rbp)	#, cxix
	jns	.L755	#,
	.loc 1 1856 0
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L754	#
.L755:
	.loc 1 1857 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.973
	movl	16(%rax), %eax	# PL_curstackinfo.973_55->si_cxix, D.19370
	cmpl	-80(%rbp), %eax	# cxix, D.19370
	jle	.L756	#,
	.loc 1 1858 0
	movl	-80(%rbp), %eax	# cxix, tmp281
	movl	%eax, %edi	# tmp281,
	call	Perl_dounwind	#
.L756:
	.loc 1 1860 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.974
	movq	8(%rax), %rsi	# PL_curstackinfo.974_57->si_cxstack, D.19376
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.975
	movl	16(%rax), %edx	# PL_curstackinfo.975_59->si_cxix, D.19370
	leal	-1(%rdx), %ecx	#, D.19370
	movl	%ecx, 16(%rax)	# D.19370, PL_curstackinfo.975_59->si_cxix
	movslq	%edx, %rdx	# D.19370, D.19371
	movq	%rdx, %rax	# D.19371, tmp282
	salq	$3, %rax	#, tmp282
	addq	%rdx, %rax	# D.19371, tmp282
	salq	$4, %rax	#, tmp283
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.976
	movl	8(%rbx), %edx	# cx_65->cx_u.cx_blk.blku_oldsp, D.19370
	movslq	%edx, %rdx	# D.19370, D.19371
	salq	$3, %rdx	#, D.19371
	addq	%rdx, %rax	# D.19371, tmp284
	movq	%rax, -72(%rbp)	# tmp284, newsp
	movq	16(%rbx), %rax	# cx_65->cx_u.cx_blk.blku_oldcop, PL_curcop.977
	movq	%rax, PL_curcop(%rip)	# PL_curcop.977, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.978
	movl	28(%rbx), %edx	# cx_65->cx_u.cx_blk.blku_oldmarksp, D.19370
	movslq	%edx, %rdx	# D.19370, D.19371
	salq	$2, %rdx	#, D.19371
	addq	%rdx, %rax	# D.19371, PL_markstack_ptr.979
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.979, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_65->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.980
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.980, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_65->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.981
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.981, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_65->cx_u.cx_blk.blku_oldpm, tmp285
	movq	%rax, -56(%rbp)	# tmp285, newpm
	movzbl	48(%rbx), %eax	# cx_65->cx_u.cx_blk.blku_gimme, D.19377
	movzbl	%al, %eax	# D.19377, tmp286
	movl	%eax, -76(%rbp)	# tmp286, gimme
	.loc 1 1861 0
	movl	(%rbx), %eax	# cx_65->cx_type, D.19378
	movzbl	%al, %eax	# D.19378, D.19378
	cmpl	$2, %eax	#, D.19378
	je	.L758	#,
	cmpl	$6, %eax	#, D.19378
	je	.L759	#,
	cmpl	$1, %eax	#, D.19378
	jne	.L805	#,
	.loc 1 1863 0
	movb	$1, -86(%rbp)	#, popsub2
	.loc 1 1864 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.982
	movl	16(%rax), %edx	# PL_curstackinfo.982_85->si_cxix, D.19370
	addl	$1, %edx	#, D.19370
	movl	%edx, 16(%rax)	# D.19370, PL_curstackinfo.982_85->si_cxix
	.loc 1 1865 0
	jmp	.L761	#
.L758:
	.loc 1 1867 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.983
	andl	$4, %eax	#, D.19370
	testl	%eax, %eax	# D.19370
	jne	.L762	#,
	.loc 1 1868 0
	movb	$1, -85(%rbp)	#, clear_errsv
.L762:
.LBB58:
	.loc 1 1869 0
	movl	56(%rbx), %eax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.984
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.984, PL_in_eval
	movl	60(%rbx), %eax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp287
	movl	%eax, -84(%rbp)	# tmp287, optype
	movq	72(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.985
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.985, PL_eval_root
	movq	64(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19375
	testq	%rax, %rax	# D.19375
	je	.L763	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_2mortal	#
.L763:
.LBE58:
	.loc 1 1870 0 is_stmt 1
	movl	(%rbx), %eax	# cx_65->cx_type, D.19378
	andl	$514, %eax	#, D.19378
	cmpl	$514, %eax	#, D.19378
	jne	.L764	#,
	.loc 1 1871 0
	jmp	.L761	#
.L764:
	.loc 1 1872 0
	call	Perl_lex_end	#
	.loc 1 1873 0
	cmpl	$309, -84(%rbp)	#, optype
	jne	.L765	#,
	.loc 1 1873 0 is_stmt 0 discriminator 1
	cmpq	%r12, %r13	# sp, mark
	je	.L766	#,
	.loc 1 1874 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L765	#,
	.loc 1 1874 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *sp_18, D.19375
	.loc 1 1873 0 is_stmt 1 discriminator 1
	testq	%rax, %rax	# D.19375
	je	.L766	#,
	.loc 1 1874 0 discriminator 2
	movq	(%r12), %rax	# *sp_18, D.19375
	movl	12(%rax), %eax	# _99->sv_flags, D.19378
	andl	$262144, %eax	#, D.19378
	.loc 1 1873 0 discriminator 2
	testl	%eax, %eax	# D.19378
	je	.L767	#,
	.loc 1 1874 0
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	(%rax), %rax	# _102->sv_any, PL_Xpv.987
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.987, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.988
	testq	%rax, %rax	# PL_Xpv.988
	je	.L768	#,
	.loc 1 1874 0 is_stmt 0 discriminator 2
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.989
	movq	8(%rax), %rax	# PL_Xpv.989_105->xpv_cur, D.19371
	cmpq	$1, %rax	#, D.19371
	ja	.L769	#,
	.loc 1 1874 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.990
	movq	8(%rax), %rax	# PL_Xpv.990_107->xpv_cur, D.19371
	testq	%rax, %rax	# D.19371
	je	.L768	#,
	.loc 1 1874 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.991
	movq	(%rax), %rax	# PL_Xpv.991_109->xpv_pv, D.19373
	movzbl	(%rax), %eax	# *_110, D.19379
	cmpb	$48, %al	#, D.19379
	jne	.L769	#,
.L768:
	movl	$1, %eax	#, iftmp.986
	jmp	.L770	#
.L769:
	.loc 1 1874 0 discriminator 4
	movl	$0, %eax	#, iftmp.986
.L770:
	.loc 1 1874 0 discriminator 5
	andl	$1, %eax	#, D.19380
	testb	%al, %al	# D.19380
	jne	.L766	#,
	.loc 1 1881 0 is_stmt 1
	jmp	.L761	#
.L767:
	.loc 1 1874 0 discriminator 3
	movq	(%r12), %rax	# *sp_18, D.19375
	movl	12(%rax), %eax	# _115->sv_flags, D.19378
	andl	$65536, %eax	#, D.19378
	.loc 1 1873 0 discriminator 3
	testl	%eax, %eax	# D.19378
	je	.L771	#,
	.loc 1 1874 0
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	(%rax), %rax	# _118->sv_any, D.19381
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_119].xiv_iv, D.19382
	testq	%rax, %rax	# D.19382
	je	.L766	#,
	.loc 1 1881 0
	jmp	.L761	#
.L771:
	.loc 1 1874 0 discriminator 4
	movq	(%r12), %rax	# *sp_18, D.19375
	movl	12(%rax), %eax	# _121->sv_flags, D.19378
	andl	$131072, %eax	#, D.19378
	.loc 1 1873 0 discriminator 4
	testl	%eax, %eax	# D.19378
	je	.L772	#,
	.loc 1 1874 0
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	(%rax), %rax	# _124->sv_any, D.19381
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_125].xnv_nv, D.19383
	xorpd	%xmm1, %xmm1	# tmp288
	ucomisd	%xmm1, %xmm0	# tmp288, D.19383
	jp	.L765	#,
	xorpd	%xmm1, %xmm1	# tmp289
	ucomisd	%xmm1, %xmm0	# tmp289, D.19383
	je	.L766	#,
	jmp	.L765	#
.L772:
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.19379
	jne	.L765	#,
.L766:
.LBB59:
	.loc 1 1877 0
	movq	64(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_eval.old_namesv, tmp290
	movq	%rax, -48(%rbp)	# tmp290, nsv
	.loc 1 1878 0
	movq	-48(%rbp), %rax	# nsv, tmp291
	movq	(%rax), %rax	# nsv_129->sv_any, D.19381
	movq	8(%rax), %rax	# MEM[(struct XPV *)_130].xpv_cur, D.19371
	movl	%eax, %r12d	# D.19371, D.19370
	movq	-48(%rbp), %rax	# nsv, tmp292
	movq	(%rax), %rax	# nsv_129->sv_any, D.19381
	movq	(%rax), %rbx	# MEM[(struct XPV *)_133].xpv_pv, D.19373
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.993
	movq	(%rax), %rax	# PL_incgv.993_135->sv_any, D.19384
	movq	56(%rax), %rax	# _136->xgv_gp, D.19385
	movq	40(%rax), %rax	# _137->gp_hv, D.19386
	testq	%rax, %rax	# D.19386
	je	.L774	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.994
	movq	(%rax), %rax	# PL_incgv.994_139->sv_any, D.19384
	movq	56(%rax), %rax	# _140->xgv_gp, D.19385
	movq	40(%rax), %rax	# _141->gp_hv, iftmp.992
	jmp	.L775	#
.L774:
	.loc 1 1878 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.995
	movq	%rax, %rdi	# PL_incgv.995,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _144->sv_any, D.19384
	movq	56(%rax), %rax	# _145->xgv_gp, D.19385
	movq	40(%rax), %rax	# _146->gp_hv, iftmp.992
.L775:
	.loc 1 1878 0 discriminator 3
	movl	$2, %ecx	#,
	movl	%r12d, %edx	# D.19370,
	movq	%rbx, %rsi	# D.19373,
	movq	%rax, %rdi	# iftmp.992,
	call	Perl_hv_delete	#
	.loc 1 1879 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# nsv, tmp293
	movq	%rax, %rsi	# tmp293,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L754	#
.L765:
.LBE59:
	.loc 1 1881 0
	jmp	.L761	#
.L759:
	.loc 1 1883 0
	movq	72(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19387
	movq	%rax, %rdi	# D.19387,
	call	Perl_setdefout	#
	movq	72(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19387
	movq	%rax, %rdi	# D.19387,
	call	Perl_sv_free	#
	.loc 1 1884 0
	jmp	.L761	#
.L805:
	.loc 1 1886 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L754	#
.L761:
	.loc 1 1889 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1890 0
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L776	#,
	.loc 1 1891 0
	cmpq	%r12, %r13	# sp, mark
	jae	.L777	#,
	.loc 1 1892 0
	cmpb	$0, -86(%rbp)	#, popsub2
	je	.L778	#,
	.loc 1 1893 0
	movq	56(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.cv, D.19388
	testq	%rax, %rax	# D.19388
	je	.L779	#,
	.loc 1 1893 0 is_stmt 0 discriminator 1
	movq	56(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.cv, D.19388
	movq	(%rax), %rax	# _153->sv_any, D.19389
	movq	112(%rax), %rax	# _154->xcv_depth, D.19382
	cmpq	$1, %rax	#, D.19382
	jle	.L779	#,
	.loc 1 1894 0 is_stmt 1
	movq	(%r12), %rax	# *sp_18, D.19375
	movl	12(%rax), %eax	# _156->sv_flags, D.19378
	andl	$2048, %eax	#, D.19378
	testl	%eax, %eax	# D.19378
	je	.L780	#,
	.loc 1 1895 0
	movq	(%r12), %rax	# *sp_18, PL_Sv.996
	movq	%rax, PL_Sv(%rip)	# PL_Sv.996, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.998
	testq	%rax, %rax	# PL_Sv.998
	je	.L782	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.999
	movl	8(%rax), %edx	# PL_Sv.999_161->sv_refcnt, D.19378
	addl	$1, %edx	#, D.19378
	movl	%edx, 8(%rax)	# D.19378, PL_Sv.999_161->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.999_161->sv_refcnt, D.19378
	testl	%eax, %eax	# D.19378
	je	.L782	#,
	.loc 1 1895 0
	nop
.L782:
	.loc 1 1895 0 discriminator 4
	addq	$8, -72(%rbp)	#, newsp
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1000
	movq	-72(%rbp), %rax	# newsp, tmp294
	movq	%rdx, (%rax)	# PL_Sv.1000, *newsp_167
	.loc 1 1896 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1001
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1002
	cmpl	%eax, %edx	# PL_tmps_floor.1002, PL_tmps_ix.1001
	jle	.L783	#,
	.loc 1 1896 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L783:
	.loc 1 1897 0 is_stmt 1
	movq	-72(%rbp), %rax	# newsp, tmp295
	movq	(%rax), %rax	# *newsp_167, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_2mortal	#
	.loc 1 1894 0
	jmp	.L788	#
.L780:
	.loc 1 1900 0
	movq	(%r12), %rax	# *sp_18, PL_Sv.1003
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1003, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1005
	testq	%rax, %rax	# PL_Sv.1005
	je	.L786	#,
	.loc 1 1900 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1006
	movl	8(%rax), %edx	# PL_Sv.1006_174->sv_refcnt, D.19378
	addl	$1, %edx	#, D.19378
	movl	%edx, 8(%rax)	# D.19378, PL_Sv.1006_174->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1006_174->sv_refcnt, D.19378
	testl	%eax, %eax	# D.19378
	je	.L786	#,
	.loc 1 1900 0
	nop
.L786:
	.loc 1 1900 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp296
	movq	%rax, -64(%rbp)	# tmp296, sv
	.loc 1 1901 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1007
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1008
	cmpl	%eax, %edx	# PL_tmps_floor.1008, PL_tmps_ix.1007
	jle	.L787	#,
	.loc 1 1901 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L787:
	.loc 1 1902 0 is_stmt 1
	addq	$8, -72(%rbp)	#, newsp
	movq	-64(%rbp), %rax	# sv, tmp297
	movq	%rax, %rdi	# tmp297,
	call	Perl_sv_mortalcopy	#
	movq	-72(%rbp), %rdx	# newsp, tmp298
	movq	%rax, (%rdx)	# D.19375, *newsp_183
	.loc 1 1903 0
	movq	-64(%rbp), %rax	# sv, tmp299
	movq	%rax, %rdi	# tmp299,
	call	Perl_sv_free	#
	.loc 1 1894 0
	jmp	.L788	#
.L779:
	.loc 1 1907 0
	addq	$8, -72(%rbp)	#, newsp
	movq	(%r12), %rax	# *sp_18, D.19375
	movl	12(%rax), %eax	# _186->sv_flags, D.19378
	andl	$2048, %eax	#, D.19378
	testl	%eax, %eax	# D.19378
	je	.L789	#,
	.loc 1 1907 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *sp_18, iftmp.1009
	jmp	.L790	#
.L789:
	.loc 1 1907 0 discriminator 2
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_mortalcopy	#
.L790:
	.loc 1 1907 0 discriminator 3
	movq	-72(%rbp), %rdx	# newsp, tmp300
	movq	%rax, (%rdx)	# iftmp.1009, *newsp_185
	jmp	.L793	#
.L788:
	jmp	.L793	#
.L778:
	.loc 1 1910 0 is_stmt 1
	addq	$8, -72(%rbp)	#, newsp
	movq	(%r12), %rax	# *sp_18, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_mortalcopy	#
	movq	-72(%rbp), %rdx	# newsp, tmp301
	movq	%rax, (%rdx)	# D.19375, *newsp_192
	jmp	.L793	#
.L777:
	.loc 1 1913 0
	addq	$8, -72(%rbp)	#, newsp
	movq	-72(%rbp), %rax	# newsp, tmp302
	movq	$PL_sv_undef, (%rax)	#, *newsp_195
	jmp	.L793	#
.L776:
	.loc 1 1915 0
	cmpl	$1, -76(%rbp)	#, gimme
	jne	.L793	#,
	.loc 1 1916 0
	jmp	.L794	#
.L797:
	.loc 1 1917 0
	addq	$8, -72(%rbp)	#, newsp
	.loc 1 1918 0
	cmpb	$0, -86(%rbp)	#, popsub2
	je	.L795	#,
	.loc 1 1917 0
	movq	0(%r13), %rax	# *mark_196, D.19375
	movl	12(%rax), %eax	# _198->sv_flags, D.19378
	andl	$2048, %eax	#, D.19378
	testl	%eax, %eax	# D.19378
	je	.L795	#,
	.loc 1 1918 0
	movq	0(%r13), %rax	# *mark_196, iftmp.1010
	jmp	.L796	#
.L795:
	.loc 1 1918 0 is_stmt 0 discriminator 1
	movq	0(%r13), %rax	# *mark_196, D.19375
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_mortalcopy	#
.L796:
	.loc 1 1917 0 is_stmt 1
	movq	-72(%rbp), %rdx	# newsp, tmp303
	movq	%rax, (%rdx)	# iftmp.1010, *newsp_197
	.loc 1 1919 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L794:
	.loc 1 1916 0 discriminator 1
	addq	$8, %r13	#, mark
	cmpq	%r12, %r13	# sp, mark
	jbe	.L797	#,
.L793:
	.loc 1 1922 0
	movq	-72(%rbp), %rax	# newsp, tmp304
	movq	%rax, PL_stack_sp(%rip)	# tmp304, PL_stack_sp
	.loc 1 1924 0
	call	Perl_pop_scope	#
	.loc 1 1926 0
	cmpb	$0, -86(%rbp)	#, popsub2
	je	.L798	#,
	.loc 1 1927 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1011
	movl	16(%rax), %edx	# PL_curstackinfo.1011_204->si_cxix, D.19370
	subl	$1, %edx	#, D.19370
	movl	%edx, 16(%rax)	# D.19370, PL_curstackinfo.1011_204->si_cxix
.LBB60:
	.loc 1 1928 0
	movzbl	104(%rbx), %eax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19377
	testb	%al, %al	# D.19377
	je	.L799	#,
.LBB61:
	.loc 1 1928 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1012
	movq	(%rax), %rax	# PL_defgv.1012_208->sv_any, D.19384
	movq	56(%rax), %rax	# _209->xgv_gp, D.19385
	movq	32(%rax), %rax	# _210->gp_av, D.19390
	movq	%rax, %rdi	# D.19390,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1013
	movq	(%rax), %rax	# PL_defgv.1013_212->sv_any, D.19384
	movq	56(%rax), %rax	# _213->xgv_gp, D.19385
	movq	80(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.savearray, D.19390
	movq	%rdx, 32(%rax)	# D.19390, _214->gp_av
.LBE61:
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _217->sv_any, D.19372
	movzbl	72(%rax), %eax	# _218->xav_flags, D.19377
	movzbl	%al, %eax	# D.19377, D.19370
	andl	$1, %eax	#, D.19370
	testl	%eax, %eax	# D.19370
	je	.L800	#,
.LBB62:
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _222->sv_any, D.19372
	movq	8(%rax), %rax	# _223->xav_fill, tmp305
	movq	%rax, -40(%rbp)	# tmp305, fill
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	%rax, %rdi	# D.19390,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.19390, cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-40(%rbp), %rax	# fill, tmp306
	movl	%eax, %edx	# tmp306, D.19370
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movl	%edx, %esi	# D.19370,
	movq	%rax, %rdi	# D.19390,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _229->sv_any, D.19372
	movb	$2, 72(%rax)	#, _230->xav_flags
	movq	112(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.19391
	movq	(%rax), %rax	# MEM[(struct AV *)_231].sv_any, D.19372
	movq	(%rax), %rax	# _232->xav_array, D.19373
	movq	88(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	%rdx, (%rax)	# D.19390, MEM[(struct SV * *)_233]
.LBE62:
	jmp	.L799	#
.L800:
.LBB63:
	.loc 1 1928 0 discriminator 2
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _235->sv_any, D.19372
	movq	88(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rdx), %rdx	# _237->sv_any, D.19372
	movq	16(%rdx), %rcx	# _238->xav_max, D.19382
	movq	88(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rdx), %rdx	# _240->sv_any, D.19372
	movq	(%rdx), %rdx	# _241->xav_array, D.19373
	movq	%rdx, %rsi	# D.19373, D.19382
	movq	88(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rdx), %rdx	# _244->sv_any, D.19372
	movq	56(%rdx), %rdx	# _245->xav_alloc, D.19374
	subq	%rdx, %rsi	# D.19382, D.19382
	movq	%rsi, %rdx	# D.19382, D.19382
	sarq	$3, %rdx	#, tmp307
	addq	%rcx, %rdx	# D.19382, D.19382
	movq	%rdx, 16(%rax)	# D.19382, _236->xav_max
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _251->sv_any, D.19372
	movq	88(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rdx), %rdx	# _253->sv_any, D.19372
	movq	56(%rdx), %rdx	# _254->xav_alloc, D.19374
	movq	%rdx, (%rax)	# D.19374, MEM[(struct XPV *)_252].xpv_pv
	movq	88(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19390
	movq	(%rax), %rax	# _256->sv_any, D.19372
	movq	$-1, 8(%rax)	#, _257->xav_fill
.L799:
.LBE63:
	movq	56(%rbx), %rax	# cx_65->cx_u.cx_blk.blk_u.blku_sub.cv, tmp308
	movq	%rax, -64(%rbp)	# tmp308, sv
	cmpq	$0, -64(%rbp)	#, sv
	je	.L801	#,
	.loc 1 1928 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp309
	movq	(%rax), %rax	# MEM[(struct CV *)sv_259].sv_any, D.19389
	movq	96(%rbx), %rdx	# cx_65->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.19382
	movq	%rdx, 112(%rax)	# D.19382, _260->xcv_depth
	movq	112(%rax), %rax	# _260->xcv_depth, D.19382
	testq	%rax, %rax	# D.19382
	je	.L801	#,
	movq	$0, -64(%rbp)	#, sv
.LBE60:
	jmp	.L802	#
.L801:
	jmp	.L802	#
.L798:
	.loc 1 1931 0 is_stmt 1
	movq	$0, -64(%rbp)	#, sv
.L802:
	.loc 1 1932 0
	movq	-56(%rbp), %rax	# newpm, tmp310
	movq	%rax, PL_curpm(%rip)	# tmp310, PL_curpm
	.loc 1 1934 0
	cmpq	$0, -64(%rbp)	#, sv
	je	.L803	#,
	.loc 1 1934 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp311
	movq	%rax, %rdi	# tmp311,
	call	Perl_sv_free	#
.L803:
	.loc 1 1935 0 is_stmt 1
	cmpb	$0, -85(%rbp)	#, clear_errsv
	je	.L804	#,
	.loc 1 1936 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1014
	movq	(%rax), %rax	# PL_errgv.1014_265->sv_any, D.19384
	movq	56(%rax), %rax	# _266->xgv_gp, D.19385
	movq	(%rax), %rax	# _267->gp_sv, D.19375
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.19375,
	call	Perl_sv_setpv	#
.L804:
	.loc 1 1937 0
	call	Perl_pop_return	#
.L754:
	.loc 1 1938 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_pp_return, .-Perl_pp_return
	.section	.rodata
	.align 8
.LC42:
	.string	"Can't \"last\" outside a loop block"
.LC43:
	.string	"Label not found for \"last %s\""
.LC44:
	.string	"panic: last"
	.text
	.globl	Perl_pp_last
	.type	Perl_pp_last, @function
Perl_pp_last:
.LFB40:
	.loc 1 1941 0
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
	.loc 1 1942 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1945 0
	movl	$0, -84(%rbp)	#, pop2
	.loc 1 1952 0
	movq	$0, -48(%rbp)	#, sv
	.loc 1 1954 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1015
	movzbl	36(%rax), %eax	# PL_op.1015_17->op_flags, D.19397
	testb	%al, %al	# D.19398
	jns	.L807	#,
	.loc 1 1955 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1016
	movl	16(%rax), %eax	# PL_curstackinfo.1016_20->si_cxix, D.19399
	movl	%eax, %edi	# D.19399,
	call	S_dopoptoloop	#
	movl	%eax, -88(%rbp)	# tmp185, cxix
	.loc 1 1956 0
	cmpl	$0, -88(%rbp)	#, cxix
	jns	.L808	#,
	.loc 1 1957 0
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L809	#
.L807:
	.loc 1 1960 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1017
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1017_24].op_pv, D.19400
	movq	%rax, %rdi	# D.19400,
	call	S_dopoptolabel	#
	movl	%eax, -88(%rbp)	# tmp186, cxix
	.loc 1 1961 0
	cmpl	$0, -88(%rbp)	#, cxix
	jns	.L808	#,
	.loc 1 1962 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1018
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1018_27].op_pv, D.19400
	movq	%rax, %rsi	# D.19400,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L809	#
.L808:
	.loc 1 1964 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1019
	movl	16(%rax), %eax	# PL_curstackinfo.1019_30->si_cxix, D.19399
	cmpl	-88(%rbp), %eax	# cxix, D.19399
	jle	.L810	#,
	.loc 1 1965 0
	movl	-88(%rbp), %eax	# cxix, tmp187
	movl	%eax, %edi	# tmp187,
	call	Perl_dounwind	#
.L810:
	.loc 1 1967 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1020
	movq	8(%rax), %rsi	# PL_curstackinfo.1020_32->si_cxstack, D.19401
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1021
	movl	16(%rax), %edx	# PL_curstackinfo.1021_34->si_cxix, D.19399
	leal	-1(%rdx), %ecx	#, D.19399
	movl	%ecx, 16(%rax)	# D.19399, PL_curstackinfo.1021_34->si_cxix
	movslq	%edx, %rdx	# D.19399, D.19402
	movq	%rdx, %rax	# D.19402, tmp188
	salq	$3, %rax	#, tmp188
	addq	%rdx, %rax	# D.19402, tmp188
	salq	$4, %rax	#, tmp189
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1022
	movl	8(%rbx), %edx	# cx_40->cx_u.cx_blk.blku_oldsp, D.19399
	movslq	%edx, %rdx	# D.19399, D.19402
	salq	$3, %rdx	#, D.19402
	addq	%rdx, %rax	# D.19402, tmp190
	movq	%rax, -64(%rbp)	# tmp190, newsp
	movq	16(%rbx), %rax	# cx_40->cx_u.cx_blk.blku_oldcop, PL_curcop.1023
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1023, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1024
	movl	28(%rbx), %edx	# cx_40->cx_u.cx_blk.blku_oldmarksp, D.19399
	movslq	%edx, %rdx	# D.19399, D.19402
	salq	$2, %rdx	#, D.19402
	addq	%rdx, %rax	# D.19402, PL_markstack_ptr.1025
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1025, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_40->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1026
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1026, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_40->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1027
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1027, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_40->cx_u.cx_blk.blku_oldpm, tmp191
	movq	%rax, -40(%rbp)	# tmp191, newpm
	movzbl	48(%rbx), %eax	# cx_40->cx_u.cx_blk.blku_gimme, D.19397
	movzbl	%al, %eax	# D.19397, tmp192
	movl	%eax, -80(%rbp)	# tmp192, gimme
	.loc 1 1968 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1028
	movl	16(%rax), %edx	# PL_curstackinfo.1028_57->si_cxix, D.19399
	addl	$1, %edx	#, D.19399
	movl	%edx, 16(%rax)	# D.19399, PL_curstackinfo.1028_57->si_cxix
	.loc 1 1969 0
	movq	-64(%rbp), %rax	# newsp, tmp193
	movq	%rax, -56(%rbp)	# tmp193, mark
	.loc 1 1970 0
	movl	(%rbx), %eax	# cx_40->cx_type, D.19403
	movzbl	%al, %eax	# D.19403, D.19403
	cmpl	$2, %eax	#, D.19403
	je	.L812	#,
	cmpl	$2, %eax	#, D.19403
	ja	.L813	#,
	cmpl	$1, %eax	#, D.19403
	je	.L814	#,
	jmp	.L811	#
.L813:
	cmpl	$3, %eax	#, D.19403
	je	.L815	#,
	cmpl	$6, %eax	#, D.19403
	je	.L816	#,
	jmp	.L811	#
.L815:
	.loc 1 1972 0
	movl	$3, -84(%rbp)	#, pop2
	.loc 1 1973 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1029
	movl	64(%rbx), %edx	# cx_40->cx_u.cx_blk.blk_u.blku_loop.resetsp, D.19399
	movslq	%edx, %rdx	# D.19399, D.19402
	salq	$3, %rdx	#, D.19402
	addq	%rdx, %rax	# D.19402, tmp194
	movq	%rax, -64(%rbp)	# tmp194, newsp
	.loc 1 1974 0
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.last_op, D.19396
	movq	(%rax), %rax	# _69->op_next, tmp195
	movq	%rax, -72(%rbp)	# tmp195, nextop
	.loc 1 1975 0
	jmp	.L817	#
.L814:
	.loc 1 1977 0
	movl	$1, -84(%rbp)	#, pop2
	.loc 1 1978 0
	call	Perl_pop_return	#
	movq	%rax, -72(%rbp)	# tmp196, nextop
	.loc 1 1979 0
	jmp	.L817	#
.L812:
.LBB64:
	.loc 1 1981 0
	movl	56(%rbx), %eax	# cx_40->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1030
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1030, PL_in_eval
	movl	60(%rbx), %eax	# cx_40->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp197
	movl	%eax, -76(%rbp)	# tmp197, optype
	movq	72(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1031
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1031, PL_eval_root
	movq	64(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19404
	testq	%rax, %rax	# D.19404
	je	.L818	#,
	.loc 1 1981 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19404
	movq	%rax, %rdi	# D.19404,
	call	Perl_sv_2mortal	#
.L818:
.LBE64:
	.loc 1 1982 0 is_stmt 1
	call	Perl_pop_return	#
	movq	%rax, -72(%rbp)	# tmp198, nextop
	.loc 1 1983 0
	jmp	.L817	#
.L816:
	.loc 1 1985 0
	movq	72(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19405
	movq	%rax, %rdi	# D.19405,
	call	Perl_setdefout	#
	movq	72(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.dfoutgv, D.19405
	movq	%rax, %rdi	# D.19405,
	call	Perl_sv_free	#
	.loc 1 1986 0
	call	Perl_pop_return	#
	movq	%rax, -72(%rbp)	# tmp199, nextop
	.loc 1 1987 0
	jmp	.L817	#
.L811:
	.loc 1 1989 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L809	#
.L817:
	.loc 1 1992 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1993 0
	cmpl	$0, -80(%rbp)	#, gimme
	jne	.L819	#,
	.loc 1 1994 0
	cmpq	%r12, -56(%rbp)	# sp, mark
	jae	.L820	#,
	.loc 1 1995 0
	addq	$8, -64(%rbp)	#, newsp
	.loc 1 1996 0
	cmpl	$1, -84(%rbp)	#, pop2
	jne	.L821	#,
	.loc 1 1995 0
	movq	(%r12), %rax	# *sp_14, D.19404
	movl	12(%rax), %eax	# _84->sv_flags, D.19403
	andl	$2048, %eax	#, D.19403
	testl	%eax, %eax	# D.19403
	je	.L821	#,
	.loc 1 1996 0
	movq	(%r12), %rax	# *sp_14, iftmp.1032
	jmp	.L822	#
.L821:
	.loc 1 1996 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *sp_14, D.19404
	movq	%rax, %rdi	# D.19404,
	call	Perl_sv_mortalcopy	#
.L822:
	.loc 1 1995 0 is_stmt 1
	movq	-64(%rbp), %rdx	# newsp, tmp200
	movq	%rax, (%rdx)	# iftmp.1032, *newsp_83
	jmp	.L824	#
.L820:
	.loc 1 1998 0
	addq	$8, -64(%rbp)	#, newsp
	movq	-64(%rbp), %rax	# newsp, tmp201
	movq	$PL_sv_undef, (%rax)	#, *newsp_90
	jmp	.L824	#
.L819:
	.loc 1 2000 0
	cmpl	$1, -80(%rbp)	#, gimme
	jne	.L824	#,
	.loc 1 2001 0
	jmp	.L825	#
.L828:
	.loc 1 2002 0
	addq	$8, -64(%rbp)	#, newsp
	.loc 1 2003 0
	cmpl	$1, -84(%rbp)	#, pop2
	jne	.L826	#,
	.loc 1 2002 0
	movq	-56(%rbp), %rax	# mark, tmp202
	movq	(%rax), %rax	# *mark_91, D.19404
	movl	12(%rax), %eax	# _93->sv_flags, D.19403
	andl	$2048, %eax	#, D.19403
	testl	%eax, %eax	# D.19403
	je	.L826	#,
	.loc 1 2003 0
	movq	-56(%rbp), %rax	# mark, tmp203
	movq	(%rax), %rax	# *mark_91, iftmp.1033
	jmp	.L827	#
.L826:
	.loc 1 2003 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# mark, tmp204
	movq	(%rax), %rax	# *mark_91, D.19404
	movq	%rax, %rdi	# D.19404,
	call	Perl_sv_mortalcopy	#
.L827:
	.loc 1 2002 0 is_stmt 1
	movq	-64(%rbp), %rdx	# newsp, tmp205
	movq	%rax, (%rdx)	# iftmp.1033, *newsp_92
	.loc 1 2004 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L825:
	.loc 1 2001 0 discriminator 1
	addq	$8, -56(%rbp)	#, mark
	cmpq	%r12, -56(%rbp)	# sp, mark
	jbe	.L828	#,
.L824:
	.loc 1 2007 0
	movq	-64(%rbp), %r12	# newsp, sp
	.loc 1 2008 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2010 0
	call	Perl_pop_scope	#
	.loc 1 2011 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1034
	movl	16(%rax), %edx	# PL_curstackinfo.1034_100->si_cxix, D.19399
	subl	$1, %edx	#, D.19399
	movl	%edx, 16(%rax)	# D.19399, PL_curstackinfo.1034_100->si_cxix
	.loc 1 2013 0
	movl	-84(%rbp), %eax	# pop2, pop2
	cmpl	$1, %eax	#, pop2
	je	.L830	#,
	cmpl	$3, %eax	#, pop2
	jne	.L829	#,
	.loc 1 2015 0
	movq	112(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.19404
	movq	%rax, %rdi	# D.19404,
	call	Perl_sv_free	#
	movq	96(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.itervar, D.19406
	testq	%rax, %rax	# D.19406
	je	.L832	#,
.LBB65:
	.loc 1 2015 0 is_stmt 0 discriminator 1
	movq	96(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.itervar, tmp207
	movq	%rax, -32(%rbp)	# tmp207, s_v_p
	movq	-32(%rbp), %rax	# s_v_p, tmp208
	movq	(%rax), %rax	# *s_v_p_105, D.19404
	movq	%rax, %rdi	# D.19404,
	call	Perl_sv_2mortal	#
	movq	104(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_loop.itersave, D.19404
	movq	-32(%rbp), %rax	# s_v_p, tmp209
	movq	%rdx, (%rax)	# D.19404, *s_v_p_105
.L832:
.LBE65:
	.loc 1 2015 0 discriminator 2
	movq	120(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19407
	testq	%rax, %rax	# D.19407
	je	.L833	#,
	.loc 1 2015 0 discriminator 1
	movq	120(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19407
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.1035
	cmpq	%rax, %rdx	# PL_curstack.1035, D.19407
	je	.L833	#,
	movq	120(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_loop.iterary, D.19407
	movq	%rax, %rdi	# D.19407,
	call	Perl_sv_free	#
.L833:
	.loc 1 2016 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 2017 0
	jmp	.L829	#
.L830:
.LBB66:
	.loc 1 2019 0
	movzbl	104(%rbx), %eax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19397
	testb	%al, %al	# D.19397
	je	.L834	#,
.LBB67:
	.loc 1 2019 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1036
	movq	(%rax), %rax	# PL_defgv.1036_113->sv_any, D.19408
	movq	56(%rax), %rax	# _114->xgv_gp, D.19409
	movq	32(%rax), %rax	# _115->gp_av, D.19407
	movq	%rax, %rdi	# D.19407,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1037
	movq	(%rax), %rax	# PL_defgv.1037_117->sv_any, D.19408
	movq	56(%rax), %rax	# _118->xgv_gp, D.19409
	movq	80(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.savearray, D.19407
	movq	%rdx, 32(%rax)	# D.19407, _119->gp_av
.LBE67:
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _122->sv_any, D.19410
	movzbl	72(%rax), %eax	# _123->xav_flags, D.19397
	movzbl	%al, %eax	# D.19397, D.19399
	andl	$1, %eax	#, D.19399
	testl	%eax, %eax	# D.19399
	je	.L835	#,
.LBB68:
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _127->sv_any, D.19410
	movq	8(%rax), %rax	# _128->xav_fill, tmp210
	movq	%rax, -24(%rbp)	# tmp210, fill
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	%rax, %rdi	# D.19407,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.19407, cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-24(%rbp), %rax	# fill, tmp211
	movl	%eax, %edx	# tmp211, D.19399
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movl	%edx, %esi	# D.19399,
	movq	%rax, %rdi	# D.19407,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _134->sv_any, D.19410
	movb	$2, 72(%rax)	#, _135->xav_flags
	movq	112(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.19411
	movq	(%rax), %rax	# MEM[(struct AV *)_136].sv_any, D.19410
	movq	(%rax), %rax	# _137->xav_array, D.19400
	movq	88(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	%rdx, (%rax)	# D.19407, MEM[(struct SV * *)_138]
.LBE68:
	jmp	.L834	#
.L835:
.LBB69:
	.loc 1 2019 0 discriminator 2
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _140->sv_any, D.19410
	movq	88(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rdx), %rdx	# _142->sv_any, D.19410
	movq	16(%rdx), %rcx	# _143->xav_max, D.19412
	movq	88(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rdx), %rdx	# _145->sv_any, D.19410
	movq	(%rdx), %rdx	# _146->xav_array, D.19400
	movq	%rdx, %rsi	# D.19400, D.19412
	movq	88(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rdx), %rdx	# _149->sv_any, D.19410
	movq	56(%rdx), %rdx	# _150->xav_alloc, D.19406
	subq	%rdx, %rsi	# D.19412, D.19412
	movq	%rsi, %rdx	# D.19412, D.19412
	sarq	$3, %rdx	#, tmp212
	addq	%rcx, %rdx	# D.19412, D.19412
	movq	%rdx, 16(%rax)	# D.19412, _141->xav_max
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _156->sv_any, D.19410
	movq	88(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rdx), %rdx	# _158->sv_any, D.19410
	movq	56(%rdx), %rdx	# _159->xav_alloc, D.19406
	movq	%rdx, (%rax)	# D.19406, MEM[(struct XPV *)_157].xpv_pv
	movq	88(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19407
	movq	(%rax), %rax	# _161->sv_any, D.19410
	movq	$-1, 8(%rax)	#, _162->xav_fill
.L834:
.LBE69:
	movq	56(%rbx), %rax	# cx_40->cx_u.cx_blk.blk_u.blku_sub.cv, tmp213
	movq	%rax, -48(%rbp)	# tmp213, sv
	cmpq	$0, -48(%rbp)	#, sv
	je	.L836	#,
	.loc 1 2019 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp214
	movq	(%rax), %rax	# MEM[(struct CV *)sv_164].sv_any, D.19414
	movq	96(%rbx), %rdx	# cx_40->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.19412
	movq	%rdx, 112(%rax)	# D.19412, _165->xcv_depth
	movq	112(%rax), %rax	# _165->xcv_depth, D.19412
	testq	%rax, %rax	# D.19412
	je	.L836	#,
	movq	$0, -48(%rbp)	#, sv
.LBE66:
	.loc 1 2020 0 is_stmt 1 discriminator 1
	jmp	.L838	#
.L836:
.L838:
	.loc 1 2020 0 is_stmt 0
	nop
.L829:
	.loc 1 2022 0 is_stmt 1
	movq	-40(%rbp), %rax	# newpm, tmp215
	movq	%rax, PL_curpm(%rip)	# tmp215, PL_curpm
	.loc 1 2024 0
	cmpq	$0, -48(%rbp)	#, sv
	je	.L837	#,
	.loc 1 2024 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp216
	movq	%rax, %rdi	# tmp216,
	call	Perl_sv_free	#
.L837:
	.loc 1 2025 0 is_stmt 1
	movq	-72(%rbp), %rax	# nextop, D.19396
.L809:
	.loc 1 2026 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_pp_last, .-Perl_pp_last
	.section	.rodata
	.align 8
.LC45:
	.string	"Can't \"next\" outside a loop block"
.LC46:
	.string	"Label not found for \"next %s\""
	.text
	.globl	Perl_pp_next
	.type	Perl_pp_next, @function
Perl_pp_next:
.LFB41:
	.loc 1 2029 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2034 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1038
	movzbl	36(%rax), %eax	# PL_op.1038_3->op_flags, D.19420
	testb	%al, %al	# D.19421
	jns	.L840	#,
	.loc 1 2035 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1039
	movl	16(%rax), %eax	# PL_curstackinfo.1039_6->si_cxix, D.19422
	movl	%eax, %edi	# D.19422,
	call	S_dopoptoloop	#
	movl	%eax, -24(%rbp)	# tmp99, cxix
	.loc 1 2036 0
	cmpl	$0, -24(%rbp)	#, cxix
	jns	.L841	#,
	.loc 1 2037 0
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L842	#
.L840:
	.loc 1 2040 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1040
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1040_10].op_pv, D.19423
	movq	%rax, %rdi	# D.19423,
	call	S_dopoptolabel	#
	movl	%eax, -24(%rbp)	# tmp100, cxix
	.loc 1 2041 0
	cmpl	$0, -24(%rbp)	#, cxix
	jns	.L841	#,
	.loc 1 2042 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1041
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1041_13].op_pv, D.19423
	movq	%rax, %rsi	# D.19423,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L842	#
.L841:
	.loc 1 2044 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1042
	movl	16(%rax), %eax	# PL_curstackinfo.1042_16->si_cxix, D.19422
	cmpl	-24(%rbp), %eax	# cxix, D.19422
	jle	.L843	#,
	.loc 1 2045 0
	movl	-24(%rbp), %eax	# cxix, tmp101
	movl	%eax, %edi	# tmp101,
	call	Perl_dounwind	#
.L843:
	.loc 1 2049 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, tmp102
	movl	%eax, -20(%rbp)	# tmp102, inner
	.loc 1 2050 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1043
	movq	8(%rax), %rcx	# PL_curstackinfo.1043_19->si_cxstack, D.19424
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1044
	movl	16(%rax), %eax	# PL_curstackinfo.1044_21->si_cxix, D.19422
	movslq	%eax, %rdx	# D.19422, D.19425
	movq	%rdx, %rax	# D.19425, tmp103
	salq	$3, %rax	#, tmp103
	addq	%rdx, %rax	# D.19425, tmp103
	salq	$4, %rax	#, tmp104
	leaq	(%rcx,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1045
	movl	8(%rbx), %edx	# cx_25->cx_u.cx_blk.blku_oldsp, D.19422
	movslq	%edx, %rdx	# D.19422, D.19425
	salq	$3, %rdx	#, D.19425
	addq	%rdx, %rax	# D.19425, PL_stack_sp.1046
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1046, PL_stack_sp
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1047
	movl	28(%rbx), %edx	# cx_25->cx_u.cx_blk.blku_oldmarksp, D.19422
	movslq	%edx, %rdx	# D.19422, D.19425
	salq	$2, %rdx	#, D.19425
	addq	%rdx, %rax	# D.19425, PL_markstack_ptr.1048
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1048, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_25->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1049
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1049, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_25->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1050
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1050, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_25->cx_u.cx_blk.blku_oldpm, PL_curpm.1051
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1051, PL_curpm
	.loc 1 2051 0
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1052
	cmpl	-20(%rbp), %eax	# inner, PL_scopestack_ix.1052
	jge	.L844	#,
	.loc 1 2052 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.1053
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.1054
	movslq	%edx, %rdx	# PL_scopestack_ix.1054, D.19425
	salq	$2, %rdx	#, D.19425
	addq	%rdx, %rax	# D.19425, D.19426
	movl	(%rax), %eax	# *_44, D.19422
	movl	%eax, %edi	# D.19422,
	call	Perl_leave_scope	#
.L844:
	.loc 1 2053 0
	movq	80(%rbx), %rax	# cx_25->cx_u.cx_blk.blk_u.blku_loop.next_op, D.19419
.L842:
	.loc 1 2054 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_pp_next, .-Perl_pp_next
	.section	.rodata
	.align 8
.LC47:
	.string	"Can't \"redo\" outside a loop block"
.LC48:
	.string	"Label not found for \"redo %s\""
	.text
	.globl	Perl_pp_redo
	.type	Perl_pp_redo, @function
Perl_pp_redo:
.LFB42:
	.loc 1 2057 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2062 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1055
	movzbl	36(%rax), %eax	# PL_op.1055_3->op_flags, D.19430
	testb	%al, %al	# D.19431
	jns	.L846	#,
	.loc 1 2063 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1056
	movl	16(%rax), %eax	# PL_curstackinfo.1056_6->si_cxix, D.19432
	movl	%eax, %edi	# D.19432,
	call	S_dopoptoloop	#
	movl	%eax, -24(%rbp)	# tmp101, cxix
	.loc 1 2064 0
	cmpl	$0, -24(%rbp)	#, cxix
	jns	.L847	#,
	.loc 1 2065 0
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L848	#
.L846:
	.loc 1 2068 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1057
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1057_10].op_pv, D.19433
	movq	%rax, %rdi	# D.19433,
	call	S_dopoptolabel	#
	movl	%eax, -24(%rbp)	# tmp102, cxix
	.loc 1 2069 0
	cmpl	$0, -24(%rbp)	#, cxix
	jns	.L847	#,
	.loc 1 2070 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1058
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1058_13].op_pv, D.19433
	movq	%rax, %rsi	# D.19433,
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L848	#
.L847:
	.loc 1 2072 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1059
	movl	16(%rax), %eax	# PL_curstackinfo.1059_16->si_cxix, D.19432
	cmpl	-24(%rbp), %eax	# cxix, D.19432
	jle	.L849	#,
	.loc 1 2073 0
	movl	-24(%rbp), %eax	# cxix, tmp103
	movl	%eax, %edi	# tmp103,
	call	Perl_dounwind	#
.L849:
	.loc 1 2075 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1060
	movq	8(%rax), %rcx	# PL_curstackinfo.1060_18->si_cxstack, D.19434
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1061
	movl	16(%rax), %eax	# PL_curstackinfo.1061_20->si_cxix, D.19432
	movslq	%eax, %rdx	# D.19432, D.19435
	movq	%rdx, %rax	# D.19435, tmp104
	salq	$3, %rax	#, tmp104
	addq	%rdx, %rax	# D.19435, tmp104
	salq	$4, %rax	#, tmp105
	leaq	(%rcx,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1062
	movl	8(%rbx), %edx	# cx_24->cx_u.cx_blk.blku_oldsp, D.19432
	movslq	%edx, %rdx	# D.19432, D.19435
	salq	$3, %rdx	#, D.19435
	addq	%rdx, %rax	# D.19435, PL_stack_sp.1063
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1063, PL_stack_sp
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1064
	movl	28(%rbx), %edx	# cx_24->cx_u.cx_blk.blku_oldmarksp, D.19432
	movslq	%edx, %rdx	# D.19432, D.19435
	salq	$2, %rdx	#, D.19435
	addq	%rdx, %rax	# D.19435, PL_markstack_ptr.1065
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1065, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_24->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1066
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1066, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_24->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1067
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1067, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_24->cx_u.cx_blk.blku_oldpm, PL_curpm.1068
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1068, PL_curpm
	.loc 1 2076 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.1069
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.1070
	movslq	%edx, %rdx	# PL_scopestack_ix.1070, D.19435
	salq	$2, %rdx	#, D.19435
	subq	$4, %rdx	#, D.19436
	addq	%rdx, %rax	# D.19436, D.19437
	movl	(%rax), %eax	# *_43, tmp106
	movl	%eax, -20(%rbp)	# tmp106, oldsave
	.loc 1 2077 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1071
	cmpl	-20(%rbp), %eax	# oldsave, PL_savestack_ix.1071
	jle	.L850	#,
	.loc 1 2077 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# oldsave, tmp107
	movl	%eax, %edi	# tmp107,
	call	Perl_leave_scope	#
.L850:
	.loc 1 2078 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1072
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1073
	cmpl	%eax, %edx	# PL_tmps_floor.1073, PL_tmps_ix.1072
	jle	.L851	#,
	.loc 1 2078 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L851:
	.loc 1 2079 0 is_stmt 1
	movq	72(%rbx), %rax	# cx_24->cx_u.cx_blk.blk_u.blku_loop.redo_op, D.19429
.L848:
	.loc 1 2080 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_pp_redo, .-Perl_pp_redo
	.type	S_dofindlabel, @function
S_dofindlabel:
.LFB43:
	.loc 1 2084 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# o, o
	movq	%rsi, -32(%rbp)	# label, label
	movq	%rdx, -40(%rbp)	# opstack, opstack
	movq	%rcx, -48(%rbp)	# oplimit, oplimit
	.loc 1 2085 0
	movq	$0, -16(%rbp)	#, kid
	.loc 1 2086 0
	movq	-40(%rbp), %rax	# opstack, tmp88
	movq	%rax, -8(%rbp)	# tmp88, ops
	.loc 1 2089 0
	movq	-8(%rbp), %rax	# ops, tmp89
	cmpq	-48(%rbp), %rax	# oplimit, tmp89
	jb	.L853	#,
	.loc 1 2090 0
	movl	$too_deep.10885, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L853:
	.loc 1 2091 0
	movq	-24(%rbp), %rax	# o, tmp90
	movzwl	32(%rax), %eax	# o_13(D)->op_type, D.19441
	cmpw	$178, %ax	#, D.19441
	je	.L854	#,
	.loc 1 2092 0 discriminator 1
	movq	-24(%rbp), %rax	# o, tmp91
	movzwl	32(%rax), %eax	# o_13(D)->op_type, D.19441
	.loc 1 2091 0 discriminator 1
	cmpw	$179, %ax	#, D.19441
	je	.L854	#,
	.loc 1 2093 0
	movq	-24(%rbp), %rax	# o, tmp92
	movzwl	32(%rax), %eax	# o_13(D)->op_type, D.19441
	.loc 1 2092 0
	cmpw	$183, %ax	#, D.19441
	je	.L854	#,
	.loc 1 2094 0
	movq	-24(%rbp), %rax	# o, tmp93
	movzwl	32(%rax), %eax	# o_13(D)->op_type, D.19441
	.loc 1 2093 0
	cmpw	$167, %ax	#, D.19441
	je	.L854	#,
	.loc 1 2095 0
	movq	-24(%rbp), %rax	# o, tmp94
	movzwl	32(%rax), %eax	# o_13(D)->op_type, D.19441
	.loc 1 2094 0
	cmpw	$314, %ax	#, D.19441
	jne	.L855	#,
.L854:
	.loc 1 2097 0
	movq	-8(%rbp), %rax	# ops, ops.1074
	leaq	8(%rax), %rdx	#, tmp95
	movq	%rdx, -8(%rbp)	# tmp95, ops
	movq	-24(%rbp), %rdx	# o, tmp96
	movq	40(%rdx), %rdx	# MEM[(struct UNOP *)o_13(D)].op_first, D.19440
	movq	%rdx, (%rax)	# D.19440, *ops.1074_19
	.loc 1 2098 0
	movq	-8(%rbp), %rax	# ops, tmp97
	cmpq	-48(%rbp), %rax	# oplimit, tmp97
	jb	.L855	#,
	.loc 1 2099 0
	movl	$too_deep.10885, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L855:
	.loc 1 2101 0
	movq	-8(%rbp), %rax	# ops, tmp98
	movq	$0, (%rax)	#, *ops_3
	.loc 1 2102 0
	movq	-24(%rbp), %rax	# o, tmp99
	movzbl	36(%rax), %eax	# o_13(D)->op_flags, D.19442
	movzbl	%al, %eax	# D.19442, D.19443
	andl	$4, %eax	#, D.19443
	testl	%eax, %eax	# D.19443
	je	.L856	#,
	.loc 1 2104 0
	movq	-24(%rbp), %rax	# o, tmp100
	movq	40(%rax), %rax	# MEM[(struct UNOP *)o_13(D)].op_first, tmp101
	movq	%rax, -16(%rbp)	# tmp101, kid
	jmp	.L857	#
.L861:
	.loc 1 2105 0
	movq	-16(%rbp), %rax	# kid, tmp102
	movzwl	32(%rax), %eax	# kid_1->op_type, D.19441
	cmpw	$174, %ax	#, D.19441
	je	.L858	#,
	.loc 1 2105 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# kid, tmp103
	movzwl	32(%rax), %eax	# kid_1->op_type, D.19441
	cmpw	$175, %ax	#, D.19441
	jne	.L859	#,
.L858:
	.loc 1 2106 0 is_stmt 1 discriminator 1
	movq	-16(%rbp), %rax	# kid, tmp104
	movq	40(%rax), %rax	# MEM[(struct COP *)kid_1].cop_label, D.19444
	.loc 1 2105 0 discriminator 1
	testq	%rax, %rax	# D.19444
	je	.L859	#,
	.loc 1 2106 0
	movq	-16(%rbp), %rax	# kid, tmp105
	movq	40(%rax), %rax	# MEM[(struct COP *)kid_1].cop_label, D.19444
	movq	-32(%rbp), %rdx	# label, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# D.19444,
	call	strcmp	#
	testl	%eax, %eax	# D.19443
	jne	.L859	#,
	.loc 1 2107 0
	movq	-16(%rbp), %rax	# kid, D.19440
	jmp	.L860	#
.L859:
	.loc 1 2104 0
	movq	-16(%rbp), %rax	# kid, tmp107
	movq	8(%rax), %rax	# kid_1->op_sibling, tmp108
	movq	%rax, -16(%rbp)	# tmp108, kid
.L857:
	.loc 1 2104 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, kid
	jne	.L861	#,
	.loc 1 2109 0 is_stmt 1
	movq	-24(%rbp), %rax	# o, tmp109
	movq	40(%rax), %rax	# MEM[(struct UNOP *)o_13(D)].op_first, tmp110
	movq	%rax, -16(%rbp)	# tmp110, kid
	jmp	.L862	#
.L870:
	.loc 1 2110 0
	movq	PL_lastgotoprobe(%rip), %rax	# PL_lastgotoprobe, PL_lastgotoprobe.1075
	cmpq	%rax, -16(%rbp)	# PL_lastgotoprobe.1075, kid
	jne	.L863	#,
	.loc 1 2111 0
	jmp	.L864	#
.L863:
	.loc 1 2112 0
	movq	-16(%rbp), %rax	# kid, tmp111
	movzwl	32(%rax), %eax	# kid_2->op_type, D.19441
	cmpw	$174, %ax	#, D.19441
	je	.L865	#,
	.loc 1 2112 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# kid, tmp112
	movzwl	32(%rax), %eax	# kid_2->op_type, D.19441
	cmpw	$175, %ax	#, D.19441
	jne	.L866	#,
.L865:
	.loc 1 2113 0 is_stmt 1
	movq	-8(%rbp), %rax	# ops, tmp113
	cmpq	-40(%rbp), %rax	# opstack, tmp113
	jne	.L867	#,
	.loc 1 2114 0
	movq	-8(%rbp), %rax	# ops, ops.1076
	leaq	8(%rax), %rdx	#, tmp114
	movq	%rdx, -8(%rbp)	# tmp114, ops
	movq	-16(%rbp), %rdx	# kid, tmp115
	movq	%rdx, (%rax)	# tmp115, *ops.1076_38
	jmp	.L866	#
.L867:
	.loc 1 2115 0
	movq	-8(%rbp), %rax	# ops, tmp116
	subq	$8, %rax	#, D.19445
	movq	(%rax), %rax	# *_40, D.19440
	movzwl	32(%rax), %eax	# _41->op_type, D.19441
	cmpw	$174, %ax	#, D.19441
	je	.L868	#,
	.loc 1 2116 0 discriminator 1
	movq	-8(%rbp), %rax	# ops, tmp117
	subq	$8, %rax	#, D.19445
	movq	(%rax), %rax	# *_43, D.19440
	movzwl	32(%rax), %eax	# _44->op_type, D.19441
	.loc 1 2115 0 discriminator 1
	cmpw	$175, %ax	#, D.19441
	jne	.L869	#,
.L868:
	.loc 1 2117 0
	movq	-8(%rbp), %rax	# ops, tmp118
	leaq	-8(%rax), %rdx	#, D.19445
	movq	-16(%rbp), %rax	# kid, tmp119
	movq	%rax, (%rdx)	# tmp119, *_48
	jmp	.L866	#
.L869:
	.loc 1 2119 0
	movq	-8(%rbp), %rax	# ops, ops.1077
	leaq	8(%rax), %rdx	#, tmp120
	movq	%rdx, -8(%rbp)	# tmp120, ops
	movq	-16(%rbp), %rdx	# kid, tmp121
	movq	%rdx, (%rax)	# tmp121, *ops.1077_46
.L866:
	.loc 1 2121 0
	movq	-48(%rbp), %rcx	# oplimit, tmp122
	movq	-8(%rbp), %rdx	# ops, tmp123
	movq	-32(%rbp), %rsi	# label, tmp124
	movq	-16(%rbp), %rax	# kid, tmp125
	movq	%rax, %rdi	# tmp125,
	call	S_dofindlabel	#
	movq	%rax, -24(%rbp)	# tmp126, o
	cmpq	$0, -24(%rbp)	#, o
	je	.L864	#,
	.loc 1 2122 0
	movq	-24(%rbp), %rax	# o, D.19440
	jmp	.L860	#
.L864:
	.loc 1 2109 0
	movq	-16(%rbp), %rax	# kid, tmp127
	movq	8(%rax), %rax	# kid_2->op_sibling, tmp128
	movq	%rax, -16(%rbp)	# tmp128, kid
.L862:
	.loc 1 2109 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, kid
	jne	.L870	#,
.L856:
	.loc 1 2125 0 is_stmt 1
	movq	-8(%rbp), %rax	# ops, tmp129
	movq	$0, (%rax)	#, *ops_7
	.loc 1 2126 0
	movl	$0, %eax	#, D.19440
.L860:
	.loc 1 2127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	S_dofindlabel, .-S_dofindlabel
	.globl	Perl_pp_dump
	.type	Perl_pp_dump, @function
Perl_pp_dump:
.LFB44:
	.loc 1 2130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2131 0
	call	Perl_pp_goto	#
	.loc 1 2133 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_pp_dump, .-Perl_pp_dump
	.section	.rodata
.LC49:
	.string	"Goto undefined subroutine &%_"
.LC50:
	.string	"Goto undefined subroutine"
	.align 8
.LC51:
	.string	"Can't goto subroutine outside a subroutine"
	.align 8
.LC52:
	.string	"Can't goto subroutine from an eval-string"
.LC53:
	.string	"DB::goto"
	.align 8
.LC54:
	.string	"Can't \"goto\" out of a pseudo block"
.LC55:
	.string	"panic: goto"
.LC56:
	.string	"Can't find label %s"
	.align 8
.LC57:
	.string	"Can't \"goto\" into the middle of a foreach loop"
	.text
	.globl	Perl_pp_goto
	.type	Perl_pp_goto, @function
Perl_pp_goto:
.LFB45:
	.loc 1 2136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$704, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 2137 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2138 0
	movq	$0, -680(%rbp)	#, retop
	.loc 1 2144 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1078
	movzwl	32(%rax), %eax	# PL_op.1078_44->op_type, D.19448
	cmpw	$188, %ax	#, D.19448
	sete	%al	#, D.19449
	movzbl	%al, %eax	# D.19449, tmp529
	movl	%eax, -700(%rbp)	# tmp529, do_dump
	.loc 1 2147 0
	movq	$0, -672(%rbp)	#, label
	.loc 1 2148 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1079
	movzbl	36(%rax), %eax	# PL_op.1079_49->op_flags, D.19450
	movzbl	%al, %eax	# D.19450, D.19451
	andl	$64, %eax	#, D.19451
	testl	%eax, %eax	# D.19451
	je	.L874	#,
.LBB70:
	.loc 1 2149 0
	movq	%r12, %rax	# sp, sp.1080
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.1080_53, tmp530
	movq	%rax, -632(%rbp)	# tmp530, sv
	.loc 1 2153 0
	movq	-632(%rbp), %rax	# sv, tmp531
	movl	12(%rax), %eax	# sv_55->sv_flags, D.19452
	andl	$524288, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L875	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# sv, tmp532
	movq	(%rax), %rax	# sv_55->sv_any, D.19453
	movq	(%rax), %rax	# MEM[(struct XRV *)_58].xrv_rv, D.19454
	movl	12(%rax), %eax	# _59->sv_flags, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$12, %eax	#, D.19452
	jne	.L875	#,
.LBB71:
	.loc 1 2156 0 is_stmt 1
	movq	-632(%rbp), %rax	# sv, tmp533
	movq	(%rax), %rax	# sv_55->sv_any, D.19453
	movq	(%rax), %rax	# MEM[(struct XRV *)_62].xrv_rv, tmp534
	movq	%rax, -664(%rbp)	# tmp534, cv
	.loc 1 2158 0
	movl	$0, -712(%rbp)	#, items
	.loc 1 2160 0
	movb	$0, -719(%rbp)	#, reified
.L876:
	.loc 1 2163 0
	movq	-664(%rbp), %rax	# cv, tmp535
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	72(%rax), %rax	# _66->xcv_root, D.19447
	testq	%rax, %rax	# D.19447
	jne	.L877	#,
	.loc 1 2163 0 is_stmt 0 discriminator 1
	movq	-664(%rbp), %rax	# cv, tmp536
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	80(%rax), %rax	# _68->xcv_xsub, D.19456
	testq	%rax, %rax	# D.19456
	jne	.L877	#,
.LBB72:
	.loc 1 2164 0 is_stmt 1
	movq	-664(%rbp), %rax	# cv, tmp537
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	96(%rax), %rax	# _70->xcv_gv, tmp538
	movq	%rax, -624(%rbp)	# tmp538, gv
	.loc 1 2166 0
	cmpq	$0, -624(%rbp)	#, gv
	je	.L878	#,
.LBB73:
	.loc 1 2169 0
	movq	-624(%rbp), %rax	# gv, tmp539
	movq	(%rax), %rax	# gv_71->sv_any, D.19457
	movq	56(%rax), %rax	# _72->xgv_gp, D.19458
	movq	56(%rax), %rax	# _73->gp_cv, D.19459
	cmpq	-664(%rbp), %rax	# cv, D.19459
	je	.L879	#,
	.loc 1 2169 0 is_stmt 0 discriminator 1
	movq	-624(%rbp), %rax	# gv, tmp540
	movq	(%rax), %rax	# gv_71->sv_any, D.19457
	movq	56(%rax), %rax	# _75->xgv_gp, D.19458
	movq	56(%rax), %rax	# _76->gp_cv, tmp541
	movq	%rax, -664(%rbp)	# tmp541, cv
	cmpq	$0, -664(%rbp)	#, cv
	je	.L879	#,
	.loc 1 2170 0 is_stmt 1
	jmp	.L876	#
.L879:
	.loc 1 2172 0
	movq	-624(%rbp), %rax	# gv, tmp542
	movq	(%rax), %rax	# gv_71->sv_any, D.19457
	.loc 1 2171 0
	movq	72(%rax), %rdx	# _78->xgv_namelen, D.19460
	movq	-624(%rbp), %rax	# gv, tmp543
	movq	(%rax), %rax	# gv_71->sv_any, D.19457
	movq	64(%rax), %rsi	# _80->xgv_name, D.19461
	movq	-624(%rbp), %rax	# gv, tmp544
	movq	(%rax), %rax	# gv_71->sv_any, D.19457
	movq	80(%rax), %rax	# _82->xgv_stash, D.19462
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19462,
	call	Perl_gv_autoload4	#
	movq	%rax, -616(%rbp)	# tmp545, autogv
	.loc 1 2173 0
	cmpq	$0, -616(%rbp)	#, autogv
	je	.L880	#,
	.loc 1 2173 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rax	# autogv, tmp546
	movq	(%rax), %rax	# autogv_84->sv_any, D.19457
	movq	56(%rax), %rax	# _85->xgv_gp, D.19458
	movq	56(%rax), %rax	# _86->gp_cv, tmp547
	movq	%rax, -664(%rbp)	# tmp547, cv
	cmpq	$0, -664(%rbp)	#, cv
	je	.L880	#,
	.loc 1 2174 0 is_stmt 1
	jmp	.L876	#
.L880:
	.loc 1 2175 0
	call	Perl_sv_newmortal	#
	movq	%rax, -608(%rbp)	# tmp548, tmpstr
	.loc 1 2176 0
	movq	-624(%rbp), %rsi	# gv, tmp549
	movq	-608(%rbp), %rax	# tmpstr, tmp550
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp550,
	call	Perl_gv_efullname4	#
	.loc 1 2177 0
	movq	-608(%rbp), %rax	# tmpstr, tmp551
	movq	%rax, %rsi	# tmp551,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L878:
.LBE73:
	.loc 1 2179 0
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L877:
.LBE72:
	.loc 1 2183 0
	movq	-664(%rbp), %rax	# cv, tmp552
	movq	%rax, PL_Sv(%rip)	# tmp552, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1082
	testq	%rax, %rax	# PL_Sv.1082
	je	.L883	#,
	.loc 1 2183 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1083
	movl	8(%rax), %edx	# PL_Sv.1083_92->sv_refcnt, D.19452
	addl	$1, %edx	#, D.19452
	movl	%edx, 8(%rax)	# D.19452, PL_Sv.1083_92->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1083_92->sv_refcnt, D.19452
	testl	%eax, %eax	# D.19452
	je	.L883	#,
	.loc 1 2183 0
	nop
.L883:
	.loc 1 2184 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1084
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1085
	cmpl	%eax, %edx	# PL_tmps_floor.1085, PL_tmps_ix.1084
	jle	.L884	#,
	.loc 1 2184 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L884:
	.loc 1 2185 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1086
	movl	16(%rax), %eax	# PL_curstackinfo.1086_100->si_cxix, D.19451
	movl	%eax, %edi	# D.19451,
	call	S_dopoptosub	#
	movl	%eax, -696(%rbp)	# tmp553, cxix
	.loc 1 2186 0
	cmpl	$0, -696(%rbp)	#, cxix
	jns	.L885	#,
	.loc 1 2187 0
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L885:
	.loc 1 2188 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1087
	movl	16(%rax), %eax	# PL_curstackinfo.1087_104->si_cxix, D.19451
	cmpl	-696(%rbp), %eax	# cxix, D.19451
	jle	.L886	#,
	.loc 1 2189 0
	movl	-696(%rbp), %eax	# cxix, tmp554
	movl	%eax, %edi	# tmp554,
	call	Perl_dounwind	#
.L886:
	.loc 1 2190 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1088
	movq	8(%rax), %rcx	# PL_curstackinfo.1088_106->si_cxstack, D.19463
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1089
	movl	16(%rax), %eax	# PL_curstackinfo.1089_108->si_cxix, D.19451
	movslq	%eax, %rdx	# D.19451, D.19460
	movq	%rdx, %rax	# D.19460, tmp555
	salq	$3, %rax	#, tmp555
	addq	%rdx, %rax	# D.19460, tmp555
	salq	$4, %rax	#, tmp556
	leaq	(%rcx,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1090
	movl	8(%rbx), %edx	# cx_112->cx_u.cx_blk.blku_oldsp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$3, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, PL_stack_sp.1091
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1091, PL_stack_sp
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1092
	movl	28(%rbx), %edx	# cx_112->cx_u.cx_blk.blku_oldmarksp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$2, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, PL_markstack_ptr.1093
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1093, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_112->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1094
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1094, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_112->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1095
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1095, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_112->cx_u.cx_blk.blku_oldpm, PL_curpm.1096
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1096, PL_curpm
	.loc 1 2191 0
	movl	(%rbx), %eax	# cx_112->cx_type, D.19452
	andl	$258, %eax	#, D.19452
	cmpl	$258, %eax	#, D.19452
	jne	.L887	#,
	.loc 1 2192 0
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L887:
	.loc 1 2193 0
	movl	(%rbx), %eax	# cx_112->cx_type, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$1, %eax	#, D.19452
	jne	.L888	#,
	.loc 1 2193 0 is_stmt 0 discriminator 1
	movzbl	104(%rbx), %eax	# cx_112->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19450
	testb	%al, %al	# D.19450
	je	.L888	#,
.LBB74:
	.loc 1 2195 0 is_stmt 1
	movq	88(%rbx), %rax	# cx_112->cx_u.cx_blk.blk_u.blku_sub.argarray, tmp557
	movq	%rax, -600(%rbp)	# tmp557, av
	.loc 1 2197 0
	movq	-600(%rbp), %rax	# av, tmp558
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movq	8(%rax), %rax	# _133->xav_fill, D.19465
	addl	$1, %eax	#, D.19466
	movl	%eax, -712(%rbp)	# D.19466, items
	.loc 1 2198 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1097
	movq	%rax, %rdx	# PL_stack_max.1097, PL_stack_max.1098
	movq	%r12, %rax	# sp, sp.1099
	subq	%rax, %rdx	# sp.1099, D.19465
	movq	%rdx, %rax	# D.19465, D.19465
	sarq	$3, %rax	#, tmp559
	movq	%rax, %rdx	# tmp559, D.19465
	movl	-712(%rbp), %eax	# items, tmp560
	addl	$1, %eax	#, D.19451
	cltq
	cmpq	%rax, %rdx	# D.19465, D.19465
	jge	.L889	#,
	.loc 1 2198 0 is_stmt 0 discriminator 1
	movl	-712(%rbp), %eax	# items, tmp561
	addl	$1, %eax	#, D.19451
	movl	%eax, %edx	# D.19451,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L889:
	.loc 1 2199 0 is_stmt 1
	movl	-712(%rbp), %eax	# items, tmp562
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19460
	movq	-600(%rbp), %rax	# av, tmp563
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movq	(%rax), %rcx	# _149->xav_array, D.19461
	leaq	8(%r12), %rax	#, D.19461
	movq	%rcx, %rsi	# D.19461,
	movq	%rax, %rdi	# D.19461,
	call	memcpy	#
	.loc 1 2201 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1100
	movq	(%rax), %rax	# PL_defgv.1100_152->sv_any, D.19457
	movq	56(%rax), %rax	# _153->xgv_gp, D.19458
	movq	32(%rax), %rax	# _154->gp_av, D.19467
	movq	%rax, %rdi	# D.19467,
	call	Perl_sv_free	#
	.loc 1 2202 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1101
	movq	(%rax), %rax	# PL_defgv.1101_156->sv_any, D.19457
	movq	56(%rax), %rax	# _157->xgv_gp, D.19458
	movq	80(%rbx), %rdx	# cx_112->cx_u.cx_blk.blk_u.blku_sub.savearray, D.19467
	movq	%rdx, 32(%rax)	# D.19467, _158->gp_av
.LBB75:
	.loc 1 2204 0
	movq	-600(%rbp), %rax	# av, tmp564
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movq	-600(%rbp), %rdx	# av, tmp565
	movq	(%rdx), %rdx	# av_132->sv_any, D.19464
	movq	16(%rdx), %rcx	# _161->xav_max, D.19465
	movq	-600(%rbp), %rdx	# av, tmp566
	movq	(%rdx), %rdx	# av_132->sv_any, D.19464
	movq	(%rdx), %rdx	# _163->xav_array, D.19461
	movq	%rdx, %rsi	# D.19461, D.19465
	movq	-600(%rbp), %rdx	# av, tmp567
	movq	(%rdx), %rdx	# av_132->sv_any, D.19464
	movq	56(%rdx), %rdx	# _166->xav_alloc, D.19468
	subq	%rdx, %rsi	# D.19465, D.19465
	movq	%rsi, %rdx	# D.19465, D.19465
	sarq	$3, %rdx	#, tmp568
	addq	%rcx, %rdx	# D.19465, D.19465
	movq	%rdx, 16(%rax)	# D.19465, _160->xav_max
	movq	-600(%rbp), %rax	# av, tmp569
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movq	-600(%rbp), %rdx	# av, tmp570
	movq	(%rdx), %rdx	# av_132->sv_any, D.19464
	movq	56(%rdx), %rdx	# _173->xav_alloc, D.19468
	movq	%rdx, (%rax)	# D.19468, MEM[(struct XPV *)_172].xpv_pv
	movq	-600(%rbp), %rax	# av, tmp571
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movq	$-1, 8(%rax)	#, _175->xav_fill
.LBE75:
	.loc 1 2206 0
	movq	-600(%rbp), %rax	# av, tmp572
	movq	(%rax), %rax	# av_132->sv_any, D.19464
	movzbl	72(%rax), %eax	# _177->xav_flags, D.19450
	movzbl	%al, %eax	# D.19450, D.19451
	andl	$1, %eax	#, D.19451
	testl	%eax, %eax	# D.19451
	je	.L890	#,
	.loc 1 2207 0
	movb	$1, -719(%rbp)	#, reified
	.loc 1 2208 0
	movq	-600(%rbp), %rax	# av, tmp573
	movq	%rax, %rdi	# tmp573,
	call	Perl_sv_free	#
	.loc 1 2209 0
	call	Perl_newAV	#
	movq	%rax, -600(%rbp)	# tmp574, av
	.loc 1 2210 0
	movl	-712(%rbp), %eax	# items, tmp575
	leal	-1(%rax), %edx	#, D.19451
	movq	-600(%rbp), %rax	# av, tmp576
	movl	%edx, %esi	# D.19451,
	movq	%rax, %rdi	# tmp576,
	call	Perl_av_extend	#
	.loc 1 2211 0
	movq	-600(%rbp), %rax	# av, tmp577
	movq	(%rax), %rax	# av_182->sv_any, D.19464
	movb	$2, 72(%rax)	#, _184->xav_flags
	.loc 1 2212 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.1102
	movq	-600(%rbp), %rdx	# av, tmp578
	movq	%rdx, 88(%rbx)	# tmp578, cx_112->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	88(%rbx), %rdx	# cx_112->cx_u.cx_blk.blk_u.blku_sub.argarray, D.19467
	movq	%rdx, (%rax)	# D.19467, *PL_curpad.1102_185
.LBE74:
	.loc 1 2193 0
	jmp	.L891	#
.L890:
	jmp	.L891	#
.L888:
	.loc 1 2215 0
	movq	-664(%rbp), %rax	# cv, tmp579
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	80(%rax), %rax	# _187->xcv_xsub, D.19456
	testq	%rax, %rax	# D.19456
	je	.L891	#,
.LBB76:
	.loc 1 2220 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1103
	movq	(%rax), %rax	# PL_defgv.1103_189->sv_any, D.19457
	movq	56(%rax), %rax	# _190->xgv_gp, D.19458
	movq	32(%rax), %rax	# _191->gp_av, tmp580
	movq	%rax, -592(%rbp)	# tmp580, av
	.loc 1 2222 0
	movq	-592(%rbp), %rax	# av, tmp581
	movq	(%rax), %rax	# av_192->sv_any, D.19464
	movq	8(%rax), %rax	# _193->xav_fill, D.19465
	addl	$1, %eax	#, D.19466
	movl	%eax, -712(%rbp)	# D.19466, items
	.loc 1 2223 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1104
	movq	%rax, %rdx	# PL_stack_max.1104, PL_stack_max.1105
	movq	%r12, %rax	# sp, sp.1106
	subq	%rax, %rdx	# sp.1106, D.19465
	movq	%rdx, %rax	# D.19465, D.19465
	sarq	$3, %rax	#, tmp582
	movq	%rax, %rdx	# tmp582, D.19465
	movl	-712(%rbp), %eax	# items, tmp583
	addl	$1, %eax	#, D.19451
	cltq
	cmpq	%rax, %rdx	# D.19465, D.19465
	jge	.L892	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movl	-712(%rbp), %eax	# items, tmp584
	addl	$1, %eax	#, D.19451
	movl	%eax, %edx	# D.19451,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L892:
	.loc 1 2224 0 is_stmt 1
	movl	-712(%rbp), %eax	# items, tmp585
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19460
	movq	-592(%rbp), %rax	# av, tmp586
	movq	(%rax), %rax	# av_192->sv_any, D.19464
	movq	(%rax), %rcx	# _209->xav_array, D.19461
	leaq	8(%r12), %rax	#, D.19461
	movq	%rcx, %rsi	# D.19461,
	movq	%rax, %rdi	# D.19461,
	call	memcpy	#
.L891:
.LBE76:
	.loc 1 2226 0
	movq	%r12, -656(%rbp)	# sp, mark
	.loc 1 2227 0
	movl	-712(%rbp), %eax	# items, tmp587
	cltq
	salq	$3, %rax	#, D.19460
	addq	%rax, %r12	# D.19460, sp
	.loc 1 2228 0
	movl	(%rbx), %eax	# cx_112->cx_type, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$1, %eax	#, D.19452
	jne	.L893	#,
	.loc 1 2229 0 discriminator 1
	movq	56(%rbx), %rax	# cx_112->cx_u.cx_blk.blk_u.blku_sub.cv, D.19459
	movq	(%rax), %rax	# _218->sv_any, D.19455
	movq	96(%rbx), %rdx	# cx_112->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.19465
	movq	%rdx, 112(%rax)	# D.19465, _219->xcv_depth
	movq	112(%rax), %rax	# _219->xcv_depth, D.19465
	.loc 1 2228 0 discriminator 1
	testq	%rax, %rax	# D.19465
	jne	.L893	#,
	.loc 1 2230 0
	movq	56(%rbx), %rax	# cx_112->cx_u.cx_blk.blk_u.blku_sub.cv, D.19459
	movq	%rax, %rdi	# D.19459,
	call	Perl_sv_free	#
.L893:
	.loc 1 2231 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.1107
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.1108
	movslq	%edx, %rdx	# PL_scopestack_ix.1108, D.19460
	salq	$2, %rdx	#, D.19460
	subq	$4, %rdx	#, D.19470
	addq	%rdx, %rax	# D.19470, D.19471
	movl	(%rax), %eax	# *_228, tmp588
	movl	%eax, -692(%rbp)	# tmp588, oldsave
	.loc 1 2232 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1109
	cmpl	-692(%rbp), %eax	# oldsave, PL_savestack_ix.1109
	jle	.L894	#,
	.loc 1 2232 0 is_stmt 0 discriminator 1
	movl	-692(%rbp), %eax	# oldsave, tmp589
	movl	%eax, %edi	# tmp589,
	call	Perl_leave_scope	#
.L894:
	.loc 1 2235 0 is_stmt 1
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1110
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1110, PL_tmps_floor
	.loc 1 2236 0
	movq	-664(%rbp), %rax	# cv, tmp590
	movq	%rax, %rdi	# tmp590,
	call	Perl_save_freesv	#
	.loc 1 2237 0
	movq	-664(%rbp), %rax	# cv, tmp591
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	80(%rax), %rax	# _232->xcv_xsub, D.19456
	testq	%rax, %rax	# D.19456
	je	.L895	#,
	.loc 1 2238 0
	cmpb	$0, -719(%rbp)	#, reified
	je	.L896	#,
.LBB77:
	.loc 1 2240 0
	movl	$0, -708(%rbp)	#, index
	jmp	.L897	#
.L898:
	.loc 1 2241 0 discriminator 2
	movl	-708(%rbp), %eax	# index, tmp592
	negl	%eax	# D.19451
	cltq
	salq	$3, %rax	#, D.19460
	addq	%r12, %rax	# sp, D.19468
	movq	(%rax), %rax	# *_238, D.19454
	movq	%rax, %rdi	# D.19454,
	call	Perl_sv_2mortal	#
	.loc 1 2240 0 discriminator 2
	addl	$1, -708(%rbp)	#, index
.L897:
	.loc 1 2240 0 is_stmt 0 discriminator 1
	movl	-708(%rbp), %eax	# index, tmp593
	cmpl	-712(%rbp), %eax	# items, tmp593
	jl	.L898	#,
.L896:
.LBE77:
.LBB78:
.LBB79:
	.loc 1 2263 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1111
	addq	$4, %rax	#, PL_markstack_ptr.1112
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1112, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1113
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1114
	cmpq	%rax, %rdx	# PL_markstack_max.1114, PL_markstack_ptr.1113
	jne	.L899	#,
	.loc 1 2263 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L899:
	.loc 1 2263 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1115
	movq	-656(%rbp), %rcx	# mark, mark.1116
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1117
	subq	%rdx, %rcx	# PL_stack_base.1118, D.19465
	movq	%rcx, %rdx	# D.19465, D.19465
	sarq	$3, %rdx	#, tmp594
	movl	%edx, (%rax)	# D.19451, *PL_markstack_ptr.1115_245
.LBE79:
	.loc 1 2264 0 is_stmt 1 discriminator 2
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2265 0 discriminator 2
	movq	-664(%rbp), %rax	# cv, tmp595
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	80(%rax), %rax	# _253->xcv_xsub, D.19456
	movq	-664(%rbp), %rdx	# cv, tmp596
	movq	%rdx, %rdi	# tmp596,
	call	*%rax	# D.19456
	.loc 1 2267 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1119
	movq	8(%rax), %rsi	# PL_curstackinfo.1119_255->si_cxstack, D.19463
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1120
	movl	16(%rax), %edx	# PL_curstackinfo.1120_257->si_cxix, D.19451
	leal	-1(%rdx), %ecx	#, D.19451
	movl	%ecx, 16(%rax)	# D.19451, PL_curstackinfo.1120_257->si_cxix
	movslq	%edx, %rdx	# D.19451, D.19460
	movq	%rdx, %rax	# D.19460, tmp597
	salq	$3, %rax	#, tmp597
	addq	%rdx, %rax	# D.19460, tmp597
	salq	$4, %rax	#, tmp598
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1121
	movl	8(%rbx), %edx	# cx_263->cx_u.cx_blk.blku_oldsp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$3, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, tmp599
	movq	%rax, -584(%rbp)	# tmp599, newsp
	movq	16(%rbx), %rax	# cx_263->cx_u.cx_blk.blku_oldcop, PL_curcop.1122
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1122, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1123
	movl	28(%rbx), %edx	# cx_263->cx_u.cx_blk.blku_oldmarksp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$2, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, PL_markstack_ptr.1124
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1124, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_263->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1125
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1125, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_263->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1126
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1126, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_263->cx_u.cx_blk.blku_oldpm, PL_curpm.1127
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1127, PL_curpm
	movzbl	48(%rbx), %eax	# cx_263->cx_u.cx_blk.blku_gimme, D.19450
	movzbl	%al, %eax	# D.19450, tmp600
	movl	%eax, -688(%rbp)	# tmp600, gimme
.LBE78:
	.loc 1 2270 0 discriminator 2
	call	Perl_pop_scope	#
	.loc 1 2271 0 discriminator 2
	call	Perl_pop_return	#
	jmp	.L966	#
.L895:
.LBB80:
	.loc 1 2274 0
	movq	-664(%rbp), %rax	# cv, tmp601
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	120(%rax), %rax	# _281->xcv_padlist, tmp602
	movq	%rax, -576(%rbp)	# tmp602, padlist
	.loc 1 2275 0
	movl	(%rbx), %eax	# cx_112->cx_type, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$2, %eax	#, D.19452
	jne	.L900	#,
	.loc 1 2276 0
	movl	56(%rbx), %eax	# cx_112->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1128
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1128, PL_in_eval
	.loc 1 2277 0
	movq	72(%rbx), %rax	# cx_112->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1129
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1129, PL_eval_root
	.loc 1 2278 0
	movl	$1, (%rbx)	#, cx_112->cx_type
	.loc 1 2279 0
	movb	$0, 104(%rbx)	#, cx_112->cx_u.cx_blk.blk_u.blku_sub.hasargs
.L900:
	.loc 1 2281 0
	movq	-664(%rbp), %rax	# cv, tmp603
	movq	%rax, 56(%rbx)	# tmp603, cx_112->cx_u.cx_blk.blk_u.blku_sub.cv
	.loc 1 2282 0
	movq	-664(%rbp), %rax	# cv, tmp604
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rax	# _287->xcv_depth, D.19465
	movzwl	%ax, %eax	# D.19448, D.19465
	movq	%rax, 96(%rbx)	# D.19465, cx_112->cx_u.cx_blk.blk_u.blku_sub.olddepth
	.loc 1 2284 0
	movq	-664(%rbp), %rax	# cv, tmp605
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rdx	# _291->xcv_depth, D.19465
	addq	$1, %rdx	#, D.19465
	movq	%rdx, 112(%rax)	# D.19465, _291->xcv_depth
	.loc 1 2285 0
	movq	-664(%rbp), %rax	# cv, tmp606
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rax	# _294->xcv_depth, D.19465
	cmpq	$1, %rax	#, D.19465
	jg	.L901	#,
	.loc 1 2286 0
	movq	-664(%rbp), %rax	# cv, tmp607
	movq	%rax, PL_Sv(%rip)	# tmp607, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1131
	testq	%rax, %rax	# PL_Sv.1131
	je	.L904	#,
	.loc 1 2286 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1132
	movl	8(%rax), %edx	# PL_Sv.1132_297->sv_refcnt, D.19452
	addl	$1, %edx	#, D.19452
	movl	%edx, 8(%rax)	# D.19452, PL_Sv.1132_297->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1132_297->sv_refcnt, D.19452
	testl	%eax, %eax	# D.19452
	je	.L904	#,
	.loc 1 2286 0 discriminator 3
	jmp	.L904	#
.L901:
	.loc 1 2288 0 is_stmt 1
	movq	-664(%rbp), %rax	# cv, tmp608
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rax	# _303->xcv_depth, D.19465
	cmpq	$100, %rax	#, D.19465
	jne	.L905	#,
	.loc 1 2288 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1133
	movq	80(%rax), %rax	# PL_curcop.1133_305->cop_warnings, D.19454
	testq	%rax, %rax	# D.19454
	je	.L906	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1134
	movq	80(%rax), %rax	# PL_curcop.1134_307->cop_warnings, D.19454
	cmpq	$32, %rax	#, D.19454
	je	.L906	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1135
	movq	80(%rax), %rax	# PL_curcop.1135_309->cop_warnings, D.19454
	cmpq	$16, %rax	#, D.19454
	je	.L907	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1136
	movq	80(%rax), %rax	# PL_curcop.1136_311->cop_warnings, D.19454
	movq	(%rax), %rax	# _312->sv_any, D.19453
	movq	(%rax), %rax	# MEM[(struct XPV *)_313].xpv_pv, D.19461
	addq	$4, %rax	#, D.19461
	movzbl	(%rax), %eax	# *_315, D.19473
	movsbl	%al, %eax	# D.19473, D.19451
	andl	$16, %eax	#, D.19451
	testl	%eax, %eax	# D.19451
	jne	.L907	#,
.L906:
	.loc 1 2288 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1137
	movq	80(%rax), %rax	# PL_curcop.1137_319->cop_warnings, D.19454
	testq	%rax, %rax	# D.19454
	jne	.L905	#,
	.loc 1 2288 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1138
	movzbl	%al, %eax	# PL_dowarn.1138, D.19451
	andl	$1, %eax	#, D.19451
	testl	%eax, %eax	# D.19451
	je	.L905	#,
.L907:
	.loc 1 2289 0 is_stmt 1
	movq	-664(%rbp), %rax	# cv, tmp609
	movq	%rax, %rdi	# tmp609,
	call	Perl_sub_crush_depth	#
.L905:
	.loc 1 2290 0
	movq	-664(%rbp), %rax	# cv, tmp610
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rax	# _324->xcv_depth, D.19465
	movl	%eax, %ecx	# D.19465, D.19451
	movq	-576(%rbp), %rax	# padlist, tmp611
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.19451,
	movq	%rax, %rdi	# tmp611,
	call	Perl_pad_push	#
.L904:
.LBB81:
	.loc 1 2306 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1139
	leal	2(%rax), %edx	#, D.19451
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1140
	cmpl	%eax, %edx	# PL_savestack_max.1140, D.19451
	jle	.L908	#,
	.loc 1 2306 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L908:
	.loc 1 2306 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1141
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1142
	leal	1(%rax), %edx	#, PL_savestack_ix.1144
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1144, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19460
	leaq	(%rcx,%rax), %rdx	#, D.19474
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1145
	movq	%rax, (%rdx)	# PL_comppad.1145, _336->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1146
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1147
	leal	1(%rax), %edx	#, PL_savestack_ix.1149
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1149, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19460
	addq	%rcx, %rax	# PL_savestack.1146, D.19474
	movl	$33, (%rax)	#, _344->any_i32
.LBE81:
	movq	-576(%rbp), %rax	# padlist, tmp612
	movq	(%rax), %rax	# padlist_282->sv_any, D.19464
	movq	(%rax), %rdx	# _346->xav_array, D.19461
	movq	-664(%rbp), %rax	# cv, tmp613
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	112(%rax), %rax	# _348->xcv_depth, D.19465
	salq	$3, %rax	#, D.19460
	addq	%rdx, %rax	# D.19461, D.19468
	movq	(%rax), %rax	# *_352, PL_comppad.1150
	movq	%rax, PL_comppad(%rip)	# PL_comppad.1150, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1151
	movq	(%rax), %rax	# PL_comppad.1151_354->sv_any, D.19464
	movq	(%rax), %rax	# _355->xav_array, PL_curpad.1152
	movq	%rax, PL_curpad(%rip)	# PL_curpad.1152, PL_curpad
	.loc 1 2308 0 is_stmt 1 discriminator 2
	movzbl	104(%rbx), %eax	# cx_112->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.19450
	testb	%al, %al	# D.19450
	je	.L909	#,
.LBB82:
	.loc 1 2311 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.1153
	movq	(%rax), %rax	# *PL_curpad.1153_358, tmp614
	movq	%rax, -568(%rbp)	# tmp614, av
	.loc 1 2315 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1154
	movq	(%rax), %rax	# PL_defgv.1154_360->sv_any, D.19457
	movq	56(%rax), %rax	# _361->xgv_gp, D.19458
	movq	32(%rax), %rax	# _362->gp_av, D.19467
	movq	%rax, 80(%rbx)	# D.19467, cx_112->cx_u.cx_blk.blk_u.blku_sub.savearray
	.loc 1 2316 0
	movq	-568(%rbp), %rax	# av, tmp615
	movq	%rax, PL_Sv(%rip)	# tmp615, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1156
	testq	%rax, %rax	# PL_Sv.1156
	je	.L911	#,
	.loc 1 2316 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1157
	movl	8(%rax), %edx	# PL_Sv.1157_365->sv_refcnt, D.19452
	addl	$1, %edx	#, D.19452
	movl	%edx, 8(%rax)	# D.19452, PL_Sv.1157_365->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1157_365->sv_refcnt, D.19452
	testl	%eax, %eax	# D.19452
	je	.L911	#,
	.loc 1 2316 0
	nop
.L911:
	.loc 1 2316 0 discriminator 4
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1158
	movq	(%rax), %rax	# PL_defgv.1158_371->sv_any, D.19457
	movq	56(%rax), %rax	# _372->xgv_gp, D.19458
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1159
	movq	%rdx, 32(%rax)	# PL_Sv.1159, _373->gp_av
	.loc 1 2318 0 is_stmt 1 discriminator 4
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1160
	movq	%rax, 112(%rbx)	# PL_comppad.1160, cx_112->cx_u.cx_blk.blk_u.blku_sub.oldcomppad
	.loc 1 2319 0 discriminator 4
	movq	-568(%rbp), %rax	# av, tmp616
	movq	%rax, 88(%rbx)	# tmp616, cx_112->cx_u.cx_blk.blk_u.blku_sub.argarray
	.loc 1 2321 0 discriminator 4
	movl	-712(%rbp), %eax	# items, tmp617
	movslq	%eax, %rdx	# tmp617, D.19465
	movq	-568(%rbp), %rax	# av, tmp618
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	16(%rax), %rax	# _377->xav_max, D.19465
	addq	$1, %rax	#, D.19465
	cmpq	%rax, %rdx	# D.19465, D.19465
	jl	.L912	#,
	.loc 1 2322 0
	movq	-568(%rbp), %rax	# av, tmp619
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	56(%rax), %rax	# _380->xav_alloc, tmp620
	movq	%rax, -560(%rbp)	# tmp620, ary
	.loc 1 2323 0
	movq	-568(%rbp), %rax	# av, tmp621
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	(%rax), %rax	# _382->xav_array, D.19461
	cmpq	-560(%rbp), %rax	# ary, D.19461
	je	.L913	#,
	.loc 1 2324 0
	movq	-568(%rbp), %rax	# av, tmp622
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-568(%rbp), %rdx	# av, tmp623
	movq	(%rdx), %rdx	# av_359->sv_any, D.19464
	movq	16(%rdx), %rcx	# _385->xav_max, D.19465
	movq	-568(%rbp), %rdx	# av, tmp624
	movq	(%rdx), %rdx	# av_359->sv_any, D.19464
	movq	(%rdx), %rdx	# _387->xav_array, D.19461
	movq	%rdx, %rsi	# D.19461, D.19465
	movq	-568(%rbp), %rdx	# av, tmp625
	movq	(%rdx), %rdx	# av_359->sv_any, D.19464
	movq	56(%rdx), %rdx	# _390->xav_alloc, D.19468
	subq	%rdx, %rsi	# D.19465, D.19465
	movq	%rsi, %rdx	# D.19465, D.19465
	sarq	$3, %rdx	#, tmp626
	addq	%rcx, %rdx	# D.19465, D.19465
	movq	%rdx, 16(%rax)	# D.19465, _384->xav_max
	.loc 1 2325 0
	movq	-568(%rbp), %rax	# av, tmp627
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-560(%rbp), %rdx	# ary, tmp628
	movq	%rdx, (%rax)	# tmp628, MEM[(struct XPV *)_396].xpv_pv
.L913:
	.loc 1 2327 0
	movl	-712(%rbp), %eax	# items, tmp629
	movslq	%eax, %rdx	# tmp629, D.19465
	movq	-568(%rbp), %rax	# av, tmp630
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	16(%rax), %rax	# _398->xav_max, D.19465
	addq	$1, %rax	#, D.19465
	cmpq	%rax, %rdx	# D.19465, D.19465
	jl	.L912	#,
	.loc 1 2328 0
	movq	-568(%rbp), %rax	# av, tmp631
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movl	-712(%rbp), %edx	# items, tmp632
	subl	$1, %edx	#, D.19451
	movslq	%edx, %rdx	# D.19451, D.19465
	movq	%rdx, 16(%rax)	# D.19465, _401->xav_max
	.loc 1 2329 0
	movl	-712(%rbp), %eax	# items, tmp633
	addl	$1, %eax	#, D.19451
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19460
	movq	-560(%rbp), %rax	# ary, tmp634
	movq	%rdx, %rsi	# D.19460,
	movq	%rax, %rdi	# tmp634,
	call	Perl_safesysrealloc	#
	movq	%rax, -560(%rbp)	# tmp635, ary
	.loc 1 2330 0
	movq	-568(%rbp), %rax	# av, tmp636
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-560(%rbp), %rdx	# ary, tmp637
	movq	%rdx, 56(%rax)	# tmp637, _408->xav_alloc
	.loc 1 2331 0
	movq	-568(%rbp), %rax	# av, tmp638
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-560(%rbp), %rdx	# ary, tmp639
	movq	%rdx, (%rax)	# tmp639, MEM[(struct XPV *)_409].xpv_pv
.L912:
	.loc 1 2334 0
	addq	$8, -656(%rbp)	#, mark
	.loc 1 2335 0
	movl	-712(%rbp), %eax	# items, tmp640
	cltq
	leaq	0(,%rax,8), %rdx	#, D.19460
	movq	-568(%rbp), %rax	# av, tmp641
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	(%rax), %rax	# _413->xav_array, D.19461
	movq	-656(%rbp), %rcx	# mark, tmp642
	movq	%rcx, %rsi	# tmp642,
	movq	%rax, %rdi	# D.19461,
	call	memcpy	#
	.loc 1 2336 0
	movq	-568(%rbp), %rax	# av, tmp643
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movl	-712(%rbp), %edx	# items, tmp644
	subl	$1, %edx	#, D.19451
	movslq	%edx, %rdx	# D.19451, D.19465
	movq	%rdx, 8(%rax)	# D.19465, _415->xav_fill
	.loc 1 2338 0
	cmpb	$0, -719(%rbp)	#, reified
	je	.L914	#,
	.loc 1 2340 0
	movq	-568(%rbp), %rax	# av, tmp645
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-568(%rbp), %rdx	# av, tmp646
	movq	(%rdx), %rdx	# av_359->sv_any, D.19464
	movzbl	72(%rdx), %edx	# _419->xav_flags, D.19450
	orl	$1, %edx	#, D.19450
	movb	%dl, 72(%rax)	# D.19450, _418->xav_flags
	.loc 1 2341 0
	movq	-568(%rbp), %rax	# av, tmp647
	movq	(%rax), %rax	# av_359->sv_any, D.19464
	movq	-568(%rbp), %rdx	# av, tmp648
	movq	(%rdx), %rdx	# av_359->sv_any, D.19464
	movzbl	72(%rdx), %edx	# _423->xav_flags, D.19450
	andl	$-3, %edx	#, D.19450
	movb	%dl, 72(%rax)	# D.19450, _422->xav_flags
	.loc 1 2343 0
	jmp	.L915	#
.L914:
	jmp	.L915	#
.L917:
	.loc 1 2344 0
	movq	-656(%rbp), %rax	# mark, tmp649
	movq	(%rax), %rax	# *mark_15, D.19454
	testq	%rax, %rax	# D.19454
	je	.L916	#,
	.loc 1 2345 0
	movq	-656(%rbp), %rax	# mark, tmp650
	movq	(%rax), %rax	# *mark_15, D.19454
	movq	-656(%rbp), %rdx	# mark, tmp651
	movq	(%rdx), %rdx	# *mark_15, D.19454
	movl	12(%rdx), %edx	# _430->sv_flags, D.19452
	andb	$247, %dh	#, D.19452
	movl	%edx, 12(%rax)	# D.19452, _429->sv_flags
.L916:
	.loc 1 2346 0
	addq	$8, -656(%rbp)	#, mark
.L915:
	.loc 1 2343 0 discriminator 1
	movl	-712(%rbp), %eax	# items, items.1161
	leal	-1(%rax), %edx	#, tmp652
	movl	%edx, -712(%rbp)	# tmp652, items
	testl	%eax, %eax	# items.1161
	jne	.L917	#,
.L909:
.LBE82:
	.loc 1 2349 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1162
	testl	%eax, %eax	# PL_perldb.1162
	je	.L918	#,
	.loc 1 2349 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1163
	andl	$1, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L918	#,
.LBB83:
	.loc 1 2354 0 is_stmt 1
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.1164
	movq	(%rax), %rax	# PL_DBsub.1164_437->sv_any, D.19457
	movq	56(%rax), %rax	# _438->xgv_gp, D.19458
	movq	(%rax), %rax	# _439->gp_sv, tmp653
	movq	%rax, -552(%rbp)	# tmp653, sv
	.loc 1 2357 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1165
	testl	%eax, %eax	# PL_perldb.1165
	je	.L919	#,
	.loc 1 2357 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1166
	andl	$64, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L919	#,
	.loc 1 2358 0 is_stmt 1
	movq	-552(%rbp), %rax	# sv, tmp654
	movl	12(%rax), %eax	# sv_440->sv_flags, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$4, %eax	#, D.19452
	ja	.L920	#,
	.loc 1 2358 0 is_stmt 0 discriminator 2
	movq	-552(%rbp), %rax	# sv, tmp655
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp655,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.19473
	je	.L922	#,
.L920:
	.loc 1 2358 0 discriminator 1
	nop
.L922:
	.loc 1 2359 0 is_stmt 1
	movq	-552(%rbp), %rax	# sv, tmp656
	movl	12(%rax), %eax	# sv_440->sv_flags, D.19452
	andl	$2097152, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L924	#,
	.loc 1 2359 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# sv, tmp657
	movq	%rax, %rdi	# tmp657,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.19451
	je	.L924	#,
	.loc 1 2359 0
	nop
.L924:
	.loc 1 2359 0 discriminator 3
	movq	-552(%rbp), %rax	# sv, tmp658
	movl	12(%rax), %eax	# sv_440->sv_flags, D.19452
	orl	$16842752, %eax	#, D.19452
	movl	%eax, %edx	# D.19452, D.19452
	movq	-552(%rbp), %rax	# sv, tmp659
	movl	%edx, 12(%rax)	# D.19452, sv_440->sv_flags
	.loc 1 2360 0 is_stmt 1 discriminator 3
	movq	-552(%rbp), %rax	# sv, tmp660
	movq	(%rax), %rax	# sv_440->sv_any, D.19453
	addq	$24, %rax	#, D.19475
	movq	%rax, %rdi	# D.19475,
	call	Perl_save_iv	#
	.loc 1 2361 0 discriminator 3
	movq	-552(%rbp), %rax	# sv, tmp661
	movq	(%rax), %rax	# sv_440->sv_any, D.19453
	movq	-664(%rbp), %rdx	# cv, cv.1169
	movq	%rdx, 24(%rax)	# cv.1169, MEM[(struct XPVIV *)_458].xiv_iv
	jmp	.L925	#
.L919:
	.loc 1 2363 0
	movq	-552(%rbp), %rax	# sv, tmp662
	movq	%rax, %rdi	# tmp662,
	call	Perl_save_item	#
	.loc 1 2364 0
	movq	-664(%rbp), %rax	# cv, tmp663
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	96(%rax), %rsi	# _460->xcv_gv, D.19476
	movq	-552(%rbp), %rax	# sv, tmp664
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp664,
	call	Perl_gv_efullname4	#
.L925:
	.loc 1 2366 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1170
	testl	%eax, %eax	# PL_perldb.1170
	je	.L918	#,
	.loc 1 2366 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1171
	andl	$128, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L918	#,
	.loc 1 2367 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_cv	#
	movq	%rax, -544(%rbp)	# tmp665, gotocv
	cmpq	$0, -544(%rbp)	#, gotocv
	je	.L918	#,
.LBB84:
	.loc 1 2368 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1172
	addq	$4, %rax	#, PL_markstack_ptr.1173
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1173, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1174
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1175
	cmpq	%rax, %rdx	# PL_markstack_max.1175, PL_markstack_ptr.1174
	jne	.L926	#,
	.loc 1 2368 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L926:
	.loc 1 2368 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1176
	movq	PL_stack_sp(%rip), %rdx	# PL_stack_sp, PL_stack_sp.1177
	movq	%rdx, %rcx	# PL_stack_sp.1177, PL_stack_sp.1178
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1179
	subq	%rdx, %rcx	# PL_stack_base.1180, D.19465
	movq	%rcx, %rdx	# D.19465, D.19465
	sarq	$3, %rdx	#, tmp666
	movl	%edx, (%rax)	# D.19451, *PL_markstack_ptr.1176_470
.LBE84:
	.loc 1 2369 0 is_stmt 1 discriminator 2
	movq	-544(%rbp), %rax	# gotocv, tmp667
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp667,
	call	Perl_call_sv	#
	.loc 1 2370 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.1181
	subq	$8, %rax	#, PL_stack_sp.1182
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1182, PL_stack_sp
.L918:
.LBE83:
	.loc 1 2373 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-664(%rbp), %rax	# cv, tmp668
	movq	(%rax), %rax	# cv_14->sv_any, D.19455
	movq	64(%rax), %rax	# _481->xcv_start, D.19447
	jmp	.L966	#
.L875:
.LBE80:
.LBE71:
	.loc 1 2377 0
	movq	-632(%rbp), %rax	# sv, tmp669
	movl	12(%rax), %eax	# sv_55->sv_flags, D.19452
	andl	$262144, %eax	#, D.19452
	testl	%eax, %eax	# D.19452
	je	.L927	#,
	.loc 1 2377 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# sv, tmp670
	movq	(%rax), %rax	# sv_55->sv_any, D.19453
	movq	8(%rax), %rax	# MEM[(struct XPV *)_485].xpv_cur, n_a.1184
	movq	%rax, -528(%rbp)	# n_a.1184, n_a
	movq	-632(%rbp), %rax	# sv, tmp671
	movq	(%rax), %rax	# sv_55->sv_any, D.19453
	movq	(%rax), %rax	# MEM[(struct XPV *)_487].xpv_pv, iftmp.1183
	jmp	.L928	#
.L927:
	.loc 1 2377 0 discriminator 2
	leaq	-528(%rbp), %rcx	#, tmp672
	movq	-632(%rbp), %rax	# sv, tmp673
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp672,
	movq	%rax, %rdi	# tmp673,
	call	Perl_sv_2pv_flags	#
.L928:
	.loc 1 2377 0 discriminator 3
	movq	%rax, -672(%rbp)	# iftmp.1183, label
	.loc 1 2378 0 is_stmt 1 discriminator 3
	cmpl	$0, -700(%rbp)	#, do_dump
	jne	.L929	#,
	.loc 1 2378 0 is_stmt 0 discriminator 1
	movq	-672(%rbp), %rax	# label, tmp674
	movzbl	(%rax), %eax	# *label_490, D.19473
	testb	%al, %al	# D.19473
	jne	.L929	#,
	.loc 1 2379 0 is_stmt 1
	movl	$must_have_label.10906, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L929:
.LBE70:
	jmp	.L930	#
.L874:
	.loc 1 2382 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1185
	movzbl	36(%rax), %eax	# PL_op.1185_493->op_flags, D.19450
	testb	%al, %al	# D.19477
	jns	.L932	#,
	.loc 1 2383 0
	cmpl	$0, -700(%rbp)	#, do_dump
	jne	.L930	#,
	.loc 1 2384 0
	movl	$must_have_label.10906, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L932:
	.loc 1 2387 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1186
	movq	40(%rax), %rax	# MEM[(struct PVOP *)PL_op.1186_497].op_pv, tmp675
	movq	%rax, -672(%rbp)	# tmp675, label
.L930:
	.loc 1 2389 0
	cmpq	$0, -672(%rbp)	#, label
	je	.L933	#,
	.loc 1 2389 0 is_stmt 0 discriminator 1
	movq	-672(%rbp), %rax	# label, tmp676
	movzbl	(%rax), %eax	# *label_13, D.19473
	testb	%al, %al	# D.19473
	je	.L933	#,
.LBB85:
	.loc 1 2390 0 is_stmt 1
	movq	$0, -648(%rbp)	#, gotoprobe
	.loc 1 2391 0
	movb	$0, -718(%rbp)	#, leaving_eval
	.loc 1 2392 0
	movb	$0, -717(%rbp)	#, in_block
	.loc 1 2393 0
	movq	$0, -640(%rbp)	#, last_eval_cx
	.loc 1 2397 0
	movq	$0, PL_lastgotoprobe(%rip)	#, PL_lastgotoprobe
	.loc 1 2398 0
	movq	$0, -528(%rbp)	#, enterops
	.loc 1 2399 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1187
	movl	16(%rax), %eax	# PL_curstackinfo.1187_504->si_cxix, tmp677
	movl	%eax, -716(%rbp)	# tmp677, ix
	jmp	.L934	#
.L952:
	.loc 1 2400 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1188
	movq	8(%rax), %rcx	# PL_curstackinfo.1188_506->si_cxstack, D.19463
	movl	-716(%rbp), %eax	# ix, tmp678
	movslq	%eax, %rdx	# tmp678, D.19460
	movq	%rdx, %rax	# D.19460, tmp679
	salq	$3, %rax	#, tmp679
	addq	%rdx, %rax	# D.19460, tmp679
	salq	$4, %rax	#, tmp680
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 2401 0
	movl	(%rbx), %eax	# cx_510->cx_type, D.19452
	movzbl	%al, %eax	# D.19452, D.19452
	cmpl	$6, %eax	#, D.19452
	ja	.L935	#,
	movl	%eax, %eax	# D.19452, tmp681
	movq	.L937(,%rax,8), %rax	#, tmp682
	jmp	*%rax	# tmp682
	.section	.rodata
	.align 8
	.align 4
.L937:
	.quad	.L936
	.quad	.L938
	.quad	.L939
	.quad	.L940
	.quad	.L967
	.quad	.L942
	.quad	.L936
	.text
.L939:
	.loc 1 2403 0
	movb	$1, -718(%rbp)	#, leaving_eval
	.loc 1 2404 0
	movl	(%rbx), %eax	# cx_510->cx_type, D.19452
	andl	$514, %eax	#, D.19452
	cmpl	$514, %eax	#, D.19452
	je	.L940	#,
	.loc 1 2406 0
	cmpq	$0, -640(%rbp)	#, last_eval_cx
	je	.L943	#,
	.loc 1 2406 0 is_stmt 0 discriminator 1
	movq	-640(%rbp), %rax	# last_eval_cx, tmp683
	movq	72(%rax), %rax	# last_eval_cx_35->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, iftmp.1189
	jmp	.L944	#
.L943:
	.loc 1 2406 0 discriminator 2
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, iftmp.1189
.L944:
	.loc 1 2405 0 is_stmt 1
	movq	%rax, -648(%rbp)	# iftmp.1189, gotoprobe
	.loc 1 2408 0
	movq	%rbx, -640(%rbp)	# cx, last_eval_cx
	.loc 1 2409 0
	jmp	.L945	#
.L940:
	.loc 1 2413 0
	movq	16(%rbx), %rax	# cx_510->cx_u.cx_blk.blku_oldcop, D.19478
	movq	8(%rax), %rax	# _520->op_sibling, tmp684
	movq	%rax, -648(%rbp)	# tmp684, gotoprobe
	.loc 1 2414 0
	jmp	.L945	#
.L942:
	.loc 1 2418 0
	cmpl	$0, -716(%rbp)	#, ix
	je	.L947	#,
	.loc 1 2419 0
	movq	16(%rbx), %rax	# cx_510->cx_u.cx_blk.blku_oldcop, D.19478
	movq	8(%rax), %rax	# _522->op_sibling, tmp685
	movq	%rax, -648(%rbp)	# tmp685, gotoprobe
	.loc 1 2420 0
	movb	$1, -717(%rbp)	#, in_block
	.loc 1 2423 0
	jmp	.L945	#
.L947:
	.loc 1 2422 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, tmp686
	movq	%rax, -648(%rbp)	# tmp686, gotoprobe
	.loc 1 2423 0
	jmp	.L945	#
.L938:
	.loc 1 2425 0
	movq	56(%rbx), %rax	# cx_510->cx_u.cx_blk.blk_u.blku_sub.cv, D.19459
	movq	(%rax), %rax	# _526->sv_any, D.19455
	movq	112(%rax), %rax	# _527->xcv_depth, D.19465
	testq	%rax, %rax	# D.19465
	je	.L936	#,
	.loc 1 2426 0
	movq	56(%rbx), %rax	# cx_510->cx_u.cx_blk.blk_u.blku_sub.cv, D.19459
	movq	(%rax), %rax	# _529->sv_any, D.19455
	movq	72(%rax), %rax	# _530->xcv_root, tmp687
	movq	%rax, -648(%rbp)	# tmp687, gotoprobe
	.loc 1 2427 0
	jmp	.L945	#
.L936:
	.loc 1 2432 0
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L935:
	.loc 1 2434 0
	cmpl	$0, -716(%rbp)	#, ix
	je	.L949	#,
	.loc 1 2435 0
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L949:
	.loc 1 2436 0
	movq	PL_main_root(%rip), %rax	# PL_main_root, tmp688
	movq	%rax, -648(%rbp)	# tmp688, gotoprobe
	.loc 1 2437 0
	nop
.L945:
	.loc 1 2439 0
	cmpq	$0, -648(%rbp)	#, gotoprobe
	je	.L950	#,
	.loc 1 2440 0
	leaq	-528(%rbp), %rax	#, tmp689
	leaq	512(%rax), %rcx	#, tmp690
	leaq	-528(%rbp), %rdx	#, tmp691
	movq	-672(%rbp), %rsi	# label, tmp692
	movq	-648(%rbp), %rax	# gotoprobe, tmp693
	movq	%rax, %rdi	# tmp693,
	call	S_dofindlabel	#
	movq	%rax, -680(%rbp)	# tmp694, retop
	.loc 1 2442 0
	cmpq	$0, -680(%rbp)	#, retop
	je	.L950	#,
	.loc 1 2443 0
	jmp	.L951	#
.L950:
	.loc 1 2445 0
	movq	-648(%rbp), %rax	# gotoprobe, tmp695
	movq	%rax, PL_lastgotoprobe(%rip)	# tmp695, PL_lastgotoprobe
	jmp	.L946	#
.L967:
	.loc 1 2416 0
	nop
.L946:
	.loc 1 2399 0
	subl	$1, -716(%rbp)	#, ix
.L934:
	.loc 1 2399 0 is_stmt 0 discriminator 1
	cmpl	$0, -716(%rbp)	#, ix
	jns	.L952	#,
.L951:
	.loc 1 2447 0 is_stmt 1
	cmpq	$0, -680(%rbp)	#, retop
	jne	.L953	#,
	.loc 1 2448 0
	movq	-672(%rbp), %rax	# label, tmp696
	movq	%rax, %rsi	# tmp696,
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L953:
	.loc 1 2454 0
	cmpb	$0, -718(%rbp)	#, leaving_eval
	je	.L954	#,
	.loc 1 2454 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	je	.L954	#,
	movq	-520(%rbp), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	je	.L954	#,
.LBB86:
	.loc 1 2456 0 is_stmt 1
	movl	$1, -704(%rbp)	#, i
	jmp	.L955	#
.L957:
	.loc 1 2457 0
	movl	-704(%rbp), %eax	# i, tmp698
	cltq
	movq	-528(%rbp,%rax,8), %rax	# enterops, D.19447
	movzwl	32(%rax), %eax	# _542->op_type, D.19448
	cmpw	$180, %ax	#, D.19448
	jne	.L956	#,
	.loc 1 2458 0
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L956:
	.loc 1 2456 0
	addl	$1, -704(%rbp)	#, i
.L955:
	.loc 1 2456 0 is_stmt 0 discriminator 1
	movl	-704(%rbp), %eax	# i, tmp700
	cltq
	movq	-528(%rbp,%rax,8), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	jne	.L957	#,
.L954:
.LBE86:
	.loc 1 2463 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1190
	movl	16(%rax), %eax	# PL_curstackinfo.1190_546->si_cxix, D.19451
	cmpl	-716(%rbp), %eax	# ix, D.19451
	jle	.L958	#,
.LBB87:
	.loc 1 2466 0
	cmpl	$0, -716(%rbp)	#, ix
	jns	.L959	#,
	.loc 1 2467 0
	movl	$0, -716(%rbp)	#, ix
.L959:
	.loc 1 2468 0
	movl	-716(%rbp), %eax	# ix, tmp701
	movl	%eax, %edi	# tmp701,
	call	Perl_dounwind	#
	.loc 1 2469 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1191
	movq	8(%rax), %rcx	# PL_curstackinfo.1191_549->si_cxstack, D.19463
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1192
	movl	16(%rax), %eax	# PL_curstackinfo.1192_551->si_cxix, D.19451
	movslq	%eax, %rdx	# D.19451, D.19460
	movq	%rdx, %rax	# D.19460, tmp702
	salq	$3, %rax	#, tmp702
	addq	%rdx, %rax	# D.19460, tmp702
	salq	$4, %rax	#, tmp703
	leaq	(%rcx,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1193
	movl	8(%rbx), %edx	# cx_555->cx_u.cx_blk.blku_oldsp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$3, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, PL_stack_sp.1194
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1194, PL_stack_sp
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1195
	movl	28(%rbx), %edx	# cx_555->cx_u.cx_blk.blku_oldmarksp, D.19451
	movslq	%edx, %rdx	# D.19451, D.19460
	salq	$2, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, PL_markstack_ptr.1196
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1196, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_555->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1197
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1197, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_555->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1198
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1198, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_555->cx_u.cx_blk.blku_oldpm, PL_curpm.1199
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1199, PL_curpm
	.loc 1 2470 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.1200
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.1201
	movslq	%edx, %rdx	# PL_scopestack_ix.1201, D.19460
	salq	$2, %rdx	#, D.19460
	addq	%rdx, %rax	# D.19460, D.19471
	movl	(%rax), %eax	# *_573, tmp704
	movl	%eax, -684(%rbp)	# tmp704, oldsave
	.loc 1 2471 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1202
	cmpl	-684(%rbp), %eax	# oldsave, PL_savestack_ix.1202
	jle	.L958	#,
	.loc 1 2471 0 is_stmt 0 discriminator 1
	movl	-684(%rbp), %eax	# oldsave, tmp705
	movl	%eax, %edi	# tmp705,
	call	Perl_leave_scope	#
.L958:
.LBE87:
	.loc 1 2476 0 is_stmt 1
	movq	-528(%rbp), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	je	.L933	#,
	.loc 1 2476 0 is_stmt 0 discriminator 1
	movq	-520(%rbp), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	je	.L933	#,
.LBB88:
	.loc 1 2477 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, tmp706
	movq	%rax, -536(%rbp)	# tmp706, oldop
	.loc 1 2478 0
	movq	-520(%rbp), %rax	# enterops, D.19447
	movzwl	32(%rax), %eax	# _579->op_type, D.19448
	cmpw	$177, %ax	#, D.19448
	jne	.L960	#,
	.loc 1 2478 0 is_stmt 0 discriminator 1
	cmpb	$0, -717(%rbp)	#, in_block
	je	.L960	#,
	movl	$2, %eax	#, iftmp.1203
	jmp	.L961	#
.L960:
	.loc 1 2478 0 discriminator 2
	movl	$1, %eax	#, iftmp.1203
.L961:
	.loc 1 2478 0 discriminator 3
	movl	%eax, -716(%rbp)	# iftmp.1203, ix
	.loc 1 2479 0 is_stmt 1 discriminator 3
	jmp	.L962	#
.L964:
	.loc 1 2480 0
	movl	-716(%rbp), %eax	# ix, tmp708
	cltq
	movq	-528(%rbp,%rax,8), %rax	# enterops, PL_op.1204
	movq	%rax, PL_op(%rip)	# PL_op.1204, PL_op
	.loc 1 2483 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1205
	movzwl	32(%rax), %eax	# PL_op.1205_586->op_type, D.19448
	cmpw	$180, %ax	#, D.19448
	jne	.L963	#,
	.loc 1 2484 0
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L966	#
.L963:
	.loc 1 2485 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1206
	movq	16(%rax), %rax	# PL_op.1206_589->op_ppaddr, D.19479
	call	*%rax	# D.19479
	.loc 1 2479 0
	addl	$1, -716(%rbp)	#, ix
.L962:
	.loc 1 2479 0 is_stmt 0 discriminator 1
	movl	-716(%rbp), %eax	# ix, tmp710
	cltq
	movq	-528(%rbp,%rax,8), %rax	# enterops, D.19447
	testq	%rax, %rax	# D.19447
	jne	.L964	#,
	.loc 1 2487 0 is_stmt 1
	movq	-536(%rbp), %rax	# oldop, tmp711
	movq	%rax, PL_op(%rip)	# tmp711, PL_op
.L933:
.LBE88:
.LBE85:
	.loc 1 2491 0
	cmpl	$0, -700(%rbp)	#, do_dump
	je	.L965	#,
	.loc 1 2495 0
	movq	-680(%rbp), %rax	# retop, tmp712
	movq	%rax, PL_restartop(%rip)	# tmp712, PL_restartop
	.loc 1 2496 0
	movb	$1, PL_do_undump(%rip)	#, PL_do_undump
	.loc 1 2498 0
	call	Perl_my_unexec	#
	.loc 1 2500 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 2501 0
	movb	$0, PL_do_undump(%rip)	#, PL_do_undump
.L965:
	.loc 1 2504 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-680(%rbp), %rax	# retop, D.19447
.L966:
	.loc 1 2505 0
	addq	$704, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_pp_goto, .-Perl_pp_goto
	.globl	Perl_pp_exit
	.type	Perl_pp_exit, @function
Perl_pp_exit:
.LFB46:
	.loc 1 2508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2509 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2512 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1207
	movzbl	37(%rax), %eax	# PL_op.1207_5->op_private, D.19490
	movzbl	%al, %eax	# D.19490, D.19491
	andl	$15, %eax	#, D.19491
	testl	%eax, %eax	# D.19491
	jg	.L969	#,
	.loc 1 2513 0
	movl	$0, -20(%rbp)	#, anum
	jmp	.L970	#
.L969:
	.loc 1 2515 0
	movq	%rbx, %rax	# sp, sp.1208
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1208_10, PL_Sv.1209
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1209, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1211
	movl	12(%rax), %eax	# PL_Sv.1211_13->sv_flags, D.19492
	andl	$65536, %eax	#, D.19492
	testl	%eax, %eax	# D.19492
	je	.L971	#,
	.loc 1 2515 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1212
	movq	(%rax), %rax	# PL_Sv.1212_16->sv_any, D.19493
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_17].xiv_iv, D.19494
	jmp	.L972	#
.L971:
	.loc 1 2515 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1213
	movq	%rax, %rdi	# PL_Sv.1213,
	call	Perl_sv_2iv	#
.L972:
	.loc 1 2515 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.1210, anum
.L970:
	.loc 1 2522 0 is_stmt 1
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.1214
	orl	$1, %eax	#, PL_exit_flags.1215
	movb	%al, PL_exit_flags(%rip)	# PL_exit_flags.1215, PL_exit_flags
	.loc 1 2523 0
	movl	-20(%rbp), %eax	# anum, anum.1216
	movl	%eax, %edi	# anum.1216,
	call	Perl_my_exit	#
	.loc 1 2524 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_27
	.loc 1 2525 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1217
	movq	(%rax), %rax	# PL_op.1217_28->op_next, D.19495
	.loc 1 2526 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_pp_exit, .-Perl_pp_exit
	.type	S_save_lines, @function
S_save_lines:
.LFB47:
	.loc 1 2573 0
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
	movq	%rdi, -56(%rbp)	# array, array
	movq	%rsi, -64(%rbp)	# sv, sv
	.loc 1 2574 0
	movq	-64(%rbp), %rax	# sv, tmp73
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.19496
	movq	(%rax), %rbx	# MEM[(struct XPV *)_5].xpv_pv, s
	.loc 1 2575 0
	movq	-64(%rbp), %rax	# sv, tmp74
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.19496
	movq	(%rax), %rdx	# MEM[(struct XPV *)_7].xpv_pv, D.19497
	movq	-64(%rbp), %rax	# sv, tmp75
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.19496
	movq	8(%rax), %rax	# MEM[(struct XPV *)_9].xpv_cur, D.19498
	leaq	(%rdx,%rax), %r14	#, send
	.loc 1 2577 0
	movl	$1, %r13d	#, line
	.loc 1 2579 0
	jmp	.L975	#
.L979:
.LBB89:
	.loc 1 2580 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -40(%rbp)	# tmp76, tmpstr
	.loc 1 2582 0
	movq	-40(%rbp), %rax	# tmpstr, tmp77
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	Perl_sv_upgrade	#
	.loc 1 2583 0
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# s,
	call	strchr	#
	movq	%rax, %r12	#, t
	.loc 1 2584 0
	testq	%r12, %r12	# t
	je	.L976	#,
	.loc 1 2585 0
	addq	$1, %r12	#, t
	jmp	.L977	#
.L976:
	.loc 1 2587 0
	movq	%r14, %r12	# send, t
.L977:
	.loc 1 2589 0
	movq	%r12, %rdx	# t, t.1218
	movq	%rbx, %rax	# s, s.1219
	subq	%rax, %rdx	# s.1219, D.19499
	movq	%rdx, %rax	# D.19499, D.19499
	movq	%rax, %rdx	# D.19499, D.19498
	movq	-40(%rbp), %rax	# tmpstr, tmp78
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_setpvn	#
	.loc 1 2590 0
	movl	%r13d, %eax	# line, line.1220
	leal	1(%rax), %r13d	#, line
	movq	-40(%rbp), %rdx	# tmpstr, tmp79
	movq	-56(%rbp), %rcx	# array, tmp80
	movl	%eax, %esi	# line.1220,
	movq	%rcx, %rdi	# tmp80,
	call	Perl_av_store	#
	.loc 1 2591 0
	movq	%r12, %rbx	# t, s
.L975:
.LBE89:
	.loc 1 2579 0 discriminator 1
	testq	%rbx, %rbx	# s
	je	.L974	#,
	.loc 1 2579 0 is_stmt 0 discriminator 2
	cmpq	%r14, %rbx	# send, s
	jb	.L979	#,
.L974:
	.loc 1 2593 0 is_stmt 1
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	S_save_lines, .-S_save_lines
	.type	S_docatch_body, @function
S_docatch_body:
.LFB48:
	.loc 1 2605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2606 0
	movq	PL_runops(%rip), %rax	# PL_runops, PL_runops.1221
	call	*%rax	# PL_runops.1221
	.loc 1 2607 0
	movl	$0, %eax	#, D.19500
	.loc 1 2608 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	S_docatch_body, .-S_docatch_body
	.section	.rodata
.LC58:
	.string	"panic: top_env\n"
	.text
	.type	S_docatch, @function
S_docatch:
.LFB49:
	.loc 1 2612 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
	movq	%rdi, -264(%rbp)	# o, o
	.loc 1 2614 0
	movq	PL_op(%rip), %rax	# PL_op, tmp76
	movq	%rax, -248(%rbp)	# tmp76, oldop
	.loc 1 2616 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, tmp77
	movq	%rax, -240(%rbp)	# tmp77, cursi
	.loc 1 2622 0
	movq	-264(%rbp), %rax	# o, tmp78
	movq	%rax, PL_op(%rip)	# tmp78, PL_op
	.loc 1 2629 0
	call	Perl_pop_return	#
	movq	%rax, -232(%rbp)	# tmp79, retop
	.loc 1 2630 0
	movl	$0, %edi	#,
	call	Perl_push_return	#
.LBB90:
	.loc 1 2636 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1222
	movq	%rax, -24(%rbp)	# PL_top_env.1222, cur_env.je_prev
	leaq	-224(%rbp), %rax	#, tmp80
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	__sigsetjmp	#
	movl	%eax, -16(%rbp)	# D.19501, cur_env.je_ret
	leaq	-224(%rbp), %rax	#, tmp81
	movq	%rax, PL_top_env(%rip)	# tmp81, PL_top_env
	movb	$0, -12(%rbp)	#, cur_env.je_mustcatch
	movl	-16(%rbp), %eax	# cur_env.je_ret, tmp82
	movl	%eax, -252(%rbp)	# tmp82, ret
.LBE90:
	.loc 1 2638 0
	movl	-252(%rbp), %eax	# ret, ret
	testl	%eax, %eax	# ret
	je	.L984	#,
	cmpl	$3, %eax	#, ret
	je	.L985	#,
	jmp	.L983	#
.L984:
	.loc 1 2642 0
	call	S_docatch_body	#
	.loc 1 2644 0
	jmp	.L986	#
.L985:
	.loc 1 2647 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.1223
	testq	%rax, %rax	# PL_restartop.1223
	je	.L987	#,
	.loc 1 2647 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1224
	cmpq	%rax, -240(%rbp)	# PL_curstackinfo.1224, cursi
	jne	.L987	#,
	.loc 1 2648 0 is_stmt 1
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.1225
	movq	%rax, PL_op(%rip)	# PL_restartop.1225, PL_op
	.loc 1 2649 0
	movq	$0, PL_restartop(%rip)	#, PL_restartop
	.loc 1 2650 0
	jmp	.L984	#
.L987:
	.loc 1 2653 0
	movq	PL_restartop(%rip), %rax	# PL_restartop, PL_restartop.1226
	testq	%rax, %rax	# PL_restartop.1226
	jne	.L983	#,
	.loc 1 2654 0
	jmp	.L986	#
.L983:
	.loc 1 2657 0
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.1227
	movq	%rax, PL_top_env(%rip)	# PL_top_env.1227, PL_top_env
	.loc 1 2658 0
	movq	-248(%rbp), %rax	# oldop, tmp84
	movq	%rax, PL_op(%rip)	# tmp84, PL_op
.LBB91:
	.loc 1 2659 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1228
	movq	200(%rax), %rax	# PL_top_env.1228_14->je_prev, D.19502
	testq	%rax, %rax	# D.19502
	je	.L988	#,
	.loc 1 2659 0 is_stmt 0 discriminator 1
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1229
	movl	-252(%rbp), %edx	# ret, tmp85
	movl	%edx, %esi	# tmp85,
	movq	%rax, %rdi	# D.19503,
	call	siglongjmp	#
.L988:
	.loc 1 2659 0 discriminator 2
	cmpl	$2, -252(%rbp)	#, ret
	jne	.L989	#,
	.loc 1 2659 0 discriminator 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.1230
	movl	%eax, %edi	# PL_statusvalue.1230,
	call	exit	#
.L989:
	.loc 1 2659 0 discriminator 2
	call	Perl_PerlIO_stderr	#
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# D.19504,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	exit	#
.L986:
.LBE91:
	.loc 1 2662 0 is_stmt 1
	movq	-24(%rbp), %rax	# cur_env.je_prev, PL_top_env.1231
	movq	%rax, PL_top_env(%rip)	# PL_top_env.1231, PL_top_env
	.loc 1 2663 0
	movq	-248(%rbp), %rax	# oldop, tmp86
	movq	%rax, PL_op(%rip)	# tmp86, PL_op
	.loc 1 2664 0
	movq	-232(%rbp), %rax	# retop, D.19505
	.loc 1 2665 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	S_docatch, .-S_docatch
	.section	.rodata
.LC59:
	.string	"_<(%.10seval %lu)[%s:%ld]"
.LC60:
	.string	"_<(%.10s_eval %lu)"
	.text
	.globl	Perl_sv_compile_2op
	.type	Perl_sv_compile_2op, @function
Perl_sv_compile_2op:
.LFB50:
	.loc 1 2672 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$224, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)	# sv, sv
	movq	%rsi, -224(%rbp)	# startop, startop
	movq	%rdx, -232(%rbp)	# code, code
	movq	%rcx, -240(%rbp)	# padp, padp
	.loc 1 2672 0
	movq	%fs:40, %rax	#, tmp309
	movq	%rax, -24(%rbp)	# tmp309, D.19527
	xorl	%eax, %eax	# tmp309
	.loc 1 2673 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2676 0
	movl	$0, -196(%rbp)	#, gimme
	.loc 1 2681 0
	leaq	-80(%rbp), %rax	#, tmp244
	movq	%rax, -176(%rbp)	# tmp244, tmpbuf
	.loc 1 2684 0
	movq	$0, -168(%rbp)	#, runcv
	.loc 1 2686 0
	call	Perl_push_scope	#
	.loc 1 2687 0
	movq	-216(%rbp), %rax	# sv, tmp245
	movq	%rax, %rdi	# tmp245,
	call	Perl_lex_start	#
	.loc 1 2688 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1232
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1232, PL_tmps_floor
	.loc 1 2691 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1233
	cmpq	$PL_compiling, %rax	#, PL_curcop.1233
	jne	.L992	#,
	.loc 1 2692 0
	movl	$PL_compiling+48, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 2693 0
	movq	PL_curstash(%rip), %rax	# PL_curstash, PL_curstash.1234
	movq	%rax, PL_compiling+48(%rip)	# PL_curstash.1234, PL_compiling.cop_stash
.L992:
	.loc 1 2695 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1235
	testl	%eax, %eax	# PL_perldb.1235
	je	.L993	#,
	.loc 1 2695 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1236
	andl	$256, %eax	#, D.19507
	testl	%eax, %eax	# D.19507
	je	.L993	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1237
	movl	72(%rax), %eax	# PL_curcop.1237_18->cop_line, D.19507
	testl	%eax, %eax	# D.19507
	je	.L993	#,
.LBB92:
	.loc 1 2696 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -160(%rbp)	# tmp246, sv
	.loc 1 2699 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1238
	movl	72(%rax), %eax	# PL_curcop.1238_21->cop_line, D.19507
	.loc 1 2697 0
	movl	%eax, %esi	# D.19507, D.19508
	.loc 1 2699 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1240
	movq	56(%rax), %rax	# PL_curcop.1240_24->cop_filegv, D.19509
	.loc 1 2697 0
	testq	%rax, %rax	# D.19509
	je	.L994	#,
	.loc 1 2699 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1241
	movq	56(%rax), %rax	# PL_curcop.1241_26->cop_filegv, D.19509
	movq	(%rax), %rax	# _27->sv_any, D.19510
	movq	56(%rax), %rax	# _28->xgv_gp, D.19511
	movq	(%rax), %rax	# _29->gp_sv, D.19512
	testq	%rax, %rax	# D.19512
	je	.L994	#,
	.loc 1 2699 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1243
	movq	56(%rax), %rax	# PL_curcop.1243_31->cop_filegv, D.19509
	testq	%rax, %rax	# D.19509
	je	.L995	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1244
	movq	56(%rax), %rax	# PL_curcop.1244_33->cop_filegv, D.19509
	movq	(%rax), %rax	# _34->sv_any, D.19510
	movq	56(%rax), %rax	# _35->xgv_gp, D.19511
	movq	(%rax), %rax	# _36->gp_sv, iftmp.1242
	jmp	.L996	#
.L995:
	.loc 1 2699 0 discriminator 2
	movl	$0, %eax	#, iftmp.1242
.L996:
	.loc 1 2699 0 discriminator 3
	movq	(%rax), %rax	# iftmp.1242_5->sv_any, D.19513
	.loc 1 2697 0 is_stmt 1 discriminator 3
	movq	(%rax), %rax	# MEM[(struct XPV *)_39].xpv_pv, iftmp.1239
	jmp	.L997	#
.L994:
	.loc 1 2697 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.1239
.L997:
	.loc 1 2698 0 is_stmt 1
	movl	PL_evalseq(%rip), %edx	# PL_evalseq, PL_evalseq.1245
	addl	$1, %edx	#, PL_evalseq.1246
	.loc 1 2697 0
	movl	%edx, PL_evalseq(%rip)	# PL_evalseq.1246, PL_evalseq
	.loc 1 2698 0
	movl	PL_evalseq(%rip), %edx	# PL_evalseq, PL_evalseq.1247
	.loc 1 2697 0
	movl	%edx, %ecx	# PL_evalseq.1247, D.19514
	movq	-232(%rbp), %rdx	# code, tmp247
	movq	-160(%rbp), %rdi	# sv, tmp248
	movq	%rsi, %r9	# D.19508,
	movq	%rax, %r8	# iftmp.1239,
	movl	$.LC59, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 2700 0
	movq	-160(%rbp), %rax	# sv, tmp249
	movq	(%rax), %rax	# sv_20->sv_any, D.19513
	movq	(%rax), %rax	# MEM[(struct XPV *)_47].xpv_pv, tmp250
	movq	%rax, -176(%rbp)	# tmp250, tmpbuf
.LBE92:
	.loc 1 2695 0
	jmp	.L998	#
.L993:
	.loc 1 2703 0
	movl	PL_evalseq(%rip), %eax	# PL_evalseq, PL_evalseq.1248
	addl	$1, %eax	#, PL_evalseq.1249
	movl	%eax, PL_evalseq(%rip)	# PL_evalseq.1249, PL_evalseq
	movl	PL_evalseq(%rip), %eax	# PL_evalseq, PL_evalseq.1250
	movl	%eax, %ecx	# PL_evalseq.1250, D.19514
	movq	-232(%rbp), %rdx	# code, tmp251
	movq	-176(%rbp), %rax	# tmpbuf, tmp252
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp252,
	movl	$0, %eax	#,
	call	sprintf	#
.L998:
	.loc 1 2704 0
	movl	$PL_compiling+56, %edi	#,
	call	Perl_save_generic_svref	#
	.loc 1 2705 0
	movq	-176(%rbp), %rax	# tmpbuf, tmp253
	addq	$2, %rax	#, D.19515
	movq	%rax, %rdi	# D.19515,
	call	Perl_gv_fetchfile	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1251, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1253
	testq	%rax, %rax	# PL_Sv.1253
	je	.L1000	#,
	.loc 1 2705 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1254
	movl	8(%rax), %edx	# PL_Sv.1254_56->sv_refcnt, D.19507
	addl	$1, %edx	#, D.19507
	movl	%edx, 8(%rax)	# D.19507, PL_Sv.1254_56->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1254_56->sv_refcnt, D.19507
	testl	%eax, %eax	# D.19507
	je	.L1000	#,
	.loc 1 2705 0
	nop
.L1000:
	.loc 1 2705 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1255
	movq	%rax, PL_compiling+56(%rip)	# PL_Sv.1255, PL_compiling.cop_filegv
	.loc 1 2706 0 is_stmt 1 discriminator 4
	movl	$PL_compiling+72, %edi	#,
	call	Perl_save_I32	#
	.loc 1 2707 0 discriminator 4
	movl	$1, PL_compiling+72(%rip)	#, PL_compiling.cop_line
	.loc 1 2713 0 discriminator 4
	movq	-176(%rbp), %rax	# tmpbuf, tmp254
	movq	%rax, %rdi	# tmp254,
	call	Perl_savepv	#
	movq	%rax, -152(%rbp)	# tmp255, safestr
	.loc 1 2714 0 discriminator 4
	movq	-152(%rbp), %rax	# safestr, tmp256
	movq	%rax, %rdi	# tmp256,
	call	strlen	#
	movl	%eax, %edx	# D.19514, D.19516
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.1256
	movq	-152(%rbp), %rcx	# safestr, tmp257
	movq	%rcx, %rsi	# tmp257,
	movq	%rax, %rdi	# PL_defstash.1256,
	call	Perl_save_delete	#
.LBB93:
	.loc 1 2715 0 discriminator 4
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1257
	leal	3(%rax), %edx	#, D.19516
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1258
	cmpl	%eax, %edx	# PL_savestack_max.1258, D.19516
	jle	.L1001	#,
	.loc 1 2715 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L1001:
	.loc 1 2715 0 discriminator 2
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1259
	andl	$131072, %eax	#, D.19507
	testl	%eax, %eax	# D.19507
	je	.L1002	#,
	.loc 1 2715 0 discriminator 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1260
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1261
	leal	1(%rax), %edx	#, PL_savestack_ix.1263
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1263, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19514
	leaq	(%rcx,%rax), %rdx	#, D.19517
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1264
	movq	(%rax), %rax	# PL_hintgv.1264_79->sv_any, D.19510
	movq	56(%rax), %rax	# _80->xgv_gp, D.19511
	movq	40(%rax), %rax	# _81->gp_hv, D.19518
	movq	%rax, (%rdx)	# D.19518, _78->any_ptr
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1265
	movq	(%rax), %rax	# PL_hintgv.1265_83->sv_any, D.19510
	movq	56(%rax), %rbx	# _84->xgv_gp, D.19511
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1266
	movq	(%rax), %rax	# PL_hintgv.1266_86->sv_any, D.19510
	movq	56(%rax), %rax	# _87->xgv_gp, D.19511
	movq	40(%rax), %rax	# _88->gp_hv, D.19518
	movq	%rax, %rdi	# D.19518,
	call	Perl_newHVhv	#
	movq	%rax, 40(%rbx)	# D.19518, _85->gp_hv
.L1002:
	.loc 1 2715 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1267
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1268
	leal	1(%rax), %edx	#, PL_savestack_ix.1270
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1270, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19514
	leaq	(%rcx,%rax), %rdx	#, D.19517
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1271
	movl	%eax, (%rdx)	# PL_hints.1272, _97->any_i32
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1273
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1274
	leal	1(%rax), %edx	#, PL_savestack_ix.1276
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1276, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19514
	addq	%rcx, %rax	# PL_savestack.1273, D.19517
	movl	$27, (%rax)	#, _106->any_i32
.LBE93:
	.loc 1 2719 0 is_stmt 1 discriminator 2
	movl	$PL_op, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 2723 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1277
	cmpq	$PL_compiling, %rax	#, PL_curcop.1277
	setne	%al	#, D.19520
	movzbl	%al, %eax	# D.19520, tmp258
	movl	%eax, -192(%rbp)	# tmp258, runtime
	.loc 1 2724 0 discriminator 2
	cmpl	$0, -192(%rbp)	#, runtime
	je	.L1003	#,
	.loc 1 2725 0
	movl	$0, %edi	#,
	call	Perl_find_runcv	#
	movq	%rax, -168(%rbp)	# tmp259, runcv
.L1003:
	.loc 1 2727 0
	leaq	-128(%rbp), %rax	#, tmp260
	movq	%rax, PL_op(%rip)	# tmp260, PL_op
	.loc 1 2728 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1278
	movw	$311, 32(%rax)	#, PL_op.1278_112->op_type
	.loc 1 2729 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1279
	movb	$0, 36(%rax)	#, PL_op.1279_113->op_flags
	.loc 1 2730 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1281
	movl	16(%rax), %edx	# PL_curstackinfo.1281_114->si_cxix, D.19516
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1282
	movl	20(%rax), %eax	# PL_curstackinfo.1282_116->si_cxmax, D.19516
	cmpl	%eax, %edx	# D.19516, D.19516
	jge	.L1004	#,
	.loc 1 2730 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1283
	movl	16(%rax), %edx	# PL_curstackinfo.1283_118->si_cxix, D.19516
	addl	$1, %edx	#, D.19516
	movl	%edx, 16(%rax)	# D.19516, PL_curstackinfo.1283_118->si_cxix
	jmp	.L1005	#
.L1004:
	.loc 1 2730 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.1284
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19516, PL_curstackinfo.1284_122->si_cxix
.L1005:
	.loc 1 2730 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1285
	movq	8(%rax), %rcx	# PL_curstackinfo.1285_125->si_cxstack, D.19521
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1286
	movl	16(%rax), %eax	# PL_curstackinfo.1286_127->si_cxix, D.19516
	movslq	%eax, %rdx	# D.19516, D.19514
	movq	%rdx, %rax	# D.19514, tmp261
	salq	$3, %rax	#, tmp261
	addq	%rdx, %rax	# D.19514, tmp261
	salq	$4, %rax	#, tmp262
	addq	%rcx, %rax	# D.19521, tmp263
	movq	%rax, -144(%rbp)	# tmp263, cx
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1288
	cmpq	$PL_compiling, %rax	#, PL_curcop.1288
	jne	.L1006	#,
	.loc 1 2730 0 discriminator 1
	movl	$2, %eax	#, iftmp.1287
	jmp	.L1007	#
.L1006:
	.loc 1 2730 0 discriminator 2
	movl	$258, %eax	#, iftmp.1287
.L1007:
	.loc 1 2730 0 discriminator 3
	movq	-144(%rbp), %rdx	# cx, tmp264
	movl	%eax, (%rdx)	# iftmp.1287, cx_131->cx_type
	movq	%r12, %rdx	# sp, sp.1289
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1290
	subq	%rax, %rdx	# PL_stack_base.1291, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	sarq	$3, %rax	#, tmp265
	movl	%eax, %edx	# D.19508, D.19516
	movq	-144(%rbp), %rax	# cx, tmp266
	movl	%edx, 8(%rax)	# D.19516, cx_131->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.1292
	movq	-144(%rbp), %rax	# cx, tmp267
	movq	%rdx, 16(%rax)	# PL_curcop.1292, cx_131->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1293
	movq	%rax, %rdx	# PL_markstack_ptr.1293, PL_markstack_ptr.1294
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1295
	subq	%rax, %rdx	# PL_markstack.1296, D.19508
	movq	%rdx, %rax	# D.19508, D.19508
	sarq	$2, %rax	#, tmp268
	movl	%eax, %edx	# D.19508, D.19516
	movq	-144(%rbp), %rax	# cx, tmp269
	movl	%edx, 28(%rax)	# D.19516, cx_131->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.1297
	movq	-144(%rbp), %rax	# cx, tmp270
	movl	%edx, 32(%rax)	# PL_scopestack_ix.1297, cx_131->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.1298
	movq	-144(%rbp), %rax	# cx, tmp271
	movl	%edx, 24(%rax)	# PL_retstack_ix.1298, cx_131->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rdx	# PL_curpm, PL_curpm.1299
	movq	-144(%rbp), %rax	# cx, tmp272
	movq	%rdx, 40(%rax)	# PL_curpm.1299, cx_131->cx_u.cx_blk.blku_oldpm
	movl	-196(%rbp), %eax	# gimme, tmp273
	movl	%eax, %edx	# tmp273, D.19522
	movq	-144(%rbp), %rax	# cx, tmp274
	movb	%dl, 48(%rax)	# D.19522, cx_131->cx_u.cx_blk.blku_gimme
.LBB94:
	.loc 1 2731 0 is_stmt 1 discriminator 3
	movl	PL_in_eval(%rip), %edx	# PL_in_eval, PL_in_eval.1300
	movq	-144(%rbp), %rax	# cx, tmp275
	movl	%edx, 56(%rax)	# PL_in_eval.1300, cx_131->cx_u.cx_blk.blk_u.blku_eval.old_in_eval
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1301
	movzwl	32(%rax), %eax	# PL_op.1301_154->op_type, D.19523
	movzwl	%ax, %edx	# D.19523, D.19516
	movq	-144(%rbp), %rax	# cx, tmp276
	movl	%edx, 60(%rax)	# D.19516, cx_131->cx_u.cx_blk.blk_u.blku_eval.old_op_type
	movq	-144(%rbp), %rax	# cx, tmp277
	movq	$0, 64(%rax)	#, cx_131->cx_u.cx_blk.blk_u.blku_eval.old_namesv
	movq	PL_eval_root(%rip), %rdx	# PL_eval_root, PL_eval_root.1302
	movq	-144(%rbp), %rax	# cx, tmp278
	movq	%rdx, 72(%rax)	# PL_eval_root.1302, cx_131->cx_u.cx_blk.blk_u.blku_eval.old_eval_root
	movq	PL_linestr(%rip), %rdx	# PL_linestr, PL_linestr.1303
	movq	-144(%rbp), %rax	# cx, tmp279
	movq	%rdx, 80(%rax)	# PL_linestr.1303, cx_131->cx_u.cx_blk.blk_u.blku_eval.cur_text
	movq	-144(%rbp), %rax	# cx, tmp280
	movq	$0, 88(%rax)	#, cx_131->cx_u.cx_blk.blk_u.blku_eval.cv
.LBE94:
	.loc 1 2733 0 discriminator 3
	cmpl	$0, -192(%rbp)	#, runtime
	je	.L1008	#,
	.loc 1 2734 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1304
	movl	64(%rax), %ecx	# PL_curcop.1304_160->cop_seq, D.19507
	movq	-168(%rbp), %rdx	# runcv, tmp282
	movq	-224(%rbp), %rax	# startop, tmp283
	movq	%rax, %rsi	# tmp283,
	movl	$0, %edi	#,
	call	S_doeval	#
	movq	%rax, -184(%rbp)	# tmp284, rop
	jmp	.L1009	#
.L1008:
	.loc 1 2736 0
	movl	PL_cop_seqmax(%rip), %ecx	# PL_cop_seqmax, PL_cop_seqmax.1305
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.1306
	movq	-224(%rbp), %rax	# startop, tmp285
	movq	%rax, %rsi	# tmp285,
	movl	$0, %edi	#,
	call	S_doeval	#
	movq	%rax, -184(%rbp)	# tmp286, rop
.L1009:
	.loc 1 2737 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1307
	movq	8(%rax), %rsi	# PL_curstackinfo.1307_167->si_cxstack, D.19521
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1308
	movl	16(%rax), %edx	# PL_curstackinfo.1308_169->si_cxix, D.19516
	leal	-1(%rdx), %ecx	#, D.19516
	movl	%ecx, 16(%rax)	# D.19516, PL_curstackinfo.1308_169->si_cxix
	movslq	%edx, %rdx	# D.19516, D.19514
	movq	%rdx, %rax	# D.19514, tmp287
	salq	$3, %rax	#, tmp287
	addq	%rdx, %rax	# D.19514, tmp287
	salq	$4, %rax	#, tmp288
	addq	%rsi, %rax	# D.19521, tmp289
	movq	%rax, -144(%rbp)	# tmp289, cx
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1309
	movq	-144(%rbp), %rax	# cx, tmp290
	movl	8(%rax), %eax	# cx_175->cx_u.cx_blk.blku_oldsp, D.19516
	cltq
	salq	$3, %rax	#, D.19514
	addq	%rdx, %rax	# PL_stack_base.1309, tmp291
	movq	%rax, -136(%rbp)	# tmp291, newsp
	movq	-144(%rbp), %rax	# cx, tmp292
	movq	16(%rax), %rax	# cx_175->cx_u.cx_blk.blku_oldcop, PL_curcop.1310
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1310, PL_curcop
	movq	PL_markstack(%rip), %rdx	# PL_markstack, PL_markstack.1311
	movq	-144(%rbp), %rax	# cx, tmp293
	movl	28(%rax), %eax	# cx_175->cx_u.cx_blk.blku_oldmarksp, D.19516
	cltq
	salq	$2, %rax	#, D.19514
	addq	%rdx, %rax	# PL_markstack.1311, PL_markstack_ptr.1312
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1312, PL_markstack_ptr
	movq	-144(%rbp), %rax	# cx, tmp294
	movl	32(%rax), %eax	# cx_175->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1313
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1313, PL_scopestack_ix
	movq	-144(%rbp), %rax	# cx, tmp295
	movl	24(%rax), %eax	# cx_175->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1314
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1314, PL_retstack_ix
	movq	-144(%rbp), %rax	# cx, tmp296
	movq	40(%rax), %rax	# cx_175->cx_u.cx_blk.blku_oldpm, PL_curpm.1315
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1315, PL_curpm
	movq	-144(%rbp), %rax	# cx, tmp297
	movzbl	48(%rax), %eax	# cx_175->cx_u.cx_blk.blku_gimme, D.19522
	movzbl	%al, %eax	# D.19522, tmp298
	movl	%eax, -196(%rbp)	# tmp298, gimme
.LBB95:
	.loc 1 2738 0
	movq	-144(%rbp), %rax	# cx, tmp299
	movl	56(%rax), %eax	# cx_175->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1316
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1316, PL_in_eval
	movq	-144(%rbp), %rax	# cx, tmp300
	movl	60(%rax), %eax	# cx_175->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp301
	movl	%eax, -188(%rbp)	# tmp301, optype
	movq	-144(%rbp), %rax	# cx, tmp302
	movq	72(%rax), %rax	# cx_175->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1317
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1317, PL_eval_root
	movq	-144(%rbp), %rax	# cx, tmp303
	movq	64(%rax), %rax	# cx_175->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19512
	testq	%rax, %rax	# D.19512
	je	.L1010	#,
	.loc 1 2738 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# cx, tmp304
	movq	64(%rax), %rax	# cx_175->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19512
	movq	%rax, %rdi	# D.19512,
	call	Perl_sv_2mortal	#
.L1010:
.LBE95:
	.loc 1 2740 0 is_stmt 1
	movq	-224(%rbp), %rax	# startop, tmp305
	movq	(%rax), %rax	# *startop_162(D), D.19525
	movw	$0, 32(%rax)	#, _197->op_type
	.loc 1 2741 0
	movq	-224(%rbp), %rax	# startop, tmp306
	movq	(%rax), %rax	# *startop_162(D), D.19525
	movq	PL_ppaddr(%rip), %rdx	# PL_ppaddr, D.19526
	movq	%rdx, 16(%rax)	# D.19526, _198->op_ppaddr
	.loc 1 2742 0
	call	Perl_lex_end	#
	.loc 1 2744 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1318
	movq	%rax, PL_Sv(%rip)	# PL_comppad.1318, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1320
	testq	%rax, %rax	# PL_Sv.1320
	je	.L1012	#,
	.loc 1 2744 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1321
	movl	8(%rax), %edx	# PL_Sv.1321_202->sv_refcnt, D.19507
	addl	$1, %edx	#, D.19507
	movl	%edx, 8(%rax)	# D.19507, PL_Sv.1321_202->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1321_202->sv_refcnt, D.19507
	testl	%eax, %eax	# D.19507
	je	.L1012	#,
	.loc 1 2744 0
	nop
.L1012:
	.loc 1 2744 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1322
	movq	-240(%rbp), %rax	# padp, tmp307
	movq	%rdx, (%rax)	# PL_Sv.1322, *padp_209(D)
	.loc 1 2745 0 is_stmt 1 discriminator 4
	call	Perl_pop_scope	#
	.loc 1 2746 0 discriminator 4
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1323
	cmpq	$PL_compiling, %rax	#, PL_curcop.1323
	jne	.L1013	#,
	.loc 1 2747 0
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1324
	movb	%al, PL_compiling+37(%rip)	# D.19522, PL_compiling.op_private
.L1013:
	.loc 1 2751 0
	movq	-184(%rbp), %rax	# rop, D.19525
	.loc 1 2752 0
	movq	-24(%rbp), %rbx	# D.19527, tmp310
	xorq	%fs:40, %rbx	#, tmp310
	je	.L1015	#,
	call	__stack_chk_fail	#
.L1015:
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_sv_compile_2op, .-Perl_sv_compile_2op
	.globl	Perl_find_runcv
	.type	Perl_find_runcv, @function
Perl_find_runcv:
.LFB51:
	.loc 1 2769 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# db_seqp, db_seqp
	.loc 1 2774 0
	cmpq	$0, -40(%rbp)	#, db_seqp
	je	.L1017	#,
	.loc 1 2775 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1325
	movl	64(%rax), %edx	# PL_curcop.1325_5->cop_seq, D.19533
	movq	-40(%rbp), %rax	# db_seqp, tmp80
	movl	%edx, (%rax)	# D.19533, *db_seqp_4(D)
.L1017:
	.loc 1 2776 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, tmp81
	movq	%rax, -24(%rbp)	# tmp81, si
	jmp	.L1018	#
.L1026:
	.loc 1 2777 0
	movq	-24(%rbp), %rax	# si, tmp82
	movl	16(%rax), %eax	# si_2->si_cxix, tmp83
	movl	%eax, -28(%rbp)	# tmp83, ix
	jmp	.L1019	#
.L1025:
	.loc 1 2778 0
	movq	-24(%rbp), %rax	# si, tmp84
	movq	8(%rax), %rcx	# si_2->si_cxstack, D.19534
	movl	-28(%rbp), %eax	# ix, tmp85
	movslq	%eax, %rdx	# tmp85, D.19535
	movq	%rdx, %rax	# D.19535, tmp86
	salq	$3, %rax	#, tmp86
	addq	%rdx, %rax	# D.19535, tmp86
	salq	$4, %rax	#, tmp87
	addq	%rcx, %rax	# D.19534, tmp88
	movq	%rax, -16(%rbp)	# tmp88, cx
	.loc 1 2779 0
	movq	-16(%rbp), %rax	# cx, tmp89
	movl	(%rax), %eax	# cx_12->cx_type, D.19533
	movzbl	%al, %eax	# D.19533, D.19533
	cmpl	$1, %eax	#, D.19533
	je	.L1020	#,
	.loc 1 2779 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cx, tmp90
	movl	(%rax), %eax	# cx_12->cx_type, D.19533
	movzbl	%al, %eax	# D.19533, D.19533
	cmpl	$6, %eax	#, D.19533
	jne	.L1021	#,
.L1020:
.LBB96:
	.loc 1 2780 0 is_stmt 1
	movq	-16(%rbp), %rax	# cx, tmp91
	movq	56(%rax), %rax	# cx_12->cx_u.cx_blk.blk_u.blku_sub.cv, tmp92
	movq	%rax, -8(%rbp)	# tmp92, cv
	.loc 1 2782 0
	cmpq	$0, -40(%rbp)	#, db_seqp
	je	.L1022	#,
	.loc 1 2782 0 is_stmt 0 discriminator 1
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.1326
	testq	%rax, %rax	# PL_debstash.1326
	je	.L1022	#,
	movq	-8(%rbp), %rax	# cv, tmp93
	movq	(%rax), %rax	# cv_22->sv_any, D.19536
	movq	56(%rax), %rdx	# _24->xcv_stash, D.19537
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.1327
	cmpq	%rax, %rdx	# PL_debstash.1327, D.19537
	jne	.L1022	#,
	.loc 1 2783 0 is_stmt 1
	movq	-16(%rbp), %rax	# cx, tmp94
	movq	16(%rax), %rax	# cx_12->cx_u.cx_blk.blku_oldcop, D.19538
	movl	64(%rax), %edx	# _27->cop_seq, D.19533
	movq	-40(%rbp), %rax	# db_seqp, tmp95
	movl	%edx, (%rax)	# D.19533, *db_seqp_4(D)
	.loc 1 2784 0
	jmp	.L1023	#
.L1022:
	.loc 1 2786 0
	movq	-8(%rbp), %rax	# cv, D.19532
	jmp	.L1024	#
.L1021:
.LBE96:
	.loc 1 2788 0
	movq	-16(%rbp), %rax	# cx, tmp96
	movl	(%rax), %eax	# cx_12->cx_type, D.19533
	movzbl	%al, %eax	# D.19533, D.19533
	cmpl	$2, %eax	#, D.19533
	jne	.L1023	#,
	.loc 1 2788 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cx, tmp97
	movl	(%rax), %eax	# cx_12->cx_type, D.19533
	andl	$514, %eax	#, D.19533
	cmpl	$514, %eax	#, D.19533
	je	.L1023	#,
	.loc 1 2789 0 is_stmt 1
	movq	PL_compcv(%rip), %rax	# PL_compcv, D.19532
	jmp	.L1024	#
.L1023:
	.loc 1 2777 0
	subl	$1, -28(%rbp)	#, ix
.L1019:
	.loc 1 2777 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, ix
	jns	.L1025	#,
	.loc 1 2776 0 is_stmt 1
	movq	-24(%rbp), %rax	# si, tmp98
	movq	32(%rax), %rax	# si_2->si_prev, tmp99
	movq	%rax, -24(%rbp)	# tmp99, si
.L1018:
	.loc 1 2776 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, si
	jne	.L1026	#,
	.loc 1 2792 0 is_stmt 1
	movq	PL_main_cv(%rip), %rax	# PL_main_cv, D.19532
.L1024:
	.loc 1 2793 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_find_runcv, .-Perl_find_runcv
	.section	.rodata
	.align 8
.LC61:
	.string	"%sCompilation failed in regexp"
.LC62:
	.string	"Compilation error"
.LC63:
	.string	"DB::postponed"
	.text
	.type	S_doeval, @function
S_doeval:
.LFB52:
	.loc 1 2805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# gimme, gimme
	movq	%rsi, -112(%rbp)	# startop, startop
	movq	%rdx, -120(%rbp)	# outside, outside
	movl	%ecx, -104(%rbp)	# seq, seq
	.loc 1 2806 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2807 0
	movq	PL_op(%rip), %rax	# PL_op, tmp293
	movq	%rax, -72(%rbp)	# tmp293, saveop
	.loc 1 2811 0
	cmpq	$0, -72(%rbp)	#, saveop
	je	.L1028	#,
	.loc 1 2809 0
	movq	-72(%rbp), %rax	# saveop, tmp294
	movzwl	32(%rax), %eax	# saveop_12->op_type, D.19540
	cmpw	$309, %ax	#, D.19540
	jne	.L1028	#,
	.loc 1 2810 0
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.1329
	andl	$1, %eax	#, D.19541
	.loc 1 2811 0
	orl	$8, %eax	#, iftmp.1328
	jmp	.L1029	#
.L1028:
	.loc 1 2811 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.1328
.L1029:
	.loc 1 2809 0 is_stmt 1
	movl	%eax, PL_in_eval(%rip)	# iftmp.1328, PL_in_eval
.LBB97:
	.loc 1 2813 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1330
	addq	$4, %rax	#, PL_markstack_ptr.1331
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1331, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1332
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1333
	cmpq	%rax, %rdx	# PL_markstack_max.1333, PL_markstack_ptr.1332
	jne	.L1030	#,
	.loc 1 2813 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L1030:
	.loc 1 2813 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1334
	movq	%rbx, %rcx	# sp, sp.1335
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1336
	subq	%rdx, %rcx	# PL_stack_base.1337, D.19542
	movq	%rcx, %rdx	# D.19542, D.19542
	sarq	$3, %rdx	#, tmp295
	movl	%edx, (%rax)	# D.19541, *PL_markstack_ptr.1334_22
.LBE97:
	.loc 1 2815 0 is_stmt 1 discriminator 2
	movl	$PL_compcv, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 2816 0 discriminator 2
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, PL_compcv(%rip)	# PL_compcv.1338, PL_compcv
	.loc 1 2817 0 discriminator 2
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1339
	movl	$12, %esi	#,
	movq	%rax, %rdi	# PL_compcv.1339,
	call	Perl_sv_upgrade	#
	.loc 1 2818 0 discriminator 2
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1340
	movq	(%rax), %rax	# PL_compcv.1340_32->sv_any, D.19544
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.1341
	movq	(%rdx), %rdx	# PL_compcv.1341_34->sv_any, D.19544
	movzwl	136(%rdx), %edx	# _35->xcv_flags, D.19540
	orl	$16, %edx	#, D.19540
	movw	%dx, 136(%rax)	# D.19540, _33->xcv_flags
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1342
	movq	PL_compcv(%rip), %rdx	# PL_compcv, PL_compcv.1343
	movl	12(%rdx), %edx	# PL_compcv.1343_39->sv_flags, D.19545
	andl	$-1048577, %edx	#, D.19545
	movl	%edx, 12(%rax)	# D.19545, PL_compcv.1342_38->sv_flags
	.loc 1 2820 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1344
	movq	8(%rax), %rcx	# PL_curstackinfo.1344_42->si_cxstack, D.19546
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1345
	movl	16(%rax), %eax	# PL_curstackinfo.1345_44->si_cxix, D.19541
	movslq	%eax, %rdx	# D.19541, D.19547
	movq	%rdx, %rax	# D.19547, tmp296
	salq	$3, %rax	#, tmp296
	addq	%rdx, %rax	# D.19547, tmp296
	salq	$4, %rax	#, tmp297
	leaq	(%rcx,%rax), %rdx	#, D.19546
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1346
	movq	%rax, 88(%rdx)	# PL_compcv.1346, _48->cx_u.cx_blk.blk_u.blku_eval.cv
	.loc 1 2828 0 discriminator 2
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1347
	movq	(%rax), %rax	# PL_compcv.1347_50->sv_any, D.19544
	movl	-104(%rbp), %edx	# seq, tmp298
	movl	%edx, 140(%rax)	# tmp298, _51->xcv_outside_seq
	.loc 1 2829 0 discriminator 2
	movq	-120(%rbp), %rax	# outside, tmp299
	movq	%rax, PL_Sv(%rip)	# tmp299, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1349
	testq	%rax, %rax	# PL_Sv.1349
	je	.L1032	#,
	.loc 1 2829 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1350
	movl	8(%rax), %edx	# PL_Sv.1350_55->sv_refcnt, D.19545
	addl	$1, %edx	#, D.19545
	movl	%edx, 8(%rax)	# D.19545, PL_Sv.1350_55->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1350_55->sv_refcnt, D.19545
	testl	%eax, %eax	# D.19545
	je	.L1032	#,
	.loc 1 2829 0
	nop
.L1032:
	.loc 1 2829 0 discriminator 4
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1351
	movq	(%rax), %rax	# PL_compcv.1351_61->sv_any, D.19544
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1352
	movq	%rdx, 128(%rax)	# PL_Sv.1352, _62->xcv_outside
	.loc 1 2833 0 is_stmt 1 discriminator 4
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1353
	movq	(%rax), %rbx	# PL_compcv.1353_64->sv_any, D.19544
	movl	$2, %edi	#,
	call	Perl_pad_new	#
	movq	%rax, 120(%rbx)	# D.19548, _65->xcv_padlist
	.loc 1 2836 0 discriminator 4
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1354
	movq	%rax, %rdi	# PL_compcv.1354,
	call	Perl_save_mortalizesv	#
	.loc 1 2840 0 discriminator 4
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1355
	movq	48(%rax), %rdx	# PL_curcop.1355_68->cop_stash, D.19549
	movq	PL_curstash(%rip), %rax	# PL_curstash, PL_curstash.1356
	cmpq	%rax, %rdx	# PL_curstash.1356, D.19549
	je	.L1033	#,
	.loc 1 2841 0
	movl	$PL_curstash, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 2842 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1357
	movq	48(%rax), %rax	# PL_curcop.1357_71->cop_stash, PL_curstash.1358
	movq	%rax, PL_curstash(%rip)	# PL_curstash.1358, PL_curstash
.L1033:
	.loc 1 2844 0
	movl	$PL_beginav, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 2845 0
	call	Perl_newAV	#
	movq	%rax, PL_beginav(%rip)	# PL_beginav.1359, PL_beginav
	.loc 1 2846 0
	movq	PL_beginav(%rip), %rax	# PL_beginav, PL_beginav.1360
	movq	%rax, %rdi	# PL_beginav.1360,
	call	Perl_save_freesv	#
	.loc 1 2847 0
	movl	$PL_error_count, %edi	#,
	call	Perl_save_I32	#
	.loc 1 2851 0
	movq	$0, PL_eval_root(%rip)	#, PL_eval_root
	.loc 1 2852 0
	movl	$0, PL_error_count(%rip)	#, PL_error_count
	.loc 1 2853 0
	movq	$PL_compiling, PL_curcop(%rip)	#, PL_curcop
	.loc 1 2854 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1361
	movl	$0, 68(%rax)	#, PL_curcop.1361_75->cop_arybase
	.loc 1 2855 0
	cmpq	$0, -72(%rbp)	#, saveop
	je	.L1034	#,
	.loc 1 2855 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# saveop, tmp300
	movzbl	36(%rax), %eax	# saveop_12->op_flags, D.19550
	testb	%al, %al	# D.19551
	jns	.L1034	#,
	.loc 1 2856 0 is_stmt 1
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.1362
	orl	$4, %eax	#, PL_in_eval.1363
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1363, PL_in_eval
	jmp	.L1035	#
.L1034:
	.loc 1 2858 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1364
	movq	(%rax), %rax	# PL_errgv.1364_80->sv_any, D.19552
	movq	56(%rax), %rax	# _81->xgv_gp, D.19553
	movq	(%rax), %rax	# _82->gp_sv, D.19554
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.19554,
	call	Perl_sv_setpv	#
.L1035:
	.loc 1 2859 0
	call	Perl_yyparse	#
	testl	%eax, %eax	# D.19541
	jne	.L1036	#,
	.loc 1 2859 0 is_stmt 0 discriminator 1
	movl	PL_error_count(%rip), %eax	# PL_error_count, PL_error_count.1365
	testl	%eax, %eax	# PL_error_count.1365
	jne	.L1036	#,
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1366
	testq	%rax, %rax	# PL_eval_root.1366
	jne	.L1037	#,
.L1036:
.LBB98:
	.loc 1 2862 0 is_stmt 1
	movl	$0, -84(%rbp)	#, optype
	.loc 1 2865 0
	movq	-72(%rbp), %rax	# saveop, tmp301
	movq	%rax, PL_op(%rip)	# tmp301, PL_op
	.loc 1 2866 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1367
	testq	%rax, %rax	# PL_eval_root.1367
	je	.L1038	#,
	.loc 1 2867 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1368
	movq	%rax, %rdi	# PL_eval_root.1368,
	call	Perl_op_free	#
	.loc 1 2868 0
	movq	$0, PL_eval_root(%rip)	#, PL_eval_root
.L1038:
	.loc 1 2870 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1369
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1370
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1372
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1372, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1371_148, D.19541
	cltq
	salq	$3, %rax	#, D.19547
	leaq	(%rcx,%rax), %rbx	#, sp
	.loc 1 2871 0
	cmpq	$0, -112(%rbp)	#, startop
	jne	.L1039	#,
	.loc 1 2872 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1373
	movq	8(%rax), %rsi	# PL_curstackinfo.1373_154->si_cxstack, D.19546
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1374
	movl	16(%rax), %edx	# PL_curstackinfo.1374_156->si_cxix, D.19541
	leal	-1(%rdx), %ecx	#, D.19541
	movl	%ecx, 16(%rax)	# D.19541, PL_curstackinfo.1374_156->si_cxix
	movslq	%edx, %rdx	# D.19541, D.19547
	movq	%rdx, %rax	# D.19547, tmp302
	salq	$3, %rax	#, tmp302
	addq	%rdx, %rax	# D.19547, tmp302
	salq	$4, %rax	#, tmp303
	addq	%rsi, %rax	# D.19546, tmp304
	movq	%rax, -56(%rbp)	# tmp304, cx
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1375
	movq	-56(%rbp), %rax	# cx, tmp305
	movl	8(%rax), %eax	# cx_162->cx_u.cx_blk.blku_oldsp, D.19541
	cltq
	salq	$3, %rax	#, D.19547
	addq	%rdx, %rax	# PL_stack_base.1375, tmp306
	movq	%rax, -48(%rbp)	# tmp306, newsp
	movq	-56(%rbp), %rax	# cx, tmp307
	movq	16(%rax), %rax	# cx_162->cx_u.cx_blk.blku_oldcop, PL_curcop.1376
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1376, PL_curcop
	movq	PL_markstack(%rip), %rdx	# PL_markstack, PL_markstack.1377
	movq	-56(%rbp), %rax	# cx, tmp308
	movl	28(%rax), %eax	# cx_162->cx_u.cx_blk.blku_oldmarksp, D.19541
	cltq
	salq	$2, %rax	#, D.19547
	addq	%rdx, %rax	# PL_markstack.1377, PL_markstack_ptr.1378
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1378, PL_markstack_ptr
	movq	-56(%rbp), %rax	# cx, tmp309
	movl	32(%rax), %eax	# cx_162->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1379
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1379, PL_scopestack_ix
	movq	-56(%rbp), %rax	# cx, tmp310
	movl	24(%rax), %eax	# cx_162->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1380
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1380, PL_retstack_ix
	movq	-56(%rbp), %rax	# cx, tmp311
	movq	40(%rax), %rax	# cx_162->cx_u.cx_blk.blku_oldpm, PL_curpm.1381
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1381, PL_curpm
	movq	-56(%rbp), %rax	# cx, tmp312
	movzbl	48(%rax), %eax	# cx_162->cx_u.cx_blk.blku_gimme, D.19550
	movzbl	%al, %eax	# D.19550, tmp313
	movl	%eax, -100(%rbp)	# tmp313, gimme
.LBB99:
	.loc 1 2873 0
	movq	-56(%rbp), %rax	# cx, tmp314
	movl	56(%rax), %eax	# cx_162->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1382
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1382, PL_in_eval
	movq	-56(%rbp), %rax	# cx, tmp315
	movl	60(%rax), %eax	# cx_162->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp316
	movl	%eax, -84(%rbp)	# tmp316, optype
	movq	-56(%rbp), %rax	# cx, tmp317
	movq	72(%rax), %rax	# cx_162->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1383
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1383, PL_eval_root
	movq	-56(%rbp), %rax	# cx, tmp318
	movq	64(%rax), %rax	# cx_162->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19554
	testq	%rax, %rax	# D.19554
	je	.L1040	#,
	.loc 1 2873 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cx, tmp319
	movq	64(%rax), %rax	# cx_162->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19554
	movq	%rax, %rdi	# D.19554,
	call	Perl_sv_2mortal	#
.L1040:
.LBE99:
	.loc 1 2874 0 is_stmt 1
	call	Perl_pop_return	#
.L1039:
	.loc 1 2876 0
	call	Perl_lex_end	#
	.loc 1 2877 0
	call	Perl_pop_scope	#
	.loc 1 2878 0
	cmpl	$309, -84(%rbp)	#, optype
	jne	.L1041	#,
.LBB100:
	.loc 1 2879 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1384
	movq	(%rax), %rax	# PL_errgv.1384_184->sv_any, D.19552
	movq	56(%rax), %rax	# _185->xgv_gp, D.19553
	movq	(%rax), %rax	# _186->gp_sv, PL_Sv.1385
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1385, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1387
	movl	12(%rax), %eax	# PL_Sv.1387_188->sv_flags, D.19545
	andl	$262144, %eax	#, D.19545
	testl	%eax, %eax	# D.19545
	je	.L1042	#,
	.loc 1 2879 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1388
	movq	(%rax), %rax	# PL_Sv.1388_191->sv_any, D.19556
	movq	8(%rax), %rax	# MEM[(struct XPV *)_192].xpv_cur, n_a.1389
	movq	%rax, -80(%rbp)	# n_a.1389, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1390
	movq	(%rax), %rax	# PL_Sv.1390_194->sv_any, D.19556
	movq	(%rax), %rax	# MEM[(struct XPV *)_195].xpv_pv, iftmp.1386
	jmp	.L1043	#
.L1042:
	.loc 1 2879 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1391
	leaq	-80(%rbp), %rcx	#, tmp320
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp320,
	movq	%rax, %rdi	# PL_Sv.1391,
	call	Perl_sv_2pv_flags	#
.L1043:
	.loc 1 2879 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.1386, msg
	.loc 1 2881 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# msg, tmp321
	movzbl	(%rax), %eax	# *msg_199, D.19557
	.loc 1 2880 0 discriminator 3
	testb	%al, %al	# D.19557
	je	.L1044	#,
	.loc 1 2880 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msg, iftmp.1392
	jmp	.L1045	#
.L1044:
	.loc 1 2880 0 discriminator 2
	movl	$.LC29, %eax	#, iftmp.1392
.L1045:
	.loc 1 2880 0 discriminator 3
	movq	%rax, %rsi	# iftmp.1392,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1056	#
.L1041:
.LBE100:
	.loc 1 2883 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, startop
	je	.L1047	#,
.LBB101:
	.loc 1 2884 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1393
	movq	(%rax), %rax	# PL_errgv.1393_204->sv_any, D.19552
	movq	56(%rax), %rax	# _205->xgv_gp, D.19553
	movq	(%rax), %rax	# _206->gp_sv, PL_Sv.1394
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1394, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1396
	movl	12(%rax), %eax	# PL_Sv.1396_208->sv_flags, D.19545
	andl	$262144, %eax	#, D.19545
	testl	%eax, %eax	# D.19545
	je	.L1048	#,
	.loc 1 2884 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1397
	movq	(%rax), %rax	# PL_Sv.1397_211->sv_any, D.19556
	movq	8(%rax), %rax	# MEM[(struct XPV *)_212].xpv_cur, n_a.1398
	movq	%rax, -80(%rbp)	# n_a.1398, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1399
	movq	(%rax), %rax	# PL_Sv.1399_214->sv_any, D.19556
	movq	(%rax), %rax	# MEM[(struct XPV *)_215].xpv_pv, iftmp.1395
	jmp	.L1049	#
.L1048:
	.loc 1 2884 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1400
	leaq	-80(%rbp), %rcx	#, tmp322
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp322,
	movq	%rax, %rdi	# PL_Sv.1400,
	call	Perl_sv_2pv_flags	#
.L1049:
	.loc 1 2884 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1395, msg
	.loc 1 2886 0 is_stmt 1 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1401
	movq	8(%rax), %rsi	# PL_curstackinfo.1401_220->si_cxstack, D.19546
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1402
	movl	16(%rax), %edx	# PL_curstackinfo.1402_222->si_cxix, D.19541
	leal	-1(%rdx), %ecx	#, D.19541
	movl	%ecx, 16(%rax)	# D.19541, PL_curstackinfo.1402_222->si_cxix
	movslq	%edx, %rdx	# D.19541, D.19547
	movq	%rdx, %rax	# D.19547, tmp323
	salq	$3, %rax	#, tmp323
	addq	%rdx, %rax	# D.19547, tmp323
	salq	$4, %rax	#, tmp324
	addq	%rsi, %rax	# D.19546, tmp325
	movq	%rax, -56(%rbp)	# tmp325, cx
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1403
	movq	-56(%rbp), %rax	# cx, tmp326
	movl	8(%rax), %eax	# cx_228->cx_u.cx_blk.blku_oldsp, D.19541
	cltq
	salq	$3, %rax	#, D.19547
	addq	%rdx, %rax	# PL_stack_base.1403, tmp327
	movq	%rax, -48(%rbp)	# tmp327, newsp
	movq	-56(%rbp), %rax	# cx, tmp328
	movq	16(%rax), %rax	# cx_228->cx_u.cx_blk.blku_oldcop, PL_curcop.1404
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1404, PL_curcop
	movq	PL_markstack(%rip), %rdx	# PL_markstack, PL_markstack.1405
	movq	-56(%rbp), %rax	# cx, tmp329
	movl	28(%rax), %eax	# cx_228->cx_u.cx_blk.blku_oldmarksp, D.19541
	cltq
	salq	$2, %rax	#, D.19547
	addq	%rdx, %rax	# PL_markstack.1405, PL_markstack_ptr.1406
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1406, PL_markstack_ptr
	movq	-56(%rbp), %rax	# cx, tmp330
	movl	32(%rax), %eax	# cx_228->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1407
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1407, PL_scopestack_ix
	movq	-56(%rbp), %rax	# cx, tmp331
	movl	24(%rax), %eax	# cx_228->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1408
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1408, PL_retstack_ix
	movq	-56(%rbp), %rax	# cx, tmp332
	movq	40(%rax), %rax	# cx_228->cx_u.cx_blk.blku_oldpm, PL_curpm.1409
	movq	%rax, PL_curpm(%rip)	# PL_curpm.1409, PL_curpm
	movq	-56(%rbp), %rax	# cx, tmp333
	movzbl	48(%rax), %eax	# cx_228->cx_u.cx_blk.blku_gimme, D.19550
	movzbl	%al, %eax	# D.19550, tmp334
	movl	%eax, -100(%rbp)	# tmp334, gimme
.LBB102:
	.loc 1 2887 0 discriminator 3
	movq	-56(%rbp), %rax	# cx, tmp335
	movl	56(%rax), %eax	# cx_228->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1410
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1410, PL_in_eval
	movq	-56(%rbp), %rax	# cx, tmp336
	movl	60(%rax), %eax	# cx_228->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp337
	movl	%eax, -84(%rbp)	# tmp337, optype
	movq	-56(%rbp), %rax	# cx, tmp338
	movq	72(%rax), %rax	# cx_228->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1411
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1411, PL_eval_root
	movq	-56(%rbp), %rax	# cx, tmp339
	movq	64(%rax), %rax	# cx_228->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19554
	testq	%rax, %rax	# D.19554
	je	.L1050	#,
	.loc 1 2887 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cx, tmp340
	movq	64(%rax), %rax	# cx_228->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19554
	movq	%rax, %rdi	# D.19554,
	call	Perl_sv_2mortal	#
.L1050:
.LBE102:
	.loc 1 2889 0 is_stmt 1
	movq	-32(%rbp), %rax	# msg, tmp341
	movzbl	(%rax), %eax	# *msg_219, D.19557
	.loc 1 2888 0
	testb	%al, %al	# D.19557
	je	.L1051	#,
	.loc 1 2888 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# msg, iftmp.1412
	jmp	.L1052	#
.L1051:
	.loc 1 2888 0 discriminator 2
	movl	$.LC29, %eax	#, iftmp.1412
.L1052:
	.loc 1 2888 0 discriminator 1
	movq	%rax, %rsi	# iftmp.1412,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE101:
	jmp	.L1053	#
.L1047:
.LBB103:
	.loc 1 2892 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1413
	movq	(%rax), %rax	# PL_errgv.1413_253->sv_any, D.19552
	movq	56(%rax), %rax	# _254->xgv_gp, D.19553
	movq	(%rax), %rax	# _255->gp_sv, PL_Sv.1414
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1414, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1416
	movl	12(%rax), %eax	# PL_Sv.1416_257->sv_flags, D.19545
	andl	$262144, %eax	#, D.19545
	testl	%eax, %eax	# D.19545
	je	.L1054	#,
	.loc 1 2892 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1417
	movq	(%rax), %rax	# PL_Sv.1417_260->sv_any, D.19556
	movq	8(%rax), %rax	# MEM[(struct XPV *)_261].xpv_cur, n_a.1418
	movq	%rax, -80(%rbp)	# n_a.1418, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1419
	movq	(%rax), %rax	# PL_Sv.1419_263->sv_any, D.19556
	movq	(%rax), %rax	# MEM[(struct XPV *)_264].xpv_pv, iftmp.1415
	jmp	.L1055	#
.L1054:
	.loc 1 2892 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1420
	leaq	-80(%rbp), %rcx	#, tmp342
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp342,
	movq	%rax, %rdi	# PL_Sv.1420,
	call	Perl_sv_2pv_flags	#
.L1055:
	.loc 1 2892 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.1415, msg
	.loc 1 2893 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# msg, tmp343
	movzbl	(%rax), %eax	# *msg_268, D.19557
	testb	%al, %al	# D.19557
	jne	.L1053	#,
	.loc 1 2894 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1421
	movq	(%rax), %rax	# PL_errgv.1421_270->sv_any, D.19552
	movq	56(%rax), %rax	# _271->xgv_gp, D.19553
	movq	(%rax), %rax	# _272->gp_sv, D.19554
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# D.19554,
	call	Perl_sv_setpv	#
.L1053:
.LBE103:
	.loc 1 2903 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_274
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1422
	movq	(%rax), %rax	# PL_op.1422_275->op_next, D.19539
	jmp	.L1056	#
.L1037:
.LBE98:
	.loc 1 2905 0
	movl	$0, PL_compiling+72(%rip)	#, PL_compiling.cop_line
	.loc 1 2906 0
	cmpq	$0, -112(%rbp)	#, startop
	je	.L1057	#,
	.loc 1 2907 0
	movq	PL_eval_root(%rip), %rdx	# PL_eval_root, PL_eval_root.1423
	movq	-112(%rbp), %rax	# startop, tmp344
	movq	%rdx, (%rax)	# PL_eval_root.1423, *startop_87(D)
	jmp	.L1058	#
.L1057:
	.loc 1 2909 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1424
	movq	%rax, %rdi	# PL_eval_root.1424,
	call	Perl_save_freeop	#
.L1058:
	.loc 1 2914 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1425
	movzwl	32(%rax), %eax	# PL_eval_root.1425_90->op_type, D.19540
	cmpw	$312, %ax	#, D.19540
	jne	.L1059	#,
	.loc 1 2915 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1426
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_eval_root.1426_92].op_first, D.19539
	movzwl	32(%rax), %eax	# _93->op_type, D.19540
	cmpw	$173, %ax	#, D.19540
	jne	.L1059	#,
	.loc 1 2916 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1427
	movq	40(%rax), %rax	# MEM[(struct UNOP *)PL_eval_root.1427_95].op_first, D.19539
	movq	48(%rax), %rax	# MEM[(struct LISTOP *)_96].op_last, D.19539
	movzwl	32(%rax), %eax	# _97->op_type, D.19540
	cmpw	$309, %ax	#, D.19540
	jne	.L1059	#,
	.loc 1 2918 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1428
	movq	%rax, %rdi	# PL_eval_root.1428,
	call	Perl_scalar	#
	jmp	.L1060	#
.L1059:
	.loc 1 2919 0
	movl	-100(%rbp), %eax	# gimme, tmp345
	andl	$128, %eax	#, D.19541
	testl	%eax, %eax	# D.19541
	je	.L1061	#,
	.loc 1 2920 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1429
	movq	%rax, %rdi	# PL_eval_root.1429,
	call	Perl_scalarvoid	#
	jmp	.L1060	#
.L1061:
	.loc 1 2921 0
	movl	-100(%rbp), %eax	# gimme, tmp346
	andl	$1, %eax	#, D.19541
	testl	%eax, %eax	# D.19541
	je	.L1062	#,
	.loc 1 2922 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1430
	movq	%rax, %rdi	# PL_eval_root.1430,
	call	Perl_list	#
	jmp	.L1060	#
.L1062:
	.loc 1 2924 0
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1431
	movq	%rax, %rdi	# PL_eval_root.1431,
	call	Perl_scalar	#
.L1060:
	.loc 1 2929 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1432
	testl	%eax, %eax	# PL_perldb.1432
	je	.L1063	#,
	.loc 1 2929 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1433
	andl	$8, %eax	#, D.19545
	testl	%eax, %eax	# D.19545
	je	.L1063	#,
	movq	-72(%rbp), %rax	# saveop, tmp347
	movzwl	32(%rax), %eax	# saveop_12->op_type, D.19540
	cmpw	$309, %ax	#, D.19540
	jne	.L1063	#,
.LBB104:
	.loc 1 2930 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$.LC63, %edi	#,
	call	Perl_get_cv	#
	movq	%rax, -64(%rbp)	# tmp348, cv
	.loc 1 2931 0
	cmpq	$0, -64(%rbp)	#, cv
	je	.L1063	#,
.LBB105:
	.loc 1 2932 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB106:
	.loc 1 2933 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1434
	addq	$4, %rax	#, PL_markstack_ptr.1435
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1435, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1436
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1437
	cmpq	%rax, %rdx	# PL_markstack_max.1437, PL_markstack_ptr.1436
	jne	.L1064	#,
	.loc 1 2933 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L1064:
	.loc 1 2933 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1438
	movq	%rbx, %rcx	# sp, sp.1439
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1440
	subq	%rdx, %rcx	# PL_stack_base.1441, D.19542
	movq	%rcx, %rdx	# D.19542, D.19542
	sarq	$3, %rdx	#, tmp349
	movl	%edx, (%rax)	# D.19541, *PL_markstack_ptr.1438_116
.LBE106:
.LBB107:
	.loc 1 2934 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1442
	movq	%rax, %rdx	# PL_stack_max.1442, PL_stack_max.1443
	movq	%rbx, %rax	# sp, sp.1444
	subq	%rax, %rdx	# sp.1444, D.19542
	movq	%rdx, %rax	# D.19542, D.19542
	cmpq	$7, %rax	#, D.19542
	jg	.L1065	#,
	.loc 1 2934 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1065:
	.loc 1 2934 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19555
	movq	%rax, (%rbx)	# D.19555, *sp_129
.LBE107:
	.loc 1 2935 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2936 0 discriminator 2
	movq	-64(%rbp), %rax	# cv, tmp350
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	Perl_call_sv	#
.L1063:
.LBE105:
.LBE104:
	.loc 1 2942 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1445
	movq	(%rax), %rax	# PL_compcv.1445_132->sv_any, D.19544
	movq	$1, 112(%rax)	#, _133->xcv_depth
	.loc 1 2943 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1446
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1447
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1449
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1449, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1448_136, D.19541
	cltq
	salq	$3, %rax	#, D.19547
	leaq	(%rcx,%rax), %rbx	#, sp
	.loc 1 2944 0
	movq	-72(%rbp), %rax	# saveop, tmp351
	movq	%rax, PL_op(%rip)	# tmp351, PL_op
	.loc 1 2945 0
	movl	$11, PL_lex_state(%rip)	#, PL_lex_state
	.loc 1 2953 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_eval_start(%rip), %rax	# PL_eval_start, D.19539
.L1056:
	.loc 1 2954 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	S_doeval, .-S_doeval
	.section	.rodata
.LC64:
	.string	".pm"
.LC65:
	.string	"%s%c"
	.text
	.type	S_doopen_pm, @function
S_doopen_pm:
.LFB53:
	.loc 1 2958 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movq	%rdi, -328(%rbp)	# name, name
	movq	%rsi, -336(%rbp)	# mode, mode
	.loc 1 2960 0
	movq	-328(%rbp), %rax	# name, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	movq	%rax, -312(%rbp)	# tmp73, namelen
	.loc 1 2963 0
	cmpq	$3, -312(%rbp)	#, namelen
	jbe	.L1067	#,
	.loc 1 2963 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# namelen, tmp74
	leaq	-3(%rax), %rdx	#, D.19561
	movq	-328(%rbp), %rax	# name, tmp75
	addq	%rdx, %rax	# D.19561, D.19562
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# D.19562,
	call	strcmp	#
	testl	%eax, %eax	# D.19563
	jne	.L1067	#,
.LBB108:
	.loc 1 2964 0 is_stmt 1
	movq	-328(%rbp), %rax	# name, tmp76
	movl	$99, %edx	#,
	movq	%rax, %rsi	# tmp76,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, -304(%rbp)	# tmp77, pmcsv
	.loc 1 2965 0
	movq	-304(%rbp), %rax	# pmcsv, tmp78
	movl	12(%rax), %eax	# pmcsv_9->sv_flags, D.19564
	andl	$262144, %eax	#, D.19564
	testl	%eax, %eax	# D.19564
	je	.L1068	#,
	.loc 1 2965 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# pmcsv, tmp79
	movq	(%rax), %rax	# pmcsv_9->sv_any, D.19565
	movq	(%rax), %rax	# MEM[(struct XPV *)_12].xpv_pv, iftmp.1450
	jmp	.L1069	#
.L1068:
	.loc 1 2965 0 discriminator 2
	movq	-304(%rbp), %rax	# pmcsv, tmp80
	movq	%rax, %rdi	# tmp80,
	call	Perl_sv_2pv_nolen	#
.L1069:
	.loc 1 2965 0 discriminator 3
	movq	%rax, -296(%rbp)	# iftmp.1450, pmc
	.loc 1 2968 0 is_stmt 1 discriminator 3
	leaq	-144(%rbp), %rdx	#, tmp81
	movq	-296(%rbp), %rax	# pmc, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	stat	#
	testl	%eax, %eax	# D.19563
	jns	.L1070	#,
	.loc 1 2969 0
	movq	-336(%rbp), %rdx	# mode, tmp83
	movq	-328(%rbp), %rax	# name, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	PerlIO_open	#
	movq	%rax, -320(%rbp)	# tmp85, fp
	jmp	.L1071	#
.L1070:
	.loc 1 2972 0
	leaq	-288(%rbp), %rdx	#, tmp86
	movq	-328(%rbp), %rax	# name, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	stat	#
	testl	%eax, %eax	# D.19563
	js	.L1072	#,
	.loc 1 2973 0 discriminator 1
	movq	-200(%rbp), %rdx	# pmstat.st_mtim.tv_sec, D.19566
	movq	-56(%rbp), %rax	# pmcstat.st_mtim.tv_sec, D.19566
	.loc 1 2972 0 discriminator 1
	cmpq	%rax, %rdx	# D.19566, D.19566
	jge	.L1073	#,
.L1072:
	.loc 1 2975 0
	movq	-336(%rbp), %rdx	# mode, tmp88
	movq	-296(%rbp), %rax	# pmc, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	PerlIO_open	#
	movq	%rax, -320(%rbp)	# tmp90, fp
	jmp	.L1071	#
.L1073:
	.loc 1 2978 0
	movq	-336(%rbp), %rdx	# mode, tmp91
	movq	-328(%rbp), %rax	# name, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	PerlIO_open	#
	movq	%rax, -320(%rbp)	# tmp93, fp
.L1071:
	.loc 1 2981 0
	movq	-304(%rbp), %rax	# pmcsv, tmp94
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_free	#
.LBE108:
	.loc 1 2963 0
	jmp	.L1074	#
.L1067:
	.loc 1 2984 0
	movq	-336(%rbp), %rdx	# mode, tmp95
	movq	-328(%rbp), %rax	# name, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	PerlIO_open	#
	movq	%rax, -320(%rbp)	# tmp97, fp
.L1074:
	.loc 1 2986 0
	movq	-320(%rbp), %rax	# fp, D.19567
	.loc 1 2990 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	S_doopen_pm, .-S_doopen_pm
	.section	.rodata
	.align 8
.LC66:
	.string	"Perl v%lu.%lu.%lu required--this is only v%d.%d.%d, stopped"
	.align 8
.LC70:
	.string	"Perl v%lu.%lu.%lu required (did you mean v%lu.%03lu?)--this is only v%d.%d.%d, stopped"
.LC71:
	.string	"Null filename used"
.LC72:
	.string	"require"
.LC73:
	.string	"r"
.LC74:
	.string	"/loader/0x%lx/%s"
.LC75:
	.string	"INC"
.LC76:
	.string	"/dev/null"
.LC77:
	.string	"%s/%s"
.LC78:
	.string	" in @INC"
.LC79:
	.string	".h "
.LC80:
	.string	" (change .h to .ph maybe?)"
.LC81:
	.string	".ph "
.LC82:
	.string	" (did you run h2ph?)"
.LC83:
	.string	" (@INC contains:"
.LC84:
	.string	" %s"
.LC85:
	.string	")"
.LC86:
	.string	"Can't locate %s"
.LC87:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"@"
	.string	""
	.string	""
	.text
	.globl	Perl_pp_require
	.type	Perl_pp_require, @function
Perl_pp_require:
.LFB54:
	.loc 1 2993 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 2994 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2999 0
	movq	$0, -312(%rbp)	#, tryname
	.loc 1 3000 0
	movq	$0, -304(%rbp)	#, namesv
	.loc 1 3002 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1452
	movzbl	36(%rax), %eax	# PL_op.1452_85->op_flags, D.19571
	movzbl	%al, %eax	# D.19571, D.19572
	andl	$3, %eax	#, D.19572
	cmpl	$1, %eax	#, D.19572
	je	.L1077	#,
	.loc 1 3002 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1454
	movzbl	36(%rax), %eax	# PL_op.1454_89->op_flags, D.19571
	movzbl	%al, %eax	# D.19571, D.19572
	andl	$3, %eax	#, D.19572
	cmpl	$2, %eax	#, D.19572
	je	.L1078	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1456
	movzbl	36(%rax), %eax	# PL_op.1456_93->op_flags, D.19571
	movzbl	%al, %eax	# D.19571, D.19572
	andl	$3, %eax	#, D.19572
	cmpl	$3, %eax	#, D.19572
	je	.L1079	#,
	call	Perl_block_gimme	#
	jmp	.L1082	#
.L1079:
	.loc 1 3002 0 discriminator 2
	movl	$1, %eax	#, iftmp.1455
	jmp	.L1082	#
.L1078:
	movl	$0, %eax	#, iftmp.1453
	jmp	.L1082	#
.L1077:
	movl	$128, %eax	#, iftmp.1451
.L1082:
	.loc 1 3002 0 discriminator 3
	movl	%eax, -332(%rbp)	# iftmp.1451, gimme
	.loc 1 3003 0 is_stmt 1 discriminator 3
	movq	$0, -296(%rbp)	#, tryrsfp
	.loc 1 3005 0 discriminator 3
	movl	$0, -352(%rbp)	#, filter_has_file
	.loc 1 3006 0 discriminator 3
	movq	$0, -288(%rbp)	#, filter_child_proc
	.loc 1 3007 0 discriminator 3
	movq	$0, -280(%rbp)	#, filter_state
	.loc 1 3008 0 discriminator 3
	movq	$0, -272(%rbp)	#, filter_sub
	.loc 1 3009 0 discriminator 3
	movq	$0, -264(%rbp)	#, hook_sv
	.loc 1 3013 0 discriminator 3
	movq	%rbx, %rax	# sp, sp.1457
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1457_110, tmp513
	movq	%rax, -208(%rbp)	# tmp513, sv
	.loc 1 3014 0 discriminator 3
	movq	-208(%rbp), %rax	# sv, tmp514
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$50331648, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1083	#,
	.loc 1 3014 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1458
	movzwl	32(%rax), %eax	# PL_op.1458_115->op_type, D.19574
	cmpw	$310, %ax	#, D.19574
	je	.L1083	#,
	.loc 1 3015 0 is_stmt 1
	movq	-208(%rbp), %rax	# sv, tmp515
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$262144, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1084	#,
	.loc 1 3015 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# sv, tmp516
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$131072, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1084	#,
	movq	-208(%rbp), %rax	# sv, tmp517
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$131072, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1085	#,
	.loc 1 3015 0 discriminator 2
	movq	-208(%rbp), %rax	# sv, tmp518
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_123].xnv_nv, D.19576
	xorpd	%xmm1, %xmm1	# tmp519
	ucomisd	%xmm1, %xmm0	# tmp519, D.19576
	jp	.L1086	#,
	xorpd	%xmm1, %xmm1	# tmp520
	ucomisd	%xmm1, %xmm0	# tmp520, D.19576
	jne	.L1086	#,
	jmp	.L1084	#
.L1085:
	.loc 1 3015 0 discriminator 3
	movq	-208(%rbp), %rax	# sv, tmp521
	movq	%rax, %rdi	# tmp521,
	call	Perl_sv_2nv	#
	xorpd	%xmm1, %xmm1	# tmp522
	ucomisd	%xmm1, %xmm0	# tmp522, D.19576
	jp	.L1086	#,
	xorpd	%xmm1, %xmm1	# tmp523
	ucomisd	%xmm1, %xmm0	# tmp523, D.19576
	je	.L1084	#,
.L1086:
.LBB109:
	.loc 1 3016 0 is_stmt 1
	movq	$0, -256(%rbp)	#, rev
	movq	$0, -248(%rbp)	#, ver
	movq	$0, -240(%rbp)	#, sver
	.loc 1 3018 0
	movq	-208(%rbp), %rax	# sv, tmp524
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_129].xpv_pv, tmp525
	movq	%rax, -200(%rbp)	# tmp525, s
	.loc 1 3019 0
	movq	-208(%rbp), %rax	# sv, tmp526
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	(%rax), %rdx	# MEM[(struct XPV *)_131].xpv_pv, D.19577
	movq	-208(%rbp), %rax	# sv, tmp527
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	8(%rax), %rax	# MEM[(struct XPV *)_133].xpv_cur, D.19578
	addq	%rdx, %rax	# D.19577, tmp528
	movq	%rax, -192(%rbp)	# tmp528, end
	.loc 1 3020 0
	movq	-200(%rbp), %rax	# s, tmp529
	cmpq	-192(%rbp), %rax	# end, tmp529
	jae	.L1088	#,
	.loc 1 3021 0
	movq	-192(%rbp), %rdx	# end, end.1459
	movq	-200(%rbp), %rax	# s, s.1460
	subq	%rax, %rdx	# s.1460, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	movq	%rax, %rsi	# D.19579, D.19578
	leaq	-320(%rbp), %rdx	#, tmp530
	movq	-200(%rbp), %rax	# s, tmp531
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp531,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -256(%rbp)	# tmp532, rev
	.loc 1 3022 0
	movq	-320(%rbp), %rax	# len, len.1461
	addq	%rax, -200(%rbp)	# len.1461, s
	.loc 1 3023 0
	movq	-200(%rbp), %rax	# s, tmp533
	cmpq	-192(%rbp), %rax	# end, tmp533
	jae	.L1088	#,
	.loc 1 3024 0
	movq	-192(%rbp), %rdx	# end, end.1462
	movq	-200(%rbp), %rax	# s, s.1463
	subq	%rax, %rdx	# s.1463, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	movq	%rax, %rsi	# D.19579, D.19578
	leaq	-320(%rbp), %rdx	#, tmp534
	movq	-200(%rbp), %rax	# s, tmp535
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp535,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -248(%rbp)	# tmp536, ver
	.loc 1 3025 0
	movq	-320(%rbp), %rax	# len, len.1464
	addq	%rax, -200(%rbp)	# len.1464, s
	.loc 1 3026 0
	movq	-200(%rbp), %rax	# s, tmp537
	cmpq	-192(%rbp), %rax	# end, tmp537
	jae	.L1088	#,
	.loc 1 3027 0
	movq	-192(%rbp), %rdx	# end, end.1465
	movq	-200(%rbp), %rax	# s, s.1466
	subq	%rax, %rdx	# s.1466, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	movq	%rax, %rsi	# D.19579, D.19578
	leaq	-320(%rbp), %rdx	#, tmp538
	movq	-200(%rbp), %rax	# s, tmp539
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp539,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -240(%rbp)	# tmp540, sver
.L1088:
	.loc 1 3030 0
	cmpq	$5, -256(%rbp)	#, rev
	ja	.L1089	#,
	.loc 1 3031 0
	cmpq	$5, -256(%rbp)	#, rev
	jne	.L1090	#,
	.loc 1 3032 0
	cmpq	$8, -248(%rbp)	#, ver
	ja	.L1089	#,
	.loc 1 3033 0
	cmpq	$8, -248(%rbp)	#, ver
	jne	.L1090	#,
	.loc 1 3034 0
	cmpq	$7, -240(%rbp)	#, sver
	jbe	.L1090	#,
.L1089:
	.loc 1 3036 0
	movq	-240(%rbp), %rcx	# sver, tmp541
	movq	-248(%rbp), %rdx	# ver, tmp542
	movq	-256(%rbp), %rax	# rev, tmp543
	movl	$7, (%rsp)	#,
	movl	$8, %r9d	#,
	movl	$5, %r8d	#,
	movq	%rax, %rsi	# tmp543,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1204	#
.L1090:
	.loc 1 3040 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_155
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1467
	movq	(%rax), %rax	# PL_op.1467_156->op_next, D.19570
	jmp	.L1204	#
.L1084:
.LBE109:
	.loc 1 3042 0
	movq	-208(%rbp), %rax	# sv, tmp544
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$67108864, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	jne	.L1083	#,
	.loc 1 3045 0
	movq	-208(%rbp), %rax	# sv, tmp545
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$131072, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1093	#,
	.loc 1 3045 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# sv, tmp546
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_163].xnv_nv, D.19576
	ucomisd	.LC67(%rip), %xmm0	#, D.19576
	seta	%al	#, iftmp.1468
	jmp	.L1094	#
.L1093:
	.loc 1 3045 0 discriminator 2
	movq	-208(%rbp), %rax	# sv, tmp547
	movq	%rax, %rdi	# tmp547,
	call	Perl_sv_2nv	#
	ucomisd	.LC67(%rip), %xmm0	#, D.19576
	seta	%al	#, iftmp.1468
.L1094:
	.loc 1 3043 0 is_stmt 1
	testb	%al, %al	# iftmp.1468
	je	.L1095	#,
.LBB110:
	.loc 1 3047 0
	movq	-208(%rbp), %rax	# sv, tmp548
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$131072, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1096	#,
	.loc 1 3047 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# sv, tmp549
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_170].xnv_nv, iftmp.1469
	jmp	.L1097	#
.L1096:
	.loc 1 3047 0 discriminator 2
	movq	-208(%rbp), %rax	# sv, tmp550
	movq	%rax, %rdi	# tmp550,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -360(%rbp)	#, %sfp
	movq	-360(%rbp), %rax	# %sfp, iftmp.1469
.L1097:
	.loc 1 3047 0 discriminator 3
	movq	%rax, -184(%rbp)	# iftmp.1469, nrev
	.loc 1 3048 0 is_stmt 1 discriminator 3
	movsd	-184(%rbp), %xmm0	# nrev, tmp551
	ucomisd	.LC14(%rip), %xmm0	#, tmp551
	jae	.L1098	#,
	movsd	-184(%rbp), %xmm0	# nrev, tmp552
	cvttsd2siq	%xmm0, %rax	# tmp552, tmp553
	movq	%rax, -176(%rbp)	# tmp553, rev
	jmp	.L1099	#
.L1098:
	movsd	-184(%rbp), %xmm0	# nrev, tmp555
	movsd	.LC14(%rip), %xmm1	#, tmp556
	subsd	%xmm1, %xmm0	# tmp556, tmp554
	cvttsd2siq	%xmm0, %rax	# tmp554, tmp557
	movq	%rax, -176(%rbp)	# tmp557, rev
	movabsq	$-9223372036854775808, %rax	#, tmp558
	xorq	%rax, -176(%rbp)	# tmp558, rev
.L1099:
	movq	-176(%rbp), %rax	# rev, tmp559
	movq	%rax, -176(%rbp)	# tmp559, rev
	.loc 1 3049 0 discriminator 3
	movq	-176(%rbp), %rax	# rev, tmp560
	testq	%rax, %rax	# tmp560
	js	.L1100	#,
	cvtsi2sdq	%rax, %xmm0	# tmp560, D.19576
	jmp	.L1101	#
.L1100:
	movq	%rax, %rdx	# tmp560, tmp562
	shrq	%rdx	# tmp562
	andl	$1, %eax	#, tmp563
	orq	%rax, %rdx	# tmp563, tmp562
	cvtsi2sdq	%rdx, %xmm0	# tmp562, tmp561
	addsd	%xmm0, %xmm0	# tmp561, D.19576
.L1101:
	movsd	-184(%rbp), %xmm1	# nrev, tmp564
	subsd	%xmm0, %xmm1	# D.19576, D.19576
	movapd	%xmm1, %xmm0	# D.19576, D.19576
	movsd	.LC68(%rip), %xmm1	#, tmp566
	mulsd	%xmm1, %xmm0	# tmp566, tmp565
	movsd	%xmm0, -168(%rbp)	# tmp565, nver
	.loc 1 3050 0 discriminator 3
	movsd	-168(%rbp), %xmm1	# nver, tmp567
	movsd	.LC69(%rip), %xmm0	#, tmp568
	addsd	%xmm1, %xmm0	# tmp567, D.19576
	ucomisd	.LC14(%rip), %xmm0	#, D.19576
	jae	.L1102	#,
	cvttsd2siq	%xmm0, %rax	# D.19576, tmp569
	movq	%rax, -160(%rbp)	# tmp569, ver
	jmp	.L1103	#
.L1102:
	movsd	.LC14(%rip), %xmm1	#, tmp571
	subsd	%xmm1, %xmm0	# tmp571, tmp570
	cvttsd2siq	%xmm0, %rax	# tmp570, tmp572
	movq	%rax, -160(%rbp)	# tmp572, ver
	movabsq	$-9223372036854775808, %rax	#, tmp573
	xorq	%rax, -160(%rbp)	# tmp573, ver
.L1103:
	movq	-160(%rbp), %rax	# ver, tmp574
	movq	%rax, -160(%rbp)	# tmp574, ver
	.loc 1 3051 0 discriminator 3
	movq	-160(%rbp), %rax	# ver, tmp575
	testq	%rax, %rax	# tmp575
	js	.L1104	#,
	cvtsi2sdq	%rax, %xmm0	# tmp575, D.19576
	jmp	.L1105	#
.L1104:
	movq	%rax, %rdx	# tmp575, tmp577
	shrq	%rdx	# tmp577
	andl	$1, %eax	#, tmp578
	orq	%rax, %rdx	# tmp578, tmp577
	cvtsi2sdq	%rdx, %xmm0	# tmp577, tmp576
	addsd	%xmm0, %xmm0	# tmp576, D.19576
.L1105:
	movsd	-168(%rbp), %xmm1	# nver, tmp579
	subsd	%xmm0, %xmm1	# D.19576, D.19576
	movapd	%xmm1, %xmm0	# D.19576, D.19576
	movsd	.LC68(%rip), %xmm1	#, tmp581
	mulsd	%xmm1, %xmm0	# tmp581, tmp580
	movsd	%xmm0, -152(%rbp)	# tmp580, nsver
	.loc 1 3052 0 discriminator 3
	movsd	-152(%rbp), %xmm1	# nsver, tmp582
	movsd	.LC69(%rip), %xmm0	#, tmp583
	addsd	%xmm1, %xmm0	# tmp582, D.19576
	ucomisd	.LC14(%rip), %xmm0	#, D.19576
	jae	.L1106	#,
	cvttsd2siq	%xmm0, %rax	# D.19576, tmp584
	movq	%rax, -144(%rbp)	# tmp584, sver
	jmp	.L1107	#
.L1106:
	movsd	.LC14(%rip), %xmm1	#, tmp586
	subsd	%xmm1, %xmm0	# tmp586, tmp585
	cvttsd2siq	%xmm0, %rax	# tmp585, tmp587
	movq	%rax, -144(%rbp)	# tmp587, sver
	movabsq	$-9223372036854775808, %rax	#, tmp588
	xorq	%rax, -144(%rbp)	# tmp588, sver
.L1107:
	movq	-144(%rbp), %rax	# sver, tmp589
	movq	%rax, -144(%rbp)	# tmp589, sver
	.loc 1 3055 0 discriminator 3
	cmpq	$0, -144(%rbp)	#, sver
	jne	.L1108	#,
	.loc 1 3055 0 is_stmt 0 discriminator 1
	cmpq	$5, -176(%rbp)	#, rev
	ja	.L1109	#,
	cmpq	$5, -176(%rbp)	#, rev
	jne	.L1108	#,
	cmpq	$99, -160(%rbp)	#, ver
	jbe	.L1108	#,
.L1109:
	.loc 1 3056 0 is_stmt 1
	movq	-160(%rbp), %rax	# ver, tmp590
	shrq	$2, %rax	#, tmp591
	movabsq	$2951479051793528259, %rdx	#, tmp593
	mulq	%rdx	# tmp593
	movq	%rdx, %rdi	# tmp592, D.19578
	shrq	$2, %rdi	#, D.19578
	movq	-176(%rbp), %rsi	# rev, tmp594
	movq	-144(%rbp), %rcx	# sver, tmp595
	movq	-160(%rbp), %rdx	# ver, tmp596
	movq	-176(%rbp), %rax	# rev, tmp597
	movl	$7, 16(%rsp)	#,
	movl	$8, 8(%rsp)	#,
	movl	$5, (%rsp)	#,
	movq	%rdi, %r9	# D.19578,
	movq	%rsi, %r8	# tmp594,
	movq	%rax, %rsi	# tmp597,
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1204	#
.L1108:
	.loc 1 3063 0
	movq	-144(%rbp), %rcx	# sver, tmp598
	movq	-160(%rbp), %rdx	# ver, tmp599
	movq	-176(%rbp), %rax	# rev, tmp600
	movl	$7, (%rsp)	#,
	movl	$8, %r9d	#,
	movl	$5, %r8d	#,
	movq	%rax, %rsi	# tmp600,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1204	#
.L1095:
.LBE110:
	.loc 1 3069 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_188
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1470
	movq	(%rax), %rax	# PL_op.1470_189->op_next, D.19570
	jmp	.L1204	#
.L1083:
	.loc 1 3072 0
	movq	-208(%rbp), %rax	# sv, tmp601
	movl	12(%rax), %eax	# sv_112->sv_flags, D.19573
	andl	$262144, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1110	#,
	.loc 1 3072 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# sv, tmp602
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	8(%rax), %rax	# MEM[(struct XPV *)_193].xpv_cur, len.1472
	movq	%rax, -328(%rbp)	# len.1472, len
	movq	-208(%rbp), %rax	# sv, tmp603
	movq	(%rax), %rax	# sv_112->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_195].xpv_pv, iftmp.1471
	jmp	.L1111	#
.L1110:
	.loc 1 3072 0 discriminator 2
	leaq	-328(%rbp), %rcx	#, tmp604
	movq	-208(%rbp), %rax	# sv, tmp605
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp604,
	movq	%rax, %rdi	# tmp605,
	call	Perl_sv_2pv_flags	#
.L1111:
	.loc 1 3072 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.1471, name
	.loc 1 3073 0 is_stmt 1 discriminator 3
	cmpq	$0, -136(%rbp)	#, name
	je	.L1112	#,
	.loc 1 3073 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# len, len.1473
	testq	%rax, %rax	# len.1473
	je	.L1112	#,
	movq	-136(%rbp), %rax	# name, tmp606
	movzbl	(%rax), %eax	# *name_198, D.19580
	testb	%al, %al	# D.19580
	jne	.L1113	#,
.L1112:
	.loc 1 3074 0 is_stmt 1
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1204	#
.L1113:
	.loc 1 3075 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1474
	testb	%al, %al	# PL_tainting.1474
	je	.L1114	#,
	.loc 1 3075 0 is_stmt 0 discriminator 1
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1114:
	.loc 1 3076 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1475
	movzwl	32(%rax), %eax	# PL_op.1475_202->op_type, D.19574
	cmpw	$309, %ax	#, D.19574
	jne	.L1115	#,
	.loc 1 3077 0
	movq	-328(%rbp), %rax	# len, len.1476
	movl	%eax, %r12d	# len.1476, D.19572
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1478
	movq	(%rax), %rax	# PL_incgv.1478_206->sv_any, D.19581
	movq	56(%rax), %rax	# _207->xgv_gp, D.19582
	movq	40(%rax), %rax	# _208->gp_hv, D.19583
	testq	%rax, %rax	# D.19583
	je	.L1116	#,
	.loc 1 3077 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1479
	movq	(%rax), %rax	# PL_incgv.1479_210->sv_any, D.19581
	movq	56(%rax), %rax	# _211->xgv_gp, D.19582
	movq	40(%rax), %rax	# _212->gp_hv, iftmp.1477
	jmp	.L1117	#
.L1116:
	.loc 1 3077 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1480
	movq	%rax, %rdi	# PL_incgv.1480,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _215->sv_any, D.19581
	movq	56(%rax), %rax	# _216->xgv_gp, D.19582
	movq	40(%rax), %rax	# _217->gp_hv, iftmp.1477
.L1117:
	.loc 1 3076 0 is_stmt 1
	movq	-136(%rbp), %rsi	# name, tmp607
	movl	$0, %ecx	#,
	movl	%r12d, %edx	# D.19572,
	movq	%rax, %rdi	# iftmp.1477,
	call	Perl_hv_fetch	#
	movq	%rax, -128(%rbp)	# tmp608, svp
	cmpq	$0, -128(%rbp)	#, svp
	je	.L1115	#,
	.loc 1 3078 0
	movq	-128(%rbp), %rax	# svp, tmp609
	movq	(%rax), %rax	# *svp_219, D.19585
	.loc 1 3077 0
	cmpq	$PL_sv_undef, %rax	#, D.19585
	je	.L1115	#,
	.loc 1 3079 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_221
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1481
	movq	(%rax), %rax	# PL_op.1481_222->op_next, D.19570
	jmp	.L1204	#
.L1115:
	.loc 1 3083 0
	movq	-136(%rbp), %rax	# name, tmp610
	movq	%rax, %rdi	# tmp610,
	call	S_path_is_absolute	#
	testb	%al, %al	# D.19580
	je	.L1118	#,
	.loc 1 3084 0
	movq	-136(%rbp), %rax	# name, tmp611
	movq	%rax, -312(%rbp)	# tmp611, tryname
	.loc 1 3085 0
	movq	-136(%rbp), %rax	# name, tmp612
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp612,
	call	S_doopen_pm	#
	movq	%rax, -296(%rbp)	# tmp613, tryrsfp
.L1118:
	.loc 1 3098 0
	cmpq	$0, -296(%rbp)	#, tryrsfp
	jne	.L1119	#,
.LBB111:
	.loc 1 3099 0
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1483
	movq	(%rax), %rax	# PL_incgv.1483_227->sv_any, D.19581
	movq	56(%rax), %rax	# _228->xgv_gp, D.19582
	movq	32(%rax), %rax	# _229->gp_av, D.19586
	testq	%rax, %rax	# D.19586
	je	.L1120	#,
	.loc 1 3099 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1484
	movq	(%rax), %rax	# PL_incgv.1484_231->sv_any, D.19581
	movq	56(%rax), %rax	# _232->xgv_gp, D.19582
	movq	32(%rax), %rax	# _233->gp_av, iftmp.1482
	jmp	.L1121	#
.L1120:
	.loc 1 3099 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1485
	movq	%rax, %rdi	# PL_incgv.1485,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _236->sv_any, D.19581
	movq	56(%rax), %rax	# _237->xgv_gp, D.19582
	movq	32(%rax), %rax	# _238->gp_av, iftmp.1482
.L1121:
	.loc 1 3099 0 discriminator 3
	movq	%rax, -120(%rbp)	# iftmp.1482, ar
	.loc 1 3106 0 is_stmt 1 discriminator 3
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -304(%rbp)	# tmp614, namesv
	.loc 1 3107 0 discriminator 3
	movl	$0, -348(%rbp)	#, i
	jmp	.L1122	#
.L1156:
.LBB112:
	.loc 1 3108 0
	movl	-348(%rbp), %ecx	# i, tmp615
	movq	-120(%rbp), %rax	# ar, tmp616
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp615,
	movq	%rax, %rdi	# tmp616,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_250, tmp617
	movq	%rax, -112(%rbp)	# tmp617, dirsv
	.loc 1 3110 0
	movq	-112(%rbp), %rax	# dirsv, tmp618
	movl	12(%rax), %eax	# dirsv_251->sv_flags, D.19573
	andl	$524288, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1123	#,
.LBB113:
	.loc 1 3112 0
	movq	-112(%rbp), %rax	# dirsv, tmp619
	movq	%rax, -232(%rbp)	# tmp619, loader
	.loc 1 3114 0
	movq	-232(%rbp), %rax	# loader, tmp620
	movq	(%rax), %rax	# loader_254->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_255].xrv_rv, D.19585
	movl	12(%rax), %eax	# _256->sv_flags, D.19573
	movzbl	%al, %eax	# D.19573, D.19573
	cmpl	$10, %eax	#, D.19573
	jne	.L1124	#,
	.loc 1 3115 0
	movq	-232(%rbp), %rax	# loader, tmp621
	movq	%rax, %rdi	# tmp621,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.19572
	jne	.L1124	#,
	.loc 1 3117 0
	movq	-232(%rbp), %rax	# loader, tmp622
	movq	(%rax), %rax	# loader_254->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_260].xrv_rv, D.19585
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19585,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_262, tmp623
	movq	%rax, -232(%rbp)	# tmp623, loader
.L1124:
	.loc 1 3121 0
	movq	-112(%rbp), %rax	# dirsv, tmp624
	movq	(%rax), %rax	# dirsv_251->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_264].xrv_rv, D.19585
	.loc 1 3120 0
	movq	%rax, %rdx	# D.19585, D.19578
	movq	-136(%rbp), %rcx	# name, tmp625
	movq	-304(%rbp), %rax	# namesv, tmp626
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp626,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 3122 0
	movq	-304(%rbp), %rax	# namesv, tmp627
	movq	(%rax), %rax	# namesv_241->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_267].xpv_pv, tmp628
	movq	%rax, -312(%rbp)	# tmp628, tryname
	.loc 1 3123 0
	movq	$0, -296(%rbp)	#, tryrsfp
	.loc 1 3125 0
	call	Perl_push_scope	#
	.loc 1 3126 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1486
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1486, PL_tmps_floor
	.loc 1 3127 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1487
	movq	%rax, %rdx	# PL_stack_max.1487, PL_stack_max.1488
	movq	%rbx, %rax	# sp, sp.1489
	subq	%rax, %rdx	# sp.1489, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	cmpq	$15, %rax	#, D.19579
	jg	.L1125	#,
	.loc 1 3127 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1125:
.LBB114:
	.loc 1 3129 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1490
	addq	$4, %rax	#, PL_markstack_ptr.1491
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1491, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1492
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1493
	cmpq	%rax, %rdx	# PL_markstack_max.1493, PL_markstack_ptr.1492
	jne	.L1126	#,
	.loc 1 3129 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L1126:
	.loc 1 3129 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1494
	movq	%rbx, %rcx	# sp, sp.1495
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1496
	subq	%rdx, %rcx	# PL_stack_base.1497, D.19579
	movq	%rcx, %rdx	# D.19579, D.19579
	sarq	$3, %rdx	#, tmp629
	movl	%edx, (%rax)	# D.19572, *PL_markstack_ptr.1494_280
.LBE114:
	.loc 1 3130 0 is_stmt 1 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-112(%rbp), %rax	# dirsv, tmp630
	movq	%rax, (%rbx)	# tmp630, *sp_288
	.loc 1 3131 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-208(%rbp), %rax	# sv, tmp631
	movq	%rax, (%rbx)	# tmp631, *sp_289
	.loc 1 3132 0 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3133 0 discriminator 2
	movq	-232(%rbp), %rax	# loader, tmp632
	movq	%rax, %rdi	# tmp632,
	call	Perl_sv_isobject	#
	testl	%eax, %eax	# D.19572
	je	.L1127	#,
	.loc 1 3134 0
	movl	$1, %esi	#,
	movl	$.LC75, %edi	#,
	call	Perl_call_method	#
	movl	%eax, -344(%rbp)	# tmp633, count
	jmp	.L1128	#
.L1127:
	.loc 1 3136 0
	movq	-232(%rbp), %rax	# loader, tmp634
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp634,
	call	Perl_call_sv	#
	movl	%eax, -344(%rbp)	# tmp635, count
.L1128:
	.loc 1 3137 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3139 0
	cmpl	$0, -344(%rbp)	#, count
	jle	.L1129	#,
.LBB115:
	.loc 1 3140 0
	movl	$0, -340(%rbp)	#, i
	.loc 1 3143 0
	movl	-344(%rbp), %eax	# count, tmp636
	movslq	%eax, %rdx	# tmp636, D.19590
	movl	$0, %eax	#, tmp637
	subq	%rdx, %rax	# D.19590, tmp637
	salq	$3, %rax	#, tmp638
	addq	$8, %rax	#, D.19590
	addq	%rax, %rbx	# D.19590, sp
	.loc 1 3144 0
	movl	-340(%rbp), %eax	# i, i.1498
	leal	1(%rax), %edx	#, tmp639
	movl	%edx, -340(%rbp)	# tmp639, i
	cltq
	salq	$3, %rax	#, D.19578
	addq	%rbx, %rax	# sp, D.19588
	movq	(%rax), %rax	# *_303, tmp640
	movq	%rax, -224(%rbp)	# tmp640, arg
	.loc 1 3146 0
	movq	-224(%rbp), %rax	# arg, tmp641
	movl	12(%rax), %eax	# arg_304->sv_flags, D.19573
	andl	$524288, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1130	#,
	.loc 1 3146 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# arg, tmp642
	movq	(%rax), %rax	# arg_304->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_307].xrv_rv, D.19585
	movl	12(%rax), %eax	# _308->sv_flags, D.19573
	movzbl	%al, %eax	# D.19573, D.19573
	cmpl	$13, %eax	#, D.19573
	jne	.L1130	#,
	.loc 1 3147 0 is_stmt 1
	movq	-224(%rbp), %rax	# arg, tmp643
	movq	(%rax), %rax	# arg_304->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_311].xrv_rv, tmp644
	movq	%rax, -224(%rbp)	# tmp644, arg
.L1130:
	.loc 1 3150 0
	movq	-224(%rbp), %rax	# arg, tmp645
	movl	12(%rax), %eax	# arg_53->sv_flags, D.19573
	movzbl	%al, %eax	# D.19573, D.19573
	cmpl	$13, %eax	#, D.19573
	jne	.L1131	#,
.LBB116:
	.loc 1 3151 0
	cmpq	$0, -224(%rbp)	#, arg
	je	.L1132	#,
	.loc 1 3151 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# arg, tmp646
	movl	12(%rax), %eax	# arg_53->sv_flags, D.19573
	movzbl	%al, %eax	# D.19573, D.19573
	cmpl	$13, %eax	#, D.19573
	jne	.L1132	#,
	movq	-224(%rbp), %rax	# arg, tmp647
	movq	(%rax), %rax	# MEM[(struct GV *)arg_53].sv_any, D.19581
	movq	56(%rax), %rax	# _317->xgv_gp, D.19582
	testq	%rax, %rax	# D.19582
	je	.L1132	#,
	movq	-224(%rbp), %rax	# arg, tmp648
	movq	(%rax), %rax	# MEM[(struct GV *)arg_53].sv_any, D.19581
	movq	56(%rax), %rax	# _319->xgv_gp, D.19582
	movq	16(%rax), %rax	# _320->gp_io, iftmp.1499
	jmp	.L1133	#
.L1132:
	.loc 1 3151 0 discriminator 2
	movl	$0, %eax	#, iftmp.1499
.L1133:
	.loc 1 3151 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.1499, io
	.loc 1 3153 0 is_stmt 1 discriminator 3
	addl	$1, -352(%rbp)	#, filter_has_file
	.loc 1 3155 0 discriminator 3
	cmpq	$0, -104(%rbp)	#, io
	je	.L1134	#,
	.loc 1 3156 0
	movq	-104(%rbp), %rax	# io, tmp649
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	56(%rax), %rax	# _325->xio_ifp, tmp650
	movq	%rax, -296(%rbp)	# tmp650, tryrsfp
	.loc 1 3157 0
	movq	-104(%rbp), %rax	# io, tmp651
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movzbl	162(%rax), %eax	# _327->xio_type, D.19580
	cmpb	$124, %al	#, D.19580
	jne	.L1135	#,
	.loc 1 3164 0
	movq	-224(%rbp), %rax	# arg, tmp652
	movq	%rax, -288(%rbp)	# tmp652, filter_child_proc
	.loc 1 3165 0
	movq	-288(%rbp), %rax	# filter_child_proc, tmp653
	movq	%rax, PL_Sv(%rip)	# tmp653, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1501
	testq	%rax, %rax	# PL_Sv.1501
	je	.L1134	#,
	.loc 1 3165 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1502
	movl	8(%rax), %edx	# PL_Sv.1502_331->sv_refcnt, D.19573
	addl	$1, %edx	#, D.19573
	movl	%edx, 8(%rax)	# D.19573, PL_Sv.1502_331->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1502_331->sv_refcnt, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1134	#,
	.loc 1 3165 0 discriminator 3
	jmp	.L1134	#
.L1135:
	.loc 1 3168 0 is_stmt 1
	movq	-104(%rbp), %rax	# io, tmp654
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	64(%rax), %rax	# _337->xio_ofp, D.19592
	testq	%rax, %rax	# D.19592
	je	.L1138	#,
	.loc 1 3168 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# io, tmp655
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	64(%rax), %rdx	# _339->xio_ofp, D.19592
	movq	-104(%rbp), %rax	# io, tmp656
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	56(%rax), %rax	# _341->xio_ifp, D.19592
	cmpq	%rax, %rdx	# D.19592, D.19592
	je	.L1138	#,
	.loc 1 3169 0 is_stmt 1
	movq	-104(%rbp), %rax	# io, tmp657
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	64(%rax), %rax	# _343->xio_ofp, D.19592
	movq	%rax, %rdi	# D.19592,
	call	Perl_PerlIO_close	#
.L1138:
	.loc 1 3171 0
	movq	-104(%rbp), %rax	# io, tmp658
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	$0, 56(%rax)	#, _345->xio_ifp
	.loc 1 3172 0
	movq	-104(%rbp), %rax	# io, tmp659
	movq	(%rax), %rax	# io_323->sv_any, D.19591
	movq	$0, 64(%rax)	#, _346->xio_ofp
.L1134:
	.loc 1 3176 0
	movl	-340(%rbp), %eax	# i, tmp660
	cmpl	-344(%rbp), %eax	# count, tmp660
	jge	.L1131	#,
	.loc 1 3177 0
	movl	-340(%rbp), %eax	# i, i.1503
	leal	1(%rax), %edx	#, tmp661
	movl	%edx, -340(%rbp)	# tmp661, i
	cltq
	salq	$3, %rax	#, D.19578
	addq	%rbx, %rax	# sp, D.19588
	movq	(%rax), %rax	# *_351, tmp662
	movq	%rax, -224(%rbp)	# tmp662, arg
.L1131:
.LBE116:
	.loc 1 3181 0
	movq	-224(%rbp), %rax	# arg, tmp663
	movl	12(%rax), %eax	# arg_54->sv_flags, D.19573
	andl	$524288, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1139	#,
	.loc 1 3181 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# arg, tmp664
	movq	(%rax), %rax	# arg_54->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XRV *)_355].xrv_rv, D.19585
	movl	12(%rax), %eax	# _356->sv_flags, D.19573
	movzbl	%al, %eax	# D.19573, D.19573
	cmpl	$12, %eax	#, D.19573
	jne	.L1139	#,
	.loc 1 3182 0 is_stmt 1
	movq	-224(%rbp), %rax	# arg, tmp665
	movq	%rax, -272(%rbp)	# tmp665, filter_sub
	.loc 1 3183 0
	movq	-272(%rbp), %rax	# filter_sub, tmp666
	movq	%rax, PL_Sv(%rip)	# tmp666, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1505
	testq	%rax, %rax	# PL_Sv.1505
	je	.L1141	#,
	.loc 1 3183 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1506
	movl	8(%rax), %edx	# PL_Sv.1506_361->sv_refcnt, D.19573
	addl	$1, %edx	#, D.19573
	movl	%edx, 8(%rax)	# D.19573, PL_Sv.1506_361->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1506_361->sv_refcnt, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1141	#,
	.loc 1 3183 0
	nop
.L1141:
	.loc 1 3185 0 is_stmt 1
	movl	-340(%rbp), %eax	# i, tmp667
	cmpl	-344(%rbp), %eax	# count, tmp667
	jge	.L1142	#,
	.loc 1 3186 0
	movl	-340(%rbp), %eax	# i, tmp668
	cltq
	salq	$3, %rax	#, D.19578
	addq	%rbx, %rax	# sp, D.19588
	movq	(%rax), %rax	# *_369, tmp669
	movq	%rax, -280(%rbp)	# tmp669, filter_state
	.loc 1 3187 0
	movq	-280(%rbp), %rax	# filter_state, tmp670
	movq	%rax, PL_Sv(%rip)	# tmp670, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1508
	testq	%rax, %rax	# PL_Sv.1508
	je	.L1142	#,
	.loc 1 3187 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1509
	movl	8(%rax), %edx	# PL_Sv.1509_372->sv_refcnt, D.19573
	addl	$1, %edx	#, D.19573
	movl	%edx, 8(%rax)	# D.19573, PL_Sv.1509_372->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1509_372->sv_refcnt, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1142	#,
	.loc 1 3187 0
	nop
.L1142:
	.loc 1 3190 0 is_stmt 1
	cmpq	$0, -296(%rbp)	#, tryrsfp
	jne	.L1139	#,
	.loc 1 3191 0
	movl	$.LC73, %esi	#,
	movl	$.LC76, %edi	#,
	call	PerlIO_open	#
	movq	%rax, -296(%rbp)	# tmp671, tryrsfp
.L1139:
	.loc 1 3195 0
	subq	$8, %rbx	#, sp
.L1129:
.LBE115:
	.loc 1 3198 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3199 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1510
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1511
	cmpl	%eax, %edx	# PL_tmps_floor.1511, PL_tmps_ix.1510
	jle	.L1144	#,
	.loc 1 3199 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L1144:
	.loc 1 3200 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 3202 0
	cmpq	$0, -296(%rbp)	#, tryrsfp
	je	.L1145	#,
	.loc 1 3203 0
	movq	-112(%rbp), %rax	# dirsv, tmp672
	movq	%rax, -264(%rbp)	# tmp672, hook_sv
	.loc 1 3204 0
	jmp	.L1119	#
.L1145:
	.loc 1 3207 0
	movl	$0, -352(%rbp)	#, filter_has_file
	.loc 1 3208 0
	cmpq	$0, -288(%rbp)	#, filter_child_proc
	je	.L1146	#,
	.loc 1 3209 0
	movq	-288(%rbp), %rax	# filter_child_proc, tmp673
	movq	%rax, %rdi	# tmp673,
	call	Perl_sv_free	#
	.loc 1 3210 0
	movq	$0, -288(%rbp)	#, filter_child_proc
.L1146:
	.loc 1 3212 0
	cmpq	$0, -280(%rbp)	#, filter_state
	je	.L1147	#,
	.loc 1 3213 0
	movq	-280(%rbp), %rax	# filter_state, tmp674
	movq	%rax, %rdi	# tmp674,
	call	Perl_sv_free	#
	.loc 1 3214 0
	movq	$0, -280(%rbp)	#, filter_state
.L1147:
	.loc 1 3216 0
	cmpq	$0, -272(%rbp)	#, filter_sub
	je	.L1148	#,
	.loc 1 3217 0
	movq	-272(%rbp), %rax	# filter_sub, tmp675
	movq	%rax, %rdi	# tmp675,
	call	Perl_sv_free	#
	.loc 1 3218 0
	movq	$0, -272(%rbp)	#, filter_sub
.LBE113:
	jmp	.L1149	#
.L1148:
	jmp	.L1149	#
.L1123:
	.loc 1 3222 0
	movq	-136(%rbp), %rax	# name, tmp676
	movq	%rax, %rdi	# tmp676,
	call	S_path_is_absolute	#
	testb	%al, %al	# D.19580
	jne	.L1149	#,
.LBB117:
	.loc 1 3230 0
	movq	-112(%rbp), %rax	# dirsv, tmp677
	movq	%rax, PL_Sv(%rip)	# tmp677, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1513
	movl	12(%rax), %eax	# PL_Sv.1513_388->sv_flags, D.19573
	andl	$262144, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1150	#,
	.loc 1 3230 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1514
	movq	(%rax), %rax	# PL_Sv.1514_391->sv_any, D.19575
	movq	8(%rax), %rax	# MEM[(struct XPV *)_392].xpv_cur, n_a.1515
	movq	%rax, -320(%rbp)	# n_a.1515, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1516
	movq	(%rax), %rax	# PL_Sv.1516_394->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_395].xpv_pv, iftmp.1512
	jmp	.L1151	#
.L1150:
	.loc 1 3230 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1517
	leaq	-320(%rbp), %rcx	#, tmp678
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp678,
	movq	%rax, %rdi	# PL_Sv.1517,
	call	Perl_sv_2pv_flags	#
.L1151:
	.loc 1 3230 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.1512, dir
	.loc 1 3245 0 is_stmt 1 discriminator 3
	movq	-136(%rbp), %rcx	# name, tmp679
	movq	-96(%rbp), %rdx	# dir, tmp680
	movq	-304(%rbp), %rax	# namesv, tmp681
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp681,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 3248 0 discriminator 3
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1518
	testb	%al, %al	# PL_tainting.1518
	je	.L1152	#,
	.loc 1 3248 0 is_stmt 0 discriminator 1
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1152:
	.loc 1 3249 0 is_stmt 1
	movq	-304(%rbp), %rax	# namesv, tmp682
	movq	(%rax), %rax	# namesv_241->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_401].xpv_pv, tmp683
	movq	%rax, -312(%rbp)	# tmp683, tryname
	.loc 1 3250 0
	movq	-312(%rbp), %rax	# tryname, tmp684
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp684,
	call	S_doopen_pm	#
	movq	%rax, -296(%rbp)	# tmp685, tryrsfp
	.loc 1 3251 0
	cmpq	$0, -296(%rbp)	#, tryrsfp
	je	.L1149	#,
	.loc 1 3252 0
	movq	-312(%rbp), %rax	# tryname, tmp686
	movzbl	(%rax), %eax	# *tryname_402, D.19580
	cmpb	$46, %al	#, D.19580
	jne	.L1153	#,
	.loc 1 3252 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# tryname, tmp687
	addq	$1, %rax	#, D.19577
	movzbl	(%rax), %eax	# *_405, D.19580
	cmpb	$47, %al	#, D.19580
	jne	.L1153	#,
	.loc 1 3253 0 is_stmt 1
	addq	$2, -312(%rbp)	#, tryname
	.loc 1 3254 0
	jmp	.L1119	#
.L1153:
	jmp	.L1119	#
.L1149:
.LBE117:
.LBE112:
	.loc 1 3107 0
	addl	$1, -348(%rbp)	#, i
.L1122:
	.loc 1 3107 0 is_stmt 0 discriminator 1
	movl	-348(%rbp), %eax	# i, tmp688
	movslq	%eax, %r12	# tmp688, D.19579
	movq	-120(%rbp), %rax	# ar, tmp689
	movl	12(%rax), %eax	# MEM[(struct SV *)ar_240].sv_flags, D.19573
	andl	$32768, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1154	#,
	movq	-120(%rbp), %rax	# ar, tmp690
	movq	%rax, %rdi	# tmp690,
	call	Perl_mg_size	#
	cltq
	jmp	.L1155	#
.L1154:
	.loc 1 3107 0 discriminator 2
	movq	-120(%rbp), %rax	# ar, tmp691
	movq	(%rax), %rax	# ar_240->sv_any, D.19587
	movq	8(%rax), %rax	# _248->xav_fill, iftmp.1519
.L1155:
	.loc 1 3107 0 discriminator 3
	cmpq	%rax, %r12	# iftmp.1519, D.19579
	jle	.L1156	#,
.L1119:
.LBE111:
	.loc 1 3261 0 is_stmt 1
	movl	$PL_compiling+56, %edi	#,
	call	Perl_save_generic_svref	#
	.loc 1 3262 0
	cmpq	$0, -296(%rbp)	#, tryrsfp
	je	.L1157	#,
	.loc 1 3262 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# tryname, iftmp.1520
	jmp	.L1158	#
.L1157:
	.loc 1 3262 0 discriminator 2
	movq	-136(%rbp), %rax	# name, iftmp.1520
.L1158:
	.loc 1 3262 0 discriminator 3
	movq	%rax, %rdi	# iftmp.1520,
	call	Perl_gv_fetchfile	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1521, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1523
	testq	%rax, %rax	# PL_Sv.1523
	je	.L1160	#,
	.loc 1 3262 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1524
	movl	8(%rax), %edx	# PL_Sv.1524_413->sv_refcnt, D.19573
	addl	$1, %edx	#, D.19573
	movl	%edx, 8(%rax)	# D.19573, PL_Sv.1524_413->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1524_413->sv_refcnt, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1160	#,
	.loc 1 3262 0
	nop
.L1160:
	.loc 1 3262 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1525
	movq	%rax, PL_compiling+56(%rip)	# PL_Sv.1525, PL_compiling.cop_filegv
	.loc 1 3263 0 is_stmt 1 discriminator 4
	movq	-304(%rbp), %rax	# namesv, tmp692
	movq	%rax, %rdi	# tmp692,
	call	Perl_sv_free	#
	.loc 1 3264 0 discriminator 4
	cmpq	$0, -296(%rbp)	#, tryrsfp
	jne	.L1161	#,
	.loc 1 3265 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1526
	movzwl	32(%rax), %eax	# PL_op.1526_420->op_type, D.19574
	cmpw	$309, %ax	#, D.19574
	jne	.L1162	#,
.LBB118:
	.loc 1 3266 0
	movq	-136(%rbp), %rax	# name, tmp693
	movq	%rax, -216(%rbp)	# tmp693, msgstr
	.loc 1 3267 0
	cmpq	$0, -304(%rbp)	#, namesv
	je	.L1163	#,
.LBB119:
	.loc 1 3268 0
	movq	-216(%rbp), %rax	# msgstr, tmp694
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp694,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.19585,
	call	Perl_sv_2mortal	#
	movq	%rax, -88(%rbp)	# tmp695, msg
	.loc 1 3269 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -80(%rbp)	# tmp696, dirmsgsv
	.loc 1 3270 0
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1528
	movq	(%rax), %rax	# PL_incgv.1528_426->sv_any, D.19581
	movq	56(%rax), %rax	# _427->xgv_gp, D.19582
	movq	32(%rax), %rax	# _428->gp_av, D.19586
	testq	%rax, %rax	# D.19586
	je	.L1164	#,
	.loc 1 3270 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1529
	movq	(%rax), %rax	# PL_incgv.1529_430->sv_any, D.19581
	movq	56(%rax), %rax	# _431->xgv_gp, D.19582
	movq	32(%rax), %rax	# _432->gp_av, iftmp.1527
	jmp	.L1165	#
.L1164:
	.loc 1 3270 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1530
	movq	%rax, %rdi	# PL_incgv.1530,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _435->sv_any, D.19581
	movq	56(%rax), %rax	# _436->xgv_gp, D.19582
	movq	32(%rax), %rax	# _437->gp_av, iftmp.1527
.L1165:
	.loc 1 3270 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.1527, ar
	.loc 1 3272 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# msg, tmp697
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp697,
	call	Perl_sv_catpvn_flags	#
	.loc 1 3273 0 discriminator 3
	movq	-88(%rbp), %rax	# msg, tmp698
	movq	(%rax), %rax	# msg_424->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_440].xpv_pv, D.19577
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# D.19577,
	call	Perl_instr	#
	testq	%rax, %rax	# D.19577
	je	.L1166	#,
	.loc 1 3274 0
	movq	-88(%rbp), %rax	# msg, tmp699
	movl	$.LC80, %esi	#,
	movq	%rax, %rdi	# tmp699,
	call	Perl_sv_catpv	#
.L1166:
	.loc 1 3275 0
	movq	-88(%rbp), %rax	# msg, tmp700
	movq	(%rax), %rax	# msg_424->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_443].xpv_pv, D.19577
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# D.19577,
	call	Perl_instr	#
	testq	%rax, %rax	# D.19577
	je	.L1167	#,
	.loc 1 3276 0
	movq	-88(%rbp), %rax	# msg, tmp701
	movl	$.LC82, %esi	#,
	movq	%rax, %rdi	# tmp701,
	call	Perl_sv_catpv	#
.L1167:
	.loc 1 3277 0
	movq	-88(%rbp), %rax	# msg, tmp702
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp702,
	call	Perl_sv_catpv	#
	.loc 1 3278 0
	movl	$0, -336(%rbp)	#, i
	jmp	.L1168	#
.L1173:
.LBB120:
	.loc 1 3279 0
	movl	-336(%rbp), %ecx	# i, tmp703
	movq	-72(%rbp), %rax	# ar, tmp704
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp703,
	movq	%rax, %rdi	# tmp704,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_454, PL_Sv.1531
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1531, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1533
	movl	12(%rax), %eax	# PL_Sv.1533_456->sv_flags, D.19573
	andl	$262144, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1169	#,
	.loc 1 3279 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1534
	movq	(%rax), %rax	# PL_Sv.1534_459->sv_any, D.19575
	movq	8(%rax), %rax	# MEM[(struct XPV *)_460].xpv_cur, n_a.1535
	movq	%rax, -320(%rbp)	# n_a.1535, n_a
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1536
	movq	(%rax), %rax	# PL_Sv.1536_462->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_463].xpv_pv, iftmp.1532
	jmp	.L1170	#
.L1169:
	.loc 1 3279 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1537
	leaq	-320(%rbp), %rcx	#, tmp705
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp705,
	movq	%rax, %rdi	# PL_Sv.1537,
	call	Perl_sv_2pv_flags	#
.L1170:
	.loc 1 3279 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.1532, dir
	.loc 1 3280 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rdx	# dir, tmp706
	movq	-80(%rbp), %rax	# dirmsgsv, tmp707
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# tmp707,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 3281 0 discriminator 3
	movq	-80(%rbp), %rcx	# dirmsgsv, tmp708
	movq	-88(%rbp), %rax	# msg, tmp709
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp708,
	movq	%rax, %rdi	# tmp709,
	call	Perl_sv_catsv_flags	#
.LBE120:
	.loc 1 3278 0 discriminator 3
	addl	$1, -336(%rbp)	#, i
.L1168:
	.loc 1 3278 0 is_stmt 0 discriminator 1
	movl	-336(%rbp), %eax	# i, tmp710
	movslq	%eax, %rbx	# tmp710, D.19579
	movq	-72(%rbp), %rax	# ar, tmp711
	movl	12(%rax), %eax	# MEM[(struct SV *)ar_439].sv_flags, D.19573
	andl	$32768, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1171	#,
	movq	-72(%rbp), %rax	# ar, tmp712
	movq	%rax, %rdi	# tmp712,
	call	Perl_mg_size	#
	cltq
	jmp	.L1172	#
.L1171:
	.loc 1 3278 0 discriminator 2
	movq	-72(%rbp), %rax	# ar, tmp713
	movq	(%rax), %rax	# ar_439->sv_any, D.19587
	movq	8(%rax), %rax	# _452->xav_fill, iftmp.1538
.L1172:
	.loc 1 3278 0 discriminator 3
	cmpq	%rax, %rbx	# iftmp.1538, D.19579
	jle	.L1173	#,
	.loc 1 3283 0 is_stmt 1
	movq	-88(%rbp), %rax	# msg, tmp714
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC85, %esi	#,
	movq	%rax, %rdi	# tmp714,
	call	Perl_sv_catpvn_flags	#
	.loc 1 3284 0
	movq	-80(%rbp), %rax	# dirmsgsv, tmp715
	movq	%rax, %rdi	# tmp715,
	call	Perl_sv_free	#
	.loc 1 3285 0
	movq	-88(%rbp), %rax	# msg, tmp716
	movl	12(%rax), %eax	# msg_424->sv_flags, D.19573
	andl	$262144, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1174	#,
	.loc 1 3285 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# msg, tmp717
	movq	(%rax), %rax	# msg_424->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_471].xpv_pv, iftmp.1539
	jmp	.L1175	#
.L1174:
	.loc 1 3285 0 discriminator 2
	movq	-88(%rbp), %rax	# msg, tmp718
	movq	%rax, %rdi	# tmp718,
	call	Perl_sv_2pv_nolen	#
.L1175:
	.loc 1 3285 0 discriminator 3
	movq	%rax, -216(%rbp)	# iftmp.1539, msgstr
.L1163:
.LBE119:
	.loc 1 3287 0 is_stmt 1
	movq	-216(%rbp), %rax	# msgstr, tmp719
	movq	%rax, %rsi	# tmp719,
	movl	$.LC86, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1204	#
.L1162:
.LBE118:
	.loc 1 3290 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_476
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1540
	movq	(%rax), %rax	# PL_op.1540_477->op_next, D.19570
	jmp	.L1204	#
.L1161:
	.loc 1 3293 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_479
	.loc 1 3296 0
	movq	-136(%rbp), %rax	# name, tmp720
	movq	%rax, %rdi	# tmp720,
	call	strlen	#
	movq	%rax, -328(%rbp)	# len.1541, len
	.loc 1 3298 0
	cmpq	$0, -264(%rbp)	#, hook_sv
	je	.L1176	#,
	.loc 1 3298 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# len, len.1542
	movl	%eax, %r12d	# len.1542, D.19572
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1544
	movq	(%rax), %rax	# PL_incgv.1544_483->sv_any, D.19581
	movq	56(%rax), %rax	# _484->xgv_gp, D.19582
	movq	40(%rax), %rax	# _485->gp_hv, D.19583
	testq	%rax, %rax	# D.19583
	je	.L1177	#,
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1545
	movq	(%rax), %rax	# PL_incgv.1545_487->sv_any, D.19581
	movq	56(%rax), %rax	# _488->xgv_gp, D.19582
	movq	40(%rax), %rax	# _489->gp_hv, iftmp.1543
	jmp	.L1178	#
.L1177:
	.loc 1 3298 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1546
	movq	%rax, %rdi	# PL_incgv.1546,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _492->sv_any, D.19581
	movq	56(%rax), %rax	# _493->xgv_gp, D.19582
	movq	40(%rax), %rax	# _494->gp_hv, iftmp.1543
.L1178:
	.loc 1 3298 0 discriminator 3
	movq	-136(%rbp), %rsi	# name, tmp721
	movl	$0, %ecx	#,
	movl	%r12d, %edx	# D.19572,
	movq	%rax, %rdi	# iftmp.1543,
	call	Perl_hv_fetch	#
	movq	%rax, -128(%rbp)	# tmp722, svp
	cmpq	$0, -128(%rbp)	#, svp
	jne	.L1179	#,
.L1176:
	.loc 1 3299 0 is_stmt 1
	cmpq	$0, -264(%rbp)	#, hook_sv
	je	.L1180	#,
	.loc 1 3300 0
	movq	-264(%rbp), %rax	# hook_sv, tmp723
	movq	%rax, PL_Sv(%rip)	# tmp723, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1549
	testq	%rax, %rax	# PL_Sv.1549
	je	.L1182	#,
	.loc 1 3300 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1550
	movl	8(%rax), %edx	# PL_Sv.1550_498->sv_refcnt, D.19573
	addl	$1, %edx	#, D.19573
	movl	%edx, 8(%rax)	# D.19573, PL_Sv.1550_498->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1550_498->sv_refcnt, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1182	#,
	.loc 1 3300 0
	nop
.L1182:
	.loc 1 3299 0 is_stmt 1
	movq	PL_Sv(%rip), %r12	# PL_Sv, iftmp.1547
	jmp	.L1183	#
.L1180:
	.loc 1 3301 0
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19584
	testq	%rax, %rax	# D.19584
	je	.L1184	#,
	.loc 1 3301 0 is_stmt 0 discriminator 1
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19584
	movq	(%rax), %rax	# _506->sv_any, D.19581
	movq	56(%rax), %rax	# _507->xgv_gp, D.19582
	movq	(%rax), %rax	# _508->gp_sv, D.19585
	testq	%rax, %rax	# D.19585
	je	.L1184	#,
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19584
	testq	%rax, %rax	# D.19584
	je	.L1185	#,
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19584
	movq	(%rax), %rax	# _511->sv_any, D.19581
	movq	56(%rax), %rax	# _512->xgv_gp, D.19582
	movq	(%rax), %rax	# _513->gp_sv, iftmp.1552
	jmp	.L1186	#
.L1185:
	.loc 1 3301 0 discriminator 2
	movl	$0, %eax	#, iftmp.1552
.L1186:
	.loc 1 3301 0 discriminator 3
	movq	(%rax), %rax	# iftmp.1552_78->sv_any, D.19575
	movq	(%rax), %rax	# MEM[(struct XPV *)_516].xpv_pv, iftmp.1551
	jmp	.L1187	#
.L1184:
	.loc 1 3301 0 discriminator 2
	movl	$0, %eax	#, iftmp.1551
.L1187:
	.loc 1 3299 0 is_stmt 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.1551,
	call	Perl_newSVpv	#
	movq	%rax, %r12	#, iftmp.1547
.L1183:
	.loc 1 3299 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# len, len.1553
	movl	%eax, %r13d	# len.1553, D.19572
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1555
	movq	(%rax), %rax	# PL_incgv.1555_522->sv_any, D.19581
	movq	56(%rax), %rax	# _523->xgv_gp, D.19582
	movq	40(%rax), %rax	# _524->gp_hv, D.19583
	testq	%rax, %rax	# D.19583
	je	.L1188	#,
	.loc 1 3299 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1556
	movq	(%rax), %rax	# PL_incgv.1556_526->sv_any, D.19581
	movq	56(%rax), %rax	# _527->xgv_gp, D.19582
	movq	40(%rax), %rax	# _528->gp_hv, iftmp.1554
	jmp	.L1189	#
.L1188:
	.loc 1 3299 0 discriminator 3
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1557
	movq	%rax, %rdi	# PL_incgv.1557,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _531->sv_any, D.19581
	movq	56(%rax), %rax	# _532->xgv_gp, D.19582
	movq	40(%rax), %rax	# _533->gp_hv, iftmp.1554
.L1189:
	.loc 1 3299 0 discriminator 4
	movq	-136(%rbp), %rsi	# name, tmp724
	movl	$0, %r8d	#,
	movq	%r12, %rcx	# iftmp.1547,
	movl	%r13d, %edx	# D.19572,
	movq	%rax, %rdi	# iftmp.1554,
	call	Perl_hv_store	#
.L1179:
	.loc 1 3305 0 is_stmt 1
	call	Perl_push_scope	#
	.loc 1 3306 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1558
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1558, PL_tmps_floor
	.loc 1 3307 0
	movl	$0, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.19585,
	call	Perl_sv_2mortal	#
	movq	%rax, %rdi	# D.19585,
	call	Perl_lex_start	#
	.loc 1 3308 0
	movl	$PL_rsfp_filters, %edi	#,
	call	Perl_save_generic_svref	#
	.loc 1 3309 0
	movq	$0, PL_rsfp_filters(%rip)	#, PL_rsfp_filters
	.loc 1 3311 0
	movq	-296(%rbp), %rax	# tryrsfp, tmp725
	movq	%rax, PL_rsfp(%rip)	# tmp725, PL_rsfp
.LBB121:
	.loc 1 3312 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1559
	leal	3(%rax), %edx	#, D.19572
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1560
	cmpl	%eax, %edx	# PL_savestack_max.1560, D.19572
	jle	.L1190	#,
	.loc 1 3312 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L1190:
	.loc 1 3312 0 discriminator 2
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1561
	andl	$131072, %eax	#, D.19573
	testl	%eax, %eax	# D.19573
	je	.L1191	#,
	.loc 1 3312 0 discriminator 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1562
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1563
	leal	1(%rax), %edx	#, PL_savestack_ix.1565
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1565, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19578
	leaq	(%rcx,%rax), %rdx	#, D.19594
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1566
	movq	(%rax), %rax	# PL_hintgv.1566_550->sv_any, D.19581
	movq	56(%rax), %rax	# _551->xgv_gp, D.19582
	movq	40(%rax), %rax	# _552->gp_hv, D.19583
	movq	%rax, (%rdx)	# D.19583, _549->any_ptr
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1567
	movq	(%rax), %rax	# PL_hintgv.1567_554->sv_any, D.19581
	movq	56(%rax), %r12	# _555->xgv_gp, D.19582
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1568
	movq	(%rax), %rax	# PL_hintgv.1568_557->sv_any, D.19581
	movq	56(%rax), %rax	# _558->xgv_gp, D.19582
	movq	40(%rax), %rax	# _559->gp_hv, D.19583
	movq	%rax, %rdi	# D.19583,
	call	Perl_newHVhv	#
	movq	%rax, 40(%r12)	# D.19583, _556->gp_hv
.L1191:
	.loc 1 3312 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1569
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1570
	leal	1(%rax), %edx	#, PL_savestack_ix.1572
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1572, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19578
	leaq	(%rcx,%rax), %rdx	#, D.19594
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1573
	movl	%eax, (%rdx)	# PL_hints.1574, _568->any_i32
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1575
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1576
	leal	1(%rax), %edx	#, PL_savestack_ix.1578
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1578, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19578
	addq	%rcx, %rax	# PL_savestack.1575, D.19594
	movl	$27, (%rax)	#, _577->any_i32
.LBE121:
	.loc 1 3313 0 is_stmt 1 discriminator 2
	movl	$0, PL_hints(%rip)	#, PL_hints
	.loc 1 3314 0 discriminator 2
	movl	$PL_compiling+80, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 3315 0 discriminator 2
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1579
	movzbl	%al, %eax	# PL_dowarn.1579, D.19572
	andl	$2, %eax	#, D.19572
	testl	%eax, %eax	# D.19572
	je	.L1192	#,
	.loc 1 3316 0
	movq	$16, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	jmp	.L1193	#
.L1192:
	.loc 1 3317 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1580
	movzbl	%al, %eax	# PL_dowarn.1580, D.19572
	andl	$4, %eax	#, D.19572
	testl	%eax, %eax	# D.19572
	je	.L1194	#,
	.loc 1 3318 0
	movq	$32, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
	jmp	.L1193	#
.L1194:
	.loc 1 3319 0
	movzbl	PL_taint_warn(%rip), %eax	# PL_taint_warn, PL_taint_warn.1581
	testb	%al, %al	# PL_taint_warn.1581
	je	.L1195	#,
	.loc 1 3320 0
	movl	$12, %esi	#,
	movl	$.LC87, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, PL_compiling+80(%rip)	# D.19585, PL_compiling.cop_warnings
	jmp	.L1193	#
.L1195:
	.loc 1 3322 0
	movq	$0, PL_compiling+80(%rip)	#, PL_compiling.cop_warnings
.L1193:
	.loc 1 3323 0
	movl	$PL_compiling+88, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 3324 0
	movq	$0, PL_compiling+88(%rip)	#, PL_compiling.cop_io
	.loc 1 3326 0
	cmpq	$0, -272(%rbp)	#, filter_sub
	jne	.L1196	#,
	.loc 1 3326 0 is_stmt 0 discriminator 1
	cmpq	$0, -288(%rbp)	#, filter_child_proc
	je	.L1197	#,
.L1196:
.LBB122:
	.loc 1 3327 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$run_user_filter, %edi	#,
	call	Perl_filter_add	#
	movq	%rax, -56(%rbp)	# tmp726, datasv
	.loc 1 3328 0
	movq	-56(%rbp), %rax	# datasv, tmp727
	movq	(%rax), %rax	# datasv_587->sv_any, D.19575
	movl	-352(%rbp), %edx	# filter_has_file, tmp728
	movslq	%edx, %rdx	# tmp728, D.19579
	movq	%rdx, 80(%rax)	# D.19579, MEM[(struct XPVIO *)_588].xio_lines
	.loc 1 3329 0
	movq	-56(%rbp), %rax	# datasv, tmp729
	movq	(%rax), %rax	# datasv_587->sv_any, D.19575
	movq	-288(%rbp), %rdx	# filter_child_proc, tmp730
	movq	%rdx, 136(%rax)	# tmp730, MEM[(struct XPVIO *)_590].xio_fmt_gv
	.loc 1 3330 0
	movq	-56(%rbp), %rax	# datasv, tmp731
	movq	(%rax), %rax	# datasv_587->sv_any, D.19575
	movq	-280(%rbp), %rdx	# filter_state, tmp732
	movq	%rdx, 120(%rax)	# tmp732, MEM[(struct XPVIO *)_591].xio_top_gv
	.loc 1 3331 0
	movq	-56(%rbp), %rax	# datasv, tmp733
	movq	(%rax), %rax	# datasv_587->sv_any, D.19575
	movq	-272(%rbp), %rdx	# filter_sub, tmp734
	movq	%rdx, 152(%rax)	# tmp734, MEM[(struct XPVIO *)_592].xio_bottom_gv
.L1197:
.LBE122:
	.loc 1 3335 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1582
	movq	(%rax), %rax	# PL_op.1582_593->op_next, D.19570
	movq	%rax, %rdi	# D.19570,
	call	Perl_push_return	#
	.loc 1 3336 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1584
	movl	16(%rax), %edx	# PL_curstackinfo.1584_595->si_cxix, D.19572
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1585
	movl	20(%rax), %eax	# PL_curstackinfo.1585_597->si_cxmax, D.19572
	cmpl	%eax, %edx	# D.19572, D.19572
	jge	.L1198	#,
	.loc 1 3336 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1586
	movl	16(%rax), %edx	# PL_curstackinfo.1586_599->si_cxix, D.19572
	addl	$1, %edx	#, D.19572
	movl	%edx, 16(%rax)	# D.19572, PL_curstackinfo.1586_599->si_cxix
	jmp	.L1199	#
.L1198:
	.loc 1 3336 0 discriminator 2
	movq	PL_curstackinfo(%rip), %r12	# PL_curstackinfo, PL_curstackinfo.1587
	call	Perl_cxinc	#
	movl	%eax, 16(%r12)	# D.19572, PL_curstackinfo.1587_603->si_cxix
.L1199:
	.loc 1 3336 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1588
	movq	8(%rax), %rcx	# PL_curstackinfo.1588_606->si_cxstack, D.19595
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1589
	movl	16(%rax), %eax	# PL_curstackinfo.1589_608->si_cxix, D.19572
	movslq	%eax, %rdx	# D.19572, D.19578
	movq	%rdx, %rax	# D.19578, tmp735
	salq	$3, %rax	#, tmp735
	addq	%rdx, %rax	# D.19578, tmp735
	salq	$4, %rax	#, tmp736
	leaq	(%rcx,%rax), %r12	#, cx
	movl	$2, (%r12)	#, cx_612->cx_type
	movq	%rbx, %rdx	# sp, sp.1590
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1591
	subq	%rax, %rdx	# PL_stack_base.1592, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	sarq	$3, %rax	#, tmp737
	movl	%eax, 8(%r12)	# D.19572, cx_612->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1593
	movq	%rax, 16(%r12)	# PL_curcop.1593, cx_612->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1594
	movq	%rax, %rdx	# PL_markstack_ptr.1594, PL_markstack_ptr.1595
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1596
	subq	%rax, %rdx	# PL_markstack.1597, D.19579
	movq	%rdx, %rax	# D.19579, D.19579
	sarq	$2, %rax	#, tmp738
	movl	%eax, 28(%r12)	# D.19572, cx_612->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1598
	movl	%eax, 32(%r12)	# PL_scopestack_ix.1598, cx_612->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.1599
	movl	%eax, 24(%r12)	# PL_retstack_ix.1599, cx_612->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.1600
	movq	%rax, 40(%r12)	# PL_curpm.1600, cx_612->cx_u.cx_blk.blku_oldpm
	movl	-332(%rbp), %eax	# gimme, tmp739
	movb	%al, 48(%r12)	# D.19571, cx_612->cx_u.cx_blk.blku_gimme
.LBB123:
	.loc 1 3337 0 is_stmt 1 discriminator 3
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.1601
	movl	%eax, 56(%r12)	# PL_in_eval.1601, cx_612->cx_u.cx_blk.blk_u.blku_eval.old_in_eval
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1602
	movzwl	32(%rax), %eax	# PL_op.1602_632->op_type, D.19574
	movzwl	%ax, %eax	# D.19574, D.19572
	movl	%eax, 60(%r12)	# D.19572, cx_612->cx_u.cx_blk.blk_u.blku_eval.old_op_type
	cmpq	$0, -136(%rbp)	#, name
	je	.L1200	#,
	.loc 1 3337 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# name, tmp740
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp740,
	call	Perl_newSVpv	#
	jmp	.L1201	#
.L1200:
	.loc 1 3337 0 discriminator 2
	movl	$0, %eax	#, iftmp.1603
.L1201:
	.loc 1 3337 0 discriminator 3
	movq	%rax, 64(%r12)	# iftmp.1603, cx_612->cx_u.cx_blk.blk_u.blku_eval.old_namesv
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1604
	movq	%rax, 72(%r12)	# PL_eval_root.1604, cx_612->cx_u.cx_blk.blk_u.blku_eval.old_eval_root
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.1605
	movq	%rax, 80(%r12)	# PL_linestr.1605, cx_612->cx_u.cx_blk.blk_u.blku_eval.cur_text
	movq	$0, 88(%r12)	#, cx_612->cx_u.cx_blk.blk_u.blku_eval.cv
.LBE123:
	.loc 1 3339 0 is_stmt 1 discriminator 3
	movl	$PL_compiling+72, %edi	#,
	call	Perl_save_I32	#
	.loc 1 3340 0 discriminator 3
	movl	$0, PL_compiling+72(%rip)	#, PL_compiling.cop_line
	.loc 1 3342 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3353 0 discriminator 3
	movq	PL_encoding(%rip), %rax	# PL_encoding, tmp741
	movq	%rax, -48(%rbp)	# tmp741, encoding
	.loc 1 3354 0 discriminator 3
	movq	$0, PL_encoding(%rip)	#, PL_encoding
	.loc 1 3356 0 discriminator 3
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1607
	movzbl	212(%rax), %eax	# PL_top_env.1607_641->je_mustcatch, D.19580
	cmpb	$1, %al	#, D.19580
	jne	.L1202	#,
	.loc 1 3356 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1608
	movl	64(%rax), %edx	# PL_curcop.1608_643->cop_seq, D.19573
	movl	-332(%rbp), %eax	# gimme, tmp742
	movl	%edx, %ecx	# D.19573,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp742,
	call	S_doeval	#
	movq	%rax, %rdi	# D.19570,
	call	S_docatch	#
	jmp	.L1203	#
.L1202:
	.loc 1 3356 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1609
	movl	64(%rax), %edx	# PL_curcop.1609_647->cop_seq, D.19573
	movl	-332(%rbp), %eax	# gimme, tmp743
	movl	%edx, %ecx	# D.19573,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp743,
	call	S_doeval	#
.L1203:
	.loc 1 3356 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.1606, op
	.loc 1 3359 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# encoding, tmp744
	movq	%rax, PL_encoding(%rip)	# tmp744, PL_encoding
	.loc 1 3361 0 discriminator 3
	movq	-40(%rbp), %rax	# op, D.19570
.L1204:
	.loc 1 3362 0
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_pp_require, .-Perl_pp_require
	.globl	Perl_pp_dofile
	.type	Perl_pp_dofile, @function
Perl_pp_dofile:
.LFB55:
	.loc 1 3365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3366 0
	call	Perl_pp_require	#
	.loc 1 3367 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	Perl_pp_dofile, .-Perl_pp_dofile
	.section	.rodata
.LC88:
	.string	"_<(eval %lu)[%s:%ld]"
.LC89:
	.string	"_<(eval %lu)"
	.text
	.globl	Perl_pp_entereval
	.type	Perl_pp_entereval, @function
Perl_pp_entereval:
.LFB56:
	.loc 1 3370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 3370 0
	movq	%fs:40, %rax	#, tmp298
	movq	%rax, -24(%rbp)	# tmp298, D.19638
	xorl	%eax, %eax	# tmp298
	.loc 1 3371 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 3373 0
	movq	%r12, %rax	# sp, sp.1610
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.1610_12, tmp267
	movq	%rax, -104(%rbp)	# tmp267, sv
	.loc 1 3374 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1612
	movzbl	36(%rax), %eax	# PL_op.1612_15->op_flags, D.19619
	movzbl	%al, %eax	# D.19619, D.19620
	andl	$3, %eax	#, D.19620
	cmpl	$1, %eax	#, D.19620
	je	.L1208	#,
	.loc 1 3374 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1614
	movzbl	36(%rax), %eax	# PL_op.1614_19->op_flags, D.19619
	movzbl	%al, %eax	# D.19619, D.19620
	andl	$3, %eax	#, D.19620
	cmpl	$2, %eax	#, D.19620
	je	.L1209	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1616
	movzbl	36(%rax), %eax	# PL_op.1616_23->op_flags, D.19619
	movzbl	%al, %eax	# D.19619, D.19620
	andl	$3, %eax	#, D.19620
	cmpl	$3, %eax	#, D.19620
	je	.L1210	#,
	call	Perl_block_gimme	#
	jmp	.L1213	#
.L1210:
	.loc 1 3374 0 discriminator 2
	movl	$1, %eax	#, iftmp.1615
	jmp	.L1213	#
.L1209:
	movl	$0, %eax	#, iftmp.1613
	jmp	.L1213	#
.L1208:
	movl	$128, %eax	#, iftmp.1611
.L1213:
	.loc 1 3374 0 discriminator 3
	movl	%eax, -128(%rbp)	# iftmp.1611, gimme
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.1617
	movl	%eax, -124(%rbp)	# PL_sub_generation.1617, was
	.loc 1 3376 0 is_stmt 1 discriminator 3
	leaq	-64(%rbp), %rax	#, tmp268
	movq	%rax, -112(%rbp)	# tmp268, tmpbuf
	.loc 1 3383 0 discriminator 3
	movq	-104(%rbp), %rax	# sv, tmp269
	movl	12(%rax), %eax	# sv_14->sv_flags, D.19621
	andl	$262144, %eax	#, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1214	#,
	.loc 1 3383 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# sv, tmp270
	movq	(%rax), %rax	# sv_14->sv_any, D.19622
	movq	8(%rax), %rax	# MEM[(struct XPV *)_39].xpv_cur, len.1619
	movq	%rax, -120(%rbp)	# len.1619, len
	movq	-104(%rbp), %rax	# sv, tmp271
	movq	(%rax), %rax	# sv_14->sv_any, D.19622
	movq	(%rax), %rax	# MEM[(struct XPV *)_41].xpv_pv, D.19623
	testq	%rax, %rax	# D.19623
	sete	%al	#, iftmp.1618
	jmp	.L1215	#
.L1214:
	.loc 1 3383 0 discriminator 2
	leaq	-120(%rbp), %rcx	#, tmp272
	movq	-104(%rbp), %rax	# sv, tmp273
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp272,
	movq	%rax, %rdi	# tmp273,
	call	Perl_sv_2pv_flags	#
	testq	%rax, %rax	# D.19623
	sete	%al	#, iftmp.1618
.L1215:
	.loc 1 3383 0 discriminator 3
	testb	%al, %al	# iftmp.1618
	je	.L1216	#,
	.loc 1 3384 0 is_stmt 1
	addq	$8, %r12	#, sp
	movq	$PL_sv_undef, (%r12)	#, *sp_46
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1620
	movq	(%rax), %rax	# PL_op.1620_47->op_next, D.19618
	jmp	.L1242	#
.L1216:
	.loc 1 3385 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.1621
	testb	%al, %al	# PL_tainting.1621
	je	.L1218	#,
	.loc 1 3385 0 is_stmt 0 discriminator 1
	movl	$.LC19, %esi	#,
	movl	$0, %edi	#,
	call	Perl_taint_proper	#
.L1218:
	.loc 1 3387 0 is_stmt 1
	call	Perl_push_scope	#
	.loc 1 3388 0
	movq	-104(%rbp), %rax	# sv, tmp274
	movq	%rax, %rdi	# tmp274,
	call	Perl_lex_start	#
	.loc 1 3389 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1622
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1622, PL_tmps_floor
	.loc 1 3393 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1623
	testl	%eax, %eax	# PL_perldb.1623
	je	.L1219	#,
	.loc 1 3393 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1624
	andl	$256, %eax	#, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1219	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1625
	movl	72(%rax), %eax	# PL_curcop.1625_54->cop_line, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1219	#,
.LBB124:
	.loc 1 3394 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -96(%rbp)	# tmp275, sv
	.loc 1 3397 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1626
	movl	72(%rax), %eax	# PL_curcop.1626_57->cop_line, D.19621
	.loc 1 3395 0
	movl	%eax, %ecx	# D.19621, D.19624
	.loc 1 3397 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1628
	movq	56(%rax), %rax	# PL_curcop.1628_60->cop_filegv, D.19625
	.loc 1 3395 0
	testq	%rax, %rax	# D.19625
	je	.L1220	#,
	.loc 1 3397 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1629
	movq	56(%rax), %rax	# PL_curcop.1629_62->cop_filegv, D.19625
	movq	(%rax), %rax	# _63->sv_any, D.19626
	movq	56(%rax), %rax	# _64->xgv_gp, D.19627
	movq	(%rax), %rax	# _65->gp_sv, D.19628
	testq	%rax, %rax	# D.19628
	je	.L1220	#,
	.loc 1 3397 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1631
	movq	56(%rax), %rax	# PL_curcop.1631_67->cop_filegv, D.19625
	testq	%rax, %rax	# D.19625
	je	.L1221	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1632
	movq	56(%rax), %rax	# PL_curcop.1632_69->cop_filegv, D.19625
	movq	(%rax), %rax	# _70->sv_any, D.19626
	movq	56(%rax), %rax	# _71->xgv_gp, D.19627
	movq	(%rax), %rax	# _72->gp_sv, iftmp.1630
	jmp	.L1222	#
.L1221:
	.loc 1 3397 0 discriminator 2
	movl	$0, %eax	#, iftmp.1630
.L1222:
	.loc 1 3397 0 discriminator 3
	movq	(%rax), %rax	# iftmp.1630_8->sv_any, D.19622
	.loc 1 3395 0 is_stmt 1 discriminator 3
	movq	(%rax), %rax	# MEM[(struct XPV *)_75].xpv_pv, iftmp.1627
	jmp	.L1223	#
.L1220:
	.loc 1 3395 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.1627
.L1223:
	.loc 1 3396 0 is_stmt 1
	movl	PL_evalseq(%rip), %edx	# PL_evalseq, PL_evalseq.1633
	addl	$1, %edx	#, PL_evalseq.1634
	.loc 1 3395 0
	movl	%edx, PL_evalseq(%rip)	# PL_evalseq.1634, PL_evalseq
	.loc 1 3396 0
	movl	PL_evalseq(%rip), %edx	# PL_evalseq, PL_evalseq.1635
	.loc 1 3395 0
	movl	%edx, %edx	# PL_evalseq.1635, D.19629
	movq	-96(%rbp), %rdi	# sv, tmp276
	movq	%rcx, %r8	# D.19624,
	movq	%rax, %rcx	# iftmp.1627,
	movl	$.LC88, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 3398 0
	movq	-96(%rbp), %rax	# sv, tmp277
	movq	(%rax), %rax	# sv_56->sv_any, D.19622
	movq	(%rax), %rax	# MEM[(struct XPV *)_82].xpv_pv, tmp278
	movq	%rax, -112(%rbp)	# tmp278, tmpbuf
.LBE124:
	.loc 1 3393 0
	jmp	.L1224	#
.L1219:
	.loc 1 3401 0
	movl	PL_evalseq(%rip), %eax	# PL_evalseq, PL_evalseq.1636
	addl	$1, %eax	#, PL_evalseq.1637
	movl	%eax, PL_evalseq(%rip)	# PL_evalseq.1637, PL_evalseq
	movl	PL_evalseq(%rip), %eax	# PL_evalseq, PL_evalseq.1638
	movl	%eax, %edx	# PL_evalseq.1638, D.19629
	movq	-112(%rbp), %rax	# tmpbuf, tmp279
	movl	$.LC89, %esi	#,
	movq	%rax, %rdi	# tmp279,
	movl	$0, %eax	#,
	call	sprintf	#
.L1224:
	.loc 1 3402 0
	movl	$PL_compiling+56, %edi	#,
	call	Perl_save_generic_svref	#
	.loc 1 3403 0
	movq	-112(%rbp), %rax	# tmpbuf, tmp280
	addq	$2, %rax	#, D.19630
	movq	%rax, %rdi	# D.19630,
	call	Perl_gv_fetchfile	#
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1639, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1641
	testq	%rax, %rax	# PL_Sv.1641
	je	.L1226	#,
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1642
	movl	8(%rax), %edx	# PL_Sv.1642_91->sv_refcnt, D.19621
	addl	$1, %edx	#, D.19621
	movl	%edx, 8(%rax)	# D.19621, PL_Sv.1642_91->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1642_91->sv_refcnt, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1226	#,
	.loc 1 3403 0
	nop
.L1226:
	.loc 1 3403 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1643
	movq	%rax, PL_compiling+56(%rip)	# PL_Sv.1643, PL_compiling.cop_filegv
	.loc 1 3404 0 is_stmt 1 discriminator 4
	movl	$PL_compiling+72, %edi	#,
	call	Perl_save_I32	#
	.loc 1 3405 0 discriminator 4
	movl	$1, PL_compiling+72(%rip)	#, PL_compiling.cop_line
	.loc 1 3411 0 discriminator 4
	movq	-112(%rbp), %rax	# tmpbuf, tmp281
	movq	%rax, %rdi	# tmp281,
	call	Perl_savepv	#
	movq	%rax, -88(%rbp)	# tmp282, safestr
	.loc 1 3412 0 discriminator 4
	movq	-88(%rbp), %rax	# safestr, tmp283
	movq	%rax, %rdi	# tmp283,
	call	strlen	#
	movl	%eax, %edx	# D.19629, D.19620
	movq	PL_defstash(%rip), %rax	# PL_defstash, PL_defstash.1644
	movq	-88(%rbp), %rcx	# safestr, tmp284
	movq	%rcx, %rsi	# tmp284,
	movq	%rax, %rdi	# PL_defstash.1644,
	call	Perl_save_delete	#
.LBB125:
	.loc 1 3413 0 discriminator 4
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1645
	leal	3(%rax), %edx	#, D.19620
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1646
	cmpl	%eax, %edx	# PL_savestack_max.1646, D.19620
	jle	.L1227	#,
	.loc 1 3413 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L1227:
	.loc 1 3413 0 discriminator 2
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1647
	andl	$131072, %eax	#, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1228	#,
	.loc 1 3413 0 discriminator 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1648
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1649
	leal	1(%rax), %edx	#, PL_savestack_ix.1651
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1651, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19629
	leaq	(%rcx,%rax), %rdx	#, D.19631
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1652
	movq	(%rax), %rax	# PL_hintgv.1652_114->sv_any, D.19626
	movq	56(%rax), %rax	# _115->xgv_gp, D.19627
	movq	40(%rax), %rax	# _116->gp_hv, D.19632
	movq	%rax, (%rdx)	# D.19632, _113->any_ptr
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1653
	movq	(%rax), %rax	# PL_hintgv.1653_118->sv_any, D.19626
	movq	56(%rax), %rbx	# _119->xgv_gp, D.19627
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.1654
	movq	(%rax), %rax	# PL_hintgv.1654_121->sv_any, D.19626
	movq	56(%rax), %rax	# _122->xgv_gp, D.19627
	movq	40(%rax), %rax	# _123->gp_hv, D.19632
	movq	%rax, %rdi	# D.19632,
	call	Perl_newHVhv	#
	movq	%rax, 40(%rbx)	# D.19632, _120->gp_hv
.L1228:
	.loc 1 3413 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1655
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1656
	leal	1(%rax), %edx	#, PL_savestack_ix.1658
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1658, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19629
	leaq	(%rcx,%rax), %rdx	#, D.19631
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.1659
	movl	%eax, (%rdx)	# PL_hints.1660, _132->any_i32
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1661
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1662
	leal	1(%rax), %edx	#, PL_savestack_ix.1664
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1664, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.19629
	addq	%rcx, %rax	# PL_savestack.1661, D.19631
	movl	$27, (%rax)	#, _141->any_i32
.LBE125:
	.loc 1 3414 0 is_stmt 1 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1665
	movq	24(%rax), %rax	# PL_op.1665_143->op_targ, D.19629
	movl	%eax, PL_hints(%rip)	# PL_hints.1666, PL_hints
	.loc 1 3415 0 discriminator 2
	movl	$PL_compiling+80, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 3416 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1667
	movq	80(%rax), %rax	# PL_curcop.1667_146->cop_warnings, D.19628
	testq	%rax, %rax	# D.19628
	je	.L1229	#,
	.loc 1 3416 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1668
	movq	80(%rax), %rax	# PL_curcop.1668_148->cop_warnings, D.19628
	cmpq	$16, %rax	#, D.19628
	je	.L1229	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1669
	movq	80(%rax), %rax	# PL_curcop.1669_150->cop_warnings, D.19628
	cmpq	$32, %rax	#, D.19628
	jne	.L1230	#,
.L1229:
	.loc 1 3417 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1670
	movq	80(%rax), %rax	# PL_curcop.1670_156->cop_warnings, D.19628
	movq	%rax, PL_compiling+80(%rip)	# D.19628, PL_compiling.cop_warnings
	jmp	.L1231	#
.L1230:
	.loc 1 3419 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1671
	movq	80(%rax), %rax	# PL_curcop.1671_152->cop_warnings, D.19628
	movq	%rax, %rdi	# D.19628,
	call	Perl_newSVsv	#
	movq	%rax, PL_compiling+80(%rip)	# D.19628, PL_compiling.cop_warnings
	.loc 1 3420 0
	movq	PL_compiling+80(%rip), %rax	# PL_compiling.cop_warnings, D.19628
	movq	%rax, %rdi	# D.19628,
	call	Perl_save_freesv	#
.L1231:
	.loc 1 3422 0
	movl	$PL_compiling+88, %edi	#,
	call	Perl_save_sptr	#
	.loc 1 3423 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1672
	movq	88(%rax), %rax	# PL_curcop.1672_158->cop_io, D.19628
	testq	%rax, %rax	# D.19628
	jne	.L1232	#,
	.loc 1 3424 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1673
	movq	88(%rax), %rax	# PL_curcop.1673_160->cop_io, D.19628
	movq	%rax, PL_compiling+88(%rip)	# D.19628, PL_compiling.cop_io
	jmp	.L1233	#
.L1232:
	.loc 1 3426 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1674
	movq	88(%rax), %rax	# PL_curcop.1674_162->cop_io, D.19628
	movq	%rax, %rdi	# D.19628,
	call	Perl_newSVsv	#
	movq	%rax, PL_compiling+88(%rip)	# D.19628, PL_compiling.cop_io
	.loc 1 3427 0
	movq	PL_compiling+88(%rip), %rax	# PL_compiling.cop_io, D.19628
	movq	%rax, %rdi	# D.19628,
	call	Perl_save_freesv	#
.L1233:
	.loc 1 3434 0
	leaq	-132(%rbp), %rax	#, tmp285
	movq	%rax, %rdi	# tmp285,
	call	Perl_find_runcv	#
	movq	%rax, -80(%rbp)	# tmp286, runcv
	.loc 1 3436 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1675
	movq	(%rax), %rax	# PL_op.1675_167->op_next, D.19618
	movq	%rax, %rdi	# D.19618,
	call	Perl_push_return	#
	.loc 1 3437 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1677
	movl	16(%rax), %edx	# PL_curstackinfo.1677_169->si_cxix, D.19620
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1678
	movl	20(%rax), %eax	# PL_curstackinfo.1678_171->si_cxmax, D.19620
	cmpl	%eax, %edx	# D.19620, D.19620
	jge	.L1234	#,
	.loc 1 3437 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1679
	movl	16(%rax), %edx	# PL_curstackinfo.1679_173->si_cxix, D.19620
	addl	$1, %edx	#, D.19620
	movl	%edx, 16(%rax)	# D.19620, PL_curstackinfo.1679_173->si_cxix
	jmp	.L1235	#
.L1234:
	.loc 1 3437 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.1680
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19620, PL_curstackinfo.1680_177->si_cxix
.L1235:
	.loc 1 3437 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1681
	movq	8(%rax), %rcx	# PL_curstackinfo.1681_180->si_cxstack, D.19634
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1682
	movl	16(%rax), %eax	# PL_curstackinfo.1682_182->si_cxix, D.19620
	movslq	%eax, %rdx	# D.19620, D.19629
	movq	%rdx, %rax	# D.19629, tmp287
	salq	$3, %rax	#, tmp287
	addq	%rdx, %rax	# D.19629, tmp287
	salq	$4, %rax	#, tmp288
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$258, (%rbx)	#, cx_186->cx_type
	movq	%r12, %rdx	# sp, sp.1683
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1684
	subq	%rax, %rdx	# PL_stack_base.1685, D.19624
	movq	%rdx, %rax	# D.19624, D.19624
	sarq	$3, %rax	#, tmp289
	movl	%eax, 8(%rbx)	# D.19620, cx_186->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1686
	movq	%rax, 16(%rbx)	# PL_curcop.1686, cx_186->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1687
	movq	%rax, %rdx	# PL_markstack_ptr.1687, PL_markstack_ptr.1688
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1689
	subq	%rax, %rdx	# PL_markstack.1690, D.19624
	movq	%rdx, %rax	# D.19624, D.19624
	sarq	$2, %rax	#, tmp290
	movl	%eax, 28(%rbx)	# D.19620, cx_186->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1691
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.1691, cx_186->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.1692
	movl	%eax, 24(%rbx)	# PL_retstack_ix.1692, cx_186->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.1693
	movq	%rax, 40(%rbx)	# PL_curpm.1693, cx_186->cx_u.cx_blk.blku_oldpm
	movl	-128(%rbp), %eax	# gimme, tmp291
	movb	%al, 48(%rbx)	# D.19619, cx_186->cx_u.cx_blk.blku_gimme
.LBB126:
	.loc 1 3438 0 is_stmt 1 discriminator 3
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.1694
	movl	%eax, 56(%rbx)	# PL_in_eval.1694, cx_186->cx_u.cx_blk.blk_u.blku_eval.old_in_eval
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1695
	movzwl	32(%rax), %eax	# PL_op.1695_206->op_type, D.19635
	movzwl	%ax, %eax	# D.19635, D.19620
	movl	%eax, 60(%rbx)	# D.19620, cx_186->cx_u.cx_blk.blk_u.blku_eval.old_op_type
	movq	$0, 64(%rbx)	#, cx_186->cx_u.cx_blk.blk_u.blku_eval.old_namesv
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1696
	movq	%rax, 72(%rbx)	# PL_eval_root.1696, cx_186->cx_u.cx_blk.blk_u.blku_eval.old_eval_root
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.1697
	movq	%rax, 80(%rbx)	# PL_linestr.1697, cx_186->cx_u.cx_blk.blk_u.blku_eval.cur_text
	movq	$0, 88(%rbx)	#, cx_186->cx_u.cx_blk.blk_u.blku_eval.cv
.LBE126:
	.loc 1 3442 0 discriminator 3
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1698
	testl	%eax, %eax	# PL_perldb.1698
	je	.L1236	#,
	.loc 1 3442 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1699
	andl	$2, %eax	#, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1236	#,
	movq	PL_curstash(%rip), %rdx	# PL_curstash, PL_curstash.1700
	movq	PL_debstash(%rip), %rax	# PL_debstash, PL_debstash.1701
	cmpq	%rax, %rdx	# PL_debstash.1701, PL_curstash.1700
	je	.L1236	#,
	.loc 1 3443 0 is_stmt 1
	movq	PL_linestr(%rip), %rdx	# PL_linestr, PL_linestr.1702
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19625
	testq	%rax, %rax	# D.19625
	je	.L1237	#,
	.loc 1 3443 0 is_stmt 0 discriminator 1
	movq	PL_compiling+56(%rip), %rax	# PL_compiling.cop_filegv, D.19625
	movq	(%rax), %rax	# _219->sv_any, D.19626
	movq	56(%rax), %rax	# _220->xgv_gp, D.19627
	movq	32(%rax), %rax	# _221->gp_av, iftmp.1703
	jmp	.L1238	#
.L1237:
	.loc 1 3443 0 discriminator 2
	movl	$0, %eax	#, iftmp.1703
.L1238:
	.loc 1 3443 0 discriminator 3
	movq	%rdx, %rsi	# PL_linestr.1702,
	movq	%rax, %rdi	# iftmp.1703,
	call	S_save_lines	#
.L1236:
	.loc 1 3444 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3453 0
	movl	-132(%rbp), %ecx	# seq, seq.1704
	movq	-80(%rbp), %rdx	# runcv, tmp292
	movl	-128(%rbp), %eax	# gimme, tmp293
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp293,
	call	S_doeval	#
	movq	%rax, -72(%rbp)	# tmp294, ret
	.loc 1 3454 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1705
	testl	%eax, %eax	# PL_perldb.1705
	je	.L1239	#,
	.loc 1 3454 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1706
	andl	$8, %eax	#, D.19621
	testl	%eax, %eax	# D.19621
	je	.L1239	#,
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.1707
	cmpl	-124(%rbp), %eax	# was, PL_sub_generation.1708
	je	.L1239	#,
	.loc 1 3455 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1709
	movq	(%rax), %rax	# PL_op.1709_231->op_next, D.19618
	cmpq	-72(%rbp), %rax	# ret, D.19618
	je	.L1239	#,
	.loc 1 3456 0
	movq	-88(%rbp), %rax	# safestr, tmp295
	movabsq	$2336349467829615711, %rsi	#, tmp302
	movq	%rsi, (%rax)	# tmp302, MEM[(void *)safestr_98]
	movw	$41, 8(%rax)	#, MEM[(void *)safestr_98]
.L1239:
	.loc 1 3458 0
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1711
	movzbl	212(%rax), %eax	# PL_top_env.1711_233->je_mustcatch, D.19637
	cmpb	$1, %al	#, D.19637
	jne	.L1240	#,
	.loc 1 3458 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ret, tmp296
	movq	%rax, %rdi	# tmp296,
	call	S_docatch	#
	jmp	.L1241	#
.L1240:
	.loc 1 3458 0 discriminator 2
	movq	-72(%rbp), %rax	# ret, iftmp.1710
.L1241:
.L1242:
	.loc 1 3459 0 is_stmt 1
	movq	-24(%rbp), %rsi	# D.19638, tmp299
	xorq	%fs:40, %rsi	#, tmp299
	je	.L1243	#,
	call	__stack_chk_fail	#
.L1243:
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	Perl_pp_entereval, .-Perl_pp_entereval
	.globl	Perl_pp_leaveeval
	.type	Perl_pp_leaveeval, @function
Perl_pp_leaveeval:
.LFB57:
	.loc 1 3462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 3463 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3470 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1712
	movzbl	36(%rax), %eax	# PL_op.1712_9->op_flags, tmp166
	movb	%al, -77(%rbp)	# tmp166, save_flags
	.loc 1 3473 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1713
	movq	8(%rax), %rsi	# PL_curstackinfo.1713_11->si_cxstack, D.19641
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1714
	movl	16(%rax), %edx	# PL_curstackinfo.1714_13->si_cxix, D.19642
	leal	-1(%rdx), %ecx	#, D.19642
	movl	%ecx, 16(%rax)	# D.19642, PL_curstackinfo.1714_13->si_cxix
	movslq	%edx, %rdx	# D.19642, D.19643
	movq	%rdx, %rax	# D.19643, tmp167
	salq	$3, %rax	#, tmp167
	addq	%rdx, %rax	# D.19643, tmp167
	salq	$4, %rax	#, tmp168
	leaq	(%rsi,%rax), %r13	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1715
	movl	8(%r13), %edx	# cx_19->cx_u.cx_blk.blku_oldsp, D.19642
	movslq	%edx, %rdx	# D.19642, D.19643
	salq	$3, %rdx	#, D.19643
	addq	%rdx, %rax	# D.19643, tmp169
	movq	%rax, -56(%rbp)	# tmp169, newsp
	movq	16(%r13), %rax	# cx_19->cx_u.cx_blk.blku_oldcop, PL_curcop.1716
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1716, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1717
	movl	28(%r13), %edx	# cx_19->cx_u.cx_blk.blku_oldmarksp, D.19642
	movslq	%edx, %rdx	# D.19642, D.19643
	salq	$2, %rdx	#, D.19643
	addq	%rdx, %rax	# D.19643, PL_markstack_ptr.1718
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1718, PL_markstack_ptr
	movl	32(%r13), %eax	# cx_19->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1719
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1719, PL_scopestack_ix
	movl	24(%r13), %eax	# cx_19->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1720
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1720, PL_retstack_ix
	movq	40(%r13), %rax	# cx_19->cx_u.cx_blk.blku_oldpm, tmp170
	movq	%rax, -48(%rbp)	# tmp170, newpm
	movzbl	48(%r13), %eax	# cx_19->cx_u.cx_blk.blku_gimme, D.19644
	movzbl	%al, %eax	# D.19644, tmp171
	movl	%eax, -76(%rbp)	# tmp171, gimme
.LBB127:
	.loc 1 3474 0
	movl	56(%r13), %eax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1721
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1721, PL_in_eval
	movl	60(%r13), %eax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp172
	movl	%eax, -72(%rbp)	# tmp172, optype
	movq	72(%r13), %rax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1722
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1722, PL_eval_root
	movq	64(%r13), %rax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19645
	testq	%rax, %rax	# D.19645
	je	.L1245	#,
	.loc 1 3474 0 is_stmt 0 discriminator 1
	movq	64(%r13), %rax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19645
	movq	%rax, %rdi	# D.19645,
	call	Perl_sv_2mortal	#
.L1245:
.LBE127:
	.loc 1 3475 0 is_stmt 1
	call	Perl_pop_return	#
	movq	%rax, -64(%rbp)	# tmp173, retop
	.loc 1 3477 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 3478 0
	cmpl	$128, -76(%rbp)	#, gimme
	jne	.L1246	#,
	.loc 1 3479 0
	movq	-56(%rbp), %r12	# newsp, mark
	jmp	.L1247	#
.L1246:
	.loc 1 3480 0
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L1248	#,
	.loc 1 3481 0
	movq	-56(%rbp), %rax	# newsp, tmp174
	leaq	8(%rax), %r12	#, mark
	.loc 1 3482 0
	cmpq	%rbx, %r12	# sp, mark
	ja	.L1249	#,
	.loc 1 3483 0
	movq	(%rbx), %rax	# *sp_8, D.19645
	movl	12(%rax), %eax	# _44->sv_flags, D.19646
	andl	$2048, %eax	#, D.19646
	testl	%eax, %eax	# D.19646
	je	.L1250	#,
	.loc 1 3484 0
	movq	(%rbx), %rax	# *sp_8, D.19645
	movq	%rax, (%r12)	# D.19645, *mark_43
	jmp	.L1252	#
.L1250:
	.loc 1 3486 0
	movq	(%rbx), %rax	# *sp_8, D.19645
	movq	%rax, %rdi	# D.19645,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%r12)	# D.19645, *mark_43
	jmp	.L1252	#
.L1249:
	.loc 1 3489 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1723
	movq	%rax, %rdx	# PL_stack_max.1723, PL_stack_max.1724
	movq	%r12, %rax	# mark, mark.1725
	subq	%rax, %rdx	# mark.1725, D.19647
	movq	%rdx, %rax	# D.19647, D.19647
	cmpq	$-7, %rax	#, D.19647
	jge	.L1253	#,
.LBB128:
	.loc 1 3489 0 is_stmt 0 discriminator 1
	movq	%r12, %rdx	# mark, mark.1726
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1727
	subq	%rax, %rdx	# PL_stack_base.1728, D.19647
	movq	%rdx, %rax	# D.19647, D.19647
	sarq	$3, %rax	#, tmp175
	movl	%eax, -68(%rbp)	# D.19647, markoff
	movl	$0, %edx	#,
	movq	%r12, %rsi	# mark,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1729
	movl	-68(%rbp), %edx	# markoff, tmp176
	movslq	%edx, %rdx	# tmp176, D.19643
	salq	$3, %rdx	#, D.19643
	leaq	(%rax,%rdx), %r12	#, mark
.L1253:
.LBE128:
	.loc 1 3490 0 is_stmt 1
	movq	$PL_sv_undef, (%r12)	#, *mark_2
.L1252:
	.loc 1 3492 0 discriminator 2
	movq	%r12, %rbx	# mark, sp
	jmp	.L1247	#
.L1248:
	.loc 1 3496 0
	movq	-56(%rbp), %rax	# newsp, tmp177
	leaq	8(%rax), %r12	#, mark
	jmp	.L1254	#
.L1256:
	.loc 1 3497 0
	movq	(%r12), %rax	# *mark_4, D.19645
	movl	12(%rax), %eax	# _67->sv_flags, D.19646
	andl	$2048, %eax	#, D.19646
	testl	%eax, %eax	# D.19646
	jne	.L1255	#,
	.loc 1 3498 0
	movq	(%r12), %rax	# *mark_4, D.19645
	movq	%rax, %rdi	# D.19645,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%r12)	# D.19645, *mark_4
	.loc 1 3499 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L1255:
	.loc 1 3496 0
	addq	$8, %r12	#, mark
.L1254:
	.loc 1 3496 0 is_stmt 0 discriminator 1
	cmpq	%rbx, %r12	# sp, mark
	jbe	.L1256	#,
.L1247:
	.loc 1 3503 0 is_stmt 1
	movq	-48(%rbp), %rax	# newpm, tmp178
	movq	%rax, PL_curpm(%rip)	# tmp178, PL_curpm
	.loc 1 3508 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.1730
	movq	(%rax), %rax	# PL_compcv.1730_73->sv_any, D.19648
	movq	$0, 112(%rax)	#, _74->xcv_depth
	.loc 1 3509 0
	call	Perl_lex_end	#
	.loc 1 3511 0
	cmpl	$309, -72(%rbp)	#, optype
	jne	.L1257	#,
	.loc 1 3511 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, gimme
	jne	.L1258	#,
	.loc 1 3512 0 is_stmt 1 discriminator 2
	movq	(%rbx), %rax	# *sp_1, D.19645
	.loc 1 3511 0 discriminator 2
	testq	%rax, %rax	# D.19645
	je	.L1259	#,
	.loc 1 3512 0 discriminator 4
	movq	(%rbx), %rax	# *sp_1, D.19645
	movl	12(%rax), %eax	# _76->sv_flags, D.19646
	andl	$262144, %eax	#, D.19646
	.loc 1 3511 0 discriminator 4
	testl	%eax, %eax	# D.19646
	je	.L1260	#,
	.loc 1 3512 0 discriminator 6
	movq	(%rbx), %rax	# *sp_1, D.19645
	movq	(%rax), %rax	# _79->sv_any, PL_Xpv.1732
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.1732, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.1733
	.loc 1 3511 0 discriminator 6
	testq	%rax, %rax	# PL_Xpv.1733
	je	.L1261	#,
	.loc 1 3512 0 discriminator 2
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.1734
	movq	8(%rax), %rax	# PL_Xpv.1734_82->xpv_cur, D.19643
	.loc 1 3511 0 discriminator 2
	cmpq	$1, %rax	#, D.19643
	ja	.L1262	#,
	.loc 1 3512 0
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.1735
	movq	8(%rax), %rax	# PL_Xpv.1735_84->xpv_cur, D.19643
	testq	%rax, %rax	# D.19643
	je	.L1261	#,
	.loc 1 3512 0 is_stmt 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.1736
	movq	(%rax), %rax	# PL_Xpv.1736_86->xpv_pv, D.19649
	movzbl	(%rax), %eax	# *_87, D.19650
	cmpb	$48, %al	#, D.19650
	jne	.L1262	#,
.L1261:
	.loc 1 3511 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.1731
	jmp	.L1263	#
.L1262:
	.loc 1 3511 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.1731
.L1263:
	.loc 1 3511 0 discriminator 4
	andl	$1, %eax	#, D.19651
	testb	%al, %al	# D.19651
	jne	.L1259	#,
	jmp	.L1257	#
.L1260:
	.loc 1 3512 0 is_stmt 1 discriminator 7
	movq	(%rbx), %rax	# *sp_1, D.19645
	movl	12(%rax), %eax	# _92->sv_flags, D.19646
	andl	$65536, %eax	#, D.19646
	.loc 1 3511 0 discriminator 7
	testl	%eax, %eax	# D.19646
	je	.L1264	#,
	.loc 1 3512 0 discriminator 8
	movq	(%rbx), %rax	# *sp_1, D.19645
	movq	(%rax), %rax	# _95->sv_any, D.19652
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_96].xiv_iv, D.19647
	.loc 1 3511 0 discriminator 8
	testq	%rax, %rax	# D.19647
	je	.L1259	#,
	jmp	.L1257	#
.L1264:
	.loc 1 3512 0 discriminator 9
	movq	(%rbx), %rax	# *sp_1, D.19645
	movl	12(%rax), %eax	# _98->sv_flags, D.19646
	andl	$131072, %eax	#, D.19646
	.loc 1 3511 0 discriminator 9
	testl	%eax, %eax	# D.19646
	je	.L1265	#,
	.loc 1 3512 0 discriminator 10
	movq	(%rbx), %rax	# *sp_1, D.19645
	movq	(%rax), %rax	# _101->sv_any, D.19652
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_102].xnv_nv, D.19653
	.loc 1 3511 0 discriminator 10
	xorpd	%xmm1, %xmm1	# tmp179
	ucomisd	%xmm1, %xmm0	# tmp179, D.19653
	jp	.L1257	#,
	xorpd	%xmm1, %xmm1	# tmp180
	ucomisd	%xmm1, %xmm0	# tmp180, D.19653
	je	.L1259	#,
	jmp	.L1257	#
.L1265:
	.loc 1 3512 0 discriminator 11
	movq	(%rbx), %rax	# *sp_1, D.19645
	movq	%rax, %rdi	# D.19645,
	call	Perl_sv_2bool	#
	.loc 1 3511 0 discriminator 11
	testb	%al, %al	# D.19650
	je	.L1259	#,
	jmp	.L1257	#
.L1258:
	.loc 1 3511 0 is_stmt 0 discriminator 3
	cmpq	-56(%rbp), %rbx	# newsp, sp
	ja	.L1257	#,
.L1259:
.LBB129:
	.loc 1 3515 0 is_stmt 1
	movq	64(%r13), %rax	# cx_19->cx_u.cx_blk.blk_u.blku_eval.old_namesv, tmp181
	movq	%rax, -40(%rbp)	# tmp181, nsv
	.loc 1 3516 0
	movq	-40(%rbp), %rax	# nsv, tmp182
	movq	(%rax), %rax	# nsv_106->sv_any, D.19652
	movq	8(%rax), %rax	# MEM[(struct XPV *)_107].xpv_cur, D.19643
	movl	%eax, %r13d	# D.19643, D.19642
	movq	-40(%rbp), %rax	# nsv, tmp183
	movq	(%rax), %rax	# nsv_106->sv_any, D.19652
	movq	(%rax), %r12	# MEM[(struct XPV *)_110].xpv_pv, D.19649
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1738
	movq	(%rax), %rax	# PL_incgv.1738_112->sv_any, D.19654
	movq	56(%rax), %rax	# _113->xgv_gp, D.19655
	movq	40(%rax), %rax	# _114->gp_hv, D.19656
	testq	%rax, %rax	# D.19656
	je	.L1267	#,
	.loc 1 3516 0 is_stmt 0 discriminator 1
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1739
	movq	(%rax), %rax	# PL_incgv.1739_116->sv_any, D.19654
	movq	56(%rax), %rax	# _117->xgv_gp, D.19655
	movq	40(%rax), %rax	# _118->gp_hv, iftmp.1737
	jmp	.L1268	#
.L1267:
	.loc 1 3516 0 discriminator 2
	movq	PL_incgv(%rip), %rax	# PL_incgv, PL_incgv.1740
	movq	%rax, %rdi	# PL_incgv.1740,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _121->sv_any, D.19654
	movq	56(%rax), %rax	# _122->xgv_gp, D.19655
	movq	40(%rax), %rax	# _123->gp_hv, iftmp.1737
.L1268:
	.loc 1 3516 0 discriminator 3
	movl	$2, %ecx	#,
	movl	%r13d, %edx	# D.19642,
	movq	%r12, %rsi	# D.19649,
	movq	%rax, %rdi	# iftmp.1737,
	call	Perl_hv_delete	#
	.loc 1 3517 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# nsv, tmp184
	movq	%rax, %rsi	# tmp184,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	movq	%rax, -64(%rbp)	# tmp185, retop
.LBE129:
	.loc 1 3513 0 discriminator 3
	jmp	.L1269	#
.L1257:
	.loc 1 3521 0
	call	Perl_pop_scope	#
	.loc 1 3522 0
	movzbl	-77(%rbp), %eax	# save_flags, save_flags.1741
	testb	%al, %al	# save_flags.1741
	js	.L1269	#,
	.loc 1 3523 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1742
	movq	(%rax), %rax	# PL_errgv.1742_127->sv_any, D.19654
	movq	56(%rax), %rax	# _128->xgv_gp, D.19655
	movq	(%rax), %rax	# _129->gp_sv, D.19645
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.19645,
	call	Perl_sv_setpv	#
.L1269:
	.loc 1 3526 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-64(%rbp), %rax	# retop, D.19658
	.loc 1 3527 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	Perl_pp_leaveeval, .-Perl_pp_leaveeval
	.globl	Perl_pp_entertry
	.type	Perl_pp_entertry, @function
Perl_pp_entertry:
.LFB58:
	.loc 1 3530 0
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
	.loc 1 3531 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 3533 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1744
	movzbl	36(%rax), %eax	# PL_op.1744_6->op_flags, D.19659
	movzbl	%al, %eax	# D.19659, D.19660
	andl	$3, %eax	#, D.19660
	cmpl	$1, %eax	#, D.19660
	je	.L1272	#,
	.loc 1 3533 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1746
	movzbl	36(%rax), %eax	# PL_op.1746_10->op_flags, D.19659
	movzbl	%al, %eax	# D.19659, D.19660
	andl	$3, %eax	#, D.19660
	cmpl	$2, %eax	#, D.19660
	je	.L1273	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1748
	movzbl	36(%rax), %eax	# PL_op.1748_14->op_flags, D.19659
	movzbl	%al, %eax	# D.19659, D.19660
	andl	$3, %eax	#, D.19660
	cmpl	$3, %eax	#, D.19660
	je	.L1274	#,
	call	Perl_block_gimme	#
	jmp	.L1277	#
.L1274:
	.loc 1 3533 0 discriminator 2
	movl	$1, %eax	#, iftmp.1747
	jmp	.L1277	#
.L1273:
	movl	$0, %eax	#, iftmp.1745
	jmp	.L1277	#
.L1272:
	movl	$128, %eax	#, iftmp.1743
.L1277:
	.loc 1 3533 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.1743, gimme
	.loc 1 3535 0 is_stmt 1 discriminator 3
	call	Perl_push_scope	#
	.loc 1 3536 0 discriminator 3
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1749
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1749, PL_tmps_floor
	.loc 1 3538 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1750
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.1750_26].op_other, D.19661
	movq	(%rax), %rax	# _27->op_next, D.19661
	movq	%rax, %rdi	# D.19661,
	call	Perl_push_return	#
	.loc 1 3539 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1752
	movl	16(%rax), %edx	# PL_curstackinfo.1752_29->si_cxix, D.19660
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1753
	movl	20(%rax), %eax	# PL_curstackinfo.1753_31->si_cxmax, D.19660
	cmpl	%eax, %edx	# D.19660, D.19660
	jge	.L1278	#,
	.loc 1 3539 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1754
	movl	16(%rax), %edx	# PL_curstackinfo.1754_33->si_cxix, D.19660
	addl	$1, %edx	#, D.19660
	movl	%edx, 16(%rax)	# D.19660, PL_curstackinfo.1754_33->si_cxix
	jmp	.L1279	#
.L1278:
	.loc 1 3539 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.1755
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.19660, PL_curstackinfo.1755_37->si_cxix
.L1279:
	.loc 1 3539 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1756
	movq	8(%rax), %rcx	# PL_curstackinfo.1756_40->si_cxstack, D.19662
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1757
	movl	16(%rax), %eax	# PL_curstackinfo.1757_42->si_cxix, D.19660
	movslq	%eax, %rdx	# D.19660, D.19663
	movq	%rdx, %rax	# D.19663, tmp134
	salq	$3, %rax	#, tmp134
	addq	%rdx, %rax	# D.19663, tmp134
	salq	$4, %rax	#, tmp135
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$514, (%rbx)	#, cx_46->cx_type
	movq	%r12, %rdx	# sp, sp.1758
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1759
	subq	%rax, %rdx	# PL_stack_base.1760, D.19664
	movq	%rdx, %rax	# D.19664, D.19664
	sarq	$3, %rax	#, tmp136
	movl	%eax, 8(%rbx)	# D.19660, cx_46->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1761
	movq	%rax, 16(%rbx)	# PL_curcop.1761, cx_46->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1762
	movq	%rax, %rdx	# PL_markstack_ptr.1762, PL_markstack_ptr.1763
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1764
	subq	%rax, %rdx	# PL_markstack.1765, D.19664
	movq	%rdx, %rax	# D.19664, D.19664
	sarq	$2, %rax	#, tmp137
	movl	%eax, 28(%rbx)	# D.19660, cx_46->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1766
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.1766, cx_46->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.1767
	movl	%eax, 24(%rbx)	# PL_retstack_ix.1767, cx_46->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.1768
	movq	%rax, 40(%rbx)	# PL_curpm.1768, cx_46->cx_u.cx_blk.blku_oldpm
	movl	-20(%rbp), %eax	# gimme, tmp138
	movb	%al, 48(%rbx)	# D.19659, cx_46->cx_u.cx_blk.blku_gimme
.LBB130:
	.loc 1 3540 0 is_stmt 1 discriminator 3
	movl	PL_in_eval(%rip), %eax	# PL_in_eval, PL_in_eval.1769
	movl	%eax, 56(%rbx)	# PL_in_eval.1769, cx_46->cx_u.cx_blk.blk_u.blku_eval.old_in_eval
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1770
	movzwl	32(%rax), %eax	# PL_op.1770_66->op_type, D.19665
	movzwl	%ax, %eax	# D.19665, D.19660
	movl	%eax, 60(%rbx)	# D.19660, cx_46->cx_u.cx_blk.blk_u.blku_eval.old_op_type
	movq	$0, 64(%rbx)	#, cx_46->cx_u.cx_blk.blk_u.blku_eval.old_namesv
	movq	PL_eval_root(%rip), %rax	# PL_eval_root, PL_eval_root.1771
	movq	%rax, 72(%rbx)	# PL_eval_root.1771, cx_46->cx_u.cx_blk.blk_u.blku_eval.old_eval_root
	movq	PL_linestr(%rip), %rax	# PL_linestr, PL_linestr.1772
	movq	%rax, 80(%rbx)	# PL_linestr.1772, cx_46->cx_u.cx_blk.blk_u.blku_eval.cur_text
	movq	$0, 88(%rbx)	#, cx_46->cx_u.cx_blk.blk_u.blku_eval.cv
.LBE130:
	.loc 1 3542 0 discriminator 3
	movl	$1, PL_in_eval(%rip)	#, PL_in_eval
	.loc 1 3543 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1773
	movq	(%rax), %rax	# PL_errgv.1773_72->sv_any, D.19667
	movq	56(%rax), %rax	# _73->xgv_gp, D.19668
	movq	(%rax), %rax	# _74->gp_sv, D.19669
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.19669,
	call	Perl_sv_setpv	#
	.loc 1 3544 0 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3545 0 discriminator 3
	movq	PL_top_env(%rip), %rax	# PL_top_env, PL_top_env.1775
	movzbl	212(%rax), %eax	# PL_top_env.1775_76->je_mustcatch, D.19670
	cmpb	$1, %al	#, D.19670
	jne	.L1280	#,
	.loc 1 3545 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1776
	movq	(%rax), %rax	# PL_op.1776_78->op_next, D.19661
	movq	%rax, %rdi	# D.19661,
	call	S_docatch	#
	jmp	.L1281	#
.L1280:
	.loc 1 3545 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1777
	movq	(%rax), %rax	# PL_op.1777_81->op_next, iftmp.1774
.L1281:
	.loc 1 3546 0 is_stmt 1 discriminator 3
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	Perl_pp_entertry, .-Perl_pp_entertry
	.globl	Perl_pp_leavetry
	.type	Perl_pp_leavetry, @function
Perl_pp_leavetry:
.LFB59:
	.loc 1 3549 0
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
	.loc 1 3550 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 3559 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1778
	movq	8(%rax), %rsi	# PL_curstackinfo.1778_6->si_cxstack, D.19671
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1779
	movl	16(%rax), %edx	# PL_curstackinfo.1779_8->si_cxix, D.19672
	leal	-1(%rdx), %ecx	#, D.19672
	movl	%ecx, 16(%rax)	# D.19672, PL_curstackinfo.1779_8->si_cxix
	movslq	%edx, %rdx	# D.19672, D.19673
	movq	%rdx, %rax	# D.19673, tmp115
	salq	$3, %rax	#, tmp115
	addq	%rdx, %rax	# D.19673, tmp115
	salq	$4, %rax	#, tmp116
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1780
	movl	8(%rbx), %edx	# cx_14->cx_u.cx_blk.blku_oldsp, D.19672
	movslq	%edx, %rdx	# D.19672, D.19673
	salq	$3, %rdx	#, D.19673
	addq	%rdx, %rax	# D.19673, tmp117
	movq	%rax, -40(%rbp)	# tmp117, newsp
	movq	16(%rbx), %rax	# cx_14->cx_u.cx_blk.blku_oldcop, PL_curcop.1781
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1781, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1782
	movl	28(%rbx), %edx	# cx_14->cx_u.cx_blk.blku_oldmarksp, D.19672
	movslq	%edx, %rdx	# D.19672, D.19673
	salq	$2, %rdx	#, D.19673
	addq	%rdx, %rax	# D.19673, PL_markstack_ptr.1783
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1783, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1784
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1784, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1785
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1785, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_14->cx_u.cx_blk.blku_oldpm, tmp118
	movq	%rax, -32(%rbp)	# tmp118, newpm
	movzbl	48(%rbx), %eax	# cx_14->cx_u.cx_blk.blku_gimme, D.19674
	movzbl	%al, %eax	# D.19674, tmp119
	movl	%eax, -52(%rbp)	# tmp119, gimme
.LBB131:
	.loc 1 3560 0
	movl	56(%rbx), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_in_eval, PL_in_eval.1786
	movl	%eax, PL_in_eval(%rip)	# PL_in_eval.1786, PL_in_eval
	movl	60(%rbx), %eax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_op_type, tmp120
	movl	%eax, -48(%rbp)	# tmp120, optype
	movq	72(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_eval_root, PL_eval_root.1787
	movq	%rax, PL_eval_root(%rip)	# PL_eval_root.1787, PL_eval_root
	movq	64(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19675
	testq	%rax, %rax	# D.19675
	je	.L1284	#,
	.loc 1 3560 0 is_stmt 0 discriminator 1
	movq	64(%rbx), %rax	# cx_14->cx_u.cx_blk.blk_u.blku_eval.old_namesv, D.19675
	movq	%rax, %rdi	# D.19675,
	call	Perl_sv_2mortal	#
.L1284:
.LBE131:
	.loc 1 3561 0 is_stmt 1
	call	Perl_pop_return	#
	movq	%rax, -24(%rbp)	# tmp121, retop
	.loc 1 3563 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 3564 0
	cmpl	$128, -52(%rbp)	#, gimme
	jne	.L1285	#,
	.loc 1 3565 0
	movq	-40(%rbp), %r12	# newsp, sp
	jmp	.L1286	#
.L1285:
	.loc 1 3566 0
	cmpl	$0, -52(%rbp)	#, gimme
	jne	.L1287	#,
	.loc 1 3567 0
	movq	-40(%rbp), %rax	# newsp, tmp122
	leaq	8(%rax), %rbx	#, mark
	.loc 1 3568 0
	cmpq	%r12, %rbx	# sp, mark
	ja	.L1288	#,
	.loc 1 3569 0
	movq	(%r12), %rax	# *sp_5, D.19675
	movl	12(%rax), %eax	# _39->sv_flags, D.19676
	andl	$2560, %eax	#, D.19676
	testl	%eax, %eax	# D.19676
	je	.L1289	#,
	.loc 1 3570 0
	movq	(%r12), %rax	# *sp_5, D.19675
	movq	%rax, (%rbx)	# D.19675, *mark_38
	jmp	.L1291	#
.L1289:
	.loc 1 3572 0
	movq	(%r12), %rax	# *sp_5, D.19675
	movq	%rax, %rdi	# D.19675,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%rbx)	# D.19675, *mark_38
	jmp	.L1291	#
.L1288:
	.loc 1 3575 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1788
	movq	%rax, %rdx	# PL_stack_max.1788, PL_stack_max.1789
	movq	%rbx, %rax	# mark, mark.1790
	subq	%rax, %rdx	# mark.1790, D.19677
	movq	%rdx, %rax	# D.19677, D.19677
	cmpq	$-7, %rax	#, D.19677
	jge	.L1292	#,
.LBB132:
	.loc 1 3575 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx	# mark, mark.1791
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1792
	subq	%rax, %rdx	# PL_stack_base.1793, D.19677
	movq	%rdx, %rax	# D.19677, D.19677
	sarq	$3, %rax	#, tmp123
	movl	%eax, -44(%rbp)	# D.19677, markoff
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# mark,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1794
	movl	-44(%rbp), %edx	# markoff, tmp124
	movslq	%edx, %rdx	# tmp124, D.19673
	salq	$3, %rdx	#, D.19673
	leaq	(%rax,%rdx), %rbx	#, mark
.L1292:
.LBE132:
	.loc 1 3576 0 is_stmt 1
	movq	$PL_sv_undef, (%rbx)	#, *mark_2
.L1291:
	.loc 1 3578 0 discriminator 2
	movq	%rbx, %r12	# mark, sp
	jmp	.L1286	#
.L1287:
	.loc 1 3582 0
	movq	-40(%rbp), %rax	# newsp, tmp125
	leaq	8(%rax), %rbx	#, mark
	jmp	.L1293	#
.L1295:
	.loc 1 3583 0
	movq	(%rbx), %rax	# *mark_4, D.19675
	movl	12(%rax), %eax	# _62->sv_flags, D.19676
	andl	$2560, %eax	#, D.19676
	testl	%eax, %eax	# D.19676
	jne	.L1294	#,
	.loc 1 3584 0
	movq	(%rbx), %rax	# *mark_4, D.19675
	movq	%rax, %rdi	# D.19675,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%rbx)	# D.19675, *mark_4
	.loc 1 3585 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L1294:
	.loc 1 3582 0
	addq	$8, %rbx	#, mark
.L1293:
	.loc 1 3582 0 is_stmt 0 discriminator 1
	cmpq	%r12, %rbx	# sp, mark
	jbe	.L1295	#,
.L1286:
	.loc 1 3589 0 is_stmt 1
	movq	-32(%rbp), %rax	# newpm, tmp126
	movq	%rax, PL_curpm(%rip)	# tmp126, PL_curpm
	.loc 1 3591 0
	call	Perl_pop_scope	#
	.loc 1 3592 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.1795
	movq	(%rax), %rax	# PL_errgv.1795_68->sv_any, D.19678
	movq	56(%rax), %rax	# _69->xgv_gp, D.19679
	movq	(%rax), %rax	# _70->gp_sv, D.19675
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.19675,
	call	Perl_sv_setpv	#
	.loc 1 3593 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	-24(%rbp), %rax	# retop, D.19680
	.loc 1 3594 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	Perl_pp_leavetry, .-Perl_pp_leavetry
	.section	.rodata
.LC90:
	.string	"Null picture in formline"
	.align 8
.LC91:
	.string	"Repeated format line will never terminate (~~ and @#)"
	.text
	.type	S_doparseform, @function
S_doparseform:
.LFB60:
	.loc 1 3598 0
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
	subq	$88, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)	# sv, sv
	.loc 1 3600 0
	movq	-120(%rbp), %rax	# sv, tmp243
	movl	12(%rax), %eax	# sv_66(D)->sv_flags, D.19682
	andl	$10223616, %eax	#, D.19682
	cmpl	$262144, %eax	#, D.19682
	jne	.L1298	#,
	.loc 1 3600 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# sv, tmp244
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	8(%rax), %rax	# MEM[(struct XPV *)_69].xpv_cur, len.1797
	movq	%rax, -88(%rbp)	# len.1797, len
	movq	-120(%rbp), %rax	# sv, tmp245
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, iftmp.1796
	jmp	.L1299	#
.L1298:
	.loc 1 3600 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp246
	movq	-120(%rbp), %rax	# sv, tmp247
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp246,
	movq	%rax, %rdi	# tmp247,
	call	Perl_sv_pvn_force_flags	#
.L1299:
	.loc 1 3600 0 discriminator 3
	movq	%rax, %rbx	# iftmp.1796, s
	.loc 1 3601 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# len, len.1798
	addq	%rbx, %rax	# s, send
	movq	%rax, -128(%rbp)	# send, %sfp
	.loc 1 3602 0 discriminator 3
	movl	$0, %r14d	#, base
	.loc 1 3603 0 discriminator 3
	movl	$0, %r15d	#, skipspaces
	.loc 1 3604 0 discriminator 3
	movb	$0, -106(%rbp)	#, noblank
	.loc 1 3605 0 discriminator 3
	movb	$0, -105(%rbp)	#, repeat
	.loc 1 3606 0 discriminator 3
	movb	$0, -104(%rbp)	#, postspace
	.loc 1 3609 0 discriminator 3
	movq	$0, -80(%rbp)	#, linepc
	.loc 1 3612 0 discriminator 3
	movb	$0, -103(%rbp)	#, unchopnum
	.loc 1 3613 0 discriminator 3
	movl	$12, -100(%rbp)	#, maxops
	.loc 1 3615 0 discriminator 3
	movq	-88(%rbp), %rax	# len, len.1799
	testq	%rax, %rax	# len.1799
	jne	.L1300	#,
	.loc 1 3616 0
	movl	$.LC90, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1300:
	.loc 1 3619 0
	movq	%rbx, %r14	# s, base
	jmp	.L1301	#
.L1304:
	.loc 1 3620 0
	movzbl	(%rbx), %eax	# *s_1, D.19684
	cmpb	$10, %al	#, D.19684
	je	.L1302	#,
	.loc 1 3620 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_1, D.19684
	cmpb	$64, %al	#, D.19684
	je	.L1302	#,
	movzbl	(%rbx), %eax	# *s_1, D.19684
	cmpb	$94, %al	#, D.19684
	jne	.L1303	#,
.L1302:
	.loc 1 3621 0 is_stmt 1
	addl	$10, -100(%rbp)	#, maxops
.L1303:
	.loc 1 3619 0
	addq	$1, %rbx	#, s
.L1301:
	.loc 1 3619 0 is_stmt 0 discriminator 1
	cmpq	-128(%rbp), %rbx	# %sfp, s
	jbe	.L1304	#,
	.loc 1 3623 0 is_stmt 1
	movq	%r14, %rbx	# base, s
	.loc 1 3624 0
	movl	$0, %r14d	#, base
	.loc 1 3626 0
	movl	-100(%rbp), %eax	# maxops, tmp248
	cltq
	salq	$2, %rax	#, D.19685
	movq	%rax, %rdi	# D.19685,
	call	Perl_safesysmalloc	#
	movq	%rax, -72(%rbp)	# tmp249, fops
	.loc 1 3627 0
	movq	-72(%rbp), %r12	# fops, fpc
	.loc 1 3629 0
	cmpq	-128(%rbp), %rbx	# %sfp, s
	jae	.L1305	#,
	.loc 1 3630 0
	movq	%r12, -80(%rbp)	# fpc, linepc
	.loc 1 3631 0
	movq	%r12, %rax	# fpc, fpc.1800
	leaq	4(%rax), %r12	#, fpc
	movl	$1, (%rax)	#, *fpc.1800_99
	.loc 1 3632 0
	movb	$0, -105(%rbp)	#, repeat
	movzbl	-105(%rbp), %eax	# repeat, tmp250
	movb	%al, -106(%rbp)	# tmp250, noblank
	.loc 1 3633 0
	movq	%rbx, %r14	# s, base
	.loc 1 3636 0
	jmp	.L1306	#
.L1305:
	jmp	.L1306	#
.L1360:
	.loc 1 3637 0
	movq	%rbx, %rax	# s, s.1801
	leaq	1(%rax), %rbx	#, s
	movzbl	(%rax), %eax	# *s.1801_104, D.19684
	movsbl	%al, %eax	# D.19684, D.19686
	cmpl	$32, %eax	#, D.19686
	je	.L1308	#,
	cmpl	$32, %eax	#, D.19686
	jg	.L1309	#,
	cmpl	$9, %eax	#, D.19686
	je	.L1308	#,
	cmpl	$10, %eax	#, D.19686
	je	.L1310	#,
	testl	%eax, %eax	# D.19686
	je	.L1311	#,
	jmp	.L1307	#
.L1309:
	cmpl	$94, %eax	#, D.19686
	je	.L1312	#,
	cmpl	$126, %eax	#, D.19686
	je	.L1313	#,
	cmpl	$64, %eax	#, D.19686
	je	.L1312	#,
.L1307:
	.loc 1 3639 0
	movl	$0, %r15d	#, skipspaces
	.loc 1 3640 0
	jmp	.L1306	#
.L1313:
	.loc 1 3643 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$126, %al	#, D.19684
	jne	.L1314	#,
	.loc 1 3644 0
	movb	$1, -105(%rbp)	#, repeat
	.loc 1 3645 0
	movb	$32, (%rbx)	#, *s_105
.L1314:
	.loc 1 3647 0
	movb	$1, -106(%rbp)	#, noblank
	.loc 1 3648 0
	leaq	-1(%rbx), %rax	#, D.19687
	movb	$32, (%rax)	#, *_112
.L1308:
	.loc 1 3651 0
	addl	$1, %r15d	#, skipspaces
	.loc 1 3652 0
	jmp	.L1306	#
.L1311:
	.loc 1 3654 0
	cmpq	-128(%rbp), %rbx	# %sfp, s
	jae	.L1310	#,
	.loc 1 3655 0
	movl	$0, %r15d	#, skipspaces
	.loc 1 3656 0
	jmp	.L1306	#
.L1310:
	.loc 1 3659 0
	movq	%rbx, %rdx	# s, s.1802
	movq	%r14, %rax	# base, base.1803
	subq	%rax, %rdx	# base.1803, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	movl	%eax, %r13d	# D.19688, arg
	.loc 1 3660 0
	addl	$1, %r15d	#, skipspaces
	.loc 1 3661 0
	subl	%r15d, %r13d	# skipspaces, arg
	.loc 1 3662 0
	testl	%r13d, %r13d	# arg
	je	.L1315	#,
	.loc 1 3663 0
	cmpb	$0, -104(%rbp)	#, postspace
	je	.L1316	#,
	.loc 1 3664 0
	movq	%r12, %rax	# fpc, fpc.1804
	leaq	4(%rax), %r12	#, fpc
	movl	$7, (%rax)	#, *fpc.1804_121
.L1316:
	.loc 1 3665 0
	movq	%r12, %rax	# fpc, fpc.1805
	leaq	4(%rax), %r12	#, fpc
	movl	$2, (%rax)	#, *fpc.1805_123
	.loc 1 3666 0
	movq	%r12, %rax	# fpc, fpc.1806
	leaq	4(%rax), %r12	#, fpc
	movl	%r13d, %edx	# arg, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1806_125
.L1315:
	.loc 1 3668 0
	movb	$0, -104(%rbp)	#, postspace
	.loc 1 3669 0
	cmpq	-128(%rbp), %rbx	# %sfp, s
	ja	.L1317	#,
	.loc 1 3670 0
	subl	$1, %r15d	#, skipspaces
.L1317:
	.loc 1 3671 0
	testl	%r15d, %r15d	# skipspaces
	je	.L1318	#,
	.loc 1 3672 0
	movq	%r12, %rax	# fpc, fpc.1807
	leaq	4(%rax), %r12	#, fpc
	movl	$3, (%rax)	#, *fpc.1807_131
	.loc 1 3673 0
	movq	%r12, %rax	# fpc, fpc.1808
	leaq	4(%rax), %r12	#, fpc
	movl	%r15d, %edx	# skipspaces, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1808_133
.L1318:
	.loc 1 3675 0
	movl	$0, %r15d	#, skipspaces
	.loc 1 3676 0
	cmpq	-128(%rbp), %rbx	# %sfp, s
	ja	.L1319	#,
	.loc 1 3677 0
	movq	%r12, %rax	# fpc, fpc.1809
	leaq	4(%rax), %r12	#, fpc
	movl	$13, (%rax)	#, *fpc.1809_138
.L1319:
	.loc 1 3678 0
	cmpb	$0, -106(%rbp)	#, noblank
	je	.L1320	#,
	.loc 1 3679 0
	movq	%r12, %rax	# fpc, fpc.1810
	leaq	4(%rax), %r12	#, fpc
	movl	$14, (%rax)	#, *fpc.1810_140
	.loc 1 3680 0
	cmpb	$0, -105(%rbp)	#, repeat
	je	.L1321	#,
	.loc 1 3681 0
	movq	%r12, %rdx	# fpc, fpc.1811
	movq	-80(%rbp), %rax	# linepc, linepc.1812
	subq	%rax, %rdx	# linepc.1812, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	sarq	$2, %rax	#, tmp251
	addl	$1, %eax	#, D.19690
	movl	%eax, %r13d	# D.19690, arg
	jmp	.L1322	#
.L1321:
	.loc 1 3683 0
	movl	$0, %r13d	#, arg
.L1322:
	.loc 1 3684 0
	movq	%r12, %rax	# fpc, fpc.1813
	leaq	4(%rax), %r12	#, fpc
	movl	%r13d, %edx	# arg, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1813_150
.L1320:
	.loc 1 3686 0
	cmpq	-128(%rbp), %rbx	# %sfp, s
	jae	.L1323	#,
	.loc 1 3687 0
	movq	%r12, -80(%rbp)	# fpc, linepc
	.loc 1 3688 0
	movq	%r12, %rax	# fpc, fpc.1814
	leaq	4(%rax), %r12	#, fpc
	movl	$1, (%rax)	#, *fpc.1814_155
	.loc 1 3689 0
	movb	$0, -105(%rbp)	#, repeat
	movzbl	-105(%rbp), %eax	# repeat, tmp252
	movb	%al, -106(%rbp)	# tmp252, noblank
	.loc 1 3690 0
	movq	%rbx, %r14	# s, base
	.loc 1 3694 0
	jmp	.L1306	#
.L1323:
	.loc 1 3693 0
	addq	$1, %rbx	#, s
	.loc 1 3694 0
	jmp	.L1306	#
.L1312:
	.loc 1 3698 0
	leaq	-1(%rbx), %rax	#, D.19687
	movzbl	(%rax), %eax	# *_161, D.19684
	cmpb	$94, %al	#, D.19684
	sete	%al	#, D.19691
	movb	%al, -101(%rbp)	# D.19691, ischop
	.loc 1 3700 0
	cmpb	$0, -104(%rbp)	#, postspace
	je	.L1325	#,
	.loc 1 3701 0
	movq	%r12, %rax	# fpc, fpc.1815
	leaq	4(%rax), %r12	#, fpc
	movl	$7, (%rax)	#, *fpc.1815_165
	.loc 1 3702 0
	movb	$0, -104(%rbp)	#, postspace
.L1325:
	.loc 1 3704 0
	movq	%rbx, %rdx	# s, s.1816
	movq	%r14, %rax	# base, base.1817
	subq	%rax, %rdx	# base.1817, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	subl	$1, %eax	#, D.19690
	movl	%eax, %r13d	# D.19690, arg
	.loc 1 3705 0
	testl	%r13d, %r13d	# arg
	je	.L1326	#,
	.loc 1 3706 0
	movq	%r12, %rax	# fpc, fpc.1818
	leaq	4(%rax), %r12	#, fpc
	movl	$2, (%rax)	#, *fpc.1818_174
	.loc 1 3707 0
	movq	%r12, %rax	# fpc, fpc.1819
	leaq	4(%rax), %r12	#, fpc
	movl	%r13d, %edx	# arg, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1819_176
.L1326:
	.loc 1 3710 0
	leaq	-1(%rbx), %r14	#, base
	.loc 1 3711 0
	movq	%r12, %rax	# fpc, fpc.1820
	leaq	4(%rax), %r12	#, fpc
	movl	$4, (%rax)	#, *fpc.1820_181
	.loc 1 3712 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$42, %al	#, D.19684
	jne	.L1327	#,
	.loc 1 3713 0
	addq	$1, %rbx	#, s
	.loc 1 3714 0
	movq	%r12, %rax	# fpc, fpc.1821
	leaq	4(%rax), %r12	#, fpc
	movl	$2, (%rax)	#, *fpc.1821_185
	.loc 1 3715 0
	cmpb	$0, -101(%rbp)	#, ischop
	je	.L1328	#,
	.loc 1 3716 0
	movq	%r12, %rax	# fpc, fpc.1822
	leaq	4(%rax), %r12	#, fpc
	movl	$17, (%rax)	#, *fpc.1822_187
	.loc 1 3717 0
	movq	%r12, %rax	# fpc, fpc.1823
	leaq	4(%rax), %r12	#, fpc
	movl	$10, (%rax)	#, *fpc.1823_189
	jmp	.L1330	#
.L1328:
	.loc 1 3719 0
	movq	%r12, %rax	# fpc, fpc.1824
	leaq	4(%rax), %r12	#, fpc
	movl	$11, (%rax)	#, *fpc.1824_191
	jmp	.L1330	#
.L1327:
	.loc 1 3721 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$35, %al	#, D.19684
	je	.L1331	#,
	.loc 1 3721 0 is_stmt 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1332	#,
	leaq	1(%rbx), %rax	#, D.19687
	movzbl	(%rax), %eax	# *_195, D.19684
	cmpb	$35, %al	#, D.19684
	jne	.L1332	#,
.L1331:
	.loc 1 3722 0 is_stmt 1
	cmpb	$0, -101(%rbp)	#, ischop
	je	.L1333	#,
	.loc 1 3722 0 is_stmt 0 discriminator 1
	movl	$512, %eax	#, iftmp.1825
	jmp	.L1334	#
.L1333:
	.loc 1 3722 0 discriminator 2
	movl	$0, %eax	#, iftmp.1825
.L1334:
	.loc 1 3722 0 discriminator 3
	movl	%eax, %r13d	# iftmp.1825, arg
	.loc 1 3723 0 is_stmt 1 discriminator 3
	leaq	-1(%rbx), %r14	#, base
	.loc 1 3724 0 discriminator 3
	jmp	.L1335	#
.L1336:
	.loc 1 3725 0
	addq	$1, %rbx	#, s
.L1335:
	.loc 1 3724 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_3, D.19684
	cmpb	$35, %al	#, D.19684
	je	.L1336	#,
	.loc 1 3726 0
	movzbl	(%rbx), %eax	# *s_3, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1337	#,
.LBB133:
	.loc 1 3728 0
	addq	$1, %rbx	#, s
	.loc 1 3729 0
	movq	%rbx, -56(%rbp)	# s, f
	.loc 1 3730 0
	jmp	.L1338	#
.L1339:
	.loc 1 3731 0
	addq	$1, %rbx	#, s
.L1338:
	.loc 1 3730 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_4, D.19684
	cmpb	$35, %al	#, D.19684
	je	.L1339	#,
	.loc 1 3732 0
	movq	%rbx, %rdx	# s, s.1826
	movq	-56(%rbp), %rax	# f, f.1827
	subq	%rax, %rdx	# f.1827, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	addl	$256, %eax	#, D.19690
	orl	%eax, %r13d	# D.19686, arg
.L1337:
.LBE133:
	.loc 1 3734 0
	movq	%r12, %rax	# fpc, fpc.1828
	leaq	4(%rax), %r12	#, fpc
	movq	%rbx, %rcx	# s, s.1829
	movq	%r14, %rdx	# base, base.1830
	subq	%rdx, %rcx	# base.1830, D.19688
	movq	%rcx, %rdx	# D.19688, D.19688
	movl	%edx, (%rax)	# D.19682, *fpc.1828_294
	.loc 1 3735 0
	movq	%r12, %rax	# fpc, fpc.1831
	leaq	4(%rax), %r12	#, fpc
	movl	$12, (%rax)	#, *fpc.1831_300
	.loc 1 3736 0
	movq	%r12, %rax	# fpc, fpc.1832
	leaq	4(%rax), %r12	#, fpc
	movl	%r13d, %edx	# arg, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1832_302
	.loc 1 3737 0
	cmpb	$0, -101(%rbp)	#, ischop
	sete	%al	#, D.19691
	orb	%al, -103(%rbp)	# D.19684, unchopnum
	jmp	.L1330	#
.L1332:
	.loc 1 3739 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$48, %al	#, D.19684
	jne	.L1340	#,
	.loc 1 3739 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.19687
	movzbl	(%rax), %eax	# *_198, D.19684
	cmpb	$35, %al	#, D.19684
	jne	.L1340	#,
	.loc 1 3740 0 is_stmt 1
	cmpb	$0, -101(%rbp)	#, ischop
	je	.L1341	#,
	.loc 1 3740 0 is_stmt 0 discriminator 1
	movl	$512, %eax	#, iftmp.1833
	jmp	.L1342	#
.L1341:
	.loc 1 3740 0 discriminator 2
	movl	$0, %eax	#, iftmp.1833
.L1342:
	.loc 1 3740 0 discriminator 3
	movl	%eax, %r13d	# iftmp.1833, arg
	.loc 1 3741 0 is_stmt 1 discriminator 3
	leaq	-1(%rbx), %r14	#, base
	.loc 1 3742 0 discriminator 3
	addq	$1, %rbx	#, s
	.loc 1 3743 0 discriminator 3
	jmp	.L1343	#
.L1344:
	.loc 1 3744 0
	addq	$1, %rbx	#, s
.L1343:
	.loc 1 3743 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_6, D.19684
	cmpb	$35, %al	#, D.19684
	je	.L1344	#,
	.loc 1 3745 0
	movzbl	(%rbx), %eax	# *s_6, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1345	#,
.LBB134:
	.loc 1 3747 0
	addq	$1, %rbx	#, s
	.loc 1 3748 0
	movq	%rbx, -64(%rbp)	# s, f
	.loc 1 3749 0
	jmp	.L1346	#
.L1347:
	.loc 1 3750 0
	addq	$1, %rbx	#, s
.L1346:
	.loc 1 3749 0 discriminator 1
	movzbl	(%rbx), %eax	# *s_7, D.19684
	cmpb	$35, %al	#, D.19684
	je	.L1347	#,
	.loc 1 3751 0
	movq	%rbx, %rdx	# s, s.1834
	movq	-64(%rbp), %rax	# f, f.1835
	subq	%rax, %rdx	# f.1835, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	addl	$256, %eax	#, D.19690
	orl	%eax, %r13d	# D.19686, arg
.L1345:
.LBE134:
	.loc 1 3753 0
	movq	%r12, %rax	# fpc, fpc.1836
	leaq	4(%rax), %r12	#, fpc
	movq	%rbx, %rcx	# s, s.1837
	movq	%r14, %rdx	# base, base.1838
	subq	%rdx, %rcx	# base.1838, D.19688
	movq	%rcx, %rdx	# D.19688, D.19688
	movl	%edx, (%rax)	# D.19682, *fpc.1836_219
	.loc 1 3754 0
	movq	%r12, %rax	# fpc, fpc.1839
	leaq	4(%rax), %r12	#, fpc
	movl	$16, (%rax)	#, *fpc.1839_225
	.loc 1 3755 0
	movq	%r12, %rax	# fpc, fpc.1840
	leaq	4(%rax), %r12	#, fpc
	movl	%r13d, %edx	# arg, D.19689
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1840_227
	.loc 1 3756 0
	cmpb	$0, -101(%rbp)	#, ischop
	sete	%al	#, D.19691
	orb	%al, -103(%rbp)	# D.19684, unchopnum
	jmp	.L1330	#
.L1340:
.LBB135:
	.loc 1 3759 0
	movl	$0, -96(%rbp)	#, prespace
	.loc 1 3760 0
	movb	$0, -102(%rbp)	#, ismore
	.loc 1 3762 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$62, %al	#, D.19684
	jne	.L1348	#,
.L1349:
	.loc 1 3763 0 discriminator 1
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_237, D.19684
	cmpb	$62, %al	#, D.19684
	je	.L1349	#,
	.loc 1 3764 0
	movl	$7, -96(%rbp)	#, prespace
	jmp	.L1350	#
.L1348:
	.loc 1 3766 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$124, %al	#, D.19684
	jne	.L1351	#,
.L1352:
	.loc 1 3767 0 discriminator 1
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_241, D.19684
	cmpb	$124, %al	#, D.19684
	je	.L1352	#,
	.loc 1 3768 0
	movl	$8, -96(%rbp)	#, prespace
	.loc 1 3769 0
	movb	$1, -104(%rbp)	#, postspace
	jmp	.L1350	#
.L1351:
	.loc 1 3772 0
	movzbl	(%rbx), %eax	# *s_105, D.19684
	cmpb	$60, %al	#, D.19684
	jne	.L1353	#,
.L1354:
	.loc 1 3773 0 discriminator 1
	addq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_246, D.19684
	cmpb	$60, %al	#, D.19684
	je	.L1354	#,
.L1353:
	.loc 1 3774 0
	movb	$1, -104(%rbp)	#, postspace
.L1350:
	.loc 1 3776 0
	movzbl	(%rbx), %eax	# *s_13, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1355	#,
	.loc 1 3776 0 is_stmt 0 discriminator 1
	leaq	1(%rbx), %rax	#, D.19687
	movzbl	(%rax), %eax	# *_250, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1355	#,
	leaq	2(%rbx), %rax	#, D.19687
	movzbl	(%rax), %eax	# *_252, D.19684
	cmpb	$46, %al	#, D.19684
	jne	.L1355	#,
	.loc 1 3777 0 is_stmt 1
	addq	$3, %rbx	#, s
	.loc 1 3778 0
	movb	$1, -102(%rbp)	#, ismore
.L1355:
	.loc 1 3780 0
	movq	%r12, %rax	# fpc, fpc.1841
	leaq	4(%rax), %r12	#, fpc
	movq	%rbx, %rcx	# s, s.1842
	movq	%r14, %rdx	# base, base.1843
	subq	%rdx, %rcx	# base.1843, D.19688
	movq	%rcx, %rdx	# D.19688, D.19688
	movl	%edx, (%rax)	# D.19682, *fpc.1841_256
	.loc 1 3782 0
	movq	%r12, %rax	# fpc, fpc.1844
	leaq	4(%rax), %r12	#, fpc
	cmpb	$0, -101(%rbp)	#, ischop
	je	.L1356	#,
	.loc 1 3782 0 is_stmt 0 discriminator 1
	movl	$6, %edx	#, iftmp.1845
	jmp	.L1357	#
.L1356:
	.loc 1 3782 0 discriminator 2
	movl	$5, %edx	#, iftmp.1845
.L1357:
	.loc 1 3782 0 discriminator 3
	movl	%edx, (%rax)	# iftmp.1845, *fpc.1844_262
	.loc 1 3784 0 is_stmt 1 discriminator 3
	cmpl	$0, -96(%rbp)	#, prespace
	je	.L1358	#,
	.loc 1 3785 0
	movq	%r12, %rax	# fpc, fpc.1846
	leaq	4(%rax), %r12	#, fpc
	movl	-96(%rbp), %edx	# prespace, tmp253
	movzwl	%dx, %edx	# D.19689, D.19682
	movl	%edx, (%rax)	# D.19682, *fpc.1846_266
.L1358:
	.loc 1 3786 0
	movq	%r12, %rax	# fpc, fpc.1847
	leaq	4(%rax), %r12	#, fpc
	movl	$9, (%rax)	#, *fpc.1847_270
	.loc 1 3787 0
	cmpb	$0, -102(%rbp)	#, ismore
	je	.L1359	#,
	.loc 1 3788 0
	movq	%r12, %rax	# fpc, fpc.1848
	leaq	4(%rax), %r12	#, fpc
	movl	$15, (%rax)	#, *fpc.1848_272
.L1359:
	.loc 1 3789 0
	cmpb	$0, -101(%rbp)	#, ischop
	je	.L1330	#,
	.loc 1 3790 0
	movq	%r12, %rax	# fpc, fpc.1849
	leaq	4(%rax), %r12	#, fpc
	movl	$10, (%rax)	#, *fpc.1849_274
.L1330:
.LBE135:
	.loc 1 3792 0
	movq	%rbx, %r14	# s, base
	.loc 1 3793 0
	movl	$0, %r15d	#, skipspaces
	.loc 1 3794 0
	nop
.L1306:
	.loc 1 3636 0 discriminator 1
	cmpq	-128(%rbp), %rbx	# %sfp, s
	jbe	.L1360	#,
	.loc 1 3797 0
	movq	%r12, %rax	# fpc, fpc.1850
	leaq	4(%rax), %r12	#, fpc
	movl	$0, (%rax)	#, *fpc.1850_311
	.loc 1 3800 0
	movq	%r12, %rdx	# fpc, fpc.1851
	movq	-72(%rbp), %rax	# fops, fops.1852
	subq	%rax, %rdx	# fops.1852, D.19688
	movq	%rdx, %rax	# D.19688, D.19688
	sarq	$2, %rax	#, tmp254
	movl	%eax, %r13d	# D.19688, arg
.LBB136:
	.loc 1 3803 0
	movq	-120(%rbp), %rax	# sv, tmp255
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	8(%rax), %rax	# MEM[(struct XPV *)_318].xpv_cur, D.19685
	andl	$3, %eax	#, D.19690
	movl	%eax, %edx	# D.19690, D.19690
	movl	$4, %eax	#, tmp256
	subl	%edx, %eax	# D.19690, D.19690
	movl	%eax, -92(%rbp)	# D.19690, z
	.loc 1 3804 0
	movq	-120(%rbp), %rax	# sv, tmp257
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_324].xpv_len, D.19685
	movq	-120(%rbp), %rax	# sv, tmp258
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_326].xpv_cur, D.19685
	movl	-92(%rbp), %eax	# z, tmp259
	cltq
	addq	%rax, %rcx	# D.19685, D.19685
	movslq	%r13d, %rax	# arg, D.19685
	salq	$2, %rax	#, D.19685
	addq	%rcx, %rax	# D.19685, D.19685
	addq	$4, %rax	#, D.19685
	cmpq	%rax, %rdx	# D.19685, D.19685
	jae	.L1362	#,
	.loc 1 3804 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# sv, tmp260
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_334].xpv_cur, D.19685
	movl	-92(%rbp), %eax	# z, tmp261
	cltq
	addq	%rax, %rdx	# D.19685, D.19685
	movslq	%r13d, %rax	# arg, D.19685
	salq	$2, %rax	#, D.19685
	addq	%rdx, %rax	# D.19685, D.19685
	leaq	4(%rax), %rdx	#, D.19685
	movq	-120(%rbp), %rax	# sv, tmp262
	movq	%rdx, %rsi	# D.19685,
	movq	%rax, %rdi	# tmp262,
	call	Perl_sv_grow	#
.L1362:
	.loc 1 3805 0 is_stmt 1
	movq	-120(%rbp), %rax	# sv, tmp264
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	(%rax), %rdx	# MEM[(struct XPV *)_345].xpv_pv, D.19687
	movq	-120(%rbp), %rax	# sv, tmp265
	movq	(%rax), %rax	# sv_66(D)->sv_any, D.19683
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_347].xpv_cur, D.19685
	movl	-92(%rbp), %eax	# z, tmp266
	cltq
	addq	%rcx, %rax	# D.19685, D.19692
	leaq	(%rdx,%rax), %rbx	#, s
.LBE136:
	.loc 1 3807 0
	movslq	%r13d, %rax	# arg, D.19685
	leaq	0(,%rax,4), %rdx	#, D.19685
	movq	-72(%rbp), %rax	# fops, tmp267
	movq	%rax, %rsi	# tmp267,
	movq	%rbx, %rdi	# s,
	call	memcpy	#
	.loc 1 3808 0
	movq	-72(%rbp), %rax	# fops, tmp268
	movq	%rax, %rdi	# tmp268,
	call	Perl_safesysfree	#
	.loc 1 3809 0
	movq	-120(%rbp), %rax	# sv, tmp269
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$102, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	Perl_sv_magic	#
	.loc 1 3810 0
	movq	-120(%rbp), %rax	# sv, tmp270
	movl	12(%rax), %eax	# sv_66(D)->sv_flags, D.19682
	orl	$-2147483648, %eax	#, D.19682
	movl	%eax, %edx	# D.19682, D.19682
	movq	-120(%rbp), %rax	# sv, tmp271
	movl	%edx, 12(%rax)	# D.19682, sv_66(D)->sv_flags
	.loc 1 3812 0
	cmpb	$0, -103(%rbp)	#, unchopnum
	je	.L1363	#,
	.loc 1 3812 0 is_stmt 0 discriminator 1
	cmpb	$0, -105(%rbp)	#, repeat
	je	.L1363	#,
	.loc 1 3813 0 is_stmt 1
	movl	$.LC91, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1365	#
.L1363:
	.loc 1 3814 0
	movl	$0, %eax	#, D.19681
.L1365:
	.loc 1 3815 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	S_doparseform, .-S_doparseform
	.type	S_num_overflow, @function
S_num_overflow:
.LFB61:
	.loc 1 3820 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -40(%rbp)	# value, value
	movl	%edi, -44(%rbp)	# fldsize, fldsize
	movl	%esi, -48(%rbp)	# frcsize, frcsize
	.loc 1 3822 0
	movabsq	$4607182418800017408, %rax	#, tmp69
	movq	%rax, -16(%rbp)	# tmp69, pwr
	.loc 1 3823 0
	movabsq	$4602678819172646912, %rax	#, tmp70
	movq	%rax, -8(%rbp)	# tmp70, eps
	.loc 1 3824 0
	movb	$0, -21(%rbp)	#, res
	.loc 1 3825 0
	xorpd	%xmm0, %xmm0	# tmp71
	ucomisd	-40(%rbp), %xmm0	# value, tmp71
	seta	%al	#, D.19696
	movzbl	%al, %eax	# D.19696, D.19697
	movl	-44(%rbp), %edx	# fldsize, tmp75
	subl	%eax, %edx	# D.19697, tmp74
	movl	%edx, %eax	# tmp74, tmp74
	movl	%eax, -20(%rbp)	# tmp74, intsize
	.loc 1 3827 0
	movl	-48(%rbp), %eax	# frcsize, tmp76
	andl	$256, %eax	#, D.19697
	testl	%eax, %eax	# D.19697
	je	.L1367	#,
	.loc 1 3828 0
	subl	$1, -20(%rbp)	#, intsize
.L1367:
	.loc 1 3829 0
	andl	$255, -48(%rbp)	#, frcsize
	.loc 1 3830 0
	movl	-48(%rbp), %eax	# frcsize, tmp77
	subl	%eax, -20(%rbp)	# tmp77, intsize
	.loc 1 3832 0
	jmp	.L1368	#
.L1369:
	.loc 1 3832 0 is_stmt 0 discriminator 2
	movsd	-16(%rbp), %xmm1	# pwr, tmp79
	movsd	.LC94(%rip), %xmm0	#, tmp80
	mulsd	%xmm1, %xmm0	# tmp79, tmp78
	movsd	%xmm0, -16(%rbp)	# tmp78, pwr
.L1368:
	.loc 1 3832 0 discriminator 1
	movl	-20(%rbp), %eax	# intsize, intsize.1854
	leal	-1(%rax), %edx	#, tmp81
	movl	%edx, -20(%rbp)	# tmp81, intsize
	testl	%eax, %eax	# intsize.1854
	jne	.L1369	#,
	.loc 1 3833 0 is_stmt 1
	jmp	.L1370	#
.L1371:
	.loc 1 3833 0 is_stmt 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# eps, tmp83
	movsd	.LC94(%rip), %xmm1	#, tmp84
	divsd	%xmm1, %xmm0	# tmp84, tmp82
	movsd	%xmm0, -8(%rbp)	# tmp82, eps
.L1370:
	.loc 1 3833 0 discriminator 1
	movl	-48(%rbp), %eax	# frcsize, frcsize.1855
	leal	-1(%rax), %edx	#, tmp85
	movl	%edx, -48(%rbp)	# tmp85, frcsize
	testl	%eax, %eax	# frcsize.1855
	jne	.L1371	#,
	.loc 1 3835 0 is_stmt 1
	movsd	-40(%rbp), %xmm0	# value, tmp86
	xorpd	%xmm1, %xmm1	# tmp87
	ucomisd	%xmm1, %xmm0	# tmp87, tmp86
	jb	.L1382	#,
	.loc 1 3836 0
	movsd	-40(%rbp), %xmm0	# value, tmp88
	addsd	-8(%rbp), %xmm0	# eps, D.19698
	ucomisd	-16(%rbp), %xmm0	# pwr, D.19698
	jae	.L1380	#,
	jmp	.L1376	#
.L1380:
	.loc 1 3837 0
	movb	$1, -21(%rbp)	#, res
	jmp	.L1376	#
.L1382:
	.loc 1 3839 0
	movsd	-40(%rbp), %xmm0	# value, tmp89
	movapd	%xmm0, %xmm1	# tmp89, D.19698
	subsd	-8(%rbp), %xmm1	# eps, D.19698
	movsd	-16(%rbp), %xmm2	# pwr, tmp90
	movsd	.LC95(%rip), %xmm0	#, tmp91
	xorpd	%xmm2, %xmm0	# tmp90, D.19698
	ucomisd	%xmm1, %xmm0	# D.19698, D.19698
	jb	.L1376	#,
	.loc 1 3840 0
	movb	$1, -21(%rbp)	#, res
.L1376:
	.loc 1 3842 0
	movzbl	-21(%rbp), %eax	# res, D.19699
	.loc 1 3843 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	S_num_overflow, .-S_num_overflow
	.type	run_user_filter, @function
run_user_filter:
.LFB62:
	.loc 1 3847 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# idx, idx
	movq	%rsi, -96(%rbp)	# buf_sv, buf_sv
	movl	%edx, -88(%rbp)	# maxlen, maxlen
	.loc 1 3848 0
	movq	PL_rsfp_filters(%rip), %rax	# PL_rsfp_filters, PL_rsfp_filters.1856
	movq	(%rax), %rax	# PL_rsfp_filters.1856_8->sv_any, D.19700
	movq	(%rax), %rax	# _9->xav_array, D.19701
	movl	-84(%rbp), %edx	# idx, tmp116
	movslq	%edx, %rdx	# tmp116, D.19702
	salq	$3, %rdx	#, D.19702
	addq	%rdx, %rax	# D.19702, D.19703
	movq	(%rax), %rax	# *_14, tmp117
	movq	%rax, -56(%rbp)	# tmp117, datasv
	.loc 1 3849 0
	movq	-56(%rbp), %rax	# datasv, tmp118
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	80(%rax), %rax	# MEM[(struct XPVIO *)_16].xio_lines, D.19705
	movl	%eax, -64(%rbp)	# D.19705, filter_has_file
	.loc 1 3850 0
	movq	-56(%rbp), %rax	# datasv, tmp119
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	136(%rax), %rax	# MEM[(struct XPVIO *)_19].xio_fmt_gv, tmp120
	movq	%rax, -48(%rbp)	# tmp120, filter_child_proc
	.loc 1 3851 0
	movq	-56(%rbp), %rax	# datasv, tmp121
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	120(%rax), %rax	# MEM[(struct XPVIO *)_21].xio_top_gv, tmp122
	movq	%rax, -40(%rbp)	# tmp122, filter_state
	.loc 1 3852 0
	movq	-56(%rbp), %rax	# datasv, tmp123
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	152(%rax), %rax	# MEM[(struct XPVIO *)_23].xio_bottom_gv, tmp124
	movq	%rax, -32(%rbp)	# tmp124, filter_sub
	.loc 1 3853 0
	movl	$0, -68(%rbp)	#, len
	.loc 1 3860 0
	cmpl	$0, -64(%rbp)	#, filter_has_file
	je	.L1384	#,
	.loc 1 3861 0
	movl	-84(%rbp), %eax	# idx, tmp125
	leal	1(%rax), %ecx	#, D.19706
	movl	-88(%rbp), %edx	# maxlen, tmp126
	movq	-96(%rbp), %rax	# buf_sv, tmp127
	movq	%rax, %rsi	# tmp127,
	movl	%ecx, %edi	# D.19706,
	call	Perl_filter_read	#
	movl	%eax, -68(%rbp)	# tmp128, len
.L1384:
	.loc 1 3864 0
	cmpq	$0, -32(%rbp)	#, filter_sub
	je	.L1385	#,
	.loc 1 3864 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, len
	js	.L1385	#,
.LBB137:
	.loc 1 3865 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3868 0
	call	Perl_push_scope	#
	.loc 1 3869 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1857
	movq	(%rax), %rax	# PL_defgv.1857_31->sv_any, D.19707
	movq	56(%rax), %rax	# _32->xgv_gp, D.19708
	movq	%rax, %rdi	# D.19703,
	call	Perl_save_sptr	#
	.loc 1 3870 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1858
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1858, PL_tmps_floor
	.loc 1 3871 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1859
	movq	%rax, %rdx	# PL_stack_max.1859, PL_stack_max.1860
	movq	%rbx, %rax	# sp, sp.1861
	subq	%rax, %rdx	# sp.1861, D.19705
	movq	%rdx, %rax	# D.19705, D.19705
	cmpq	$15, %rax	#, D.19705
	jg	.L1386	#,
	.loc 1 3871 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1386:
	.loc 1 3873 0 is_stmt 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1862
	movq	(%rax), %rax	# PL_defgv.1862_41->sv_any, D.19707
	movq	56(%rax), %rax	# _42->xgv_gp, D.19708
	movq	-96(%rbp), %rdx	# buf_sv, tmp129
	movq	%rdx, (%rax)	# tmp129, _43->gp_sv
.LBB138:
	.loc 1 3874 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1863
	addq	$4, %rax	#, PL_markstack_ptr.1864
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1864, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.1865
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.1866
	cmpq	%rax, %rdx	# PL_markstack_max.1866, PL_markstack_ptr.1865
	jne	.L1387	#,
	.loc 1 3874 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L1387:
	.loc 1 3874 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1867
	movq	%rbx, %rcx	# sp, sp.1868
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1869
	subq	%rdx, %rcx	# PL_stack_base.1870, D.19705
	movq	%rcx, %rdx	# D.19705, D.19705
	sarq	$3, %rdx	#, tmp130
	movl	%edx, (%rax)	# D.19706, *PL_markstack_ptr.1867_48
.LBE138:
	.loc 1 3875 0 is_stmt 1 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-88(%rbp), %eax	# maxlen, tmp131
	cltq
	movq	%rax, %rdi	# D.19705,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.19710,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.19710, *sp_56
	.loc 1 3876 0 discriminator 2
	cmpq	$0, -40(%rbp)	#, filter_state
	je	.L1388	#,
	.loc 1 3877 0
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# filter_state, tmp132
	movq	%rax, (%rbx)	# tmp132, *sp_60
.L1388:
	.loc 1 3879 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3880 0
	movq	-32(%rbp), %rax	# filter_sub, tmp133
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	Perl_call_sv	#
	movl	%eax, -60(%rbp)	# tmp134, count
	.loc 1 3881 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3883 0
	cmpl	$0, -60(%rbp)	#, count
	jle	.L1389	#,
.LBB139:
	.loc 1 3884 0
	movq	%rbx, %rax	# sp, sp.1871
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1871_63, tmp135
	movq	%rax, -24(%rbp)	# tmp135, out
	.loc 1 3885 0
	movq	-24(%rbp), %rax	# out, tmp136
	movl	12(%rax), %eax	# out_65->sv_flags, D.19711
	andl	$118423552, %eax	#, D.19711
	testl	%eax, %eax	# D.19711
	je	.L1389	#,
	.loc 1 3886 0
	movq	-24(%rbp), %rax	# out, tmp137
	movl	12(%rax), %eax	# out_65->sv_flags, D.19711
	andl	$65536, %eax	#, D.19711
	testl	%eax, %eax	# D.19711
	je	.L1390	#,
	.loc 1 3886 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# out, tmp138
	movq	(%rax), %rax	# out_65->sv_any, D.19704
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_70].xiv_iv, D.19705
	jmp	.L1391	#
.L1390:
	.loc 1 3886 0 discriminator 2
	movq	-24(%rbp), %rax	# out, tmp139
	movq	%rax, %rdi	# tmp139,
	call	Perl_sv_2iv	#
.L1391:
	.loc 1 3886 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.1872, len
.L1389:
.LBE139:
	.loc 1 3890 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 3891 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1873
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1874
	cmpl	%eax, %edx	# PL_tmps_floor.1874, PL_tmps_ix.1873
	jle	.L1392	#,
	.loc 1 3891 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L1392:
	.loc 1 3892 0 is_stmt 1
	call	Perl_pop_scope	#
.L1385:
.LBE137:
	.loc 1 3895 0
	cmpl	$0, -68(%rbp)	#, len
	jg	.L1393	#,
	.loc 1 3896 0
	movq	-56(%rbp), %rax	# datasv, tmp140
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	$0, 80(%rax)	#, MEM[(struct XPVIO *)_78].xio_lines
	.loc 1 3897 0
	cmpq	$0, -48(%rbp)	#, filter_child_proc
	je	.L1394	#,
	.loc 1 3898 0
	movq	-48(%rbp), %rax	# filter_child_proc, tmp141
	movq	%rax, %rdi	# tmp141,
	call	Perl_sv_free	#
	.loc 1 3899 0
	movq	-56(%rbp), %rax	# datasv, tmp142
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	$0, 136(%rax)	#, MEM[(struct XPVIO *)_79].xio_fmt_gv
.L1394:
	.loc 1 3901 0
	cmpq	$0, -40(%rbp)	#, filter_state
	je	.L1395	#,
	.loc 1 3902 0
	movq	-40(%rbp), %rax	# filter_state, tmp143
	movq	%rax, %rdi	# tmp143,
	call	Perl_sv_free	#
	.loc 1 3903 0
	movq	-56(%rbp), %rax	# datasv, tmp144
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	$0, 120(%rax)	#, MEM[(struct XPVIO *)_80].xio_top_gv
.L1395:
	.loc 1 3905 0
	cmpq	$0, -32(%rbp)	#, filter_sub
	je	.L1396	#,
	.loc 1 3906 0
	movq	-32(%rbp), %rax	# filter_sub, tmp145
	movq	%rax, %rdi	# tmp145,
	call	Perl_sv_free	#
	.loc 1 3907 0
	movq	-56(%rbp), %rax	# datasv, tmp146
	movq	(%rax), %rax	# datasv_15->sv_any, D.19704
	movq	$0, 152(%rax)	#, MEM[(struct XPVIO *)_81].xio_bottom_gv
.L1396:
	.loc 1 3909 0
	movl	$run_user_filter, %edi	#,
	call	Perl_filter_del	#
.L1393:
	.loc 1 3912 0
	movl	-68(%rbp), %eax	# len, D.19709
	.loc 1 3913 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	run_user_filter, .-run_user_filter
	.type	S_path_is_absolute, @function
S_path_is_absolute:
.LFB63:
	.loc 1 3919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# name, name
	.loc 1 3920 0
	movq	-8(%rbp), %rax	# name, tmp69
	movzbl	(%rax), %eax	# *name_2(D), D.19712
	cmpb	$47, %al	#, D.19712
	je	.L1399	#,
	.loc 1 3924 0
	movq	-8(%rbp), %rax	# name, tmp70
	movzbl	(%rax), %eax	# *name_2(D), D.19712
	cmpb	$46, %al	#, D.19712
	jne	.L1400	#,
	.loc 1 3924 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp71
	addq	$1, %rax	#, D.19713
	movzbl	(%rax), %eax	# *_5, D.19712
	cmpb	$47, %al	#, D.19712
	je	.L1399	#,
	.loc 1 3925 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp72
	addq	$1, %rax	#, D.19713
	movzbl	(%rax), %eax	# *_7, D.19712
	.loc 1 3924 0 discriminator 1
	cmpb	$46, %al	#, D.19712
	jne	.L1400	#,
	.loc 1 3925 0
	movq	-8(%rbp), %rax	# name, tmp73
	addq	$2, %rax	#, D.19713
	movzbl	(%rax), %eax	# *_9, D.19712
	cmpb	$47, %al	#, D.19712
	jne	.L1400	#,
.L1399:
	.loc 1 3928 0
	movl	$1, %eax	#, D.19712
	jmp	.L1401	#
.L1400:
	.loc 1 3931 0
	movl	$0, %eax	#, D.19712
.L1401:
	.loc 1 3932 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	S_path_is_absolute, .-S_path_is_absolute
	.data
	.type	prefix.10700, @object
	.size	prefix.10700, 15
prefix.10700:
	.string	"\t(in cleanup) "
	.align 32
	.type	too_deep.10885, @object
	.size	too_deep.10885, 36
too_deep.10885:
	.string	"Target of goto is too deeply nested"
	.align 16
	.type	must_have_label.10906, @object
	.size	must_have_label.10906, 21
must_have_label.10906:
	.string	"goto must have label"
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	-1008730112
	.align 8
.LC14:
	.long	0
	.long	1138753536
	.align 8
.LC67:
	.long	1058840693
	.long	1075054643
	.align 8
.LC68:
	.long	0
	.long	1083129856
	.align 8
.LC69:
	.long	1216334738
	.long	1062043071
	.align 8
.LC94:
	.long	0
	.long	1076101120
	.align 16
.LC95:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 8 "/usr/include/setjmp.h"
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
	.file 23 "pad.h"
	.file 24 "scope.h"
	.file 25 "utf8.h"
	.file 26 "opcode.h"
	.file 27 "intrpvar.h"
	.file 28 "thrdvar.h"
	.file 29 "perlvars.h"
	.file 30 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x545a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1068
	.byte	0x1
	.long	.LASF1069
	.long	.LASF1070
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa7
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xb8
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x4
	.long	.LASF21
	.byte	0x3
	.byte	0x6d
	.long	0xdc
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.byte	0x80
	.byte	0x5
	.byte	0x1c
	.long	0x12a
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0x1e
	.long	0x12a
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x42
	.long	0x13a
	.uleb128 0xa
	.long	0xb2
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x5
	.byte	0x1f
	.long	0x115
	.uleb128 0xb
	.long	.LASF30
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x16a
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.byte	0x7a
	.long	0xb9
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.byte	0x7b
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF28
	.uleb128 0xc
	.long	0x57
	.uleb128 0x9
	.long	0xf8
	.long	0x18d
	.uleb128 0xa
	.long	0xb2
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x193
	.uleb128 0xd
	.long	0xf8
	.uleb128 0x4
	.long	.LASF29
	.byte	0x7
	.byte	0x1f
	.long	0x1a3
	.uleb128 0x9
	.long	0x5e
	.long	0x1b3
	.uleb128 0xa
	.long	0xb2
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0xc8
	.byte	0x8
	.byte	0x22
	.long	0x1e4
	.uleb128 0x8
	.long	.LASF32
	.byte	0x8
	.byte	0x28
	.long	0x198
	.byte	0
	.uleb128 0x8
	.long	.LASF33
	.byte	0x8
	.byte	0x29
	.long	0x57
	.byte	0x40
	.uleb128 0x8
	.long	.LASF34
	.byte	0x8
	.byte	0x2a
	.long	0x13a
	.byte	0x48
	.byte	0
	.uleb128 0x9
	.long	0x1b3
	.long	0x1f4
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF35
	.byte	0x8
	.byte	0x63
	.long	0x1e4
	.uleb128 0xb
	.long	.LASF36
	.byte	0x90
	.byte	0x9
	.byte	0x2e
	.long	0x2c0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x9
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF41
	.byte	0x9
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF42
	.byte	0x9
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF43
	.byte	0x9
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF44
	.byte	0x9
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF45
	.byte	0x9
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF46
	.byte	0x9
	.byte	0x4e
	.long	0xc6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xd1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0x5b
	.long	0x145
	.byte	0x48
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0x5c
	.long	0x145
	.byte	0x58
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0x5d
	.long	0x145
	.byte	0x68
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0x6a
	.long	0x2c0
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0xe7
	.long	0x2d0
	.uleb128 0xa
	.long	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"DIR"
	.byte	0xa
	.byte	0x80
	.long	0x2db
	.uleb128 0xf
	.long	.LASF253
	.uleb128 0x10
	.string	"IV"
	.byte	0xb
	.value	0x52b
	.long	0x5e
	.uleb128 0x10
	.string	"UV"
	.byte	0xb
	.value	0x52c
	.long	0x42
	.uleb128 0x10
	.string	"NV"
	.byte	0xb
	.value	0x5f3
	.long	0x301
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF52
	.uleb128 0x11
	.long	.LASF53
	.byte	0xb
	.value	0x7d3
	.long	0x10a
	.uleb128 0x10
	.string	"OP"
	.byte	0xb
	.value	0x7d5
	.long	0x31f
	.uleb128 0x12
	.string	"op"
	.byte	0x28
	.byte	0xc
	.byte	0xe2
	.long	0x38b
	.uleb128 0x8
	.long	.LASF54
	.byte	0xc
	.byte	0xe3
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0xe3
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0xe3
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0xe3
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0xe3
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0xe3
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0xe3
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0xe3
	.long	0x13f9
	.byte	0x25
	.byte	0
	.uleb128 0x10
	.string	"COP"
	.byte	0xb
	.value	0x7d6
	.long	0x397
	.uleb128 0x12
	.string	"cop"
	.byte	0x60
	.byte	0xd
	.byte	0x10
	.long	0x464
	.uleb128 0x8
	.long	.LASF54
	.byte	0xd
	.byte	0x11
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xd
	.byte	0x11
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xd
	.byte	0x11
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xd
	.byte	0x11
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xd
	.byte	0x11
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xd
	.byte	0x11
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xd
	.byte	0x11
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xd
	.byte	0x11
	.long	0x13f9
	.byte	0x25
	.uleb128 0x8
	.long	.LASF62
	.byte	0xd
	.byte	0x12
	.long	0xf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF63
	.byte	0xd
	.byte	0x17
	.long	0x1584
	.byte	0x30
	.uleb128 0x8
	.long	.LASF64
	.byte	0xd
	.byte	0x18
	.long	0x15b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF65
	.byte	0xd
	.byte	0x1a
	.long	0x1419
	.byte	0x40
	.uleb128 0x8
	.long	.LASF66
	.byte	0xd
	.byte	0x1b
	.long	0x140e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF67
	.byte	0xd
	.byte	0x1c
	.long	0x1424
	.byte	0x48
	.uleb128 0x8
	.long	.LASF68
	.byte	0xd
	.byte	0x1d
	.long	0x1441
	.byte	0x50
	.uleb128 0x8
	.long	.LASF69
	.byte	0xd
	.byte	0x1e
	.long	0x1441
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF70
	.byte	0xb
	.value	0x7d7
	.long	0x470
	.uleb128 0xb
	.long	.LASF71
	.byte	0x30
	.byte	0xc
	.byte	0xe6
	.long	0x4e9
	.uleb128 0x8
	.long	.LASF54
	.byte	0xc
	.byte	0xe7
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0xe7
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0xe7
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0xe7
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0xe7
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0xe7
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0xe7
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0xe7
	.long	0x13f9
	.byte	0x25
	.uleb128 0x8
	.long	.LASF72
	.byte	0xc
	.byte	0xe8
	.long	0x159c
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xb
	.value	0x7d9
	.long	0x4f5
	.uleb128 0xb
	.long	.LASF74
	.byte	0x38
	.byte	0xc
	.byte	0xf7
	.long	0x57a
	.uleb128 0x8
	.long	.LASF54
	.byte	0xc
	.byte	0xf8
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0xf8
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0xf8
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0xf8
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0xf8
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0xf8
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0xf8
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0xf8
	.long	0x13f9
	.byte	0x25
	.uleb128 0x8
	.long	.LASF72
	.byte	0xc
	.byte	0xf9
	.long	0x159c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF75
	.byte	0xc
	.byte	0xfa
	.long	0x159c
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0xb
	.value	0x7da
	.long	0x586
	.uleb128 0xb
	.long	.LASF77
	.byte	0x38
	.byte	0xc
	.byte	0xf1
	.long	0x60b
	.uleb128 0x8
	.long	.LASF54
	.byte	0xc
	.byte	0xf2
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0xf2
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0xf2
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0xf2
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0xf2
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0xf2
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0xf2
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0xf2
	.long	0x13f9
	.byte	0x25
	.uleb128 0x8
	.long	.LASF72
	.byte	0xc
	.byte	0xf3
	.long	0x159c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF78
	.byte	0xc
	.byte	0xf4
	.long	0x159c
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF79
	.byte	0xb
	.value	0x7db
	.long	0x617
	.uleb128 0xb
	.long	.LASF80
	.byte	0x70
	.byte	0xc
	.byte	0xfd
	.long	0x705
	.uleb128 0x8
	.long	.LASF54
	.byte	0xc
	.byte	0xfe
	.long	0x159c
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0xc
	.byte	0xfe
	.long	0x159c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0xc
	.byte	0xfe
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0xfe
	.long	0x1615
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0xc
	.byte	0xfe
	.long	0x1403
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0xc
	.byte	0xfe
	.long	0x1403
	.byte	0x22
	.uleb128 0x8
	.long	.LASF60
	.byte	0xc
	.byte	0xfe
	.long	0x13f9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0xc
	.byte	0xfe
	.long	0x13f9
	.byte	0x25
	.uleb128 0x8
	.long	.LASF72
	.byte	0xc
	.byte	0xff
	.long	0x159c
	.byte	0x28
	.uleb128 0x13
	.long	.LASF75
	.byte	0xc
	.value	0x100
	.long	0x159c
	.byte	0x30
	.uleb128 0x13
	.long	.LASF81
	.byte	0xc
	.value	0x101
	.long	0x159c
	.byte	0x38
	.uleb128 0x13
	.long	.LASF82
	.byte	0xc
	.value	0x102
	.long	0x159c
	.byte	0x40
	.uleb128 0x13
	.long	.LASF83
	.byte	0xc
	.value	0x103
	.long	0x1fa5
	.byte	0x48
	.uleb128 0x13
	.long	.LASF84
	.byte	0xc
	.value	0x107
	.long	0x1fab
	.byte	0x50
	.uleb128 0x13
	.long	.LASF85
	.byte	0xc
	.value	0x109
	.long	0x1419
	.byte	0x58
	.uleb128 0x13
	.long	.LASF86
	.byte	0xc
	.value	0x10a
	.long	0x1419
	.byte	0x5c
	.uleb128 0x13
	.long	.LASF87
	.byte	0xc
	.value	0x10b
	.long	0x13f9
	.byte	0x60
	.uleb128 0x13
	.long	.LASF88
	.byte	0xc
	.value	0x10f
	.long	0x1584
	.byte	0x68
	.byte	0
	.uleb128 0x11
	.long	.LASF89
	.byte	0xb
	.value	0x7de
	.long	0x711
	.uleb128 0x14
	.long	.LASF90
	.byte	0x30
	.byte	0xc
	.value	0x156
	.long	0x794
	.uleb128 0x13
	.long	.LASF54
	.byte	0xc
	.value	0x157
	.long	0x159c
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0xc
	.value	0x157
	.long	0x159c
	.byte	0x8
	.uleb128 0x13
	.long	.LASF56
	.byte	0xc
	.value	0x157
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF57
	.byte	0xc
	.value	0x157
	.long	0x1615
	.byte	0x18
	.uleb128 0x13
	.long	.LASF58
	.byte	0xc
	.value	0x157
	.long	0x1403
	.byte	0x20
	.uleb128 0x13
	.long	.LASF59
	.byte	0xc
	.value	0x157
	.long	0x1403
	.byte	0x22
	.uleb128 0x13
	.long	.LASF60
	.byte	0xc
	.value	0x157
	.long	0x13f9
	.byte	0x24
	.uleb128 0x13
	.long	.LASF61
	.byte	0xc
	.value	0x157
	.long	0x13f9
	.byte	0x25
	.uleb128 0x13
	.long	.LASF91
	.byte	0xc
	.value	0x158
	.long	0xf2
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0xb
	.value	0x7df
	.long	0x7a0
	.uleb128 0x14
	.long	.LASF93
	.byte	0x50
	.byte	0xc
	.value	0x15b
	.long	0x857
	.uleb128 0x13
	.long	.LASF54
	.byte	0xc
	.value	0x15c
	.long	0x159c
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0xc
	.value	0x15c
	.long	0x159c
	.byte	0x8
	.uleb128 0x13
	.long	.LASF56
	.byte	0xc
	.value	0x15c
	.long	0x1f9f
	.byte	0x10
	.uleb128 0x13
	.long	.LASF57
	.byte	0xc
	.value	0x15c
	.long	0x1615
	.byte	0x18
	.uleb128 0x13
	.long	.LASF58
	.byte	0xc
	.value	0x15c
	.long	0x1403
	.byte	0x20
	.uleb128 0x13
	.long	.LASF59
	.byte	0xc
	.value	0x15c
	.long	0x1403
	.byte	0x22
	.uleb128 0x13
	.long	.LASF60
	.byte	0xc
	.value	0x15c
	.long	0x13f9
	.byte	0x24
	.uleb128 0x13
	.long	.LASF61
	.byte	0xc
	.value	0x15c
	.long	0x13f9
	.byte	0x25
	.uleb128 0x13
	.long	.LASF72
	.byte	0xc
	.value	0x15d
	.long	0x159c
	.byte	0x28
	.uleb128 0x13
	.long	.LASF75
	.byte	0xc
	.value	0x15e
	.long	0x159c
	.byte	0x30
	.uleb128 0x13
	.long	.LASF94
	.byte	0xc
	.value	0x15f
	.long	0x159c
	.byte	0x38
	.uleb128 0x13
	.long	.LASF95
	.byte	0xc
	.value	0x160
	.long	0x159c
	.byte	0x40
	.uleb128 0x13
	.long	.LASF96
	.byte	0xc
	.value	0x161
	.long	0x159c
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.long	.LASF97
	.byte	0xb
	.value	0x7e1
	.long	0x863
	.uleb128 0x14
	.long	.LASF98
	.byte	0x1
	.byte	0xb
	.value	0xea7
	.long	0x87e
	.uleb128 0x13
	.long	.LASF99
	.byte	0xb
	.value	0xea8
	.long	0xf8
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"SV"
	.byte	0xb
	.value	0x7ea
	.long	0x889
	.uleb128 0x12
	.string	"sv"
	.byte	0x10
	.byte	0xe
	.byte	0x43
	.long	0x8b9
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x44
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x45
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x46
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"AV"
	.byte	0xb
	.value	0x7eb
	.long	0x8c4
	.uleb128 0x12
	.string	"av"
	.byte	0x10
	.byte	0xe
	.byte	0x55
	.long	0x8f4
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x56
	.long	0x156c
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x57
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x58
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"HV"
	.byte	0xb
	.value	0x7ec
	.long	0x8ff
	.uleb128 0x12
	.string	"hv"
	.byte	0x10
	.byte	0xe
	.byte	0x5b
	.long	0x92f
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x5c
	.long	0x1572
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x5d
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x5e
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"CV"
	.byte	0xb
	.value	0x7ed
	.long	0x93a
	.uleb128 0x12
	.string	"cv"
	.byte	0x10
	.byte	0xe
	.byte	0x4f
	.long	0x96a
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x50
	.long	0x1566
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x51
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x52
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0xb
	.value	0x7ee
	.long	0x976
	.uleb128 0xb
	.long	.LASF104
	.byte	0x68
	.byte	0xf
	.byte	0x1f
	.long	0xa4f
	.uleb128 0x8
	.long	.LASF105
	.byte	0xf
	.byte	0x20
	.long	0x14b4
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.byte	0xf
	.byte	0x21
	.long	0x14b4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF107
	.byte	0xf
	.byte	0x22
	.long	0x14ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF108
	.byte	0xf
	.byte	0x23
	.long	0x14c5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF109
	.byte	0xf
	.byte	0x24
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF110
	.byte	0xf
	.byte	0x25
	.long	0x14d0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF111
	.byte	0xf
	.byte	0x26
	.long	0xf2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF112
	.byte	0xf
	.byte	0x28
	.long	0x14d6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF113
	.byte	0xf
	.byte	0x29
	.long	0x140e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF114
	.byte	0xf
	.byte	0x2a
	.long	0x140e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF115
	.byte	0xf
	.byte	0x2b
	.long	0x140e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF116
	.byte	0xf
	.byte	0x2c
	.long	0x140e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF117
	.byte	0xf
	.byte	0x2d
	.long	0x1419
	.byte	0x50
	.uleb128 0x8
	.long	.LASF118
	.byte	0xf
	.byte	0x2e
	.long	0x1419
	.byte	0x54
	.uleb128 0x8
	.long	.LASF119
	.byte	0xf
	.byte	0x2f
	.long	0x1419
	.byte	0x58
	.uleb128 0x8
	.long	.LASF120
	.byte	0xf
	.byte	0x30
	.long	0x1419
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF121
	.byte	0xf
	.byte	0x32
	.long	0x14dc
	.byte	0x60
	.byte	0
	.uleb128 0x10
	.string	"GP"
	.byte	0xb
	.value	0x7ef
	.long	0xa5a
	.uleb128 0x12
	.string	"gp"
	.byte	0x58
	.byte	0x10
	.byte	0xb
	.long	0xaf6
	.uleb128 0x8
	.long	.LASF122
	.byte	0x10
	.byte	0xc
	.long	0x1441
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0x10
	.byte	0xd
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0x10
	.byte	0xe
	.long	0x15f9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF125
	.byte	0x10
	.byte	0xf
	.long	0x15ad
	.byte	0x18
	.uleb128 0x8
	.long	.LASF126
	.byte	0x10
	.byte	0x10
	.long	0x15bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF127
	.byte	0x10
	.byte	0x11
	.long	0x1584
	.byte	0x28
	.uleb128 0x8
	.long	.LASF128
	.byte	0x10
	.byte	0x12
	.long	0x15b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF129
	.byte	0x10
	.byte	0x13
	.long	0x15ad
	.byte	0x38
	.uleb128 0x8
	.long	.LASF130
	.byte	0x10
	.byte	0x14
	.long	0x1419
	.byte	0x40
	.uleb128 0x8
	.long	.LASF131
	.byte	0x10
	.byte	0x15
	.long	0x1419
	.byte	0x44
	.uleb128 0x8
	.long	.LASF132
	.byte	0x10
	.byte	0x16
	.long	0x1424
	.byte	0x48
	.uleb128 0x8
	.long	.LASF133
	.byte	0x10
	.byte	0x17
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.string	"GV"
	.byte	0xb
	.value	0x7f0
	.long	0xb01
	.uleb128 0x12
	.string	"gv"
	.byte	0x10
	.byte	0xe
	.byte	0x49
	.long	0xb31
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x4a
	.long	0x1560
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x4b
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x4c
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"IO"
	.byte	0xb
	.value	0x7f1
	.long	0xb3c
	.uleb128 0x12
	.string	"io"
	.byte	0x10
	.byte	0xe
	.byte	0x61
	.long	0xb6c
	.uleb128 0x8
	.long	.LASF100
	.byte	0xe
	.byte	0x62
	.long	0x1578
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0xe
	.byte	0x63
	.long	0x1419
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0xe
	.byte	0x64
	.long	0x1419
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF134
	.byte	0xb
	.value	0x7f2
	.long	0xb78
	.uleb128 0x14
	.long	.LASF135
	.byte	0x90
	.byte	0xd
	.value	0x1a2
	.long	0xba0
	.uleb128 0x13
	.long	.LASF136
	.byte	0xd
	.value	0x1a3
	.long	0x1419
	.byte	0
	.uleb128 0x13
	.long	.LASF137
	.byte	0xd
	.value	0x1a7
	.long	0x2212
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF138
	.byte	0x88
	.byte	0xd
	.value	0x130
	.long	0xc16
	.uleb128 0x13
	.long	.LASF139
	.byte	0xd
	.value	0x131
	.long	0x140e
	.byte	0
	.uleb128 0x13
	.long	.LASF140
	.byte	0xd
	.value	0x132
	.long	0x2148
	.byte	0x8
	.uleb128 0x13
	.long	.LASF141
	.byte	0xd
	.value	0x133
	.long	0x140e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF142
	.byte	0xd
	.value	0x134
	.long	0x140e
	.byte	0x14
	.uleb128 0x13
	.long	.LASF143
	.byte	0xd
	.value	0x135
	.long	0x140e
	.byte	0x18
	.uleb128 0x13
	.long	.LASF144
	.byte	0xd
	.value	0x136
	.long	0x1fa5
	.byte	0x20
	.uleb128 0x13
	.long	.LASF145
	.byte	0xd
	.value	0x137
	.long	0x13f9
	.byte	0x28
	.uleb128 0x13
	.long	.LASF146
	.byte	0xd
	.value	0x13d
	.long	0x211a
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x7f5
	.long	0xc22
	.uleb128 0xb
	.long	.LASF148
	.byte	0x30
	.byte	0x11
	.byte	0x1a
	.long	0xc8f
	.uleb128 0x8
	.long	.LASF149
	.byte	0x11
	.byte	0x1b
	.long	0x157e
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0x11
	.byte	0x1c
	.long	0x23c1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF151
	.byte	0x11
	.byte	0x1d
	.long	0x1403
	.byte	0x10
	.uleb128 0x8
	.long	.LASF152
	.byte	0x11
	.byte	0x1e
	.long	0xf8
	.byte	0x12
	.uleb128 0x8
	.long	.LASF153
	.byte	0x11
	.byte	0x1f
	.long	0x13f9
	.byte	0x13
	.uleb128 0x8
	.long	.LASF154
	.byte	0x11
	.byte	0x20
	.long	0x1441
	.byte	0x18
	.uleb128 0x8
	.long	.LASF155
	.byte	0x11
	.byte	0x21
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF156
	.byte	0x11
	.byte	0x22
	.long	0x140e
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.string	"XRV"
	.byte	0xb
	.value	0x7f6
	.long	0xc9b
	.uleb128 0x12
	.string	"xrv"
	.byte	0x8
	.byte	0xe
	.byte	0xf5
	.long	0xcb4
	.uleb128 0x8
	.long	.LASF157
	.byte	0xe
	.byte	0xf6
	.long	0x1441
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"XPV"
	.byte	0xb
	.value	0x7f7
	.long	0xcc0
	.uleb128 0x12
	.string	"xpv"
	.byte	0x18
	.byte	0xe
	.byte	0xf9
	.long	0xcf1
	.uleb128 0x8
	.long	.LASF158
	.byte	0xe
	.byte	0xfa
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF159
	.byte	0xe
	.byte	0xfb
	.long	0x308
	.byte	0x8
	.uleb128 0x8
	.long	.LASF160
	.byte	0xe
	.byte	0xfc
	.long	0x308
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF161
	.byte	0xb
	.value	0x7f8
	.long	0xcfd
	.uleb128 0xb
	.long	.LASF162
	.byte	0x20
	.byte	0xe
	.byte	0xff
	.long	0xd3e
	.uleb128 0x13
	.long	.LASF158
	.byte	0xe
	.value	0x100
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0xe
	.value	0x101
	.long	0x308
	.byte	0x8
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x102
	.long	0x308
	.byte	0x10
	.uleb128 0x13
	.long	.LASF163
	.byte	0xe
	.value	0x103
	.long	0x2e0
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF164
	.byte	0xb
	.value	0x7fa
	.long	0xd4a
	.uleb128 0x14
	.long	.LASF165
	.byte	0x28
	.byte	0xe
	.value	0x10d
	.long	0xd99
	.uleb128 0x13
	.long	.LASF158
	.byte	0xe
	.value	0x10e
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0xe
	.value	0x10f
	.long	0x308
	.byte	0x8
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x110
	.long	0x308
	.byte	0x10
	.uleb128 0x13
	.long	.LASF163
	.byte	0xe
	.value	0x111
	.long	0x2e0
	.byte	0x18
	.uleb128 0x13
	.long	.LASF166
	.byte	0xe
	.value	0x112
	.long	0x2f6
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF167
	.byte	0xb
	.value	0x7fd
	.long	0xda5
	.uleb128 0xb
	.long	.LASF168
	.byte	0x50
	.byte	0x12
	.byte	0xb
	.long	0xe2a
	.uleb128 0x8
	.long	.LASF169
	.byte	0x12
	.byte	0xc
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF170
	.byte	0x12
	.byte	0xd
	.long	0xff
	.byte	0x8
	.uleb128 0x8
	.long	.LASF171
	.byte	0x12
	.byte	0xe
	.long	0xff
	.byte	0x10
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0xf
	.long	0x2e0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF166
	.byte	0x12
	.byte	0x10
	.long	0x2f6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF173
	.byte	0x12
	.byte	0x11
	.long	0x157e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF174
	.byte	0x12
	.byte	0x12
	.long	0x1584
	.byte	0x30
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x14
	.long	0x2114
	.byte	0x38
	.uleb128 0x8
	.long	.LASF176
	.byte	0x12
	.byte	0x15
	.long	0x1441
	.byte	0x40
	.uleb128 0x8
	.long	.LASF177
	.byte	0x12
	.byte	0x16
	.long	0x13f9
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.long	.LASF178
	.byte	0xb
	.value	0x7fe
	.long	0xe36
	.uleb128 0xb
	.long	.LASF179
	.byte	0x58
	.byte	0x13
	.byte	0x22
	.long	0xec7
	.uleb128 0x8
	.long	.LASF180
	.byte	0x13
	.byte	0x23
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x13
	.byte	0x24
	.long	0x308
	.byte	0x8
	.uleb128 0x8
	.long	.LASF182
	.byte	0x13
	.byte	0x25
	.long	0x308
	.byte	0x10
	.uleb128 0x8
	.long	.LASF183
	.byte	0x13
	.byte	0x26
	.long	0x2e0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF166
	.byte	0x13
	.byte	0x27
	.long	0x2f6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF173
	.byte	0x13
	.byte	0x29
	.long	0x157e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF174
	.byte	0x13
	.byte	0x2a
	.long	0x1584
	.byte	0x30
	.uleb128 0x8
	.long	.LASF184
	.byte	0x13
	.byte	0x2c
	.long	0x140e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF185
	.byte	0x13
	.byte	0x2d
	.long	0x2338
	.byte	0x40
	.uleb128 0x8
	.long	.LASF186
	.byte	0x13
	.byte	0x2e
	.long	0x1fa5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF187
	.byte	0x13
	.byte	0x2f
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.long	.LASF188
	.byte	0xb
	.value	0x7ff
	.long	0xed3
	.uleb128 0x14
	.long	.LASF189
	.byte	0x60
	.byte	0xe
	.value	0x130
	.long	0xf7d
	.uleb128 0x13
	.long	.LASF158
	.byte	0xe
	.value	0x131
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0xe
	.value	0x132
	.long	0x308
	.byte	0x8
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x133
	.long	0x308
	.byte	0x10
	.uleb128 0x13
	.long	.LASF163
	.byte	0xe
	.value	0x134
	.long	0x2e0
	.byte	0x18
	.uleb128 0x13
	.long	.LASF166
	.byte	0xe
	.value	0x135
	.long	0x2f6
	.byte	0x20
	.uleb128 0x13
	.long	.LASF173
	.byte	0xe
	.value	0x136
	.long	0x157e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF174
	.byte	0xe
	.value	0x137
	.long	0x1584
	.byte	0x30
	.uleb128 0x13
	.long	.LASF190
	.byte	0xe
	.value	0x139
	.long	0x158a
	.byte	0x38
	.uleb128 0x13
	.long	.LASF191
	.byte	0xe
	.value	0x13a
	.long	0xf2
	.byte	0x40
	.uleb128 0x13
	.long	.LASF192
	.byte	0xe
	.value	0x13b
	.long	0x308
	.byte	0x48
	.uleb128 0x13
	.long	.LASF193
	.byte	0xe
	.value	0x13c
	.long	0x1584
	.byte	0x50
	.uleb128 0x13
	.long	.LASF194
	.byte	0xe
	.value	0x13d
	.long	0x13f9
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF195
	.byte	0xb
	.value	0x800
	.long	0xf89
	.uleb128 0xb
	.long	.LASF196
	.byte	0x90
	.byte	0x14
	.byte	0xe
	.long	0x107a
	.uleb128 0x8
	.long	.LASF158
	.byte	0x14
	.byte	0xf
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF159
	.byte	0x14
	.byte	0x10
	.long	0x308
	.byte	0x8
	.uleb128 0x8
	.long	.LASF160
	.byte	0x14
	.byte	0x11
	.long	0x308
	.byte	0x10
	.uleb128 0x8
	.long	.LASF172
	.byte	0x14
	.byte	0x12
	.long	0x2e0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF166
	.byte	0x14
	.byte	0x13
	.long	0x2f6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF173
	.byte	0x14
	.byte	0x14
	.long	0x157e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF174
	.byte	0x14
	.byte	0x15
	.long	0x1584
	.byte	0x30
	.uleb128 0x8
	.long	.LASF197
	.byte	0x14
	.byte	0x17
	.long	0x1584
	.byte	0x38
	.uleb128 0x8
	.long	.LASF198
	.byte	0x14
	.byte	0x18
	.long	0x159c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF199
	.byte	0x14
	.byte	0x19
	.long	0x159c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF200
	.byte	0x14
	.byte	0x1a
	.long	0x15b3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF201
	.byte	0x14
	.byte	0x1b
	.long	0x134a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF202
	.byte	0x14
	.byte	0x1c
	.long	0x15b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF203
	.byte	0x14
	.byte	0x1d
	.long	0xf2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF204
	.byte	0x14
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF205
	.byte	0x14
	.byte	0x1f
	.long	0x1620
	.byte	0x78
	.uleb128 0x8
	.long	.LASF206
	.byte	0x14
	.byte	0x20
	.long	0x15ad
	.byte	0x80
	.uleb128 0x8
	.long	.LASF207
	.byte	0x14
	.byte	0x25
	.long	0x1590
	.byte	0x88
	.uleb128 0x8
	.long	.LASF208
	.byte	0x14
	.byte	0x26
	.long	0x1419
	.byte	0x8c
	.byte	0
	.uleb128 0x11
	.long	.LASF209
	.byte	0xb
	.value	0x802
	.long	0x1086
	.uleb128 0x14
	.long	.LASF210
	.byte	0x98
	.byte	0xe
	.value	0x152
	.long	0x1198
	.uleb128 0x13
	.long	.LASF158
	.byte	0xe
	.value	0x153
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0xe
	.value	0x154
	.long	0x308
	.byte	0x8
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x155
	.long	0x308
	.byte	0x10
	.uleb128 0x13
	.long	.LASF163
	.byte	0xe
	.value	0x156
	.long	0x2e0
	.byte	0x18
	.uleb128 0x13
	.long	.LASF166
	.byte	0xe
	.value	0x157
	.long	0x2f6
	.byte	0x20
	.uleb128 0x13
	.long	.LASF173
	.byte	0xe
	.value	0x158
	.long	0x157e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF174
	.byte	0xe
	.value	0x159
	.long	0x1584
	.byte	0x30
	.uleb128 0x13
	.long	.LASF197
	.byte	0xe
	.value	0x15b
	.long	0x1584
	.byte	0x38
	.uleb128 0x13
	.long	.LASF198
	.byte	0xe
	.value	0x15c
	.long	0x159c
	.byte	0x40
	.uleb128 0x13
	.long	.LASF199
	.byte	0xe
	.value	0x15d
	.long	0x159c
	.byte	0x48
	.uleb128 0x13
	.long	.LASF200
	.byte	0xe
	.value	0x15e
	.long	0x15b3
	.byte	0x50
	.uleb128 0x13
	.long	.LASF201
	.byte	0xe
	.value	0x15f
	.long	0x134a
	.byte	0x58
	.uleb128 0x13
	.long	.LASF202
	.byte	0xe
	.value	0x160
	.long	0x15b9
	.byte	0x60
	.uleb128 0x13
	.long	.LASF203
	.byte	0xe
	.value	0x161
	.long	0xf2
	.byte	0x68
	.uleb128 0x13
	.long	.LASF204
	.byte	0xe
	.value	0x162
	.long	0x5e
	.byte	0x70
	.uleb128 0x13
	.long	.LASF205
	.byte	0xe
	.value	0x163
	.long	0x15bf
	.byte	0x78
	.uleb128 0x13
	.long	.LASF206
	.byte	0xe
	.value	0x164
	.long	0x15ad
	.byte	0x80
	.uleb128 0x13
	.long	.LASF207
	.byte	0xe
	.value	0x169
	.long	0x1590
	.byte	0x88
	.uleb128 0x13
	.long	.LASF208
	.byte	0xe
	.value	0x16a
	.long	0x1419
	.byte	0x8c
	.uleb128 0x13
	.long	.LASF211
	.byte	0xe
	.value	0x16d
	.long	0x2e0
	.byte	0x90
	.byte	0
	.uleb128 0x11
	.long	.LASF212
	.byte	0xb
	.value	0x803
	.long	0x11a4
	.uleb128 0x14
	.long	.LASF213
	.byte	0xa8
	.byte	0xe
	.value	0x170
	.long	0x12dd
	.uleb128 0x13
	.long	.LASF158
	.byte	0xe
	.value	0x171
	.long	0xf2
	.byte	0
	.uleb128 0x13
	.long	.LASF159
	.byte	0xe
	.value	0x172
	.long	0x308
	.byte	0x8
	.uleb128 0x13
	.long	.LASF160
	.byte	0xe
	.value	0x173
	.long	0x308
	.byte	0x10
	.uleb128 0x13
	.long	.LASF163
	.byte	0xe
	.value	0x174
	.long	0x2e0
	.byte	0x18
	.uleb128 0x13
	.long	.LASF166
	.byte	0xe
	.value	0x175
	.long	0x2f6
	.byte	0x20
	.uleb128 0x13
	.long	.LASF173
	.byte	0xe
	.value	0x176
	.long	0x157e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF174
	.byte	0xe
	.value	0x177
	.long	0x1584
	.byte	0x30
	.uleb128 0x13
	.long	.LASF214
	.byte	0xe
	.value	0x179
	.long	0x15ed
	.byte	0x38
	.uleb128 0x13
	.long	.LASF215
	.byte	0xe
	.value	0x17a
	.long	0x15ed
	.byte	0x40
	.uleb128 0x13
	.long	.LASF216
	.byte	0xe
	.value	0x187
	.long	0x15c5
	.byte	0x48
	.uleb128 0x13
	.long	.LASF217
	.byte	0xe
	.value	0x188
	.long	0x2e0
	.byte	0x50
	.uleb128 0x13
	.long	.LASF218
	.byte	0xe
	.value	0x189
	.long	0x2e0
	.byte	0x58
	.uleb128 0x13
	.long	.LASF219
	.byte	0xe
	.value	0x18a
	.long	0x2e0
	.byte	0x60
	.uleb128 0x13
	.long	.LASF220
	.byte	0xe
	.value	0x18b
	.long	0x2e0
	.byte	0x68
	.uleb128 0x13
	.long	.LASF221
	.byte	0xe
	.value	0x18c
	.long	0xf2
	.byte	0x70
	.uleb128 0x13
	.long	.LASF222
	.byte	0xe
	.value	0x18d
	.long	0x15b9
	.byte	0x78
	.uleb128 0x13
	.long	.LASF223
	.byte	0xe
	.value	0x18e
	.long	0xf2
	.byte	0x80
	.uleb128 0x13
	.long	.LASF224
	.byte	0xe
	.value	0x18f
	.long	0x15b9
	.byte	0x88
	.uleb128 0x13
	.long	.LASF225
	.byte	0xe
	.value	0x190
	.long	0xf2
	.byte	0x90
	.uleb128 0x13
	.long	.LASF226
	.byte	0xe
	.value	0x191
	.long	0x15b9
	.byte	0x98
	.uleb128 0x13
	.long	.LASF227
	.byte	0xe
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF228
	.byte	0xe
	.value	0x193
	.long	0xf8
	.byte	0xa2
	.uleb128 0x13
	.long	.LASF229
	.byte	0xe
	.value	0x194
	.long	0xf8
	.byte	0xa3
	.byte	0
	.uleb128 0x11
	.long	.LASF230
	.byte	0xb
	.value	0x804
	.long	0x12e9
	.uleb128 0xb
	.long	.LASF231
	.byte	0x38
	.byte	0x11
	.byte	0xe
	.long	0x134a
	.uleb128 0x8
	.long	.LASF232
	.byte	0x11
	.byte	0xf
	.long	0x2358
	.byte	0
	.uleb128 0x8
	.long	.LASF233
	.byte	0x11
	.byte	0x10
	.long	0x2358
	.byte	0x8
	.uleb128 0x8
	.long	.LASF234
	.byte	0x11
	.byte	0x11
	.long	0x2372
	.byte	0x10
	.uleb128 0x8
	.long	.LASF235
	.byte	0x11
	.byte	0x12
	.long	0x2358
	.byte	0x18
	.uleb128 0x8
	.long	.LASF236
	.byte	0x11
	.byte	0x13
	.long	0x2358
	.byte	0x20
	.uleb128 0x8
	.long	.LASF237
	.byte	0x11
	.byte	0x14
	.long	0x239b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF238
	.byte	0x11
	.byte	0x16
	.long	0x23bb
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.string	"ANY"
	.byte	0xb
	.value	0x805
	.long	0x1356
	.uleb128 0x15
	.string	"any"
	.byte	0x8
	.byte	0xb
	.value	0x9f1
	.long	0x13b8
	.uleb128 0x16
	.long	.LASF239
	.byte	0xb
	.value	0x9f2
	.long	0xc4
	.uleb128 0x16
	.long	.LASF240
	.byte	0xb
	.value	0x9f3
	.long	0x140e
	.uleb128 0x16
	.long	.LASF241
	.byte	0xb
	.value	0x9f4
	.long	0x2e0
	.uleb128 0x16
	.long	.LASF242
	.byte	0xb
	.value	0x9f5
	.long	0x5e
	.uleb128 0x16
	.long	.LASF243
	.byte	0xb
	.value	0x9f6
	.long	0xf8
	.uleb128 0x16
	.long	.LASF244
	.byte	0xb
	.value	0x9f7
	.long	0x143b
	.uleb128 0x16
	.long	.LASF245
	.byte	0xb
	.value	0x9f8
	.long	0x143b
	.byte	0
	.uleb128 0x11
	.long	.LASF246
	.byte	0xb
	.value	0x808
	.long	0x13c4
	.uleb128 0x14
	.long	.LASF247
	.byte	0x18
	.byte	0xe
	.value	0x4ed
	.long	0x13f9
	.uleb128 0x13
	.long	.LASF248
	.byte	0xe
	.value	0x4ee
	.long	0x15bf
	.byte	0
	.uleb128 0x13
	.long	.LASF249
	.byte	0xe
	.value	0x4ef
	.long	0x2eb
	.byte	0x8
	.uleb128 0x13
	.long	.LASF250
	.byte	0xe
	.value	0x4f0
	.long	0x15f3
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"U8"
	.byte	0x15
	.byte	0x85
	.long	0x2d
	.uleb128 0xe
	.string	"U16"
	.byte	0x15
	.byte	0x87
	.long	0x34
	.uleb128 0xe
	.string	"I32"
	.byte	0x15
	.byte	0x88
	.long	0x57
	.uleb128 0xe
	.string	"U32"
	.byte	0x15
	.byte	0x89
	.long	0x3b
	.uleb128 0x11
	.long	.LASF251
	.byte	0x15
	.value	0x209
	.long	0x1419
	.uleb128 0x17
	.long	0x143b
	.uleb128 0x18
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1430
	.uleb128 0x6
	.byte	0x8
	.long	0x87e
	.uleb128 0x9
	.long	0xf8
	.long	0x1457
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF252
	.byte	0x16
	.byte	0x63
	.long	0x1462
	.uleb128 0xf
	.long	.LASF254
	.uleb128 0x4
	.long	.LASF255
	.byte	0x16
	.byte	0x65
	.long	0x1472
	.uleb128 0x6
	.byte	0x8
	.long	0x1457
	.uleb128 0xb
	.long	.LASF256
	.byte	0x4
	.byte	0xf
	.byte	0x13
	.long	0x14a9
	.uleb128 0x8
	.long	.LASF249
	.byte	0xf
	.byte	0x14
	.long	0x13f9
	.byte	0
	.uleb128 0x8
	.long	.LASF257
	.byte	0xf
	.byte	0x15
	.long	0x13f9
	.byte	0x1
	.uleb128 0x8
	.long	.LASF258
	.byte	0xf
	.byte	0x16
	.long	0x1403
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF256
	.byte	0xf
	.byte	0x19
	.long	0x1478
	.uleb128 0x6
	.byte	0x8
	.long	0x140e
	.uleb128 0x6
	.byte	0x8
	.long	0x14a9
	.uleb128 0xf
	.long	.LASF259
	.uleb128 0x6
	.byte	0x8
	.long	0x14c0
	.uleb128 0xf
	.long	.LASF260
	.uleb128 0x6
	.byte	0x8
	.long	0x14cb
	.uleb128 0x6
	.byte	0x8
	.long	0x1419
	.uleb128 0x9
	.long	0x14a9
	.long	0x14ec
	.uleb128 0xa
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF104
	.byte	0xf
	.byte	0x33
	.long	0x976
	.uleb128 0x19
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.long	0x1560
	.uleb128 0x1a
	.long	.LASF261
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF262
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF263
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF264
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF265
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF266
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF267
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF268
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF269
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF270
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF271
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF272
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF273
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF274
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF275
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF276
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec7
	.uleb128 0x6
	.byte	0x8
	.long	0xf7d
	.uleb128 0x6
	.byte	0x8
	.long	0xd99
	.uleb128 0x6
	.byte	0x8
	.long	0xe2a
	.uleb128 0x6
	.byte	0x8
	.long	0x1198
	.uleb128 0x6
	.byte	0x8
	.long	0xc16
	.uleb128 0x6
	.byte	0x8
	.long	0x8f4
	.uleb128 0x6
	.byte	0x8
	.long	0xa4f
	.uleb128 0x11
	.long	.LASF277
	.byte	0xe
	.value	0x150
	.long	0x1403
	.uleb128 0x6
	.byte	0x8
	.long	0x314
	.uleb128 0x17
	.long	0x15ad
	.uleb128 0x18
	.long	0x15ad
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x92f
	.uleb128 0x6
	.byte	0x8
	.long	0x15a2
	.uleb128 0x6
	.byte	0x8
	.long	0xaf6
	.uleb128 0x6
	.byte	0x8
	.long	0x8b9
	.uleb128 0x1b
	.byte	0x8
	.byte	0xe
	.value	0x184
	.long	0x15e7
	.uleb128 0x16
	.long	.LASF278
	.byte	0xe
	.value	0x185
	.long	0x15e7
	.uleb128 0x16
	.long	.LASF279
	.byte	0xe
	.value	0x186
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d0
	.uleb128 0x6
	.byte	0x8
	.long	0x1467
	.uleb128 0x6
	.byte	0x8
	.long	0x857
	.uleb128 0x6
	.byte	0x8
	.long	0xb3c
	.uleb128 0x4
	.long	.LASF280
	.byte	0x17
	.byte	0x13
	.long	0x8b9
	.uleb128 0xe
	.string	"PAD"
	.byte	0x17
	.byte	0x14
	.long	0x8b9
	.uleb128 0x4
	.long	.LASF281
	.byte	0x17
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x15ff
	.uleb128 0x1c
	.long	.LASF1071
	.byte	0x4
	.byte	0x1e
	.byte	0xf
	.long	0x1f9a
	.uleb128 0x1a
	.long	.LASF282
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF283
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF284
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF285
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF286
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF287
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF288
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF289
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF290
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF291
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF292
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF293
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF294
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF295
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF296
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF297
	.sleb128 15
	.uleb128 0x1a
	.long	.LASF298
	.sleb128 16
	.uleb128 0x1a
	.long	.LASF299
	.sleb128 17
	.uleb128 0x1a
	.long	.LASF300
	.sleb128 18
	.uleb128 0x1a
	.long	.LASF301
	.sleb128 19
	.uleb128 0x1a
	.long	.LASF302
	.sleb128 20
	.uleb128 0x1a
	.long	.LASF303
	.sleb128 21
	.uleb128 0x1a
	.long	.LASF304
	.sleb128 22
	.uleb128 0x1a
	.long	.LASF305
	.sleb128 23
	.uleb128 0x1a
	.long	.LASF306
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF307
	.sleb128 25
	.uleb128 0x1a
	.long	.LASF308
	.sleb128 26
	.uleb128 0x1a
	.long	.LASF309
	.sleb128 27
	.uleb128 0x1a
	.long	.LASF310
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF311
	.sleb128 29
	.uleb128 0x1a
	.long	.LASF312
	.sleb128 30
	.uleb128 0x1a
	.long	.LASF313
	.sleb128 31
	.uleb128 0x1a
	.long	.LASF314
	.sleb128 32
	.uleb128 0x1a
	.long	.LASF315
	.sleb128 33
	.uleb128 0x1a
	.long	.LASF316
	.sleb128 34
	.uleb128 0x1a
	.long	.LASF317
	.sleb128 35
	.uleb128 0x1a
	.long	.LASF318
	.sleb128 36
	.uleb128 0x1a
	.long	.LASF319
	.sleb128 37
	.uleb128 0x1a
	.long	.LASF320
	.sleb128 38
	.uleb128 0x1a
	.long	.LASF321
	.sleb128 39
	.uleb128 0x1a
	.long	.LASF322
	.sleb128 40
	.uleb128 0x1a
	.long	.LASF323
	.sleb128 41
	.uleb128 0x1a
	.long	.LASF324
	.sleb128 42
	.uleb128 0x1a
	.long	.LASF325
	.sleb128 43
	.uleb128 0x1a
	.long	.LASF326
	.sleb128 44
	.uleb128 0x1a
	.long	.LASF327
	.sleb128 45
	.uleb128 0x1a
	.long	.LASF328
	.sleb128 46
	.uleb128 0x1a
	.long	.LASF329
	.sleb128 47
	.uleb128 0x1a
	.long	.LASF330
	.sleb128 48
	.uleb128 0x1a
	.long	.LASF331
	.sleb128 49
	.uleb128 0x1a
	.long	.LASF332
	.sleb128 50
	.uleb128 0x1a
	.long	.LASF333
	.sleb128 51
	.uleb128 0x1a
	.long	.LASF334
	.sleb128 52
	.uleb128 0x1a
	.long	.LASF335
	.sleb128 53
	.uleb128 0x1a
	.long	.LASF336
	.sleb128 54
	.uleb128 0x1a
	.long	.LASF337
	.sleb128 55
	.uleb128 0x1a
	.long	.LASF338
	.sleb128 56
	.uleb128 0x1a
	.long	.LASF339
	.sleb128 57
	.uleb128 0x1a
	.long	.LASF340
	.sleb128 58
	.uleb128 0x1a
	.long	.LASF341
	.sleb128 59
	.uleb128 0x1a
	.long	.LASF342
	.sleb128 60
	.uleb128 0x1a
	.long	.LASF343
	.sleb128 61
	.uleb128 0x1a
	.long	.LASF344
	.sleb128 62
	.uleb128 0x1a
	.long	.LASF345
	.sleb128 63
	.uleb128 0x1a
	.long	.LASF346
	.sleb128 64
	.uleb128 0x1a
	.long	.LASF347
	.sleb128 65
	.uleb128 0x1a
	.long	.LASF348
	.sleb128 66
	.uleb128 0x1a
	.long	.LASF349
	.sleb128 67
	.uleb128 0x1a
	.long	.LASF350
	.sleb128 68
	.uleb128 0x1a
	.long	.LASF351
	.sleb128 69
	.uleb128 0x1a
	.long	.LASF352
	.sleb128 70
	.uleb128 0x1a
	.long	.LASF353
	.sleb128 71
	.uleb128 0x1a
	.long	.LASF354
	.sleb128 72
	.uleb128 0x1a
	.long	.LASF355
	.sleb128 73
	.uleb128 0x1a
	.long	.LASF356
	.sleb128 74
	.uleb128 0x1a
	.long	.LASF357
	.sleb128 75
	.uleb128 0x1a
	.long	.LASF358
	.sleb128 76
	.uleb128 0x1a
	.long	.LASF359
	.sleb128 77
	.uleb128 0x1a
	.long	.LASF360
	.sleb128 78
	.uleb128 0x1a
	.long	.LASF361
	.sleb128 79
	.uleb128 0x1a
	.long	.LASF362
	.sleb128 80
	.uleb128 0x1a
	.long	.LASF363
	.sleb128 81
	.uleb128 0x1a
	.long	.LASF364
	.sleb128 82
	.uleb128 0x1a
	.long	.LASF365
	.sleb128 83
	.uleb128 0x1a
	.long	.LASF366
	.sleb128 84
	.uleb128 0x1a
	.long	.LASF367
	.sleb128 85
	.uleb128 0x1a
	.long	.LASF368
	.sleb128 86
	.uleb128 0x1a
	.long	.LASF369
	.sleb128 87
	.uleb128 0x1a
	.long	.LASF370
	.sleb128 88
	.uleb128 0x1a
	.long	.LASF371
	.sleb128 89
	.uleb128 0x1a
	.long	.LASF372
	.sleb128 90
	.uleb128 0x1a
	.long	.LASF373
	.sleb128 91
	.uleb128 0x1a
	.long	.LASF374
	.sleb128 92
	.uleb128 0x1a
	.long	.LASF375
	.sleb128 93
	.uleb128 0x1a
	.long	.LASF376
	.sleb128 94
	.uleb128 0x1a
	.long	.LASF377
	.sleb128 95
	.uleb128 0x1a
	.long	.LASF378
	.sleb128 96
	.uleb128 0x1a
	.long	.LASF379
	.sleb128 97
	.uleb128 0x1a
	.long	.LASF380
	.sleb128 98
	.uleb128 0x1a
	.long	.LASF381
	.sleb128 99
	.uleb128 0x1a
	.long	.LASF382
	.sleb128 100
	.uleb128 0x1a
	.long	.LASF383
	.sleb128 101
	.uleb128 0x1a
	.long	.LASF384
	.sleb128 102
	.uleb128 0x1a
	.long	.LASF385
	.sleb128 103
	.uleb128 0x1a
	.long	.LASF386
	.sleb128 104
	.uleb128 0x1a
	.long	.LASF387
	.sleb128 105
	.uleb128 0x1a
	.long	.LASF388
	.sleb128 106
	.uleb128 0x1a
	.long	.LASF389
	.sleb128 107
	.uleb128 0x1a
	.long	.LASF390
	.sleb128 108
	.uleb128 0x1a
	.long	.LASF391
	.sleb128 109
	.uleb128 0x1a
	.long	.LASF392
	.sleb128 110
	.uleb128 0x1a
	.long	.LASF393
	.sleb128 111
	.uleb128 0x1a
	.long	.LASF394
	.sleb128 112
	.uleb128 0x1a
	.long	.LASF395
	.sleb128 113
	.uleb128 0x1a
	.long	.LASF396
	.sleb128 114
	.uleb128 0x1a
	.long	.LASF397
	.sleb128 115
	.uleb128 0x1a
	.long	.LASF398
	.sleb128 116
	.uleb128 0x1a
	.long	.LASF399
	.sleb128 117
	.uleb128 0x1a
	.long	.LASF400
	.sleb128 118
	.uleb128 0x1a
	.long	.LASF401
	.sleb128 119
	.uleb128 0x1a
	.long	.LASF402
	.sleb128 120
	.uleb128 0x1a
	.long	.LASF403
	.sleb128 121
	.uleb128 0x1a
	.long	.LASF404
	.sleb128 122
	.uleb128 0x1a
	.long	.LASF405
	.sleb128 123
	.uleb128 0x1a
	.long	.LASF406
	.sleb128 124
	.uleb128 0x1a
	.long	.LASF407
	.sleb128 125
	.uleb128 0x1a
	.long	.LASF408
	.sleb128 126
	.uleb128 0x1a
	.long	.LASF409
	.sleb128 127
	.uleb128 0x1a
	.long	.LASF410
	.sleb128 128
	.uleb128 0x1a
	.long	.LASF411
	.sleb128 129
	.uleb128 0x1a
	.long	.LASF412
	.sleb128 130
	.uleb128 0x1a
	.long	.LASF413
	.sleb128 131
	.uleb128 0x1a
	.long	.LASF414
	.sleb128 132
	.uleb128 0x1a
	.long	.LASF415
	.sleb128 133
	.uleb128 0x1a
	.long	.LASF416
	.sleb128 134
	.uleb128 0x1a
	.long	.LASF417
	.sleb128 135
	.uleb128 0x1a
	.long	.LASF418
	.sleb128 136
	.uleb128 0x1a
	.long	.LASF419
	.sleb128 137
	.uleb128 0x1a
	.long	.LASF420
	.sleb128 138
	.uleb128 0x1a
	.long	.LASF421
	.sleb128 139
	.uleb128 0x1a
	.long	.LASF422
	.sleb128 140
	.uleb128 0x1a
	.long	.LASF423
	.sleb128 141
	.uleb128 0x1a
	.long	.LASF424
	.sleb128 142
	.uleb128 0x1a
	.long	.LASF425
	.sleb128 143
	.uleb128 0x1a
	.long	.LASF426
	.sleb128 144
	.uleb128 0x1a
	.long	.LASF427
	.sleb128 145
	.uleb128 0x1a
	.long	.LASF428
	.sleb128 146
	.uleb128 0x1a
	.long	.LASF429
	.sleb128 147
	.uleb128 0x1a
	.long	.LASF430
	.sleb128 148
	.uleb128 0x1a
	.long	.LASF431
	.sleb128 149
	.uleb128 0x1a
	.long	.LASF432
	.sleb128 150
	.uleb128 0x1a
	.long	.LASF433
	.sleb128 151
	.uleb128 0x1a
	.long	.LASF434
	.sleb128 152
	.uleb128 0x1a
	.long	.LASF435
	.sleb128 153
	.uleb128 0x1a
	.long	.LASF436
	.sleb128 154
	.uleb128 0x1a
	.long	.LASF437
	.sleb128 155
	.uleb128 0x1a
	.long	.LASF438
	.sleb128 156
	.uleb128 0x1a
	.long	.LASF439
	.sleb128 157
	.uleb128 0x1a
	.long	.LASF440
	.sleb128 158
	.uleb128 0x1a
	.long	.LASF441
	.sleb128 159
	.uleb128 0x1a
	.long	.LASF442
	.sleb128 160
	.uleb128 0x1a
	.long	.LASF443
	.sleb128 161
	.uleb128 0x1a
	.long	.LASF444
	.sleb128 162
	.uleb128 0x1a
	.long	.LASF445
	.sleb128 163
	.uleb128 0x1a
	.long	.LASF446
	.sleb128 164
	.uleb128 0x1a
	.long	.LASF447
	.sleb128 165
	.uleb128 0x1a
	.long	.LASF448
	.sleb128 166
	.uleb128 0x1a
	.long	.LASF449
	.sleb128 167
	.uleb128 0x1a
	.long	.LASF450
	.sleb128 168
	.uleb128 0x1a
	.long	.LASF451
	.sleb128 169
	.uleb128 0x1a
	.long	.LASF452
	.sleb128 170
	.uleb128 0x1a
	.long	.LASF453
	.sleb128 171
	.uleb128 0x1a
	.long	.LASF454
	.sleb128 172
	.uleb128 0x1a
	.long	.LASF455
	.sleb128 173
	.uleb128 0x1a
	.long	.LASF456
	.sleb128 174
	.uleb128 0x1a
	.long	.LASF457
	.sleb128 175
	.uleb128 0x1a
	.long	.LASF458
	.sleb128 176
	.uleb128 0x1a
	.long	.LASF459
	.sleb128 177
	.uleb128 0x1a
	.long	.LASF460
	.sleb128 178
	.uleb128 0x1a
	.long	.LASF461
	.sleb128 179
	.uleb128 0x1a
	.long	.LASF462
	.sleb128 180
	.uleb128 0x1a
	.long	.LASF463
	.sleb128 181
	.uleb128 0x1a
	.long	.LASF464
	.sleb128 182
	.uleb128 0x1a
	.long	.LASF465
	.sleb128 183
	.uleb128 0x1a
	.long	.LASF466
	.sleb128 184
	.uleb128 0x1a
	.long	.LASF467
	.sleb128 185
	.uleb128 0x1a
	.long	.LASF468
	.sleb128 186
	.uleb128 0x1a
	.long	.LASF469
	.sleb128 187
	.uleb128 0x1a
	.long	.LASF470
	.sleb128 188
	.uleb128 0x1a
	.long	.LASF471
	.sleb128 189
	.uleb128 0x1a
	.long	.LASF472
	.sleb128 190
	.uleb128 0x1a
	.long	.LASF473
	.sleb128 191
	.uleb128 0x1a
	.long	.LASF474
	.sleb128 192
	.uleb128 0x1a
	.long	.LASF475
	.sleb128 193
	.uleb128 0x1a
	.long	.LASF476
	.sleb128 194
	.uleb128 0x1a
	.long	.LASF477
	.sleb128 195
	.uleb128 0x1a
	.long	.LASF478
	.sleb128 196
	.uleb128 0x1a
	.long	.LASF479
	.sleb128 197
	.uleb128 0x1a
	.long	.LASF480
	.sleb128 198
	.uleb128 0x1a
	.long	.LASF481
	.sleb128 199
	.uleb128 0x1a
	.long	.LASF482
	.sleb128 200
	.uleb128 0x1a
	.long	.LASF483
	.sleb128 201
	.uleb128 0x1a
	.long	.LASF484
	.sleb128 202
	.uleb128 0x1a
	.long	.LASF485
	.sleb128 203
	.uleb128 0x1a
	.long	.LASF486
	.sleb128 204
	.uleb128 0x1a
	.long	.LASF487
	.sleb128 205
	.uleb128 0x1a
	.long	.LASF488
	.sleb128 206
	.uleb128 0x1a
	.long	.LASF489
	.sleb128 207
	.uleb128 0x1a
	.long	.LASF490
	.sleb128 208
	.uleb128 0x1a
	.long	.LASF491
	.sleb128 209
	.uleb128 0x1a
	.long	.LASF492
	.sleb128 210
	.uleb128 0x1a
	.long	.LASF493
	.sleb128 211
	.uleb128 0x1a
	.long	.LASF494
	.sleb128 212
	.uleb128 0x1a
	.long	.LASF495
	.sleb128 213
	.uleb128 0x1a
	.long	.LASF496
	.sleb128 214
	.uleb128 0x1a
	.long	.LASF497
	.sleb128 215
	.uleb128 0x1a
	.long	.LASF498
	.sleb128 216
	.uleb128 0x1a
	.long	.LASF499
	.sleb128 217
	.uleb128 0x1a
	.long	.LASF500
	.sleb128 218
	.uleb128 0x1a
	.long	.LASF501
	.sleb128 219
	.uleb128 0x1a
	.long	.LASF502
	.sleb128 220
	.uleb128 0x1a
	.long	.LASF503
	.sleb128 221
	.uleb128 0x1a
	.long	.LASF504
	.sleb128 222
	.uleb128 0x1a
	.long	.LASF505
	.sleb128 223
	.uleb128 0x1a
	.long	.LASF506
	.sleb128 224
	.uleb128 0x1a
	.long	.LASF507
	.sleb128 225
	.uleb128 0x1a
	.long	.LASF508
	.sleb128 226
	.uleb128 0x1a
	.long	.LASF509
	.sleb128 227
	.uleb128 0x1a
	.long	.LASF510
	.sleb128 228
	.uleb128 0x1a
	.long	.LASF511
	.sleb128 229
	.uleb128 0x1a
	.long	.LASF512
	.sleb128 230
	.uleb128 0x1a
	.long	.LASF513
	.sleb128 231
	.uleb128 0x1a
	.long	.LASF514
	.sleb128 232
	.uleb128 0x1a
	.long	.LASF515
	.sleb128 233
	.uleb128 0x1a
	.long	.LASF516
	.sleb128 234
	.uleb128 0x1a
	.long	.LASF517
	.sleb128 235
	.uleb128 0x1a
	.long	.LASF518
	.sleb128 236
	.uleb128 0x1a
	.long	.LASF519
	.sleb128 237
	.uleb128 0x1a
	.long	.LASF520
	.sleb128 238
	.uleb128 0x1a
	.long	.LASF521
	.sleb128 239
	.uleb128 0x1a
	.long	.LASF522
	.sleb128 240
	.uleb128 0x1a
	.long	.LASF523
	.sleb128 241
	.uleb128 0x1a
	.long	.LASF524
	.sleb128 242
	.uleb128 0x1a
	.long	.LASF525
	.sleb128 243
	.uleb128 0x1a
	.long	.LASF526
	.sleb128 244
	.uleb128 0x1a
	.long	.LASF527
	.sleb128 245
	.uleb128 0x1a
	.long	.LASF528
	.sleb128 246
	.uleb128 0x1a
	.long	.LASF529
	.sleb128 247
	.uleb128 0x1a
	.long	.LASF530
	.sleb128 248
	.uleb128 0x1a
	.long	.LASF531
	.sleb128 249
	.uleb128 0x1a
	.long	.LASF532
	.sleb128 250
	.uleb128 0x1a
	.long	.LASF533
	.sleb128 251
	.uleb128 0x1a
	.long	.LASF534
	.sleb128 252
	.uleb128 0x1a
	.long	.LASF535
	.sleb128 253
	.uleb128 0x1a
	.long	.LASF536
	.sleb128 254
	.uleb128 0x1a
	.long	.LASF537
	.sleb128 255
	.uleb128 0x1a
	.long	.LASF538
	.sleb128 256
	.uleb128 0x1a
	.long	.LASF539
	.sleb128 257
	.uleb128 0x1a
	.long	.LASF540
	.sleb128 258
	.uleb128 0x1a
	.long	.LASF541
	.sleb128 259
	.uleb128 0x1a
	.long	.LASF542
	.sleb128 260
	.uleb128 0x1a
	.long	.LASF543
	.sleb128 261
	.uleb128 0x1a
	.long	.LASF544
	.sleb128 262
	.uleb128 0x1a
	.long	.LASF545
	.sleb128 263
	.uleb128 0x1a
	.long	.LASF546
	.sleb128 264
	.uleb128 0x1a
	.long	.LASF547
	.sleb128 265
	.uleb128 0x1a
	.long	.LASF548
	.sleb128 266
	.uleb128 0x1a
	.long	.LASF549
	.sleb128 267
	.uleb128 0x1a
	.long	.LASF550
	.sleb128 268
	.uleb128 0x1a
	.long	.LASF551
	.sleb128 269
	.uleb128 0x1a
	.long	.LASF552
	.sleb128 270
	.uleb128 0x1a
	.long	.LASF553
	.sleb128 271
	.uleb128 0x1a
	.long	.LASF554
	.sleb128 272
	.uleb128 0x1a
	.long	.LASF555
	.sleb128 273
	.uleb128 0x1a
	.long	.LASF556
	.sleb128 274
	.uleb128 0x1a
	.long	.LASF557
	.sleb128 275
	.uleb128 0x1a
	.long	.LASF558
	.sleb128 276
	.uleb128 0x1a
	.long	.LASF559
	.sleb128 277
	.uleb128 0x1a
	.long	.LASF560
	.sleb128 278
	.uleb128 0x1a
	.long	.LASF561
	.sleb128 279
	.uleb128 0x1a
	.long	.LASF562
	.sleb128 280
	.uleb128 0x1a
	.long	.LASF563
	.sleb128 281
	.uleb128 0x1a
	.long	.LASF564
	.sleb128 282
	.uleb128 0x1a
	.long	.LASF565
	.sleb128 283
	.uleb128 0x1a
	.long	.LASF566
	.sleb128 284
	.uleb128 0x1a
	.long	.LASF567
	.sleb128 285
	.uleb128 0x1a
	.long	.LASF568
	.sleb128 286
	.uleb128 0x1a
	.long	.LASF569
	.sleb128 287
	.uleb128 0x1a
	.long	.LASF570
	.sleb128 288
	.uleb128 0x1a
	.long	.LASF571
	.sleb128 289
	.uleb128 0x1a
	.long	.LASF572
	.sleb128 290
	.uleb128 0x1a
	.long	.LASF573
	.sleb128 291
	.uleb128 0x1a
	.long	.LASF574
	.sleb128 292
	.uleb128 0x1a
	.long	.LASF575
	.sleb128 293
	.uleb128 0x1a
	.long	.LASF576
	.sleb128 294
	.uleb128 0x1a
	.long	.LASF577
	.sleb128 295
	.uleb128 0x1a
	.long	.LASF578
	.sleb128 296
	.uleb128 0x1a
	.long	.LASF579
	.sleb128 297
	.uleb128 0x1a
	.long	.LASF580
	.sleb128 298
	.uleb128 0x1a
	.long	.LASF581
	.sleb128 299
	.uleb128 0x1a
	.long	.LASF582
	.sleb128 300
	.uleb128 0x1a
	.long	.LASF583
	.sleb128 301
	.uleb128 0x1a
	.long	.LASF584
	.sleb128 302
	.uleb128 0x1a
	.long	.LASF585
	.sleb128 303
	.uleb128 0x1a
	.long	.LASF586
	.sleb128 304
	.uleb128 0x1a
	.long	.LASF587
	.sleb128 305
	.uleb128 0x1a
	.long	.LASF588
	.sleb128 306
	.uleb128 0x1a
	.long	.LASF589
	.sleb128 307
	.uleb128 0x1a
	.long	.LASF590
	.sleb128 308
	.uleb128 0x1a
	.long	.LASF591
	.sleb128 309
	.uleb128 0x1a
	.long	.LASF592
	.sleb128 310
	.uleb128 0x1a
	.long	.LASF593
	.sleb128 311
	.uleb128 0x1a
	.long	.LASF594
	.sleb128 312
	.uleb128 0x1a
	.long	.LASF595
	.sleb128 313
	.uleb128 0x1a
	.long	.LASF596
	.sleb128 314
	.uleb128 0x1a
	.long	.LASF597
	.sleb128 315
	.uleb128 0x1a
	.long	.LASF598
	.sleb128 316
	.uleb128 0x1a
	.long	.LASF599
	.sleb128 317
	.uleb128 0x1a
	.long	.LASF600
	.sleb128 318
	.uleb128 0x1a
	.long	.LASF601
	.sleb128 319
	.uleb128 0x1a
	.long	.LASF602
	.sleb128 320
	.uleb128 0x1a
	.long	.LASF603
	.sleb128 321
	.uleb128 0x1a
	.long	.LASF604
	.sleb128 322
	.uleb128 0x1a
	.long	.LASF605
	.sleb128 323
	.uleb128 0x1a
	.long	.LASF606
	.sleb128 324
	.uleb128 0x1a
	.long	.LASF607
	.sleb128 325
	.uleb128 0x1a
	.long	.LASF608
	.sleb128 326
	.uleb128 0x1a
	.long	.LASF609
	.sleb128 327
	.uleb128 0x1a
	.long	.LASF610
	.sleb128 328
	.uleb128 0x1a
	.long	.LASF611
	.sleb128 329
	.uleb128 0x1a
	.long	.LASF612
	.sleb128 330
	.uleb128 0x1a
	.long	.LASF613
	.sleb128 331
	.uleb128 0x1a
	.long	.LASF614
	.sleb128 332
	.uleb128 0x1a
	.long	.LASF615
	.sleb128 333
	.uleb128 0x1a
	.long	.LASF616
	.sleb128 334
	.uleb128 0x1a
	.long	.LASF617
	.sleb128 335
	.uleb128 0x1a
	.long	.LASF618
	.sleb128 336
	.uleb128 0x1a
	.long	.LASF619
	.sleb128 337
	.uleb128 0x1a
	.long	.LASF620
	.sleb128 338
	.uleb128 0x1a
	.long	.LASF621
	.sleb128 339
	.uleb128 0x1a
	.long	.LASF622
	.sleb128 340
	.uleb128 0x1a
	.long	.LASF623
	.sleb128 341
	.uleb128 0x1a
	.long	.LASF624
	.sleb128 342
	.uleb128 0x1a
	.long	.LASF625
	.sleb128 343
	.uleb128 0x1a
	.long	.LASF626
	.sleb128 344
	.uleb128 0x1a
	.long	.LASF627
	.sleb128 345
	.uleb128 0x1a
	.long	.LASF628
	.sleb128 346
	.uleb128 0x1a
	.long	.LASF629
	.sleb128 347
	.uleb128 0x1a
	.long	.LASF630
	.sleb128 348
	.uleb128 0x1a
	.long	.LASF631
	.sleb128 349
	.uleb128 0x1a
	.long	.LASF632
	.sleb128 350
	.uleb128 0x1a
	.long	.LASF633
	.sleb128 351
	.uleb128 0x1a
	.long	.LASF634
	.sleb128 352
	.byte	0
	.uleb128 0x1d
	.long	0x159c
	.uleb128 0x6
	.byte	0x8
	.long	0x1f9a
	.uleb128 0x6
	.byte	0x8
	.long	0x60b
	.uleb128 0x6
	.byte	0x8
	.long	0x96a
	.uleb128 0xb
	.long	.LASF635
	.byte	0x40
	.byte	0xd
	.byte	0x70
	.long	0x2028
	.uleb128 0x1e
	.string	"cv"
	.byte	0xd
	.byte	0x71
	.long	0x15ad
	.byte	0
	.uleb128 0x1e
	.string	"gv"
	.byte	0xd
	.byte	0x72
	.long	0x15b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF636
	.byte	0xd
	.byte	0x73
	.long	0x15b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF637
	.byte	0xd
	.byte	0x75
	.long	0x15bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF638
	.byte	0xd
	.byte	0x77
	.long	0x15bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF639
	.byte	0xd
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF640
	.byte	0xd
	.byte	0x79
	.long	0x13f9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF641
	.byte	0xd
	.byte	0x7a
	.long	0x13f9
	.byte	0x31
	.uleb128 0x8
	.long	.LASF642
	.byte	0xd
	.byte	0x7b
	.long	0x2028
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x160a
	.uleb128 0xb
	.long	.LASF643
	.byte	0x28
	.byte	0xd
	.byte	0xd3
	.long	0x2082
	.uleb128 0x8
	.long	.LASF644
	.byte	0xd
	.byte	0xd4
	.long	0x140e
	.byte	0
	.uleb128 0x8
	.long	.LASF645
	.byte	0xd
	.byte	0xd5
	.long	0x140e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF646
	.byte	0xd
	.byte	0xd6
	.long	0x1441
	.byte	0x8
	.uleb128 0x8
	.long	.LASF647
	.byte	0xd
	.byte	0xd7
	.long	0x159c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF648
	.byte	0xd
	.byte	0xd8
	.long	0x1441
	.byte	0x18
	.uleb128 0x1e
	.string	"cv"
	.byte	0xd
	.byte	0xd9
	.long	0x15ad
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF649
	.byte	0x58
	.byte	0xd
	.byte	0xf0
	.long	0x2114
	.uleb128 0x8
	.long	.LASF650
	.byte	0xd
	.byte	0xf1
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF651
	.byte	0xd
	.byte	0xf2
	.long	0x140e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF652
	.byte	0xd
	.byte	0xf3
	.long	0x159c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF653
	.byte	0xd
	.byte	0xf4
	.long	0x159c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF654
	.byte	0xd
	.byte	0xf5
	.long	0x159c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF655
	.byte	0xd
	.byte	0xfa
	.long	0x2114
	.byte	0x28
	.uleb128 0x8
	.long	.LASF656
	.byte	0xd
	.byte	0xfc
	.long	0x1441
	.byte	0x30
	.uleb128 0x8
	.long	.LASF657
	.byte	0xd
	.byte	0xfd
	.long	0x1441
	.byte	0x38
	.uleb128 0x8
	.long	.LASF658
	.byte	0xd
	.byte	0xfe
	.long	0x15bf
	.byte	0x40
	.uleb128 0x8
	.long	.LASF659
	.byte	0xd
	.byte	0xff
	.long	0x2e0
	.byte	0x48
	.uleb128 0x13
	.long	.LASF660
	.byte	0xd
	.value	0x100
	.long	0x2e0
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1441
	.uleb128 0x1b
	.byte	0x58
	.byte	0xd
	.value	0x139
	.long	0x2148
	.uleb128 0x16
	.long	.LASF661
	.byte	0xd
	.value	0x13a
	.long	0x1fb1
	.uleb128 0x16
	.long	.LASF662
	.byte	0xd
	.value	0x13b
	.long	0x202e
	.uleb128 0x16
	.long	.LASF663
	.byte	0xd
	.value	0x13c
	.long	0x2082
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38b
	.uleb128 0x14
	.long	.LASF664
	.byte	0x58
	.byte	0xd
	.value	0x16e
	.long	0x2212
	.uleb128 0x13
	.long	.LASF665
	.byte	0xd
	.value	0x16f
	.long	0x140e
	.byte	0
	.uleb128 0x13
	.long	.LASF666
	.byte	0xd
	.value	0x170
	.long	0x140e
	.byte	0x4
	.uleb128 0x13
	.long	.LASF667
	.byte	0xd
	.value	0x171
	.long	0x140e
	.byte	0x8
	.uleb128 0x13
	.long	.LASF668
	.byte	0xd
	.value	0x172
	.long	0x140e
	.byte	0xc
	.uleb128 0x13
	.long	.LASF669
	.byte	0xd
	.value	0x173
	.long	0xf8
	.byte	0x10
	.uleb128 0x13
	.long	.LASF670
	.byte	0xd
	.value	0x174
	.long	0xf8
	.byte	0x11
	.uleb128 0x13
	.long	.LASF671
	.byte	0xd
	.value	0x175
	.long	0xf2
	.byte	0x18
	.uleb128 0x13
	.long	.LASF672
	.byte	0xd
	.value	0x176
	.long	0x1441
	.byte	0x20
	.uleb128 0x13
	.long	.LASF673
	.byte	0xd
	.value	0x177
	.long	0x1441
	.byte	0x28
	.uleb128 0x13
	.long	.LASF674
	.byte	0xd
	.value	0x178
	.long	0xf2
	.byte	0x30
	.uleb128 0x13
	.long	.LASF675
	.byte	0xd
	.value	0x179
	.long	0xf2
	.byte	0x38
	.uleb128 0x13
	.long	.LASF676
	.byte	0xd
	.value	0x17a
	.long	0xf2
	.byte	0x40
	.uleb128 0x13
	.long	.LASF677
	.byte	0xd
	.value	0x17b
	.long	0xc4
	.byte	0x48
	.uleb128 0x13
	.long	.LASF678
	.byte	0xd
	.value	0x17c
	.long	0x1fab
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.byte	0x88
	.byte	0xd
	.value	0x1a4
	.long	0x2234
	.uleb128 0x16
	.long	.LASF679
	.byte	0xd
	.value	0x1a5
	.long	0xba0
	.uleb128 0x16
	.long	.LASF680
	.byte	0xd
	.value	0x1a6
	.long	0x214e
	.byte	0
	.uleb128 0x14
	.long	.LASF681
	.byte	0x38
	.byte	0xd
	.value	0x20c
	.long	0x22aa
	.uleb128 0x13
	.long	.LASF682
	.byte	0xd
	.value	0x20d
	.long	0x15bf
	.byte	0
	.uleb128 0x13
	.long	.LASF683
	.byte	0xd
	.value	0x20e
	.long	0x22aa
	.byte	0x8
	.uleb128 0x13
	.long	.LASF684
	.byte	0xd
	.value	0x20f
	.long	0x140e
	.byte	0x10
	.uleb128 0x13
	.long	.LASF685
	.byte	0xd
	.value	0x210
	.long	0x140e
	.byte	0x14
	.uleb128 0x13
	.long	.LASF686
	.byte	0xd
	.value	0x211
	.long	0x140e
	.byte	0x18
	.uleb128 0x13
	.long	.LASF687
	.byte	0xd
	.value	0x212
	.long	0x22b0
	.byte	0x20
	.uleb128 0x13
	.long	.LASF688
	.byte	0xd
	.value	0x213
	.long	0x22b0
	.byte	0x28
	.uleb128 0x13
	.long	.LASF689
	.byte	0xd
	.value	0x214
	.long	0x140e
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6c
	.uleb128 0x6
	.byte	0x8
	.long	0x2234
	.uleb128 0x11
	.long	.LASF690
	.byte	0xd
	.value	0x219
	.long	0x2234
	.uleb128 0xe
	.string	"HE"
	.byte	0x13
	.byte	0xc
	.long	0x22cc
	.uleb128 0x12
	.string	"he"
	.byte	0x18
	.byte	0x13
	.byte	0x10
	.long	0x22fc
	.uleb128 0x8
	.long	.LASF691
	.byte	0x13
	.byte	0x11
	.long	0x2338
	.byte	0
	.uleb128 0x8
	.long	.LASF692
	.byte	0x13
	.byte	0x12
	.long	0x233e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF693
	.byte	0x13
	.byte	0x13
	.long	0x1441
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"HEK"
	.byte	0x13
	.byte	0xd
	.long	0x2307
	.uleb128 0x12
	.string	"hek"
	.byte	0xc
	.byte	0x13
	.byte	0x17
	.long	0x2338
	.uleb128 0x8
	.long	.LASF694
	.byte	0x13
	.byte	0x18
	.long	0x1419
	.byte	0
	.uleb128 0x8
	.long	.LASF695
	.byte	0x13
	.byte	0x19
	.long	0x140e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF696
	.byte	0x13
	.byte	0x1a
	.long	0x1447
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22c2
	.uleb128 0x6
	.byte	0x8
	.long	0x22fc
	.uleb128 0x1f
	.long	0x57
	.long	0x2358
	.uleb128 0x18
	.long	0x1441
	.uleb128 0x18
	.long	0x157e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2344
	.uleb128 0x1f
	.long	0x1419
	.long	0x2372
	.uleb128 0x18
	.long	0x1441
	.uleb128 0x18
	.long	0x157e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x235e
	.uleb128 0x1f
	.long	0x57
	.long	0x239b
	.uleb128 0x18
	.long	0x1441
	.uleb128 0x18
	.long	0x157e
	.uleb128 0x18
	.long	0x1441
	.uleb128 0x18
	.long	0x18d
	.uleb128 0x18
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2378
	.uleb128 0x1f
	.long	0x57
	.long	0x23b5
	.uleb128 0x18
	.long	0x157e
	.uleb128 0x18
	.long	0x23b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13b8
	.uleb128 0x6
	.byte	0x8
	.long	0x23a1
	.uleb128 0x6
	.byte	0x8
	.long	0x12dd
	.uleb128 0xb
	.long	.LASF697
	.byte	0xd8
	.byte	0x18
	.byte	0xe6
	.long	0x2405
	.uleb128 0x8
	.long	.LASF698
	.byte	0x18
	.byte	0xf9
	.long	0x1f4
	.byte	0
	.uleb128 0x8
	.long	.LASF699
	.byte	0x18
	.byte	0xfa
	.long	0x2405
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF700
	.byte	0x18
	.byte	0xff
	.long	0x57
	.byte	0xd0
	.uleb128 0x13
	.long	.LASF701
	.byte	0x18
	.value	0x100
	.long	0xf8
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c7
	.uleb128 0x11
	.long	.LASF702
	.byte	0x18
	.value	0x107
	.long	0x23c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF703
	.uleb128 0x11
	.long	.LASF704
	.byte	0xb
	.value	0xcc1
	.long	0x242a
	.uleb128 0x6
	.byte	0x8
	.long	0x2430
	.uleb128 0x1d
	.long	0x57
	.uleb128 0x9
	.long	0x1f9f
	.long	0x2440
	.uleb128 0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF705
	.byte	0xb
	.value	0xe62
	.long	0x244c
	.uleb128 0x6
	.byte	0x8
	.long	0x2452
	.uleb128 0x1f
	.long	0x246b
	.long	0x246b
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0x1fa5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14ec
	.uleb128 0x11
	.long	.LASF706
	.byte	0xb
	.value	0xe63
	.long	0x247d
	.uleb128 0x6
	.byte	0x8
	.long	0x2483
	.uleb128 0x1f
	.long	0x140e
	.long	0x24b5
	.uleb128 0x18
	.long	0x246b
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0xf2
	.uleb128 0x18
	.long	0x140e
	.uleb128 0x18
	.long	0x1441
	.uleb128 0x18
	.long	0xc4
	.uleb128 0x18
	.long	0x1419
	.byte	0
	.uleb128 0x11
	.long	.LASF707
	.byte	0xb
	.value	0xe6b
	.long	0x24c1
	.uleb128 0x6
	.byte	0x8
	.long	0x24c7
	.uleb128 0x17
	.long	0x24d2
	.uleb128 0x18
	.long	0x24d2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x976
	.uleb128 0x21
	.byte	0x4
	.byte	0xb
	.value	0xfb1
	.long	0x2677
	.uleb128 0x1a
	.long	.LASF708
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF709
	.sleb128 1
	.uleb128 0x1a
	.long	.LASF710
	.sleb128 2
	.uleb128 0x1a
	.long	.LASF711
	.sleb128 3
	.uleb128 0x1a
	.long	.LASF712
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF713
	.sleb128 5
	.uleb128 0x1a
	.long	.LASF714
	.sleb128 6
	.uleb128 0x1a
	.long	.LASF715
	.sleb128 7
	.uleb128 0x1a
	.long	.LASF716
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF717
	.sleb128 9
	.uleb128 0x1a
	.long	.LASF718
	.sleb128 10
	.uleb128 0x1a
	.long	.LASF719
	.sleb128 11
	.uleb128 0x1a
	.long	.LASF720
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF721
	.sleb128 13
	.uleb128 0x1a
	.long	.LASF722
	.sleb128 14
	.uleb128 0x1a
	.long	.LASF723
	.sleb128 15
	.uleb128 0x1a
	.long	.LASF724
	.sleb128 16
	.uleb128 0x1a
	.long	.LASF725
	.sleb128 17
	.uleb128 0x1a
	.long	.LASF726
	.sleb128 18
	.uleb128 0x1a
	.long	.LASF727
	.sleb128 19
	.uleb128 0x1a
	.long	.LASF728
	.sleb128 20
	.uleb128 0x1a
	.long	.LASF729
	.sleb128 21
	.uleb128 0x1a
	.long	.LASF730
	.sleb128 22
	.uleb128 0x1a
	.long	.LASF731
	.sleb128 23
	.uleb128 0x1a
	.long	.LASF732
	.sleb128 24
	.uleb128 0x1a
	.long	.LASF733
	.sleb128 25
	.uleb128 0x1a
	.long	.LASF734
	.sleb128 26
	.uleb128 0x1a
	.long	.LASF735
	.sleb128 27
	.uleb128 0x1a
	.long	.LASF736
	.sleb128 28
	.uleb128 0x1a
	.long	.LASF737
	.sleb128 29
	.uleb128 0x1a
	.long	.LASF738
	.sleb128 30
	.uleb128 0x1a
	.long	.LASF739
	.sleb128 31
	.uleb128 0x1a
	.long	.LASF740
	.sleb128 32
	.uleb128 0x1a
	.long	.LASF741
	.sleb128 33
	.uleb128 0x1a
	.long	.LASF742
	.sleb128 34
	.uleb128 0x1a
	.long	.LASF743
	.sleb128 35
	.uleb128 0x1a
	.long	.LASF744
	.sleb128 36
	.uleb128 0x1a
	.long	.LASF745
	.sleb128 37
	.uleb128 0x1a
	.long	.LASF746
	.sleb128 38
	.uleb128 0x1a
	.long	.LASF747
	.sleb128 39
	.uleb128 0x1a
	.long	.LASF748
	.sleb128 40
	.uleb128 0x1a
	.long	.LASF749
	.sleb128 41
	.uleb128 0x1a
	.long	.LASF750
	.sleb128 42
	.uleb128 0x1a
	.long	.LASF751
	.sleb128 43
	.uleb128 0x1a
	.long	.LASF752
	.sleb128 44
	.uleb128 0x1a
	.long	.LASF753
	.sleb128 45
	.uleb128 0x1a
	.long	.LASF754
	.sleb128 46
	.uleb128 0x1a
	.long	.LASF755
	.sleb128 47
	.uleb128 0x1a
	.long	.LASF756
	.sleb128 48
	.uleb128 0x1a
	.long	.LASF757
	.sleb128 49
	.uleb128 0x1a
	.long	.LASF758
	.sleb128 50
	.uleb128 0x1a
	.long	.LASF759
	.sleb128 51
	.uleb128 0x1a
	.long	.LASF760
	.sleb128 52
	.uleb128 0x1a
	.long	.LASF761
	.sleb128 53
	.uleb128 0x1a
	.long	.LASF762
	.sleb128 54
	.uleb128 0x1a
	.long	.LASF763
	.sleb128 55
	.uleb128 0x1a
	.long	.LASF764
	.sleb128 56
	.uleb128 0x1a
	.long	.LASF765
	.sleb128 57
	.uleb128 0x1a
	.long	.LASF766
	.sleb128 58
	.uleb128 0x1a
	.long	.LASF767
	.sleb128 59
	.uleb128 0x1a
	.long	.LASF768
	.sleb128 60
	.uleb128 0x1a
	.long	.LASF769
	.sleb128 61
	.uleb128 0x1a
	.long	.LASF770
	.sleb128 62
	.uleb128 0x1a
	.long	.LASF771
	.sleb128 63
	.uleb128 0x1a
	.long	.LASF772
	.sleb128 64
	.uleb128 0x1a
	.long	.LASF773
	.sleb128 65
	.uleb128 0x1a
	.long	.LASF774
	.sleb128 66
	.byte	0
	.uleb128 0x22
	.long	.LASF778
	.byte	0x1
	.byte	0x2b
	.long	0x159c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b3
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.byte	0x2d
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF775
	.byte	0x1
	.byte	0x2e
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF776
	.byte	0x1
	.byte	0x3f
	.long	0x159c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF777
	.byte	0x1
	.byte	0x44
	.long	0x159c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF779
	.byte	0x1
	.byte	0x4d
	.long	0x159c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a0
	.uleb128 0x23
	.string	"sp"
	.byte	0x1
	.byte	0x4f
	.long	0x2114
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"pm"
	.byte	0x1
	.byte	0x50
	.long	0x1fa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.byte	0x51
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.byte	0x52
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0x53
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.byte	0x54
	.long	0x157e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2780
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.byte	0x5f
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x23
	.string	"re"
	.byte	0x1
	.byte	0x64
	.long	0x246b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF781
	.byte	0x1
	.byte	0xa2
	.long	0x159c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x28bf
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.byte	0xa4
	.long	0x2114
	.uleb128 0x28
	.string	"pm"
	.byte	0x1
	.byte	0xa5
	.long	0x1fa5
	.uleb128 0x23
	.string	"cx"
	.byte	0x1
	.byte	0xa6
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF782
	.byte	0x1
	.byte	0xa7
	.long	0x1441
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0xa8
	.long	0xf2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"m"
	.byte	0x1
	.byte	0xa9
	.long	0xf2
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x24
	.long	.LASF783
	.byte	0x1
	.byte	0xaa
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"rx"
	.byte	0x1
	.byte	0xab
	.long	0x1fab
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"nsv"
	.byte	0x1
	.byte	0xac
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"old"
	.byte	0x1
	.byte	0xad
	.long	0x1fab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2883
	.uleb128 0x24
	.long	.LASF784
	.byte	0x1
	.byte	0xb8
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.byte	0xc7
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.byte	0xfc
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"mg"
	.byte	0x1
	.byte	0xfd
	.long	0x157e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF786
	.byte	0x1
	.value	0x112
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2915
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x112
	.long	0x2915
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"rx"
	.byte	0x1
	.value	0x112
	.long	0x1fab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x114
	.long	0x291b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x115
	.long	0x1419
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4
	.uleb128 0x6
	.byte	0x8
	.long	0x2eb
	.uleb128 0x29
	.long	.LASF787
	.byte	0x1
	.value	0x12e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2977
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x12e
	.long	0x2915
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"rx"
	.byte	0x1
	.value	0x12e
	.long	0x1fab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x130
	.long	0x291b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x131
	.long	0x1419
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.long	.LASF788
	.byte	0x1
	.value	0x143
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b2
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x143
	.long	0x2915
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x145
	.long	0x291b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF789
	.byte	0x1
	.value	0x14e
	.long	0x159c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c25
	.uleb128 0x2d
	.string	"sp"
	.byte	0x1
	.value	0x150
	.long	0x2114
	.uleb128 0x2e
	.long	.LASF790
	.byte	0x1
	.value	0x150
	.long	0x2114
	.uleb128 0x2f
	.long	.LASF791
	.byte	0x1
	.value	0x150
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF792
	.byte	0x1
	.value	0x151
	.long	0x1441
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2d
	.string	"fpc"
	.byte	0x1
	.value	0x152
	.long	0x14d6
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x153
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x154
	.long	0xf2
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0x155
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF793
	.byte	0x1
	.value	0x156
	.long	0xf2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x157
	.long	0x140e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x158
	.long	0x1441
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF794
	.byte	0x1
	.value	0x159
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF795
	.byte	0x1
	.value	0x15a
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2f
	.long	.LASF796
	.byte	0x1
	.value	0x15b
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2f
	.long	.LASF797
	.byte	0x1
	.value	0x15c
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF798
	.byte	0x1
	.value	0x15d
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -170
	.uleb128 0x2f
	.long	.LASF799
	.byte	0x1
	.value	0x15e
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF800
	.byte	0x1
	.value	0x15f
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF801
	.byte	0x1
	.value	0x160
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF802
	.byte	0x1
	.value	0x161
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -169
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x162
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF803
	.byte	0x1
	.value	0x163
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF804
	.byte	0x1
	.value	0x165
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF805
	.byte	0x1
	.value	0x166
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -167
	.uleb128 0x2b
	.string	"nsv"
	.byte	0x1
	.value	0x167
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF806
	.byte	0x1
	.value	0x168
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x169
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF807
	.byte	0x1
	.value	0x16a
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -166
	.uleb128 0x30
	.long	.LASF808
	.byte	0x1
	.value	0x2ab
	.quad	.L221
	.uleb128 0x30
	.long	.LASF809
	.byte	0x1
	.value	0x2e5
	.quad	.L241
	.uleb128 0x26
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x2bb6
	.uleb128 0x2f
	.long	.LASF810
	.byte	0x1
	.value	0x1d4
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x2bdc
	.uleb128 0x2f
	.long	.LASF810
	.byte	0x1
	.value	0x1fe
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2c02
	.uleb128 0x2f
	.long	.LASF811
	.byte	0x1
	.value	0x26a
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.long	.LASF812
	.byte	0x1
	.value	0x2b1
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF813
	.byte	0x1
	.value	0x345
	.long	0x159c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c64
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x347
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x348
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF814
	.byte	0x1
	.value	0x365
	.long	0x159c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF815
	.byte	0x1
	.value	0x36a
	.long	0x159c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d56
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x36c
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x36d
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF817
	.byte	0x1
	.value	0x36e
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF818
	.byte	0x1
	.value	0x36f
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF819
	.byte	0x1
	.value	0x370
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x371
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"dst"
	.byte	0x1
	.value	0x372
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2d34
	.uleb128 0x2f
	.long	.LASF785
	.byte	0x1
	.value	0x3b7
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x3bf
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF820
	.byte	0x1
	.value	0x3cf
	.long	0x159c
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF821
	.byte	0x1
	.value	0x3d9
	.long	0x159c
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e02
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x3db
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x3e1
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF785
	.byte	0x1
	.value	0x3e2
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF822
	.byte	0x1
	.value	0x3e3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x3ea
	.long	0x15b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF823
	.byte	0x1
	.value	0x40e
	.long	0x159c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f4f
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x410
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2eee
	.uleb128 0x2f
	.long	.LASF824
	.byte	0x1
	.value	0x413
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF825
	.byte	0x1
	.value	0x413
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x414
	.long	0x2e0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x414
	.long	0x2e0
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x415
	.long	0x1441
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"max"
	.byte	0x1
	.value	0x416
	.long	0x2e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2f
	.long	.LASF826
	.byte	0x1
	.value	0x430
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x431
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0x431
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF827
	.byte	0x1
	.value	0x432
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x440
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF785
	.byte	0x1
	.value	0x441
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF828
	.byte	0x1
	.value	0x442
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x44a
	.long	0x15b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF832
	.byte	0x1
	.value	0x469
	.long	0x140e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f9a
	.uleb128 0x33
	.long	.LASF650
	.byte	0x1
	.value	0x469
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x46b
	.long	0x140e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x46c
	.long	0x22aa
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2c
	.long	.LASF829
	.byte	0x1
	.value	0x48b
	.long	0x140e
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fcc
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x48d
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF830
	.byte	0x1
	.value	0x492
	.long	0x140e
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ffe
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x494
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF831
	.byte	0x1
	.value	0x4a9
	.long	0x140e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3030
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x4ab
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF833
	.byte	0x1
	.value	0x4b7
	.long	0x140e
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3062
	.uleb128 0x33
	.long	.LASF834
	.byte	0x1
	.value	0x4b7
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF835
	.byte	0x1
	.value	0x4bd
	.long	0x140e
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x30bd
	.uleb128 0x33
	.long	.LASF836
	.byte	0x1
	.value	0x4bd
	.long	0x22aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF834
	.byte	0x1
	.value	0x4bd
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4bf
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x4c0
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.long	.LASF837
	.byte	0x1
	.value	0x4d1
	.long	0x140e
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3109
	.uleb128 0x33
	.long	.LASF834
	.byte	0x1
	.value	0x4d1
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4d3
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x4d4
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x32
	.long	.LASF838
	.byte	0x1
	.value	0x4e3
	.long	0x140e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3155
	.uleb128 0x33
	.long	.LASF834
	.byte	0x1
	.value	0x4e3
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4e5
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x4e6
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.long	.LASF839
	.byte	0x1
	.value	0x4fe
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3206
	.uleb128 0x33
	.long	.LASF775
	.byte	0x1
	.value	0x4fe
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x500
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0x501
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x504
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x31e3
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x50e
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x515
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF843
	.byte	0x1
	.value	0x522
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3234
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x522
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF844
	.byte	0x1
	.value	0x52e
	.long	0x159c
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b5
	.uleb128 0x33
	.long	.LASF845
	.byte	0x1
	.value	0x52e
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	.LASF846
	.byte	0x1
	.value	0x52e
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0x530
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x533
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x534
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x535
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0x536
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x333e
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x53a
	.long	0x33b5
	.uleb128 0x9
	.byte	0x3
	.quad	prefix.10700
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.value	0x53b
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x53c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2f
	.long	.LASF849
	.byte	0x1
	.value	0x54a
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x3370
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x558
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF850
	.byte	0x1
	.value	0x558
	.long	0x33c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0x55c
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0x578
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xf8
	.long	0x33c5
	.uleb128 0xa
	.long	0xb2
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b6
	.uleb128 0x2c
	.long	.LASF851
	.byte	0x1
	.value	0x588
	.long	0x159c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3419
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x58a
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF824
	.byte	0x1
	.value	0x58a
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF825
	.byte	0x1
	.value	0x58a
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.long	.LASF852
	.byte	0x1
	.value	0x591
	.long	0x159c
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3449
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x593
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2c
	.long	.LASF853
	.byte	0x1
	.value	0x59a
	.long	0x159c
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3479
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x59c
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2c
	.long	.LASF854
	.byte	0x1
	.value	0x5a3
	.long	0x159c
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x361f
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x5a5
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x5a6
	.long	0x140e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x5a7
	.long	0x22aa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF855
	.byte	0x1
	.value	0x5a8
	.long	0x22aa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF856
	.byte	0x1
	.value	0x5a9
	.long	0x33c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF857
	.byte	0x1
	.value	0x5aa
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x5ab
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF858
	.byte	0x1
	.value	0x5ac
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x5ad
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF818
	.byte	0x1
	.value	0x5ae
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x3556
	.uleb128 0x2f
	.long	.LASF785
	.byte	0x1
	.value	0x5da
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.long	0x3570
	.uleb128 0x2f
	.long	.LASF859
	.byte	0x1
	.value	0x5ec
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x26
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x35c8
	.uleb128 0x2b
	.string	"ary"
	.byte	0x1
	.value	0x61a
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"off"
	.byte	0x1
	.value	0x61b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.long	.LASF860
	.byte	0x1
	.value	0x61e
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0x630
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF862
	.byte	0x1
	.value	0x631
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.long	.LASF863
	.byte	0x1
	.value	0x63a
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF864
	.byte	0x1
	.value	0x63b
	.long	0x1584
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF865
	.byte	0x1
	.value	0x64a
	.long	0x159c
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x366d
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x64c
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF827
	.byte	0x1
	.value	0x64d
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0x64e
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF866
	.byte	0x1
	.value	0x659
	.long	0x159c
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF867
	.byte	0x1
	.value	0x660
	.long	0x159c
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3713
	.uleb128 0x27
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x66a
	.long	0x2114
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x66b
	.long	0x15ad
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x66c
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x66d
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF640
	.byte	0x1
	.value	0x66e
	.long	0x13f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x66f
	.long	0x15b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF868
	.byte	0x1
	.value	0x68e
	.long	0x159c
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF869
	.byte	0x1
	.value	0x693
	.long	0x159c
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3822
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x695
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x695
	.long	0x2114
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x696
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x697
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"svp"
	.byte	0x1
	.value	0x698
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF870
	.byte	0x1
	.value	0x699
	.long	0x1419
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x37d0
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x6b4
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x6c8
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF824
	.byte	0x1
	.value	0x6c9
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0x6d2
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF871
	.byte	0x1
	.value	0x6ed
	.long	0x159c
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x386e
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x6ef
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x6f0
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x6f1
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF872
	.byte	0x1
	.value	0x6fd
	.long	0x159c
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3909
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x6ff
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x700
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x701
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0x702
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF873
	.byte	0x1
	.value	0x703
	.long	0x1fa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x704
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x71c
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF874
	.byte	0x1
	.value	0x725
	.long	0x159c
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a19
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x727
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x727
	.long	0x2114
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x728
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x729
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF875
	.byte	0x1
	.value	0x72a
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x2f
	.long	.LASF876
	.byte	0x1
	.value	0x72b
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x72c
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0x72d
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF873
	.byte	0x1
	.value	0x72e
	.long	0x1fa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0x72f
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x730
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x39f7
	.uleb128 0x2b
	.string	"nsv"
	.byte	0x1
	.value	0x755
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x788
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF877
	.byte	0x1
	.value	0x794
	.long	0x159c
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b29
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x796
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x797
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x798
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x799
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x79a
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0x79b
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.long	.LASF879
	.byte	0x1
	.value	0x79c
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0x79d
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF873
	.byte	0x1
	.value	0x79e
	.long	0x1fa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x79f
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x7a0
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.long	0x3b07
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x7df
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x7e3
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF880
	.byte	0x1
	.value	0x7ec
	.long	0x159c
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b77
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x7ee
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x7ef
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF881
	.byte	0x1
	.value	0x7f0
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF882
	.byte	0x1
	.value	0x808
	.long	0x159c
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bc5
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x80a
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x80b
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x80c
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF884
	.byte	0x1
	.value	0x823
	.long	0x159c
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c56
	.uleb128 0x2a
	.string	"o"
	.byte	0x1
	.value	0x823
	.long	0x159c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF650
	.byte	0x1
	.value	0x823
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF885
	.byte	0x1
	.value	0x823
	.long	0x3c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF886
	.byte	0x1
	.value	0x823
	.long	0x3c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"kid"
	.byte	0x1
	.value	0x825
	.long	0x159c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"ops"
	.byte	0x1
	.value	0x826
	.long	0x3c56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF887
	.byte	0x1
	.value	0x827
	.long	0x3c5c
	.uleb128 0x9
	.byte	0x3
	.quad	too_deep.10885
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x159c
	.uleb128 0x9
	.long	0xf8
	.long	0x3c6c
	.uleb128 0xa
	.long	0xb2
	.byte	0x23
	.byte	0
	.uleb128 0x31
	.long	.LASF888
	.byte	0x1
	.value	0x851
	.long	0x159c
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF889
	.byte	0x1
	.value	0x857
	.long	0x159c
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4032
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x859
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF890
	.byte	0x1
	.value	0x85a
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x2b
	.string	"ix"
	.byte	0x1
	.value	0x85b
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x85c
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF891
	.byte	0x1
	.value	0x85e
	.long	0x4032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x2f
	.long	.LASF650
	.byte	0x1
	.value	0x85f
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x2f
	.long	.LASF892
	.byte	0x1
	.value	0x860
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x2f
	.long	.LASF893
	.byte	0x1
	.value	0x861
	.long	0x4042
	.uleb128 0x9
	.byte	0x3
	.quad	must_have_label.10906
	.uleb128 0x30
	.long	.LASF894
	.byte	0x1
	.value	0x872
	.quad	.L876
	.uleb128 0x26
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x3f73
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x865
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0x866
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x27
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x86a
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0x86b
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0x86c
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x86d
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x2f
	.long	.LASF817
	.byte	0x1
	.value	0x86e
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x86f
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x2f
	.long	.LASF895
	.byte	0x1
	.value	0x870
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -735
	.uleb128 0x26
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x3e43
	.uleb128 0x2b
	.string	"gv"
	.byte	0x1
	.value	0x874
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x2f
	.long	.LASF896
	.byte	0x1
	.value	0x875
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x27
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x877
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x3e68
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x893
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.byte	0
	.uleb128 0x26
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x3e8d
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x8a8
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.byte	0
	.uleb128 0x26
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x3eb3
	.uleb128 0x2f
	.long	.LASF897
	.byte	0x1
	.value	0x8bf
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.byte	0
	.uleb128 0x26
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x3ee9
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0x8d3
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x8d4
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x27
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x2f
	.long	.LASF898
	.byte	0x1
	.value	0x8e2
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x26
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.long	0x3f3f
	.uleb128 0x2b
	.string	"av"
	.byte	0x1
	.value	0x907
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x2b
	.string	"ary"
	.byte	0x1
	.value	0x908
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.byte	0
	.uleb128 0x27
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0x932
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0x933
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2f
	.long	.LASF900
	.byte	0x1
	.value	0x956
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x2f
	.long	.LASF901
	.byte	0x1
	.value	0x957
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -734
	.uleb128 0x2f
	.long	.LASF902
	.byte	0x1
	.value	0x958
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -733
	.uleb128 0x2f
	.long	.LASF903
	.byte	0x1
	.value	0x959
	.long	0x22aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x26
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0x3fe8
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x997
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x26
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x400e
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x9a0
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.byte	0
	.uleb128 0x27
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2f
	.long	.LASF904
	.byte	0x1
	.value	0x9ad
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x159c
	.long	0x4042
	.uleb128 0xa
	.long	0xb2
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.long	0xf8
	.long	0x4052
	.uleb128 0xa
	.long	0xb2
	.byte	0x14
	.byte	0
	.uleb128 0x2c
	.long	.LASF905
	.byte	0x1
	.value	0x9cb
	.long	0x159c
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4091
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0x9cd
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF906
	.byte	0x1
	.value	0x9ce
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x38
	.long	.LASF1072
	.byte	0x1
	.value	0xa0c
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4124
	.uleb128 0x33
	.long	.LASF907
	.byte	0x1
	.value	0xa0c
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0xa0c
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xa0e
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF793
	.byte	0x1
	.value	0xa0f
	.long	0xf2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0xa10
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF908
	.byte	0x1
	.value	0xa11
	.long	0x140e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0xa14
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1073
	.byte	0x1
	.value	0xa2c
	.long	0xc4
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF909
	.byte	0x1
	.value	0xa33
	.long	0x159c
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x41d3
	.uleb128 0x2a
	.string	"o"
	.byte	0x1
	.value	0xa33
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0xa35
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2f
	.long	.LASF904
	.byte	0x1
	.value	0xa36
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF890
	.byte	0x1
	.value	0xa37
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.long	.LASF910
	.byte	0x1
	.value	0xa38
	.long	0x41d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF911
	.byte	0x1
	.value	0xa39
	.long	0x240b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x30
	.long	.LASF912
	.byte	0x1
	.value	0xa51
	.quad	.L984
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41d9
	.uleb128 0xc
	.long	0x22b6
	.uleb128 0x2c
	.long	.LASF913
	.byte	0x1
	.value	0xa6c
	.long	0x159c
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x431d
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0xa6c
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.long	.LASF914
	.byte	0x1
	.value	0xa6c
	.long	0x3c56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.long	.LASF915
	.byte	0x1
	.value	0xa6c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x33
	.long	.LASF916
	.byte	0x1
	.value	0xa6c
	.long	0x431d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xa71
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xa72
	.long	0x22aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0xa73
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xa74
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0xa75
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2f
	.long	.LASF917
	.byte	0x1
	.value	0xa76
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"rop"
	.byte	0x1
	.value	0xa77
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF918
	.byte	0x1
	.value	0xa78
	.long	0x4323
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF919
	.byte	0x1
	.value	0xa79
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0xa7a
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF921
	.byte	0x1
	.value	0xa7b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF922
	.byte	0x1
	.value	0xa7c
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0xa88
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2028
	.uleb128 0x9
	.long	0xf8
	.long	0x4333
	.uleb128 0xa
	.long	0xb2
	.byte	0x29
	.byte	0
	.uleb128 0x3a
	.long	.LASF923
	.byte	0x1
	.value	0xad0
	.long	0x15ad
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x43af
	.uleb128 0x33
	.long	.LASF924
	.byte	0x1
	.value	0xad0
	.long	0x14d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"ix"
	.byte	0x1
	.value	0xad2
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"si"
	.byte	0x1
	.value	0xad3
	.long	0x33c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xad4
	.long	0x22aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0xadc
	.long	0x15ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF925
	.byte	0x1
	.value	0xaf4
	.long	0x159c
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x452e
	.uleb128 0x33
	.long	.LASF816
	.byte	0x1
	.value	0xaf4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x33
	.long	.LASF914
	.byte	0x1
	.value	0xaf4
	.long	0x3c56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.long	.LASF926
	.byte	0x1
	.value	0xaf4
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.string	"seq"
	.byte	0x1
	.value	0xaf4
	.long	0x1419
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xaf6
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF927
	.byte	0x1
	.value	0xaf7
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x44ed
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0xb2c
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xb2d
	.long	0x22aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0xb2e
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0xb2f
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x44a6
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0xb3f
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x26
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x44cb
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0xb44
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0xb4c
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x2b
	.string	"cv"
	.byte	0x1
	.value	0xb72
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xb74
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF928
	.byte	0x1
	.value	0xb8d
	.long	0x15ed
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e2
	.uleb128 0x33
	.long	.LASF929
	.byte	0x1
	.value	0xb8d
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x33
	.long	.LASF930
	.byte	0x1
	.value	0xb8d
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF931
	.byte	0x1
	.value	0xb90
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2b
	.string	"fp"
	.byte	0x1
	.value	0xb91
	.long	0x15ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x27
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x2f
	.long	.LASF932
	.byte	0x1
	.value	0xb94
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2b
	.string	"pmc"
	.byte	0x1
	.value	0xb95
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF933
	.byte	0x1
	.value	0xb96
	.long	0x1ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF934
	.byte	0x1
	.value	0xb97
	.long	0x1ff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF935
	.byte	0x1
	.value	0xbb0
	.long	0x159c
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x49bc
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xbb2
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xbb3
	.long	0x22aa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0xbb4
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF929
	.byte	0x1
	.value	0xbb5
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xbb6
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF936
	.byte	0x1
	.value	0xbb7
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF937
	.byte	0x1
	.value	0xbb8
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2b
	.string	"svp"
	.byte	0x1
	.value	0xbb9
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xbba
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2f
	.long	.LASF938
	.byte	0x1
	.value	0xbbb
	.long	0x15ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.string	"n_a"
	.byte	0x1
	.value	0xbbc
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF939
	.byte	0x1
	.value	0xbbd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2f
	.long	.LASF940
	.byte	0x1
	.value	0xbbe
	.long	0x15b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF941
	.byte	0x1
	.value	0xbbf
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF942
	.byte	0x1
	.value	0xbc0
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF943
	.byte	0x1
	.value	0xbc1
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0xbc2
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"op"
	.byte	0x1
	.value	0xbc3
	.long	0x159c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x478e
	.uleb128 0x2b
	.string	"rev"
	.byte	0x1
	.value	0xbc8
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.string	"ver"
	.byte	0x1
	.value	0xbc8
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF945
	.byte	0x1
	.value	0xbc8
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xbc9
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xbca
	.long	0x49bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0xbcb
	.long	0x49bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x26
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.long	0x4804
	.uleb128 0x2f
	.long	.LASF946
	.byte	0x1
	.value	0xbe7
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.string	"rev"
	.byte	0x1
	.value	0xbe8
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF947
	.byte	0x1
	.value	0xbe9
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.string	"ver"
	.byte	0x1
	.value	0xbea
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF948
	.byte	0x1
	.value	0xbeb
	.long	0x2f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF945
	.byte	0x1
	.value	0xbec
	.long	0x2eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x26
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x4902
	.uleb128 0x2b
	.string	"ar"
	.byte	0x1
	.value	0xc1b
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xc1c
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x27
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x2f
	.long	.LASF949
	.byte	0x1
	.value	0xc24
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.long	0x48de
	.uleb128 0x2f
	.long	.LASF818
	.byte	0x1
	.value	0xc27
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF950
	.byte	0x1
	.value	0xc28
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xc44
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0xc45
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x2b
	.string	"io"
	.byte	0x1
	.value	0xc4f
	.long	0x49c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x2b
	.string	"dir"
	.byte	0x1
	.value	0xc9e
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x4999
	.uleb128 0x2f
	.long	.LASF951
	.byte	0x1
	.value	0xcc2
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0xcc4
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF952
	.byte	0x1
	.value	0xcc5
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"ar"
	.byte	0x1
	.value	0xcc6
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xcc7
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x27
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x2b
	.string	"dir"
	.byte	0x1
	.value	0xccf
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.uleb128 0x2f
	.long	.LASF953
	.byte	0x1
	.value	0xcff
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13f9
	.uleb128 0x6
	.byte	0x8
	.long	0xb31
	.uleb128 0x31
	.long	.LASF954
	.byte	0x1
	.value	0xd24
	.long	0x159c
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF955
	.byte	0x1
	.value	0xd29
	.long	0x159c
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ae3
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xd2b
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xd2c
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0xd2d
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xd2e
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"was"
	.byte	0x1
	.value	0xd2e
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.long	.LASF918
	.byte	0x1
	.value	0xd2f
	.long	0x17d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF919
	.byte	0x1
	.value	0xd30
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0xd31
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xd32
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0xd33
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF922
	.byte	0x1
	.value	0xd34
	.long	0x15ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xd35
	.long	0x1419
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.uleb128 0x2b
	.string	"sv"
	.byte	0x1
	.value	0xd42
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF956
	.byte	0x1
	.value	0xd85
	.long	0x159c
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bd4
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xd87
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0xd88
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0xd89
	.long	0x2114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF873
	.byte	0x1
	.value	0xd8a
	.long	0x1fa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xd8b
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xd8c
	.long	0x22aa
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF890
	.byte	0x1
	.value	0xd8d
	.long	0x159c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF957
	.byte	0x1
	.value	0xd8e
	.long	0x13f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0xd8f
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0x4bb2
	.uleb128 0x2f
	.long	.LASF958
	.byte	0x1
	.value	0xda1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x27
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.uleb128 0x2b
	.string	"nsv"
	.byte	0x1
	.value	0xdbb
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF959
	.byte	0x1
	.value	0xdc9
	.long	0x159c
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c20
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xdcb
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xdcc
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xdcd
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF960
	.byte	0x1
	.value	0xddc
	.long	0x159c
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cd8
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xdde
	.long	0x2114
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0xddf
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF847
	.byte	0x1
	.value	0xde0
	.long	0x2114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF873
	.byte	0x1
	.value	0xde1
	.long	0x1fa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF890
	.byte	0x1
	.value	0xde2
	.long	0x159c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xde3
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"cx"
	.byte	0x1
	.value	0xde4
	.long	0x22aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0xde5
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x2f
	.long	.LASF958
	.byte	0x1
	.value	0xdf7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF961
	.byte	0x1
	.value	0xe0d
	.long	0x159c
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e88
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0xe0d
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xe0f
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.value	0xe10
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.long	.LASF793
	.byte	0x1
	.value	0xe11
	.long	0xf2
	.uleb128 0x2f
	.long	.LASF962
	.byte	0x1
	.value	0xe12
	.long	0xf2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2f
	.long	.LASF963
	.byte	0x1
	.value	0xe13
	.long	0x140e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2f
	.long	.LASF964
	.byte	0x1
	.value	0xe14
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x2f
	.long	.LASF965
	.byte	0x1
	.value	0xe15
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x2f
	.long	.LASF966
	.byte	0x1
	.value	0xe16
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF967
	.byte	0x1
	.value	0xe17
	.long	0x14d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"fpc"
	.byte	0x1
	.value	0xe18
	.long	0x14d6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF968
	.byte	0x1
	.value	0xe19
	.long	0x14d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0xe1a
	.long	0x140e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.long	.LASF969
	.byte	0x1
	.value	0xe1b
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x2f
	.long	.LASF970
	.byte	0x1
	.value	0xe1c
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -119
	.uleb128 0x2f
	.long	.LASF971
	.byte	0x1
	.value	0xe1d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x4e0d
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0xe8f
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x26
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.long	0x4e31
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0xea2
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x26
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.long	0x4e67
	.uleb128 0x2f
	.long	.LASF972
	.byte	0x1
	.value	0xeaf
	.long	0x140e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF973
	.byte	0x1
	.value	0xeb0
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -118
	.byte	0
	.uleb128 0x27
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.uleb128 0x2b
	.string	"z"
	.byte	0x1
	.value	0xeda
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF974
	.byte	0x1
	.value	0xeeb
	.long	0xf8
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f14
	.uleb128 0x33
	.long	.LASF801
	.byte	0x1
	.value	0xeeb
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF975
	.byte	0x1
	.value	0xeeb
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF976
	.byte	0x1
	.value	0xeeb
	.long	0x140e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"pwr"
	.byte	0x1
	.value	0xeee
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"eps"
	.byte	0x1
	.value	0xeef
	.long	0x2f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"res"
	.byte	0x1
	.value	0xef0
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2f
	.long	.LASF977
	.byte	0x1
	.value	0xef1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF978
	.byte	0x1
	.value	0xf06
	.long	0x140e
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x5014
	.uleb128 0x2a
	.string	"idx"
	.byte	0x1
	.value	0xf06
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.long	.LASF979
	.byte	0x1
	.value	0xf06
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	.LASF980
	.byte	0x1
	.value	0xf06
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF953
	.byte	0x1
	.value	0xf08
	.long	0x1441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF939
	.byte	0x1
	.value	0xf09
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF940
	.byte	0x1
	.value	0xf0a
	.long	0x15b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF941
	.byte	0x1
	.value	0xf0b
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF942
	.byte	0x1
	.value	0xf0c
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xf0d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.uleb128 0x2b
	.string	"sp"
	.byte	0x1
	.value	0xf19
	.long	0x2114
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF818
	.byte	0x1
	.value	0xf1a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x2b
	.string	"out"
	.byte	0x1
	.value	0xf2c
	.long	0x1441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF981
	.byte	0x1
	.value	0xf4e
	.long	0xf8
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x5046
	.uleb128 0x33
	.long	.LASF929
	.byte	0x1
	.value	0xf4e
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	0xf2
	.long	0x5056
	.uleb128 0xa
	.long	0xb2
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.long	.LASF982
	.byte	0x1
	.value	0x45e
	.long	0x5046
	.uleb128 0x9
	.byte	0x3
	.quad	context_name
	.uleb128 0x9
	.long	0x2d
	.long	0x5077
	.uleb128 0x20
	.byte	0
	.uleb128 0x3b
	.long	.LASF983
	.byte	0x19
	.byte	0x29
	.long	0x5082
	.uleb128 0xd
	.long	0x506c
	.uleb128 0x9
	.long	0xf2
	.long	0x5092
	.uleb128 0x20
	.byte	0
	.uleb128 0x3b
	.long	.LASF984
	.byte	0x1a
	.byte	0x1e
	.long	0x5087
	.uleb128 0x3c
	.long	.LASF985
	.byte	0x1a
	.value	0x2f1
	.long	0x2435
	.uleb128 0x3b
	.long	.LASF986
	.byte	0x1b
	.byte	0x17
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF987
	.byte	0x1b
	.byte	0x18
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF988
	.byte	0x1b
	.byte	0x34
	.long	0x13f9
	.uleb128 0x3b
	.long	.LASF989
	.byte	0x1b
	.byte	0x3b
	.long	0x1419
	.uleb128 0x3b
	.long	.LASF990
	.byte	0x1b
	.byte	0x49
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF991
	.byte	0x1b
	.byte	0x4a
	.long	0x13f9
	.uleb128 0x3b
	.long	.LASF992
	.byte	0x1b
	.byte	0x51
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF993
	.byte	0x1b
	.byte	0x52
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF994
	.byte	0x1b
	.byte	0x5d
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF995
	.byte	0x1b
	.byte	0x60
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF996
	.byte	0x1b
	.byte	0x79
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF997
	.byte	0x1b
	.byte	0x7a
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF998
	.byte	0x1b
	.byte	0x7b
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF999
	.byte	0x1b
	.byte	0x7c
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF1000
	.byte	0x1b
	.byte	0x7e
	.long	0x15bf
	.uleb128 0x3b
	.long	.LASF1001
	.byte	0x1b
	.byte	0x81
	.long	0x1584
	.uleb128 0x3b
	.long	.LASF1002
	.byte	0x1b
	.byte	0x84
	.long	0x15bf
	.uleb128 0x3b
	.long	.LASF1003
	.byte	0x1b
	.byte	0x89
	.long	0x1419
	.uleb128 0x3b
	.long	.LASF1004
	.byte	0x1b
	.byte	0x98
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1005
	.byte	0x1b
	.byte	0x9c
	.long	0x15ad
	.uleb128 0x3b
	.long	.LASF1006
	.byte	0x1b
	.byte	0x9d
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1007
	.byte	0x1b
	.byte	0x9f
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1008
	.byte	0x1b
	.byte	0xa0
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1009
	.byte	0x1b
	.byte	0xcc
	.long	0x51b1
	.uleb128 0xc
	.long	0x15ed
	.uleb128 0x3b
	.long	.LASF1010
	.byte	0x1b
	.byte	0xcd
	.long	0x15bf
	.uleb128 0x3b
	.long	.LASF1011
	.byte	0x1b
	.byte	0xcf
	.long	0x38b
	.uleb128 0x3b
	.long	.LASF1012
	.byte	0x1b
	.byte	0xd1
	.long	0x15ad
	.uleb128 0x3b
	.long	.LASF1013
	.byte	0x1b
	.byte	0xf3
	.long	0x1419
	.uleb128 0x3b
	.long	.LASF1014
	.byte	0x1b
	.byte	0xf5
	.long	0x1419
	.uleb128 0x3c
	.long	.LASF1015
	.byte	0x1b
	.value	0x112
	.long	0x241e
	.uleb128 0x3c
	.long	.LASF1016
	.byte	0x1b
	.value	0x125
	.long	0x87e
	.uleb128 0x3c
	.long	.LASF1017
	.byte	0x1b
	.value	0x126
	.long	0x87e
	.uleb128 0x3c
	.long	.LASF1018
	.byte	0x1b
	.value	0x127
	.long	0x87e
	.uleb128 0x3c
	.long	.LASF1019
	.byte	0x1b
	.value	0x12e
	.long	0x1419
	.uleb128 0x3c
	.long	.LASF1020
	.byte	0x1b
	.value	0x143
	.long	0x1441
	.uleb128 0x3c
	.long	.LASF1021
	.byte	0x1b
	.value	0x14f
	.long	0x140e
	.uleb128 0x3c
	.long	.LASF1022
	.byte	0x1b
	.value	0x162
	.long	0x1419
	.uleb128 0x3c
	.long	.LASF1023
	.byte	0x1b
	.value	0x164
	.long	0x5259
	.uleb128 0xc
	.long	0x1419
	.uleb128 0x3c
	.long	.LASF1024
	.byte	0x1b
	.value	0x1ff
	.long	0x1441
	.uleb128 0x3c
	.long	.LASF1025
	.byte	0x1b
	.value	0x203
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1026
	.byte	0x1c
	.byte	0x22
	.long	0x2114
	.uleb128 0x3b
	.long	.LASF1027
	.byte	0x1c
	.byte	0x26
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1028
	.byte	0x1c
	.byte	0x28
	.long	0x2114
	.uleb128 0x3b
	.long	.LASF1029
	.byte	0x1c
	.byte	0x2a
	.long	0x2114
	.uleb128 0x3b
	.long	.LASF1030
	.byte	0x1c
	.byte	0x2b
	.long	0x2114
	.uleb128 0x3b
	.long	.LASF1031
	.byte	0x1c
	.byte	0x2d
	.long	0x14b4
	.uleb128 0x3b
	.long	.LASF1032
	.byte	0x1c
	.byte	0x2e
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1033
	.byte	0x1c
	.byte	0x31
	.long	0x52ce
	.uleb128 0x6
	.byte	0x8
	.long	0x134a
	.uleb128 0x3b
	.long	.LASF1034
	.byte	0x1c
	.byte	0x33
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1035
	.byte	0x1c
	.byte	0x34
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1036
	.byte	0x1c
	.byte	0x37
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1037
	.byte	0x1c
	.byte	0x38
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1038
	.byte	0x1c
	.byte	0x39
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1039
	.byte	0x1c
	.byte	0x3b
	.long	0x14b4
	.uleb128 0x3b
	.long	.LASF1040
	.byte	0x1c
	.byte	0x3c
	.long	0x14b4
	.uleb128 0x3b
	.long	.LASF1041
	.byte	0x1c
	.byte	0x3d
	.long	0x14b4
	.uleb128 0x3b
	.long	.LASF1042
	.byte	0x1c
	.byte	0x40
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1043
	.byte	0x1c
	.byte	0x43
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF1044
	.byte	0x1c
	.byte	0x44
	.long	0x534d
	.uleb128 0x6
	.byte	0x8
	.long	0xcb4
	.uleb128 0x3b
	.long	.LASF1045
	.byte	0x1c
	.byte	0x5f
	.long	0xf8
	.uleb128 0x3b
	.long	.LASF1046
	.byte	0x1c
	.byte	0x60
	.long	0x1fa5
	.uleb128 0x3b
	.long	.LASF1047
	.byte	0x1c
	.byte	0x74
	.long	0x15b9
	.uleb128 0x3b
	.long	.LASF1048
	.byte	0x1c
	.byte	0x77
	.long	0xf2
	.uleb128 0x3b
	.long	.LASF1049
	.byte	0x1c
	.byte	0x78
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF1050
	.byte	0x1c
	.byte	0x7d
	.long	0x1584
	.uleb128 0x3b
	.long	.LASF1051
	.byte	0x1c
	.byte	0x7e
	.long	0x1584
	.uleb128 0x3b
	.long	.LASF1052
	.byte	0x1c
	.byte	0x80
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1053
	.byte	0x1c
	.byte	0x81
	.long	0x53b6
	.uleb128 0xc
	.long	0x2148
	.uleb128 0x3b
	.long	.LASF1054
	.byte	0x1c
	.byte	0x82
	.long	0x178
	.uleb128 0x3b
	.long	.LASF1055
	.byte	0x1c
	.byte	0x87
	.long	0x15bf
	.uleb128 0x3b
	.long	.LASF1056
	.byte	0x1c
	.byte	0x88
	.long	0x33c5
	.uleb128 0x3b
	.long	.LASF1057
	.byte	0x1c
	.byte	0x8b
	.long	0x53e7
	.uleb128 0x6
	.byte	0x8
	.long	0x240b
	.uleb128 0x3b
	.long	.LASF1058
	.byte	0x1c
	.byte	0x90
	.long	0x1441
	.uleb128 0x3b
	.long	.LASF1059
	.byte	0x1c
	.byte	0x99
	.long	0x159c
	.uleb128 0x3b
	.long	.LASF1060
	.byte	0x1c
	.byte	0xa1
	.long	0x140e
	.uleb128 0x3b
	.long	.LASF1061
	.byte	0x1c
	.byte	0xe5
	.long	0x2440
	.uleb128 0x3b
	.long	.LASF1062
	.byte	0x1c
	.byte	0xe7
	.long	0x2471
	.uleb128 0x3b
	.long	.LASF1063
	.byte	0x1c
	.byte	0xed
	.long	0x24b5
	.uleb128 0x3b
	.long	.LASF1064
	.byte	0x1c
	.byte	0xf0
	.long	0x57
	.uleb128 0x3c
	.long	.LASF1065
	.byte	0x1c
	.value	0x113
	.long	0xf8
	.uleb128 0x3c
	.long	.LASF1066
	.byte	0x1c
	.value	0x115
	.long	0x15bf
	.uleb128 0x3b
	.long	.LASF1067
	.byte	0x1d
	.byte	0x29
	.long	0xf8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2d
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF932:
	.string	"pmcsv"
.LASF616:
	.string	"OP_ESERVENT"
.LASF837:
	.string	"S_dopoptoeval"
.LASF541:
	.string	"OP_FTSVTX"
.LASF109:
	.string	"precomp"
.LASF494:
	.string	"OP_SYSREAD"
.LASF141:
	.string	"blku_oldretsp"
.LASF511:
	.string	"OP_SHUTDOWN"
.LASF761:
	.string	"repeat_ass_amg"
.LASF729:
	.string	"rshift_ass_amg"
.LASF587:
	.string	"OP_MSGRCV"
.LASF798:
	.string	"chopspace"
.LASF687:
	.string	"si_prev"
.LASF845:
	.string	"message"
.LASF1039:
	.string	"PL_markstack"
.LASF210:
	.string	"xpvfm"
.LASF629:
	.string	"OP_LOCK"
.LASF634:
	.string	"OP_max"
.LASF1057:
	.string	"PL_top_env"
.LASF34:
	.string	"__saved_mask"
.LASF54:
	.string	"op_next"
.LASF279:
	.string	"xiou_any"
.LASF545:
	.string	"OP_CHDIR"
.LASF133:
	.string	"gp_file"
.LASF459:
	.string	"OP_ENTER"
.LASF310:
	.string	"OP_REGCMAYBE"
.LASF138:
	.string	"block"
.LASF440:
	.string	"OP_FLOP"
.LASF478:
	.string	"OP_BINMODE"
.LASF189:
	.string	"xpvgv"
.LASF77:
	.string	"logop"
.LASF214:
	.string	"xio_ifp"
.LASF370:
	.string	"OP_SEQ"
.LASF69:
	.string	"cop_io"
.LASF681:
	.string	"stackinfo"
.LASF731:
	.string	"band_ass_amg"
.LASF738:
	.string	"gt_amg"
.LASF929:
	.string	"name"
.LASF532:
	.string	"OP_FTSOCK"
.LASF183:
	.string	"xhv_keys"
.LASF827:
	.string	"tmps"
.LASF229:
	.string	"xio_flags"
.LASF608:
	.string	"OP_GSERVENT"
.LASF233:
	.string	"svt_set"
.LASF179:
	.string	"xpvhv"
.LASF967:
	.string	"fops"
.LASF763:
	.string	"concat_ass_amg"
.LASF928:
	.string	"S_doopen_pm"
.LASF1070:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF499:
	.string	"OP_TELL"
.LASF571:
	.string	"OP_SETPGRP"
.LASF918:
	.string	"tbuf"
.LASF1042:
	.string	"PL_retstack_ix"
.LASF526:
	.string	"OP_FTROWNED"
.LASF127:
	.string	"gp_hv"
.LASF213:
	.string	"xpvio"
.LASF515:
	.string	"OP_GETPEERNAME"
.LASF369:
	.string	"OP_SGE"
.LASF162:
	.string	"xpviv"
.LASF968:
	.string	"linepc"
.LASF755:
	.string	"cos_amg"
.LASF1066:
	.string	"PL_comppad"
.LASF673:
	.string	"sbu_targ"
.LASF451:
	.string	"OP_CALLER"
.LASF509:
	.string	"OP_LISTEN"
.LASF367:
	.string	"OP_SGT"
.LASF581:
	.string	"OP_SHMCTL"
.LASF339:
	.string	"OP_DIVIDE"
.LASF198:
	.string	"xcv_start"
.LASF1050:
	.string	"PL_defstash"
.LASF13:
	.string	"__off_t"
.LASF124:
	.string	"gp_io"
.LASF128:
	.string	"gp_egv"
.LASF1001:
	.string	"PL_debstash"
.LASF45:
	.string	"st_size"
.LASF665:
	.string	"sbu_iters"
.LASF384:
	.string	"OP_SRAND"
.LASF861:
	.string	"mask"
.LASF694:
	.string	"hek_hash"
.LASF742:
	.string	"ncmp_amg"
.LASF67:
	.string	"cop_line"
.LASF197:
	.string	"xcv_stash"
.LASF350:
	.string	"OP_LEFT_SHIFT"
.LASF982:
	.string	"context_name"
.LASF1033:
	.string	"PL_savestack"
.LASF1045:
	.string	"PL_tainted"
.LASF617:
	.string	"OP_GPWNAM"
.LASF758:
	.string	"log_amg"
.LASF997:
	.string	"PL_DBsingle"
.LASF202:
	.string	"xcv_gv"
.LASF480:
	.string	"OP_UNTIE"
.LASF381:
	.string	"OP_SIN"
.LASF706:
	.string	"regexec_t"
.LASF688:
	.string	"si_next"
.LASF568:
	.string	"OP_KILL"
.LASF790:
	.string	"mark"
.LASF937:
	.string	"namesv"
.LASF159:
	.string	"xpv_cur"
.LASF308:
	.string	"OP_READLINE"
.LASF321:
	.string	"OP_SCHOP"
.LASF152:
	.string	"mg_type"
.LASF554:
	.string	"OP_READLINK"
.LASF70:
	.string	"UNOP"
.LASF96:
	.string	"op_lastop"
.LASF888:
	.string	"Perl_pp_dump"
.LASF46:
	.string	"st_blksize"
.LASF914:
	.string	"startop"
.LASF741:
	.string	"ne_amg"
.LASF158:
	.string	"xpv_pv"
.LASF32:
	.string	"__jmpbuf"
.LASF816:
	.string	"gimme"
.LASF1071:
	.string	"opcode"
.LASF447:
	.string	"OP_METHOD"
.LASF877:
	.string	"Perl_pp_last"
.LASF324:
	.string	"OP_DEFINED"
.LASF891:
	.string	"enterops"
.LASF672:
	.string	"sbu_dstr"
.LASF740:
	.string	"eq_amg"
.LASF42:
	.string	"st_gid"
.LASF562:
	.string	"OP_CLOSEDIR"
.LASF589:
	.string	"OP_SEMCTL"
.LASF465:
	.string	"OP_LEAVELOOP"
.LASF556:
	.string	"OP_RMDIR"
.LASF867:
	.string	"Perl_pp_dbstate"
.LASF859:
	.string	"cvgv"
.LASF78:
	.string	"op_other"
.LASF495:
	.string	"OP_SYSWRITE"
.LASF277:
	.string	"cv_flags_t"
.LASF842:
	.string	"s_v_p"
.LASF132:
	.string	"gp_line"
.LASF626:
	.string	"OP_EGRENT"
.LASF985:
	.string	"PL_ppaddr"
.LASF856:
	.string	"top_si"
.LASF664:
	.string	"subst"
.LASF821:
	.string	"Perl_pp_flip"
.LASF19:
	.string	"__syscall_slong_t"
.LASF219:
	.string	"xio_page_len"
.LASF323:
	.string	"OP_SCHOMP"
.LASF737:
	.string	"le_amg"
.LASF1023:
	.string	"PL_debug"
.LASF489:
	.string	"OP_LEAVEWRITE"
.LASF39:
	.string	"st_nlink"
.LASF368:
	.string	"OP_SLE"
.LASF165:
	.string	"xpvnv"
.LASF190:
	.string	"xgv_gp"
.LASF33:
	.string	"__mask_was_saved"
.LASF366:
	.string	"OP_SLT"
.LASF422:
	.string	"OP_JOIN"
.LASF151:
	.string	"mg_private"
.LASF873:
	.string	"newpm"
.LASF322:
	.string	"OP_CHOMP"
.LASF50:
	.string	"st_ctim"
.LASF767:
	.string	"to_av_amg"
.LASF671:
	.string	"sbu_orig"
.LASF858:
	.string	"stashname"
.LASF976:
	.string	"frcsize"
.LASF415:
	.string	"OP_EXISTS"
.LASF875:
	.string	"popsub2"
.LASF23:
	.string	"__sigset_t"
.LASF176:
	.string	"xav_arylen"
.LASF121:
	.string	"program"
.LASF897:
	.string	"index"
.LASF199:
	.string	"xcv_root"
.LASF936:
	.string	"tryname"
.LASF644:
	.string	"old_in_eval"
.LASF805:
	.string	"targ_is_utf8"
.LASF692:
	.string	"hent_hek"
.LASF1024:
	.string	"PL_encoding"
.LASF150:
	.string	"mg_virtual"
.LASF882:
	.string	"Perl_pp_redo"
.LASF464:
	.string	"OP_ENTERLOOP"
.LASF283:
	.string	"OP_STUB"
.LASF757:
	.string	"exp_amg"
.LASF990:
	.string	"PL_statusvalue"
.LASF764:
	.string	"copy_amg"
.LASF898:
	.string	"padlist"
.LASF1008:
	.string	"PL_eval_start"
.LASF65:
	.string	"cop_seq"
.LASF474:
	.string	"OP_CLOSE"
.LASF927:
	.string	"saveop"
.LASF865:
	.string	"Perl_pp_reset"
.LASF371:
	.string	"OP_SNE"
.LASF102:
	.string	"sv_flags"
.LASF730:
	.string	"band_amg"
.LASF578:
	.string	"OP_ALARM"
.LASF359:
	.string	"OP_I_GE"
.LASF712:
	.string	"string_amg"
.LASF935:
	.string	"Perl_pp_require"
.LASF1049:
	.string	"PL_formtarget"
.LASF355:
	.string	"OP_I_GT"
.LASF99:
	.string	"broiled"
.LASF224:
	.string	"xio_fmt_gv"
.LASF48:
	.string	"st_atim"
.LASF983:
	.string	"PL_utf8skip"
.LASF787:
	.string	"Perl_rxres_restore"
.LASF479:
	.string	"OP_TIE"
.LASF312:
	.string	"OP_REGCOMP"
.LASF131:
	.string	"gp_flags"
.LASF137:
	.string	"cx_u"
.LASF857:
	.string	"dbcxix"
.LASF320:
	.string	"OP_CHOP"
.LASF123:
	.string	"gp_refcnt"
.LASF655:
	.string	"itervar"
.LASF966:
	.string	"postspace"
.LASF117:
	.string	"nparens"
.LASF594:
	.string	"OP_LEAVEEVAL"
.LASF257:
	.string	"type"
.LASF483:
	.string	"OP_DBMCLOSE"
.LASF1015:
	.string	"PL_runops"
.LASF961:
	.string	"S_doparseform"
.LASF337:
	.string	"OP_MULTIPLY"
.LASF446:
	.string	"OP_ORASSIGN"
.LASF8:
	.string	"__uid_t"
.LASF512:
	.string	"OP_GSOCKOPT"
.LASF886:
	.string	"oplimit"
.LASF218:
	.string	"xio_page"
.LASF610:
	.string	"OP_SNETENT"
.LASF452:
	.string	"OP_WARN"
.LASF580:
	.string	"OP_SHMGET"
.LASF388:
	.string	"OP_INT"
.LASF602:
	.string	"OP_GNETENT"
.LASF973:
	.string	"ismore"
.LASF775:
	.string	"cxix"
.LASF569:
	.string	"OP_GETPPID"
.LASF999:
	.string	"PL_DBsignal"
.LASF1065:
	.string	"PL_reg_match_utf8"
.LASF930:
	.string	"mode"
.LASF392:
	.string	"OP_LENGTH"
.LASF313:
	.string	"OP_MATCH"
.LASF205:
	.string	"xcv_padlist"
.LASF537:
	.string	"OP_FTPIPE"
.LASF466:
	.string	"OP_RETURN"
.LASF951:
	.string	"msgstr"
.LASF31:
	.string	"__jmp_buf_tag"
.LASF910:
	.string	"cursi"
.LASF663:
	.string	"blku_loop"
.LASF823:
	.string	"Perl_pp_flop"
.LASF711:
	.string	"nomethod_amg"
.LASF376:
	.string	"OP_NEGATE"
.LASF1067:
	.string	"PL_do_undump"
.LASF122:
	.string	"gp_sv"
.LASF1009:
	.string	"PL_rsfp"
.LASF0:
	.string	"unsigned char"
.LASF433:
	.string	"OP_REVERSE"
.LASF615:
	.string	"OP_EPROTOENT"
.LASF391:
	.string	"OP_ABS"
.LASF964:
	.string	"noblank"
.LASF255:
	.string	"PerlIO"
.LASF674:
	.string	"sbu_s"
.LASF17:
	.string	"__blkcnt_t"
.LASF605:
	.string	"OP_GPROTOENT"
.LASF700:
	.string	"je_ret"
.LASF703:
	.string	"float"
.LASF945:
	.string	"sver"
.LASF811:
	.string	"skip"
.LASF892:
	.string	"do_dump"
.LASF905:
	.string	"Perl_pp_exit"
.LASF656:
	.string	"itersave"
.LASF921:
	.string	"runtime"
.LASF100:
	.string	"sv_any"
.LASF1038:
	.string	"PL_tmps_max"
.LASF426:
	.string	"OP_ANONHASH"
.LASF357:
	.string	"OP_I_LE"
.LASF829:
	.string	"Perl_dowantarray"
.LASF625:
	.string	"OP_SGRENT"
.LASF887:
	.string	"too_deep"
.LASF643:
	.string	"block_eval"
.LASF353:
	.string	"OP_I_LT"
.LASF744:
	.string	"slt_amg"
.LASF444:
	.string	"OP_COND_EXPR"
.LASF538:
	.string	"OP_FTLINK"
.LASF120:
	.string	"reganch"
.LASF248:
	.string	"stashes"
.LASF979:
	.string	"buf_sv"
.LASF472:
	.string	"OP_EXIT"
.LASF106:
	.string	"endp"
.LASF344:
	.string	"OP_ADD"
.LASF588:
	.string	"OP_SEMGET"
.LASF315:
	.string	"OP_SUBST"
.LASF438:
	.string	"OP_RANGE"
.LASF284:
	.string	"OP_SCALAR"
.LASF699:
	.string	"je_prev"
.LASF789:
	.string	"Perl_pp_formline"
.LASF1006:
	.string	"PL_main_root"
.LASF1048:
	.string	"PL_chopset"
.LASF611:
	.string	"OP_SPROTOENT"
.LASF586:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF884:
	.string	"S_dofindlabel"
.LASF411:
	.string	"OP_EACH"
.LASF1072:
	.string	"S_save_lines"
.LASF583:
	.string	"OP_SHMWRITE"
.LASF412:
	.string	"OP_VALUES"
.LASF434:
	.string	"OP_GREPSTART"
.LASF22:
	.string	"size_t"
.LASF301:
	.string	"OP_PROTOTYPE"
.LASF363:
	.string	"OP_I_NE"
.LASF843:
	.string	"Perl_qerror"
.LASF306:
	.string	"OP_BACKTICK"
.LASF555:
	.string	"OP_MKDIR"
.LASF445:
	.string	"OP_ANDASSIGN"
.LASF890:
	.string	"retop"
.LASF993:
	.string	"PL_defgv"
.LASF274:
	.string	"SVt_PVGV"
.LASF846:
	.string	"msglen"
.LASF662:
	.string	"blku_eval"
.LASF113:
	.string	"sublen"
.LASF794:
	.string	"item"
.LASF862:
	.string	"old_warnings"
.LASF460:
	.string	"OP_LEAVE"
.LASF170:
	.string	"xav_fill"
.LASF546:
	.string	"OP_CHOWN"
.LASF572:
	.string	"OP_GETPRIORITY"
.LASF653:
	.string	"next_op"
.LASF868:
	.string	"Perl_pp_scope"
.LASF520:
	.string	"OP_FTREXEC"
.LASF149:
	.string	"mg_moremagic"
.LASF934:
	.string	"pmcstat"
.LASF551:
	.string	"OP_RENAME"
.LASF676:
	.string	"sbu_strend"
.LASF933:
	.string	"pmstat"
.LASF66:
	.string	"cop_arybase"
.LASF916:
	.string	"padp"
.LASF1040:
	.string	"PL_markstack_ptr"
.LASF394:
	.string	"OP_VEC"
.LASF685:
	.string	"si_cxmax"
.LASF487:
	.string	"OP_READ"
.LASF455:
	.string	"OP_LINESEQ"
.LASF965:
	.string	"repeat"
.LASF155:
	.string	"mg_ptr"
.LASF481:
	.string	"OP_TIED"
.LASF332:
	.string	"OP_POSTINC"
.LASF908:
	.string	"line"
.LASF901:
	.string	"leaving_eval"
.LASF660:
	.string	"itermax"
.LASF786:
	.string	"Perl_rxres_save"
.LASF419:
	.string	"OP_UNPACK"
.LASF819:
	.string	"shift"
.LASF995:
	.string	"PL_DBgv"
.LASF576:
	.string	"OP_LOCALTIME"
.LASF227:
	.string	"xio_subprocess"
.LASF893:
	.string	"must_have_label"
.LASF535:
	.string	"OP_FTFILE"
.LASF111:
	.string	"subbeg"
.LASF105:
	.string	"startp"
.LASF824:
	.string	"right"
.LASF768:
	.string	"to_hv_amg"
.LASF622:
	.string	"OP_GGRNAM"
.LASF1068:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF346:
	.string	"OP_SUBTRACT"
.LASF883:
	.string	"oldsave"
.LASF522:
	.string	"OP_FTEWRITE"
.LASF863:
	.string	"bits_all"
.LASF769:
	.string	"to_gv_amg"
.LASF548:
	.string	"OP_UNLINK"
.LASF104:
	.string	"regexp"
.LASF631:
	.string	"OP_SETSTATE"
.LASF468:
	.string	"OP_NEXT"
.LASF503:
	.string	"OP_IOCTL"
.LASF1004:
	.string	"PL_tainting"
.LASF923:
	.string	"Perl_find_runcv"
.LASF784:
	.string	"saviters"
.LASF103:
	.string	"REGEXP"
.LASF974:
	.string	"S_num_overflow"
.LASF101:
	.string	"sv_refcnt"
.LASF463:
	.string	"OP_ITER"
.LASF540:
	.string	"OP_FTSGID"
.LASF295:
	.string	"OP_PUSHRE"
.LASF293:
	.string	"OP_PADHV"
.LASF563:
	.string	"OP_FORK"
.LASF234:
	.string	"svt_len"
.LASF774:
	.string	"max_amg_code"
.LASF258:
	.string	"next_off"
.LASF971:
	.string	"maxops"
.LASF457:
	.string	"OP_DBSTATE"
.LASF981:
	.string	"S_path_is_absolute"
.LASF60:
	.string	"op_flags"
.LASF1046:
	.string	"PL_curpm"
.LASF51:
	.string	"__unused"
.LASF68:
	.string	"cop_warnings"
.LASF690:
	.string	"PERL_SI"
.LASF791:
	.string	"origmark"
.LASF108:
	.string	"substrs"
.LASF903:
	.string	"last_eval_cx"
.LASF618:
	.string	"OP_GPWUID"
.LASF911:
	.string	"cur_env"
.LASF326:
	.string	"OP_STUDY"
.LASF866:
	.string	"Perl_pp_lineseq"
.LASF393:
	.string	"OP_SUBSTR"
.LASF143:
	.string	"blku_oldscopesp"
.LASF271:
	.string	"SVt_PVAV"
.LASF599:
	.string	"OP_GHOSTENT"
.LASF684:
	.string	"si_cxix"
.LASF180:
	.string	"xhv_array"
.LASF601:
	.string	"OP_GNBYADDR"
.LASF725:
	.string	"pow_ass_amg"
.LASF112:
	.string	"offsets"
.LASF748:
	.string	"seq_amg"
.LASF427:
	.string	"OP_SPLICE"
.LASF1026:
	.string	"PL_stack_sp"
.LASF372:
	.string	"OP_SCMP"
.LASF939:
	.string	"filter_has_file"
.LASF559:
	.string	"OP_TELLDIR"
.LASF225:
	.string	"xio_bottom_name"
.LASF373:
	.string	"OP_BIT_AND"
.LASF841:
	.string	"fill"
.LASF269:
	.string	"SVt_PVBM"
.LASF915:
	.string	"code"
.LASF947:
	.string	"nver"
.LASF817:
	.string	"items"
.LASF912:
	.string	"redo_body"
.LASF12:
	.string	"__nlink_t"
.LASF708:
	.string	"fallback_amg"
.LASF1016:
	.string	"PL_sv_undef"
.LASF38:
	.string	"st_ino"
.LASF860:
	.string	"tmpgv"
.LASF40:
	.string	"st_mode"
.LASF147:
	.string	"MAGIC"
.LASF62:
	.string	"cop_label"
.LASF870:
	.string	"cxtype"
.LASF153:
	.string	"mg_flags"
.LASF648:
	.string	"cur_text"
.LASF167:
	.string	"XPVAV"
.LASF273:
	.string	"SVt_PVCV"
.LASF329:
	.string	"OP_I_PREINC"
.LASF116:
	.string	"prelen"
.LASF1053:
	.string	"PL_curcop"
.LASF435:
	.string	"OP_GREPWHILE"
.LASF469:
	.string	"OP_REDO"
.LASF57:
	.string	"op_targ"
.LASF801:
	.string	"value"
.LASF788:
	.string	"Perl_rxres_free"
.LASF328:
	.string	"OP_PREINC"
.LASF94:
	.string	"op_redoop"
.LASF226:
	.string	"xio_bottom_gv"
.LASF325:
	.string	"OP_UNDEF"
.LASF378:
	.string	"OP_NOT"
.LASF476:
	.string	"OP_FILENO"
.LASF142:
	.string	"blku_oldmarksp"
.LASF441:
	.string	"OP_AND"
.LASF593:
	.string	"OP_ENTEREVAL"
.LASF984:
	.string	"PL_op_name"
.LASF834:
	.string	"startingblock"
.LASF118:
	.string	"lastparen"
.LASF838:
	.string	"S_dopoptoloop"
.LASF733:
	.string	"bor_ass_amg"
.LASF195:
	.string	"XPVCV"
.LASF885:
	.string	"opstack"
.LASF658:
	.string	"iterary"
.LASF1035:
	.string	"PL_savestack_max"
.LASF375:
	.string	"OP_BIT_OR"
.LASF510:
	.string	"OP_ACCEPT"
.LASF847:
	.string	"newsp"
.LASF1028:
	.string	"PL_curpad"
.LASF482:
	.string	"OP_DBMOPEN"
.LASF627:
	.string	"OP_GETLOGIN"
.LASF18:
	.string	"__ssize_t"
.LASF260:
	.string	"reg_data"
.LASF223:
	.string	"xio_fmt_name"
.LASF693:
	.string	"hent_val"
.LASF458:
	.string	"OP_UNSTACK"
.LASF701:
	.string	"je_mustcatch"
.LASF166:
	.string	"xnv_nv"
.LASF30:
	.string	"timespec"
.LASF691:
	.string	"hent_next"
.LASF500:
	.string	"OP_SEEK"
.LASF728:
	.string	"rshift_amg"
.LASF236:
	.string	"svt_free"
.LASF806:
	.string	"parseres"
.LASF978:
	.string	"run_user_filter"
.LASF87:
	.string	"op_pmdynflags"
.LASF771:
	.string	"iter_amg"
.LASF959:
	.string	"Perl_pp_entertry"
.LASF24:
	.string	"__val"
.LASF570:
	.string	"OP_GETPGRP"
.LASF853:
	.string	"Perl_pp_orassign"
.LASF275:
	.string	"SVt_PVFM"
.LASF430:
	.string	"OP_SHIFT"
.LASF994:
	.string	"PL_errgv"
.LASF456:
	.string	"OP_NEXTSTATE"
.LASF904:
	.string	"oldop"
.LASF247:
	.string	"clone_params"
.LASF89:
	.string	"PVOP"
.LASF1022:
	.string	"PL_hints"
.LASF624:
	.string	"OP_GGRENT"
.LASF735:
	.string	"bxor_ass_amg"
.LASF365:
	.string	"OP_I_NCMP"
.LASF343:
	.string	"OP_REPEAT"
.LASF403:
	.string	"OP_LCFIRST"
.LASF542:
	.string	"OP_FTTTY"
.LASF840:
	.string	"optype"
.LASF348:
	.string	"OP_CONCAT"
.LASF879:
	.string	"nextop"
.LASF920:
	.string	"safestr"
.LASF41:
	.string	"st_uid"
.LASF675:
	.string	"sbu_m"
.LASF206:
	.string	"xcv_outside"
.LASF280:
	.string	"PADLIST"
.LASF245:
	.string	"any_dxptr"
.LASF1037:
	.string	"PL_tmps_floor"
.LASF431:
	.string	"OP_UNSHIFT"
.LASF194:
	.string	"xgv_flags"
.LASF148:
	.string	"magic"
.LASF209:
	.string	"XPVFM"
.LASF574:
	.string	"OP_TIME"
.LASF523:
	.string	"OP_FTEEXEC"
.LASF1018:
	.string	"PL_sv_yes"
.LASF620:
	.string	"OP_SPWENT"
.LASF525:
	.string	"OP_FTEOWNED"
.LASF340:
	.string	"OP_I_DIVIDE"
.LASF361:
	.string	"OP_I_EQ"
.LASF272:
	.string	"SVt_PVHV"
.LASF820:
	.string	"Perl_pp_range"
.LASF261:
	.string	"SVt_NULL"
.LASF957:
	.string	"save_flags"
.LASF591:
	.string	"OP_REQUIRE"
.LASF231:
	.string	"mgvtbl"
.LASF307:
	.string	"OP_GLOB"
.LASF560:
	.string	"OP_SEEKDIR"
.LASF1003:
	.string	"PL_sub_generation"
.LASF188:
	.string	"XPVGV"
.LASF944:
	.string	"encoding"
.LASF490:
	.string	"OP_PRTF"
.LASF678:
	.string	"sbu_rx"
.LASF230:
	.string	"MGVTBL"
.LASF600:
	.string	"OP_GNBYNAME"
.LASF680:
	.string	"cx_subst"
.LASF679:
	.string	"cx_blk"
.LASF276:
	.string	"SVt_PVIO"
.LASF15:
	.string	"__time_t"
.LASF1019:
	.string	"PL_lex_state"
.LASF266:
	.string	"SVt_PVIV"
.LASF386:
	.string	"OP_LOG"
.LASF114:
	.string	"refcnt"
.LASF333:
	.string	"OP_I_POSTINC"
.LASF707:
	.string	"regfree_t"
.LASF770:
	.string	"to_cv_amg"
.LASF670:
	.string	"sbu_rxtainted"
.LASF552:
	.string	"OP_LINK"
.LASF436:
	.string	"OP_MAPSTART"
.LASF739:
	.string	"ge_amg"
.LASF832:
	.string	"S_dopoptolabel"
.LASF178:
	.string	"XPVHV"
.LASF14:
	.string	"sizetype"
.LASF848:
	.string	"prefix"
.LASF360:
	.string	"OP_EQ"
.LASF795:
	.string	"itemsize"
.LASF854:
	.string	"Perl_pp_caller"
.LASF287:
	.string	"OP_CONST"
.LASF90:
	.string	"pvop"
.LASF83:
	.string	"op_pmnext"
.LASF171:
	.string	"xav_max"
.LASF508:
	.string	"OP_CONNECT"
.LASF200:
	.string	"xcv_xsub"
.LASF575:
	.string	"OP_TMS"
.LASF640:
	.string	"hasargs"
.LASF450:
	.string	"OP_LEAVESUBLV"
.LASF514:
	.string	"OP_GETSOCKNAME"
.LASF61:
	.string	"op_private"
.LASF290:
	.string	"OP_GELEM"
.LASF400:
	.string	"OP_CHR"
.LASF753:
	.string	"dec_amg"
.LASF782:
	.string	"dstr"
.LASF1043:
	.string	"PL_Sv"
.LASF239:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF1029:
	.string	"PL_stack_base"
.LASF349:
	.string	"OP_STRINGIFY"
.LASF567:
	.string	"OP_EXEC"
.LASF347:
	.string	"OP_I_SUBTRACT"
.LASF212:
	.string	"XPVIO"
.LASF16:
	.string	"__blksize_t"
.LASF161:
	.string	"XPVIV"
.LASF175:
	.string	"xav_alloc"
.LASF288:
	.string	"OP_GVSV"
.LASF668:
	.string	"sbu_oldsave"
.LASF182:
	.string	"xhv_max"
.LASF35:
	.string	"sigjmp_buf"
.LASF115:
	.string	"minlen"
.LASF872:
	.string	"Perl_pp_leaveloop"
.LASF925:
	.string	"S_doeval"
.LASF319:
	.string	"OP_AASSIGN"
.LASF818:
	.string	"count"
.LASF493:
	.string	"OP_SYSSEEK"
.LASF174:
	.string	"xmg_stash"
.LASF590:
	.string	"OP_SEMOP"
.LASF667:
	.string	"sbu_rflags"
.LASF1054:
	.string	"PL_in_eval"
.LASF107:
	.string	"regstclass"
.LASF358:
	.string	"OP_GE"
.LASF185:
	.string	"xhv_eiter"
.LASF424:
	.string	"OP_LSLICE"
.LASF488:
	.string	"OP_ENTERWRITE"
.LASF783:
	.string	"orig"
.LASF354:
	.string	"OP_GT"
.LASF289:
	.string	"OP_GV"
.LASF516:
	.string	"OP_LSTAT"
.LASF485:
	.string	"OP_SELECT"
.LASF579:
	.string	"OP_SLEEP"
.LASF880:
	.string	"Perl_pp_next"
.LASF270:
	.string	"SVt_PVLV"
.LASF259:
	.string	"reg_substr_data"
.LASF745:
	.string	"sle_amg"
.LASF641:
	.string	"lval"
.LASF637:
	.string	"savearray"
.LASF657:
	.string	"iterlval"
.LASF970:
	.string	"unchopnum"
.LASF714:
	.string	"add_amg"
.LASF286:
	.string	"OP_WANTARRAY"
.LASF1030:
	.string	"PL_stack_max"
.LASF351:
	.string	"OP_RIGHT_SHIFT"
.LASF606:
	.string	"OP_GSBYNAME"
.LASF146:
	.string	"blk_u"
.LASF268:
	.string	"SVt_PVMG"
.LASF1000:
	.string	"PL_dbargs"
.LASF172:
	.string	"xof_off"
.LASF573:
	.string	"OP_SETPRIORITY"
.LASF717:
	.string	"subtr_ass_amg"
.LASF1010:
	.string	"PL_rsfp_filters"
.LASF623:
	.string	"OP_GGRGID"
.LASF192:
	.string	"xgv_namelen"
.LASF75:
	.string	"op_last"
.LASF292:
	.string	"OP_PADAV"
.LASF1007:
	.string	"PL_eval_root"
.LASF940:
	.string	"filter_child_proc"
.LASF943:
	.string	"hook_sv"
.LASF253:
	.string	"__dirstream"
.LASF420:
	.string	"OP_PACK"
.LASF833:
	.string	"S_dopoptosub"
.LASF242:
	.string	"any_long"
.LASF473:
	.string	"OP_OPEN"
.LASF792:
	.string	"tmpForm"
.LASF1036:
	.string	"PL_tmps_ix"
.LASF59:
	.string	"op_seq"
.LASF750:
	.string	"not_amg"
.LASF1055:
	.string	"PL_curstack"
.LASF604:
	.string	"OP_GPBYNUMBER"
.LASF267:
	.string	"SVt_PVNV"
.LASF79:
	.string	"PMOP"
.LASF407:
	.string	"OP_RV2AV"
.LASF491:
	.string	"OP_PRINT"
.LASF496:
	.string	"OP_SEND"
.LASF534:
	.string	"OP_FTBLK"
.LASF864:
	.string	"bits"
.LASF839:
	.string	"Perl_dounwind"
.LASF119:
	.string	"lastcloseparen"
.LASF709:
	.string	"abs_amg"
.LASF71:
	.string	"unop"
.LASF547:
	.string	"OP_CHROOT"
.LASF1027:
	.string	"PL_op"
.LASF228:
	.string	"xio_type"
.LASF521:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF235:
	.string	"svt_clear"
.LASF215:
	.string	"xio_ofp"
.LASF956:
	.string	"Perl_pp_leaveeval"
.LASF193:
	.string	"xgv_stash"
.LASF390:
	.string	"OP_OCT"
.LASF917:
	.string	"dummy"
.LASF987:
	.string	"PL_hintgv"
.LASF645:
	.string	"old_op_type"
.LASF345:
	.string	"OP_I_ADD"
.LASF81:
	.string	"op_pmreplroot"
.LASF906:
	.string	"anum"
.LASF803:
	.string	"fudge"
.LASF204:
	.string	"xcv_depth"
.LASF931:
	.string	"namelen"
.LASF130:
	.string	"gp_cvgen"
.LASF164:
	.string	"XPVNV"
.LASF960:
	.string	"Perl_pp_leavetry"
.LASF938:
	.string	"tryrsfp"
.LASF184:
	.string	"xhv_riter"
.LASF145:
	.string	"blku_gimme"
.LASF650:
	.string	"label"
.LASF299:
	.string	"OP_RV2CV"
.LASF135:
	.string	"context"
.LASF636:
	.string	"dfoutgv"
.LASF743:
	.string	"scmp_amg"
.LASF533:
	.string	"OP_FTCHR"
.LASF812:
	.string	"chopped"
.LASF1017:
	.string	"PL_sv_no"
.LASF1021:
	.string	"PL_error_count"
.LASF432:
	.string	"OP_SORT"
.LASF405:
	.string	"OP_LC"
.LASF356:
	.string	"OP_LE"
.LASF780:
	.string	"tmpstr"
.LASF804:
	.string	"item_is_utf8"
.LASF607:
	.string	"OP_GSBYPORT"
.LASF82:
	.string	"op_pmreplstart"
.LASF633:
	.string	"OP_CUSTOM"
.LASF352:
	.string	"OP_LT"
.LASF889:
	.string	"Perl_pp_goto"
.LASF374:
	.string	"OP_BIT_XOR"
.LASF453:
	.string	"OP_DIE"
.LASF316:
	.string	"OP_SUBSTCONT"
.LASF826:
	.string	"final"
.LASF1032:
	.string	"PL_scopestack_ix"
.LASF262:
	.string	"SVt_IV"
.LASF338:
	.string	"OP_I_MULTIPLY"
.LASF256:
	.string	"regnode"
.LASF718:
	.string	"mult_amg"
.LASF382:
	.string	"OP_COS"
.LASF1034:
	.string	"PL_savestack_ix"
.LASF1063:
	.string	"PL_regfree"
.LASF797:
	.string	"lines"
.LASF55:
	.string	"op_sibling"
.LASF216:
	.string	"xio_dirpu"
.LASF869:
	.string	"Perl_pp_enteriter"
.LASF241:
	.string	"any_iv"
.LASF409:
	.string	"OP_AELEM"
.LASF186:
	.string	"xhv_pmroot"
.LASF727:
	.string	"lshift_ass_amg"
.LASF379:
	.string	"OP_COMPLEMENT"
.LASF454:
	.string	"OP_RESET"
.LASF989:
	.string	"PL_perldb"
.LASF3:
	.string	"long unsigned int"
.LASF80:
	.string	"pmop"
.LASF531:
	.string	"OP_FTCTIME"
.LASF437:
	.string	"OP_MAPWHILE"
.LASF529:
	.string	"OP_FTMTIME"
.LASF1058:
	.string	"PL_errors"
.LASF421:
	.string	"OP_SPLIT"
.LASF802:
	.string	"gotsome"
.LASF669:
	.string	"sbu_once"
.LASF377:
	.string	"OP_I_NEGATE"
.LASF558:
	.string	"OP_READDIR"
.LASF772:
	.string	"int_amg"
.LASF97:
	.string	"PerlInterpreter"
.LASF713:
	.string	"numer_amg"
.LASF93:
	.string	"loop"
.LASF722:
	.string	"modulo_amg"
.LASF362:
	.string	"OP_NE"
.LASF759:
	.string	"sqrt_amg"
.LASF762:
	.string	"concat_amg"
.LASF598:
	.string	"OP_GHBYADDR"
.LASF715:
	.string	"add_ass_amg"
.LASF20:
	.string	"char"
.LASF975:
	.string	"fldsize"
.LASF443:
	.string	"OP_XOR"
.LASF518:
	.string	"OP_FTRREAD"
.LASF638:
	.string	"argarray"
.LASF734:
	.string	"bxor_amg"
.LASF799:
	.string	"chophere"
.LASF221:
	.string	"xio_top_name"
.LASF566:
	.string	"OP_SYSTEM"
.LASF1047:
	.string	"PL_last_in_gv"
.LASF156:
	.string	"mg_len"
.LASF492:
	.string	"OP_SYSOPEN"
.LASF278:
	.string	"xiou_dirp"
.LASF191:
	.string	"xgv_name"
.LASF309:
	.string	"OP_RCATLINE"
.LASF874:
	.string	"Perl_pp_return"
.LASF442:
	.string	"OP_OR"
.LASF334:
	.string	"OP_POSTDEC"
.LASF800:
	.string	"linemark"
.LASF721:
	.string	"div_ass_amg"
.LASF635:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF502:
	.string	"OP_FCNTL"
.LASF91:
	.string	"op_pv"
.LASF527:
	.string	"OP_FTZERO"
.LASF296:
	.string	"OP_RV2GV"
.LASF423:
	.string	"OP_LIST"
.LASF813:
	.string	"Perl_pp_grepstart"
.LASF217:
	.string	"xio_lines"
.LASF524:
	.string	"OP_FTIS"
.LASF683:
	.string	"si_cxstack"
.LASF282:
	.string	"OP_NULL"
.LASF160:
	.string	"xpv_len"
.LASF830:
	.string	"Perl_block_gimme"
.LASF58:
	.string	"op_type"
.LASF416:
	.string	"OP_RV2HV"
.LASF53:
	.string	"STRLEN"
.LASF1041:
	.string	"PL_markstack_max"
.LASF539:
	.string	"OP_FTSUID"
.LASF1012:
	.string	"PL_compcv"
.LASF922:
	.string	"runcv"
.LASF314:
	.string	"OP_QR"
.LASF398:
	.string	"OP_FORMLINE"
.LASF646:
	.string	"old_namesv"
.LASF876:
	.string	"clear_errsv"
.LASF565:
	.string	"OP_WAITPID"
.LASF263:
	.string	"SVt_NV"
.LASF395:
	.string	"OP_INDEX"
.LASF383:
	.string	"OP_RAND"
.LASF396:
	.string	"OP_RINDEX"
.LASF696:
	.string	"hek_key"
.LASF613:
	.string	"OP_EHOSTENT"
.LASF342:
	.string	"OP_I_MODULO"
.LASF899:
	.string	"gotocv"
.LASF773:
	.string	"DESTROY_amg"
.LASF851:
	.string	"Perl_pp_xor"
.LASF203:
	.string	"xcv_file"
.LASF1013:
	.string	"PL_cop_seqmax"
.LASF977:
	.string	"intsize"
.LASF43:
	.string	"__pad0"
.LASF828:
	.string	"flop"
.LASF1062:
	.string	"PL_regexecp"
.LASF250:
	.string	"proto_perl"
.LASF647:
	.string	"old_eval_root"
.LASF418:
	.string	"OP_HSLICE"
.LASF95:
	.string	"op_nextop"
.LASF341:
	.string	"OP_MODULO"
.LASF807:
	.string	"oneline"
.LASF582:
	.string	"OP_SHMREAD"
.LASF536:
	.string	"OP_FTDIR"
.LASF793:
	.string	"send"
.LASF612:
	.string	"OP_SSERVENT"
.LASF808:
	.string	"ff_line"
.LASF754:
	.string	"atan2_amg"
.LASF281:
	.string	"PADOFFSET"
.LASF85:
	.string	"op_pmflags"
.LASF1061:
	.string	"PL_regcompp"
.LASF723:
	.string	"modulo_ass_amg"
.LASF661:
	.string	"blku_sub"
.LASF98:
	.string	"interpreter"
.LASF949:
	.string	"dirsv"
.LASF144:
	.string	"blku_oldpm"
.LASF747:
	.string	"sge_amg"
.LASF941:
	.string	"filter_state"
.LASF72:
	.string	"op_first"
.LASF52:
	.string	"double"
.LASF211:
	.string	"xfm_lines"
.LASF86:
	.string	"op_pmpermflags"
.LASF157:
	.string	"xrv_rv"
.LASF44:
	.string	"st_rdev"
.LASF969:
	.string	"ischop"
.LASF37:
	.string	"st_dev"
.LASF21:
	.string	"ssize_t"
.LASF56:
	.string	"op_ppaddr"
.LASF630:
	.string	"OP_THREADSV"
.LASF751:
	.string	"compl_amg"
.LASF871:
	.string	"Perl_pp_enterloop"
.LASF240:
	.string	"any_i32"
.LASF752:
	.string	"inc_amg"
.LASF765:
	.string	"neg_amg"
.LASF814:
	.string	"Perl_pp_mapstart"
.LASF996:
	.string	"PL_DBsub"
.LASF265:
	.string	"SVt_PV"
.LASF64:
	.string	"cop_filegv"
.LASF243:
	.string	"any_bool"
.LASF428:
	.string	"OP_PUSH"
.LASF1031:
	.string	"PL_scopestack"
.LASF404:
	.string	"OP_UC"
.LASF208:
	.string	"xcv_outside_seq"
.LASF331:
	.string	"OP_I_PREDEC"
.LASF110:
	.string	"data"
.LASF507:
	.string	"OP_BIND"
.LASF614:
	.string	"OP_ENETENT"
.LASF561:
	.string	"OP_REWINDDIR"
.LASF686:
	.string	"si_type"
.LASF950:
	.string	"loader"
.LASF169:
	.string	"xav_array"
.LASF836:
	.string	"cxstk"
.LASF264:
	.string	"SVt_RV"
.LASF988:
	.string	"PL_dowarn"
.LASF246:
	.string	"CLONE_PARAMS"
.LASF461:
	.string	"OP_SCOPE"
.LASF597:
	.string	"OP_GHBYNAME"
.LASF705:
	.string	"regcomp_t"
.LASF330:
	.string	"OP_PREDEC"
.LASF958:
	.string	"markoff"
.LASF651:
	.string	"resetsp"
.LASF134:
	.string	"PERL_CONTEXT"
.LASF1002:
	.string	"PL_beginav"
.LASF991:
	.string	"PL_exit_flags"
.LASF181:
	.string	"xhv_fill"
.LASF163:
	.string	"xiv_iv"
.LASF1020:
	.string	"PL_linestr"
.LASF962:
	.string	"base"
.LASF831:
	.string	"Perl_is_lvalue_sub"
.LASF825:
	.string	"left"
.LASF704:
	.string	"runops_proc_t"
.LASF139:
	.string	"blku_oldsp"
.LASF726:
	.string	"lshift_amg"
.LASF564:
	.string	"OP_WAIT"
.LASF470:
	.string	"OP_DUMP"
.LASF760:
	.string	"repeat_amg"
.LASF796:
	.string	"fieldsize"
.LASF9:
	.string	"__gid_t"
.LASF318:
	.string	"OP_SASSIGN"
.LASF1005:
	.string	"PL_main_cv"
.LASF719:
	.string	"mult_ass_amg"
.LASF809:
	.string	"ff_dec"
.LASF652:
	.string	"redo_op"
.LASF954:
	.string	"Perl_pp_dofile"
.LASF408:
	.string	"OP_AELEMFAST"
.LASF695:
	.string	"hek_len"
.LASF402:
	.string	"OP_UCFIRST"
.LASF553:
	.string	"OP_SYMLINK"
.LASF387:
	.string	"OP_SQRT"
.LASF919:
	.string	"tmpbuf"
.LASF585:
	.string	"OP_MSGCTL"
.LASF894:
	.string	"retry"
.LASF25:
	.string	"tv_sec"
.LASF942:
	.string	"filter_sub"
.LASF528:
	.string	"OP_FTSIZE"
.LASF27:
	.string	"long long unsigned int"
.LASF913:
	.string	"Perl_sv_compile_2op"
.LASF736:
	.string	"lt_amg"
.LASF498:
	.string	"OP_EOF"
.LASF654:
	.string	"last_op"
.LASF544:
	.string	"OP_FTBINARY"
.LASF517:
	.string	"OP_STAT"
.LASF697:
	.string	"jmpenv"
.LASF777:
	.string	"Perl_pp_regcreset"
.LASF902:
	.string	"in_block"
.LASF1064:
	.string	"PL_reginterp_cnt"
.LASF417:
	.string	"OP_HELEM"
.LASF47:
	.string	"st_blocks"
.LASF955:
	.string	"Perl_pp_entereval"
.LASF992:
	.string	"PL_stderrgv"
.LASF702:
	.string	"JMPENV"
.LASF895:
	.string	"reified"
.LASF294:
	.string	"OP_PADANY"
.LASF298:
	.string	"OP_AV2ARYLEN"
.LASF504:
	.string	"OP_FLOCK"
.LASF878:
	.string	"pop2"
.LASF998:
	.string	"PL_DBtrace"
.LASF399:
	.string	"OP_ORD"
.LASF238:
	.string	"svt_dup"
.LASF1051:
	.string	"PL_curstash"
.LASF689:
	.string	"si_markoff"
.LASF1073:
	.string	"S_docatch_body"
.LASF285:
	.string	"OP_PUSHMARK"
.LASF92:
	.string	"LOOP"
.LASF592:
	.string	"OP_DOFILE"
.LASF222:
	.string	"xio_top_gv"
.LASF720:
	.string	"div_amg"
.LASF980:
	.string	"maxlen"
.LASF926:
	.string	"outside"
.LASF414:
	.string	"OP_DELETE"
.LASF907:
	.string	"array"
.LASF779:
	.string	"Perl_pp_regcomp"
.LASF716:
	.string	"subtr_amg"
.LASF844:
	.string	"Perl_die_where"
.LASF677:
	.string	"sbu_rxres"
.LASF1056:
	.string	"PL_curstackinfo"
.LASF948:
	.string	"nsver"
.LASF449:
	.string	"OP_LEAVESUB"
.LASF776:
	.string	"Perl_pp_regcmaybe"
.LASF1069:
	.string	"pp_ctl.c"
.LASF291:
	.string	"OP_PADSV"
.LASF303:
	.string	"OP_SREFGEN"
.LASF471:
	.string	"OP_GOTO"
.LASF881:
	.string	"inner"
.LASF88:
	.string	"op_pmstash"
.LASF900:
	.string	"gotoprobe"
.LASF232:
	.string	"svt_get"
.LASF125:
	.string	"gp_form"
.LASF822:
	.string	"flip"
.LASF335:
	.string	"OP_I_POSTDEC"
.LASF855:
	.string	"ccstack"
.LASF952:
	.string	"dirmsgsv"
.LASF297:
	.string	"OP_RV2SV"
.LASF140:
	.string	"blku_oldcop"
.LASF63:
	.string	"cop_stash"
.LASF305:
	.string	"OP_BLESS"
.LASF577:
	.string	"OP_GMTIME"
.LASF28:
	.string	"long long int"
.LASF251:
	.string	"line_t"
.LASF187:
	.string	"xhv_name"
.LASF543:
	.string	"OP_FTTEXT"
.LASF963:
	.string	"skipspaces"
.LASF682:
	.string	"si_stack"
.LASF530:
	.string	"OP_FTATIME"
.LASF237:
	.string	"svt_copy"
.LASF429:
	.string	"OP_POP"
.LASF327:
	.string	"OP_POS"
.LASF336:
	.string	"OP_POW"
.LASF462:
	.string	"OP_ENTERITER"
.LASF302:
	.string	"OP_REFGEN"
.LASF785:
	.string	"targ"
.LASF26:
	.string	"tv_nsec"
.LASF74:
	.string	"listop"
.LASF519:
	.string	"OP_FTRWRITE"
.LASF513:
	.string	"OP_SSOCKOPT"
.LASF136:
	.string	"cx_type"
.LASF177:
	.string	"xav_flags"
.LASF619:
	.string	"OP_GPWENT"
.LASF986:
	.string	"PL_incgv"
.LASF73:
	.string	"LISTOP"
.LASF815:
	.string	"Perl_pp_mapwhile"
.LASF852:
	.string	"Perl_pp_andassign"
.LASF953:
	.string	"datasv"
.LASF659:
	.string	"iterix"
.LASF1025:
	.string	"PL_taint_warn"
.LASF609:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF467:
	.string	"OP_LAST"
.LASF173:
	.string	"xmg_magic"
.LASF810:
	.string	"itembytes"
.LASF413:
	.string	"OP_KEYS"
.LASF946:
	.string	"nrev"
.LASF154:
	.string	"mg_obj"
.LASF850:
	.string	"prev"
.LASF596:
	.string	"OP_LEAVETRY"
.LASF244:
	.string	"any_dptr"
.LASF439:
	.string	"OP_FLIP"
.LASF766:
	.string	"to_sv_amg"
.LASF557:
	.string	"OP_OPEN_DIR"
.LASF835:
	.string	"S_dopoptosub_at"
.LASF168:
	.string	"xpvav"
.LASF84:
	.string	"op_pmregexp"
.LASF304:
	.string	"OP_REF"
.LASF506:
	.string	"OP_SOCKPAIR"
.LASF1014:
	.string	"PL_evalseq"
.LASF486:
	.string	"OP_GETC"
.LASF603:
	.string	"OP_GPBYNAME"
.LASF201:
	.string	"xcv_xsubany"
.LASF477:
	.string	"OP_UMASK"
.LASF220:
	.string	"xio_lines_left"
.LASF1052:
	.string	"PL_restartop"
.LASF497:
	.string	"OP_RECV"
.LASF126:
	.string	"gp_av"
.LASF710:
	.string	"bool__amg"
.LASF501:
	.string	"OP_TRUNCATE"
.LASF76:
	.string	"LOGOP"
.LASF475:
	.string	"OP_PIPE_OP"
.LASF1011:
	.string	"PL_compiling"
.LASF621:
	.string	"OP_EPWENT"
.LASF896:
	.string	"autogv"
.LASF781:
	.string	"Perl_pp_substcont"
.LASF649:
	.string	"block_loop"
.LASF300:
	.string	"OP_ANONCODE"
.LASF746:
	.string	"sgt_amg"
.LASF724:
	.string	"pow_amg"
.LASF317:
	.string	"OP_TRANS"
.LASF698:
	.string	"je_buf"
.LASF628:
	.string	"OP_SYSCALL"
.LASF1044:
	.string	"PL_Xpv"
.LASF207:
	.string	"xcv_flags"
.LASF632:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF666:
	.string	"sbu_maxiters"
.LASF196:
	.string	"xpvcv"
.LASF380:
	.string	"OP_ATAN2"
.LASF425:
	.string	"OP_ANONLIST"
.LASF505:
	.string	"OP_SOCKET"
.LASF410:
	.string	"OP_ASLICE"
.LASF1059:
	.string	"PL_lastgotoprobe"
.LASF389:
	.string	"OP_HEX"
.LASF642:
	.string	"oldcomppad"
.LASF254:
	.string	"_PerlIO"
.LASF49:
	.string	"st_mtim"
.LASF484:
	.string	"OP_SSELECT"
.LASF732:
	.string	"bor_amg"
.LASF749:
	.string	"sne_amg"
.LASF584:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF129:
	.string	"gp_cv"
.LASF972:
	.string	"prespace"
.LASF406:
	.string	"OP_QUOTEMETA"
.LASF29:
	.string	"__jmp_buf"
.LASF639:
	.string	"olddepth"
.LASF909:
	.string	"S_docatch"
.LASF364:
	.string	"OP_NCMP"
.LASF595:
	.string	"OP_ENTERTRY"
.LASF778:
	.string	"Perl_pp_wantarray"
.LASF549:
	.string	"OP_CHMOD"
.LASF924:
	.string	"db_seqp"
.LASF385:
	.string	"OP_EXP"
.LASF401:
	.string	"OP_CRYPT"
.LASF1060:
	.string	"PL_sortcxix"
.LASF550:
	.string	"OP_UTIME"
.LASF756:
	.string	"sin_amg"
.LASF36:
	.string	"stat"
.LASF252:
	.string	"PerlIOl"
.LASF448:
	.string	"OP_ENTERSUB"
.LASF249:
	.string	"flags"
.LASF397:
	.string	"OP_SPRINTF"
.LASF311:
	.string	"OP_REGCRESET"
.LASF849:
	.string	"start"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
