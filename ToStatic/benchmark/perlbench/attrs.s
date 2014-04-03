	.file	"attrs.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 attrs.c
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
	.string	"method"
.LC1:
	.string	"locked"
	.text
	.type	get_flag, @function
get_flag:
.LFB2:
	.file 1 "attrs.c"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# attr, attr
	.loc 1 18 0
	movq	-8(%rbp), %rax	# attr, tmp63
	movl	$6, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	strncmp	#
	testl	%eax, %eax	# D.10572
	jne	.L2	#,
	.loc 1 19 0
	movl	$64, %eax	#, D.10571
	jmp	.L3	#
.L2:
	.loc 1 20 0
	movq	-8(%rbp), %rax	# attr, tmp64
	movl	$6, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	strncmp	#
	testl	%eax, %eax	# D.10572
	jne	.L4	#,
	.loc 1 21 0
	movl	$128, %eax	#, D.10571
	jmp	.L3	#
.L4:
	.loc 1 23 0
	movl	$0, %eax	#, D.10571
.L3:
	.loc 1 24 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_flag, .-get_flag
	.section	.rodata
.LC2:
	.string	"Usage: %s(Class, ...)"
	.align 8
.LC3:
	.string	"can't set attributes outside a subroutine scope"
	.align 8
.LC4:
	.string	"pragma \"attrs\" is deprecated, use \"sub NAME : ATTRS\" instead"
.LC5:
	.string	"invalid attribute name %s"
	.text
	.globl	XS_attrs_import
	.type	XS_attrs_import, @function
XS_attrs_import:
.LFB3:
	.loc 1 29 0
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
	.loc 1 30 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.3
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.3, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.2_8, D.10575
	cltq
	salq	$3, %rax	#, D.10576
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.5
	subq	%rax, %rdx	# PL_stack_base.6, D.10577
	movq	%rdx, %rax	# D.10577, D.10577
	sarq	$3, %rax	#, tmp150
	addl	$1, %eax	#, D.10578
	movl	%eax, -44(%rbp)	# D.10578, ax
	movq	%rbx, %rdx	# sp, sp.7
	movq	%r12, %rax	# mark, mark.8
	subq	%rax, %rdx	# mark.8, D.10577
	movq	%rdx, %rax	# D.10577, D.10577
	sarq	$3, %rax	#, tmp151
	movl	%eax, -40(%rbp)	# D.10577, items
	.loc 1 31 0
	movq	-72(%rbp), %rax	# cv, tmp152
	movq	(%rax), %rax	# cv_27(D)->sv_any, D.10579
	movl	88(%rax), %eax	# _28->xcv_xsubany.any_i32, tmp153
	movl	%eax, -36(%rbp)	# tmp153, ix
	.loc 1 33 0
	movl	-40(%rbp), %eax	# items, tmp154
	cltq
	salq	$3, %rax	#, D.10576
	negq	%rax	# D.10580
	addq	%rax, %rbx	# D.10580, sp
.LBB2:
	.loc 1 39 0
	cmpl	$0, -40(%rbp)	#, items
	jg	.L6	#,
	.loc 1 40 0
	movq	-72(%rbp), %rax	# cv, tmp155
	movq	(%rax), %rax	# cv_27(D)->sv_any, D.10579
	movq	96(%rax), %rax	# _34->xcv_gv, D.10581
	movq	(%rax), %rax	# _35->sv_any, D.10582
	movq	64(%rax), %rax	# _36->xgv_name, D.10583
	movq	%rax, %rsi	# D.10583,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L6:
	.loc 1 41 0
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.9
	testq	%rax, %rax	# PL_compcv.9
	je	.L7	#,
	.loc 1 41 0 is_stmt 0 discriminator 1
	movq	PL_compcv(%rip), %rax	# PL_compcv, PL_compcv.10
	movq	(%rax), %rax	# PL_compcv.10_39->sv_any, D.10579
	movq	128(%rax), %rax	# _40->xcv_outside, tmp156
	movq	%rax, -72(%rbp)	# tmp156, cv
	cmpq	$0, -72(%rbp)	#, cv
	jne	.L8	#,
.L7:
	.loc 1 42 0 is_stmt 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L8:
	.loc 1 43 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.11
	movq	80(%rax), %rax	# PL_curcop.11_42->cop_warnings, D.10584
	testq	%rax, %rax	# D.10584
	je	.L9	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.12
	movq	80(%rax), %rax	# PL_curcop.12_44->cop_warnings, D.10584
	cmpq	$32, %rax	#, D.10584
	je	.L9	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.13
	movq	80(%rax), %rax	# PL_curcop.13_46->cop_warnings, D.10584
	cmpq	$16, %rax	#, D.10584
	je	.L10	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.14
	movq	80(%rax), %rax	# PL_curcop.14_48->cop_warnings, D.10584
	movq	(%rax), %rax	# _49->sv_any, D.10585
	movq	(%rax), %rax	# MEM[(struct XPV *)_50].xpv_pv, D.10583
	movzbl	(%rax), %eax	# *_51, D.10586
	movsbl	%al, %eax	# D.10586, D.10575
	andl	$16, %eax	#, D.10575
	testl	%eax, %eax	# D.10575
	jne	.L10	#,
.L9:
	.loc 1 43 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.15
	movq	80(%rax), %rax	# PL_curcop.15_55->cop_warnings, D.10584
	testq	%rax, %rax	# D.10584
	jne	.L11	#,
	.loc 1 43 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.16
	movzbl	%al, %eax	# PL_dowarn.16, D.10575
	andl	$1, %eax	#, D.10575
	testl	%eax, %eax	# D.10575
	je	.L11	#,
