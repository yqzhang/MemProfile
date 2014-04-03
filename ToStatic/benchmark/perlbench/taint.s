	.file	"taint.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 taint.c
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
	.string	" while running setuid"
.LC1:
	.string	" while running setgid"
.LC2:
	.string	" while running with -t switch"
.LC3:
	.string	" while running with -T switch"
	.text
	.globl	Perl_taint_proper
	.type	Perl_taint_proper, @function
Perl_taint_proper:
.LFB2:
	.file 1 "taint.c"
	.loc 1 26 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 51 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.0
	testb	%al, %al	# PL_tainted.0
	je	.L1	#,
	.loc 1 52 0
	cmpq	$0, -24(%rbp)	#, f
	jne	.L3	#,
	.loc 1 53 0
	movq	$PL_no_security, -24(%rbp)	#, f
.L3:
	.loc 1 54 0
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.1
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.2
	cmpl	%eax, %edx	# PL_uid.2, PL_euid.1
	je	.L4	#,
	.loc 1 55 0
	movq	$.LC0, -8(%rbp)	#, ug
	jmp	.L5	#
.L4:
	.loc 1 56 0
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.3
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.4
	cmpl	%eax, %edx	# PL_gid.4, PL_egid.3
	je	.L6	#,
	.loc 1 57 0
	movq	$.LC1, -8(%rbp)	#, ug
	jmp	.L5	#
.L6:
	.loc 1 58 0
	movzbl	PL_taint_warn(%rip), %eax	# PL_taint_warn, PL_taint_warn.5
	testb	%al, %al	# PL_taint_warn.5
	je	.L7	#,
	.loc 1 59 0
	movq	$.LC2, -8(%rbp)	#, ug
	jmp	.L5	#
.L7:
	.loc 1 61 0
	movq	$.LC3, -8(%rbp)	#, ug
.L5:
	.loc 1 62 0
	movzbl	PL_unsafe(%rip), %eax	# PL_unsafe, PL_unsafe.6
	testb	%al, %al	# PL_unsafe.6
	jne	.L8	#,
	.loc 1 62 0 is_stmt 0 discriminator 1
	movzbl	PL_taint_warn(%rip), %eax	# PL_taint_warn, PL_taint_warn.7
	testb	%al, %al	# PL_taint_warn.7
	je	.L9	#,
.L8:
	.loc 1 63 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.8
	movq	80(%rax), %rax	# PL_curcop.8_18->cop_warnings, D.10560
	testq	%rax, %rax	# D.10560
	je	.L10	#,
	.loc 1 63 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.9
	movq	80(%rax), %rax	# PL_curcop.9_20->cop_warnings, D.10560
	cmpq	$32, %rax	#, D.10560
	je	.L10	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.10
	movq	80(%rax), %rax	# PL_curcop.10_22->cop_warnings, D.10560
	cmpq	$16, %rax	#, D.10560
	je	.L11	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.11
	movq	80(%rax), %rax	# PL_curcop.11_24->cop_warnings, D.10560
	movq	(%rax), %rax	# _25->sv_any, D.10561
	movq	(%rax), %rax	# MEM[(struct XPV *)_26].xpv_pv, D.10562
	addq	$9, %rax	#, D.10562
	movzbl	(%rax), %eax	# *_28, D.10563
	movsbl	%al, %eax	# D.10563, D.10564
	andl	$64, %eax	#, D.10564
	testl	%eax, %eax	# D.10564
	jne	.L11	#,
.L10:
	.loc 1 63 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.12
	movq	80(%rax), %rax	# PL_curcop.12_32->cop_warnings, D.10560
	testq	%rax, %rax	# D.10560
	jne	.L12	#,
	.loc 1 63 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.13
	movzbl	%al, %eax	# PL_dowarn.13, D.10564
	andl	$1, %eax	#, D.10564
	testl	%eax, %eax	# D.10564
	je	.L12	#,
.L11:
	.loc 1 64 0 is_stmt 1
	movq	-8(%rbp), %rcx	# ug, tmp86
	movq	-32(%rbp), %rdx	# s, tmp87
	movq	-24(%rbp), %rax	# f, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 63 0
	jmp	.L1	#
.L12:
	.loc 1 63 0 is_stmt 0 discriminator 2
	jmp	.L1	#
.L9:
	.loc 1 67 0 is_stmt 1
	movq	-8(%rbp), %rdx	# ug, tmp89
	movq	-32(%rbp), %rcx	# s, tmp90
	movq	-24(%rbp), %rax	# f, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1:
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_taint_proper, .-Perl_taint_proper
	.section	.rodata
.LC4:
	.string	"ENV"
.LC5:
	.string	"another variable"
.LC6:
	.string	"%%ENV is aliased to %s%s"
.LC7:
	.string	"%%ENV is aliased to %%%s%s"
.LC8:
	.string	"PATH"
.LC9:
	.string	"$ENV{PATH}"
.LC10:
	.string	"Insecure %s%s"
.LC11:
	.string	"Insecure directory in %s%s"
.LC12:
	.string	"TERM"
.LC13:
	.string	"-_.+"
.LC14:
	.string	"Insecure $ENV{%s}%s"
	.text
	.globl	Perl_taint_env
	.type	Perl_taint_env, @function
Perl_taint_env:
.LFB3:
	.loc 1 74 0
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
	.loc 1 87 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.14
	testq	%rax, %rax	# PL_envgv.14
	jne	.L14	#,
	.loc 1 88 0
	jmp	.L13	#
.L14:
	.loc 1 91 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.15
	movq	(%rax), %rax	# PL_envgv.15_10->sv_any, D.10569
	movq	56(%rax), %rax	# _11->xgv_gp, D.10570
	movq	40(%rax), %rax	# _12->gp_hv, D.10571
	testq	%rax, %rax	# D.10571
	je	.L16	#,
	.loc 1 91 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.16
	movq	(%rax), %rax	# PL_envgv.16_14->sv_any, D.10569
	movq	56(%rax), %rax	# _15->xgv_gp, D.10570
	movq	40(%rax), %rax	# _16->gp_hv, D.10571
	movl	12(%rax), %eax	# _17->sv_flags, D.10572
	andl	$32768, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L16	#,
	.loc 1 92 0 is_stmt 1 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.17
	movq	(%rax), %rax	# PL_envgv.17_20->sv_any, D.10569
	movq	56(%rax), %rax	# _21->xgv_gp, D.10570
	movq	40(%rax), %rax	# _22->gp_hv, D.10571
	movl	$69, %esi	#,
	movq	%rax, %rdi	# D.10571,
	call	Perl_mg_find	#
	.loc 1 91 0 discriminator 1
	testq	%rax, %rax	# D.10573
	jne	.L17	#,
