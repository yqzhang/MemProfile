	.file	"Parser.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Parser.c
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
	.local	local_patches
	.comm	local_patches,16,16
	.section	.rodata
.LC0:
	.string	"declaration"
.LC1:
	.string	"comment"
.LC2:
	.string	"start"
.LC3:
	.string	"end"
.LC4:
	.string	"text"
.LC5:
	.string	"process"
.LC6:
	.string	"start_document"
.LC7:
	.string	"end_document"
.LC8:
	.string	"default"
	.data
	.align 32
	.type	event_id_str, @object
	.size	event_id_str, 72
event_id_str:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.text
	.type	sv_lower, @function
sv_lower:
.LFB2:
	.file 1 "parser-util.c"
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 18 0
	movq	-24(%rbp), %rax	# sv, tmp76
	movl	12(%rax), %eax	# sv_4(D)->sv_flags, D.14982
	andl	$10223616, %eax	#, D.14982
	cmpl	$262144, %eax	#, D.14982
	jne	.L2	#,
	.loc 1 18 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp77
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14983
	movq	8(%rax), %rax	# MEM[(struct XPV *)_7].xpv_cur, len.1
	movq	%rax, -16(%rbp)	# len.1, len
	movq	-24(%rbp), %rax	# sv, tmp78
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14983
	movq	(%rax), %rax	# MEM[(struct XPV *)_9].xpv_pv, iftmp.0
	jmp	.L3	#
.L2:
	.loc 1 18 0 discriminator 2
	leaq	-16(%rbp), %rcx	#, tmp79
	movq	-24(%rbp), %rax	# sv, tmp80
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	Perl_sv_pvn_force_flags	#
.L3:
	.loc 1 18 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.0, s
	.loc 1 19 0 is_stmt 1 discriminator 3
	jmp	.L4	#
.L7:
	.loc 1 20 0
	movq	-8(%rbp), %rax	# s, tmp81
	movzbl	(%rax), %eax	# *s_1, D.14984
	cmpb	$64, %al	#, D.14984
	jle	.L5	#,
	.loc 1 20 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp82
	movzbl	(%rax), %eax	# *s_1, D.14984
	cmpb	$90, %al	#, D.14984
	jg	.L5	#,
	movq	-8(%rbp), %rax	# s, tmp83
	movzbl	(%rax), %eax	# *s_1, D.14984
	addl	$32, %eax	#, D.14985
	jmp	.L6	#
.L5:
	.loc 1 20 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp84
	movzbl	(%rax), %eax	# *s_1, iftmp.2
.L6:
	.loc 1 20 0 discriminator 3
	movq	-8(%rbp), %rdx	# s, tmp85
	movb	%al, (%rdx)	# iftmp.2, *s_1
	.loc 1 19 0 is_stmt 1 discriminator 3
	addq	$1, -8(%rbp)	#, s
.L4:
	.loc 1 19 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# len, len.3
	leaq	-1(%rax), %rdx	#, len.5
	movq	%rdx, -16(%rbp)	# len.5, len
	testq	%rax, %rax	# len.4
	jne	.L7	#,
	.loc 1 21 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.14986
	.loc 1 22 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sv_lower, .-sv_lower
	.type	strnEQx, @function
strnEQx:
.LFB3:
	.loc 1 26 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s1, s1
	movq	%rsi, -16(%rbp)	# s2, s2
	movq	%rdx, -24(%rbp)	# n, n
	movl	%ecx, -28(%rbp)	# ignore_case, ignore_case
	.loc 1 27 0
	jmp	.L10	#
.L18:
	.loc 1 28 0
	cmpl	$0, -28(%rbp)	#, ignore_case
	je	.L11	#,
	.loc 1 29 0
	movq	-8(%rbp), %rax	# s1, tmp76
	movzbl	(%rax), %eax	# *s1_1, D.14988
	cmpb	$64, %al	#, D.14988
	jle	.L12	#,
	.loc 1 29 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s1, tmp77
	movzbl	(%rax), %eax	# *s1_1, D.14988
	cmpb	$90, %al	#, D.14988
	jg	.L12	#,
	movq	-8(%rbp), %rax	# s1, tmp78
	movzbl	(%rax), %eax	# *s1_1, D.14988
	movsbl	%al, %eax	# D.14988, D.14987
	leal	32(%rax), %edx	#, iftmp.6
	jmp	.L13	#
.L12:
	.loc 1 29 0 discriminator 2
	movq	-8(%rbp), %rax	# s1, tmp79
	movzbl	(%rax), %eax	# *s1_1, D.14988
	movsbl	%al, %edx	# D.14988, iftmp.6
.L13:
	.loc 1 29 0 discriminator 3
	movq	-16(%rbp), %rax	# s2, tmp80
	movzbl	(%rax), %eax	# *s2_2, D.14988
	cmpb	$64, %al	#, D.14988
	jle	.L14	#,
	.loc 1 29 0 discriminator 1
	movq	-16(%rbp), %rax	# s2, tmp81
	movzbl	(%rax), %eax	# *s2_2, D.14988
	cmpb	$90, %al	#, D.14988
	jg	.L14	#,
	movq	-16(%rbp), %rax	# s2, tmp82
	movzbl	(%rax), %eax	# *s2_2, D.14988
	movsbl	%al, %eax	# D.14988, D.14987
	addl	$32, %eax	#, iftmp.7
	jmp	.L15	#
.L14:
	.loc 1 29 0 discriminator 2
	movq	-16(%rbp), %rax	# s2, tmp83
	movzbl	(%rax), %eax	# *s2_2, D.14988
	movsbl	%al, %eax	# D.14988, iftmp.7
.L15:
	.loc 1 29 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.7, iftmp.6
	je	.L16	#,
	.loc 1 30 0 is_stmt 1
	movl	$0, %eax	#, D.14987
	jmp	.L17	#
.L11:
	.loc 1 33 0
	movq	-8(%rbp), %rax	# s1, tmp84
	movzbl	(%rax), %edx	# *s1_1, D.14988
	movq	-16(%rbp), %rax	# s2, tmp85
	movzbl	(%rax), %eax	# *s2_2, D.14988
	cmpb	%al, %dl	# D.14988, D.14988
	je	.L16	#,
	.loc 1 34 0
	movl	$0, %eax	#, D.14987
	jmp	.L17	#
.L16:
	.loc 1 36 0
	addq	$1, -8(%rbp)	#, s1
	.loc 1 37 0
	addq	$1, -16(%rbp)	#, s2
.L10:
	.loc 1 27 0 discriminator 1
	movq	-24(%rbp), %rax	# n, n.8
	leaq	-1(%rax), %rdx	#, tmp86
	movq	%rdx, -24(%rbp)	# tmp86, n
	testq	%rax, %rax	# n.8
	jne	.L18	#,
	.loc 1 39 0
	movl	$1, %eax	#, D.14987
.L17:
	.loc 1 40 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	strnEQx, .-strnEQx
	.type	grow_gap, @function
grow_gap:
.LFB4:
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, -48(%rbp)	# grow, grow
	movq	%rdx, -56(%rbp)	# t, t
	movq	%rcx, -64(%rbp)	# s, s
	movq	%r8, -72(%rbp)	# e, e
	.loc 1 50 0
	movq	-56(%rbp), %rax	# t, tmp108
	movq	(%rax), %rax	# *t_1(D), D.14989
	movq	%rax, %rdx	# D.14989, D.14990
	movq	-40(%rbp), %rax	# sv, tmp109
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rax	# MEM[(struct XPV *)_5].xpv_pv, D.14989
	subq	%rax, %rdx	# D.14990, D.14990
	movq	%rdx, %rax	# D.14990, D.14990
	movq	%rax, -24(%rbp)	# D.14990, t_offset
	.loc 1 51 0
	movq	-64(%rbp), %rax	# s, tmp110
	movq	(%rax), %rax	# *s_10(D), D.14989
	movq	%rax, %rdx	# D.14989, D.14990
	movq	-40(%rbp), %rax	# sv, tmp111
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rax	# MEM[(struct XPV *)_13].xpv_pv, D.14989
	subq	%rax, %rdx	# D.14990, D.14990
	movq	%rdx, %rax	# D.14990, D.14990
	movq	%rax, -16(%rbp)	# D.14990, s_offset
	.loc 1 52 0
	movq	-72(%rbp), %rax	# e, tmp112
	movq	(%rax), %rax	# *e_18(D), D.14989
	movq	%rax, %rdx	# D.14989, D.14990
	movq	-40(%rbp), %rax	# sv, tmp113
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rax	# MEM[(struct XPV *)_21].xpv_pv, D.14989
	subq	%rax, %rdx	# D.14990, D.14990
	movq	%rdx, %rax	# D.14990, D.14990
	movq	%rax, -8(%rbp)	# D.14990, e_offset
	.loc 1 54 0
	movq	-40(%rbp), %rax	# sv, tmp114
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	16(%rax), %rax	# MEM[(struct XPV *)_26].xpv_len, D.14992
	movq	-48(%rbp), %rdx	# grow, tmp115
	movq	-8(%rbp), %rcx	# e_offset, tmp116
	addq	%rcx, %rdx	# tmp116, D.14992
	addq	$1, %rdx	#, D.14992
	cmpq	%rdx, %rax	# D.14992, D.14992
	jae	.L21	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# grow, tmp117
	movq	-8(%rbp), %rdx	# e_offset, tmp118
	addq	%rdx, %rax	# tmp118, D.14992
	leaq	1(%rax), %rdx	#, D.14992
	movq	-40(%rbp), %rax	# sv, tmp119
	movq	%rdx, %rsi	# D.14992,
	movq	%rax, %rdi	# tmp119,
	call	Perl_sv_grow	#
.L21:
	.loc 1 56 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp121
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rdx	# MEM[(struct XPV *)_36].xpv_pv, D.14989
	movq	-24(%rbp), %rax	# t_offset, tmp122
	addq	%rax, %rdx	# tmp122, D.14989
	movq	-56(%rbp), %rax	# t, tmp123
	movq	%rdx, (%rax)	# D.14989, *t_1(D)
	.loc 1 57 0
	movq	-40(%rbp), %rax	# sv, tmp124
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rdx	# MEM[(struct XPV *)_39].xpv_pv, D.14989
	movq	-16(%rbp), %rax	# s_offset, tmp125
	addq	%rax, %rdx	# tmp125, D.14989
	movq	-64(%rbp), %rax	# s, tmp126
	movq	%rdx, (%rax)	# D.14989, *s_10(D)
	.loc 1 58 0
	movq	-40(%rbp), %rax	# sv, tmp127
	movq	(%rax), %rax	# sv_4(D)->sv_any, D.14991
	movq	(%rax), %rdx	# MEM[(struct XPV *)_42].xpv_pv, D.14989
	movq	-8(%rbp), %rax	# e_offset, tmp128
	addq	%rax, %rdx	# tmp128, D.14989
	movq	-72(%rbp), %rax	# e, tmp129
	movq	%rdx, (%rax)	# D.14989, *e_18(D)
	.loc 1 60 0
	movq	-72(%rbp), %rax	# e, tmp130
	movq	(%rax), %rax	# *e_18(D), D.14989
	movq	%rax, %rdx	# D.14989, D.14990
	movq	-64(%rbp), %rax	# s, tmp131
	movq	(%rax), %rax	# *s_10(D), D.14989
	subq	%rax, %rdx	# D.14990, D.14990
	movq	%rdx, %rax	# D.14990, D.14990
	movq	%rax, %rdx	# D.14990, D.14992
	movq	-64(%rbp), %rax	# s, tmp132
	movq	(%rax), %rax	# *s_10(D), D.14989
	movq	-64(%rbp), %rcx	# s, tmp133
	movq	(%rcx), %rsi	# *s_10(D), D.14989
	movq	-48(%rbp), %rcx	# grow, tmp134
	addq	%rsi, %rcx	# D.14989, D.14991
	movq	%rax, %rsi	# D.14989,
	movq	%rcx, %rdi	# D.14991,
	call	memmove	#
	.loc 1 61 0
	movq	-64(%rbp), %rax	# s, tmp135
	movq	(%rax), %rdx	# *s_10(D), D.14989
	movq	-48(%rbp), %rax	# grow, tmp136
	addq	%rax, %rdx	# tmp136, D.14989
	movq	-64(%rbp), %rax	# s, tmp137
	movq	%rdx, (%rax)	# D.14989, *s_10(D)
	.loc 1 62 0
	movq	-72(%rbp), %rax	# e, tmp138
	movq	(%rax), %rdx	# *e_18(D), D.14989
	movq	-48(%rbp), %rax	# grow, tmp139
	addq	%rax, %rdx	# tmp139, D.14989
	movq	-72(%rbp), %rax	# e, tmp140
	movq	%rdx, (%rax)	# D.14989, *e_18(D)
	.loc 1 63 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	grow_gap, .-grow_gap
	.type	decode_entities, @function
decode_entities:
.LFB5:
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)	# sv, sv
	movq	%rsi, -240(%rbp)	# entity2char, entity2char
	movl	%edx, %eax	# allow_unterminated, tmp265
	movb	%al, -244(%rbp)	# tmp265, allow_unterminated
	.loc 1 67 0
	movq	%fs:40, %rax	#, tmp353
	movq	%rax, -24(%rbp)	# tmp353, D.15002
	xorl	%eax, %eax	# tmp353
	.loc 1 69 0
	movq	-232(%rbp), %rax	# sv, tmp266
	movl	12(%rax), %eax	# sv_34(D)->sv_flags, D.14993
	andl	$10223616, %eax	#, D.14993
	cmpl	$262144, %eax	#, D.14993
	jne	.L23	#,
	.loc 1 69 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# sv, tmp267
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	8(%rax), %rax	# MEM[(struct XPV *)_37].xpv_cur, len.11
	movq	%rax, -200(%rbp)	# len.11, len
	movq	-232(%rbp), %rax	# sv, tmp268
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_39].xpv_pv, iftmp.10
	jmp	.L24	#
.L23:
	.loc 1 69 0 discriminator 2
	leaq	-200(%rbp), %rcx	#, tmp269
	movq	-232(%rbp), %rax	# sv, tmp270
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp269,
	movq	%rax, %rdi	# tmp270,
	call	Perl_sv_pvn_force_flags	#
.L24:
	.loc 1 69 0 discriminator 3
	movq	%rax, -192(%rbp)	# iftmp.10, s
	.loc 1 70 0 is_stmt 1 discriminator 3
	movq	-192(%rbp), %rax	# s, s.12
	movq	%rax, -184(%rbp)	# s.12, t
	.loc 1 71 0 discriminator 3
	movq	-192(%rbp), %rdx	# s, s.13
	movq	-200(%rbp), %rax	# len, len.14
	addq	%rdx, %rax	# s.13, end.15
	movq	%rax, -176(%rbp)	# end.15, end
	.loc 1 79 0 discriminator 3
	movl	$0, -208(%rbp)	#, high_surrogate
	.loc 1 86 0 discriminator 3
	movl	$0, -212(%rbp)	#, repl_utf8
	.loc 1 89 0 discriminator 3
	jmp	.L25	#
.L74:
	.loc 1 92 0
	movq	-184(%rbp), %rax	# t, t.16
	leaq	1(%rax), %rdx	#, t.18
	movq	%rdx, -184(%rbp)	# t.18, t
	movq	-192(%rbp), %rdx	# s, s.19
	leaq	1(%rdx), %rcx	#, s.21
	movq	%rcx, -192(%rbp)	# s.21, s
	movzbl	(%rdx), %edx	# *s.20_54, D.14995
	movb	%dl, (%rax)	# D.14995, *t.17_51
	movzbl	(%rax), %eax	# *t.17_51, D.14995
	cmpb	$38, %al	#, D.14995
	je	.L26	#,
	.loc 1 93 0
	jmp	.L25	#
.L26:
	.loc 1 95 0
	movq	-192(%rbp), %rax	# s, tmp271
	movq	%rax, -144(%rbp)	# tmp271, ent_start
	.loc 1 96 0
	movq	$0, -136(%rbp)	#, repl
	.loc 1 98 0
	movq	-192(%rbp), %rax	# s, s.22
	movzbl	(%rax), %eax	# *s.22_60, D.14995
	cmpb	$35, %al	#, D.14995
	jne	.L27	#,
.LBB2:
	.loc 1 99 0
	movq	$0, -128(%rbp)	#, num
	.loc 1 100 0
	movq	$0, -120(%rbp)	#, prev
	.loc 1 101 0
	movl	$0, -204(%rbp)	#, ok
	.loc 1 102 0
	movq	-192(%rbp), %rax	# s, s.23
	addq	$1, %rax	#, s.24
	movq	%rax, -192(%rbp)	# s.24, s
	.loc 1 103 0
	movq	-192(%rbp), %rax	# s, s.25
	movzbl	(%rax), %eax	# *s.25_67, D.14995
	cmpb	$120, %al	#, D.14995
	je	.L28	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.26
	movzbl	(%rax), %eax	# *s.26_69, D.14995
	cmpb	$88, %al	#, D.14995
	jne	.L29	#,
.L28:
	.loc 1 104 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, s.27
	addq	$1, %rax	#, s.28
	movq	%rax, -192(%rbp)	# s.28, s
	.loc 1 105 0
	jmp	.L30	#
.L34:
.LBB3:
	.loc 1 106 0
	movq	-192(%rbp), %rax	# s, s.29
	movzbl	(%rax), %eax	# *s.29_91, D.14995
	movsbl	%al, %edx	# D.14995, D.14997
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.30
	movl	%edx, %esi	# D.14997,
	movq	%rax, %rdi	# PL_hexdigit.30,
	call	strchr	#
	movq	%rax, -96(%rbp)	# tmp272, tmp
	.loc 1 107 0
	cmpq	$0, -96(%rbp)	#, tmp
	jne	.L31	#,
	.loc 1 108 0
	jmp	.L32	#
.L31:
	.loc 1 109 0
	movq	-128(%rbp), %rax	# num, tmp273
	salq	$4, %rax	#, D.14996
	movq	%rax, %rcx	# D.14996, D.14996
	movq	-96(%rbp), %rdx	# tmp, tmp.31
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.32
	subq	%rax, %rdx	# PL_hexdigit.33, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	andl	$15, %eax	#, D.14996
	orq	%rcx, %rax	# D.14996, tmp274
	movq	%rax, -128(%rbp)	# tmp274, num
	.loc 1 110 0
	cmpq	$0, -120(%rbp)	#, prev
	je	.L33	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# num, tmp275
	cmpq	-120(%rbp), %rax	# prev, tmp275
	ja	.L33	#,
	.loc 1 112 0 is_stmt 1
	movl	$0, -204(%rbp)	#, ok
	.loc 1 113 0
	jmp	.L32	#
.L33:
	.loc 1 115 0
	movq	-128(%rbp), %rax	# num, tmp276
	movq	%rax, -120(%rbp)	# tmp276, prev
	.loc 1 116 0
	movq	-192(%rbp), %rax	# s, s.34
	addq	$1, %rax	#, s.35
	movq	%rax, -192(%rbp)	# s.35, s
	.loc 1 117 0
	movl	$1, -204(%rbp)	#, ok
.L30:
.LBE3:
	.loc 1 105 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.36
	movzbl	(%rax), %eax	# *s.36_89, D.14995
	testb	%al, %al	# D.14995
	jne	.L34	#,
.L32:
	.loc 1 103 0
	jmp	.L35	#
.L29:
	.loc 1 121 0
	jmp	.L36	#
.L38:
	.loc 1 122 0
	movq	-128(%rbp), %rdx	# num, tmp277
	movq	%rdx, %rax	# tmp277, tmp278
	salq	$2, %rax	#, tmp278
	addq	%rdx, %rax	# tmp277, tmp278
	addq	%rax, %rax	# tmp279
	movq	%rax, %rdx	# tmp278, D.14996
	movq	-192(%rbp), %rax	# s, s.37
	movzbl	(%rax), %eax	# *s.37_76, D.14995
	movsbl	%al, %eax	# D.14995, D.14997
	subl	$48, %eax	#, D.14997
	cltq
	addq	%rdx, %rax	# D.14996, tmp280
	movq	%rax, -128(%rbp)	# tmp280, num
	.loc 1 123 0
	cmpq	$0, -120(%rbp)	#, prev
	je	.L37	#,
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# num, tmp281
	cmpq	-120(%rbp), %rax	# prev, tmp281
	jae	.L37	#,
	.loc 1 125 0 is_stmt 1
	movl	$0, -204(%rbp)	#, ok
	.loc 1 126 0
	jmp	.L35	#
.L37:
	.loc 1 128 0
	movq	-128(%rbp), %rax	# num, tmp282
	movq	%rax, -120(%rbp)	# tmp282, prev
	.loc 1 129 0
	movq	-192(%rbp), %rax	# s, s.38
	addq	$1, %rax	#, s.39
	movq	%rax, -192(%rbp)	# s.39, s
	.loc 1 130 0
	movl	$1, -204(%rbp)	#, ok
.L36:
	.loc 1 121 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.40
	movzbl	(%rax), %eax	# *s.40_71, D.14995
	cmpb	$47, %al	#, D.14995
	jle	.L35	#,
	.loc 1 121 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, s.41
	movzbl	(%rax), %eax	# *s.41_73, D.14995
	cmpb	$57, %al	#, D.14995
	jle	.L38	#,
.L35:
	.loc 1 133 0 is_stmt 1
	cmpl	$0, -204(%rbp)	#, ok
	je	.L39	#,
	.loc 1 135 0
	movq	-232(%rbp), %rax	# sv, tmp283
	movl	12(%rax), %eax	# sv_34(D)->sv_flags, D.14993
	andl	$536870912, %eax	#, D.14993
	testl	%eax, %eax	# D.14993
	jne	.L40	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	cmpq	$255, -128(%rbp)	#, num
	ja	.L40	#,
	.loc 1 136 0 is_stmt 1
	movq	-128(%rbp), %rax	# num, tmp284
	movb	%al, -48(%rbp)	# D.14995, buf
	.loc 1 137 0
	leaq	-48(%rbp), %rax	#, tmp285
	movq	%rax, -136(%rbp)	# tmp285, repl
	.loc 1 138 0
	movq	$1, -168(%rbp)	#, repl_len
	.loc 1 139 0
	movl	$0, -212(%rbp)	#, repl_utf8
	jmp	.L39	#
.L40:
.LBB4:
	.loc 1 143 0
	movq	-128(%rbp), %rax	# num, tmp286
	andl	$4294966272, %eax	#, D.14996
	cmpq	$56320, %rax	#, D.14996
	jne	.L41	#,
	.loc 1 144 0
	cmpl	$0, -208(%rbp)	#, high_surrogate
	je	.L42	#,
	.loc 1 145 0
	movq	-184(%rbp), %rax	# t, t.42
	subq	$3, %rax	#, t.43
	movq	%rax, -184(%rbp)	# t.43, t
	.loc 1 146 0
	movl	-208(%rbp), %eax	# high_surrogate, tmp287
	subl	$55296, %eax	#, D.14997
	sall	$10, %eax	#, D.14997
	movslq	%eax, %rdx	# D.14997, D.14996
	movq	-128(%rbp), %rax	# num, tmp288
	addq	%rdx, %rax	# D.14996, D.14996
	addq	$9216, %rax	#, tmp289
	movq	%rax, -128(%rbp)	# tmp289, num
	.loc 1 148 0
	movl	$0, -208(%rbp)	#, high_surrogate
	jmp	.L44	#
.L42:
	.loc 1 150 0
	movq	$65533, -128(%rbp)	#, num
	jmp	.L44	#
.L41:
	.loc 1 153 0
	movq	-128(%rbp), %rax	# num, tmp290
	andl	$4294966272, %eax	#, D.14996
	cmpq	$55296, %rax	#, D.14996
	jne	.L45	#,
	.loc 1 154 0
	movq	-128(%rbp), %rax	# num, tmp291
	movl	%eax, -208(%rbp)	# tmp291, high_surrogate
	.loc 1 155 0
	movq	$65533, -128(%rbp)	#, num
	jmp	.L44	#
.L45:
	.loc 1 158 0
	movl	$0, -208(%rbp)	#, high_surrogate
	.loc 1 160 0
	cmpq	$64975, -128(%rbp)	#, num
	jbe	.L46	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpq	$65007, -128(%rbp)	#, num
	jbe	.L47	#,
.L46:
	.loc 1 161 0 is_stmt 1 discriminator 2
	movq	-128(%rbp), %rax	# num, tmp292
	andl	$65534, %eax	#, D.14996
	.loc 1 160 0 discriminator 2
	cmpq	$65534, %rax	#, D.14996
	je	.L47	#,
	.loc 1 161 0
	cmpq	$1114111, -128(%rbp)	#, num
	jbe	.L44	#,
.L47:
	.loc 1 164 0
	movq	$65533, -128(%rbp)	#, num
.L44:
	.loc 1 168 0
	movq	-128(%rbp), %rdx	# num, tmp293
	leaq	-48(%rbp), %rax	#, tmp294
	movq	%rdx, %rsi	# tmp293,
	movq	%rax, %rdi	# tmp294,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, -88(%rbp)	# tmp295, tmp
	.loc 1 169 0
	leaq	-48(%rbp), %rax	#, tmp296
	movq	%rax, -136(%rbp)	# tmp296, repl
	.loc 1 170 0
	movq	-88(%rbp), %rdx	# tmp, tmp.44
	leaq	-48(%rbp), %rax	#, buf.45
	subq	%rax, %rdx	# buf.45, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movq	%rax, -168(%rbp)	# repl_len.46, repl_len
	.loc 1 171 0
	movl	$1, -212(%rbp)	#, repl_utf8
.LBE4:
.LBE2:
	jmp	.L48	#
.L39:
	jmp	.L48	#
.L27:
.LBB5:
	.loc 1 183 0
	movq	-192(%rbp), %rax	# s, tmp297
	movq	%rax, -80(%rbp)	# tmp297, ent_name
	.loc 1 184 0
	jmp	.L49	#
.L51:
	.loc 1 185 0
	movq	-192(%rbp), %rax	# s, s.47
	addq	$1, %rax	#, s.48
	movq	%rax, -192(%rbp)	# s.48, s
.L49:
	.loc 1 184 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.49
	movzbl	(%rax), %eax	# *s.49_138, D.14995
	cmpb	$64, %al	#, D.14995
	jle	.L50	#,
	.loc 1 184 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, s.50
	movzbl	(%rax), %eax	# *s.50_140, D.14995
	cmpb	$90, %al	#, D.14995
	jle	.L51	#,
.L50:
	.loc 1 184 0 discriminator 3
	movq	-192(%rbp), %rax	# s, s.51
	movzbl	(%rax), %eax	# *s.51_142, D.14995
	cmpb	$96, %al	#, D.14995
	jle	.L52	#,
	.loc 1 184 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.52
	movzbl	(%rax), %eax	# *s.52_144, D.14995
	cmpb	$122, %al	#, D.14995
	jle	.L51	#,
.L52:
	.loc 1 184 0 discriminator 2
	movq	-192(%rbp), %rax	# s, s.53
	movzbl	(%rax), %eax	# *s.53_146, D.14995
	cmpb	$47, %al	#, D.14995
	jle	.L53	#,
	.loc 1 184 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.54
	movzbl	(%rax), %eax	# *s.54_148, D.14995
	cmpb	$57, %al	#, D.14995
	jle	.L51	#,
.L53:
	.loc 1 184 0 discriminator 2
	movq	-192(%rbp), %rax	# s, s.55
	movzbl	(%rax), %eax	# *s.55_150, D.14995
	cmpb	$95, %al	#, D.14995
	je	.L51	#,
	.loc 1 186 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, s.56
	cmpq	%rax, -80(%rbp)	# s.56, ent_name
	je	.L54	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	cmpq	$0, -240(%rbp)	#, entity2char
	je	.L54	#,
.LBB6:
	.loc 1 187 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, s.57
	movq	%rax, %rdx	# s.57, s.58
	movq	-80(%rbp), %rax	# ent_name, ent_name.59
	subq	%rax, %rdx	# ent_name.59, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movl	%eax, %edx	# D.14998, D.14997
	movq	-80(%rbp), %rsi	# ent_name, tmp298
	movq	-240(%rbp), %rax	# entity2char, tmp299
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp299,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp300, svp
	.loc 1 188 0
	cmpq	$0, -72(%rbp)	#, svp
	je	.L55	#,
	.loc 1 189 0
	movq	-72(%rbp), %rax	# svp, tmp301
	movq	(%rax), %rax	# *svp_159, D.14999
	movl	12(%rax), %eax	# _160->sv_flags, D.14993
	andl	$262144, %eax	#, D.14993
	testl	%eax, %eax	# D.14993
	je	.L56	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# svp, tmp302
	movq	(%rax), %rax	# *svp_159, D.14999
	movq	(%rax), %rax	# _163->sv_any, D.14994
	movq	8(%rax), %rax	# MEM[(struct XPV *)_164].xpv_cur, repl_len.61
	movq	%rax, -168(%rbp)	# repl_len.61, repl_len
	movq	-72(%rbp), %rax	# svp, tmp303
	movq	(%rax), %rax	# *svp_159, D.14999
	movq	(%rax), %rax	# _166->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_167].xpv_pv, iftmp.60
	jmp	.L57	#
.L56:
	.loc 1 189 0 discriminator 2
	movq	-72(%rbp), %rax	# svp, tmp304
	movq	(%rax), %rax	# *svp_159, D.14999
	leaq	-168(%rbp), %rcx	#, tmp305
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp305,
	movq	%rax, %rdi	# D.14999,
	call	Perl_sv_2pv_flags	#
.L57:
	.loc 1 189 0 discriminator 1
	movq	%rax, -136(%rbp)	# iftmp.60, repl
	.loc 1 191 0 is_stmt 1 discriminator 1
	movq	-72(%rbp), %rax	# svp, tmp306
	movq	(%rax), %rax	# *svp_159, D.14999
	movl	12(%rax), %eax	# _172->sv_flags, D.14993
	andl	$536870912, %eax	#, tmp307
	movl	%eax, -212(%rbp)	# tmp307, repl_utf8
	jmp	.L54	#
.L55:
	.loc 1 194 0
	cmpb	$0, -244(%rbp)	#, allow_unterminated
	je	.L54	#,
.LBB7:
	.loc 1 195 0
	movq	-192(%rbp), %rax	# s, s.62
	subq	$1, %rax	#, tmp308
	movq	%rax, -112(%rbp)	# tmp308, ss
	.loc 1 196 0
	jmp	.L58	#
.L62:
	.loc 1 197 0
	movq	-112(%rbp), %rdx	# ss, ss.63
	movq	-80(%rbp), %rax	# ent_name, ent_name.64
	subq	%rax, %rdx	# ent_name.64, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movl	%eax, %edx	# D.14998, D.14997
	movq	-80(%rbp), %rsi	# ent_name, tmp309
	movq	-240(%rbp), %rax	# entity2char, tmp310
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp310,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp311, svp
	.loc 1 198 0
	cmpq	$0, -72(%rbp)	#, svp
	je	.L59	#,
	.loc 1 199 0
	movq	-72(%rbp), %rax	# svp, tmp312
	movq	(%rax), %rax	# *svp_183, D.14999
	movl	12(%rax), %eax	# _184->sv_flags, D.14993
	andl	$262144, %eax	#, D.14993
	testl	%eax, %eax	# D.14993
	je	.L60	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# svp, tmp313
	movq	(%rax), %rax	# *svp_183, D.14999
	movq	(%rax), %rax	# _187->sv_any, D.14994
	movq	8(%rax), %rax	# MEM[(struct XPV *)_188].xpv_cur, repl_len.66
	movq	%rax, -168(%rbp)	# repl_len.66, repl_len
	movq	-72(%rbp), %rax	# svp, tmp314
	movq	(%rax), %rax	# *svp_183, D.14999
	movq	(%rax), %rax	# _190->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_191].xpv_pv, iftmp.65
	jmp	.L61	#
.L60:
	.loc 1 199 0 discriminator 2
	movq	-72(%rbp), %rax	# svp, tmp315
	movq	(%rax), %rax	# *svp_183, D.14999
	leaq	-168(%rbp), %rcx	#, tmp316
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp316,
	movq	%rax, %rdi	# D.14999,
	call	Perl_sv_2pv_flags	#
.L61:
	.loc 1 199 0 discriminator 3
	movq	%rax, -136(%rbp)	# iftmp.65, repl
	.loc 1 201 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# svp, tmp317
	movq	(%rax), %rax	# *svp_183, D.14999
	movl	12(%rax), %eax	# _196->sv_flags, D.14993
	andl	$536870912, %eax	#, tmp318
	movl	%eax, -212(%rbp)	# tmp318, repl_utf8
	.loc 1 203 0 discriminator 3
	movq	-112(%rbp), %rax	# ss, tmp319
	movq	%rax, -192(%rbp)	# tmp319, s
	.loc 1 204 0 discriminator 3
	jmp	.L54	#
.L59:
	.loc 1 206 0
	subq	$1, -112(%rbp)	#, ss
.L58:
	.loc 1 196 0 discriminator 1
	movq	-112(%rbp), %rax	# ss, tmp320
	cmpq	-80(%rbp), %rax	# ent_name, tmp320
	ja	.L62	#,
.L54:
.LBE7:
.LBE6:
	.loc 1 211 0
	movl	$0, -208(%rbp)	#, high_surrogate
.L48:
.LBE5:
	.loc 1 215 0
	cmpq	$0, -136(%rbp)	#, repl
	je	.L63	#,
.LBB8:
	.loc 1 216 0
	movq	$0, -104(%rbp)	#, repl_allocated
	.loc 1 217 0
	movq	-192(%rbp), %rax	# s, s.67
	movzbl	(%rax), %eax	# *s.67_205, D.14995
	cmpb	$59, %al	#, D.14995
	jne	.L64	#,
	.loc 1 218 0
	movq	-192(%rbp), %rax	# s, s.68
	addq	$1, %rax	#, s.69
	movq	%rax, -192(%rbp)	# s.69, s
.L64:
	.loc 1 219 0
	movq	-184(%rbp), %rax	# t, t.70
	subq	$1, %rax	#, t.71
	movq	%rax, -184(%rbp)	# t.71, t
	.loc 1 222 0
	movq	-192(%rbp), %rax	# s, s.72
	movzbl	(%rax), %eax	# *s.72_211, D.14995
	cmpb	$38, %al	#, D.14995
	je	.L65	#,
	.loc 1 223 0
	movl	$0, -208(%rbp)	#, high_surrogate
.L65:
	.loc 1 226 0
	movq	-232(%rbp), %rax	# sv, tmp321
	movl	12(%rax), %eax	# sv_34(D)->sv_flags, D.14993
	andl	$536870912, %eax	#, D.14993
	testl	%eax, %eax	# D.14993
	jne	.L66	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	cmpl	$0, -212(%rbp)	#, repl_utf8
	je	.L66	#,
.LBB9:
	.loc 1 228 0 is_stmt 1 discriminator 1
	movq	-184(%rbp), %rax	# t, t.73
	movq	%rax, %rdx	# t.73, t.74
	movq	-232(%rbp), %rax	# sv, tmp322
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_218].xpv_pv, D.15000
	subq	%rax, %rdx	# D.14998, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movq	%rax, -160(%rbp)	# before_gap_len.75, before_gap_len
	.loc 1 229 0 discriminator 1
	movq	-232(%rbp), %rax	# sv, tmp323
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_223].xpv_pv, D.15000
	leaq	-160(%rbp), %rdx	#, tmp324
	movq	%rdx, %rsi	# tmp324,
	movq	%rax, %rdi	# D.15000,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -64(%rbp)	# tmp325, before_gap
	.loc 1 230 0 discriminator 1
	movq	-176(%rbp), %rax	# end, end.76
	movq	%rax, %rdx	# end.76, end.77
	movq	-192(%rbp), %rax	# s, s.78
	subq	%rax, %rdx	# s.79, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movq	%rax, -152(%rbp)	# after_gap_len.80, after_gap_len
	.loc 1 231 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.81
	leaq	-152(%rbp), %rdx	#, tmp326
	movq	%rdx, %rsi	# tmp326,
	movq	%rax, %rdi	# s.81,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -56(%rbp)	# tmp327, after_gap
	.loc 1 233 0 discriminator 1
	movq	-160(%rbp), %rdx	# before_gap_len, before_gap_len.82
	movq	-64(%rbp), %rcx	# before_gap, tmp328
	movq	-232(%rbp), %rax	# sv, tmp329
	movq	%rcx, %rsi	# tmp328,
	movq	%rax, %rdi	# tmp329,
	call	Perl_sv_setpvn	#
	.loc 1 234 0 discriminator 1
	movq	-152(%rbp), %rdx	# after_gap_len, after_gap_len.83
	movq	-56(%rbp), %rsi	# after_gap, tmp330
	movq	-232(%rbp), %rax	# sv, tmp331
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp331,
	call	Perl_sv_catpvn_flags	#
	.loc 1 235 0 discriminator 1
	movq	-232(%rbp), %rax	# sv, tmp332
	movl	12(%rax), %eax	# sv_34(D)->sv_flags, D.14993
	orl	$536870912, %eax	#, D.14993
	movl	%eax, %edx	# D.14993, D.14993
	movq	-232(%rbp), %rax	# sv, tmp333
	movl	%edx, 12(%rax)	# D.14993, sv_34(D)->sv_flags
	.loc 1 237 0 discriminator 1
	movq	-64(%rbp), %rax	# before_gap, tmp334
	movq	%rax, %rdi	# tmp334,
	call	Perl_safesysfree	#
	.loc 1 238 0 discriminator 1
	movq	-56(%rbp), %rax	# after_gap, tmp335
	movq	%rax, %rdi	# tmp335,
	call	Perl_safesysfree	#
	.loc 1 240 0 discriminator 1
	movq	-232(%rbp), %rax	# sv, tmp336
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	(%rax), %rdx	# MEM[(struct XPV *)_238].xpv_pv, D.15000
	movq	-160(%rbp), %rax	# before_gap_len, before_gap_len.84
	addq	%rdx, %rax	# D.15000, t.85
	movq	%rax, -184(%rbp)	# t.85, t
	movq	-184(%rbp), %rax	# t, t.86
	movq	%rax, -192(%rbp)	# t.86, s
	.loc 1 241 0 discriminator 1
	movq	-232(%rbp), %rax	# sv, tmp337
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	(%rax), %rax	# MEM[(struct XPV *)_243].xpv_pv, D.15000
	movq	-160(%rbp), %rcx	# before_gap_len, before_gap_len.87
	movq	-152(%rbp), %rdx	# after_gap_len, after_gap_len.88
	addq	%rcx, %rdx	# before_gap_len.87, D.15001
	addq	%rdx, %rax	# D.15001, end.89
	movq	%rax, -176(%rbp)	# end.89, end
.LBE9:
	.loc 1 226 0 discriminator 1
	jmp	.L67	#
.L66:
	.loc 1 243 0
	movq	-232(%rbp), %rax	# sv, tmp338
	movl	12(%rax), %eax	# sv_34(D)->sv_flags, D.14993
	andl	$536870912, %eax	#, D.14993
	testl	%eax, %eax	# D.14993
	je	.L67	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	cmpl	$0, -212(%rbp)	#, repl_utf8
	jne	.L67	#,
	.loc 1 244 0 is_stmt 1
	leaq	-168(%rbp), %rdx	#, tmp339
	movq	-136(%rbp), %rax	# repl, tmp340
	movq	%rdx, %rsi	# tmp339,
	movq	%rax, %rdi	# tmp340,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -136(%rbp)	# tmp341, repl
	.loc 1 245 0
	movq	-136(%rbp), %rax	# repl, tmp342
	movq	%rax, -104(%rbp)	# tmp342, repl_allocated
.L67:
	.loc 1 249 0
	movq	-184(%rbp), %rdx	# t, t.90
	movq	-168(%rbp), %rax	# repl_len, repl_len.91
	addq	%rax, %rdx	# repl_len.91, D.15000
	movq	-192(%rbp), %rax	# s, s.92
	cmpq	%rax, %rdx	# s.92, D.15000
	jbe	.L68	#,
	.loc 1 251 0
	movq	-184(%rbp), %rax	# t, t.93
	movq	%rax, %rdx	# t.93, t.94
	movq	-192(%rbp), %rax	# s, s.95
	subq	%rax, %rdx	# s.96, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movq	%rax, %rdx	# D.14998, D.14996
	movq	-168(%rbp), %rax	# repl_len, repl_len.97
	leaq	(%rdx,%rax), %rsi	#, D.14996
	leaq	-176(%rbp), %rdi	#, tmp343
	leaq	-192(%rbp), %rcx	#, tmp344
	leaq	-184(%rbp), %rdx	#, tmp345
	movq	-232(%rbp), %rax	# sv, tmp346
	movq	%rdi, %r8	# tmp343,
	movq	%rax, %rdi	# tmp346,
	call	grow_gap	#
	.loc 1 255 0
	jmp	.L69	#
.L68:
	jmp	.L69	#
.L70:
	.loc 1 256 0
	movq	-184(%rbp), %rax	# t, t.98
	leaq	1(%rax), %rdx	#, t.100
	movq	%rdx, -184(%rbp)	# t.100, t
	movq	-136(%rbp), %rdx	# repl, repl.101
	leaq	1(%rdx), %rcx	#, tmp347
	movq	%rcx, -136(%rbp)	# tmp347, repl
	movzbl	(%rdx), %edx	# *repl.101_271, D.14995
	movb	%dl, (%rax)	# D.14995, *t.99_269
.L69:
	.loc 1 255 0 discriminator 1
	movq	-168(%rbp), %rax	# repl_len, repl_len.102
	leaq	-1(%rax), %rdx	#, repl_len.104
	movq	%rdx, -168(%rbp)	# repl_len.104, repl_len
	testq	%rax, %rax	# repl_len.103
	jne	.L70	#,
	.loc 1 258 0
	cmpq	$0, -104(%rbp)	#, repl_allocated
	je	.L71	#,
	.loc 1 259 0
	movq	-104(%rbp), %rax	# repl_allocated, tmp348
	movq	%rax, %rdi	# tmp348,
	call	Perl_safesysfree	#
.LBE8:
	jmp	.L25	#
.L71:
	jmp	.L25	#
.L63:
	.loc 1 262 0
	jmp	.L72	#
.L73:
	.loc 1 263 0
	movq	-184(%rbp), %rax	# t, t.105
	leaq	1(%rax), %rdx	#, t.107
	movq	%rdx, -184(%rbp)	# t.107, t
	movq	-144(%rbp), %rdx	# ent_start, ent_start.108
	leaq	1(%rdx), %rcx	#, tmp349
	movq	%rcx, -144(%rbp)	# tmp349, ent_start
	movzbl	(%rdx), %edx	# *ent_start.108_278, D.14995
	movb	%dl, (%rax)	# D.14995, *t.106_276
.L72:
	.loc 1 262 0 discriminator 1
	movq	-192(%rbp), %rax	# s, s.109
	cmpq	%rax, -144(%rbp)	# s.109, ent_start
	jb	.L73	#,
.L25:
	.loc 1 89 0 discriminator 1
	movq	-192(%rbp), %rdx	# s, s.110
	movq	-176(%rbp), %rax	# end, end.111
	cmpq	%rax, %rdx	# end.111, s.110
	jb	.L74	#,
	.loc 1 267 0
	movq	-184(%rbp), %rax	# t, t.112
	movb	$0, (%rax)	#, *t.112_281
	.loc 1 268 0
	movq	-232(%rbp), %rax	# sv, tmp350
	movq	(%rax), %rax	# sv_34(D)->sv_any, D.14994
	movq	-184(%rbp), %rdx	# t, t.113
	movq	%rdx, %rcx	# t.113, t.114
	movq	-232(%rbp), %rdx	# sv, tmp351
	movq	(%rdx), %rdx	# sv_34(D)->sv_any, D.14994
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_285].xpv_pv, D.15000
	subq	%rdx, %rcx	# D.14998, D.14998
	movq	%rcx, %rdx	# D.14998, D.14998
	movq	%rdx, 8(%rax)	# D.14996, MEM[(struct XPV *)_282].xpv_cur
	.loc 1 270 0
	movq	-232(%rbp), %rax	# sv, D.14999
	.loc 1 271 0
	movq	-24(%rbp), %rbx	# D.15002, tmp354
	xorq	%fs:40, %rbx	#, tmp354
	je	.L76	#,
	call	__stack_chk_fail	#
.L76:
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	decode_entities, .-decode_entities
	.type	has_hibit, @function
has_hibit:
.LFB6:
	.loc 1 276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# e, e
	.loc 1 277 0
	jmp	.L78	#
.L80:
.LBB10:
	.loc 1 278 0
	movq	-24(%rbp), %rax	# s, s.115
	leaq	1(%rax), %rdx	#, tmp64
	movq	%rdx, -24(%rbp)	# tmp64, s
	movzbl	(%rax), %eax	# *s.115_5, D.15005
	movb	%al, -1(%rbp)	# D.15005, ch
	.loc 1 279 0
	movzbl	-1(%rbp), %eax	# ch, ch.116
	testb	%al, %al	# ch.116
	jns	.L78	#,
	.loc 1 280 0
	movl	$1, %eax	#, D.15005
	jmp	.L79	#
.L78:
.LBE10:
	.loc 1 277 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp65
	cmpq	-32(%rbp), %rax	# e, tmp65
	jb	.L80	#,
	.loc 1 283 0
	movl	$0, %eax	#, D.15005
.L79:
	.loc 1 284 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	has_hibit, .-has_hibit
	.type	probably_utf8_chunk, @function
probably_utf8_chunk:
.LFB7:
	.loc 1 289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# len, len
	.loc 1 290 0
	movq	-32(%rbp), %rax	# len, tmp89
	movq	-24(%rbp), %rdx	# s, tmp90
	addq	%rdx, %rax	# tmp90, tmp88
	movq	%rax, -16(%rbp)	# tmp88, e
	.loc 1 294 0
	jmp	.L82	#
.L84:
	.loc 1 295 0
	subq	$1, -16(%rbp)	#, e
.L82:
	.loc 1 294 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp91
	cmpq	-16(%rbp), %rax	# e, tmp91
	jae	.L83	#,
	.loc 1 294 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# e, tmp92
	subq	$1, %rax	#, D.15007
	movzbl	(%rax), %eax	# *_8, D.15006
	testb	%al, %al	# D.15006
	jns	.L83	#,
	.loc 1 294 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp93
	subq	$1, %rax	#, D.15007
	movzbl	(%rax), %eax	# *_10, D.15006
	cmpb	$-65, %al	#, D.15008
	jbe	.L84	#,
.L83:
	.loc 1 296 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp94
	cmpq	-16(%rbp), %rax	# e, tmp94
	jae	.L85	#,
	.loc 1 296 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp95
	subq	$1, %rax	#, D.15007
	movzbl	(%rax), %eax	# *_14, D.15006
	cmpb	$-65, %al	#, D.15008
	jbe	.L85	#,
	movq	-16(%rbp), %rax	# e, tmp96
	subq	$1, %rax	#, D.15007
	movzbl	(%rax), %eax	# *_17, D.15006
	cmpb	$-3, %al	#, D.15008
	ja	.L85	#,
	.loc 1 297 0 is_stmt 1
	subq	$1, -16(%rbp)	#, e
.L85:
	.loc 1 298 0
	movq	-24(%rbp), %rdx	# s, s.117
	movq	-16(%rbp), %rax	# e, e.118
	subq	%rax, %rdx	# e.118, D.15009
	movq	%rdx, %rax	# D.15009, D.15009
	movq	%rax, %rdx	# D.15009, D.15010
	movq	-32(%rbp), %rax	# len, tmp100
	addq	%rdx, %rax	# D.15010, tmp99
	movq	%rax, -8(%rbp)	# tmp99, clen
	.loc 1 299 0
	cmpq	$0, -8(%rbp)	#, clen
	je	.L86	#,
	.loc 1 299 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# e, tmp101
	movzbl	(%rax), %eax	# MEM[(U8 *)e_2], D.15008
	movzbl	%al, %eax	# D.15008, D.15011
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.15008
	movzbl	%al, %eax	# D.15008, D.15010
	cmpq	-8(%rbp), %rax	# clen, D.15010
	jne	.L86	#,
	.loc 1 301 0 is_stmt 1
	movq	-32(%rbp), %rax	# len, tmp107
	movq	-24(%rbp), %rdx	# s, tmp108
	addq	%rdx, %rax	# tmp108, tmp106
	movq	%rax, -16(%rbp)	# tmp106, e
.L86:
	.loc 1 304 0
	movq	-16(%rbp), %rdx	# e, tmp109
	movq	-24(%rbp), %rax	# s, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	has_hibit	#
	testb	%al, %al	# D.15006
	jne	.L87	#,
	.loc 1 305 0
	movl	$0, %eax	#, D.15006
	jmp	.L88	#
.L87:
	.loc 1 307 0
	movq	-16(%rbp), %rdx	# e, e.119
	movq	-24(%rbp), %rax	# s, s.120
	subq	%rax, %rdx	# s.120, D.15009
	movq	%rdx, %rax	# D.15009, D.15009
	movq	%rax, %rdx	# D.15009, D.15010
	movq	-24(%rbp), %rax	# s, tmp111
	movq	%rdx, %rsi	# D.15010,
	movq	%rax, %rdi	# tmp111,
	call	Perl_is_utf8_string	#
.L88:
	.loc 1 308 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	probably_utf8_chunk, .-probably_utf8_chunk
	.data
	.align 32
	.type	hctype, @object
	.size	hctype, 256
hctype:
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	1
	.byte	1
	.byte	120
	.byte	1
	.byte	1
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	1
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	124
	.byte	124
	.byte	88
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	126
	.byte	120
	.byte	120
	.byte	40
	.byte	0
	.byte	120
	.byte	120
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	126
	.byte	120
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	1
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.text
	.type	tokens_grow, @function
tokens_grow:
.LFB8:
	.file 2 "tokenpos.h"
	.loc 2 31 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# token_ptr, token_ptr
	movq	%rsi, -32(%rbp)	# token_lim_ptr, token_lim_ptr
	movl	%edx, %eax	# tokens_on_heap, tmp73
	movb	%al, -36(%rbp)	# tmp73, tokens_on_heap
	.loc 2 32 0
	movq	-32(%rbp), %rax	# token_lim_ptr, tmp74
	movl	(%rax), %eax	# *token_lim_ptr_3(D), tmp75
	movl	%eax, -16(%rbp)	# tmp75, new_lim
	.loc 2 33 0
	cmpl	$3, -16(%rbp)	#, new_lim
	jg	.L90	#,
	.loc 2 34 0
	movl	$4, -16(%rbp)	#, new_lim
.L90:
	.loc 2 35 0
	sall	-16(%rbp)	# new_lim
	.loc 2 37 0
	cmpb	$0, -36(%rbp)	#, tokens_on_heap
	je	.L91	#,
	.loc 2 38 0
	movl	-16(%rbp), %eax	# new_lim, tmp76
	cltq
	salq	$4, %rax	#, D.15012
	movq	%rax, %rdx	# D.15012, D.15012
	movq	-24(%rbp), %rax	# token_ptr, tmp77
	movq	(%rax), %rax	# *token_ptr_10(D), D.15013
	movq	%rdx, %rsi	# D.15012,
	movq	%rax, %rdi	# D.15013,
	call	Perl_safesysrealloc	#
	movq	-24(%rbp), %rdx	# token_ptr, tmp78
	movq	%rax, (%rdx)	# D.15014, *token_ptr_10(D)
	jmp	.L92	#
.L91:
.LBB11:
	.loc 2 43 0
	movl	-16(%rbp), %eax	# new_lim, tmp79
	cltq
	salq	$4, %rax	#, D.15012
	movq	%rax, %rdi	# D.15012,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp80, new_tokens
	.loc 2 44 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L93	#
.L94:
	.loc 2 45 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	salq	$4, %rax	#, D.15012
	movq	%rax, %rdx	# D.15012, D.15012
	movq	-8(%rbp), %rax	# new_tokens, tmp82
	leaq	(%rdx,%rax), %rcx	#, D.15013
	movq	-24(%rbp), %rax	# token_ptr, tmp83
	movq	(%rax), %rax	# *token_ptr_10(D), D.15013
	movl	-12(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, D.15012
	salq	$4, %rdx	#, D.15012
	addq	%rdx, %rax	# D.15012, D.15013
	movq	8(%rax), %rdx	# *_24,
	movq	(%rax), %rax	# *_24, tmp85
	movq	%rax, (%rcx)	# tmp85, *_20
	movq	%rdx, 8(%rcx)	#, *_20
	.loc 2 44 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L93:
	.loc 2 44 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# token_lim_ptr, tmp86
	movl	(%rax), %eax	# *token_lim_ptr_3(D), D.15015
	cmpl	-12(%rbp), %eax	# i, D.15015
	jg	.L94	#,
	.loc 2 46 0 is_stmt 1
	movq	-24(%rbp), %rax	# token_ptr, tmp87
	movq	-8(%rbp), %rdx	# new_tokens, tmp88
	movq	%rdx, (%rax)	# tmp88, *token_ptr_10(D)
.L92:
.LBE11:
	.loc 2 48 0
	movq	-32(%rbp), %rax	# token_lim_ptr, tmp89
	movl	-16(%rbp), %edx	# new_lim, tmp90
	movl	%edx, (%rax)	# tmp90, *token_lim_ptr_3(D)
	.loc 2 49 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	tokens_grow, .-tokens_grow
	.section	.rodata
.LC9:
	.string	"script"
.LC10:
	.string	"style"
.LC11:
	.string	"xmp"
.LC12:
	.string	"plaintext"
.LC13:
	.string	"title"
.LC14:
	.string	"textarea"
	.data
	.align 32
	.type	literal_mode_elem, @object
	.size	literal_mode_elem, 168
literal_mode_elem:
# len:
	.long	6
# str:
	.zero	4
	.quad	.LC9
# is_cdata:
	.long	1
	.zero	4
# len:
	.long	5
# str:
	.zero	4
	.quad	.LC10
# is_cdata:
	.long	1
	.zero	4
# len:
	.long	3
# str:
	.zero	4
	.quad	.LC11
# is_cdata:
	.long	1
	.zero	4
# len:
	.long	9
# str:
	.zero	4
	.quad	.LC12
# is_cdata:
	.long	1
	.zero	4
# len:
	.long	5
# str:
	.zero	4
	.quad	.LC13
# is_cdata:
	.long	0
	.zero	4
# len:
	.long	8
# str:
	.zero	4
	.quad	.LC14
# is_cdata:
	.long	0
	.zero	4
# len:
	.long	0
# str:
	.zero	4
	.quad	0
# is_cdata:
	.long	0
	.zero	4
	.globl	argname
	.section	.rodata
.LC15:
	.string	"self"
.LC16:
	.string	"tokens"
.LC17:
	.string	"tokenpos"
.LC18:
	.string	"token0"
.LC19:
	.string	"tagname"
.LC20:
	.string	"tag"
.LC21:
	.string	"attr"
.LC22:
	.string	"@attr"
.LC23:
	.string	"attrseq"
.LC24:
	.string	"dtext"
.LC25:
	.string	"is_cdata"
.LC26:
	.string	"skipped_text"
.LC27:
	.string	"offset"
.LC28:
	.string	"offset_end"
.LC29:
	.string	"length"
.LC30:
	.string	"line"
.LC31:
	.string	"column"
.LC32:
	.string	"event"
.LC33:
	.string	"undef"
	.data
	.align 32
	.type	argname, @object
	.size	argname, 160
argname:
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC4
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.section	.rodata
.LC35:
	.string	""
.LC36:
	.string	"!##/#?#"
.LC37:
	.string	"Bad argspec %d"
	.text
	.type	report_event, @function
report_event:
.LFB9:
	.file 3 "hparser.c"
	.loc 3 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$320, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -280(%rbp)	# p_state, p_state
	movl	%esi, -284(%rbp)	# event, event
	movq	%rdx, -296(%rbp)	# beg, beg
	movq	%rcx, -304(%rbp)	# end, end
	movl	%r8d, -288(%rbp)	# utf8, utf8
	movq	%r9, -312(%rbp)	# tokens, tokens
	.loc 3 122 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 3 135 0
	movq	-280(%rbp), %rax	# p_state, tmp573
	movq	16(%rax), %rax	# p_state_69(D)->offset, tmp574
	movq	%rax, -136(%rbp)	# tmp574, offset
	.loc 3 136 0
	movq	-280(%rbp), %rax	# p_state, tmp575
	movq	24(%rax), %rax	# p_state_69(D)->line, tmp576
	movq	%rax, -128(%rbp)	# tmp576, line
	.loc 3 137 0
	movq	-280(%rbp), %rax	# p_state, tmp577
	movq	32(%rax), %rax	# p_state_69(D)->column, tmp578
	movq	%rax, -120(%rbp)	# tmp578, column
	.loc 3 175 0
	movq	-280(%rbp), %rax	# p_state, tmp579
	movq	64(%rax), %rax	# p_state_69(D)->pending_end_tag, D.15041
	testq	%rax, %rax	# D.15041
	je	.L96	#,
	.loc 3 175 0 is_stmt 0 discriminator 1
	cmpl	$4, -284(%rbp)	#, event
	je	.L96	#,
	cmpl	$1, -284(%rbp)	#, event
	je	.L96	#,
.LBB12:
	.loc 3 178 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp580
	movq	64(%rax), %rax	# p_state_69(D)->pending_end_tag, D.15041
	movq	%rax, -32(%rbp)	# D.15041, t.beg
	.loc 3 179 0
	movq	-280(%rbp), %rax	# p_state, tmp581
	movq	64(%rax), %rbx	# p_state_69(D)->pending_end_tag, D.15041
	movq	-280(%rbp), %rax	# p_state, tmp582
	movq	64(%rax), %rax	# p_state_69(D)->pending_end_tag, D.15041
	movq	%rax, %rdi	# D.15041,
	call	strlen	#
	addq	%rbx, %rax	# D.15041, D.15041
	movq	%rax, -24(%rbp)	# D.15041, t.end
	.loc 3 180 0
	movq	-280(%rbp), %rax	# p_state, tmp583
	movq	$0, 64(%rax)	#, p_state_69(D)->pending_end_tag
	.loc 3 181 0
	leaq	-32(%rbp), %rdi	#, tmp584
	leaq	-261(%rbp), %rcx	#, tmp585
	leaq	-261(%rbp), %rdx	#, tmp586
	movq	-280(%rbp), %rax	# p_state, tmp587
	movq	24(%rbp), %rsi	# self, tmp588
	movq	%rsi, 8(%rsp)	# tmp588,
	movl	$1, (%rsp)	#,
	movq	%rdi, %r9	# tmp584,
	movl	$0, %r8d	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp587,
	call	report_event	#
	.loc 3 182 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.L96:
.LBE12:
	.loc 3 186 0
	movq	-280(%rbp), %rax	# p_state, tmp589
	movq	16(%rax), %r12	# p_state_69(D)->offset, D.15042
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L97	#,
	.loc 3 186 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rdx	# beg, tmp590
	movq	-304(%rbp), %rax	# end, tmp591
	movq	%rdx, %rsi	# tmp590,
	movq	%rax, %rdi	# tmp591,
	call	Perl_utf8_distance	#
	jmp	.L98	#
.L97:
	.loc 3 186 0 discriminator 2
	movq	-304(%rbp), %rdx	# end, end.122
	movq	-296(%rbp), %rax	# beg, beg.123
	subq	%rax, %rdx	# beg.123, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
.L98:
	.loc 3 186 0 discriminator 3
	leaq	(%r12,%rax), %rdx	#, D.15042
	movq	-280(%rbp), %rax	# p_state, tmp592
	movq	%rdx, 16(%rax)	# D.15042, p_state_69(D)->offset
	.loc 3 187 0 is_stmt 1 discriminator 3
	cmpq	$0, -128(%rbp)	#, line
	je	.L99	#,
.LBB13:
	.loc 3 188 0
	movq	-296(%rbp), %rax	# beg, tmp593
	movq	%rax, -200(%rbp)	# tmp593, s
	.loc 3 189 0
	movq	$0, -192(%rbp)	#, nl
	.loc 3 190 0
	jmp	.L100	#
.L102:
	.loc 3 191 0
	movq	-200(%rbp), %rax	# s, tmp594
	movzbl	(%rax), %eax	# *s_20, D.15044
	cmpb	$10, %al	#, D.15044
	jne	.L101	#,
	.loc 3 192 0
	movq	-280(%rbp), %rax	# p_state, tmp595
	movq	24(%rax), %rax	# p_state_69(D)->line, D.15042
	leaq	1(%rax), %rdx	#, D.15042
	movq	-280(%rbp), %rax	# p_state, tmp596
	movq	%rdx, 24(%rax)	# D.15042, p_state_69(D)->line
	.loc 3 193 0
	movq	-200(%rbp), %rax	# s, tmp597
	movq	%rax, -192(%rbp)	# tmp597, nl
.L101:
	.loc 3 195 0
	addq	$1, -200(%rbp)	#, s
.L100:
	.loc 3 190 0 discriminator 1
	movq	-200(%rbp), %rax	# s, tmp598
	cmpq	-304(%rbp), %rax	# end, tmp598
	jb	.L102	#,
	.loc 3 197 0
	cmpq	$0, -192(%rbp)	#, nl
	je	.L103	#,
	.loc 3 198 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L104	#,
	.loc 3 198 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rdx	# nl, tmp599
	movq	-304(%rbp), %rax	# end, tmp600
	movq	%rdx, %rsi	# tmp599,
	movq	%rax, %rdi	# tmp600,
	call	Perl_utf8_distance	#
	subq	$1, %rax	#, D.15043
	jmp	.L105	#
.L104:
	.loc 3 198 0 discriminator 2
	movq	-304(%rbp), %rdx	# end, end.125
	movq	-192(%rbp), %rax	# nl, nl.126
	subq	%rax, %rdx	# nl.126, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	subq	$1, %rax	#, D.15043
.L105:
	.loc 3 198 0 discriminator 1
	movq	-280(%rbp), %rdx	# p_state, tmp601
	movq	%rax, 32(%rdx)	# iftmp.124, p_state_69(D)->column
	jmp	.L99	#
.L103:
	.loc 3 200 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp602
	movq	32(%rax), %r12	# p_state_69(D)->column, D.15042
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L106	#,
	.loc 3 200 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rdx	# beg, tmp603
	movq	-304(%rbp), %rax	# end, tmp604
	movq	%rdx, %rsi	# tmp603,
	movq	%rax, %rdi	# tmp604,
	call	Perl_utf8_distance	#
	jmp	.L107	#
.L106:
	.loc 3 200 0 discriminator 2
	movq	-304(%rbp), %rdx	# end, end.128
	movq	-296(%rbp), %rax	# beg, beg.129
	subq	%rax, %rdx	# beg.129, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
.L107:
	.loc 3 200 0 discriminator 3
	leaq	(%r12,%rax), %rdx	#, D.15042
	movq	-280(%rbp), %rax	# p_state, tmp605
	movq	%rdx, 32(%rax)	# D.15042, p_state_69(D)->column
.L99:
.LBE13:
	.loc 3 203 0 is_stmt 1
	cmpl	$10, -284(%rbp)	#, event
	jne	.L108	#,
	.loc 3 204 0
	jmp	.L109	#
.L108:
	.loc 3 207 0
	movq	-280(%rbp), %rax	# p_state, tmp606
	movl	120(%rax), %eax	# p_state_69(D)->ms, D.15045
	cmpl	$4, %eax	#, D.15045
	jne	.L110	#,
	.loc 3 208 0
	jmp	.L109	#
.L110:
	.loc 3 212 0
	movq	-280(%rbp), %rax	# p_state, tmp607
	movq	320(%rax), %rax	# p_state_69(D)->ignore_tags, D.15046
	testq	%rax, %rax	# D.15046
	jne	.L111	#,
	.loc 3 212 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp608
	movq	312(%rax), %rax	# p_state_69(D)->report_tags, D.15046
	testq	%rax, %rax	# D.15046
	jne	.L111	#,
	movq	-280(%rbp), %rax	# p_state, tmp609
	movq	328(%rax), %rax	# p_state_69(D)->ignore_elements, D.15046
	testq	%rax, %rax	# D.15046
	je	.L112	#,
.L111:
	.loc 3 214 0 is_stmt 1
	cmpl	$2, -284(%rbp)	#, event
	je	.L113	#,
	.loc 3 214 0 is_stmt 0 discriminator 1
	cmpl	$3, -284(%rbp)	#, event
	jne	.L114	#,
.L113:
.LBB14:
	.loc 3 215 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp610
	movq	360(%rax), %rax	# p_state_69(D)->tmp, tmp611
	movq	%rax, -112(%rbp)	# tmp611, tagname
	.loc 3 218 0
	movq	-312(%rbp), %rax	# tokens, tmp612
	movq	8(%rax), %rax	# tokens_122(D)->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movq	-312(%rbp), %rax	# tokens, tmp613
	movq	(%rax), %rax	# tokens_122(D)->beg, D.15041
	subq	%rax, %rdx	# D.15043, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp614
	movq	(%rax), %rcx	# tokens_122(D)->beg, D.15041
	movq	-112(%rbp), %rax	# tagname, tmp615
	movq	%rcx, %rsi	# D.15041,
	movq	%rax, %rdi	# tmp615,
	call	Perl_sv_setpvn	#
	.loc 3 219 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L115	#,
	.loc 3 220 0
	movq	-112(%rbp), %rax	# tagname, tmp616
	movl	12(%rax), %eax	# tagname_121->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-112(%rbp), %rax	# tagname, tmp617
	movl	%edx, 12(%rax)	# D.15048, tagname_121->sv_flags
	jmp	.L116	#
.L115:
	.loc 3 222 0
	movq	-112(%rbp), %rax	# tagname, tmp618
	movl	12(%rax), %eax	# tagname_121->sv_flags, D.15048
	andl	$-536870913, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-112(%rbp), %rax	# tagname, tmp619
	movl	%edx, 12(%rax)	# D.15048, tagname_121->sv_flags
.L116:
	.loc 3 223 0
	movq	-280(%rbp), %rax	# p_state, tmp620
	movzbl	140(%rax), %eax	# p_state_69(D)->xml_mode, D.15044
	testb	%al, %al	# D.15044
	jne	.L117	#,
	.loc 3 223 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp621
	movzbl	143(%rax), %eax	# p_state_69(D)->case_sensitive, D.15044
	testb	%al, %al	# D.15044
	jne	.L117	#,
	.loc 3 224 0 is_stmt 1
	movq	-112(%rbp), %rax	# tagname, tmp622
	movq	%rax, %rdi	# tmp622,
	call	sv_lower	#
.L117:
	.loc 3 226 0
	movq	-280(%rbp), %rax	# p_state, tmp623
	movq	336(%rax), %rax	# p_state_69(D)->ignoring_element, D.15047
	testq	%rax, %rax	# D.15047
	je	.L118	#,
	.loc 3 227 0
	movq	-280(%rbp), %rax	# p_state, tmp624
	movq	336(%rax), %rax	# p_state_69(D)->ignoring_element, D.15047
	movq	-112(%rbp), %rdx	# tagname, tmp625
	movq	%rdx, %rsi	# tmp625,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_eq	#
	testl	%eax, %eax	# D.15049
	je	.L119	#,
	.loc 3 228 0
	cmpl	$2, -284(%rbp)	#, event
	jne	.L120	#,
	.loc 3 229 0
	movq	-280(%rbp), %rax	# p_state, tmp626
	movl	344(%rax), %eax	# p_state_69(D)->ignore_depth, D.15049
	leal	1(%rax), %edx	#, D.15049
	movq	-280(%rbp), %rax	# p_state, tmp627
	movl	%edx, 344(%rax)	# D.15049, p_state_69(D)->ignore_depth
	jmp	.L119	#
.L120:
	.loc 3 230 0
	movq	-280(%rbp), %rax	# p_state, tmp628
	movl	344(%rax), %eax	# p_state_69(D)->ignore_depth, D.15049
	leal	-1(%rax), %edx	#, D.15049
	movq	-280(%rbp), %rax	# p_state, tmp629
	movl	%edx, 344(%rax)	# D.15049, p_state_69(D)->ignore_depth
	movq	-280(%rbp), %rax	# p_state, tmp630
	movl	344(%rax), %eax	# p_state_69(D)->ignore_depth, D.15049
	testl	%eax, %eax	# D.15049
	jne	.L119	#,
	.loc 3 231 0
	movq	-280(%rbp), %rax	# p_state, tmp631
	movq	336(%rax), %rax	# p_state_69(D)->ignoring_element, D.15047
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_free	#
	.loc 3 232 0
	movq	-280(%rbp), %rax	# p_state, tmp632
	movq	$0, 336(%rax)	#, p_state_69(D)->ignoring_element
	.loc 3 235 0
	jmp	.L109	#
.L119:
	jmp	.L109	#
.L118:
	.loc 3 238 0
	movq	-280(%rbp), %rax	# p_state, tmp633
	movq	328(%rax), %rax	# p_state_69(D)->ignore_elements, D.15046
	testq	%rax, %rax	# D.15046
	je	.L121	#,
	.loc 3 239 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp634
	movq	328(%rax), %rax	# p_state_69(D)->ignore_elements, D.15046
	movq	-112(%rbp), %rsi	# tagname, tmp635
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.15046,
	call	Perl_hv_fetch_ent	#
	.loc 3 238 0 discriminator 1
	testq	%rax, %rax	# D.15050
	je	.L121	#,
	.loc 3 241 0
	movq	-112(%rbp), %rax	# tagname, tmp636
	movq	%rax, %rdi	# tmp636,
	call	Perl_newSVsv	#
	movq	-280(%rbp), %rdx	# p_state, tmp637
	movq	%rax, 336(%rdx)	# D.15047, p_state_69(D)->ignoring_element
	.loc 3 242 0
	movq	-280(%rbp), %rax	# p_state, tmp638
	movl	$1, 344(%rax)	#, p_state_69(D)->ignore_depth
	.loc 3 243 0
	jmp	.L109	#
.L121:
	.loc 3 246 0
	movq	-280(%rbp), %rax	# p_state, tmp639
	movq	320(%rax), %rax	# p_state_69(D)->ignore_tags, D.15046
	testq	%rax, %rax	# D.15046
	je	.L122	#,
	.loc 3 247 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp640
	movq	320(%rax), %rax	# p_state_69(D)->ignore_tags, D.15046
	movq	-112(%rbp), %rsi	# tagname, tmp641
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.15046,
	call	Perl_hv_fetch_ent	#
	.loc 3 246 0 discriminator 1
	testq	%rax, %rax	# D.15050
	je	.L122	#,
	.loc 3 249 0
	jmp	.L109	#
.L122:
	.loc 3 251 0
	movq	-280(%rbp), %rax	# p_state, tmp642
	movq	312(%rax), %rax	# p_state_69(D)->report_tags, D.15046
	testq	%rax, %rax	# D.15046
	je	.L123	#,
	.loc 3 252 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp643
	movq	312(%rax), %rax	# p_state_69(D)->report_tags, D.15046
	movq	-112(%rbp), %rsi	# tagname, tmp644
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.15046,
	call	Perl_hv_fetch_ent	#
	.loc 3 251 0 discriminator 1
	testq	%rax, %rax	# D.15050
	jne	.L123	#,
	.loc 3 254 0
	jmp	.L109	#
.L123:
.LBE14:
	.loc 3 214 0
	jmp	.L112	#
.L114:
	.loc 3 257 0
	movq	-280(%rbp), %rax	# p_state, tmp645
	movq	336(%rax), %rax	# p_state_69(D)->ignoring_element, D.15047
	testq	%rax, %rax	# D.15047
	je	.L112	#,
	.loc 3 258 0
	jmp	.L109	#
.L112:
	.loc 3 262 0
	movl	-284(%rbp), %eax	# event, tmp646
	addq	$10, %rax	#, tmp647
	salq	$4, %rax	#, tmp648
	movq	%rax, %rdx	# tmp648, tmp648
	movq	-280(%rbp), %rax	# p_state, tmp652
	addq	%rdx, %rax	# tmp648, tmp651
	movq	%rax, -232(%rbp)	# tmp651, h
	.loc 3 263 0
	movq	-232(%rbp), %rax	# h, tmp653
	movq	(%rax), %rax	# h_155->cb, D.15047
	testq	%rax, %rax	# D.15047
	jne	.L124	#,
	.loc 3 265 0
	movq	-280(%rbp), %rax	# p_state, tmp657
	addq	$288, %rax	#, tmp656
	movq	%rax, -232(%rbp)	# tmp656, h
	.loc 3 266 0
	movq	-232(%rbp), %rax	# h, tmp658
	movq	(%rax), %rax	# h_157->cb, D.15047
	testq	%rax, %rax	# D.15047
	jne	.L124	#,
	.loc 3 267 0
	jmp	.L109	#
.L124:
	.loc 3 270 0
	movq	-232(%rbp), %rax	# h, tmp659
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _159->sv_flags, D.15048
	movzbl	%al, %eax	# D.15048, D.15048
	cmpl	$10, %eax	#, D.15048
	je	.L125	#,
	.loc 3 270 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# h, tmp660
	movq	(%rax), %rax	# h_1->cb, D.15047
	testq	%rax, %rax	# D.15047
	je	.L126	#,
	movq	-232(%rbp), %rax	# h, tmp661
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _163->sv_flags, D.15048
	andl	$262144, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L127	#,
	.loc 3 270 0 discriminator 3
	movq	-232(%rbp), %rax	# h, tmp662
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	(%rax), %rax	# _166->sv_any, PL_Xpv.133
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.133, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.134
	testq	%rax, %rax	# PL_Xpv.134
	je	.L128	#,
	.loc 3 270 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.135
	movq	8(%rax), %rax	# PL_Xpv.135_169->xpv_cur, D.15042
	cmpq	$1, %rax	#, D.15042
	ja	.L129	#,
	.loc 3 270 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.136
	movq	8(%rax), %rax	# PL_Xpv.136_171->xpv_cur, D.15042
	testq	%rax, %rax	# D.15042
	je	.L128	#,
	.loc 3 270 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.137
	movq	(%rax), %rax	# PL_Xpv.137_173->xpv_pv, D.15041
	movzbl	(%rax), %eax	# *_174, D.15044
	cmpb	$48, %al	#, D.15044
	jne	.L129	#,
.L128:
	.loc 3 270 0 discriminator 5
	movl	$1, %eax	#, iftmp.132
	jmp	.L130	#
.L129:
	.loc 3 270 0 discriminator 8
	movl	$0, %eax	#, iftmp.132
.L130:
	.loc 3 270 0 discriminator 9
	andl	$1, %eax	#, iftmp.131
	jmp	.L136	#
.L127:
	.loc 3 270 0 discriminator 4
	movq	-232(%rbp), %rax	# h, tmp663
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _179->sv_flags, D.15048
	andl	$65536, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L132	#,
	.loc 3 270 0 discriminator 10
	movq	-232(%rbp), %rax	# h, tmp664
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	(%rax), %rax	# _182->sv_any, D.15051
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_183].xiv_iv, D.15043
	testq	%rax, %rax	# D.15043
	sete	%al	#, iftmp.138
	jmp	.L136	#
.L132:
	.loc 3 270 0 discriminator 11
	movq	-232(%rbp), %rax	# h, tmp665
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _186->sv_flags, D.15048
	andl	$131072, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L134	#,
	.loc 3 270 0 discriminator 12
	movq	-232(%rbp), %rax	# h, tmp666
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	(%rax), %rax	# _189->sv_any, D.15051
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_190].xnv_nv, D.15052
	xorpd	%xmm1, %xmm1	# tmp668
	ucomisd	%xmm1, %xmm0	# tmp668, D.15052
	setnp	%dl	#, tmp667
	movl	$0, %eax	#, tmp670
	xorpd	%xmm1, %xmm1	# tmp669
	ucomisd	%xmm1, %xmm0	# tmp669, D.15052
	cmove	%edx, %eax	# tmp667,, iftmp.139
	jmp	.L136	#
.L134:
	.loc 3 270 0 discriminator 13
	movq	-232(%rbp), %rax	# h, tmp671
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.15044
	sete	%al	#, iftmp.139
	jmp	.L136	#
.L126:
	.loc 3 270 0 discriminator 2
	movl	$1, %eax	#, iftmp.130
.L136:
	.loc 3 270 0 discriminator 16
	testb	%al, %al	# iftmp.130
	je	.L125	#,
	.loc 3 272 0 is_stmt 1
	jmp	.L95	#
.L125:
	.loc 3 275 0
	movq	-280(%rbp), %rax	# p_state, tmp672
	movzbl	141(%rax), %eax	# p_state_69(D)->unbroken_text, D.15044
	testb	%al, %al	# D.15044
	je	.L138	#,
	.loc 3 275 0 is_stmt 0 discriminator 1
	cmpl	$4, -284(%rbp)	#, event
	jne	.L138	#,
	.loc 3 277 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp673
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	testq	%rax, %rax	# D.15047
	jne	.L139	#,
	.loc 3 278 0
	movl	$256, %edi	#,
	call	Perl_newSV	#
	movq	-280(%rbp), %rdx	# p_state, tmp674
	movq	%rax, 72(%rdx)	# D.15047, p_state_69(D)->pend_text
.L139:
	.loc 3 279 0
	movq	-280(%rbp), %rax	# p_state, tmp675
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	12(%rax), %eax	# _203->sv_flags, D.15048
	andl	$118423552, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L140	#,
	.loc 3 280 0
	movq	-280(%rbp), %rax	# p_state, tmp676
	movzbl	56(%rax), %edx	# p_state_69(D)->is_cdata, D.15044
	movq	-280(%rbp), %rax	# p_state, tmp677
	movzbl	80(%rax), %eax	# p_state_69(D)->pend_text_is_cdata, D.15044
	cmpb	%al, %dl	# D.15044, D.15044
	je	.L141	#,
	.loc 3 281 0
	movq	24(%rbp), %rdx	# self, tmp678
	movq	-280(%rbp), %rax	# p_state, tmp679
	movq	%rdx, %rsi	# tmp678,
	movq	%rax, %rdi	# tmp679,
	call	flush_pending_text	#
	.loc 3 282 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 3 283 0
	nop
.L140:
	.loc 3 288 0
	movq	-280(%rbp), %rax	# p_state, tmp680
	movq	-136(%rbp), %rdx	# offset, tmp681
	movq	%rdx, 88(%rax)	# tmp681, p_state_69(D)->pend_text_offset
	.loc 3 289 0
	movq	-280(%rbp), %rax	# p_state, tmp682
	movq	-128(%rbp), %rdx	# line, tmp683
	movq	%rdx, 96(%rax)	# tmp683, p_state_69(D)->pend_text_line
	.loc 3 290 0
	movq	-280(%rbp), %rax	# p_state, tmp684
	movq	-120(%rbp), %rdx	# column, tmp685
	movq	%rdx, 104(%rax)	# tmp685, p_state_69(D)->pend_text_column
	.loc 3 291 0
	movq	-280(%rbp), %rax	# p_state, tmp686
	movzbl	56(%rax), %edx	# p_state_69(D)->is_cdata, D.15044
	movq	-280(%rbp), %rax	# p_state, tmp687
	movb	%dl, 80(%rax)	# D.15044, p_state_69(D)->pend_text_is_cdata
	.loc 3 292 0
	movq	-280(%rbp), %rax	# p_state, tmp688
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	$0, %edx	#,
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_setpvn	#
	.loc 3 293 0
	cmpl	$0, -288(%rbp)	#, utf8
	jne	.L141	#,
	.loc 3 294 0
	movq	-280(%rbp), %rax	# p_state, tmp689
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movq	-280(%rbp), %rdx	# p_state, tmp690
	movq	72(%rdx), %rdx	# p_state_69(D)->pend_text, D.15047
	movl	12(%rdx), %edx	# _212->sv_flags, D.15048
	andl	$-536870913, %edx	#, D.15048
	movl	%edx, 12(%rax)	# D.15048, _211->sv_flags
.L141:
	.loc 3 297 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L142	#,
	.loc 3 297 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp691
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	12(%rax), %eax	# _215->sv_flags, D.15048
	andl	$536870912, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	jne	.L142	#,
	.loc 3 298 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp692
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_utf8_upgrade_flags	#
.L142:
	.loc 3 299 0
	cmpl	$0, -288(%rbp)	#, utf8
	jne	.L143	#,
	.loc 3 299 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp693
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	12(%rax), %eax	# _219->sv_flags, D.15048
	andl	$536870912, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	jne	.L144	#,
.L143:
	.loc 3 300 0 is_stmt 1
	movq	-304(%rbp), %rdx	# end, end.140
	movq	-296(%rbp), %rax	# beg, beg.141
	subq	%rax, %rdx	# beg.141, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-280(%rbp), %rax	# p_state, tmp694
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movq	-296(%rbp), %rsi	# beg, tmp695
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_catpvn_flags	#
	.loc 3 311 0
	jmp	.L95	#
.L144:
.LBB15:
	.loc 3 303 0
	movq	-304(%rbp), %rdx	# end, end.142
	movq	-296(%rbp), %rax	# beg, beg.143
	subq	%rax, %rdx	# beg.143, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-296(%rbp), %rax	# beg, tmp696
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# tmp696,
	call	Perl_newSVpvn	#
	movq	%rax, -104(%rbp)	# tmp697, tmp
	.loc 3 304 0
	movq	-104(%rbp), %rax	# tmp, tmp698
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp698,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 3 305 0
	movq	-280(%rbp), %rax	# p_state, tmp699
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movq	-104(%rbp), %rcx	# tmp, tmp700
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp700,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_catsv_flags	#
	.loc 3 306 0
	movq	-104(%rbp), %rax	# tmp, tmp701
	movq	%rax, %rdi	# tmp701,
	call	Perl_sv_free	#
.LBE15:
	.loc 3 311 0
	jmp	.L95	#
.L138:
	.loc 3 313 0
	movq	-280(%rbp), %rax	# p_state, tmp702
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	testq	%rax, %rax	# D.15047
	je	.L146	#,
	.loc 3 313 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp703
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	12(%rax), %eax	# _234->sv_flags, D.15048
	andl	$118423552, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L146	#,
	.loc 3 314 0 is_stmt 1
	movq	24(%rbp), %rdx	# self, tmp704
	movq	-280(%rbp), %rax	# p_state, tmp705
	movq	%rdx, %rsi	# tmp704,
	movq	%rax, %rdi	# tmp705,
	call	flush_pending_text	#
	.loc 3 315 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.L146:
	.loc 3 320 0
	movq	-232(%rbp), %rax	# h, tmp706
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	testq	%rax, %rax	# D.15047
	je	.L147	#,
	.loc 3 320 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# h, tmp707
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	movl	12(%rax), %eax	# _239->sv_flags, D.15048
	andl	$262144, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L148	#,
	movq	-232(%rbp), %rax	# h, tmp708
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	movq	(%rax), %rax	# _242->sv_any, D.15051
	movq	8(%rax), %rax	# MEM[(struct XPV *)_243].xpv_cur, my_na.146
	movq	%rax, -32(%rbp)	# my_na.146, my_na
	movq	-232(%rbp), %rax	# h, tmp709
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	movq	(%rax), %rax	# _245->sv_any, D.15051
	movq	(%rax), %rax	# MEM[(struct XPV *)_246].xpv_pv, iftmp.145
	jmp	.L150	#
.L148:
	.loc 3 320 0 discriminator 2
	movq	-232(%rbp), %rax	# h, tmp710
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	leaq	-32(%rbp), %rcx	#, tmp711
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp711,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2pv_flags	#
	jmp	.L150	#
.L147:
	movl	$.LC35, %eax	#, iftmp.144
.L150:
	.loc 3 320 0 discriminator 3
	movq	%rax, -216(%rbp)	# iftmp.144, argspec
	.loc 3 322 0 is_stmt 1 discriminator 3
	movq	-232(%rbp), %rax	# h, tmp712
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _253->sv_flags, D.15048
	movzbl	%al, %eax	# D.15048, D.15048
	cmpl	$10, %eax	#, D.15048
	jne	.L151	#,
	.loc 3 324 0
	movq	-216(%rbp), %rax	# argspec, tmp713
	movzbl	(%rax), %eax	# *argspec_252, D.15044
	cmpb	$22, %al	#, D.15044
	jne	.L152	#,
	.loc 3 325 0
	addq	$1, -216(%rbp)	#, argspec
	.loc 3 326 0
	movq	-232(%rbp), %rax	# h, tmp714
	movq	(%rax), %rax	# h_1->cb, tmp715
	movq	%rax, -224(%rbp)	# tmp715, array
	jmp	.L154	#
.L152:
	.loc 3 330 0
	call	Perl_newAV	#
	movq	%rax, -224(%rbp)	# tmp716, array
	jmp	.L154	#
.L151:
	.loc 3 334 0
	movq	$0, -224(%rbp)	#, array
	.loc 3 335 0
	movq	-216(%rbp), %rax	# argspec, tmp717
	movzbl	(%rax), %eax	# *argspec_252, D.15044
	cmpb	$22, %al	#, D.15044
	jne	.L155	#,
	.loc 3 336 0
	addq	$1, -216(%rbp)	#, argspec
.L155:
	.loc 3 339 0
	call	Perl_push_scope	#
	.loc 3 340 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.147
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.147, PL_tmps_floor
.LBB16:
	.loc 3 341 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.148
	addq	$4, %rax	#, PL_markstack_ptr.149
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.149, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.150
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.151
	cmpq	%rax, %rdx	# PL_markstack_max.151, PL_markstack_ptr.150
	jne	.L156	#,
	.loc 3 341 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L156:
	.loc 3 341 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.152
	movq	%rbx, %rcx	# sp, sp.153
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.154
	subq	%rdx, %rcx	# PL_stack_base.155, D.15043
	movq	%rcx, %rdx	# D.15043, D.15043
	sarq	$3, %rdx	#, tmp718
	movl	%edx, (%rax)	# D.15049, *PL_markstack_ptr.152_268
.L154:
.LBE16:
	.loc 3 344 0 is_stmt 1
	movq	-216(%rbp), %rax	# argspec, tmp719
	movq	%rax, -208(%rbp)	# tmp719, s
	jmp	.L157	#
.L245:
.LBB17:
	.loc 3 345 0
	movq	$0, -184(%rbp)	#, arg
	.loc 3 346 0
	movl	$1, -260(%rbp)	#, push_arg
	.loc 3 347 0
	movq	-208(%rbp), %rax	# s, tmp720
	movzbl	(%rax), %eax	# *s_19, D.15044
	movsbl	%al, %eax	# D.15044, tmp721
	movl	%eax, -240(%rbp)	# tmp721, argcode
	.loc 3 349 0
	cmpl	$21, -240(%rbp)	#, argcode
	ja	.L158	#,
	movl	-240(%rbp), %eax	# argcode, tmp722
	movq	.L160(,%rax,8), %rax	#, tmp723
	jmp	*%rax	# tmp723
	.section	.rodata
	.align 8
	.align 4
.L160:
	.quad	.L158
	.quad	.L159
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.quad	.L163
	.quad	.L163
	.quad	.L164
	.quad	.L164
	.quad	.L165
	.quad	.L166
	.quad	.L167
	.quad	.L168
	.quad	.L169
	.quad	.L170
	.quad	.L171
	.quad	.L172
	.quad	.L173
	.quad	.L174
	.quad	.L175
	.quad	.L176
	.quad	.L177
	.text
.L159:
	.loc 3 352 0
	movq	24(%rbp), %rax	# self, tmp724
	movq	%rax, %rdi	# tmp724,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -184(%rbp)	# tmp725, arg
	.loc 3 353 0
	jmp	.L178	#
.L161:
	.loc 3 356 0
	cmpl	$0, 16(%rbp)	#, num_tokens
	jle	.L179	#,
.LBB18:
	.loc 3 357 0
	call	Perl_newAV	#
	movq	%rax, -96(%rbp)	# tmp726, av
	.loc 3 358 0
	movq	$PL_sv_undef, -176(%rbp)	#, prev_token
	.loc 3 360 0
	movq	-96(%rbp), %rax	# av, tmp727
	movl	16(%rbp), %esi	# num_tokens,
	movq	%rax, %rdi	# tmp727,
	call	Perl_av_extend	#
	.loc 3 361 0
	movl	$0, -256(%rbp)	#, i
	jmp	.L180	#
.L186:
	.loc 3 362 0
	movl	-256(%rbp), %eax	# i, tmp728
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp729
	addq	%rdx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _289->beg, D.15041
	testq	%rax, %rax	# D.15041
	je	.L181	#,
	.loc 3 363 0
	movl	-256(%rbp), %eax	# i, tmp730
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp731
	addq	%rdx, %rax	# D.15042, D.15054
	movq	8(%rax), %rax	# _293->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movl	-256(%rbp), %eax	# i, tmp732
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp733
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _298->beg, D.15041
	subq	%rax, %rdx	# D.15043, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movl	-256(%rbp), %eax	# i, tmp734
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp735
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _305->beg, D.15041
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# D.15041,
	call	Perl_newSVpvn	#
	movq	%rax, -176(%rbp)	# tmp736, prev_token
	.loc 3 364 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L182	#,
	.loc 3 365 0
	movq	-176(%rbp), %rax	# prev_token, tmp737
	movl	12(%rax), %eax	# prev_token_307->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-176(%rbp), %rax	# prev_token, tmp738
	movl	%edx, 12(%rax)	# D.15048, prev_token_307->sv_flags
.L182:
	.loc 3 366 0
	movq	-176(%rbp), %rdx	# prev_token, tmp739
	movq	-96(%rbp), %rax	# av, tmp740
	movq	%rdx, %rsi	# tmp739,
	movq	%rax, %rdi	# tmp740,
	call	Perl_av_push	#
	jmp	.L183	#
.L181:
	.loc 3 369 0
	movq	-280(%rbp), %rax	# p_state, tmp741
	movq	152(%rax), %rax	# p_state_69(D)->bool_attr_val, D.15047
	testq	%rax, %rax	# D.15047
	je	.L184	#,
	.loc 3 370 0
	movq	-280(%rbp), %rax	# p_state, tmp742
	movq	152(%rax), %rax	# p_state_69(D)->bool_attr_val, D.15047
	.loc 3 369 0
	movq	%rax, %rdi	# D.15047,
	call	Perl_newSVsv	#
	jmp	.L185	#
.L184:
	.loc 3 369 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# prev_token, tmp743
	movq	%rax, %rdi	# tmp743,
	call	Perl_newSVsv	#
.L185:
	.loc 3 369 0 discriminator 2
	movq	-96(%rbp), %rdx	# av, tmp744
	movq	%rax, %rsi	# iftmp.156,
	movq	%rdx, %rdi	# tmp744,
	call	Perl_av_push	#
.L183:
	.loc 3 361 0 is_stmt 1
	addl	$1, -256(%rbp)	#, i
.L180:
	.loc 3 361 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# i, tmp745
	cmpl	16(%rbp), %eax	# num_tokens, tmp745
	jl	.L186	#,
	.loc 3 374 0 is_stmt 1
	movq	-96(%rbp), %rax	# av, tmp746
	movq	%rax, %rdi	# tmp746,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp747, arg
.LBE18:
	.loc 3 376 0
	jmp	.L178	#
.L179:
	jmp	.L178	#
.L162:
	.loc 3 379 0
	cmpl	$0, 16(%rbp)	#, num_tokens
	jle	.L187	#,
	.loc 3 379 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# tokens, tmp748
	movq	(%rax), %rax	# tokens_122(D)->beg, D.15041
	cmpq	-296(%rbp), %rax	# beg, D.15041
	jb	.L187	#,
.LBB19:
	.loc 3 380 0 is_stmt 1
	call	Perl_newAV	#
	movq	%rax, -88(%rbp)	# tmp749, av
	.loc 3 382 0
	movl	16(%rbp), %eax	# num_tokens, tmp750
	leal	(%rax,%rax), %edx	#, D.15049
	movq	-88(%rbp), %rax	# av, tmp751
	movl	%edx, %esi	# D.15049,
	movq	%rax, %rdi	# tmp751,
	call	Perl_av_extend	#
	.loc 3 383 0
	movl	$0, -252(%rbp)	#, i
	jmp	.L188	#
.L195:
	.loc 3 384 0
	movl	-252(%rbp), %eax	# i, tmp752
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp753
	addq	%rdx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _323->beg, D.15041
	testq	%rax, %rax	# D.15041
	je	.L189	#,
	.loc 3 385 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L190	#,
	.loc 3 385 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# i, tmp754
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp755
	addq	%rdx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _327->beg, D.15041
	movq	-296(%rbp), %rdx	# beg, tmp756
	movq	%rdx, %rsi	# tmp756,
	movq	%rax, %rdi	# D.15041,
	call	Perl_utf8_distance	#
	jmp	.L191	#
.L190:
	.loc 3 385 0 discriminator 2
	movl	-252(%rbp), %eax	# i, tmp757
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp758
	addq	%rdx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _332->beg, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movq	-296(%rbp), %rax	# beg, beg.158
	subq	%rax, %rdx	# beg.158, iftmp.157
	movq	%rdx, %rax	# iftmp.157, iftmp.157
.L191:
	.loc 3 385 0 discriminator 3
	movq	%rax, %rdi	# iftmp.157,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15047
	movq	-88(%rbp), %rax	# av, tmp759
	movq	%rdx, %rsi	# D.15047,
	movq	%rax, %rdi	# tmp759,
	call	Perl_av_push	#
	.loc 3 386 0 is_stmt 1 discriminator 3
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L192	#,
	.loc 3 386 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# i, tmp760
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp761
	addq	%rdx, %rax	# D.15042, D.15054
	movq	(%rax), %rdx	# _340->beg, D.15041
	movl	-252(%rbp), %eax	# i, tmp762
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp763
	addq	%rcx, %rax	# D.15042, D.15054
	movq	8(%rax), %rax	# _344->end, D.15041
	movq	%rdx, %rsi	# D.15041,
	movq	%rax, %rdi	# D.15041,
	call	Perl_utf8_distance	#
	jmp	.L193	#
.L192:
	.loc 3 386 0 discriminator 2
	movl	-252(%rbp), %eax	# i, tmp764
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp765
	addq	%rdx, %rax	# D.15042, D.15054
	movq	8(%rax), %rax	# _349->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movl	-252(%rbp), %eax	# i, tmp766
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp767
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _354->beg, D.15041
	subq	%rax, %rdx	# D.15043, iftmp.159
	movq	%rdx, %rax	# iftmp.159, iftmp.159
.L193:
	.loc 3 386 0 discriminator 1
	movq	%rax, %rdi	# iftmp.159,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15047
	movq	-88(%rbp), %rax	# av, tmp768
	movq	%rdx, %rsi	# D.15047,
	movq	%rax, %rdi	# tmp768,
	call	Perl_av_push	#
	jmp	.L194	#
.L189:
	.loc 3 389 0 is_stmt 1
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15047
	movq	-88(%rbp), %rax	# av, tmp769
	movq	%rdx, %rsi	# D.15047,
	movq	%rax, %rdi	# tmp769,
	call	Perl_av_push	#
	.loc 3 390 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15047
	movq	-88(%rbp), %rax	# av, tmp770
	movq	%rdx, %rsi	# D.15047,
	movq	%rax, %rdi	# tmp770,
	call	Perl_av_push	#
.L194:
	.loc 3 383 0
	addl	$1, -252(%rbp)	#, i
.L188:
	.loc 3 383 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# i, tmp771
	cmpl	16(%rbp), %eax	# num_tokens, tmp771
	jl	.L195	#,
	.loc 3 393 0 is_stmt 1
	movq	-88(%rbp), %rax	# av, tmp772
	movq	%rax, %rdi	# tmp772,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp773, arg
.LBE19:
	.loc 3 395 0
	jmp	.L178	#
.L187:
	jmp	.L178	#
.L163:
	.loc 3 402 0
	cmpl	$0, 16(%rbp)	#, num_tokens
	jle	.L196	#,
	.loc 3 404 0
	movq	-312(%rbp), %rax	# tokens, tmp774
	movq	8(%rax), %rax	# tokens_122(D)->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movq	-312(%rbp), %rax	# tokens, tmp775
	movq	(%rax), %rax	# tokens_122(D)->beg, D.15041
	subq	%rax, %rdx	# D.15043, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	.loc 3 403 0
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp776
	movq	(%rax), %rax	# tokens_122(D)->beg, D.15041
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# D.15041,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp777, arg
	.loc 3 405 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L197	#,
	.loc 3 406 0
	movq	-184(%rbp), %rax	# arg, tmp778
	movl	12(%rax), %eax	# arg_372->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-184(%rbp), %rax	# arg, tmp779
	movl	%edx, 12(%rax)	# D.15048, arg_372->sv_flags
.L197:
	.loc 3 407 0
	movq	-280(%rbp), %rax	# p_state, tmp780
	movzbl	140(%rax), %eax	# p_state_69(D)->xml_mode, D.15044
	testb	%al, %al	# D.15044
	jne	.L198	#,
	.loc 3 407 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp781
	movzbl	143(%rax), %eax	# p_state_69(D)->case_sensitive, D.15044
	testb	%al, %al	# D.15044
	jne	.L198	#,
	cmpl	$4, -240(%rbp)	#, argcode
	je	.L198	#,
	.loc 3 408 0 is_stmt 1
	movq	-184(%rbp), %rax	# arg, tmp782
	movq	%rax, %rdi	# tmp782,
	call	sv_lower	#
.L198:
	.loc 3 409 0
	cmpl	$6, -240(%rbp)	#, argcode
	jne	.L196	#,
	.loc 3 409 0 is_stmt 0 discriminator 1
	cmpl	$2, -284(%rbp)	#, event
	je	.L196	#,
.LBB20:
	.loc 3 410 0 is_stmt 1
	movq	$.LC36, -80(%rbp)	#, e_type
	.loc 3 411 0
	movl	-284(%rbp), %edx	# event, D.15055
	movq	-80(%rbp), %rax	# e_type, tmp783
	addq	%rax, %rdx	# tmp783, D.15041
	movq	-184(%rbp), %rax	# arg, tmp784
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# D.15041,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp784,
	call	Perl_sv_insert	#
.LBE20:
	.loc 3 414 0
	jmp	.L178	#
.L196:
	jmp	.L178	#
.L164:
	.loc 3 418 0
	cmpl	$2, -284(%rbp)	#, event
	jne	.L199	#,
.LBB21:
	.loc 3 421 0
	cmpl	$7, -240(%rbp)	#, argcode
	jne	.L200	#,
	.loc 3 422 0
	call	Perl_newHV	#
	movq	%rax, -168(%rbp)	# tmp785, hv
	.loc 3 423 0
	movq	-168(%rbp), %rax	# hv, tmp786
	movq	%rax, %rdi	# tmp786,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp787, arg
	jmp	.L201	#
.L200:
	.loc 3 428 0
	movq	$0, -168(%rbp)	#, hv
	.loc 3 430 0
	movl	$0, -260(%rbp)	#, push_arg
.L201:
	.loc 3 433 0
	movl	$1, -248(%rbp)	#, i
	jmp	.L202	#
.L220:
.LBB22:
	.loc 3 435 0
	movl	-248(%rbp), %eax	# i, tmp788
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp789
	addq	%rdx, %rax	# D.15042, D.15054
	movq	8(%rax), %rax	# _388->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movl	-248(%rbp), %eax	# i, tmp790
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp791
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _393->beg, D.15041
	subq	%rax, %rdx	# D.15043, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	.loc 3 434 0
	movq	%rax, %rdx	# D.15043, D.15042
	movl	-248(%rbp), %eax	# i, tmp792
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp793
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _400->beg, D.15041
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# D.15041,
	call	Perl_newSVpvn	#
	movq	%rax, -72(%rbp)	# tmp794, attrname
	.loc 3 438 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L203	#,
	.loc 3 439 0
	movq	-72(%rbp), %rax	# attrname, tmp795
	movl	12(%rax), %eax	# attrname_402->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-72(%rbp), %rax	# attrname, tmp796
	movl	%edx, 12(%rax)	# D.15048, attrname_402->sv_flags
.L203:
	.loc 3 440 0
	movl	-248(%rbp), %eax	# i, tmp797
	cltq
	addq	$1, %rax	#, D.15055
	salq	$4, %rax	#, D.15055
	movq	%rax, %rdx	# D.15055, D.15055
	movq	-312(%rbp), %rax	# tokens, tmp798
	addq	%rdx, %rax	# D.15055, D.15054
	movq	(%rax), %rax	# _408->beg, D.15041
	testq	%rax, %rax	# D.15041
	je	.L204	#,
.LBB23:
	.loc 3 441 0
	movl	-248(%rbp), %eax	# i, tmp799
	cltq
	addq	$1, %rax	#, D.15055
	salq	$4, %rax	#, D.15055
	movq	%rax, %rdx	# D.15055, D.15055
	movq	-312(%rbp), %rax	# tokens, tmp800
	addq	%rdx, %rax	# D.15055, D.15054
	movq	(%rax), %rax	# _413->beg, tmp801
	movq	%rax, -152(%rbp)	# tmp801, beg
	.loc 3 442 0
	movl	-248(%rbp), %eax	# i, tmp802
	cltq
	addq	$1, %rax	#, D.15055
	salq	$4, %rax	#, D.15055
	movq	%rax, %rdx	# D.15055, D.15055
	movq	-312(%rbp), %rax	# tokens, tmp803
	addq	%rdx, %rax	# D.15055, D.15054
	movq	8(%rax), %rax	# _418->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movq	-152(%rbp), %rax	# beg, beg.160
	subq	%rax, %rdx	# beg.160, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, -144(%rbp)	# D.15043, len
	.loc 3 443 0
	movq	-152(%rbp), %rax	# beg, tmp804
	movzbl	(%rax), %eax	# *beg_414, D.15044
	cmpb	$34, %al	#, D.15044
	je	.L205	#,
	.loc 3 443 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# beg, tmp805
	movzbl	(%rax), %eax	# *beg_414, D.15044
	cmpb	$39, %al	#, D.15044
	jne	.L206	#,
.L205:
	.loc 3 445 0 is_stmt 1
	addq	$1, -152(%rbp)	#, beg
	subq	$2, -144(%rbp)	#, len
.L206:
	.loc 3 447 0
	movq	-144(%rbp), %rdx	# len, tmp806
	movq	-152(%rbp), %rax	# beg, tmp807
	movq	%rdx, %rsi	# tmp806,
	movq	%rax, %rdi	# tmp807,
	call	Perl_newSVpvn	#
	movq	%rax, -160(%rbp)	# tmp808, attrval
	.loc 3 448 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L207	#,
	.loc 3 449 0
	movq	-160(%rbp), %rax	# attrval, tmp809
	movl	12(%rax), %eax	# attrval_428->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-160(%rbp), %rax	# attrval, tmp810
	movl	%edx, 12(%rax)	# D.15048, attrval_428->sv_flags
.L207:
	.loc 3 450 0
	movq	-280(%rbp), %rax	# p_state, tmp811
	movzbl	142(%rax), %eax	# p_state_69(D)->attr_encoded, D.15044
	testb	%al, %al	# D.15044
	jne	.L208	#,
	.loc 3 452 0
	movq	-280(%rbp), %rax	# p_state, tmp812
	movzbl	145(%rax), %eax	# p_state_69(D)->utf8_mode, D.15044
	testb	%al, %al	# D.15044
	je	.L209	#,
	.loc 3 453 0
	movq	-160(%rbp), %rax	# attrval, tmp813
	movq	%rax, %rdi	# tmp813,
	call	Perl_sv_utf8_decode	#
.L209:
	.loc 3 455 0
	movq	-280(%rbp), %rax	# p_state, tmp814
	movq	352(%rax), %rcx	# p_state_69(D)->entity2char, D.15046
	movq	-160(%rbp), %rax	# attrval, tmp815
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15046,
	movq	%rax, %rdi	# tmp815,
	call	decode_entities	#
	.loc 3 456 0
	movq	-280(%rbp), %rax	# p_state, tmp816
	movzbl	145(%rax), %eax	# p_state_69(D)->utf8_mode, D.15044
	testb	%al, %al	# D.15044
	je	.L208	#,
	.loc 3 457 0
	movq	-160(%rbp), %rax	# attrval, tmp817
	movl	12(%rax), %eax	# attrval_428->sv_flags, D.15048
	andl	$-536870913, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-160(%rbp), %rax	# attrval, tmp818
	movl	%edx, 12(%rax)	# D.15048, attrval_428->sv_flags
.LBE23:
	jmp	.L210	#
.L208:
	jmp	.L210	#
.L204:
	.loc 3 461 0
	movq	-280(%rbp), %rax	# p_state, tmp819
	movq	152(%rax), %rax	# p_state_69(D)->bool_attr_val, D.15047
	testq	%rax, %rax	# D.15047
	je	.L211	#,
	.loc 3 462 0
	movq	-280(%rbp), %rax	# p_state, tmp820
	movq	152(%rax), %rax	# p_state_69(D)->bool_attr_val, D.15047
	movq	%rax, %rdi	# D.15047,
	call	Perl_newSVsv	#
	movq	%rax, -160(%rbp)	# tmp821, attrval
	jmp	.L210	#
.L211:
	.loc 3 464 0
	movq	-72(%rbp), %rax	# attrname, tmp822
	movq	%rax, %rdi	# tmp822,
	call	Perl_newSVsv	#
	movq	%rax, -160(%rbp)	# tmp823, attrval
.L210:
	.loc 3 467 0
	movq	-280(%rbp), %rax	# p_state, tmp824
	movzbl	140(%rax), %eax	# p_state_69(D)->xml_mode, D.15044
	testb	%al, %al	# D.15044
	jne	.L212	#,
	.loc 3 467 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp825
	movzbl	143(%rax), %eax	# p_state_69(D)->case_sensitive, D.15044
	testb	%al, %al	# D.15044
	jne	.L212	#,
	.loc 3 468 0 is_stmt 1
	movq	-72(%rbp), %rax	# attrname, tmp826
	movq	%rax, %rdi	# tmp826,
	call	sv_lower	#
.L212:
	.loc 3 470 0
	cmpl	$7, -240(%rbp)	#, argcode
	jne	.L213	#,
	.loc 3 471 0
	movq	-72(%rbp), %rcx	# attrname, tmp827
	movq	-168(%rbp), %rax	# hv, tmp828
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp827,
	movq	%rax, %rdi	# tmp828,
	call	Perl_hv_exists_ent	#
	testb	%al, %al	# D.15044
	jne	.L214	#,
	.loc 3 472 0 discriminator 1
	movq	-160(%rbp), %rdx	# attrval, tmp829
	movq	-72(%rbp), %rsi	# attrname, tmp830
	movq	-168(%rbp), %rax	# hv, tmp831
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp831,
	call	Perl_hv_store_ent	#
	.loc 3 471 0 discriminator 1
	testq	%rax, %rax	# D.15050
	jne	.L215	#,
.L214:
	.loc 3 473 0
	movq	-160(%rbp), %rax	# attrval, tmp832
	movq	%rax, %rdi	# tmp832,
	call	Perl_sv_free	#
.L215:
	.loc 3 475 0
	movq	-72(%rbp), %rax	# attrname, tmp833
	movq	%rax, %rdi	# tmp833,
	call	Perl_sv_free	#
	jmp	.L216	#
.L213:
	.loc 3 478 0
	cmpq	$0, -224(%rbp)	#, array
	je	.L217	#,
	.loc 3 479 0
	movq	-72(%rbp), %rdx	# attrname, tmp834
	movq	-224(%rbp), %rax	# array, tmp835
	movq	%rdx, %rsi	# tmp834,
	movq	%rax, %rdi	# tmp835,
	call	Perl_av_push	#
	.loc 3 480 0
	movq	-160(%rbp), %rdx	# attrval, tmp836
	movq	-224(%rbp), %rax	# array, tmp837
	movq	%rdx, %rsi	# tmp836,
	movq	%rax, %rdi	# tmp837,
	call	Perl_av_push	#
	jmp	.L216	#
.L217:
.LBB24:
	.loc 3 483 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.161
	movq	%rax, %rdx	# PL_stack_max.161, PL_stack_max.162
	movq	%rbx, %rax	# sp, sp.163
	subq	%rax, %rdx	# sp.163, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	cmpq	$7, %rax	#, D.15043
	jg	.L218	#,
	.loc 3 483 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L218:
	.loc 3 483 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-72(%rbp), %rax	# attrname, tmp838
	movq	%rax, %rdi	# tmp838,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.15047, *sp_450
.LBE24:
.LBB25:
	.loc 3 484 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.164
	movq	%rax, %rdx	# PL_stack_max.164, PL_stack_max.165
	movq	%rbx, %rax	# sp, sp.166
	subq	%rax, %rdx	# sp.166, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	cmpq	$7, %rax	#, D.15043
	jg	.L219	#,
	.loc 3 484 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L219:
	.loc 3 484 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-160(%rbp), %rax	# attrval, tmp839
	movq	%rax, %rdi	# tmp839,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.15047, *sp_458
.L216:
.LBE25:
.LBE22:
	.loc 3 433 0 is_stmt 1
	addl	$2, -248(%rbp)	#, i
.L202:
	.loc 3 433 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %eax	# i, tmp840
	cmpl	16(%rbp), %eax	# num_tokens, tmp840
	jl	.L220	#,
.LBE21:
	jmp	.L221	#
.L199:
	.loc 3 489 0 is_stmt 1
	cmpl	$8, -240(%rbp)	#, argcode
	jne	.L221	#,
	.loc 3 490 0
	movl	$0, -260(%rbp)	#, push_arg
	.loc 3 492 0
	jmp	.L178	#
.L221:
	jmp	.L178	#
.L165:
	.loc 3 495 0
	cmpl	$2, -284(%rbp)	#, event
	jne	.L222	#,
.LBB26:
	.loc 3 496 0
	call	Perl_newAV	#
	movq	%rax, -64(%rbp)	# tmp841, av
	.loc 3 498 0
	movl	$1, -244(%rbp)	#, i
	jmp	.L223	#
.L226:
.LBB27:
	.loc 3 500 0
	movl	-244(%rbp), %eax	# i, tmp842
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rdx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp843
	addq	%rdx, %rax	# D.15042, D.15054
	movq	8(%rax), %rax	# _467->end, D.15041
	movq	%rax, %rdx	# D.15041, D.15043
	movl	-244(%rbp), %eax	# i, tmp844
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp845
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _472->beg, D.15041
	subq	%rax, %rdx	# D.15043, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	.loc 3 499 0
	movq	%rax, %rdx	# D.15043, D.15042
	movl	-244(%rbp), %eax	# i, tmp846
	cltq
	salq	$4, %rax	#, D.15042
	movq	%rax, %rcx	# D.15042, D.15042
	movq	-312(%rbp), %rax	# tokens, tmp847
	addq	%rcx, %rax	# D.15042, D.15054
	movq	(%rax), %rax	# _479->beg, D.15041
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# D.15041,
	call	Perl_newSVpvn	#
	movq	%rax, -56(%rbp)	# tmp848, attrname
	.loc 3 501 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L224	#,
	.loc 3 502 0
	movq	-56(%rbp), %rax	# attrname, tmp849
	movl	12(%rax), %eax	# attrname_481->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-56(%rbp), %rax	# attrname, tmp850
	movl	%edx, 12(%rax)	# D.15048, attrname_481->sv_flags
.L224:
	.loc 3 503 0
	movq	-280(%rbp), %rax	# p_state, tmp851
	movzbl	140(%rax), %eax	# p_state_69(D)->xml_mode, D.15044
	testb	%al, %al	# D.15044
	jne	.L225	#,
	.loc 3 503 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp852
	movzbl	143(%rax), %eax	# p_state_69(D)->case_sensitive, D.15044
	testb	%al, %al	# D.15044
	jne	.L225	#,
	.loc 3 504 0 is_stmt 1
	movq	-56(%rbp), %rax	# attrname, tmp853
	movq	%rax, %rdi	# tmp853,
	call	sv_lower	#
.L225:
	.loc 3 505 0
	movq	-56(%rbp), %rdx	# attrname, tmp854
	movq	-64(%rbp), %rax	# av, tmp855
	movq	%rdx, %rsi	# tmp854,
	movq	%rax, %rdi	# tmp855,
	call	Perl_av_push	#
.LBE27:
	.loc 3 498 0
	addl	$2, -244(%rbp)	#, i
.L223:
	.loc 3 498 0 is_stmt 0 discriminator 1
	movl	-244(%rbp), %eax	# i, tmp856
	cmpl	16(%rbp), %eax	# num_tokens, tmp856
	jl	.L226	#,
	.loc 3 507 0 is_stmt 1
	movq	-64(%rbp), %rax	# av, tmp857
	movq	%rax, %rdi	# tmp857,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp858, arg
.LBE26:
	.loc 3 509 0
	jmp	.L178	#
.L222:
	jmp	.L178	#
.L166:
	.loc 3 512 0
	movq	-304(%rbp), %rdx	# end, end.167
	movq	-296(%rbp), %rax	# beg, beg.168
	subq	%rax, %rdx	# beg.168, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-296(%rbp), %rax	# beg, tmp859
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# tmp859,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp860, arg
	.loc 3 513 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L227	#,
	.loc 3 514 0
	movq	-184(%rbp), %rax	# arg, tmp861
	movl	12(%rax), %eax	# arg_494->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-184(%rbp), %rax	# arg, tmp862
	movl	%edx, 12(%rax)	# D.15048, arg_494->sv_flags
	.loc 3 515 0
	jmp	.L178	#
.L227:
	jmp	.L178	#
.L167:
	.loc 3 518 0
	cmpl	$4, -284(%rbp)	#, event
	jne	.L228	#,
	.loc 3 519 0
	movq	-304(%rbp), %rdx	# end, end.169
	movq	-296(%rbp), %rax	# beg, beg.170
	subq	%rax, %rdx	# beg.170, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-296(%rbp), %rax	# beg, tmp863
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# tmp863,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp864, arg
	.loc 3 520 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L229	#,
	.loc 3 521 0
	movq	-184(%rbp), %rax	# arg, tmp865
	movl	12(%rax), %eax	# arg_502->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-184(%rbp), %rax	# arg, tmp866
	movl	%edx, 12(%rax)	# D.15048, arg_502->sv_flags
.L229:
	.loc 3 522 0
	movq	-280(%rbp), %rax	# p_state, tmp867
	movzbl	56(%rax), %eax	# p_state_69(D)->is_cdata, D.15044
	testb	%al, %al	# D.15044
	jne	.L228	#,
	.loc 3 524 0
	movq	-280(%rbp), %rax	# p_state, tmp868
	movzbl	145(%rax), %eax	# p_state_69(D)->utf8_mode, D.15044
	testb	%al, %al	# D.15044
	je	.L230	#,
	.loc 3 525 0
	movq	-184(%rbp), %rax	# arg, tmp869
	movq	%rax, %rdi	# tmp869,
	call	Perl_sv_utf8_decode	#
.L230:
	.loc 3 527 0
	movq	-280(%rbp), %rax	# p_state, tmp870
	movq	352(%rax), %rcx	# p_state_69(D)->entity2char, D.15046
	movq	-184(%rbp), %rax	# arg, tmp871
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.15046,
	movq	%rax, %rdi	# tmp871,
	call	decode_entities	#
	.loc 3 528 0
	movq	-280(%rbp), %rax	# p_state, tmp872
	movzbl	145(%rax), %eax	# p_state_69(D)->utf8_mode, D.15044
	testb	%al, %al	# D.15044
	je	.L228	#,
	.loc 3 529 0
	movq	-184(%rbp), %rax	# arg, tmp873
	movl	12(%rax), %eax	# arg_502->sv_flags, D.15048
	andl	$-536870913, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-184(%rbp), %rax	# arg, tmp874
	movl	%edx, 12(%rax)	# D.15048, arg_502->sv_flags
	.loc 3 532 0
	jmp	.L178	#
.L228:
	jmp	.L178	#
.L168:
	.loc 3 535 0
	cmpl	$4, -284(%rbp)	#, event
	jne	.L231	#,
	.loc 3 536 0
	movq	-280(%rbp), %rax	# p_state, tmp875
	movzbl	56(%rax), %eax	# p_state_69(D)->is_cdata, D.15044
	testb	%al, %al	# D.15044
	je	.L232	#,
	.loc 3 536 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.171
	jmp	.L233	#
.L232:
	.loc 3 536 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.171
.L233:
	.loc 3 536 0 discriminator 3
	movq	%rax, -184(%rbp)	# iftmp.171, arg
	.loc 3 538 0 is_stmt 1 discriminator 3
	jmp	.L178	#
.L231:
	.loc 3 538 0 is_stmt 0
	jmp	.L178	#
.L169:
	.loc 3 541 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp876
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp877, arg
	.loc 3 542 0
	movl	$0, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_newSVpvn	#
	movq	-280(%rbp), %rdx	# p_state, tmp878
	movq	%rax, 112(%rdx)	# D.15047, p_state_69(D)->skipped_text
	.loc 3 543 0
	jmp	.L178	#
.L170:
	.loc 3 546 0
	movq	-136(%rbp), %rax	# offset, offset.172
	movq	%rax, %rdi	# offset.172,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp879, arg
	.loc 3 547 0
	jmp	.L178	#
.L171:
	.loc 3 550 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L234	#,
	.loc 3 550 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rdx	# beg, tmp880
	movq	-304(%rbp), %rax	# end, tmp881
	movq	%rdx, %rsi	# tmp880,
	movq	%rax, %rdi	# tmp881,
	call	Perl_utf8_distance	#
	jmp	.L235	#
.L234:
	.loc 3 550 0 discriminator 2
	movq	-304(%rbp), %rdx	# end, end.174
	movq	-296(%rbp), %rax	# beg, beg.175
	subq	%rax, %rdx	# beg.175, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
.L235:
	.loc 3 550 0 discriminator 3
	movq	-136(%rbp), %rdx	# offset, tmp882
	addq	%rdx, %rax	# tmp882, D.15042
	movq	%rax, %rdi	# D.15043,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp883, arg
	.loc 3 551 0 is_stmt 1 discriminator 3
	jmp	.L178	#
.L172:
	.loc 3 554 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L236	#,
	.loc 3 554 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rdx	# beg, tmp884
	movq	-304(%rbp), %rax	# end, tmp885
	movq	%rdx, %rsi	# tmp884,
	movq	%rax, %rdi	# tmp885,
	call	Perl_utf8_distance	#
	jmp	.L237	#
.L236:
	.loc 3 554 0 discriminator 2
	movq	-304(%rbp), %rdx	# end, end.177
	movq	-296(%rbp), %rax	# beg, beg.178
	subq	%rax, %rdx	# beg.178, iftmp.176
	movq	%rdx, %rax	# iftmp.176, iftmp.176
.L237:
	.loc 3 554 0 discriminator 3
	movq	%rax, %rdi	# iftmp.176,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp886, arg
	.loc 3 555 0 is_stmt 1 discriminator 3
	jmp	.L178	#
.L173:
	.loc 3 558 0
	movq	-128(%rbp), %rax	# line, line.179
	movq	%rax, %rdi	# line.179,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp887, arg
	.loc 3 559 0
	jmp	.L178	#
.L174:
	.loc 3 562 0
	movq	-120(%rbp), %rax	# column, column.180
	movq	%rax, %rdi	# column.180,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp888, arg
	.loc 3 563 0
	jmp	.L178	#
.L175:
	.loc 3 567 0
	movl	-284(%rbp), %eax	# event, tmp889
	movq	event_id_str(,%rax,8), %rax	# event_id_str, D.15041
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15041,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp890, arg
	.loc 3 568 0
	jmp	.L178	#
.L177:
.LBB28:
	.loc 3 572 0
	movq	-208(%rbp), %rax	# s, tmp891
	addq	$1, %rax	#, D.15041
	movzbl	(%rax), %eax	# *_546, D.15044
	movzbl	%al, %eax	# D.15056, tmp892
	movl	%eax, -236(%rbp)	# tmp892, len
	.loc 3 573 0
	movl	-236(%rbp), %eax	# len, tmp893
	cltq
	movq	-208(%rbp), %rdx	# s, tmp894
	addq	$2, %rdx	#, D.15057
	movq	%rax, %rsi	# D.15042,
	movq	%rdx, %rdi	# D.15057,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp895, arg
	.loc 3 574 0
	movq	-232(%rbp), %rax	# h, tmp896
	movq	8(%rax), %rax	# h_1->argspec, D.15047
	movl	12(%rax), %eax	# _554->sv_flags, D.15048
	andl	$536870912, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L238	#,
	.loc 3 575 0
	movq	-184(%rbp), %rax	# arg, tmp897
	movl	12(%rax), %eax	# arg_553->sv_flags, D.15048
	orl	$536870912, %eax	#, D.15048
	movl	%eax, %edx	# D.15048, D.15048
	movq	-184(%rbp), %rax	# arg, tmp898
	movl	%edx, 12(%rax)	# D.15048, arg_553->sv_flags
.L238:
	.loc 3 576 0
	movl	-236(%rbp), %eax	# len, tmp899
	cltq
	addq	$1, %rax	#, D.15055
	addq	%rax, -208(%rbp)	# D.15055, s
.LBE28:
	.loc 3 578 0
	jmp	.L178	#
.L176:
	.loc 3 581 0
	movl	$PL_sv_undef, %edi	#,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -184(%rbp)	# tmp900, arg
	.loc 3 582 0
	jmp	.L178	#
.L158:
	.loc 3 585 0
	movq	-208(%rbp), %rax	# s, tmp901
	movzbl	(%rax), %eax	# *s_19, D.15044
	movsbl	%al, %eax	# D.15044, D.15049
	movl	%eax, %esi	# D.15049,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_newSVpvf	#
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2mortal	#
	movq	%rax, -184(%rbp)	# tmp902, arg
	.loc 3 586 0
	nop
.L178:
	.loc 3 589 0
	cmpl	$0, -260(%rbp)	#, push_arg
	je	.L239	#,
	.loc 3 590 0
	cmpq	$0, -184(%rbp)	#, arg
	jne	.L240	#,
	.loc 3 591 0
	movl	$PL_sv_undef, %edi	#,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -184(%rbp)	# tmp903, arg
.L240:
	.loc 3 593 0
	cmpq	$0, -224(%rbp)	#, array
	je	.L241	#,
	.loc 3 597 0
	movq	-184(%rbp), %rax	# arg, tmp904
	movq	%rax, PL_Sv(%rip)	# tmp904, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.182
	testq	%rax, %rax	# PL_Sv.182
	je	.L243	#,
	.loc 3 597 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.183
	movl	8(%rax), %edx	# PL_Sv.183_569->sv_refcnt, D.15048
	addl	$1, %edx	#, D.15048
	movl	%edx, 8(%rax)	# D.15048, PL_Sv.183_569->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.183_569->sv_refcnt, D.15048
	testl	%eax, %eax	# D.15048
	je	.L243	#,
	.loc 3 597 0
	nop
.L243:
	.loc 3 597 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.184
	movq	-224(%rbp), %rax	# array, tmp905
	movq	%rdx, %rsi	# PL_Sv.184,
	movq	%rax, %rdi	# tmp905,
	call	Perl_av_push	#
	jmp	.L239	#
.L241:
.LBB29:
	.loc 3 600 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.185
	movq	%rax, %rdx	# PL_stack_max.185, PL_stack_max.186
	movq	%rbx, %rax	# sp, sp.187
	subq	%rax, %rdx	# sp.187, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	cmpq	$7, %rax	#, D.15043
	jg	.L244	#,
	.loc 3 600 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L244:
	.loc 3 600 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-184(%rbp), %rax	# arg, tmp906
	movq	%rax, (%rbx)	# tmp906, *sp_581
.L239:
.LBE29:
.LBE17:
	.loc 3 344 0 is_stmt 1
	addq	$1, -208(%rbp)	#, s
.L157:
	.loc 3 344 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# s, tmp907
	movzbl	(%rax), %eax	# *s_19, D.15044
	testb	%al, %al	# D.15044
	jne	.L245	#,
	.loc 3 605 0 is_stmt 1
	cmpq	$0, -224(%rbp)	#, array
	je	.L246	#,
	.loc 3 606 0
	movq	-232(%rbp), %rax	# h, tmp908
	movq	(%rax), %rax	# h_1->cb, D.15047
	cmpq	-224(%rbp), %rax	# array, D.15047
	je	.L248	#,
	.loc 3 607 0
	movq	-224(%rbp), %rax	# array, tmp909
	movq	%rax, %rdi	# tmp909,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdx	#, D.15047
	movq	-232(%rbp), %rax	# h, tmp910
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	%rdx, %rsi	# D.15047,
	movq	%rax, %rdi	# D.15047,
	call	Perl_av_push	#
	jmp	.L248	#
.L246:
	.loc 3 610 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 3 612 0
	movq	-216(%rbp), %rax	# argspec, tmp911
	movzbl	(%rax), %eax	# *argspec_17, D.15044
	cmpb	$1, %al	#, D.15044
	jne	.L249	#,
	.loc 3 612 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# h, tmp912
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _588->sv_flags, D.15048
	andl	$524288, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	jne	.L249	#,
.LBB30:
	.loc 3 613 0 is_stmt 1
	movq	-232(%rbp), %rax	# h, tmp913
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	12(%rax), %eax	# _591->sv_flags, D.15048
	andl	$262144, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L250	#,
	.loc 3 613 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# h, tmp914
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	(%rax), %rax	# _594->sv_any, D.15051
	movq	8(%rax), %rax	# MEM[(struct XPV *)_595].xpv_cur, my_na.189
	movq	%rax, -32(%rbp)	# my_na.189, my_na
	movq	-232(%rbp), %rax	# h, tmp915
	movq	(%rax), %rax	# h_1->cb, D.15047
	movq	(%rax), %rax	# _597->sv_any, D.15051
	movq	(%rax), %rax	# MEM[(struct XPV *)_598].xpv_pv, iftmp.188
	jmp	.L251	#
.L250:
	.loc 3 613 0 discriminator 2
	movq	-232(%rbp), %rax	# h, tmp916
	movq	(%rax), %rax	# h_1->cb, D.15047
	leaq	-32(%rbp), %rcx	#, tmp917
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp917,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2pv_flags	#
.L251:
	.loc 3 613 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.188, method
	.loc 3 614 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# method, tmp918
	movl	$134, %esi	#,
	movq	%rax, %rdi	# tmp918,
	call	Perl_call_method	#
.LBE30:
	.loc 3 612 0 discriminator 3
	jmp	.L252	#
.L249:
	.loc 3 617 0
	movq	-232(%rbp), %rax	# h, tmp919
	movq	(%rax), %rax	# h_1->cb, D.15047
	movl	$134, %esi	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_call_sv	#
.L252:
	.loc 3 620 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.191
	movq	(%rax), %rax	# PL_errgv.191_604->sv_any, D.15058
	movq	56(%rax), %rax	# _605->xgv_gp, D.15059
	movq	(%rax), %rax	# _606->gp_sv, D.15047
	testq	%rax, %rax	# D.15047
	je	.L253	#,
	.loc 3 620 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.193
	movq	(%rax), %rax	# PL_errgv.193_608->sv_any, D.15058
	movq	56(%rax), %rax	# _609->xgv_gp, D.15059
	movq	(%rax), %rax	# _610->gp_sv, D.15047
	movl	12(%rax), %eax	# _611->sv_flags, D.15048
	andl	$262144, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L254	#,
	.loc 3 620 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.195
	movq	(%rax), %rax	# PL_errgv.195_614->sv_any, D.15058
	movq	56(%rax), %rax	# _615->xgv_gp, D.15059
	movq	(%rax), %rax	# _616->gp_sv, D.15047
	movq	(%rax), %rax	# _617->sv_any, PL_Xpv.196
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.196, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.197
	testq	%rax, %rax	# PL_Xpv.197
	je	.L255	#,
	.loc 3 620 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.198
	movq	8(%rax), %rax	# PL_Xpv.198_620->xpv_cur, D.15042
	cmpq	$1, %rax	#, D.15042
	ja	.L256	#,
	.loc 3 620 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.199
	movq	8(%rax), %rax	# PL_Xpv.199_622->xpv_cur, D.15042
	testq	%rax, %rax	# D.15042
	je	.L255	#,
	.loc 3 620 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.200
	movq	(%rax), %rax	# PL_Xpv.200_624->xpv_pv, D.15041
	movzbl	(%rax), %eax	# *_625, D.15044
	cmpb	$48, %al	#, D.15044
	je	.L255	#,
.L256:
	.loc 3 620 0 discriminator 7
	movl	$1, %eax	#, iftmp.194
	jmp	.L257	#
.L255:
	.loc 3 620 0 discriminator 6
	movl	$0, %eax	#, iftmp.194
.L257:
	.loc 3 620 0 discriminator 9
	andl	$1, %eax	#, iftmp.192
	jmp	.L263	#
.L254:
	.loc 3 620 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.202
	movq	(%rax), %rax	# PL_errgv.202_630->sv_any, D.15058
	movq	56(%rax), %rax	# _631->xgv_gp, D.15059
	movq	(%rax), %rax	# _632->gp_sv, D.15047
	movl	12(%rax), %eax	# _633->sv_flags, D.15048
	andl	$65536, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L259	#,
	.loc 3 620 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.203
	movq	(%rax), %rax	# PL_errgv.203_636->sv_any, D.15058
	movq	56(%rax), %rax	# _637->xgv_gp, D.15059
	movq	(%rax), %rax	# _638->gp_sv, D.15047
	movq	(%rax), %rax	# _639->sv_any, D.15051
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_640].xiv_iv, D.15043
	testq	%rax, %rax	# D.15043
	setne	%al	#, iftmp.201
	jmp	.L263	#
.L259:
	.loc 3 620 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.205
	movq	(%rax), %rax	# PL_errgv.205_643->sv_any, D.15058
	movq	56(%rax), %rax	# _644->xgv_gp, D.15059
	movq	(%rax), %rax	# _645->gp_sv, D.15047
	movl	12(%rax), %eax	# _646->sv_flags, D.15048
	andl	$131072, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L261	#,
	.loc 3 620 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.206
	movq	(%rax), %rax	# PL_errgv.206_649->sv_any, D.15058
	movq	56(%rax), %rax	# _650->xgv_gp, D.15059
	movq	(%rax), %rax	# _651->gp_sv, D.15047
	movq	(%rax), %rax	# _652->sv_any, D.15051
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_653].xnv_nv, D.15052
	xorpd	%xmm1, %xmm1	# tmp921
	ucomisd	%xmm1, %xmm0	# tmp921, D.15052
	setp	%dl	#, tmp920
	movl	$1, %eax	#, tmp923
	xorpd	%xmm1, %xmm1	# tmp922
	ucomisd	%xmm1, %xmm0	# tmp922, D.15052
	cmove	%edx, %eax	# tmp920,, iftmp.204
	jmp	.L263	#
.L261:
	.loc 3 620 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.207
	movq	(%rax), %rax	# PL_errgv.207_656->sv_any, D.15058
	movq	56(%rax), %rax	# _657->xgv_gp, D.15059
	movq	(%rax), %rax	# _658->gp_sv, D.15047
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.15044
	setne	%al	#, iftmp.204
	jmp	.L263	#
.L253:
	.loc 3 620 0 discriminator 2
	movl	$0, %eax	#, iftmp.190
.L263:
	.loc 3 620 0 discriminator 16
	testb	%al, %al	# iftmp.190
	je	.L264	#,
	.loc 3 621 0 is_stmt 1
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L264:
	.loc 3 624 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.208
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.209
	cmpl	%eax, %edx	# PL_tmps_floor.209, PL_tmps_ix.208
	jle	.L265	#,
	.loc 3 624 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L265:
	.loc 3 625 0 is_stmt 1
	call	Perl_pop_scope	#
.L248:
	.loc 3 627 0
	movq	-280(%rbp), %rax	# p_state, tmp924
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	testq	%rax, %rax	# D.15047
	je	.L266	#,
	.loc 3 628 0
	movq	-280(%rbp), %rax	# p_state, tmp925
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movq	(%rax), %rax	# _669->sv_any, D.15051
	movq	$0, 8(%rax)	#, MEM[(struct XPV *)_670].xpv_cur
	.loc 3 629 0
	jmp	.L95	#
.L266:
	jmp	.L95	#
.L109:
	.loc 3 632 0
	movq	-280(%rbp), %rax	# p_state, tmp926
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	testq	%rax, %rax	# D.15047
	je	.L267	#,
	.loc 3 633 0
	cmpl	$4, -284(%rbp)	#, event
	je	.L268	#,
	.loc 3 633 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp927
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	testq	%rax, %rax	# D.15047
	je	.L268	#,
	movq	-280(%rbp), %rax	# p_state, tmp928
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movl	12(%rax), %eax	# _673->sv_flags, D.15048
	andl	$118423552, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	je	.L268	#,
	.loc 3 634 0 is_stmt 1
	movq	24(%rbp), %rdx	# self, tmp929
	movq	-280(%rbp), %rax	# p_state, tmp930
	movq	%rdx, %rsi	# tmp929,
	movq	%rax, %rdi	# tmp930,
	call	flush_pending_text	#
.L268:
	.loc 3 636 0
	cmpl	$0, -288(%rbp)	#, utf8
	je	.L269	#,
	.loc 3 636 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp931
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movl	12(%rax), %eax	# _676->sv_flags, D.15048
	andl	$536870912, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	jne	.L269	#,
	.loc 3 637 0 is_stmt 1
	movq	-280(%rbp), %rax	# p_state, tmp932
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_utf8_upgrade_flags	#
.L269:
	.loc 3 638 0
	cmpl	$0, -288(%rbp)	#, utf8
	jne	.L270	#,
	.loc 3 638 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p_state, tmp933
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movl	12(%rax), %eax	# _680->sv_flags, D.15048
	andl	$536870912, %eax	#, D.15048
	testl	%eax, %eax	# D.15048
	jne	.L271	#,
.L270:
	.loc 3 640 0 is_stmt 1
	movq	-304(%rbp), %rdx	# end, end.210
	movq	-296(%rbp), %rax	# beg, beg.211
	subq	%rax, %rdx	# beg.211, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-280(%rbp), %rax	# p_state, tmp934
	movq	112(%rax), %rax	# p_state_69(D)->skipped_text, D.15047
	movq	-296(%rbp), %rsi	# beg, tmp935
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_catpvn_flags	#
	jmp	.L267	#
.L271:
.LBB31:
	.loc 3 644 0
	movq	-304(%rbp), %rdx	# end, end.212
	movq	-296(%rbp), %rax	# beg, beg.213
	subq	%rax, %rdx	# beg.213, D.15043
	movq	%rdx, %rax	# D.15043, D.15043
	movq	%rax, %rdx	# D.15043, D.15042
	movq	-296(%rbp), %rax	# beg, tmp936
	movq	%rdx, %rsi	# D.15042,
	movq	%rax, %rdi	# tmp936,
	call	Perl_newSVpvn	#
	movq	%rax, -40(%rbp)	# tmp937, tmp
	.loc 3 645 0
	movq	-40(%rbp), %rax	# tmp, tmp938
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp938,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 3 646 0
	movq	-280(%rbp), %rax	# p_state, tmp939
	movq	72(%rax), %rax	# p_state_69(D)->pend_text, D.15047
	movq	-40(%rbp), %rcx	# tmp, tmp940
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp940,
	movq	%rax, %rdi	# D.15047,
	call	Perl_sv_catsv_flags	#
	.loc 3 647 0
	movq	-40(%rbp), %rax	# tmp, tmp941
	movq	%rax, %rdi	# tmp941,
	call	Perl_sv_free	#
.L267:
.LBE31:
	.loc 3 652 0
	nop
.L95:
	.loc 3 653 0
	addq	$320, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	report_event, .-report_event
	.section	.rodata
	.align 8
.LC38:
	.string	"Unrecognized identifier %.*s in argspec"
	.align 8
.LC39:
	.string	"Literal string is longer than 255 chars in argspec"
	.align 8
.LC40:
	.string	"Backslash reserved for literal string in argspec"
	.align 8
.LC41:
	.string	"Unterminated literal string in argspec"
.LC42:
	.string	"Bad argspec (%s)"
	.align 8
.LC43:
	.string	"Bad argspec: stuff after @{...} (%s)"
	.align 8
.LC44:
	.string	"Missing comma separator in argspec"
	.text
	.type	argspec_compile, @function
argspec_compile:
.LFB10:
	.loc 3 658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# src, src
	movq	%rsi, -96(%rbp)	# p_state, p_state
	.loc 3 660 0
	movl	$0, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -32(%rbp)	# tmp166, argspec
	.loc 3 662 0
	movq	-88(%rbp), %rax	# src, tmp167
	movl	12(%rax), %eax	# src_18(D)->sv_flags, D.15064
	andl	$262144, %eax	#, D.15064
	testl	%eax, %eax	# D.15064
	je	.L274	#,
	.loc 3 662 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# src, tmp168
	movq	(%rax), %rax	# src_18(D)->sv_any, D.15065
	movq	8(%rax), %rax	# MEM[(struct XPV *)_21].xpv_cur, len.215
	movq	%rax, -64(%rbp)	# len.215, len
	movq	-88(%rbp), %rax	# src, tmp169
	movq	(%rax), %rax	# src_18(D)->sv_any, D.15065
	movq	(%rax), %rax	# MEM[(struct XPV *)_23].xpv_pv, iftmp.214
	jmp	.L275	#
.L274:
	.loc 3 662 0 discriminator 2
	leaq	-64(%rbp), %rcx	#, tmp170
	movq	-88(%rbp), %rax	# src, tmp171
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_2pv_flags	#
.L275:
	.loc 3 662 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.214, s
	.loc 3 663 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rdx	# len, len.216
	movq	-56(%rbp), %rax	# s, tmp175
	addq	%rdx, %rax	# len.216, tmp174
	movq	%rax, -24(%rbp)	# tmp174, end
	.loc 3 665 0 discriminator 3
	movq	-88(%rbp), %rax	# src, tmp176
	movl	12(%rax), %eax	# src_18(D)->sv_flags, D.15064
	andl	$536870912, %eax	#, D.15064
	testl	%eax, %eax	# D.15064
	je	.L276	#,
	.loc 3 666 0
	movq	-32(%rbp), %rax	# argspec, tmp177
	movl	12(%rax), %eax	# argspec_17->sv_flags, D.15064
	orl	$536870912, %eax	#, D.15064
	movl	%eax, %edx	# D.15064, D.15064
	movq	-32(%rbp), %rax	# argspec, tmp178
	movl	%edx, 12(%rax)	# D.15064, argspec_17->sv_flags
	.loc 3 668 0
	jmp	.L277	#
.L276:
	jmp	.L277	#
.L278:
	.loc 3 669 0
	addq	$1, -56(%rbp)	#, s
.L277:
	.loc 3 668 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp179
	movzbl	(%rax), %eax	# *s_1, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L278	#,
	.loc 3 671 0
	movq	-56(%rbp), %rax	# s, tmp181
	movzbl	(%rax), %eax	# *s_1, D.15066
	cmpb	$64, %al	#, D.15066
	jne	.L279	#,
.LBB32:
	.loc 3 673 0
	movq	-56(%rbp), %rax	# s, tmp185
	addq	$1, %rax	#, tmp184
	movq	%rax, -48(%rbp)	# tmp184, tmp
	.loc 3 674 0
	jmp	.L280	#
.L281:
	.loc 3 675 0
	addq	$1, -48(%rbp)	#, tmp
.L280:
	.loc 3 674 0 discriminator 1
	movq	-48(%rbp), %rax	# tmp, tmp186
	movzbl	(%rax), %eax	# *tmp_12, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L281	#,
	.loc 3 676 0
	movq	-48(%rbp), %rax	# tmp, tmp188
	movzbl	(%rax), %eax	# *tmp_12, D.15066
	cmpb	$123, %al	#, D.15066
	jne	.L279	#,
.LBB33:
	.loc 3 677 0
	movb	$22, -80(%rbp)	#, c
	.loc 3 678 0
	leaq	-80(%rbp), %rsi	#, tmp189
	movq	-32(%rbp), %rax	# argspec, tmp190
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp190,
	call	Perl_sv_catpvn_flags	#
	.loc 3 679 0
	addq	$1, -48(%rbp)	#, tmp
	.loc 3 680 0
	jmp	.L282	#
.L283:
	.loc 3 681 0
	addq	$1, -48(%rbp)	#, tmp
.L282:
	.loc 3 680 0 discriminator 1
	movq	-48(%rbp), %rax	# tmp, tmp191
	movzbl	(%rax), %eax	# *tmp_13, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L283	#,
	.loc 3 682 0
	movq	-48(%rbp), %rax	# tmp, tmp193
	movq	%rax, -56(%rbp)	# tmp193, s
.LBE33:
.LBE32:
	.loc 3 685 0
	jmp	.L284	#
.L279:
	jmp	.L284	#
.L320:
	.loc 3 686 0
	movq	-56(%rbp), %rax	# s, tmp194
	movzbl	(%rax), %eax	# *s_11, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$2, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L285	#,
	.loc 3 686 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp196
	movzbl	(%rax), %eax	# *s_11, D.15066
	cmpb	$64, %al	#, D.15066
	jne	.L286	#,
.L285:
.LBB34:
	.loc 3 687 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp197
	movq	%rax, -8(%rbp)	# tmp197, name
	.loc 3 688 0
	movl	$1, -72(%rbp)	#, a
	.loc 3 691 0
	addq	$1, -56(%rbp)	#, s
	.loc 3 692 0
	jmp	.L287	#
.L288:
	.loc 3 693 0
	addq	$1, -56(%rbp)	#, s
.L287:
	.loc 3 692 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp198
	movzbl	(%rax), %eax	# *s_3, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$4, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L288	#,
	.loc 3 696 0
	movq	$argname, -40(%rbp)	#, arg_name
	jmp	.L289	#
.L292:
	.loc 3 697 0
	movq	-56(%rbp), %rdx	# s, s.217
	movq	-8(%rbp), %rax	# name, name.218
	subq	%rax, %rdx	# name.218, D.15069
	movq	%rdx, %rax	# D.15069, D.15069
	movq	%rax, %rdx	# D.15069, D.15071
	movq	-40(%rbp), %rax	# arg_name, tmp200
	movq	(%rax), %rax	# *arg_name_15, D.15073
	movq	-8(%rbp), %rcx	# name, tmp201
	movq	%rcx, %rsi	# tmp201,
	movq	%rax, %rdi	# D.15073,
	call	strncmp	#
	testl	%eax, %eax	# D.15068
	jne	.L290	#,
	.loc 3 698 0 discriminator 1
	movq	-40(%rbp), %rax	# arg_name, tmp202
	movq	(%rax), %rdx	# *arg_name_15, D.15073
	movq	-56(%rbp), %rcx	# s, s.219
	movq	-8(%rbp), %rax	# name, name.220
	subq	%rax, %rcx	# name.220, D.15069
	movq	%rcx, %rax	# D.15069, D.15069
	addq	%rdx, %rax	# D.15073, D.15073
	movzbl	(%rax), %eax	# *_109, D.15066
	.loc 3 697 0 discriminator 1
	testb	%al, %al	# D.15066
	jne	.L290	#,
	.loc 3 699 0
	jmp	.L291	#
.L290:
	.loc 3 696 0
	addl	$1, -72(%rbp)	#, a
	addq	$8, -40(%rbp)	#, arg_name
.L289:
	.loc 3 696 0 is_stmt 0 discriminator 1
	cmpl	$20, -72(%rbp)	#, a
	jle	.L292	#,
.L291:
	.loc 3 701 0 is_stmt 1
	cmpl	$20, -72(%rbp)	#, a
	jg	.L293	#,
.LBB35:
	.loc 3 702 0
	movl	-72(%rbp), %eax	# a, tmp203
	movb	%al, -80(%rbp)	# c.221, c
	.loc 3 703 0
	leaq	-80(%rbp), %rsi	#, tmp204
	movq	-32(%rbp), %rax	# argspec, tmp205
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp205,
	call	Perl_sv_catpvn_flags	#
	.loc 3 705 0
	cmpl	$17, -72(%rbp)	#, a
	je	.L294	#,
	.loc 3 705 0 is_stmt 0 discriminator 1
	cmpl	$18, -72(%rbp)	#, a
	jne	.L295	#,
.L294:
	.loc 3 706 0 is_stmt 1
	movq	-96(%rbp), %rax	# p_state, tmp206
	movq	24(%rax), %rax	# p_state_114(D)->line, D.15071
	testq	%rax, %rax	# D.15071
	jne	.L295	#,
	.loc 3 707 0
	movq	-96(%rbp), %rax	# p_state, tmp207
	movq	$1, 24(%rax)	#, p_state_114(D)->line
.L295:
	.loc 3 709 0
	cmpl	$13, -72(%rbp)	#, a
	jne	.L296	#,
	.loc 3 710 0
	movq	-96(%rbp), %rax	# p_state, tmp208
	movq	112(%rax), %rax	# p_state_114(D)->skipped_text, D.15075
	testq	%rax, %rax	# D.15075
	jne	.L296	#,
	.loc 3 711 0
	movl	$0, %esi	#,
	movl	$.LC35, %edi	#,
	call	Perl_newSVpvn	#
	movq	-96(%rbp), %rdx	# p_state, tmp209
	movq	%rax, 112(%rdx)	# D.15075, p_state_114(D)->skipped_text
.L296:
	.loc 3 714 0
	cmpl	$7, -72(%rbp)	#, a
	je	.L297	#,
	.loc 3 714 0 is_stmt 0 discriminator 1
	cmpl	$8, -72(%rbp)	#, a
	je	.L297	#,
	cmpl	$11, -72(%rbp)	#, a
	jne	.L298	#,
.L297:
	.loc 3 715 0 is_stmt 1
	movq	-96(%rbp), %rax	# p_state, tmp210
	movzbl	304(%rax), %eax	# p_state_114(D)->argspec_entity_decode, D.15066
	leal	1(%rax), %edx	#, D.15066
	movq	-96(%rbp), %rax	# p_state, tmp211
	movb	%dl, 304(%rax)	# D.15066, p_state_114(D)->argspec_entity_decode
.LBE35:
	jmp	.L299	#
.L298:
	jmp	.L299	#
.L293:
	.loc 3 719 0
	movq	-56(%rbp), %rdx	# s, s.222
	movq	-8(%rbp), %rax	# name, name.223
	movq	%rdx, %rcx	# s.222, D.15069
	subq	%rax, %rcx	# name.223, D.15069
	movq	-8(%rbp), %rax	# name, tmp212
	movq	%rax, %rdx	# tmp212,
	movq	%rcx, %rsi	# D.15069,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE34:
	.loc 3 686 0
	jmp	.L300	#
.L299:
	jmp	.L300	#
.L286:
	.loc 3 722 0
	movq	-56(%rbp), %rax	# s, tmp213
	movzbl	(%rax), %eax	# *s_11, D.15066
	cmpb	$34, %al	#, D.15066
	je	.L301	#,
	.loc 3 722 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp214
	movzbl	(%rax), %eax	# *s_11, D.15066
	cmpb	$39, %al	#, D.15066
	jne	.L302	#,
.L301:
.LBB36:
	.loc 3 723 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp215
	movq	%rax, -16(%rbp)	# tmp215, string_beg
	.loc 3 724 0
	addq	$1, -56(%rbp)	#, s
	.loc 3 725 0
	jmp	.L303	#
.L305:
	.loc 3 726 0
	addq	$1, -56(%rbp)	#, s
.L303:
	.loc 3 725 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp216
	cmpq	-24(%rbp), %rax	# end, tmp216
	jae	.L304	#,
	.loc 3 725 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# s, tmp217
	movzbl	(%rax), %edx	# *s_4, D.15066
	movq	-16(%rbp), %rax	# string_beg, tmp218
	movzbl	(%rax), %eax	# *string_beg_68, D.15066
	cmpb	%al, %dl	# D.15066, D.15066
	je	.L304	#,
	.loc 3 725 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp219
	movzbl	(%rax), %eax	# *s_4, D.15066
	cmpb	$92, %al	#, D.15066
	jne	.L305	#,
.L304:
	.loc 3 727 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp220
	movzbl	(%rax), %edx	# *s_4, D.15066
	movq	-16(%rbp), %rax	# string_beg, tmp221
	movzbl	(%rax), %eax	# *string_beg_68, D.15066
	cmpb	%al, %dl	# D.15066, D.15066
	jne	.L306	#,
.LBB37:
	.loc 3 729 0
	movq	-56(%rbp), %rdx	# s, s.224
	movq	-16(%rbp), %rax	# string_beg, string_beg.225
	subq	%rax, %rdx	# string_beg.225, D.15069
	movq	%rdx, %rax	# D.15069, D.15069
	subl	$1, %eax	#, D.15070
	movl	%eax, -68(%rbp)	# D.15070, len
	.loc 3 731 0
	cmpl	$255, -68(%rbp)	#, len
	jle	.L307	#,
	.loc 3 732 0
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L307:
	.loc 3 733 0
	movb	$21, -80(%rbp)	#, buf
	.loc 3 734 0
	movl	-68(%rbp), %eax	# len, tmp222
	movb	%al, -79(%rbp)	# D.15067, buf
	.loc 3 735 0
	leaq	-80(%rbp), %rsi	#, tmp223
	movq	-32(%rbp), %rax	# argspec, tmp224
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp224,
	call	Perl_sv_catpvn_flags	#
	.loc 3 736 0
	movl	-68(%rbp), %eax	# len, tmp225
	movslq	%eax, %rdx	# tmp225, D.15071
	movq	-16(%rbp), %rax	# string_beg, tmp226
	leaq	1(%rax), %rsi	#, D.15072
	movq	-32(%rbp), %rax	# argspec, tmp227
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_catpvn_flags	#
	.loc 3 737 0
	addq	$1, -56(%rbp)	#, s
.LBE37:
	jmp	.L308	#
.L306:
	.loc 3 739 0
	movq	-56(%rbp), %rax	# s, tmp228
	movzbl	(%rax), %eax	# *s_4, D.15066
	cmpb	$92, %al	#, D.15066
	jne	.L309	#,
	.loc 3 740 0
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L308	#
.L309:
	.loc 3 743 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE36:
	.loc 3 722 0
	jmp	.L300	#
.L308:
	jmp	.L300	#
.L302:
	.loc 3 747 0
	movq	-56(%rbp), %rax	# s, tmp229
	movq	%rax, %rsi	# tmp229,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 3 750 0
	jmp	.L310	#
.L300:
	jmp	.L310	#
.L311:
	.loc 3 751 0
	addq	$1, -56(%rbp)	#, s
.L310:
	.loc 3 750 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp230
	movzbl	(%rax), %eax	# *s_7, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L311	#,
	.loc 3 753 0
	movq	-56(%rbp), %rax	# s, tmp232
	movzbl	(%rax), %eax	# *s_7, D.15066
	cmpb	$125, %al	#, D.15066
	jne	.L312	#,
	.loc 3 753 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# argspec, tmp233
	movq	(%rax), %rax	# argspec_17->sv_any, D.15065
	movq	(%rax), %rax	# MEM[(struct XPV *)_132].xpv_pv, D.15073
	movzbl	(%rax), %eax	# *_133, D.15066
	cmpb	$22, %al	#, D.15066
	jne	.L312	#,
	.loc 3 755 0 is_stmt 1
	addq	$1, -56(%rbp)	#, s
	.loc 3 756 0
	jmp	.L313	#
.L314:
	.loc 3 757 0
	addq	$1, -56(%rbp)	#, s
.L313:
	.loc 3 756 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp234
	movzbl	(%rax), %eax	# *s_8, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L314	#,
	.loc 3 758 0
	movq	-56(%rbp), %rax	# s, tmp236
	cmpq	-24(%rbp), %rax	# end, tmp236
	jae	.L312	#,
	.loc 3 759 0
	movq	-56(%rbp), %rax	# s, tmp237
	movq	%rax, %rsi	# tmp237,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L312:
	.loc 3 762 0
	movq	-56(%rbp), %rax	# s, tmp238
	cmpq	-24(%rbp), %rax	# end, tmp238
	jne	.L315	#,
	.loc 3 763 0
	jmp	.L316	#
.L315:
	.loc 3 764 0
	movq	-56(%rbp), %rax	# s, tmp239
	movzbl	(%rax), %eax	# *s_9, D.15066
	cmpb	$44, %al	#, D.15066
	je	.L317	#,
	.loc 3 765 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L317:
	.loc 3 767 0
	addq	$1, -56(%rbp)	#, s
	.loc 3 768 0
	jmp	.L318	#
.L319:
	.loc 3 769 0
	addq	$1, -56(%rbp)	#, s
.L318:
	.loc 3 768 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp240
	movzbl	(%rax), %eax	# *s_10, D.15066
	movzbl	%al, %eax	# D.15067, D.15068
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15067
	movzbl	%al, %eax	# D.15067, D.15068
	andl	$1, %eax	#, D.15068
	testl	%eax, %eax	# D.15068
	jne	.L319	#,
.L284:
	.loc 3 685 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp242
	cmpq	-24(%rbp), %rax	# end, tmp242
	jb	.L320	#,
.L316:
	.loc 3 771 0
	movq	-32(%rbp), %rax	# argspec, D.15075
	.loc 3 772 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	argspec_compile, .-argspec_compile
	.type	flush_pending_text, @function
flush_pending_text:
.LFB11:
	.loc 3 777 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# p_state, p_state
	movq	%rsi, -64(%rbp)	# self, self
	.loc 3 779 0
	movq	-56(%rbp), %rax	# p_state, tmp79
	movzbl	141(%rax), %eax	# p_state_1(D)->unbroken_text, tmp80
	movb	%al, -34(%rbp)	# tmp80, old_unbroken_text
	.loc 3 780 0
	movq	-56(%rbp), %rax	# p_state, tmp81
	movq	72(%rax), %rax	# p_state_1(D)->pend_text, tmp82
	movq	%rax, -32(%rbp)	# tmp82, old_pend_text
	.loc 3 781 0
	movq	-56(%rbp), %rax	# p_state, tmp83
	movzbl	56(%rax), %eax	# p_state_1(D)->is_cdata, tmp84
	movb	%al, -33(%rbp)	# tmp84, old_is_cdata
	.loc 3 782 0
	movq	-56(%rbp), %rax	# p_state, tmp85
	movq	16(%rax), %rax	# p_state_1(D)->offset, tmp86
	movq	%rax, -24(%rbp)	# tmp86, old_offset
	.loc 3 783 0
	movq	-56(%rbp), %rax	# p_state, tmp87
	movq	24(%rax), %rax	# p_state_1(D)->line, tmp88
	movq	%rax, -16(%rbp)	# tmp88, old_line
	.loc 3 784 0
	movq	-56(%rbp), %rax	# p_state, tmp89
	movq	32(%rax), %rax	# p_state_1(D)->column, tmp90
	movq	%rax, -8(%rbp)	# tmp90, old_column
	.loc 3 788 0
	movq	-56(%rbp), %rax	# p_state, tmp91
	movb	$0, 141(%rax)	#, p_state_1(D)->unbroken_text
	.loc 3 789 0
	movq	-56(%rbp), %rax	# p_state, tmp92
	movq	$0, 72(%rax)	#, p_state_1(D)->pend_text
	.loc 3 790 0
	movq	-56(%rbp), %rax	# p_state, tmp93
	movzbl	80(%rax), %edx	# p_state_1(D)->pend_text_is_cdata, D.15084
	movq	-56(%rbp), %rax	# p_state, tmp94
	movb	%dl, 56(%rax)	# D.15084, p_state_1(D)->is_cdata
	.loc 3 791 0
	movq	-56(%rbp), %rax	# p_state, tmp95
	movq	88(%rax), %rdx	# p_state_1(D)->pend_text_offset, D.15085
	movq	-56(%rbp), %rax	# p_state, tmp96
	movq	%rdx, 16(%rax)	# D.15085, p_state_1(D)->offset
	.loc 3 792 0
	movq	-56(%rbp), %rax	# p_state, tmp97
	movq	96(%rax), %rdx	# p_state_1(D)->pend_text_line, D.15085
	movq	-56(%rbp), %rax	# p_state, tmp98
	movq	%rdx, 24(%rax)	# D.15085, p_state_1(D)->line
	.loc 3 793 0
	movq	-56(%rbp), %rax	# p_state, tmp99
	movq	104(%rax), %rdx	# p_state_1(D)->pend_text_column, D.15085
	movq	-56(%rbp), %rax	# p_state, tmp100
	movq	%rdx, 32(%rax)	# D.15085, p_state_1(D)->column
	.loc 3 797 0
	movq	-32(%rbp), %rax	# old_pend_text, tmp101
	movl	12(%rax), %eax	# old_pend_text_3->sv_flags, D.15086
	.loc 3 795 0
	andl	$536870912, %eax	#, D.15086
	movl	%eax, %edi	# D.15086, D.15086
	.loc 3 796 0
	movq	-32(%rbp), %rax	# old_pend_text, tmp102
	movq	(%rax), %rax	# old_pend_text_3->sv_any, D.15087
	movq	(%rax), %rdx	# MEM[(struct XPV *)_14].xpv_pv, D.15088
	movq	-32(%rbp), %rax	# old_pend_text, tmp103
	movq	(%rax), %rax	# old_pend_text_3->sv_any, D.15087
	movq	8(%rax), %rax	# MEM[(struct XPV *)_16].xpv_cur, D.15085
	.loc 3 795 0
	leaq	(%rdx,%rax), %rsi	#, D.15088
	.loc 3 796 0
	movq	-32(%rbp), %rax	# old_pend_text, tmp104
	movq	(%rax), %rax	# old_pend_text_3->sv_any, D.15087
	.loc 3 795 0
	movq	(%rax), %rdx	# MEM[(struct XPV *)_19].xpv_pv, D.15088
	movq	-56(%rbp), %rax	# p_state, tmp105
	movq	-64(%rbp), %rcx	# self, tmp106
	movq	%rcx, 8(%rsp)	# tmp106,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# D.15086,
	movq	%rsi, %rcx	# D.15088,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	report_event	#
	.loc 3 798 0
	movq	-32(%rbp), %rax	# old_pend_text, tmp107
	movl	12(%rax), %eax	# old_pend_text_3->sv_flags, D.15086
	andl	$1223753727, %eax	#, D.15086
	movl	%eax, %edx	# D.15086, D.15086
	movq	-32(%rbp), %rax	# old_pend_text, tmp108
	movl	%edx, 12(%rax)	# D.15086, old_pend_text_3->sv_flags
	movq	-32(%rbp), %rax	# old_pend_text, tmp109
	movl	12(%rax), %eax	# old_pend_text_3->sv_flags, D.15086
	andl	$2097152, %eax	#, D.15086
	testl	%eax, %eax	# D.15086
	je	.L324	#,
	.loc 3 798 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# old_pend_text, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15089
	je	.L324	#,
	.loc 3 798 0
	nop
.L324:
	.loc 3 800 0 is_stmt 1
	movq	-56(%rbp), %rax	# p_state, tmp111
	movzbl	-34(%rbp), %edx	# old_unbroken_text, tmp112
	movb	%dl, 141(%rax)	# tmp112, p_state_1(D)->unbroken_text
	.loc 3 801 0
	movq	-56(%rbp), %rax	# p_state, tmp113
	movq	-32(%rbp), %rdx	# old_pend_text, tmp114
	movq	%rdx, 72(%rax)	# tmp114, p_state_1(D)->pend_text
	.loc 3 802 0
	movq	-56(%rbp), %rax	# p_state, tmp115
	movzbl	-33(%rbp), %edx	# old_is_cdata, tmp116
	movb	%dl, 56(%rax)	# tmp116, p_state_1(D)->is_cdata
	.loc 3 803 0
	movq	-56(%rbp), %rax	# p_state, tmp117
	movq	-24(%rbp), %rdx	# old_offset, tmp118
	movq	%rdx, 16(%rax)	# tmp118, p_state_1(D)->offset
	.loc 3 804 0
	movq	-56(%rbp), %rax	# p_state, tmp119
	movq	-16(%rbp), %rdx	# old_line, tmp120
	movq	%rdx, 24(%rax)	# tmp120, p_state_1(D)->line
	.loc 3 805 0
	movq	-56(%rbp), %rax	# p_state, tmp121
	movq	-8(%rbp), %rdx	# old_column, tmp122
	movq	%rdx, 32(%rax)	# tmp122, p_state_1(D)->column
	.loc 3 806 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	flush_pending_text, .-flush_pending_text
	.type	skip_until_gt, @function
skip_until_gt:
.LFB12:
	.loc 3 810 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# beg, beg
	movq	%rsi, -32(%rbp)	# end, end
	.loc 3 812 0
	movq	-24(%rbp), %rax	# beg, tmp66
	movq	%rax, -8(%rbp)	# tmp66, s
	.loc 3 813 0
	movb	$0, -10(%rbp)	#, quote
	.loc 3 814 0
	movb	$32, -9(%rbp)	#, prev
	.loc 3 815 0
	jmp	.L326	#
.L333:
	.loc 3 816 0
	cmpb	$0, -10(%rbp)	#, quote
	jne	.L327	#,
	.loc 3 816 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp67
	movzbl	(%rax), %eax	# *s_1, D.15091
	cmpb	$62, %al	#, D.15091
	jne	.L327	#,
	.loc 3 817 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, D.15090
	jmp	.L328	#
.L327:
	.loc 3 818 0
	movq	-8(%rbp), %rax	# s, tmp68
	movzbl	(%rax), %eax	# *s_1, D.15091
	cmpb	$34, %al	#, D.15091
	je	.L329	#,
	.loc 3 818 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp69
	movzbl	(%rax), %eax	# *s_1, D.15091
	cmpb	$39, %al	#, D.15091
	jne	.L330	#,
.L329:
	.loc 3 819 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp70
	movzbl	(%rax), %eax	# *s_1, D.15091
	cmpb	-10(%rbp), %al	# quote, D.15091
	jne	.L331	#,
	.loc 3 820 0
	movb	$0, -10(%rbp)	#, quote
	jmp	.L330	#
.L331:
	.loc 3 822 0
	cmpb	$0, -10(%rbp)	#, quote
	jne	.L330	#,
	.loc 3 822 0 is_stmt 0 discriminator 1
	cmpb	$32, -9(%rbp)	#, prev
	je	.L332	#,
	cmpb	$61, -9(%rbp)	#, prev
	jne	.L330	#,
.L332:
	.loc 3 823 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp71
	movzbl	(%rax), %eax	# *s_1, tmp72
	movb	%al, -10(%rbp)	# tmp72, quote
.L330:
	.loc 3 826 0
	movq	-8(%rbp), %rax	# s, s.227
	leaq	1(%rax), %rdx	#, tmp73
	movq	%rdx, -8(%rbp)	# tmp73, s
	movzbl	(%rax), %eax	# *s.227_18, tmp74
	movb	%al, -9(%rbp)	# tmp74, prev
.L326:
	.loc 3 815 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp75
	cmpq	-32(%rbp), %rax	# end, tmp75
	jb	.L333	#,
	.loc 3 828 0
	movq	-32(%rbp), %rax	# end, D.15090
.L328:
	.loc 3 829 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	skip_until_gt, .-skip_until_gt
	.type	parse_comment, @function
parse_comment:
.LFB13:
	.loc 3 833 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -104(%rbp)	# p_state, p_state
	movq	%rsi, -112(%rbp)	# beg, beg
	movq	%rdx, -120(%rbp)	# end, end
	movl	%ecx, -124(%rbp)	# utf8, utf8
	movq	%r8, -136(%rbp)	# self, self
	.loc 3 834 0
	movq	-112(%rbp), %rax	# beg, tmp104
	movq	%rax, -80(%rbp)	# tmp104, s
	.loc 3 836 0
	movq	-104(%rbp), %rax	# p_state, tmp105
	movzbl	137(%rax), %eax	# p_state_20(D)->strict_comment, D.15093
	testb	%al, %al	# D.15093
	je	.L335	#,
.LBB38:
	.loc 3 837 0
	movl	$4, -96(%rbp)	#, token_lim
	leaq	-64(%rbp), %rax	#, tmp106
	movq	%rax, -88(%rbp)	# tmp106, tokens
	movl	$0, -92(%rbp)	#, num_tokens
	.loc 3 838 0
	movq	-80(%rbp), %rax	# s, tmp107
	movq	%rax, -72(%rbp)	# tmp107, start_com
	.loc 3 844 0
	jmp	.L337	#
.L336:
	jmp	.L337	#
.L339:
	.loc 3 845 0
	addq	$1, -80(%rbp)	#, s
.L337:
	.loc 3 844 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp108
	cmpq	-120(%rbp), %rax	# end, tmp108
	jae	.L338	#,
	.loc 3 844 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, tmp109
	movzbl	(%rax), %eax	# *s_2, D.15093
	cmpb	$45, %al	#, D.15093
	je	.L338	#,
	.loc 3 844 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp110
	movzbl	(%rax), %eax	# *s_2, D.15093
	cmpb	$62, %al	#, D.15093
	jne	.L339	#,
.L338:
	.loc 3 847 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, tmp111
	cmpq	-120(%rbp), %rax	# end, tmp111
	jne	.L340	#,
	.loc 3 848 0
	movq	-88(%rbp), %rdx	# tokens, tokens.228
	leaq	-64(%rbp), %rax	#, tmp112
	cmpq	%rax, %rdx	# tmp112, tokens.228
	je	.L341	#,
	.loc 3 848 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# tokens, tokens.229
	movq	%rax, %rdi	# tokens.229,
	call	Perl_safesysfree	#
.L341:
	.loc 3 849 0 is_stmt 1
	movq	-112(%rbp), %rax	# beg, D.15092
	jmp	.L351	#
.L340:
	.loc 3 852 0
	movq	-80(%rbp), %rax	# s, tmp113
	movzbl	(%rax), %eax	# *s_2, D.15093
	cmpb	$62, %al	#, D.15093
	jne	.L343	#,
	.loc 3 853 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 854 0
	cmpq	$0, -72(%rbp)	#, start_com
	je	.L344	#,
	.loc 3 855 0
	jmp	.L336	#
.L344:
	.loc 3 858 0
	movq	-88(%rbp), %r8	# tokens, tokens.230
	movq	-112(%rbp), %rax	# beg, tmp114
	leaq	-4(%rax), %rsi	#, D.15092
	movl	-124(%rbp), %edi	# utf8, tmp115
	movq	-80(%rbp), %rdx	# s, tmp116
	movq	-104(%rbp), %rax	# p_state, tmp117
	movq	-136(%rbp), %rcx	# self, tmp118
	movq	%rcx, 8(%rsp)	# tmp118,
	movl	-92(%rbp), %ecx	# num_tokens, tmp119
	movl	%ecx, (%rsp)	# tmp119,
	movq	%r8, %r9	# tokens.230,
	movl	%edi, %r8d	# tmp115,
	movq	%rdx, %rcx	# tmp116,
	movq	%rsi, %rdx	# D.15092,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	report_event	#
	.loc 3 862 0
	movq	-88(%rbp), %rdx	# tokens, tokens.231
	leaq	-64(%rbp), %rax	#, tmp120
	cmpq	%rax, %rdx	# tmp120, tokens.231
	je	.L345	#,
	.loc 3 862 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# tokens, tokens.232
	movq	%rax, %rdi	# tokens.232,
	call	Perl_safesysfree	#
.L345:
	.loc 3 864 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, D.15092
	jmp	.L351	#
.L343:
	.loc 3 867 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 868 0
	movq	-80(%rbp), %rax	# s, tmp121
	cmpq	-120(%rbp), %rax	# end, tmp121
	jne	.L346	#,
	.loc 3 869 0
	movq	-88(%rbp), %rdx	# tokens, tokens.233
	leaq	-64(%rbp), %rax	#, tmp122
	cmpq	%rax, %rdx	# tmp122, tokens.233
	je	.L347	#,
	.loc 3 869 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# tokens, tokens.234
	movq	%rax, %rdi	# tokens.234,
	call	Perl_safesysfree	#
.L347:
	.loc 3 870 0 is_stmt 1
	movq	-112(%rbp), %rax	# beg, D.15092
	jmp	.L351	#
.L346:
	.loc 3 873 0
	movq	-80(%rbp), %rax	# s, tmp123
	movzbl	(%rax), %eax	# *s_40, D.15093
	cmpb	$45, %al	#, D.15093
	jne	.L348	#,
	.loc 3 875 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 877 0
	cmpq	$0, -72(%rbp)	#, start_com
	je	.L349	#,
.LBB39:
	.loc 3 878 0
	addl	$1, -92(%rbp)	#, num_tokens
	movl	-96(%rbp), %eax	# token_lim, token_lim.235
	cmpl	%eax, -92(%rbp)	# token_lim.235, num_tokens
	jne	.L350	#,
	.loc 3 878 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# tokens, tokens.236
	leaq	-64(%rbp), %rax	#, tmp124
	cmpq	%rax, %rdx	# tmp124, tokens.236
	setne	%al	#, D.15094
	movzbl	%al, %edx	# D.15094, D.15095
	leaq	-96(%rbp), %rcx	#, tmp125
	leaq	-88(%rbp), %rax	#, tmp126
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	tokens_grow	#
.L350:
	.loc 3 878 0 discriminator 2
	movq	-88(%rbp), %rax	# tokens, tokens.237
	movl	-92(%rbp), %edx	# num_tokens, tmp127
	movslq	%edx, %rdx	# tmp127, D.15096
	salq	$4, %rdx	#, D.15096
	subq	$16, %rdx	#, D.15097
	addq	%rax, %rdx	# tokens.237, D.15098
	movq	-72(%rbp), %rax	# start_com, tmp128
	movq	%rax, (%rdx)	# tmp128, _55->beg
	movq	-88(%rbp), %rax	# tokens, tokens.238
	movl	-92(%rbp), %edx	# num_tokens, tmp129
	movslq	%edx, %rdx	# tmp129, D.15096
	salq	$4, %rdx	#, D.15096
	subq	$16, %rdx	#, D.15097
	addq	%rdx, %rax	# D.15097, D.15098
	movq	-80(%rbp), %rdx	# s, tmp130
	subq	$2, %rdx	#, D.15092
	movq	%rdx, 8(%rax)	# D.15092, _60->end
.LBE39:
	.loc 3 879 0 is_stmt 1 discriminator 2
	movq	$0, -72(%rbp)	#, start_com
	jmp	.L348	#
.L349:
	.loc 3 882 0
	movq	-80(%rbp), %rax	# s, tmp131
	movq	%rax, -72(%rbp)	# tmp131, start_com
	.loc 3 885 0
	jmp	.L336	#
.L348:
	jmp	.L336	#
.L335:
.LBE38:
	.loc 3 887 0
	movq	-104(%rbp), %rax	# p_state, tmp132
	movzbl	57(%rax), %eax	# p_state_20(D)->no_dash_dash_comment_end, D.15093
	testb	%al, %al	# D.15093
	je	.L352	#,
.LBB40:
	.loc 3 889 0
	movq	-112(%rbp), %rax	# beg, tmp133
	movq	%rax, -64(%rbp)	# tmp133, token.beg
	.loc 3 891 0
	jmp	.L353	#
.L355:
	.loc 3 892 0
	addq	$1, -80(%rbp)	#, s
.L353:
	.loc 3 891 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp134
	cmpq	-120(%rbp), %rax	# end, tmp134
	jae	.L354	#,
	.loc 3 891 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, tmp135
	movzbl	(%rax), %eax	# *s_4, D.15093
	cmpb	$62, %al	#, D.15093
	jne	.L355	#,
.L354:
	.loc 3 893 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, tmp136
	movq	%rax, -56(%rbp)	# tmp136, token.end
	.loc 3 894 0
	movq	-80(%rbp), %rax	# s, tmp137
	cmpq	-120(%rbp), %rax	# end, tmp137
	jae	.L356	#,
	.loc 3 895 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 896 0
	movq	-112(%rbp), %rax	# beg, tmp138
	leaq	-4(%rax), %rsi	#, D.15092
	leaq	-64(%rbp), %r8	#, tmp139
	movl	-124(%rbp), %edi	# utf8, tmp140
	movq	-80(%rbp), %rdx	# s, tmp141
	movq	-104(%rbp), %rax	# p_state, tmp142
	movq	-136(%rbp), %rcx	# self, tmp143
	movq	%rcx, 8(%rsp)	# tmp143,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp139,
	movl	%edi, %r8d	# tmp140,
	movq	%rdx, %rcx	# tmp141,
	movq	%rsi, %rdx	# D.15092,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	report_event	#
	.loc 3 897 0
	movq	-80(%rbp), %rax	# s, D.15092
	jmp	.L351	#
.L356:
	.loc 3 900 0
	movq	-112(%rbp), %rax	# beg, D.15092
	jmp	.L351	#
.L352:
.LBE40:
.LBB41:
	.loc 3 905 0
	movq	-112(%rbp), %rax	# beg, tmp144
	movq	%rax, -64(%rbp)	# tmp144, token.beg
	.loc 3 908 0
	jmp	.L359	#
.L361:
	.loc 3 909 0
	addq	$1, -80(%rbp)	#, s
.L359:
	.loc 3 908 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp145
	cmpq	-120(%rbp), %rax	# end, tmp145
	jae	.L360	#,
	.loc 3 908 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, tmp146
	movzbl	(%rax), %eax	# *s_6, D.15093
	cmpb	$45, %al	#, D.15093
	jne	.L361	#,
.L360:
	.loc 3 910 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, tmp147
	movq	%rax, -56(%rbp)	# tmp147, token.end
	.loc 3 911 0
	movq	-80(%rbp), %rax	# s, tmp148
	cmpq	-120(%rbp), %rax	# end, tmp148
	jae	.L362	#,
	.loc 3 912 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 913 0
	movq	-80(%rbp), %rax	# s, tmp149
	movzbl	(%rax), %eax	# *s_74, D.15093
	cmpb	$45, %al	#, D.15093
	jne	.L363	#,
	.loc 3 914 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 915 0
	jmp	.L364	#
.L365:
	.loc 3 916 0
	addq	$1, -80(%rbp)	#, s
.L364:
	.loc 3 915 0 discriminator 1
	movq	-80(%rbp), %rax	# s, tmp150
	movzbl	(%rax), %eax	# *s_7, D.15093
	movzbl	%al, %eax	# D.15099, D.15095
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15099
	movzbl	%al, %eax	# D.15099, D.15095
	andl	$1, %eax	#, D.15095
	testl	%eax, %eax	# D.15095
	jne	.L365	#,
	.loc 3 917 0
	movq	-80(%rbp), %rax	# s, tmp152
	movzbl	(%rax), %eax	# *s_7, D.15093
	cmpb	$62, %al	#, D.15093
	jne	.L363	#,
	.loc 3 918 0
	addq	$1, -80(%rbp)	#, s
	.loc 3 920 0
	movq	-112(%rbp), %rax	# beg, tmp153
	leaq	-4(%rax), %rsi	#, D.15092
	leaq	-64(%rbp), %r8	#, tmp154
	movl	-124(%rbp), %edi	# utf8, tmp155
	movq	-80(%rbp), %rdx	# s, tmp156
	movq	-104(%rbp), %rax	# p_state, tmp157
	movq	-136(%rbp), %rcx	# self, tmp158
	movq	%rcx, 8(%rsp)	# tmp158,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp154,
	movl	%edi, %r8d	# tmp155,
	movq	%rdx, %rcx	# tmp156,
	movq	%rsi, %rdx	# D.15092,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	report_event	#
	.loc 3 921 0
	movq	-80(%rbp), %rax	# s, D.15092
	jmp	.L351	#
.L363:
	.loc 3 924 0
	movq	-80(%rbp), %rax	# s, tmp159
	cmpq	-120(%rbp), %rax	# end, tmp159
	jae	.L362	#,
	.loc 3 925 0
	movq	-56(%rbp), %rax	# token.end, D.15092
	addq	$1, %rax	#, tmp160
	movq	%rax, -80(%rbp)	# tmp160, s
	.loc 3 926 0
	nop
.L358:
	.loc 3 908 0
	jmp	.L359	#
.L362:
	.loc 3 930 0
	movq	-80(%rbp), %rax	# s, tmp161
	cmpq	-120(%rbp), %rax	# end, tmp161
	jne	.L367	#,
	.loc 3 931 0
	movq	-112(%rbp), %rax	# beg, D.15092
	jmp	.L351	#
.L367:
.LBE41:
	.loc 3 934 0
	movl	$0, %eax	#, D.15092
.L351:
	.loc 3 935 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	parse_comment, .-parse_comment
	.section	.rodata
.LC45:
	.string	"include"
.LC46:
	.string	"rcdata"
.LC47:
	.string	"cdata"
.LC48:
	.string	"ignore"
	.text
	.type	marked_section_update, @function
marked_section_update:
.LFB14:
	.loc 3 942 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# p_state, p_state
	.loc 3 945 0
	movq	-88(%rbp), %rax	# p_state, tmp79
	movq	128(%rax), %rax	# p_state_5(D)->ms_stack, tmp80
	movq	%rax, -40(%rbp)	# tmp80, ms_stack
	.loc 3 946 0
	movq	-88(%rbp), %rax	# p_state, tmp81
	movl	$0, 120(%rax)	#, p_state_5(D)->ms
	.loc 3 948 0
	cmpq	$0, -40(%rbp)	#, ms_stack
	je	.L369	#,
.LBB42:
	.loc 3 949 0
	movq	-40(%rbp), %rax	# ms_stack, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_av_len	#
	movl	%eax, -56(%rbp)	# tmp83, stack_len
	.loc 3 951 0
	movl	$0, -68(%rbp)	#, stack_idx
	jmp	.L370	#
.L383:
.LBB43:
	.loc 3 952 0
	movl	-68(%rbp), %ecx	# stack_idx, tmp84
	movq	-40(%rbp), %rax	# ms_stack, tmp85
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp86, svp
	.loc 3 953 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L371	#,
.LBB44:
	.loc 3 954 0
	movq	-32(%rbp), %rax	# svp, tmp87
	movq	(%rax), %rax	# *svp_9, D.15101
	movq	(%rax), %rax	# _10->sv_any, D.15102
	movq	(%rax), %rax	# MEM[(struct XRV *)_11].xrv_rv, tmp88
	movq	%rax, -24(%rbp)	# tmp88, tokens
	.loc 3 955 0
	movq	-24(%rbp), %rax	# tokens, tmp89
	movq	%rax, %rdi	# tmp89,
	call	Perl_av_len	#
	movl	%eax, -52(%rbp)	# tmp90, tokens_len
	.loc 3 958 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L372	#
.L382:
.LBB45:
	.loc 3 959 0
	movl	-64(%rbp), %ecx	# i, tmp91
	movq	-24(%rbp), %rax	# tokens, tmp92
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	Perl_av_fetch	#
	movq	%rax, -16(%rbp)	# tmp93, svp
	.loc 3 960 0
	cmpq	$0, -16(%rbp)	#, svp
	je	.L373	#,
.LBB46:
	.loc 3 962 0
	movq	-16(%rbp), %rax	# svp, tmp94
	movq	(%rax), %rax	# *svp_15, D.15101
	movl	12(%rax), %eax	# _16->sv_flags, D.15103
	andl	$262144, %eax	#, D.15103
	testl	%eax, %eax	# D.15103
	je	.L374	#,
	.loc 3 962 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# svp, tmp95
	movq	(%rax), %rax	# *svp_15, D.15101
	movq	(%rax), %rax	# _19->sv_any, D.15102
	movq	8(%rax), %rax	# MEM[(struct XPV *)_20].xpv_cur, len.240
	movq	%rax, -48(%rbp)	# len.240, len
	movq	-16(%rbp), %rax	# svp, tmp96
	movq	(%rax), %rax	# *svp_15, D.15101
	movq	(%rax), %rax	# _22->sv_any, D.15102
	movq	(%rax), %rax	# MEM[(struct XPV *)_23].xpv_pv, iftmp.239
	jmp	.L375	#
.L374:
	.loc 3 962 0 discriminator 2
	movq	-16(%rbp), %rax	# svp, tmp97
	movq	(%rax), %rax	# *svp_15, D.15101
	leaq	-48(%rbp), %rcx	#, tmp98
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# D.15101,
	call	Perl_sv_2pv_flags	#
.L375:
	.loc 3 962 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.239, token_str
	.loc 3 964 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# token_str, tmp99
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	strcmp	#
	testl	%eax, %eax	# D.15104
	jne	.L376	#,
	.loc 3 965 0
	movl	$1, -60(%rbp)	#, token
	jmp	.L377	#
.L376:
	.loc 3 966 0
	movq	-8(%rbp), %rax	# token_str, tmp100
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.15104
	jne	.L378	#,
	.loc 3 967 0
	movl	$2, -60(%rbp)	#, token
	jmp	.L377	#
.L378:
	.loc 3 968 0
	movq	-8(%rbp), %rax	# token_str, tmp101
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	strcmp	#
	testl	%eax, %eax	# D.15104
	jne	.L379	#,
	.loc 3 969 0
	movl	$3, -60(%rbp)	#, token
	jmp	.L377	#
.L379:
	.loc 3 970 0
	movq	-8(%rbp), %rax	# token_str, tmp102
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	strcmp	#
	testl	%eax, %eax	# D.15104
	jne	.L380	#,
	.loc 3 971 0
	movl	$4, -60(%rbp)	#, token
	jmp	.L377	#
.L380:
	.loc 3 973 0
	movl	$0, -60(%rbp)	#, token
.L377:
	.loc 3 974 0
	movq	-88(%rbp), %rax	# p_state, tmp103
	movl	120(%rax), %eax	# p_state_5(D)->ms, D.15105
	cmpl	-60(%rbp), %eax	# token, D.15105
	jae	.L373	#,
	.loc 3 975 0
	movq	-88(%rbp), %rax	# p_state, tmp104
	movl	-60(%rbp), %edx	# token, tmp105
	movl	%edx, 120(%rax)	# tmp105, p_state_5(D)->ms
.L373:
.LBE46:
.LBE45:
	.loc 3 958 0
	addl	$1, -64(%rbp)	#, i
.L372:
	.loc 3 958 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp106
	cmpl	-52(%rbp), %eax	# tokens_len, tmp106
	jle	.L382	#,
.L371:
.LBE44:
.LBE43:
	.loc 3 951 0 is_stmt 1
	addl	$1, -68(%rbp)	#, stack_idx
.L370:
	.loc 3 951 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# stack_idx, tmp107
	cmpl	-56(%rbp), %eax	# stack_len, tmp107
	jle	.L383	#,
.L369:
.LBE42:
	.loc 3 982 0 is_stmt 1
	movq	-88(%rbp), %rax	# p_state, tmp108
	movl	120(%rax), %eax	# p_state_5(D)->ms, D.15105
	cmpl	$3, %eax	#, D.15105
	sete	%al	#, D.15106
	movl	%eax, %edx	# D.15106, D.15107
	movq	-88(%rbp), %rax	# p_state, tmp109
	movb	%dl, 56(%rax)	# D.15107, p_state_5(D)->is_cdata
	.loc 3 983 0
	nop
	.loc 3 984 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	marked_section_update, .-marked_section_update
	.type	parse_marked_section, @function
parse_marked_section:
.LFB15:
	.loc 3 989 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -56(%rbp)	# p_state, p_state
	movq	%rsi, -64(%rbp)	# beg, beg
	movq	%rdx, -72(%rbp)	# end, end
	movl	%ecx, -76(%rbp)	# utf8, utf8
	movq	%r8, -88(%rbp)	# self, self
	.loc 3 991 0
	movq	-64(%rbp), %rax	# beg, tmp103
	movq	%rax, -40(%rbp)	# tmp103, s
	.loc 3 992 0
	movq	$0, -32(%rbp)	#, tokens
	.loc 3 994 0
	movq	-56(%rbp), %rax	# p_state, tmp104
	movzbl	136(%rax), %eax	# p_state_16(D)->marked_sections, D.15113
	testb	%al, %al	# D.15113
	jne	.L386	#,
	.loc 3 995 0
	movl	$0, %eax	#, D.15112
	jmp	.L387	#
.L386:
	.loc 3 998 0
	jmp	.L388	#
.L389:
	.loc 3 999 0
	addq	$1, -40(%rbp)	#, s
.L388:
	.loc 3 998 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp105
	movzbl	(%rax), %eax	# *s_2, D.15113
	movzbl	%al, %eax	# D.15114, D.15115
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15114
	movzbl	%al, %eax	# D.15114, D.15115
	andl	$1, %eax	#, D.15115
	testl	%eax, %eax	# D.15115
	jne	.L389	#,
	.loc 3 1000 0
	jmp	.L390	#
.L399:
.LBB47:
	.loc 3 1001 0
	movq	-40(%rbp), %rax	# s, tmp107
	movq	%rax, -24(%rbp)	# tmp107, name_start
	.loc 3 1004 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1005 0
	jmp	.L391	#
.L392:
	.loc 3 1006 0
	addq	$1, -40(%rbp)	#, s
.L391:
	.loc 3 1005 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp108
	movzbl	(%rax), %eax	# *s_3, D.15113
	movzbl	%al, %eax	# D.15114, D.15115
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15114
	movzbl	%al, %eax	# D.15114, D.15115
	andl	$4, %eax	#, D.15115
	testl	%eax, %eax	# D.15115
	jne	.L392	#,
	.loc 3 1007 0
	movq	-40(%rbp), %rax	# s, tmp110
	movq	%rax, -16(%rbp)	# tmp110, name_end
	.loc 3 1008 0
	jmp	.L393	#
.L394:
	.loc 3 1009 0
	addq	$1, -40(%rbp)	#, s
.L393:
	.loc 3 1008 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp111
	movzbl	(%rax), %eax	# *s_4, D.15113
	movzbl	%al, %eax	# D.15114, D.15115
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15114
	movzbl	%al, %eax	# D.15114, D.15115
	andl	$1, %eax	#, D.15115
	testl	%eax, %eax	# D.15115
	jne	.L394	#,
	.loc 3 1010 0
	movq	-40(%rbp), %rax	# s, tmp113
	cmpq	-72(%rbp), %rax	# end, tmp113
	jne	.L395	#,
	.loc 3 1011 0
	jmp	.L396	#
.L395:
	.loc 3 1013 0
	cmpq	$0, -32(%rbp)	#, tokens
	jne	.L397	#,
	.loc 3 1014 0
	call	Perl_newAV	#
	movq	%rax, -32(%rbp)	# tmp114, tokens
.L397:
	.loc 3 1015 0
	movq	-16(%rbp), %rdx	# name_end, name_end.241
	movq	-24(%rbp), %rax	# name_start, name_start.242
	subq	%rax, %rdx	# name_start.242, D.15116
	movq	%rdx, %rax	# D.15116, D.15116
	movq	%rax, %rdx	# D.15116, D.15117
	movq	-24(%rbp), %rax	# name_start, tmp115
	movq	%rdx, %rsi	# D.15117,
	movq	%rax, %rdi	# tmp115,
	call	Perl_newSVpvn	#
	movq	%rax, -8(%rbp)	# tmp116, name
	.loc 3 1016 0
	cmpl	$0, -76(%rbp)	#, utf8
	je	.L398	#,
	.loc 3 1017 0
	movq	-8(%rbp), %rax	# name, tmp117
	movl	12(%rax), %eax	# name_55->sv_flags, D.15118
	orl	$536870912, %eax	#, D.15118
	movl	%eax, %edx	# D.15118, D.15118
	movq	-8(%rbp), %rax	# name, tmp118
	movl	%edx, 12(%rax)	# D.15118, name_55->sv_flags
.L398:
	.loc 3 1018 0
	movq	-8(%rbp), %rax	# name, tmp119
	movq	%rax, %rdi	# tmp119,
	call	sv_lower	#
	movq	%rax, %rdx	#, D.15119
	movq	-32(%rbp), %rax	# tokens, tmp120
	movq	%rdx, %rsi	# D.15119,
	movq	%rax, %rdi	# tmp120,
	call	Perl_av_push	#
.L390:
.LBE47:
	.loc 3 1000 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp121
	movzbl	(%rax), %eax	# *s_5, D.15113
	movzbl	%al, %eax	# D.15114, D.15115
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15114
	movzbl	%al, %eax	# D.15114, D.15115
	andl	$2, %eax	#, D.15115
	testl	%eax, %eax	# D.15115
	jne	.L399	#,
	.loc 3 1020 0
	movq	-40(%rbp), %rax	# s, tmp123
	movzbl	(%rax), %eax	# *s_5, D.15113
	cmpb	$45, %al	#, D.15113
	jne	.L400	#,
	.loc 3 1021 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1022 0
	movq	-40(%rbp), %rax	# s, tmp124
	movzbl	(%rax), %eax	# *s_61, D.15113
	cmpb	$45, %al	#, D.15113
	jne	.L401	#,
	.loc 3 1024 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1026 0
	jmp	.L402	#
.L404:
	.loc 3 1027 0
	addq	$1, -40(%rbp)	#, s
.L402:
	.loc 3 1026 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp125
	cmpq	-72(%rbp), %rax	# end, tmp125
	jae	.L403	#,
	.loc 3 1026 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# s, tmp126
	movzbl	(%rax), %eax	# *s_7, D.15113
	cmpb	$45, %al	#, D.15113
	jne	.L404	#,
.L403:
	.loc 3 1028 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp127
	cmpq	-72(%rbp), %rax	# end, tmp127
	jne	.L405	#,
	.loc 3 1029 0
	jmp	.L396	#
.L405:
	.loc 3 1031 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1032 0
	movq	-40(%rbp), %rax	# s, tmp128
	movzbl	(%rax), %eax	# *s_66, D.15113
	cmpb	$45, %al	#, D.15113
	jne	.L406	#,
	.loc 3 1033 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1035 0
	jmp	.L386	#
.L406:
	.loc 3 1037 0
	nop
	.loc 3 1026 0
	jmp	.L402	#
.L401:
	.loc 3 1040 0
	jmp	.L408	#
.L400:
	.loc 3 1043 0
	movq	-40(%rbp), %rax	# s, tmp129
	movzbl	(%rax), %eax	# *s_5, D.15113
	cmpb	$91, %al	#, D.15113
	jne	.L408	#,
	.loc 3 1044 0
	addq	$1, -40(%rbp)	#, s
	.loc 3 1047 0
	cmpq	$0, -32(%rbp)	#, tokens
	jne	.L409	#,
	.loc 3 1048 0
	call	Perl_newAV	#
	movq	%rax, -32(%rbp)	# tmp130, tokens
	.loc 3 1049 0
	movl	$7, %esi	#,
	movl	$.LC45, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.15119
	movq	-32(%rbp), %rax	# tokens, tmp131
	movq	%rdx, %rsi	# D.15119,
	movq	%rax, %rdi	# tmp131,
	call	Perl_av_push	#
.L409:
	.loc 3 1052 0
	movq	-56(%rbp), %rax	# p_state, tmp132
	movq	128(%rax), %rax	# p_state_16(D)->ms_stack, D.15120
	testq	%rax, %rax	# D.15120
	jne	.L410	#,
	.loc 3 1053 0
	call	Perl_newAV	#
	movq	-56(%rbp), %rdx	# p_state, tmp133
	movq	%rax, 128(%rdx)	# D.15120, p_state_16(D)->ms_stack
.L410:
	.loc 3 1054 0
	movq	-32(%rbp), %rax	# tokens, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdx	#, D.15119
	movq	-56(%rbp), %rax	# p_state, tmp135
	movq	128(%rax), %rax	# p_state_16(D)->ms_stack, D.15120
	movq	%rdx, %rsi	# D.15119,
	movq	%rax, %rdi	# D.15120,
	call	Perl_av_push	#
	.loc 3 1055 0
	movq	-56(%rbp), %rax	# p_state, tmp136
	movq	%rax, %rdi	# tmp136,
	call	marked_section_update	#
	.loc 3 1056 0
	movl	-76(%rbp), %edi	# utf8, tmp137
	movq	-40(%rbp), %rcx	# s, tmp138
	movq	-64(%rbp), %rdx	# beg, tmp139
	movq	-56(%rbp), %rax	# p_state, tmp140
	movq	-88(%rbp), %rsi	# self, tmp141
	movq	%rsi, 8(%rsp)	# tmp141,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp137,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	report_event	#
	.loc 3 1057 0
	movq	-40(%rbp), %rax	# s, D.15112
	jmp	.L387	#
.L408:
	.loc 3 1061 0
	movq	-32(%rbp), %rax	# tokens, tmp142
	movq	%rax, %rdi	# tmp142,
	call	Perl_sv_free	#
	.loc 3 1062 0
	movl	$0, %eax	#, D.15112
	jmp	.L387	#
.L396:
	.loc 3 1065 0
	movq	-32(%rbp), %rax	# tokens, tmp143
	movq	%rax, %rdi	# tmp143,
	call	Perl_sv_free	#
	.loc 3 1066 0
	movq	-64(%rbp), %rax	# beg, D.15112
.L387:
	.loc 3 1067 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	parse_marked_section, .-parse_marked_section
	.section	.rodata
.LC49:
	.string	"DOCTYPE"
.LC50:
	.string	"ENTITY"
	.text
	.type	parse_decl, @function
parse_decl:
.LFB16:
	.loc 3 1073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
	movq	%rdi, -216(%rbp)	# p_state, p_state
	movq	%rsi, -224(%rbp)	# beg, beg
	movq	%rdx, -232(%rbp)	# end, end
	movl	%ecx, -236(%rbp)	# utf8, utf8
	movq	%r8, -248(%rbp)	# self, self
	.loc 3 1074 0
	movq	-224(%rbp), %rax	# beg, tmp188
	addq	$2, %rax	#, tmp187
	movq	%rax, -192(%rbp)	# tmp187, s
	.loc 3 1076 0
	movq	-192(%rbp), %rax	# s, tmp189
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$45, %al	#, D.15122
	jne	.L412	#,
.LBB48:
	.loc 3 1080 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1081 0
	movq	-192(%rbp), %rax	# s, tmp190
	cmpq	-232(%rbp), %rax	# end, tmp190
	jne	.L413	#,
	.loc 3 1082 0
	movq	-224(%rbp), %rax	# beg, D.15121
	jmp	.L414	#
.L413:
	.loc 3 1084 0
	movq	-192(%rbp), %rax	# s, tmp191
	movzbl	(%rax), %eax	# *s_19, D.15122
	cmpb	$45, %al	#, D.15122
	je	.L415	#,
	.loc 3 1085 0
	jmp	.L416	#
.L415:
	.loc 3 1088 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1090 0
	movq	-248(%rbp), %rdi	# self, tmp192
	movl	-236(%rbp), %ecx	# utf8, tmp193
	movq	-232(%rbp), %rdx	# end, tmp194
	movq	-192(%rbp), %rsi	# s, tmp195
	movq	-216(%rbp), %rax	# p_state, tmp196
	movq	%rdi, %r8	# tmp192,
	movq	%rax, %rdi	# tmp196,
	call	parse_comment	#
	movq	%rax, -184(%rbp)	# tmp197, tmp
	.loc 3 1091 0
	movq	-184(%rbp), %rax	# tmp, tmp198
	cmpq	-192(%rbp), %rax	# s, tmp198
	jne	.L417	#,
	.loc 3 1091 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# beg, iftmp.243
	jmp	.L418	#
.L417:
	.loc 3 1091 0 discriminator 2
	movq	-184(%rbp), %rax	# tmp, iftmp.243
.L418:
	.loc 3 1091 0 discriminator 3
	jmp	.L414	#
.L412:
.LBE48:
	.loc 3 1095 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp199
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$91, %al	#, D.15122
	jne	.L419	#,
.LBB49:
	.loc 3 1098 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1099 0
	movq	-248(%rbp), %rdi	# self, tmp200
	movl	-236(%rbp), %ecx	# utf8, tmp201
	movq	-232(%rbp), %rdx	# end, tmp202
	movq	-192(%rbp), %rsi	# s, tmp203
	movq	-216(%rbp), %rax	# p_state, tmp204
	movq	%rdi, %r8	# tmp200,
	movq	%rax, %rdi	# tmp204,
	call	parse_marked_section	#
	movq	%rax, -176(%rbp)	# tmp205, tmp
	.loc 3 1100 0
	cmpq	$0, -176(%rbp)	#, tmp
	jne	.L420	#,
	.loc 3 1101 0
	jmp	.L416	#
.L420:
	.loc 3 1102 0
	movq	-176(%rbp), %rax	# tmp, tmp206
	cmpq	-192(%rbp), %rax	# s, tmp206
	jne	.L421	#,
	.loc 3 1102 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# beg, iftmp.244
	jmp	.L422	#
.L421:
	.loc 3 1102 0 discriminator 2
	movq	-176(%rbp), %rax	# tmp, iftmp.244
.L422:
	.loc 3 1102 0 discriminator 3
	jmp	.L414	#
.L419:
.LBE49:
	.loc 3 1106 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp207
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$62, %al	#, D.15122
	jne	.L423	#,
.LBB50:
	.loc 3 1109 0
	movq	-192(%rbp), %rax	# s, tmp208
	movq	%rax, -128(%rbp)	# tmp208, token.beg
	.loc 3 1110 0
	movq	-192(%rbp), %rax	# s, tmp209
	movq	%rax, -120(%rbp)	# tmp209, token.end
	.loc 3 1111 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1112 0
	leaq	-128(%rbp), %r8	#, tmp210
	movl	-236(%rbp), %edi	# utf8, tmp211
	movq	-192(%rbp), %rcx	# s, tmp212
	movq	-224(%rbp), %rdx	# beg, tmp213
	movq	-216(%rbp), %rax	# p_state, tmp214
	movq	-248(%rbp), %rsi	# self, tmp215
	movq	%rsi, 8(%rsp)	# tmp215,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp210,
	movl	%edi, %r8d	# tmp211,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	report_event	#
	.loc 3 1113 0
	movq	-192(%rbp), %rax	# s, D.15121
	jmp	.L414	#
.L423:
.LBE50:
	.loc 3 1116 0
	movq	-192(%rbp), %rax	# s, tmp216
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$64, %al	#, D.15122
	jle	.L424	#,
	.loc 3 1116 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp217
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$90, %al	#, D.15122
	jle	.L425	#,
.L424:
	.loc 3 1116 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp218
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$96, %al	#, D.15122
	jle	.L416	#,
	.loc 3 1116 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp219
	movzbl	(%rax), %eax	# *s_17, D.15122
	cmpb	$122, %al	#, D.15122
	jg	.L416	#,
.L425:
.LBB51:
	.loc 3 1117 0 is_stmt 1
	movl	$8, -208(%rbp)	#, token_lim
	leaq	-128(%rbp), %rax	#, tmp220
	movq	%rax, -200(%rbp)	# tmp220, tokens
	movl	$0, -204(%rbp)	#, num_tokens
	.loc 3 1118 0
	movq	-192(%rbp), %rax	# s, tmp221
	movq	%rax, -168(%rbp)	# tmp221, decl_id
	.loc 3 1121 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1123 0
	jmp	.L426	#
.L428:
	.loc 3 1124 0
	addq	$1, -192(%rbp)	#, s
.L426:
	.loc 3 1123 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp222
	cmpq	-232(%rbp), %rax	# end, tmp222
	jae	.L427	#,
	.loc 3 1123 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp223
	movzbl	(%rax), %eax	# *s_1, D.15122
	movzbl	%al, %eax	# D.15123, D.15124
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15123
	movzbl	%al, %eax	# D.15123, D.15124
	andl	$4, %eax	#, D.15124
	testl	%eax, %eax	# D.15124
	jne	.L428	#,
.L427:
	.loc 3 1125 0 is_stmt 1
	movq	-192(%rbp), %rdx	# s, s.245
	movq	-168(%rbp), %rax	# decl_id, decl_id.246
	subq	%rax, %rdx	# decl_id.246, D.15125
	movq	%rdx, %rax	# D.15125, D.15125
	movq	%rax, -160(%rbp)	# D.15125, decl_id_len
	.loc 3 1128 0
	cmpq	$7, -160(%rbp)	#, decl_id_len
	jne	.L429	#,
	.loc 3 1129 0 discriminator 2
	movq	-216(%rbp), %rax	# p_state, tmp225
	movzbl	140(%rax), %eax	# p_state_24(D)->xml_mode, D.15122
	testb	%al, %al	# D.15122
	sete	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	movq	-168(%rbp), %rax	# decl_id, tmp226
	movl	%edx, %ecx	# D.15124,
	movl	$7, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	strnEQx	#
	.loc 3 1128 0 discriminator 2
	testl	%eax, %eax	# D.15124
	jne	.L430	#,
.L429:
	.loc 3 1128 0 is_stmt 0 discriminator 1
	cmpq	$6, -160(%rbp)	#, decl_id_len
	jne	.L431	#,
	.loc 3 1131 0 is_stmt 1
	movq	-216(%rbp), %rax	# p_state, tmp227
	movzbl	140(%rax), %eax	# p_state_24(D)->xml_mode, D.15122
	testb	%al, %al	# D.15122
	sete	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	movq	-168(%rbp), %rax	# decl_id, tmp228
	movl	%edx, %ecx	# D.15124,
	movl	$6, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	strnEQx	#
	.loc 3 1130 0
	testl	%eax, %eax	# D.15124
	je	.L431	#,
.L430:
.LBB52:
	.loc 3 1139 0
	addl	$1, -204(%rbp)	#, num_tokens
	movl	-208(%rbp), %eax	# token_lim, token_lim.247
	cmpl	%eax, -204(%rbp)	# token_lim.247, num_tokens
	jne	.L432	#,
	.loc 3 1139 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rdx	# tokens, tokens.248
	leaq	-128(%rbp), %rax	#, tmp229
	cmpq	%rax, %rdx	# tmp229, tokens.248
	setne	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	leaq	-208(%rbp), %rcx	#, tmp230
	leaq	-200(%rbp), %rax	#, tmp231
	movq	%rcx, %rsi	# tmp230,
	movq	%rax, %rdi	# tmp231,
	call	tokens_grow	#
.L432:
	.loc 3 1139 0 discriminator 2
	movq	-200(%rbp), %rax	# tokens, tokens.249
	movl	-204(%rbp), %edx	# num_tokens, tmp232
	movslq	%edx, %rdx	# tmp232, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.249, D.15129
	movq	-168(%rbp), %rax	# decl_id, tmp233
	movq	%rax, (%rdx)	# tmp233, _75->beg
	movq	-200(%rbp), %rax	# tokens, tokens.250
	movl	-204(%rbp), %edx	# num_tokens, tmp234
	movslq	%edx, %rdx	# tmp234, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.250, D.15129
	movq	-192(%rbp), %rax	# s, tmp235
	movq	%rax, 8(%rdx)	# tmp235, _80->end
.LBE52:
	.loc 3 1141 0 is_stmt 1 discriminator 2
	jmp	.L433	#
.L465:
	.loc 3 1142 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1143 0
	jmp	.L434	#
.L436:
	.loc 3 1144 0
	addq	$1, -192(%rbp)	#, s
.L434:
	.loc 3 1143 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp236
	cmpq	-232(%rbp), %rax	# end, tmp236
	jae	.L435	#,
	.loc 3 1143 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp237
	movzbl	(%rax), %eax	# *s_2, D.15122
	movzbl	%al, %eax	# D.15123, D.15124
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15123
	movzbl	%al, %eax	# D.15123, D.15124
	andl	$1, %eax	#, D.15124
	testl	%eax, %eax	# D.15124
	jne	.L436	#,
.L435:
	.loc 3 1146 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp239
	cmpq	-232(%rbp), %rax	# end, tmp239
	jne	.L437	#,
	.loc 3 1147 0
	jmp	.L438	#
.L437:
	.loc 3 1149 0
	movq	-192(%rbp), %rax	# s, tmp240
	movzbl	(%rax), %eax	# *s_2, D.15122
	cmpb	$34, %al	#, D.15122
	je	.L439	#,
	.loc 3 1149 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp241
	movzbl	(%rax), %eax	# *s_2, D.15122
	cmpb	$39, %al	#, D.15122
	jne	.L440	#,
.L439:
.LBB53:
	.loc 3 1150 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp242
	movq	%rax, -136(%rbp)	# tmp242, str_beg
	.loc 3 1151 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1152 0
	jmp	.L441	#
.L443:
	.loc 3 1153 0
	addq	$1, -192(%rbp)	#, s
.L441:
	.loc 3 1152 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp243
	cmpq	-232(%rbp), %rax	# end, tmp243
	jae	.L442	#,
	.loc 3 1152 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp244
	movzbl	(%rax), %edx	# *s_3, D.15122
	movq	-136(%rbp), %rax	# str_beg, tmp245
	movzbl	(%rax), %eax	# *str_beg_150, D.15122
	cmpb	%al, %dl	# D.15122, D.15122
	jne	.L443	#,
.L442:
	.loc 3 1154 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp246
	cmpq	-232(%rbp), %rax	# end, tmp246
	jne	.L444	#,
	.loc 3 1155 0
	jmp	.L438	#
.L444:
	.loc 3 1156 0
	addq	$1, -192(%rbp)	#, s
.LBB54:
	.loc 3 1157 0
	addl	$1, -204(%rbp)	#, num_tokens
	movl	-208(%rbp), %eax	# token_lim, token_lim.251
	cmpl	%eax, -204(%rbp)	# token_lim.251, num_tokens
	jne	.L445	#,
	.loc 3 1157 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rdx	# tokens, tokens.252
	leaq	-128(%rbp), %rax	#, tmp247
	cmpq	%rax, %rdx	# tmp247, tokens.252
	setne	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	leaq	-208(%rbp), %rcx	#, tmp248
	leaq	-200(%rbp), %rax	#, tmp249
	movq	%rcx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	tokens_grow	#
.L445:
	.loc 3 1157 0 discriminator 2
	movq	-200(%rbp), %rax	# tokens, tokens.253
	movl	-204(%rbp), %edx	# num_tokens, tmp250
	movslq	%edx, %rdx	# tmp250, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.253, D.15129
	movq	-136(%rbp), %rax	# str_beg, tmp251
	movq	%rax, (%rdx)	# tmp251, _165->beg
	movq	-200(%rbp), %rax	# tokens, tokens.254
	movl	-204(%rbp), %edx	# num_tokens, tmp252
	movslq	%edx, %rdx	# tmp252, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.254, D.15129
	movq	-192(%rbp), %rax	# s, tmp253
	movq	%rax, 8(%rdx)	# tmp253, _170->end
.LBE54:
.LBE53:
	.loc 3 1149 0 is_stmt 1 discriminator 2
	jmp	.L433	#
.L440:
	.loc 3 1159 0
	movq	-192(%rbp), %rax	# s, tmp254
	movzbl	(%rax), %eax	# *s_2, D.15122
	cmpb	$45, %al	#, D.15122
	jne	.L446	#,
.LBB55:
	.loc 3 1161 0
	movq	-192(%rbp), %rax	# s, tmp255
	movq	%rax, -152(%rbp)	# tmp255, com_beg
	.loc 3 1162 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1163 0
	movq	-192(%rbp), %rax	# s, tmp256
	cmpq	-232(%rbp), %rax	# end, tmp256
	jne	.L447	#,
	.loc 3 1164 0
	jmp	.L438	#
.L447:
	.loc 3 1165 0
	movq	-192(%rbp), %rax	# s, tmp257
	movzbl	(%rax), %eax	# *s_100, D.15122
	cmpb	$45, %al	#, D.15122
	je	.L448	#,
	.loc 3 1166 0
	jmp	.L431	#
.L448:
	.loc 3 1167 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1170 0
	jmp	.L449	#
.L451:
	.loc 3 1171 0
	addq	$1, -192(%rbp)	#, s
.L449:
	.loc 3 1170 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp258
	cmpq	-232(%rbp), %rax	# end, tmp258
	jae	.L450	#,
	.loc 3 1170 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp259
	movzbl	(%rax), %eax	# *s_5, D.15122
	cmpb	$45, %al	#, D.15122
	jne	.L451	#,
.L450:
	.loc 3 1172 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp260
	cmpq	-232(%rbp), %rax	# end, tmp260
	jne	.L452	#,
	.loc 3 1173 0
	jmp	.L438	#
.L452:
	.loc 3 1174 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1175 0
	movq	-192(%rbp), %rax	# s, tmp261
	cmpq	-232(%rbp), %rax	# end, tmp261
	jne	.L453	#,
	.loc 3 1176 0
	jmp	.L438	#
.L453:
	.loc 3 1177 0
	movq	-192(%rbp), %rax	# s, tmp262
	movzbl	(%rax), %eax	# *s_105, D.15122
	cmpb	$45, %al	#, D.15122
	jne	.L454	#,
	.loc 3 1178 0
	addq	$1, -192(%rbp)	#, s
.LBB56:
	.loc 3 1179 0
	addl	$1, -204(%rbp)	#, num_tokens
	movl	-208(%rbp), %eax	# token_lim, token_lim.255
	cmpl	%eax, -204(%rbp)	# token_lim.255, num_tokens
	jne	.L455	#,
	.loc 3 1179 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rdx	# tokens, tokens.256
	leaq	-128(%rbp), %rax	#, tmp263
	cmpq	%rax, %rdx	# tmp263, tokens.256
	setne	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	leaq	-208(%rbp), %rcx	#, tmp264
	leaq	-200(%rbp), %rax	#, tmp265
	movq	%rcx, %rsi	# tmp264,
	movq	%rax, %rdi	# tmp265,
	call	tokens_grow	#
.L455:
	.loc 3 1179 0 discriminator 2
	movq	-200(%rbp), %rax	# tokens, tokens.257
	movl	-204(%rbp), %edx	# num_tokens, tmp266
	movslq	%edx, %rdx	# tmp266, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.257, D.15129
	movq	-152(%rbp), %rax	# com_beg, tmp267
	movq	%rax, (%rdx)	# tmp267, _117->beg
	movq	-200(%rbp), %rax	# tokens, tokens.258
	movl	-204(%rbp), %edx	# num_tokens, tmp268
	movslq	%edx, %rdx	# tmp268, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.258, D.15129
	movq	-192(%rbp), %rax	# s, tmp269
	movq	%rax, 8(%rdx)	# tmp269, _122->end
.LBE56:
	.loc 3 1180 0 is_stmt 1 discriminator 2
	nop
	jmp	.L433	#
.L454:
	.loc 3 1182 0
	nop
	.loc 3 1170 0
	jmp	.L449	#
.L446:
.LBE55:
	.loc 3 1184 0
	movq	-192(%rbp), %rax	# s, tmp270
	movzbl	(%rax), %eax	# *s_2, D.15122
	cmpb	$62, %al	#, D.15122
	je	.L458	#,
.LBB57:
	.loc 3 1186 0
	movq	-192(%rbp), %rax	# s, tmp271
	movq	%rax, -144(%rbp)	# tmp271, word_beg
	.loc 3 1187 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1188 0
	jmp	.L459	#
.L461:
	.loc 3 1189 0
	addq	$1, -192(%rbp)	#, s
.L459:
	.loc 3 1188 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp272
	cmpq	-232(%rbp), %rax	# end, tmp272
	jae	.L460	#,
	.loc 3 1188 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp273
	movzbl	(%rax), %eax	# *s_6, D.15122
	movzbl	%al, %eax	# D.15123, D.15124
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15123
	movzbl	%al, %eax	# D.15123, D.15124
	andl	$8, %eax	#, D.15124
	testl	%eax, %eax	# D.15124
	jne	.L461	#,
.L460:
	.loc 3 1190 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp275
	cmpq	-232(%rbp), %rax	# end, tmp275
	jne	.L462	#,
	.loc 3 1191 0
	jmp	.L438	#
.L462:
.LBB58:
	.loc 3 1192 0
	addl	$1, -204(%rbp)	#, num_tokens
	movl	-208(%rbp), %eax	# token_lim, token_lim.259
	cmpl	%eax, -204(%rbp)	# token_lim.259, num_tokens
	jne	.L463	#,
	.loc 3 1192 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rdx	# tokens, tokens.260
	leaq	-128(%rbp), %rax	#, tmp276
	cmpq	%rax, %rdx	# tmp276, tokens.260
	setne	%al	#, D.15126
	movzbl	%al, %edx	# D.15126, D.15124
	leaq	-208(%rbp), %rcx	#, tmp277
	leaq	-200(%rbp), %rax	#, tmp278
	movq	%rcx, %rsi	# tmp277,
	movq	%rax, %rdi	# tmp278,
	call	tokens_grow	#
.L463:
	.loc 3 1192 0 discriminator 2
	movq	-200(%rbp), %rax	# tokens, tokens.261
	movl	-204(%rbp), %edx	# num_tokens, tmp279
	movslq	%edx, %rdx	# tmp279, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.261, D.15129
	movq	-144(%rbp), %rax	# word_beg, tmp280
	movq	%rax, (%rdx)	# tmp280, _143->beg
	movq	-200(%rbp), %rax	# tokens, tokens.262
	movl	-204(%rbp), %edx	# num_tokens, tmp281
	movslq	%edx, %rdx	# tmp281, D.15127
	salq	$4, %rdx	#, D.15127
	subq	$16, %rdx	#, D.15128
	addq	%rax, %rdx	# tokens.262, D.15129
	movq	-192(%rbp), %rax	# s, tmp282
	movq	%rax, 8(%rdx)	# tmp282, _148->end
.LBE58:
.LBE57:
	jmp	.L433	#
.L458:
	.loc 3 1195 0 is_stmt 1
	jmp	.L464	#
.L433:
	.loc 3 1141 0 discriminator 1
	movq	-192(%rbp), %rax	# s, tmp283
	cmpq	-232(%rbp), %rax	# end, tmp283
	jae	.L464	#,
	.loc 3 1141 0 is_stmt 0 discriminator 2
	movq	-192(%rbp), %rax	# s, tmp284
	movzbl	(%rax), %eax	# *s_7, D.15122
	movzbl	%al, %eax	# D.15123, D.15124
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15123
	movzbl	%al, %eax	# D.15123, D.15124
	andl	$1, %eax	#, D.15124
	testl	%eax, %eax	# D.15124
	jne	.L465	#,
.L464:
	.loc 3 1199 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, tmp286
	cmpq	-232(%rbp), %rax	# end, tmp286
	jne	.L466	#,
	.loc 3 1200 0
	jmp	.L438	#
.L466:
	.loc 3 1201 0
	movq	-192(%rbp), %rax	# s, tmp287
	movzbl	(%rax), %eax	# *s_8, D.15122
	cmpb	$62, %al	#, D.15122
	jne	.L431	#,
	.loc 3 1202 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1203 0
	movq	-200(%rbp), %r8	# tokens, tokens.263
	movl	-236(%rbp), %edi	# utf8, tmp288
	movq	-192(%rbp), %rcx	# s, tmp289
	movq	-224(%rbp), %rdx	# beg, tmp290
	movq	-216(%rbp), %rax	# p_state, tmp291
	movq	-248(%rbp), %rsi	# self, tmp292
	movq	%rsi, 8(%rsp)	# tmp292,
	movl	-204(%rbp), %esi	# num_tokens, tmp293
	movl	%esi, (%rsp)	# tmp293,
	movq	%r8, %r9	# tokens.263,
	movl	%edi, %r8d	# tmp288,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	report_event	#
	.loc 3 1204 0
	movq	-200(%rbp), %rdx	# tokens, tokens.264
	leaq	-128(%rbp), %rax	#, tmp294
	cmpq	%rax, %rdx	# tmp294, tokens.264
	je	.L467	#,
	.loc 3 1204 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# tokens, tokens.265
	movq	%rax, %rdi	# tokens.265,
	call	Perl_safesysfree	#
.L467:
	.loc 3 1205 0 is_stmt 1
	movq	-192(%rbp), %rax	# s, D.15121
	jmp	.L414	#
.L431:
	.loc 3 1209 0
	movq	-200(%rbp), %rdx	# tokens, tokens.266
	leaq	-128(%rbp), %rax	#, tmp295
	cmpq	%rax, %rdx	# tmp295, tokens.266
	je	.L416	#,
	.loc 3 1209 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# tokens, tokens.267
	movq	%rax, %rdi	# tokens.267,
	call	Perl_safesysfree	#
	.loc 3 1210 0 is_stmt 1 discriminator 1
	jmp	.L416	#
.L438:
	.loc 3 1213 0
	movq	-200(%rbp), %rdx	# tokens, tokens.268
	leaq	-128(%rbp), %rax	#, tmp296
	cmpq	%rax, %rdx	# tmp296, tokens.268
	je	.L470	#,
	.loc 3 1213 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# tokens, tokens.269
	movq	%rax, %rdi	# tokens.269,
	call	Perl_safesysfree	#
.L470:
	.loc 3 1214 0 is_stmt 1
	movq	-224(%rbp), %rax	# beg, D.15121
	jmp	.L414	#
.L416:
.LBE51:
	.loc 3 1219 0
	movq	-216(%rbp), %rax	# p_state, tmp297
	movzbl	137(%rax), %eax	# p_state_24(D)->strict_comment, D.15122
	testb	%al, %al	# D.15122
	je	.L471	#,
	.loc 3 1220 0
	movl	$0, %eax	#, D.15121
	jmp	.L414	#
.L471:
	.loc 3 1223 0
	movq	-232(%rbp), %rdx	# end, tmp298
	movq	-192(%rbp), %rax	# s, tmp299
	movq	%rdx, %rsi	# tmp298,
	movq	%rax, %rdi	# tmp299,
	call	skip_until_gt	#
	movq	%rax, -192(%rbp)	# tmp300, s
	.loc 3 1224 0
	movq	-192(%rbp), %rax	# s, tmp301
	cmpq	-232(%rbp), %rax	# end, tmp301
	jae	.L472	#,
.LBB59:
	.loc 3 1226 0
	movq	-224(%rbp), %rax	# beg, tmp302
	addq	$2, %rax	#, D.15121
	movq	%rax, -128(%rbp)	# D.15121, token.beg
	.loc 3 1227 0
	movq	-192(%rbp), %rax	# s, tmp303
	movq	%rax, -120(%rbp)	# tmp303, token.end
	.loc 3 1228 0
	addq	$1, -192(%rbp)	#, s
	.loc 3 1229 0
	leaq	-128(%rbp), %r8	#, tmp304
	movl	-236(%rbp), %edi	# utf8, tmp305
	movq	-192(%rbp), %rcx	# s, tmp306
	movq	-224(%rbp), %rdx	# beg, tmp307
	movq	-216(%rbp), %rax	# p_state, tmp308
	movq	-248(%rbp), %rsi	# self, tmp309
	movq	%rsi, 8(%rsp)	# tmp309,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp304,
	movl	%edi, %r8d	# tmp305,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp308,
	call	report_event	#
	.loc 3 1230 0
	movq	-192(%rbp), %rax	# s, D.15121
	jmp	.L414	#
.L472:
.LBE59:
	.loc 3 1233 0
	movq	-224(%rbp), %rax	# beg, D.15121
.L414:
	.loc 3 1235 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	parse_decl, .-parse_decl
	.type	parse_start, @function
parse_start:
.LFB17:
	.loc 3 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$416, %rsp	#,
	movq	%rdi, -360(%rbp)	# p_state, p_state
	movq	%rsi, -368(%rbp)	# beg, beg
	movq	%rdx, -376(%rbp)	# end, end
	movl	%ecx, -380(%rbp)	# utf8, utf8
	movq	%r8, -392(%rbp)	# self, self
	.loc 3 1241 0
	movq	-368(%rbp), %rax	# beg, tmp239
	movq	%rax, -312(%rbp)	# tmp239, s
	.loc 3 1242 0
	movl	$0, -340(%rbp)	#, empty_tag
	.loc 3 1243 0
	movl	$16, -344(%rbp)	#, token_lim
	leaq	-256(%rbp), %rax	#, tmp240
	movq	%rax, -320(%rbp)	# tmp240, tokens
	movl	$0, -336(%rbp)	#, num_tokens
	.loc 3 1248 0
	movq	-360(%rbp), %rax	# p_state, tmp241
	movzbl	138(%rax), %eax	# p_state_30(D)->strict_names, D.15134
	testb	%al, %al	# D.15134
	jne	.L474	#,
	.loc 3 1248 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# p_state, tmp242
	movzbl	140(%rax), %eax	# p_state_30(D)->xml_mode, D.15134
	testb	%al, %al	# D.15134
	je	.L475	#,
.L474:
	.loc 3 1249 0 is_stmt 1
	movb	$2, -347(%rbp)	#, attr_name_first
	movzbl	-347(%rbp), %eax	# attr_name_first, tmp243
	movb	%al, -345(%rbp)	# tmp243, tag_name_first
	.loc 3 1250 0
	movb	$4, -346(%rbp)	#, attr_name_char
	movzbl	-346(%rbp), %eax	# attr_name_char, tmp244
	movb	%al, -348(%rbp)	# tmp244, tag_name_char
	jmp	.L476	#
.L475:
	.loc 3 1253 0
	movb	$8, -348(%rbp)	#, tag_name_char
	movzbl	-348(%rbp), %eax	# tag_name_char, tmp245
	movb	%al, -345(%rbp)	# tmp245, tag_name_first
	.loc 3 1254 0
	movb	$8, -347(%rbp)	#, attr_name_first
	.loc 3 1255 0
	movb	$16, -346(%rbp)	#, attr_name_char
.L476:
	.loc 3 1258 0
	addq	$2, -312(%rbp)	#, s
	.loc 3 1260 0
	jmp	.L477	#
.L479:
	.loc 3 1261 0
	addq	$1, -312(%rbp)	#, s
.L477:
	.loc 3 1260 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp246
	cmpq	-376(%rbp), %rax	# end, tmp246
	jae	.L478	#,
	.loc 3 1260 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# s, tmp247
	movzbl	(%rax), %eax	# *s_1, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	andb	-348(%rbp), %al	# tag_name_char, D.15135
	testb	%al, %al	# D.15135
	jne	.L479	#,
.L478:
.LBB60:
	.loc 3 1262 0 is_stmt 1
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.270
	cmpl	%eax, -336(%rbp)	# token_lim.270, num_tokens
	jne	.L480	#,
	.loc 3 1262 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.271
	leaq	-256(%rbp), %rax	#, tmp249
	cmpq	%rax, %rdx	# tmp249, tokens.271
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp250
	leaq	-320(%rbp), %rax	#, tmp251
	movq	%rcx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	tokens_grow	#
.L480:
	.loc 3 1262 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.272
	movl	-336(%rbp), %edx	# num_tokens, tmp252
	movslq	%edx, %rdx	# tmp252, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rdx, %rax	# D.15139, D.15140
	movq	-368(%rbp), %rdx	# beg, tmp253
	addq	$1, %rdx	#, D.15133
	movq	%rdx, (%rax)	# D.15133, _58->beg
	movq	-320(%rbp), %rax	# tokens, tokens.273
	movl	-336(%rbp), %edx	# num_tokens, tmp254
	movslq	%edx, %rdx	# tmp254, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.273, D.15140
	movq	-312(%rbp), %rax	# s, tmp255
	movq	%rax, 8(%rdx)	# tmp255, _64->end
.LBE60:
	.loc 3 1264 0 is_stmt 1 discriminator 2
	jmp	.L481	#
.L482:
	.loc 3 1265 0
	addq	$1, -312(%rbp)	#, s
.L481:
	.loc 3 1264 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp256
	movzbl	(%rax), %eax	# *s_2, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	movzbl	%al, %eax	# D.15135, D.15136
	andl	$1, %eax	#, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L482	#,
	.loc 3 1266 0
	movq	-312(%rbp), %rax	# s, tmp258
	cmpq	-376(%rbp), %rax	# end, tmp258
	jne	.L483	#,
	.loc 3 1267 0
	jmp	.L484	#
.L483:
	.loc 3 1269 0
	jmp	.L485	#
.L518:
.LBB61:
	.loc 3 1271 0
	movq	-312(%rbp), %rax	# s, tmp259
	movq	%rax, -288(%rbp)	# tmp259, attr_name_beg
	.loc 3 1273 0
	addq	$1, -312(%rbp)	#, s
	.loc 3 1274 0
	jmp	.L486	#
.L488:
	.loc 3 1275 0
	addq	$1, -312(%rbp)	#, s
.L486:
	.loc 3 1274 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp260
	cmpq	-376(%rbp), %rax	# end, tmp260
	jae	.L487	#,
	.loc 3 1274 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# s, tmp261
	movzbl	(%rax), %eax	# *s_3, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	andb	-346(%rbp), %al	# attr_name_char, D.15135
	testb	%al, %al	# D.15135
	jne	.L488	#,
.L487:
	.loc 3 1276 0 is_stmt 1
	movq	-312(%rbp), %rax	# s, tmp263
	cmpq	-376(%rbp), %rax	# end, tmp263
	jne	.L489	#,
	.loc 3 1277 0
	jmp	.L484	#
.L489:
	.loc 3 1279 0
	movq	-312(%rbp), %rax	# s, tmp264
	movq	%rax, -280(%rbp)	# tmp264, attr_name_end
.LBB62:
	.loc 3 1280 0
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.274
	cmpl	%eax, -336(%rbp)	# token_lim.274, num_tokens
	jne	.L490	#,
	.loc 3 1280 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.275
	leaq	-256(%rbp), %rax	#, tmp265
	cmpq	%rax, %rdx	# tmp265, tokens.275
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp266
	leaq	-320(%rbp), %rax	#, tmp267
	movq	%rcx, %rsi	# tmp266,
	movq	%rax, %rdi	# tmp267,
	call	tokens_grow	#
.L490:
	.loc 3 1280 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.276
	movl	-336(%rbp), %edx	# num_tokens, tmp268
	movslq	%edx, %rdx	# tmp268, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.276, D.15140
	movq	-288(%rbp), %rax	# attr_name_beg, tmp269
	movq	%rax, (%rdx)	# tmp269, _96->beg
	movq	-320(%rbp), %rax	# tokens, tokens.277
	movl	-336(%rbp), %edx	# num_tokens, tmp270
	movslq	%edx, %rdx	# tmp270, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.277, D.15140
	movq	-280(%rbp), %rax	# attr_name_end, tmp271
	movq	%rax, 8(%rdx)	# tmp271, _101->end
.LBE62:
	.loc 3 1282 0 is_stmt 1 discriminator 2
	jmp	.L491	#
.L492:
	.loc 3 1283 0
	addq	$1, -312(%rbp)	#, s
.L491:
	.loc 3 1282 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp272
	movzbl	(%rax), %eax	# *s_4, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	movzbl	%al, %eax	# D.15135, D.15136
	andl	$1, %eax	#, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L492	#,
	.loc 3 1284 0
	movq	-312(%rbp), %rax	# s, tmp274
	cmpq	-376(%rbp), %rax	# end, tmp274
	jne	.L493	#,
	.loc 3 1285 0
	jmp	.L484	#
.L493:
	.loc 3 1287 0
	movq	-312(%rbp), %rax	# s, tmp275
	movzbl	(%rax), %eax	# *s_4, D.15134
	cmpb	$61, %al	#, D.15134
	jne	.L494	#,
	.loc 3 1289 0
	addq	$1, -312(%rbp)	#, s
	.loc 3 1290 0
	jmp	.L495	#
.L496:
	.loc 3 1291 0
	addq	$1, -312(%rbp)	#, s
.L495:
	.loc 3 1290 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp276
	movzbl	(%rax), %eax	# *s_5, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	movzbl	%al, %eax	# D.15135, D.15136
	andl	$1, %eax	#, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L496	#,
	.loc 3 1292 0
	movq	-312(%rbp), %rax	# s, tmp278
	cmpq	-376(%rbp), %rax	# end, tmp278
	jne	.L497	#,
	.loc 3 1293 0
	jmp	.L484	#
.L497:
	.loc 3 1294 0
	movq	-312(%rbp), %rax	# s, tmp279
	movzbl	(%rax), %eax	# *s_5, D.15134
	cmpb	$62, %al	#, D.15134
	jne	.L498	#,
.LBB63:
	.loc 3 1296 0
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.278
	cmpl	%eax, -336(%rbp)	# token_lim.278, num_tokens
	jne	.L499	#,
	.loc 3 1296 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.279
	leaq	-256(%rbp), %rax	#, tmp280
	cmpq	%rax, %rdx	# tmp280, tokens.279
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp281
	leaq	-320(%rbp), %rax	#, tmp282
	movq	%rcx, %rsi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	tokens_grow	#
.L499:
	.loc 3 1296 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.280
	movl	-336(%rbp), %edx	# num_tokens, tmp283
	movslq	%edx, %rdx	# tmp283, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.280, D.15140
	movq	-312(%rbp), %rax	# s, tmp284
	movq	%rax, (%rdx)	# tmp284, _129->beg
	movq	-320(%rbp), %rax	# tokens, tokens.281
	movl	-336(%rbp), %edx	# num_tokens, tmp285
	movslq	%edx, %rdx	# tmp285, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.281, D.15140
	movq	-312(%rbp), %rax	# s, tmp286
	movq	%rax, 8(%rdx)	# tmp286, _134->end
.LBE63:
	.loc 3 1297 0 is_stmt 1 discriminator 2
	jmp	.L500	#
.L498:
	.loc 3 1299 0
	movq	-312(%rbp), %rax	# s, tmp287
	movzbl	(%rax), %eax	# *s_5, D.15134
	cmpb	$34, %al	#, D.15134
	je	.L501	#,
	.loc 3 1299 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp288
	movzbl	(%rax), %eax	# *s_5, D.15134
	cmpb	$39, %al	#, D.15134
	jne	.L502	#,
.L501:
.LBB64:
	.loc 3 1300 0 is_stmt 1
	movq	-312(%rbp), %rax	# s, tmp289
	movq	%rax, -264(%rbp)	# tmp289, str_beg
	.loc 3 1301 0
	addq	$1, -312(%rbp)	#, s
	.loc 3 1302 0
	jmp	.L503	#
.L505:
	.loc 3 1303 0
	addq	$1, -312(%rbp)	#, s
.L503:
	.loc 3 1302 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp290
	cmpq	-376(%rbp), %rax	# end, tmp290
	jae	.L504	#,
	.loc 3 1302 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# s, tmp291
	movzbl	(%rax), %edx	# *s_6, D.15134
	movq	-264(%rbp), %rax	# str_beg, tmp292
	movzbl	(%rax), %eax	# *str_beg_164, D.15134
	cmpb	%al, %dl	# D.15134, D.15134
	jne	.L505	#,
.L504:
	.loc 3 1304 0 is_stmt 1
	movq	-312(%rbp), %rax	# s, tmp293
	cmpq	-376(%rbp), %rax	# end, tmp293
	jne	.L506	#,
	.loc 3 1305 0
	jmp	.L484	#
.L506:
	.loc 3 1306 0
	addq	$1, -312(%rbp)	#, s
.LBB65:
	.loc 3 1307 0
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.282
	cmpl	%eax, -336(%rbp)	# token_lim.282, num_tokens
	jne	.L507	#,
	.loc 3 1307 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.283
	leaq	-256(%rbp), %rax	#, tmp294
	cmpq	%rax, %rdx	# tmp294, tokens.283
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp295
	leaq	-320(%rbp), %rax	#, tmp296
	movq	%rcx, %rsi	# tmp295,
	movq	%rax, %rdi	# tmp296,
	call	tokens_grow	#
.L507:
	.loc 3 1307 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.284
	movl	-336(%rbp), %edx	# num_tokens, tmp297
	movslq	%edx, %rdx	# tmp297, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.284, D.15140
	movq	-264(%rbp), %rax	# str_beg, tmp298
	movq	%rax, (%rdx)	# tmp298, _179->beg
	movq	-320(%rbp), %rax	# tokens, tokens.285
	movl	-336(%rbp), %edx	# num_tokens, tmp299
	movslq	%edx, %rdx	# tmp299, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.285, D.15140
	movq	-312(%rbp), %rax	# s, tmp300
	movq	%rax, 8(%rdx)	# tmp300, _184->end
.LBE65:
.LBE64:
	.loc 3 1299 0 is_stmt 1 discriminator 2
	nop
	.loc 3 1320 0 discriminator 2
	jmp	.L515	#
.L502:
.LBB66:
	.loc 3 1310 0
	movq	-312(%rbp), %rax	# s, tmp301
	movq	%rax, -272(%rbp)	# tmp301, word_start
	.loc 3 1311 0
	jmp	.L509	#
.L512:
	.loc 3 1312 0
	movq	-360(%rbp), %rax	# p_state, tmp302
	movzbl	140(%rax), %eax	# p_state_30(D)->xml_mode, D.15134
	testb	%al, %al	# D.15134
	je	.L510	#,
	.loc 3 1312 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp303
	movzbl	(%rax), %eax	# *s_7, D.15134
	cmpb	$47, %al	#, D.15134
	jne	.L510	#,
	.loc 3 1313 0 is_stmt 1
	jmp	.L511	#
.L510:
	.loc 3 1314 0
	addq	$1, -312(%rbp)	#, s
.L509:
	.loc 3 1311 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp304
	cmpq	-376(%rbp), %rax	# end, tmp304
	jae	.L511	#,
	.loc 3 1311 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# s, tmp305
	movzbl	(%rax), %eax	# *s_7, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	movzbl	%al, %eax	# D.15135, D.15136
	andl	$8, %eax	#, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L512	#,
.L511:
	.loc 3 1316 0 is_stmt 1
	movq	-312(%rbp), %rax	# s, tmp307
	cmpq	-376(%rbp), %rax	# end, tmp307
	jne	.L513	#,
	.loc 3 1317 0
	jmp	.L484	#
.L513:
.LBB67:
	.loc 3 1318 0
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.286
	cmpl	%eax, -336(%rbp)	# token_lim.286, num_tokens
	jne	.L514	#,
	.loc 3 1318 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.287
	leaq	-256(%rbp), %rax	#, tmp308
	cmpq	%rax, %rdx	# tmp308, tokens.287
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp309
	leaq	-320(%rbp), %rax	#, tmp310
	movq	%rcx, %rsi	# tmp309,
	movq	%rax, %rdi	# tmp310,
	call	tokens_grow	#
.L514:
	.loc 3 1318 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.288
	movl	-336(%rbp), %edx	# num_tokens, tmp311
	movslq	%edx, %rdx	# tmp311, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.288, D.15140
	movq	-272(%rbp), %rax	# word_start, tmp312
	movq	%rax, (%rdx)	# tmp312, _157->beg
	movq	-320(%rbp), %rax	# tokens, tokens.289
	movl	-336(%rbp), %edx	# num_tokens, tmp313
	movslq	%edx, %rdx	# tmp313, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rax, %rdx	# tokens.289, D.15140
	movq	-312(%rbp), %rax	# s, tmp314
	movq	%rax, 8(%rdx)	# tmp314, _162->end
.LBE67:
.LBE66:
	.loc 3 1320 0 is_stmt 1 discriminator 2
	jmp	.L515	#
.L516:
	.loc 3 1321 0
	addq	$1, -312(%rbp)	#, s
.L515:
	.loc 3 1320 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp315
	movzbl	(%rax), %eax	# *s_9, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	movzbl	%al, %eax	# D.15135, D.15136
	andl	$1, %eax	#, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L516	#,
	.loc 3 1322 0
	movq	-312(%rbp), %rax	# s, tmp317
	cmpq	-376(%rbp), %rax	# end, tmp317
	jne	.L485	#,
	.loc 3 1323 0
	jmp	.L484	#
.L494:
.LBB68:
	.loc 3 1326 0
	addl	$1, -336(%rbp)	#, num_tokens
	movl	-344(%rbp), %eax	# token_lim, token_lim.290
	cmpl	%eax, -336(%rbp)	# token_lim.290, num_tokens
	jne	.L517	#,
	.loc 3 1326 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rdx	# tokens, tokens.291
	leaq	-256(%rbp), %rax	#, tmp318
	cmpq	%rax, %rdx	# tmp318, tokens.291
	setne	%al	#, D.15137
	movzbl	%al, %edx	# D.15137, D.15136
	leaq	-344(%rbp), %rcx	#, tmp319
	leaq	-320(%rbp), %rax	#, tmp320
	movq	%rcx, %rsi	# tmp319,
	movq	%rax, %rdi	# tmp320,
	call	tokens_grow	#
.L517:
	.loc 3 1326 0 discriminator 2
	movq	-320(%rbp), %rax	# tokens, tokens.292
	movl	-336(%rbp), %edx	# num_tokens, tmp321
	movslq	%edx, %rdx	# tmp321, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rdx, %rax	# D.15139, D.15140
	movq	$0, (%rax)	#, _202->beg
	movq	-320(%rbp), %rax	# tokens, tokens.293
	movl	-336(%rbp), %edx	# num_tokens, tmp322
	movslq	%edx, %rdx	# tmp322, D.15138
	salq	$4, %rdx	#, D.15138
	subq	$16, %rdx	#, D.15139
	addq	%rdx, %rax	# D.15139, D.15140
	movq	$0, 8(%rax)	#, _207->end
.L485:
.LBE68:
.LBE61:
	.loc 3 1269 0 is_stmt 1 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp323
	movzbl	(%rax), %eax	# *s_10, D.15134
	movzbl	%al, %eax	# D.15135, D.15136
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15135
	andb	-347(%rbp), %al	# attr_name_first, D.15135
	testb	%al, %al	# D.15135
	jne	.L518	#,
.L500:
	.loc 3 1330 0
	movq	-360(%rbp), %rax	# p_state, tmp325
	movzbl	140(%rax), %eax	# p_state_30(D)->xml_mode, D.15134
	testb	%al, %al	# D.15134
	je	.L519	#,
	.loc 3 1330 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# s, tmp326
	movzbl	(%rax), %eax	# *s_11, D.15134
	cmpb	$47, %al	#, D.15134
	jne	.L519	#,
	.loc 3 1331 0 is_stmt 1
	addq	$1, -312(%rbp)	#, s
	.loc 3 1332 0
	movq	-312(%rbp), %rax	# s, tmp327
	cmpq	-376(%rbp), %rax	# end, tmp327
	jne	.L520	#,
	.loc 3 1333 0
	jmp	.L484	#
.L520:
	.loc 3 1334 0
	movl	$1, -340(%rbp)	#, empty_tag
.L519:
	.loc 3 1337 0
	movq	-312(%rbp), %rax	# s, tmp328
	movzbl	(%rax), %eax	# *s_12, D.15134
	cmpb	$62, %al	#, D.15134
	jne	.L521	#,
	.loc 3 1338 0
	addq	$1, -312(%rbp)	#, s
	.loc 3 1340 0
	movq	-320(%rbp), %r8	# tokens, tokens.294
	movl	-380(%rbp), %edi	# utf8, tmp329
	movq	-312(%rbp), %rcx	# s, tmp330
	movq	-368(%rbp), %rdx	# beg, tmp331
	movq	-360(%rbp), %rax	# p_state, tmp332
	movq	-392(%rbp), %rsi	# self, tmp333
	movq	%rsi, 8(%rsp)	# tmp333,
	movl	-336(%rbp), %esi	# num_tokens, tmp334
	movl	%esi, (%rsp)	# tmp334,
	movq	%r8, %r9	# tokens.294,
	movl	%edi, %r8d	# tmp329,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp332,
	call	report_event	#
	.loc 3 1341 0
	cmpl	$0, -340(%rbp)	#, empty_tag
	je	.L522	#,
	.loc 3 1342 0
	movq	-320(%rbp), %r8	# tokens, tokens.295
	movl	-380(%rbp), %edi	# utf8, tmp335
	movq	-312(%rbp), %rcx	# s, tmp336
	movq	-312(%rbp), %rdx	# s, tmp337
	movq	-360(%rbp), %rax	# p_state, tmp338
	movq	-392(%rbp), %rsi	# self, tmp339
	movq	%rsi, 8(%rsp)	# tmp339,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tokens.295,
	movl	%edi, %r8d	# tmp335,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp338,
	call	report_event	#
.L522:
	.loc 3 1344 0
	movq	-360(%rbp), %rax	# p_state, tmp340
	movzbl	140(%rax), %eax	# p_state_30(D)->xml_mode, D.15134
	testb	%al, %al	# D.15134
	jne	.L523	#,
.LBB69:
	.loc 3 1348 0
	movq	-320(%rbp), %rax	# tokens, tokens.296
	movq	8(%rax), %rax	# tokens.296_220->end, D.15133
	movq	%rax, %rdx	# D.15133, D.15141
	movq	-320(%rbp), %rax	# tokens, tokens.297
	movq	(%rax), %rax	# tokens.297_223->beg, D.15133
	subq	%rax, %rdx	# D.15141, D.15141
	movq	%rdx, %rax	# D.15141, D.15141
	movl	%eax, -324(%rbp)	# D.15141, tag_len
	.loc 3 1350 0
	movl	$0, -332(%rbp)	#, i
	jmp	.L524	#
.L531:
	.loc 3 1351 0
	movl	-332(%rbp), %eax	# i, tmp342
	movslq	%eax, %rdx	# tmp342, tmp341
	movq	%rdx, %rax	# tmp341, tmp343
	addq	%rax, %rax	# tmp343
	addq	%rdx, %rax	# tmp341, tmp343
	salq	$3, %rax	#, tmp344
	addq	$literal_mode_elem, %rax	#, tmp345
	movl	(%rax), %eax	# literal_mode_elem[i_20].len, D.15136
	cmpl	-324(%rbp), %eax	# tag_len, D.15136
	jne	.L525	#,
.LBB70:
	.loc 3 1353 0
	movq	-368(%rbp), %rax	# beg, tmp349
	addq	$1, %rax	#, tmp348
	movq	%rax, -304(%rbp)	# tmp348, s
	.loc 3 1354 0
	movl	-332(%rbp), %eax	# i, tmp351
	movslq	%eax, %rdx	# tmp351, tmp350
	movq	%rdx, %rax	# tmp350, tmp352
	addq	%rax, %rax	# tmp352
	addq	%rdx, %rax	# tmp350, tmp352
	salq	$3, %rax	#, tmp353
	addq	$literal_mode_elem, %rax	#, tmp354
	movq	8(%rax), %rax	# literal_mode_elem[i_20].str, tmp355
	movq	%rax, -296(%rbp)	# tmp355, t
	.loc 3 1355 0
	movl	-324(%rbp), %eax	# tag_len, tmp356
	movl	%eax, -328(%rbp)	# tmp356, len
	.loc 3 1356 0
	jmp	.L526	#
.L530:
	.loc 3 1357 0
	movq	-304(%rbp), %rax	# s, tmp357
	movzbl	(%rax), %eax	# *s_21, D.15134
	cmpb	$64, %al	#, D.15134
	jle	.L527	#,
	.loc 3 1357 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# s, tmp358
	movzbl	(%rax), %eax	# *s_21, D.15134
	cmpb	$90, %al	#, D.15134
	jg	.L527	#,
	movq	-304(%rbp), %rax	# s, tmp359
	movzbl	(%rax), %eax	# *s_21, D.15134
	movsbl	%al, %eax	# D.15134, D.15136
	addl	$32, %eax	#, iftmp.298
	jmp	.L528	#
.L527:
	.loc 3 1357 0 discriminator 2
	movq	-304(%rbp), %rax	# s, tmp360
	movzbl	(%rax), %eax	# *s_21, D.15134
	movsbl	%al, %eax	# D.15134, iftmp.298
.L528:
	.loc 3 1357 0 discriminator 3
	movq	-296(%rbp), %rdx	# t, tmp361
	movzbl	(%rdx), %edx	# *t_22, D.15134
	movsbl	%dl, %edx	# D.15134, D.15136
	cmpl	%edx, %eax	# D.15136, iftmp.298
	je	.L529	#,
	.loc 3 1358 0 is_stmt 1
	jmp	.L525	#
.L529:
	.loc 3 1359 0
	addq	$1, -304(%rbp)	#, s
	.loc 3 1360 0
	addq	$1, -296(%rbp)	#, t
	.loc 3 1361 0
	subl	$1, -328(%rbp)	#, len
	cmpl	$0, -328(%rbp)	#, len
	jne	.L526	#,
	.loc 3 1363 0
	movl	-332(%rbp), %eax	# i, tmp363
	movslq	%eax, %rdx	# tmp363, tmp362
	movq	%rdx, %rax	# tmp362, tmp364
	addq	%rax, %rax	# tmp364
	addq	%rdx, %rax	# tmp362, tmp364
	salq	$3, %rax	#, tmp365
	addq	$literal_mode_elem, %rax	#, tmp366
	movq	8(%rax), %rdx	# literal_mode_elem[i_20].str, D.15133
	movq	-360(%rbp), %rax	# p_state, tmp367
	movq	%rdx, 48(%rax)	# D.15133, p_state_30(D)->literal_mode
	.loc 3 1364 0
	movl	-332(%rbp), %eax	# i, tmp369
	movslq	%eax, %rdx	# tmp369, tmp368
	movq	%rdx, %rax	# tmp368, tmp370
	addq	%rax, %rax	# tmp370
	addq	%rdx, %rax	# tmp368, tmp370
	salq	$3, %rax	#, tmp371
	addq	$literal_mode_elem+16, %rax	#, tmp372
	movl	(%rax), %eax	# literal_mode_elem[i_20].is_cdata, D.15136
	movl	%eax, %edx	# D.15136, D.15134
	movq	-360(%rbp), %rax	# p_state, tmp373
	movb	%dl, 56(%rax)	# D.15134, p_state_30(D)->is_cdata
	.loc 3 1366 0
	jmp	.L523	#
.L526:
	.loc 3 1356 0 discriminator 1
	cmpl	$0, -328(%rbp)	#, len
	jne	.L530	#,
.L525:
.LBE70:
	.loc 3 1350 0
	addl	$1, -332(%rbp)	#, i
.L524:
	.loc 3 1350 0 is_stmt 0 discriminator 1
	movl	-332(%rbp), %eax	# i, tmp375
	movslq	%eax, %rdx	# tmp375, tmp374
	movq	%rdx, %rax	# tmp374, tmp376
	addq	%rax, %rax	# tmp376
	addq	%rdx, %rax	# tmp374, tmp376
	salq	$3, %rax	#, tmp377
	addq	$literal_mode_elem, %rax	#, tmp378
	movl	(%rax), %eax	# literal_mode_elem[i_20].len, D.15136
	testl	%eax, %eax	# D.15136
	jne	.L531	#,
.L523:
.LBE69:
	.loc 3 1375 0 is_stmt 1
	movq	-320(%rbp), %rdx	# tokens, tokens.299
	leaq	-256(%rbp), %rax	#, tmp379
	cmpq	%rax, %rdx	# tmp379, tokens.299
	je	.L532	#,
	.loc 3 1375 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# tokens, tokens.300
	movq	%rax, %rdi	# tokens.300,
	call	Perl_safesysfree	#
.L532:
	.loc 3 1376 0 is_stmt 1
	movq	-312(%rbp), %rax	# s, D.15133
	jmp	.L536	#
.L521:
	.loc 3 1379 0
	movq	-320(%rbp), %rdx	# tokens, tokens.301
	leaq	-256(%rbp), %rax	#, tmp380
	cmpq	%rax, %rdx	# tmp380, tokens.301
	je	.L534	#,
	.loc 3 1379 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# tokens, tokens.302
	movq	%rax, %rdi	# tokens.302,
	call	Perl_safesysfree	#
.L534:
	.loc 3 1380 0 is_stmt 1
	movl	$0, %eax	#, D.15133
	jmp	.L536	#
.L484:
	.loc 3 1383 0
	movq	-320(%rbp), %rdx	# tokens, tokens.303
	leaq	-256(%rbp), %rax	#, tmp381
	cmpq	%rax, %rdx	# tmp381, tokens.303
	je	.L535	#,
	.loc 3 1383 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# tokens, tokens.304
	movq	%rax, %rdi	# tokens.304,
	call	Perl_safesysfree	#
.L535:
	.loc 3 1384 0 is_stmt 1
	movq	-368(%rbp), %rax	# beg, D.15133
.L536:
	.loc 3 1385 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	parse_start, .-parse_start
	.type	parse_end, @function
parse_end:
.LFB18:
	.loc 3 1390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# p_state, p_state
	movq	%rsi, -48(%rbp)	# beg, beg
	movq	%rdx, -56(%rbp)	# end, end
	movl	%ecx, -60(%rbp)	# utf8, utf8
	movq	%r8, -72(%rbp)	# self, self
	.loc 3 1391 0
	movq	-48(%rbp), %rax	# beg, tmp86
	addq	$2, %rax	#, tmp85
	movq	%rax, -24(%rbp)	# tmp85, s
	.loc 3 1394 0
	movq	-40(%rbp), %rax	# p_state, tmp87
	movzbl	138(%rax), %eax	# p_state_10(D)->strict_names, D.15143
	testb	%al, %al	# D.15143
	jne	.L538	#,
	.loc 3 1394 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p_state, tmp88
	movzbl	140(%rax), %eax	# p_state_10(D)->xml_mode, D.15143
	testb	%al, %al	# D.15143
	je	.L539	#,
.L538:
	.loc 3 1395 0 is_stmt 1
	movb	$2, -26(%rbp)	#, name_first
	.loc 3 1396 0
	movb	$4, -25(%rbp)	#, name_char
	jmp	.L540	#
.L539:
	.loc 3 1399 0
	movb	$8, -25(%rbp)	#, name_char
	movzbl	-25(%rbp), %eax	# name_char, tmp89
	movb	%al, -26(%rbp)	# tmp89, name_first
.L540:
	.loc 3 1402 0
	movq	-24(%rbp), %rax	# s, tmp90
	movzbl	(%rax), %eax	# *s_9, D.15143
	movzbl	%al, %eax	# D.15144, D.15145
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15144
	andb	-26(%rbp), %al	# name_first, D.15144
	testb	%al, %al	# D.15144
	je	.L541	#,
.LBB71:
	.loc 3 1404 0
	movq	-24(%rbp), %rax	# s, tmp92
	movq	%rax, -16(%rbp)	# tmp92, tagname.beg
	.loc 3 1405 0
	addq	$1, -24(%rbp)	#, s
	.loc 3 1406 0
	jmp	.L542	#
.L544:
	.loc 3 1407 0
	addq	$1, -24(%rbp)	#, s
.L542:
	.loc 3 1406 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp93
	cmpq	-56(%rbp), %rax	# end, tmp93
	jae	.L543	#,
	.loc 3 1406 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp94
	movzbl	(%rax), %eax	# *s_1, D.15143
	movzbl	%al, %eax	# D.15144, D.15145
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15144
	andb	-25(%rbp), %al	# name_char, D.15144
	testb	%al, %al	# D.15144
	jne	.L544	#,
.L543:
	.loc 3 1408 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp96
	movq	%rax, -8(%rbp)	# tmp96, tagname.end
	.loc 3 1410 0
	movq	-40(%rbp), %rax	# p_state, tmp97
	movzbl	139(%rax), %eax	# p_state_10(D)->strict_end, D.15143
	testb	%al, %al	# D.15143
	je	.L545	#,
	.loc 3 1411 0
	jmp	.L546	#
.L547:
	.loc 3 1412 0
	addq	$1, -24(%rbp)	#, s
.L546:
	.loc 3 1411 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp98
	movzbl	(%rax), %eax	# *s_2, D.15143
	movzbl	%al, %eax	# D.15144, D.15145
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15144
	movzbl	%al, %eax	# D.15144, D.15145
	andl	$1, %eax	#, D.15145
	testl	%eax, %eax	# D.15145
	jne	.L547	#,
	jmp	.L548	#
.L545:
	.loc 3 1415 0
	movq	-56(%rbp), %rdx	# end, tmp100
	movq	-24(%rbp), %rax	# s, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	skip_until_gt	#
	movq	%rax, -24(%rbp)	# tmp102, s
.L548:
	.loc 3 1417 0
	movq	-24(%rbp), %rax	# s, tmp103
	cmpq	-56(%rbp), %rax	# end, tmp103
	jae	.L549	#,
	.loc 3 1418 0
	movq	-24(%rbp), %rax	# s, tmp104
	movzbl	(%rax), %eax	# *s_3, D.15143
	cmpb	$62, %al	#, D.15143
	jne	.L550	#,
	.loc 3 1419 0
	addq	$1, -24(%rbp)	#, s
	.loc 3 1421 0
	leaq	-16(%rbp), %r8	#, tmp105
	movl	-60(%rbp), %edi	# utf8, tmp106
	movq	-24(%rbp), %rcx	# s, tmp107
	movq	-48(%rbp), %rdx	# beg, tmp108
	movq	-40(%rbp), %rax	# p_state, tmp109
	movq	-72(%rbp), %rsi	# self, tmp110
	movq	%rsi, 8(%rsp)	# tmp110,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp105,
	movl	%edi, %r8d	# tmp106,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	report_event	#
	.loc 3 1422 0
	movq	-24(%rbp), %rax	# s, D.15142
	jmp	.L553	#
.L549:
	.loc 3 1426 0
	movq	-48(%rbp), %rax	# beg, D.15142
	jmp	.L553	#
.L550:
.LBE71:
	jmp	.L552	#
.L541:
	.loc 3 1429 0
	movq	-40(%rbp), %rax	# p_state, tmp111
	movzbl	137(%rax), %eax	# p_state_10(D)->strict_comment, D.15143
	testb	%al, %al	# D.15143
	jne	.L552	#,
	.loc 3 1430 0
	movq	-56(%rbp), %rdx	# end, tmp112
	movq	-24(%rbp), %rax	# s, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	skip_until_gt	#
	movq	%rax, -24(%rbp)	# tmp114, s
	.loc 3 1431 0
	movq	-24(%rbp), %rax	# s, tmp115
	cmpq	-56(%rbp), %rax	# end, tmp115
	jae	.L554	#,
.LBB72:
	.loc 3 1433 0
	movq	-48(%rbp), %rax	# beg, tmp116
	addq	$2, %rax	#, D.15142
	movq	%rax, -16(%rbp)	# D.15142, token.beg
	.loc 3 1434 0
	movq	-24(%rbp), %rax	# s, tmp117
	movq	%rax, -8(%rbp)	# tmp117, token.end
	.loc 3 1435 0
	addq	$1, -24(%rbp)	#, s
	.loc 3 1436 0
	leaq	-16(%rbp), %r8	#, tmp118
	movl	-60(%rbp), %edi	# utf8, tmp119
	movq	-24(%rbp), %rcx	# s, tmp120
	movq	-48(%rbp), %rdx	# beg, tmp121
	movq	-40(%rbp), %rax	# p_state, tmp122
	movq	-72(%rbp), %rsi	# self, tmp123
	movq	%rsi, 8(%rsp)	# tmp123,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp118,
	movl	%edi, %r8d	# tmp119,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	report_event	#
	.loc 3 1437 0
	movq	-24(%rbp), %rax	# s, D.15142
	jmp	.L553	#
.L554:
.LBE72:
	.loc 3 1440 0
	movq	-48(%rbp), %rax	# beg, D.15142
	jmp	.L553	#
.L552:
	.loc 3 1443 0
	movl	$0, %eax	#, D.15142
.L553:
	.loc 3 1444 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	parse_end, .-parse_end
	.type	parse_process, @function
parse_process:
.LFB19:
	.loc 3 1449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# p_state, p_state
	movq	%rsi, -48(%rbp)	# beg, beg
	movq	%rdx, -56(%rbp)	# end, end
	movl	%ecx, -60(%rbp)	# utf8, utf8
	movq	%r8, -72(%rbp)	# self, self
	.loc 3 1450 0
	movq	-48(%rbp), %rax	# beg, tmp72
	addq	$2, %rax	#, tmp71
	movq	%rax, -24(%rbp)	# tmp71, s
	.loc 3 1453 0
	movq	-24(%rbp), %rax	# s, tmp73
	movq	%rax, -16(%rbp)	# tmp73, token_pos.beg
	.loc 3 1455 0
	jmp	.L556	#
.L562:
	.loc 3 1456 0
	movq	-24(%rbp), %rax	# s, tmp74
	movzbl	(%rax), %eax	# *s_1, D.15148
	cmpb	$62, %al	#, D.15148
	jne	.L557	#,
	.loc 3 1457 0
	movq	-24(%rbp), %rax	# s, tmp75
	movq	%rax, -8(%rbp)	# tmp75, token_pos.end
	.loc 3 1458 0
	addq	$1, -24(%rbp)	#, s
	.loc 3 1460 0
	movq	-40(%rbp), %rax	# p_state, tmp76
	movzbl	140(%rax), %eax	# p_state_8(D)->xml_mode, D.15148
	testb	%al, %al	# D.15148
	je	.L558	#,
	.loc 3 1462 0
	movq	-24(%rbp), %rdx	# s, s.305
	movq	-48(%rbp), %rax	# beg, beg.306
	subq	%rax, %rdx	# beg.306, D.15149
	movq	%rdx, %rax	# D.15149, D.15149
	cmpq	$3, %rax	#, D.15149
	jle	.L559	#,
	.loc 3 1462 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp77
	subq	$2, %rax	#, D.15147
	movzbl	(%rax), %eax	# *_13, D.15148
	cmpb	$63, %al	#, D.15148
	je	.L560	#,
.L559:
	.loc 3 1463 0 is_stmt 1
	jmp	.L556	#
.L560:
	.loc 3 1464 0
	movq	-24(%rbp), %rax	# s, tmp78
	subq	$2, %rax	#, D.15147
	movq	%rax, -8(%rbp)	# D.15147, token_pos.end
.L558:
	.loc 3 1468 0
	leaq	-16(%rbp), %r8	#, tmp79
	movl	-60(%rbp), %edi	# utf8, tmp80
	movq	-24(%rbp), %rcx	# s, tmp81
	movq	-48(%rbp), %rdx	# beg, tmp82
	movq	-40(%rbp), %rax	# p_state, tmp83
	movq	-72(%rbp), %rsi	# self, tmp84
	movq	%rsi, 8(%rsp)	# tmp84,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp79,
	movl	%edi, %r8d	# tmp80,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	report_event	#
	.loc 3 1470 0
	movq	-24(%rbp), %rax	# s, D.15147
	jmp	.L563	#
.L557:
	.loc 3 1472 0
	addq	$1, -24(%rbp)	#, s
.L556:
	.loc 3 1455 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp85
	cmpq	-56(%rbp), %rax	# end, tmp85
	jb	.L562	#,
	.loc 3 1474 0
	movq	-48(%rbp), %rax	# beg, D.15147
.L563:
	.loc 3 1475 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	parse_process, .-parse_process
	.type	parse_buf, @function
parse_buf:
.LFB20:
	.loc 3 1492 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -88(%rbp)	# p_state, p_state
	movq	%rsi, -96(%rbp)	# beg, beg
	movq	%rdx, -104(%rbp)	# end, end
	movl	%ecx, -108(%rbp)	# utf8, utf8
	movq	%r8, -120(%rbp)	# self, self
	.loc 3 1493 0
	movq	-96(%rbp), %rax	# beg, tmp147
	movq	%rax, -72(%rbp)	# tmp147, s
	.loc 3 1494 0
	movq	-96(%rbp), %rax	# beg, tmp148
	movq	%rax, -64(%rbp)	# tmp148, t
	.loc 3 1497 0
	jmp	.L565	#
.L624:
	.loc 3 1504 0
	jmp	.L566	#
.L593:
.LBB73:
	.loc 3 1505 0
	movq	-88(%rbp), %rax	# p_state, tmp149
	movq	48(%rax), %rax	# p_state_34(D)->literal_mode, tmp150
	movq	%rax, -48(%rbp)	# tmp150, l
	.loc 3 1506 0
	movq	-48(%rbp), %rax	# l, tmp151
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	strcmp	#
	testl	%eax, %eax	# D.15152
	je	.L567	#,
	.loc 3 1506 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# l, tmp152
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	strcmp	#
	testl	%eax, %eax	# D.15152
	jne	.L568	#,
.L567:
	.loc 3 1506 0 discriminator 1
	movl	$1, %eax	#, iftmp.307
	jmp	.L569	#
.L568:
	.loc 3 1506 0 discriminator 3
	movl	$0, %eax	#, iftmp.307
.L569:
	.loc 3 1506 0 discriminator 4
	movb	%al, -73(%rbp)	# iftmp.307, skip_quoted_end
	.loc 3 1507 0 is_stmt 1 discriminator 4
	movb	$0, -75(%rbp)	#, inside_quote
	.loc 3 1508 0 discriminator 4
	movb	$0, -74(%rbp)	#, escape_next
	.loc 3 1511 0 discriminator 4
	jmp	.L570	#
.L580:
	.loc 3 1512 0
	movq	-72(%rbp), %rax	# s, tmp153
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$60, %al	#, D.15150
	jne	.L571	#,
	.loc 3 1512 0 is_stmt 0 discriminator 1
	cmpb	$0, -75(%rbp)	#, inside_quote
	jne	.L571	#,
	.loc 3 1513 0 is_stmt 1
	jmp	.L572	#
.L571:
	.loc 3 1514 0
	cmpb	$0, -73(%rbp)	#, skip_quoted_end
	je	.L573	#,
	.loc 3 1515 0
	cmpb	$0, -74(%rbp)	#, escape_next
	je	.L574	#,
	.loc 3 1516 0
	movb	$0, -74(%rbp)	#, escape_next
	jmp	.L573	#
.L574:
	.loc 3 1519 0
	movq	-72(%rbp), %rax	# s, tmp154
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$92, %al	#, D.15150
	jne	.L575	#,
	.loc 3 1520 0
	movb	$1, -74(%rbp)	#, escape_next
	jmp	.L573	#
.L575:
	.loc 3 1521 0
	cmpb	$0, -75(%rbp)	#, inside_quote
	je	.L576	#,
	.loc 3 1521 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp155
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	-75(%rbp), %al	# inside_quote, D.15150
	jne	.L576	#,
	.loc 3 1522 0 is_stmt 1
	movb	$0, -75(%rbp)	#, inside_quote
	jmp	.L573	#
.L576:
	.loc 3 1523 0
	movq	-72(%rbp), %rax	# s, tmp156
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$13, %al	#, D.15150
	je	.L577	#,
	.loc 3 1523 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp157
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$10, %al	#, D.15150
	jne	.L578	#,
.L577:
	.loc 3 1524 0 is_stmt 1
	movb	$0, -75(%rbp)	#, inside_quote
	jmp	.L573	#
.L578:
	.loc 3 1525 0
	cmpb	$0, -75(%rbp)	#, inside_quote
	jne	.L573	#,
	.loc 3 1525 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp158
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$34, %al	#, D.15150
	je	.L579	#,
	movq	-72(%rbp), %rax	# s, tmp159
	movzbl	(%rax), %eax	# *s_1, D.15150
	cmpb	$39, %al	#, D.15150
	jne	.L573	#,
.L579:
	.loc 3 1526 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp160
	movzbl	(%rax), %eax	# *s_1, tmp161
	movb	%al, -75(%rbp)	# tmp161, inside_quote
.L573:
	.loc 3 1529 0
	addq	$1, -72(%rbp)	#, s
.L570:
	.loc 3 1511 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp162
	cmpq	-104(%rbp), %rax	# end, tmp162
	jb	.L580	#,
.L572:
	.loc 3 1532 0
	movq	-72(%rbp), %rax	# s, tmp163
	cmpq	-104(%rbp), %rax	# end, tmp163
	jne	.L581	#,
	.loc 3 1533 0
	movq	-64(%rbp), %rax	# t, tmp164
	movq	%rax, -72(%rbp)	# tmp164, s
	.loc 3 1534 0
	jmp	.L582	#
.L581:
	.loc 3 1537 0
	movq	-72(%rbp), %rax	# s, tmp165
	movq	%rax, -40(%rbp)	# tmp165, end_text
	.loc 3 1538 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1541 0
	movq	-72(%rbp), %rax	# s, tmp166
	movzbl	(%rax), %eax	# *s_61, D.15150
	cmpb	$47, %al	#, D.15150
	jne	.L566	#,
	.loc 3 1542 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1543 0
	jmp	.L583	#
.L587:
	.loc 3 1544 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1545 0
	addq	$1, -48(%rbp)	#, l
.L583:
	.loc 3 1543 0 discriminator 1
	movq	-48(%rbp), %rax	# l, tmp167
	movzbl	(%rax), %eax	# *l_24, D.15150
	testb	%al, %al	# D.15150
	je	.L584	#,
	.loc 3 1543 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp168
	movzbl	(%rax), %eax	# *s_2, D.15150
	cmpb	$64, %al	#, D.15150
	jle	.L585	#,
	.loc 3 1543 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp169
	movzbl	(%rax), %eax	# *s_2, D.15150
	cmpb	$90, %al	#, D.15150
	jg	.L585	#,
	movq	-72(%rbp), %rax	# s, tmp170
	movzbl	(%rax), %eax	# *s_2, D.15150
	movsbl	%al, %eax	# D.15150, D.15152
	addl	$32, %eax	#, iftmp.308
	jmp	.L586	#
.L585:
	.loc 3 1543 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp171
	movzbl	(%rax), %eax	# *s_2, D.15150
	movsbl	%al, %eax	# D.15150, iftmp.308
.L586:
	.loc 3 1543 0 discriminator 3
	movq	-48(%rbp), %rdx	# l, tmp172
	movzbl	(%rdx), %edx	# *l_24, D.15150
	movsbl	%dl, %edx	# D.15150, D.15152
	cmpl	%edx, %eax	# D.15152, iftmp.308
	je	.L587	#,
.L584:
	.loc 3 1548 0 is_stmt 1
	movq	-48(%rbp), %rax	# l, tmp173
	movzbl	(%rax), %eax	# *l_24, D.15150
	testb	%al, %al	# D.15150
	jne	.L566	#,
	.loc 3 1548 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# p_state, tmp174
	movq	48(%rax), %rax	# p_state_34(D)->literal_mode, D.15151
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.15151,
	call	strcmp	#
	testl	%eax, %eax	# D.15152
	jne	.L588	#,
	movq	-88(%rbp), %rax	# p_state, tmp175
	movzbl	144(%rax), %eax	# p_state_34(D)->closing_plaintext, D.15150
	testb	%al, %al	# D.15150
	je	.L566	#,
.L588:
.LBB74:
	.loc 3 1551 0 is_stmt 1
	movq	-40(%rbp), %rax	# end_text, tmp176
	addq	$2, %rax	#, D.15151
	movq	%rax, -16(%rbp)	# D.15151, end_token.beg
	.loc 3 1552 0
	movq	-72(%rbp), %rax	# s, tmp177
	movq	%rax, -8(%rbp)	# tmp177, end_token.end
	.loc 3 1554 0
	jmp	.L589	#
.L590:
	.loc 3 1555 0
	addq	$1, -72(%rbp)	#, s
.L589:
	.loc 3 1554 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp178
	movzbl	(%rax), %eax	# *s_3, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$1, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	jne	.L590	#,
	.loc 3 1556 0
	movq	-72(%rbp), %rax	# s, tmp180
	movzbl	(%rax), %eax	# *s_3, D.15150
	cmpb	$62, %al	#, D.15150
	jne	.L566	#,
	.loc 3 1557 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1558 0
	movq	-64(%rbp), %rax	# t, tmp181
	cmpq	-40(%rbp), %rax	# end_text, tmp181
	je	.L592	#,
	.loc 3 1559 0
	movl	-108(%rbp), %edi	# utf8, tmp182
	movq	-40(%rbp), %rcx	# end_text, tmp183
	movq	-64(%rbp), %rdx	# t, tmp184
	movq	-88(%rbp), %rax	# p_state, tmp185
	movq	-120(%rbp), %rsi	# self, tmp186
	movq	%rsi, 8(%rsp)	# tmp186,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp182,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	report_event	#
.L592:
	.loc 3 1561 0
	leaq	-16(%rbp), %r8	#, tmp187
	movl	-108(%rbp), %edi	# utf8, tmp188
	movq	-72(%rbp), %rcx	# s, tmp189
	movq	-40(%rbp), %rdx	# end_text, tmp190
	movq	-88(%rbp), %rax	# p_state, tmp191
	movq	-120(%rbp), %rsi	# self, tmp192
	movq	%rsi, 8(%rsp)	# tmp192,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp187,
	movl	%edi, %r8d	# tmp188,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	report_event	#
	.loc 3 1563 0
	movq	-88(%rbp), %rax	# p_state, tmp193
	movq	$0, 48(%rax)	#, p_state_34(D)->literal_mode
	.loc 3 1564 0
	movq	-88(%rbp), %rax	# p_state, tmp194
	movb	$0, 56(%rax)	#, p_state_34(D)->is_cdata
	.loc 3 1565 0
	movq	-72(%rbp), %rax	# s, tmp195
	movq	%rax, -64(%rbp)	# tmp195, t
.L566:
.LBE74:
.LBE73:
	.loc 3 1504 0 discriminator 1
	movq	-88(%rbp), %rax	# p_state, tmp196
	movq	48(%rax), %rax	# p_state_34(D)->literal_mode, D.15151
	testq	%rax, %rax	# D.15151
	jne	.L593	#,
	.loc 3 1572 0
	jmp	.L594	#
.L600:
	.loc 3 1573 0
	jmp	.L595	#
.L597:
	.loc 3 1574 0
	addq	$1, -72(%rbp)	#, s
.L595:
	.loc 3 1573 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp197
	cmpq	-104(%rbp), %rax	# end, tmp197
	jae	.L596	#,
	.loc 3 1573 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp198
	movzbl	(%rax), %eax	# *s_6, D.15150
	cmpb	$93, %al	#, D.15150
	jne	.L597	#,
.L596:
	.loc 3 1575 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp199
	movzbl	(%rax), %eax	# *s_6, D.15150
	cmpb	$93, %al	#, D.15150
	jne	.L598	#,
.LBB75:
	.loc 3 1576 0
	movq	-72(%rbp), %rax	# s, tmp200
	movq	%rax, -24(%rbp)	# tmp200, end_text
	.loc 3 1577 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1578 0
	movq	-72(%rbp), %rax	# s, tmp201
	movzbl	(%rax), %eax	# *s_164, D.15150
	cmpb	$93, %al	#, D.15150
	jne	.L598	#,
	.loc 3 1579 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1580 0
	movq	-72(%rbp), %rax	# s, tmp202
	movzbl	(%rax), %eax	# *s_166, D.15150
	cmpb	$62, %al	#, D.15150
	jne	.L598	#,
	.loc 3 1581 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1583 0
	movq	-64(%rbp), %rax	# t, tmp203
	cmpq	-24(%rbp), %rax	# end_text, tmp203
	je	.L599	#,
	.loc 3 1584 0
	movl	-108(%rbp), %edi	# utf8, tmp204
	movq	-24(%rbp), %rcx	# end_text, tmp205
	movq	-64(%rbp), %rdx	# t, tmp206
	movq	-88(%rbp), %rax	# p_state, tmp207
	movq	-120(%rbp), %rsi	# self, tmp208
	movq	%rsi, 8(%rsp)	# tmp208,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp204,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	report_event	#
.L599:
	.loc 3 1586 0
	movl	-108(%rbp), %edi	# utf8, tmp209
	movq	-72(%rbp), %rcx	# s, tmp210
	movq	-24(%rbp), %rdx	# end_text, tmp211
	movq	-88(%rbp), %rax	# p_state, tmp212
	movq	-120(%rbp), %rsi	# self, tmp213
	movq	%rsi, 8(%rsp)	# tmp213,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp209,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	report_event	#
	.loc 3 1587 0
	movq	-72(%rbp), %rax	# s, tmp214
	movq	%rax, -64(%rbp)	# tmp214, t
	.loc 3 1588 0
	movq	-88(%rbp), %rax	# p_state, tmp215
	movq	128(%rax), %rax	# p_state_34(D)->ms_stack, D.15155
	movq	%rax, %rdi	# D.15155,
	call	Perl_av_pop	#
	movq	%rax, %rdi	# D.15156,
	call	Perl_sv_free	#
	.loc 3 1589 0
	movq	-88(%rbp), %rax	# p_state, tmp216
	movq	%rax, %rdi	# tmp216,
	call	marked_section_update	#
	.loc 3 1590 0
	jmp	.L594	#
.L598:
.LBE75:
	.loc 3 1594 0
	movq	-72(%rbp), %rax	# s, tmp217
	cmpq	-104(%rbp), %rax	# end, tmp217
	jne	.L594	#,
	.loc 3 1595 0
	movq	-64(%rbp), %rax	# t, tmp218
	movq	%rax, -72(%rbp)	# tmp218, s
	.loc 3 1596 0
	jmp	.L582	#
.L594:
	.loc 3 1572 0 discriminator 1
	movq	-88(%rbp), %rax	# p_state, tmp219
	movl	120(%rax), %eax	# p_state_34(D)->ms, D.15154
	cmpl	$3, %eax	#, D.15154
	je	.L600	#,
	.loc 3 1572 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# p_state, tmp220
	movl	120(%rax), %eax	# p_state_34(D)->ms, D.15154
	cmpl	$2, %eax	#, D.15154
	je	.L600	#,
	.loc 3 1602 0 is_stmt 1
	jmp	.L601	#
.L604:
	.loc 3 1604 0
	movq	-88(%rbp), %rax	# p_state, tmp221
	movl	120(%rax), %eax	# p_state_34(D)->ms, D.15154
	testl	%eax, %eax	# D.15154
	je	.L602	#,
	.loc 3 1604 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp222
	movzbl	(%rax), %eax	# *s_10, D.15150
	cmpb	$93, %al	#, D.15150
	jne	.L602	#,
.LBB76:
	.loc 3 1605 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp223
	movq	%rax, -32(%rbp)	# tmp223, end_text
	.loc 3 1606 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1607 0
	movq	-72(%rbp), %rax	# s, tmp224
	movzbl	(%rax), %eax	# *s_99, D.15150
	cmpb	$93, %al	#, D.15150
	jne	.L602	#,
	.loc 3 1608 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1609 0
	movq	-72(%rbp), %rax	# s, tmp225
	movzbl	(%rax), %eax	# *s_101, D.15150
	cmpb	$62, %al	#, D.15150
	jne	.L602	#,
	.loc 3 1610 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1611 0
	movl	-108(%rbp), %edi	# utf8, tmp226
	movq	-32(%rbp), %rcx	# end_text, tmp227
	movq	-64(%rbp), %rdx	# t, tmp228
	movq	-88(%rbp), %rax	# p_state, tmp229
	movq	-120(%rbp), %rsi	# self, tmp230
	movq	%rsi, 8(%rsp)	# tmp230,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp226,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	report_event	#
	.loc 3 1613 0
	movl	-108(%rbp), %edi	# utf8, tmp231
	movq	-72(%rbp), %rcx	# s, tmp232
	movq	-32(%rbp), %rdx	# end_text, tmp233
	movq	-88(%rbp), %rax	# p_state, tmp234
	movq	-120(%rbp), %rsi	# self, tmp235
	movq	%rsi, 8(%rsp)	# tmp235,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp231,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	report_event	#
	.loc 3 1615 0
	movq	-72(%rbp), %rax	# s, tmp236
	movq	%rax, -64(%rbp)	# tmp236, t
	.loc 3 1616 0
	movq	-88(%rbp), %rax	# p_state, tmp237
	movq	128(%rax), %rax	# p_state_34(D)->ms_stack, D.15155
	movq	%rax, %rdi	# D.15155,
	call	Perl_av_pop	#
	movq	%rax, %rdi	# D.15156,
	call	Perl_sv_free	#
	.loc 3 1617 0
	movq	-88(%rbp), %rax	# p_state, tmp238
	movq	%rax, %rdi	# tmp238,
	call	marked_section_update	#
	.loc 3 1618 0
	jmp	.L601	#
.L602:
.LBE76:
	.loc 3 1623 0
	addq	$1, -72(%rbp)	#, s
.L601:
	.loc 3 1602 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp239
	cmpq	-104(%rbp), %rax	# end, tmp239
	jae	.L603	#,
	.loc 3 1602 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp240
	movzbl	(%rax), %eax	# *s_10, D.15150
	cmpb	$60, %al	#, D.15150
	jne	.L604	#,
.L603:
	.loc 3 1625 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp241
	cmpq	-64(%rbp), %rax	# t, tmp241
	je	.L605	#,
	.loc 3 1626 0
	movq	-72(%rbp), %rax	# s, tmp242
	movzbl	(%rax), %eax	# *s_10, D.15150
	cmpb	$60, %al	#, D.15150
	jne	.L606	#,
	.loc 3 1627 0
	movl	-108(%rbp), %edi	# utf8, tmp243
	movq	-72(%rbp), %rcx	# s, tmp244
	movq	-64(%rbp), %rdx	# t, tmp245
	movq	-88(%rbp), %rax	# p_state, tmp246
	movq	-120(%rbp), %rsi	# self, tmp247
	movq	%rsi, 8(%rsp)	# tmp247,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp243,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	report_event	#
	.loc 3 1628 0
	movq	-72(%rbp), %rax	# s, tmp248
	movq	%rax, -64(%rbp)	# tmp248, t
	jmp	.L605	#
.L606:
	.loc 3 1631 0
	subq	$1, -72(%rbp)	#, s
	.loc 3 1632 0
	movq	-72(%rbp), %rax	# s, tmp249
	movzbl	(%rax), %eax	# *s_110, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$1, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	je	.L607	#,
	.loc 3 1634 0
	jmp	.L608	#
.L610:
	.loc 3 1635 0
	subq	$1, -72(%rbp)	#, s
.L608:
	.loc 3 1634 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp251
	cmpq	-64(%rbp), %rax	# t, tmp251
	jb	.L609	#,
	.loc 3 1634 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp252
	movzbl	(%rax), %eax	# *s_11, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$1, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	jne	.L610	#,
	jmp	.L609	#
.L607:
	.loc 3 1639 0 is_stmt 1
	jmp	.L611	#
.L613:
	.loc 3 1640 0
	subq	$1, -72(%rbp)	#, s
.L611:
	.loc 3 1639 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp254
	cmpq	-64(%rbp), %rax	# t, tmp254
	jb	.L612	#,
	.loc 3 1639 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp255
	movzbl	(%rax), %eax	# *s_12, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$1, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	je	.L613	#,
.L612:
	.loc 3 1641 0 is_stmt 1
	jmp	.L614	#
.L615:
	.loc 3 1642 0
	subq	$1, -72(%rbp)	#, s
.L614:
	.loc 3 1641 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp257
	cmpq	-64(%rbp), %rax	# t, tmp257
	jb	.L609	#,
	.loc 3 1641 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp258
	movzbl	(%rax), %eax	# *s_13, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$1, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	jne	.L615	#,
.L609:
	.loc 3 1644 0 is_stmt 1
	addq	$1, -72(%rbp)	#, s
	.loc 3 1645 0
	movq	-72(%rbp), %rax	# s, tmp260
	cmpq	-64(%rbp), %rax	# t, tmp260
	je	.L616	#,
	.loc 3 1646 0
	movl	-108(%rbp), %edi	# utf8, tmp261
	movq	-72(%rbp), %rcx	# s, tmp262
	movq	-64(%rbp), %rdx	# t, tmp263
	movq	-88(%rbp), %rax	# p_state, tmp264
	movq	-120(%rbp), %rsi	# self, tmp265
	movq	%rsi, 8(%rsp)	# tmp265,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp261,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp264,
	call	report_event	#
	.loc 3 1647 0
	jmp	.L582	#
.L616:
	jmp	.L582	#
.L605:
	.loc 3 1651 0
	movq	-104(%rbp), %rdx	# end, end.309
	movq	-72(%rbp), %rax	# s, s.310
	subq	%rax, %rdx	# s.310, D.15157
	movq	%rdx, %rax	# D.15157, D.15157
	cmpq	$2, %rax	#, D.15157
	jg	.L617	#,
	.loc 3 1652 0
	jmp	.L582	#
.L617:
	.loc 3 1655 0
	addq	$1, -72(%rbp)	#, s
	.loc 3 1660 0
	movq	-72(%rbp), %rax	# s, tmp266
	movzbl	(%rax), %eax	# *s_142, D.15150
	movzbl	%al, %eax	# D.15153, D.15152
	cltq
	movzbl	hctype(%rax), %eax	# hctype, D.15153
	movzbl	%al, %eax	# D.15153, D.15152
	andl	$2, %eax	#, D.15152
	testl	%eax, %eax	# D.15152
	je	.L618	#,
	.loc 3 1661 0
	movq	-120(%rbp), %rdi	# self, tmp268
	movl	-108(%rbp), %ecx	# utf8, tmp269
	movq	-104(%rbp), %rdx	# end, tmp270
	movq	-64(%rbp), %rsi	# t, tmp271
	movq	-88(%rbp), %rax	# p_state, tmp272
	movq	%rdi, %r8	# tmp268,
	movq	%rax, %rdi	# tmp272,
	call	parse_start	#
	movq	%rax, -56(%rbp)	# tmp273, new_pos
	jmp	.L619	#
.L618:
	.loc 3 1662 0
	movq	-72(%rbp), %rax	# s, tmp274
	movzbl	(%rax), %eax	# *s_142, D.15150
	cmpb	$47, %al	#, D.15150
	jne	.L620	#,
	.loc 3 1663 0
	movq	-120(%rbp), %rdi	# self, tmp275
	movl	-108(%rbp), %ecx	# utf8, tmp276
	movq	-104(%rbp), %rdx	# end, tmp277
	movq	-64(%rbp), %rsi	# t, tmp278
	movq	-88(%rbp), %rax	# p_state, tmp279
	movq	%rdi, %r8	# tmp275,
	movq	%rax, %rdi	# tmp279,
	call	parse_end	#
	movq	%rax, -56(%rbp)	# tmp280, new_pos
	jmp	.L619	#
.L620:
	.loc 3 1664 0
	movq	-72(%rbp), %rax	# s, tmp281
	movzbl	(%rax), %eax	# *s_142, D.15150
	cmpb	$33, %al	#, D.15150
	jne	.L621	#,
	.loc 3 1665 0
	movq	-120(%rbp), %rdi	# self, tmp282
	movl	-108(%rbp), %ecx	# utf8, tmp283
	movq	-104(%rbp), %rdx	# end, tmp284
	movq	-64(%rbp), %rsi	# t, tmp285
	movq	-88(%rbp), %rax	# p_state, tmp286
	movq	%rdi, %r8	# tmp282,
	movq	%rax, %rdi	# tmp286,
	call	parse_decl	#
	movq	%rax, -56(%rbp)	# tmp287, new_pos
	jmp	.L619	#
.L621:
	.loc 3 1666 0
	movq	-72(%rbp), %rax	# s, tmp288
	movzbl	(%rax), %eax	# *s_142, D.15150
	cmpb	$63, %al	#, D.15150
	jne	.L622	#,
	.loc 3 1667 0
	movq	-120(%rbp), %rdi	# self, tmp289
	movl	-108(%rbp), %ecx	# utf8, tmp290
	movq	-104(%rbp), %rdx	# end, tmp291
	movq	-64(%rbp), %rsi	# t, tmp292
	movq	-88(%rbp), %rax	# p_state, tmp293
	movq	%rdi, %r8	# tmp289,
	movq	%rax, %rdi	# tmp293,
	call	parse_process	#
	movq	%rax, -56(%rbp)	# tmp294, new_pos
	jmp	.L619	#
.L622:
	.loc 3 1669 0
	movq	$0, -56(%rbp)	#, new_pos
.L619:
	.loc 3 1672 0
	cmpq	$0, -56(%rbp)	#, new_pos
	je	.L565	#,
	.loc 3 1673 0
	movq	-56(%rbp), %rax	# new_pos, tmp295
	cmpq	-64(%rbp), %rax	# t, tmp295
	jne	.L623	#,
	.loc 3 1675 0
	movq	-64(%rbp), %rax	# t, tmp296
	movq	%rax, -72(%rbp)	# tmp296, s
	.loc 3 1676 0
	jmp	.L582	#
.L623:
	.loc 3 1678 0
	movq	-56(%rbp), %rax	# new_pos, tmp297
	movq	%rax, -72(%rbp)	# tmp297, s
	movq	-72(%rbp), %rax	# s, tmp298
	movq	%rax, -64(%rbp)	# tmp298, t
.L565:
	.loc 3 1497 0 discriminator 1
	movq	-88(%rbp), %rax	# p_state, tmp299
	movzbl	41(%rax), %eax	# p_state_34(D)->eof, D.15150
	testb	%al, %al	# D.15150
	je	.L624	#,
.L582:
	.loc 3 1688 0
	movq	-72(%rbp), %rax	# s, D.15151
	.loc 3 1690 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	parse_buf, .-parse_buf
	.section	.rodata
.LC51:
	.string	"\357\273\277"
.LC52:
	.string	"\303\257\302\273\302\277"
	.align 8
.LC53:
	.string	"Parsing of undecoded UTF-8 will give garbage when decoding entities"
.LC54:
	.string	"\377\376"
	.align 8
.LC55:
	.string	"Parsing string decoded with wrong endianess"
.LC56:
	.string	"\376\377"
	.string	""
	.string	""
.LC57:
	.string	"Parsing of undecoded UTF-32"
.LC58:
	.string	"\376\377"
.LC59:
	.string	"Parsing of undecoded UTF-16"
	.text
	.type	parse, @function
parse:
.LFB21:
	.loc 3 1697 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# p_state, p_state
	movq	%rsi, -80(%rbp)	# chunk, chunk
	movq	%rdx, -88(%rbp)	# self, self
	.loc 3 1699 0
	movl	$0, -52(%rbp)	#, utf8
	.loc 3 1702 0
	cmpq	$0, -80(%rbp)	#, chunk
	jne	.L627	#,
.LBB77:
	.loc 3 1705 0
	movq	-72(%rbp), %rax	# p_state, tmp188
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	testq	%rax, %rax	# D.15158
	je	.L628	#,
	.loc 3 1705 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp189
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _13->sv_flags, D.15159
	andl	$118423552, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L628	#,
	.loc 3 1707 0 is_stmt 1
	movq	-72(%rbp), %rax	# p_state, tmp190
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _16->sv_flags, D.15159
	andl	$262144, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L629	#,
	.loc 3 1707 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp191
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	(%rax), %rax	# _19->sv_any, D.15160
	movq	8(%rax), %rax	# MEM[(struct XPV *)_20].xpv_cur, len.312
	movq	%rax, -48(%rbp)	# len.312, len
	movq	-72(%rbp), %rax	# p_state, tmp192
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	(%rax), %rax	# _22->sv_any, D.15160
	movq	(%rax), %rax	# MEM[(struct XPV *)_23].xpv_pv, iftmp.311
	jmp	.L630	#
.L629:
	.loc 3 1707 0 discriminator 2
	movq	-72(%rbp), %rax	# p_state, tmp193
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	leaq	-48(%rbp), %rcx	#, tmp194
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp194,
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_2pv_flags	#
.L630:
	.loc 3 1707 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.311, s
	.loc 3 1708 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rdx	# len, len.313
	movq	-40(%rbp), %rax	# s, tmp198
	addq	%rdx, %rax	# len.313, tmp197
	movq	%rax, -24(%rbp)	# tmp197, end
	.loc 3 1709 0 discriminator 3
	movq	-72(%rbp), %rax	# p_state, tmp199
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _30->sv_flags, D.15159
	andl	$536870912, %eax	#, tmp200
	movl	%eax, -52(%rbp)	# tmp200, utf8
	.loc 3 1712 0 discriminator 3
	jmp	.L631	#
.L637:
	.loc 3 1713 0
	movq	-72(%rbp), %rax	# p_state, tmp201
	movq	48(%rax), %rax	# p_state_11(D)->literal_mode, D.15161
	testq	%rax, %rax	# D.15161
	je	.L632	#,
	.loc 3 1714 0
	movq	-72(%rbp), %rax	# p_state, tmp202
	movq	48(%rax), %rax	# p_state_11(D)->literal_mode, D.15161
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.15161,
	call	strcmp	#
	testl	%eax, %eax	# D.15162
	jne	.L633	#,
	.loc 3 1714 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp203
	movzbl	144(%rax), %eax	# p_state_11(D)->closing_plaintext, D.15163
	testb	%al, %al	# D.15163
	jne	.L633	#,
	.loc 3 1715 0 is_stmt 1
	jmp	.L634	#
.L633:
	.loc 3 1716 0
	movq	-72(%rbp), %rax	# p_state, tmp204
	movq	48(%rax), %rdx	# p_state_11(D)->literal_mode, D.15161
	movq	-72(%rbp), %rax	# p_state, tmp205
	movq	%rdx, 64(%rax)	# D.15161, p_state_11(D)->pending_end_tag
	.loc 3 1717 0
	movq	-72(%rbp), %rax	# p_state, tmp206
	movq	$0, 48(%rax)	#, p_state_11(D)->literal_mode
	.loc 3 1718 0
	movq	-88(%rbp), %rdi	# self, tmp207
	movl	-52(%rbp), %ecx	# utf8, tmp208
	movq	-24(%rbp), %rdx	# end, tmp209
	movq	-40(%rbp), %rsi	# s, tmp210
	movq	-72(%rbp), %rax	# p_state, tmp211
	movq	%rdi, %r8	# tmp207,
	movq	%rax, %rdi	# tmp211,
	call	parse_buf	#
	movq	%rax, -40(%rbp)	# tmp212, s
	.loc 3 1719 0
	jmp	.L631	#
.L632:
	.loc 3 1722 0
	movq	-72(%rbp), %rax	# p_state, tmp213
	movzbl	137(%rax), %eax	# p_state_11(D)->strict_comment, D.15163
	testb	%al, %al	# D.15163
	jne	.L635	#,
	.loc 3 1722 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp214
	movzbl	57(%rax), %eax	# p_state_11(D)->no_dash_dash_comment_end, D.15163
	testb	%al, %al	# D.15163
	jne	.L635	#,
	movq	-40(%rbp), %rax	# s, tmp215
	movzbl	(%rax), %eax	# *s_2, D.15163
	cmpb	$60, %al	#, D.15163
	jne	.L635	#,
	.loc 3 1723 0 is_stmt 1
	movq	-72(%rbp), %rax	# p_state, tmp216
	movb	$1, 57(%rax)	#, p_state_11(D)->no_dash_dash_comment_end
	.loc 3 1724 0
	movq	-88(%rbp), %rdi	# self, tmp217
	movl	-52(%rbp), %ecx	# utf8, tmp218
	movq	-24(%rbp), %rdx	# end, tmp219
	movq	-40(%rbp), %rsi	# s, tmp220
	movq	-72(%rbp), %rax	# p_state, tmp221
	movq	%rdi, %r8	# tmp217,
	movq	%rax, %rdi	# tmp221,
	call	parse_buf	#
	movq	%rax, -40(%rbp)	# tmp222, s
	.loc 3 1725 0
	jmp	.L631	#
.L635:
	.loc 3 1728 0
	movq	-72(%rbp), %rax	# p_state, tmp223
	movzbl	137(%rax), %eax	# p_state_11(D)->strict_comment, D.15163
	testb	%al, %al	# D.15163
	jne	.L636	#,
	.loc 3 1728 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp224
	movzbl	(%rax), %eax	# *s_2, D.15163
	cmpb	$60, %al	#, D.15163
	jne	.L636	#,
.LBB78:
	.loc 3 1731 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp225
	addq	$1, %rax	#, D.15161
	movq	%rax, -16(%rbp)	# D.15161, token.beg
	.loc 3 1732 0
	movq	-24(%rbp), %rax	# end, tmp226
	movq	%rax, -8(%rbp)	# tmp226, token.end
	.loc 3 1733 0
	leaq	-16(%rbp), %r8	#, tmp227
	movl	-52(%rbp), %edi	# utf8, tmp228
	movq	-24(%rbp), %rcx	# end, tmp229
	movq	-40(%rbp), %rdx	# s, tmp230
	movq	-72(%rbp), %rax	# p_state, tmp231
	movq	-88(%rbp), %rsi	# self, tmp232
	movq	%rsi, 8(%rsp)	# tmp232,
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp227,
	movl	%edi, %r8d	# tmp228,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	report_event	#
	.loc 3 1734 0
	movq	-24(%rbp), %rax	# end, tmp233
	movq	%rax, -40(%rbp)	# tmp233, s
.LBE78:
	.loc 3 1737 0
	jmp	.L634	#
.L636:
	jmp	.L634	#
.L631:
	.loc 3 1712 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp234
	cmpq	-24(%rbp), %rax	# end, tmp234
	jb	.L637	#,
.L634:
	.loc 3 1740 0
	movq	-40(%rbp), %rax	# s, tmp235
	cmpq	-24(%rbp), %rax	# end, tmp235
	jae	.L638	#,
	.loc 3 1742 0
	movl	-52(%rbp), %edi	# utf8, tmp236
	movq	-24(%rbp), %rcx	# end, tmp237
	movq	-40(%rbp), %rdx	# s, tmp238
	movq	-72(%rbp), %rax	# p_state, tmp239
	movq	-88(%rbp), %rsi	# self, tmp240
	movq	%rsi, 8(%rsp)	# tmp240,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp236,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp239,
	call	report_event	#
.L638:
	.loc 3 1745 0
	movq	-72(%rbp), %rax	# p_state, tmp241
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_free	#
	.loc 3 1746 0
	movq	-72(%rbp), %rax	# p_state, tmp242
	movq	$0, 8(%rax)	#, p_state_11(D)->buf
.L628:
	.loc 3 1748 0
	movq	-72(%rbp), %rax	# p_state, tmp243
	movq	72(%rax), %rax	# p_state_11(D)->pend_text, D.15158
	testq	%rax, %rax	# D.15158
	je	.L639	#,
	.loc 3 1748 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp244
	movq	72(%rax), %rax	# p_state_11(D)->pend_text, D.15158
	movl	12(%rax), %eax	# _50->sv_flags, D.15159
	andl	$118423552, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L639	#,
	.loc 3 1749 0 is_stmt 1
	movq	-88(%rbp), %rdx	# self, tmp245
	movq	-72(%rbp), %rax	# p_state, tmp246
	movq	%rdx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	flush_pending_text	#
.L639:
	.loc 3 1751 0
	movq	-72(%rbp), %rax	# p_state, tmp247
	movq	336(%rax), %rax	# p_state_11(D)->ignoring_element, D.15158
	testq	%rax, %rax	# D.15158
	je	.L640	#,
	.loc 3 1753 0
	movq	-72(%rbp), %rax	# p_state, tmp248
	movq	336(%rax), %rax	# p_state_11(D)->ignoring_element, D.15158
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_free	#
	.loc 3 1754 0
	movq	-72(%rbp), %rax	# p_state, tmp249
	movq	$0, 336(%rax)	#, p_state_11(D)->ignoring_element
.L640:
	.loc 3 1756 0
	leaq	-16(%rbp), %rcx	#, tmp250
	leaq	-16(%rbp), %rdx	#, tmp251
	movq	-72(%rbp), %rax	# p_state, tmp252
	movq	-88(%rbp), %rsi	# self, tmp253
	movq	%rsi, 8(%rsp)	# tmp253,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp252,
	call	report_event	#
	.loc 3 1759 0
	movq	-72(%rbp), %rax	# p_state, tmp254
	movq	$0, 16(%rax)	#, p_state_11(D)->offset
	.loc 3 1760 0
	movq	-72(%rbp), %rax	# p_state, tmp255
	movq	24(%rax), %rax	# p_state_11(D)->line, D.15164
	testq	%rax, %rax	# D.15164
	je	.L641	#,
	.loc 3 1761 0
	movq	-72(%rbp), %rax	# p_state, tmp256
	movq	$1, 24(%rax)	#, p_state_11(D)->line
.L641:
	.loc 3 1762 0
	movq	-72(%rbp), %rax	# p_state, tmp257
	movq	$0, 32(%rax)	#, p_state_11(D)->column
	.loc 3 1763 0
	movq	-72(%rbp), %rax	# p_state, tmp258
	movq	$0, 48(%rax)	#, p_state_11(D)->literal_mode
	.loc 3 1764 0
	movq	-72(%rbp), %rax	# p_state, tmp259
	movb	$0, 56(%rax)	#, p_state_11(D)->is_cdata
	.loc 3 1765 0
	nop
	jmp	.L626	#
.L627:
.LBE77:
	.loc 3 1769 0
	movq	-72(%rbp), %rax	# p_state, tmp260
	movzbl	145(%rax), %eax	# p_state_11(D)->utf8_mode, D.15163
	testb	%al, %al	# D.15163
	je	.L643	#,
	.loc 3 1770 0
	movq	-80(%rbp), %rax	# chunk, tmp261
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	Perl_sv_utf8_downgrade	#
.L643:
	.loc 3 1773 0
	movq	-72(%rbp), %rax	# p_state, tmp262
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	testq	%rax, %rax	# D.15158
	je	.L644	#,
	.loc 3 1773 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp263
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _58->sv_flags, D.15159
	andl	$118423552, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L644	#,
	.loc 3 1774 0 is_stmt 1
	movq	-72(%rbp), %rax	# p_state, tmp264
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-80(%rbp), %rcx	# chunk, tmp265
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp265,
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_catsv_flags	#
	.loc 3 1775 0
	movq	-72(%rbp), %rax	# p_state, tmp266
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _62->sv_flags, D.15159
	andl	$262144, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L645	#,
	.loc 3 1775 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp267
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	(%rax), %rax	# _65->sv_any, D.15160
	movq	8(%rax), %rax	# MEM[(struct XPV *)_66].xpv_cur, len.315
	movq	%rax, -48(%rbp)	# len.315, len
	movq	-72(%rbp), %rax	# p_state, tmp268
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	(%rax), %rax	# _68->sv_any, D.15160
	movq	(%rax), %rax	# MEM[(struct XPV *)_69].xpv_pv, iftmp.314
	jmp	.L646	#
.L645:
	.loc 3 1775 0 discriminator 2
	movq	-72(%rbp), %rax	# p_state, tmp269
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	leaq	-48(%rbp), %rcx	#, tmp270
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp270,
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_2pv_flags	#
.L646:
	.loc 3 1775 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.314, beg
	.loc 3 1776 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# p_state, tmp271
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _74->sv_flags, D.15159
	andl	$536870912, %eax	#, tmp272
	movl	%eax, -52(%rbp)	# tmp272, utf8
	jmp	.L647	#
.L644:
	.loc 3 1779 0
	movq	-80(%rbp), %rax	# chunk, tmp273
	movl	12(%rax), %eax	# chunk_10(D)->sv_flags, D.15159
	andl	$262144, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L648	#,
	.loc 3 1779 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# chunk, tmp274
	movq	(%rax), %rax	# chunk_10(D)->sv_any, D.15160
	movq	8(%rax), %rax	# MEM[(struct XPV *)_79].xpv_cur, len.317
	movq	%rax, -48(%rbp)	# len.317, len
	movq	-80(%rbp), %rax	# chunk, tmp275
	movq	(%rax), %rax	# chunk_10(D)->sv_any, D.15160
	movq	(%rax), %rax	# MEM[(struct XPV *)_81].xpv_pv, iftmp.316
	jmp	.L649	#
.L648:
	.loc 3 1779 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp276
	movq	-80(%rbp), %rax	# chunk, tmp277
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	Perl_sv_2pv_flags	#
.L649:
	.loc 3 1779 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.316, beg
	.loc 3 1780 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# chunk, tmp278
	movl	12(%rax), %eax	# chunk_10(D)->sv_flags, D.15159
	andl	$536870912, %eax	#, tmp279
	movl	%eax, -52(%rbp)	# tmp279, utf8
	.loc 3 1781 0 discriminator 3
	movq	-72(%rbp), %rax	# p_state, tmp280
	movq	16(%rax), %rax	# p_state_11(D)->offset, D.15164
	testq	%rax, %rax	# D.15164
	jne	.L647	#,
	.loc 3 1782 0
	movq	-32(%rbp), %rcx	# beg, tmp281
	movq	-32(%rbp), %rdx	# beg, tmp282
	movq	-72(%rbp), %rax	# p_state, tmp283
	movq	-88(%rbp), %rsi	# self, tmp284
	movq	%rsi, 8(%rsp)	# tmp284,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	report_event	#
	.loc 3 1786 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.318
	movzbl	%al, %eax	# PL_dowarn.318, D.15162
	andl	$1, %eax	#, D.15162
	testl	%eax, %eax	# D.15162
	je	.L650	#,
	.loc 3 1787 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp285
	movzbl	304(%rax), %eax	# p_state_11(D)->argspec_entity_decode, D.15163
	.loc 3 1786 0 discriminator 1
	testb	%al, %al	# D.15163
	je	.L650	#,
	.loc 3 1788 0
	movq	-72(%rbp), %rax	# p_state, tmp286
	movzbl	145(%rax), %eax	# p_state_11(D)->utf8_mode, D.15163
	.loc 3 1787 0
	testb	%al, %al	# D.15163
	jne	.L650	#,
	.loc 3 1788 0
	cmpl	$0, -52(%rbp)	#, utf8
	jne	.L651	#,
	.loc 3 1789 0
	movq	-48(%rbp), %rax	# len, len.319
	cmpq	$2, %rax	#, len.319
	jbe	.L651	#,
	.loc 3 1789 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# beg, tmp287
	movl	$3, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	strncmp	#
	testl	%eax, %eax	# D.15162
	je	.L652	#,
.L651:
	.loc 3 1789 0 discriminator 2
	cmpl	$0, -52(%rbp)	#, utf8
	je	.L653	#,
	.loc 3 1790 0 is_stmt 1
	movq	-48(%rbp), %rax	# len, len.320
	cmpq	$5, %rax	#, len.320
	jbe	.L653	#,
	.loc 3 1790 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# beg, tmp288
	movl	$6, %edx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	strncmp	#
	testl	%eax, %eax	# D.15162
	je	.L652	#,
.L653:
	.loc 3 1790 0 discriminator 2
	cmpl	$0, -52(%rbp)	#, utf8
	jne	.L650	#,
	.loc 3 1791 0 is_stmt 1
	movq	-48(%rbp), %rdx	# len, len.321
	movq	-32(%rbp), %rax	# beg, tmp289
	movq	%rdx, %rsi	# len.321,
	movq	%rax, %rdi	# tmp289,
	call	probably_utf8_chunk	#
	testb	%al, %al	# D.15163
	je	.L650	#,
.L652:
	.loc 3 1795 0
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L650:
	.loc 3 1797 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.322
	movzbl	%al, %eax	# PL_dowarn.322, D.15162
	andl	$1, %eax	#, D.15162
	testl	%eax, %eax	# D.15162
	je	.L654	#,
	.loc 3 1797 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, utf8
	je	.L654	#,
	movq	-48(%rbp), %rax	# len, len.323
	cmpq	$1, %rax	#, len.323
	jbe	.L654	#,
	movq	-32(%rbp), %rax	# beg, tmp290
	movl	$2, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp290,
	call	strncmp	#
	testl	%eax, %eax	# D.15162
	jne	.L654	#,
	.loc 3 1798 0 is_stmt 1
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L654:
	.loc 3 1801 0
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.324
	movzbl	%al, %eax	# PL_dowarn.324, D.15162
	andl	$1, %eax	#, D.15162
	testl	%eax, %eax	# D.15162
	je	.L647	#,
	.loc 3 1802 0
	cmpl	$0, -52(%rbp)	#, utf8
	jne	.L655	#,
	.loc 3 1802 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# len, len.325
	cmpq	$3, %rax	#, len.325
	jbe	.L655	#,
	.loc 3 1803 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# beg, tmp291
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})beg_84], D.15165
	.loc 3 1802 0 discriminator 1
	testb	%al, %al	# D.15165
	je	.L656	#,
	.loc 3 1804 0
	movq	-32(%rbp), %rax	# beg, tmp292
	movl	$4, %edx	#,
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	strncmp	#
	.loc 3 1803 0
	testl	%eax, %eax	# D.15162
	jne	.L655	#,
.L656:
	.loc 3 1807 0
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	jmp	.L647	#
.L655:
	.loc 3 1809 0
	cmpl	$0, -52(%rbp)	#, utf8
	jne	.L647	#,
	.loc 3 1809 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# len, len.326
	cmpq	$1, %rax	#, len.326
	jbe	.L647	#,
	.loc 3 1810 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# beg, tmp293
	movl	$2, %edx	#,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp293,
	call	strncmp	#
	.loc 3 1809 0 discriminator 1
	testl	%eax, %eax	# D.15162
	je	.L657	#,
	.loc 3 1810 0
	movq	-32(%rbp), %rax	# beg, tmp294
	movl	$2, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	strncmp	#
	testl	%eax, %eax	# D.15162
	jne	.L647	#,
.L657:
	.loc 3 1813 0
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L647:
	.loc 3 1819 0
	movq	-48(%rbp), %rax	# len, len.327
	testq	%rax, %rax	# len.327
	jne	.L658	#,
	.loc 3 1820 0
	jmp	.L626	#
.L658:
	.loc 3 1822 0
	movq	-48(%rbp), %rdx	# len, len.328
	movq	-32(%rbp), %rax	# beg, tmp298
	addq	%rdx, %rax	# len.328, tmp297
	movq	%rax, -24(%rbp)	# tmp297, end
	.loc 3 1823 0
	movq	-88(%rbp), %rdi	# self, tmp299
	movl	-52(%rbp), %ecx	# utf8, tmp300
	movq	-24(%rbp), %rdx	# end, tmp301
	movq	-32(%rbp), %rsi	# beg, tmp302
	movq	-72(%rbp), %rax	# p_state, tmp303
	movq	%rdi, %r8	# tmp299,
	movq	%rax, %rdi	# tmp303,
	call	parse_buf	#
	movq	%rax, -40(%rbp)	# tmp304, s
	.loc 3 1825 0
	movq	-40(%rbp), %rax	# s, tmp305
	cmpq	-24(%rbp), %rax	# end, tmp305
	je	.L659	#,
	.loc 3 1825 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp306
	movzbl	41(%rax), %eax	# p_state_11(D)->eof, D.15163
	testb	%al, %al	# D.15163
	je	.L660	#,
.L659:
	.loc 3 1826 0 is_stmt 1
	movq	-72(%rbp), %rax	# p_state, tmp307
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	testq	%rax, %rax	# D.15158
	je	.L661	#,
	.loc 3 1827 0
	movq	-72(%rbp), %rax	# p_state, tmp308
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-72(%rbp), %rdx	# p_state, tmp309
	movq	8(%rdx), %rdx	# p_state_11(D)->buf, D.15158
	movl	12(%rdx), %edx	# _147->sv_flags, D.15159
	andl	$1223753727, %edx	#, D.15159
	movl	%edx, 12(%rax)	# D.15159, _146->sv_flags
	movq	-72(%rbp), %rax	# p_state, tmp310
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _150->sv_flags, D.15159
	andl	$2097152, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L662	#,
	.loc 3 1827 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_state, tmp311
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.15162
	je	.L662	#,
	jmp	.L661	#
.L662:
	.loc 3 1826 0 is_stmt 1 discriminator 2
	jmp	.L663	#
.L661:
	.loc 3 1826 0 is_stmt 0 discriminator 1
	jmp	.L663	#
.L660:
	.loc 3 1832 0 is_stmt 1
	movq	-72(%rbp), %rax	# p_state, tmp312
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	testq	%rax, %rax	# D.15158
	je	.L664	#,
	.loc 3 1834 0
	movq	-72(%rbp), %rax	# p_state, tmp313
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movl	12(%rax), %eax	# _119->sv_flags, D.15159
	andl	$118423552, %eax	#, D.15159
	testl	%eax, %eax	# D.15159
	je	.L665	#,
	.loc 3 1835 0
	movq	-72(%rbp), %rax	# p_state, tmp314
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-40(%rbp), %rdx	# s, tmp315
	movq	%rdx, %rsi	# tmp315,
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_chop	#
	jmp	.L663	#
.L665:
	.loc 3 1838 0
	movq	-24(%rbp), %rdx	# end, end.330
	movq	-40(%rbp), %rax	# s, s.331
	subq	%rax, %rdx	# s.331, D.15166
	movq	%rdx, %rax	# D.15166, D.15166
	movq	%rax, %rdx	# D.15166, D.15164
	movq	-72(%rbp), %rax	# p_state, tmp316
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-40(%rbp), %rcx	# s, tmp317
	movq	%rcx, %rsi	# tmp317,
	movq	%rax, %rdi	# D.15158,
	call	Perl_sv_setpvn	#
	.loc 3 1839 0
	cmpl	$0, -52(%rbp)	#, utf8
	je	.L667	#,
	.loc 3 1840 0
	movq	-72(%rbp), %rax	# p_state, tmp318
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-72(%rbp), %rdx	# p_state, tmp319
	movq	8(%rdx), %rdx	# p_state_11(D)->buf, D.15158
	movl	12(%rdx), %edx	# _129->sv_flags, D.15159
	orl	$536870912, %edx	#, D.15159
	movl	%edx, 12(%rax)	# D.15159, _128->sv_flags
	jmp	.L663	#
.L667:
	.loc 3 1842 0
	movq	-72(%rbp), %rax	# p_state, tmp320
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-72(%rbp), %rdx	# p_state, tmp321
	movq	8(%rdx), %rdx	# p_state_11(D)->buf, D.15158
	movl	12(%rdx), %edx	# _133->sv_flags, D.15159
	andl	$-536870913, %edx	#, D.15159
	movl	%edx, 12(%rax)	# D.15159, _132->sv_flags
	.loc 3 1851 0
	jmp	.L626	#
.L664:
	.loc 3 1846 0
	movq	-24(%rbp), %rdx	# end, end.332
	movq	-40(%rbp), %rax	# s, s.333
	subq	%rax, %rdx	# s.333, D.15166
	movq	%rdx, %rax	# D.15166, D.15166
	movq	%rax, %rdx	# D.15166, D.15164
	movq	-40(%rbp), %rax	# s, tmp322
	movq	%rdx, %rsi	# D.15164,
	movq	%rax, %rdi	# tmp322,
	call	Perl_newSVpv	#
	movq	-72(%rbp), %rdx	# p_state, tmp323
	movq	%rax, 8(%rdx)	# D.15158, p_state_11(D)->buf
	.loc 3 1847 0
	cmpl	$0, -52(%rbp)	#, utf8
	je	.L663	#,
	.loc 3 1848 0
	movq	-72(%rbp), %rax	# p_state, tmp324
	movq	8(%rax), %rax	# p_state_11(D)->buf, D.15158
	movq	-72(%rbp), %rdx	# p_state, tmp325
	movq	8(%rdx), %rdx	# p_state_11(D)->buf, D.15158
	movl	12(%rdx), %edx	# _142->sv_flags, D.15159
	orl	$536870912, %edx	#, D.15159
	movl	%edx, 12(%rax)	# D.15159, _141->sv_flags
.L663:
	.loc 3 1851 0
	nop
.L626:
	.loc 3 1852 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	parse, .-parse
	.section	.rodata
	.align 8
.LC60:
	.string	"Only code or array references allowed as handler"
	.text
	.type	check_handler, @function
check_handler:
.LFB22:
	.file 4 "Parser.c"
	.loc 4 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# h, h
	.loc 4 135 0
	movq	-24(%rbp), %rax	# h, tmp78
	movl	12(%rax), %eax	# h_3(D)->sv_flags, D.15178
	andl	$524288, %eax	#, D.15178
	testl	%eax, %eax	# D.15178
	je	.L670	#,
.LBB79:
	.loc 4 136 0
	movq	-24(%rbp), %rax	# h, tmp79
	movq	(%rax), %rax	# h_3(D)->sv_any, D.15179
	movq	(%rax), %rax	# MEM[(struct XRV *)_6].xrv_rv, tmp80
	movq	%rax, -8(%rbp)	# tmp80, myref
	.loc 4 137 0
	movq	-8(%rbp), %rax	# myref, tmp81
	movl	12(%rax), %eax	# myref_7->sv_flags, D.15178
	movzbl	%al, %eax	# D.15178, D.15178
	cmpl	$12, %eax	#, D.15178
	jne	.L671	#,
	.loc 4 138 0
	movq	-24(%rbp), %rax	# h, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_newSVsv	#
	jmp	.L672	#
.L671:
	.loc 4 139 0
	movq	-8(%rbp), %rax	# myref, tmp83
	movl	12(%rax), %eax	# myref_7->sv_flags, D.15178
	movzbl	%al, %eax	# D.15178, D.15178
	cmpl	$10, %eax	#, D.15178
	jne	.L673	#,
	.loc 4 140 0
	movq	-8(%rbp), %rax	# myref, tmp84
	movq	%rax, PL_Sv(%rip)	# tmp84, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.335
	testq	%rax, %rax	# PL_Sv.335
	je	.L675	#,
	.loc 4 140 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.336
	movl	8(%rax), %edx	# PL_Sv.336_14->sv_refcnt, D.15178
	addl	$1, %edx	#, D.15178
	movl	%edx, 8(%rax)	# D.15178, PL_Sv.336_14->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.336_14->sv_refcnt, D.15178
	testl	%eax, %eax	# D.15178
	je	.L675	#,
	.loc 4 140 0
	nop
.L675:
	.loc 4 140 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, D.15177
	jmp	.L672	#
.L673:
	.loc 4 141 0 is_stmt 1
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L670:
.LBE79:
	.loc 4 143 0
	movq	-24(%rbp), %rax	# h, tmp85
	movl	12(%rax), %eax	# h_3(D)->sv_flags, D.15178
	andl	$118423552, %eax	#, D.15178
	testl	%eax, %eax	# D.15178
	je	.L676	#,
	.loc 4 143 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_newSVsv	#
	jmp	.L677	#
.L676:
	.loc 4 143 0 discriminator 2
	movl	$0, %eax	#, iftmp.337
.L677:
.L672:
	.loc 4 144 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	check_handler, .-check_handler
	.section	.rodata
	.align 8
.LC61:
	.string	"Bad signature in parser state object at %p"
	.text
	.type	get_pstate_iv, @function
get_pstate_iv:
.LFB23:
	.loc 4 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 4 150 0
	movq	-24(%rbp), %rax	# sv, tmp66
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.15181
	andl	$65536, %eax	#, D.15181
	testl	%eax, %eax	# D.15181
	je	.L679	#,
	.loc 4 150 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp67
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15182
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_5].xiv_iv, iftmp.338
	jmp	.L680	#
.L679:
	.loc 4 150 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp68
	movq	%rax, %rdi	# tmp68,
	call	Perl_sv_2iv	#
.L680:
	.loc 4 150 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.338, p
	.loc 4 151 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# p, tmp69
	movl	(%rax), %eax	# p_8->signature, D.15181
	cmpl	$369695076, %eax	#, D.15181
	je	.L681	#,
	.loc 4 152 0
	movq	-8(%rbp), %rax	# p, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L681:
	.loc 4 153 0
	movq	-8(%rbp), %rax	# p, D.15183
	.loc 4 154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_pstate_iv, .-get_pstate_iv
	.section	.rodata
.LC62:
	.string	"Not a reference to a hash"
.LC63:
	.string	"_hparser_xs_state"
	.align 8
.LC64:
	.string	"_hparser_xs_state element is not a reference"
	.align 8
.LC65:
	.string	"Can't find '_hparser_xs_state' element in HTML::Parser hash"
	.text
	.type	get_pstate_hv, @function
get_pstate_hv:
.LFB24:
	.loc 4 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 4 163 0
	movq	-24(%rbp), %rax	# sv, tmp70
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.15186
	movq	(%rax), %rax	# MEM[(struct XRV *)_3].xrv_rv, tmp71
	movq	%rax, -24(%rbp)	# tmp71, sv
	.loc 4 164 0
	cmpq	$0, -24(%rbp)	#, sv
	je	.L684	#,
	.loc 4 164 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp72
	movl	12(%rax), %eax	# sv_4->sv_flags, D.15187
	movzbl	%al, %eax	# D.15187, D.15187
	cmpl	$11, %eax	#, D.15187
	je	.L685	#,
.L684:
	.loc 4 165 0 is_stmt 1
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L685:
	.loc 4 166 0
	movq	-24(%rbp), %rax	# sv, tmp73
	movq	%rax, -16(%rbp)	# tmp73, hv
	.loc 4 167 0
	movq	-16(%rbp), %rax	# hv, tmp74
	movl	$0, %ecx	#,
	movl	$17, %edx	#,
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	Perl_hv_fetch	#
	movq	%rax, -8(%rbp)	# tmp75, svp
	.loc 4 168 0
	cmpq	$0, -8(%rbp)	#, svp
	je	.L686	#,
	.loc 4 169 0
	movq	-8(%rbp), %rax	# svp, tmp76
	movq	(%rax), %rax	# *svp_8, D.15188
	movl	12(%rax), %eax	# _9->sv_flags, D.15187
	andl	$524288, %eax	#, D.15187
	testl	%eax, %eax	# D.15187
	je	.L687	#,
	.loc 4 170 0
	movq	-8(%rbp), %rax	# svp, tmp77
	movq	(%rax), %rax	# *svp_8, D.15188
	movq	(%rax), %rax	# _12->sv_any, D.15186
	movq	(%rax), %rax	# MEM[(struct XRV *)_13].xrv_rv, D.15188
	movq	%rax, %rdi	# D.15188,
	call	get_pstate_iv	#
	jmp	.L688	#
.L687:
	.loc 4 172 0
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L686:
	.loc 4 174 0
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 4 175 0
	movl	$0, %eax	#, D.15185
.L688:
	.loc 4 176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	get_pstate_hv, .-get_pstate_hv
	.type	free_pstate, @function
free_pstate:
.LFB25:
	.loc 4 181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pstate, pstate
	.loc 4 183 0
	movq	-24(%rbp), %rax	# pstate, tmp71
	movq	8(%rax), %rax	# pstate_2(D)->buf, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 184 0
	movq	-24(%rbp), %rax	# pstate, tmp72
	movq	72(%rax), %rax	# pstate_2(D)->pend_text, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 185 0
	movq	-24(%rbp), %rax	# pstate, tmp73
	movq	112(%rax), %rax	# pstate_2(D)->skipped_text, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 187 0
	movq	-24(%rbp), %rax	# pstate, tmp74
	movq	128(%rax), %rax	# pstate_2(D)->ms_stack, D.15194
	movq	%rax, %rdi	# D.15194,
	call	Perl_sv_free	#
	.loc 4 189 0
	movq	-24(%rbp), %rax	# pstate, tmp75
	movq	152(%rax), %rax	# pstate_2(D)->bool_attr_val, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 190 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L690	#
.L691:
	.loc 4 191 0 discriminator 2
	movq	-24(%rbp), %rax	# pstate, tmp76
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, tmp77
	addq	$10, %rdx	#, tmp79
	salq	$4, %rdx	#, tmp80
	addq	%rdx, %rax	# tmp80, tmp81
	movq	(%rax), %rax	# pstate_2(D)->handlers[i_1].cb, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 192 0 discriminator 2
	movq	-24(%rbp), %rax	# pstate, tmp82
	movl	-4(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, tmp83
	addq	$10, %rdx	#, tmp85
	salq	$4, %rdx	#, tmp86
	addq	%rdx, %rax	# tmp86, tmp87
	addq	$8, %rax	#, tmp88
	movq	(%rax), %rax	# pstate_2(D)->handlers[i_1].argspec, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 190 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L690:
	.loc 4 190 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L691	#,
	.loc 4 195 0 is_stmt 1
	movq	-24(%rbp), %rax	# pstate, tmp89
	movq	312(%rax), %rax	# pstate_2(D)->report_tags, D.15195
	movq	%rax, %rdi	# D.15195,
	call	Perl_sv_free	#
	.loc 4 196 0
	movq	-24(%rbp), %rax	# pstate, tmp90
	movq	320(%rax), %rax	# pstate_2(D)->ignore_tags, D.15195
	movq	%rax, %rdi	# D.15195,
	call	Perl_sv_free	#
	.loc 4 197 0
	movq	-24(%rbp), %rax	# pstate, tmp91
	movq	328(%rax), %rax	# pstate_2(D)->ignore_elements, D.15195
	movq	%rax, %rdi	# D.15195,
	call	Perl_sv_free	#
	.loc 4 198 0
	movq	-24(%rbp), %rax	# pstate, tmp92
	movq	336(%rax), %rax	# pstate_2(D)->ignoring_element, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 200 0
	movq	-24(%rbp), %rax	# pstate, tmp93
	movq	360(%rax), %rax	# pstate_2(D)->tmp, D.15193
	movq	%rax, %rdi	# D.15193,
	call	Perl_sv_free	#
	.loc 4 202 0
	movq	-24(%rbp), %rax	# pstate, tmp94
	movl	$0, (%rax)	#, pstate_2(D)->signature
	.loc 4 203 0
	movq	-24(%rbp), %rax	# pstate, tmp95
	movq	%rax, %rdi	# tmp95,
	call	Perl_safesysfree	#
	.loc 4 204 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	free_pstate, .-free_pstate
	.type	magic_free_pstate, @function
magic_free_pstate:
.LFB26:
	.loc 4 209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	movq	%rsi, -16(%rbp)	# mg, mg
	.loc 4 210 0
	movq	-8(%rbp), %rax	# sv, tmp62
	movq	%rax, %rdi	# tmp62,
	call	get_pstate_iv	#
	movq	%rax, %rdi	# D.15196,
	call	free_pstate	#
	.loc 4 211 0
	movl	$0, %eax	#, D.15197
	.loc 4 212 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	magic_free_pstate, .-magic_free_pstate
	.globl	vtbl_free_pstate
	.data
	.align 32
	.type	vtbl_free_pstate, @object
	.size	vtbl_free_pstate, 56
vtbl_free_pstate:
# svt_get:
	.quad	0
# svt_set:
	.quad	0
# svt_len:
	.quad	0
# svt_clear:
	.quad	0
# svt_free:
	.quad	magic_free_pstate
	.zero	16
	.section	.rodata
	.align 8
.LC66:
	.string	"Usage: HTML::Parser::_alloc_pstate(self)"
.LC67:
	.string	"HTML::Entities::entity2char"
	.text
	.globl	XS_HTML__Parser__alloc_pstate
	.type	XS_HTML__Parser__alloc_pstate, @function
XS_HTML__Parser__alloc_pstate:
.LFB27:
	.loc 4 226 0
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
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 4 227 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.339
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.340
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.342
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.342, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.341_4, D.15198
	cltq
	salq	$3, %rax	#, D.15199
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.343
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.344
	subq	%rax, %rdx	# PL_stack_base.345, D.15200
	movq	%rdx, %rax	# D.15200, D.15200
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.15201
	movl	%eax, -72(%rbp)	# D.15201, ax
	movq	%r12, %rdx	# sp, sp.346
	movq	%rbx, %rax	# mark, mark.347
	subq	%rax, %rdx	# mark.347, D.15200
	movq	%rdx, %rax	# D.15200, D.15200
	sarq	$3, %rax	#, tmp100
	movl	%eax, -68(%rbp)	# D.15200, items
	.loc 4 228 0
	cmpl	$1, -68(%rbp)	#, items
	je	.L695	#,
	.loc 4 229 0
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L695:
.LBB80:
	.loc 4 231 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.348
	movl	-72(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.15199
	salq	$3, %rdx	#, D.15199
	addq	%rdx, %rax	# D.15199, D.15202
	movq	(%rax), %rax	# *_26, tmp102
	movq	%rax, -64(%rbp)	# tmp102, self
	.loc 4 240 0
	movq	-64(%rbp), %rax	# self, tmp103
	movq	(%rax), %rax	# self_27->sv_any, D.15203
	movq	(%rax), %rax	# MEM[(struct XRV *)_28].xrv_rv, tmp104
	movq	%rax, -56(%rbp)	# tmp104, sv
	.loc 4 241 0
	cmpq	$0, -56(%rbp)	#, sv
	je	.L696	#,
	.loc 4 241 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_29->sv_flags, D.15204
	movzbl	%al, %eax	# D.15204, D.15204
	cmpl	$11, %eax	#, D.15204
	je	.L697	#,
.L696:
	.loc 4 242 0 is_stmt 1
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L697:
	.loc 4 243 0
	movq	-56(%rbp), %rax	# sv, tmp106
	movq	%rax, -48(%rbp)	# tmp106, hv
	.loc 4 245 0
	movl	$368, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -40(%rbp)	# tmp107, pstate
	movq	-40(%rbp), %rax	# pstate, tmp108
	movl	$368, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	memset	#
	.loc 4 246 0
	movq	-40(%rbp), %rax	# pstate, tmp109
	movl	$369695076, (%rax)	#, pstate_33->signature
	.loc 4 247 0
	movl	$1, %esi	#,
	movl	$.LC67, %edi	#,
	call	Perl_get_hv	#
	movq	-40(%rbp), %rdx	# pstate, tmp110
	movq	%rax, 352(%rdx)	# D.15205, pstate_33->entity2char
	.loc 4 248 0
	movl	$20, %edi	#,
	call	Perl_newSV	#
	movq	-40(%rbp), %rdx	# pstate, tmp111
	movq	%rax, 360(%rdx)	# D.15206, pstate_33->tmp
	.loc 4 250 0
	movq	-40(%rbp), %rax	# pstate, pstate.349
	movq	%rax, %rdi	# pstate.349,
	call	Perl_newSViv	#
	movq	%rax, -56(%rbp)	# tmp112, sv
	.loc 4 251 0
	movq	-56(%rbp), %rax	# sv, tmp113
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$126, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	Perl_sv_magic	#
	.loc 4 252 0
	movq	-56(%rbp), %rax	# sv, tmp114
	movl	$126, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	Perl_mg_find	#
	movq	%rax, -32(%rbp)	# tmp115, mg
	.loc 4 254 0
	movq	-32(%rbp), %rax	# mg, tmp116
	movq	$vtbl_free_pstate, 8(%rax)	#, mg_38->mg_virtual
	.loc 4 255 0
	movq	-56(%rbp), %rax	# sv, tmp117
	movl	12(%rax), %eax	# sv_37->sv_flags, D.15204
	orl	$8388608, %eax	#, D.15204
	movl	%eax, %edx	# D.15204, D.15204
	movq	-56(%rbp), %rax	# sv, tmp118
	movl	%edx, 12(%rax)	# D.15204, sv_37->sv_flags
	.loc 4 257 0
	movq	-56(%rbp), %rax	# sv, tmp119
	movq	%rax, %rdi	# tmp119,
	call	Perl_newRV_noinc	#
	movq	%rax, %rdx	#, D.15206
	movq	-48(%rbp), %rax	# hv, tmp120
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.15206,
	movl	$17, %edx	#,
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	Perl_hv_store	#
.LBE80:
.LBB81:
	.loc 4 260 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.350
	movl	-72(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rcx	# tmp121, D.15207
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.351
	addq	%rcx, %rdx	# D.15207, D.15207
	salq	$3, %rdx	#, D.15207
	subq	$8, %rdx	#, D.15207
	addq	%rdx, %rax	# D.15207, PL_stack_sp.352
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.352, PL_stack_sp
	nop
.LBE81:
	.loc 4 261 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	XS_HTML__Parser__alloc_pstate, .-XS_HTML__Parser__alloc_pstate
	.section	.rodata
	.align 8
.LC68:
	.string	"Usage: HTML::Parser::parse(self, chunk)"
.LC69:
	.string	"Parse loop not allowed"
	.text
	.globl	XS_HTML__Parser_parse
	.type	XS_HTML__Parser_parse, @function
XS_HTML__Parser_parse:
.LFB28:
	.loc 4 265 0
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
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 4 266 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.353
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.354
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.356
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.356, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.355_15, D.15210
	cltq
	salq	$3, %rax	#, D.15211
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.357
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.358
	subq	%rax, %rdx	# PL_stack_base.359, D.15212
	movq	%rdx, %rax	# D.15212, D.15212
	sarq	$3, %rax	#, tmp182
	addl	$1, %eax	#, D.15213
	movl	%eax, -68(%rbp)	# D.15213, ax
	movq	%rbx, %rdx	# sp, sp.360
	movq	%r12, %rax	# mark, mark.361
	subq	%rax, %rdx	# mark.361, D.15212
	movq	%rdx, %rax	# D.15212, D.15212
	sarq	$3, %rax	#, tmp183
	movl	%eax, -64(%rbp)	# D.15212, items
	.loc 4 267 0
	cmpl	$2, -64(%rbp)	#, items
	je	.L700	#,
	.loc 4 268 0
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L700:
	.loc 4 269 0
	movl	-64(%rbp), %eax	# items, tmp184
	cltq
	salq	$3, %rax	#, D.15211
	negq	%rax	# D.15214
	addq	%rax, %rbx	# D.15214, sp
.LBB82:
	.loc 4 271 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.362
	movl	-68(%rbp), %edx	# ax, tmp185
	movslq	%edx, %rdx	# tmp185, D.15211
	salq	$3, %rdx	#, D.15211
	addq	%rdx, %rax	# D.15211, D.15215
	movq	(%rax), %rax	# *_41, tmp186
	movq	%rax, -48(%rbp)	# tmp186, self
	.loc 4 272 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.363
	movl	-68(%rbp), %edx	# ax, tmp187
	movslq	%edx, %rdx	# tmp187, D.15214
	addq	$1, %rdx	#, D.15214
	salq	$3, %rdx	#, D.15214
	addq	%rdx, %rax	# D.15214, D.15215
	movq	(%rax), %rax	# *_47, tmp188
	movq	%rax, -40(%rbp)	# tmp188, chunk
	.loc 4 274 0
	movq	-48(%rbp), %rax	# self, tmp189
	movq	%rax, %rdi	# tmp189,
	call	get_pstate_hv	#
	movq	%rax, -32(%rbp)	# tmp190, p_state
	.loc 4 277 0
	movq	-32(%rbp), %rax	# p_state, tmp191
	movzbl	40(%rax), %eax	# p_state_49->parsing, D.15216
	testb	%al, %al	# D.15216
	je	.L701	#,
	.loc 4 278 0
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L701:
	.loc 4 279 0
	movq	-32(%rbp), %rax	# p_state, tmp192
	movb	$1, 40(%rax)	#, p_state_49->parsing
	.loc 4 280 0
	movq	-40(%rbp), %rax	# chunk, tmp193
	movl	12(%rax), %eax	# chunk_48->sv_flags, D.15217
	andl	$524288, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L702	#,
	.loc 4 280 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# chunk, tmp194
	movq	(%rax), %rax	# chunk_48->sv_any, D.15218
	movq	(%rax), %rax	# MEM[(struct XRV *)_53].xrv_rv, D.15219
	movl	12(%rax), %eax	# _54->sv_flags, D.15217
	movzbl	%al, %eax	# D.15217, D.15217
	cmpl	$12, %eax	#, D.15217
	jne	.L702	#,
.LBB83:
	.loc 4 281 0 is_stmt 1
	movq	-40(%rbp), %rax	# chunk, tmp195
	movq	%rax, -24(%rbp)	# tmp195, generator
.L725:
.LBB84:
.LBB85:
	.loc 4 285 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.364
	addq	$4, %rax	#, PL_markstack_ptr.365
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.365, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.366
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.367
	cmpq	%rax, %rdx	# PL_markstack_max.367, PL_markstack_ptr.366
	jne	.L703	#,
	.loc 4 285 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L703:
	.loc 4 285 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.368
	movq	%rbx, %rcx	# sp, sp.369
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.370
	subq	%rdx, %rcx	# PL_stack_base.371, D.15212
	movq	%rcx, %rdx	# D.15212, D.15212
	sarq	$3, %rdx	#, tmp196
	movl	%edx, (%rax)	# D.15210, *PL_markstack_ptr.368_62
.LBE85:
	.loc 4 286 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# generator, tmp197
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp197,
	call	Perl_call_sv	#
	movl	%eax, -60(%rbp)	# tmp198, count
	.loc 4 287 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 4 288 0 discriminator 2
	cmpl	$0, -60(%rbp)	#, count
	je	.L704	#,
	.loc 4 288 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.373
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.373_72, iftmp.372
	jmp	.L705	#
.L704:
	.loc 4 288 0 discriminator 2
	movl	$0, %eax	#, iftmp.372
.L705:
	.loc 4 288 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.372, chunk
	.loc 4 289 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 4 291 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.375
	movq	(%rax), %rax	# PL_errgv.375_77->sv_any, D.15221
	movq	56(%rax), %rax	# _78->xgv_gp, D.15222
	movq	(%rax), %rax	# _79->gp_sv, D.15219
	testq	%rax, %rax	# D.15219
	je	.L706	#,
	.loc 4 291 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.377
	movq	(%rax), %rax	# PL_errgv.377_81->sv_any, D.15221
	movq	56(%rax), %rax	# _82->xgv_gp, D.15222
	movq	(%rax), %rax	# _83->gp_sv, D.15219
	movl	12(%rax), %eax	# _84->sv_flags, D.15217
	andl	$262144, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L707	#,
	.loc 4 291 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.379
	movq	(%rax), %rax	# PL_errgv.379_87->sv_any, D.15221
	movq	56(%rax), %rax	# _88->xgv_gp, D.15222
	movq	(%rax), %rax	# _89->gp_sv, D.15219
	movq	(%rax), %rax	# _90->sv_any, PL_Xpv.380
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.380, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.381
	testq	%rax, %rax	# PL_Xpv.381
	je	.L708	#,
	.loc 4 291 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.382
	movq	8(%rax), %rax	# PL_Xpv.382_93->xpv_cur, D.15211
	cmpq	$1, %rax	#, D.15211
	ja	.L709	#,
	.loc 4 291 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.383
	movq	8(%rax), %rax	# PL_Xpv.383_95->xpv_cur, D.15211
	testq	%rax, %rax	# D.15211
	je	.L708	#,
	.loc 4 291 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.384
	movq	(%rax), %rax	# PL_Xpv.384_97->xpv_pv, D.15223
	movzbl	(%rax), %eax	# *_98, D.15216
	cmpb	$48, %al	#, D.15216
	je	.L708	#,
.L709:
	.loc 4 291 0 discriminator 7
	movl	$1, %eax	#, iftmp.378
	jmp	.L710	#
.L708:
	.loc 4 291 0 discriminator 6
	movl	$0, %eax	#, iftmp.378
.L710:
	.loc 4 291 0 discriminator 9
	andl	$1, %eax	#, iftmp.376
	jmp	.L716	#
.L707:
	.loc 4 291 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.386
	movq	(%rax), %rax	# PL_errgv.386_103->sv_any, D.15221
	movq	56(%rax), %rax	# _104->xgv_gp, D.15222
	movq	(%rax), %rax	# _105->gp_sv, D.15219
	movl	12(%rax), %eax	# _106->sv_flags, D.15217
	andl	$65536, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L712	#,
	.loc 4 291 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.387
	movq	(%rax), %rax	# PL_errgv.387_109->sv_any, D.15221
	movq	56(%rax), %rax	# _110->xgv_gp, D.15222
	movq	(%rax), %rax	# _111->gp_sv, D.15219
	movq	(%rax), %rax	# _112->sv_any, D.15218
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_113].xiv_iv, D.15212
	testq	%rax, %rax	# D.15212
	setne	%al	#, iftmp.385
	jmp	.L716	#
.L712:
	.loc 4 291 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.389
	movq	(%rax), %rax	# PL_errgv.389_116->sv_any, D.15221
	movq	56(%rax), %rax	# _117->xgv_gp, D.15222
	movq	(%rax), %rax	# _118->gp_sv, D.15219
	movl	12(%rax), %eax	# _119->sv_flags, D.15217
	andl	$131072, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L714	#,
	.loc 4 291 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.390
	movq	(%rax), %rax	# PL_errgv.390_122->sv_any, D.15221
	movq	56(%rax), %rax	# _123->xgv_gp, D.15222
	movq	(%rax), %rax	# _124->gp_sv, D.15219
	movq	(%rax), %rax	# _125->sv_any, D.15218
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_126].xnv_nv, D.15224
	xorpd	%xmm1, %xmm1	# tmp200
	ucomisd	%xmm1, %xmm0	# tmp200, D.15224
	setp	%dl	#, tmp199
	movl	$1, %eax	#, tmp202
	xorpd	%xmm1, %xmm1	# tmp201
	ucomisd	%xmm1, %xmm0	# tmp201, D.15224
	cmove	%edx, %eax	# tmp199,, iftmp.388
	jmp	.L716	#
.L714:
	.loc 4 291 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.391
	movq	(%rax), %rax	# PL_errgv.391_129->sv_any, D.15221
	movq	56(%rax), %rax	# _130->xgv_gp, D.15222
	movq	(%rax), %rax	# _131->gp_sv, D.15219
	movq	%rax, %rdi	# D.15219,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.15216
	setne	%al	#, iftmp.388
	jmp	.L716	#
.L706:
	.loc 4 291 0 discriminator 2
	movl	$0, %eax	#, iftmp.374
.L716:
	.loc 4 291 0 discriminator 16
	testb	%al, %al	# iftmp.374
	je	.L717	#,
	.loc 4 292 0 is_stmt 1
	movq	-32(%rbp), %rax	# p_state, tmp203
	movb	$0, 40(%rax)	#, p_state_49->parsing
	.loc 4 293 0
	movq	-32(%rbp), %rax	# p_state, tmp204
	movb	$0, 41(%rax)	#, p_state_49->eof
	.loc 4 294 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L717:
	.loc 4 297 0
	cmpq	$0, -40(%rbp)	#, chunk
	je	.L718	#,
	.loc 4 297 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# chunk, tmp205
	movl	12(%rax), %eax	# chunk_76->sv_flags, D.15217
	andl	$118423552, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L718	#,
	.loc 4 298 0 is_stmt 1
	movq	-40(%rbp), %rax	# chunk, tmp206
	movl	12(%rax), %eax	# chunk_76->sv_flags, D.15217
	andl	$262144, %eax	#, D.15217
	testl	%eax, %eax	# D.15217
	je	.L719	#,
	.loc 4 298 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# chunk, tmp207
	movq	(%rax), %rax	# chunk_76->sv_any, D.15218
	movq	8(%rax), %rax	# MEM[(struct XPV *)_143].xpv_cur, len.392
	movq	%rax, -56(%rbp)	# len.392, len
	jmp	.L721	#
.L719:
	.loc 4 298 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp209
	movq	-40(%rbp), %rax	# chunk, tmp210
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp209,
	movq	%rax, %rdi	# tmp210,
	call	Perl_sv_2pv_flags	#
	jmp	.L721	#
.L718:
	.loc 4 301 0 is_stmt 1
	movq	$0, -56(%rbp)	#, len
.L721:
	.loc 4 303 0
	movq	-56(%rbp), %rax	# len, len.394
	testq	%rax, %rax	# len.394
	je	.L722	#,
	.loc 4 303 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# chunk, iftmp.393
	jmp	.L723	#
.L722:
	.loc 4 303 0 discriminator 2
	movl	$0, %eax	#, iftmp.393
.L723:
	.loc 4 303 0 discriminator 3
	movq	-48(%rbp), %rdx	# self, tmp211
	movq	-32(%rbp), %rcx	# p_state, tmp212
	movq	%rax, %rsi	# iftmp.393,
	movq	%rcx, %rdi	# tmp212,
	call	parse	#
	.loc 4 304 0 is_stmt 1 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBE84:
	.loc 4 306 0 discriminator 3
	movq	-56(%rbp), %rax	# len, len.395
	testq	%rax, %rax	# len.395
	je	.L724	#,
	.loc 4 306 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p_state, tmp213
	movzbl	41(%rax), %eax	# p_state_49->eof, D.15216
	testb	%al, %al	# D.15216
	je	.L725	#,
.L724:
.LBE83:
	.loc 4 280 0 is_stmt 1
	jmp	.L726	#
.L702:
	.loc 4 309 0
	movq	-48(%rbp), %rdx	# self, tmp214
	movq	-40(%rbp), %rcx	# chunk, tmp215
	movq	-32(%rbp), %rax	# p_state, tmp216
	movq	%rcx, %rsi	# tmp215,
	movq	%rax, %rdi	# tmp216,
	call	parse	#
	.loc 4 310 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.L726:
	.loc 4 312 0
	movq	-32(%rbp), %rax	# p_state, tmp217
	movb	$0, 40(%rax)	#, p_state_49->parsing
	.loc 4 313 0
	movq	-32(%rbp), %rax	# p_state, tmp218
	movzbl	41(%rax), %eax	# p_state_49->eof, D.15216
	testb	%al, %al	# D.15216
	je	.L727	#,
	.loc 4 314 0
	movq	-32(%rbp), %rax	# p_state, tmp219
	movb	$0, 41(%rax)	#, p_state_49->eof
	.loc 4 315 0
	addq	$8, %rbx	#, sp
	call	Perl_sv_newmortal	#
	movq	%rax, (%rbx)	# D.15219, *sp_154
	jmp	.L728	#
.L727:
	.loc 4 318 0
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# self, tmp220
	movq	%rax, (%rbx)	# tmp220, *sp_156
.L728:
	.loc 4 321 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 4 322 0
	nop
.LBE82:
	.loc 4 324 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	XS_HTML__Parser_parse, .-XS_HTML__Parser_parse
	.section	.rodata
	.align 8
.LC70:
	.string	"Usage: HTML::Parser::eof(self)"
	.text
	.globl	XS_HTML__Parser_eof
	.type	XS_HTML__Parser_eof, @function
XS_HTML__Parser_eof:
.LFB29:
	.loc 4 328 0
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
	.loc 4 329 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.396
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.397
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.399
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.399, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.398_4, D.15227
	cltq
	salq	$3, %rax	#, D.15228
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.400
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.401
	subq	%rax, %rdx	# PL_stack_base.402, D.15229
	movq	%rdx, %rax	# D.15229, D.15229
	sarq	$3, %rax	#, tmp87
	addl	$1, %eax	#, D.15230
	movl	%eax, -40(%rbp)	# D.15230, ax
	movq	%rbx, %rdx	# sp, sp.403
	movq	%r12, %rax	# mark, mark.404
	subq	%rax, %rdx	# mark.404, D.15229
	movq	%rdx, %rax	# D.15229, D.15229
	sarq	$3, %rax	#, tmp88
	movl	%eax, -36(%rbp)	# D.15229, items
	.loc 4 330 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L731	#,
	.loc 4 331 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L731:
	.loc 4 332 0
	movl	-36(%rbp), %eax	# items, tmp89
	cltq
	salq	$3, %rax	#, D.15228
	negq	%rax	# D.15231
	addq	%rax, %rbx	# D.15231, sp
.LBB86:
	.loc 4 334 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.405
	movl	-40(%rbp), %edx	# ax, tmp90
	movslq	%edx, %rdx	# tmp90, D.15228
	salq	$3, %rdx	#, D.15228
	addq	%rdx, %rax	# D.15228, D.15232
	movq	(%rax), %rax	# *_30, tmp91
	movq	%rax, -32(%rbp)	# tmp91, self
	.loc 4 336 0
	movq	-32(%rbp), %rax	# self, tmp92
	movq	%rax, %rdi	# tmp92,
	call	get_pstate_hv	#
	movq	%rax, -24(%rbp)	# tmp93, p_state
	.loc 4 339 0
	movq	-24(%rbp), %rax	# p_state, tmp94
	movzbl	40(%rax), %eax	# p_state_32->parsing, D.15233
	testb	%al, %al	# D.15233
	je	.L732	#,
	.loc 4 340 0
	movq	-24(%rbp), %rax	# p_state, tmp95
	movb	$1, 41(%rax)	#, p_state_32->eof
	jmp	.L733	#
.L732:
	.loc 4 342 0
	movq	-24(%rbp), %rax	# p_state, tmp96
	movb	$1, 40(%rax)	#, p_state_32->parsing
	.loc 4 343 0
	movq	-32(%rbp), %rdx	# self, tmp97
	movq	-24(%rbp), %rax	# p_state, tmp98
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	parse	#
	.loc 4 344 0
	movq	-24(%rbp), %rax	# p_state, tmp99
	movb	$0, 40(%rax)	#, p_state_32->parsing
.L733:
	.loc 4 346 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# self, tmp100
	movq	%rax, (%rbx)	# tmp100, *sp_34
	.loc 4 348 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 4 349 0
	nop
.LBE86:
	.loc 4 351 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	XS_HTML__Parser_eof, .-XS_HTML__Parser_eof
	.section	.rodata
.LC71:
	.string	"Usage: %s(pstate, ...)"
	.align 8
.LC72:
	.string	"Unknown boolean attribute (%d)"
	.text
	.globl	XS_HTML__Parser_strict_comment
	.type	XS_HTML__Parser_strict_comment, @function
XS_HTML__Parser_strict_comment:
.LFB30:
	.loc 4 355 0
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
	.loc 4 356 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.406
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.407
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.409
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.409, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.408_11, D.15235
	cltq
	salq	$3, %rax	#, D.15236
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.410
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.411
	subq	%rax, %rdx	# PL_stack_base.412, D.15237
	movq	%rdx, %rax	# D.15237, D.15237
	sarq	$3, %rax	#, tmp181
	addl	$1, %eax	#, D.15238
	movl	%eax, -60(%rbp)	# D.15238, ax
	movq	%r12, %rdx	# sp, sp.413
	movq	%rbx, %rax	# mark, mark.414
	subq	%rax, %rdx	# mark.414, D.15237
	movq	%rdx, %rax	# D.15237, D.15237
	sarq	$3, %rax	#, tmp182
	movl	%eax, -56(%rbp)	# D.15237, items
	.loc 4 357 0
	movq	-72(%rbp), %rax	# cv, tmp183
	movq	(%rax), %rax	# cv_30(D)->sv_any, D.15239
	movl	88(%rax), %eax	# _31->xcv_xsubany.any_i32, tmp184
	movl	%eax, -52(%rbp)	# tmp184, ix
	.loc 4 358 0
	cmpl	$0, -56(%rbp)	#, items
	jg	.L736	#,
	.loc 4 359 0
	movq	-72(%rbp), %rax	# cv, tmp185
	movq	(%rax), %rax	# cv_30(D)->sv_any, D.15239
	movq	96(%rax), %rax	# _33->xcv_gv, D.15240
	movq	(%rax), %rax	# _34->sv_any, D.15241
	movq	64(%rax), %rax	# _35->xgv_name, D.15242
	movq	%rax, %rsi	# D.15242,
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L736:
.LBB87:
	.loc 4 361 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.415
	movl	-60(%rbp), %edx	# ax, tmp186
	movslq	%edx, %rdx	# tmp186, D.15236
	salq	$3, %rdx	#, D.15236
	addq	%rdx, %rax	# D.15236, D.15243
	movq	(%rax), %rax	# *_40, D.15244
	movq	%rax, %rdi	# D.15244,
	call	get_pstate_hv	#
	movq	%rax, -40(%rbp)	# tmp187, pstate
	.loc 4 367 0
	cmpl	$10, -52(%rbp)	#, ix
	ja	.L737	#,
	movl	-52(%rbp), %eax	# ix, tmp188
	movq	.L739(,%rax,8), %rax	#, tmp189
	jmp	*%rax	# tmp189
	.section	.rodata
	.align 8
	.align 4
.L739:
	.quad	.L737
	.quad	.L738
	.quad	.L740
	.quad	.L741
	.quad	.L742
	.quad	.L743
	.quad	.L744
	.quad	.L745
	.quad	.L746
	.quad	.L747
	.quad	.L748
	.text
.L738:
	.loc 4 368 0
	movq	-40(%rbp), %rax	# pstate, tmp193
	addq	$137, %rax	#, tmp192
	movq	%rax, -48(%rbp)	# tmp192, attr
	jmp	.L749	#
.L740:
	.loc 4 369 0
	movq	-40(%rbp), %rax	# pstate, tmp197
	addq	$138, %rax	#, tmp196
	movq	%rax, -48(%rbp)	# tmp196, attr
	jmp	.L749	#
.L741:
	.loc 4 370 0
	movq	-40(%rbp), %rax	# pstate, tmp201
	addq	$140, %rax	#, tmp200
	movq	%rax, -48(%rbp)	# tmp200, attr
	jmp	.L749	#
.L742:
	.loc 4 371 0
	movq	-40(%rbp), %rax	# pstate, tmp205
	addq	$141, %rax	#, tmp204
	movq	%rax, -48(%rbp)	# tmp204, attr
	jmp	.L749	#
.L743:
	.loc 4 374 0
	movq	-40(%rbp), %rax	# pstate, tmp209
	addq	$136, %rax	#, tmp208
	movq	%rax, -48(%rbp)	# tmp208, attr
	jmp	.L749	#
.L744:
	.loc 4 378 0
	movq	-40(%rbp), %rax	# pstate, tmp213
	addq	$142, %rax	#, tmp212
	movq	%rax, -48(%rbp)	# tmp212, attr
	jmp	.L749	#
.L745:
	.loc 4 379 0
	movq	-40(%rbp), %rax	# pstate, tmp217
	addq	$143, %rax	#, tmp216
	movq	%rax, -48(%rbp)	# tmp216, attr
	jmp	.L749	#
.L746:
	.loc 4 380 0
	movq	-40(%rbp), %rax	# pstate, tmp221
	addq	$139, %rax	#, tmp220
	movq	%rax, -48(%rbp)	# tmp220, attr
	jmp	.L749	#
.L747:
	.loc 4 381 0
	movq	-40(%rbp), %rax	# pstate, tmp225
	addq	$144, %rax	#, tmp224
	movq	%rax, -48(%rbp)	# tmp224, attr
	jmp	.L749	#
.L748:
	.loc 4 383 0
	movq	-40(%rbp), %rax	# pstate, tmp229
	addq	$145, %rax	#, tmp228
	movq	%rax, -48(%rbp)	# tmp228, attr
	jmp	.L749	#
.L737:
	.loc 4 388 0
	movl	-52(%rbp), %eax	# ix, tmp230
	movl	%eax, %esi	# tmp230,
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L749:
	.loc 4 390 0
	movq	-48(%rbp), %rax	# attr, tmp231
	movzbl	(%rax), %eax	# *attr_1, D.15245
	testb	%al, %al	# D.15245
	je	.L750	#,
	.loc 4 390 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.416
	jmp	.L751	#
.L750:
	.loc 4 390 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.416
.L751:
	.loc 4 390 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.416, RETVAL
	.loc 4 391 0 is_stmt 1 discriminator 3
	cmpl	$1, -56(%rbp)	#, items
	jle	.L752	#,
	.loc 4 392 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.418
	movl	-60(%rbp), %edx	# ax, tmp232
	movslq	%edx, %rdx	# tmp232, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_62, D.15244
	testq	%rax, %rax	# D.15244
	je	.L753	#,
	.loc 4 392 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.420
	movl	-60(%rbp), %edx	# ax, tmp233
	movslq	%edx, %rdx	# tmp233, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_68, D.15244
	movl	12(%rax), %eax	# _69->sv_flags, D.15247
	andl	$262144, %eax	#, D.15247
	testl	%eax, %eax	# D.15247
	je	.L754	#,
	.loc 4 392 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.422
	movl	-60(%rbp), %edx	# ax, tmp234
	movslq	%edx, %rdx	# tmp234, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_76, D.15244
	movq	(%rax), %rax	# _77->sv_any, PL_Xpv.423
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.423, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.424
	testq	%rax, %rax	# PL_Xpv.424
	je	.L755	#,
	.loc 4 392 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.425
	movq	8(%rax), %rax	# PL_Xpv.425_80->xpv_cur, D.15236
	cmpq	$1, %rax	#, D.15236
	ja	.L756	#,
	.loc 4 392 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.426
	movq	8(%rax), %rax	# PL_Xpv.426_82->xpv_cur, D.15236
	testq	%rax, %rax	# D.15236
	je	.L755	#,
	.loc 4 392 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.427
	movq	(%rax), %rax	# PL_Xpv.427_84->xpv_pv, D.15242
	movzbl	(%rax), %eax	# *_85, D.15245
	cmpb	$48, %al	#, D.15245
	je	.L755	#,
.L756:
	.loc 4 392 0 discriminator 3
	movl	$1, %eax	#, iftmp.421
	jmp	.L757	#
.L755:
	.loc 4 392 0 discriminator 2
	movl	$0, %eax	#, iftmp.421
.L757:
	jmp	.L763	#
.L754:
	.loc 4 392 0 discriminator 4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.429
	movl	-60(%rbp), %edx	# ax, tmp235
	movslq	%edx, %rdx	# tmp235, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_94, D.15244
	movl	12(%rax), %eax	# _95->sv_flags, D.15247
	andl	$65536, %eax	#, D.15247
	testl	%eax, %eax	# D.15247
	je	.L759	#,
	.loc 4 392 0 discriminator 5
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.430
	movl	-60(%rbp), %edx	# ax, tmp236
	movslq	%edx, %rdx	# tmp236, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_102, D.15244
	movq	(%rax), %rax	# _103->sv_any, D.15248
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_104].xiv_iv, D.15237
	testq	%rax, %rax	# D.15237
	setne	%al	#, D.15249
	jmp	.L763	#
.L759:
	.loc 4 392 0 discriminator 6
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.432
	movl	-60(%rbp), %edx	# ax, tmp237
	movslq	%edx, %rdx	# tmp237, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_112, D.15244
	movl	12(%rax), %eax	# _113->sv_flags, D.15247
	andl	$131072, %eax	#, D.15247
	testl	%eax, %eax	# D.15247
	je	.L761	#,
	.loc 4 392 0 discriminator 7
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.433
	movl	-60(%rbp), %edx	# ax, tmp238
	movslq	%edx, %rdx	# tmp238, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_120, D.15244
	movq	(%rax), %rax	# _121->sv_any, D.15248
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_122].xnv_nv, D.15250
	xorpd	%xmm1, %xmm1	# tmp240
	ucomisd	%xmm1, %xmm0	# tmp240, D.15250
	setp	%dl	#, tmp239
	movl	$1, %eax	#, tmp242
	xorpd	%xmm1, %xmm1	# tmp241
	ucomisd	%xmm1, %xmm0	# tmp241, D.15250
	cmove	%edx, %eax	# tmp239,, D.15249
	jmp	.L763	#
.L761:
	.loc 4 392 0 discriminator 8
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.434
	movl	-60(%rbp), %edx	# ax, tmp243
	movslq	%edx, %rdx	# tmp243, D.15246
	addq	$1, %rdx	#, D.15246
	salq	$3, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, D.15243
	movq	(%rax), %rax	# *_130, D.15244
	movq	%rax, %rdi	# D.15244,
	call	Perl_sv_2bool	#
	jmp	.L763	#
.L753:
	.loc 4 392 0 discriminator 2
	movl	$0, %eax	#, iftmp.417
.L763:
	.loc 4 392 0 discriminator 11
	movq	-48(%rbp), %rdx	# attr, tmp244
	movb	%al, (%rdx)	# iftmp.417, *attr_1
.L752:
	.loc 4 394 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.435
	movl	-60(%rbp), %edx	# ax, tmp245
	movslq	%edx, %rdx	# tmp245, D.15236
	salq	$3, %rdx	#, D.15236
	addq	%rax, %rdx	# PL_stack_base.435, D.15243
	movq	-32(%rbp), %rax	# RETVAL, tmp246
	movq	%rax, (%rdx)	# tmp246, *_140
	.loc 4 395 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.436
	movl	-60(%rbp), %edx	# ax, tmp247
	movslq	%edx, %rdx	# tmp247, D.15236
	salq	$3, %rdx	#, D.15236
	addq	%rdx, %rax	# D.15236, D.15243
	movq	(%rax), %rax	# *_144, D.15244
	movq	%rax, %rdi	# D.15244,
	call	Perl_sv_2mortal	#
.LBE87:
.LBB88:
	.loc 4 397 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.437
	movl	-60(%rbp), %edx	# ax, tmp248
	movslq	%edx, %rcx	# tmp248, D.15246
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.438
	addq	%rcx, %rdx	# D.15246, D.15246
	salq	$3, %rdx	#, D.15246
	subq	$8, %rdx	#, D.15246
	addq	%rdx, %rax	# D.15246, PL_stack_sp.439
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.439, PL_stack_sp
	nop
.LBE88:
	.loc 4 398 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	XS_HTML__Parser_strict_comment, .-XS_HTML__Parser_strict_comment
	.section	.rodata
	.align 8
.LC73:
	.string	"Usage: HTML::Parser::boolean_attribute_value(pstate, ...)"
	.text
	.globl	XS_HTML__Parser_boolean_attribute_value
	.type	XS_HTML__Parser_boolean_attribute_value, @function
XS_HTML__Parser_boolean_attribute_value:
.LFB31:
	.loc 4 402 0
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
	.loc 4 403 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.440
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.441
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.443
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.443, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.442_5, D.15253
	cltq
	salq	$3, %rax	#, D.15254
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.444
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.445
	subq	%rax, %rdx	# PL_stack_base.446, D.15255
	movq	%rdx, %rax	# D.15255, D.15255
	sarq	$3, %rax	#, tmp111
	addl	$1, %eax	#, D.15256
	movl	%eax, -48(%rbp)	# D.15256, ax
	movq	%r12, %rdx	# sp, sp.447
	movq	%rbx, %rax	# mark, mark.448
	subq	%rax, %rdx	# mark.448, D.15255
	movq	%rdx, %rax	# D.15255, D.15255
	sarq	$3, %rax	#, tmp112
	movl	%eax, -44(%rbp)	# D.15255, items
	.loc 4 404 0
	cmpl	$0, -44(%rbp)	#, items
	jg	.L766	#,
	.loc 4 405 0
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L766:
.LBB89:
	.loc 4 407 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.449
	movl	-48(%rbp), %edx	# ax, tmp113
	movslq	%edx, %rdx	# tmp113, D.15254
	salq	$3, %rdx	#, D.15254
	addq	%rdx, %rax	# D.15254, D.15257
	movq	(%rax), %rax	# *_27, D.15258
	movq	%rax, %rdi	# D.15258,
	call	get_pstate_hv	#
	movq	%rax, -40(%rbp)	# tmp114, pstate
	.loc 4 410 0
	movq	-40(%rbp), %rax	# pstate, tmp115
	movq	152(%rax), %rax	# pstate_29->bool_attr_val, D.15258
	.loc 4 411 0
	testq	%rax, %rax	# D.15258
	je	.L767	#,
	.loc 4 410 0
	movq	-40(%rbp), %rax	# pstate, tmp116
	movq	152(%rax), %rax	# pstate_29->bool_attr_val, D.15258
	.loc 4 411 0
	movq	%rax, %rdi	# D.15258,
	call	Perl_newSVsv	#
	jmp	.L768	#
.L767:
	.loc 4 411 0 is_stmt 0 discriminator 1
	movl	$PL_sv_undef, %eax	#, iftmp.450
.L768:
	.loc 4 410 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.450, RETVAL
	.loc 4 412 0
	cmpl	$1, -44(%rbp)	#, items
	jle	.L769	#,
	.loc 4 413 0
	movq	-40(%rbp), %rax	# pstate, tmp117
	movq	152(%rax), %rax	# pstate_29->bool_attr_val, D.15258
	movq	%rax, %rdi	# D.15258,
	call	Perl_sv_free	#
	.loc 4 414 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.451
	movl	-48(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.15259
	addq	$1, %rdx	#, D.15259
	salq	$3, %rdx	#, D.15259
	addq	%rdx, %rax	# D.15259, D.15257
	movq	(%rax), %rax	# *_40, D.15258
	movq	%rax, %rdi	# D.15258,
	call	Perl_newSVsv	#
	movq	-40(%rbp), %rdx	# pstate, tmp119
	movq	%rax, 152(%rdx)	# D.15258, pstate_29->bool_attr_val
.L769:
	.loc 4 417 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.452
	movl	-48(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.15254
	salq	$3, %rdx	#, D.15254
	addq	%rax, %rdx	# PL_stack_base.452, D.15257
	movq	-32(%rbp), %rax	# RETVAL, tmp121
	movq	%rax, (%rdx)	# tmp121, *_46
	.loc 4 418 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.453
	movl	-48(%rbp), %edx	# ax, tmp122
	movslq	%edx, %rdx	# tmp122, D.15254
	salq	$3, %rdx	#, D.15254
	addq	%rdx, %rax	# D.15254, D.15257
	movq	(%rax), %rax	# *_50, D.15258
	movq	%rax, %rdi	# D.15258,
	call	Perl_sv_2mortal	#
.LBE89:
.LBB90:
	.loc 4 420 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.454
	movl	-48(%rbp), %edx	# ax, tmp123
	movslq	%edx, %rcx	# tmp123, D.15259
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.455
	addq	%rcx, %rdx	# D.15259, D.15259
	salq	$3, %rdx	#, D.15259
	subq	$8, %rdx	#, D.15259
	addq	%rdx, %rax	# D.15259, PL_stack_sp.456
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.456, PL_stack_sp
	nop
.LBE90:
	.loc 4 421 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	XS_HTML__Parser_boolean_attribute_value, .-XS_HTML__Parser_boolean_attribute_value
	.section	.rodata
	.align 8
.LC74:
	.string	"Unknown tag-list attribute (%d)"
.LC75:
	.string	"Can't report tag lists yet"
	.align 8
.LC76:
	.string	"Tag list must be plain scalars and arrays"
	.text
	.globl	XS_HTML__Parser_ignore_tags
	.type	XS_HTML__Parser_ignore_tags, @function
XS_HTML__Parser_ignore_tags:
.LFB32:
	.loc 4 425 0
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
	movq	%rdi, -104(%rbp)	# cv, cv
	.loc 4 426 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.457
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.458
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.460
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.460, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.459_7, D.15261
	cltq
	salq	$3, %rax	#, D.15262
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.461
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.462
	subq	%rax, %rdx	# PL_stack_base.463, D.15263
	movq	%rdx, %rax	# D.15263, D.15263
	sarq	$3, %rax	#, tmp133
	addl	$1, %eax	#, D.15264
	movl	%eax, -92(%rbp)	# D.15264, ax
	movq	%r12, %rdx	# sp, sp.464
	movq	%rbx, %rax	# mark, mark.465
	subq	%rax, %rdx	# mark.465, D.15263
	movq	%rdx, %rax	# D.15263, D.15263
	sarq	$3, %rax	#, tmp134
	movl	%eax, -88(%rbp)	# D.15263, items
	.loc 4 427 0
	movq	-104(%rbp), %rax	# cv, tmp135
	movq	(%rax), %rax	# cv_26(D)->sv_any, D.15265
	movl	88(%rax), %eax	# _27->xcv_xsubany.any_i32, tmp136
	movl	%eax, -84(%rbp)	# tmp136, ix
	.loc 4 428 0
	cmpl	$0, -88(%rbp)	#, items
	jg	.L772	#,
	.loc 4 429 0
	movq	-104(%rbp), %rax	# cv, tmp137
	movq	(%rax), %rax	# cv_26(D)->sv_any, D.15265
	movq	96(%rax), %rax	# _29->xcv_gv, D.15266
	movq	(%rax), %rax	# _30->sv_any, D.15267
	movq	64(%rax), %rax	# _31->xgv_name, D.15268
	movq	%rax, %rsi	# D.15268,
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L772:
.LBB91:
	.loc 4 431 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.466
	movl	-92(%rbp), %edx	# ax, tmp138
	movslq	%edx, %rdx	# tmp138, D.15262
	salq	$3, %rdx	#, D.15262
	addq	%rdx, %rax	# D.15262, D.15269
	movq	(%rax), %rax	# *_36, D.15270
	movq	%rax, %rdi	# D.15270,
	call	get_pstate_hv	#
	movq	%rax, -64(%rbp)	# tmp139, pstate
	.loc 4 437 0
	movl	-84(%rbp), %eax	# ix, ix
	cmpl	$2, %eax	#, ix
	je	.L774	#,
	cmpl	$3, %eax	#, ix
	je	.L775	#,
	cmpl	$1, %eax	#, ix
	jne	.L794	#,
	.loc 4 438 0
	movq	-64(%rbp), %rax	# pstate, tmp144
	addq	$312, %rax	#, tmp143
	movq	%rax, -80(%rbp)	# tmp143, attr
	jmp	.L777	#
.L774:
	.loc 4 439 0
	movq	-64(%rbp), %rax	# pstate, tmp148
	addq	$320, %rax	#, tmp147
	movq	%rax, -80(%rbp)	# tmp147, attr
	jmp	.L777	#
.L775:
	.loc 4 440 0
	movq	-64(%rbp), %rax	# pstate, tmp152
	addq	$328, %rax	#, tmp151
	movq	%rax, -80(%rbp)	# tmp151, attr
	jmp	.L777	#
.L794:
	.loc 4 442 0
	movl	-84(%rbp), %eax	# ix, tmp153
	movl	%eax, %esi	# tmp153,
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L777:
	.loc 4 444 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.467
	movzbl	36(%rax), %eax	# PL_op.467_43->op_flags, D.15271
	movzbl	%al, %eax	# D.15271, D.15261
	andl	$3, %eax	#, D.15261
	cmpl	$1, %eax	#, D.15261
	je	.L778	#,
	.loc 4 444 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.468
	movzbl	36(%rax), %eax	# PL_op.468_47->op_flags, D.15271
	movzbl	%al, %eax	# D.15271, D.15261
	andl	$3, %eax	#, D.15261
	cmpl	$2, %eax	#, D.15261
	je	.L779	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.469
	movzbl	36(%rax), %eax	# PL_op.469_51->op_flags, D.15271
	movzbl	%al, %eax	# D.15271, D.15261
	andl	$3, %eax	#, D.15261
	cmpl	$3, %eax	#, D.15261
	je	.L779	#,
	.loc 4 444 0 discriminator 2
	call	Perl_block_gimme	#
	cmpl	$128, %eax	#, D.15261
	je	.L778	#,
.L779:
	.loc 4 445 0 is_stmt 1
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L778:
	.loc 4 447 0
	subl	$1, -88(%rbp)	#, items
	.loc 4 448 0
	cmpl	$0, -88(%rbp)	#, items
	je	.L780	#,
	.loc 4 449 0
	movq	-80(%rbp), %rax	# attr, tmp154
	movq	(%rax), %rax	# *attr_1, D.15272
	testq	%rax, %rax	# D.15272
	je	.L781	#,
	.loc 4 450 0
	movq	-80(%rbp), %rax	# attr, tmp155
	movq	(%rax), %rax	# *attr_1, D.15272
	movq	%rax, %rdi	# D.15272,
	call	Perl_hv_clear	#
	jmp	.L782	#
.L781:
	.loc 4 452 0
	call	Perl_newHV	#
	movq	-80(%rbp), %rdx	# attr, tmp156
	movq	%rax, (%rdx)	# D.15272, *attr_1
.L782:
	.loc 4 454 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L783	#
.L791:
.LBB92:
	.loc 4 455 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.470
	movl	-96(%rbp), %edx	# i, tmp157
	leal	1(%rdx), %ecx	#, D.15261
	movl	-92(%rbp), %edx	# ax, tmp158
	addl	%ecx, %edx	# D.15261, D.15261
	movslq	%edx, %rdx	# D.15261, D.15262
	salq	$3, %rdx	#, D.15262
	addq	%rdx, %rax	# D.15262, D.15269
	movq	(%rax), %rax	# *_66, tmp159
	movq	%rax, -56(%rbp)	# tmp159, sv
	.loc 4 456 0
	movq	-56(%rbp), %rax	# sv, tmp160
	movl	12(%rax), %eax	# sv_67->sv_flags, D.15273
	andl	$524288, %eax	#, D.15273
	testl	%eax, %eax	# D.15273
	je	.L784	#,
	.loc 4 457 0
	movq	-56(%rbp), %rax	# sv, tmp161
	movq	(%rax), %rax	# sv_67->sv_any, D.15274
	movq	(%rax), %rax	# MEM[(struct XRV *)_70].xrv_rv, tmp162
	movq	%rax, -56(%rbp)	# tmp162, sv
	.loc 4 458 0
	movq	-56(%rbp), %rax	# sv, tmp163
	movl	12(%rax), %eax	# sv_71->sv_flags, D.15273
	movzbl	%al, %eax	# D.15273, D.15273
	cmpl	$10, %eax	#, D.15273
	jne	.L785	#,
.LBB93:
	.loc 4 459 0
	movq	-56(%rbp), %rax	# sv, tmp164
	movq	%rax, -48(%rbp)	# tmp164, av
	.loc 4 461 0
	movq	-48(%rbp), %rax	# av, tmp165
	movq	%rax, %rdi	# tmp165,
	call	Perl_av_len	#
	addl	$1, %eax	#, D.15261
	cltq
	movq	%rax, -40(%rbp)	# tmp166, len
	.loc 4 462 0
	movq	$0, -72(%rbp)	#, j
	jmp	.L786	#
.L788:
.LBB94:
	.loc 4 463 0
	movq	-72(%rbp), %rax	# j, tmp167
	movl	%eax, %ecx	# tmp167, D.15261
	movq	-48(%rbp), %rax	# av, tmp168
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.15261,
	movq	%rax, %rdi	# tmp168,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp169, svp
	.loc 4 464 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L787	#,
	.loc 4 465 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15270
	movq	-32(%rbp), %rax	# svp, tmp170
	movq	(%rax), %rsi	# *svp_80, D.15270
	movq	-80(%rbp), %rax	# attr, tmp171
	movq	(%rax), %rax	# *attr_1, D.15272
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.15272,
	call	Perl_hv_store_ent	#
.L787:
.LBE94:
	.loc 4 462 0
	addq	$1, -72(%rbp)	#, j
.L786:
	.loc 4 462 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# j, tmp172
	cmpq	-40(%rbp), %rax	# len, tmp172
	jb	.L788	#,
.LBE93:
	jmp	.L790	#
.L785:
	.loc 4 470 0 is_stmt 1
	movl	$.LC76, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L790	#
.L784:
	.loc 4 473 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.15270
	movq	-80(%rbp), %rax	# attr, tmp173
	movq	(%rax), %rax	# *attr_1, D.15272
	movq	-56(%rbp), %rsi	# sv, tmp174
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.15272,
	call	Perl_hv_store_ent	#
.L790:
.LBE92:
	.loc 4 454 0
	addl	$1, -96(%rbp)	#, i
.L783:
	.loc 4 454 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp175
	cmpl	-88(%rbp), %eax	# items, tmp175
	jl	.L791	#,
	jmp	.L792	#
.L780:
	.loc 4 477 0 is_stmt 1
	movq	-80(%rbp), %rax	# attr, tmp176
	movq	(%rax), %rax	# *attr_1, D.15272
	testq	%rax, %rax	# D.15272
	je	.L792	#,
	.loc 4 478 0
	movq	-80(%rbp), %rax	# attr, tmp177
	movq	(%rax), %rax	# *attr_1, D.15272
	movq	%rax, %rdi	# D.15272,
	call	Perl_sv_free	#
	.loc 4 479 0
	movq	-80(%rbp), %rax	# attr, tmp178
	movq	$0, (%rax)	#, *attr_1
.L792:
.LBE91:
.LBB95:
	.loc 4 483 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.471
	movl	-92(%rbp), %edx	# ax, tmp179
	movslq	%edx, %rcx	# tmp179, D.15275
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.472
	addq	%rcx, %rdx	# D.15275, D.15275
	salq	$3, %rdx	#, D.15275
	subq	$8, %rdx	#, D.15275
	addq	%rdx, %rax	# D.15275, PL_stack_sp.473
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.473, PL_stack_sp
	nop
.LBE95:
	.loc 4 484 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	XS_HTML__Parser_ignore_tags, .-XS_HTML__Parser_ignore_tags
	.section	.rodata
	.align 8
.LC77:
	.string	"Usage: HTML::Parser::handler(pstate, eventname, ...)"
.LC78:
	.string	"No handler for %s events"
	.text
	.globl	XS_HTML__Parser_handler
	.type	XS_HTML__Parser_handler, @function
XS_HTML__Parser_handler:
.LFB33:
	.loc 4 488 0
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
	movq	%rdi, -88(%rbp)	# cv, cv
	.loc 4 489 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.474
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.475
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.477
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.477, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.476_9, D.15279
	cltq
	salq	$3, %rax	#, D.15280
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.478
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.479
	subq	%rax, %rdx	# PL_stack_base.480, D.15281
	movq	%rdx, %rax	# D.15281, D.15281
	sarq	$3, %rax	#, tmp125
	addl	$1, %eax	#, D.15282
	movl	%eax, -64(%rbp)	# D.15282, ax
	movq	%rbx, %rdx	# sp, sp.481
	movq	%r12, %rax	# mark, mark.482
	subq	%rax, %rdx	# mark.482, D.15281
	movq	%rdx, %rax	# D.15281, D.15281
	sarq	$3, %rax	#, tmp126
	movl	%eax, -60(%rbp)	# D.15281, items
	.loc 4 490 0
	cmpl	$1, -60(%rbp)	#, items
	jg	.L796	#,
	.loc 4 491 0
	movl	$.LC77, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L796:
	.loc 4 492 0
	movl	-60(%rbp), %eax	# items, tmp127
	cltq
	salq	$3, %rax	#, D.15280
	negq	%rax	# D.15283
	addq	%rax, %rbx	# D.15283, sp
.LBB96:
	.loc 4 494 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.483
	movl	-64(%rbp), %edx	# ax, tmp128
	movslq	%edx, %rdx	# tmp128, D.15280
	salq	$3, %rdx	#, D.15280
	addq	%rdx, %rax	# D.15280, D.15284
	movq	(%rax), %rax	# *_35, D.15285
	movq	%rax, %rdi	# D.15285,
	call	get_pstate_hv	#
	movq	%rax, -48(%rbp)	# tmp129, pstate
	.loc 4 495 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.484
	movl	-64(%rbp), %edx	# ax, tmp130
	movslq	%edx, %rdx	# tmp130, D.15283
	addq	$1, %rdx	#, D.15283
	salq	$3, %rdx	#, D.15283
	addq	%rdx, %rax	# D.15283, D.15284
	movq	(%rax), %rax	# *_42, tmp131
	movq	%rax, -40(%rbp)	# tmp131, eventname
	.loc 4 498 0
	movq	-40(%rbp), %rax	# eventname, tmp132
	movl	12(%rax), %eax	# eventname_43->sv_flags, D.15286
	andl	$262144, %eax	#, D.15286
	testl	%eax, %eax	# D.15286
	je	.L797	#,
	.loc 4 498 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# eventname, tmp133
	movq	(%rax), %rax	# eventname_43->sv_any, D.15287
	movq	8(%rax), %rax	# MEM[(struct XPV *)_46].xpv_cur, name_len.486
	movq	%rax, -56(%rbp)	# name_len.486, name_len
	movq	-40(%rbp), %rax	# eventname, tmp134
	movq	(%rax), %rax	# eventname_43->sv_any, D.15287
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, iftmp.485
	jmp	.L798	#
.L797:
	.loc 4 498 0 discriminator 2
	leaq	-56(%rbp), %rcx	#, tmp135
	movq	-40(%rbp), %rax	# eventname, tmp136
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	Perl_sv_2pv_flags	#
.L798:
	.loc 4 498 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.485, name
	.loc 4 499 0 is_stmt 1 discriminator 3
	movl	$-1, -72(%rbp)	#, event
	.loc 4 505 0 discriminator 3
	movl	$0, -68(%rbp)	#, i
	jmp	.L799	#
.L802:
	.loc 4 506 0
	movl	-68(%rbp), %eax	# i, tmp138
	cltq
	movq	event_id_str(,%rax,8), %rdx	# event_id_str, D.15288
	movq	-32(%rbp), %rax	# name, tmp139
	movq	%rdx, %rsi	# D.15288,
	movq	%rax, %rdi	# tmp139,
	call	strcmp	#
	testl	%eax, %eax	# D.15279
	jne	.L800	#,
	.loc 4 507 0
	movl	-68(%rbp), %eax	# i, tmp140
	movl	%eax, -72(%rbp)	# tmp140, event
	.loc 4 508 0
	jmp	.L801	#
.L800:
	.loc 4 505 0
	addl	$1, -68(%rbp)	#, i
.L799:
	.loc 4 505 0 is_stmt 0 discriminator 1
	cmpl	$8, -68(%rbp)	#, i
	jle	.L802	#,
.L801:
	.loc 4 511 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, event
	jns	.L803	#,
	.loc 4 512 0
	movq	-32(%rbp), %rax	# name, tmp141
	movq	%rax, %rsi	# tmp141,
	movl	$.LC78, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L803:
	.loc 4 514 0
	movl	-72(%rbp), %eax	# event, tmp143
	cltq
	addq	$10, %rax	#, tmp144
	salq	$4, %rax	#, tmp145
	movq	%rax, %rdx	# tmp145, tmp145
	movq	-48(%rbp), %rax	# pstate, tmp149
	addq	%rdx, %rax	# tmp145, tmp148
	movq	%rax, -24(%rbp)	# tmp148, h
	.loc 4 517 0
	movq	-24(%rbp), %rax	# h, tmp150
	movq	(%rax), %rax	# h_58->cb, D.15285
	testq	%rax, %rax	# D.15285
	je	.L804	#,
	.loc 4 518 0
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# h, tmp151
	movq	(%rax), %rax	# h_58->cb, D.15285
	movl	12(%rax), %eax	# _61->sv_flags, D.15286
	movzbl	%al, %eax	# D.15286, D.15286
	cmpl	$10, %eax	#, D.15286
	jne	.L805	#,
	.loc 4 518 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# h, tmp152
	movq	(%rax), %rax	# h_58->cb, D.15285
	movq	%rax, %rdi	# D.15285,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.15285,
	call	Perl_sv_2mortal	#
	jmp	.L806	#
.L805:
	.loc 4 518 0 discriminator 2
	movq	-24(%rbp), %rax	# h, tmp153
	movq	(%rax), %rax	# h_58->cb, D.15285
	movq	%rax, %rdi	# D.15285,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.15285,
	call	Perl_sv_2mortal	#
.L806:
	.loc 4 518 0 discriminator 1
	movq	%rax, (%rbx)	# iftmp.487, *sp_60
	jmp	.L807	#
.L804:
	.loc 4 523 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_70
.L807:
	.loc 4 527 0
	cmpl	$3, -60(%rbp)	#, items
	jle	.L808	#,
	.loc 4 528 0
	movq	-24(%rbp), %rax	# h, tmp154
	movq	8(%rax), %rax	# h_58->argspec, D.15285
	movq	%rax, %rdi	# D.15285,
	call	Perl_sv_free	#
	.loc 4 529 0
	movq	-24(%rbp), %rax	# h, tmp155
	movq	$0, 8(%rax)	#, h_58->argspec
	.loc 4 530 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.488
	movl	-64(%rbp), %edx	# ax, tmp156
	movslq	%edx, %rdx	# tmp156, D.15283
	addq	$3, %rdx	#, D.15283
	salq	$3, %rdx	#, D.15283
	addq	%rdx, %rax	# D.15283, D.15284
	movq	(%rax), %rax	# *_76, D.15285
	movq	-48(%rbp), %rdx	# pstate, tmp157
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.15285,
	call	argspec_compile	#
	movq	-24(%rbp), %rdx	# h, tmp158
	movq	%rax, 8(%rdx)	# D.15285, h_58->argspec
.L808:
	.loc 4 532 0
	cmpl	$2, -60(%rbp)	#, items
	jle	.L809	#,
	.loc 4 533 0
	movq	-24(%rbp), %rax	# h, tmp159
	movq	(%rax), %rax	# h_58->cb, D.15285
	movq	%rax, %rdi	# D.15285,
	call	Perl_sv_free	#
	.loc 4 534 0
	movq	-24(%rbp), %rax	# h, tmp160
	movq	$0, (%rax)	#, h_58->cb
	.loc 4 535 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.489
	movl	-64(%rbp), %edx	# ax, tmp161
	movslq	%edx, %rdx	# tmp161, D.15283
	addq	$2, %rdx	#, D.15283
	salq	$3, %rdx	#, D.15283
	addq	%rdx, %rax	# D.15283, D.15284
	movq	(%rax), %rax	# *_84, D.15285
	movq	%rax, %rdi	# D.15285,
	call	check_handler	#
	movq	-24(%rbp), %rdx	# h, tmp162
	movq	%rax, (%rdx)	# D.15285, h_58->cb
.L809:
	.loc 4 538 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 4 539 0
	nop
.LBE96:
	.loc 4 541 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	XS_HTML__Parser_handler, .-XS_HTML__Parser_handler
	.section	.rodata
	.align 8
.LC79:
	.string	"Can't inline decode readonly string"
	.text
	.globl	XS_HTML__Entities_decode_entities
	.type	XS_HTML__Entities_decode_entities, @function
XS_HTML__Entities_decode_entities:
.LFB34:
	.loc 4 545 0
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
	.loc 4 546 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.490
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.491
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.493
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.493, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.492_6, D.15291
	cltq
	salq	$3, %rax	#, D.15292
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.494
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.495
	subq	%rax, %rdx	# PL_stack_base.496, D.15293
	movq	%rdx, %rax	# D.15293, D.15293
	sarq	$3, %rax	#, tmp137
	addl	$1, %eax	#, D.15294
	movl	%eax, -28(%rbp)	# D.15294, ax
	movq	%rbx, %rdx	# sp, sp.497
	movq	%r12, %rax	# mark, mark.498
	subq	%rax, %rdx	# mark.498, D.15293
	movq	%rdx, %rax	# D.15293, D.15293
	sarq	$3, %rax	#, tmp138
	movl	%eax, -36(%rbp)	# D.15293, items
	.loc 4 548 0
	movl	-36(%rbp), %eax	# items, tmp139
	cltq
	salq	$3, %rax	#, D.15292
	negq	%rax	# D.15295
	addq	%rax, %rbx	# D.15295, sp
.LBB97:
	.loc 4 552 0
	movl	$0, %esi	#,
	movl	$.LC67, %edi	#,
	call	Perl_get_hv	#
	movq	%rax, -24(%rbp)	# tmp140, entity2char
	.loc 4 555 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.499
	movzbl	36(%rax), %eax	# PL_op.499_30->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$1, %eax	#, D.15291
	je	.L812	#,
	.loc 4 555 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.500
	movzbl	36(%rax), %eax	# PL_op.500_34->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$2, %eax	#, D.15291
	je	.L813	#,
	.loc 4 555 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.501
	movzbl	36(%rax), %eax	# PL_op.501_38->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$3, %eax	#, D.15291
	je	.L812	#,
	.loc 4 555 0 discriminator 3
	call	Perl_block_gimme	#
	testl	%eax, %eax	# D.15291
	jne	.L812	#,
.L813:
	.loc 4 555 0 discriminator 1
	cmpl	$1, -36(%rbp)	#, items
	jle	.L812	#,
	.loc 4 556 0 is_stmt 1
	movl	$1, -36(%rbp)	#, items
.L812:
	.loc 4 557 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L814	#
.L818:
	.loc 4 558 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.502
	movzbl	36(%rax), %eax	# PL_op.502_45->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$1, %eax	#, D.15291
	je	.L815	#,
	.loc 4 558 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.503
	movzbl	36(%rax), %eax	# PL_op.503_49->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$2, %eax	#, D.15291
	je	.L816	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.504
	movzbl	36(%rax), %eax	# PL_op.504_53->op_flags, D.15296
	movzbl	%al, %eax	# D.15296, D.15291
	andl	$3, %eax	#, D.15291
	cmpl	$3, %eax	#, D.15291
	je	.L816	#,
	.loc 4 558 0 discriminator 2
	call	Perl_block_gimme	#
	cmpl	$128, %eax	#, D.15291
	je	.L815	#,
.L816:
	.loc 4 559 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.505
	movl	-32(%rbp), %edx	# i, tmp141
	movl	-28(%rbp), %ecx	# ax, tmp142
	addl	%ecx, %edx	# tmp142, D.15291
	movslq	%edx, %rdx	# D.15291, D.15292
	salq	$3, %rdx	#, D.15292
	leaq	(%rax,%rdx), %r12	#, D.15297
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.506
	movl	-32(%rbp), %edx	# i, tmp143
	movl	-28(%rbp), %ecx	# ax, tmp144
	addl	%ecx, %edx	# tmp144, D.15291
	movslq	%edx, %rdx	# D.15291, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15297
	movq	(%rax), %rax	# *_67, D.15298
	movq	%rax, %rdi	# D.15298,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.15298,
	call	Perl_sv_2mortal	#
	movq	%rax, (%r12)	# D.15298, *_62
	jmp	.L817	#
.L815:
	.loc 4 560 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.507
	movl	-32(%rbp), %edx	# i, tmp145
	movl	-28(%rbp), %ecx	# ax, tmp146
	addl	%ecx, %edx	# tmp146, D.15291
	movslq	%edx, %rdx	# D.15291, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15297
	movq	(%rax), %rax	# *_75, D.15298
	movl	12(%rax), %eax	# _76->sv_flags, D.15299
	andl	$8388608, %eax	#, D.15299
	testl	%eax, %eax	# D.15299
	je	.L817	#,
	.loc 4 561 0
	movl	$.LC79, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L817:
	.loc 4 562 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.508
	movl	-32(%rbp), %edx	# i, tmp147
	movl	-28(%rbp), %ecx	# ax, tmp148
	addl	%ecx, %edx	# tmp148, D.15291
	movslq	%edx, %rdx	# D.15291, D.15292
	salq	$3, %rdx	#, D.15292
	addq	%rdx, %rax	# D.15292, D.15297
	movq	(%rax), %rax	# *_83, D.15298
	movq	-24(%rbp), %rcx	# entity2char, tmp149
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp149,
	movq	%rax, %rdi	# D.15298,
	call	decode_entities	#
	.loc 4 557 0
	addl	$1, -32(%rbp)	#, i
.L814:
	.loc 4 557 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp150
	cmpl	-36(%rbp), %eax	# items, tmp150
	jl	.L818	#,
	.loc 4 564 0 is_stmt 1
	movl	-36(%rbp), %eax	# items, tmp151
	cltq
	salq	$3, %rax	#, D.15292
	addq	%rax, %rbx	# D.15292, sp
	.loc 4 566 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 4 567 0
	nop
.LBE97:
	.loc 4 569 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	XS_HTML__Entities_decode_entities, .-XS_HTML__Entities_decode_entities
	.section	.rodata
	.align 8
.LC80:
	.string	"Usage: HTML::Entities::_decode_entities(string, entities, ...)"
	.align 8
.LC81:
	.string	"2nd argument must be hash reference"
	.text
	.globl	XS_HTML__Entities__decode_entities
	.type	XS_HTML__Entities__decode_entities, @function
XS_HTML__Entities__decode_entities:
.LFB35:
	.loc 4 573 0
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
	.loc 4 574 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.509
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.510
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.512
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.512, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.511_12, D.15301
	cltq
	salq	$3, %rax	#, D.15302
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.513
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.514
	subq	%rax, %rdx	# PL_stack_base.515, D.15303
	movq	%rdx, %rax	# D.15303, D.15303
	sarq	$3, %rax	#, tmp182
	addl	$1, %eax	#, D.15304
	movl	%eax, -56(%rbp)	# D.15304, ax
	movq	%r12, %rdx	# sp, sp.516
	movq	%rbx, %rax	# mark, mark.517
	subq	%rax, %rdx	# mark.517, D.15303
	movq	%rdx, %rax	# D.15303, D.15303
	sarq	$3, %rax	#, tmp183
	movl	%eax, -52(%rbp)	# D.15303, items
	.loc 4 575 0
	cmpl	$1, -52(%rbp)	#, items
	jg	.L821	#,
	.loc 4 576 0
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L821:
.LBB98:
	.loc 4 578 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.518
	movl	-56(%rbp), %edx	# ax, tmp184
	movslq	%edx, %rdx	# tmp184, D.15302
	salq	$3, %rdx	#, D.15302
	addq	%rdx, %rax	# D.15302, D.15305
	movq	(%rax), %rax	# *_34, tmp185
	movq	%rax, -40(%rbp)	# tmp185, string
	.loc 4 579 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.519
	movl	-56(%rbp), %edx	# ax, tmp186
	movslq	%edx, %rdx	# tmp186, D.15306
	addq	$1, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_40, tmp187
	movq	%rax, -32(%rbp)	# tmp187, entities
	.loc 4 582 0
	cmpl	$2, -52(%rbp)	#, items
	jle	.L822	#,
	.loc 4 582 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.522
	movl	-56(%rbp), %edx	# ax, tmp188
	movslq	%edx, %rdx	# tmp188, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_46, D.15307
	testq	%rax, %rax	# D.15307
	je	.L823	#,
	.loc 4 582 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.524
	movl	-56(%rbp), %edx	# ax, tmp189
	movslq	%edx, %rdx	# tmp189, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_52, D.15307
	movl	12(%rax), %eax	# _53->sv_flags, D.15308
	andl	$262144, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L824	#,
	.loc 4 582 0 discriminator 5
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.526
	movl	-56(%rbp), %edx	# ax, tmp190
	movslq	%edx, %rdx	# tmp190, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_60, D.15307
	movq	(%rax), %rax	# _61->sv_any, PL_Xpv.527
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.527, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.528
	testq	%rax, %rax	# PL_Xpv.528
	je	.L825	#,
	.loc 4 582 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.529
	movq	8(%rax), %rax	# PL_Xpv.529_64->xpv_cur, D.15302
	cmpq	$1, %rax	#, D.15302
	ja	.L826	#,
	.loc 4 582 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.530
	movq	8(%rax), %rax	# PL_Xpv.530_66->xpv_cur, D.15302
	testq	%rax, %rax	# D.15302
	je	.L825	#,
	.loc 4 582 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.531
	movq	(%rax), %rax	# PL_Xpv.531_68->xpv_pv, D.15309
	movzbl	(%rax), %eax	# *_69, D.15310
	cmpb	$48, %al	#, D.15310
	je	.L825	#,
.L826:
	.loc 4 582 0 discriminator 3
	movl	$1, %eax	#, iftmp.525
	jmp	.L827	#
.L825:
	.loc 4 582 0 discriminator 2
	movl	$0, %eax	#, iftmp.525
.L827:
	jmp	.L834	#
.L824:
	.loc 4 582 0 discriminator 6
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.533
	movl	-56(%rbp), %edx	# ax, tmp191
	movslq	%edx, %rdx	# tmp191, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_78, D.15307
	movl	12(%rax), %eax	# _79->sv_flags, D.15308
	andl	$65536, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L829	#,
	.loc 4 582 0 discriminator 7
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.534
	movl	-56(%rbp), %edx	# ax, tmp192
	movslq	%edx, %rdx	# tmp192, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_86, D.15307
	movq	(%rax), %rax	# _87->sv_any, D.15311
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_88].xiv_iv, D.15303
	testq	%rax, %rax	# D.15303
	setne	%al	#, D.15312
	jmp	.L834	#
.L829:
	.loc 4 582 0 discriminator 8
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.536
	movl	-56(%rbp), %edx	# ax, tmp193
	movslq	%edx, %rdx	# tmp193, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_96, D.15307
	movl	12(%rax), %eax	# _97->sv_flags, D.15308
	andl	$131072, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L831	#,
	.loc 4 582 0 discriminator 9
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.537
	movl	-56(%rbp), %edx	# ax, tmp194
	movslq	%edx, %rdx	# tmp194, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_104, D.15307
	movq	(%rax), %rax	# _105->sv_any, D.15311
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_106].xnv_nv, D.15313
	xorpd	%xmm1, %xmm1	# tmp196
	ucomisd	%xmm1, %xmm0	# tmp196, D.15313
	setp	%dl	#, tmp195
	movl	$1, %eax	#, tmp198
	xorpd	%xmm1, %xmm1	# tmp197
	ucomisd	%xmm1, %xmm0	# tmp197, D.15313
	cmove	%edx, %eax	# tmp195,, D.15312
	jmp	.L834	#
.L831:
	.loc 4 582 0 discriminator 10
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.538
	movl	-56(%rbp), %edx	# ax, tmp199
	movslq	%edx, %rdx	# tmp199, D.15306
	addq	$2, %rdx	#, D.15306
	salq	$3, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, D.15305
	movq	(%rax), %rax	# *_114, D.15307
	movq	%rax, %rdi	# D.15307,
	call	Perl_sv_2bool	#
	jmp	.L834	#
.L823:
	.loc 4 582 0 discriminator 4
	movl	$0, %eax	#, iftmp.521
	jmp	.L834	#
.L822:
	.loc 4 582 0 discriminator 2
	movl	$0, %eax	#, iftmp.520
.L834:
	.loc 4 582 0 discriminator 13
	movb	%al, -57(%rbp)	# iftmp.520, allow_unterminated
	.loc 4 585 0 is_stmt 1 discriminator 13
	movq	-32(%rbp), %rax	# entities, tmp200
	movl	12(%rax), %eax	# entities_41->sv_flags, D.15308
	andl	$118423552, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L835	#,
	.loc 4 586 0
	movq	-32(%rbp), %rax	# entities, tmp201
	movl	12(%rax), %eax	# entities_41->sv_flags, D.15308
	andl	$524288, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L836	#,
	.loc 4 586 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# entities, tmp202
	movq	(%rax), %rax	# entities_41->sv_any, D.15311
	movq	(%rax), %rax	# MEM[(struct XRV *)_128].xrv_rv, D.15307
	movl	12(%rax), %eax	# _129->sv_flags, D.15308
	movzbl	%al, %eax	# D.15308, D.15308
	cmpl	$11, %eax	#, D.15308
	jne	.L836	#,
	.loc 4 587 0 is_stmt 1
	movq	-32(%rbp), %rax	# entities, tmp203
	movq	(%rax), %rax	# entities_41->sv_any, D.15311
	movq	(%rax), %rax	# MEM[(struct XRV *)_132].xrv_rv, tmp204
	movq	%rax, -48(%rbp)	# tmp204, entities_hv
	jmp	.L838	#
.L836:
	.loc 4 590 0
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L838	#
.L835:
	.loc 4 594 0
	movq	$0, -48(%rbp)	#, entities_hv
.L838:
	.loc 4 596 0
	movq	-40(%rbp), %rax	# string, tmp205
	movl	12(%rax), %eax	# string_35->sv_flags, D.15308
	andl	$8388608, %eax	#, D.15308
	testl	%eax, %eax	# D.15308
	je	.L839	#,
	.loc 4 597 0
	movl	$.LC79, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L839:
	.loc 4 598 0
	movsbl	-57(%rbp), %edx	# allow_unterminated, D.15301
	movq	-48(%rbp), %rcx	# entities_hv, tmp206
	movq	-40(%rbp), %rax	# string, tmp207
	movq	%rcx, %rsi	# tmp206,
	movq	%rax, %rdi	# tmp207,
	call	decode_entities	#
.LBE98:
.LBB99:
	.loc 4 601 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.539
	movl	-56(%rbp), %edx	# ax, tmp208
	movslq	%edx, %rcx	# tmp208, D.15306
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.540
	addq	%rcx, %rdx	# D.15306, D.15306
	salq	$3, %rdx	#, D.15306
	subq	$8, %rdx	#, D.15306
	addq	%rdx, %rax	# D.15306, PL_stack_sp.541
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.541, PL_stack_sp
	nop
.LBE99:
	.loc 4 602 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	XS_HTML__Entities__decode_entities, .-XS_HTML__Entities__decode_entities
	.section	.rodata
	.align 8
.LC82:
	.string	"Usage: HTML::Entities::_probably_utf8_chunk(string)"
	.text
	.globl	XS_HTML__Entities__probably_utf8_chunk
	.type	XS_HTML__Entities__probably_utf8_chunk, @function
XS_HTML__Entities__probably_utf8_chunk:
.LFB36:
	.loc 4 606 0
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
	.loc 4 607 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.542
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.543
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.545
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.545, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.544_6, D.15316
	cltq
	salq	$3, %rax	#, D.15317
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.546
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.547
	subq	%rax, %rdx	# PL_stack_base.548, D.15318
	movq	%rdx, %rax	# D.15318, D.15318
	sarq	$3, %rax	#, tmp107
	addl	$1, %eax	#, D.15319
	movl	%eax, -56(%rbp)	# D.15319, ax
	movq	%r12, %rdx	# sp, sp.549
	movq	%rbx, %rax	# mark, mark.550
	subq	%rax, %rdx	# mark.550, D.15318
	movq	%rdx, %rax	# D.15318, D.15318
	sarq	$3, %rax	#, tmp108
	movl	%eax, -52(%rbp)	# D.15318, items
	.loc 4 608 0
	cmpl	$1, -52(%rbp)	#, items
	je	.L842	#,
	.loc 4 609 0
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L842:
.LBB100:
	.loc 4 611 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.551
	movl	-56(%rbp), %edx	# ax, tmp109
	movslq	%edx, %rdx	# tmp109, D.15317
	salq	$3, %rdx	#, D.15317
	addq	%rdx, %rax	# D.15317, D.15320
	movq	(%rax), %rax	# *_28, tmp110
	movq	%rax, -40(%rbp)	# tmp110, string
	.loc 4 619 0
	movq	-40(%rbp), %rax	# string, tmp111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	Perl_sv_utf8_downgrade	#
	.loc 4 620 0
	movq	-40(%rbp), %rax	# string, tmp112
	movl	12(%rax), %eax	# string_29->sv_flags, D.15321
	andl	$262144, %eax	#, D.15321
	testl	%eax, %eax	# D.15321
	je	.L843	#,
	.loc 4 620 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# string, tmp113
	movq	(%rax), %rax	# string_29->sv_any, D.15322
	movq	8(%rax), %rax	# MEM[(struct XPV *)_32].xpv_cur, len.553
	movq	%rax, -48(%rbp)	# len.553, len
	movq	-40(%rbp), %rax	# string, tmp114
	movq	(%rax), %rax	# string_29->sv_any, D.15322
	movq	(%rax), %rax	# MEM[(struct XPV *)_34].xpv_pv, iftmp.552
	jmp	.L844	#
.L843:
	.loc 4 620 0 discriminator 2
	leaq	-48(%rbp), %rcx	#, tmp115
	movq	-40(%rbp), %rax	# string, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_2pv_flags	#
.L844:
	.loc 4 620 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.552, s
	.loc 4 621 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rdx	# len, len.554
	movq	-32(%rbp), %rax	# s, tmp117
	movq	%rdx, %rsi	# len.554,
	movq	%rax, %rdi	# tmp117,
	call	probably_utf8_chunk	#
	movb	%al, -57(%rbp)	# tmp118, RETVAL
	.loc 4 626 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.555
	movl	-56(%rbp), %edx	# ax, tmp119
	movslq	%edx, %rdx	# tmp119, D.15317
	salq	$3, %rdx	#, D.15317
	addq	%rax, %rdx	# PL_stack_base.555, D.15320
	cmpb	$0, -57(%rbp)	#, RETVAL
	je	.L845	#,
	.loc 4 626 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.556
	jmp	.L846	#
.L845:
	.loc 4 626 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.556
.L846:
	.loc 4 626 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.556, *_43
	.loc 4 627 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.557
	movl	-56(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.15317
	salq	$3, %rdx	#, D.15317
	addq	%rdx, %rax	# D.15317, D.15320
	movq	(%rax), %rax	# *_49, D.15323
	movq	%rax, %rdi	# D.15323,
	call	Perl_sv_2mortal	#
.LBE100:
.LBB101:
	.loc 4 629 0 discriminator 3
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.558
	movl	-56(%rbp), %edx	# ax, tmp121
	movslq	%edx, %rcx	# tmp121, D.15324
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.559
	addq	%rcx, %rdx	# D.15324, D.15324
	salq	$3, %rdx	#, D.15324
	subq	$8, %rdx	#, D.15324
	addq	%rdx, %rax	# D.15324, PL_stack_sp.560
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.560, PL_stack_sp
	nop
.LBE101:
	.loc 4 630 0 discriminator 3
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	XS_HTML__Entities__probably_utf8_chunk, .-XS_HTML__Entities__probably_utf8_chunk
	.section	.rodata
	.align 8
.LC83:
	.string	"Usage: HTML::Entities::UNICODE_SUPPORT()"
	.text
	.globl	XS_HTML__Entities_UNICODE_SUPPORT
	.type	XS_HTML__Entities_UNICODE_SUPPORT, @function
XS_HTML__Entities_UNICODE_SUPPORT:
.LFB37:
	.loc 4 634 0
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
	.loc 4 635 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.561
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.562
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.564
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.564, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.563_5, D.15326
	cltq
	salq	$3, %rax	#, D.15327
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.565
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.566
	subq	%rax, %rdx	# PL_stack_base.567, D.15328
	movq	%rdx, %rax	# D.15328, D.15328
	sarq	$3, %rax	#, tmp104
	addl	$1, %eax	#, D.15329
	movl	%eax, -44(%rbp)	# D.15329, ax
	movq	%rbx, %rdx	# sp, sp.568
	movq	%r12, %rax	# mark, mark.569
	subq	%rax, %rdx	# mark.569, D.15328
	movq	%rdx, %rax	# D.15328, D.15328
	sarq	$3, %rax	#, tmp105
	movl	%eax, -40(%rbp)	# D.15328, items
	.loc 4 636 0
	cmpl	$0, -40(%rbp)	#, items
	je	.L849	#,
	.loc 4 637 0
	movl	$.LC83, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L849:
.LBB102:
	.loc 4 640 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.571
	movzbl	37(%rax), %eax	# PL_op.571_24->op_private, D.15330
	movzbl	%al, %eax	# D.15330, D.15326
	andl	$32, %eax	#, D.15326
	testl	%eax, %eax	# D.15326
	je	.L850	#,
	.loc 4 640 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.572
	movq	PL_op(%rip), %rax	# PL_op, PL_op.573
	movq	24(%rax), %rax	# PL_op.573_29->op_targ, D.15327
	salq	$3, %rax	#, D.15327
	addq	%rdx, %rax	# PL_curpad.572, D.15331
	movq	(%rax), %rax	# *_32, iftmp.570
	jmp	.L851	#
.L850:
	.loc 4 640 0 discriminator 2
	call	Perl_sv_newmortal	#
.L851:
	.loc 4 640 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.570, targ
	.loc 4 643 0 is_stmt 1 discriminator 3
	movl	$1, -36(%rbp)	#, RETVAL
	.loc 4 648 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.574
	movl	-44(%rbp), %edx	# ax, tmp106
	movslq	%edx, %rdx	# tmp106, D.15327
	salq	$3, %rdx	#, D.15327
	subq	$8, %rdx	#, D.15332
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB103:
	movl	-36(%rbp), %eax	# RETVAL, tmp107
	movslq	%eax, %rdx	# tmp107, D.15328
	movq	-32(%rbp), %rax	# targ, tmp108
	movq	%rdx, %rsi	# D.15328,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_setiv	#
.LBB104:
	movq	-32(%rbp), %rax	# targ, tmp109
	movl	12(%rax), %eax	# targ_35->sv_flags, D.15333
	andl	$16384, %eax	#, D.15333
	testl	%eax, %eax	# D.15333
	je	.L852	#,
	.loc 4 648 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_mg_set	#
.L852:
	.loc 4 648 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, (%rbx)	# tmp111, *sp_45
.LBE104:
.LBE103:
.LBE102:
.LBB105:
	.loc 4 650 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.575
	movl	-44(%rbp), %edx	# ax, tmp112
	movslq	%edx, %rcx	# tmp112, D.15332
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.576
	addq	%rcx, %rdx	# D.15332, D.15332
	salq	$3, %rdx	#, D.15332
	subq	$8, %rdx	#, D.15332
	addq	%rdx, %rax	# D.15332, PL_stack_sp.577
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.577, PL_stack_sp
	nop
.LBE105:
	.loc 4 651 0 discriminator 2
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	XS_HTML__Entities_UNICODE_SUPPORT, .-XS_HTML__Entities_UNICODE_SUPPORT
	.section	.rodata
.LC84:
	.string	"Parser.c"
.LC85:
	.string	"HTML::Parser::_alloc_pstate"
.LC86:
	.string	"HTML::Parser::parse"
.LC87:
	.string	"HTML::Parser::eof"
	.align 8
.LC88:
	.string	"HTML::Parser::closing_plaintext"
.LC89:
	.string	"HTML::Parser::strict_end"
.LC90:
	.string	"HTML::Parser::marked_sections"
.LC91:
	.string	"HTML::Parser::case_sensitive"
.LC92:
	.string	"HTML::Parser::unbroken_text"
.LC93:
	.string	"HTML::Parser::strict_comment"
.LC94:
	.string	"HTML::Parser::xml_mode"
.LC95:
	.string	"HTML::Parser::attr_encoded"
.LC96:
	.string	"HTML::Parser::strict_names"
.LC97:
	.string	"HTML::Parser::utf8_mode"
	.align 8
.LC98:
	.string	"HTML::Parser::boolean_attribute_value"
.LC99:
	.string	"HTML::Parser::ignore_tags"
.LC100:
	.string	"HTML::Parser::ignore_elements"
.LC101:
	.string	"HTML::Parser::report_tags"
.LC102:
	.string	"HTML::Parser::handler"
	.align 8
.LC103:
	.string	"HTML::Entities::decode_entities"
	.align 8
.LC104:
	.string	"HTML::Entities::_decode_entities"
	.align 8
.LC105:
	.string	"HTML::Entities::_probably_utf8_chunk"
	.align 8
.LC106:
	.string	"HTML::Entities::UNICODE_SUPPORT"
	.text
	.globl	boot_HTML__Parser
	.type	boot_HTML__Parser, @function
boot_HTML__Parser:
.LFB38:
	.loc 4 658 0
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
	.loc 4 659 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.578
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.579
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.581
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.581, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.580_4, D.15336
	cltq
	salq	$3, %rax	#, D.15337
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.582
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.583
	subq	%rax, %rdx	# PL_stack_base.584, D.15338
	movq	%rdx, %rax	# D.15338, D.15338
	sarq	$3, %rax	#, tmp104
	addl	$1, %eax	#, D.15339
	movl	%eax, -48(%rbp)	# D.15339, ax
	movq	%r12, %rdx	# sp, sp.585
	movq	%rbx, %rax	# mark, mark.586
	subq	%rax, %rdx	# mark.586, D.15338
	movq	%rdx, %rax	# D.15338, D.15338
	sarq	$3, %rax	#, tmp105
	movl	%eax, -44(%rbp)	# D.15338, items
	.loc 4 660 0
	movq	$.LC84, -40(%rbp)	#, file
.LBB106:
	.loc 4 667 0
	movq	-40(%rbp), %rax	# file, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$XS_HTML__Parser__alloc_pstate, %esi	#,
	movl	$.LC85, %edi	#,
	call	Perl_newXS	#
	.loc 4 668 0
	movq	-40(%rbp), %rax	# file, tmp107
	movq	%rax, %rdx	# tmp107,
	movl	$XS_HTML__Parser_parse, %esi	#,
	movl	$.LC86, %edi	#,
	call	Perl_newXS	#
	.loc 4 669 0
	movq	-40(%rbp), %rax	# file, tmp108
	movq	%rax, %rdx	# tmp108,
	movl	$XS_HTML__Parser_eof, %esi	#,
	movl	$.LC87, %edi	#,
	call	Perl_newXS	#
	.loc 4 670 0
	movq	-40(%rbp), %rax	# file, tmp109
	movq	%rax, %rdx	# tmp109,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC88, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp110, cv
	.loc 4 671 0
	movq	-32(%rbp), %rax	# cv, tmp111
	movq	(%rax), %rax	# cv_24->sv_any, D.15340
	movl	$9, 88(%rax)	#, _25->xcv_xsubany.any_i32
	.loc 4 672 0
	movq	-40(%rbp), %rax	# file, tmp112
	movq	%rax, %rdx	# tmp112,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC89, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp113, cv
	.loc 4 673 0
	movq	-32(%rbp), %rax	# cv, tmp114
	movq	(%rax), %rax	# cv_26->sv_any, D.15340
	movl	$8, 88(%rax)	#, _27->xcv_xsubany.any_i32
	.loc 4 674 0
	movq	-40(%rbp), %rax	# file, tmp115
	movq	%rax, %rdx	# tmp115,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC90, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp116, cv
	.loc 4 675 0
	movq	-32(%rbp), %rax	# cv, tmp117
	movq	(%rax), %rax	# cv_28->sv_any, D.15340
	movl	$5, 88(%rax)	#, _29->xcv_xsubany.any_i32
	.loc 4 676 0
	movq	-40(%rbp), %rax	# file, tmp118
	movq	%rax, %rdx	# tmp118,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC91, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp119, cv
	.loc 4 677 0
	movq	-32(%rbp), %rax	# cv, tmp120
	movq	(%rax), %rax	# cv_30->sv_any, D.15340
	movl	$7, 88(%rax)	#, _31->xcv_xsubany.any_i32
	.loc 4 678 0
	movq	-40(%rbp), %rax	# file, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC92, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp122, cv
	.loc 4 679 0
	movq	-32(%rbp), %rax	# cv, tmp123
	movq	(%rax), %rax	# cv_32->sv_any, D.15340
	movl	$4, 88(%rax)	#, _33->xcv_xsubany.any_i32
	.loc 4 680 0
	movq	-40(%rbp), %rax	# file, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC93, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp125, cv
	.loc 4 681 0
	movq	-32(%rbp), %rax	# cv, tmp126
	movq	(%rax), %rax	# cv_34->sv_any, D.15340
	movl	$1, 88(%rax)	#, _35->xcv_xsubany.any_i32
	.loc 4 682 0
	movq	-40(%rbp), %rax	# file, tmp127
	movq	%rax, %rdx	# tmp127,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC94, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp128, cv
	.loc 4 683 0
	movq	-32(%rbp), %rax	# cv, tmp129
	movq	(%rax), %rax	# cv_36->sv_any, D.15340
	movl	$3, 88(%rax)	#, _37->xcv_xsubany.any_i32
	.loc 4 684 0
	movq	-40(%rbp), %rax	# file, tmp130
	movq	%rax, %rdx	# tmp130,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC95, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp131, cv
	.loc 4 685 0
	movq	-32(%rbp), %rax	# cv, tmp132
	movq	(%rax), %rax	# cv_38->sv_any, D.15340
	movl	$6, 88(%rax)	#, _39->xcv_xsubany.any_i32
	.loc 4 686 0
	movq	-40(%rbp), %rax	# file, tmp133
	movq	%rax, %rdx	# tmp133,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC96, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp134, cv
	.loc 4 687 0
	movq	-32(%rbp), %rax	# cv, tmp135
	movq	(%rax), %rax	# cv_40->sv_any, D.15340
	movl	$2, 88(%rax)	#, _41->xcv_xsubany.any_i32
	.loc 4 688 0
	movq	-40(%rbp), %rax	# file, tmp136
	movq	%rax, %rdx	# tmp136,
	movl	$XS_HTML__Parser_strict_comment, %esi	#,
	movl	$.LC97, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp137, cv
	.loc 4 689 0
	movq	-32(%rbp), %rax	# cv, tmp138
	movq	(%rax), %rax	# cv_42->sv_any, D.15340
	movl	$10, 88(%rax)	#, _43->xcv_xsubany.any_i32
	.loc 4 690 0
	movq	-40(%rbp), %rax	# file, tmp139
	movq	%rax, %rdx	# tmp139,
	movl	$XS_HTML__Parser_boolean_attribute_value, %esi	#,
	movl	$.LC98, %edi	#,
	call	Perl_newXS	#
	.loc 4 691 0
	movq	-40(%rbp), %rax	# file, tmp140
	movq	%rax, %rdx	# tmp140,
	movl	$XS_HTML__Parser_ignore_tags, %esi	#,
	movl	$.LC99, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp141, cv
	.loc 4 692 0
	movq	-32(%rbp), %rax	# cv, tmp142
	movq	(%rax), %rax	# cv_44->sv_any, D.15340
	movl	$2, 88(%rax)	#, _45->xcv_xsubany.any_i32
	.loc 4 693 0
	movq	-40(%rbp), %rax	# file, tmp143
	movq	%rax, %rdx	# tmp143,
	movl	$XS_HTML__Parser_ignore_tags, %esi	#,
	movl	$.LC100, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp144, cv
	.loc 4 694 0
	movq	-32(%rbp), %rax	# cv, tmp145
	movq	(%rax), %rax	# cv_46->sv_any, D.15340
	movl	$3, 88(%rax)	#, _47->xcv_xsubany.any_i32
	.loc 4 695 0
	movq	-40(%rbp), %rax	# file, tmp146
	movq	%rax, %rdx	# tmp146,
	movl	$XS_HTML__Parser_ignore_tags, %esi	#,
	movl	$.LC101, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp147, cv
	.loc 4 696 0
	movq	-32(%rbp), %rax	# cv, tmp148
	movq	(%rax), %rax	# cv_48->sv_any, D.15340
	movl	$1, 88(%rax)	#, _49->xcv_xsubany.any_i32
	.loc 4 697 0
	movq	-40(%rbp), %rax	# file, tmp149
	movq	%rax, %rdx	# tmp149,
	movl	$XS_HTML__Parser_handler, %esi	#,
	movl	$.LC102, %edi	#,
	call	Perl_newXS	#
	.loc 4 698 0
	movq	-40(%rbp), %rax	# file, tmp150
	movq	%rax, %rdx	# tmp150,
	movl	$XS_HTML__Entities_decode_entities, %esi	#,
	movl	$.LC103, %edi	#,
	call	Perl_newXS	#
	.loc 4 699 0
	movq	-40(%rbp), %rax	# file, tmp151
	movq	%rax, %rdx	# tmp151,
	movl	$XS_HTML__Entities__decode_entities, %esi	#,
	movl	$.LC104, %edi	#,
	call	Perl_newXS	#
	.loc 4 700 0
	movq	-40(%rbp), %rax	# file, tmp152
	movq	%rax, %rdx	# tmp152,
	movl	$XS_HTML__Entities__probably_utf8_chunk, %esi	#,
	movl	$.LC105, %edi	#,
	call	Perl_newXS	#
	.loc 4 701 0
	movq	-40(%rbp), %rax	# file, tmp153
	movq	%rax, %rdx	# tmp153,
	movl	$XS_HTML__Entities_UNICODE_SUPPORT, %esi	#,
	movl	$.LC106, %edi	#,
	call	Perl_newXS	#
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# D.15341,
	call	Perl_sv_setpv	#
.LBE106:
.LBB107:
	.loc 4 703 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.587
	movl	-48(%rbp), %edx	# ax, tmp154
	movslq	%edx, %rdx	# tmp154, D.15337
	salq	$3, %rdx	#, D.15337
	addq	%rdx, %rax	# D.15337, D.15342
	movq	$PL_sv_yes, (%rax)	#, *_54
.LBB108:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.588
	movl	-48(%rbp), %edx	# ax, tmp155
	movslq	%edx, %rcx	# tmp155, D.15343
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.589
	addq	%rcx, %rdx	# D.15343, D.15343
	salq	$3, %rdx	#, D.15343
	subq	$8, %rdx	#, D.15343
	addq	%rdx, %rax	# D.15343, PL_stack_sp.590
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.590, PL_stack_sp
	nop
.LBE108:
.LBE107:
	.loc 4 704 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	boot_HTML__Parser, .-boot_HTML__Parser
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 8 "/usr/include/dirent.h"
	.file 9 "perl.h"
	.file 10 "op.h"
	.file 11 "sv.h"
	.file 12 "regexp.h"
	.file 13 "gv.h"
	.file 14 "mg.h"
	.file 15 "av.h"
	.file 16 "hv.h"
	.file 17 "cv.h"
	.file 18 "handy.h"
	.file 19 "perlio.h"
	.file 20 "pad.h"
	.file 21 "hparser.h"
	.file 22 "hctype.h"
	.file 23 "patchlevel.h"
	.file 24 "utf8.h"
	.file 25 "intrpvar.h"
	.file 26 "thrdvar.h"
	.file 27 "perlvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3921
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF535
	.byte	0x1
	.long	.LASF536
	.long	.LASF537
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x7
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
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x8
	.string	"DIR"
	.byte	0x8
	.byte	0x80
	.long	0xc6
	.uleb128 0x9
	.long	.LASF176
	.uleb128 0xa
	.string	"IV"
	.byte	0x9
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x9
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x9
	.value	0x5f3
	.long	0xec
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x9
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x9
	.value	0x7d5
	.long	0x10a
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0xa
	.byte	0xe2
	.long	0x176
	.uleb128 0xd
	.long	.LASF16
	.byte	0xa
	.byte	0xe3
	.long	0xdd7
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0xa
	.byte	0xe3
	.long	0xdd7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0xa
	.byte	0xe3
	.long	0xe5b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0xa
	.byte	0xe3
	.long	0xe45
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.byte	0xe3
	.long	0xc49
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0xa
	.byte	0xe3
	.long	0xc49
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0xa
	.byte	0xe3
	.long	0xc3f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.byte	0xe3
	.long	0xc3f
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x9
	.value	0x7db
	.long	0x182
	.uleb128 0xe
	.long	.LASF25
	.byte	0x70
	.byte	0xa
	.byte	0xfd
	.long	0x270
	.uleb128 0xd
	.long	.LASF16
	.byte	0xa
	.byte	0xfe
	.long	0xdd7
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0xa
	.byte	0xfe
	.long	0xdd7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0xa
	.byte	0xfe
	.long	0xe5b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0xa
	.byte	0xfe
	.long	0xe45
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0xa
	.byte	0xfe
	.long	0xc49
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0xa
	.byte	0xfe
	.long	0xc49
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0xa
	.byte	0xfe
	.long	0xc3f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0xa
	.byte	0xfe
	.long	0xc3f
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0xa
	.byte	0xff
	.long	0xdd7
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0xa
	.value	0x100
	.long	0xdd7
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0xa
	.value	0x101
	.long	0xdd7
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0xa
	.value	0x102
	.long	0xdd7
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0xa
	.value	0x103
	.long	0xe61
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0xa
	.value	0x107
	.long	0xe67
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0xa
	.value	0x109
	.long	0xc5f
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0xa
	.value	0x10a
	.long	0xc5f
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0xa
	.value	0x10b
	.long	0xc3f
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0xa
	.value	0x10f
	.long	0xdbf
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x9
	.value	0x7e1
	.long	0x27c
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x9
	.value	0xea7
	.long	0x297
	.uleb128 0xf
	.long	.LASF38
	.byte	0x9
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x9
	.value	0x7ea
	.long	0x2a2
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x2d2
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x45
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x46
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x9
	.value	0x7eb
	.long	0x2dd
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x30d
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x56
	.long	0xda7
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x57
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x58
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x9
	.value	0x7ec
	.long	0x318
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x348
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x5c
	.long	0xdad
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x5d
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x5e
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x9
	.value	0x7ed
	.long	0x353
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x383
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x50
	.long	0xda1
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x51
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x52
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x9
	.value	0x7ee
	.long	0x38f
	.uleb128 0xe
	.long	.LASF43
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x468
	.uleb128 0xd
	.long	.LASF44
	.byte	0xc
	.byte	0x20
	.long	0xcfa
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0xc
	.byte	0x21
	.long	0xcfa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0xc
	.byte	0x22
	.long	0xd00
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0xc
	.byte	0x23
	.long	0xd0b
	.byte	0x18
	.uleb128 0xd
	.long	.LASF48
	.byte	0xc
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF49
	.byte	0xc
	.byte	0x25
	.long	0xd16
	.byte	0x28
	.uleb128 0xd
	.long	.LASF50
	.byte	0xc
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF51
	.byte	0xc
	.byte	0x28
	.long	0xd1c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0xc
	.byte	0x29
	.long	0xc54
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0xc
	.byte	0x2a
	.long	0xc54
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0xc
	.byte	0x2b
	.long	0xc54
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0xc
	.byte	0x2c
	.long	0xc54
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0xc
	.byte	0x2d
	.long	0xc5f
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0xc
	.byte	0x2e
	.long	0xc5f
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0xc
	.byte	0x2f
	.long	0xc5f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0xc
	.byte	0x30
	.long	0xc5f
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0xc
	.byte	0x32
	.long	0xd22
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x9
	.value	0x7ef
	.long	0x473
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x50f
	.uleb128 0xd
	.long	.LASF61
	.byte	0xd
	.byte	0xc
	.long	0xc87
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xd
	.byte	0xd
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xd
	.byte	0xe
	.long	0xe34
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xd
	.byte	0xf
	.long	0xde8
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xd
	.byte	0x10
	.long	0xdfa
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xd
	.byte	0x11
	.long	0xdbf
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xd
	.byte	0x12
	.long	0xdf4
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xd
	.byte	0x13
	.long	0xde8
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xd
	.byte	0x14
	.long	0xc5f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xd
	.byte	0x15
	.long	0xc5f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xd
	.byte	0x16
	.long	0xc6a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF72
	.byte	0xd
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x9
	.value	0x7f0
	.long	0x51a
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x54a
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x4a
	.long	0xd9b
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x4b
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x4c
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0x57a
	.uleb128 0xd
	.long	.LASF39
	.byte	0xb
	.byte	0x62
	.long	0xdb3
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0xb
	.byte	0x63
	.long	0xc5f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.byte	0x64
	.long	0xc5f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x9
	.value	0x7f5
	.long	0x586
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0x5f3
	.uleb128 0xd
	.long	.LASF75
	.byte	0xe
	.byte	0x1b
	.long	0xdb9
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xe
	.byte	0x1c
	.long	0xf72
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xe
	.byte	0x1d
	.long	0xc49
	.byte	0x10
	.uleb128 0xd
	.long	.LASF78
	.byte	0xe
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF79
	.byte	0xe
	.byte	0x1f
	.long	0xc3f
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xe
	.byte	0x20
	.long	0xc87
	.byte	0x18
	.uleb128 0xd
	.long	.LASF81
	.byte	0xe
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF82
	.byte	0xe
	.byte	0x22
	.long	0xc54
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x9
	.value	0x7f6
	.long	0x5ff
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0x618
	.uleb128 0xd
	.long	.LASF83
	.byte	0xb
	.byte	0xf6
	.long	0xc87
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x9
	.value	0x7f7
	.long	0x624
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0x655
	.uleb128 0xd
	.long	.LASF84
	.byte	0xb
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0xb
	.byte	0xfb
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0xb
	.byte	0xfc
	.long	0xf3
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x9
	.value	0x7f8
	.long	0x661
	.uleb128 0xe
	.long	.LASF88
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0x6a2
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xb
	.value	0x101
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0xb
	.value	0x102
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0xb
	.value	0x103
	.long	0xcb
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x9
	.value	0x7fa
	.long	0x6ae
	.uleb128 0x10
	.long	.LASF91
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0x6fd
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xb
	.value	0x10f
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0xb
	.value	0x110
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0xb
	.value	0x111
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0xb
	.value	0x112
	.long	0xe1
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x9
	.value	0x7fd
	.long	0x709
	.uleb128 0xe
	.long	.LASF94
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0x78e
	.uleb128 0xd
	.long	.LASF95
	.byte	0xf
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF96
	.byte	0xf
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF97
	.byte	0xf
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF98
	.byte	0xf
	.byte	0xf
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0x10
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0xf
	.byte	0x11
	.long	0xdb9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0xf
	.byte	0x12
	.long	0xdbf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF101
	.byte	0xf
	.byte	0x14
	.long	0xe6d
	.byte	0x38
	.uleb128 0xd
	.long	.LASF102
	.byte	0xf
	.byte	0x15
	.long	0xc87
	.byte	0x40
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x16
	.long	0xc3f
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x9
	.value	0x7fe
	.long	0x79a
	.uleb128 0xe
	.long	.LASF105
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0x82b
	.uleb128 0xd
	.long	.LASF106
	.byte	0x10
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF107
	.byte	0x10
	.byte	0x24
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF108
	.byte	0x10
	.byte	0x25
	.long	0xf3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF109
	.byte	0x10
	.byte	0x26
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0x10
	.byte	0x27
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0x10
	.byte	0x29
	.long	0xdb9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0x10
	.byte	0x2a
	.long	0xdbf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF110
	.byte	0x10
	.byte	0x2c
	.long	0xc54
	.byte	0x38
	.uleb128 0xd
	.long	.LASF111
	.byte	0x10
	.byte	0x2d
	.long	0xee9
	.byte	0x40
	.uleb128 0xd
	.long	.LASF112
	.byte	0x10
	.byte	0x2e
	.long	0xe61
	.byte	0x48
	.uleb128 0xd
	.long	.LASF113
	.byte	0x10
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF114
	.byte	0x9
	.value	0x7ff
	.long	0x837
	.uleb128 0x10
	.long	.LASF115
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0x8e1
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xb
	.value	0x132
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0xb
	.value	0x133
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0xb
	.value	0x134
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0xb
	.value	0x135
	.long	0xe1
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0xb
	.value	0x136
	.long	0xdb9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0xb
	.value	0x137
	.long	0xdbf
	.byte	0x30
	.uleb128 0xf
	.long	.LASF116
	.byte	0xb
	.value	0x139
	.long	0xdc5
	.byte	0x38
	.uleb128 0xf
	.long	.LASF117
	.byte	0xb
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF118
	.byte	0xb
	.value	0x13b
	.long	0xf3
	.byte	0x48
	.uleb128 0xf
	.long	.LASF119
	.byte	0xb
	.value	0x13c
	.long	0xdbf
	.byte	0x50
	.uleb128 0xf
	.long	.LASF120
	.byte	0xb
	.value	0x13d
	.long	0xc3f
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF121
	.byte	0x9
	.value	0x800
	.long	0x8ed
	.uleb128 0xe
	.long	.LASF122
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0x9de
	.uleb128 0xd
	.long	.LASF84
	.byte	0x11
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0x11
	.byte	0x10
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0x11
	.byte	0x11
	.long	0xf3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF98
	.byte	0x11
	.byte	0x12
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF92
	.byte	0x11
	.byte	0x13
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF99
	.byte	0x11
	.byte	0x14
	.long	0xdb9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF100
	.byte	0x11
	.byte	0x15
	.long	0xdbf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF123
	.byte	0x11
	.byte	0x17
	.long	0xdbf
	.byte	0x38
	.uleb128 0xd
	.long	.LASF124
	.byte	0x11
	.byte	0x18
	.long	0xdd7
	.byte	0x40
	.uleb128 0xd
	.long	.LASF125
	.byte	0x11
	.byte	0x19
	.long	0xdd7
	.byte	0x48
	.uleb128 0xd
	.long	.LASF126
	.byte	0x11
	.byte	0x1a
	.long	0xdee
	.byte	0x50
	.uleb128 0xd
	.long	.LASF127
	.byte	0x11
	.byte	0x1b
	.long	0xb90
	.byte	0x58
	.uleb128 0xd
	.long	.LASF128
	.byte	0x11
	.byte	0x1c
	.long	0xdf4
	.byte	0x60
	.uleb128 0xd
	.long	.LASF129
	.byte	0x11
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF130
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF131
	.byte	0x11
	.byte	0x1f
	.long	0xe50
	.byte	0x78
	.uleb128 0xd
	.long	.LASF132
	.byte	0x11
	.byte	0x20
	.long	0xde8
	.byte	0x80
	.uleb128 0xd
	.long	.LASF133
	.byte	0x11
	.byte	0x25
	.long	0xdcb
	.byte	0x88
	.uleb128 0xd
	.long	.LASF134
	.byte	0x11
	.byte	0x26
	.long	0xc5f
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF135
	.byte	0x9
	.value	0x803
	.long	0x9ea
	.uleb128 0x10
	.long	.LASF136
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0xb23
	.uleb128 0xf
	.long	.LASF84
	.byte	0xb
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0xb
	.value	0x172
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0xb
	.value	0x173
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0xb
	.value	0x174
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF92
	.byte	0xb
	.value	0x175
	.long	0xe1
	.byte	0x20
	.uleb128 0xf
	.long	.LASF99
	.byte	0xb
	.value	0x176
	.long	0xdb9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF100
	.byte	0xb
	.value	0x177
	.long	0xdbf
	.byte	0x30
	.uleb128 0xf
	.long	.LASF137
	.byte	0xb
	.value	0x179
	.long	0xe28
	.byte	0x38
	.uleb128 0xf
	.long	.LASF138
	.byte	0xb
	.value	0x17a
	.long	0xe28
	.byte	0x40
	.uleb128 0xf
	.long	.LASF139
	.byte	0xb
	.value	0x187
	.long	0xe00
	.byte	0x48
	.uleb128 0xf
	.long	.LASF140
	.byte	0xb
	.value	0x188
	.long	0xcb
	.byte	0x50
	.uleb128 0xf
	.long	.LASF141
	.byte	0xb
	.value	0x189
	.long	0xcb
	.byte	0x58
	.uleb128 0xf
	.long	.LASF142
	.byte	0xb
	.value	0x18a
	.long	0xcb
	.byte	0x60
	.uleb128 0xf
	.long	.LASF143
	.byte	0xb
	.value	0x18b
	.long	0xcb
	.byte	0x68
	.uleb128 0xf
	.long	.LASF144
	.byte	0xb
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF145
	.byte	0xb
	.value	0x18d
	.long	0xdf4
	.byte	0x78
	.uleb128 0xf
	.long	.LASF146
	.byte	0xb
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF147
	.byte	0xb
	.value	0x18f
	.long	0xdf4
	.byte	0x88
	.uleb128 0xf
	.long	.LASF148
	.byte	0xb
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF149
	.byte	0xb
	.value	0x191
	.long	0xdf4
	.byte	0x98
	.uleb128 0xf
	.long	.LASF150
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF151
	.byte	0xb
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF152
	.byte	0xb
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0x9
	.value	0x804
	.long	0xb2f
	.uleb128 0xe
	.long	.LASF154
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0xb90
	.uleb128 0xd
	.long	.LASF155
	.byte	0xe
	.byte	0xf
	.long	0xf09
	.byte	0
	.uleb128 0xd
	.long	.LASF156
	.byte	0xe
	.byte	0x10
	.long	0xf09
	.byte	0x8
	.uleb128 0xd
	.long	.LASF157
	.byte	0xe
	.byte	0x11
	.long	0xf23
	.byte	0x10
	.uleb128 0xd
	.long	.LASF158
	.byte	0xe
	.byte	0x12
	.long	0xf09
	.byte	0x18
	.uleb128 0xd
	.long	.LASF159
	.byte	0xe
	.byte	0x13
	.long	0xf09
	.byte	0x20
	.uleb128 0xd
	.long	.LASF160
	.byte	0xe
	.byte	0x14
	.long	0xf4c
	.byte	0x28
	.uleb128 0xd
	.long	.LASF161
	.byte	0xe
	.byte	0x16
	.long	0xf6c
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x9
	.value	0x805
	.long	0xb9c
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x9
	.value	0x9f1
	.long	0xbfe
	.uleb128 0x12
	.long	.LASF162
	.byte	0x9
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF163
	.byte	0x9
	.value	0x9f3
	.long	0xc54
	.uleb128 0x12
	.long	.LASF164
	.byte	0x9
	.value	0x9f4
	.long	0xcb
	.uleb128 0x12
	.long	.LASF165
	.byte	0x9
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF166
	.byte	0x9
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF167
	.byte	0x9
	.value	0x9f7
	.long	0xc81
	.uleb128 0x12
	.long	.LASF168
	.byte	0x9
	.value	0x9f8
	.long	0xc81
	.byte	0
	.uleb128 0xb
	.long	.LASF169
	.byte	0x9
	.value	0x808
	.long	0xc0a
	.uleb128 0x10
	.long	.LASF170
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0xc3f
	.uleb128 0xf
	.long	.LASF171
	.byte	0xb
	.value	0x4ee
	.long	0xdfa
	.byte	0
	.uleb128 0xf
	.long	.LASF172
	.byte	0xb
	.value	0x4ef
	.long	0xd6
	.byte	0x8
	.uleb128 0xf
	.long	.LASF173
	.byte	0xb
	.value	0x4f0
	.long	0xe2e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF174
	.byte	0x12
	.value	0x209
	.long	0xc5f
	.uleb128 0x13
	.long	0xc81
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc76
	.uleb128 0x6
	.byte	0x8
	.long	0x297
	.uleb128 0x15
	.long	0x7f
	.long	0xc9d
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF175
	.byte	0x13
	.byte	0x63
	.long	0xca8
	.uleb128 0x9
	.long	.LASF177
	.uleb128 0x5
	.long	.LASF178
	.byte	0x13
	.byte	0x65
	.long	0xcb8
	.uleb128 0x6
	.byte	0x8
	.long	0xc9d
	.uleb128 0xe
	.long	.LASF179
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0xcef
	.uleb128 0xd
	.long	.LASF172
	.byte	0xc
	.byte	0x14
	.long	0xc3f
	.byte	0
	.uleb128 0xd
	.long	.LASF180
	.byte	0xc
	.byte	0x15
	.long	0xc3f
	.byte	0x1
	.uleb128 0xd
	.long	.LASF181
	.byte	0xc
	.byte	0x16
	.long	0xc49
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF179
	.byte	0xc
	.byte	0x19
	.long	0xcbe
	.uleb128 0x6
	.byte	0x8
	.long	0xc54
	.uleb128 0x6
	.byte	0x8
	.long	0xcef
	.uleb128 0x9
	.long	.LASF182
	.uleb128 0x6
	.byte	0x8
	.long	0xd06
	.uleb128 0x9
	.long	.LASF183
	.uleb128 0x6
	.byte	0x8
	.long	0xd11
	.uleb128 0x6
	.byte	0x8
	.long	0xc5f
	.uleb128 0x15
	.long	0xcef
	.long	0xd32
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0xd9b
	.uleb128 0x18
	.long	.LASF184
	.sleb128 0
	.uleb128 0x18
	.long	.LASF185
	.sleb128 1
	.uleb128 0x18
	.long	.LASF186
	.sleb128 2
	.uleb128 0x18
	.long	.LASF187
	.sleb128 3
	.uleb128 0x18
	.long	.LASF188
	.sleb128 4
	.uleb128 0x18
	.long	.LASF189
	.sleb128 5
	.uleb128 0x18
	.long	.LASF190
	.sleb128 6
	.uleb128 0x18
	.long	.LASF191
	.sleb128 7
	.uleb128 0x18
	.long	.LASF192
	.sleb128 8
	.uleb128 0x18
	.long	.LASF193
	.sleb128 9
	.uleb128 0x18
	.long	.LASF194
	.sleb128 10
	.uleb128 0x18
	.long	.LASF195
	.sleb128 11
	.uleb128 0x18
	.long	.LASF196
	.sleb128 12
	.uleb128 0x18
	.long	.LASF197
	.sleb128 13
	.uleb128 0x18
	.long	.LASF198
	.sleb128 14
	.uleb128 0x18
	.long	.LASF199
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x82b
	.uleb128 0x6
	.byte	0x8
	.long	0x8e1
	.uleb128 0x6
	.byte	0x8
	.long	0x6fd
	.uleb128 0x6
	.byte	0x8
	.long	0x78e
	.uleb128 0x6
	.byte	0x8
	.long	0x9de
	.uleb128 0x6
	.byte	0x8
	.long	0x57a
	.uleb128 0x6
	.byte	0x8
	.long	0x30d
	.uleb128 0x6
	.byte	0x8
	.long	0x468
	.uleb128 0xb
	.long	.LASF200
	.byte	0xb
	.value	0x150
	.long	0xc49
	.uleb128 0x6
	.byte	0x8
	.long	0xff
	.uleb128 0x13
	.long	0xde8
	.uleb128 0x14
	.long	0xde8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x348
	.uleb128 0x6
	.byte	0x8
	.long	0xddd
	.uleb128 0x6
	.byte	0x8
	.long	0x50f
	.uleb128 0x6
	.byte	0x8
	.long	0x2d2
	.uleb128 0x19
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0xe22
	.uleb128 0x12
	.long	.LASF201
	.byte	0xb
	.value	0x185
	.long	0xe22
	.uleb128 0x12
	.long	.LASF202
	.byte	0xb
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb
	.uleb128 0x6
	.byte	0x8
	.long	0xcad
	.uleb128 0x6
	.byte	0x8
	.long	0x270
	.uleb128 0x6
	.byte	0x8
	.long	0x54a
	.uleb128 0x5
	.long	.LASF203
	.byte	0x14
	.byte	0x13
	.long	0x2d2
	.uleb128 0x5
	.long	.LASF204
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xe3a
	.uleb128 0x1a
	.long	0xdd7
	.uleb128 0x6
	.byte	0x8
	.long	0xe56
	.uleb128 0x6
	.byte	0x8
	.long	0x176
	.uleb128 0x6
	.byte	0x8
	.long	0x383
	.uleb128 0x6
	.byte	0x8
	.long	0xc87
	.uleb128 0x8
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0xe7d
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0xead
	.uleb128 0xd
	.long	.LASF205
	.byte	0x10
	.byte	0x11
	.long	0xee9
	.byte	0
	.uleb128 0xd
	.long	.LASF206
	.byte	0x10
	.byte	0x12
	.long	0xeef
	.byte	0x8
	.uleb128 0xd
	.long	.LASF207
	.byte	0x10
	.byte	0x13
	.long	0xc87
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0xeb8
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0xee9
	.uleb128 0xd
	.long	.LASF208
	.byte	0x10
	.byte	0x18
	.long	0xc5f
	.byte	0
	.uleb128 0xd
	.long	.LASF209
	.byte	0x10
	.byte	0x19
	.long	0xc54
	.byte	0x4
	.uleb128 0xd
	.long	.LASF210
	.byte	0x10
	.byte	0x1a
	.long	0xc8d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe73
	.uleb128 0x6
	.byte	0x8
	.long	0xead
	.uleb128 0x1b
	.long	0x57
	.long	0xf09
	.uleb128 0x14
	.long	0xc87
	.uleb128 0x14
	.long	0xdb9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xef5
	.uleb128 0x1b
	.long	0xc5f
	.long	0xf23
	.uleb128 0x14
	.long	0xc87
	.uleb128 0x14
	.long	0xdb9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf0f
	.uleb128 0x1b
	.long	0x57
	.long	0xf4c
	.uleb128 0x14
	.long	0xc87
	.uleb128 0x14
	.long	0xdb9
	.uleb128 0x14
	.long	0xc87
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf29
	.uleb128 0x1b
	.long	0x57
	.long	0xf66
	.uleb128 0x14
	.long	0xdb9
	.uleb128 0x14
	.long	0xf66
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbfe
	.uleb128 0x6
	.byte	0x8
	.long	0xf52
	.uleb128 0x6
	.byte	0x8
	.long	0xb23
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF211
	.uleb128 0x1c
	.byte	0x4
	.byte	0x9
	.value	0xfb1
	.long	0x111e
	.uleb128 0x18
	.long	.LASF212
	.sleb128 0
	.uleb128 0x18
	.long	.LASF213
	.sleb128 1
	.uleb128 0x18
	.long	.LASF214
	.sleb128 2
	.uleb128 0x18
	.long	.LASF215
	.sleb128 3
	.uleb128 0x18
	.long	.LASF216
	.sleb128 4
	.uleb128 0x18
	.long	.LASF217
	.sleb128 5
	.uleb128 0x18
	.long	.LASF218
	.sleb128 6
	.uleb128 0x18
	.long	.LASF219
	.sleb128 7
	.uleb128 0x18
	.long	.LASF220
	.sleb128 8
	.uleb128 0x18
	.long	.LASF221
	.sleb128 9
	.uleb128 0x18
	.long	.LASF222
	.sleb128 10
	.uleb128 0x18
	.long	.LASF223
	.sleb128 11
	.uleb128 0x18
	.long	.LASF224
	.sleb128 12
	.uleb128 0x18
	.long	.LASF225
	.sleb128 13
	.uleb128 0x18
	.long	.LASF226
	.sleb128 14
	.uleb128 0x18
	.long	.LASF227
	.sleb128 15
	.uleb128 0x18
	.long	.LASF228
	.sleb128 16
	.uleb128 0x18
	.long	.LASF229
	.sleb128 17
	.uleb128 0x18
	.long	.LASF230
	.sleb128 18
	.uleb128 0x18
	.long	.LASF231
	.sleb128 19
	.uleb128 0x18
	.long	.LASF232
	.sleb128 20
	.uleb128 0x18
	.long	.LASF233
	.sleb128 21
	.uleb128 0x18
	.long	.LASF234
	.sleb128 22
	.uleb128 0x18
	.long	.LASF235
	.sleb128 23
	.uleb128 0x18
	.long	.LASF236
	.sleb128 24
	.uleb128 0x18
	.long	.LASF237
	.sleb128 25
	.uleb128 0x18
	.long	.LASF238
	.sleb128 26
	.uleb128 0x18
	.long	.LASF239
	.sleb128 27
	.uleb128 0x18
	.long	.LASF240
	.sleb128 28
	.uleb128 0x18
	.long	.LASF241
	.sleb128 29
	.uleb128 0x18
	.long	.LASF242
	.sleb128 30
	.uleb128 0x18
	.long	.LASF243
	.sleb128 31
	.uleb128 0x18
	.long	.LASF244
	.sleb128 32
	.uleb128 0x18
	.long	.LASF245
	.sleb128 33
	.uleb128 0x18
	.long	.LASF246
	.sleb128 34
	.uleb128 0x18
	.long	.LASF247
	.sleb128 35
	.uleb128 0x18
	.long	.LASF248
	.sleb128 36
	.uleb128 0x18
	.long	.LASF249
	.sleb128 37
	.uleb128 0x18
	.long	.LASF250
	.sleb128 38
	.uleb128 0x18
	.long	.LASF251
	.sleb128 39
	.uleb128 0x18
	.long	.LASF252
	.sleb128 40
	.uleb128 0x18
	.long	.LASF253
	.sleb128 41
	.uleb128 0x18
	.long	.LASF254
	.sleb128 42
	.uleb128 0x18
	.long	.LASF255
	.sleb128 43
	.uleb128 0x18
	.long	.LASF256
	.sleb128 44
	.uleb128 0x18
	.long	.LASF257
	.sleb128 45
	.uleb128 0x18
	.long	.LASF258
	.sleb128 46
	.uleb128 0x18
	.long	.LASF259
	.sleb128 47
	.uleb128 0x18
	.long	.LASF260
	.sleb128 48
	.uleb128 0x18
	.long	.LASF261
	.sleb128 49
	.uleb128 0x18
	.long	.LASF262
	.sleb128 50
	.uleb128 0x18
	.long	.LASF263
	.sleb128 51
	.uleb128 0x18
	.long	.LASF264
	.sleb128 52
	.uleb128 0x18
	.long	.LASF265
	.sleb128 53
	.uleb128 0x18
	.long	.LASF266
	.sleb128 54
	.uleb128 0x18
	.long	.LASF267
	.sleb128 55
	.uleb128 0x18
	.long	.LASF268
	.sleb128 56
	.uleb128 0x18
	.long	.LASF269
	.sleb128 57
	.uleb128 0x18
	.long	.LASF270
	.sleb128 58
	.uleb128 0x18
	.long	.LASF271
	.sleb128 59
	.uleb128 0x18
	.long	.LASF272
	.sleb128 60
	.uleb128 0x18
	.long	.LASF273
	.sleb128 61
	.uleb128 0x18
	.long	.LASF274
	.sleb128 62
	.uleb128 0x18
	.long	.LASF275
	.sleb128 63
	.uleb128 0x18
	.long	.LASF276
	.sleb128 64
	.uleb128 0x18
	.long	.LASF277
	.sleb128 65
	.uleb128 0x18
	.long	.LASF278
	.sleb128 66
	.byte	0
	.uleb128 0x1d
	.long	.LASF284
	.byte	0x4
	.byte	0x15
	.byte	0x12
	.long	0x1149
	.uleb128 0x18
	.long	.LASF279
	.sleb128 0
	.uleb128 0x18
	.long	.LASF280
	.sleb128 1
	.uleb128 0x18
	.long	.LASF281
	.sleb128 2
	.uleb128 0x18
	.long	.LASF282
	.sleb128 3
	.uleb128 0x18
	.long	.LASF283
	.sleb128 4
	.byte	0
	.uleb128 0x1d
	.long	.LASF285
	.byte	0x4
	.byte	0x15
	.byte	0x1f
	.long	0x1198
	.uleb128 0x18
	.long	.LASF286
	.sleb128 0
	.uleb128 0x18
	.long	.LASF287
	.sleb128 1
	.uleb128 0x18
	.long	.LASF288
	.sleb128 2
	.uleb128 0x18
	.long	.LASF289
	.sleb128 3
	.uleb128 0x18
	.long	.LASF290
	.sleb128 4
	.uleb128 0x18
	.long	.LASF291
	.sleb128 5
	.uleb128 0x18
	.long	.LASF292
	.sleb128 6
	.uleb128 0x18
	.long	.LASF293
	.sleb128 7
	.uleb128 0x18
	.long	.LASF294
	.sleb128 8
	.uleb128 0x18
	.long	.LASF295
	.sleb128 9
	.uleb128 0x18
	.long	.LASF296
	.sleb128 10
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x15
	.byte	0x2d
	.long	0x1149
	.uleb128 0xe
	.long	.LASF298
	.byte	0x10
	.byte	0x15
	.byte	0x3c
	.long	0x11c7
	.uleb128 0x1e
	.string	"cb"
	.byte	0x15
	.byte	0x3d
	.long	0xc87
	.byte	0
	.uleb128 0xd
	.long	.LASF299
	.byte	0x15
	.byte	0x3e
	.long	0xc87
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF300
	.value	0x170
	.byte	0x15
	.byte	0x41
	.long	0x13b0
	.uleb128 0xd
	.long	.LASF301
	.byte	0x15
	.byte	0x42
	.long	0xc5f
	.byte	0
	.uleb128 0x1e
	.string	"buf"
	.byte	0x15
	.byte	0x45
	.long	0xc87
	.byte	0x8
	.uleb128 0xd
	.long	.LASF302
	.byte	0x15
	.byte	0x46
	.long	0xf3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF303
	.byte	0x15
	.byte	0x47
	.long	0xf3
	.byte	0x18
	.uleb128 0xd
	.long	.LASF304
	.byte	0x15
	.byte	0x48
	.long	0xf3
	.byte	0x20
	.uleb128 0xd
	.long	.LASF305
	.byte	0x15
	.byte	0x49
	.long	0x7f
	.byte	0x28
	.uleb128 0x1e
	.string	"eof"
	.byte	0x15
	.byte	0x4a
	.long	0x7f
	.byte	0x29
	.uleb128 0xd
	.long	.LASF306
	.byte	0x15
	.byte	0x4d
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF307
	.byte	0x15
	.byte	0x4e
	.long	0x7f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF308
	.byte	0x15
	.byte	0x4f
	.long	0x7f
	.byte	0x39
	.uleb128 0xd
	.long	.LASF309
	.byte	0x15
	.byte	0x50
	.long	0x79
	.byte	0x40
	.uleb128 0xd
	.long	.LASF310
	.byte	0x15
	.byte	0x53
	.long	0xc87
	.byte	0x48
	.uleb128 0xd
	.long	.LASF311
	.byte	0x15
	.byte	0x54
	.long	0x7f
	.byte	0x50
	.uleb128 0xd
	.long	.LASF312
	.byte	0x15
	.byte	0x55
	.long	0xf3
	.byte	0x58
	.uleb128 0xd
	.long	.LASF313
	.byte	0x15
	.byte	0x56
	.long	0xf3
	.byte	0x60
	.uleb128 0xd
	.long	.LASF314
	.byte	0x15
	.byte	0x57
	.long	0xf3
	.byte	0x68
	.uleb128 0xd
	.long	.LASF315
	.byte	0x15
	.byte	0x5a
	.long	0xc87
	.byte	0x70
	.uleb128 0x1e
	.string	"ms"
	.byte	0x15
	.byte	0x5e
	.long	0x111e
	.byte	0x78
	.uleb128 0xd
	.long	.LASF316
	.byte	0x15
	.byte	0x5f
	.long	0xdfa
	.byte	0x80
	.uleb128 0xd
	.long	.LASF317
	.byte	0x15
	.byte	0x60
	.long	0x7f
	.byte	0x88
	.uleb128 0xd
	.long	.LASF318
	.byte	0x15
	.byte	0x64
	.long	0x7f
	.byte	0x89
	.uleb128 0xd
	.long	.LASF319
	.byte	0x15
	.byte	0x65
	.long	0x7f
	.byte	0x8a
	.uleb128 0xd
	.long	.LASF320
	.byte	0x15
	.byte	0x66
	.long	0x7f
	.byte	0x8b
	.uleb128 0xd
	.long	.LASF321
	.byte	0x15
	.byte	0x67
	.long	0x7f
	.byte	0x8c
	.uleb128 0xd
	.long	.LASF322
	.byte	0x15
	.byte	0x68
	.long	0x7f
	.byte	0x8d
	.uleb128 0xd
	.long	.LASF323
	.byte	0x15
	.byte	0x69
	.long	0x7f
	.byte	0x8e
	.uleb128 0xd
	.long	.LASF324
	.byte	0x15
	.byte	0x6a
	.long	0x7f
	.byte	0x8f
	.uleb128 0xd
	.long	.LASF325
	.byte	0x15
	.byte	0x6b
	.long	0x7f
	.byte	0x90
	.uleb128 0xd
	.long	.LASF326
	.byte	0x15
	.byte	0x6c
	.long	0x7f
	.byte	0x91
	.uleb128 0xd
	.long	.LASF327
	.byte	0x15
	.byte	0x6f
	.long	0xc87
	.byte	0x98
	.uleb128 0xd
	.long	.LASF328
	.byte	0x15
	.byte	0x70
	.long	0x13b0
	.byte	0xa0
	.uleb128 0x20
	.long	.LASF329
	.byte	0x15
	.byte	0x71
	.long	0x7f
	.value	0x130
	.uleb128 0x20
	.long	.LASF330
	.byte	0x15
	.byte	0x74
	.long	0xdbf
	.value	0x138
	.uleb128 0x20
	.long	.LASF331
	.byte	0x15
	.byte	0x75
	.long	0xdbf
	.value	0x140
	.uleb128 0x20
	.long	.LASF332
	.byte	0x15
	.byte	0x76
	.long	0xdbf
	.value	0x148
	.uleb128 0x20
	.long	.LASF333
	.byte	0x15
	.byte	0x79
	.long	0xc87
	.value	0x150
	.uleb128 0x20
	.long	.LASF334
	.byte	0x15
	.byte	0x7a
	.long	0x57
	.value	0x158
	.uleb128 0x20
	.long	.LASF335
	.byte	0x15
	.byte	0x7d
	.long	0xdbf
	.value	0x160
	.uleb128 0x21
	.string	"tmp"
	.byte	0x15
	.byte	0x7e
	.long	0xc87
	.value	0x168
	.byte	0
	.uleb128 0x15
	.long	0x11a3
	.long	0x13c0
	.uleb128 0x16
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF336
	.byte	0x15
	.byte	0x80
	.long	0x11c7
	.uleb128 0x5
	.long	.LASF337
	.byte	0x16
	.byte	0x13
	.long	0x2d
	.uleb128 0xe
	.long	.LASF338
	.byte	0x10
	.byte	0x2
	.byte	0x1
	.long	0x13fb
	.uleb128 0x1e
	.string	"beg"
	.byte	0x2
	.byte	0x3
	.long	0x79
	.byte	0
	.uleb128 0x1e
	.string	"end"
	.byte	0x2
	.byte	0x4
	.long	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF339
	.byte	0x2
	.byte	0x6
	.long	0x13d6
	.uleb128 0xe
	.long	.LASF340
	.byte	0x18
	.byte	0x3
	.byte	0x13
	.long	0x1437
	.uleb128 0x1e
	.string	"len"
	.byte	0x3
	.byte	0x14
	.long	0x57
	.byte	0
	.uleb128 0x1e
	.string	"str"
	.byte	0x3
	.byte	0x15
	.long	0x79
	.byte	0x8
	.uleb128 0xd
	.long	.LASF307
	.byte	0x3
	.byte	0x16
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.long	.LASF341
	.byte	0x4
	.byte	0x3
	.byte	0x23
	.long	0x14c8
	.uleb128 0x18
	.long	.LASF342
	.sleb128 1
	.uleb128 0x18
	.long	.LASF343
	.sleb128 2
	.uleb128 0x18
	.long	.LASF344
	.sleb128 3
	.uleb128 0x18
	.long	.LASF345
	.sleb128 4
	.uleb128 0x18
	.long	.LASF346
	.sleb128 5
	.uleb128 0x18
	.long	.LASF347
	.sleb128 6
	.uleb128 0x18
	.long	.LASF348
	.sleb128 7
	.uleb128 0x18
	.long	.LASF349
	.sleb128 8
	.uleb128 0x18
	.long	.LASF350
	.sleb128 9
	.uleb128 0x18
	.long	.LASF351
	.sleb128 10
	.uleb128 0x18
	.long	.LASF352
	.sleb128 11
	.uleb128 0x18
	.long	.LASF353
	.sleb128 12
	.uleb128 0x18
	.long	.LASF354
	.sleb128 13
	.uleb128 0x18
	.long	.LASF355
	.sleb128 14
	.uleb128 0x18
	.long	.LASF356
	.sleb128 15
	.uleb128 0x18
	.long	.LASF357
	.sleb128 16
	.uleb128 0x18
	.long	.LASF358
	.sleb128 17
	.uleb128 0x18
	.long	.LASF359
	.sleb128 18
	.uleb128 0x18
	.long	.LASF360
	.sleb128 19
	.uleb128 0x18
	.long	.LASF361
	.sleb128 20
	.uleb128 0x18
	.long	.LASF362
	.sleb128 21
	.uleb128 0x18
	.long	.LASF363
	.sleb128 22
	.byte	0
	.uleb128 0x22
	.long	.LASF364
	.byte	0x1
	.byte	0xf
	.long	0xc87
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1511
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.byte	0xf
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x11
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF365
	.byte	0x1
	.byte	0x19
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1567
	.uleb128 0x23
	.string	"s1"
	.byte	0x1
	.byte	0x19
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"s2"
	.byte	0x1
	.byte	0x19
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.byte	0x19
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF366
	.byte	0x1
	.byte	0x19
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.long	.LASF388
	.byte	0x1
	.byte	0x2b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f1
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.byte	0x2b
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF367
	.byte	0x1
	.byte	0x2b
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.byte	0x2b
	.long	0x15f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0x2b
	.long	0x15f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.byte	0x2b
	.long	0x15f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF368
	.byte	0x1
	.byte	0x32
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF369
	.byte	0x1
	.byte	0x33
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF370
	.byte	0x1
	.byte	0x34
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x22
	.long	.LASF371
	.byte	0x1
	.byte	0x42
	.long	0xc87
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1833
	.uleb128 0x23
	.string	"sv"
	.byte	0x1
	.byte	0x42
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF335
	.byte	0x1
	.byte	0x42
	.long	0xdbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF372
	.byte	0x1
	.byte	0x42
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x44
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0x45
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x24
	.string	"t"
	.byte	0x1
	.byte	0x46
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.string	"end"
	.byte	0x1
	.byte	0x47
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.long	.LASF373
	.byte	0x1
	.byte	0x48
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF374
	.byte	0x1
	.byte	0x4a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.long	.LASF375
	.byte	0x1
	.byte	0x4b
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.byte	0x4d
	.long	0x1833
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.byte	0x4e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.byte	0x4f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x175d
	.uleb128 0x24
	.string	"num"
	.byte	0x1
	.byte	0x63
	.long	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF378
	.byte	0x1
	.byte	0x64
	.long	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.string	"ok"
	.byte	0x1
	.byte	0x65
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x173b
	.uleb128 0x24
	.string	"tmp"
	.byte	0x1
	.byte	0x6a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x17c3
	.uleb128 0x28
	.long	.LASF379
	.byte	0x1
	.byte	0xb7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.string	"svp"
	.byte	0x1
	.byte	0xbb
	.long	0xe6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x24
	.string	"ss"
	.byte	0x1
	.byte	0xc3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF380
	.byte	0x1
	.byte	0xd8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.long	.LASF381
	.byte	0x1
	.byte	0xe4
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF382
	.byte	0x1
	.byte	0xe5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF383
	.byte	0x1
	.byte	0xe6
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.byte	0xe7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x1843
	.uleb128 0x16
	.long	0x65
	.byte	0xc
	.byte	0
	.uleb128 0x2b
	.long	.LASF385
	.byte	0x1
	.value	0x113
	.long	0x7f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a0
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x113
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.value	0x113
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.value	0x116
	.long	0xc3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF386
	.byte	0x1
	.value	0x120
	.long	0x7f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x18fb
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x120
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x120
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0x122
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF387
	.byte	0x1
	.value	0x123
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF389
	.byte	0x2
	.byte	0x1e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x197d
	.uleb128 0x26
	.long	.LASF390
	.byte	0x2
	.byte	0x1e
	.long	0x197d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF391
	.byte	0x2
	.byte	0x1e
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF392
	.byte	0x2
	.byte	0x1e
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF393
	.byte	0x2
	.byte	0x20
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x28
	.long	.LASF394
	.byte	0x2
	.byte	0x29
	.long	0x1983
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.byte	0x2a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1983
	.uleb128 0x6
	.byte	0x8
	.long	0x13fb
	.uleb128 0x27
	.long	.LASF395
	.byte	0x3
	.byte	0x71
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1daa
	.uleb128 0x26
	.long	.LASF300
	.byte	0x3
	.byte	0x71
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x26
	.long	.LASF396
	.byte	0x3
	.byte	0x72
	.long	0x1198
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x23
	.string	"beg"
	.byte	0x3
	.byte	0x73
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x23
	.string	"end"
	.byte	0x3
	.byte	0x73
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x26
	.long	.LASF397
	.byte	0x3
	.byte	0x73
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.long	.LASF398
	.byte	0x3
	.byte	0x74
	.long	0x1983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.long	.LASF399
	.byte	0x3
	.byte	0x74
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF400
	.byte	0x3
	.byte	0x75
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"h"
	.byte	0x3
	.byte	0x78
	.long	0x1db0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x30
	.long	.LASF414
	.byte	0x3
	.byte	0x79
	.long	0x57
	.uleb128 0x24
	.string	"sp"
	.byte	0x3
	.byte	0x7a
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF401
	.byte	0x3
	.byte	0x7b
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.long	.LASF402
	.byte	0x3
	.byte	0x7c
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF299
	.byte	0x3
	.byte	0x7d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.string	"s"
	.byte	0x3
	.byte	0x7e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF302
	.byte	0x3
	.byte	0x87
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.long	.LASF303
	.byte	0x3
	.byte	0x88
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF304
	.byte	0x3
	.byte	0x89
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF403
	.byte	0x3
	.value	0x277
	.quad	.L109
	.uleb128 0x31
	.long	.LASF404
	.byte	0x3
	.value	0x11f
	.quad	.L140
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1af7
	.uleb128 0x24
	.string	"t"
	.byte	0x3
	.byte	0xb0
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF405
	.byte	0x3
	.byte	0xb1
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -277
	.byte	0
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1b28
	.uleb128 0x24
	.string	"s"
	.byte	0x3
	.byte	0xbc
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.string	"nl"
	.byte	0x3
	.byte	0xbd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1b4d
	.uleb128 0x28
	.long	.LASF406
	.byte	0x3
	.byte	0xd7
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1b73
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x3
	.value	0x12f
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1d63
	.uleb128 0x2d
	.string	"arg"
	.byte	0x3
	.value	0x159
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF407
	.byte	0x3
	.value	0x15a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2f
	.long	.LASF341
	.byte	0x3
	.value	0x15b
	.long	0x1437
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1bfb
	.uleb128 0x2d
	.string	"av"
	.byte	0x3
	.value	0x165
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF408
	.byte	0x3
	.value	0x166
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x167
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1c2e
	.uleb128 0x2d
	.string	"av"
	.byte	0x3
	.value	0x17c
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x17d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1c54
	.uleb128 0x2f
	.long	.LASF409
	.byte	0x3
	.value	0x19a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1ceb
	.uleb128 0x2d
	.string	"hv"
	.byte	0x3
	.value	0x1a3
	.long	0xdbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x1a4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2f
	.long	.LASF410
	.byte	0x3
	.value	0x1b2
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF411
	.byte	0x3
	.value	0x1b4
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2d
	.string	"beg"
	.byte	0x3
	.value	0x1b9
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x1ba
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1d40
	.uleb128 0x2d
	.string	"av"
	.byte	0x3
	.value	0x1f0
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x1f1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2f
	.long	.LASF410
	.byte	0x3
	.value	0x1f3
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x23c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1d88
	.uleb128 0x2f
	.long	.LASF412
	.byte	0x3
	.value	0x265
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x3
	.value	0x284
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13c0
	.uleb128 0x6
	.byte	0x8
	.long	0x11a3
	.uleb128 0x2e
	.long	.LASF413
	.byte	0x3
	.value	0x291
	.long	0xc87
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f3b
	.uleb128 0x2c
	.string	"src"
	.byte	0x3
	.value	0x291
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x291
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	.LASF414
	.byte	0x3
	.value	0x293
	.long	0x57
	.uleb128 0x2f
	.long	.LASF299
	.byte	0x3
	.value	0x294
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x295
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x296
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"end"
	.byte	0x3
	.value	0x297
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1e85
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x3
	.value	0x2a1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2d
	.string	"c"
	.byte	0x3
	.value	0x2a5
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x1ee7
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x3
	.value	0x2af
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"a"
	.byte	0x3
	.value	0x2b0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF416
	.byte	0x3
	.value	0x2b1
	.long	0x15f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2d
	.string	"c"
	.byte	0x3
	.value	0x2be
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2f
	.long	.LASF417
	.byte	0x3
	.value	0x2d3
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x2d9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"buf"
	.byte	0x3
	.value	0x2da
	.long	0x1f3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x1f4b
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x34
	.long	.LASF418
	.byte	0x3
	.value	0x308
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff0
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x308
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x308
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF414
	.byte	0x3
	.value	0x30a
	.long	0x57
	.uleb128 0x2f
	.long	.LASF419
	.byte	0x3
	.value	0x30b
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2f
	.long	.LASF420
	.byte	0x3
	.value	0x30c
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF421
	.byte	0x3
	.value	0x30d
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x3
	.value	0x30e
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF423
	.byte	0x3
	.value	0x30f
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF424
	.byte	0x3
	.value	0x310
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF425
	.byte	0x3
	.value	0x329
	.long	0x79
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x205c
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x329
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x329
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x32c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF426
	.byte	0x3
	.value	0x32d
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2f
	.long	.LASF378
	.byte	0x3
	.value	0x32e
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x2e
	.long	.LASF427
	.byte	0x3
	.value	0x340
	.long	0x79
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x21ab
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x340
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x340
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x340
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x340
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x340
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x342
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF428
	.byte	0x3
	.value	0x34a
	.quad	.L336
	.uleb128 0x31
	.long	.LASF429
	.byte	0x3
	.value	0x38b
	.quad	.L358
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x2162
	.uleb128 0x2f
	.long	.LASF430
	.byte	0x3
	.value	0x345
	.long	0x21ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF431
	.byte	0x3
	.value	0x345
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x3
	.value	0x345
	.long	0x1983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF399
	.byte	0x3
	.value	0x345
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF432
	.byte	0x3
	.value	0x346
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x2188
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x378
	.long	0x13fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x388
	.long	0x13fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x13fb
	.long	0x21bb
	.uleb128 0x16
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x34
	.long	.LASF434
	.byte	0x3
	.value	0x3ad
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f8
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x3ad
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF414
	.byte	0x3
	.value	0x3af
	.long	0x57
	.uleb128 0x2f
	.long	.LASF316
	.byte	0x3
	.value	0x3b1
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2f
	.long	.LASF435
	.byte	0x3
	.value	0x3b5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF436
	.byte	0x3
	.value	0x3b6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2d
	.string	"svp"
	.byte	0x3
	.value	0x3b8
	.long	0xe6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x3
	.value	0x3ba
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF437
	.byte	0x3
	.value	0x3bb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x3bc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2d
	.string	"svp"
	.byte	0x3
	.value	0x3bf
	.long	0xe6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x3c1
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF438
	.byte	0x3
	.value	0x3c2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x3c3
	.long	0x111e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF439
	.byte	0x3
	.value	0x3dc
	.long	0x79
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2402
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x3dc
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x3dc
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x3dc
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x3dc
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x3dc
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF414
	.byte	0x3
	.value	0x3de
	.long	0x57
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x3df
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x3
	.value	0x3e0
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF440
	.byte	0x3
	.value	0x3e5
	.quad	.L386
	.uleb128 0x31
	.long	.LASF441
	.byte	0x3
	.value	0x428
	.quad	.L396
	.uleb128 0x31
	.long	.LASF442
	.byte	0x3
	.value	0x424
	.quad	.L408
	.uleb128 0x2a
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.long	.LASF443
	.byte	0x3
	.value	0x3e9
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x3
	.value	0x3ea
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x3
	.value	0x3eb
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF445
	.byte	0x3
	.value	0x430
	.long	0x79
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x262b
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x430
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x430
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x430
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x430
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x430
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x432
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.long	.LASF446
	.byte	0x3
	.value	0x4c2
	.quad	.L416
	.uleb128 0x31
	.long	.LASF442
	.byte	0x3
	.value	0x4b8
	.quad	.L431
	.uleb128 0x31
	.long	.LASF441
	.byte	0x3
	.value	0x4bc
	.quad	.L438
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x24d8
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x3
	.value	0x437
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x29
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x24fe
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x3
	.value	0x449
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x2524
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x454
	.long	0x13fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x29
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x2608
	.uleb128 0x2f
	.long	.LASF430
	.byte	0x3
	.value	0x45d
	.long	0x262b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF431
	.byte	0x3
	.value	0x45d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x3
	.value	0x45d
	.long	0x1983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF399
	.byte	0x3
	.value	0x45d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2f
	.long	.LASF447
	.byte	0x3
	.value	0x45e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF448
	.byte	0x3
	.value	0x45f
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x25bf
	.uleb128 0x2f
	.long	.LASF449
	.byte	0x3
	.value	0x47e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x29
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x25e5
	.uleb128 0x2f
	.long	.LASF450
	.byte	0x3
	.value	0x489
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x2a
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2f
	.long	.LASF451
	.byte	0x3
	.value	0x4a2
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x4c9
	.long	0x13fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x13fb
	.long	0x263b
	.uleb128 0x16
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x2e
	.long	.LASF452
	.byte	0x3
	.value	0x4d7
	.long	0x79
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2858
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x4d7
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x4d7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x4d7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x4d7
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x4d7
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x4d9
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF453
	.byte	0x3
	.value	0x4da
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2f
	.long	.LASF430
	.byte	0x3
	.value	0x4db
	.long	0x2858
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF431
	.byte	0x3
	.value	0x4db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x3
	.value	0x4db
	.long	0x1983
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF399
	.byte	0x3
	.value	0x4db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF454
	.byte	0x3
	.value	0x4dd
	.long	0x13cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -361
	.uleb128 0x2f
	.long	.LASF455
	.byte	0x3
	.value	0x4dd
	.long	0x13cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2f
	.long	.LASF456
	.byte	0x3
	.value	0x4de
	.long	0x13cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -363
	.uleb128 0x2f
	.long	.LASF457
	.byte	0x3
	.value	0x4de
	.long	0x13cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -362
	.uleb128 0x31
	.long	.LASF441
	.byte	0x3
	.value	0x566
	.quad	.L484
	.uleb128 0x31
	.long	.LASF458
	.byte	0x3
	.value	0x55b
	.quad	.L523
	.uleb128 0x29
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x27e9
	.uleb128 0x2f
	.long	.LASF459
	.byte	0x3
	.value	0x4f7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF460
	.byte	0x3
	.value	0x4f8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x29
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x27c6
	.uleb128 0x2f
	.long	.LASF449
	.byte	0x3
	.value	0x514
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x2a
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x2f
	.long	.LASF461
	.byte	0x3
	.value	0x51e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x2d
	.string	"i"
	.byte	0x3
	.value	0x543
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2f
	.long	.LASF462
	.byte	0x3
	.value	0x544
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2a
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x549
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2d
	.string	"t"
	.byte	0x3
	.value	0x54a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x54b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x13fb
	.long	0x2868
	.uleb128 0x16
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x2e
	.long	.LASF463
	.byte	0x3
	.value	0x56d
	.long	0x79
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x294a
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x56d
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x56d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x56d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x56d
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x56d
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x56f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF464
	.byte	0x3
	.value	0x570
	.long	0x13cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2f
	.long	.LASF465
	.byte	0x3
	.value	0x570
	.long	0x13cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x29
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x2928
	.uleb128 0x2f
	.long	.LASF406
	.byte	0x3
	.value	0x57b
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x598
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x3
	.value	0x5a8
	.long	0x79
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d7
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x5a8
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x5a8
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x5a8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x5a8
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x5a8
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x5aa
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF338
	.byte	0x3
	.value	0x5ac
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.long	.LASF467
	.byte	0x3
	.value	0x5d3
	.long	0x79
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b4f
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x5d3
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"beg"
	.byte	0x3
	.value	0x5d3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.string	"end"
	.byte	0x3
	.value	0x5d3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x32
	.long	.LASF397
	.byte	0x3
	.value	0x5d3
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x5d3
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x5d5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"t"
	.byte	0x3
	.value	0x5d6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF468
	.byte	0x3
	.value	0x5d7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF469
	.byte	0x3
	.value	0x697
	.quad	.L582
	.uleb128 0x29
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x2b08
	.uleb128 0x2d
	.string	"l"
	.byte	0x3
	.value	0x5e1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF470
	.byte	0x3
	.value	0x5e2
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x2f
	.long	.LASF471
	.byte	0x3
	.value	0x5e3
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0x2f
	.long	.LASF472
	.byte	0x3
	.value	0x5e4
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x2f
	.long	.LASF473
	.byte	0x3
	.value	0x5e5
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2f
	.long	.LASF474
	.byte	0x3
	.value	0x60e
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x2b2d
	.uleb128 0x2f
	.long	.LASF473
	.byte	0x3
	.value	0x628
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x2f
	.long	.LASF473
	.byte	0x3
	.value	0x645
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF475
	.byte	0x3
	.value	0x69d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c2a
	.uleb128 0x32
	.long	.LASF300
	.byte	0x3
	.value	0x69e
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.long	.LASF476
	.byte	0x3
	.value	0x69f
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.long	.LASF400
	.byte	0x3
	.value	0x6a0
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"s"
	.byte	0x3
	.value	0x6a2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"beg"
	.byte	0x3
	.value	0x6a2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"end"
	.byte	0x3
	.value	0x6a2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF397
	.byte	0x3
	.value	0x6a3
	.long	0xc5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"len"
	.byte	0x3
	.value	0x6a4
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x2f
	.long	.LASF477
	.byte	0x3
	.value	0x6a8
	.long	0xc8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x3
	.value	0x6c2
	.long	0x13fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF478
	.byte	0x4
	.byte	0x85
	.long	0xc87
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c78
	.uleb128 0x23
	.string	"h"
	.byte	0x4
	.byte	0x85
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x28
	.long	.LASF479
	.byte	0x4
	.byte	0x88
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF480
	.byte	0x4
	.byte	0x94
	.long	0x1daa
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cb3
	.uleb128 0x23
	.string	"sv"
	.byte	0x4
	.byte	0x94
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"p"
	.byte	0x4
	.byte	0x96
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF481
	.byte	0x4
	.byte	0x9e
	.long	0x1daa
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cfd
	.uleb128 0x23
	.string	"sv"
	.byte	0x4
	.byte	0x9e
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"hv"
	.byte	0x4
	.byte	0xa0
	.long	0xdbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"svp"
	.byte	0x4
	.byte	0xa1
	.long	0xe6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF482
	.byte	0x4
	.byte	0xb4
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d35
	.uleb128 0x26
	.long	.LASF483
	.byte	0x4
	.byte	0xb4
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"i"
	.byte	0x4
	.byte	0xb6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF484
	.byte	0x4
	.byte	0xd0
	.long	0x57
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d71
	.uleb128 0x23
	.string	"sv"
	.byte	0x4
	.byte	0xd0
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"mg"
	.byte	0x4
	.byte	0xd0
	.long	0xdb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF488
	.byte	0x4
	.byte	0xe1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e4f
	.uleb128 0x23
	.string	"cv"
	.byte	0x4
	.byte	0xe1
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.string	"sp"
	.byte	0x4
	.byte	0xe3
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF485
	.byte	0x4
	.byte	0xe3
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"ax"
	.byte	0x4
	.byte	0xe3
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF486
	.byte	0x4
	.byte	0xe3
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x2e2d
	.uleb128 0x28
	.long	.LASF400
	.byte	0x4
	.byte	0xe7
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF483
	.byte	0x4
	.byte	0xe9
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"sv"
	.byte	0x4
	.byte	0xea
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"hv"
	.byte	0x4
	.byte	0xeb
	.long	0xdbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"mg"
	.byte	0x4
	.byte	0xec
	.long	0xdb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x104
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF489
	.byte	0x4
	.value	0x108
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f49
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x108
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x10a
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x10a
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x10a
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x10a
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2f
	.long	.LASF400
	.byte	0x4
	.value	0x10f
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF476
	.byte	0x4
	.value	0x110
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF300
	.byte	0x4
	.value	0x112
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x2f
	.long	.LASF490
	.byte	0x4
	.value	0x119
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"len"
	.byte	0x4
	.value	0x11a
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x2f
	.long	.LASF491
	.byte	0x4
	.value	0x11c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF492
	.byte	0x4
	.value	0x147
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fdf
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x147
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x149
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x149
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x149
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x149
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2f
	.long	.LASF400
	.byte	0x4
	.value	0x14e
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF300
	.byte	0x4
	.value	0x150
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF493
	.byte	0x4
	.value	0x162
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ba
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x162
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x164
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x164
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x164
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x164
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"ix"
	.byte	0x4
	.value	0x165
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x3098
	.uleb128 0x2f
	.long	.LASF483
	.byte	0x4
	.value	0x169
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF494
	.byte	0x4
	.value	0x16b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x4
	.value	0x16d
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x18d
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF496
	.byte	0x4
	.value	0x191
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3175
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x191
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x193
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x193
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x193
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x193
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0x3153
	.uleb128 0x2f
	.long	.LASF483
	.byte	0x4
	.value	0x197
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x4
	.value	0x198
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x1a4
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF497
	.byte	0x4
	.value	0x1a8
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d0
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x1a8
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x1aa
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x1aa
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x1aa
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x1aa
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"ix"
	.byte	0x4
	.value	0x1ab
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x32ae
	.uleb128 0x2f
	.long	.LASF483
	.byte	0x4
	.value	0x1af
	.long	0x1daa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF494
	.byte	0x4
	.value	0x1b1
	.long	0x32d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"i"
	.byte	0x4
	.value	0x1b2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x2d
	.string	"sv"
	.byte	0x4
	.value	0x1c7
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.uleb128 0x2d
	.string	"av"
	.byte	0x4
	.value	0x1cb
	.long	0xdfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"j"
	.byte	0x4
	.value	0x1cc
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"len"
	.byte	0x4
	.value	0x1cd
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x2d
	.string	"svp"
	.byte	0x4
	.value	0x1cf
	.long	0xe6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x1e3
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdbf
	.uleb128 0x36
	.long	.LASF498
	.byte	0x4
	.value	0x1e7
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b8
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x1e7
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x1e9
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x1e9
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x1e9
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x1e9
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2f
	.long	.LASF483
	.byte	0x4
	.value	0x1ee
	.long	0x1daa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF499
	.byte	0x4
	.value	0x1ef
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF500
	.byte	0x4
	.value	0x1f1
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x4
	.value	0x1f2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF396
	.byte	0x4
	.value	0x1f3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"i"
	.byte	0x4
	.value	0x1f4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"h"
	.byte	0x4
	.value	0x1f5
	.long	0x1db0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF501
	.byte	0x4
	.value	0x220
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x344c
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x220
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x222
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x222
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x222
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x222
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x2d
	.string	"i"
	.byte	0x4
	.value	0x227
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF335
	.byte	0x4
	.value	0x228
	.long	0xdbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF502
	.byte	0x4
	.value	0x23c
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3528
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x23c
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x23e
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x23e
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x23e
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x23e
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x3506
	.uleb128 0x2f
	.long	.LASF503
	.byte	0x4
	.value	0x242
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF504
	.byte	0x4
	.value	0x243
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF505
	.byte	0x4
	.value	0x245
	.long	0xdbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF372
	.byte	0x4
	.value	0x246
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.uleb128 0x2a
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x259
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF506
	.byte	0x4
	.value	0x25d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3602
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x25d
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x25f
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x25f
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x25f
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x25f
	.long	0xc54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x35e0
	.uleb128 0x2f
	.long	.LASF503
	.byte	0x4
	.value	0x263
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"len"
	.byte	0x4
	.value	0x265
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"s"
	.byte	0x4
	.value	0x266
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x4
	.value	0x268
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.uleb128 0x2a
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x275
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF507
	.byte	0x4
	.value	0x279
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x36bd
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x279
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x27b
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x27b
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x27b
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x27b
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x369b
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x4
	.value	0x27f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF508
	.byte	0x4
	.value	0x280
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x28a
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF509
	.byte	0x4
	.value	0x291
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3777
	.uleb128 0x2c
	.string	"cv"
	.byte	0x4
	.value	0x291
	.long	0xde8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"sp"
	.byte	0x4
	.value	0x293
	.long	0xe6d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x4
	.value	0x293
	.long	0xe6d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"ax"
	.byte	0x4
	.value	0x293
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF486
	.byte	0x4
	.value	0x293
	.long	0xc54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF510
	.byte	0x4
	.value	0x294
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.long	0x3755
	.uleb128 0x2d
	.string	"cv"
	.byte	0x4
	.value	0x299
	.long	0xde8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x4
	.value	0x2bf
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x79
	.long	0x3787
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.long	.LASF511
	.byte	0x17
	.byte	0x79
	.long	0x3777
	.uleb128 0x9
	.byte	0x3
	.quad	local_patches
	.uleb128 0x15
	.long	0x79
	.long	0x37ac
	.uleb128 0x16
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x28
	.long	.LASF512
	.byte	0x15
	.byte	0x30
	.long	0x379c
	.uleb128 0x9
	.byte	0x3
	.quad	event_id_str
	.uleb128 0x15
	.long	0x13cb
	.long	0x37d1
	.uleb128 0x16
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0x28
	.long	.LASF513
	.byte	0x16
	.byte	0x15
	.long	0x37c1
	.uleb128 0x9
	.byte	0x3
	.quad	hctype
	.uleb128 0x15
	.long	0x1406
	.long	0x37f6
	.uleb128 0x16
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.long	.LASF514
	.byte	0x3
	.byte	0x18
	.long	0x37e6
	.uleb128 0x9
	.byte	0x3
	.quad	literal_mode_elem
	.uleb128 0x15
	.long	0x2d
	.long	0x3816
	.uleb128 0x37
	.byte	0
	.uleb128 0x30
	.long	.LASF515
	.byte	0x18
	.byte	0x29
	.long	0x3821
	.uleb128 0x7
	.long	0x380b
	.uleb128 0x30
	.long	.LASF516
	.byte	0x19
	.byte	0x34
	.long	0xc3f
	.uleb128 0x30
	.long	.LASF517
	.byte	0x19
	.byte	0x5d
	.long	0xdf4
	.uleb128 0x33
	.long	.LASF518
	.byte	0x19
	.value	0x125
	.long	0x297
	.uleb128 0x33
	.long	.LASF519
	.byte	0x19
	.value	0x126
	.long	0x297
	.uleb128 0x33
	.long	.LASF520
	.byte	0x19
	.value	0x127
	.long	0x297
	.uleb128 0x30
	.long	.LASF521
	.byte	0x1a
	.byte	0x22
	.long	0xe6d
	.uleb128 0x30
	.long	.LASF522
	.byte	0x1a
	.byte	0x26
	.long	0xdd7
	.uleb128 0x30
	.long	.LASF523
	.byte	0x1a
	.byte	0x28
	.long	0xe6d
	.uleb128 0x30
	.long	.LASF524
	.byte	0x1a
	.byte	0x2a
	.long	0xe6d
	.uleb128 0x30
	.long	.LASF525
	.byte	0x1a
	.byte	0x2b
	.long	0xe6d
	.uleb128 0x30
	.long	.LASF526
	.byte	0x1a
	.byte	0x37
	.long	0xc54
	.uleb128 0x30
	.long	.LASF527
	.byte	0x1a
	.byte	0x38
	.long	0xc54
	.uleb128 0x30
	.long	.LASF528
	.byte	0x1a
	.byte	0x3c
	.long	0xcfa
	.uleb128 0x30
	.long	.LASF529
	.byte	0x1a
	.byte	0x3d
	.long	0xcfa
	.uleb128 0x30
	.long	.LASF530
	.byte	0x1a
	.byte	0x43
	.long	0xc87
	.uleb128 0x30
	.long	.LASF531
	.byte	0x1a
	.byte	0x44
	.long	0x38d9
	.uleb128 0x6
	.byte	0x8
	.long	0x618
	.uleb128 0x30
	.long	.LASF532
	.byte	0x1b
	.byte	0x25
	.long	0xaa
	.uleb128 0x15
	.long	0x79
	.long	0x38fa
	.uleb128 0x16
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x38
	.long	.LASF533
	.byte	0x3
	.byte	0x3e
	.long	0x38ea
	.uleb128 0x9
	.byte	0x3
	.quad	argname
	.uleb128 0x38
	.long	.LASF534
	.byte	0x4
	.byte	0xd7
	.long	0xb23
	.uleb128 0x9
	.byte	0x3
	.quad	vtbl_free_pstate
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x5
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
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
.LASF435:
	.string	"stack_len"
.LASF48:
	.string	"precomp"
.LASF390:
	.string	"token_ptr"
.LASF396:
	.string	"event"
.LASF274:
	.string	"to_cv_amg"
.LASF265:
	.string	"repeat_ass_amg"
.LASF233:
	.string	"rshift_ass_amg"
.LASF454:
	.string	"tag_name_first"
.LASF408:
	.string	"prev_token"
.LASF423:
	.string	"old_line"
.LASF512:
	.string	"event_id_str"
.LASF16:
	.string	"op_next"
.LASF202:
	.string	"xiou_any"
.LASF397:
	.string	"utf8"
.LASF422:
	.string	"old_offset"
.LASF115:
	.string	"xpvgv"
.LASF137:
	.string	"xio_ifp"
.LASF235:
	.string	"band_ass_amg"
.LASF242:
	.string	"gt_amg"
.LASF281:
	.string	"MS_RCDATA"
.LASF109:
	.string	"xhv_keys"
.LASF152:
	.string	"xio_flags"
.LASF156:
	.string	"svt_set"
.LASF105:
	.string	"xpvhv"
.LASF267:
	.string	"concat_ass_amg"
.LASF352:
	.string	"ARG_DTEXT"
.LASF537:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF478:
	.string	"check_handler"
.LASF403:
	.string	"IGNORE_EVENT"
.LASF328:
	.string	"handlers"
.LASF66:
	.string	"gp_hv"
.LASF136:
	.string	"xpvio"
.LASF88:
	.string	"xpviv"
.LASF259:
	.string	"cos_amg"
.LASF386:
	.string	"probably_utf8_chunk"
.LASF479:
	.string	"myref"
.LASF361:
	.string	"ARG_UNDEF"
.LASF461:
	.string	"word_start"
.LASF124:
	.string	"xcv_start"
.LASF63:
	.string	"gp_io"
.LASF67:
	.string	"gp_egv"
.LASF432:
	.string	"start_com"
.LASF208:
	.string	"hek_hash"
.LASF246:
	.string	"ncmp_amg"
.LASF123:
	.string	"xcv_stash"
.LASF262:
	.string	"log_amg"
.LASF309:
	.string	"pending_end_tag"
.LASF347:
	.string	"ARG_TAG"
.LASF485:
	.string	"mark"
.LASF85:
	.string	"xpv_cur"
.LASF78:
	.string	"mg_type"
.LASF314:
	.string	"pend_text_column"
.LASF388:
	.string	"grow_gap"
.LASF245:
	.string	"ne_amg"
.LASF417:
	.string	"string_beg"
.LASF493:
	.string	"XS_HTML__Parser_strict_comment"
.LASF84:
	.string	"xpv_pv"
.LASF375:
	.string	"repl_len"
.LASF487:
	.string	"tmpXSoff"
.LASF457:
	.string	"attr_name_char"
.LASF467:
	.string	"parse_buf"
.LASF472:
	.string	"escape_next"
.LASF296:
	.string	"E_NONE"
.LASF279:
	.string	"MS_NONE"
.LASF501:
	.string	"XS_HTML__Entities_decode_entities"
.LASF244:
	.string	"eq_amg"
.LASF387:
	.string	"clen"
.LASF496:
	.string	"XS_HTML__Parser_boolean_attribute_value"
.LASF200:
	.string	"cv_flags_t"
.LASF71:
	.string	"gp_line"
.LASF282:
	.string	"MS_CDATA"
.LASF142:
	.string	"xio_page_len"
.LASF421:
	.string	"old_is_cdata"
.LASF241:
	.string	"le_amg"
.LASF91:
	.string	"xpvnv"
.LASF116:
	.string	"xgv_gp"
.LASF483:
	.string	"pstate"
.LASF500:
	.string	"name_len"
.LASF506:
	.string	"XS_HTML__Entities__probably_utf8_chunk"
.LASF77:
	.string	"mg_private"
.LASF530:
	.string	"PL_Sv"
.LASF271:
	.string	"to_av_amg"
.LASF336:
	.string	"PSTATE"
.LASF102:
	.string	"xav_arylen"
.LASF60:
	.string	"program"
.LASF125:
	.string	"xcv_root"
.LASF334:
	.string	"ignore_depth"
.LASF206:
	.string	"hent_hek"
.LASF360:
	.string	"ARG_EVENT"
.LASF76:
	.string	"mg_virtual"
.LASF460:
	.string	"attr_name_end"
.LASF382:
	.string	"before_gap"
.LASF261:
	.string	"exp_amg"
.LASF268:
	.string	"copy_amg"
.LASF476:
	.string	"chunk"
.LASF41:
	.string	"sv_flags"
.LASF234:
	.string	"band_amg"
.LASF362:
	.string	"ARG_LITERAL"
.LASF216:
	.string	"string_amg"
.LASF38:
	.string	"broiled"
.LASF147:
	.string	"xio_fmt_gv"
.LASF494:
	.string	"attr"
.LASF313:
	.string	"pend_text_line"
.LASF462:
	.string	"tag_len"
.LASF515:
	.string	"PL_utf8skip"
.LASF70:
	.string	"gp_flags"
.LASF433:
	.string	"token"
.LASF62:
	.string	"gp_refcnt"
.LASF56:
	.string	"nparens"
.LASF180:
	.string	"type"
.LASF414:
	.string	"Perl___notused"
.LASF72:
	.string	"gp_file"
.LASF141:
	.string	"xio_page"
.LASF312:
	.string	"pend_text_offset"
.LASF290:
	.string	"E_TEXT"
.LASF332:
	.string	"ignore_elements"
.LASF131:
	.string	"xcv_padlist"
.LASF398:
	.string	"tokens"
.LASF376:
	.string	"repl_utf8"
.LASF215:
	.string	"nomethod_amg"
.LASF61:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF441:
	.string	"PREMATURE"
.LASF178:
	.string	"PerlIO"
.LASF363:
	.string	"ARG_FLAG_FLAT_ARRAY"
.LASF211:
	.string	"float"
.LASF289:
	.string	"E_END"
.LASF283:
	.string	"MS_IGNORE"
.LASF39:
	.string	"sv_any"
.LASF327:
	.string	"bool_attr_val"
.LASF301:
	.string	"signature"
.LASF248:
	.string	"slt_amg"
.LASF59:
	.string	"reganch"
.LASF171:
	.string	"stashes"
.LASF456:
	.string	"attr_name_first"
.LASF45:
	.string	"endp"
.LASF326:
	.string	"utf8_mode"
.LASF486:
	.string	"items"
.LASF294:
	.string	"E_DEFAULT"
.LASF395:
	.string	"report_event"
.LASF11:
	.string	"size_t"
.LASF307:
	.string	"is_cdata"
.LASF451:
	.string	"word_beg"
.LASF484:
	.string	"magic_free_pstate"
.LASF295:
	.string	"EVENT_COUNT"
.LASF438:
	.string	"token_str"
.LASF463:
	.string	"parse_end"
.LASF448:
	.string	"decl_id_len"
.LASF304:
	.string	"column"
.LASF353:
	.string	"ARG_IS_CDATA"
.LASF374:
	.string	"repl"
.LASF197:
	.string	"SVt_PVGV"
.LASF52:
	.string	"sublen"
.LASF96:
	.string	"xav_fill"
.LASF214:
	.string	"bool__amg"
.LASF75:
	.string	"mg_moremagic"
.LASF319:
	.string	"strict_names"
.LASF528:
	.string	"PL_markstack_ptr"
.LASF81:
	.string	"mg_ptr"
.LASF238:
	.string	"bxor_amg"
.LASF303:
	.string	"line"
.LASF373:
	.string	"ent_start"
.LASF150:
	.string	"xio_subprocess"
.LASF399:
	.string	"num_tokens"
.LASF50:
	.string	"subbeg"
.LASF44:
	.string	"startp"
.LASF381:
	.string	"before_gap_len"
.LASF272:
	.string	"to_hv_amg"
.LASF452:
	.string	"parse_start"
.LASF480:
	.string	"get_pstate_iv"
.LASF440:
	.string	"FIND_NAMES"
.LASF535:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF273:
	.string	"to_gv_amg"
.LASF43:
	.string	"regexp"
.LASF42:
	.string	"REGEXP"
.LASF40:
	.string	"sv_refcnt"
.LASF393:
	.string	"new_lim"
.LASF157:
	.string	"svt_len"
.LASF278:
	.string	"max_amg_code"
.LASF181:
	.string	"next_off"
.LASF465:
	.string	"name_char"
.LASF22:
	.string	"op_flags"
.LASF330:
	.string	"report_tags"
.LASF33:
	.string	"op_pmpermflags"
.LASF47:
	.string	"substrs"
.LASF194:
	.string	"SVt_PVAV"
.LASF106:
	.string	"xhv_array"
.LASF229:
	.string	"pow_ass_amg"
.LASF51:
	.string	"offsets"
.LASF377:
	.string	"high_surrogate"
.LASF521:
	.string	"PL_stack_sp"
.LASF148:
	.string	"xio_bottom_name"
.LASF427:
	.string	"parse_comment"
.LASF402:
	.string	"my_na"
.LASF510:
	.string	"file"
.LASF192:
	.string	"SVt_PVBM"
.LASF212:
	.string	"fallback_amg"
.LASF73:
	.string	"MAGIC"
.LASF288:
	.string	"E_START"
.LASF79:
	.string	"mg_flags"
.LASF93:
	.string	"XPVAV"
.LASF285:
	.string	"event_id"
.LASF310:
	.string	"pend_text"
.LASF473:
	.string	"end_text"
.LASF196:
	.string	"SVt_PVCV"
.LASF55:
	.string	"prelen"
.LASF350:
	.string	"ARG_ATTRSEQ"
.LASF514:
	.string	"literal_mode_elem"
.LASF19:
	.string	"op_targ"
.LASF149:
	.string	"xio_bottom_gv"
.LASF431:
	.string	"token_lim"
.LASF57:
	.string	"lastparen"
.LASF237:
	.string	"bor_ass_amg"
.LASF121:
	.string	"XPVCV"
.LASF351:
	.string	"ARG_TEXT"
.LASF492:
	.string	"XS_HTML__Parser_eof"
.LASF523:
	.string	"PL_curpad"
.LASF9:
	.string	"__ssize_t"
.LASF183:
	.string	"reg_data"
.LASF146:
	.string	"xio_fmt_name"
.LASF446:
	.string	"DECL_FAIL"
.LASF207:
	.string	"hent_val"
.LASF92:
	.string	"xnv_nv"
.LASF205:
	.string	"hent_next"
.LASF232:
	.string	"rshift_amg"
.LASF159:
	.string	"svt_free"
.LASF34:
	.string	"op_pmdynflags"
.LASF439:
	.string	"parse_marked_section"
.LASF275:
	.string	"iter_amg"
.LASF250:
	.string	"sgt_amg"
.LASF355:
	.string	"ARG_OFFSET"
.LASF198:
	.string	"SVt_PVFM"
.LASF366:
	.string	"ignore_case"
.LASF517:
	.string	"PL_errgv"
.LASF490:
	.string	"generator"
.LASF170:
	.string	"clone_params"
.LASF453:
	.string	"empty_tag"
.LASF331:
	.string	"ignore_tags"
.LASF391:
	.string	"token_lim_ptr"
.LASF239:
	.string	"bxor_ass_amg"
.LASF481:
	.string	"get_pstate_hv"
.LASF324:
	.string	"case_sensitive"
.LASF132:
	.string	"xcv_outside"
.LASF536:
	.string	"Parser.c"
.LASF203:
	.string	"PADLIST"
.LASF168:
	.string	"any_dxptr"
.LASF406:
	.string	"tagname"
.LASF527:
	.string	"PL_tmps_floor"
.LASF120:
	.string	"xgv_flags"
.LASF74:
	.string	"magic"
.LASF520:
	.string	"PL_sv_yes"
.LASF333:
	.string	"ignoring_element"
.LASF415:
	.string	"name"
.LASF195:
	.string	"SVt_PVHV"
.LASF509:
	.string	"boot_HTML__Parser"
.LASF184:
	.string	"SVt_NULL"
.LASF154:
	.string	"mgvtbl"
.LASF114:
	.string	"XPVGV"
.LASF471:
	.string	"inside_quote"
.LASF153:
	.string	"MGVTBL"
.LASF213:
	.string	"abs_amg"
.LASF199:
	.string	"SVt_PVIO"
.LASF442:
	.string	"FAIL"
.LASF189:
	.string	"SVt_PVIV"
.LASF53:
	.string	"refcnt"
.LASF298:
	.string	"p_handler"
.LASF243:
	.string	"ge_amg"
.LASF474:
	.string	"end_token"
.LASF321:
	.string	"xml_mode"
.LASF104:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF30:
	.string	"op_pmnext"
.LASF126:
	.string	"xcv_xsub"
.LASF23:
	.string	"op_private"
.LASF257:
	.string	"dec_amg"
.LASF162:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF418:
	.string	"flush_pending_text"
.LASF135:
	.string	"XPVIO"
.LASF87:
	.string	"XPVIV"
.LASF429:
	.string	"LOCATE_END"
.LASF101:
	.string	"xav_alloc"
.LASF447:
	.string	"decl_id"
.LASF385:
	.string	"has_hibit"
.LASF108:
	.string	"xhv_max"
.LASF54:
	.string	"minlen"
.LASF227:
	.string	"modulo_ass_amg"
.LASF491:
	.string	"count"
.LASF252:
	.string	"seq_amg"
.LASF100:
	.string	"xmg_stash"
.LASF534:
	.string	"vtbl_free_pstate"
.LASF46:
	.string	"regstclass"
.LASF111:
	.string	"xhv_eiter"
.LASF193:
	.string	"SVt_PVLV"
.LASF503:
	.string	"string"
.LASF182:
	.string	"reg_substr_data"
.LASF249:
	.string	"sle_amg"
.LASF499:
	.string	"eventname"
.LASF218:
	.string	"add_amg"
.LASF525:
	.string	"PL_stack_max"
.LASF293:
	.string	"E_END_DOCUMENT"
.LASF191:
	.string	"SVt_PVMG"
.LASF98:
	.string	"xof_off"
.LASF504:
	.string	"entities"
.LASF221:
	.string	"subtr_ass_amg"
.LASF392:
	.string	"tokens_on_heap"
.LASF118:
	.string	"xgv_namelen"
.LASF27:
	.string	"op_last"
.LASF450:
	.string	"com_beg"
.LASF176:
	.string	"__dirstream"
.LASF165:
	.string	"any_long"
.LASF526:
	.string	"PL_tmps_ix"
.LASF21:
	.string	"op_seq"
.LASF254:
	.string	"not_amg"
.LASF524:
	.string	"PL_stack_base"
.LASF190:
	.string	"SVt_PVNV"
.LASF24:
	.string	"PMOP"
.LASF364:
	.string	"sv_lower"
.LASF222:
	.string	"mult_amg"
.LASF58:
	.string	"lastcloseparen"
.LASF311:
	.string	"pend_text_is_cdata"
.LASF522:
	.string	"PL_op"
.LASF151:
	.string	"xio_type"
.LASF6:
	.string	"long int"
.LASF158:
	.string	"svt_clear"
.LASF369:
	.string	"s_offset"
.LASF138:
	.string	"xio_ofp"
.LASF119:
	.string	"xgv_stash"
.LASF389:
	.string	"tokens_grow"
.LASF444:
	.string	"name_end"
.LASF28:
	.string	"op_pmreplroot"
.LASF344:
	.string	"ARG_TOKENPOS"
.LASF130:
	.string	"xcv_depth"
.LASF69:
	.string	"gp_cvgen"
.LASF280:
	.string	"MS_INCLUDE"
.LASF306:
	.string	"literal_mode"
.LASF90:
	.string	"XPVNV"
.LASF110:
	.string	"xhv_riter"
.LASF368:
	.string	"t_offset"
.LASF497:
	.string	"XS_HTML__Parser_ignore_tags"
.LASF513:
	.string	"hctype"
.LASF247:
	.string	"scmp_amg"
.LASF519:
	.string	"PL_sv_no"
.LASF372:
	.string	"allow_unterminated"
.LASF502:
	.string	"XS_HTML__Entities__decode_entities"
.LASF29:
	.string	"op_pmreplstart"
.LASF292:
	.string	"E_START_DOCUMENT"
.LASF185:
	.string	"SVt_IV"
.LASF179:
	.string	"regnode"
.LASF17:
	.string	"op_sibling"
.LASF164:
	.string	"any_iv"
.LASF112:
	.string	"xhv_pmroot"
.LASF231:
	.string	"lshift_ass_amg"
.LASF475:
	.string	"parse"
.LASF3:
	.string	"long unsigned int"
.LASF25:
	.string	"pmop"
.LASF430:
	.string	"token_buf"
.LASF348:
	.string	"ARG_ATTR"
.LASF276:
	.string	"int_amg"
.LASF36:
	.string	"PerlInterpreter"
.LASF217:
	.string	"numer_amg"
.LASF226:
	.string	"modulo_amg"
.LASF263:
	.string	"sqrt_amg"
.LASF416:
	.string	"arg_name"
.LASF266:
	.string	"concat_amg"
.LASF299:
	.string	"argspec"
.LASF8:
	.string	"char"
.LASF308:
	.string	"no_dash_dash_comment_end"
.LASF383:
	.string	"after_gap_len"
.LASF144:
	.string	"xio_top_name"
.LASF317:
	.string	"marked_sections"
.LASF82:
	.string	"mg_len"
.LASF201:
	.string	"xiou_dirp"
.LASF117:
	.string	"xgv_name"
.LASF225:
	.string	"div_ass_amg"
.LASF436:
	.string	"stack_idx"
.LASF287:
	.string	"E_COMMENT"
.LASF357:
	.string	"ARG_LENGTH"
.LASF140:
	.string	"xio_lines"
.LASF426:
	.string	"quote"
.LASF86:
	.string	"xpv_len"
.LASF482:
	.string	"free_pstate"
.LASF419:
	.string	"old_unbroken_text"
.LASF20:
	.string	"op_type"
.LASF505:
	.string	"entities_hv"
.LASF15:
	.string	"STRLEN"
.LASF400:
	.string	"self"
.LASF529:
	.string	"PL_markstack_max"
.LASF459:
	.string	"attr_name_beg"
.LASF186:
	.string	"SVt_NV"
.LASF210:
	.string	"hek_key"
.LASF277:
	.string	"DESTROY_amg"
.LASF129:
	.string	"xcv_file"
.LASF384:
	.string	"after_gap"
.LASF173:
	.string	"proto_perl"
.LASF291:
	.string	"E_PROCESS"
.LASF323:
	.string	"attr_encoded"
.LASF320:
	.string	"strict_end"
.LASF518:
	.string	"PL_sv_undef"
.LASF335:
	.string	"entity2char"
.LASF425:
	.string	"skip_until_gt"
.LASF318:
	.string	"strict_comment"
.LASF411:
	.string	"attrval"
.LASF258:
	.string	"atan2_amg"
.LASF204:
	.string	"PADOFFSET"
.LASF354:
	.string	"ARG_SKIPPED_TEXT"
.LASF32:
	.string	"op_pmflags"
.LASF445:
	.string	"parse_decl"
.LASF37:
	.string	"interpreter"
.LASF342:
	.string	"ARG_SELF"
.LASF139:
	.string	"xio_dirpu"
.LASF532:
	.string	"PL_hexdigit"
.LASF251:
	.string	"sge_amg"
.LASF407:
	.string	"push_arg"
.LASF315:
	.string	"skipped_text"
.LASF26:
	.string	"op_first"
.LASF14:
	.string	"double"
.LASF83:
	.string	"xrv_rv"
.LASF97:
	.string	"xav_max"
.LASF10:
	.string	"ssize_t"
.LASF18:
	.string	"op_ppaddr"
.LASF255:
	.string	"compl_amg"
.LASF163:
	.string	"any_i32"
.LASF420:
	.string	"old_pend_text"
.LASF329:
	.string	"argspec_entity_decode"
.LASF256:
	.string	"inc_amg"
.LASF269:
	.string	"neg_amg"
.LASF488:
	.string	"XS_HTML__Parser__alloc_pstate"
.LASF356:
	.string	"ARG_OFFSET_END"
.LASF325:
	.string	"closing_plaintext"
.LASF188:
	.string	"SVt_PV"
.LASF166:
	.string	"any_bool"
.LASF134:
	.string	"xcv_outside_seq"
.LASF370:
	.string	"e_offset"
.LASF380:
	.string	"repl_allocated"
.LASF49:
	.string	"data"
.LASF95:
	.string	"xav_array"
.LASF187:
	.string	"SVt_RV"
.LASF516:
	.string	"PL_dowarn"
.LASF464:
	.string	"name_first"
.LASF169:
	.string	"CLONE_PARAMS"
.LASF449:
	.string	"str_beg"
.LASF107:
	.string	"xhv_fill"
.LASF367:
	.string	"grow"
.LASF358:
	.string	"ARG_LINE"
.LASF89:
	.string	"xiv_iv"
.LASF498:
	.string	"XS_HTML__Parser_handler"
.LASF371:
	.string	"decode_entities"
.LASF507:
	.string	"XS_HTML__Entities_UNICODE_SUPPORT"
.LASF230:
	.string	"lshift_amg"
.LASF340:
	.string	"literal_tag"
.LASF264:
	.string	"repeat_amg"
.LASF223:
	.string	"mult_ass_amg"
.LASF209:
	.string	"hek_len"
.LASF477:
	.string	"empty"
.LASF316:
	.string	"ms_stack"
.LASF458:
	.string	"END_OF_LITERAL_SEARCH"
.LASF12:
	.string	"long long unsigned int"
.LASF302:
	.string	"offset"
.LASF437:
	.string	"tokens_len"
.LASF240:
	.string	"lt_amg"
.LASF345:
	.string	"ARG_TOKEN0"
.LASF341:
	.string	"argcode"
.LASF305:
	.string	"parsing"
.LASF297:
	.string	"event_id_t"
.LASF443:
	.string	"name_start"
.LASF343:
	.string	"ARG_TOKENS"
.LASF468:
	.string	"new_pos"
.LASF470:
	.string	"skip_quoted_end"
.LASF161:
	.string	"svt_dup"
.LASF339:
	.string	"token_pos_t"
.LASF145:
	.string	"xio_top_gv"
.LASF224:
	.string	"div_amg"
.LASF322:
	.string	"unbroken_text"
.LASF401:
	.string	"array"
.LASF489:
	.string	"XS_HTML__Parser_parse"
.LASF220:
	.string	"subtr_amg"
.LASF466:
	.string	"parse_process"
.LASF35:
	.string	"op_pmstash"
.LASF155:
	.string	"svt_get"
.LASF64:
	.string	"gp_form"
.LASF284:
	.string	"marked_section_t"
.LASF413:
	.string	"argspec_compile"
.LASF410:
	.string	"attrname"
.LASF349:
	.string	"ARG_ATTRARR"
.LASF128:
	.string	"xcv_gv"
.LASF286:
	.string	"E_DECLARATION"
.LASF495:
	.string	"RETVAL"
.LASF13:
	.string	"long long int"
.LASF174:
	.string	"line_t"
.LASF337:
	.string	"hctype_t"
.LASF113:
	.string	"xhv_name"
.LASF160:
	.string	"svt_copy"
.LASF365:
	.string	"strnEQx"
.LASF379:
	.string	"ent_name"
.LASF404:
	.string	"INIT_PEND_TEXT"
.LASF434:
	.string	"marked_section_update"
.LASF103:
	.string	"xav_flags"
.LASF511:
	.string	"local_patches"
.LASF338:
	.string	"token_pos"
.LASF424:
	.string	"old_column"
.LASF508:
	.string	"targ"
.LASF359:
	.string	"ARG_COLUMN"
.LASF99:
	.string	"xmg_magic"
.LASF80:
	.string	"mg_obj"
.LASF167:
	.string	"any_dptr"
.LASF270:
	.string	"to_sv_amg"
.LASF94:
	.string	"xpvav"
.LASF31:
	.string	"op_pmregexp"
.LASF127:
	.string	"xcv_xsubany"
.LASF143:
	.string	"xio_lines_left"
.LASF533:
	.string	"argname"
.LASF346:
	.string	"ARG_TAGNAME"
.LASF65:
	.string	"gp_av"
.LASF394:
	.string	"new_tokens"
.LASF428:
	.string	"FIND_DASH_DASH"
.LASF228:
	.string	"pow_amg"
.LASF531:
	.string	"PL_Xpv"
.LASF133:
	.string	"xcv_flags"
.LASF412:
	.string	"method"
.LASF2:
	.string	"unsigned int"
.LASF122:
	.string	"xpvcv"
.LASF405:
	.string	"dummy"
.LASF177:
	.string	"_PerlIO"
.LASF236:
	.string	"bor_amg"
.LASF253:
	.string	"sne_amg"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"gp_cv"
.LASF378:
	.string	"prev"
.LASF219:
	.string	"add_ass_amg"
.LASF469:
	.string	"DONE"
.LASF409:
	.string	"e_type"
.LASF455:
	.string	"tag_name_char"
.LASF260:
	.string	"sin_amg"
.LASF175:
	.string	"PerlIOl"
.LASF172:
	.string	"flags"
.LASF300:
	.string	"p_state"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