.L10:
	.loc 1 44 0 is_stmt 1
	movl	$.LC4, %esi	#,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L11:
	.loc 1 47 0
	movl	$1, -48(%rbp)	#, i
	jmp	.L12	#
.L18:
.LBB3:
	.loc 1 49 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.18
	movl	-48(%rbp), %edx	# i, tmp157
	movl	-44(%rbp), %ecx	# ax, tmp158
	addl	%ecx, %edx	# tmp158, D.10575
	movslq	%edx, %rdx	# D.10575, D.10576
	salq	$3, %rdx	#, D.10576
	addq	%rdx, %rax	# D.10576, D.10587
	movq	(%rax), %rax	# *_65, D.10584
	movl	12(%rax), %eax	# _66->sv_flags, D.10588
	andl	$262144, %eax	#, D.10588
	testl	%eax, %eax	# D.10588
	je	.L13	#,
	.loc 1 49 0 is_stmt 0 discriminator 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.19
	movl	-48(%rbp), %edx	# i, tmp159
	movl	-44(%rbp), %ecx	# ax, tmp160
	addl	%ecx, %edx	# tmp160, D.10575
	movslq	%edx, %rdx	# D.10575, D.10576
	salq	$3, %rdx	#, D.10576
	addq	%rdx, %rax	# D.10576, D.10587
	movq	(%rax), %rax	# *_73, D.10584
	movq	(%rax), %rax	# _74->sv_any, D.10585
	movq	8(%rax), %rax	# MEM[(struct XPV *)_75].xpv_cur, n_a.20
	movq	%rax, -32(%rbp)	# n_a.20, n_a
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.21
	movl	-48(%rbp), %edx	# i, tmp161
	movl	-44(%rbp), %ecx	# ax, tmp162
	addl	%ecx, %edx	# tmp162, D.10575
	movslq	%edx, %rdx	# D.10575, D.10576
	salq	$3, %rdx	#, D.10576
	addq	%rdx, %rax	# D.10576, D.10587
	movq	(%rax), %rax	# *_81, D.10584
	movq	(%rax), %rax	# _82->sv_any, D.10585
	movq	(%rax), %rax	# MEM[(struct XPV *)_83].xpv_pv, iftmp.17
	jmp	.L14	#
.L13:
	.loc 1 49 0 discriminator 2
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.22
	movl	-48(%rbp), %edx	# i, tmp163
	movl	-44(%rbp), %ecx	# ax, tmp164
	addl	%ecx, %edx	# tmp164, D.10575
	movslq	%edx, %rdx	# D.10575, D.10576
	salq	$3, %rdx	#, D.10576
	addq	%rdx, %rax	# D.10576, D.10587
	movq	(%rax), %rax	# *_89, D.10584
	leaq	-32(%rbp), %rcx	#, tmp165
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp165,
	movq	%rax, %rdi	# D.10584,
	call	Perl_sv_2pv_flags	#
.L14:
	.loc 1 49 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.17, attr
	.loc 1 50 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# attr, tmp166
	movq	%rax, %rdi	# tmp166,
	call	get_flag	#
	movw	%ax, -50(%rbp)	# tmp167, flag
	.loc 1 51 0 discriminator 3
	cmpw	$0, -50(%rbp)	#, flag
	jne	.L15	#,
	.loc 1 52 0
	movq	-24(%rbp), %rax	# attr, tmp168
	movq	%rax, %rsi	# tmp168,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L15:
	.loc 1 53 0
	cmpl	$0, -36(%rbp)	#, ix
	je	.L16	#,
	.loc 1 54 0
	movq	-72(%rbp), %rax	# cv, tmp169
	movq	(%rax), %rax	# cv_2->sv_any, D.10579
	movq	-72(%rbp), %rdx	# cv, tmp170
	movq	(%rdx), %rdx	# cv_2->sv_any, D.10579
	movzwl	136(%rdx), %edx	# _95->xcv_flags, D.10589
	movzwl	-50(%rbp), %ecx	# flag, flag.23
	notl	%ecx	# D.10590
	andl	%ecx, %edx	# D.10590, D.10590
	movw	%dx, 136(%rax)	# D.10589, _94->xcv_flags
	jmp	.L17	#
.L16:
	.loc 1 56 0
	movq	-72(%rbp), %rax	# cv, tmp171
	movq	(%rax), %rax	# cv_2->sv_any, D.10579
	movq	-72(%rbp), %rdx	# cv, tmp172
	movq	(%rdx), %rdx	# cv_2->sv_any, D.10579
	movzwl	136(%rdx), %edx	# _103->xcv_flags, D.10589
	orw	-50(%rbp), %dx	# flag, D.10589
	movw	%dx, 136(%rax)	# D.10589, _102->xcv_flags
.L17:
.LBE3:
	.loc 1 47 0 discriminator 1
	addl	$1, -48(%rbp)	#, i
.L12:
	movl	-48(%rbp), %eax	# i, tmp173
	cmpl	-40(%rbp), %eax	# items, tmp173
	jl	.L18	#,
	.loc 1 59 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 60 0
	nop
.LBE2:
	.loc 1 62 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	XS_attrs_import, .-XS_attrs_import
	.section	.rodata
.LC6:
	.string	"Usage: attrs::get(sub)"
	.align 8
.LC7:
	.string	"invalid subroutine reference or name"
	.text
	.globl	XS_attrs_get
	.type	XS_attrs_get, @function