.L16:
.LBB2:
	.loc 1 93 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, tmp177
	movb	%al, -74(%rbp)	# tmp177, was_tainted
	.loc 1 94 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.19
	movq	(%rax), %rax	# PL_envgv.19_26->sv_any, D.10569
	movq	56(%rax), %rax	# _27->xgv_gp, D.10570
	movq	48(%rax), %rax	# _28->gp_egv, D.10574
	testq	%rax, %rax	# D.10574
	je	.L18	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.20
	movq	(%rax), %rax	# PL_envgv.20_30->sv_any, D.10569
	movq	56(%rax), %rax	# _31->xgv_gp, D.10570
	movq	48(%rax), %rax	# _32->gp_egv, iftmp.18
	jmp	.L19	#
.L18:
	.loc 1 94 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, iftmp.18
.L19:
	.loc 1 94 0 discriminator 3
	movq	(%rax), %rax	# iftmp.18_4->sv_any, D.10569
	movq	64(%rax), %rax	# _35->xgv_name, tmp178
	movq	%rax, -48(%rbp)	# tmp178, name
	.loc 1 95 0 is_stmt 1 discriminator 3
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 96 0 discriminator 3
	movq	-48(%rbp), %rax	# name, tmp179
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	strcmp	#
	testl	%eax, %eax	# D.10575
	jne	.L20	#,
	.loc 1 98 0
	movl	$.LC5, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_taint_proper	#
	jmp	.L21	#
.L20:
	.loc 1 101 0
	movq	-48(%rbp), %rax	# name, tmp180
	movq	%rax, %rsi	# tmp180,
	movl	$.LC7, %edi	#,
	call	Perl_taint_proper	#
.L21:
	.loc 1 103 0
	movzbl	-74(%rbp), %eax	# was_tainted, tmp181
	movb	%al, PL_tainted(%rip)	# tmp181, PL_tainted
.L17:
.LBE2:
	.loc 1 130 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.22
	movq	(%rax), %rax	# PL_envgv.22_38->sv_any, D.10569
	movq	56(%rax), %rax	# _39->xgv_gp, D.10570
	movq	40(%rax), %rax	# _40->gp_hv, D.10571
	testq	%rax, %rax	# D.10571
	je	.L22	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.23
	movq	(%rax), %rax	# PL_envgv.23_42->sv_any, D.10569
	movq	56(%rax), %rax	# _43->xgv_gp, D.10570
	movq	40(%rax), %rax	# _44->gp_hv, iftmp.21
	jmp	.L23	#
.L22:
	.loc 1 130 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.24
	movq	%rax, %rdi	# PL_envgv.24,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _47->sv_any, D.10569
	movq	56(%rax), %rax	# _48->xgv_gp, D.10570
	movq	40(%rax), %rax	# _49->gp_hv, iftmp.21
.L23:
	.loc 1 130 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# iftmp.21,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp182, svp
	.loc 1 131 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, svp
	je	.L24	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp183
	movq	(%rax), %rax	# *svp_51, D.10576
	testq	%rax, %rax	# D.10576
	je	.L24	#,
	.loc 1 132 0 is_stmt 1
	movq	-40(%rbp), %rax	# svp, tmp184
	movq	(%rax), %rax	# *svp_51, D.10576
	movl	12(%rax), %eax	# _53->sv_flags, D.10572
	andl	$57344, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L25	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp185
	movq	(%rax), %rax	# *svp_51, D.10576
	movq	%rax, %rdi	# D.10576,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.10577
	je	.L25	#,
	.loc 1 133 0 is_stmt 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 134 0
	movl	$.LC9, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_taint_proper	#
.L25:
	.loc 1 136 0
	movq	-40(%rbp), %rax	# svp, tmp186
	movq	(%rax), %rax	# *svp_51, D.10576
	movl	$101, %esi	#,
	movq	%rax, %rdi	# D.10576,
	call	Perl_mg_find	#
	movq	%rax, -32(%rbp)	# tmp187, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L24	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp188
	movzbl	19(%rax), %eax	# mg_59->mg_flags, D.10578
	movzbl	%al, %eax	# D.10578, D.10575
	andl	$1, %eax	#, D.10575
	testl	%eax, %eax	# D.10575
	je	.L24	#,
	.loc 1 137 0 is_stmt 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 138 0
	movl	$.LC9, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_taint_proper	#
.L24:
	.loc 1 144 0
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.26
	movq	(%rax), %rax	# PL_envgv.26_63->sv_any, D.10569
	movq	56(%rax), %rax	# _64->xgv_gp, D.10570
	movq	40(%rax), %rax	# _65->gp_hv, D.10571
	testq	%rax, %rax	# D.10571
	je	.L26	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.27
	movq	(%rax), %rax	# PL_envgv.27_67->sv_any, D.10569
	movq	56(%rax), %rax	# _68->xgv_gp, D.10570
	movq	40(%rax), %rax	# _69->gp_hv, iftmp.25
	jmp	.L27	#
.L26:
	.loc 1 144 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.28
	movq	%rax, %rdi	# PL_envgv.28,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _72->sv_any, D.10569
	movq	56(%rax), %rax	# _73->xgv_gp, D.10570
	movq	40(%rax), %rax	# _74->gp_hv, iftmp.25
.L27:
	.loc 1 144 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# iftmp.25,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp189, svp
	.loc 1 145 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, svp
	je	.L28	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp190
	movq	(%rax), %rax	# *svp_76, D.10576
	testq	%rax, %rax	# D.10576
	je	.L28	#,
	movq	-40(%rbp), %rax	# svp, tmp191
	movq	(%rax), %rax	# *svp_76, D.10576
	movl	12(%rax), %eax	# _78->sv_flags, D.10572
	andl	$57344, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L28	#,
	movq	-40(%rbp), %rax	# svp, tmp192
	movq	(%rax), %rax	# *svp_76, D.10576
	movq	%rax, %rdi	# D.10576,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.10577
	je	.L28	#,
.LBB3:
	.loc 1 147 0 is_stmt 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, tmp193
	movb	%al, -73(%rbp)	# tmp193, was_tainted
	.loc 1 148 0
	movq	-40(%rbp), %rax	# svp, tmp194
	movq	(%rax), %rax	# *svp_76, D.10576
	movl	12(%rax), %eax	# _84->sv_flags, D.10572
	andl	$262144, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L29	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp195
	movq	(%rax), %rax	# *svp_76, D.10576
	movq	(%rax), %rax	# _87->sv_any, D.10579
	movq	8(%rax), %rax	# MEM[(struct XPV *)_88].xpv_cur, n_a.30
	movq	%rax, -72(%rbp)	# n_a.30, n_a
	movq	-40(%rbp), %rax	# svp, tmp196
	movq	(%rax), %rax	# *svp_76, D.10576
	movq	(%rax), %rax	# _90->sv_any, D.10579
	movq	(%rax), %rax	# MEM[(struct XPV *)_91].xpv_pv, iftmp.29
	jmp	.L30	#
.L29:
	.loc 1 148 0 discriminator 2
	movq	-40(%rbp), %rax	# svp, tmp197
	movq	(%rax), %rax	# *svp_76, D.10576
	leaq	-72(%rbp), %rcx	#, tmp198
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# D.10576,
	call	Perl_sv_2pv_flags	#
