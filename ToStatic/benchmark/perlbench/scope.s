	.file	"scope.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 scope.c
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
	.globl	Perl_stack_grow
	.type	Perl_stack_grow, @function
Perl_stack_grow:
.LFB2:
	.file 1 "scope.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# p, p
	movl	%edx, -20(%rbp)	# n, n
	.loc 1 61 0
	movq	-8(%rbp), %rax	# sp, tmp72
	movq	%rax, PL_stack_sp(%rip)	# tmp72, PL_stack_sp
	.loc 1 63 0
	movq	-16(%rbp), %rdx	# p, p.0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1
	subq	%rax, %rdx	# PL_stack_base.2, D.13121
	movq	%rdx, %rax	# D.13121, D.13121
	sarq	$3, %rax	#, tmp73
	movl	%eax, %edx	# D.13121, D.13122
	movl	-20(%rbp), %eax	# n, n.3
	addl	%edx, %eax	# D.13122, D.13122
	subl	$-128, %eax	#, D.13122
	movl	%eax, %edx	# D.13122, D.13123
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.4
	movl	%edx, %esi	# D.13123,
	movq	%rax, %rdi	# PL_curstack.4,
	call	Perl_av_extend	#
	.loc 1 67 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, D.13124
	.loc 1 68 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_stack_grow, .-Perl_stack_grow
	.globl	Perl_new_stackinfo
	.type	Perl_new_stackinfo, @function
Perl_new_stackinfo:
.LFB3:
	.loc 1 78 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# stitems, stitems
	movl	%esi, -24(%rbp)	# cxitems, cxitems
	.loc 1 80 0
	movl	$56, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -8(%rbp)	# tmp82, si
	.loc 1 81 0
	call	Perl_newAV	#
	movq	-8(%rbp), %rdx	# si, tmp83
	movq	%rax, (%rdx)	# D.13125, si_2->si_stack
	.loc 1 82 0
	movq	-8(%rbp), %rax	# si, tmp84
	movq	(%rax), %rax	# si_2->si_stack, D.13125
	movq	(%rax), %rax	# _4->sv_any, D.13126
	movq	-8(%rbp), %rdx	# si, tmp85
	movq	(%rdx), %rdx	# si_2->si_stack, D.13125
	movq	(%rdx), %rdx	# _6->sv_any, D.13126
	movzbl	72(%rdx), %edx	# _7->xav_flags, D.13127
	andl	$-2, %edx	#, D.13127
	movb	%dl, 72(%rax)	# D.13127, _5->xav_flags
	.loc 1 83 0
	cmpl	$0, -20(%rbp)	#, stitems
	jle	.L4	#,
	.loc 1 83 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# stitems, tmp86
	subl	$1, %eax	#, iftmp.5
	jmp	.L5	#
.L4:
	.loc 1 83 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L5:
	.loc 1 83 0 discriminator 3
	movq	-8(%rbp), %rdx	# si, tmp87
	movq	(%rdx), %rdx	# si_2->si_stack, D.13125
	movl	%eax, %esi	# iftmp.5,
	movq	%rdx, %rdi	# D.13125,
	call	Perl_av_extend	#
	.loc 1 84 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp88
	movq	(%rax), %rax	# si_2->si_stack, D.13125
	movq	(%rax), %rax	# _14->sv_any, D.13126
	movq	56(%rax), %rax	# _15->xav_alloc, D.13128
	movq	$PL_sv_undef, (%rax)	#, *_16
	.loc 1 85 0 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp89
	movq	(%rax), %rax	# si_2->si_stack, D.13125
	movq	(%rax), %rax	# _17->sv_any, D.13126
	movq	$0, 8(%rax)	#, _18->xav_fill
	.loc 1 86 0 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp90
	movq	$0, 32(%rax)	#, si_2->si_prev
	.loc 1 87 0 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp91
	movq	$0, 40(%rax)	#, si_2->si_next
	.loc 1 88 0 discriminator 3
	movl	-24(%rbp), %eax	# cxitems, tmp92
	leal	-1(%rax), %edx	#, D.13129
	movq	-8(%rbp), %rax	# si, tmp93
	movl	%edx, 20(%rax)	# D.13129, si_2->si_cxmax
	.loc 1 89 0 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp94
	movl	$-1, 16(%rax)	#, si_2->si_cxix
	.loc 1 90 0 discriminator 3
	movq	-8(%rbp), %rax	# si, tmp95
	movl	$0, 24(%rax)	#, si_2->si_type
	.loc 1 91 0 discriminator 3
	movl	-24(%rbp), %eax	# cxitems, tmp96
	movslq	%eax, %rdx	# tmp96, D.13130
	movq	%rdx, %rax	# D.13130, tmp97
	salq	$3, %rax	#, tmp97
	addq	%rdx, %rax	# D.13130, tmp97
	salq	$4, %rax	#, tmp98
	movq	%rax, %rdi	# D.13130,
	call	Perl_safesysmalloc	#
	movq	-8(%rbp), %rdx	# si, tmp99
	movq	%rax, 8(%rdx)	# D.13131, si_2->si_cxstack
	.loc 1 94 0 discriminator 3
	movl	-24(%rbp), %eax	# cxitems, tmp100
	movslq	%eax, %rdx	# tmp100, D.13130
	movq	%rdx, %rax	# D.13130, tmp101
	salq	$3, %rax	#, tmp101
	addq	%rdx, %rax	# D.13130, tmp101
	salq	$4, %rax	#, tmp102
	movq	%rax, %rdx	# tmp101, D.13130
	movq	-8(%rbp), %rax	# si, tmp103
	movq	8(%rax), %rax	# si_2->si_cxstack, D.13132
	movl	$171, %esi	#,
	movq	%rax, %rdi	# D.13132,
	call	memset	#
	.loc 1 95 0 discriminator 3
	movq	-8(%rbp), %rax	# si, D.13133
	.loc 1 96 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_new_stackinfo, .-Perl_new_stackinfo
	.globl	Perl_cxinc
	.type	Perl_cxinc, @function
Perl_cxinc:
.LFB4:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 101 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.6
	movl	20(%rax), %eax	# PL_curstackinfo.6_1->si_cxmax, D.13134
	cltq
	movq	%rax, -24(%rbp)	# tmp91, old_max
	.loc 1 102 0
	movq	PL_curstackinfo(%rip), %rcx	# PL_curstackinfo, PL_curstackinfo.7
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.8
	movl	20(%rax), %edx	# PL_curstackinfo.8_5->si_cxmax, D.13134
	movl	%edx, %eax	# D.13134, tmp92
	addl	%eax, %eax	# tmp92
	addl	%edx, %eax	# D.13134, D.13134
	movl	%eax, %edx	# D.13134, tmp93
	shrl	$31, %edx	#, tmp93
	addl	%edx, %eax	# tmp93, tmp94
	sarl	%eax	# tmp95
	movl	%eax, 20(%rcx)	# D.13134, PL_curstackinfo.7_4->si_cxmax
	.loc 1 103 0
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.9
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.10
	movl	20(%rax), %eax	# PL_curstackinfo.10_10->si_cxmax, D.13134
	addl	$1, %eax	#, D.13134
	movslq	%eax, %rdx	# D.13134, D.13135
	movq	%rdx, %rax	# D.13135, tmp96
	salq	$3, %rax	#, tmp96
	addq	%rdx, %rax	# D.13135, tmp96
	salq	$4, %rax	#, tmp97
	movq	%rax, %rdx	# tmp96, D.13135
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.11
	movq	8(%rax), %rax	# PL_curstackinfo.11_15->si_cxstack, D.13136
	movq	%rdx, %rsi	# D.13135,
	movq	%rax, %rdi	# D.13136,
	call	Perl_safesysrealloc	#
	movq	%rax, 8(%rbx)	# D.13137, PL_curstackinfo.9_9->si_cxstack
	.loc 1 106 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.12
	movl	20(%rax), %eax	# PL_curstackinfo.12_18->si_cxmax, D.13134
	cltq
	subq	-24(%rbp), %rax	# old_max, D.13138
	movq	%rax, %rdx	# D.13138, D.13135
	movq	%rdx, %rax	# D.13135, tmp98
	salq	$3, %rax	#, tmp98
	addq	%rdx, %rax	# D.13135, tmp98
	salq	$4, %rax	#, tmp99
	movq	%rax, %rcx	# tmp98, D.13135
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.13
	movq	8(%rax), %rsi	# PL_curstackinfo.13_24->si_cxstack, D.13136
	movq	-24(%rbp), %rax	# old_max, old_max.14
	leaq	1(%rax), %rdx	#, D.13139
	movq	%rdx, %rax	# D.13139, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# D.13139, tmp100
	salq	$4, %rax	#, tmp101
	addq	%rsi, %rax	# D.13136, D.13136
	movq	%rcx, %rdx	# D.13135,
	movl	$171, %esi	#,
	movq	%rax, %rdi	# D.13136,
	call	memset	#
	.loc 1 107 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.15
	movl	16(%rax), %eax	# PL_curstackinfo.15_30->si_cxix, D.13134
	addl	$1, %eax	#, D.13140
	.loc 1 108 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_cxinc, .-Perl_cxinc
	.globl	Perl_push_return
	.type	Perl_push_return, @function
Perl_push_return:
.LFB5:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# retop, retop
	.loc 1 113 0
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.16
	movl	PL_retstack_max(%rip), %eax	# PL_retstack_max, PL_retstack_max.17
	cmpl	%eax, %edx	# PL_retstack_max.17, PL_retstack_ix.16
	jne	.L10	#,
	.loc 1 114 0
	movl	PL_retstack_max(%rip), %edx	# PL_retstack_max, PL_retstack_max.18
	movl	%edx, %eax	# PL_retstack_max.18, tmp76
	addl	%eax, %eax	# tmp76
	addl	%edx, %eax	# PL_retstack_max.18, D.13141
	movl	%eax, %edx	# D.13141, tmp77
	shrl	$31, %edx	#, tmp77
	addl	%edx, %eax	# tmp77, tmp78
	sarl	%eax	# tmp79
	movl	%eax, PL_retstack_max(%rip)	# PL_retstack_max.19, PL_retstack_max
	.loc 1 115 0
	movl	PL_retstack_max(%rip), %eax	# PL_retstack_max, PL_retstack_max.20
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13142
	movq	PL_retstack(%rip), %rax	# PL_retstack, PL_retstack.21
	movq	%rdx, %rsi	# D.13142,
	movq	%rax, %rdi	# PL_retstack.21,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_retstack(%rip)	# PL_retstack.22, PL_retstack
.L10:
	.loc 1 117 0
	movq	PL_retstack(%rip), %rcx	# PL_retstack, PL_retstack.23
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.24
	leal	1(%rax), %edx	#, PL_retstack_ix.26
	movl	%edx, PL_retstack_ix(%rip)	# PL_retstack_ix.26, PL_retstack_ix
	cltq
	salq	$3, %rax	#, D.13142
	leaq	(%rcx,%rax), %rdx	#, D.13143
	movq	-8(%rbp), %rax	# retop, tmp80
	movq	%rax, (%rdx)	# tmp80, *_17
	.loc 1 118 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_push_return, .-Perl_push_return
	.globl	Perl_pop_return
	.type	Perl_pop_return, @function
Perl_pop_return:
.LFB6:
	.loc 1 122 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 123 0
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.27
	testl	%eax, %eax	# PL_retstack_ix.27
	jle	.L12	#,
	.loc 1 124 0
	movq	PL_retstack(%rip), %rax	# PL_retstack, PL_retstack.28
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.29
	subl	$1, %edx	#, PL_retstack_ix.30
	movl	%edx, PL_retstack_ix(%rip)	# PL_retstack_ix.30, PL_retstack_ix
	movl	PL_retstack_ix(%rip), %edx	# PL_retstack_ix, PL_retstack_ix.31
	movslq	%edx, %rdx	# PL_retstack_ix.31, D.13145
	salq	$3, %rdx	#, D.13145
	addq	%rdx, %rax	# D.13145, D.13146
	movq	(%rax), %rax	# *_9, D.13144
	jmp	.L13	#
.L12:
	.loc 1 126 0
	movl	$0, %eax	#, D.13144
.L13:
	.loc 1 127 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_pop_return, .-Perl_pop_return
	.globl	Perl_push_scope
	.type	Perl_push_scope, @function
Perl_push_scope:
.LFB7:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 132 0
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.32
	movl	PL_scopestack_max(%rip), %eax	# PL_scopestack_max, PL_scopestack_max.33
	cmpl	%eax, %edx	# PL_scopestack_max.33, PL_scopestack_ix.32
	jne	.L15	#,
	.loc 1 133 0
	movl	PL_scopestack_max(%rip), %edx	# PL_scopestack_max, PL_scopestack_max.34
	movl	%edx, %eax	# PL_scopestack_max.34, tmp77
	addl	%eax, %eax	# tmp77
	addl	%edx, %eax	# PL_scopestack_max.34, D.13147
	movl	%eax, %edx	# D.13147, tmp78
	shrl	$31, %edx	#, tmp78
	addl	%edx, %eax	# tmp78, tmp79
	sarl	%eax	# tmp80
	movl	%eax, PL_scopestack_max(%rip)	# PL_scopestack_max.35, PL_scopestack_max
	.loc 1 134 0
	movl	PL_scopestack_max(%rip), %eax	# PL_scopestack_max, PL_scopestack_max.36
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13148
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.37
	movq	%rdx, %rsi	# D.13148,
	movq	%rax, %rdi	# PL_scopestack.37,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_scopestack(%rip)	# PL_scopestack.38, PL_scopestack
.L15:
	.loc 1 136 0
	movq	PL_scopestack(%rip), %rcx	# PL_scopestack, PL_scopestack.39
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.40
	leal	1(%rax), %edx	#, PL_scopestack_ix.42
	movl	%edx, PL_scopestack_ix(%rip)	# PL_scopestack_ix.42, PL_scopestack_ix
	cltq
	salq	$2, %rax	#, D.13148
	leaq	(%rcx,%rax), %rdx	#, D.13149
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.43
	movl	%eax, (%rdx)	# PL_savestack_ix.43, *_17
	.loc 1 138 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_push_scope, .-Perl_push_scope
	.globl	Perl_pop_scope
	.type	Perl_pop_scope, @function
Perl_pop_scope:
.LFB8:
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 143 0
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.44
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.45
	subl	$1, %edx	#, PL_scopestack_ix.46
	movl	%edx, PL_scopestack_ix(%rip)	# PL_scopestack_ix.46, PL_scopestack_ix
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.47
	movslq	%edx, %rdx	# PL_scopestack_ix.47, D.13150
	salq	$2, %rdx	#, D.13150
	addq	%rdx, %rax	# D.13150, D.13151
	movl	(%rax), %eax	# *_7, tmp67
	movl	%eax, -4(%rbp)	# tmp67, oldsave
	.loc 1 144 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.48
	cmpl	-4(%rbp), %eax	# oldsave, PL_savestack_ix.48
	jle	.L16	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# oldsave, tmp68
	movl	%eax, %edi	# tmp68,
	call	Perl_leave_scope	#
.L16:
	.loc 1 145 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_pop_scope, .-Perl_pop_scope
	.globl	Perl_markstack_grow
	.type	Perl_markstack_grow, @function
Perl_markstack_grow:
.LFB9:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 150 0
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.49
	movq	%rax, %rdx	# PL_markstack_max.49, PL_markstack_max.50
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.51
	subq	%rax, %rdx	# PL_markstack.52, D.13152
	movq	%rdx, %rax	# D.13152, D.13152
	sarq	$2, %rax	#, tmp78
	movl	%eax, -8(%rbp)	# D.13152, oldmax
	.loc 1 151 0
	movl	-8(%rbp), %edx	# oldmax, tmp79
	movl	%edx, %eax	# tmp79, tmp80
	addl	%eax, %eax	# tmp80
	addl	%edx, %eax	# tmp79, D.13153
	movl	%eax, %edx	# D.13153, tmp81
	shrl	$31, %edx	#, tmp81
	addl	%edx, %eax	# tmp81, tmp82
	sarl	%eax	# tmp83
	movl	%eax, -4(%rbp)	# tmp83, newmax
	.loc 1 153 0
	movl	-4(%rbp), %eax	# newmax, tmp84
	cltq
	leaq	0(,%rax,4), %rdx	#, D.13154
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.53
	movq	%rdx, %rsi	# D.13154,
	movq	%rax, %rdi	# PL_markstack.53,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_markstack(%rip)	# PL_markstack.54, PL_markstack
	.loc 1 154 0
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.55
	movl	-8(%rbp), %edx	# oldmax, tmp85
	movslq	%edx, %rdx	# tmp85, D.13154
	salq	$2, %rdx	#, D.13154
	addq	%rdx, %rax	# D.13154, PL_markstack_ptr.56
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.56, PL_markstack_ptr
	.loc 1 155 0
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.57
	movl	-4(%rbp), %edx	# newmax, tmp86
	movslq	%edx, %rdx	# tmp86, D.13154
	salq	$2, %rdx	#, D.13154
	addq	%rdx, %rax	# D.13154, PL_markstack_max.58
	movq	%rax, PL_markstack_max(%rip)	# PL_markstack_max.58, PL_markstack_max
	.loc 1 156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_markstack_grow, .-Perl_markstack_grow
	.globl	Perl_savestack_grow
	.type	Perl_savestack_grow, @function
Perl_savestack_grow:
.LFB10:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 161 0
	movl	PL_savestack_max(%rip), %edx	# PL_savestack_max, PL_savestack_max.59
	movl	%edx, %eax	# PL_savestack_max.59, tmp68
	addl	%eax, %eax	# tmp68
	addl	%edx, %eax	# PL_savestack_max.59, D.13155
	movl	%eax, %edx	# D.13155, tmp69
	shrl	$31, %edx	#, tmp69
	addl	%edx, %eax	# tmp69, tmp70
	sarl	%eax	# tmp71
	addl	$4, %eax	#, PL_savestack_max.60
	movl	%eax, PL_savestack_max(%rip)	# PL_savestack_max.60, PL_savestack_max
	.loc 1 162 0
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.61
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13156
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.62
	movq	%rdx, %rsi	# D.13156,
	movq	%rax, %rdi	# PL_savestack.62,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_savestack(%rip)	# PL_savestack.63, PL_savestack
	.loc 1 163 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_savestack_grow, .-Perl_savestack_grow
	.globl	Perl_savestack_grow_cnt
	.type	Perl_savestack_grow_cnt, @function
Perl_savestack_grow_cnt:
.LFB11:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# need, need
	.loc 1 168 0
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.64
	movl	-4(%rbp), %eax	# need, tmp66
	addl	%edx, %eax	# PL_savestack_ix.64, PL_savestack_max.65
	movl	%eax, PL_savestack_max(%rip)	# PL_savestack_max.65, PL_savestack_max
	.loc 1 169 0
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.66
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13157
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.67
	movq	%rdx, %rsi	# D.13157,
	movq	%rax, %rdi	# PL_savestack.67,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_savestack(%rip)	# PL_savestack.68, PL_savestack
	.loc 1 170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_savestack_grow_cnt, .-Perl_savestack_grow_cnt
	.globl	Perl_tmps_grow
	.type	Perl_tmps_grow, @function
Perl_tmps_grow:
.LFB12:
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 178 0
	cmpl	$127, -4(%rbp)	#, n
	jg	.L22	#,
	.loc 1 179 0
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.70
	cmpl	$511, %eax	#, PL_tmps_max.70
	jg	.L23	#,
	.loc 1 179 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.69
	jmp	.L24	#
.L23:
	.loc 1 179 0 discriminator 2
	movl	$512, %eax	#, iftmp.69
.L24:
	.loc 1 179 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.69, n
.L22:
	.loc 1 181 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.71
	movl	-4(%rbp), %eax	# n, tmp69
	addl	%edx, %eax	# PL_tmps_ix.71, D.13158
	addl	$1, %eax	#, PL_tmps_max.72
	movl	%eax, PL_tmps_max(%rip)	# PL_tmps_max.72, PL_tmps_max
	.loc 1 182 0
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13159
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.74
	movq	%rdx, %rsi	# D.13159,
	movq	%rax, %rdi	# PL_tmps_stack.74,
	call	Perl_safesysrealloc	#
	movq	%rax, PL_tmps_stack(%rip)	# PL_tmps_stack.75, PL_tmps_stack
	.loc 1 183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_tmps_grow, .-Perl_tmps_grow
	.globl	Perl_free_tmps
	.type	Perl_free_tmps, @function
Perl_free_tmps:
.LFB13:
	.loc 1 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 190 0
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, tmp74
	movl	%eax, -12(%rbp)	# tmp74, myfloor
	.loc 1 191 0
	jmp	.L26	#
.L27:
.LBB2:
	.loc 1 192 0
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.76
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.77
	movslq	%edx, %rdx	# PL_tmps_ix.77, D.13160
	salq	$3, %rdx	#, D.13160
	addq	%rdx, %rax	# D.13160, D.13161
	movq	(%rax), %rax	# *_7, tmp75
	movq	%rax, -8(%rbp)	# tmp75, sv
	.loc 1 193 0
	movq	PL_tmps_stack(%rip), %rcx	# PL_tmps_stack, PL_tmps_stack.78
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.79
	leal	-1(%rax), %edx	#, PL_tmps_ix.81
	movl	%edx, PL_tmps_ix(%rip)	# PL_tmps_ix.81, PL_tmps_ix
	cltq
	salq	$3, %rax	#, D.13160
	addq	%rcx, %rax	# PL_tmps_stack.78, D.13161
	movq	$0, (%rax)	#, *_15
	.loc 1 194 0
	cmpq	$0, -8(%rbp)	#, sv
	je	.L26	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L26	#,
	.loc 1 195 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp76
	movl	12(%rax), %eax	# sv_8->sv_flags, D.13162
	andb	$247, %ah	#, D.13162
	movl	%eax, %edx	# D.13162, D.13162
	movq	-8(%rbp), %rax	# sv, tmp77
	movl	%edx, 12(%rax)	# D.13162, sv_8->sv_flags
	.loc 1 196 0
	movq	-8(%rbp), %rax	# sv, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_free	#
.L26:
.LBE2:
	.loc 1 191 0 discriminator 1
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.82
	cmpl	-12(%rbp), %eax	# myfloor, PL_tmps_ix.82
	jg	.L27	#,
	.loc 1 199 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_free_tmps, .-Perl_free_tmps
	.type	S_save_scalar_at, @function
S_save_scalar_at:
.LFB14:
	.loc 1 203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# sptr, sptr
	.loc 1 205 0
	movq	-56(%rbp), %rax	# sptr, tmp90
	movq	(%rax), %rax	# *sptr_1(D), tmp91
	movq	%rax, -32(%rbp)	# tmp91, osv
	.loc 1 207 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	-56(%rbp), %rdx	# sptr, tmp92
	movq	%rax, (%rdx)	# D.13163, *sptr_1(D)
	movq	-56(%rbp), %rax	# sptr, tmp93
	movq	(%rax), %rbx	# *sptr_1(D), sv
	.loc 1 208 0
	movq	-32(%rbp), %rax	# osv, tmp94
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	movzbl	%al, %eax	# D.13164, D.13164
	cmpl	$6, %eax	#, D.13164
	jbe	.L29	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# osv, tmp95
	movq	(%rax), %rax	# osv_2->sv_any, D.13165
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_7].xmg_magic, D.13166
	testq	%rax, %rax	# D.13166
	je	.L29	#,
	movq	-32(%rbp), %rax	# osv, tmp96
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	movzbl	%al, %eax	# D.13164, D.13164
	cmpl	$13, %eax	#, D.13164
	je	.L29	#,
	.loc 1 209 0 is_stmt 1
	movq	-32(%rbp), %rax	# osv, tmp97
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	movzbl	%al, %eax	# D.13164, D.13164
	movl	%eax, %esi	# D.13164,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_upgrade	#
	.loc 1 210 0
	movq	-32(%rbp), %rax	# osv, tmp98
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	andl	$8192, %eax	#, D.13164
	testl	%eax, %eax	# D.13164
	je	.L30	#,
.LBB3:
	.loc 1 212 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, tmp99
	movb	%al, -33(%rbp)	# tmp99, oldtainted
	.loc 1 213 0
	movq	-32(%rbp), %rax	# osv, tmp100
	movq	%rax, %rdi	# tmp100,
	call	Perl_mg_get	#
	.loc 1 214 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.83
	testb	%al, %al	# PL_tainting.83
	je	.L31	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.84
	testb	%al, %al	# PL_tainted.84
	je	.L31	#,
	movq	-32(%rbp), %rax	# osv, tmp101
	movl	$116, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	Perl_mg_find	#
	movq	%rax, -24(%rbp)	# tmp102, mg
	cmpq	$0, -24(%rbp)	#, mg
	je	.L31	#,
	.loc 1 216 0 is_stmt 1
	movq	-24(%rbp), %rax	# mg, tmp103
	addq	$24, %rax	#, D.13167
	movq	%rax, %rdi	# D.13167,
	call	Perl_save_sptr	#
	.loc 1 217 0
	movq	-24(%rbp), %rax	# mg, tmp104
	movq	-32(%rbp), %rdx	# osv, tmp105
	movq	%rdx, 24(%rax)	# tmp105, mg_18->mg_obj
.L31:
	.loc 1 219 0
	movq	-32(%rbp), %rax	# osv, tmp106
	movl	12(%rax), %edx	# osv_2->sv_flags, D.13164
	movq	-32(%rbp), %rax	# osv, tmp107
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	andl	$100663296, %eax	#, D.13164
	.loc 1 220 0
	shrl	$8, %eax	#, D.13164
	.loc 1 219 0
	orl	%eax, %edx	# D.13164, D.13164
	movq	-32(%rbp), %rax	# osv, tmp108
	movl	%edx, 12(%rax)	# D.13164, osv_2->sv_flags
	.loc 1 221 0
	movzbl	-33(%rbp), %eax	# oldtainted, tmp109
	movb	%al, PL_tainted(%rip)	# tmp109, PL_tainted
.L30:
.LBE3:
	.loc 1 223 0
	movq	(%rbx), %rax	# sv_4->sv_any, D.13165
	movq	-32(%rbp), %rdx	# osv, tmp110
	movq	(%rdx), %rdx	# osv_2->sv_any, D.13165
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_26].xmg_magic, D.13166
	movq	%rdx, 40(%rax)	# D.13166, MEM[(struct XPVMG *)_25].xmg_magic
	.loc 1 224 0
	movl	12(%rbx), %edx	# sv_4->sv_flags, D.13164
	movq	-32(%rbp), %rax	# osv, tmp111
	movl	12(%rax), %eax	# osv_2->sv_flags, D.13164
	andl	$57344, %eax	#, D.13164
	orl	%edx, %eax	# D.13164, D.13164
	movl	%eax, 12(%rbx)	# D.13164, sv_4->sv_flags
	.loc 1 228 0
	movl	$1, PL_localizing(%rip)	#, PL_localizing
	.loc 1 229 0
	movl	12(%rbx), %eax	# sv_4->sv_flags, D.13164
	andl	$16384, %eax	#, D.13164
	testl	%eax, %eax	# D.13164
	je	.L32	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_set	#
.L32:
	.loc 1 230 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
.L29:
	.loc 1 232 0
	movq	%rbx, %rax	# sv, D.13163
	.loc 1 233 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	S_save_scalar_at, .-S_save_scalar_at
	.globl	Perl_save_scalar
	.type	Perl_save_scalar, @function