XS_attrs_get:
.LFB4:
	.loc 1 66 0
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
	.loc 1 67 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.24
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.25
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.27
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.27, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.26_11, D.10595
	cltq
	salq	$3, %rax	#, D.10596
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.28
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.29
	subq	%rax, %rdx	# PL_stack_base.30, D.10597
	movq	%rdx, %rax	# D.10597, D.10597
	sarq	$3, %rax	#, tmp119
	addl	$1, %eax	#, D.10598
	movl	%eax, -48(%rbp)	# D.10598, ax
	movq	%rbx, %rdx	# sp, sp.31
	movq	%r12, %rax	# mark, mark.32
	subq	%rax, %rdx	# mark.32, D.10597
	movq	%rdx, %rax	# D.10597, D.10597
	sarq	$3, %rax	#, tmp120
	movl	%eax, -44(%rbp)	# D.10597, items
	.loc 1 68 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L21	#,
	.loc 1 69 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L21:
	.loc 1 70 0
	movl	-44(%rbp), %eax	# items, tmp121
	cltq
	salq	$3, %rax	#, D.10596
	negq	%rax	# D.10599
	addq	%rax, %rbx	# D.10599, sp
.LBB4:
	.loc 1 72 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.33
	movl	-48(%rbp), %edx	# ax, tmp122
	movslq	%edx, %rdx	# tmp122, D.10596
	salq	$3, %rdx	#, D.10596
	addq	%rdx, %rax	# D.10596, D.10600
	movq	(%rax), %rax	# *_37, tmp123
	movq	%rax, -32(%rbp)	# tmp123, sub
	.loc 1 74 0
	movq	-32(%rbp), %rax	# sub, tmp124
	movl	12(%rax), %eax	# sub_38->sv_flags, D.10601
	andl	$524288, %eax	#, D.10601
	testl	%eax, %eax	# D.10601
	je	.L22	#,
	.loc 1 75 0
	movq	-32(%rbp), %rax	# sub, tmp125
	movq	(%rax), %rax	# sub_38->sv_any, D.10602
	movq	(%rax), %rax	# MEM[(struct XRV *)_41].xrv_rv, tmp126
	movq	%rax, -32(%rbp)	# tmp126, sub
	.loc 1 76 0
	movq	-32(%rbp), %rax	# sub, tmp127
	movl	12(%rax), %eax	# sub_42->sv_flags, D.10601
	movzbl	%al, %eax	# D.10601, D.10601
	cmpl	$12, %eax	#, D.10601
	je	.L24	#,
	.loc 1 77 0
	movq	$0, -32(%rbp)	#, sub
	jmp	.L24	#
.L22:
.LBB5:
	.loc 1 81 0
	movq	-32(%rbp), %rax	# sub, tmp128
	movl	12(%rax), %eax	# sub_38->sv_flags, D.10601
	andl	$262144, %eax	#, D.10601
	testl	%eax, %eax	# D.10601
	je	.L25	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sub, tmp129
	movq	(%rax), %rax	# sub_38->sv_any, D.10602
	movq	8(%rax), %rax	# MEM[(struct XPV *)_48].xpv_cur, n_a.35
	movq	%rax, -40(%rbp)	# n_a.35, n_a
	movq	-32(%rbp), %rax	# sub, tmp130
	movq	(%rax), %rax	# sub_38->sv_any, D.10602
	movq	(%rax), %rax	# MEM[(struct XPV *)_50].xpv_pv, iftmp.34
	jmp	.L26	#
.L25:
	.loc 1 81 0 discriminator 2
	leaq	-40(%rbp), %rcx	#, tmp131
	movq	-32(%rbp), %rax	# sub, tmp132
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	Perl_sv_2pv_flags	#
.L26:
	.loc 1 81 0 discriminator 1
	movq	%rax, -24(%rbp)	# iftmp.34, name
	.loc 1 82 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# name, tmp133
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	Perl_get_cv	#
	movq	%rax, -32(%rbp)	# tmp134, sub
.L24:
.LBE5:
	.loc 1 84 0
	cmpq	$0, -32(%rbp)	#, sub
	jne	.L27	#,
	.loc 1 85 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L27:
	.loc 1 86 0
	movq	-32(%rbp), %rax	# sub, tmp135
	movq	(%rax), %rax	# sub_6->sv_any, D.10602
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_55].xcv_flags, D.10603
	movzwl	%ax, %eax	# D.10603, D.10595
	andl	$64, %eax	#, D.10595
	testl	%eax, %eax	# D.10595
	je	.L28	#,
.LBB6:
	.loc 1 87 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.36
	movq	%rax, %rdx	# PL_stack_max.36, PL_stack_max.37
	movq	%rbx, %rax	# sp, sp.38
	subq	%rax, %rdx	# sp.38, D.10597
	movq	%rdx, %rax	# D.10597, D.10597
	cmpq	$7, %rax	#, D.10597
	jg	.L29	#,
	.loc 1 87 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L29:
	.loc 1 87 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.10604,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10604, *sp_64
.L28:
.LBE6:
	.loc 1 88 0 is_stmt 1
	movq	-32(%rbp), %rax	# sub, tmp136
	movq	(%rax), %rax	# sub_6->sv_any, D.10602
	movzwl	136(%rax), %eax	# MEM[(struct XPVCV *)_68].xcv_flags, D.10603
	movzwl	%ax, %eax	# D.10603, D.10595
	andl	$128, %eax	#, D.10595
	testl	%eax, %eax	# D.10595
	je	.L30	#,
.LBB7:
	.loc 1 89 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.39
	movq	%rax, %rdx	# PL_stack_max.39, PL_stack_max.40
	movq	%rbx, %rax	# sp, sp.41
	subq	%rax, %rdx	# sp.41, D.10597
	movq	%rdx, %rax	# D.10597, D.10597
	cmpq	$7, %rax	#, D.10597
	jg	.L31	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L31:
	.loc 1 89 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$6, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.10604,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10604, *sp_77