.L30:
	.loc 1 148 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.29, t
	.loc 1 149 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rdx	# n_a, n_a.31
	movq	-56(%rbp), %rax	# t, tmp202
	addq	%rdx, %rax	# n_a.31, tmp201
	movq	%rax, -24(%rbp)	# tmp201, e
	.loc 1 150 0 discriminator 3
	movzbl	-73(%rbp), %eax	# was_tainted, tmp203
	movb	%al, PL_tainted(%rip)	# tmp203, PL_tainted
	.loc 1 151 0 discriminator 3
	movq	-56(%rbp), %rax	# t, tmp204
	cmpq	-24(%rbp), %rax	# e, tmp204
	jae	.L31	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp205
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$64, %al	#, D.10577
	jle	.L32	#,
	movq	-56(%rbp), %rax	# t, tmp206
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$90, %al	#, D.10577
	jle	.L33	#,
.L32:
	.loc 1 151 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp207
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$96, %al	#, D.10577
	jle	.L34	#,
	.loc 1 151 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp208
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$122, %al	#, D.10577
	jle	.L33	#,
.L34:
	.loc 1 151 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp209
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$47, %al	#, D.10577
	jle	.L35	#,
	.loc 1 151 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp210
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$57, %al	#, D.10577
	jle	.L33	#,
.L35:
	.loc 1 151 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp211
	movzbl	(%rax), %eax	# *t_95, D.10577
	cmpb	$95, %al	#, D.10577
	jne	.L31	#,
.L33:
	.loc 1 152 0 is_stmt 1
	addq	$1, -56(%rbp)	#, t
	.loc 1 153 0
	jmp	.L36	#
.L31:
	jmp	.L36	#
.L39:
	.loc 1 154 0
	addq	$1, -56(%rbp)	#, t
.L36:
	.loc 1 153 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp212
	cmpq	-24(%rbp), %rax	# e, tmp212
	jae	.L37	#,
	.loc 1 153 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp213
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$64, %al	#, D.10577
	jle	.L38	#,
	.loc 1 153 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp214
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$90, %al	#, D.10577
	jle	.L39	#,
.L38:
	.loc 1 153 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp215
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$96, %al	#, D.10577
	jle	.L40	#,
	.loc 1 153 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp216
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$122, %al	#, D.10577
	jle	.L39	#,
.L40:
	.loc 1 153 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp217
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$47, %al	#, D.10577
	jle	.L41	#,
	.loc 1 153 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp218
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$57, %al	#, D.10577
	jle	.L39	#,
.L41:
	.loc 1 153 0 discriminator 2
	movq	-56(%rbp), %rax	# t, tmp219
	movzbl	(%rax), %eax	# *t_3, D.10577
	cmpb	$95, %al	#, D.10577
	je	.L39	#,
	.loc 1 153 0 discriminator 1
	movq	-56(%rbp), %rax	# t, tmp220
	movzbl	(%rax), %eax	# *t_3, D.10577
	movsbl	%al, %eax	# D.10577, D.10575
	movl	%eax, %esi	# D.10575,
	movl	$.LC13, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.10580
	jne	.L39	#,
.L37:
	.loc 1 155 0 is_stmt 1
	movq	-56(%rbp), %rax	# t, tmp221
	cmpq	-24(%rbp), %rax	# e, tmp221
	jae	.L28	#,
	.loc 1 156 0
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 157 0
	movl	$.LC12, %esi	#,
	movl	$.LC14, %edi	#,
	call	Perl_taint_proper	#
.L28:
.LBE3:
	.loc 1 162 0
	movq	$misc_env.10302, -64(%rbp)	#, e
	jmp	.L43	#
.L47:
	.loc 1 163 0
	movq	-64(%rbp), %rax	# e, tmp222
	movq	(%rax), %rax	# *e_1, D.10580
	movq	%rax, %rdi	# D.10580,
	call	strlen	#
	movl	%eax, %r12d	# D.10581, D.10575
	movq	-64(%rbp), %rax	# e, tmp223
	movq	(%rax), %rbx	# *e_1, D.10580
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.33
	movq	(%rax), %rax	# PL_envgv.33_123->sv_any, D.10569
	movq	56(%rax), %rax	# _124->xgv_gp, D.10570
	movq	40(%rax), %rax	# _125->gp_hv, D.10571
	testq	%rax, %rax	# D.10571
	je	.L44	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.34
	movq	(%rax), %rax	# PL_envgv.34_127->sv_any, D.10569
	movq	56(%rax), %rax	# _128->xgv_gp, D.10570
	movq	40(%rax), %rax	# _129->gp_hv, iftmp.32
	jmp	.L45	#
.L44:
	.loc 1 163 0 discriminator 2
	movq	PL_envgv(%rip), %rax	# PL_envgv, PL_envgv.35
	movq	%rax, %rdi	# PL_envgv.35,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _132->sv_any, D.10569
	movq	56(%rax), %rax	# _133->xgv_gp, D.10570
	movq	40(%rax), %rax	# _134->gp_hv, iftmp.32
.L45:
	.loc 1 163 0 discriminator 3
	movl	$0, %ecx	#,
	movl	%r12d, %edx	# D.10575,
	movq	%rbx, %rsi	# D.10580,
	movq	%rax, %rdi	# iftmp.32,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp224, svp
	.loc 1 164 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, svp
	je	.L46	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp225
	movq	(%rax), %rax	# *svp_136, D.10576
	cmpq	$PL_sv_undef, %rax	#, D.10576
	je	.L46	#,
	movq	-40(%rbp), %rax	# svp, tmp226
	movq	(%rax), %rax	# *svp_136, D.10576
	movl	12(%rax), %eax	# _138->sv_flags, D.10572
	andl	$57344, %eax	#, D.10572
	testl	%eax, %eax	# D.10572
	je	.L46	#,
	movq	-40(%rbp), %rax	# svp, tmp227
	movq	(%rax), %rax	# *svp_136, D.10576
	movq	%rax, %rdi	# D.10576,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.10577
	je	.L46	#,
	.loc 1 165 0 is_stmt 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	.loc 1 166 0
	movq	-64(%rbp), %rax	# e, tmp228
	movq	(%rax), %rax	# *e_1, D.10580
	movq	%rax, %rsi	# D.10580,
	movl	$.LC14, %edi	#,
	call	Perl_taint_proper	#
.L46:
	.loc 1 162 0
	addq	$8, -64(%rbp)	#, e
.L43:
	.loc 1 162 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# e, tmp229
	movq	(%rax), %rax	# *e_1, D.10580
	testq	%rax, %rax	# D.10580
	jne	.L47	#,
.L13:
	.loc 1 169 0 is_stmt 1
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_taint_env, .-Perl_taint_env
	.section	.rodata
.LC15:
	.string	"IFS"
.LC16:
	.string	"CDPATH"