Perl_save_scalar:
.LFB15:
	.loc 1 237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gv, gv
	.loc 1 238 0
	movq	-24(%rbp), %rax	# gv, tmp104
	movq	(%rax), %rax	# gv_1(D)->sv_any, D.13168
	movq	56(%rax), %rax	# _2->xgv_gp, D.13169
	movq	%rax, -8(%rbp)	# D.13169, sptr
	.loc 1 239 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.85
	leal	3(%rax), %edx	#, D.13170
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.86
	cmpl	%eax, %edx	# PL_savestack_max.86, D.13170
	jle	.L35	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L35:
	.loc 1 240 0 is_stmt 1
	movq	-24(%rbp), %rax	# gv, tmp105
	movq	%rax, PL_Sv(%rip)	# tmp105, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.88
	testq	%rax, %rax	# PL_Sv.88
	je	.L37	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.89
	movl	8(%rax), %edx	# PL_Sv.89_9->sv_refcnt, D.13171
	addl	$1, %edx	#, D.13171
	movl	%edx, 8(%rax)	# D.13171, PL_Sv.89_9->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.89_9->sv_refcnt, D.13171
	testl	%eax, %eax	# D.13171
	je	.L37	#,
	.loc 1 240 0
	nop
.L37:
	.loc 1 240 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.90
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.91
	leal	1(%rax), %edx	#, PL_savestack_ix.93
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.93, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13172
	leaq	(%rcx,%rax), %rdx	#, D.13173
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.94
	movq	%rax, (%rdx)	# PL_Sv.94, _21->any_ptr
	.loc 1 241 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# sptr, tmp106
	movq	(%rax), %rax	# *sptr_4, PL_Sv.95
	movq	%rax, PL_Sv(%rip)	# PL_Sv.95, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.97
	testq	%rax, %rax	# PL_Sv.97
	je	.L39	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.98
	movl	8(%rax), %edx	# PL_Sv.98_25->sv_refcnt, D.13171
	addl	$1, %edx	#, D.13171
	movl	%edx, 8(%rax)	# D.13171, PL_Sv.98_25->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.98_25->sv_refcnt, D.13171
	testl	%eax, %eax	# D.13171
	je	.L39	#,
	.loc 1 241 0
	nop
.L39:
	.loc 1 241 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.99
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.100
	leal	1(%rax), %edx	#, PL_savestack_ix.102
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.102, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13172
	leaq	(%rcx,%rax), %rdx	#, D.13173
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.103
	movq	%rax, (%rdx)	# PL_Sv.103, _37->any_ptr
	.loc 1 242 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.104
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.105
	leal	1(%rax), %edx	#, PL_savestack_ix.107
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.107, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13172
	addq	%rcx, %rax	# PL_savestack.104, D.13173
	movl	$1, (%rax)	#, _45->any_i32
	.loc 1 243 0 discriminator 4
	movq	-8(%rbp), %rax	# sptr, tmp107
	movq	%rax, %rdi	# tmp107,
	call	S_save_scalar_at	#
	.loc 1 244 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_save_scalar, .-Perl_save_scalar
	.globl	Perl_save_svref
	.type	Perl_save_svref, @function
Perl_save_svref:
.LFB16:
	.loc 1 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sptr, sptr
	.loc 1 249 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.108
	leal	3(%rax), %edx	#, D.13175
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.109
	cmpl	%eax, %edx	# PL_savestack_max.109, D.13175
	jle	.L42	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L42:
	.loc 1 250 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.110
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.111
	leal	1(%rax), %edx	#, PL_savestack_ix.113
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.113, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13176
	leaq	(%rcx,%rax), %rdx	#, D.13177
	movq	-8(%rbp), %rax	# sptr, tmp94
	movq	%rax, (%rdx)	# tmp94, _10->any_ptr
	.loc 1 251 0
	movq	-8(%rbp), %rax	# sptr, tmp95
	movq	(%rax), %rax	# *sptr_11(D), PL_Sv.114
	movq	%rax, PL_Sv(%rip)	# PL_Sv.114, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.116
	testq	%rax, %rax	# PL_Sv.116
	je	.L44	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.117
	movl	8(%rax), %edx	# PL_Sv.117_14->sv_refcnt, D.13178
	addl	$1, %edx	#, D.13178
	movl	%edx, 8(%rax)	# D.13178, PL_Sv.117_14->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.117_14->sv_refcnt, D.13178
	testl	%eax, %eax	# D.13178
	je	.L44	#,
	.loc 1 251 0
	nop
.L44:
	.loc 1 251 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.118
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.119
	leal	1(%rax), %edx	#, PL_savestack_ix.121
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.121, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13176
	leaq	(%rcx,%rax), %rdx	#, D.13177
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.122
	movq	%rax, (%rdx)	# PL_Sv.122, _26->any_ptr
	.loc 1 252 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.123
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.124
	leal	1(%rax), %edx	#, PL_savestack_ix.126
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.126, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13176
	addq	%rcx, %rax	# PL_savestack.123, D.13177
	movl	$13, (%rax)	#, _34->any_i32
	.loc 1 253 0 discriminator 4
	movq	-8(%rbp), %rax	# sptr, tmp96
	movq	%rax, %rdi	# tmp96,
	call	S_save_scalar_at	#
	.loc 1 254 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_save_svref, .-Perl_save_svref
	.globl	Perl_save_generic_svref
	.type	Perl_save_generic_svref, @function
Perl_save_generic_svref:
.LFB17:
	.loc 1 260 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sptr, sptr
	.loc 1 261 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.127
	leal	3(%rax), %edx	#, D.13180
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.128
	cmpl	%eax, %edx	# PL_savestack_max.128, D.13180
	jle	.L47	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L47:
	.loc 1 262 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.129
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.130
	leal	1(%rax), %edx	#, PL_savestack_ix.132
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.132, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13181
	leaq	(%rcx,%rax), %rdx	#, D.13182
	movq	-8(%rbp), %rax	# sptr, tmp92
	movq	%rax, (%rdx)	# tmp92, _10->any_ptr
	.loc 1 263 0
	movq	-8(%rbp), %rax	# sptr, tmp93
	movq	(%rax), %rax	# *sptr_11(D), PL_Sv.133
	movq	%rax, PL_Sv(%rip)	# PL_Sv.133, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.135
	testq	%rax, %rax	# PL_Sv.135
	je	.L49	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.136
	movl	8(%rax), %edx	# PL_Sv.136_14->sv_refcnt, D.13183
	addl	$1, %edx	#, D.13183
	movl	%edx, 8(%rax)	# D.13183, PL_Sv.136_14->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.136_14->sv_refcnt, D.13183
	testl	%eax, %eax	# D.13183
	je	.L49	#,
	.loc 1 263 0
	nop
.L49:
	.loc 1 263 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.137
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.138
	leal	1(%rax), %edx	#, PL_savestack_ix.140
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.140, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13181
	leaq	(%rcx,%rax), %rdx	#, D.13182
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.141
	movq	%rax, (%rdx)	# PL_Sv.141, _26->any_ptr
	.loc 1 264 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.142
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.143
	leal	1(%rax), %edx	#, PL_savestack_ix.145
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.145, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13181
	addq	%rcx, %rax	# PL_savestack.142, D.13182
	movl	$29, (%rax)	#, _34->any_i32
	.loc 1 265 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_save_generic_svref, .-Perl_save_generic_svref
	.globl	Perl_save_generic_pvref
	.type	Perl_save_generic_pvref, @function
Perl_save_generic_pvref:
.LFB18:
	.loc 1 272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# str, str
	.loc 1 273 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.146
	leal	3(%rax), %edx	#, D.13184
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.147
	cmpl	%eax, %edx	# PL_savestack_max.147, D.13184
	jle	.L51	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L51:
	.loc 1 274 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.148
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.149
	leal	1(%rax), %edx	#, PL_savestack_ix.151
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.151, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13185
	leaq	(%rcx,%rax), %rdx	#, D.13186
	movq	-8(%rbp), %rax	# str, tmp84
	movq	%rax, (%rdx)	# tmp84, _10->any_ptr
	.loc 1 275 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.152
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.153
	leal	1(%rax), %edx	#, PL_savestack_ix.155
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.155, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13185
	leaq	(%rcx,%rax), %rdx	#, D.13186
	movq	-8(%rbp), %rax	# str, tmp85
	movq	(%rax), %rax	# *str_11(D), D.13187
	movq	%rax, (%rdx)	# D.13187, _18->any_ptr
	.loc 1 276 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.156
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.157
	leal	1(%rax), %edx	#, PL_savestack_ix.159
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.159, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13185
	addq	%rcx, %rax	# PL_savestack.156, D.13186
	movl	$34, (%rax)	#, _26->any_i32
	.loc 1 277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_save_generic_pvref, .-Perl_save_generic_pvref
	.globl	Perl_save_shared_pvref
	.type	Perl_save_shared_pvref, @function
Perl_save_shared_pvref:
.LFB19:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# str, str
	.loc 1 285 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.160
	leal	3(%rax), %edx	#, D.13188
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.161
	cmpl	%eax, %edx	# PL_savestack_max.161, D.13188
	jle	.L53	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L53:
	.loc 1 286 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.162
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.163
	leal	1(%rax), %edx	#, PL_savestack_ix.165
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.165, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13189
	leaq	(%rcx,%rax), %rdx	#, D.13190
	movq	-8(%rbp), %rax	# str, tmp84
	movq	%rax, (%rdx)	# tmp84, _10->any_ptr
	.loc 1 287 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.166
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.167
	leal	1(%rax), %edx	#, PL_savestack_ix.169
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.169, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13189
	leaq	(%rcx,%rax), %rdx	#, D.13190
	movq	-8(%rbp), %rax	# str, tmp85
	movq	(%rax), %rax	# *str_11(D), D.13191
	movq	%rax, (%rdx)	# D.13191, _18->any_ptr
	.loc 1 288 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.170
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.171
	leal	1(%rax), %edx	#, PL_savestack_ix.173
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.173, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13189
	addq	%rcx, %rax	# PL_savestack.170, D.13190
	movl	$37, (%rax)	#, _26->any_i32
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_save_shared_pvref, .-Perl_save_shared_pvref
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	Perl_save_gp
	.type	Perl_save_gp, @function
Perl_save_gp:
.LFB20:
	.loc 1 293 0
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
	movq	%rdi, -24(%rbp)	# gv, gv
	movl	%esi, -28(%rbp)	# empty, empty
	.loc 1 294 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.174
	leal	6(%rax), %edx	#, D.13192
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.175
	cmpl	%eax, %edx	# PL_savestack_max.175, D.13192
	jle	.L55	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	$6, %edi	#,
	call	Perl_savestack_grow_cnt	#
.L55:
	.loc 1 295 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.176
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.177
	leal	1(%rax), %edx	#, PL_savestack_ix.179
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.179, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	leaq	(%rcx,%rax), %rdx	#, D.13194
	movq	-24(%rbp), %rax	# gv, tmp203
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	16(%rax), %rax	# MEM[(struct XPV *)_16].xpv_len, D.13193
	movq	%rax, (%rdx)	# D.13196, _14->any_iv
	.loc 1 296 0
	movq	-24(%rbp), %rax	# gv, tmp204
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	$0, 16(%rax)	#, MEM[(struct XPV *)_19].xpv_len
	.loc 1 297 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.180
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.181
	leal	1(%rax), %edx	#, PL_savestack_ix.183
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.183, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	leaq	(%rcx,%rax), %rdx	#, D.13194
	movq	-24(%rbp), %rax	# gv, tmp205
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	8(%rax), %rax	# MEM[(struct XPV *)_27].xpv_cur, D.13193
	movq	%rax, (%rdx)	# D.13196, _26->any_iv
	.loc 1 298 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.184
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.185
	leal	1(%rax), %edx	#, PL_savestack_ix.187
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.187, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	leaq	(%rcx,%rax), %rdx	#, D.13194
	movq	-24(%rbp), %rax	# gv, tmp206
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, D.13197
	movq	%rax, (%rdx)	# D.13197, _36->any_ptr
	.loc 1 299 0
	movq	-24(%rbp), %rax	# gv, tmp207
	movl	12(%rax), %eax	# gv_15(D)->sv_flags, D.13198
	andl	$-67371009, %eax	#, D.13198
	movl	%eax, %edx	# D.13198, D.13198
	movq	-24(%rbp), %rax	# gv, tmp208
	movl	%edx, 12(%rax)	# D.13198, gv_15(D)->sv_flags
	.loc 1 300 0
	movq	-24(%rbp), %rax	# gv, tmp209
	movq	%rax, PL_Sv(%rip)	# tmp209, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.189
	testq	%rax, %rax	# PL_Sv.189
	je	.L57	#,
	.loc 1 300 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.190
	movl	8(%rax), %edx	# PL_Sv.190_42->sv_refcnt, D.13198
	addl	$1, %edx	#, D.13198
	movl	%edx, 8(%rax)	# D.13198, PL_Sv.190_42->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.190_42->sv_refcnt, D.13198
	testl	%eax, %eax	# D.13198
	je	.L57	#,
	.loc 1 300 0
	nop
.L57:
	.loc 1 300 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.191
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.192
	leal	1(%rax), %edx	#, PL_savestack_ix.194
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.194, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	leaq	(%rcx,%rax), %rdx	#, D.13194
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.195
	movq	%rax, (%rdx)	# PL_Sv.195, _54->any_ptr
	.loc 1 301 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.196
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.197
	leal	1(%rax), %edx	#, PL_savestack_ix.199
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.199, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	leaq	(%rcx,%rax), %rdx	#, D.13194
	movq	-24(%rbp), %rax	# gv, tmp210
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _63->xgv_gp, D.13199
	movq	%rax, (%rdx)	# D.13199, _62->any_ptr
	.loc 1 302 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.200
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.201
	leal	1(%rax), %edx	#, PL_savestack_ix.203
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.203, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13193
	addq	%rcx, %rax	# PL_savestack.200, D.13194
	movl	$14, (%rax)	#, _71->any_i32
	.loc 1 304 0 discriminator 4
	cmpl	$0, -28(%rbp)	#, empty
	je	.L58	#,
.LBB4:
	.loc 1 307 0
	movl	$88, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, %rbx	#, gp
	movl	$88, %edx	#,
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# gp,
	call	memset	#
	.loc 1 309 0
	movq	-24(%rbp), %rax	# gv, tmp211
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _74->xgv_gp, D.13199
	movl	64(%rax), %eax	# _75->gp_cvgen, D.13198
	testl	%eax, %eax	# D.13198
	jne	.L59	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp212
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _77->xgv_gp, D.13199
	movq	56(%rax), %rax	# _78->gp_cv, D.13200
	testq	%rax, %rax	# D.13200
	je	.L59	#,
	.loc 1 310 0 is_stmt 1
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.204
	addl	$1, %eax	#, PL_sub_generation.205
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.205, PL_sub_generation
.L59:
	.loc 1 311 0
	movq	-24(%rbp), %rax	# gv, tmp213
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _82->xgv_gp, D.13199
	movq	16(%rax), %rax	# _83->gp_io, D.13201
	testq	%rax, %rax	# D.13201
	je	.L60	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp214
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _85->xgv_gp, D.13199
	movq	16(%rax), %rax	# _86->gp_io, D.13201
	movq	(%rax), %rax	# _87->sv_any, D.13202
	movzbl	163(%rax), %eax	# _88->xio_flags, D.13203
	movsbl	%al, %eax	# D.13203, D.13192
	andl	$1, %eax	#, D.13192
	testl	%eax, %eax	# D.13192
	je	.L60	#,
	.loc 1 312 0 is_stmt 1
	call	Perl_newIO	#
	movq	%rax, 16(%rbx)	# D.13204, gp_73->gp_io
	.loc 1 313 0
	movq	16(%rbx), %rax	# gp_73->gp_io, D.13201
	movq	(%rax), %rax	# _93->sv_any, D.13202
	movq	16(%rbx), %rdx	# gp_73->gp_io, D.13201
	movq	(%rdx), %rdx	# _95->sv_any, D.13202
	movzbl	163(%rdx), %edx	# _96->xio_flags, D.13203
	orl	$3, %edx	#, D.13205
	movb	%dl, 163(%rax)	# D.13205, _94->xio_flags
.L60:
	.loc 1 315 0
	movq	-24(%rbp), %rax	# gv, tmp215
	movq	(%rax), %r12	# gv_15(D)->sv_any, D.13195
	movq	%rbx, %rdi	# gp,
	call	Perl_gp_ref	#
	movq	%rax, 56(%r12)	# D.13199, _99->xgv_gp
	.loc 1 316 0
	movq	-24(%rbp), %rax	# gv, tmp216
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rbx	# _101->xgv_gp, D.13199
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, (%rbx)	# D.13206, _102->gp_sv
	.loc 1 317 0
	movq	-24(%rbp), %rax	# gv, tmp217
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _104->xgv_gp, D.13199
	movq	PL_curcop(%rip), %rdx	# PL_curcop, PL_curcop.206
	movl	72(%rdx), %edx	# PL_curcop.206_106->cop_line, D.13198
	movl	%edx, 72(%rax)	# D.13198, _105->gp_line
	.loc 1 318 0
	movq	-24(%rbp), %rax	# gv, tmp218
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rdx	# _108->xgv_gp, D.13199
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.208
	movq	56(%rax), %rax	# PL_curcop.208_110->cop_filegv, D.13207
	testq	%rax, %rax	# D.13207
	je	.L61	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.209
	movq	56(%rax), %rax	# PL_curcop.209_112->cop_filegv, D.13207
	movq	(%rax), %rax	# _113->sv_any, D.13195
	movq	56(%rax), %rax	# _114->xgv_gp, D.13199
	movq	(%rax), %rax	# _115->gp_sv, D.13206
	testq	%rax, %rax	# D.13206
	je	.L61	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.211
	movq	56(%rax), %rax	# PL_curcop.211_117->cop_filegv, D.13207
	testq	%rax, %rax	# D.13207
	je	.L62	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.212
	movq	56(%rax), %rax	# PL_curcop.212_119->cop_filegv, D.13207
	movq	(%rax), %rax	# _120->sv_any, D.13195
	movq	56(%rax), %rax	# _121->xgv_gp, D.13199
	movq	(%rax), %rax	# _122->gp_sv, iftmp.210
	jmp	.L63	#
.L62:
	.loc 1 318 0 discriminator 2
	movl	$0, %eax	#, iftmp.210
.L63:
	.loc 1 318 0 discriminator 3
	movq	(%rax), %rax	# iftmp.210_2->sv_any, D.13208
	movq	(%rax), %rax	# MEM[(struct XPV *)_125].xpv_pv, D.13197
	testq	%rax, %rax	# D.13197
	je	.L61	#,
	.loc 1 318 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.214
	movq	56(%rax), %rax	# PL_curcop.214_127->cop_filegv, D.13207
	testq	%rax, %rax	# D.13207
	je	.L64	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.215
	movq	56(%rax), %rax	# PL_curcop.215_129->cop_filegv, D.13207
	movq	(%rax), %rax	# _130->sv_any, D.13195
	movq	56(%rax), %rax	# _131->xgv_gp, D.13199
	movq	(%rax), %rax	# _132->gp_sv, D.13206
	testq	%rax, %rax	# D.13206
	je	.L64	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.217
	movq	56(%rax), %rax	# PL_curcop.217_134->cop_filegv, D.13207
	testq	%rax, %rax	# D.13207
	je	.L65	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.218
	movq	56(%rax), %rax	# PL_curcop.218_136->cop_filegv, D.13207
	movq	(%rax), %rax	# _137->sv_any, D.13195
	movq	56(%rax), %rax	# _138->xgv_gp, D.13199
	movq	(%rax), %rax	# _139->gp_sv, iftmp.216
	jmp	.L66	#
.L65:
	.loc 1 318 0 discriminator 2
	movl	$0, %eax	#, iftmp.216
.L66:
	.loc 1 318 0 discriminator 3
	movq	(%rax), %rax	# iftmp.216_4->sv_any, D.13208
	movq	(%rax), %rax	# MEM[(struct XPV *)_142].xpv_pv, iftmp.213
	jmp	.L67	#
.L64:
	.loc 1 318 0 discriminator 2
	movl	$0, %eax	#, iftmp.213
.L67:
	.loc 1 318 0 discriminator 3
	jmp	.L68	#
.L61:
	.loc 1 318 0 discriminator 2
	movl	$.LC0, %eax	#, iftmp.207
.L68:
	.loc 1 318 0 discriminator 3
	movq	%rax, 80(%rdx)	# iftmp.207, _109->gp_file
	.loc 1 319 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# gv, tmp219
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _147->xgv_gp, D.13199
	movq	-24(%rbp), %rdx	# gv, tmp220
	movq	%rdx, 48(%rax)	# tmp220, _148->gp_egv
.LBE4:
	jmp	.L54	#
.L58:
	.loc 1 322 0
	movq	-24(%rbp), %rax	# gv, tmp221
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	56(%rax), %rax	# _149->xgv_gp, D.13199
	movq	%rax, %rdi	# D.13199,
	call	Perl_gp_ref	#
	.loc 1 323 0
	movq	-24(%rbp), %rax	# gv, tmp222
	movq	(%rax), %rax	# gv_15(D)->sv_any, D.13195
	movq	-24(%rbp), %rdx	# gv, tmp223
	movq	(%rdx), %rdx	# gv_15(D)->sv_any, D.13195
	movzbl	88(%rdx), %edx	# _152->xgv_flags, D.13209
	orl	$1, %edx	#, D.13209
	movb	%dl, 88(%rax)	# D.13209, _151->xgv_flags
.L54:
	.loc 1 325 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_save_gp, .-Perl_save_gp
	.globl	Perl_save_ary
	.type	Perl_save_ary, @function
Perl_save_ary:
.LFB21:
	.loc 1 329 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# gv, gv
	.loc 1 330 0
	movq	-24(%rbp), %rax	# gv, tmp127
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13211
	movq	56(%rax), %rax	# _4->xgv_gp, D.13212
	movq	32(%rax), %rax	# _5->gp_av, D.13213
	testq	%rax, %rax	# D.13213
	je	.L71	#,
	.loc 1 330 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp128
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13211
	movq	56(%rax), %rax	# _7->xgv_gp, D.13212
	movq	32(%rax), %rax	# _8->gp_av, iftmp.219
	jmp	.L72	#
.L71:
	.loc 1 330 0 discriminator 2
	movq	-24(%rbp), %rax	# gv, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _10->sv_any, D.13211
	movq	56(%rax), %rax	# _11->xgv_gp, D.13212
	movq	32(%rax), %rax	# _12->gp_av, iftmp.219
.L72:
	.loc 1 330 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.219, oav
	.loc 1 333 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# oav, tmp130
	movq	(%rax), %rax	# oav_14->sv_any, D.13215
	movzbl	72(%rax), %eax	# _15->xav_flags, D.13216
	movzbl	%al, %eax	# D.13216, D.13217
	andl	$1, %eax	#, D.13217
	testl	%eax, %eax	# D.13217
	jne	.L73	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# oav, tmp131
	movq	(%rax), %rax	# oav_14->sv_any, D.13215
	movzbl	72(%rax), %eax	# _19->xav_flags, D.13216
	movzbl	%al, %eax	# D.13216, D.13217
	andl	$2, %eax	#, D.13217
	testl	%eax, %eax	# D.13217
	je	.L73	#,
	.loc 1 334 0 is_stmt 1
	movq	-16(%rbp), %rax	# oav, tmp132
	movq	%rax, %rdi	# tmp132,
	call	Perl_av_reify	#
.L73:
	.loc 1 335 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.220
	leal	3(%rax), %edx	#, D.13217
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.221
	cmpl	%eax, %edx	# PL_savestack_max.221, D.13217
	jle	.L74	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L74:
	.loc 1 336 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.222
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.223
	leal	1(%rax), %edx	#, PL_savestack_ix.225
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.225, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13218
	leaq	(%rcx,%rax), %rdx	#, D.13219
	movq	-24(%rbp), %rax	# gv, tmp133
	movq	%rax, (%rdx)	# tmp133, _32->any_ptr
	.loc 1 337 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.226
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.227
	leal	1(%rax), %edx	#, PL_savestack_ix.229
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.229, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13218
	leaq	(%rcx,%rax), %rdx	#, D.13219
	movq	-16(%rbp), %rax	# oav, tmp134
	movq	%rax, (%rdx)	# tmp134, _39->any_ptr
	.loc 1 338 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.230
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.231
	leal	1(%rax), %edx	#, PL_savestack_ix.233
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.233, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13218
	addq	%rcx, %rax	# PL_savestack.230, D.13219
	movl	$2, (%rax)	#, _46->any_i32
	.loc 1 340 0
	movq	-24(%rbp), %rax	# gv, tmp135
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13211
	movq	56(%rax), %rax	# _47->xgv_gp, D.13212
	movq	$0, 32(%rax)	#, _48->gp_av
	.loc 1 341 0
	movq	-24(%rbp), %rax	# gv, tmp136
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13211
	movq	56(%rax), %rax	# _49->xgv_gp, D.13212
	movq	32(%rax), %rax	# _50->gp_av, D.13213
	testq	%rax, %rax	# D.13213
	je	.L75	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp137
	movq	(%rax), %rax	# gv_3(D)->sv_any, D.13211
	movq	56(%rax), %rax	# _52->xgv_gp, D.13212
	movq	32(%rax), %rax	# _53->gp_av, iftmp.234
	jmp	.L76	#
.L75:
	.loc 1 341 0 discriminator 2
	movq	-24(%rbp), %rax	# gv, tmp138
	movq	%rax, %rdi	# tmp138,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _55->sv_any, D.13211
	movq	56(%rax), %rax	# _56->xgv_gp, D.13212
	movq	32(%rax), %rax	# _57->gp_av, iftmp.234
.L76:
	.loc 1 341 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.234, av
	.loc 1 342 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# oav, tmp139
	movq	(%rax), %rax	# oav_14->sv_any, D.13215
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_60].xmg_magic, D.13220
	testq	%rax, %rax	# D.13220
	je	.L77	#,
	.loc 1 343 0
	movq	-8(%rbp), %rax	# av, tmp140
	movq	(%rax), %rax	# av_59->sv_any, D.13215
	movq	-16(%rbp), %rdx	# oav, tmp141
	movq	(%rdx), %rdx	# oav_14->sv_any, D.13215
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_63].xmg_magic, D.13220
	movq	%rdx, 40(%rax)	# D.13220, MEM[(struct XPVMG *)_62].xmg_magic
	.loc 1 344 0
	movq	-8(%rbp), %rax	# av, tmp142
	movl	12(%rax), %edx	# MEM[(struct SV *)av_59].sv_flags, D.13221
	movq	-16(%rbp), %rax	# oav, tmp143
	movl	12(%rax), %eax	# oav_14->sv_flags, D.13221
	andl	$57344, %eax	#, D.13221
	orl	%eax, %edx	# D.13221, D.13221
	movq	-8(%rbp), %rax	# av, tmp144
	movl	%edx, 12(%rax)	# D.13221, MEM[(struct SV *)av_59].sv_flags
	.loc 1 345 0
	movq	-16(%rbp), %rax	# oav, tmp145
	movl	12(%rax), %eax	# oav_14->sv_flags, D.13221
	andb	$31, %ah	#, D.13221
	movl	%eax, %edx	# D.13221, D.13221
	movq	-16(%rbp), %rax	# oav, tmp146
	movl	%edx, 12(%rax)	# D.13221, oav_14->sv_flags
	.loc 1 346 0
	movq	-16(%rbp), %rax	# oav, tmp147
	movq	(%rax), %rax	# oav_14->sv_any, D.13215
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_71].xmg_magic
	.loc 1 347 0
	movl	$1, PL_localizing(%rip)	#, PL_localizing
	.loc 1 348 0
	movq	-8(%rbp), %rax	# av, tmp148
	movl	12(%rax), %eax	# MEM[(struct SV *)av_59].sv_flags, D.13221
	andl	$16384, %eax	#, D.13221
	testl	%eax, %eax	# D.13221
	je	.L78	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# av, tmp149
	movq	%rax, %rdi	# tmp149,
	call	Perl_mg_set	#