.L30:
.LBE7:
	.loc 1 91 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 92 0
	nop
.LBE4:
	.loc 1 94 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	XS_attrs_get, .-XS_attrs_get
	.section	.rodata
.LC8:
	.string	"attrs.c"
.LC9:
	.string	"attrs::unimport"
.LC10:
	.string	"attrs::import"
.LC11:
	.string	"attrs::get"
	.text
	.globl	boot_attrs
	.type	boot_attrs, @function
boot_attrs:
.LFB5:
	.loc 1 101 0
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
	.loc 1 102 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.42
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.43
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.45
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.45, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.44_4, D.10607
	cltq
	salq	$3, %rax	#, D.10608
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.46
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.47
	subq	%rax, %rdx	# PL_stack_base.48, D.10609
	movq	%rdx, %rax	# D.10609, D.10609
	sarq	$3, %rax	#, tmp92
	addl	$1, %eax	#, D.10610
	movl	%eax, -48(%rbp)	# D.10610, ax
	movq	%r12, %rdx	# sp, sp.49
	movq	%rbx, %rax	# mark, mark.50
	subq	%rax, %rdx	# mark.50, D.10609
	movq	%rdx, %rax	# D.10609, D.10609
	sarq	$3, %rax	#, tmp93
	movl	%eax, -44(%rbp)	# D.10609, items
	.loc 1 103 0
	movq	$.LC8, -40(%rbp)	#, file
.LBB8:
	.loc 1 110 0
	movq	-40(%rbp), %rax	# file, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$XS_attrs_import, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp95, cv
	.loc 1 111 0
	movq	-32(%rbp), %rax	# cv, tmp96
	movq	(%rax), %rax	# cv_24->sv_any, D.10611
	movl	$1, 88(%rax)	#, _25->xcv_xsubany.any_i32
	.loc 1 112 0
	movq	-40(%rbp), %rax	# file, tmp97
	movq	%rax, %rdx	# tmp97,
	movl	$XS_attrs_import, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_newXS	#
	movq	%rax, -32(%rbp)	# tmp98, cv
	.loc 1 113 0
	movq	-32(%rbp), %rax	# cv, tmp99
	movq	(%rax), %rax	# cv_26->sv_any, D.10611
	movl	$0, 88(%rax)	#, _27->xcv_xsubany.any_i32
	.loc 1 114 0
	movq	-40(%rbp), %rax	# file, tmp100
	movq	%rax, %rdx	# tmp100,
	movl	$XS_attrs_get, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_newXS	#
.LBE8:
.LBB9:
	.loc 1 116 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.51
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.10608
	salq	$3, %rdx	#, D.10608
	addq	%rdx, %rax	# D.10608, D.10612
	movq	$PL_sv_yes, (%rax)	#, *_31
.LBB10:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.52
	movl	-48(%rbp), %edx	# ax, tmp102
	movslq	%edx, %rcx	# tmp102, D.10613
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.53
	addq	%rcx, %rdx	# D.10613, D.10613
	salq	$3, %rdx	#, D.10613
	subq	$8, %rdx	#, D.10613
	addq	%rdx, %rax	# D.10613, PL_stack_sp.54
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.54, PL_stack_sp
	nop