.LC17:
	.string	"BASH_ENV"
	.data
	.align 32
	.type	misc_env.10302, @object
	.size	misc_env.10302, 40
misc_env.10302:
	.quad	.LC15
	.quad	.LC16
	.quad	.LC4
	.quad	.LC17
	.quad	0
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "pad.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1117
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF220
	.byte	0x1
	.long	.LASF221
	.long	.LASF222
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
	.byte	0x86
	.long	0x3b
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x87
	.long	0x3b
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
	.byte	0x41
	.long	0x70
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x50
	.long	0x65
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x6d
	.long	0x84
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0x6
	.byte	0x8
	.long	0xdc
	.uleb128 0x7
	.long	0x95
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xec
	.uleb128 0x9
	.long	.LASF183
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
	.long	0x112
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x7d3
	.long	0xbd
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x130
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x19c
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xda0
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xda0
	.byte	0x8
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xe24
	.byte	0x10
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xe0e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF24
	.byte	0x7
	.byte	0xe3
	.long	0xc7b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF25
	.byte	0x7
	.byte	0xe3
	.long	0xc7b
	.byte	0x22
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xe3
	.long	0xc71
	.byte	0x24
	.uleb128 0xd
	.long	.LASF27
	.byte	0x7
	.byte	0xe3
	.long	0xc71
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x1a8
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x275
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xda0
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xda0
	.byte	0x8
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xe24
	.byte	0x10
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xe0e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.byte	0x11
	.long	0xc7b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.byte	0x11
	.long	0xc7b
	.byte	0x22
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x11
	.long	0xc71
	.byte	0x24
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x11
	.long	0xc71
	.byte	0x25
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x12
	.long	0x8f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x17
	.long	0xd88
	.byte	0x30
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x18
	.long	0xdbd
	.byte	0x38
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1a
	.long	0xc91
	.byte	0x40
	.uleb128 0xd
	.long	.LASF32
	.byte	0x8
	.byte	0x1b
	.long	0xc86
	.byte	0x44
	.uleb128 0xd
	.long	.LASF33
	.byte	0x8
	.byte	0x1c
	.long	0xc9c
	.byte	0x48
	.uleb128 0xd
	.long	.LASF34
	.byte	0x8
	.byte	0x1d
	.long	0xcb9
	.byte	0x50
	.uleb128 0xd
	.long	.LASF35
	.byte	0x8
	.byte	0x1e
	.long	0xcb9
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x7db
	.long	0x281
	.uleb128 0xe
	.long	.LASF37
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x36f
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xda0
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xda0
	.byte	0x8
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xe24
	.byte	0x10
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xe0e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF24
	.byte	0x7
	.byte	0xfe
	.long	0xc7b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF25
	.byte	0x7
	.byte	0xfe
	.long	0xc7b
	.byte	0x22
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xfe
	.long	0xc71
	.byte	0x24
	.uleb128 0xd
	.long	.LASF27
	.byte	0x7
	.byte	0xfe
	.long	0xc71
	.byte	0x25
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.byte	0xff
	.long	0xda0
	.byte	0x28
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x100
	.long	0xda0
	.byte	0x30
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x101
	.long	0xda0
	.byte	0x38
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x102
	.long	0xda0
	.byte	0x40
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x103
	.long	0xe2a
	.byte	0x48
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x107
	.long	0xe30
	.byte	0x50
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.value	0x109
	.long	0xc91
	.byte	0x58
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.value	0x10a
	.long	0xc91
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.value	0x10b
	.long	0xc71
	.byte	0x60
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.value	0x10f
	.long	0xd88
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x6
	.value	0x7e1
	.long	0x37b
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x396
	.uleb128 0xf
	.long	.LASF50
	.byte	0x6
	.value	0xea8
	.long	0x95
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x3a1
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3d1
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x44
	.long	0x82
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x45
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x46
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3dc
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x40c
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x56
	.long	0xd70
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x57
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x58
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x417
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x447
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x5c
	.long	0xd76
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x5d
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x5e
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x452
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x482
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x50
	.long	0xd6a
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x51
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x52
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.value	0x7ee
	.long	0x48e
	.uleb128 0xe
	.long	.LASF55
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x567
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x20
	.long	0xd2c
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x21
	.long	0xd2c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x22
	.long	0xd32
	.byte	0x10
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x23
	.long	0xd3d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x24
	.long	0x8f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x25
	.long	0xd48
	.byte	0x28
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x26
	.long	0x8f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x28
	.long	0xd4e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x29
	.long	0xc86
	.byte	0x40
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2a
	.long	0xc86
	.byte	0x44
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2b
	.long	0xc86
	.byte	0x48
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x2c
	.long	0xc86
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x2d
	.long	0xc91
	.byte	0x50
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x2e
	.long	0xc91
	.byte	0x54
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x2f
	.long	0xc91
	.byte	0x58
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x30
	.long	0xc91
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF72
	.byte	0xa
	.byte	0x32
	.long	0xd54
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x572
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x60e
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0xc
	.long	0xcb9
	.byte	0
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0xd
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0xe
	.long	0xdfd
	.byte	0x10
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0xf
	.long	0xdb1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x10
	.long	0xdc3
	.byte	0x20
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x11
	.long	0xd88
	.byte	0x28
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x12
	.long	0xdbd
	.byte	0x30
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x13
	.long	0xdb1
	.byte	0x38
	.uleb128 0xd
	.long	.LASF81
	.byte	0xb
	.byte	0x14
	.long	0xc91
	.byte	0x40
	.uleb128 0xd
	.long	.LASF82
	.byte	0xb
	.byte	0x15
	.long	0xc91
	.byte	0x44
	.uleb128 0xd
	.long	.LASF83
	.byte	0xb
	.byte	0x16
	.long	0xc9c
	.byte	0x48
	.uleb128 0xd
	.long	.LASF84
	.byte	0xb
	.byte	0x17
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x619
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x649
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x4a
	.long	0xd64
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x4b
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x4c
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x679
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x62
	.long	0xd7c
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x63
	.long	0xc91
	.byte	0x8
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x64
	.long	0xc91
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x6
	.value	0x7f5
	.long	0x685
	.uleb128 0xe
	.long	.LASF86
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6f2
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0x1b
	.long	0xd82
	.byte	0
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x1c
	.long	0xf41
	.byte	0x8
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x1d
	.long	0xc7b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x1e
	.long	0x95
	.byte	0x12
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0x1f
	.long	0xc71
	.byte	0x13
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0x20
	.long	0xcb9
	.byte	0x18
	.uleb128 0xd
	.long	.LASF93
	.byte	0xc
	.byte	0x21
	.long	0x8f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0x22
	.long	0xc86
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6fe
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x72f
	.uleb128 0xd
	.long	.LASF95
	.byte	0x9
	.byte	0xfa
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF96
	.byte	0x9
	.byte	0xfb
	.long	0x119
	.byte	0x8
	.uleb128 0xd
	.long	.LASF97
	.byte	0x9
	.byte	0xfc
	.long	0x119
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.value	0x7fd
	.long	0x73b
	.uleb128 0xe
	.long	.LASF99
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x7c0
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0xc
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF101
	.byte	0xd
	.byte	0xd
	.long	0xb2
	.byte	0x8
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0xe
	.long	0xb2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0xf
	.long	0xf1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x10
	.long	0x107
	.byte	0x20
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x11
	.long	0xd82
	.byte	0x28
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x12
	.long	0xd88
	.byte	0x30
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x14
	.long	0xe36
	.byte	0x38
	.uleb128 0xd
	.long	.LASF108
	.byte	0xd
	.byte	0x15
	.long	0xcb9
	.byte	0x40
	.uleb128 0xd
	.long	.LASF109
	.byte	0xd
	.byte	0x16
	.long	0xc71
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF110
	.byte	0x6
	.value	0x7fe
	.long	0x7cc
	.uleb128 0xe
	.long	.LASF111
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x85d
	.uleb128 0xd
	.long	.LASF112
	.byte	0xe
	.byte	0x23
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF113
	.byte	0xe
	.byte	0x24
	.long	0x119
	.byte	0x8
	.uleb128 0xd
	.long	.LASF114
	.byte	0xe
	.byte	0x25
	.long	0x119
	.byte	0x10
	.uleb128 0xd
	.long	.LASF115
	.byte	0xe
	.byte	0x26
	.long	0xf1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF104
	.byte	0xe
	.byte	0x27
	.long	0x107
	.byte	0x20
	.uleb128 0xd
	.long	.LASF105
	.byte	0xe
	.byte	0x29
	.long	0xd82
	.byte	0x28
	.uleb128 0xd
	.long	.LASF106
	.byte	0xe
	.byte	0x2a
	.long	0xd88
	.byte	0x30
	.uleb128 0xd
	.long	.LASF116
	.byte	0xe
	.byte	0x2c
	.long	0xc86
	.byte	0x38
	.uleb128 0xd
	.long	.LASF117
	.byte	0xe
	.byte	0x2d
	.long	0xeb8
	.byte	0x40
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0x2e
	.long	0xe2a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x2f
	.long	0x8f
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x6
	.value	0x7ff
	.long	0x869
	.uleb128 0x10
	.long	.LASF121
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0x913
	.uleb128 0xf
	.long	.LASF95
	.byte	0x9
	.value	0x131
	.long	0x8f
	.byte	0
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x132
	.long	0x119
	.byte	0x8
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x133
	.long	0x119
	.byte	0x10
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x134
	.long	0xf1
	.byte	0x18
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.value	0x135
	.long	0x107
	.byte	0x20
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x136
	.long	0xd82
	.byte	0x28
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x137
	.long	0xd88
	.byte	0x30
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.value	0x139
	.long	0xd8e
	.byte	0x38
	.uleb128 0xf
	.long	.LASF124
	.byte	0x9
	.value	0x13a
	.long	0x8f
	.byte	0x40
	.uleb128 0xf
	.long	.LASF125
	.byte	0x9
	.value	0x13b
	.long	0x119
	.byte	0x48
	.uleb128 0xf
	.long	.LASF126
	.byte	0x9
	.value	0x13c
	.long	0xd88
	.byte	0x50
	.uleb128 0xf
	.long	.LASF127
	.byte	0x9
	.value	0x13d
	.long	0xc71
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF128
	.byte	0x6
	.value	0x800
	.long	0x91f
	.uleb128 0xe
	.long	.LASF129
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xa10
	.uleb128 0xd
	.long	.LASF95
	.byte	0xf
	.byte	0xf
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF96
	.byte	0xf
	.byte	0x10
	.long	0x119
	.byte	0x8
	.uleb128 0xd
	.long	.LASF97
	.byte	0xf
	.byte	0x11
	.long	0x119
	.byte	0x10
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x12
	.long	0xf1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF104
	.byte	0xf
	.byte	0x13
	.long	0x107
	.byte	0x20
	.uleb128 0xd
	.long	.LASF105
	.byte	0xf
	.byte	0x14
	.long	0xd82
	.byte	0x28
	.uleb128 0xd
	.long	.LASF106
	.byte	0xf
	.byte	0x15
	.long	0xd88
	.byte	0x30
	.uleb128 0xd
	.long	.LASF130
	.byte	0xf
	.byte	0x17
	.long	0xd88
	.byte	0x38
	.uleb128 0xd
	.long	.LASF131
	.byte	0xf
	.byte	0x18
	.long	0xda0
	.byte	0x40
	.uleb128 0xd
	.long	.LASF132
	.byte	0xf
	.byte	0x19
	.long	0xda0
	.byte	0x48
	.uleb128 0xd
	.long	.LASF133
	.byte	0xf
	.byte	0x1a
	.long	0xdb7
	.byte	0x50
	.uleb128 0xd
	.long	.LASF134
	.byte	0xf
	.byte	0x1b
	.long	0xbc2
	.byte	0x58
	.uleb128 0xd
	.long	.LASF135
	.byte	0xf
	.byte	0x1c
	.long	0xdbd
	.byte	0x60
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x1d
	.long	0x8f
	.byte	0x68
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x1f
	.long	0xe19
	.byte	0x78
	.uleb128 0xd
	.long	.LASF139
	.byte	0xf
	.byte	0x20
	.long	0xdb1
	.byte	0x80
	.uleb128 0xd
	.long	.LASF140
	.byte	0xf
	.byte	0x25
	.long	0xd94
	.byte	0x88
	.uleb128 0xd
	.long	.LASF141
	.byte	0xf
	.byte	0x26
	.long	0xc91
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF142
	.byte	0x6
	.value	0x803
	.long	0xa1c
	.uleb128 0x10
	.long	.LASF143
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xb55
	.uleb128 0xf
	.long	.LASF95
	.byte	0x9
	.value	0x171
	.long	0x8f
	.byte	0
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x172
	.long	0x119
	.byte	0x8
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x173
	.long	0x119
	.byte	0x10
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x174
	.long	0xf1
	.byte	0x18
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.value	0x175
	.long	0x107
	.byte	0x20
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x176
	.long	0xd82
	.byte	0x28
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x177
	.long	0xd88
	.byte	0x30
	.uleb128 0xf
	.long	.LASF144
	.byte	0x9
	.value	0x179
	.long	0xdf1
	.byte	0x38
	.uleb128 0xf
	.long	.LASF145
	.byte	0x9
	.value	0x17a
	.long	0xdf1
	.byte	0x40
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x187
	.long	0xdc9
	.byte	0x48
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x188
	.long	0xf1
	.byte	0x50
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x189
	.long	0xf1
	.byte	0x58
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x18a
	.long	0xf1
	.byte	0x60
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x18b
	.long	0xf1
	.byte	0x68
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x18c
	.long	0x8f
	.byte	0x70
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x18d
	.long	0xdbd
	.byte	0x78
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x18e
	.long	0x8f
	.byte	0x80
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x18f
	.long	0xdbd
	.byte	0x88
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x190
	.long	0x8f
	.byte	0x90
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x191
	.long	0xdbd
	.byte	0x98
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x193
	.long	0x95
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF159
	.byte	0x9
	.value	0x194
	.long	0x95
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF160
	.byte	0x6
	.value	0x804
	.long	0xb61
	.uleb128 0xe
	.long	.LASF161
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xbc2
	.uleb128 0xd
	.long	.LASF162
	.byte	0xc
	.byte	0xf
	.long	0xed8
	.byte	0
	.uleb128 0xd
	.long	.LASF163
	.byte	0xc
	.byte	0x10
	.long	0xed8
	.byte	0x8
	.uleb128 0xd
	.long	.LASF164
	.byte	0xc
	.byte	0x11
	.long	0xef2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF165
	.byte	0xc
	.byte	0x12
	.long	0xed8
	.byte	0x18
	.uleb128 0xd
	.long	.LASF166
	.byte	0xc
	.byte	0x13
	.long	0xed8
	.byte	0x20
	.uleb128 0xd
	.long	.LASF167
	.byte	0xc
	.byte	0x14
	.long	0xf1b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF168
	.byte	0xc
	.byte	0x16
	.long	0xf3b
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xbce
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xc30
	.uleb128 0x12
	.long	.LASF169
	.byte	0x6
	.value	0x9f2
	.long	0x82
	.uleb128 0x12
	.long	.LASF170
	.byte	0x6
	.value	0x9f3
	.long	0xc86
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f4
	.long	0xf1
	.uleb128 0x12
	.long	.LASF172
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF173
	.byte	0x6
	.value	0x9f6
	.long	0x95
	.uleb128 0x12
	.long	.LASF174
	.byte	0x6
	.value	0x9f7
	.long	0xcb3
	.uleb128 0x12
	.long	.LASF175
	.byte	0x6
	.value	0x9f8
	.long	0xcb3
	.byte	0
	.uleb128 0xb
	.long	.LASF176
	.byte	0x6
	.value	0x808
	.long	0xc3c
	.uleb128 0x10
	.long	.LASF177
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xc71
	.uleb128 0xf
	.long	.LASF178
	.byte	0x9
	.value	0x4ee
	.long	0xdc3
	.byte	0
	.uleb128 0xf
	.long	.LASF179
	.byte	0x9
	.value	0x4ef
	.long	0xfc
	.byte	0x8
	.uleb128 0xf
	.long	.LASF180
	.byte	0x9
	.value	0x4f0
	.long	0xdf7
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF181
	.byte	0x10
	.value	0x209
	.long	0xc91
	.uleb128 0x13
	.long	0xcb3
	.uleb128 0x14
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xca8
	.uleb128 0x6
	.byte	0x8
	.long	0x396
	.uleb128 0x15
	.long	0x95
	.long	0xccf
	.uleb128 0x16
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF182
	.byte	0x11
	.byte	0x63
	.long	0xcda
	.uleb128 0x9
	.long	.LASF184
	.uleb128 0x4
	.long	.LASF185
	.byte	0x11
	.byte	0x65
	.long	0xcea
	.uleb128 0x6
	.byte	0x8
	.long	0xccf
	.uleb128 0xe
	.long	.LASF186
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xd21
	.uleb128 0xd
	.long	.LASF179
	.byte	0xa
	.byte	0x14
	.long	0xc71
	.byte	0
	.uleb128 0xd
	.long	.LASF187
	.byte	0xa
	.byte	0x15
	.long	0xc71
	.byte	0x1
	.uleb128 0xd
	.long	.LASF188
	.byte	0xa
	.byte	0x16
	.long	0xc7b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF186
	.byte	0xa
	.byte	0x19
	.long	0xcf0
	.uleb128 0x6
	.byte	0x8
	.long	0xc86
	.uleb128 0x6
	.byte	0x8
	.long	0xd21
	.uleb128 0x9
	.long	.LASF189
	.uleb128 0x6
	.byte	0x8
	.long	0xd38
	.uleb128 0x9
	.long	.LASF190
	.uleb128 0x6
	.byte	0x8
	.long	0xd43
	.uleb128 0x6
	.byte	0x8
	.long	0xc91
	.uleb128 0x15
	.long	0xd21
	.long	0xd64
	.uleb128 0x16
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x85d
	.uleb128 0x6
	.byte	0x8
	.long	0x913
	.uleb128 0x6
	.byte	0x8
	.long	0x72f
	.uleb128 0x6
	.byte	0x8
	.long	0x7c0
	.uleb128 0x6
	.byte	0x8
	.long	0xa10
	.uleb128 0x6
	.byte	0x8
	.long	0x679
	.uleb128 0x6
	.byte	0x8
	.long	0x40c
	.uleb128 0x6
	.byte	0x8
	.long	0x567
	.uleb128 0xb
	.long	.LASF191
	.byte	0x9
	.value	0x150
	.long	0xc7b
	.uleb128 0x6
	.byte	0x8
	.long	0x125
	.uleb128 0x13
	.long	0xdb1
	.uleb128 0x14
	.long	0xdb1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x447
	.uleb128 0x6
	.byte	0x8
	.long	0xda6
	.uleb128 0x6
	.byte	0x8
	.long	0x60e
	.uleb128 0x6
	.byte	0x8
	.long	0x3d1
	.uleb128 0x17
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xdeb
	.uleb128 0x12
	.long	.LASF192
	.byte	0x9
	.value	0x185
	.long	0xdeb
	.uleb128 0x12
	.long	.LASF193
	.byte	0x9
	.value	0x186
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe1
	.uleb128 0x6
	.byte	0x8
	.long	0xcdf
	.uleb128 0x6
	.byte	0x8
	.long	0x36f
	.uleb128 0x6
	.byte	0x8
	.long	0x649
	.uleb128 0x4
	.long	.LASF194
	.byte	0x12
	.byte	0x13
	.long	0x3d1
	.uleb128 0x4
	.long	.LASF195
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xe03
	.uleb128 0x18
	.long	0xda0
	.uleb128 0x6
	.byte	0x8
	.long	0xe1f
	.uleb128 0x6
	.byte	0x8
	.long	0x275
	.uleb128 0x6
	.byte	0x8
	.long	0x482
	.uleb128 0x6
	.byte	0x8
	.long	0xcb9
	.uleb128 0x6
	.byte	0x8
	.long	0x19c
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0xe4c
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0xe7c
	.uleb128 0xd
	.long	.LASF196
	.byte	0xe
	.byte	0x11
	.long	0xeb8
	.byte	0
	.uleb128 0xd
	.long	.LASF197
	.byte	0xe
	.byte	0x12
	.long	0xebe
	.byte	0x8
	.uleb128 0xd
	.long	.LASF198
	.byte	0xe
	.byte	0x13
	.long	0xcb9
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0xe87
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0xeb8
	.uleb128 0xd
	.long	.LASF199
	.byte	0xe
	.byte	0x18
	.long	0xc91
	.byte	0
	.uleb128 0xd
	.long	.LASF200
	.byte	0xe
	.byte	0x19
	.long	0xc86
	.byte	0x4
	.uleb128 0xd
	.long	.LASF201
	.byte	0xe
	.byte	0x1a
	.long	0xcbf
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe42
	.uleb128 0x6
	.byte	0x8
	.long	0xe7c
	.uleb128 0x19
	.long	0x57
	.long	0xed8
	.uleb128 0x14
	.long	0xcb9
	.uleb128 0x14
	.long	0xd82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec4
	.uleb128 0x19
	.long	0xc91
	.long	0xef2
	.uleb128 0x14
	.long	0xcb9
	.uleb128 0x14
	.long	0xd82
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xede
	.uleb128 0x19
	.long	0x57
	.long	0xf1b
	.uleb128 0x14
	.long	0xcb9
	.uleb128 0x14
	.long	0xd82
	.uleb128 0x14
	.long	0xcb9
	.uleb128 0x14
	.long	0xd6
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xef8
	.uleb128 0x19
	.long	0x57
	.long	0xf35
	.uleb128 0x14
	.long	0xd82
	.uleb128 0x14
	.long	0xf35
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc30
	.uleb128 0x6
	.byte	0x8
	.long	0xf21
	.uleb128 0x6
	.byte	0x8
	.long	0xb55
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF202
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x1
	.byte	0x19
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf91
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x19
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.byte	0x19
	.long	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"ug"
	.byte	0x1
	.byte	0x1b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x1
	.byte	0x49
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1068
	.uleb128 0x1c
	.string	"svp"
	.byte	0x1
	.byte	0x4b
	.long	0xe36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"mg"
	.byte	0x1
	.byte	0x4c
	.long	0xd82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x4d
	.long	0x1068
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF205
	.byte	0x1
	.byte	0x4e
	.long	0x106e
	.uleb128 0x9
	.byte	0x3
	.quad	misc_env.10302
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x101e
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x1
	.byte	0x5d
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x1
	.byte	0x5e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1c
	.string	"n_a"
	.byte	0x1
	.byte	0x92
	.long	0x119
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x1
	.byte	0x93
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x1c
	.string	"t"
	.byte	0x1
	.byte	0x94
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x95
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x15
	.long	0x8f
	.long	0x107e
	.uleb128 0x16
	.long	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	0x95
	.long	0x1089
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.long	.LASF208
	.byte	0x6
	.value	0xcfb
	.long	0x1095
	.uleb128 0x7
	.long	0x107e
	.uleb128 0x22
	.long	.LASF209
	.byte	0x13
	.byte	0x16
	.long	0xdbd
	.uleb128 0x22
	.long	.LASF210
	.byte	0x13
	.byte	0x34
	.long	0xc71
	.uleb128 0x22
	.long	.LASF211
	.byte	0x13
	.byte	0x38
	.long	0x95
	.uleb128 0x22
	.long	.LASF212
	.byte	0x13
	.byte	0xed
	.long	0xa7
	.uleb128 0x22
	.long	.LASF213
	.byte	0x13
	.byte	0xee
	.long	0xa7
	.uleb128 0x22
	.long	.LASF214
	.byte	0x13
	.byte	0xef
	.long	0x9c
	.uleb128 0x22
	.long	.LASF215
	.byte	0x13
	.byte	0xf0
	.long	0x9c
	.uleb128 0x21
	.long	.LASF216
	.byte	0x13
	.value	0x125
	.long	0x396
	.uleb128 0x21
	.long	.LASF217
	.byte	0x13
	.value	0x203
	.long	0x95
	.uleb128 0x22
	.long	.LASF218
	.byte	0x14
	.byte	0x5f
	.long	0x95
	.uleb128 0x22
	.long	.LASF219
	.byte	0x14
	.byte	0x81
	.long	0x1115
	.uleb128 0x23
	.long	0xe3c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"cop_seq"