.L78:
	.loc 1 349 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
.L77:
	.loc 1 351 0
	movq	-8(%rbp), %rax	# av, D.13213
	.loc 1 352 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_save_ary, .-Perl_save_ary
	.globl	Perl_save_hash
	.type	Perl_save_hash, @function
Perl_save_hash:
.LFB22:
	.loc 1 356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# gv, gv
	.loc 1 359 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.235
	leal	3(%rax), %edx	#, D.13222
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.236
	cmpl	%eax, %edx	# PL_savestack_max.236, D.13222
	jle	.L81	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L81:
	.loc 1 360 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.237
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.238
	leal	1(%rax), %edx	#, PL_savestack_ix.240
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.240, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13223
	leaq	(%rcx,%rax), %rdx	#, D.13224
	movq	-40(%rbp), %rax	# gv, tmp119
	movq	%rax, (%rdx)	# tmp119, _12->any_ptr
	.loc 1 361 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.241
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.242
	leal	1(%rax), %edx	#, PL_savestack_ix.244
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.244, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13223
	leaq	(%rcx,%rax), %rbx	#, D.13224
	movq	-40(%rbp), %rax	# gv, tmp120
	movq	(%rax), %rax	# gv_13(D)->sv_any, D.13225
	movq	56(%rax), %rax	# _21->xgv_gp, D.13226
	movq	40(%rax), %rax	# _22->gp_hv, D.13227
	testq	%rax, %rax	# D.13227
	je	.L82	#,
	.loc 1 361 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp121
	movq	(%rax), %rax	# gv_13(D)->sv_any, D.13225
	movq	56(%rax), %rax	# _24->xgv_gp, D.13226
	movq	40(%rax), %rax	# _25->gp_hv, iftmp.245
	jmp	.L83	#
.L82:
	.loc 1 361 0 discriminator 2
	movq	-40(%rbp), %rax	# gv, tmp122
	movq	%rax, %rdi	# tmp122,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _27->sv_any, D.13225
	movq	56(%rax), %rax	# _28->xgv_gp, D.13226
	movq	40(%rax), %rax	# _29->gp_hv, iftmp.245
.L83:
	.loc 1 361 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.245, ohv
	movq	-32(%rbp), %rax	# ohv, tmp123
	movq	%rax, (%rbx)	# tmp123, _20->any_ptr
	.loc 1 362 0 is_stmt 1 discriminator 3
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.246
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.247
	leal	1(%rax), %edx	#, PL_savestack_ix.249
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.249, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13223
	addq	%rcx, %rax	# PL_savestack.246, D.13224
	movl	$3, (%rax)	#, _38->any_i32
	.loc 1 364 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp124
	movq	(%rax), %rax	# gv_13(D)->sv_any, D.13225
	movq	56(%rax), %rax	# _39->xgv_gp, D.13226
	movq	$0, 40(%rax)	#, _40->gp_hv
	.loc 1 365 0 discriminator 3
	movq	-40(%rbp), %rax	# gv, tmp125
	movq	(%rax), %rax	# gv_13(D)->sv_any, D.13225
	movq	56(%rax), %rax	# _41->xgv_gp, D.13226
	movq	40(%rax), %rax	# _42->gp_hv, D.13227
	testq	%rax, %rax	# D.13227
	je	.L84	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gv, tmp126
	movq	(%rax), %rax	# gv_13(D)->sv_any, D.13225
	movq	56(%rax), %rax	# _44->xgv_gp, D.13226
	movq	40(%rax), %rax	# _45->gp_hv, iftmp.250
	jmp	.L85	#
.L84:
	.loc 1 365 0 discriminator 2
	movq	-40(%rbp), %rax	# gv, tmp127
	movq	%rax, %rdi	# tmp127,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _47->sv_any, D.13225
	movq	56(%rax), %rax	# _48->xgv_gp, D.13226
	movq	40(%rax), %rax	# _49->gp_hv, iftmp.250
.L85:
	.loc 1 365 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.250, hv
	.loc 1 366 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# ohv, tmp128
	movq	(%rax), %rax	# ohv_31->sv_any, D.13229
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_52].xmg_magic, D.13230
	testq	%rax, %rax	# D.13230
	je	.L86	#,
	.loc 1 367 0
	movq	-24(%rbp), %rax	# hv, tmp129
	movq	(%rax), %rax	# hv_51->sv_any, D.13229
	movq	-32(%rbp), %rdx	# ohv, tmp130
	movq	(%rdx), %rdx	# ohv_31->sv_any, D.13229
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_55].xmg_magic, D.13230
	movq	%rdx, 40(%rax)	# D.13230, MEM[(struct XPVMG *)_54].xmg_magic
	.loc 1 368 0
	movq	-24(%rbp), %rax	# hv, tmp131
	movl	12(%rax), %edx	# MEM[(struct SV *)hv_51].sv_flags, D.13231
	movq	-32(%rbp), %rax	# ohv, tmp132
	movl	12(%rax), %eax	# ohv_31->sv_flags, D.13231
	andl	$57344, %eax	#, D.13231
	orl	%eax, %edx	# D.13231, D.13231
	movq	-24(%rbp), %rax	# hv, tmp133
	movl	%edx, 12(%rax)	# D.13231, MEM[(struct SV *)hv_51].sv_flags
	.loc 1 369 0
	movq	-32(%rbp), %rax	# ohv, tmp134
	movl	12(%rax), %eax	# ohv_31->sv_flags, D.13231
	andb	$31, %ah	#, D.13231
	movl	%eax, %edx	# D.13231, D.13231
	movq	-32(%rbp), %rax	# ohv, tmp135
	movl	%edx, 12(%rax)	# D.13231, ohv_31->sv_flags
	.loc 1 370 0
	movq	-32(%rbp), %rax	# ohv, tmp136
	movq	(%rax), %rax	# ohv_31->sv_any, D.13229
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_63].xmg_magic
	.loc 1 371 0
	movl	$1, PL_localizing(%rip)	#, PL_localizing
	.loc 1 372 0
	movq	-24(%rbp), %rax	# hv, tmp137
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_51].sv_flags, D.13231
	andl	$16384, %eax	#, D.13231
	testl	%eax, %eax	# D.13231
	je	.L87	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hv, tmp138
	movq	%rax, %rdi	# tmp138,
	call	Perl_mg_set	#
.L87:
	.loc 1 373 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
.L86:
	.loc 1 375 0
	movq	-24(%rbp), %rax	# hv, D.13227
	.loc 1 376 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_save_hash, .-Perl_save_hash
	.globl	Perl_save_item
	.type	Perl_save_item, @function
Perl_save_item:
.LFB23:
	.loc 1 380 0
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
	movq	%rdi, %rbx	# item, item
	.loc 1 381 0
	movq	%rbx, %rdi	# item,
	call	Perl_newSVsv	#
	movq	%rax, %r12	#, sv
	.loc 1 383 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.251
	leal	3(%rax), %edx	#, D.13232
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.252
	cmpl	%eax, %edx	# PL_savestack_max.252, D.13232
	jle	.L90	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L90:
	.loc 1 384 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.253
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.254
	leal	1(%rax), %edx	#, PL_savestack_ix.256
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.256, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13233
	addq	%rcx, %rax	# PL_savestack.253, D.13234
	movq	%rbx, (%rax)	# item, _12->any_ptr
	.loc 1 385 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.257
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.258
	leal	1(%rax), %edx	#, PL_savestack_ix.260
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.260, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13233
	addq	%rcx, %rax	# PL_savestack.257, D.13234
	movq	%r12, (%rax)	# sv, _19->any_ptr
	.loc 1 386 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.261
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.262
	leal	1(%rax), %edx	#, PL_savestack_ix.264
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.264, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13233
	addq	%rcx, %rax	# PL_savestack.261, D.13234
	movl	$0, (%rax)	#, _26->any_i32
	.loc 1 387 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_save_item, .-Perl_save_item
	.globl	Perl_save_int
	.type	Perl_save_int, @function
Perl_save_int:
.LFB24:
	.loc 1 391 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# intp, intp
	.loc 1 392 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.265
	leal	3(%rax), %edx	#, D.13235
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.266
	cmpl	%eax, %edx	# PL_savestack_max.266, D.13235
	jle	.L92	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L92:
	.loc 1 393 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.267
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.268
	leal	1(%rax), %edx	#, PL_savestack_ix.270
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.270, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13236
	leaq	(%rcx,%rax), %rdx	#, D.13237
	movq	-8(%rbp), %rax	# intp, tmp84
	movl	(%rax), %eax	# *intp_11(D), D.13235
	movl	%eax, (%rdx)	# D.13235, _10->any_i32
	.loc 1 394 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.271
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.272
	leal	1(%rax), %edx	#, PL_savestack_ix.274
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.274, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13236
	leaq	(%rcx,%rax), %rdx	#, D.13237
	movq	-8(%rbp), %rax	# intp, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 395 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.275
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.276
	leal	1(%rax), %edx	#, PL_savestack_ix.278
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.278, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13236
	addq	%rcx, %rax	# PL_savestack.275, D.13237
	movl	$4, (%rax)	#, _26->any_i32
	.loc 1 396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_save_int, .-Perl_save_int
	.globl	Perl_save_long
	.type	Perl_save_long, @function
Perl_save_long:
.LFB25:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# longp, longp
	.loc 1 401 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.279
	leal	3(%rax), %edx	#, D.13238
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.280
	cmpl	%eax, %edx	# PL_savestack_max.280, D.13238
	jle	.L94	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L94:
	.loc 1 402 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.281
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.282
	leal	1(%rax), %edx	#, PL_savestack_ix.284
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.284, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13239
	leaq	(%rcx,%rax), %rdx	#, D.13240
	movq	-8(%rbp), %rax	# longp, tmp84
	movq	(%rax), %rax	# *longp_11(D), D.13241
	movq	%rax, (%rdx)	# D.13241, _10->any_long
	.loc 1 403 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.285
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.286
	leal	1(%rax), %edx	#, PL_savestack_ix.288
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.288, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13239
	leaq	(%rcx,%rax), %rdx	#, D.13240
	movq	-8(%rbp), %rax	# longp, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 404 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.289
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.290
	leal	1(%rax), %edx	#, PL_savestack_ix.292
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.292, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13239
	addq	%rcx, %rax	# PL_savestack.289, D.13240
	movl	$5, (%rax)	#, _26->any_i32
	.loc 1 405 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_save_long, .-Perl_save_long
	.globl	Perl_save_bool
	.type	Perl_save_bool, @function
Perl_save_bool:
.LFB26:
	.loc 1 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# boolp, boolp
	.loc 1 410 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.293
	leal	3(%rax), %edx	#, D.13242
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.294
	cmpl	%eax, %edx	# PL_savestack_max.294, D.13242
	jle	.L96	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L96:
	.loc 1 411 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.295
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.296
	leal	1(%rax), %edx	#, PL_savestack_ix.298
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.298, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13243
	leaq	(%rcx,%rax), %rdx	#, D.13244
	movq	-8(%rbp), %rax	# boolp, tmp84
	movzbl	(%rax), %eax	# *boolp_11(D), D.13245
	movb	%al, (%rdx)	# D.13245, _10->any_bool
	.loc 1 412 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.299
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.300
	leal	1(%rax), %edx	#, PL_savestack_ix.302
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.302, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13243
	leaq	(%rcx,%rax), %rdx	#, D.13244
	movq	-8(%rbp), %rax	# boolp, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 413 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.303
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.304
	leal	1(%rax), %edx	#, PL_savestack_ix.306
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.306, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13243
	addq	%rcx, %rax	# PL_savestack.303, D.13244
	movl	$38, (%rax)	#, _26->any_i32
	.loc 1 414 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_save_bool, .-Perl_save_bool
	.globl	Perl_save_I32
	.type	Perl_save_I32, @function
Perl_save_I32:
.LFB27:
	.loc 1 418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# intp, intp
	.loc 1 419 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.307
	leal	3(%rax), %edx	#, D.13246
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.308
	cmpl	%eax, %edx	# PL_savestack_max.308, D.13246
	jle	.L98	#,
	.loc 1 419 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L98:
	.loc 1 420 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.309
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.310
	leal	1(%rax), %edx	#, PL_savestack_ix.312
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.312, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13247
	leaq	(%rcx,%rax), %rdx	#, D.13248
	movq	-8(%rbp), %rax	# intp, tmp84
	movl	(%rax), %eax	# *intp_11(D), D.13246
	movl	%eax, (%rdx)	# D.13246, _10->any_i32
	.loc 1 421 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.313
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.314
	leal	1(%rax), %edx	#, PL_savestack_ix.316
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.316, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13247
	leaq	(%rcx,%rax), %rdx	#, D.13248
	movq	-8(%rbp), %rax	# intp, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 422 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.317
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.318
	leal	1(%rax), %edx	#, PL_savestack_ix.320
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.320, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13247
	addq	%rcx, %rax	# PL_savestack.317, D.13248
	movl	$6, (%rax)	#, _26->any_i32
	.loc 1 423 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_save_I32, .-Perl_save_I32
	.globl	Perl_save_I16
	.type	Perl_save_I16, @function
Perl_save_I16:
.LFB28:
	.loc 1 427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# intp, intp
	.loc 1 428 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.321
	leal	3(%rax), %edx	#, D.13249
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.322
	cmpl	%eax, %edx	# PL_savestack_max.322, D.13249
	jle	.L100	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L100:
	.loc 1 429 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.323
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.324
	leal	1(%rax), %edx	#, PL_savestack_ix.326
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.326, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13250
	leaq	(%rcx,%rax), %rdx	#, D.13251
	movq	-8(%rbp), %rax	# intp, tmp85
	movzwl	(%rax), %eax	# *intp_11(D), D.13252
	cwtl
	movl	%eax, (%rdx)	# D.13249, _10->any_i32
	.loc 1 430 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.327
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.328
	leal	1(%rax), %edx	#, PL_savestack_ix.330
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.330, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13250
	leaq	(%rcx,%rax), %rdx	#, D.13251
	movq	-8(%rbp), %rax	# intp, tmp86
	movq	%rax, (%rdx)	# tmp86, _20->any_ptr
	.loc 1 431 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.331
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.332
	leal	1(%rax), %edx	#, PL_savestack_ix.334
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.334, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13250
	addq	%rcx, %rax	# PL_savestack.331, D.13251
	movl	$23, (%rax)	#, _27->any_i32
	.loc 1 432 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_save_I16, .-Perl_save_I16
	.globl	Perl_save_I8
	.type	Perl_save_I8, @function
Perl_save_I8:
.LFB29:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# bytep, bytep
	.loc 1 437 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.335
	leal	3(%rax), %edx	#, D.13253
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.336
	cmpl	%eax, %edx	# PL_savestack_max.336, D.13253
	jle	.L102	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L102:
	.loc 1 438 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.337
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.338
	leal	1(%rax), %edx	#, PL_savestack_ix.340
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.340, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13254
	leaq	(%rcx,%rax), %rdx	#, D.13255
	movq	-8(%rbp), %rax	# bytep, tmp85
	movzbl	(%rax), %eax	# *bytep_11(D), D.13256
	movsbl	%al, %eax	# D.13256, D.13253
	movl	%eax, (%rdx)	# D.13253, _10->any_i32
	.loc 1 439 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.341
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.342
	leal	1(%rax), %edx	#, PL_savestack_ix.344
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.344, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13254
	leaq	(%rcx,%rax), %rdx	#, D.13255
	movq	-8(%rbp), %rax	# bytep, tmp86
	movq	%rax, (%rdx)	# tmp86, _20->any_ptr
	.loc 1 440 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.345
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.346
	leal	1(%rax), %edx	#, PL_savestack_ix.348
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.348, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13254
	addq	%rcx, %rax	# PL_savestack.345, D.13255
	movl	$32, (%rax)	#, _27->any_i32
	.loc 1 441 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_save_I8, .-Perl_save_I8
	.globl	Perl_save_iv
	.type	Perl_save_iv, @function
Perl_save_iv:
.LFB30:
	.loc 1 445 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ivp, ivp
	.loc 1 446 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.349
	leal	3(%rax), %edx	#, D.13257
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.350
	cmpl	%eax, %edx	# PL_savestack_max.350, D.13257
	jle	.L104	#,
	.loc 1 446 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L104:
	.loc 1 447 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.351
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.352
	leal	1(%rax), %edx	#, PL_savestack_ix.354
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.354, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13258
	leaq	(%rcx,%rax), %rdx	#, D.13259
	movq	-8(%rbp), %rax	# ivp, tmp84
	movq	(%rax), %rax	# *ivp_11(D), D.13260
	movq	%rax, (%rdx)	# D.13260, _10->any_iv
	.loc 1 448 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.355
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.356
	leal	1(%rax), %edx	#, PL_savestack_ix.358
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.358, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13258
	leaq	(%rcx,%rax), %rdx	#, D.13259
	movq	-8(%rbp), %rax	# ivp, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 449 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.359
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.360
	leal	1(%rax), %edx	#, PL_savestack_ix.362
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.362, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13258
	addq	%rcx, %rax	# PL_savestack.359, D.13259
	movl	$7, (%rax)	#, _26->any_i32
	.loc 1 450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_save_iv, .-Perl_save_iv
	.globl	Perl_save_pptr
	.type	Perl_save_pptr, @function
Perl_save_pptr:
.LFB31:
	.loc 1 457 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pptr, pptr
	.loc 1 458 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.363
	leal	3(%rax), %edx	#, D.13261
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.364
	cmpl	%eax, %edx	# PL_savestack_max.364, D.13261
	jle	.L106	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L106:
	.loc 1 459 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.365
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.366
	leal	1(%rax), %edx	#, PL_savestack_ix.368
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.368, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13262
	leaq	(%rcx,%rax), %rdx	#, D.13263
	movq	-8(%rbp), %rax	# pptr, tmp84
	movq	(%rax), %rax	# *pptr_11(D), D.13264
	movq	%rax, (%rdx)	# D.13264, _10->any_ptr
	.loc 1 460 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.369
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.370
	leal	1(%rax), %edx	#, PL_savestack_ix.372
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.372, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13262
	leaq	(%rcx,%rax), %rdx	#, D.13263
	movq	-8(%rbp), %rax	# pptr, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 461 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.373
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.374
	leal	1(%rax), %edx	#, PL_savestack_ix.376
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.376, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13262
	addq	%rcx, %rax	# PL_savestack.373, D.13263
	movl	$11, (%rax)	#, _26->any_i32
	.loc 1 462 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_save_pptr, .-Perl_save_pptr
	.globl	Perl_save_vptr
	.type	Perl_save_vptr, @function
Perl_save_vptr:
.LFB32:
	.loc 1 466 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ptr, ptr
	.loc 1 467 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.377
	leal	3(%rax), %edx	#, D.13265
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.378
	cmpl	%eax, %edx	# PL_savestack_max.378, D.13265
	jle	.L108	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L108:
	.loc 1 468 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.379
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.380
	leal	1(%rax), %edx	#, PL_savestack_ix.382
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.382, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13266
	leaq	(%rcx,%rax), %rdx	#, D.13267
	movq	-8(%rbp), %rax	# ptr, tmp84
	movq	(%rax), %rax	# MEM[(char * *)ptr_11(D)], D.13268
	movq	%rax, (%rdx)	# D.13268, _10->any_ptr
	.loc 1 469 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.383
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.384
	leal	1(%rax), %edx	#, PL_savestack_ix.386
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.386, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13266
	leaq	(%rcx,%rax), %rdx	#, D.13267
	movq	-8(%rbp), %rax	# ptr, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 470 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.387
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.388
	leal	1(%rax), %edx	#, PL_savestack_ix.390
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.390, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13266
	addq	%rcx, %rax	# PL_savestack.387, D.13267
	movl	$31, (%rax)	#, _26->any_i32
	.loc 1 471 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_save_vptr, .-Perl_save_vptr
	.globl	Perl_save_sptr
	.type	Perl_save_sptr, @function
Perl_save_sptr:
.LFB33:
	.loc 1 475 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sptr, sptr
	.loc 1 476 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.391
	leal	3(%rax), %edx	#, D.13269
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.392
	cmpl	%eax, %edx	# PL_savestack_max.392, D.13269
	jle	.L110	#,
	.loc 1 476 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L110:
	.loc 1 477 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.393
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.394
	leal	1(%rax), %edx	#, PL_savestack_ix.396
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.396, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13270
	leaq	(%rcx,%rax), %rdx	#, D.13271
	movq	-8(%rbp), %rax	# sptr, tmp84
	movq	(%rax), %rax	# *sptr_11(D), D.13272
	movq	%rax, (%rdx)	# D.13272, _10->any_ptr
	.loc 1 478 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.397
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.398
	leal	1(%rax), %edx	#, PL_savestack_ix.400
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.400, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13270
	leaq	(%rcx,%rax), %rdx	#, D.13271
	movq	-8(%rbp), %rax	# sptr, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 479 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.401
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.402
	leal	1(%rax), %edx	#, PL_savestack_ix.404
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.404, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13270
	addq	%rcx, %rax	# PL_savestack.401, D.13271
	movl	$8, (%rax)	#, _26->any_i32
	.loc 1 480 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_save_sptr, .-Perl_save_sptr
	.globl	Perl_save_padsv
	.type	Perl_save_padsv, @function
Perl_save_padsv:
.LFB34:
	.loc 1 484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# off, off
	.loc 1 485 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.405
	leal	4(%rax), %edx	#, D.13273
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.406
	cmpl	%eax, %edx	# PL_savestack_max.406, D.13273
	jle	.L112	#,
	.loc 1 485 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L112:
	.loc 1 487 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.407
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.408
	leal	1(%rax), %edx	#, PL_savestack_ix.410
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.410, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13274
	leaq	(%rcx,%rax), %rdx	#, D.13275
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.411
	movq	-8(%rbp), %rcx	# off, tmp96
	salq	$3, %rcx	#, D.13274
	addq	%rcx, %rax	# D.13274, D.13276
	movq	(%rax), %rax	# *_14, D.13277
	movq	%rax, (%rdx)	# D.13277, _10->any_ptr
	.loc 1 488 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.412
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.413
	leal	1(%rax), %edx	#, PL_savestack_ix.415
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.415, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13274
	leaq	(%rcx,%rax), %rdx	#, D.13275
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.416
	movq	%rax, (%rdx)	# PL_comppad.416, _22->any_ptr
	.loc 1 489 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.417
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.418
	leal	1(%rax), %edx	#, PL_savestack_ix.420
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.420, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13274
	leaq	(%rcx,%rax), %rdx	#, D.13275
	movq	-8(%rbp), %rax	# off, off.421
	movq	%rax, (%rdx)	# off.421, _30->any_long
	.loc 1 490 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.422
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.423
	leal	1(%rax), %edx	#, PL_savestack_ix.425
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.425, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13274
	addq	%rcx, %rax	# PL_savestack.422, D.13275
	movl	$35, (%rax)	#, _38->any_i32
	.loc 1 491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_save_padsv, .-Perl_save_padsv
	.section	.rodata
	.align 8
.LC1:
	.string	"panic: save_threadsv called in non-threaded perl"
	.text
	.globl	Perl_save_threadsv
	.type	Perl_save_threadsv, @function
Perl_save_threadsv:
.LFB35:
	.loc 1 495 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# i, i
	.loc 1 503 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 504 0
	movl	$0, %eax	#, D.13278
	.loc 1 506 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_save_threadsv, .-Perl_save_threadsv
	.globl	Perl_save_nogv
	.type	Perl_save_nogv, @function
Perl_save_nogv:
.LFB36:
	.loc 1 510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gv, gv
	.loc 1 511 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.426
	leal	2(%rax), %edx	#, D.13280
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.427
	cmpl	%eax, %edx	# PL_savestack_max.427, D.13280
	jle	.L116	#,
	.loc 1 511 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L116:
	.loc 1 512 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.428
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.429
	leal	1(%rax), %edx	#, PL_savestack_ix.431
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.431, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13281
	leaq	(%rcx,%rax), %rdx	#, D.13282
	movq	-8(%rbp), %rax	# gv, tmp76
	movq	%rax, (%rdx)	# tmp76, _10->any_ptr
	.loc 1 513 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.432
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.433
	leal	1(%rax), %edx	#, PL_savestack_ix.435
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.435, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13281
	addq	%rcx, %rax	# PL_savestack.432, D.13282
	movl	$12, (%rax)	#, _18->any_i32
	.loc 1 514 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_save_nogv, .-Perl_save_nogv
	.globl	Perl_save_hptr
	.type	Perl_save_hptr, @function
Perl_save_hptr:
.LFB37:
	.loc 1 518 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hptr, hptr
	.loc 1 519 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.436
	leal	3(%rax), %edx	#, D.13283
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.437
	cmpl	%eax, %edx	# PL_savestack_max.437, D.13283
	jle	.L118	#,
	.loc 1 519 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L118:
	.loc 1 520 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.438
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.439
	leal	1(%rax), %edx	#, PL_savestack_ix.441
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.441, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13284
	leaq	(%rcx,%rax), %rdx	#, D.13285
	movq	-8(%rbp), %rax	# hptr, tmp84
	movq	(%rax), %rax	# *hptr_11(D), D.13286
	movq	%rax, (%rdx)	# D.13286, _10->any_ptr
	.loc 1 521 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.442
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.443
	leal	1(%rax), %edx	#, PL_savestack_ix.445
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.445, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13284
	leaq	(%rcx,%rax), %rdx	#, D.13285
	movq	-8(%rbp), %rax	# hptr, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 522 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.446
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.447
	leal	1(%rax), %edx	#, PL_savestack_ix.449
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.449, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13284
	addq	%rcx, %rax	# PL_savestack.446, D.13285
	movl	$10, (%rax)	#, _26->any_i32
	.loc 1 523 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_save_hptr, .-Perl_save_hptr
	.globl	Perl_save_aptr
	.type	Perl_save_aptr, @function
Perl_save_aptr:
.LFB38:
	.loc 1 527 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# aptr, aptr
	.loc 1 528 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.450
	leal	3(%rax), %edx	#, D.13287
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.451
	cmpl	%eax, %edx	# PL_savestack_max.451, D.13287
	jle	.L120	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L120:
	.loc 1 529 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.452
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.453
	leal	1(%rax), %edx	#, PL_savestack_ix.455
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.455, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13288
	leaq	(%rcx,%rax), %rdx	#, D.13289
	movq	-8(%rbp), %rax	# aptr, tmp84
	movq	(%rax), %rax	# *aptr_11(D), D.13290
	movq	%rax, (%rdx)	# D.13290, _10->any_ptr
	.loc 1 530 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.456
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.457
	leal	1(%rax), %edx	#, PL_savestack_ix.459
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.459, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13288
	leaq	(%rcx,%rax), %rdx	#, D.13289
	movq	-8(%rbp), %rax	# aptr, tmp85
	movq	%rax, (%rdx)	# tmp85, _19->any_ptr
	.loc 1 531 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.460
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.461
	leal	1(%rax), %edx	#, PL_savestack_ix.463
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.463, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13288
	addq	%rcx, %rax	# PL_savestack.460, D.13289
	movl	$9, (%rax)	#, _26->any_i32
	.loc 1 532 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_save_aptr, .-Perl_save_aptr
	.globl	Perl_save_freesv
	.type	Perl_save_freesv, @function