.LBE10:
.LBE9:
	.loc 1 117 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	boot_attrs, .-boot_attrs
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
	.long	0x1262
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF234
	.byte	0x1
	.long	.LASF235
	.long	.LASF236
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
	.long	.LASF180
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
	.long	0xe02
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xe02
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xe86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xe70
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xc74
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xc74
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xc6a
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xc6a
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x17c
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x249
	.uleb128 0xd
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xe02
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xe02
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xe86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xe70
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xc74
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xc74
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xc6a
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xc6a
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
	.long	0xdea
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xe1f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xc8a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xc7f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xc95
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xcb2
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xcb2
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x255
	.uleb128 0xe
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x343
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xe02
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xe02
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xe86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xe70
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xc74
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xc74
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xc6a
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xc6a
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xe02
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xe02
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xe02
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xe02
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xe8c
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xe92
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xc8a
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xc8a
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xc6a
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xdea
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x34f
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x36a
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
	.long	0x375
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3a5
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
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3b0
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3e0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xdd2
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3eb
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x41b
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xdd8
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x426
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x456
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xdcc
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x462
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x53b
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xd25
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xd25
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xd2b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xd36
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
	.long	0xd41
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
	.long	0xd47
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xc7f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xc7f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xc7f
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xc7f
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xc8a
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xc8a
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xc8a
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xc8a
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xd4d
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x546
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5e2
	.uleb128 0xd
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xcb2
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xe5f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xe13
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xe25
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xdea
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xe1f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xe13
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xc8a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xc8a
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xc95
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
	.long	0x5ed
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x61d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xdc6
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x64d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xdde
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xc8a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xc8a
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f5
	.long	0x659
	.uleb128 0xe
	.long	.LASF82
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6c6
	.uleb128 0xd
	.long	.LASF83
	.byte	0xc
	.byte	0x1b
	.long	0xde4
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0xfa3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xc74
	.byte	0x10
	.uleb128 0xd
	.long	.LASF86
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0x1f
	.long	0xc6a
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xcb2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x22
	.long	0xc7f
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x6d2
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x6eb
	.uleb128 0xd
	.long	.LASF91
	.byte	0x9
	.byte	0xf6
	.long	0xcb2
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6f7
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x728
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x6
	.value	0x7fd
	.long	0x734
	.uleb128 0xe
	.long	.LASF96
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x7b9
	.uleb128 0xd
	.long	.LASF97
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF101
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0x11
	.long	0xde4
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x12
	.long	0xdea
	.byte	0x30
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x14
	.long	0xe98
	.byte	0x38
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x15
	.long	0xcb2
	.byte	0x40
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x16
	.long	0xc6a
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF107
	.byte	0x6
	.value	0x7fe
	.long	0x7c5
	.uleb128 0xe
	.long	.LASF108
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x856
	.uleb128 0xd
	.long	.LASF109
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF110
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF111
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF112
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF101
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xe
	.byte	0x29
	.long	0xde4
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xe
	.byte	0x2a
	.long	0xdea
	.byte	0x30
	.uleb128 0xd
	.long	.LASF113
	.byte	0xe
	.byte	0x2c
	.long	0xc7f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF114
	.byte	0xe
	.byte	0x2d
	.long	0xf1a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF115
	.byte	0xe
	.byte	0x2e
	.long	0xe8c
	.byte	0x48
	.uleb128 0xd
	.long	.LASF116
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF117
	.byte	0x6
	.value	0x7ff
	.long	0x862
	.uleb128 0x10
	.long	.LASF118
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0x90c
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF101
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x136
	.long	0xde4
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x137
	.long	0xdea
	.byte	0x30
	.uleb128 0xf
	.long	.LASF120
	.byte	0x9
	.value	0x139
	.long	0xdf0
	.byte	0x38
	.uleb128 0xf
	.long	.LASF121
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.value	0x13c
	.long	0xdea
	.byte	0x50
	.uleb128 0xf
	.long	.LASF124
	.byte	0x9
	.value	0x13d
	.long	0xc6a
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x6
	.value	0x800
	.long	0x918
	.uleb128 0xe
	.long	.LASF126
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xa09
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF100
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF101
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF102
	.byte	0xf
	.byte	0x14
	.long	0xde4
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x15
	.long	0xdea
	.byte	0x30
	.uleb128 0xd
	.long	.LASF127
	.byte	0xf
	.byte	0x17
	.long	0xdea
	.byte	0x38
	.uleb128 0xd
	.long	.LASF128
	.byte	0xf
	.byte	0x18
	.long	0xe02
	.byte	0x40
	.uleb128 0xd
	.long	.LASF129
	.byte	0xf
	.byte	0x19
	.long	0xe02
	.byte	0x48
	.uleb128 0xd
	.long	.LASF130
	.byte	0xf
	.byte	0x1a
	.long	0xe19
	.byte	0x50
	.uleb128 0xd
	.long	.LASF131
	.byte	0xf
	.byte	0x1b
	.long	0xbbb
	.byte	0x58
	.uleb128 0xd
	.long	.LASF132
	.byte	0xf
	.byte	0x1c
	.long	0xe1f
	.byte	0x60
	.uleb128 0xd
	.long	.LASF133
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF134
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF135
	.byte	0xf
	.byte	0x1f
	.long	0xe7b
	.byte	0x78
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x20
	.long	0xe13
	.byte	0x80
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x25
	.long	0xdf6
	.byte	0x88
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x26
	.long	0xc8a
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF139
	.byte	0x6
	.value	0x803
	.long	0xa15
	.uleb128 0x10
	.long	.LASF140
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xb4e
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF101
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x176
	.long	0xde4
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x177
	.long	0xdea
	.byte	0x30
	.uleb128 0xf
	.long	.LASF141
	.byte	0x9
	.value	0x179
	.long	0xe53
	.byte	0x38
	.uleb128 0xf
	.long	.LASF142
	.byte	0x9
	.value	0x17a
	.long	0xe53
	.byte	0x40
	.uleb128 0xf
	.long	.LASF143
	.byte	0x9
	.value	0x187
	.long	0xe2b
	.byte	0x48
	.uleb128 0xf
	.long	.LASF144
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF145
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x18d
	.long	0xe1f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x18f
	.long	0xe1f
	.byte	0x88
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x191
	.long	0xe1f
	.byte	0x98
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF157
	.byte	0x6
	.value	0x804
	.long	0xb5a
	.uleb128 0xe
	.long	.LASF158
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xbbb
	.uleb128 0xd
	.long	.LASF159
	.byte	0xc
	.byte	0xf
	.long	0xf3a
	.byte	0
	.uleb128 0xd
	.long	.LASF160
	.byte	0xc
	.byte	0x10
	.long	0xf3a
	.byte	0x8
	.uleb128 0xd
	.long	.LASF161
	.byte	0xc
	.byte	0x11
	.long	0xf54
	.byte	0x10
	.uleb128 0xd
	.long	.LASF162
	.byte	0xc
	.byte	0x12
	.long	0xf3a
	.byte	0x18
	.uleb128 0xd
	.long	.LASF163
	.byte	0xc
	.byte	0x13
	.long	0xf3a
	.byte	0x20
	.uleb128 0xd
	.long	.LASF164
	.byte	0xc
	.byte	0x14
	.long	0xf7d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF165
	.byte	0xc
	.byte	0x16
	.long	0xf9d
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xbc7
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xc29
	.uleb128 0x12
	.long	.LASF166
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF167
	.byte	0x6
	.value	0x9f3
	.long	0xc7f
	.uleb128 0x12
	.long	.LASF168
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF169
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF170
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f7
	.long	0xcac
	.uleb128 0x12
	.long	.LASF172
	.byte	0x6
	.value	0x9f8
	.long	0xcac
	.byte	0
	.uleb128 0xb
	.long	.LASF173
	.byte	0x6
	.value	0x808
	.long	0xc35
	.uleb128 0x10
	.long	.LASF174
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xc6a
	.uleb128 0xf
	.long	.LASF175
	.byte	0x9
	.value	0x4ee
	.long	0xe25
	.byte	0
	.uleb128 0xf
	.long	.LASF176
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF177
	.byte	0x9
	.value	0x4f0
	.long	0xe59
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
	.long	.LASF178
	.byte	0x10
	.value	0x209
	.long	0xc8a
	.uleb128 0x13
	.long	0xcac
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xca1
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xcc8
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF179
	.byte	0x11
	.byte	0x63
	.long	0xcd3
	.uleb128 0x9
	.long	.LASF181
	.uleb128 0x5
	.long	.LASF182
	.byte	0x11
	.byte	0x65
	.long	0xce3
	.uleb128 0x6
	.byte	0x8
	.long	0xcc8
	.uleb128 0xe
	.long	.LASF183
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xd1a
	.uleb128 0xd
	.long	.LASF176
	.byte	0xa
	.byte	0x14
	.long	0xc6a
	.byte	0
	.uleb128 0xd
	.long	.LASF184
	.byte	0xa
	.byte	0x15
	.long	0xc6a
	.byte	0x1
	.uleb128 0xd
	.long	.LASF185
	.byte	0xa
	.byte	0x16
	.long	0xc74
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF183
	.byte	0xa
	.byte	0x19
	.long	0xce9
	.uleb128 0x6
	.byte	0x8
	.long	0xc7f
	.uleb128 0x6
	.byte	0x8
	.long	0xd1a
	.uleb128 0x9
	.long	.LASF186
	.uleb128 0x6
	.byte	0x8
	.long	0xd31
	.uleb128 0x9
	.long	.LASF187
	.uleb128 0x6
	.byte	0x8
	.long	0xd3c
	.uleb128 0x6
	.byte	0x8
	.long	0xc8a
	.uleb128 0x15
	.long	0xd1a
	.long	0xd5d
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xdc6
	.uleb128 0x18
	.long	.LASF188
	.sleb128 0
	.uleb128 0x18
	.long	.LASF189
	.sleb128 1
	.uleb128 0x18
	.long	.LASF190
	.sleb128 2
	.uleb128 0x18
	.long	.LASF191
	.sleb128 3
	.uleb128 0x18
	.long	.LASF192
	.sleb128 4
	.uleb128 0x18
	.long	.LASF193
	.sleb128 5
	.uleb128 0x18
	.long	.LASF194
	.sleb128 6
	.uleb128 0x18
	.long	.LASF195
	.sleb128 7
	.uleb128 0x18
	.long	.LASF196
	.sleb128 8
	.uleb128 0x18
	.long	.LASF197
	.sleb128 9
	.uleb128 0x18
	.long	.LASF198
	.sleb128 10
	.uleb128 0x18
	.long	.LASF199
	.sleb128 11
	.uleb128 0x18
	.long	.LASF200
	.sleb128 12
	.uleb128 0x18
	.long	.LASF201
	.sleb128 13
	.uleb128 0x18
	.long	.LASF202
	.sleb128 14
	.uleb128 0x18
	.long	.LASF203
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x856
	.uleb128 0x6
	.byte	0x8
	.long	0x90c
	.uleb128 0x6
	.byte	0x8
	.long	0x728
	.uleb128 0x6
	.byte	0x8
	.long	0x7b9
	.uleb128 0x6
	.byte	0x8
	.long	0xa09
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0xb
	.long	.LASF204
	.byte	0x9
	.value	0x150
	.long	0xc74
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xe13
	.uleb128 0x14
	.long	0xe13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xe08
	.uleb128 0x6
	.byte	0x8
	.long	0x5e2
	.uleb128 0x6
	.byte	0x8
	.long	0x3a5
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xe4d
	.uleb128 0x12
	.long	.LASF205
	.byte	0x9
	.value	0x185
	.long	0xe4d
	.uleb128 0x12
	.long	.LASF206
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xcd8
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF207
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF208
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xe65
	.uleb128 0x1a
	.long	0xe02
	.uleb128 0x6
	.byte	0x8
	.long	0xe81
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xcb2
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0xeae
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0xede
	.uleb128 0xd
	.long	.LASF209
	.byte	0xe
	.byte	0x11
	.long	0xf1a
	.byte	0
	.uleb128 0xd
	.long	.LASF210
	.byte	0xe
	.byte	0x12
	.long	0xf20
	.byte	0x8
	.uleb128 0xd
	.long	.LASF211
	.byte	0xe
	.byte	0x13
	.long	0xcb2
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0xee9
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0xf1a
	.uleb128 0xd
	.long	.LASF212
	.byte	0xe
	.byte	0x18
	.long	0xc8a
	.byte	0
	.uleb128 0xd
	.long	.LASF213
	.byte	0xe
	.byte	0x19
	.long	0xc7f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF214
	.byte	0xe
	.byte	0x1a
	.long	0xcb8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xea4
	.uleb128 0x6
	.byte	0x8
	.long	0xede
	.uleb128 0x1b
	.long	0x57
	.long	0xf3a
	.uleb128 0x14
	.long	0xcb2
	.uleb128 0x14
	.long	0xde4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf26
	.uleb128 0x1b
	.long	0xc8a
	.long	0xf54
	.uleb128 0x14
	.long	0xcb2
	.uleb128 0x14
	.long	0xde4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf40
	.uleb128 0x1b
	.long	0x57
	.long	0xf7d
	.uleb128 0x14
	.long	0xcb2
	.uleb128 0x14
	.long	0xde4
	.uleb128 0x14
	.long	0xcb2
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf5a
	.uleb128 0x1b
	.long	0x57
	.long	0xf97
	.uleb128 0x14
	.long	0xde4
	.uleb128 0x14
	.long	0xf97
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc29
	.uleb128 0x6
	.byte	0x8
	.long	0xf83
	.uleb128 0x6
	.byte	0x8
	.long	0xb4e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF215
	.uleb128 0x1c
	.long	.LASF237
	.byte	0x1
	.byte	0x10
	.long	0xdf6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xfe0
	.uleb128 0x1d
	.long	.LASF216
	.byte	0x1
	.byte	0x10
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF220
	.byte	0x1
	.byte	0x1c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a8
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0x1c
	.long	0xe13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x1e
	.long	0xe98
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF217
	.byte	0x1
	.byte	0x1e
	.long	0xe98
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0x1e
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0x1e
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"ix"
	.byte	0x1
	.byte	0x1f
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x24
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x20
	.string	"n_a"
	.byte	0x1
	.byte	0x30
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF216
	.byte	0x1
	.byte	0x31
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF219
	.byte	0x1
	.byte	0x32
	.long	0xdf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF221
	.byte	0x1
	.byte	0x41
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1156
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0x41
	.long	0xe13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x43
	.long	0xe98
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF217
	.byte	0x1
	.byte	0x43
	.long	0xe98
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0x43
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0x43
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.string	"sub"
	.byte	0x1
	.byte	0x48
	.long	0xcb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.string	"n_a"
	.byte	0x1
	.byte	0x50
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.byte	0x51
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF223
	.byte	0x1
	.byte	0x64
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1207
	.uleb128 0x1f
	.string	"cv"
	.byte	0x1
	.byte	0x64
	.long	0xe13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x66
	.long	0xe98
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x21
	.long	.LASF217
	.byte	0x1
	.byte	0x66
	.long	0xe98
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"ax"
	.byte	0x1
	.byte	0x66
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.byte	0x66
	.long	0xc7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF224
	.byte	0x1
	.byte	0x67
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x11e6
	.uleb128 0x20
	.string	"cv"
	.byte	0x1
	.byte	0x6c
	.long	0xe13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x22
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x21
	.long	.LASF225
	.byte	0x1
	.byte	0x74
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF226
	.byte	0x13
	.byte	0x34
	.long	0xc6a
	.uleb128 0x24
	.long	.LASF227
	.byte	0x13
	.byte	0xd1
	.long	0xe13
	.uleb128 0x25
	.long	.LASF228
	.byte	0x13
	.value	0x127
	.long	0x36a
	.uleb128 0x24
	.long	.LASF229
	.byte	0x14
	.byte	0x22
	.long	0xe98
	.uleb128 0x24
	.long	.LASF230
	.byte	0x14
	.byte	0x2a
	.long	0xe98
	.uleb128 0x24
	.long	.LASF231
	.byte	0x14
	.byte	0x2b
	.long	0xe98
	.uleb128 0x24
	.long	.LASF232
	.byte	0x14
	.byte	0x3c
	.long	0xd25
	.uleb128 0x24
	.long	.LASF233
	.byte	0x14
	.byte	0x81
	.long	0x1260
	.uleb128 0x26
	.long	0xe9e
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
.LASF146:
	.string	"xio_page_len"