.LASF155:
	.string	"xio_bottom_name"
.LASF73:
	.string	"gp_sv"
.LASF182:
	.string	"PerlIOl"
.LASF207:
	.string	"name"
.LASF222:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF128:
	.string	"XPVCV"
.LASF162:
	.string	"svt_get"
.LASF35:
	.string	"cop_io"
.LASF158:
	.string	"xio_type"
.LASF129:
	.string	"xpvcv"
.LASF91:
	.string	"mg_flags"
.LASF23:
	.string	"op_targ"
.LASF179:
	.string	"flags"
.LASF113:
	.string	"xhv_fill"
.LASF204:
	.string	"Perl_taint_env"
.LASF159:
	.string	"xio_flags"
.LASF215:
	.string	"PL_egid"
.LASF192:
	.string	"xiou_dirp"
.LASF214:
	.string	"PL_gid"
.LASF173:
	.string	"any_bool"
.LASF219:
	.string	"PL_curcop"
.LASF149:
	.string	"xio_page_len"
.LASF43:
	.string	"op_pmregexp"
.LASF194:
	.string	"PADLIST"
.LASF60:
	.string	"precomp"
.LASF210:
	.string	"PL_dowarn"
.LASF109:
	.string	"xav_flags"
.LASF52:
	.string	"sv_refcnt"