Perl_save_freesv:
.LFB39:
	.loc 1 536 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 537 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.464
	leal	2(%rax), %edx	#, D.13291
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.465
	cmpl	%eax, %edx	# PL_savestack_max.465, D.13291
	jle	.L122	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L122:
	.loc 1 538 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.466
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.467
	leal	1(%rax), %edx	#, PL_savestack_ix.469
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.469, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13292
	leaq	(%rcx,%rax), %rdx	#, D.13293
	movq	-8(%rbp), %rax	# sv, tmp76
	movq	%rax, (%rdx)	# tmp76, _10->any_ptr
	.loc 1 539 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.470
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.471
	leal	1(%rax), %edx	#, PL_savestack_ix.473
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.473, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13292
	addq	%rcx, %rax	# PL_savestack.470, D.13293
	movl	$15, (%rax)	#, _18->any_i32
	.loc 1 540 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_save_freesv, .-Perl_save_freesv
	.globl	Perl_save_mortalizesv
	.type	Perl_save_mortalizesv, @function
Perl_save_mortalizesv:
.LFB40:
	.loc 1 544 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 545 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.474
	leal	2(%rax), %edx	#, D.13294
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.475
	cmpl	%eax, %edx	# PL_savestack_max.475, D.13294
	jle	.L124	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L124:
	.loc 1 546 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.476
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.477
	leal	1(%rax), %edx	#, PL_savestack_ix.479
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.479, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13295
	leaq	(%rcx,%rax), %rdx	#, D.13296
	movq	-8(%rbp), %rax	# sv, tmp76
	movq	%rax, (%rdx)	# tmp76, _10->any_ptr
	.loc 1 547 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.480
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.481
	leal	1(%rax), %edx	#, PL_savestack_ix.483
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.483, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13295
	addq	%rcx, %rax	# PL_savestack.480, D.13296
	movl	$36, (%rax)	#, _18->any_i32
	.loc 1 548 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_save_mortalizesv, .-Perl_save_mortalizesv
	.globl	Perl_save_freeop
	.type	Perl_save_freeop, @function
Perl_save_freeop:
.LFB41:
	.loc 1 552 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# o, o
	.loc 1 553 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.484
	leal	2(%rax), %edx	#, D.13297
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.485
	cmpl	%eax, %edx	# PL_savestack_max.485, D.13297
	jle	.L126	#,
	.loc 1 553 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L126:
	.loc 1 554 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.486
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.487
	leal	1(%rax), %edx	#, PL_savestack_ix.489
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.489, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13298
	leaq	(%rcx,%rax), %rdx	#, D.13299
	movq	-8(%rbp), %rax	# o, tmp76
	movq	%rax, (%rdx)	# tmp76, _10->any_ptr
	.loc 1 555 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.490
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.491
	leal	1(%rax), %edx	#, PL_savestack_ix.493
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.493, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13298
	addq	%rcx, %rax	# PL_savestack.490, D.13299
	movl	$16, (%rax)	#, _18->any_i32
	.loc 1 556 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_save_freeop, .-Perl_save_freeop
	.globl	Perl_save_freepv
	.type	Perl_save_freepv, @function
Perl_save_freepv:
.LFB42:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pv, pv
	.loc 1 561 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.494
	leal	2(%rax), %edx	#, D.13300
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.495
	cmpl	%eax, %edx	# PL_savestack_max.495, D.13300
	jle	.L128	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L128:
	.loc 1 562 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.496
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.497
	leal	1(%rax), %edx	#, PL_savestack_ix.499
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.499, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13301
	leaq	(%rcx,%rax), %rdx	#, D.13302
	movq	-8(%rbp), %rax	# pv, tmp76
	movq	%rax, (%rdx)	# tmp76, _10->any_ptr
	.loc 1 563 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.500
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.501
	leal	1(%rax), %edx	#, PL_savestack_ix.503
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.503, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13301
	addq	%rcx, %rax	# PL_savestack.500, D.13302
	movl	$17, (%rax)	#, _18->any_i32
	.loc 1 564 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_save_freepv, .-Perl_save_freepv
	.globl	Perl_save_clearsv
	.type	Perl_save_clearsv, @function
Perl_save_clearsv:
.LFB43:
	.loc 1 568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# svp, svp
	.loc 1 570 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.504
	leal	2(%rax), %edx	#, D.13303
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.505
	cmpl	%eax, %edx	# PL_savestack_max.505, D.13303
	jle	.L130	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L130:
	.loc 1 571 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.506
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.507
	leal	1(%rax), %edx	#, PL_savestack_ix.509
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.509, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13304
	leaq	(%rcx,%rax), %rdx	#, D.13305
	movq	-8(%rbp), %rcx	# svp, svp.510
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.511
	subq	%rax, %rcx	# PL_curpad.512, D.13306
	movq	%rcx, %rax	# D.13306, D.13306
	sarq	$3, %rax	#, tmp81
	movq	%rax, (%rdx)	# D.13306, _10->any_long
	.loc 1 572 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.513
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.514
	leal	1(%rax), %edx	#, PL_savestack_ix.516
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.516, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13304
	addq	%rcx, %rax	# PL_savestack.513, D.13305
	movl	$18, (%rax)	#, _23->any_i32
	.loc 1 573 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_save_clearsv, .-Perl_save_clearsv
	.globl	Perl_save_delete
	.type	Perl_save_delete, @function
Perl_save_delete:
.LFB44:
	.loc 1 577 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# key, key
	movl	%edx, -20(%rbp)	# klen, klen
	.loc 1 578 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.517
	leal	4(%rax), %edx	#, D.13307
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.518
	cmpl	%eax, %edx	# PL_savestack_max.518, D.13307
	jle	.L132	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L132:
	.loc 1 579 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.519
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.520
	leal	1(%rax), %edx	#, PL_savestack_ix.522
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.522, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13308
	leaq	(%rcx,%rax), %rdx	#, D.13309
	movl	-20(%rbp), %eax	# klen, tmp98
	movl	%eax, (%rdx)	# tmp98, _10->any_i32
	.loc 1 580 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.523
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.524
	leal	1(%rax), %edx	#, PL_savestack_ix.526
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.526, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13308
	leaq	(%rcx,%rax), %rdx	#, D.13309
	movq	-16(%rbp), %rax	# key, tmp99
	movq	%rax, (%rdx)	# tmp99, _18->any_ptr
	.loc 1 581 0
	movq	-8(%rbp), %rax	# hv, tmp100
	movq	%rax, PL_Sv(%rip)	# tmp100, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.528
	testq	%rax, %rax	# PL_Sv.528
	je	.L134	#,
	.loc 1 581 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.529
	movl	8(%rax), %edx	# PL_Sv.529_22->sv_refcnt, D.13310
	addl	$1, %edx	#, D.13310
	movl	%edx, 8(%rax)	# D.13310, PL_Sv.529_22->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.529_22->sv_refcnt, D.13310
	testl	%eax, %eax	# D.13310
	je	.L134	#,
	.loc 1 581 0
	nop
.L134:
	.loc 1 581 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.530
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.531
	leal	1(%rax), %edx	#, PL_savestack_ix.533
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.533, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13308
	leaq	(%rcx,%rax), %rdx	#, D.13309
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.534
	movq	%rax, (%rdx)	# PL_Sv.534, _34->any_ptr
	.loc 1 582 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.535
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.536
	leal	1(%rax), %edx	#, PL_savestack_ix.538
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.538, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13308
	addq	%rcx, %rax	# PL_savestack.535, D.13309
	movl	$19, (%rax)	#, _42->any_i32
	.loc 1 583 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_save_delete, .-Perl_save_delete
	.globl	Perl_save_list
	.type	Perl_save_list, @function
Perl_save_list:
.LFB45:
	.loc 1 587 0
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
	movq	%rdi, %r13	# sarg, sarg
	movl	%esi, -36(%rbp)	# maxsarg, maxsarg
	.loc 1 591 0
	movl	$1, %ebx	#, i
	jmp	.L136	#
.L138:
	.loc 1 592 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %r12	#, sv
	.loc 1 593 0
	movslq	%ebx, %rax	# i, D.13311
	salq	$3, %rax	#, D.13311
	addq	%r13, %rax	# sarg, D.13312
	movq	(%rax), %rax	# *_8, D.13313
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.13313,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	.loc 1 594 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.539
	leal	3(%rax), %edx	#, D.13314
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.540
	cmpl	%eax, %edx	# PL_savestack_max.540, D.13314
	jle	.L137	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L137:
	.loc 1 595 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.541
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.542
	leal	1(%rax), %edx	#, PL_savestack_ix.544
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.544, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13311
	leaq	(%rcx,%rax), %rdx	#, D.13315
	movslq	%ebx, %rax	# i, D.13311
	salq	$3, %rax	#, D.13311
	addq	%r13, %rax	# sarg, D.13312
	movq	(%rax), %rax	# *_22, D.13313
	movq	%rax, (%rdx)	# D.13313, _19->any_ptr
	.loc 1 596 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.545
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.546
	leal	1(%rax), %edx	#, PL_savestack_ix.548
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.548, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13311
	addq	%rcx, %rax	# PL_savestack.545, D.13315
	movq	%r12, (%rax)	# sv, _30->any_ptr
	.loc 1 597 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.549
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.550
	leal	1(%rax), %edx	#, PL_savestack_ix.552
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.552, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13311
	addq	%rcx, %rax	# PL_savestack.549, D.13315
	movl	$0, (%rax)	#, _37->any_i32
	.loc 1 591 0
	addl	$1, %ebx	#, i
.L136:
	.loc 1 591 0 is_stmt 0 discriminator 1
	cmpl	-36(%rbp), %ebx	# maxsarg, i
	jle	.L138	#,
	.loc 1 599 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_save_list, .-Perl_save_list
	.globl	Perl_save_destructor
	.type	Perl_save_destructor, @function
Perl_save_destructor:
.LFB46:
	.loc 1 603 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# p, p
	.loc 1 604 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.553
	leal	3(%rax), %edx	#, D.13316
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.554
	cmpl	%eax, %edx	# PL_savestack_max.554, D.13316
	jle	.L140	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L140:
	.loc 1 605 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.555
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.556
	leal	1(%rax), %edx	#, PL_savestack_ix.558
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.558, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13317
	leaq	(%rcx,%rax), %rdx	#, D.13318
	movq	-8(%rbp), %rax	# f, tmp83
	movq	%rax, (%rdx)	# tmp83, _10->any_dptr
	.loc 1 606 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.559
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.560
	leal	1(%rax), %edx	#, PL_savestack_ix.562
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.562, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13317
	leaq	(%rcx,%rax), %rdx	#, D.13318
	movq	-16(%rbp), %rax	# p, tmp84
	movq	%rax, (%rdx)	# tmp84, _18->any_ptr
	.loc 1 607 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.563
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.564
	leal	1(%rax), %edx	#, PL_savestack_ix.566
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.566, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13317
	addq	%rcx, %rax	# PL_savestack.563, D.13318
	movl	$20, (%rax)	#, _26->any_i32
	.loc 1 608 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_save_destructor, .-Perl_save_destructor
	.globl	Perl_save_destructor_x
	.type	Perl_save_destructor_x, @function
Perl_save_destructor_x:
.LFB47:
	.loc 1 612 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# p, p
	.loc 1 613 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.567
	leal	3(%rax), %edx	#, D.13319
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.568
	cmpl	%eax, %edx	# PL_savestack_max.568, D.13319
	jle	.L142	#,
	.loc 1 613 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L142:
	.loc 1 614 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.569
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.570
	leal	1(%rax), %edx	#, PL_savestack_ix.572
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.572, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13320
	leaq	(%rcx,%rax), %rdx	#, D.13321
	movq	-8(%rbp), %rax	# f, tmp83
	movq	%rax, (%rdx)	# tmp83, _10->any_dxptr
	.loc 1 615 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.573
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.574
	leal	1(%rax), %edx	#, PL_savestack_ix.576
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.576, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13320
	leaq	(%rcx,%rax), %rdx	#, D.13321
	movq	-16(%rbp), %rax	# p, tmp84
	movq	%rax, (%rdx)	# tmp84, _18->any_ptr
	.loc 1 616 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.577
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.578
	leal	1(%rax), %edx	#, PL_savestack_ix.580
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.580, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13320
	addq	%rcx, %rax	# PL_savestack.577, D.13321
	movl	$30, (%rax)	#, _26->any_i32
	.loc 1 617 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_save_destructor_x, .-Perl_save_destructor_x
	.globl	Perl_save_aelem
	.type	Perl_save_aelem, @function
Perl_save_aelem:
.LFB48:
	.loc 1 621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	movl	%esi, -28(%rbp)	# idx, idx
	movq	%rdx, -40(%rbp)	# sptr, sptr
	.loc 1 623 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.581
	leal	4(%rax), %edx	#, D.13322
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.582
	cmpl	%eax, %edx	# PL_savestack_max.582, D.13322
	jle	.L144	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L144:
	.loc 1 624 0 is_stmt 1
	movq	-24(%rbp), %rax	# av, tmp126
	movq	%rax, PL_Sv(%rip)	# tmp126, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.584
	testq	%rax, %rax	# PL_Sv.584
	je	.L146	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.585
	movl	8(%rax), %edx	# PL_Sv.585_6->sv_refcnt, D.13323
	addl	$1, %edx	#, D.13323
	movl	%edx, 8(%rax)	# D.13323, PL_Sv.585_6->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.585_6->sv_refcnt, D.13323
	testl	%eax, %eax	# D.13323
	je	.L146	#,
	.loc 1 624 0
	nop
.L146:
	.loc 1 624 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.586
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.587
	leal	1(%rax), %edx	#, PL_savestack_ix.589
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.589, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13324
	leaq	(%rcx,%rax), %rdx	#, D.13325
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.590
	movq	%rax, (%rdx)	# PL_Sv.590, _18->any_ptr
	.loc 1 625 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.591
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.592
	leal	1(%rax), %edx	#, PL_savestack_ix.594
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.594, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13324
	leaq	(%rcx,%rax), %rdx	#, D.13325
	movl	-28(%rbp), %eax	# idx, tmp127
	movl	%eax, (%rdx)	# tmp127, _26->any_i32
	.loc 1 626 0 discriminator 4
	movq	-40(%rbp), %rax	# sptr, tmp128
	movq	(%rax), %rax	# *sptr_28(D), PL_Sv.595
	movq	%rax, PL_Sv(%rip)	# PL_Sv.595, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.597
	testq	%rax, %rax	# PL_Sv.597
	je	.L148	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.598
	movl	8(%rax), %edx	# PL_Sv.598_31->sv_refcnt, D.13323
	addl	$1, %edx	#, D.13323
	movl	%edx, 8(%rax)	# D.13323, PL_Sv.598_31->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.598_31->sv_refcnt, D.13323
	testl	%eax, %eax	# D.13323
	je	.L148	#,
	.loc 1 626 0
	nop
.L148:
	.loc 1 626 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.599
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.600
	leal	1(%rax), %edx	#, PL_savestack_ix.602
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.602, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13324
	leaq	(%rcx,%rax), %rdx	#, D.13325
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.603
	movq	%rax, (%rdx)	# PL_Sv.603, _43->any_ptr
	.loc 1 627 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.604
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.605
	leal	1(%rax), %edx	#, PL_savestack_ix.607
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.607, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13324
	addq	%rcx, %rax	# PL_savestack.604, D.13325
	movl	$24, (%rax)	#, _51->any_i32
	.loc 1 629 0 discriminator 4
	movq	-24(%rbp), %rax	# av, tmp129
	movq	(%rax), %rax	# av_4(D)->sv_any, D.13326
	movzbl	72(%rax), %eax	# _52->xav_flags, D.13327
	movzbl	%al, %eax	# D.13327, D.13322
	andl	$1, %eax	#, D.13322
	testl	%eax, %eax	# D.13322
	jne	.L149	#,
	.loc 1 629 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# av, tmp130
	movq	(%rax), %rax	# av_4(D)->sv_any, D.13326
	movzbl	72(%rax), %eax	# _56->xav_flags, D.13327
	movzbl	%al, %eax	# D.13327, D.13322
	andl	$2, %eax	#, D.13322
	testl	%eax, %eax	# D.13322
	je	.L149	#,
	.loc 1 630 0 is_stmt 1
	movq	-40(%rbp), %rax	# sptr, tmp131
	movq	(%rax), %rax	# *sptr_28(D), PL_Sv.608
	movq	%rax, PL_Sv(%rip)	# PL_Sv.608, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.610
	testq	%rax, %rax	# PL_Sv.610
	je	.L149	#,
	.loc 1 630 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.611
	movl	8(%rax), %edx	# PL_Sv.611_62->sv_refcnt, D.13323
	addl	$1, %edx	#, D.13323
	movl	%edx, 8(%rax)	# D.13323, PL_Sv.611_62->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.611_62->sv_refcnt, D.13323
	testl	%eax, %eax	# D.13323
	je	.L149	#,
	.loc 1 630 0
	nop
.L149:
	.loc 1 631 0 is_stmt 1
	movq	-40(%rbp), %rax	# sptr, tmp132
	movq	%rax, %rdi	# tmp132,
	call	S_save_scalar_at	#
	.loc 1 632 0
	movq	-40(%rbp), %rax	# sptr, tmp133
	movq	(%rax), %rax	# *sptr_28(D), tmp134
	movq	%rax, -8(%rbp)	# tmp134, sv
	.loc 1 637 0
	movq	-8(%rbp), %rax	# sv, tmp135
	movl	12(%rax), %eax	# sv_68->sv_flags, D.13323
	andl	$32768, %eax	#, D.13323
	testl	%eax, %eax	# D.13323
	je	.L143	#,
	.loc 1 637 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp136
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13328
	je	.L143	#,
	.loc 1 638 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp137
	movq	%rax, %rdi	# tmp137,
	call	Perl_sv_2mortal	#
.L143:
	.loc 1 639 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	Perl_save_aelem, .-Perl_save_aelem
	.globl	Perl_save_helem
	.type	Perl_save_helem, @function
Perl_save_helem:
.LFB49:
	.loc 1 643 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# sptr, sptr
	.loc 1 645 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.612
	leal	4(%rax), %edx	#, D.13329
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.613
	cmpl	%eax, %edx	# PL_savestack_max.613, D.13329
	jle	.L153	#,
	.loc 1 645 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L153:
	.loc 1 646 0 is_stmt 1
	movq	-24(%rbp), %rax	# hv, tmp118
	movq	%rax, PL_Sv(%rip)	# tmp118, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.615
	testq	%rax, %rax	# PL_Sv.615
	je	.L155	#,
	.loc 1 646 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.616
	movl	8(%rax), %edx	# PL_Sv.616_6->sv_refcnt, D.13330
	addl	$1, %edx	#, D.13330
	movl	%edx, 8(%rax)	# D.13330, PL_Sv.616_6->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.616_6->sv_refcnt, D.13330
	testl	%eax, %eax	# D.13330
	je	.L155	#,
	.loc 1 646 0
	nop
.L155:
	.loc 1 646 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.617
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.618
	leal	1(%rax), %edx	#, PL_savestack_ix.620
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.620, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13331
	leaq	(%rcx,%rax), %rdx	#, D.13332
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.621
	movq	%rax, (%rdx)	# PL_Sv.621, _18->any_ptr
	.loc 1 647 0 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax	# key, tmp119
	movq	%rax, PL_Sv(%rip)	# tmp119, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.623
	testq	%rax, %rax	# PL_Sv.623
	je	.L157	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.624
	movl	8(%rax), %edx	# PL_Sv.624_22->sv_refcnt, D.13330
	addl	$1, %edx	#, D.13330
	movl	%edx, 8(%rax)	# D.13330, PL_Sv.624_22->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.624_22->sv_refcnt, D.13330
	testl	%eax, %eax	# D.13330
	je	.L157	#,
	.loc 1 647 0
	nop
.L157:
	.loc 1 647 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.625
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.626
	leal	1(%rax), %edx	#, PL_savestack_ix.628
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.628, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13331
	leaq	(%rcx,%rax), %rdx	#, D.13332
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.629
	movq	%rax, (%rdx)	# PL_Sv.629, _34->any_ptr
	.loc 1 648 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax	# sptr, tmp120
	movq	(%rax), %rax	# *sptr_36(D), PL_Sv.630
	movq	%rax, PL_Sv(%rip)	# PL_Sv.630, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.632
	testq	%rax, %rax	# PL_Sv.632
	je	.L159	#,
	.loc 1 648 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.633
	movl	8(%rax), %edx	# PL_Sv.633_39->sv_refcnt, D.13330
	addl	$1, %edx	#, D.13330
	movl	%edx, 8(%rax)	# D.13330, PL_Sv.633_39->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.633_39->sv_refcnt, D.13330
	testl	%eax, %eax	# D.13330
	je	.L159	#,
	.loc 1 648 0
	nop
.L159:
	.loc 1 648 0 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.634
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.635
	leal	1(%rax), %edx	#, PL_savestack_ix.637
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.637, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13331
	leaq	(%rcx,%rax), %rdx	#, D.13332
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.638
	movq	%rax, (%rdx)	# PL_Sv.638, _51->any_ptr
	.loc 1 649 0 is_stmt 1 discriminator 4
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.639
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.640
	leal	1(%rax), %edx	#, PL_savestack_ix.642
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.642, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13331
	addq	%rcx, %rax	# PL_savestack.639, D.13332
	movl	$25, (%rax)	#, _59->any_i32
	.loc 1 650 0 discriminator 4
	movq	-40(%rbp), %rax	# sptr, tmp121
	movq	%rax, %rdi	# tmp121,
	call	S_save_scalar_at	#
	.loc 1 651 0 discriminator 4
	movq	-40(%rbp), %rax	# sptr, tmp122
	movq	(%rax), %rax	# *sptr_36(D), tmp123
	movq	%rax, -8(%rbp)	# tmp123, sv
	.loc 1 656 0 discriminator 4
	movq	-8(%rbp), %rax	# sv, tmp124
	movl	12(%rax), %eax	# sv_60->sv_flags, D.13330
	andl	$32768, %eax	#, D.13330
	testl	%eax, %eax	# D.13330
	je	.L152	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp125
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13333
	je	.L152	#,
	.loc 1 657 0 is_stmt 1
	movq	-8(%rbp), %rax	# sv, tmp126
	movq	%rax, %rdi	# tmp126,
	call	Perl_sv_2mortal	#
.L152:
	.loc 1 658 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_save_helem, .-Perl_save_helem
	.globl	Perl_save_op
	.type	Perl_save_op, @function
Perl_save_op:
.LFB50:
	.loc 1 662 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 663 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.643
	leal	2(%rax), %edx	#, D.13334
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.644
	cmpl	%eax, %edx	# PL_savestack_max.644, D.13334
	jle	.L162	#,
	.loc 1 663 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L162:
	.loc 1 664 0 is_stmt 1
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.645
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.646
	leal	1(%rax), %edx	#, PL_savestack_ix.648
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.648, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13335
	leaq	(%rcx,%rax), %rdx	#, D.13336
	movq	PL_op(%rip), %rax	# PL_op, PL_op.649
	movq	%rax, (%rdx)	# PL_op.649, _10->any_ptr
	.loc 1 665 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.650
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.651
	leal	1(%rax), %edx	#, PL_savestack_ix.653
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.653, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13335
	addq	%rcx, %rax	# PL_savestack.650, D.13336
	movl	$26, (%rax)	#, _18->any_i32
	.loc 1 666 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_save_op, .-Perl_save_op
	.globl	Perl_save_alloc
	.type	Perl_save_alloc, @function
Perl_save_alloc:
.LFB51:
	.loc 1 670 0
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
	movl	%edi, -20(%rbp)	# size, size
	movl	%esi, -24(%rbp)	# pad, pad
	.loc 1 671 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.654
	cltq
	leal	0(,%rax,8), %edx	#, D.13338
	movl	-24(%rbp), %eax	# pad, pad.655
	addl	%edx, %eax	# D.13338, D.13338
	movl	%eax, %r12d	# D.13338, start
	.loc 1 673 0
	movl	-24(%rbp), %eax	# pad, tmp95
	movl	-20(%rbp), %edx	# size, tmp96
	addl	%edx, %eax	# tmp96, D.13339
	subl	$1, %eax	#, D.13339
	cltq
	shrq	$3, %rax	#, D.13337
	addl	$1, %eax	#, D.13338
	movl	%eax, %ebx	# D.13338, elems
	.loc 1 676 0
	jmp	.L164	#
.L165:
	.loc 1 677 0
	call	Perl_savestack_grow	#
.L164:
	.loc 1 676 0 discriminator 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.656
	addl	%ebx, %eax	# elems, D.13339
	leal	2(%rax), %edx	#, D.13339
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.657
	cmpl	%eax, %edx	# PL_savestack_max.657, D.13339
	jg	.L165	#,
	.loc 1 679 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.658
	addl	%ebx, %eax	# elems, PL_savestack_ix.659
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.659, PL_savestack_ix
	.loc 1 680 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.660
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.661
	leal	1(%rax), %edx	#, PL_savestack_ix.663
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.663, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13337
	addq	%rcx, %rax	# PL_savestack.660, D.13340
	movl	%ebx, (%rax)	# elems, _29->any_i32
	.loc 1 681 0
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.664
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.665
	leal	1(%rax), %edx	#, PL_savestack_ix.667
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.667, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.13337
	addq	%rcx, %rax	# PL_savestack.664, D.13340
	movl	$28, (%rax)	#, _36->any_i32
	.loc 1 682 0
	movl	%r12d, %eax	# start, D.13341
	.loc 1 683 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_save_alloc, .-Perl_save_alloc
	.section	.rodata
	.align 8
.LC2:
	.string	"panic: corrupt saved stack index"
.LC3:
	.string	"panic: leave_scope pad code"
	.align 8
.LC4:
	.string	"panic: leave_scope inconsistency"
	.text
	.globl	Perl_leave_scope
	.type	Perl_leave_scope, @function
Perl_leave_scope:
.LFB52:
	.loc 1 687 0
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
	movl	%edi, -100(%rbp)	# base, base
	.loc 1 697 0
	cmpl	$-1, -100(%rbp)	#, base
	jge	.L168	#,
	.loc 1 698 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 699 0
	jmp	.L169	#
.L168:
	jmp	.L169	#
.L259:
	.loc 1 700 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.668
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.669
	subl	$1, %edx	#, PL_savestack_ix.670
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.670, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.671
	movslq	%edx, %rdx	# PL_savestack_ix.671, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _12->any_i32, D.13344
	cmpl	$40, %eax	#, D.13344
	ja	.L170	#,
	movl	%eax, %eax	# D.13344, tmp847
	movq	.L172(,%rax,8), %rax	#, tmp848
	jmp	*%rax	# tmp848
	.section	.rodata
	.align 8
	.align 4
.L172:
	.quad	.L171
	.quad	.L173
	.quad	.L174
	.quad	.L175
	.quad	.L176
	.quad	.L177
	.quad	.L178
	.quad	.L179
	.quad	.L180
	.quad	.L181
	.quad	.L182
	.quad	.L183
	.quad	.L184
	.quad	.L185
	.quad	.L186
	.quad	.L187
	.quad	.L188
	.quad	.L189
	.quad	.L190
	.quad	.L191
	.quad	.L192
	.quad	.L193
	.quad	.L194
	.quad	.L195
	.quad	.L196
	.quad	.L197
	.quad	.L198
	.quad	.L199
	.quad	.L193
	.quad	.L200
	.quad	.L201
	.quad	.L183
	.quad	.L202
	.quad	.L203
	.quad	.L204
	.quad	.L205
	.quad	.L206
	.quad	.L207
	.quad	.L208
	.quad	.L170
	.quad	.L209
	.text