.LASF27:
	.string	"cop_seq"
.LASF152:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF179:
	.string	"PerlIOl"
.LASF222:
	.string	"name"
.LASF236:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF125:
	.string	"XPVCV"
.LASF231:
	.string	"PL_stack_max"
.LASF197:
	.string	"SVt_PVLV"
.LASF159:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF155:
	.string	"xio_type"
.LASF126:
	.string	"xpvcv"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF176:
	.string	"flags"
.LASF110:
	.string	"xhv_fill"
.LASF189:
	.string	"SVt_IV"
.LASF80:
	.string	"gp_file"
.LASF156:
	.string	"xio_flags"
.LASF195:
	.string	"SVt_PVMG"
.LASF205:
	.string	"xiou_dirp"
.LASF183:
	.string	"regnode"
.LASF170:
	.string	"any_bool"
.LASF233:
	.string	"PL_curcop"
.LASF235:
	.string	"attrs.c"
.LASF207:
	.string	"PADLIST"
.LASF39:
	.string	"op_pmregexp"
.LASF56:
	.string	"precomp"
.LASF226:
	.string	"PL_dowarn"
.LASF106:
	.string	"xav_flags"
.LASF123:
	.string	"xgv_stash"
.LASF53:
	.string	"endp"
.LASF10:
	.string	"ssize_t"