.LASF126:
	.string	"xgv_stash"
.LASF57:
	.string	"endp"
.LASF14:
	.string	"ssize_t"
.LASF184:
	.string	"_PerlIO"
.LASF32:
	.string	"cop_arybase"
.LASF133:
	.string	"xcv_xsub"
.LASF87:
	.string	"mg_moremagic"
.LASF102:
	.string	"xav_max"
.LASF185:
	.string	"PerlIO"
.LASF202:
	.string	"float"
.LASF115:
	.string	"xhv_keys"
.LASF59:
	.string	"substrs"
.LASF161:
	.string	"mgvtbl"
.LASF136:
	.string	"xcv_file"
.LASF63:
	.string	"offsets"
.LASF217:
	.string	"PL_taint_warn"
.LASF16:
	.string	"long long unsigned int"
.LASF54:
	.string	"REGEXP"
.LASF190:
	.string	"reg_data"
.LASF177:
	.string	"clone_params"
.LASF189:
	.string	"reg_substr_data"
.LASF89:
	.string	"mg_private"
.LASF122:
	.string	"xiv_iv"
.LASF127:
	.string	"xgv_flags"
.LASF147:
	.string	"xio_lines"
.LASF49:
	.string	"interpreter"
.LASF78:
	.string	"gp_hv"