.L171:
	.loc 1 702 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.672
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.673
	subl	$1, %edx	#, PL_savestack_ix.674
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.674, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.675
	movslq	%edx, %rdx	# PL_savestack_ix.675, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _20->any_ptr, value
	.loc 1 703 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.676
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.677
	subl	$1, %edx	#, PL_savestack_ix.678
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.678, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.679
	movslq	%edx, %rdx	# PL_savestack_ix.679, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _28->any_ptr, sv
	.loc 1 704 0
	movq	%r13, %rsi	# value,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_replace	#
	.loc 1 705 0
	movl	$2, PL_localizing(%rip)	#, PL_localizing
	.loc 1 706 0
	movl	12(%r12), %eax	# sv_29->sv_flags, D.13345
	andl	$16384, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L210	#,
	.loc 1 706 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# sv,
	call	Perl_mg_set	#
.L210:
	.loc 1 707 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
	.loc 1 708 0
	jmp	.L169	#
.L173:
	.loc 1 710 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.680
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.681
	subl	$1, %edx	#, PL_savestack_ix.682
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.682, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.683
	movslq	%edx, %rdx	# PL_savestack_ix.683, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _38->any_ptr, value
	.loc 1 711 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.684
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.685
	subl	$1, %edx	#, PL_savestack_ix.686
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.686, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.687
	movslq	%edx, %rdx	# PL_savestack_ix.687, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _46->any_ptr, gv
	.loc 1 712 0
	movq	(%r12), %rax	# gv_47->sv_any, D.13346
	movq	56(%rax), %rax	# _48->xgv_gp, D.13347
	movq	%rax, %rbx	# D.13347, ptr
	.loc 1 713 0
	movq	%r12, %r14	# gv, av
	.loc 1 714 0
	jmp	.L211	#
.L204:
	.loc 1 716 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.688
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.689
	subl	$1, %edx	#, PL_savestack_ix.690
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.690, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.691
	movslq	%edx, %rdx	# PL_savestack_ix.691, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _58->any_ptr, str
	.loc 1 717 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.692
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.693
	subl	$1, %edx	#, PL_savestack_ix.694
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.694, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.695
	movslq	%edx, %rdx	# PL_savestack_ix.695, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _66->any_ptr, ptr
	.loc 1 718 0
	movq	(%rbx), %rax	# MEM[(char * *)ptr_67], D.13348
	cmpq	%r12, %rax	# str, D.13348
	je	.L212	#,
	.loc 1 719 0
	movq	(%rbx), %rax	# MEM[(char * *)ptr_67], D.13348
	movq	%rax, %rdi	# D.13348,
	call	Perl_safesysfree	#
	.loc 1 720 0
	movq	%r12, (%rbx)	# str, MEM[(char * *)ptr_67]
	.loc 1 722 0
	jmp	.L169	#
.L212:
	jmp	.L169	#
.L207:
	.loc 1 724 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.696
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.697
	subl	$1, %edx	#, PL_savestack_ix.698
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.698, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.699
	movslq	%edx, %rdx	# PL_savestack_ix.699, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _76->any_ptr, str
	.loc 1 725 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.700
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.701
	subl	$1, %edx	#, PL_savestack_ix.702
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.702, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.703
	movslq	%edx, %rdx	# PL_savestack_ix.703, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _84->any_ptr, ptr
	.loc 1 726 0
	movq	(%rbx), %rax	# MEM[(char * *)ptr_85], D.13348
	cmpq	%r12, %rax	# str, D.13348
	je	.L213	#,
	.loc 1 730 0
	movq	(%rbx), %rax	# MEM[(char * *)ptr_85], D.13348
	movq	%rax, %rdi	# D.13348,
	call	free	#
	.loc 1 732 0
	movq	%r12, (%rbx)	# str, MEM[(char * *)ptr_85]
	.loc 1 734 0
	jmp	.L169	#
.L213:
	jmp	.L169	#
.L200:
	.loc 1 736 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.704
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.705
	subl	$1, %edx	#, PL_savestack_ix.706
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.706, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.707
	movslq	%edx, %rdx	# PL_savestack_ix.707, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _94->any_ptr, value
	.loc 1 737 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.708
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.709
	subl	$1, %edx	#, PL_savestack_ix.710
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.710, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.711
	movslq	%edx, %rdx	# PL_savestack_ix.711, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _102->any_ptr, ptr
	.loc 1 738 0
	movq	(%rbx), %r12	# MEM[(struct SV * *)ptr_103], sv
	.loc 1 739 0
	movq	%r13, (%rbx)	# value, MEM[(struct SV * *)ptr_103]
	.loc 1 740 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_free	#
	.loc 1 741 0
	movq	%r13, %rdi	# value,
	call	Perl_sv_free	#
	.loc 1 742 0
	jmp	.L169	#
.L185:
	.loc 1 744 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.712
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.713
	subl	$1, %edx	#, PL_savestack_ix.714
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.714, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.715
	movslq	%edx, %rdx	# PL_savestack_ix.715, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _111->any_ptr, value
	.loc 1 745 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.716
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.717
	subl	$1, %edx	#, PL_savestack_ix.718
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.718, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.719
	movslq	%edx, %rdx	# PL_savestack_ix.719, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _119->any_ptr, ptr
	.loc 1 746 0
	movl	$0, %r14d	#, av
.L211:
	.loc 1 748 0
	movq	(%rbx), %r12	# MEM[(struct SV * *)ptr_3], sv
	.loc 1 752 0
	movl	12(%r12), %eax	# sv_684->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	cmpl	$6, %eax	#, D.13345
	jbe	.L214	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# sv_684->sv_any, D.13358
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_687].xmg_magic, D.13351
	testq	%rax, %rax	# D.13351
	je	.L214	#,
	.loc 1 753 0 is_stmt 1 discriminator 1
	movl	12(%r12), %eax	# sv_684->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	.loc 1 752 0 discriminator 1
	cmpl	$13, %eax	#, D.13345
	je	.L214	#,
	.loc 1 755 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	movzbl	%al, %edx	# D.13345, D.13345
	movl	12(%r12), %eax	# sv_684->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	cmpl	%eax, %edx	# D.13345, D.13345
	jae	.L215	#,
	.loc 1 755 0 is_stmt 0 discriminator 2
	movl	12(%r12), %eax	# sv_684->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	movl	%eax, %esi	# D.13345,
	movq	%r13, %rdi	# value,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.13355
	je	.L217	#,
.L215:
	.loc 1 755 0 discriminator 1
	nop
.L217:
	.loc 1 756 0 is_stmt 1
	movq	0(%r13), %rax	# value_1->sv_any, D.13358
	movq	(%r12), %rdx	# sv_684->sv_any, D.13358
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_701].xmg_magic, D.13351
	movq	%rdx, 40(%rax)	# D.13351, MEM[(struct XPVMG *)_700].xmg_magic
	.loc 1 757 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	movl	12(%r12), %edx	# sv_684->sv_flags, D.13345
	andl	$57344, %edx	#, D.13345
	orl	%edx, %eax	# D.13345, D.13345
	movl	%eax, 12(%r13)	# D.13345, value_1->sv_flags
	.loc 1 758 0
	movl	12(%r12), %eax	# sv_684->sv_flags, D.13345
	andb	$31, %ah	#, D.13345
	movl	%eax, 12(%r12)	# D.13345, sv_684->sv_flags
	.loc 1 759 0
	movq	(%r12), %rax	# sv_684->sv_any, D.13358
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_709].xmg_magic
	jmp	.L218	#
.L214:
	.loc 1 766 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	cmpl	$6, %eax	#, D.13345
	jbe	.L218	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	0(%r13), %rax	# value_1->sv_any, D.13358
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_712].xmg_magic, D.13351
	testq	%rax, %rax	# D.13351
	je	.L218	#,
	.loc 1 767 0 is_stmt 1 discriminator 1
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	.loc 1 766 0 discriminator 1
	cmpl	$13, %eax	#, D.13345
	je	.L218	#,
	.loc 1 769 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	movl	12(%r13), %edx	# value_1->sv_flags, D.13345
	andl	$100663296, %edx	#, D.13345
	.loc 1 770 0
	shrl	$8, %edx	#, D.13345
	.loc 1 769 0
	orl	%edx, %eax	# D.13345, D.13345
	movl	%eax, 12(%r13)	# D.13345, value_1->sv_flags
	.loc 1 771 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	andb	$31, %ah	#, D.13345
	movl	%eax, 12(%r13)	# D.13345, value_1->sv_flags
	.loc 1 774 0
	movq	0(%r13), %rax	# value_1->sv_any, D.13358
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_723].xmg_magic
.L218:
	.loc 1 776 0
	movq	%r13, (%rbx)	# value, MEM[(struct SV * *)ptr_3]
	.loc 1 777 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_free	#
	.loc 1 778 0
	movl	$2, PL_localizing(%rip)	#, PL_localizing
	.loc 1 779 0
	movl	12(%r13), %eax	# value_1->sv_flags, D.13345
	andl	$16384, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L219	#,
	.loc 1 779 0 is_stmt 0 discriminator 1
	movq	%r13, %rdi	# value,
	call	Perl_mg_set	#
.L219:
	.loc 1 780 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
	.loc 1 781 0
	movq	%r13, %rdi	# value,
	call	Perl_sv_free	#
	.loc 1 782 0
	testq	%r14, %r14	# av
	je	.L220	#,
	.loc 1 783 0
	movq	%r14, %rdi	# av,
	call	Perl_sv_free	#
	.loc 1 784 0
	jmp	.L169	#
.L220:
	jmp	.L169	#
.L174:
	.loc 1 786 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.721
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.722
	subl	$1, %edx	#, PL_savestack_ix.723
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.723, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.724
	movslq	%edx, %rdx	# PL_savestack_ix.724, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r14	# _128->any_ptr, av
	.loc 1 787 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.725
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.726
	subl	$1, %edx	#, PL_savestack_ix.727
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.727, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.728
	movslq	%edx, %rdx	# PL_savestack_ix.728, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _136->any_ptr, gv
	.loc 1 788 0
	movq	(%r12), %rax	# gv_137->sv_any, D.13346
	movq	56(%rax), %rax	# _138->xgv_gp, D.13347
	movq	32(%rax), %rax	# _139->gp_av, D.13349
	testq	%rax, %rax	# D.13349
	je	.L221	#,
.LBB5:
	.loc 1 789 0
	movq	(%r12), %rax	# gv_137->sv_any, D.13346
	movq	56(%rax), %rax	# _141->xgv_gp, D.13347
	movq	32(%rax), %rax	# _142->gp_av, tmp849
	movq	%rax, -80(%rbp)	# tmp849, goner
	.loc 1 790 0
	movq	(%r14), %rax	# av_129->sv_any, D.13350
	movq	-80(%rbp), %rdx	# goner, tmp850
	movq	(%rdx), %rdx	# goner_143->sv_any, D.13350
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_145].xmg_magic, D.13351
	movq	%rdx, 40(%rax)	# D.13351, MEM[(struct XPVMG *)_144].xmg_magic
	.loc 1 791 0
	movl	12(%r14), %edx	# MEM[(struct SV *)av_129].sv_flags, D.13345
	movq	-80(%rbp), %rax	# goner, tmp851
	movl	12(%rax), %eax	# goner_143->sv_flags, D.13345
	andl	$57344, %eax	#, D.13345
	orl	%edx, %eax	# D.13345, D.13345
	movl	%eax, 12(%r14)	# D.13345, MEM[(struct SV *)av_129].sv_flags
	.loc 1 792 0
	movq	-80(%rbp), %rax	# goner, tmp852
	movl	12(%rax), %eax	# goner_143->sv_flags, D.13345
	andb	$31, %ah	#, D.13345
	movl	%eax, %edx	# D.13345, D.13345
	movq	-80(%rbp), %rax	# goner, tmp853
	movl	%edx, 12(%rax)	# D.13345, goner_143->sv_flags
	.loc 1 793 0
	movq	-80(%rbp), %rax	# goner, tmp854
	movq	(%rax), %rax	# goner_143->sv_any, D.13350
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_153].xmg_magic
	.loc 1 794 0
	movq	-80(%rbp), %rax	# goner, tmp855
	movq	%rax, %rdi	# tmp855,
	call	Perl_sv_free	#
.L221:
.LBE5:
	.loc 1 796 0
	movq	(%r12), %rax	# gv_137->sv_any, D.13346
	movq	56(%rax), %rax	# _154->xgv_gp, D.13347
	movq	%r14, 32(%rax)	# av, _155->gp_av
	.loc 1 797 0
	movl	12(%r14), %eax	# av_129->sv_flags, D.13345
	andl	$57344, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L222	#,
	.loc 1 798 0
	movl	$2, PL_localizing(%rip)	#, PL_localizing
	.loc 1 799 0
	movl	12(%r14), %eax	# MEM[(struct SV *)av_129].sv_flags, D.13345
	andl	$16384, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L223	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	movq	%r14, %rdi	# av,
	call	Perl_mg_set	#
.L223:
	.loc 1 800 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
	.loc 1 802 0
	jmp	.L169	#
.L222:
	jmp	.L169	#
.L175:
	.loc 1 804 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.729
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.730
	subl	$1, %edx	#, PL_savestack_ix.731
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.731, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.732
	movslq	%edx, %rdx	# PL_savestack_ix.732, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r14	# _166->any_ptr, hv
	.loc 1 805 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.733
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.734
	subl	$1, %edx	#, PL_savestack_ix.735
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.735, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.736
	movslq	%edx, %rdx	# PL_savestack_ix.736, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _174->any_ptr, gv
	.loc 1 806 0
	movq	(%r12), %rax	# gv_175->sv_any, D.13346
	movq	56(%rax), %rax	# _176->xgv_gp, D.13347
	movq	40(%rax), %rax	# _177->gp_hv, D.13352
	testq	%rax, %rax	# D.13352
	je	.L224	#,
.LBB6:
	.loc 1 807 0
	movq	(%r12), %rax	# gv_175->sv_any, D.13346
	movq	56(%rax), %rax	# _179->xgv_gp, D.13347
	movq	40(%rax), %rax	# _180->gp_hv, tmp856
	movq	%rax, -72(%rbp)	# tmp856, goner
	.loc 1 808 0
	movq	(%r14), %rax	# hv_167->sv_any, D.13353
	movq	-72(%rbp), %rdx	# goner, tmp857
	movq	(%rdx), %rdx	# goner_181->sv_any, D.13353
	movq	40(%rdx), %rdx	# MEM[(struct XPVMG *)_183].xmg_magic, D.13351
	movq	%rdx, 40(%rax)	# D.13351, MEM[(struct XPVMG *)_182].xmg_magic
	.loc 1 809 0
	movl	12(%r14), %edx	# hv_167->sv_flags, D.13345
	movq	-72(%rbp), %rax	# goner, tmp858
	movl	12(%rax), %eax	# goner_181->sv_flags, D.13345
	andl	$57344, %eax	#, D.13345
	orl	%edx, %eax	# D.13345, D.13345
	movl	%eax, 12(%r14)	# D.13345, hv_167->sv_flags
	.loc 1 810 0
	movq	-72(%rbp), %rax	# goner, tmp859
	movl	12(%rax), %eax	# goner_181->sv_flags, D.13345
	andb	$31, %ah	#, D.13345
	movl	%eax, %edx	# D.13345, D.13345
	movq	-72(%rbp), %rax	# goner, tmp860
	movl	%edx, 12(%rax)	# D.13345, goner_181->sv_flags
	.loc 1 811 0
	movq	-72(%rbp), %rax	# goner, tmp861
	movq	(%rax), %rax	# goner_181->sv_any, D.13353
	movq	$0, 40(%rax)	#, MEM[(struct XPVMG *)_191].xmg_magic
	.loc 1 812 0
	movq	-72(%rbp), %rax	# goner, tmp862
	movq	%rax, %rdi	# tmp862,
	call	Perl_sv_free	#
.L224:
.LBE6:
	.loc 1 814 0
	movq	(%r12), %rax	# gv_175->sv_any, D.13346
	movq	56(%rax), %rax	# _192->xgv_gp, D.13347
	movq	%r14, 40(%rax)	# hv, _193->gp_hv
	.loc 1 815 0
	movl	12(%r14), %eax	# hv_167->sv_flags, D.13345
	andl	$57344, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L225	#,
	.loc 1 816 0
	movl	$2, PL_localizing(%rip)	#, PL_localizing
	.loc 1 817 0
	movl	12(%r14), %eax	# MEM[(struct SV *)hv_167].sv_flags, D.13345
	andl	$16384, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L226	#,
	.loc 1 817 0 is_stmt 0 discriminator 1
	movq	%r14, %rdi	# hv,
	call	Perl_mg_set	#
.L226:
	.loc 1 818 0 is_stmt 1
	movl	$0, PL_localizing(%rip)	#, PL_localizing
	.loc 1 820 0
	jmp	.L169	#
.L225:
	jmp	.L169	#
.L176:
	.loc 1 822 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.737
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.738
	subl	$1, %edx	#, PL_savestack_ix.739
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.739, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.740
	movslq	%edx, %rdx	# PL_savestack_ix.740, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _204->any_ptr, ptr
	.loc 1 823 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.741
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.742
	subl	$1, %edx	#, PL_savestack_ix.743
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.743, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.744
	movslq	%edx, %rdx	# PL_savestack_ix.744, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _212->any_i32, D.13344
	movl	%eax, (%rbx)	# D.13344, MEM[(int *)ptr_205]
	.loc 1 824 0
	jmp	.L169	#
.L177:
	.loc 1 826 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.745
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.746
	subl	$1, %edx	#, PL_savestack_ix.747
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.747, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.748
	movslq	%edx, %rdx	# PL_savestack_ix.748, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _220->any_ptr, ptr
	.loc 1 827 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.749
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.750
	subl	$1, %edx	#, PL_savestack_ix.751
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.751, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.752
	movslq	%edx, %rdx	# PL_savestack_ix.752, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _228->any_long, D.13354
	movq	%rax, (%rbx)	# D.13354, MEM[(long int *)ptr_221]
	.loc 1 828 0
	jmp	.L169	#
.L208:
	.loc 1 830 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.753
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.754
	subl	$1, %edx	#, PL_savestack_ix.755
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.755, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.756
	movslq	%edx, %rdx	# PL_savestack_ix.756, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _236->any_ptr, ptr
	.loc 1 831 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.757
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.758
	subl	$1, %edx	#, PL_savestack_ix.759
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.759, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.760
	movslq	%edx, %rdx	# PL_savestack_ix.760, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movzbl	(%rax), %eax	# _244->any_bool, D.13355
	movb	%al, (%rbx)	# D.13355, MEM[(char *)ptr_237]
	.loc 1 832 0
	jmp	.L169	#
.L178:
	.loc 1 834 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.761
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.762
	subl	$1, %edx	#, PL_savestack_ix.763
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.763, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.764
	movslq	%edx, %rdx	# PL_savestack_ix.764, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _252->any_ptr, ptr
	.loc 1 835 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.765
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.766
	subl	$1, %edx	#, PL_savestack_ix.767
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.767, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.768
	movslq	%edx, %rdx	# PL_savestack_ix.768, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _260->any_i32, D.13344
	movl	%eax, (%rbx)	# D.13344, MEM[(I32 *)ptr_253]
	.loc 1 836 0
	jmp	.L169	#
.L195:
	.loc 1 838 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.769
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.770
	subl	$1, %edx	#, PL_savestack_ix.771
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.771, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.772
	movslq	%edx, %rdx	# PL_savestack_ix.772, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _268->any_ptr, ptr
	.loc 1 839 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.773
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.774
	subl	$1, %edx	#, PL_savestack_ix.775
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.775, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.776
	movslq	%edx, %rdx	# PL_savestack_ix.776, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _276->any_i32, D.13344
	movw	%ax, (%rbx)	# D.13356, MEM[(I16 *)ptr_269]
	.loc 1 840 0
	jmp	.L169	#
.L202:
	.loc 1 842 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.777
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.778
	subl	$1, %edx	#, PL_savestack_ix.779
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.779, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.780
	movslq	%edx, %rdx	# PL_savestack_ix.780, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _285->any_ptr, ptr
	.loc 1 843 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.781
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.782
	subl	$1, %edx	#, PL_savestack_ix.783
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.783, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.784
	movslq	%edx, %rdx	# PL_savestack_ix.784, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _293->any_i32, D.13344
	movb	%al, (%rbx)	# D.13357, MEM[(I8 *)ptr_286]
	.loc 1 844 0
	jmp	.L169	#
.L179:
	.loc 1 846 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.785
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.786
	subl	$1, %edx	#, PL_savestack_ix.787
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.787, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.788
	movslq	%edx, %rdx	# PL_savestack_ix.788, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _302->any_ptr, ptr
	.loc 1 847 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.789
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.790
	subl	$1, %edx	#, PL_savestack_ix.791
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.791, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.792
	movslq	%edx, %rdx	# PL_savestack_ix.792, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _310->any_iv, D.13354
	movq	%rax, (%rbx)	# D.13354, MEM[(IV *)ptr_303]
	.loc 1 848 0
	jmp	.L169	#
.L180:
	.loc 1 850 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.793
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.794
	subl	$1, %edx	#, PL_savestack_ix.795
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.795, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.796
	movslq	%edx, %rdx	# PL_savestack_ix.796, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _318->any_ptr, ptr
	.loc 1 851 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.797
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.798
	subl	$1, %edx	#, PL_savestack_ix.799
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.799, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.800
	movslq	%edx, %rdx	# PL_savestack_ix.800, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _326->any_ptr, D.13358
	movq	%rax, (%rbx)	# D.13358, MEM[(struct SV * *)ptr_319]
	.loc 1 852 0
	jmp	.L169	#
.L183:
	.loc 1 855 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.801
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.802
	subl	$1, %edx	#, PL_savestack_ix.803
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.803, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.804
	movslq	%edx, %rdx	# PL_savestack_ix.804, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _334->any_ptr, ptr
	.loc 1 856 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.805
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.806
	subl	$1, %edx	#, PL_savestack_ix.807
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.807, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.808
	movslq	%edx, %rdx	# PL_savestack_ix.808, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _342->any_ptr, D.13358
	movq	%rax, (%rbx)	# D.13358, MEM[(char * *)ptr_335]
	.loc 1 857 0
	jmp	.L169	#
.L182:
	.loc 1 859 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.809
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.810
	subl	$1, %edx	#, PL_savestack_ix.811
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.811, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.812
	movslq	%edx, %rdx	# PL_savestack_ix.812, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _350->any_ptr, ptr
	.loc 1 860 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.813
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.814
	subl	$1, %edx	#, PL_savestack_ix.815
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.815, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.816
	movslq	%edx, %rdx	# PL_savestack_ix.816, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _358->any_ptr, D.13358
	movq	%rax, (%rbx)	# D.13358, MEM[(struct HV * *)ptr_351]
	.loc 1 861 0
	jmp	.L169	#
.L181:
	.loc 1 863 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.817
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.818
	subl	$1, %edx	#, PL_savestack_ix.819
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.819, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.820
	movslq	%edx, %rdx	# PL_savestack_ix.820, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _366->any_ptr, ptr
	.loc 1 864 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.821
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.822
	subl	$1, %edx	#, PL_savestack_ix.823
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.823, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.824
	movslq	%edx, %rdx	# PL_savestack_ix.824, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _374->any_ptr, D.13358
	movq	%rax, (%rbx)	# D.13358, MEM[(struct AV * *)ptr_367]
	.loc 1 865 0
	jmp	.L169	#
.L184:
	.loc 1 867 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.825
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.826
	subl	$1, %edx	#, PL_savestack_ix.827
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.827, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.828
	movslq	%edx, %rdx	# PL_savestack_ix.828, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _382->any_ptr, gv
	.loc 1 868 0
	movq	%r12, %rdi	# gv,
	call	Perl_sv_clear	#
	.loc 1 869 0
	jmp	.L169	#
.L186:
	.loc 1 871 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.829
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.830
	subl	$1, %edx	#, PL_savestack_ix.831
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.831, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.832
	movslq	%edx, %rdx	# PL_savestack_ix.832, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _390->any_ptr, ptr
	.loc 1 872 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.833
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.834
	subl	$1, %edx	#, PL_savestack_ix.835
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.835, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.836
	movslq	%edx, %rdx	# PL_savestack_ix.836, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _398->any_ptr, gv
	.loc 1 873 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	(%rax), %rax	# MEM[(struct XPV *)_400].xpv_pv, D.13348
	testq	%rax, %rax	# D.13348
	je	.L227	#,
	.loc 1 873 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	16(%rax), %rax	# MEM[(struct XPV *)_402].xpv_len, D.13342
	testq	%rax, %rax	# D.13342
	je	.L227	#,
	.loc 1 874 0 is_stmt 1
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	(%rax), %rax	# MEM[(struct XPV *)_404].xpv_pv, D.13348
	movq	%rax, %rdi	# D.13348,
	call	Perl_safesysfree	#
.L227:
	.loc 1 876 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.837
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.838
	subl	$1, %ecx	#, PL_savestack_ix.839
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.839, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.840
	movslq	%ecx, %rcx	# PL_savestack_ix.840, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movq	(%rdx), %rdx	# _413->any_ptr, D.13358
	movq	%rdx, (%rax)	# D.13358, MEM[(struct XPV *)_406].xpv_pv
	.loc 1 877 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.841
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.842
	subl	$1, %ecx	#, PL_savestack_ix.843
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.843, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.844
	movslq	%ecx, %rcx	# PL_savestack_ix.844, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movq	(%rdx), %rdx	# _422->any_iv, D.13354
	movq	%rdx, 8(%rax)	# D.13342, MEM[(struct XPV *)_415].xpv_cur
	.loc 1 878 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.845
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.846
	subl	$1, %ecx	#, PL_savestack_ix.847
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.847, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.848
	movslq	%ecx, %rcx	# PL_savestack_ix.848, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movq	(%rdx), %rdx	# _432->any_iv, D.13354
	movq	%rdx, 16(%rax)	# D.13342, MEM[(struct XPV *)_425].xpv_len
	.loc 1 879 0
	movq	%r12, %rdi	# gv,
	call	Perl_gp_free	#
	.loc 1 880 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	%rbx, 56(%rax)	# ptr, _435->xgv_gp
	.loc 1 881 0
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	56(%rax), %rax	# _436->xgv_gp, D.13347
	movl	64(%rax), %eax	# _437->gp_cvgen, D.13345
	testl	%eax, %eax	# D.13345
	jne	.L228	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# gv_399->sv_any, D.13346
	movq	56(%rax), %rax	# _439->xgv_gp, D.13347
	movq	56(%rax), %rax	# _440->gp_cv, D.13359
	testq	%rax, %rax	# D.13359
	je	.L228	#,
	.loc 1 882 0 is_stmt 1
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.849
	addl	$1, %eax	#, PL_sub_generation.850
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.850, PL_sub_generation
.L228:
	.loc 1 883 0
	movq	%r12, %rdi	# gv,
	call	Perl_sv_free	#
	.loc 1 884 0
	jmp	.L169	#
.L187:
	.loc 1 886 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.851
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.852
	subl	$1, %edx	#, PL_savestack_ix.853
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.853, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.854
	movslq	%edx, %rdx	# PL_savestack_ix.854, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _450->any_ptr, ptr
	.loc 1 887 0
	movq	%rbx, %rdi	# ptr,
	call	Perl_sv_free	#
	.loc 1 888 0
	jmp	.L169	#