.LASF221:
	.string	"XS_attrs_get"
.LASF181:
	.string	"_PerlIO"
.LASF28:
	.string	"cop_arybase"
.LASF194:
	.string	"SVt_PVNV"
.LASF130:
	.string	"xcv_xsub"
.LASF83:
	.string	"mg_moremagic"
.LASF76:
	.string	"gp_cv"
.LASF99:
	.string	"xav_max"
.LASF182:
	.string	"PerlIO"
.LASF223:
	.string	"boot_attrs"
.LASF215:
	.string	"float"
.LASF112:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF225:
	.string	"tmpXSoff"
.LASF158:
	.string	"mgvtbl"
.LASF133:
	.string	"xcv_file"
.LASF132:
	.string	"xcv_gv"
.LASF12:
	.string	"long long unsigned int"
.LASF230:
	.string	"PL_stack_base"
.LASF224:
	.string	"file"
.LASF50:
	.string	"REGEXP"
.LASF187:
	.string	"reg_data"
.LASF174:
	.string	"clone_params"
.LASF186:
	.string	"reg_substr_data"
.LASF216:
	.string	"attr"
.LASF85:
	.string	"mg_private"
.LASF119:
	.string	"xiv_iv"
.LASF124:
	.string	"xgv_flags"
.LASF144:
	.string	"xio_lines"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF92:
	.string	"xpv_pv"