.LASF95:
	.string	"xpv_pv"
.LASF120:
	.string	"XPVGV"
.LASF150:
	.string	"xio_lines_left"
.LASF27:
	.string	"op_private"
.LASF199:
	.string	"hek_hash"
.LASF209:
	.string	"PL_envgv"
.LASF33:
	.string	"cop_line"
.LASF121:
	.string	"xpvgv"
.LASF181:
	.string	"line_t"
.LASF15:
	.string	"size_t"
.LASF92:
	.string	"mg_obj"
.LASF137:
	.string	"xcv_depth"
.LASF22:
	.string	"op_ppaddr"
.LASF154:
	.string	"xio_fmt_gv"
.LASF201:
	.string	"hek_key"
.LASF72:
	.string	"program"
.LASF84:
	.string	"gp_file"
.LASF118:
	.string	"xhv_pmroot"
.LASF110:
	.string	"XPVHV"
.LASF165:
	.string	"svt_clear"
.LASF146:
	.string	"xio_dirpu"
.LASF111:
	.string	"xpvhv"
.LASF40:
	.string	"op_pmreplroot"
.LASF46:
	.string	"op_pmdynflags"
.LASF167:
	.string	"svt_copy"
.LASF97:
	.string	"xpv_len"
.LASF11:
	.string	"char"