.L206:
	.loc 1 890 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.855
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.856
	subl	$1, %edx	#, PL_savestack_ix.857
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.857, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.858
	movslq	%edx, %rdx	# PL_savestack_ix.858, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _458->any_ptr, ptr
	.loc 1 891 0
	movq	%rbx, %rdi	# ptr,
	call	Perl_sv_2mortal	#
	.loc 1 892 0
	jmp	.L169	#
.L188:
	.loc 1 894 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.859
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.860
	subl	$1, %edx	#, PL_savestack_ix.861
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.861, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.862
	movslq	%edx, %rdx	# PL_savestack_ix.862, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _466->any_ptr, ptr
	.loc 1 896 0
	movq	%rbx, %rdi	# ptr,
	call	Perl_op_free	#
	.loc 1 897 0
	jmp	.L169	#
.L189:
	.loc 1 899 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.863
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.864
	subl	$1, %edx	#, PL_savestack_ix.865
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.865, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.866
	movslq	%edx, %rdx	# PL_savestack_ix.866, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _474->any_ptr, ptr
	.loc 1 900 0
	movq	%rbx, %rdi	# ptr,
	call	Perl_safesysfree	#
	.loc 1 901 0
	jmp	.L169	#
.L190:
	.loc 1 903 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.867
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.868
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.869
	subl	$1, %ecx	#, PL_savestack_ix.870
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.870, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.871
	movslq	%ecx, %rcx	# PL_savestack_ix.871, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movq	(%rdx), %rdx	# _483->any_long, D.13354
	salq	$3, %rdx	#, D.13342
	leaq	(%rax,%rdx), %rbx	#, ptr
	.loc 1 904 0
	movq	(%rbx), %r12	# MEM[(struct SV * *)ptr_487], sv
	.loc 1 914 0
	movl	8(%r12), %eax	# sv_488->sv_refcnt, D.13345
	cmpl	$1, %eax	#, D.13345
	ja	.L229	#,
	.loc 1 914 0 is_stmt 0 discriminator 1
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$4096, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	jne	.L229	#,
	.loc 1 920 0 is_stmt 1
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$1024, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L230	#,
	.loc 1 920 0 is_stmt 0 discriminator 1
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$1048576, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	jne	.L230	#,
	.loc 1 921 0 is_stmt 1
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$-8388609, %eax	#, D.13345
	movl	%eax, 12(%r12)	# D.13345, sv_488->sv_flags
.L230:
	.loc 1 923 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$9961472, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L231	#,
	.loc 1 924 0
	movl	$1, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_force_normal_flags	#
.L231:
	.loc 1 925 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$57344, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L232	#,
	.loc 1 926 0
	movq	%r12, %rdi	# sv,
	call	Perl_mg_free	#
.L232:
	.loc 1 928 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	cmpl	$10, %eax	#, D.13345
	je	.L234	#,
	cmpl	$10, %eax	#, D.13345
	ja	.L235	#,
	testl	%eax, %eax	# D.13345
	je	.L261	#,
	jmp	.L233	#
.L235:
	cmpl	$11, %eax	#, D.13345
	je	.L237	#,
	cmpl	$12, %eax	#, D.13345
	je	.L238	#,
	jmp	.L233	#
.L234:
	.loc 1 932 0
	movq	%r12, %rdi	# sv,
	call	Perl_av_clear	#
	.loc 1 933 0
	jmp	.L239	#
.L237:
	.loc 1 935 0
	movq	%r12, %rdi	# sv,
	call	Perl_hv_clear	#
	.loc 1 936 0
	jmp	.L239	#
.L238:
	.loc 1 938 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L233:
	.loc 1 940 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$1223753727, %eax	#, D.13345
	movl	%eax, 12(%r12)	# D.13345, sv_488->sv_flags
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$2097152, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L240	#,
	.loc 1 940 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# sv,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.13344
	je	.L240	#,
	.loc 1 941 0 is_stmt 1 discriminator 1
	jmp	.L239	#
.L240:
	.loc 1 941 0 is_stmt 0 discriminator 2
	jmp	.L239	#
.L261:
	.loc 1 930 0 is_stmt 1
	nop
.L239:
	.loc 1 943 0
	nop
	.loc 1 954 0
	jmp	.L169	#
.L229:
.LBB7:
	.loc 1 945 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	andl	$1792, %eax	#, tmp863
	movl	%eax, -88(%rbp)	# tmp863, padflags
	.loc 1 946 0
	movl	12(%r12), %eax	# sv_488->sv_flags, D.13345
	movzbl	%al, %eax	# D.13345, D.13345
	cmpl	$10, %eax	#, D.13345
	je	.L244	#,
	cmpl	$11, %eax	#, D.13345
	je	.L245	#,
	jmp	.L260	#
.L244:
	.loc 1 947 0
	call	Perl_newAV	#
	movq	%rax, (%rbx)	# D.13349, MEM[(struct SV * *)ptr_487]
	jmp	.L246	#
.L245:
	.loc 1 948 0
	call	Perl_newHV	#
	movq	%rax, (%rbx)	# D.13352, MEM[(struct SV * *)ptr_487]
	jmp	.L246	#
.L260:
	.loc 1 949 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, (%rbx)	# D.13360, MEM[(struct SV * *)ptr_487]
	nop
.L246:
	.loc 1 951 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_free	#
	.loc 1 952 0
	movq	(%rbx), %rax	# MEM[(struct SV * *)ptr_487], D.13360
	movq	(%rbx), %rdx	# MEM[(struct SV * *)ptr_487], D.13360
	movl	12(%rdx), %edx	# _519->sv_flags, D.13345
	orl	-88(%rbp), %edx	# padflags, D.13345
	movl	%edx, 12(%rax)	# D.13345, _518->sv_flags
.LBE7:
	.loc 1 954 0
	jmp	.L169	#
.L191:
	.loc 1 956 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.873
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.874
	subl	$1, %edx	#, PL_savestack_ix.875
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.875, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.876
	movslq	%edx, %rdx	# PL_savestack_ix.876, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _528->any_ptr, ptr
	.loc 1 957 0
	movq	%rbx, %r14	# ptr, hv
	.loc 1 958 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.877
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.878
	subl	$1, %edx	#, PL_savestack_ix.879
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.879, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.880
	movslq	%edx, %rdx	# PL_savestack_ix.880, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _537->any_ptr, ptr
	.loc 1 959 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.881
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.882
	subl	$1, %edx	#, PL_savestack_ix.883
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.883, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.884
	movslq	%edx, %rdx	# PL_savestack_ix.884, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _545->any_i32, D.13344
	movl	$2, %ecx	#,
	movl	%eax, %edx	# D.13344,
	movq	%rbx, %rsi	# ptr,
	movq	%r14, %rdi	# hv,
	call	Perl_hv_delete	#
	.loc 1 960 0
	movq	%r14, %rdi	# hv,
	call	Perl_sv_free	#
	.loc 1 961 0
	movq	%rbx, %rdi	# ptr,
	call	Perl_safesysfree	#
	.loc 1 962 0
	jmp	.L169	#
.L192:
	.loc 1 964 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.885
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.886
	subl	$1, %edx	#, PL_savestack_ix.887
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.887, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.888
	movslq	%edx, %rdx	# PL_savestack_ix.888, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _553->any_ptr, ptr
	.loc 1 965 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.889
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.890
	subl	$1, %edx	#, PL_savestack_ix.891
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.891, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.892
	movslq	%edx, %rdx	# PL_savestack_ix.892, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _561->any_dptr, D.13361
	movq	%rbx, %rdi	# ptr,
	call	*%rax	# D.13361
	.loc 1 966 0
	jmp	.L169	#
.L201:
	.loc 1 968 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.893
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.894
	subl	$1, %edx	#, PL_savestack_ix.895
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.895, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.896
	movslq	%edx, %rdx	# PL_savestack_ix.896, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _569->any_ptr, ptr
	.loc 1 969 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.897
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.898
	subl	$1, %edx	#, PL_savestack_ix.899
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.899, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.900
	movslq	%edx, %rdx	# PL_savestack_ix.900, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _577->any_dxptr, D.13361
	movq	%rbx, %rdi	# ptr,
	call	*%rax	# D.13361
	.loc 1 970 0
	jmp	.L169	#
.L193:
	.loc 1 973 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.901
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.902
	subl	$1, %edx	#, PL_savestack_ix.903
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.903, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.904
	movslq	%edx, %rdx	# PL_savestack_ix.904, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _585->any_i32, tmp864
	movl	%eax, -84(%rbp)	# tmp864, i
	.loc 1 974 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.905
	subl	-84(%rbp), %eax	# i, PL_savestack_ix.906
	movl	%eax, PL_savestack_ix(%rip)	# PL_savestack_ix.906, PL_savestack_ix
	.loc 1 975 0
	jmp	.L169	#
.L194:
	.loc 1 977 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.907
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.908
	subl	$1, %edx	#, PL_savestack_ix.909
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.909, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.910
	movslq	%edx, %rdx	# PL_savestack_ix.910, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _595->any_i32, tmp865
	movl	%eax, -84(%rbp)	# tmp865, i
	.loc 1 978 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.911
	movl	-84(%rbp), %edx	# i, tmp866
	movslq	%edx, %rdx	# tmp866, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, PL_stack_sp.912
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.912, PL_stack_sp
	.loc 1 979 0
	jmp	.L169	#
.L196:
	.loc 1 981 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.913
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.914
	subl	$1, %edx	#, PL_savestack_ix.915
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.915, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.916
	movslq	%edx, %rdx	# PL_savestack_ix.916, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _607->any_ptr, value
	.loc 1 982 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.917
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.918
	subl	$1, %edx	#, PL_savestack_ix.919
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.919, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.920
	movslq	%edx, %rdx	# PL_savestack_ix.920, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movl	(%rax), %eax	# _615->any_i32, tmp867
	movl	%eax, -84(%rbp)	# tmp867, i
	.loc 1 983 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.921
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.922
	subl	$1, %edx	#, PL_savestack_ix.923
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.923, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.924
	movslq	%edx, %rdx	# PL_savestack_ix.924, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r14	# _623->any_ptr, av
	.loc 1 984 0
	movq	(%r14), %rax	# av_624->sv_any, D.13350
	movzbl	72(%rax), %eax	# _625->xav_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13344
	andl	$1, %eax	#, D.13344
	testl	%eax, %eax	# D.13344
	jne	.L247	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movq	(%r14), %rax	# av_624->sv_any, D.13350
	movzbl	72(%rax), %eax	# _629->xav_flags, D.13362
	movzbl	%al, %eax	# D.13362, D.13344
	andl	$2, %eax	#, D.13344
	testl	%eax, %eax	# D.13344
	je	.L247	#,
	.loc 1 985 0 is_stmt 1
	movq	%r13, %rdi	# value,
	call	Perl_sv_free	#
.L247:
	.loc 1 986 0
	movl	-84(%rbp), %eax	# i, tmp868
	movl	$1, %edx	#,
	movl	%eax, %esi	# tmp868,
	movq	%r14, %rdi	# av,
	call	Perl_av_fetch	#
	movq	%rax, %rbx	#, ptr
	.loc 1 987 0
	testq	%rbx, %rbx	# ptr
	je	.L248	#,
	.loc 1 988 0
	movq	(%rbx), %r12	# MEM[(struct SV * *)ptr_633], sv
	.loc 1 989 0
	testq	%r12, %r12	# sv
	je	.L248	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, %r12	#, sv
	je	.L248	#,
	.loc 1 990 0 is_stmt 1
	movl	12(%r14), %eax	# MEM[(struct SV *)av_624].sv_flags, D.13345
	andl	$32768, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L249	#,
	.loc 1 990 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%r14, %rdi	# av,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13351
	je	.L249	#,
	.loc 1 991 0 is_stmt 1
	movq	%r12, PL_Sv(%rip)	# sv, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.926
	testq	%rax, %rax	# PL_Sv.926
	je	.L250	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.927
	movl	8(%rax), %edx	# PL_Sv.927_639->sv_refcnt, D.13345
	addl	$1, %edx	#, D.13345
	movl	%edx, 8(%rax)	# D.13345, PL_Sv.927_639->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.927_639->sv_refcnt, D.13345
	testl	%eax, %eax	# D.13345
	je	.L250	#,
	.loc 1 991 0 discriminator 3
	jmp	.L249	#
.L250:
	.loc 1 992 0 is_stmt 1 discriminator 2
	jmp	.L211	#
.L249:
	.loc 1 992 0 is_stmt 0
	jmp	.L211	#
.L248:
	.loc 1 995 0 is_stmt 1
	movq	%r14, %rdi	# av,
	call	Perl_sv_free	#
	.loc 1 996 0
	movq	%r13, %rdi	# value,
	call	Perl_sv_free	#
	.loc 1 997 0
	jmp	.L169	#
.L197:
	.loc 1 999 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.928
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.929
	subl	$1, %edx	#, PL_savestack_ix.930
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.930, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.931
	movslq	%edx, %rdx	# PL_savestack_ix.931, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r13	# _651->any_ptr, value
	.loc 1 1000 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.932
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.933
	subl	$1, %edx	#, PL_savestack_ix.934
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.934, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.935
	movslq	%edx, %rdx	# PL_savestack_ix.935, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r12	# _659->any_ptr, sv
	.loc 1 1001 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.936
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.937
	subl	$1, %edx	#, PL_savestack_ix.938
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.938, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.939
	movslq	%edx, %rdx	# PL_savestack_ix.939, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %r14	# _667->any_ptr, hv
	.loc 1 1002 0
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sv,
	movq	%r14, %rdi	# hv,
	call	Perl_hv_fetch_ent	#
	movq	%rax, %rbx	#, ptr
	.loc 1 1003 0
	testq	%rbx, %rbx	# ptr
	je	.L251	#,
.LBB8:
	.loc 1 1004 0
	movq	16(%rbx), %rax	# MEM[(struct HE *)ptr_669].hent_val, tmp869
	movq	%rax, -64(%rbp)	# tmp869, oval
	.loc 1 1005 0
	cmpq	$0, -64(%rbp)	#, oval
	je	.L251	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -64(%rbp)	#, oval
	je	.L251	#,
	.loc 1 1006 0 is_stmt 1
	addq	$16, %rbx	#, ptr
	.loc 1 1007 0
	movl	12(%r14), %eax	# MEM[(struct SV *)hv_668].sv_flags, D.13345
	andl	$32768, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L252	#,
	.loc 1 1007 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%r14, %rdi	# hv,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13351
	je	.L252	#,
	.loc 1 1008 0 is_stmt 1
	movq	(%rbx), %rax	# MEM[(struct SV * *)ptr_671], PL_Sv.940
	movq	%rax, PL_Sv(%rip)	# PL_Sv.940, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.942
	testq	%rax, %rax	# PL_Sv.942
	je	.L252	#,
	.loc 1 1008 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.943
	movl	8(%rax), %edx	# PL_Sv.943_677->sv_refcnt, D.13345
	addl	$1, %edx	#, D.13345
	movl	%edx, 8(%rax)	# D.13345, PL_Sv.943_677->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.943_677->sv_refcnt, D.13345
	testl	%eax, %eax	# D.13345
	je	.L252	#,
	.loc 1 1008 0
	nop
.L252:
	.loc 1 1009 0 is_stmt 1
	movq	%r12, %rdi	# sv,
	call	Perl_sv_free	#
	.loc 1 1011 0
	jmp	.L211	#
.L251:
.LBE8:
	.loc 1 1014 0
	movq	%r14, %rdi	# hv,
	call	Perl_sv_free	#
	.loc 1 1015 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_free	#
	.loc 1 1016 0
	movq	%r13, %rdi	# value,
	call	Perl_sv_free	#
	.loc 1 1017 0
	jmp	.L169	#
.L198:
	.loc 1 1019 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.944
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.945
	subl	$1, %edx	#, PL_savestack_ix.946
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.946, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.947
	movslq	%edx, %rdx	# PL_savestack_ix.947, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _732->any_ptr, PL_op.948
	movq	%rax, PL_op(%rip)	# PL_op.948, PL_op
	.loc 1 1020 0
	jmp	.L169	#
.L199:
	.loc 1 1022 0
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.949
	andl	$131072, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L254	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.950
	movq	(%rax), %rax	# PL_hintgv.950_736->sv_any, D.13346
	movq	56(%rax), %rax	# _737->xgv_gp, D.13347
	movq	40(%rax), %rax	# _738->gp_hv, D.13352
	testq	%rax, %rax	# D.13352
	je	.L254	#,
	.loc 1 1023 0 is_stmt 1
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.951
	movq	(%rax), %rax	# PL_hintgv.951_740->sv_any, D.13346
	movq	56(%rax), %rax	# _741->xgv_gp, D.13347
	movq	40(%rax), %rax	# _742->gp_hv, D.13352
	movq	%rax, %rdi	# D.13352,
	call	Perl_sv_free	#
	.loc 1 1024 0
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.952
	movq	(%rax), %rax	# PL_hintgv.952_744->sv_any, D.13346
	movq	56(%rax), %rax	# _745->xgv_gp, D.13347
	movq	$0, 40(%rax)	#, _746->gp_hv
.L254:
	.loc 1 1026 0
	movl	$PL_hints, %eax	#, PL_hints.953
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.954
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.955
	subl	$1, %ecx	#, PL_savestack_ix.956
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.956, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.957
	movslq	%ecx, %rcx	# PL_savestack_ix.957, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movl	(%rdx), %edx	# _754->any_i32, D.13344
	movl	%edx, (%rax)	# D.13344, MEM[(I32 *)PL_hints.953_747]
	.loc 1 1027 0
	movl	PL_hints(%rip), %eax	# PL_hints, PL_hints.958
	andl	$131072, %eax	#, D.13345
	testl	%eax, %eax	# D.13345
	je	.L255	#,
	.loc 1 1028 0
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.959
	movq	(%rax), %rax	# PL_hintgv.959_758->sv_any, D.13346
	movq	56(%rax), %rax	# _759->xgv_gp, D.13347
	movq	40(%rax), %rax	# _760->gp_hv, D.13352
	movq	%rax, %rdi	# D.13352,
	call	Perl_sv_free	#
	.loc 1 1029 0
	movq	PL_hintgv(%rip), %rax	# PL_hintgv, PL_hintgv.960
	movq	(%rax), %rax	# PL_hintgv.960_762->sv_any, D.13346
	movq	56(%rax), %rax	# _763->xgv_gp, D.13347
	movq	PL_savestack(%rip), %rdx	# PL_savestack, PL_savestack.961
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.962
	subl	$1, %ecx	#, PL_savestack_ix.963
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.963, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.964
	movslq	%ecx, %rcx	# PL_savestack_ix.964, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rdx	# D.13342, D.13343
	movq	(%rdx), %rdx	# _771->any_ptr, D.13358
	movq	%rdx, 40(%rax)	# D.13358, _764->gp_hv
	.loc 1 1032 0
	jmp	.L169	#
.L255:
	jmp	.L169	#
.L203:
	.loc 1 1034 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.965
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.966
	subl	$1, %edx	#, PL_savestack_ix.967
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.967, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.968
	movslq	%edx, %rdx	# PL_savestack_ix.968, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _779->any_ptr, PL_comppad.969
	movq	%rax, PL_comppad(%rip)	# PL_comppad.969, PL_comppad
	.loc 1 1035 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.970
	testq	%rax, %rax	# PL_comppad.970
	je	.L256	#,
	.loc 1 1036 0
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.971
	movq	(%rax), %rax	# PL_comppad.971_782->sv_any, D.13350
	movq	(%rax), %rax	# _783->xav_array, PL_curpad.972
	movq	%rax, PL_curpad(%rip)	# PL_curpad.972, PL_curpad
	.loc 1 1039 0
	jmp	.L169	#
.L256:
	.loc 1 1038 0
	movq	$0, PL_curpad(%rip)	#, PL_curpad
	.loc 1 1039 0
	jmp	.L169	#
.L205:
.LBB9:
	.loc 1 1042 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.973
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.974
	subl	$1, %edx	#, PL_savestack_ix.975
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.975, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.976
	movslq	%edx, %rdx	# PL_savestack_ix.976, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _791->any_long, D.13354
	movq	%rax, -56(%rbp)	# D.13354, off
	.loc 1 1043 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.977
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.978
	subl	$1, %edx	#, PL_savestack_ix.979
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.979, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.980
	movslq	%edx, %rdx	# PL_savestack_ix.980, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rbx	# _800->any_ptr, ptr
	.loc 1 1044 0
	testq	%rbx, %rbx	# ptr
	je	.L258	#,
	.loc 1 1045 0
	movq	(%rbx), %rax	# MEM[(struct PAD *)ptr_801].sv_any, D.13350
	movq	(%rax), %rax	# _802->xav_array, D.13348
	movq	-56(%rbp), %rdx	# off, tmp870
	salq	$3, %rdx	#, D.13342
	addq	%rax, %rdx	# D.13348, D.13363
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.981
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.982
	subl	$1, %ecx	#, PL_savestack_ix.983
	movl	%ecx, PL_savestack_ix(%rip)	# PL_savestack_ix.983, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %ecx	# PL_savestack_ix, PL_savestack_ix.984
	movslq	%ecx, %rcx	# PL_savestack_ix.984, D.13342
	salq	$3, %rcx	#, D.13342
	addq	%rcx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _812->any_ptr, D.13358
	movq	%rax, (%rdx)	# D.13358, *_805
.LBE9:
	.loc 1 1047 0
	jmp	.L169	#
.L258:
	jmp	.L169	#
.L209:
.LBB10:
	.loc 1 1050 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1051 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.985
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.986
	subl	$1, %edx	#, PL_savestack_ix.987
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.987, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.988
	movslq	%edx, %rdx	# PL_savestack_ix.988, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _821->any_ptr, tmp871
	movq	%rax, -48(%rbp)	# tmp871, t
	.loc 1 1052 0
	movq	PL_savestack(%rip), %rax	# PL_savestack, PL_savestack.989
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.990
	subl	$1, %edx	#, PL_savestack_ix.991
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.991, PL_savestack_ix
	movl	PL_savestack_ix(%rip), %edx	# PL_savestack_ix, PL_savestack_ix.992
	movslq	%edx, %rdx	# PL_savestack_ix.992, D.13342
	salq	$3, %rdx	#, D.13342
	addq	%rdx, %rax	# D.13342, D.13343
	movq	(%rax), %rax	# _829->any_ptr, tmp872
	movq	%rax, -40(%rbp)	# tmp872, f
.LBB11:
	.loc 1 1053 0
	movq	-48(%rbp), %rax	# t, tmp873
	movq	(%rax), %rax	# t_822->sv_any, D.13350
	movq	%rbx, %rcx	# sp, sp.993
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.994
	subq	%rdx, %rcx	# PL_stack_base.995, D.13354
	movq	%rcx, %rdx	# D.13354, D.13354
	sarq	$3, %rdx	#, tmp874
	movq	%rdx, 8(%rax)	# D.13354, _831->xav_fill
	movq	-40(%rbp), %rax	# f, tmp875
	movq	(%rax), %rax	# f_830->sv_any, D.13350
	movq	(%rax), %rax	# _837->xav_array, PL_stack_base.996
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.996, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.997
	movq	-40(%rbp), %rax	# f, tmp876
	movq	(%rax), %rax	# f_830->sv_any, D.13350
	movq	16(%rax), %rax	# _840->xav_max, D.13354
	salq	$3, %rax	#, D.13342
	addq	%rdx, %rax	# PL_stack_base.997, PL_stack_max.998
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.998, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.999
	movq	-40(%rbp), %rax	# f, tmp877
	movq	(%rax), %rax	# f_830->sv_any, D.13350
	movq	8(%rax), %rax	# _846->xav_fill, D.13354
	salq	$3, %rax	#, D.13342
	addq	%rdx, %rax	# PL_stack_base.999, PL_stack_sp.1000
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1000, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# f, tmp878
	movq	%rax, PL_curstack(%rip)	# tmp878, PL_curstack
.LBE11:
	.loc 1 1054 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1001
	movq	-40(%rbp), %rdx	# f, tmp879
	movq	%rdx, (%rax)	# tmp879, PL_curstackinfo.1001_853->si_stack
.LBE10:
	.loc 1 1056 0
	jmp	.L169	#
.L170:
	.loc 1 1058 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L169:
	.loc 1 699 0 discriminator 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1002
	cmpl	-100(%rbp), %eax	# base, PL_savestack_ix.1002
	jg	.L259	#,
	.loc 1 1061 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_leave_scope, .-Perl_leave_scope
	.globl	Perl_cx_dump
	.type	Perl_cx_dump, @function