.LASF117:
	.string	"XPVGV"
.LASF147:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF212:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF198:
	.string	"SVt_PVAV"
.LASF118:
	.string	"xpvgv"
.LASF178:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF90:
	.string	"mg_len"
.LASF88:
	.string	"mg_obj"
.LASF134:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF151:
	.string	"xio_fmt_gv"
.LASF214:
	.string	"hek_key"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF115:
	.string	"xhv_pmroot"
.LASF107:
	.string	"XPVHV"
.LASF162:
	.string	"svt_clear"
.LASF196:
	.string	"SVt_PVBM"
.LASF143:
	.string	"xio_dirpu"
.LASF108:
	.string	"xpvhv"
.LASF36:
	.string	"op_pmreplroot"
.LASF13:
	.string	"long long int"
.LASF42:
	.string	"op_pmdynflags"
.LASF164:
	.string	"svt_copy"
.LASF94:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF139:
	.string	"XPVIO"
.LASF168:
	.string	"any_iv"
.LASF175:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF140:
	.string	"xpvio"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF200:
	.string	"SVt_PVCV"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF210:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF96:
	.string	"xpvav"
.LASF188:
	.string	"SVt_NULL"
.LASF58:
	.string	"subbeg"
.LASF17:
	.string	"op_sibling"
.LASF177:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF209:
	.string	"hent_next"
.LASF237:
	.string	"get_flag"
.LASF109:
	.string	"xhv_array"
.LASF148:
	.string	"xio_top_name"
.LASF66:
	.string	"lastcloseparen"
.LASF217:
	.string	"mark"
.LASF185:
	.string	"next_off"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF32:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF116:
	.string	"xhv_name"
.LASF89:
	.string	"mg_ptr"
.LASF228:
	.string	"PL_sv_yes"
.LASF141:
	.string	"xio_ifp"
.LASF24:
	.string	"cop_label"
.LASF46:
	.string	"broiled"
.LASF190:
	.string	"SVt_NV"
.LASF16:
	.string	"op_next"
.LASF75:
	.string	"gp_egv"
.LASF52:
	.string	"startp"
.LASF218:
	.string	"items"
.LASF26:
	.string	"cop_filegv"
.LASF47:
	.string	"sv_any"
.LASF25:
	.string	"cop_stash"
.LASF43:
	.string	"op_pmstash"
.LASF145:
	.string	"xio_page"
.LASF206:
	.string	"xiou_any"
.LASF202:
	.string	"SVt_PVFM"
.LASF172:
	.string	"any_dxptr"
.LASF81:
	.string	"MAGIC"
.LASF161:
	.string	"svt_len"
.LASF234:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF104:
	.string	"xav_alloc"
.LASF114:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF128:
	.string	"xcv_start"
.LASF138:
	.string	"xcv_outside_seq"
.LASF97:
	.string	"xav_array"
.LASF227:
	.string	"PL_compcv"
.LASF154:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF100:
	.string	"xof_off"
.LASF201:
	.string	"SVt_PVGV"
.LASF192:
	.string	"SVt_PV"
.LASF219:
	.string	"flag"
.LASF213:
	.string	"hek_len"
.LASF157:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF61:
	.string	"refcnt"
.LASF105:
	.string	"xav_arylen"
.LASF127:
	.string	"xcv_stash"
.LASF122:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF129:
	.string	"xcv_root"
.LASF51:
	.string	"regexp"
.LASF211:
	.string	"hent_val"
.LASF136:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF111:
	.string	"xhv_max"
.LASF135:
	.string	"xcv_padlist"
.LASF199:
	.string	"SVt_PVHV"
.LASF102:
	.string	"xmg_magic"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF167:
	.string	"any_i32"
.LASF160:
	.string	"svt_set"
.LASF173:
	.string	"CLONE_PARAMS"
.LASF150:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF180:
	.string	"__dirstream"
.LASF169:
	.string	"any_long"
.LASF33:
	.string	"pmop"
.LASF98:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF184:
	.string	"type"
.LASF203:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF113:
	.string	"xhv_riter"
.LASF120:
	.string	"xgv_gp"
.LASF38:
	.string	"op_pmnext"
.LASF193:
	.string	"SVt_PVIV"
.LASF191:
	.string	"SVt_RV"
.LASF48:
	.string	"sv_refcnt"
.LASF101:
	.string	"xnv_nv"
.LASF137:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF165:
	.string	"svt_dup"
.LASF153:
	.string	"xio_bottom_gv"
.LASF93:
	.string	"xpv_cur"
.LASF166:
	.string	"any_ptr"
.LASF95:
	.string	"XPVAV"
.LASF163:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF208:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"op_pmpermflags"
.LASF220:
	.string	"XS_attrs_import"
.LASF103:
	.string	"xmg_stash"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF91:
	.string	"xrv_rv"
.LASF131:
	.string	"xcv_xsubany"
.LASF204:
	.string	"cv_flags_t"
.LASF142:
	.string	"xio_ofp"
.LASF232:
	.string	"PL_markstack_ptr"
.LASF54:
	.string	"regstclass"
.LASF149:
	.string	"xio_top_gv"
.LASF64:
	.string	"nparens"
.LASF229:
	.string	"PL_stack_sp"
.LASF171:
	.string	"any_dptr"
.LASF121:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