.LASF142:
	.string	"XPVIO"
.LASF171:
	.string	"any_iv"
.LASF178:
	.string	"stashes"
.LASF67:
	.string	"prelen"
.LASF74:
	.string	"gp_refcnt"
.LASF69:
	.string	"lastparen"
.LASF143:
	.string	"xpvio"
.LASF61:
	.string	"data"
.LASF24:
	.string	"op_type"
.LASF203:
	.string	"Perl_taint_proper"
.LASF216:
	.string	"PL_sv_undef"
.LASF64:
	.string	"sublen"
.LASF39:
	.string	"op_last"
.LASF197:
	.string	"hent_hek"
.LASF71:
	.string	"reganch"
.LASF186:
	.string	"regnode"
.LASF62:
	.string	"subbeg"
.LASF21:
	.string	"op_sibling"
.LASF180:
	.string	"proto_perl"
.LASF86:
	.string	"magic"
.LASF196:
	.string	"hent_next"
.LASF17:
	.string	"long long int"
.LASF112:
	.string	"xhv_array"
.LASF151:
	.string	"xio_top_name"
.LASF70:
	.string	"lastcloseparen"
.LASF188:
	.string	"next_off"
.LASF88:
	.string	"mg_virtual"
.LASF34:
	.string	"cop_warnings"
.LASF36:
	.string	"PMOP"
.LASF19:
	.string	"STRLEN"
.LASF119:
	.string	"xhv_name"
.LASF93:
	.string	"mg_ptr"
.LASF135:
	.string	"xcv_gv"
.LASF144:
	.string	"xio_ifp"
.LASF28:
	.string	"cop_label"
.LASF50:
	.string	"broiled"
.LASF218:
	.string	"PL_tainted"
.LASF20:
	.string	"op_next"
.LASF79:
	.string	"gp_egv"
.LASF56:
	.string	"startp"
.LASF30:
	.string	"cop_filegv"
.LASF51:
	.string	"sv_any"
.LASF29:
	.string	"cop_stash"
.LASF47:
	.string	"op_pmstash"
.LASF148:
	.string	"xio_page"
.LASF193:
	.string	"xiou_any"
.LASF8:
	.string	"__gid_t"
.LASF175:
	.string	"any_dxptr"
.LASF85:
	.string	"MAGIC"
.LASF213:
	.string	"PL_euid"
.LASF12:
	.string	"gid_t"
.LASF164:
	.string	"svt_len"
.LASF220:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF13:
	.string	"uid_t"
.LASF212:
	.string	"PL_uid"
.LASF53:
	.string	"sv_flags"
.LASF48:
	.string	"PerlInterpreter"
.LASF107:
	.string	"xav_alloc"
.LASF117:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF76:
	.string	"gp_form"
.LASF38:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF131:
	.string	"xcv_start"
.LASF141:
	.string	"xcv_outside_seq"
.LASF206:
	.string	"was_tainted"
.LASF100:
	.string	"xav_array"
.LASF157:
	.string	"xio_subprocess"
.LASF211:
	.string	"PL_unsafe"
.LASF103:
	.string	"xof_off"
.LASF208:
	.string	"PL_no_security"
.LASF200:
	.string	"hek_len"
.LASF160:
	.string	"MGVTBL"
.LASF18:
	.string	"double"
.LASF65:
	.string	"refcnt"
.LASF108:
	.string	"xav_arylen"
.LASF130:
	.string	"xcv_stash"
.LASF125:
	.string	"xgv_namelen"
.LASF10:
	.string	"__ssize_t"
.LASF132:
	.string	"xcv_root"
.LASF55:
	.string	"regexp"
.LASF198:
	.string	"hent_val"
.LASF139:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF44:
	.string	"op_pmflags"
.LASF114:
	.string	"xhv_max"
.LASF138:
	.string	"xcv_padlist"
.LASF105:
	.string	"xmg_magic"
.LASF9:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF170:
	.string	"any_i32"
.LASF163:
	.string	"svt_set"
.LASF176:
	.string	"CLONE_PARAMS"
.LASF153:
	.string	"xio_fmt_name"
.LASF25:
	.string	"op_seq"
.LASF183:
	.string	"__dirstream"
.LASF172:
	.string	"any_long"
.LASF37:
	.string	"pmop"
.LASF101:
	.string	"xav_fill"
.LASF41:
	.string	"op_pmreplstart"
.LASF187:
	.string	"type"
.LASF0:
	.string	"unsigned char"
.LASF116:
	.string	"xhv_riter"
.LASF123:
	.string	"xgv_gp"
.LASF42:
	.string	"op_pmnext"
.LASF221:
	.string	"taint.c"
.LASF104:
	.string	"xnv_nv"
.LASF7:
	.string	"__uid_t"
.LASF140:
	.string	"xcv_flags"
.LASF82:
	.string	"gp_flags"
.LASF26:
	.string	"op_flags"
.LASF90:
	.string	"mg_type"
.LASF168:
	.string	"svt_dup"
.LASF156:
	.string	"xio_bottom_gv"
.LASF96:
	.string	"xpv_cur"
.LASF169:
	.string	"any_ptr"
.LASF98:
	.string	"XPVAV"
.LASF166:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF195:
	.string	"PADOFFSET"
.LASF205:
	.string	"misc_env"
.LASF1:
	.string	"short unsigned int"
.LASF45:
	.string	"op_pmpermflags"
.LASF99:
	.string	"xpvav"
.LASF106:
	.string	"xmg_stash"
.LASF77:
	.string	"gp_av"
.LASF81:
	.string	"gp_cvgen"
.LASF83:
	.string	"gp_line"
.LASF66:
	.string	"minlen"
.LASF134:
	.string	"xcv_xsubany"
.LASF191:
	.string	"cv_flags_t"
.LASF145:
	.string	"xio_ofp"
.LASF80:
	.string	"gp_cv"
.LASF58:
	.string	"regstclass"
.LASF152:
	.string	"xio_top_gv"
.LASF75:
	.string	"gp_io"
.LASF68:
	.string	"nparens"
.LASF94:
	.string	"mg_len"
.LASF174:
	.string	"any_dptr"
.LASF124:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