Perl_cx_dump:
.LFB53:
	.loc 1 1065 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cx, cx
	.loc 1 1166 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_cx_dump, .-Perl_cx_dump
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
	.long	0x221b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF402
	.byte	0x1
	.long	.LASF403
	.long	.LASF404
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
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc6
	.uleb128 0x9
	.long	.LASF194
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
	.long	0xec
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
	.long	0x10a
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x176
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xf17
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xf17
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xfa6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xf90
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xd89
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xd89
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xd74
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xd74
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x182
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x24f
	.uleb128 0xd
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xf17
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xf17
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xfa6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xf90
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xd89
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xd89
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xd74
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xd74
	.byte	0x25
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xeff
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xf34
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xd9f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xd94
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xdaa
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xdc7
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xdc7
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x25b
	.uleb128 0xe
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x349
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xf17
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xf17
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xfa6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xf90
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xd89
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xd89
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xd74
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xd74
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xf17
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xf17
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xf17
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xf17
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xfac
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xfb2
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xd9f
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xd9f
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xd74
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xeff
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x355
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x370
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x37b
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3ab
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3b6
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3e6
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xee7
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3f1
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x421
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xeed
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x42c
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x45c
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xee1
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x468
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x541
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xe3a
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xe3a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xe40
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xe4b
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xe56
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xe5c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xd94
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xd94
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xd94
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xd94
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xd9f
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xd9f
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xd9f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xd9f
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xe62
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x54c
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5e8
	.uleb128 0xd
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xdc7
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xf74
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xf28
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xf3a
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xeff
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xf34
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xf28
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xd9f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xd9f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xdaa
	.byte	0x48
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x5f3
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x623
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xedb
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x653
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xef3
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xd9f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f2
	.long	0x65f
	.uleb128 0x10
	.long	.LASF82
	.byte	0x90
	.byte	0x8
	.value	0x1a2
	.long	0x687
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x1a3
	.long	0xd9f
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x1a7
	.long	0x1219
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x88
	.byte	0x8
	.value	0x130
	.long	0x6fd
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x131
	.long	0xd94
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x132
	.long	0x114f
	.byte	0x8
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x133
	.long	0xd94
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x134
	.long	0xd94
	.byte	0x14
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x135
	.long	0xd94
	.byte	0x18
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x136
	.long	0xfac
	.byte	0x20
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x137
	.long	0xd74
	.byte	0x28
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x13d
	.long	0x1121
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x6
	.value	0x7f5
	.long	0x709
	.uleb128 0xe
	.long	.LASF95
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x776
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0x1b
	.long	0xef9
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0x1c
	.long	0x13c8
	.byte	0x8
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x1d
	.long	0xd89
	.byte	0x10
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF100
	.byte	0xc
	.byte	0x1f
	.long	0xd74
	.byte	0x13
	.uleb128 0xd
	.long	.LASF101
	.byte	0xc
	.byte	0x20
	.long	0xdc7
	.byte	0x18
	.uleb128 0xd
	.long	.LASF102
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF103
	.byte	0xc
	.byte	0x22
	.long	0xd94
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x782
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x7b3
	.uleb128 0xd
	.long	.LASF104
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF105
	.byte	0x9
	.byte	0xfb
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF106
	.byte	0x9
	.byte	0xfc
	.long	0xf3
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF107
	.byte	0x6
	.value	0x7fb
	.long	0x7bf
	.uleb128 0x10
	.long	.LASF108
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x828
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x118
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x119
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF109
	.byte	0x9
	.value	0x11a
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x11b
	.long	0xe1
	.byte	0x20
	.uleb128 0xf
	.long	.LASF111
	.byte	0x9
	.value	0x11c
	.long	0xef9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF112
	.byte	0x9
	.value	0x11d
	.long	0xeff
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF113
	.byte	0x6
	.value	0x7fd
	.long	0x834
	.uleb128 0xe
	.long	.LASF114
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x8b9
	.uleb128 0xd
	.long	.LASF115
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF116
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF117
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF118
	.byte	0xd
	.byte	0xf
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0x10
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x11
	.long	0xef9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0x12
	.long	0xeff
	.byte	0x30
	.uleb128 0xd
	.long	.LASF119
	.byte	0xd
	.byte	0x14
	.long	0x111b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF120
	.byte	0xd
	.byte	0x15
	.long	0xdc7
	.byte	0x40
	.uleb128 0xd
	.long	.LASF121
	.byte	0xd
	.byte	0x16
	.long	0xd74
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF122
	.byte	0x6
	.value	0x7fe
	.long	0x8c5
	.uleb128 0xe
	.long	.LASF123
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x956
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x24
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x25
	.long	0xf3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x26
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF110
	.byte	0xe
	.byte	0x27
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF111
	.byte	0xe
	.byte	0x29
	.long	0xef9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF112
	.byte	0xe
	.byte	0x2a
	.long	0xeff
	.byte	0x30
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x2c
	.long	0xd94
	.byte	0x38
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x2d
	.long	0x133f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x2e
	.long	0xfac
	.byte	0x48
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x6
	.value	0x7ff
	.long	0x962
	.uleb128 0x10
	.long	.LASF133
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa0c
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x132
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x133
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF109
	.byte	0x9
	.value	0x134
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x135
	.long	0xe1
	.byte	0x20
	.uleb128 0xf
	.long	.LASF111
	.byte	0x9
	.value	0x136
	.long	0xef9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF112
	.byte	0x9
	.value	0x137
	.long	0xeff
	.byte	0x30
	.uleb128 0xf
	.long	.LASF134
	.byte	0x9
	.value	0x139
	.long	0xf05
	.byte	0x38
	.uleb128 0xf
	.long	.LASF135
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF136
	.byte	0x9
	.value	0x13b
	.long	0xf3
	.byte	0x48
	.uleb128 0xf
	.long	.LASF137
	.byte	0x9
	.value	0x13c
	.long	0xeff
	.byte	0x50
	.uleb128 0xf
	.long	.LASF138
	.byte	0x9
	.value	0x13d
	.long	0xd74
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF139
	.byte	0x6
	.value	0x800
	.long	0xa18
	.uleb128 0xe
	.long	.LASF140
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xb09
	.uleb128 0xd
	.long	.LASF104
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF105
	.byte	0xf
	.byte	0x10
	.long	0xf3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF106
	.byte	0xf
	.byte	0x11
	.long	0xf3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF118
	.byte	0xf
	.byte	0x12
	.long	0xcb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF110
	.byte	0xf
	.byte	0x13
	.long	0xe1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF111
	.byte	0xf
	.byte	0x14
	.long	0xef9
	.byte	0x28
	.uleb128 0xd
	.long	.LASF112
	.byte	0xf
	.byte	0x15
	.long	0xeff
	.byte	0x30
	.uleb128 0xd
	.long	.LASF141
	.byte	0xf
	.byte	0x17
	.long	0xeff
	.byte	0x38
	.uleb128 0xd
	.long	.LASF142
	.byte	0xf
	.byte	0x18
	.long	0xf17
	.byte	0x40
	.uleb128 0xd
	.long	.LASF143
	.byte	0xf
	.byte	0x19
	.long	0xf17
	.byte	0x48
	.uleb128 0xd
	.long	.LASF144
	.byte	0xf
	.byte	0x1a
	.long	0xf2e
	.byte	0x50
	.uleb128 0xd
	.long	.LASF145
	.byte	0xf
	.byte	0x1b
	.long	0xcbb
	.byte	0x58
	.uleb128 0xd
	.long	.LASF146
	.byte	0xf
	.byte	0x1c
	.long	0xf34
	.byte	0x60
	.uleb128 0xd
	.long	.LASF147
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF148
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF149
	.byte	0xf
	.byte	0x1f
	.long	0xf9b
	.byte	0x78
	.uleb128 0xd
	.long	.LASF150
	.byte	0xf
	.byte	0x20
	.long	0xf28
	.byte	0x80
	.uleb128 0xd
	.long	.LASF151
	.byte	0xf
	.byte	0x25
	.long	0xf0b
	.byte	0x88
	.uleb128 0xd
	.long	.LASF152
	.byte	0xf
	.byte	0x26
	.long	0xd9f
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0x6
	.value	0x803
	.long	0xb15
	.uleb128 0x10
	.long	.LASF154
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xc4e
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x172
	.long	0xf3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x173
	.long	0xf3
	.byte	0x10
	.uleb128 0xf
	.long	.LASF109
	.byte	0x9
	.value	0x174
	.long	0xcb
	.byte	0x18
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x175
	.long	0xe1
	.byte	0x20
	.uleb128 0xf
	.long	.LASF111
	.byte	0x9
	.value	0x176
	.long	0xef9
	.byte	0x28
	.uleb128 0xf
	.long	.LASF112
	.byte	0x9
	.value	0x177
	.long	0xeff
	.byte	0x30
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x179
	.long	0xf68
	.byte	0x38
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x17a
	.long	0xf68
	.byte	0x40
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x187
	.long	0xf40
	.byte	0x48
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x188
	.long	0xcb
	.byte	0x50
	.uleb128 0xf
	.long	.LASF159
	.byte	0x9
	.value	0x189
	.long	0xcb
	.byte	0x58
	.uleb128 0xf
	.long	.LASF160
	.byte	0x9
	.value	0x18a
	.long	0xcb
	.byte	0x60
	.uleb128 0xf
	.long	.LASF161
	.byte	0x9
	.value	0x18b
	.long	0xcb
	.byte	0x68
	.uleb128 0xf
	.long	.LASF162
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF163
	.byte	0x9
	.value	0x18d
	.long	0xf34
	.byte	0x78
	.uleb128 0xf
	.long	.LASF164
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF165
	.byte	0x9
	.value	0x18f
	.long	0xf34
	.byte	0x88
	.uleb128 0xf
	.long	.LASF166
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF167
	.byte	0x9
	.value	0x191
	.long	0xf34
	.byte	0x98
	.uleb128 0xf
	.long	.LASF168
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF169
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF170
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF171
	.byte	0x6
	.value	0x804
	.long	0xc5a
	.uleb128 0xe
	.long	.LASF172
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xcbb
	.uleb128 0xd
	.long	.LASF173
	.byte	0xc
	.byte	0xf
	.long	0x135f
	.byte	0
	.uleb128 0xd
	.long	.LASF174
	.byte	0xc
	.byte	0x10
	.long	0x135f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF175
	.byte	0xc
	.byte	0x11
	.long	0x1379
	.byte	0x10
	.uleb128 0xd
	.long	.LASF176
	.byte	0xc
	.byte	0x12
	.long	0x135f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF177
	.byte	0xc
	.byte	0x13
	.long	0x135f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF178
	.byte	0xc
	.byte	0x14
	.long	0x13a2
	.byte	0x28
	.uleb128 0xd
	.long	.LASF179
	.byte	0xc
	.byte	0x16
	.long	0x13c2
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xcc7
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xd29
	.uleb128 0x12
	.long	.LASF180
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF181
	.byte	0x6
	.value	0x9f3
	.long	0xd94
	.uleb128 0x12
	.long	.LASF182
	.byte	0x6
	.value	0x9f4
	.long	0xcb
	.uleb128 0x12
	.long	.LASF183
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF184
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF185
	.byte	0x6
	.value	0x9f7
	.long	0xdc1
	.uleb128 0x12
	.long	.LASF186
	.byte	0x6
	.value	0x9f8
	.long	0xdc1
	.byte	0
	.uleb128 0xb
	.long	.LASF187
	.byte	0x6
	.value	0x808
	.long	0xd35
	.uleb128 0x10
	.long	.LASF188
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xd6a
	.uleb128 0xf
	.long	.LASF189
	.byte	0x9
	.value	0x4ee
	.long	0xf3a
	.byte	0
	.uleb128 0xf
	.long	.LASF190
	.byte	0x9
	.value	0x4ef
	.long	0xd6
	.byte	0x8
	.uleb128 0xf
	.long	.LASF191
	.byte	0x9
	.value	0x4f0
	.long	0xf6e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"I8"
	.byte	0x10
	.byte	0x84
	.long	0x49
	.uleb128 0x8
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"I16"
	.byte	0x10
	.byte	0x86
	.long	0x50
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
	.long	.LASF192
	.byte	0x10
	.value	0x209
	.long	0xd9f
	.uleb128 0x13
	.long	0xdc1
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdb6
	.uleb128 0x6
	.byte	0x8
	.long	0x370
	.uleb128 0x15
	.long	0x7f
	.long	0xddd
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF193
	.byte	0x11
	.byte	0x63
	.long	0xde8
	.uleb128 0x9
	.long	.LASF195
	.uleb128 0x5
	.long	.LASF196
	.byte	0x11
	.byte	0x65
	.long	0xdf8
	.uleb128 0x6
	.byte	0x8
	.long	0xddd
	.uleb128 0xe
	.long	.LASF197
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xe2f
	.uleb128 0xd
	.long	.LASF190
	.byte	0xa
	.byte	0x14
	.long	0xd74
	.byte	0
	.uleb128 0xd
	.long	.LASF198
	.byte	0xa
	.byte	0x15
	.long	0xd74
	.byte	0x1
	.uleb128 0xd
	.long	.LASF199
	.byte	0xa
	.byte	0x16
	.long	0xd89
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF197
	.byte	0xa
	.byte	0x19
	.long	0xdfe
	.uleb128 0x6
	.byte	0x8
	.long	0xd94
	.uleb128 0x6
	.byte	0x8
	.long	0xe2f
	.uleb128 0x9
	.long	.LASF200
	.uleb128 0x6
	.byte	0x8
	.long	0xe46
	.uleb128 0x9
	.long	.LASF201
	.uleb128 0x6
	.byte	0x8
	.long	0xe51
	.uleb128 0x6
	.byte	0x8
	.long	0xd9f
	.uleb128 0x15
	.long	0xe2f
	.long	0xe72
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xedb
	.uleb128 0x18
	.long	.LASF202
	.sleb128 0
	.uleb128 0x18
	.long	.LASF203
	.sleb128 1
	.uleb128 0x18
	.long	.LASF204
	.sleb128 2
	.uleb128 0x18
	.long	.LASF205
	.sleb128 3
	.uleb128 0x18
	.long	.LASF206
	.sleb128 4
	.uleb128 0x18
	.long	.LASF207
	.sleb128 5
	.uleb128 0x18
	.long	.LASF208
	.sleb128 6
	.uleb128 0x18
	.long	.LASF209
	.sleb128 7
	.uleb128 0x18
	.long	.LASF210
	.sleb128 8
	.uleb128 0x18
	.long	.LASF211
	.sleb128 9
	.uleb128 0x18
	.long	.LASF212
	.sleb128 10
	.uleb128 0x18
	.long	.LASF213
	.sleb128 11
	.uleb128 0x18
	.long	.LASF214
	.sleb128 12
	.uleb128 0x18
	.long	.LASF215
	.sleb128 13
	.uleb128 0x18
	.long	.LASF216
	.sleb128 14
	.uleb128 0x18
	.long	.LASF217
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x956
	.uleb128 0x6
	.byte	0x8
	.long	0xa0c
	.uleb128 0x6
	.byte	0x8
	.long	0x828
	.uleb128 0x6
	.byte	0x8
	.long	0x8b9
	.uleb128 0x6
	.byte	0x8
	.long	0xb09
	.uleb128 0x6
	.byte	0x8
	.long	0x6fd
	.uleb128 0x6
	.byte	0x8
	.long	0x3e6
	.uleb128 0x6
	.byte	0x8
	.long	0x541
	.uleb128 0xb
	.long	.LASF218
	.byte	0x9
	.value	0x150
	.long	0xd89
	.uleb128 0x6
	.byte	0x8
	.long	0xff
	.uleb128 0x13
	.long	0xf28
	.uleb128 0x14
	.long	0xf28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x421
	.uleb128 0x6
	.byte	0x8
	.long	0xf1d
	.uleb128 0x6
	.byte	0x8
	.long	0x5e8
	.uleb128 0x6
	.byte	0x8
	.long	0x3ab
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xf62
	.uleb128 0x12
	.long	.LASF219
	.byte	0x9
	.value	0x185
	.long	0xf62
	.uleb128 0x12
	.long	.LASF220
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb
	.uleb128 0x6
	.byte	0x8
	.long	0xded
	.uleb128 0x6
	.byte	0x8
	.long	0x349
	.uleb128 0x6
	.byte	0x8
	.long	0x623
	.uleb128 0x5
	.long	.LASF221
	.byte	0x12
	.byte	0x13
	.long	0x3ab
	.uleb128 0x8
	.string	"PAD"
	.byte	0x12
	.byte	0x14
	.long	0x3ab
	.uleb128 0x5
	.long	.LASF222
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xf7a
	.uleb128 0x1a
	.long	0xf17
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x6
	.byte	0x8
	.long	0x24f
	.uleb128 0x6
	.byte	0x8
	.long	0x45c
	.uleb128 0xe
	.long	.LASF223
	.byte	0x40
	.byte	0x8
	.byte	0x70
	.long	0x102f
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0x71
	.long	0xf28
	.byte	0
	.uleb128 0x1b
	.string	"gv"
	.byte	0x8
	.byte	0x72
	.long	0xf34
	.byte	0x8
	.uleb128 0xd
	.long	.LASF224
	.byte	0x8
	.byte	0x73
	.long	0xf34
	.byte	0x10
	.uleb128 0xd
	.long	.LASF225
	.byte	0x8
	.byte	0x75
	.long	0xf3a
	.byte	0x18
	.uleb128 0xd
	.long	.LASF226
	.byte	0x8
	.byte	0x77
	.long	0xf3a
	.byte	0x20
	.uleb128 0xd
	.long	.LASF227
	.byte	0x8
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF228
	.byte	0x8
	.byte	0x79
	.long	0xd74
	.byte	0x30
	.uleb128 0xd
	.long	.LASF229
	.byte	0x8
	.byte	0x7a
	.long	0xd74
	.byte	0x31
	.uleb128 0xd
	.long	.LASF230
	.byte	0x8
	.byte	0x7b
	.long	0x102f
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf85
	.uleb128 0xe
	.long	.LASF231
	.byte	0x28
	.byte	0x8
	.byte	0xd3
	.long	0x1089
	.uleb128 0xd
	.long	.LASF232
	.byte	0x8
	.byte	0xd4
	.long	0xd94
	.byte	0
	.uleb128 0xd
	.long	.LASF233
	.byte	0x8
	.byte	0xd5
	.long	0xd94
	.byte	0x4
	.uleb128 0xd
	.long	.LASF234
	.byte	0x8
	.byte	0xd6
	.long	0xdc7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF235
	.byte	0x8
	.byte	0xd7
	.long	0xf17
	.byte	0x10
	.uleb128 0xd
	.long	.LASF236
	.byte	0x8
	.byte	0xd8
	.long	0xdc7
	.byte	0x18
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0xd9
	.long	0xf28
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF237
	.byte	0x58
	.byte	0x8
	.byte	0xf0
	.long	0x111b
	.uleb128 0xd
	.long	.LASF238
	.byte	0x8
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF239
	.byte	0x8
	.byte	0xf2
	.long	0xd94
	.byte	0x8
	.uleb128 0xd
	.long	.LASF240
	.byte	0x8
	.byte	0xf3
	.long	0xf17
	.byte	0x10
	.uleb128 0xd
	.long	.LASF241
	.byte	0x8
	.byte	0xf4
	.long	0xf17
	.byte	0x18
	.uleb128 0xd
	.long	.LASF242
	.byte	0x8
	.byte	0xf5
	.long	0xf17
	.byte	0x20
	.uleb128 0xd
	.long	.LASF243
	.byte	0x8
	.byte	0xfa
	.long	0x111b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF244
	.byte	0x8
	.byte	0xfc
	.long	0xdc7
	.byte	0x30
	.uleb128 0xd
	.long	.LASF245
	.byte	0x8
	.byte	0xfd
	.long	0xdc7
	.byte	0x38
	.uleb128 0xd
	.long	.LASF246
	.byte	0x8
	.byte	0xfe
	.long	0xf3a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF247
	.byte	0x8
	.byte	0xff
	.long	0xcb
	.byte	0x48
	.uleb128 0xf
	.long	.LASF248
	.byte	0x8
	.value	0x100
	.long	0xcb
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdc7
	.uleb128 0x19
	.byte	0x58
	.byte	0x8
	.value	0x139
	.long	0x114f
	.uleb128 0x12
	.long	.LASF249
	.byte	0x8
	.value	0x13a
	.long	0xfb8
	.uleb128 0x12
	.long	.LASF250
	.byte	0x8
	.value	0x13b
	.long	0x1035
	.uleb128 0x12
	.long	.LASF251
	.byte	0x8
	.value	0x13c
	.long	0x1089
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x176
	.uleb128 0x10
	.long	.LASF252
	.byte	0x58
	.byte	0x8
	.value	0x16e
	.long	0x1219
	.uleb128 0xf
	.long	.LASF253
	.byte	0x8
	.value	0x16f
	.long	0xd94
	.byte	0
	.uleb128 0xf
	.long	.LASF254
	.byte	0x8
	.value	0x170
	.long	0xd94
	.byte	0x4
	.uleb128 0xf
	.long	.LASF255
	.byte	0x8
	.value	0x171
	.long	0xd94
	.byte	0x8
	.uleb128 0xf
	.long	.LASF256
	.byte	0x8
	.value	0x172
	.long	0xd94
	.byte	0xc
	.uleb128 0xf
	.long	.LASF257
	.byte	0x8
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0xf
	.long	.LASF258
	.byte	0x8
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0xf
	.long	.LASF259
	.byte	0x8
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0xf
	.long	.LASF260
	.byte	0x8
	.value	0x176
	.long	0xdc7
	.byte	0x20
	.uleb128 0xf
	.long	.LASF261
	.byte	0x8
	.value	0x177
	.long	0xdc7
	.byte	0x28
	.uleb128 0xf
	.long	.LASF262
	.byte	0x8
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0xf
	.long	.LASF263
	.byte	0x8
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0xf
	.long	.LASF264
	.byte	0x8
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF265
	.byte	0x8
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0xf
	.long	.LASF266
	.byte	0x8
	.value	0x17c
	.long	0xfb2
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0x8
	.value	0x1a4
	.long	0x123b
	.uleb128 0x12
	.long	.LASF267
	.byte	0x8
	.value	0x1a5
	.long	0x687
	.uleb128 0x12
	.long	.LASF268
	.byte	0x8
	.value	0x1a6
	.long	0x1155
	.byte	0
	.uleb128 0x10
	.long	.LASF269
	.byte	0x38
	.byte	0x8
	.value	0x20c
	.long	0x12b1
	.uleb128 0xf
	.long	.LASF270
	.byte	0x8
	.value	0x20d
	.long	0xf3a
	.byte	0
	.uleb128 0xf
	.long	.LASF271
	.byte	0x8
	.value	0x20e
	.long	0x12b1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF272
	.byte	0x8
	.value	0x20f
	.long	0xd94
	.byte	0x10
	.uleb128 0xf
	.long	.LASF273
	.byte	0x8
	.value	0x210
	.long	0xd94
	.byte	0x14
	.uleb128 0xf
	.long	.LASF274
	.byte	0x8
	.value	0x211
	.long	0xd94
	.byte	0x18
	.uleb128 0xf
	.long	.LASF275
	.byte	0x8
	.value	0x212
	.long	0x12b7
	.byte	0x20
	.uleb128 0xf
	.long	.LASF276
	.byte	0x8
	.value	0x213
	.long	0x12b7
	.byte	0x28
	.uleb128 0xf
	.long	.LASF277
	.byte	0x8
	.value	0x214
	.long	0xd94
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x653
	.uleb128 0x6
	.byte	0x8
	.long	0x123b
	.uleb128 0xb
	.long	.LASF278
	.byte	0x8
	.value	0x219
	.long	0x123b
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x12d3
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x1303
	.uleb128 0xd
	.long	.LASF279
	.byte	0xe
	.byte	0x11
	.long	0x133f
	.byte	0
	.uleb128 0xd
	.long	.LASF280
	.byte	0xe
	.byte	0x12
	.long	0x1345
	.byte	0x8
	.uleb128 0xd
	.long	.LASF281
	.byte	0xe
	.byte	0x13
	.long	0xdc7
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x130e
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x133f
	.uleb128 0xd
	.long	.LASF282
	.byte	0xe
	.byte	0x18
	.long	0xd9f
	.byte	0
	.uleb128 0xd
	.long	.LASF283
	.byte	0xe
	.byte	0x19
	.long	0xd94
	.byte	0x4
	.uleb128 0xd
	.long	.LASF284
	.byte	0xe
	.byte	0x1a
	.long	0xdcd
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12c9
	.uleb128 0x6
	.byte	0x8
	.long	0x1303
	.uleb128 0x1c
	.long	0x57
	.long	0x135f
	.uleb128 0x14
	.long	0xdc7
	.uleb128 0x14
	.long	0xef9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x134b
	.uleb128 0x1c
	.long	0xd9f
	.long	0x1379
	.uleb128 0x14
	.long	0xdc7
	.uleb128 0x14
	.long	0xef9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1365
	.uleb128 0x1c
	.long	0x57
	.long	0x13a2
	.uleb128 0x14
	.long	0xdc7
	.uleb128 0x14
	.long	0xef9
	.uleb128 0x14
	.long	0xdc7
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x137f
	.uleb128 0x1c
	.long	0x57
	.long	0x13bc
	.uleb128 0x14
	.long	0xef9
	.uleb128 0x14
	.long	0x13bc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd29
	.uleb128 0x6
	.byte	0x8
	.long	0x13a8
	.uleb128 0x6
	.byte	0x8
	.long	0xc4e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF285
	.uleb128 0xb
	.long	.LASF286
	.byte	0x6
	.value	0xe6d
	.long	0xdc1
	.uleb128 0xb
	.long	.LASF287
	.byte	0x6
	.value	0xe6e
	.long	0xdc1
	.uleb128 0x1d
	.long	.LASF288
	.byte	0x1
	.byte	0x3b
	.long	0x111b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1434
	.uleb128 0x1e
	.string	"sp"
	.byte	0x1
	.byte	0x3b
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.byte	0x3b
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF289
	.byte	0x1
	.byte	0x4d
	.long	0x147f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x147f
	.uleb128 0x1f
	.long	.LASF290
	.byte	0x1
	.byte	0x4d
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF291
	.byte	0x1
	.byte	0x4d
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"si"
	.byte	0x1
	.byte	0x4f
	.long	0x147f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12bd
	.uleb128 0x1d
	.long	.LASF292
	.byte	0x1
	.byte	0x63
	.long	0xd94
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b5
	.uleb128 0x21
	.long	.LASF293
	.byte	0x1
	.byte	0x65
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF295
	.byte	0x1
	.byte	0x6f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e1
	.uleb128 0x1f
	.long	.LASF294
	.byte	0x1
	.byte	0x6f
	.long	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF405
	.byte	0x1
	.byte	0x79
	.long	0xf17
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF301
	.byte	0x1
	.byte	0x82
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF296
	.byte	0x1
	.byte	0x8d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1543
	.uleb128 0x21
	.long	.LASF297
	.byte	0x1
	.byte	0x8f
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF298
	.byte	0x1
	.byte	0x94
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x157d
	.uleb128 0x21
	.long	.LASF299
	.byte	0x1
	.byte	0x96
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF300
	.byte	0x1
	.byte	0x97
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF302
	.byte	0x1
	.byte	0x9f
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF303
	.byte	0x1
	.byte	0xa6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c2
	.uleb128 0x1f
	.long	.LASF304
	.byte	0x1
	.byte	0xa6
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF305
	.byte	0x1
	.byte	0xaf
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ec
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.byte	0xaf
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF306
	.byte	0x1
	.byte	0xbb
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1637
	.uleb128 0x21
	.long	.LASF307
	.byte	0x1
	.byte	0xbe
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x20
	.string	"sv"
	.byte	0x1
	.byte	0xc0
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF406
	.byte	0x1
	.byte	0xca
	.long	0xdc7
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x16af
	.uleb128 0x1f
	.long	.LASF308
	.byte	0x1
	.byte	0xca
	.long	0x111b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"sv"
	.byte	0x1
	.byte	0xcc
	.long	0xdc7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"osv"
	.byte	0x1
	.byte	0xcd
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x20
	.string	"mg"
	.byte	0x1
	.byte	0xd3
	.long	0xef9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF309
	.byte	0x1
	.byte	0xd4
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF310
	.byte	0x1
	.byte	0xec
	.long	0xdc7
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ec
	.uleb128 0x1e
	.string	"gv"
	.byte	0x1
	.byte	0xec
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF308
	.byte	0x1
	.byte	0xee
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF311
	.byte	0x1
	.byte	0xf7
	.long	0xdc7
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x171c
	.uleb128 0x1f
	.long	.LASF308
	.byte	0x1
	.byte	0xf7
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF312
	.byte	0x1
	.value	0x103
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x174a
	.uleb128 0x28
	.long	.LASF308
	.byte	0x1
	.value	0x103
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF313
	.byte	0x1
	.value	0x10f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1778
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.value	0x10f
	.long	0x1778
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x27
	.long	.LASF314
	.byte	0x1
	.value	0x11b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ac
	.uleb128 0x29
	.string	"str"
	.byte	0x1
	.value	0x11b
	.long	0x1778
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF315
	.byte	0x1
	.value	0x124
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1807
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x124
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF316
	.byte	0x1
	.value	0x124
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2a
	.string	"gp"
	.byte	0x1
	.value	0x131
	.long	0xf05
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF317
	.byte	0x1
	.value	0x148
	.long	0xf3a
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1855
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x148
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"oav"
	.byte	0x1
	.value	0x14a
	.long	0xf3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"av"
	.byte	0x1
	.value	0x14b
	.long	0xf3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x163
	.long	0xeff
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a3
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x163
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"ohv"
	.byte	0x1
	.value	0x165
	.long	0xeff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"hv"
	.byte	0x1
	.value	0x165
	.long	0xeff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF319
	.byte	0x1
	.value	0x17b
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x18dd
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x17b
	.long	0xdc7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0x17d
	.long	0xdc7
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x27
	.long	.LASF321
	.byte	0x1
	.value	0x186
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x190b
	.uleb128 0x28
	.long	.LASF322
	.byte	0x1
	.value	0x186
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF323
	.byte	0x1
	.value	0x18f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1939
	.uleb128 0x28
	.long	.LASF324
	.byte	0x1
	.value	0x18f
	.long	0x1939
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e
	.uleb128 0x27
	.long	.LASF325
	.byte	0x1
	.value	0x198
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x196d
	.uleb128 0x28
	.long	.LASF326
	.byte	0x1
	.value	0x198
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF327
	.byte	0x1
	.value	0x1a1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x199b
	.uleb128 0x28
	.long	.LASF322
	.byte	0x1
	.value	0x1a1
	.long	0xe3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF328
	.byte	0x1
	.value	0x1aa
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x19c9
	.uleb128 0x28
	.long	.LASF322
	.byte	0x1
	.value	0x1aa
	.long	0x19c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd7e
	.uleb128 0x27
	.long	.LASF329
	.byte	0x1
	.value	0x1b3
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x19fd
	.uleb128 0x28
	.long	.LASF330
	.byte	0x1
	.value	0x1b3
	.long	0x19fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd6a
	.uleb128 0x27
	.long	.LASF331
	.byte	0x1
	.value	0x1bc
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a31
	.uleb128 0x29
	.string	"ivp"
	.byte	0x1
	.value	0x1bc
	.long	0x1a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcb
	.uleb128 0x27
	.long	.LASF332
	.byte	0x1
	.value	0x1c8
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a65
	.uleb128 0x28
	.long	.LASF333
	.byte	0x1
	.value	0x1c8
	.long	0x1778
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF334
	.byte	0x1
	.value	0x1d1
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a93
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.value	0x1d1
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF335
	.byte	0x1
	.value	0x1da
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac1
	.uleb128 0x28
	.long	.LASF308
	.byte	0x1
	.value	0x1da
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF336
	.byte	0x1
	.value	0x1e3
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aef
	.uleb128 0x29
	.string	"off"
	.byte	0x1
	.value	0x1e3
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF337
	.byte	0x1
	.value	0x1ee
	.long	0x111b
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b1f
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1ee
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x1fd
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b4c
	.uleb128 0x29
	.string	"gv"
	.byte	0x1
	.value	0x1fd
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF339
	.byte	0x1
	.value	0x205
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7a
	.uleb128 0x28
	.long	.LASF340
	.byte	0x1
	.value	0x205
	.long	0x1b7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeff
	.uleb128 0x27
	.long	.LASF341
	.byte	0x1
	.value	0x20e
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bae
	.uleb128 0x28
	.long	.LASF342
	.byte	0x1
	.value	0x20e
	.long	0x1bae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf3a
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x217
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be1
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x217
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF344
	.byte	0x1
	.value	0x21f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0e
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x21f
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF345
	.byte	0x1
	.value	0x227
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3a
	.uleb128 0x29
	.string	"o"
	.byte	0x1
	.value	0x227
	.long	0xf17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF346
	.byte	0x1
	.value	0x22f
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c67
	.uleb128 0x29
	.string	"pv"
	.byte	0x1
	.value	0x22f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF347
	.byte	0x1
	.value	0x237
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c95
	.uleb128 0x29
	.string	"svp"
	.byte	0x1
	.value	0x237
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF348
	.byte	0x1
	.value	0x240
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ce0
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x240
	.long	0xeff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x240
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF349
	.byte	0x1
	.value	0x240
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF350
	.byte	0x1
	.value	0x24a
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d35
	.uleb128 0x28
	.long	.LASF351
	.byte	0x1
	.value	0x24a
	.long	0x111b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF352
	.byte	0x1
	.value	0x24a
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0x24c
	.long	0xdc7
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x24d
	.long	0xd94
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x27
	.long	.LASF353
	.byte	0x1
	.value	0x25a
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d6e
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x25a
	.long	0x13d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x25a
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF354
	.byte	0x1
	.value	0x263
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da7
	.uleb128 0x29
	.string	"f"
	.byte	0x1
	.value	0x263
	.long	0x13e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x263
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF355
	.byte	0x1
	.value	0x26c
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e00
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x26c
	.long	0xf3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"idx"
	.byte	0x1
	.value	0x26c
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF308
	.byte	0x1
	.value	0x26c
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0x26e
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF356
	.byte	0x1
	.value	0x282
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e59
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x282
	.long	0xeff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x282
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF308
	.byte	0x1
	.value	0x282
	.long	0x111b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0x284
	.long	0xdc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF357
	.byte	0x1
	.value	0x295
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF358
	.byte	0x1
	.value	0x29d
	.long	0xd94
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed0
	.uleb128 0x28
	.long	.LASF359
	.byte	0x1
	.value	0x29d
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"pad"
	.byte	0x1
	.value	0x29d
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF360
	.byte	0x1
	.value	0x29f
	.long	0xd94
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	.LASF361
	.byte	0x1
	.value	0x2a1
	.long	0xd94
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x27
	.long	.LASF362
	.byte	0x1
	.value	0x2ae
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2072
	.uleb128 0x28
	.long	.LASF363
	.byte	0x1
	.value	0x2ae
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.string	"sv"
	.byte	0x1
	.value	0x2b0
	.long	0xdc7
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2d
	.long	.LASF364
	.byte	0x1
	.value	0x2b1
	.long	0xdc7
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2a
	.string	"gv"
	.byte	0x1
	.value	0x2b2
	.long	0xf34
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"av"
	.byte	0x1
	.value	0x2b3
	.long	0xf3a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2a
	.string	"hv"
	.byte	0x1
	.value	0x2b4
	.long	0xeff
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2a
	.string	"ptr"
	.byte	0x1
	.value	0x2b5
	.long	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"str"
	.byte	0x1
	.value	0x2b6
	.long	0x79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x2b7
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF407
	.byte	0x1
	.value	0x2eb
	.quad	.L211
	.uleb128 0x2f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1fa0
	.uleb128 0x2d
	.long	.LASF365
	.byte	0x1
	.value	0x315
	.long	0xf3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1fc6
	.uleb128 0x2d
	.long	.LASF365
	.byte	0x1
	.value	0x327
	.long	0xeff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1fec
	.uleb128 0x2d
	.long	.LASF366
	.byte	0x1
	.value	0x3b1
	.long	0xd9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x2012
	.uleb128 0x2d
	.long	.LASF367
	.byte	0x1
	.value	0x3ec
	.long	0xdc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2f
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2038
	.uleb128 0x2a
	.string	"off"
	.byte	0x1
	.value	0x412
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2a
	.string	"sp"
	.byte	0x1
	.value	0x41a
	.long	0x111b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x41b
	.long	0xf3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x41c
	.long	0xf3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF368
	.byte	0x1
	.value	0x428
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x209f
	.uleb128 0x29
	.string	"cx"
	.byte	0x1
	.value	0x428
	.long	0x12b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF369
	.byte	0x13
	.byte	0x18
	.long	0xf34
	.uleb128 0x31
	.long	.LASF370
	.byte	0x13
	.byte	0x89
	.long	0xd9f
	.uleb128 0x31
	.long	.LASF371
	.byte	0x13
	.byte	0x98
	.long	0x7f
	.uleb128 0x32
	.long	.LASF372
	.byte	0x13
	.value	0x125
	.long	0x370
	.uleb128 0x32
	.long	.LASF373
	.byte	0x13
	.value	0x162
	.long	0xd9f
	.uleb128 0x31
	.long	.LASF374
	.byte	0x14
	.byte	0x22
	.long	0x111b
	.uleb128 0x31
	.long	.LASF375
	.byte	0x14
	.byte	0x26
	.long	0xf17
	.uleb128 0x31
	.long	.LASF376
	.byte	0x14
	.byte	0x28
	.long	0x111b
	.uleb128 0x31
	.long	.LASF377
	.byte	0x14
	.byte	0x2a
	.long	0x111b
	.uleb128 0x31
	.long	.LASF378
	.byte	0x14
	.byte	0x2b
	.long	0x111b
	.uleb128 0x31
	.long	.LASF379
	.byte	0x14
	.byte	0x2d
	.long	0xe3a
	.uleb128 0x31
	.long	.LASF380
	.byte	0x14
	.byte	0x2e
	.long	0xd94
	.uleb128 0x31
	.long	.LASF381
	.byte	0x14
	.byte	0x2f
	.long	0xd94
	.uleb128 0x31
	.long	.LASF382
	.byte	0x14
	.byte	0x31
	.long	0x213b
	.uleb128 0x6
	.byte	0x8
	.long	0xcbb
	.uleb128 0x31
	.long	.LASF383
	.byte	0x14
	.byte	0x33
	.long	0xd94
	.uleb128 0x31
	.long	.LASF384
	.byte	0x14
	.byte	0x34
	.long	0xd94
	.uleb128 0x31
	.long	.LASF385
	.byte	0x14
	.byte	0x36
	.long	0x111b
	.uleb128 0x31
	.long	.LASF386
	.byte	0x14
	.byte	0x37
	.long	0xd94
	.uleb128 0x31
	.long	.LASF387
	.byte	0x14
	.byte	0x38
	.long	0xd94
	.uleb128 0x31
	.long	.LASF388
	.byte	0x14
	.byte	0x39
	.long	0xd94
	.uleb128 0x31
	.long	.LASF389
	.byte	0x14
	.byte	0x3b
	.long	0xe3a
	.uleb128 0x31
	.long	.LASF390
	.byte	0x14
	.byte	0x3c
	.long	0xe3a
	.uleb128 0x31
	.long	.LASF391
	.byte	0x14
	.byte	0x3d
	.long	0xe3a
	.uleb128 0x31
	.long	.LASF392
	.byte	0x14
	.byte	0x3f
	.long	0x21af
	.uleb128 0x6
	.byte	0x8
	.long	0xf17
	.uleb128 0x31
	.long	.LASF393
	.byte	0x14
	.byte	0x40
	.long	0xd94
	.uleb128 0x31
	.long	.LASF394
	.byte	0x14
	.byte	0x41
	.long	0xd94
	.uleb128 0x31
	.long	.LASF395
	.byte	0x14
	.byte	0x43
	.long	0xdc7
	.uleb128 0x31
	.long	.LASF396
	.byte	0x14
	.byte	0x5f
	.long	0x7f
	.uleb128 0x31
	.long	.LASF397
	.byte	0x14
	.byte	0x81
	.long	0x21ec
	.uleb128 0x33
	.long	0x114f
	.uleb128 0x31
	.long	.LASF398
	.byte	0x14
	.byte	0x85
	.long	0x57
	.uleb128 0x31
	.long	.LASF399
	.byte	0x14
	.byte	0x87
	.long	0xf3a
	.uleb128 0x31
	.long	.LASF400
	.byte	0x14
	.byte	0x88
	.long	0x147f
	.uleb128 0x32
	.long	.LASF401
	.byte	0x14
	.value	0x115
	.long	0xf3a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x28
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
.LASF27:
	.string	"cop_seq"
.LASF302:
	.string	"Perl_savestack_grow"
.LASF69:
	.string	"gp_sv"
.LASF193:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF303:
	.string	"Perl_savestack_grow_cnt"
.LASF404:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF319:
	.string	"Perl_save_item"
.LASF139:
	.string	"XPVCV"
.LASF378:
	.string	"PL_stack_max"
.LASF211:
	.string	"SVt_PVLV"
.LASF173:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF169:
	.string	"xio_type"
.LASF298:
	.string	"Perl_markstack_grow"
.LASF345:
	.string	"Perl_save_freeop"
.LASF263:
	.string	"sbu_m"
.LASF140:
	.string	"xpvcv"
.LASF100:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF190:
	.string	"flags"
.LASF262:
	.string	"sbu_s"
.LASF227:
	.string	"olddepth"
.LASF308:
	.string	"sptr"
.LASF326:
	.string	"boolp"
.LASF54:
	.string	"regstclass"
.LASF80:
	.string	"gp_file"
.LASF338:
	.string	"Perl_save_nogv"
.LASF178:
	.string	"svt_copy"
.LASF238:
	.string	"label"
.LASF301:
	.string	"Perl_push_scope"
.LASF170:
	.string	"xio_flags"
.LASF292:
	.string	"Perl_cxinc"
.LASF90:
	.string	"blku_oldscopesp"
.LASF209:
	.string	"SVt_PVMG"
.LASF241:
	.string	"next_op"
.LASF287:
	.string	"DESTRUCTORFUNC_t"
.LASF366:
	.string	"padflags"
.LASF400:
	.string	"PL_curstackinfo"
.LASF258:
	.string	"sbu_rxtainted"
.LASF243:
	.string	"itervar"
.LASF394:
	.string	"PL_retstack_max"
.LASF219:
	.string	"xiou_dirp"
.LASF392:
	.string	"PL_retstack"
.LASF184:
	.string	"any_bool"
.LASF397:
	.string	"PL_curcop"
.LASF160:
	.string	"xio_page_len"
.LASF39:
	.string	"op_pmregexp"
.LASF221:
	.string	"PADLIST"
.LASF247:
	.string	"iterix"
.LASF125:
	.string	"xhv_fill"
.LASF56:
	.string	"precomp"
.LASF346:
	.string	"Perl_save_freepv"
.LASF312:
	.string	"Perl_save_generic_svref"
.LASF137:
	.string	"xgv_stash"
.LASF223:
	.string	"block_sub"
.LASF53:
	.string	"endp"
.LASF20:
	.string	"op_type"
.LASF229:
	.string	"lval"
.LASF10:
	.string	"ssize_t"
.LASF228:
	.string	"hasargs"
.LASF249:
	.string	"blku_sub"
.LASF195:
	.string	"_PerlIO"
.LASF395:
	.string	"PL_Sv"
.LASF208:
	.string	"SVt_PVNV"
.LASF231:
	.string	"block_eval"
.LASF313:
	.string	"Perl_save_generic_pvref"
.LASF45:
	.string	"interpreter"
.LASF367:
	.string	"oval"
.LASF380:
	.string	"PL_scopestack_ix"
.LASF336:
	.string	"Perl_save_padsv"
.LASF255:
	.string	"sbu_rflags"
.LASF96:
	.string	"mg_moremagic"
.LASF335:
	.string	"Perl_save_sptr"
.LASF76:
	.string	"gp_cv"
.LASF300:
	.string	"newmax"
.LASF92:
	.string	"blku_gimme"
.LASF196:
	.string	"PerlIO"
.LASF285:
	.string	"float"
.LASF127:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF386:
	.string	"PL_tmps_ix"
.LASF363:
	.string	"base"
.LASF354:
	.string	"Perl_save_destructor_x"
.LASF172:
	.string	"mgvtbl"
.LASF401:
	.string	"PL_comppad"
.LASF274:
	.string	"si_type"
.LASF147:
	.string	"xcv_file"
.LASF146:
	.string	"xcv_gv"
.LASF234:
	.string	"old_namesv"
.LASF12:
	.string	"long long unsigned int"
.LASF205:
	.string	"SVt_RV"
.LASF377:
	.string	"PL_stack_base"
.LASF252:
	.string	"subst"
.LASF50:
	.string	"REGEXP"
.LASF245:
	.string	"iterlval"
.LASF201:
	.string	"reg_data"
.LASF188:
	.string	"clone_params"
.LASF200:
	.string	"reg_substr_data"
.LASF98:
	.string	"mg_private"
.LASF250:
	.string	"blku_eval"
.LASF109:
	.string	"xiv_iv"
.LASF306:
	.string	"Perl_free_tmps"
.LASF138:
	.string	"xgv_flags"
.LASF158:
	.string	"xio_lines"
.LASF383:
	.string	"PL_savestack_ix"
.LASF74:
	.string	"gp_hv"
.LASF104:
	.string	"xpv_pv"
.LASF132:
	.string	"XPVGV"
.LASF364:
	.string	"value"
.LASF369:
	.string	"PL_hintgv"
.LASF161:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF282:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF212:
	.string	"SVt_PVAV"
.LASF133:
	.string	"xpvgv"
.LASF233:
	.string	"old_op_type"
.LASF321:
	.string	"Perl_save_int"
.LASF350:
	.string	"Perl_save_list"
.LASF11:
	.string	"size_t"
.LASF226:
	.string	"argarray"
.LASF103:
	.string	"mg_len"
.LASF101:
	.string	"mg_obj"
.LASF333:
	.string	"pptr"
.LASF148:
	.string	"xcv_depth"
.LASF244:
	.string	"itersave"
.LASF368:
	.string	"Perl_cx_dump"
.LASF165:
	.string	"xio_fmt_gv"
.LASF376:
	.string	"PL_curpad"
.LASF284:
	.string	"hek_key"
.LASF179:
	.string	"svt_dup"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF130:
	.string	"xhv_pmroot"
.LASF330:
	.string	"bytep"
.LASF389:
	.string	"PL_markstack"
.LASF237:
	.string	"block_loop"
.LASF256:
	.string	"sbu_oldsave"
.LASF122:
	.string	"XPVHV"
.LASF176:
	.string	"svt_clear"
.LASF210:
	.string	"SVt_PVBM"
.LASF73:
	.string	"gp_av"
.LASF357:
	.string	"Perl_save_op"
.LASF157:
	.string	"xio_dirpu"
.LASF123:
	.string	"xpvhv"
.LASF253:
	.string	"sbu_iters"
.LASF361:
	.string	"elems"
.LASF387:
	.string	"PL_tmps_floor"
.LASF337:
	.string	"Perl_save_threadsv"
.LASF42:
	.string	"op_pmdynflags"
.LASF347:
	.string	"Perl_save_clearsv"
.LASF278:
	.string	"PERL_SI"
.LASF360:
	.string	"start"
.LASF293:
	.string	"old_max"
.LASF8:
	.string	"char"
.LASF317:
	.string	"Perl_save_ary"
.LASF153:
	.string	"XPVIO"
.LASF182:
	.string	"any_iv"
.LASF393:
	.string	"PL_retstack_ix"
.LASF189:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF240:
	.string	"redo_op"
.LASF385:
	.string	"PL_tmps_stack"
.LASF286:
	.string	"DESTRUCTORFUNC_NOCONTEXT_t"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF154:
	.string	"xpvio"
.LASF264:
	.string	"sbu_strend"
.LASF57:
	.string	"data"
.LASF88:
	.string	"blku_oldretsp"
.LASF299:
	.string	"oldmax"
.LASF388:
	.string	"PL_tmps_max"
.LASF379:
	.string	"PL_scopestack"
.LASF372:
	.string	"PL_sv_undef"
.LASF305:
	.string	"Perl_tmps_grow"
.LASF251:
	.string	"blku_loop"
.LASF198:
	.string	"type"
.LASF295:
	.string	"Perl_push_return"
.LASF35:
	.string	"op_last"
.LASF280:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF197:
	.string	"regnode"
.LASF384:
	.string	"PL_savestack_max"
.LASF332:
	.string	"Perl_save_pptr"
.LASF202:
	.string	"SVt_NULL"
.LASF273:
	.string	"si_cxmax"
.LASF267:
	.string	"cx_blk"
.LASF373:
	.string	"PL_hints"
.LASF58:
	.string	"subbeg"
.LASF191:
	.string	"proto_perl"
.LASF95:
	.string	"magic"
.LASF279:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF124:
	.string	"xhv_array"
.LASF162:
	.string	"xio_top_name"
.LASF121:
	.string	"xav_flags"
.LASF66:
	.string	"lastcloseparen"
.LASF199:
	.string	"next_off"
.LASF82:
	.string	"context"
.LASF91:
	.string	"blku_oldpm"
.LASF97:
	.string	"mg_virtual"
.LASF87:
	.string	"blku_oldcop"
.LASF30:
	.string	"cop_warnings"
.LASF277:
	.string	"si_markoff"
.LASF343:
	.string	"Perl_save_freesv"
.LASF32:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF391:
	.string	"PL_markstack_max"
.LASF356:
	.string	"Perl_save_helem"
.LASF248:
	.string	"itermax"
.LASF297:
	.string	"oldsave"
.LASF242:
	.string	"last_op"
.LASF261:
	.string	"sbu_targ"
.LASF359:
	.string	"size"
.LASF131:
	.string	"xhv_name"
.LASF102:
	.string	"mg_ptr"
.LASF320:
	.string	"item"
.LASF236:
	.string	"cur_text"
.LASF83:
	.string	"cx_type"
.LASF323:
	.string	"Perl_save_long"
.LASF155:
	.string	"xio_ifp"
.LASF24:
	.string	"cop_label"
.LASF46:
	.string	"broiled"
.LASF204:
	.string	"SVt_NV"
.LASF352:
	.string	"maxsarg"
.LASF396:
	.string	"PL_tainted"
.LASF276:
	.string	"si_next"
.LASF16:
	.string	"op_next"
.LASF119:
	.string	"xav_alloc"
.LASF75:
	.string	"gp_egv"
.LASF52:
	.string	"startp"
.LASF26:
	.string	"cop_filegv"
.LASF260:
	.string	"sbu_dstr"
.LASF47:
	.string	"sv_any"
.LASF25:
	.string	"cop_stash"
.LASF43:
	.string	"op_pmstash"
.LASF159:
	.string	"xio_page"
.LASF220:
	.string	"xiou_any"
.LASF84:
	.string	"cx_u"
.LASF216:
	.string	"SVt_PVFM"
.LASF371:
	.string	"PL_tainting"
.LASF89:
	.string	"blku_oldmarksp"
.LASF94:
	.string	"MAGIC"
.LASF275:
	.string	"si_prev"
.LASF175:
	.string	"svt_len"
.LASF402:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF358:
	.string	"Perl_save_alloc"
.LASF325:
	.string	"Perl_save_bool"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF374:
	.string	"PL_stack_sp"
.LASF403:
	.string	"scope.c"
.LASF307:
	.string	"myfloor"
.LASF192:
	.string	"line_t"
.LASF129:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF370:
	.string	"PL_sub_generation"
.LASF342:
	.string	"aptr"
.LASF290:
	.string	"stitems"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF142:
	.string	"xcv_start"
.LASF152:
	.string	"xcv_outside_seq"
.LASF144:
	.string	"xcv_xsub"
.LASF327:
	.string	"Perl_save_I32"
.LASF115:
	.string	"xav_array"
.LASF108:
	.string	"xpvmg"
.LASF168:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF118:
	.string	"xof_off"
.LASF328:
	.string	"Perl_save_I16"
.LASF215:
	.string	"SVt_PVGV"
.LASF310:
	.string	"Perl_save_scalar"
.LASF235:
	.string	"old_eval_root"
.LASF382:
	.string	"PL_savestack"
.LASF206:
	.string	"SVt_PV"
.LASF224:
	.string	"dfoutgv"
.LASF340:
	.string	"hptr"
.LASF106:
	.string	"xpv_len"
.LASF283:
	.string	"hek_len"
.LASF171:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF322:
	.string	"intp"
.LASF28:
	.string	"cop_arybase"
.LASF61:
	.string	"refcnt"
.LASF85:
	.string	"block"
.LASF230:
	.string	"oldcomppad"
.LASF120:
	.string	"xav_arylen"
.LASF268:
	.string	"cx_subst"
.LASF141:
	.string	"xcv_stash"
.LASF136:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF143:
	.string	"xcv_root"
.LASF266:
	.string	"sbu_rx"
.LASF318:
	.string	"Perl_save_hash"
.LASF51:
	.string	"regexp"
.LASF365:
	.string	"goner"
.LASF281:
	.string	"hent_val"
.LASF150:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF126:
	.string	"xhv_max"
.LASF149:
	.string	"xcv_padlist"
.LASF348:
	.string	"Perl_save_delete"
.LASF213:
	.string	"SVt_PVHV"
.LASF111:
	.string	"xmg_magic"
.LASF398:
	.string	"PL_localizing"
.LASF407:
	.string	"restore_sv"
.LASF296:
	.string	"Perl_pop_scope"
.LASF7:
	.string	"sizetype"
.LASF294:
	.string	"retop"
.LASF3:
	.string	"long unsigned int"
.LASF316:
	.string	"empty"
.LASF181:
	.string	"any_i32"
.LASF174:
	.string	"svt_set"
.LASF272:
	.string	"si_cxix"
.LASF187:
	.string	"CLONE_PARAMS"
.LASF164:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF270:
	.string	"si_stack"
.LASF194:
	.string	"__dirstream"
.LASF183:
	.string	"any_long"
.LASF33:
	.string	"pmop"
.LASF314:
	.string	"Perl_save_shared_pvref"
.LASF116:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF341:
	.string	"Perl_save_aptr"
.LASF304:
	.string	"need"
.LASF254:
	.string	"sbu_maxiters"
.LASF41:
	.string	"op_pmpermflags"
.LASF344:
	.string	"Perl_save_mortalizesv"
.LASF329:
	.string	"Perl_save_I8"
.LASF259:
	.string	"sbu_orig"
.LASF217:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF128:
	.string	"xhv_riter"
.LASF134:
	.string	"xgv_gp"
.LASF38:
	.string	"op_pmnext"
.LASF207:
	.string	"SVt_PVIV"
.LASF18:
	.string	"op_ppaddr"
.LASF81:
	.string	"PERL_CONTEXT"
.LASF257:
	.string	"sbu_once"
.LASF271:
	.string	"si_cxstack"
.LASF48:
	.string	"sv_refcnt"
.LASF324:
	.string	"longp"
.LASF315:
	.string	"Perl_save_gp"
.LASF339:
	.string	"Perl_save_hptr"
.LASF265:
	.string	"sbu_rxres"
.LASF110:
	.string	"xnv_nv"
.LASF351:
	.string	"sarg"
.LASF203:
	.string	"SVt_IV"
.LASF349:
	.string	"klen"
.LASF288:
	.string	"Perl_stack_grow"
.LASF225:
	.string	"savearray"
.LASF311:
	.string	"Perl_save_svref"
.LASF151:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF99:
	.string	"mg_type"
.LASF353:
	.string	"Perl_save_destructor"
.LASF36:
	.string	"op_pmreplroot"
.LASF246:
	.string	"iterary"
.LASF167:
	.string	"xio_bottom_gv"
.LASF105:
	.string	"xpv_cur"
.LASF93:
	.string	"blk_u"
.LASF180:
	.string	"any_ptr"
.LASF309:
	.string	"oldtainted"
.LASF113:
	.string	"XPVAV"
.LASF107:
	.string	"XPVMG"
.LASF117:
	.string	"xav_max"
.LASF177:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF222:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF381:
	.string	"PL_scopestack_max"
.LASF114:
	.string	"xpvav"
.LASF112:
	.string	"xmg_stash"
.LASF289:
	.string	"Perl_new_stackinfo"
.LASF334:
	.string	"Perl_save_vptr"
.LASF269:
	.string	"stackinfo"
.LASF362:
	.string	"Perl_leave_scope"
.LASF77:
	.string	"gp_cvgen"
.LASF232:
	.string	"old_in_eval"
.LASF60:
	.string	"sublen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF145:
	.string	"xcv_xsubany"
.LASF399:
	.string	"PL_curstack"
.LASF218:
	.string	"cv_flags_t"
.LASF156:
	.string	"xio_ofp"
.LASF405:
	.string	"Perl_pop_return"
.LASF390:
	.string	"PL_markstack_ptr"
.LASF186:
	.string	"any_dxptr"
.LASF291:
	.string	"cxitems"
.LASF239:
	.string	"resetsp"
.LASF163:
	.string	"xio_top_gv"
.LASF406:
	.string	"S_save_scalar_at"
.LASF355:
	.string	"Perl_save_aelem"
.LASF64:
	.string	"nparens"
.LASF214:
	.string	"SVt_PVCV"
.LASF166:
	.string	"xio_bottom_name"
.LASF86:
	.string	"blku_oldsp"
.LASF331:
	.string	"Perl_save_iv"
.LASF185:
	.string	"any_dptr"
.LASF375:
	.string	"PL_op"
.LASF135:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
