	.file	"pp_hot.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 pp_hot.c
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
	.globl	Perl_pp_const
	.type	Perl_pp_const, @function
Perl_pp_const:
.LFB2:
	.file 1 "pp_hot.c"
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 44 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB2:
	.loc 1 45 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.0
	movq	%rax, %rdx	# PL_stack_max.0, PL_stack_max.1
	movq	%rbx, %rax	# sp, sp.2
	subq	%rax, %rdx	# sp.2, D.17945
	movq	%rdx, %rax	# D.17945, D.17945
	cmpq	$7, %rax	#, D.17945
	jg	.L2	#,
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L2:
	.loc 1 45 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.3
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.3_9].op_sv, D.17946
	movq	%rax, (%rbx)	# D.17946, *sp_8
.LBE2:
	.loc 1 46 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.4
	movq	(%rax), %rax	# PL_op.4_12->op_next, D.17947
	.loc 1 47 0 discriminator 2
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_pp_const, .-Perl_pp_const
	.globl	Perl_pp_nextstate
	.type	Perl_pp_nextstate, @function
Perl_pp_nextstate:
.LFB3:
	.loc 1 50 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 51 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.5
	movq	%rax, PL_curcop(%rip)	# PL_op.5, PL_curcop
	.loc 1 52 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 53 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.6
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.7
	movq	8(%rax), %rsi	# PL_curstackinfo.7_3->si_cxstack, D.17948
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.8
	movl	16(%rax), %eax	# PL_curstackinfo.8_5->si_cxix, D.17949
	movslq	%eax, %rdx	# D.17949, D.17950
	movq	%rdx, %rax	# D.17950, tmp77
	salq	$3, %rax	#, tmp77
	addq	%rdx, %rax	# D.17950, tmp77
	salq	$4, %rax	#, tmp78
	addq	%rsi, %rax	# D.17948, D.17948
	movl	8(%rax), %eax	# _9->cx_u.cx_blk.blku_oldsp, D.17949
	cltq
	salq	$3, %rax	#, D.17950
	addq	%rcx, %rax	# PL_stack_base.6, PL_stack_sp.9
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.9, PL_stack_sp
	.loc 1 54 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.10
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.11
	cmpl	%eax, %edx	# PL_tmps_floor.11, PL_tmps_ix.10
	jle	.L5	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L5:
	.loc 1 55 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.12
	movq	(%rax), %rax	# PL_op.12_16->op_next, D.17951
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_pp_nextstate, .-Perl_pp_nextstate
	.globl	Perl_pp_gvsv
	.type	Perl_pp_gvsv, @function
Perl_pp_gvsv:
.LFB4:
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 60 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 61 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.13
	movq	%rax, %rdx	# PL_stack_max.13, PL_stack_max.14
	movq	%rbx, %rax	# sp, sp.15
	subq	%rax, %rdx	# sp.15, D.17952
	movq	%rdx, %rax	# D.17952, D.17952
	cmpq	$7, %rax	#, D.17952
	jg	.L8	#,
	.loc 1 61 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L8:
	.loc 1 62 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.16
	movzbl	37(%rax), %eax	# PL_op.16_9->op_private, D.17953
	testb	%al, %al	# D.17954
	jns	.L9	#,
	.loc 1 63 0
	addq	$8, %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.17
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.17_13].op_sv, D.17955
	movq	%rax, %rdi	# D.17955,
	call	Perl_save_scalar	#
	movq	%rax, (%rbx)	# D.17955, *sp_12
	jmp	.L10	#
.L9:
	.loc 1 65 0
	addq	$8, %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.18
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.18_17].op_sv, D.17955
	movq	(%rax), %rax	# MEM[(struct GV *)_18].sv_any, D.17956
	movq	56(%rax), %rax	# _19->xgv_gp, D.17957
	movq	(%rax), %rax	# _20->gp_sv, D.17955
	movq	%rax, (%rbx)	# D.17955, *sp_16
.L10:
	.loc 1 66 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.19
	movq	(%rax), %rax	# PL_op.19_22->op_next, D.17958
	.loc 1 67 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_pp_gvsv, .-Perl_pp_gvsv
	.globl	Perl_pp_null
	.type	Perl_pp_null, @function
Perl_pp_null:
.LFB5:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 71 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.20
	movq	(%rax), %rax	# PL_op.20_1->op_next, D.17959
	.loc 1 72 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_pp_null, .-Perl_pp_null
	.globl	Perl_pp_setstate
	.type	Perl_pp_setstate, @function
Perl_pp_setstate:
.LFB6:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 76 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.21
	movq	%rax, PL_curcop(%rip)	# PL_op.21, PL_curcop
	.loc 1 77 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.22
	movq	(%rax), %rax	# PL_op.22_2->op_next, D.17960
	.loc 1 78 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_pp_setstate, .-Perl_pp_setstate
	.globl	Perl_pp_pushmark
	.type	Perl_pp_pushmark, @function
Perl_pp_pushmark:
.LFB7:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.LBB3:
	.loc 1 82 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.23
	addq	$4, %rax	#, PL_markstack_ptr.24
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.24, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.25
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.26
	cmpq	%rax, %rdx	# PL_markstack_max.26, PL_markstack_ptr.25
	jne	.L17	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L17:
	.loc 1 82 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.27
	movq	PL_stack_sp(%rip), %rdx	# PL_stack_sp, PL_stack_sp.28
	movq	%rdx, %rcx	# PL_stack_sp.28, PL_stack_sp.29
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.30
	subq	%rdx, %rcx	# PL_stack_base.31, D.17961
	movq	%rcx, %rdx	# D.17961, D.17961
	sarq	$3, %rdx	#, tmp75
	movl	%edx, (%rax)	# D.17962, *PL_markstack_ptr.27_5
.LBE3:
	.loc 1 83 0 is_stmt 1 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.32
	movq	(%rax), %rax	# PL_op.32_14->op_next, D.17964
	.loc 1 84 0 discriminator 2
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_pp_pushmark, .-Perl_pp_pushmark
	.globl	Perl_pp_stringify
	.type	Perl_pp_stringify, @function
Perl_pp_stringify:
.LFB8:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 88 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.33
	movq	PL_op(%rip), %rax	# PL_op, PL_op.34
	movq	24(%rax), %rax	# PL_op.34_3->op_targ, D.17965
	salq	$3, %rax	#, D.17965
	addq	%rdx, %rax	# PL_curpad.33, D.17966
	movq	(%rax), %rax	# *_6, tmp72
	movq	%rax, -24(%rbp)	# tmp72, targ
	.loc 1 89 0
	movq	(%rbx), %rdx	# *sp_1, D.17967
	movq	-24(%rbp), %rax	# targ, tmp73
	movq	%rdx, %rsi	# D.17967,
	movq	%rax, %rdi	# tmp73,
	call	Perl_sv_copypv	#
.LBB4:
	.loc 1 90 0
	movq	-24(%rbp), %rax	# targ, tmp74
	movl	12(%rax), %eax	# targ_7->sv_flags, D.17968
	andl	$16384, %eax	#, D.17968
	testl	%eax, %eax	# D.17968
	je	.L20	#,
	.loc 1 90 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp75
	movq	%rax, %rdi	# tmp75,
	call	Perl_mg_set	#
.L20:
	.loc 1 90 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp76
	movq	%rax, (%rbx)	# tmp76, *sp_1
.LBE4:
	.loc 1 91 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.35
	movq	(%rax), %rax	# PL_op.35_12->op_next, D.17969
	.loc 1 92 0 discriminator 2
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_pp_stringify, .-Perl_pp_stringify
	.globl	Perl_pp_gv
	.type	Perl_pp_gv, @function
Perl_pp_gv:
.LFB9:
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 96 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB5:
	.loc 1 97 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.36
	movq	%rax, %rdx	# PL_stack_max.36, PL_stack_max.37
	movq	%rbx, %rax	# sp, sp.38
	subq	%rax, %rdx	# sp.38, D.17970
	movq	%rdx, %rax	# D.17970, D.17970
	cmpq	$7, %rax	#, D.17970
	jg	.L23	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L23:
	.loc 1 97 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.39
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.39_9].op_sv, D.17971
	movq	%rax, (%rbx)	# D.17971, *sp_8
.LBE5:
	.loc 1 98 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.40
	movq	(%rax), %rax	# PL_op.40_12->op_next, D.17972
	.loc 1 99 0 discriminator 2
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_pp_gv, .-Perl_pp_gv
	.globl	Perl_pp_and
	.type	Perl_pp_and, @function
Perl_pp_and:
.LFB10:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 103 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 104 0
	movq	(%rbx), %rax	# *sp_7, D.17974
	testq	%rax, %rax	# D.17974
	je	.L26	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_7, D.17974
	movl	12(%rax), %eax	# _9->sv_flags, D.17975
	andl	$262144, %eax	#, D.17975
	testl	%eax, %eax	# D.17975
	je	.L27	#,
	.loc 1 104 0 discriminator 3
	movq	(%rbx), %rax	# *sp_7, D.17974
	movq	(%rax), %rax	# _12->sv_any, PL_Xpv.44
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.44, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.45
	testq	%rax, %rax	# PL_Xpv.45
	je	.L28	#,
	.loc 1 104 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.46
	movq	8(%rax), %rax	# PL_Xpv.46_15->xpv_cur, D.17976
	cmpq	$1, %rax	#, D.17976
	ja	.L29	#,
	.loc 1 104 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.47
	movq	8(%rax), %rax	# PL_Xpv.47_17->xpv_cur, D.17976
	testq	%rax, %rax	# D.17976
	je	.L28	#,
	.loc 1 104 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.48
	movq	(%rax), %rax	# PL_Xpv.48_19->xpv_pv, D.17977
	movzbl	(%rax), %eax	# *_20, D.17978
	cmpb	$48, %al	#, D.17978
	jne	.L29	#,
.L28:
	.loc 1 104 0 discriminator 5
	movl	$1, %eax	#, iftmp.43
	jmp	.L30	#
.L29:
	.loc 1 104 0 discriminator 8
	movl	$0, %eax	#, iftmp.43
.L30:
	.loc 1 104 0 discriminator 9
	andl	$1, %eax	#, iftmp.42
	jmp	.L36	#
.L27:
	.loc 1 104 0 discriminator 4
	movq	(%rbx), %rax	# *sp_7, D.17974
	movl	12(%rax), %eax	# _25->sv_flags, D.17975
	andl	$65536, %eax	#, D.17975
	testl	%eax, %eax	# D.17975
	je	.L32	#,
	.loc 1 104 0 discriminator 10
	movq	(%rbx), %rax	# *sp_7, D.17974
	movq	(%rax), %rax	# _28->sv_any, D.17979
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_29].xiv_iv, D.17980
	testq	%rax, %rax	# D.17980
	sete	%al	#, iftmp.49
	jmp	.L36	#
.L32:
	.loc 1 104 0 discriminator 11
	movq	(%rbx), %rax	# *sp_7, D.17974
	movl	12(%rax), %eax	# _32->sv_flags, D.17975
	andl	$131072, %eax	#, D.17975
	testl	%eax, %eax	# D.17975
	je	.L34	#,
	.loc 1 104 0 discriminator 12
	movq	(%rbx), %rax	# *sp_7, D.17974
	movq	(%rax), %rax	# _35->sv_any, D.17979
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_36].xnv_nv, D.17981
	xorpd	%xmm1, %xmm1	# tmp98
	ucomisd	%xmm1, %xmm0	# tmp98, D.17981
	setnp	%dl	#, tmp97
	movl	$0, %eax	#, tmp100
	xorpd	%xmm1, %xmm1	# tmp99
	ucomisd	%xmm1, %xmm0	# tmp99, D.17981
	cmove	%edx, %eax	# tmp97,, iftmp.50
	jmp	.L36	#
.L34:
	.loc 1 104 0 discriminator 13
	movq	(%rbx), %rax	# *sp_7, D.17974
	movq	%rax, %rdi	# D.17974,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.17978
	sete	%al	#, iftmp.50
	jmp	.L36	#
.L26:
	.loc 1 104 0 discriminator 2
	movl	$1, %eax	#, iftmp.41
.L36:
	.loc 1 104 0 discriminator 16
	testb	%al, %al	# iftmp.41
	je	.L37	#,
	.loc 1 105 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.51
	movq	(%rax), %rax	# PL_op.51_46->op_next, D.17973
	jmp	.L38	#
.L37:
	.loc 1 107 0
	subq	$8, %rbx	#, sp
	.loc 1 108 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.52
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.52_49].op_other, D.17973
.L38:
	.loc 1 110 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_pp_and, .-Perl_pp_and
	.globl	Perl_pp_sassign
	.type	Perl_pp_sassign, @function
Perl_pp_sassign:
.LFB11:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 114 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	%rbx, %rax	# sp, sp.53
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.53_4, tmp75
	movq	%rax, -40(%rbp)	# tmp75, right
	movq	(%rbx), %rax	# *sp_5, tmp76
	movq	%rax, -32(%rbp)	# tmp76, left
	.loc 1 116 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.54
	movzbl	37(%rax), %eax	# PL_op.54_8->op_private, D.17982
	movzbl	%al, %eax	# D.17982, D.17983
	andl	$64, %eax	#, D.17983
	testl	%eax, %eax	# D.17983
	je	.L40	#,
.LBB6:
	.loc 1 118 0
	movq	-32(%rbp), %rax	# left, tmp77
	movq	%rax, -24(%rbp)	# tmp77, temp
	movq	-40(%rbp), %rax	# right, tmp78
	movq	%rax, -32(%rbp)	# tmp78, left
	movq	-24(%rbp), %rax	# temp, tmp79
	movq	%rax, -40(%rbp)	# tmp79, right
.L40:
.LBE6:
	.loc 1 120 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.55
	testb	%al, %al	# PL_tainting.55
	je	.L41	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.56
	testb	%al, %al	# PL_tainted.56
	je	.L41	#,
	movq	-32(%rbp), %rax	# left, tmp80
	movl	12(%rax), %eax	# left_2->sv_flags, D.17984
	andl	$57344, %eax	#, D.17984
	testl	%eax, %eax	# D.17984
	je	.L42	#,
	movq	-32(%rbp), %rax	# left, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.17985
	jne	.L41	#,
.L42:
	.loc 1 121 0 is_stmt 1
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L41:
	.loc 1 122 0
	movq	-40(%rbp), %rax	# right, tmp82
	cmpq	-32(%rbp), %rax	# left, tmp82
	je	.L43	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rcx	# left, tmp83
	movq	-40(%rbp), %rax	# right, tmp84
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	Perl_sv_setsv_flags	#
	movq	-40(%rbp), %rax	# right, tmp85
	movl	12(%rax), %eax	# right_1->sv_flags, D.17984
	andl	$16384, %eax	#, D.17984
	testl	%eax, %eax	# D.17984
	je	.L43	#,
	movq	-40(%rbp), %rax	# right, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_mg_set	#
.L43:
	.loc 1 123 0 is_stmt 1
	movq	-40(%rbp), %rax	# right, tmp87
	movq	%rax, (%rbx)	# tmp87, *sp_5
	.loc 1 124 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.57
	movq	(%rax), %rax	# PL_op.57_22->op_next, D.17986
	.loc 1 125 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_pp_sassign, .-Perl_pp_sassign
	.globl	Perl_pp_cond_expr
	.type	Perl_pp_cond_expr, @function
Perl_pp_cond_expr:
.LFB12:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 129 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 130 0
	movq	%rbx, %rax	# sp, sp.58
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.58_8, PL_Sv.59
	movq	%rax, PL_Sv(%rip)	# PL_Sv.59, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.61
	testq	%rax, %rax	# PL_Sv.61
	je	.L46	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.63
	movl	12(%rax), %eax	# PL_Sv.63_12->sv_flags, D.17988
	andl	$262144, %eax	#, D.17988
	testl	%eax, %eax	# D.17988
	je	.L47	#,
	.loc 1 130 0 discriminator 3
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.65
	movq	(%rax), %rax	# PL_Sv.65_15->sv_any, PL_Xpv.66
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.66, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.67
	testq	%rax, %rax	# PL_Xpv.67
	je	.L48	#,
	.loc 1 130 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.68
	movq	8(%rax), %rax	# PL_Xpv.68_18->xpv_cur, D.17989
	cmpq	$1, %rax	#, D.17989
	ja	.L49	#,
	.loc 1 130 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.69
	movq	8(%rax), %rax	# PL_Xpv.69_20->xpv_cur, D.17989
	testq	%rax, %rax	# D.17989
	je	.L48	#,
	.loc 1 130 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.70
	movq	(%rax), %rax	# PL_Xpv.70_22->xpv_pv, D.17990
	movzbl	(%rax), %eax	# *_23, D.17991
	cmpb	$48, %al	#, D.17991
	je	.L48	#,
.L49:
	.loc 1 130 0 discriminator 3
	movl	$1, %eax	#, iftmp.64
	jmp	.L50	#
.L48:
	.loc 1 130 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L50:
	.loc 1 130 0 discriminator 5
	testl	%eax, %eax	# iftmp.64
	setne	%al	#, iftmp.62
	jmp	.L56	#
.L47:
	.loc 1 130 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.72
	movl	12(%rax), %eax	# PL_Sv.72_28->sv_flags, D.17988
	andl	$65536, %eax	#, D.17988
	testl	%eax, %eax	# D.17988
	je	.L52	#,
	.loc 1 130 0 discriminator 5
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.73
	movq	(%rax), %rax	# PL_Sv.73_31->sv_any, D.17992
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_32].xiv_iv, D.17993
	testq	%rax, %rax	# D.17993
	setne	%al	#, iftmp.71
	jmp	.L56	#
.L52:
	.loc 1 130 0 discriminator 6
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.75
	movl	12(%rax), %eax	# PL_Sv.75_35->sv_flags, D.17988
	andl	$131072, %eax	#, D.17988
	testl	%eax, %eax	# D.17988
	je	.L54	#,
	.loc 1 130 0 discriminator 7
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.76
	movq	(%rax), %rax	# PL_Sv.76_38->sv_any, D.17992
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_39].xnv_nv, D.17994
	xorpd	%xmm1, %xmm1	# tmp100
	ucomisd	%xmm1, %xmm0	# tmp100, D.17994
	setp	%dl	#, tmp99
	movl	$1, %eax	#, tmp102
	xorpd	%xmm1, %xmm1	# tmp101
	ucomisd	%xmm1, %xmm0	# tmp101, D.17994
	cmove	%edx, %eax	# tmp99,, iftmp.74
	jmp	.L56	#
.L54:
	.loc 1 130 0 discriminator 8
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.77
	movq	%rax, %rdi	# PL_Sv.77,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.17991
	setne	%al	#, iftmp.74
	jmp	.L56	#
.L46:
	.loc 1 130 0 discriminator 2
	movl	$0, %eax	#, iftmp.60
.L56:
	.loc 1 130 0 discriminator 11
	testb	%al, %al	# iftmp.60
	je	.L57	#,
	.loc 1 131 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.78
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.78_49].op_other, D.17987
	jmp	.L58	#
.L57:
	.loc 1 133 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.79
	movq	(%rax), %rax	# MEM[(struct LOGOP *)PL_op.79_51].op_next, D.17987
.L58:
	.loc 1 134 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_pp_cond_expr, .-Perl_pp_cond_expr
	.globl	Perl_pp_unstack
	.type	Perl_pp_unstack, @function
Perl_pp_unstack:
.LFB13:
	.loc 1 137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 139 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 140 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.80
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.81
	movq	8(%rax), %rsi	# PL_curstackinfo.81_2->si_cxstack, D.17995
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.82
	movl	16(%rax), %eax	# PL_curstackinfo.82_4->si_cxix, D.17996
	movslq	%eax, %rdx	# D.17996, D.17997
	movq	%rdx, %rax	# D.17997, tmp83
	salq	$3, %rax	#, tmp83
	addq	%rdx, %rax	# D.17997, tmp83
	salq	$4, %rax	#, tmp84
	addq	%rsi, %rax	# D.17995, D.17995
	movl	8(%rax), %eax	# _8->cx_u.cx_blk.blku_oldsp, D.17996
	cltq
	salq	$3, %rax	#, D.17997
	addq	%rcx, %rax	# PL_stack_base.80, PL_stack_sp.83
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.83, PL_stack_sp
	.loc 1 141 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.84
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.85
	cmpl	%eax, %edx	# PL_tmps_floor.85, PL_tmps_ix.84
	jle	.L60	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L60:
	.loc 1 142 0 is_stmt 1
	movq	PL_scopestack(%rip), %rax	# PL_scopestack, PL_scopestack.86
	movl	PL_scopestack_ix(%rip), %edx	# PL_scopestack_ix, PL_scopestack_ix.87
	movslq	%edx, %rdx	# PL_scopestack_ix.87, D.17997
	salq	$2, %rdx	#, D.17997
	subq	$4, %rdx	#, D.17998
	addq	%rdx, %rax	# D.17998, D.17999
	movl	(%rax), %eax	# *_20, tmp85
	movl	%eax, -4(%rbp)	# tmp85, oldsave
	.loc 1 143 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.88
	cmpl	-4(%rbp), %eax	# oldsave, PL_savestack_ix.88
	jle	.L61	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# oldsave, tmp86
	movl	%eax, %edi	# tmp86,
	call	Perl_leave_scope	#
.L61:
	.loc 1 144 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.89
	movq	(%rax), %rax	# PL_op.89_23->op_next, D.18000
	.loc 1 145 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_pp_unstack, .-Perl_pp_unstack
	.section	.rodata
.LC1:
	.string	""
	.text
	.globl	Perl_pp_concat
	.type	Perl_pp_concat, @function
Perl_pp_concat:
.LFB14:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 149 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.91
	movzbl	36(%rax), %eax	# PL_op.91_19->op_flags, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$64, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L64	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_18 + -8B], iftmp.90
	jmp	.L65	#
.L64:
	.loc 1 149 0 discriminator 2
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.92
	movq	PL_op(%rip), %rax	# PL_op, PL_op.93
	movq	24(%rax), %rax	# PL_op.93_25->op_targ, D.18004
	salq	$3, %rax	#, D.18004
	addq	%rdx, %rax	# PL_curpad.92, D.18005
	movq	(%rax), %rax	# *_28, iftmp.90
.L65:
	.loc 1 149 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.90, targ
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.94
	testq	%rax, %rax	# PL_amagic_generation.94
	je	.L66	#,
.LBB7:
	.loc 1 149 0 discriminator 1
	movq	(%rbx), %rax	# *sp_18, tmp169
	movq	%rax, -56(%rbp)	# tmp169, right
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_18 + -8B], tmp170
	movq	%rax, -48(%rbp)	# tmp170, left
	movq	-48(%rbp), %rax	# left, tmp171
	movl	12(%rax), %eax	# left_33->sv_flags, D.18006
	andl	$268435456, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	jne	.L67	#,
	.loc 1 149 0 discriminator 2
	movq	-56(%rbp), %rax	# right, tmp172
	movl	12(%rax), %eax	# right_32->sv_flags, D.18006
	andl	$268435456, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L66	#,
.L67:
	.loc 1 149 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.96
	movzbl	36(%rax), %eax	# PL_op.96_38->op_flags, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$64, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L68	#,
	movl	$4, %eax	#, iftmp.95
	jmp	.L69	#
.L68:
	.loc 1 149 0 discriminator 2
	movl	$0, %eax	#, iftmp.95
.L69:
	.loc 1 149 0 discriminator 3
	movq	-56(%rbp), %rsi	# right, tmp173
	movq	-48(%rbp), %rdi	# left, tmp174
	movl	%eax, %ecx	# iftmp.95,
	movl	$54, %edx	#,
	call	Perl_amagic_call	#
	movq	%rax, -40(%rbp)	# tmp175, tmpsv
	cmpq	$0, -40(%rbp)	#, tmpsv
	je	.L66	#,
	.loc 1 149 0 discriminator 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	%rbx, %rax	# sp, sp.97
	leaq	-8(%rax), %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.98
	movzbl	36(%rax), %eax	# PL_op.98_48->op_flags, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$64, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	jne	.L70	#,
	.loc 1 149 0 discriminator 2
	movq	-64(%rbp), %rax	# targ, tmp176
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$1024, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L71	#,
.L70:
	.loc 1 149 0 discriminator 1
	movq	-40(%rbp), %rcx	# tmpsv, tmp177
	movq	-64(%rbp), %rax	# targ, tmp178
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	Perl_sv_setsv_flags	#
.LBB8:
	movq	-64(%rbp), %rax	# targ, tmp179
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$16384, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L72	#,
	movq	-64(%rbp), %rax	# targ, tmp180
	movq	%rax, %rdi	# tmp180,
	call	Perl_mg_set	#
.L72:
	.loc 1 149 0 discriminator 2
	movq	-64(%rbp), %rax	# targ, tmp181
	movq	%rax, (%rbx)	# tmp181, *sp_47
.LBE8:
	jmp	.L73	#
.L71:
	.loc 1 149 0 discriminator 1
	movq	-40(%rbp), %rax	# tmpsv, tmp182
	movq	%rax, (%rbx)	# tmp182, *sp_47
.L73:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.99
	movq	(%rax), %rax	# PL_op.99_57->op_next, D.18001
	jmp	.L74	#
.L66:
.LBE7:
.LBB9:
	.loc 1 151 0 is_stmt 1
	movq	%rbx, %rax	# sp, sp.100
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.100_59, tmp183
	movq	%rax, -80(%rbp)	# tmp183, right
	movq	(%rbx), %rax	# *sp_60, tmp184
	movq	%rax, -32(%rbp)	# tmp184, left
	.loc 1 156 0
	movq	-80(%rbp), %rax	# right, tmp185
	movl	12(%rax), %eax	# right_61->sv_flags, D.18006
	andl	$262144, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L75	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# right, tmp186
	movq	(%rax), %rax	# right_61->sv_any, D.18008
	movq	8(%rax), %rax	# MEM[(struct XPV *)_65].xpv_cur, rlen.102
	movq	%rax, -88(%rbp)	# rlen.102, rlen
	movq	-80(%rbp), %rax	# right, tmp187
	movq	(%rax), %rax	# right_61->sv_any, D.18008
	movq	(%rax), %rax	# MEM[(struct XPV *)_67].xpv_pv, iftmp.101
	jmp	.L76	#
.L75:
	.loc 1 156 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp188
	movq	-80(%rbp), %rax	# right, tmp189
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	Perl_sv_2pv_flags	#
.L76:
	.loc 1 156 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.101, rpv
	.loc 1 157 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# right, tmp190
	movl	12(%rax), %eax	# right_61->sv_flags, D.18006
	andl	$536870912, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L77	#,
	.loc 1 157 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.104
	movzbl	37(%rax), %eax	# PL_curcop.104_73->op_private, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$8, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L78	#,
.L77:
	.loc 1 157 0 discriminator 1
	movl	$1, %eax	#, iftmp.103
	jmp	.L79	#
.L78:
	.loc 1 157 0 discriminator 3
	movl	$0, %eax	#, iftmp.103
.L79:
	.loc 1 157 0 discriminator 4
	movb	%al, -97(%rbp)	# iftmp.103, rbyte
	movb	$0, -98(%rbp)	#, rcopied
	.loc 1 159 0 is_stmt 1 discriminator 4
	movq	-64(%rbp), %rax	# targ, tmp191
	cmpq	-80(%rbp), %rax	# right, tmp191
	jne	.L80	#,
	.loc 1 159 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# right, tmp192
	cmpq	-32(%rbp), %rax	# left, tmp192
	je	.L80	#,
	.loc 1 160 0 is_stmt 1
	movq	-88(%rbp), %rdx	# rlen, rlen.105
	movq	-72(%rbp), %rax	# rpv, tmp193
	movq	%rdx, %rsi	# rlen.105,
	movq	%rax, %rdi	# tmp193,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18007,
	call	Perl_sv_2mortal	#
	movq	%rax, -80(%rbp)	# tmp194, right
	.loc 1 161 0
	movq	-80(%rbp), %rax	# right, tmp195
	movl	12(%rax), %eax	# right_83->sv_flags, D.18006
	andl	$262144, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L81	#,
	.loc 1 161 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# right, tmp196
	movq	(%rax), %rax	# right_83->sv_any, D.18008
	movq	8(%rax), %rax	# MEM[(struct XPV *)_86].xpv_cur, rlen.107
	movq	%rax, -88(%rbp)	# rlen.107, rlen
	movq	-80(%rbp), %rax	# right, tmp197
	movq	(%rax), %rax	# right_83->sv_any, D.18008
	movq	(%rax), %rax	# MEM[(struct XPV *)_88].xpv_pv, iftmp.106
	jmp	.L82	#
.L81:
	.loc 1 161 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp198
	movq	-80(%rbp), %rax	# right, tmp199
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# tmp199,
	call	Perl_sv_2pv_flags	#
.L82:
	.loc 1 161 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.106, rpv
	.loc 1 162 0 is_stmt 1 discriminator 3
	movb	$1, -98(%rbp)	#, rcopied
.L80:
	.loc 1 165 0
	movq	-64(%rbp), %rax	# targ, tmp200
	cmpq	-32(%rbp), %rax	# left, tmp200
	je	.L83	#,
	.loc 1 166 0
	movq	-32(%rbp), %rax	# left, tmp201
	movl	12(%rax), %eax	# left_62->sv_flags, D.18006
	andl	$262144, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L84	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# left, tmp202
	movq	(%rax), %rax	# left_62->sv_any, D.18008
	movq	8(%rax), %rax	# MEM[(struct XPV *)_95].xpv_cur, llen.109
	movq	%rax, -96(%rbp)	# llen.109, llen
	movq	-32(%rbp), %rax	# left, tmp203
	movq	(%rax), %rax	# left_62->sv_any, D.18008
	movq	(%rax), %rax	# MEM[(struct XPV *)_97].xpv_pv, iftmp.108
	jmp	.L85	#
.L84:
	.loc 1 166 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp204
	movq	-32(%rbp), %rax	# left, tmp205
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp204,
	movq	%rax, %rdi	# tmp205,
	call	Perl_sv_2pv_flags	#
.L85:
	.loc 1 166 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.108, lpv
	.loc 1 167 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# left, tmp206
	movl	12(%rax), %eax	# left_62->sv_flags, D.18006
	andl	$536870912, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L86	#,
	.loc 1 167 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.111
	movzbl	37(%rax), %eax	# PL_curcop.111_103->op_private, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$8, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L87	#,
.L86:
	.loc 1 167 0 discriminator 1
	movl	$1, %eax	#, iftmp.110
	jmp	.L88	#
.L87:
	.loc 1 167 0 discriminator 3
	movl	$0, %eax	#, iftmp.110
.L88:
	.loc 1 167 0 discriminator 4
	movb	%al, -99(%rbp)	# iftmp.110, lbyte
	.loc 1 168 0 is_stmt 1 discriminator 4
	movq	-96(%rbp), %rdx	# llen, llen.112
	movq	-24(%rbp), %rcx	# lpv, tmp207
	movq	-64(%rbp), %rax	# targ, tmp208
	movq	%rcx, %rsi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	Perl_sv_setpvn	#
	.loc 1 169 0 discriminator 4
	cmpb	$0, -99(%rbp)	#, lbyte
	jne	.L89	#,
	.loc 1 170 0
	movq	-64(%rbp), %rax	# targ, tmp209
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	orl	$536870912, %eax	#, D.18006
	movl	%eax, %edx	# D.18006, D.18006
	movq	-64(%rbp), %rax	# targ, tmp210
	movl	%edx, 12(%rax)	# D.18006, targ_30->sv_flags
	jmp	.L91	#
.L89:
	.loc 1 172 0
	movq	-64(%rbp), %rax	# targ, tmp211
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$-536870913, %eax	#, D.18006
	movl	%eax, %edx	# D.18006, D.18006
	movq	-64(%rbp), %rax	# targ, tmp212
	movl	%edx, 12(%rax)	# D.18006, targ_30->sv_flags
	jmp	.L91	#
.L83:
	.loc 1 175 0
	movq	-32(%rbp), %rax	# left, tmp213
	movl	12(%rax), %eax	# left_62->sv_flags, D.18006
	andl	$8192, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L92	#,
	.loc 1 176 0
	movq	-32(%rbp), %rax	# left, tmp214
	movq	%rax, %rdi	# tmp214,
	call	Perl_mg_get	#
.L92:
	.loc 1 177 0
	movq	-64(%rbp), %rax	# targ, tmp215
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$118423552, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	jne	.L93	#,
	.loc 1 178 0
	movq	-32(%rbp), %rax	# left, tmp216
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	Perl_sv_setpv	#
.L93:
	.loc 1 179 0
	movq	-32(%rbp), %rax	# left, tmp217
	movl	12(%rax), %eax	# left_62->sv_flags, D.18006
	andl	$262144, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L94	#,
	.loc 1 179 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# left, tmp218
	movq	(%rax), %rax	# left_62->sv_any, D.18008
	movq	8(%rax), %rax	# MEM[(struct XPV *)_121].xpv_cur, llen.114
	movq	%rax, -96(%rbp)	# llen.114, llen
	movq	-32(%rbp), %rax	# left, tmp219
	movq	(%rax), %rax	# left_62->sv_any, D.18008
	movq	(%rax), %rax	# MEM[(struct XPV *)_123].xpv_pv, iftmp.113
	jmp	.L95	#
.L94:
	.loc 1 179 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp220
	movq	-32(%rbp), %rax	# left, tmp221
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	Perl_sv_2pv_flags	#
.L95:
	.loc 1 179 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.113, lpv
	.loc 1 180 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# left, tmp222
	movl	12(%rax), %eax	# left_62->sv_flags, D.18006
	andl	$536870912, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L96	#,
	.loc 1 180 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.116
	movzbl	37(%rax), %eax	# PL_curcop.116_129->op_private, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$8, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L97	#,
.L96:
	.loc 1 180 0 discriminator 1
	movl	$1, %eax	#, iftmp.115
	jmp	.L98	#
.L97:
	.loc 1 180 0 discriminator 3
	movl	$0, %eax	#, iftmp.115
.L98:
	.loc 1 180 0 discriminator 4
	movb	%al, -99(%rbp)	# iftmp.115, lbyte
	.loc 1 181 0 is_stmt 1 discriminator 4
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.117
	movzbl	37(%rax), %eax	# PL_curcop.117_136->op_private, D.18002
	movzbl	%al, %eax	# D.18002, D.18003
	andl	$8, %eax	#, D.18003
	testl	%eax, %eax	# D.18003
	je	.L91	#,
	.loc 1 182 0
	movq	-64(%rbp), %rax	# targ, tmp223
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$-536870913, %eax	#, D.18006
	movl	%eax, %edx	# D.18006, D.18006
	movq	-64(%rbp), %rax	# targ, tmp224
	movl	%edx, 12(%rax)	# D.18006, targ_30->sv_flags
.L91:
	.loc 1 196 0
	movzbl	-99(%rbp), %eax	# lbyte, tmp225
	cmpb	-97(%rbp), %al	# rbyte, tmp225
	je	.L99	#,
	.loc 1 197 0
	cmpb	$0, -99(%rbp)	#, lbyte
	je	.L100	#,
	.loc 1 198 0
	movq	-64(%rbp), %rax	# targ, tmp226
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	Perl_sv_utf8_upgrade_flags	#
	jmp	.L99	#
.L100:
	.loc 1 200 0
	cmpb	$0, -98(%rbp)	#, rcopied
	jne	.L101	#,
	.loc 1 201 0
	movq	-88(%rbp), %rdx	# rlen, rlen.118
	movq	-72(%rbp), %rax	# rpv, tmp227
	movq	%rdx, %rsi	# rlen.118,
	movq	%rax, %rdi	# tmp227,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18007,
	call	Perl_sv_2mortal	#
	movq	%rax, -80(%rbp)	# tmp228, right
.L101:
	.loc 1 202 0
	movq	-80(%rbp), %rax	# right, tmp229
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	Perl_sv_utf8_upgrade_flags	#
	.loc 1 203 0
	movq	-80(%rbp), %rax	# right, tmp230
	movl	12(%rax), %eax	# right_2->sv_flags, D.18006
	andl	$262144, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L102	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# right, tmp231
	movq	(%rax), %rax	# right_2->sv_any, D.18008
	movq	8(%rax), %rax	# MEM[(struct XPV *)_147].xpv_cur, rlen.120
	movq	%rax, -88(%rbp)	# rlen.120, rlen
	movq	-80(%rbp), %rax	# right, tmp232
	movq	(%rax), %rax	# right_2->sv_any, D.18008
	movq	(%rax), %rax	# MEM[(struct XPV *)_149].xpv_pv, iftmp.119
	jmp	.L103	#
.L102:
	.loc 1 203 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp233
	movq	-80(%rbp), %rax	# right, tmp234
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp233,
	movq	%rax, %rdi	# tmp234,
	call	Perl_sv_2pv_flags	#
.L103:
	.loc 1 203 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.119, rpv
.L99:
	.loc 1 206 0 is_stmt 1
	movq	-88(%rbp), %rdx	# rlen, rlen.121
	movq	-72(%rbp), %rsi	# rpv, tmp235
	movq	-64(%rbp), %rax	# targ, tmp236
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp236,
	call	Perl_sv_catpvn_flags	#
.LBB10:
	.loc 1 208 0
	movq	-64(%rbp), %rax	# targ, tmp237
	movl	12(%rax), %eax	# targ_30->sv_flags, D.18006
	andl	$16384, %eax	#, D.18006
	testl	%eax, %eax	# D.18006
	je	.L104	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# targ, tmp238
	movq	%rax, %rdi	# tmp238,
	call	Perl_mg_set	#
.L104:
	.loc 1 208 0 discriminator 2
	movq	-64(%rbp), %rax	# targ, tmp239
	movq	%rax, (%rbx)	# tmp239, *sp_60
.LBE10:
	.loc 1 209 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.122
	movq	(%rax), %rax	# PL_op.122_157->op_next, D.18001
.L74:
.LBE9:
	.loc 1 211 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_pp_concat, .-Perl_pp_concat
	.globl	Perl_pp_padsv
	.type	Perl_pp_padsv, @function
Perl_pp_padsv:
.LFB15:
	.loc 1 214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 215 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.123
	movq	PL_op(%rip), %rax	# PL_op, PL_op.124
	movq	24(%rax), %rax	# PL_op.124_5->op_targ, D.18010
	salq	$3, %rax	#, D.18010
	addq	%rdx, %rax	# PL_curpad.123, D.18011
	movq	(%rax), %rax	# *_8, tmp99
	movq	%rax, -24(%rbp)	# tmp99, targ
.LBB11:
	.loc 1 216 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.125
	movq	%rax, %rdx	# PL_stack_max.125, PL_stack_max.126
	movq	%rbx, %rax	# sp, sp.127
	subq	%rax, %rdx	# sp.127, D.18012
	movq	%rdx, %rax	# D.18012, D.18012
	cmpq	$7, %rax	#, D.18012
	jg	.L106	#,
	.loc 1 216 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L106:
	.loc 1 216 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# targ, tmp100
	movq	%rax, (%rbx)	# tmp100, *sp_15
.LBE11:
	.loc 1 217 0 is_stmt 1 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.128
	movzbl	36(%rax), %eax	# PL_op.128_17->op_flags, D.18014
	movzbl	%al, %eax	# D.18014, D.18015
	andl	$32, %eax	#, D.18015
	testl	%eax, %eax	# D.18015
	je	.L107	#,
	.loc 1 218 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.129
	movzbl	37(%rax), %eax	# PL_op.129_21->op_private, D.18014
	testb	%al, %al	# D.18016
	jns	.L108	#,
	.loc 1 219 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.130
	movq	PL_op(%rip), %rax	# PL_op, PL_op.131
	movq	24(%rax), %rax	# PL_op.131_25->op_targ, D.18010
	salq	$3, %rax	#, D.18010
	addq	%rdx, %rax	# PL_curpad.130, D.18011
	movq	%rax, %rdi	# D.18011,
	call	Perl_save_clearsv	#
	jmp	.L107	#
.L108:
	.loc 1 220 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.132
	movzbl	37(%rax), %eax	# PL_op.132_29->op_private, D.18014
	movzbl	%al, %eax	# D.18014, D.18015
	andl	$96, %eax	#, D.18015
	testl	%eax, %eax	# D.18015
	je	.L107	#,
	.loc 1 221 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 222 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.133
	movzbl	37(%rax), %eax	# PL_op.133_33->op_private, D.18014
	movzbl	%al, %eax	# D.18014, D.18017
	andl	$96, %eax	#, D.18017
	movl	%eax, %edx	# D.18017, D.18017
	movq	PL_curpad(%rip), %rcx	# PL_curpad, PL_curpad.134
	movq	PL_op(%rip), %rax	# PL_op, PL_op.135
	movq	24(%rax), %rax	# PL_op.135_38->op_targ, D.18010
	salq	$3, %rax	#, D.18010
	addq	%rcx, %rax	# PL_curpad.134, D.18011
	movq	(%rax), %rax	# *_41, D.18013
	movl	%edx, %esi	# D.18017,
	movq	%rax, %rdi	# D.18013,
	call	Perl_vivify_ref	#
	.loc 1 223 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.L107:
	.loc 1 226 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.136
	movq	(%rax), %rax	# PL_op.136_44->op_next, D.18018
	.loc 1 227 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_pp_padsv, .-Perl_pp_padsv
	.globl	Perl_pp_readline
	.type	Perl_pp_readline, @function
Perl_pp_readline:
.LFB16:
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
.LBB12:
	.loc 1 231 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	subq	$8, %rbx	#, sp
.LBB13:
	movq	PL_op(%rip), %rax	# PL_op, PL_op.138
	movzbl	36(%rax), %eax	# PL_op.138_6->op_flags, D.18020
	movzbl	%al, %eax	# D.18020, D.18021
	andl	$64, %eax	#, D.18021
	testl	%eax, %eax	# D.18021
	je	.L111	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movq	%rbx, %rax	# sp, sp.139
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.139_10, iftmp.137
	jmp	.L112	#
.L111:
	.loc 1 231 0 discriminator 2
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.140
	movq	PL_op(%rip), %rax	# PL_op, PL_op.141
	movq	24(%rax), %rax	# PL_op.141_14->op_targ, D.18022
	salq	$3, %rax	#, D.18022
	addq	%rdx, %rax	# PL_curpad.140, D.18023
	movq	(%rax), %rax	# *_17, iftmp.137
.L112:
	.loc 1 231 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.137, targ
.LBB14:
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.142
	testq	%rax, %rax	# PL_amagic_generation.142
	je	.L113	#,
.LBB15:
	.loc 1 231 0 discriminator 1
	movq	(%rbx), %rax	# *sp_20, tmp110
	movq	%rax, -32(%rbp)	# tmp110, arg
.L114:
	movq	-32(%rbp), %rax	# arg, tmp111
	movl	12(%rax), %eax	# arg_22->sv_flags, D.18024
	andl	$268435456, %eax	#, D.18024
	testl	%eax, %eax	# D.18024
	je	.L113	#,
	movq	-32(%rbp), %rax	# arg, tmp112
	movl	$9, %ecx	#,
	movl	$63, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	Perl_amagic_call	#
	movq	%rax, -24(%rbp)	# tmp113, tmpsv
	cmpq	$0, -24(%rbp)	#, tmpsv
	je	.L113	#,
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB16:
	movq	-24(%rbp), %rcx	# tmpsv, tmp114
	movq	-40(%rbp), %rax	# targ, tmp115
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	Perl_sv_setsv_flags	#
.LBB17:
	movq	-40(%rbp), %rax	# targ, tmp116
	movl	12(%rax), %eax	# targ_19->sv_flags, D.18024
	andl	$16384, %eax	#, D.18024
	testl	%eax, %eax	# D.18024
	je	.L115	#,
	movq	-40(%rbp), %rax	# targ, tmp117
	movq	%rax, %rdi	# tmp117,
	call	Perl_mg_set	#
.L115:
	.loc 1 231 0 discriminator 2
	movq	-40(%rbp), %rax	# targ, tmp118
	movq	%rax, (%rbx)	# tmp118, *sp_26
.LBE17:
.LBE16:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.143
	movq	(%rax), %rax	# PL_op.143_30->op_next, D.18019
	jmp	.L116	#
.L113:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 232 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.144
	leaq	-8(%rax), %rdx	#, PL_stack_sp.146
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.146, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.145_33, PL_last_in_gv.147
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.147, PL_last_in_gv
	.loc 1 233 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.148
	movl	12(%rax), %eax	# PL_last_in_gv.148_36->sv_flags, D.18024
	movzbl	%al, %eax	# D.18024, D.18024
	cmpl	$13, %eax	#, D.18024
	je	.L117	#,
	.loc 1 234 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.149
	movl	12(%rax), %eax	# PL_last_in_gv.149_39->sv_flags, D.18024
	andl	$524288, %eax	#, D.18024
	testl	%eax, %eax	# D.18024
	je	.L118	#,
	.loc 1 234 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.150
	movq	(%rax), %rax	# PL_last_in_gv.150_42->sv_any, D.18026
	movq	(%rax), %rax	# MEM[(struct XRV *)_43].xrv_rv, D.18025
	movl	12(%rax), %eax	# _44->sv_flags, D.18024
	movzbl	%al, %eax	# D.18024, D.18024
	cmpl	$13, %eax	#, D.18024
	jne	.L118	#,
	.loc 1 235 0 is_stmt 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.151
	movq	(%rax), %rax	# PL_last_in_gv.151_47->sv_any, D.18026
	movq	(%rax), %rax	# MEM[(struct XRV *)_48].xrv_rv, PL_last_in_gv.152
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.152, PL_last_in_gv
	jmp	.L117	#
.L118:
.LBB18:
	.loc 1 237 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB19:
	.loc 1 238 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.153
	movq	%rax, %rdx	# PL_stack_max.153, PL_stack_max.154
	movq	%rbx, %rax	# sp, sp.155
	subq	%rax, %rdx	# sp.155, D.18027
	movq	%rdx, %rax	# D.18027, D.18027
	cmpq	$7, %rax	#, D.18027
	jg	.L119	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L119:
	.loc 1 238 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.156
	movq	%rax, (%rbx)	# PL_last_in_gv.156, *sp_56
.LBE19:
	.loc 1 239 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 240 0 discriminator 2
	call	Perl_pp_rv2gv	#
	.loc 1 241 0 discriminator 2
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.157
	leaq	-8(%rax), %rdx	#, PL_stack_sp.159
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.159, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.158_60, PL_last_in_gv.160
	movq	%rax, PL_last_in_gv(%rip)	# PL_last_in_gv.160, PL_last_in_gv
.L117:
.LBE18:
	.loc 1 244 0
	call	Perl_do_readline	#
.L116:
	.loc 1 245 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_pp_readline, .-Perl_pp_readline
	.globl	Perl_pp_eq
	.type	Perl_pp_eq, @function
Perl_pp_eq:
.LFB17:
	.loc 1 248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 249 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.161
	testq	%rax, %rax	# PL_amagic_generation.161
	je	.L121	#,
.LBB20:
	.loc 1 249 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_11, tmp180
	movq	%rax, -72(%rbp)	# tmp180, right
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_11 + -8B], tmp181
	movq	%rax, -64(%rbp)	# tmp181, left
	movq	-64(%rbp), %rax	# left, tmp182
	movl	12(%rax), %eax	# left_14->sv_flags, D.18029
	andl	$268435456, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L122	#,
	.loc 1 249 0 discriminator 2
	movq	-72(%rbp), %rax	# right, tmp183
	movl	12(%rax), %eax	# right_13->sv_flags, D.18029
	andl	$268435456, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L121	#,
.L122:
	.loc 1 249 0 discriminator 1
	movq	-72(%rbp), %rsi	# right, tmp184
	movq	-64(%rbp), %rax	# left, tmp185
	movl	$0, %ecx	#,
	movl	$32, %edx	#,
	movq	%rax, %rdi	# tmp185,
	call	Perl_amagic_call	#
	movq	%rax, -56(%rbp)	# tmp186, tmpsv
	cmpq	$0, -56(%rbp)	#, tmpsv
	je	.L121	#,
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	%rbx, %rax	# sp, sp.162
	leaq	-8(%rax), %rbx	#, sp
	movq	-56(%rbp), %rax	# tmpsv, tmp187
	movq	%rax, (%rbx)	# tmp187, *sp_22
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.163
	movq	(%rax), %rax	# PL_op.163_23->op_next, D.18028
	jmp	.L123	#
.L121:
.LBE20:
	.loc 1 251 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _25->sv_flags, D.18029
	andl	$524288, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L124	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _28->sv_flags, D.18029
	andl	$268435456, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L124	#,
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_31, D.18030
	movl	12(%rax), %eax	# _32->sv_flags, D.18029
	andl	$524288, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L124	#,
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_35, D.18030
	movl	12(%rax), %eax	# _36->sv_flags, D.18029
	andl	$268435456, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L124	#,
	.loc 1 252 0 is_stmt 1
	subq	$8, %rbx	#, sp
	.loc 1 253 0
	movq	(%rbx), %rax	# *sp_39, D.18030
	movq	(%rax), %rax	# _40->sv_any, D.18032
	movq	(%rax), %rdx	# MEM[(struct XRV *)_41].xrv_rv, D.18030
	leaq	8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_43, D.18030
	movq	(%rax), %rax	# _44->sv_any, D.18032
	movq	(%rax), %rax	# MEM[(struct XRV *)_45].xrv_rv, D.18030
	cmpq	%rax, %rdx	# D.18030, D.18030
	jne	.L125	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.164
	jmp	.L126	#
.L125:
	.loc 1 253 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.164
.L126:
	.loc 1 253 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.164, *sp_39
	.loc 1 254 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.165
	movq	(%rax), %rax	# PL_op.165_49->op_next, D.18028
	jmp	.L123	#
.L124:
	.loc 1 258 0
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _51->sv_flags, D.18029
	andl	$16777216, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L127	#,
	.loc 1 258 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _54->sv_flags, D.18029
	andl	$131072, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L128	#,
	.loc 1 258 0 discriminator 2
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _57->sv_flags, D.18029
	andl	$262144, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L127	#,
.L128:
	.loc 1 258 0 discriminator 1
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _60->sv_flags, D.18029
	andl	$65536, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L127	#,
	.loc 1 258 0 discriminator 2
	movq	(%rbx), %rax	# *sp_11, D.18030
	movq	%rax, %rdi	# D.18030,
	call	Perl_sv_2iv	#
.L127:
	.loc 1 259 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _68->sv_flags, D.18029
	andl	$65536, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L130	#,
	.loc 1 263 0
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_71, D.18030
	movl	12(%rax), %eax	# _72->sv_flags, D.18029
	andl	$16777216, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L131	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_75, D.18030
	movl	12(%rax), %eax	# _76->sv_flags, D.18029
	andl	$131072, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L132	#,
	.loc 1 263 0 discriminator 2
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_79, D.18030
	movl	12(%rax), %eax	# _80->sv_flags, D.18029
	andl	$262144, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L131	#,
.L132:
	.loc 1 263 0 discriminator 1
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_83, D.18030
	movl	12(%rax), %eax	# _84->sv_flags, D.18029
	andl	$65536, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	jne	.L131	#,
	.loc 1 263 0 discriminator 2
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_91, D.18030
	movq	%rax, %rdi	# D.18030,
	call	Perl_sv_2iv	#
.L131:
	.loc 1 264 0 is_stmt 1
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_94, D.18030
	movl	12(%rax), %eax	# _95->sv_flags, D.18029
	andl	$65536, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L130	#,
.LBB21:
	.loc 1 265 0
	leaq	-8(%rbx), %rax	#, D.18031
	movq	(%rax), %rax	# *_98, D.18030
	movl	12(%rax), %eax	# _99->sv_flags, D.18029
	andl	$-2147418112, %eax	#, D.18029
	cmpl	$-2147418112, %eax	#, D.18029
	sete	%al	#, D.18033
	movb	%al, -90(%rbp)	# D.18033, auvok
	.loc 1 266 0
	movq	(%rbx), %rax	# *sp_11, D.18030
	movl	12(%rax), %eax	# _104->sv_flags, D.18029
	andl	$-2147418112, %eax	#, D.18029
	cmpl	$-2147418112, %eax	#, D.18029
	sete	%al	#, D.18033
	movb	%al, -89(%rbp)	# D.18033, buvok
	.loc 1 268 0
	movzbl	-90(%rbp), %eax	# auvok, tmp188
	cmpb	-89(%rbp), %al	# buvok, tmp188
	jne	.L134	#,
.LBB22:
	.loc 1 275 0
	movq	%rbx, %rax	# sp, sp.168
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.168_109, D.18030
	movq	(%rax), %rax	# _111->sv_any, D.18032
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_112].xuv_uv, tmp189
	movq	%rax, -48(%rbp)	# tmp189, buv
	.loc 1 276 0
	movq	(%rbx), %rax	# *sp_110, D.18030
	movq	(%rax), %rax	# _114->sv_any, D.18032
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_115].xuv_uv, tmp190
	movq	%rax, -40(%rbp)	# tmp190, auv
	.loc 1 278 0
	movq	-40(%rbp), %rax	# auv, tmp191
	cmpq	-48(%rbp), %rax	# buv, tmp191
	jne	.L135	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.169
	jmp	.L136	#
.L135:
	.loc 1 278 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.169
.L136:
	.loc 1 278 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.169, *sp_110
	.loc 1 279 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.170
	movq	(%rax), %rax	# PL_op.170_119->op_next, D.18028
	jmp	.L123	#
.L134:
.LBE22:
.LBB23:
	.loc 1 286 0
	cmpb	$0, -90(%rbp)	#, auvok
	je	.L137	#,
	.loc 1 288 0
	movq	(%rbx), %rax	# *sp_11, tmp192
	movq	%rax, -88(%rbp)	# tmp192, ivp
	.loc 1 289 0
	subq	$8, %rbx	#, sp
	movq	(%rbx), %rax	# *sp_122, tmp193
	movq	%rax, -80(%rbp)	# tmp193, uvp
	jmp	.L138	#
.L137:
	.loc 1 291 0
	movq	(%rbx), %rax	# *sp_11, tmp194
	movq	%rax, -80(%rbp)	# tmp194, uvp
	.loc 1 292 0
	subq	$8, %rbx	#, sp
	movq	(%rbx), %rax	# *sp_125, tmp195
	movq	%rax, -88(%rbp)	# tmp195, ivp
.L138:
	.loc 1 294 0
	movq	-88(%rbp), %rax	# ivp, tmp196
	movq	(%rax), %rax	# ivp_2->sv_any, D.18032
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_127].xiv_iv, tmp197
	movq	%rax, -32(%rbp)	# tmp197, iv
	.loc 1 295 0
	cmpq	$0, -32(%rbp)	#, iv
	jns	.L139	#,
	.loc 1 297 0
	movq	$PL_sv_no, (%rbx)	#, *sp_1
	.loc 1 298 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.171
	movq	(%rax), %rax	# PL_op.171_129->op_next, D.18028
	jmp	.L123	#
.L139:
	.loc 1 301 0
	movq	-32(%rbp), %rdx	# iv, iv.173
	movq	-80(%rbp), %rax	# uvp, tmp198
	movq	(%rax), %rax	# uvp_3->sv_any, D.18032
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_132].xuv_uv, D.18034
	cmpq	%rax, %rdx	# D.18034, iv.173
	jne	.L140	#,
	.loc 1 301 0 is_stmt 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.172
	jmp	.L141	#
.L140:
	.loc 1 301 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.172
.L141:
	.loc 1 301 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.172, *sp_1
	.loc 1 302 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.174
	movq	(%rax), %rax	# PL_op.174_136->op_next, D.18028
	jmp	.L123	#
.L130:
.LBE23:
.LBE21:
.LBB24:
	.loc 1 308 0
	movq	%rbx, %rax	# sp, sp.175
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.175_138, PL_Sv.176
	movq	%rax, PL_Sv(%rip)	# PL_Sv.176, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.178
	movl	12(%rax), %eax	# PL_Sv.178_141->sv_flags, D.18029
	andl	$131072, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L142	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.179
	movq	(%rax), %rax	# PL_Sv.179_144->sv_any, D.18032
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_145].xnv_nv, iftmp.177
	jmp	.L143	#
.L142:
	.loc 1 308 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.180
	movq	%rax, %rdi	# PL_Sv.180,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, iftmp.177
.L143:
	.loc 1 308 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.177, value
	.loc 1 309 0 is_stmt 1 discriminator 3
	movq	(%rbx), %rax	# *sp_139, D.18030
	movl	12(%rax), %eax	# _150->sv_flags, D.18029
	andl	$131072, %eax	#, D.18029
	testl	%eax, %eax	# D.18029
	je	.L144	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_139, D.18030
	movq	(%rax), %rax	# _153->sv_any, D.18032
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_154].xnv_nv, iftmp.182
	jmp	.L145	#
.L144:
	.loc 1 309 0 discriminator 2
	movq	(%rbx), %rax	# *sp_139, D.18030
	movq	%rax, %rdi	# D.18030,
	call	Perl_sv_2nv	#
.L145:
	.loc 1 309 0 discriminator 3
	ucomisd	-24(%rbp), %xmm0	# value, iftmp.182
	jp	.L146	#,
	ucomisd	-24(%rbp), %xmm0	# value, iftmp.182
	jne	.L146	#,
	.loc 1 309 0 discriminator 1
	movl	$PL_sv_yes, %eax	#, iftmp.181
	jmp	.L148	#
.L146:
	.loc 1 309 0 discriminator 2
	movl	$PL_sv_no, %eax	#, iftmp.181
.L148:
	.loc 1 309 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.181, *sp_139
	.loc 1 310 0 is_stmt 1 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.183
	movq	(%rax), %rax	# PL_op.183_160->op_next, D.18028
.L123:
.LBE24:
	.loc 1 312 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_pp_eq, .-Perl_pp_eq
	.globl	Perl_pp_preinc
	.type	Perl_pp_preinc, @function
Perl_pp_preinc:
.LFB18:
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 316 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 317 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _3->sv_flags, D.18038
	movzbl	%al, %eax	# D.18038, D.18038
	cmpl	$9, %eax	#, D.18038
	jbe	.L151	#,
	.loc 1 318 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L152	#
.L151:
	.loc 1 319 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _7->sv_flags, D.18038
	andl	$8388608, %eax	#, D.18038
	testl	%eax, %eax	# D.18038
	jne	.L153	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _10->sv_flags, D.18038
	andl	$-2147418112, %eax	#, D.18038
	cmpl	$65536, %eax	#, D.18038
	jne	.L153	#,
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _13->sv_flags, D.18038
	andl	$131072, %eax	#, D.18038
	testl	%eax, %eax	# D.18038
	jne	.L153	#,
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _16->sv_flags, D.18038
	andl	$262144, %eax	#, D.18038
	testl	%eax, %eax	# D.18038
	jne	.L153	#,
	.loc 1 320 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_2, D.18037
	movq	(%rax), %rax	# _19->sv_any, D.18039
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_20].xiv_iv, D.18040
	movabsq	$9223372036854775807, %rax	#, tmp94
	cmpq	%rax, %rdx	# tmp94, D.18040
	je	.L153	#,
	.loc 1 322 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movq	(%rax), %rax	# _22->sv_any, D.18039
	movq	24(%rax), %rdx	# MEM[(struct XPVIV *)_23].xiv_iv, D.18040
	addq	$1, %rdx	#, D.18040
	movq	%rdx, 24(%rax)	# D.18040, MEM[(struct XPVIV *)_23].xiv_iv
	.loc 1 323 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movq	(%rbx), %rdx	# *sp_2, D.18037
	movl	12(%rdx), %edx	# _27->sv_flags, D.18038
	andl	$-100663297, %edx	#, D.18038
	movl	%edx, 12(%rax)	# D.18038, _26->sv_flags
	jmp	.L154	#
.L153:
	.loc 1 326 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movq	%rax, %rdi	# D.18037,
	call	Perl_sv_inc	#
.L154:
	.loc 1 327 0
	movq	(%rbx), %rax	# *sp_2, D.18037
	movl	12(%rax), %eax	# _31->sv_flags, D.18038
	andl	$16384, %eax	#, D.18038
	testl	%eax, %eax	# D.18038
	je	.L155	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_2, D.18037
	movq	%rax, %rdi	# D.18037,
	call	Perl_mg_set	#
.L155:
	.loc 1 328 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.184
	movq	(%rax), %rax	# PL_op.184_35->op_next, D.18036
.L152:
	.loc 1 329 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_pp_preinc, .-Perl_pp_preinc
	.globl	Perl_pp_or
	.type	Perl_pp_or, @function
Perl_pp_or:
.LFB19:
	.loc 1 332 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 333 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 334 0
	movq	(%rbx), %rax	# *sp_7, D.18042
	testq	%rax, %rax	# D.18042
	je	.L157	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_7, D.18042
	movl	12(%rax), %eax	# _9->sv_flags, D.18043
	andl	$262144, %eax	#, D.18043
	testl	%eax, %eax	# D.18043
	je	.L158	#,
	.loc 1 334 0 discriminator 3
	movq	(%rbx), %rax	# *sp_7, D.18042
	movq	(%rax), %rax	# _12->sv_any, PL_Xpv.188
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.188, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.189
	testq	%rax, %rax	# PL_Xpv.189
	je	.L159	#,
	.loc 1 334 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.190
	movq	8(%rax), %rax	# PL_Xpv.190_15->xpv_cur, D.18044
	cmpq	$1, %rax	#, D.18044
	ja	.L160	#,
	.loc 1 334 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.191
	movq	8(%rax), %rax	# PL_Xpv.191_17->xpv_cur, D.18044
	testq	%rax, %rax	# D.18044
	je	.L159	#,
	.loc 1 334 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.192
	movq	(%rax), %rax	# PL_Xpv.192_19->xpv_pv, D.18045
	movzbl	(%rax), %eax	# *_20, D.18046
	cmpb	$48, %al	#, D.18046
	je	.L159	#,
.L160:
	.loc 1 334 0 discriminator 7
	movl	$1, %eax	#, iftmp.187
	jmp	.L161	#
.L159:
	.loc 1 334 0 discriminator 6
	movl	$0, %eax	#, iftmp.187
.L161:
	.loc 1 334 0 discriminator 9
	andl	$1, %eax	#, iftmp.186
	jmp	.L167	#
.L158:
	.loc 1 334 0 discriminator 4
	movq	(%rbx), %rax	# *sp_7, D.18042
	movl	12(%rax), %eax	# _25->sv_flags, D.18043
	andl	$65536, %eax	#, D.18043
	testl	%eax, %eax	# D.18043
	je	.L163	#,
	.loc 1 334 0 discriminator 10
	movq	(%rbx), %rax	# *sp_7, D.18042
	movq	(%rax), %rax	# _28->sv_any, D.18047
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_29].xiv_iv, D.18048
	testq	%rax, %rax	# D.18048
	setne	%al	#, iftmp.193
	jmp	.L167	#
.L163:
	.loc 1 334 0 discriminator 11
	movq	(%rbx), %rax	# *sp_7, D.18042
	movl	12(%rax), %eax	# _32->sv_flags, D.18043
	andl	$131072, %eax	#, D.18043
	testl	%eax, %eax	# D.18043
	je	.L165	#,
	.loc 1 334 0 discriminator 12
	movq	(%rbx), %rax	# *sp_7, D.18042
	movq	(%rax), %rax	# _35->sv_any, D.18047
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_36].xnv_nv, D.18049
	xorpd	%xmm1, %xmm1	# tmp98
	ucomisd	%xmm1, %xmm0	# tmp98, D.18049
	setp	%dl	#, tmp97
	movl	$1, %eax	#, tmp100
	xorpd	%xmm1, %xmm1	# tmp99
	ucomisd	%xmm1, %xmm0	# tmp99, D.18049
	cmove	%edx, %eax	# tmp97,, iftmp.194
	jmp	.L167	#
.L165:
	.loc 1 334 0 discriminator 13
	movq	(%rbx), %rax	# *sp_7, D.18042
	movq	%rax, %rdi	# D.18042,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.18046
	setne	%al	#, iftmp.194
	jmp	.L167	#
.L157:
	.loc 1 334 0 discriminator 2
	movl	$0, %eax	#, iftmp.185
.L167:
	.loc 1 334 0 discriminator 16
	testb	%al, %al	# iftmp.185
	je	.L168	#,
	.loc 1 335 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.195
	movq	(%rax), %rax	# PL_op.195_46->op_next, D.18041
	jmp	.L169	#
.L168:
	.loc 1 337 0
	subq	$8, %rbx	#, sp
	.loc 1 338 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.196
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.196_49].op_other, D.18041
.L169:
	.loc 1 340 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_pp_or, .-Perl_pp_or
	.globl	Perl_pp_add
	.type	Perl_pp_add, @function
Perl_pp_add:
.LFB20:
	.loc 1 343 0
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
	.loc 1 344 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.198
	movzbl	36(%rax), %eax	# PL_op.198_22->op_flags, D.18051
	movzbl	%al, %eax	# D.18051, D.18052
	andl	$64, %eax	#, D.18052
	testl	%eax, %eax	# D.18052
	je	.L171	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_21 + -8B], iftmp.197
	jmp	.L172	#
.L171:
	.loc 1 344 0 discriminator 2
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.199
	movq	PL_op(%rip), %rax	# PL_op, PL_op.200
	movq	24(%rax), %rax	# PL_op.200_28->op_targ, D.18053
	salq	$3, %rax	#, D.18053
	addq	%rdx, %rax	# PL_curpad.199, D.18054
	movq	(%rax), %rax	# *_31, iftmp.197
.L172:
	.loc 1 344 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.197, targ
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.201
	testq	%rax, %rax	# PL_amagic_generation.201
	je	.L173	#,
.LBB25:
	.loc 1 344 0 discriminator 1
	movq	(%rbx), %rax	# *sp_21, tmp218
	movq	%rax, -64(%rbp)	# tmp218, right
	movq	-8(%rbx), %rax	# MEM[(struct SV * *)sp_21 + -8B], tmp219
	movq	%rax, -56(%rbp)	# tmp219, left
	movq	-56(%rbp), %rax	# left, tmp220
	movl	12(%rax), %eax	# left_36->sv_flags, D.18055
	andl	$268435456, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L174	#,
	.loc 1 344 0 discriminator 2
	movq	-64(%rbp), %rax	# right, tmp221
	movl	12(%rax), %eax	# right_35->sv_flags, D.18055
	andl	$268435456, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L173	#,
.L174:
	.loc 1 344 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.203
	movzbl	36(%rax), %eax	# PL_op.203_41->op_flags, D.18051
	movzbl	%al, %eax	# D.18051, D.18052
	andl	$64, %eax	#, D.18052
	testl	%eax, %eax	# D.18052
	je	.L175	#,
	movl	$4, %eax	#, iftmp.202
	jmp	.L176	#
.L175:
	.loc 1 344 0 discriminator 2
	movl	$0, %eax	#, iftmp.202
.L176:
	.loc 1 344 0 discriminator 3
	movq	-64(%rbp), %rsi	# right, tmp222
	movq	-56(%rbp), %rdi	# left, tmp223
	movl	%eax, %ecx	# iftmp.202,
	movl	$6, %edx	#,
	call	Perl_amagic_call	#
	movq	%rax, -48(%rbp)	# tmp224, tmpsv
	cmpq	$0, -48(%rbp)	#, tmpsv
	je	.L173	#,
	.loc 1 344 0 discriminator 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	%rbx, %rax	# sp, sp.204
	leaq	-8(%rax), %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.205
	movzbl	36(%rax), %eax	# PL_op.205_51->op_flags, D.18051
	movzbl	%al, %eax	# D.18051, D.18052
	andl	$64, %eax	#, D.18052
	testl	%eax, %eax	# D.18052
	jne	.L177	#,
	.loc 1 344 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp225
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$1024, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L178	#,
.L177:
	.loc 1 344 0 discriminator 1
	movq	-48(%rbp), %rcx	# tmpsv, tmp226
	movq	-72(%rbp), %rax	# targ, tmp227
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_setsv_flags	#
.LBB26:
	movq	-72(%rbp), %rax	# targ, tmp228
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L179	#,
	movq	-72(%rbp), %rax	# targ, tmp229
	movq	%rax, %rdi	# tmp229,
	call	Perl_mg_set	#
.L179:
	.loc 1 344 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp230
	movq	%rax, (%rbx)	# tmp230, *sp_50
.LBE26:
	jmp	.L180	#
.L178:
	.loc 1 344 0 discriminator 1
	movq	-48(%rbp), %rax	# tmpsv, tmp231
	movq	%rax, (%rbx)	# tmp231, *sp_50
.L180:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.206
	movq	(%rax), %rax	# PL_op.206_60->op_next, D.18050
	jmp	.L181	#
.L173:
.LBE25:
	.loc 1 345 0 is_stmt 1
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_62, D.18056
	movl	12(%rax), %eax	# _63->sv_flags, D.18055
	andl	$118423552, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L182	#,
	.loc 1 345 0 is_stmt 0 discriminator 2
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_66, D.18056
	movl	12(%rax), %eax	# _67->sv_flags, D.18055
	andl	$8192, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L182	#,
	.loc 1 345 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.208
	movzbl	36(%rax), %eax	# PL_op.208_70->op_flags, D.18051
	movzbl	%al, %eax	# D.18051, D.18052
	andl	$64, %eax	#, D.18052
	testl	%eax, %eax	# D.18052
	jne	.L183	#,
.L182:
	movl	$1, %eax	#, iftmp.207
	jmp	.L184	#
.L183:
	.loc 1 345 0 discriminator 3
	movl	$0, %eax	#, iftmp.207
.L184:
	.loc 1 345 0 discriminator 4
	movb	%al, -81(%rbp)	# iftmp.207, useleft
	.loc 1 393 0 is_stmt 1 discriminator 4
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _77->sv_flags, D.18055
	andl	$16777216, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L185	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _80->sv_flags, D.18055
	andl	$131072, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L186	#,
	.loc 1 393 0 discriminator 2
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _83->sv_flags, D.18055
	andl	$262144, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L185	#,
.L186:
	.loc 1 393 0 discriminator 1
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _86->sv_flags, D.18055
	andl	$65536, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L185	#,
	.loc 1 393 0 discriminator 2
	movq	(%rbx), %rax	# *sp_21, D.18056
	movq	%rax, %rdi	# D.18056,
	call	Perl_sv_2iv	#
.L185:
	.loc 1 394 0 is_stmt 1
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _94->sv_flags, D.18055
	andl	$65536, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L188	#,
.LBB27:
	.loc 1 398 0
	movl	$0, %r12d	#, auv
	.loc 1 399 0
	movb	$0, -85(%rbp)	#, auvok
	.loc 1 400 0
	movb	$0, -84(%rbp)	#, a_valid
	.loc 1 402 0
	cmpb	$0, -81(%rbp)	#, useleft
	jne	.L189	#,
	.loc 1 403 0
	movl	$0, %r12d	#, auv
	.loc 1 404 0
	movb	$1, -85(%rbp)	#, auvok
	movzbl	-85(%rbp), %eax	# auvok, tmp232
	movb	%al, -84(%rbp)	# tmp232, a_valid
	jmp	.L190	#
.L189:
	.loc 1 410 0
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_103, D.18056
	movl	12(%rax), %eax	# _104->sv_flags, D.18055
	andl	$16777216, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L191	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_107, D.18056
	movl	12(%rax), %eax	# _108->sv_flags, D.18055
	andl	$131072, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L192	#,
	.loc 1 410 0 discriminator 2
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_111, D.18056
	movl	12(%rax), %eax	# _112->sv_flags, D.18055
	andl	$262144, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L191	#,
.L192:
	.loc 1 410 0 discriminator 1
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_115, D.18056
	movl	12(%rax), %eax	# _116->sv_flags, D.18055
	andl	$65536, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	jne	.L191	#,
	.loc 1 410 0 discriminator 2
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_123, D.18056
	movq	%rax, %rdi	# D.18056,
	call	Perl_sv_2iv	#
.L191:
	.loc 1 411 0 is_stmt 1
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_126, D.18056
	movl	12(%rax), %eax	# _127->sv_flags, D.18055
	andl	$65536, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L190	#,
	.loc 1 412 0
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_130, D.18056
	movl	12(%rax), %eax	# _131->sv_flags, D.18055
	andl	$-2147418112, %eax	#, D.18055
	cmpl	$-2147418112, %eax	#, D.18055
	sete	%al	#, D.18058
	movb	%al, -85(%rbp)	# D.18058, auvok
	cmpb	$0, -85(%rbp)	#, auvok
	je	.L194	#,
	.loc 1 413 0
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_136, D.18056
	movq	(%rax), %rax	# _137->sv_any, D.18057
	movq	24(%rax), %r12	# MEM[(struct XPVUV *)_138].xuv_uv, auv
	jmp	.L195	#
.L194:
.LBB28:
	.loc 1 415 0
	leaq	-8(%rbx), %rax	#, D.18054
	movq	(%rax), %rax	# *_140, D.18056
	movq	(%rax), %rax	# _141->sv_any, D.18057
	movq	24(%rax), %r12	# MEM[(struct XPVIV *)_142].xiv_iv, aiv
	.loc 1 416 0
	testq	%r12, %r12	# aiv
	js	.L196	#,
	.loc 1 418 0
	movb	$1, -85(%rbp)	#, auvok
	jmp	.L195	#
.L196:
	.loc 1 420 0
	movq	%r12, %rax	# aiv, D.18059
	negq	%rax	# D.18059
	movq	%rax, %r12	# D.18059, auv
.L195:
.LBE28:
	.loc 1 423 0
	movb	$1, -84(%rbp)	#, a_valid
.L190:
	.loc 1 426 0
	cmpb	$0, -84(%rbp)	#, a_valid
	je	.L188	#,
.LBB29:
	.loc 1 427 0
	movb	$0, -83(%rbp)	#, result_good
	.loc 1 430 0
	movq	(%rbx), %rax	# *sp_21, D.18056
	movl	12(%rax), %eax	# _150->sv_flags, D.18055
	andl	$-2147418112, %eax	#, D.18055
	cmpl	$-2147418112, %eax	#, D.18055
	sete	%al	#, D.18058
	movb	%al, -82(%rbp)	# D.18058, buvok
	.loc 1 432 0
	cmpb	$0, -82(%rbp)	#, buvok
	je	.L197	#,
	.loc 1 433 0
	movq	(%rbx), %rax	# *sp_21, D.18056
	movq	(%rax), %rax	# _155->sv_any, D.18057
	movq	24(%rax), %r13	# MEM[(struct XPVUV *)_156].xuv_uv, buv
	jmp	.L198	#
.L197:
.LBB30:
	.loc 1 435 0
	movq	(%rbx), %rax	# *sp_21, D.18056
	movq	(%rax), %rax	# _158->sv_any, D.18057
	movq	24(%rax), %r13	# MEM[(struct XPVIV *)_159].xiv_iv, biv
	.loc 1 436 0
	testq	%r13, %r13	# biv
	js	.L199	#,
	.loc 1 438 0
	movb	$1, -82(%rbp)	#, buvok
	jmp	.L198	#
.L199:
	.loc 1 440 0
	movq	%r13, %rax	# biv, D.18059
	negq	%rax	# D.18059
	movq	%rax, %r13	# D.18059, buv
.L198:
.LBE30:
	.loc 1 452 0
	movzbl	-85(%rbp), %eax	# auvok, tmp233
	cmpb	-82(%rbp), %al	# buvok, tmp233
	je	.L200	#,
	.loc 1 454 0
	cmpq	%r13, %r12	# buv, auv
	jb	.L201	#,
	.loc 1 455 0
	movq	%r12, %rax	# auv, tmp234
	subq	%r13, %rax	# buv, tmp234
	movq	%rax, -80(%rbp)	# tmp234, result
	.loc 1 457 0
	cmpq	%r12, -80(%rbp)	# auv, result
	ja	.L204	#,
	.loc 1 458 0
	movb	$1, -83(%rbp)	#, result_good
	jmp	.L204	#
.L201:
	.loc 1 460 0
	movq	%r13, %rax	# buv, tmp235
	subq	%r12, %rax	# auv, tmp235
	movq	%rax, -80(%rbp)	# tmp235, result
	.loc 1 461 0
	cmpq	%r13, -80(%rbp)	# buv, result
	ja	.L204	#,
	.loc 1 464 0
	cmpb	$0, -85(%rbp)	#, auvok
	sete	%al	#, D.18058
	movb	%al, -85(%rbp)	# D.18058, auvok
	.loc 1 465 0
	movb	$1, -83(%rbp)	#, result_good
	jmp	.L204	#
.L200:
	.loc 1 470 0
	leaq	(%r12,%r13), %rax	#, tmp236
	movq	%rax, -80(%rbp)	# tmp236, result
	.loc 1 471 0
	cmpq	%r12, -80(%rbp)	# auv, result
	jb	.L204	#,
	.loc 1 472 0
	movb	$1, -83(%rbp)	#, result_good
.L204:
	.loc 1 474 0
	cmpb	$0, -83(%rbp)	#, result_good
	je	.L188	#,
	.loc 1 475 0
	subq	$8, %rbx	#, sp
	.loc 1 476 0
	cmpb	$0, -85(%rbp)	#, auvok
	je	.L205	#,
.LBB31:
	.loc 1 477 0
	movq	-80(%rbp), %rdx	# result, tmp237
	movq	-72(%rbp), %rax	# targ, tmp238
	movq	%rdx, %rsi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	Perl_sv_setuv	#
.LBB32:
	movq	-72(%rbp), %rax	# targ, tmp239
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L206	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp240
	movq	%rax, %rdi	# tmp240,
	call	Perl_mg_set	#
.L206:
	.loc 1 477 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp241
	movq	%rax, (%rbx)	# tmp241, *sp_173
.LBE32:
.LBE31:
	jmp	.L207	#
.L205:
	.loc 1 480 0 is_stmt 1
	movabsq	$-9223372036854775808, %rax	#, tmp242
	cmpq	%rax, -80(%rbp)	# tmp242, result
	ja	.L208	#,
.LBB33:
	.loc 1 481 0
	movq	-80(%rbp), %rax	# result, result.211
	negq	%rax	# D.18059
	movq	%rax, %rdx	# D.18059, D.18059
	movq	-72(%rbp), %rax	# targ, tmp243
	movq	%rdx, %rsi	# D.18059,
	movq	%rax, %rdi	# tmp243,
	call	Perl_sv_setiv	#
.LBB34:
	movq	-72(%rbp), %rax	# targ, tmp244
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L209	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp245
	movq	%rax, %rdi	# tmp245,
	call	Perl_mg_set	#
.L209:
	.loc 1 481 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp246
	movq	%rax, (%rbx)	# tmp246, *sp_173
.LBE34:
.LBE33:
	jmp	.L207	#
.L208:
.LBB35:
	.loc 1 484 0 is_stmt 1
	movq	-80(%rbp), %rax	# result, tmp247
	testq	%rax, %rax	# tmp247
	js	.L210	#,
	cvtsi2sdq	%rax, %xmm0	# tmp247, D.18060
	jmp	.L211	#
.L210:
	movq	%rax, %rdx	# tmp247, tmp249
	shrq	%rdx	# tmp249
	andl	$1, %eax	#, tmp250
	orq	%rax, %rdx	# tmp250, tmp249
	cvtsi2sdq	%rdx, %xmm0	# tmp249, tmp248
	addsd	%xmm0, %xmm0	# tmp248, D.18060
.L211:
	movsd	.LC2(%rip), %xmm1	#, tmp251
	xorpd	%xmm1, %xmm0	# tmp251, D.18060
	movq	-72(%rbp), %rax	# targ, tmp252
	movq	%rax, %rdi	# tmp252,
	call	Perl_sv_setnv	#
.LBB36:
	movq	-72(%rbp), %rax	# targ, tmp253
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L212	#,
	.loc 1 484 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp254
	movq	%rax, %rdi	# tmp254,
	call	Perl_mg_set	#
.L212:
	.loc 1 484 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp255
	movq	%rax, (%rbx)	# tmp255, *sp_173
.L207:
.LBE36:
.LBE35:
	.loc 1 487 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.212
	movq	(%rax), %rax	# PL_op.212_187->op_next, D.18050
	jmp	.L181	#
.L188:
.LBE29:
.LBE27:
.LBB37:
	.loc 1 493 0
	movq	%rbx, %rax	# sp, sp.213
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.213_189, PL_Sv.214
	movq	%rax, PL_Sv(%rip)	# PL_Sv.214, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.216
	movl	12(%rax), %eax	# PL_Sv.216_192->sv_flags, D.18055
	andl	$131072, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L213	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.217
	movq	(%rax), %rax	# PL_Sv.217_195->sv_any, D.18057
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_196].xnv_nv, iftmp.215
	jmp	.L214	#
.L213:
	.loc 1 493 0 discriminator 2
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.218
	movq	%rax, %rdi	# PL_Sv.218,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, iftmp.215
.L214:
	.loc 1 493 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.215, value
	.loc 1 494 0 is_stmt 1 discriminator 3
	cmpb	$0, -81(%rbp)	#, useleft
	jne	.L215	#,
.LBB38:
	.loc 1 496 0
	movq	-40(%rbp), %rax	# value, tmp256
	movq	-72(%rbp), %rdx	# targ, tmp257
	movq	%rax, -104(%rbp)	# tmp256, %sfp
	movsd	-104(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp257,
	call	Perl_sv_setnv	#
.LBB39:
	movq	-72(%rbp), %rax	# targ, tmp258
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L216	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp259
	movq	%rax, %rdi	# tmp259,
	call	Perl_mg_set	#
.L216:
	.loc 1 496 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp260
	movq	%rax, (%rbx)	# tmp260, *sp_190
.LBE39:
.LBE38:
	.loc 1 497 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.219
	movq	(%rax), %rax	# PL_op.219_204->op_next, D.18050
	jmp	.L181	#
.L215:
.LBB40:
	.loc 1 499 0
	movq	(%rbx), %rax	# *sp_190, D.18056
	movl	12(%rax), %eax	# _206->sv_flags, D.18055
	andl	$131072, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L217	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_190, D.18056
	movq	(%rax), %rax	# _209->sv_any, D.18057
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_210].xnv_nv, iftmp.220
	jmp	.L218	#
.L217:
	.loc 1 499 0 discriminator 2
	movq	(%rbx), %rax	# *sp_190, D.18056
	movq	%rax, %rdi	# D.18056,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, iftmp.220
.L218:
	.loc 1 499 0 discriminator 3
	movq	%rax, -104(%rbp)	# iftmp.220, %sfp
	movsd	-104(%rbp), %xmm0	# %sfp, D.18060
	addsd	-40(%rbp), %xmm0	# value, D.18060
	movq	-72(%rbp), %rax	# targ, tmp261
	movq	%rax, %rdi	# tmp261,
	call	Perl_sv_setnv	#
.LBB41:
	movq	-72(%rbp), %rax	# targ, tmp262
	movl	12(%rax), %eax	# targ_33->sv_flags, D.18055
	andl	$16384, %eax	#, D.18055
	testl	%eax, %eax	# D.18055
	je	.L219	#,
	.loc 1 499 0 discriminator 1
	movq	-72(%rbp), %rax	# targ, tmp263
	movq	%rax, %rdi	# tmp263,
	call	Perl_mg_set	#
.L219:
	.loc 1 499 0 discriminator 2
	movq	-72(%rbp), %rax	# targ, tmp264
	movq	%rax, (%rbx)	# tmp264, *sp_190
.LBE41:
.LBE40:
	.loc 1 500 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.221
	movq	(%rax), %rax	# PL_op.221_218->op_next, D.18050
.L181:
.LBE37:
	.loc 1 502 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_pp_add, .-Perl_pp_add
	.globl	Perl_pp_aelemfast
	.type	Perl_pp_aelemfast, @function
Perl_pp_aelemfast:
.LFB21:
	.loc 1 505 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 506 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 507 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.223
	movzbl	36(%rax), %eax	# PL_op.223_6->op_flags, D.18061
	.loc 1 508 0
	testb	%al, %al	# D.18062
	jns	.L221	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.224
	movq	PL_op(%rip), %rax	# PL_op, PL_op.225
	movq	24(%rax), %rax	# PL_op.225_10->op_targ, D.18063
	salq	$3, %rax	#, D.18063
	addq	%rdx, %rax	# PL_curpad.224, D.18064
	movq	(%rax), %rax	# *_13, iftmp.222
	jmp	.L222	#
.L221:
	.loc 1 508 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.226
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.226_15].op_sv, D.18065
	movq	(%rax), %rax	# MEM[(struct GV *)_16].sv_any, D.18066
	movq	56(%rax), %rax	# _17->xgv_gp, D.18067
	movq	32(%rax), %rax	# _18->gp_av, iftmp.222
.L222:
	.loc 1 507 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.222, av
	.loc 1 509 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.227
	movzbl	36(%rax), %eax	# PL_op.227_21->op_flags, D.18061
	movzbl	%al, %eax	# D.18061, D.18068
	andl	$32, %eax	#, tmp90
	movl	%eax, -44(%rbp)	# tmp90, lval
	.loc 1 510 0
	movl	-44(%rbp), %edx	# lval, lval.228
	movq	PL_op(%rip), %rax	# PL_op, PL_op.229
	movzbl	37(%rax), %eax	# PL_op.229_26->op_private, D.18061
	movzbl	%al, %ecx	# D.18061, D.18069
	movq	-32(%rbp), %rax	# av, tmp91
	movl	%ecx, %esi	# D.18069,
	movq	%rax, %rdi	# tmp91,
	call	Perl_av_fetch	#
	movq	%rax, -24(%rbp)	# tmp92, svp
	.loc 1 511 0
	cmpq	$0, -24(%rbp)	#, svp
	je	.L223	#,
	.loc 1 511 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# svp, tmp93
	movq	(%rax), %rax	# *svp_29, iftmp.230
	jmp	.L224	#
.L223:
	.loc 1 511 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.230
.L224:
	.loc 1 511 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.230, sv
	.loc 1 512 0 is_stmt 1 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.231
	movq	%rax, %rdx	# PL_stack_max.231, PL_stack_max.232
	movq	%rbx, %rax	# sp, sp.233
	subq	%rax, %rdx	# sp.233, D.18070
	movq	%rdx, %rax	# D.18070, D.18070
	cmpq	$7, %rax	#, D.18070
	jg	.L225	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L225:
	.loc 1 513 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, lval
	jne	.L226	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sv, tmp94
	movl	12(%rax), %eax	# sv_32->sv_flags, D.18068
	andl	$8192, %eax	#, D.18068
	testl	%eax, %eax	# D.18068
	je	.L226	#,
	.loc 1 514 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp95
	movq	%rax, %rdi	# tmp95,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -40(%rbp)	# tmp96, sv
.L226:
	.loc 1 515 0
	addq	$8, %rbx	#, sp
	movq	-40(%rbp), %rax	# sv, tmp97
	movq	%rax, (%rbx)	# tmp97, *sp_41
	.loc 1 516 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.234
	movq	(%rax), %rax	# PL_op.234_42->op_next, D.18071
	.loc 1 517 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_pp_aelemfast, .-Perl_pp_aelemfast
	.globl	Perl_pp_join
	.type	Perl_pp_join, @function
Perl_pp_join:
.LFB22:
	.loc 1 520 0
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
	.loc 1 521 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.235
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.236
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.238
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.238, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.237_4, D.18072
	cltq
	salq	$3, %rax	#, D.18073
	leaq	(%rcx,%rax), %r12	#, mark
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.239
	movq	PL_op(%rip), %rax	# PL_op, PL_op.240
	movq	24(%rax), %rax	# PL_op.240_11->op_targ, D.18073
	salq	$3, %rax	#, D.18073
	addq	%rdx, %rax	# PL_curpad.239, D.18074
	movq	(%rax), %rax	# *_14, tmp77
	movq	%rax, -24(%rbp)	# tmp77, targ
	.loc 1 522 0
	addq	$8, %r12	#, mark
	.loc 1 523 0
	movq	(%r12), %rsi	# *mark_16, D.18075
	movq	-24(%rbp), %rax	# targ, tmp78
	movq	%rbx, %rcx	# sp,
	movq	%r12, %rdx	# mark,
	movq	%rax, %rdi	# tmp78,
	call	Perl_do_join	#
	.loc 1 524 0
	movq	%r12, %rbx	# mark, sp
	.loc 1 525 0
	movq	-24(%rbp), %rax	# targ, tmp79
	movq	%rax, (%rbx)	# tmp79, *sp_18
	.loc 1 526 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.241
	movq	(%rax), %rax	# PL_op.241_19->op_next, D.18076
	.loc 1 527 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_pp_join, .-Perl_pp_join
	.globl	Perl_pp_pushre
	.type	Perl_pp_pushre, @function
Perl_pp_pushre:
.LFB23:
	.loc 1 530 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 531 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB42:
	.loc 1 543 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.242
	movq	%rax, %rdx	# PL_stack_max.242, PL_stack_max.243
	movq	%rbx, %rax	# sp, sp.244
	subq	%rax, %rdx	# sp.244, D.18077
	movq	%rdx, %rax	# D.18077, D.18077
	cmpq	$7, %rax	#, D.18077
	jg	.L231	#,
	.loc 1 543 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L231:
	.loc 1 543 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.245
	movq	%rax, (%rbx)	# PL_op.245, *sp_8
.LBE42:
	.loc 1 545 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.246
	movq	(%rax), %rax	# PL_op.246_11->op_next, D.18079
	.loc 1 546 0 discriminator 2
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_pp_pushre, .-Perl_pp_pushre
	.section	.rodata
.LC3:
	.string	"PRINT"
	.text
	.globl	Perl_pp_print
	.type	Perl_pp_print, @function
Perl_pp_print:
.LFB24:
	.loc 1 551 0
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
	.loc 1 552 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.247
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.248
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.250
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.250, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.249_24, D.18081
	cltq
	salq	$3, %rax	#, D.18082
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.251
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.252
	subq	%rax, %rdx	# PL_stack_base.253, D.18083
	movq	%rdx, %rax	# D.18083, D.18083
	sarq	$3, %rax	#, tmp289
	movl	%eax, -64(%rbp)	# D.18083, origmark
	.loc 1 558 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.254
	movzbl	36(%rax), %eax	# PL_op.254_36->op_flags, D.18084
	movzbl	%al, %eax	# D.18084, D.18081
	andl	$64, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	je	.L234	#,
	.loc 1 559 0
	addq	$8, %rbx	#, mark
	movq	(%rbx), %rax	# *mark_40, tmp290
	movq	%rax, -56(%rbp)	# tmp290, gv
	jmp	.L235	#
.L234:
	.loc 1 561 0
	movq	PL_defoutgv(%rip), %rax	# PL_defoutgv, tmp291
	movq	%rax, -56(%rbp)	# tmp291, gv
.L235:
	.loc 1 563 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L236	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, gv
	je	.L237	#,
	movq	-56(%rbp), %rax	# gv, tmp292
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_10].sv_flags, D.18085
	movzbl	%al, %eax	# D.18085, D.18085
	cmpl	$13, %eax	#, D.18085
	jne	.L237	#,
	movq	-56(%rbp), %rax	# gv, tmp293
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _45->xgv_gp, D.18087
	testq	%rax, %rax	# D.18087
	je	.L237	#,
	movq	-56(%rbp), %rax	# gv, tmp294
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _47->xgv_gp, D.18087
	movq	16(%rax), %rax	# _48->gp_io, iftmp.255
	jmp	.L238	#
.L237:
	.loc 1 563 0 discriminator 2
	movl	$0, %eax	#, iftmp.255
.L238:
	.loc 1 563 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.255, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L236	#,
	.loc 1 564 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp295
	movl	12(%rax), %eax	# MEM[(struct SV *)io_51].sv_flags, D.18085
	andl	$32768, %eax	#, D.18085
	testl	%eax, %eax	# D.18085
	je	.L239	#,
	.loc 1 564 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp296
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp296,
	call	Perl_mg_find	#
	jmp	.L240	#
.L239:
	.loc 1 564 0 discriminator 2
	movl	$0, %eax	#, iftmp.256
.L240:
	.loc 1 564 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.256, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L236	#,
.L241:
	.loc 1 567 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.257
	movl	-64(%rbp), %edx	# origmark, tmp297
	movslq	%edx, %rdx	# tmp297, D.18082
	salq	$3, %rdx	#, D.18082
	addq	%rdx, %rax	# D.18082, D.18097
	cmpq	%rbx, %rax	# mark, D.18097
	jne	.L242	#,
	.loc 1 571 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.258
	movq	%rax, %rdx	# PL_stack_max.258, PL_stack_max.259
	movq	%r12, %rax	# sp, sp.260
	subq	%rax, %rdx	# sp.260, D.18083
	movq	%rdx, %rax	# D.18083, D.18083
	cmpq	$7, %rax	#, D.18083
	jg	.L243	#,
.LBB43:
	.loc 1 571 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx	# mark, mark.261
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.262
	subq	%rax, %rdx	# PL_stack_base.263, D.18083
	movq	%rdx, %rax	# D.18083, D.18083
	sarq	$3, %rax	#, tmp298
	movl	%eax, -60(%rbp)	# D.18083, markoff
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.264
	movl	-60(%rbp), %edx	# markoff, tmp299
	movslq	%edx, %rdx	# tmp299, D.18082
	salq	$3, %rdx	#, D.18082
	leaq	(%rax,%rdx), %rbx	#, mark
.L243:
.LBE43:
	.loc 1 572 0 is_stmt 1
	addq	$8, %rbx	#, mark
	.loc 1 573 0
	movq	%r12, %rdx	# sp, sp.265
	movq	%rbx, %rax	# mark, mark.266
	subq	%rax, %rdx	# mark.266, D.18083
	movq	%rdx, %rax	# D.18083, D.18083
	sarq	$3, %rax	#, tmp300
	addq	$1, %rax	#, D.18083
	leaq	0(,%rax,8), %rdx	#, D.18082
	leaq	8(%rbx), %rax	#, D.18090
	movq	%rbx, %rsi	# mark,
	movq	%rax, %rdi	# D.18090,
	call	memmove	#
	.loc 1 574 0
	addq	$8, %r12	#, sp
.L242:
.LBB44:
	.loc 1 576 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.267
	addq	$4, %rax	#, PL_markstack_ptr.268
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.268, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.269
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.270
	cmpq	%rax, %rdx	# PL_markstack_max.270, PL_markstack_ptr.269
	jne	.L244	#,
	.loc 1 576 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L244:
	.loc 1 576 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.271
	leaq	-8(%rbx), %rdx	#, D.18097
	movq	%rdx, %rcx	# D.18097, D.18083
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.272
	subq	%rdx, %rcx	# PL_stack_base.273, D.18083
	movq	%rcx, %rdx	# D.18083, D.18083
	sarq	$3, %rdx	#, tmp301
	movl	%edx, (%rax)	# D.18081, *PL_markstack_ptr.271_260
.LBE44:
	.loc 1 577 0 is_stmt 1 discriminator 2
	movq	-40(%rbp), %rax	# mg, tmp302
	movq	24(%rax), %rax	# mg_13->mg_obj, D.18089
	testq	%rax, %rax	# D.18089
	je	.L245	#,
	.loc 1 577 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mg, tmp303
	movq	24(%rax), %rax	# mg_13->mg_obj, iftmp.274
	jmp	.L246	#
.L245:
	.loc 1 577 0 discriminator 2
	movq	-48(%rbp), %rax	# io, tmp304
	movq	%rax, %rdi	# tmp304,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18089,
	call	Perl_sv_2mortal	#
.L246:
	.loc 1 577 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.274, *mark_5
	.loc 1 578 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 579 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 580 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_call_method	#
	.loc 1 581 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 582 0 discriminator 3
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 583 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.275
	movl	-64(%rbp), %edx	# origmark, tmp305
	movslq	%edx, %rdx	# tmp305, D.18099
	addq	$1, %rdx	#, D.18099
	salq	$3, %rdx	#, D.18099
	leaq	(%rax,%rdx), %rbx	#, mark
	.loc 1 584 0 discriminator 3
	movq	(%r12), %rax	# *sp_273, D.18089
	movq	%rax, (%rbx)	# D.18089, *mark_278
	.loc 1 585 0 discriminator 3
	movq	%rbx, %r12	# mark, sp
	.loc 1 586 0 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.276
	movq	(%rax), %rax	# PL_op.276_281->op_next, D.18080
	jmp	.L247	#
.L236:
	.loc 1 588 0
	cmpq	$0, -56(%rbp)	#, gv
	je	.L248	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gv, tmp306
	movl	12(%rax), %eax	# MEM[(struct SV *)gv_10].sv_flags, D.18085
	movzbl	%al, %eax	# D.18085, D.18085
	cmpl	$13, %eax	#, D.18085
	jne	.L248	#,
	movq	-56(%rbp), %rax	# gv, tmp307
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _59->xgv_gp, D.18087
	testq	%rax, %rax	# D.18087
	je	.L248	#,
	movq	-56(%rbp), %rax	# gv, tmp308
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _61->xgv_gp, D.18087
	movq	16(%rax), %rax	# _62->gp_io, iftmp.277
	jmp	.L249	#
.L248:
	.loc 1 588 0 discriminator 2
	movl	$0, %eax	#, iftmp.277
.L249:
	.loc 1 588 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.277, io
	cmpq	$0, -48(%rbp)	#, io
	jne	.L250	#,
	.loc 1 589 0 is_stmt 1
	movq	-56(%rbp), %rax	# gv, tmp309
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _66->xgv_gp, D.18087
	movq	48(%rax), %rax	# _67->gp_egv, D.18088
	testq	%rax, %rax	# D.18088
	je	.L251	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gv, tmp310
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _69->xgv_gp, D.18087
	movq	48(%rax), %rax	# _70->gp_egv, D.18088
	testq	%rax, %rax	# D.18088
	je	.L252	#,
	movq	-56(%rbp), %rax	# gv, tmp311
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _72->xgv_gp, D.18087
	movq	48(%rax), %rax	# _73->gp_egv, D.18088
	movl	12(%rax), %eax	# MEM[(struct SV *)_74].sv_flags, D.18085
	movzbl	%al, %eax	# D.18085, D.18085
	cmpl	$13, %eax	#, D.18085
	jne	.L252	#,
	movq	-56(%rbp), %rax	# gv, tmp312
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _77->xgv_gp, D.18087
	movq	48(%rax), %rax	# _78->gp_egv, D.18088
	movq	(%rax), %rax	# _79->sv_any, D.18086
	movq	56(%rax), %rax	# _80->xgv_gp, D.18087
	testq	%rax, %rax	# D.18087
	je	.L252	#,
	movq	-56(%rbp), %rax	# gv, tmp313
	movq	(%rax), %rax	# gv_10->sv_any, D.18086
	movq	56(%rax), %rax	# _82->xgv_gp, D.18087
	movq	48(%rax), %rax	# _83->gp_egv, D.18088
	movq	(%rax), %rax	# _84->sv_any, D.18086
	movq	56(%rax), %rax	# _85->xgv_gp, D.18087
	movq	16(%rax), %rax	# _86->gp_io, iftmp.278
	jmp	.L253	#
.L252:
	.loc 1 589 0 discriminator 2
	movl	$0, %eax	#, iftmp.278
.L253:
	.loc 1 589 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.278, io
	cmpq	$0, -48(%rbp)	#, io
	je	.L251	#,
	.loc 1 590 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp314
	movl	12(%rax), %eax	# MEM[(struct SV *)io_89].sv_flags, D.18085
	andl	$32768, %eax	#, D.18085
	testl	%eax, %eax	# D.18085
	je	.L254	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# io, tmp315
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp315,
	call	Perl_mg_find	#
	jmp	.L255	#
.L254:
	.loc 1 590 0 discriminator 2
	movl	$0, %eax	#, iftmp.279
.L255:
	.loc 1 590 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.279, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L251	#,
	.loc 1 591 0 is_stmt 1
	jmp	.L241	#
.L251:
	.loc 1 592 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.280
	movq	80(%rax), %rax	# PL_curcop.280_95->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	je	.L256	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.281
	movq	80(%rax), %rax	# PL_curcop.281_97->cop_warnings, D.18089
	cmpq	$32, %rax	#, D.18089
	je	.L256	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.282
	movq	80(%rax), %rax	# PL_curcop.282_99->cop_warnings, D.18089
	cmpq	$16, %rax	#, D.18089
	je	.L257	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.283
	movq	80(%rax), %rax	# PL_curcop.283_101->cop_warnings, D.18089
	movq	(%rax), %rax	# _102->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_103].xpv_pv, D.18091
	addq	$2, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_105, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$64, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L257	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.284
	movq	80(%rax), %rax	# PL_curcop.284_109->cop_warnings, D.18089
	movq	(%rax), %rax	# _110->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_111].xpv_pv, D.18091
	addq	$1, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_113, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$16, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L257	#,
.L256:
	.loc 1 592 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.285
	movq	80(%rax), %rax	# PL_curcop.285_117->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	jne	.L258	#,
	.loc 1 592 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.286
	movzbl	%al, %eax	# PL_dowarn.286, D.18081
	andl	$1, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	je	.L258	#,
.L257:
	.loc 1 593 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.287
	movzwl	32(%rax), %eax	# PL_op.287_122->op_type, D.18093
	movzwl	%ax, %edx	# D.18093, D.18081
	movq	-48(%rbp), %rcx	# io, tmp316
	movq	-56(%rbp), %rax	# gv, tmp317
	movq	%rcx, %rsi	# tmp316,
	movq	%rax, %rdi	# tmp317,
	call	Perl_report_evil_fh	#
.L258:
	.loc 1 594 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_125
	.loc 1 595 0
	jmp	.L259	#
.L250:
	.loc 1 597 0
	movq	-48(%rbp), %rax	# io, tmp318
	movq	(%rax), %rax	# io_65->sv_any, D.18095
	movq	64(%rax), %r13	# _126->xio_ofp, fp
	testq	%r13, %r13	# fp
	jne	.L260	#,
	.loc 1 598 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.288
	movq	80(%rax), %rax	# PL_curcop.288_128->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	je	.L261	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.289
	movq	80(%rax), %rax	# PL_curcop.289_130->cop_warnings, D.18089
	cmpq	$32, %rax	#, D.18089
	je	.L261	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.290
	movq	80(%rax), %rax	# PL_curcop.290_132->cop_warnings, D.18089
	cmpq	$16, %rax	#, D.18089
	je	.L262	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.291
	movq	80(%rax), %rax	# PL_curcop.291_134->cop_warnings, D.18089
	movq	(%rax), %rax	# _135->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_136].xpv_pv, D.18091
	addq	$1, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_138, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$16, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L262	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.292
	movq	80(%rax), %rax	# PL_curcop.292_142->cop_warnings, D.18089
	movq	(%rax), %rax	# _143->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_144].xpv_pv, D.18091
	addq	$1, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_146, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$4, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L262	#,
.L261:
	.loc 1 598 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.293
	movq	80(%rax), %rax	# PL_curcop.293_150->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	jne	.L263	#,
	.loc 1 598 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.294
	movzbl	%al, %eax	# PL_dowarn.294, D.18081
	andl	$1, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	je	.L263	#,
.L262:
	.loc 1 599 0 is_stmt 1
	movq	-48(%rbp), %rax	# io, tmp319
	movq	(%rax), %rax	# io_65->sv_any, D.18095
	movq	56(%rax), %rax	# _155->xio_ifp, D.18096
	testq	%rax, %rax	# D.18096
	je	.L264	#,
	.loc 1 600 0
	movq	-48(%rbp), %rcx	# io, tmp320
	movq	-56(%rbp), %rax	# gv, tmp321
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# tmp320,
	movq	%rax, %rdi	# tmp321,
	call	Perl_report_evil_fh	#
	jmp	.L263	#
.L264:
	.loc 1 601 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.295
	movq	80(%rax), %rax	# PL_curcop.295_157->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	je	.L265	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.296
	movq	80(%rax), %rax	# PL_curcop.296_159->cop_warnings, D.18089
	cmpq	$32, %rax	#, D.18089
	je	.L265	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.297
	movq	80(%rax), %rax	# PL_curcop.297_161->cop_warnings, D.18089
	cmpq	$16, %rax	#, D.18089
	je	.L266	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.298
	movq	80(%rax), %rax	# PL_curcop.298_163->cop_warnings, D.18089
	movq	(%rax), %rax	# _164->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_165].xpv_pv, D.18091
	addq	$2, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_167, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$64, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L266	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.299
	movq	80(%rax), %rax	# PL_curcop.299_171->cop_warnings, D.18089
	movq	(%rax), %rax	# _172->sv_any, D.18090
	movq	(%rax), %rax	# MEM[(struct XPV *)_173].xpv_pv, D.18091
	addq	$1, %rax	#, D.18091
	movzbl	(%rax), %eax	# *_175, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$16, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	jne	.L266	#,
.L265:
	.loc 1 601 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.300
	movq	80(%rax), %rax	# PL_curcop.300_179->cop_warnings, D.18089
	testq	%rax, %rax	# D.18089
	jne	.L263	#,
	.loc 1 601 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.301
	movzbl	%al, %eax	# PL_dowarn.301, D.18081
	andl	$1, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	je	.L263	#,
.L266:
	.loc 1 602 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.302
	movzwl	32(%rax), %eax	# PL_op.302_184->op_type, D.18093
	movzwl	%ax, %edx	# D.18093, D.18081
	movq	-48(%rbp), %rcx	# io, tmp322
	movq	-56(%rbp), %rax	# gv, tmp323
	movq	%rcx, %rsi	# tmp322,
	movq	%rax, %rdi	# tmp323,
	call	Perl_report_evil_fh	#
.L263:
	.loc 1 604 0
	call	__errno_location	#
	movl	$9, (%rax)	#, *_187
	.loc 1 605 0
	jmp	.L259	#
.L260:
	.loc 1 608 0
	addq	$8, %rbx	#, mark
	.loc 1 609 0
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.303
	testq	%rax, %rax	# PL_ofs_sv.303
	je	.L267	#,
	.loc 1 609 0 is_stmt 0 discriminator 1
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.304
	movl	12(%rax), %eax	# PL_ofs_sv.304_190->sv_flags, D.18085
	andl	$118423552, %eax	#, D.18085
	testl	%eax, %eax	# D.18085
	je	.L267	#,
	.loc 1 610 0 is_stmt 1
	jmp	.L268	#
.L271:
	.loc 1 611 0
	movq	(%rbx), %rax	# *mark_6, D.18089
	movq	%r13, %rsi	# fp,
	movq	%rax, %rdi	# D.18089,
	call	Perl_do_print	#
	testb	%al, %al	# D.18092
	jne	.L269	#,
	.loc 1 612 0
	jmp	.L270	#
.L269:
	.loc 1 613 0
	addq	$8, %rbx	#, mark
	.loc 1 614 0
	cmpq	%r12, %rbx	# sp, mark
	ja	.L268	#,
	.loc 1 615 0
	movq	PL_ofs_sv(%rip), %rax	# PL_ofs_sv, PL_ofs_sv.305
	movq	%r13, %rsi	# fp,
	movq	%rax, %rdi	# PL_ofs_sv.305,
	call	Perl_do_print	#
	testb	%al, %al	# D.18092
	jne	.L268	#,
	.loc 1 616 0
	subq	$8, %rbx	#, mark
	.loc 1 617 0
	jmp	.L270	#
.L268:
	.loc 1 610 0 discriminator 1
	cmpq	%r12, %rbx	# sp, mark
	jbe	.L271	#,
.L270:
	.loc 1 609 0
	jmp	.L272	#
.L267:
	.loc 1 623 0
	jmp	.L273	#
.L275:
	.loc 1 624 0
	movq	(%rbx), %rax	# *mark_8, D.18089
	movq	%r13, %rsi	# fp,
	movq	%rax, %rdi	# D.18089,
	call	Perl_do_print	#
	testb	%al, %al	# D.18092
	jne	.L274	#,
	.loc 1 625 0
	jmp	.L272	#
.L274:
	.loc 1 626 0
	addq	$8, %rbx	#, mark
.L273:
	.loc 1 623 0 discriminator 1
	cmpq	%r12, %rbx	# sp, mark
	jbe	.L275	#,
.L272:
	.loc 1 629 0
	cmpq	%r12, %rbx	# sp, mark
	ja	.L276	#,
	.loc 1 630 0
	jmp	.L259	#
.L276:
	.loc 1 632 0
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.306
	testq	%rax, %rax	# PL_ors_sv.306
	je	.L277	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.307
	movl	12(%rax), %eax	# PL_ors_sv.307_203->sv_flags, D.18085
	andl	$118423552, %eax	#, D.18085
	testl	%eax, %eax	# D.18085
	je	.L277	#,
	.loc 1 633 0 is_stmt 1
	movq	PL_ors_sv(%rip), %rax	# PL_ors_sv, PL_ors_sv.308
	movq	%r13, %rsi	# fp,
	movq	%rax, %rdi	# PL_ors_sv.308,
	call	Perl_do_print	#
	testb	%al, %al	# D.18092
	jne	.L277	#,
	.loc 1 634 0
	jmp	.L259	#
.L277:
	.loc 1 636 0
	movq	-48(%rbp), %rax	# io, tmp324
	movq	(%rax), %rax	# io_65->sv_any, D.18095
	movzbl	163(%rax), %eax	# _208->xio_flags, D.18092
	movsbl	%al, %eax	# D.18092, D.18081
	andl	$4, %eax	#, D.18081
	testl	%eax, %eax	# D.18081
	je	.L278	#,
	.loc 1 637 0
	movq	%r13, %rdi	# fp,
	call	Perl_PerlIO_flush	#
	cmpl	$-1, %eax	#, D.18081
	jne	.L278	#,
	.loc 1 638 0
	jmp	.L259	#
.L278:
	.loc 1 641 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.309
	movl	-64(%rbp), %edx	# origmark, tmp325
	movslq	%edx, %rdx	# tmp325, D.18082
	salq	$3, %rdx	#, D.18082
	leaq	(%rax,%rdx), %r12	#, sp
	.loc 1 642 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_yes, (%r12)	#, *sp_217
	.loc 1 643 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.310
	movq	(%rax), %rax	# PL_op.310_218->op_next, D.18080
	jmp	.L247	#
.L259:
	.loc 1 646 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.311
	movl	-64(%rbp), %edx	# origmark, tmp326
	movslq	%edx, %rdx	# tmp326, D.18082
	salq	$3, %rdx	#, D.18082
	leaq	(%rax,%rdx), %r12	#, sp
	.loc 1 647 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_undef, (%r12)	#, *sp_224
	.loc 1 648 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.312
	movq	(%rax), %rax	# PL_op.312_225->op_next, D.18080
.L247:
	.loc 1 649 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_pp_print, .-Perl_pp_print
	.section	.rodata
	.align 8
.LC4:
	.string	"Overloaded dereference did not return a reference"
.LC5:
	.string	"Not an ARRAY reference"
	.align 8
.LC6:
	.string	"Can't return array to lvalue scalar context"
.LC7:
	.string	"an ARRAY"
	.text
	.globl	Perl_pp_rv2av
	.type	Perl_pp_rv2av, @function
Perl_pp_rv2av:
.LFB25:
	.loc 1 652 0
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
	.loc 1 653 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	(%rbx), %rax	# *sp_28, tmp309
	movq	%rax, -80(%rbp)	# tmp309, sv
	.loc 1 656 0
	movq	-80(%rbp), %rax	# sv, tmp310
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	andl	$524288, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L280	#,
.L281:
	.loc 1 658 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.313
	testq	%rax, %rax	# PL_amagic_generation.313
	je	.L282	#,
.LBB45:
	.loc 1 658 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_28, tmp311
	movq	%rax, -64(%rbp)	# tmp311, arg
.L283:
	.loc 1 658 0 discriminator 2
	movq	-64(%rbp), %rax	# arg, tmp312
	movl	12(%rax), %eax	# arg_10->sv_flags, D.18102
	andl	$268435456, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L282	#,
	.loc 1 658 0 discriminator 1
	movq	-64(%rbp), %rax	# arg, tmp313
	movl	$9, %ecx	#,
	movl	$59, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp313,
	call	Perl_amagic_call	#
	movq	%rax, -40(%rbp)	# tmp314, tmpsv
	cmpq	$0, -40(%rbp)	#, tmpsv
	je	.L282	#,
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB46:
	movq	-40(%rbp), %rax	# tmpsv, tmp315
	movq	%rax, -80(%rbp)	# tmp315, sv
	movq	-40(%rbp), %rax	# tmpsv, tmp316
	movl	12(%rax), %eax	# tmpsv_183->sv_flags, D.18102
	andl	$524288, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	jne	.L284	#,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L284:
	.loc 1 658 0 discriminator 2
	movq	-40(%rbp), %rax	# tmpsv, tmp317
	cmpq	-64(%rbp), %rax	# arg, tmp317
	je	.L282	#,
	.loc 1 658 0 discriminator 1
	movq	-40(%rbp), %rax	# tmpsv, tmp318
	movq	(%rax), %rax	# tmpsv_183->sv_any, D.18106
	movq	(%rax), %rdx	# MEM[(struct XRV *)_188].xrv_rv, D.18105
	movq	-64(%rbp), %rax	# arg, tmp319
	movq	(%rax), %rax	# arg_10->sv_any, D.18106
	movq	(%rax), %rax	# MEM[(struct XRV *)_190].xrv_rv, D.18105
	cmpq	%rax, %rdx	# D.18105, D.18105
	je	.L282	#,
	movq	-40(%rbp), %rax	# tmpsv, tmp320
	movq	%rax, -64(%rbp)	# tmp320, arg
	jmp	.L283	#
.L282:
.LBE46:
.LBE45:
	.loc 1 660 0 is_stmt 1
	movq	-80(%rbp), %rax	# sv, tmp321
	movq	(%rax), %rax	# sv_7->sv_any, D.18106
	movq	(%rax), %rax	# MEM[(struct XRV *)_193].xrv_rv, tmp322
	movq	%rax, -72(%rbp)	# tmp322, av
	.loc 1 661 0
	movq	-72(%rbp), %rax	# av, tmp323
	movl	12(%rax), %eax	# av_194->sv_flags, D.18102
	movzbl	%al, %eax	# D.18102, D.18102
	cmpl	$10, %eax	#, D.18102
	je	.L285	#,
	.loc 1 662 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L286	#
.L285:
	.loc 1 663 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.314
	movzbl	36(%rax), %eax	# PL_op.314_198->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$16, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L287	#,
	.loc 1 664 0
	movq	-72(%rbp), %rax	# av, tmp324
	movq	%rax, (%rbx)	# tmp324, *sp_2
	.loc 1 665 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.315
	movq	(%rax), %rax	# PL_op.315_202->op_next, D.18101
	jmp	.L286	#
.L287:
	.loc 1 667 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.316
	movzbl	37(%rax), %eax	# PL_op.316_204->op_private, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$8, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L288	#,
	.loc 1 667 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18104
	je	.L288	#,
	.loc 1 668 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.318
	movzbl	36(%rax), %eax	# PL_op.318_209->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L289	#,
	.loc 1 668 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.319
	movzbl	36(%rax), %eax	# PL_op.319_213->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	setne	%al	#, iftmp.317
	jmp	.L290	#
.L289:
	.loc 1 668 0 discriminator 2
	call	Perl_dowantarray	#
	testl	%eax, %eax	# D.18104
	sete	%al	#, iftmp.317
.L290:
	.loc 1 668 0 discriminator 3
	testb	%al, %al	# iftmp.317
	je	.L291	#,
	.loc 1 669 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L291:
	.loc 1 670 0
	movq	-72(%rbp), %rax	# av, tmp325
	movq	%rax, (%rbx)	# tmp325, *sp_2
	.loc 1 671 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.320
	movq	(%rax), %rax	# PL_op.320_220->op_next, D.18101
	jmp	.L286	#
.L288:
	.loc 1 673 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.321
	movzbl	36(%rax), %eax	# PL_op.321_222->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$32, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L293	#,
	.loc 1 674 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.322
	movzbl	37(%rax), %eax	# PL_op.322_226->op_private, D.18103
	testb	%al, %al	# D.18109
	jns	.L293	#,
	.loc 1 675 0
	movl	$PL_no_localize_ref, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L293	#
.L280:
	.loc 1 678 0
	movq	-80(%rbp), %rax	# sv, tmp326
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	movzbl	%al, %eax	# D.18102, D.18102
	cmpl	$10, %eax	#, D.18102
	jne	.L294	#,
	.loc 1 679 0
	movq	-80(%rbp), %rax	# sv, tmp327
	movq	%rax, -72(%rbp)	# tmp327, av
	.loc 1 680 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.323
	movzbl	36(%rax), %eax	# PL_op.323_35->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$16, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L295	#,
	.loc 1 681 0
	movq	-72(%rbp), %rax	# av, tmp328
	movq	%rax, (%rbx)	# tmp328, *sp_28
	.loc 1 682 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.324
	movq	(%rax), %rax	# PL_op.324_39->op_next, D.18101
	jmp	.L286	#
.L295:
	.loc 1 684 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.325
	movzbl	37(%rax), %eax	# PL_op.325_41->op_private, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$8, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L293	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18104
	je	.L293	#,
	.loc 1 685 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.327
	movzbl	36(%rax), %eax	# PL_op.327_46->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L296	#,
	.loc 1 685 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.328
	movzbl	36(%rax), %eax	# PL_op.328_50->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	setne	%al	#, iftmp.326
	jmp	.L297	#
.L296:
	.loc 1 685 0 discriminator 2
	call	Perl_dowantarray	#
	testl	%eax, %eax	# D.18104
	sete	%al	#, iftmp.326
.L297:
	.loc 1 685 0 discriminator 3
	testb	%al, %al	# iftmp.326
	je	.L298	#,
	.loc 1 686 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L298:
	.loc 1 688 0
	movq	-72(%rbp), %rax	# av, tmp329
	movq	%rax, (%rbx)	# tmp329, *sp_28
	.loc 1 689 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.329
	movq	(%rax), %rax	# PL_op.329_57->op_next, D.18101
	jmp	.L286	#
.L294:
.LBB47:
	.loc 1 695 0
	movq	-80(%rbp), %rax	# sv, tmp330
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	movzbl	%al, %eax	# D.18102, D.18102
	cmpl	$13, %eax	#, D.18102
	je	.L299	#,
.LBB48:
	.loc 1 699 0
	movq	-80(%rbp), %rax	# sv, tmp331
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	andl	$8192, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L300	#,
	.loc 1 700 0
	movq	-80(%rbp), %rax	# sv, tmp332
	movq	%rax, %rdi	# tmp332,
	call	Perl_mg_get	#
	.loc 1 701 0
	movq	-80(%rbp), %rax	# sv, tmp333
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	andl	$524288, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	jne	.L281	#,
.L300:
	.loc 1 704 0
	movq	-80(%rbp), %rax	# sv, tmp334
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	andl	$118423552, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	jne	.L301	#,
	.loc 1 705 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.330
	movzbl	36(%rax), %eax	# PL_op.330_67->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$16, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	jne	.L302	#,
	.loc 1 706 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.331
	movzbl	37(%rax), %eax	# PL_op.331_71->op_private, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$2, %eax	#, D.18104
	.loc 1 705 0 discriminator 1
	testl	%eax, %eax	# D.18104
	je	.L303	#,
.L302:
	.loc 1 707 0
	movl	$.LC7, %esi	#,
	movl	$PL_no_usym, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L286	#
.L303:
	.loc 1 708 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.332
	movq	80(%rax), %rax	# PL_curcop.332_75->cop_warnings, D.18105
	testq	%rax, %rax	# D.18105
	je	.L305	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.333
	movq	80(%rax), %rax	# PL_curcop.333_77->cop_warnings, D.18105
	cmpq	$32, %rax	#, D.18105
	je	.L305	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.334
	movq	80(%rax), %rax	# PL_curcop.334_79->cop_warnings, D.18105
	cmpq	$16, %rax	#, D.18105
	je	.L306	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.335
	movq	80(%rax), %rax	# PL_curcop.335_81->cop_warnings, D.18105
	movq	(%rax), %rax	# _82->sv_any, D.18106
	movq	(%rax), %rax	# MEM[(struct XPV *)_83].xpv_pv, D.18107
	addq	$10, %rax	#, D.18107
	movzbl	(%rax), %eax	# *_85, D.18108
	movsbl	%al, %eax	# D.18108, D.18104
	andl	$4, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	jne	.L306	#,
.L305:
	.loc 1 708 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.336
	movq	80(%rax), %rax	# PL_curcop.336_89->cop_warnings, D.18105
	testq	%rax, %rax	# D.18105
	jne	.L307	#,
	.loc 1 708 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.337
	movzbl	%al, %eax	# PL_dowarn.337, D.18104
	andl	$1, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L307	#,
.L306:
	.loc 1 709 0 is_stmt 1
	call	Perl_report_uninit	#
.L307:
	.loc 1 710 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.339
	movzbl	36(%rax), %eax	# PL_op.339_94->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L308	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.340
	movzbl	36(%rax), %eax	# PL_op.340_98->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	sete	%al	#, iftmp.338
	jmp	.L309	#
.L308:
	.loc 1 710 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.18104
	sete	%al	#, iftmp.338
.L309:
	.loc 1 710 0 discriminator 3
	testb	%al, %al	# iftmp.338
	je	.L310	#,
	.loc 1 711 0 is_stmt 1
	movq	%rbx, %rax	# sp, sp.341
	leaq	-8(%rax), %rbx	#, sp
	.loc 1 712 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.342
	movq	(%rax), %rax	# PL_op.342_107->op_next, D.18101
	jmp	.L286	#
.L310:
	.loc 1 714 0
	movq	$PL_sv_undef, (%rbx)	#, *sp_28
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.343
	movq	(%rax), %rax	# PL_op.343_109->op_next, D.18101
	jmp	.L286	#
.L301:
	.loc 1 716 0
	movq	-80(%rbp), %rax	# sv, tmp335
	movl	12(%rax), %eax	# sv_29->sv_flags, D.18102
	andl	$262144, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L311	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp336
	movq	(%rax), %rax	# sv_29->sv_any, D.18106
	movq	8(%rax), %rax	# MEM[(struct XPV *)_114].xpv_cur, len.345
	movq	%rax, -88(%rbp)	# len.345, len
	movq	-80(%rbp), %rax	# sv, tmp337
	movq	(%rax), %rax	# sv_29->sv_any, D.18106
	movq	(%rax), %rax	# MEM[(struct XPV *)_116].xpv_pv, iftmp.344
	jmp	.L312	#
.L311:
	.loc 1 716 0 discriminator 2
	leaq	-88(%rbp), %rcx	#, tmp338
	movq	-80(%rbp), %rax	# sv, tmp339
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp338,
	movq	%rax, %rdi	# tmp339,
	call	Perl_sv_2pv_flags	#
.L312:
	.loc 1 716 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.344, sym
	.loc 1 717 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.346
	movzbl	36(%rax), %eax	# PL_op.346_120->op_flags, D.18103
	testb	%al, %al	# D.18109
	jns	.L313	#,
	.loc 1 718 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.347
	movzbl	36(%rax), %eax	# PL_op.347_123->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$32, %eax	#, D.18104
	.loc 1 717 0 discriminator 1
	testl	%eax, %eax	# D.18104
	jne	.L313	#,
	.loc 1 720 0
	movq	-48(%rbp), %rax	# sym, tmp340
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp340,
	call	Perl_gv_fetchpv	#
	movq	%rax, -56(%rbp)	# tmp341, gv
	.loc 1 721 0
	cmpq	$0, -56(%rbp)	#, gv
	jne	.L314	#,
	.loc 1 722 0
	movq	-88(%rbp), %rcx	# len, len.348
	movq	-48(%rbp), %rax	# sym, tmp342
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# len.348,
	movq	%rax, %rdi	# tmp342,
	call	Perl_is_gv_magical	#
	testb	%al, %al	# D.18108
	je	.L315	#,
	.loc 1 723 0
	movq	-48(%rbp), %rax	# sym, tmp343
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp343,
	call	Perl_gv_fetchpv	#
	movq	%rax, -56(%rbp)	# tmp344, gv
	cmpq	$0, -56(%rbp)	#, gv
	jne	.L314	#,
.L315:
	.loc 1 725 0
	movq	$PL_sv_undef, (%rbx)	#, *sp_28
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.349
	movq	(%rax), %rax	# PL_op.349_131->op_next, D.18101
	jmp	.L286	#
.L314:
	.loc 1 721 0 discriminator 1
	nop
	jmp	.L318	#
.L313:
	.loc 1 729 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.350
	movzbl	37(%rax), %eax	# PL_op.350_133->op_private, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$2, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L317	#,
	.loc 1 730 0
	movq	-48(%rbp), %rax	# sym, tmp345
	movl	$.LC7, %edx	#,
	movq	%rax, %rsi	# tmp345,
	movl	$PL_no_symref, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L286	#
.L317:
	.loc 1 731 0
	movq	-48(%rbp), %rax	# sym, tmp346
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp346,
	call	Perl_gv_fetchpv	#
	movq	%rax, -56(%rbp)	# tmp347, gv
.LBE48:
	jmp	.L318	#
.L299:
	.loc 1 735 0
	movq	-80(%rbp), %rax	# sv, tmp348
	movq	%rax, -56(%rbp)	# tmp348, gv
.L318:
	.loc 1 737 0
	movq	-56(%rbp), %rax	# gv, tmp349
	movq	(%rax), %rax	# gv_13->sv_any, D.18110
	movq	56(%rax), %rax	# _140->xgv_gp, D.18111
	movq	32(%rax), %rax	# _141->gp_av, D.18112
	testq	%rax, %rax	# D.18112
	je	.L319	#,
	.loc 1 737 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# gv, tmp350
	movq	(%rax), %rax	# gv_13->sv_any, D.18110
	movq	56(%rax), %rax	# _143->xgv_gp, D.18111
	movq	32(%rax), %rax	# _144->gp_av, iftmp.351
	jmp	.L320	#
.L319:
	.loc 1 737 0 discriminator 2
	movq	-56(%rbp), %rax	# gv, tmp351
	movq	%rax, %rdi	# tmp351,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _146->sv_any, D.18110
	movq	56(%rax), %rax	# _147->xgv_gp, D.18111
	movq	32(%rax), %rax	# _148->gp_av, iftmp.351
.L320:
	.loc 1 737 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.351, av
	.loc 1 738 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.352
	movzbl	37(%rax), %eax	# PL_op.352_151->op_private, D.18103
	testb	%al, %al	# D.18109
	jns	.L321	#,
	.loc 1 739 0
	movq	-56(%rbp), %rax	# gv, tmp352
	movq	%rax, %rdi	# tmp352,
	call	Perl_save_ary	#
	movq	%rax, -72(%rbp)	# tmp353, av
.L321:
	.loc 1 740 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.353
	movzbl	36(%rax), %eax	# PL_op.353_155->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$16, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L322	#,
	.loc 1 741 0
	movq	-72(%rbp), %rax	# av, tmp354
	movq	%rax, (%rbx)	# tmp354, *sp_28
	.loc 1 742 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.354
	movq	(%rax), %rax	# PL_op.354_159->op_next, D.18101
	jmp	.L286	#
.L322:
	.loc 1 744 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.355
	movzbl	37(%rax), %eax	# PL_op.355_161->op_private, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$8, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L293	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18104
	je	.L293	#,
	.loc 1 745 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.357
	movzbl	36(%rax), %eax	# PL_op.357_166->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L323	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.358
	movzbl	36(%rax), %eax	# PL_op.358_170->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	setne	%al	#, iftmp.356
	jmp	.L324	#
.L323:
	.loc 1 745 0 discriminator 2
	call	Perl_dowantarray	#
	testl	%eax, %eax	# D.18104
	sete	%al	#, iftmp.356
.L324:
	.loc 1 745 0 discriminator 3
	testb	%al, %al	# iftmp.356
	je	.L325	#,
	.loc 1 746 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L325:
	.loc 1 748 0
	movq	-72(%rbp), %rax	# av, tmp355
	movq	%rax, (%rbx)	# tmp355, *sp_28
	.loc 1 749 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.359
	movq	(%rax), %rax	# PL_op.359_177->op_next, D.18101
	jmp	.L286	#
.L293:
.LBE47:
	.loc 1 754 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.361
	movzbl	36(%rax), %eax	# PL_op.361_229->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	testl	%eax, %eax	# D.18104
	je	.L326	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.362
	movzbl	36(%rax), %eax	# PL_op.362_233->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	sete	%al	#, iftmp.360
	jmp	.L327	#
.L326:
	.loc 1 754 0 discriminator 2
	call	Perl_dowantarray	#
	cmpl	$1, %eax	#, D.18104
	sete	%al	#, iftmp.360
.L327:
	.loc 1 754 0 discriminator 3
	testb	%al, %al	# iftmp.360
	je	.L328	#,
.LBB49:
	.loc 1 755 0 is_stmt 1
	movq	-72(%rbp), %rax	# av, tmp356
	movl	12(%rax), %eax	# MEM[(struct SV *)av_9].sv_flags, D.18102
	andl	$32768, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L329	#,
	.loc 1 755 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp357
	movq	%rax, %rdi	# tmp357,
	call	Perl_mg_size	#
	addl	$1, %eax	#, D.18114
	jmp	.L330	#
.L329:
	.loc 1 755 0 discriminator 2
	movq	-72(%rbp), %rax	# av, tmp358
	movq	(%rax), %rax	# av_9->sv_any, D.18115
	movq	8(%rax), %rax	# _246->xav_fill, D.18116
	addl	$1, %eax	#, D.18114
.L330:
	.loc 1 755 0 discriminator 3
	movl	%eax, -96(%rbp)	# iftmp.363, maxarg
	.loc 1 756 0 is_stmt 1 discriminator 3
	movq	%rbx, %rax	# sp, sp.364
	leaq	-8(%rax), %rbx	#, sp
	.loc 1 757 0 discriminator 3
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.365
	movq	%rax, %rdx	# PL_stack_max.365, PL_stack_max.366
	movq	%rbx, %rax	# sp, sp.367
	subq	%rax, %rdx	# sp.367, D.18116
	movq	%rdx, %rax	# D.18116, D.18116
	sarq	$3, %rax	#, tmp359
	movq	%rax, %rdx	# tmp359, D.18116
	movl	-96(%rbp), %eax	# maxarg, tmp360
	cltq
	cmpq	%rax, %rdx	# D.18116, D.18116
	jge	.L331	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# maxarg, tmp361
	movl	%eax, %edx	# tmp361,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L331:
	.loc 1 758 0 is_stmt 1
	movq	-72(%rbp), %rax	# av, tmp362
	movl	12(%rax), %eax	# av_9->sv_flags, D.18102
	andl	$32768, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L332	#,
.LBB50:
	.loc 1 760 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L333	#
.L338:
.LBB51:
	.loc 1 761 0
	movl	-100(%rbp), %ecx	# i, i.368
	movq	-72(%rbp), %rax	# av, tmp363
	movl	$0, %edx	#,
	movl	%ecx, %esi	# i.368,
	movq	%rax, %rdi	# tmp363,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp364, svp
	.loc 1 763 0
	movl	-100(%rbp), %eax	# i, tmp365
	addl	$1, %eax	#, D.18102
	movl	%eax, %eax	# D.18102, D.18117
	salq	$3, %rax	#, D.18117
	leaq	(%rbx,%rax), %r12	#, D.18118
	.loc 1 765 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L334	#,
	.loc 1 764 0
	movq	-32(%rbp), %rax	# svp, tmp366
	movq	(%rax), %rax	# *svp_266, D.18105
	movl	12(%rax), %eax	# _271->sv_flags, D.18102
	andl	$8192, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L335	#,
	.loc 1 764 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# svp, tmp367
	movq	(%rax), %rax	# *svp_266, D.18105
	movq	%rax, %rdi	# D.18105,
	call	Perl_sv_mortalcopy	#
	jmp	.L337	#
.L335:
	.loc 1 764 0 discriminator 2
	movq	-32(%rbp), %rax	# svp, tmp368
	movq	(%rax), %rax	# *svp_266, iftmp.370
	jmp	.L337	#
.L334:
	.loc 1 765 0 is_stmt 1 discriminator 1
	movl	$PL_sv_undef, %eax	#, iftmp.369
.L337:
	.loc 1 763 0
	movq	%rax, (%r12)	# iftmp.369, *_270
.LBE51:
	.loc 1 760 0
	addl	$1, -100(%rbp)	#, i
.L333:
	.loc 1 760 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# maxarg, maxarg.371
	cmpl	-100(%rbp), %eax	# i, maxarg.371
	ja	.L338	#,
.LBE50:
	jmp	.L339	#
.L332:
	.loc 1 769 0 is_stmt 1
	movl	-96(%rbp), %eax	# maxarg, tmp369
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18117
	movq	-72(%rbp), %rax	# av, tmp370
	movq	(%rax), %rax	# av_9->sv_any, D.18115
	movq	(%rax), %rcx	# _282->xav_array, D.18107
	leaq	8(%rbx), %rax	#, D.18107
	movq	%rcx, %rsi	# D.18107,
	movq	%rax, %rdi	# D.18107,
	call	memcpy	#
.L339:
	.loc 1 771 0 discriminator 1
	movl	-96(%rbp), %eax	# maxarg, tmp371
	cltq
	salq	$3, %rax	#, D.18117
	addq	%rax, %rbx	# D.18117, sp
.LBE49:
	jmp	.L340	#
.L328:
	.loc 1 773 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.372
	movzbl	36(%rax), %eax	# PL_op.372_288->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$1, %eax	#, D.18104
	je	.L340	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.373
	movzbl	36(%rax), %eax	# PL_op.373_292->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$2, %eax	#, D.18104
	je	.L341	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.374
	movzbl	36(%rax), %eax	# PL_op.374_296->op_flags, D.18103
	movzbl	%al, %eax	# D.18103, D.18104
	andl	$3, %eax	#, D.18104
	cmpl	$3, %eax	#, D.18104
	je	.L340	#,
	.loc 1 773 0 discriminator 2
	call	Perl_block_gimme	#
	testl	%eax, %eax	# D.18104
	jne	.L340	#,
.L341:
.LBB52:
	.loc 1 774 0 is_stmt 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.375
	movq	PL_op(%rip), %rax	# PL_op, PL_op.376
	movq	24(%rax), %rax	# PL_op.376_302->op_targ, D.18117
	salq	$3, %rax	#, D.18117
	addq	%rdx, %rax	# PL_curpad.375, D.18118
	movq	(%rax), %rax	# *_305, tmp372
	movq	%rax, -24(%rbp)	# tmp372, targ
	.loc 1 775 0
	movq	-72(%rbp), %rax	# av, tmp373
	movl	12(%rax), %eax	# MEM[(struct SV *)av_9].sv_flags, D.18102
	andl	$32768, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L342	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp374
	movq	%rax, %rdi	# tmp374,
	call	Perl_mg_size	#
	addl	$1, %eax	#, D.18114
	jmp	.L343	#
.L342:
	.loc 1 775 0 discriminator 2
	movq	-72(%rbp), %rax	# av, tmp375
	movq	(%rax), %rax	# av_9->sv_any, D.18115
	movq	8(%rax), %rax	# _313->xav_fill, D.18116
	addl	$1, %eax	#, D.18114
.L343:
	.loc 1 775 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.377, maxarg
.LBB53:
	.loc 1 776 0 is_stmt 1 discriminator 3
	movl	-92(%rbp), %eax	# maxarg, tmp376
	movslq	%eax, %rdx	# tmp376, D.18116
	movq	-24(%rbp), %rax	# targ, tmp377
	movq	%rdx, %rsi	# D.18116,
	movq	%rax, %rdi	# tmp377,
	call	Perl_sv_setiv	#
.LBB54:
	movq	-24(%rbp), %rax	# targ, tmp378
	movl	12(%rax), %eax	# targ_306->sv_flags, D.18102
	andl	$16384, %eax	#, D.18102
	testl	%eax, %eax	# D.18102
	je	.L344	#,
	.loc 1 776 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp379
	movq	%rax, %rdi	# tmp379,
	call	Perl_mg_set	#
.L344:
	.loc 1 776 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp380
	movq	%rax, (%rbx)	# tmp380, *sp_3
.L340:
.LBE54:
.LBE53:
.LBE52:
	.loc 1 778 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.378
	movq	(%rax), %rax	# PL_op.378_323->op_next, D.18101
.L286:
	.loc 1 779 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_pp_rv2av, .-Perl_pp_rv2av
	.section	.rodata
.LC8:
	.string	"Not a HASH reference"
	.align 8
.LC9:
	.string	"Can't return hash to lvalue scalar context"
.LC10:
	.string	"a HASH"
	.text
	.globl	Perl_pp_rv2hv
	.type	Perl_pp_rv2hv, @function
Perl_pp_rv2hv:
.LFB26:
	.loc 1 782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 783 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	(%rbx), %rax	# *sp_20, tmp218
	movq	%rax, -72(%rbp)	# tmp218, sv
	.loc 1 785 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.380
	movzbl	36(%rax), %eax	# PL_op.380_22->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$3, %eax	#, D.18125
	cmpl	$1, %eax	#, D.18125
	je	.L346	#,
	.loc 1 785 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.382
	movzbl	36(%rax), %eax	# PL_op.382_26->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$3, %eax	#, D.18125
	cmpl	$2, %eax	#, D.18125
	je	.L347	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.384
	movzbl	36(%rax), %eax	# PL_op.384_30->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$3, %eax	#, D.18125
	cmpl	$3, %eax	#, D.18125
	je	.L348	#,
	call	Perl_block_gimme	#
	jmp	.L351	#
.L348:
	.loc 1 785 0 discriminator 2
	movl	$1, %eax	#, iftmp.383
	jmp	.L351	#
.L347:
	movl	$0, %eax	#, iftmp.381
	jmp	.L351	#
.L346:
	movl	$128, %eax	#, iftmp.379
.L351:
	.loc 1 785 0 discriminator 3
	movl	%eax, -84(%rbp)	# iftmp.379, gimme
	.loc 1 787 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# sv, tmp219
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	andl	$524288, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	je	.L352	#,
.L353:
	.loc 1 789 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.385
	testq	%rax, %rax	# PL_amagic_generation.385
	je	.L354	#,
.LBB55:
	.loc 1 789 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# *sp_20, tmp220
	movq	%rax, -56(%rbp)	# tmp220, arg
.L355:
	.loc 1 789 0 discriminator 2
	movq	-56(%rbp), %rax	# arg, tmp221
	movl	12(%rax), %eax	# arg_9->sv_flags, D.18126
	andl	$268435456, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	je	.L354	#,
	.loc 1 789 0 discriminator 1
	movq	-56(%rbp), %rax	# arg, tmp222
	movl	$9, %ecx	#,
	movl	$60, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	Perl_amagic_call	#
	movq	%rax, -32(%rbp)	# tmp223, tmpsv
	cmpq	$0, -32(%rbp)	#, tmpsv
	je	.L354	#,
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB56:
	movq	-32(%rbp), %rax	# tmpsv, tmp224
	movq	%rax, -72(%rbp)	# tmp224, sv
	movq	-32(%rbp), %rax	# tmpsv, tmp225
	movl	12(%rax), %eax	# tmpsv_162->sv_flags, D.18126
	andl	$524288, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	jne	.L356	#,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L356:
	.loc 1 789 0 discriminator 2
	movq	-32(%rbp), %rax	# tmpsv, tmp226
	cmpq	-56(%rbp), %rax	# arg, tmp226
	je	.L354	#,
	.loc 1 789 0 discriminator 1
	movq	-32(%rbp), %rax	# tmpsv, tmp227
	movq	(%rax), %rax	# tmpsv_162->sv_any, D.18128
	movq	(%rax), %rdx	# MEM[(struct XRV *)_167].xrv_rv, D.18127
	movq	-56(%rbp), %rax	# arg, tmp228
	movq	(%rax), %rax	# arg_9->sv_any, D.18128
	movq	(%rax), %rax	# MEM[(struct XRV *)_169].xrv_rv, D.18127
	cmpq	%rax, %rdx	# D.18127, D.18127
	je	.L354	#,
	movq	-32(%rbp), %rax	# tmpsv, tmp229
	movq	%rax, -56(%rbp)	# tmp229, arg
	jmp	.L355	#
.L354:
.LBE56:
.LBE55:
	.loc 1 791 0 is_stmt 1
	movq	-72(%rbp), %rax	# sv, tmp230
	movq	(%rax), %rax	# sv_5->sv_any, D.18128
	movq	(%rax), %rax	# MEM[(struct XRV *)_172].xrv_rv, tmp231
	movq	%rax, -64(%rbp)	# tmp231, hv
	.loc 1 792 0
	movq	-64(%rbp), %rax	# hv, tmp232
	movl	12(%rax), %eax	# hv_173->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$11, %eax	#, D.18126
	je	.L357	#,
	.loc 1 792 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# hv, tmp233
	movl	12(%rax), %eax	# hv_173->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$10, %eax	#, D.18126
	je	.L357	#,
	.loc 1 793 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L358	#
.L357:
	.loc 1 794 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.386
	movzbl	36(%rax), %eax	# PL_op.386_179->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$16, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L359	#,
	.loc 1 795 0
	movq	-64(%rbp), %rax	# hv, tmp234
	movq	%rax, (%rbx)	# tmp234, *sp_2
	.loc 1 796 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.387
	movq	(%rax), %rax	# PL_op.387_183->op_next, D.18123
	jmp	.L358	#
.L359:
	.loc 1 798 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.388
	movzbl	37(%rax), %eax	# PL_op.388_185->op_private, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$8, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L360	#,
	.loc 1 798 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18125
	je	.L360	#,
	.loc 1 799 0 is_stmt 1
	cmpl	$1, -84(%rbp)	#, gimme
	je	.L361	#,
	.loc 1 800 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L361:
	.loc 1 801 0
	movq	-64(%rbp), %rax	# hv, tmp235
	movq	%rax, (%rbx)	# tmp235, *sp_2
	.loc 1 802 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.389
	movq	(%rax), %rax	# PL_op.389_190->op_next, D.18123
	jmp	.L358	#
.L360:
	.loc 1 804 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.390
	movzbl	36(%rax), %eax	# PL_op.390_192->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$32, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L363	#,
	.loc 1 805 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.391
	movzbl	37(%rax), %eax	# PL_op.391_196->op_private, D.18124
	testb	%al, %al	# D.18131
	jns	.L363	#,
	.loc 1 806 0
	movl	$PL_no_localize_ref, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L363	#
.L352:
	.loc 1 809 0
	movq	-72(%rbp), %rax	# sv, tmp236
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$11, %eax	#, D.18126
	je	.L364	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp237
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$10, %eax	#, D.18126
	jne	.L365	#,
.L364:
	.loc 1 810 0 is_stmt 1
	movq	-72(%rbp), %rax	# sv, tmp238
	movq	%rax, -64(%rbp)	# tmp238, hv
	.loc 1 811 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.392
	movzbl	36(%rax), %eax	# PL_op.392_145->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$16, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L366	#,
	.loc 1 812 0
	movq	-64(%rbp), %rax	# hv, tmp239
	movq	%rax, (%rbx)	# tmp239, *sp_20
	.loc 1 813 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.393
	movq	(%rax), %rax	# PL_op.393_149->op_next, D.18123
	jmp	.L358	#
.L366:
	.loc 1 815 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.394
	movzbl	37(%rax), %eax	# PL_op.394_151->op_private, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$8, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L367	#,
	.loc 1 815 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18125
	je	.L367	#,
	.loc 1 816 0 is_stmt 1
	cmpl	$1, -84(%rbp)	#, gimme
	je	.L368	#,
	.loc 1 817 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L368:
	.loc 1 819 0
	movq	-64(%rbp), %rax	# hv, tmp240
	movq	%rax, (%rbx)	# tmp240, *sp_20
	.loc 1 820 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.395
	movq	(%rax), %rax	# PL_op.395_156->op_next, D.18123
	jmp	.L358	#
.L367:
	.loc 1 811 0
	jmp	.L363	#
.L365:
.LBB57:
	.loc 1 826 0
	movq	-72(%rbp), %rax	# sv, tmp241
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$13, %eax	#, D.18126
	je	.L369	#,
.LBB58:
	.loc 1 830 0
	movq	-72(%rbp), %rax	# sv, tmp242
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	andl	$8192, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	je	.L370	#,
	.loc 1 831 0
	movq	-72(%rbp), %rax	# sv, tmp243
	movq	%rax, %rdi	# tmp243,
	call	Perl_mg_get	#
	.loc 1 832 0
	movq	-72(%rbp), %rax	# sv, tmp244
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	andl	$524288, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	jne	.L353	#,
.L370:
	.loc 1 835 0
	movq	-72(%rbp), %rax	# sv, tmp245
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	andl	$118423552, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	jne	.L371	#,
	.loc 1 836 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.396
	movzbl	36(%rax), %eax	# PL_op.396_55->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$16, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	jne	.L372	#,
	.loc 1 837 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.397
	movzbl	37(%rax), %eax	# PL_op.397_59->op_private, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$2, %eax	#, D.18125
	.loc 1 836 0 discriminator 1
	testl	%eax, %eax	# D.18125
	je	.L373	#,
.L372:
	.loc 1 838 0
	movl	$.LC10, %esi	#,
	movl	$PL_no_usym, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L358	#
.L373:
	.loc 1 839 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.398
	movq	80(%rax), %rax	# PL_curcop.398_63->cop_warnings, D.18127
	testq	%rax, %rax	# D.18127
	je	.L375	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.399
	movq	80(%rax), %rax	# PL_curcop.399_65->cop_warnings, D.18127
	cmpq	$32, %rax	#, D.18127
	je	.L375	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.400
	movq	80(%rax), %rax	# PL_curcop.400_67->cop_warnings, D.18127
	cmpq	$16, %rax	#, D.18127
	je	.L376	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.401
	movq	80(%rax), %rax	# PL_curcop.401_69->cop_warnings, D.18127
	movq	(%rax), %rax	# _70->sv_any, D.18128
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, D.18129
	addq	$10, %rax	#, D.18129
	movzbl	(%rax), %eax	# *_73, D.18130
	movsbl	%al, %eax	# D.18130, D.18125
	andl	$4, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	jne	.L376	#,
.L375:
	.loc 1 839 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.402
	movq	80(%rax), %rax	# PL_curcop.402_77->cop_warnings, D.18127
	testq	%rax, %rax	# D.18127
	jne	.L377	#,
	.loc 1 839 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.403
	movzbl	%al, %eax	# PL_dowarn.403, D.18125
	andl	$1, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L377	#,
.L376:
	.loc 1 840 0 is_stmt 1
	call	Perl_report_uninit	#
.L377:
	.loc 1 841 0
	cmpl	$1, -84(%rbp)	#, gimme
	jne	.L378	#,
	.loc 1 842 0
	subq	$8, %rbx	#, sp
	.loc 1 843 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.404
	movq	(%rax), %rax	# PL_op.404_83->op_next, D.18123
	jmp	.L358	#
.L378:
	.loc 1 845 0
	movq	$PL_sv_undef, (%rbx)	#, *sp_20
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.405
	movq	(%rax), %rax	# PL_op.405_85->op_next, D.18123
	jmp	.L358	#
.L371:
	.loc 1 847 0
	movq	-72(%rbp), %rax	# sv, tmp246
	movl	12(%rax), %eax	# sv_21->sv_flags, D.18126
	andl	$262144, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	je	.L379	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# sv, tmp247
	movq	(%rax), %rax	# sv_21->sv_any, D.18128
	movq	8(%rax), %rax	# MEM[(struct XPV *)_90].xpv_cur, len.407
	movq	%rax, -80(%rbp)	# len.407, len
	movq	-72(%rbp), %rax	# sv, tmp248
	movq	(%rax), %rax	# sv_21->sv_any, D.18128
	movq	(%rax), %rax	# MEM[(struct XPV *)_92].xpv_pv, iftmp.406
	jmp	.L380	#
.L379:
	.loc 1 847 0 discriminator 2
	leaq	-80(%rbp), %rcx	#, tmp249
	movq	-72(%rbp), %rax	# sv, tmp250
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp249,
	movq	%rax, %rdi	# tmp250,
	call	Perl_sv_2pv_flags	#
.L380:
	.loc 1 847 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.406, sym
	.loc 1 848 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.408
	movzbl	36(%rax), %eax	# PL_op.408_96->op_flags, D.18124
	testb	%al, %al	# D.18131
	jns	.L381	#,
	.loc 1 849 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.409
	movzbl	36(%rax), %eax	# PL_op.409_99->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$32, %eax	#, D.18125
	.loc 1 848 0 discriminator 1
	testl	%eax, %eax	# D.18125
	jne	.L381	#,
	.loc 1 851 0
	movq	-40(%rbp), %rax	# sym, tmp251
	movl	$11, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp251,
	call	Perl_gv_fetchpv	#
	movq	%rax, -48(%rbp)	# tmp252, gv
	.loc 1 852 0
	cmpq	$0, -48(%rbp)	#, gv
	jne	.L382	#,
	.loc 1 853 0
	movq	-80(%rbp), %rcx	# len, len.410
	movq	-40(%rbp), %rax	# sym, tmp253
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# len.410,
	movq	%rax, %rdi	# tmp253,
	call	Perl_is_gv_magical	#
	testb	%al, %al	# D.18130
	je	.L383	#,
	.loc 1 854 0
	movq	-40(%rbp), %rax	# sym, tmp254
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	Perl_gv_fetchpv	#
	movq	%rax, -48(%rbp)	# tmp255, gv
	cmpq	$0, -48(%rbp)	#, gv
	jne	.L382	#,
.L383:
	.loc 1 856 0
	movq	$PL_sv_undef, (%rbx)	#, *sp_20
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.411
	movq	(%rax), %rax	# PL_op.411_107->op_next, D.18123
	jmp	.L358	#
.L382:
	.loc 1 852 0 discriminator 1
	nop
	jmp	.L386	#
.L381:
	.loc 1 860 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.412
	movzbl	37(%rax), %eax	# PL_op.412_109->op_private, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$2, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L385	#,
	.loc 1 861 0
	movq	-40(%rbp), %rax	# sym, tmp256
	movl	$.LC10, %edx	#,
	movq	%rax, %rsi	# tmp256,
	movl	$PL_no_symref, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L358	#
.L385:
	.loc 1 862 0
	movq	-40(%rbp), %rax	# sym, tmp257
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	Perl_gv_fetchpv	#
	movq	%rax, -48(%rbp)	# tmp258, gv
.LBE58:
	jmp	.L386	#
.L369:
	.loc 1 866 0
	movq	-72(%rbp), %rax	# sv, tmp259
	movq	%rax, -48(%rbp)	# tmp259, gv
.L386:
	.loc 1 868 0
	movq	-48(%rbp), %rax	# gv, tmp260
	movq	(%rax), %rax	# gv_12->sv_any, D.18132
	movq	56(%rax), %rax	# _116->xgv_gp, D.18133
	movq	40(%rax), %rax	# _117->gp_hv, D.18134
	testq	%rax, %rax	# D.18134
	je	.L387	#,
	.loc 1 868 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# gv, tmp261
	movq	(%rax), %rax	# gv_12->sv_any, D.18132
	movq	56(%rax), %rax	# _119->xgv_gp, D.18133
	movq	40(%rax), %rax	# _120->gp_hv, iftmp.413
	jmp	.L388	#
.L387:
	.loc 1 868 0 discriminator 2
	movq	-48(%rbp), %rax	# gv, tmp262
	movq	%rax, %rdi	# tmp262,
	call	Perl_gv_HVadd	#
	movq	(%rax), %rax	# _122->sv_any, D.18132
	movq	56(%rax), %rax	# _123->xgv_gp, D.18133
	movq	40(%rax), %rax	# _124->gp_hv, iftmp.413
.L388:
	.loc 1 868 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.413, hv
	.loc 1 869 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.414
	movzbl	37(%rax), %eax	# PL_op.414_127->op_private, D.18124
	testb	%al, %al	# D.18131
	jns	.L389	#,
	.loc 1 870 0
	movq	-48(%rbp), %rax	# gv, tmp263
	movq	%rax, %rdi	# tmp263,
	call	Perl_save_hash	#
	movq	%rax, -64(%rbp)	# tmp264, hv
.L389:
	.loc 1 871 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.415
	movzbl	36(%rax), %eax	# PL_op.415_131->op_flags, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$16, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L390	#,
	.loc 1 872 0
	movq	-64(%rbp), %rax	# hv, tmp265
	movq	%rax, (%rbx)	# tmp265, *sp_20
	.loc 1 873 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.416
	movq	(%rax), %rax	# PL_op.416_135->op_next, D.18123
	jmp	.L358	#
.L390:
	.loc 1 875 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.417
	movzbl	37(%rax), %eax	# PL_op.417_137->op_private, D.18124
	movzbl	%al, %eax	# D.18124, D.18125
	andl	$8, %eax	#, D.18125
	testl	%eax, %eax	# D.18125
	je	.L363	#,
	.loc 1 875 0 is_stmt 0 discriminator 1
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18125
	je	.L363	#,
	.loc 1 876 0 is_stmt 1
	cmpl	$1, -84(%rbp)	#, gimme
	je	.L391	#,
	.loc 1 877 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L391:
	.loc 1 879 0
	movq	-64(%rbp), %rax	# hv, tmp266
	movq	%rax, (%rbx)	# tmp266, *sp_20
	.loc 1 880 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.418
	movq	(%rax), %rax	# PL_op.418_142->op_next, D.18123
	jmp	.L358	#
.L363:
.LBE57:
	.loc 1 885 0
	cmpl	$1, -84(%rbp)	#, gimme
	jne	.L392	#,
	.loc 1 886 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.419
	movq	-64(%rbp), %rdx	# hv, tmp267
	movq	%rdx, (%rax)	# tmp267, *PL_stack_sp.419_199
	.loc 1 887 0
	call	Perl_do_kv	#
	jmp	.L358	#
.L392:
	.loc 1 889 0
	cmpl	$0, -84(%rbp)	#, gimme
	jne	.L393	#,
.LBB59:
	.loc 1 890 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.420
	movq	PL_op(%rip), %rax	# PL_op, PL_op.421
	movq	24(%rax), %rax	# PL_op.421_202->op_targ, D.18136
	salq	$3, %rax	#, D.18136
	addq	%rdx, %rax	# PL_curpad.420, D.18137
	movq	(%rax), %rax	# *_205, tmp268
	movq	%rax, -24(%rbp)	# tmp268, targ
	.loc 1 892 0
	movq	-64(%rbp), %rax	# hv, tmp269
	movl	12(%rax), %eax	# hv_7->sv_flags, D.18126
	movzbl	%al, %eax	# D.18126, D.18126
	cmpl	$10, %eax	#, D.18126
	jne	.L394	#,
	.loc 1 893 0
	movq	-64(%rbp), %rax	# hv, tmp270
	movq	%rax, %rdi	# tmp270,
	call	Perl_avhv_keys	#
	movq	%rax, -64(%rbp)	# tmp271, hv
.L394:
	.loc 1 895 0
	movq	-64(%rbp), %rax	# hv, tmp272
	movq	%rax, %rdi	# tmp272,
	call	Perl_hv_scalar	#
	movq	%rax, -24(%rbp)	# tmp273, targ
.LBB60:
	.loc 1 896 0
	movq	-24(%rbp), %rax	# targ, tmp274
	movl	12(%rax), %eax	# targ_210->sv_flags, D.18126
	andl	$16384, %eax	#, D.18126
	testl	%eax, %eax	# D.18126
	je	.L395	#,
	.loc 1 896 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# targ, tmp275
	movq	%rax, %rdi	# tmp275,
	call	Perl_mg_set	#
.L395:
	.loc 1 896 0 discriminator 2
	movq	-24(%rbp), %rax	# targ, tmp276
	movq	%rax, (%rbx)	# tmp276, *sp_3
.L393:
.LBE60:
.LBE59:
	.loc 1 898 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.422
	movq	(%rax), %rax	# PL_op.422_214->op_next, D.18123
.L358:
	.loc 1 899 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_pp_rv2hv, .-Perl_pp_rv2hv
	.type	S_do_maybe_phash, @function
S_do_maybe_phash:
.LFB27:
	.loc 1 904 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# ary, ary
	movq	%rsi, -48(%rbp)	# lelem, lelem
	movq	%rdx, -56(%rbp)	# firstlelem, firstlelem
	movq	%rcx, -64(%rbp)	# relem, relem
	movq	%r8, -72(%rbp)	# lastrelem, lastrelem
	.loc 1 908 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.423
	movq	48(%rax), %rax	# MEM[(struct BINOP *)PL_op.423_6].op_last, tmp84
	movq	%rax, -16(%rbp)	# tmp84, leftop
	.loc 1 911 0
	movq	-16(%rbp), %rax	# leftop, tmp85
	movq	40(%rax), %rax	# MEM[(struct LISTOP *)leftop_7].op_first, tmp86
	movq	%rax, -16(%rbp)	# tmp86, leftop
	.loc 1 914 0
	movq	-48(%rbp), %rdx	# lelem, lelem.424
	movq	-56(%rbp), %rax	# firstlelem, firstlelem.425
	subq	%rax, %rdx	# firstlelem.425, D.18142
	movq	%rdx, %rax	# D.18142, D.18142
	sarq	$3, %rax	#, tmp87
	movl	%eax, -20(%rbp)	# D.18142, i
	jmp	.L397	#
.L398:
	.loc 1 915 0 discriminator 2
	movq	-16(%rbp), %rax	# leftop, tmp88
	movq	8(%rax), %rax	# leftop_3->op_sibling, tmp89
	movq	%rax, -16(%rbp)	# tmp89, leftop
	.loc 1 914 0 discriminator 2
	subl	$1, -20(%rbp)	#, i
.L397:
	.loc 1 914 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jg	.L398	#,
	.loc 1 918 0 is_stmt 1
	movq	-16(%rbp), %rax	# leftop, tmp90
	movzwl	32(%rax), %eax	# leftop_3->op_type, D.18143
	cmpw	$134, %ax	#, D.18143
	je	.L399	#,
	.loc 1 919 0
	movl	$0, %eax	#, D.18141
	jmp	.L400	#
.L399:
	.loc 1 922 0
	movq	-40(%rbp), %rax	# ary, tmp91
	movq	%rax, %rdi	# tmp91,
	call	Perl_av_len	#
	testl	%eax, %eax	# D.18141
	jle	.L401	#,
	.loc 1 923 0
	movq	-40(%rbp), %rax	# ary, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	Perl_av_fill	#
.L401:
	.loc 1 924 0
	movq	-72(%rbp), %rax	# lastrelem, tmp93
	cmpq	-64(%rbp), %rax	# relem, tmp93
	jb	.L402	#,
	.loc 1 925 0
	jmp	.L403	#
.L407:
.LBB61:
	.loc 1 930 0
	call	Perl_sv_newmortal	#
	movq	%rax, -8(%rbp)	# tmp94, tmpstr
	.loc 1 931 0
	movq	-64(%rbp), %rax	# relem, tmp95
	addq	$8, %rax	#, D.18144
	movq	(%rax), %rcx	# *_25, D.18145
	movq	-8(%rbp), %rax	# tmpstr, tmp96
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.18145,
	movq	%rax, %rdi	# tmp96,
	call	Perl_sv_setsv_flags	#
	.loc 1 932 0
	movq	-64(%rbp), %rax	# relem, tmp97
	leaq	8(%rax), %rdx	#, D.18144
	movq	-8(%rbp), %rax	# tmpstr, tmp98
	movq	%rax, (%rdx)	# tmp98, *_27
	.loc 1 933 0
	movq	-64(%rbp), %rax	# relem, tmp99
	movq	(%rax), %rsi	# *relem_1, D.18145
	movq	-8(%rbp), %rdx	# tmpstr, tmp100
	movq	-40(%rbp), %rax	# ary, tmp101
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp101,
	call	Perl_avhv_store_ent	#
	testq	%rax, %rax	# D.18144
	je	.L404	#,
	.loc 1 934 0
	movq	-8(%rbp), %rax	# tmpstr, tmp102
	movq	%rax, PL_Sv(%rip)	# tmp102, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.427
	testq	%rax, %rax	# PL_Sv.427
	je	.L404	#,
	.loc 1 934 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.428
	movl	8(%rax), %edx	# PL_Sv.428_31->sv_refcnt, D.18146
	addl	$1, %edx	#, D.18146
	movl	%edx, 8(%rax)	# D.18146, PL_Sv.428_31->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.428_31->sv_refcnt, D.18146
	testl	%eax, %eax	# D.18146
	je	.L404	#,
	.loc 1 934 0
	nop
.L404:
	.loc 1 935 0 is_stmt 1
	movq	-40(%rbp), %rax	# ary, tmp103
	movl	12(%rax), %eax	# ary_20(D)->sv_flags, D.18146
	andl	$57344, %eax	#, D.18146
	testl	%eax, %eax	# D.18146
	je	.L406	#,
	.loc 1 935 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmpstr, tmp104
	movl	12(%rax), %eax	# tmpstr_24->sv_flags, D.18146
	andl	$16384, %eax	#, D.18146
	testl	%eax, %eax	# D.18146
	je	.L406	#,
	.loc 1 936 0 is_stmt 1
	movq	-8(%rbp), %rax	# tmpstr, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_mg_set	#
.L406:
	.loc 1 937 0
	addq	$16, -64(%rbp)	#, relem
	.loc 1 938 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L403:
.LBE61:
	.loc 1 925 0 discriminator 1
	movq	-64(%rbp), %rax	# relem, tmp106
	cmpq	-72(%rbp), %rax	# lastrelem, tmp106
	jb	.L407	#,
.L402:
	.loc 1 941 0
	movq	-64(%rbp), %rax	# relem, tmp107
	cmpq	-72(%rbp), %rax	# lastrelem, tmp107
	jne	.L408	#,
	.loc 1 942 0
	movl	$1, %eax	#, D.18141
	jmp	.L400	#
.L408:
	.loc 1 943 0
	movl	$2, %eax	#, D.18141
.L400:
	.loc 1 944 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	S_do_maybe_phash, .-S_do_maybe_phash
	.section	.rodata
	.align 8
.LC11:
	.string	"Reference found where even-sized list expected"
	.align 8
.LC12:
	.string	"Odd number of elements in hash assignment"
	.text
	.type	S_do_oddball, @function
S_do_oddball:
.LFB28:
	.loc 1 948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hash, hash
	movq	%rsi, -32(%rbp)	# relem, relem
	movq	%rdx, -40(%rbp)	# firstrelem, firstrelem
	.loc 1 949 0
	movq	-32(%rbp), %rax	# relem, tmp112
	movq	(%rax), %rax	# *relem_1(D), D.18147
	testq	%rax, %rax	# D.18147
	je	.L409	#,
.LBB62:
	.loc 1 951 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.429
	movq	80(%rax), %rax	# PL_curcop.429_3->cop_warnings, D.18147
	testq	%rax, %rax	# D.18147
	je	.L411	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.430
	movq	80(%rax), %rax	# PL_curcop.430_5->cop_warnings, D.18147
	cmpq	$32, %rax	#, D.18147
	je	.L411	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.431
	movq	80(%rax), %rax	# PL_curcop.431_7->cop_warnings, D.18147
	cmpq	$16, %rax	#, D.18147
	je	.L412	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.432
	movq	80(%rax), %rax	# PL_curcop.432_9->cop_warnings, D.18147
	movq	(%rax), %rax	# _10->sv_any, D.18148
	movq	(%rax), %rax	# MEM[(struct XPV *)_11].xpv_pv, D.18149
	addq	$3, %rax	#, D.18149
	movzbl	(%rax), %eax	# *_13, D.18150
	movsbl	%al, %eax	# D.18150, D.18151
	andl	$1, %eax	#, D.18151
	testl	%eax, %eax	# D.18151
	jne	.L412	#,
.L411:
	.loc 1 951 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.433
	movq	80(%rax), %rax	# PL_curcop.433_17->cop_warnings, D.18147
	testq	%rax, %rax	# D.18147
	jne	.L413	#,
	.loc 1 951 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.434
	movzbl	%al, %eax	# PL_dowarn.434, D.18151
	andl	$1, %eax	#, D.18151
	testl	%eax, %eax	# D.18151
	je	.L413	#,
.L412:
	.loc 1 952 0 is_stmt 1
	movq	-32(%rbp), %rax	# relem, tmp113
	cmpq	-40(%rbp), %rax	# firstrelem, tmp113
	jne	.L414	#,
	.loc 1 953 0 discriminator 1
	movq	-32(%rbp), %rax	# relem, tmp114
	movq	(%rax), %rax	# *relem_1(D), D.18147
	movl	12(%rax), %eax	# _23->sv_flags, D.18152
	andl	$524288, %eax	#, D.18152
	.loc 1 952 0 discriminator 1
	testl	%eax, %eax	# D.18152
	je	.L414	#,
	.loc 1 954 0
	movq	-32(%rbp), %rax	# relem, tmp115
	movq	(%rax), %rax	# *relem_1(D), D.18147
	movq	(%rax), %rax	# _26->sv_any, D.18148
	movq	(%rax), %rax	# MEM[(struct XRV *)_27].xrv_rv, D.18147
	movl	12(%rax), %eax	# _28->sv_flags, D.18152
	movzbl	%al, %eax	# D.18152, D.18152
	.loc 1 953 0
	cmpl	$10, %eax	#, D.18152
	je	.L415	#,
	.loc 1 955 0
	movq	-32(%rbp), %rax	# relem, tmp116
	movq	(%rax), %rax	# *relem_1(D), D.18147
	movq	(%rax), %rax	# _31->sv_any, D.18148
	movq	(%rax), %rax	# MEM[(struct XRV *)_32].xrv_rv, D.18147
	movl	12(%rax), %eax	# _33->sv_flags, D.18152
	movzbl	%al, %eax	# D.18152, D.18152
	.loc 1 954 0
	cmpl	$11, %eax	#, D.18152
	jne	.L414	#,
.L415:
	.loc 1 957 0
	movl	$.LC11, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L413	#
.L414:
	.loc 1 961 0
	movl	$.LC12, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L413:
	.loc 1 964 0
	movq	-24(%rbp), %rax	# hash, tmp117
	movl	12(%rax), %eax	# hash_36(D)->sv_flags, D.18152
	movzbl	%al, %eax	# D.18152, D.18152
	cmpl	$10, %eax	#, D.18152
	jne	.L416	#,
	.loc 1 966 0
	call	Perl_sv_newmortal	#
	movq	%rax, -16(%rbp)	# tmp118, tmpstr
	.loc 1 967 0
	movq	-32(%rbp), %rax	# relem, tmp119
	movq	(%rax), %rsi	# *relem_1(D), D.18147
	movq	-16(%rbp), %rdx	# tmpstr, tmp120
	movq	-24(%rbp), %rax	# hash, tmp121
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp121,
	call	Perl_avhv_store_ent	#
	testq	%rax, %rax	# D.18153
	je	.L417	#,
	.loc 1 968 0
	movq	-16(%rbp), %rax	# tmpstr, tmp122
	movq	%rax, PL_Sv(%rip)	# tmp122, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.436
	testq	%rax, %rax	# PL_Sv.436
	je	.L417	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.437
	movl	8(%rax), %edx	# PL_Sv.437_43->sv_refcnt, D.18152
	addl	$1, %edx	#, D.18152
	movl	%edx, 8(%rax)	# D.18152, PL_Sv.437_43->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.437_43->sv_refcnt, D.18152
	testl	%eax, %eax	# D.18152
	je	.L417	#,
	.loc 1 968 0
	nop
.L417:
	.loc 1 969 0 is_stmt 1
	movq	-24(%rbp), %rax	# hash, tmp123
	movl	12(%rax), %eax	# hash_36(D)->sv_flags, D.18152
	andl	$57344, %eax	#, D.18152
	testl	%eax, %eax	# D.18152
	je	.L420	#,
	.loc 1 969 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tmpstr, tmp124
	movl	12(%rax), %eax	# tmpstr_39->sv_flags, D.18152
	andl	$16384, %eax	#, D.18152
	testl	%eax, %eax	# D.18152
	je	.L420	#,
	.loc 1 970 0 is_stmt 1
	movq	-16(%rbp), %rax	# tmpstr, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_mg_set	#
	jmp	.L420	#
.L416:
.LBB63:
	.loc 1 974 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -16(%rbp)	# tmp126, tmpstr
	.loc 1 975 0
	movq	-32(%rbp), %rax	# relem, tmp127
	movq	(%rax), %rsi	# *relem_1(D), D.18147
	movq	-16(%rbp), %rdx	# tmpstr, tmp128
	movq	-24(%rbp), %rax	# hash, tmp129
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp129,
	call	Perl_hv_store_ent	#
	movq	%rax, -8(%rbp)	# tmp130, didstore
	.loc 1 976 0
	movq	-24(%rbp), %rax	# hash, tmp131
	movl	12(%rax), %eax	# hash_36(D)->sv_flags, D.18152
	andl	$57344, %eax	#, D.18152
	testl	%eax, %eax	# D.18152
	je	.L420	#,
	.loc 1 977 0
	movq	-16(%rbp), %rax	# tmpstr, tmp132
	movl	12(%rax), %eax	# tmpstr_53->sv_flags, D.18152
	andl	$16384, %eax	#, D.18152
	testl	%eax, %eax	# D.18152
	je	.L421	#,
	.loc 1 978 0
	movq	-16(%rbp), %rax	# tmpstr, tmp133
	movq	%rax, %rdi	# tmp133,
	call	Perl_mg_set	#
.L421:
	.loc 1 979 0
	cmpq	$0, -8(%rbp)	#, didstore
	jne	.L420	#,
	.loc 1 980 0
	movq	-16(%rbp), %rax	# tmpstr, tmp134
	movq	%rax, %rdi	# tmp134,
	call	Perl_sv_2mortal	#
.L420:
.LBE63:
	.loc 1 983 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L409:
.LBE62:
	.loc 1 985 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	S_do_oddball, .-S_do_oddball
	.section	.rodata
.LC13:
	.string	"No setreuid available"
.LC14:
	.string	"No setregid available"
	.text
	.globl	Perl_pp_aassign
	.type	Perl_pp_aassign, @function
Perl_pp_aassign:
.LFB29:
	.loc 1 988 0
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
	.loc 1 989 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 990 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, tmp222
	movq	%rax, -88(%rbp)	# tmp222, lastlelem
	.loc 1 991 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.438
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.439
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.441
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.441, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.440_34, D.18157
	cltq
	salq	$3, %rax	#, D.18158
	addq	%rcx, %rax	# PL_stack_base.438, tmp223
	movq	%rax, -112(%rbp)	# tmp223, lastrelem
	.loc 1 992 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.442
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.443
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.445
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.445, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.444_42, D.18157
	cltq
	addq	$1, %rax	#, D.18159
	salq	$3, %rax	#, D.18159
	addq	%rcx, %rax	# PL_stack_base.442, tmp224
	movq	%rax, -80(%rbp)	# tmp224, firstrelem
	.loc 1 993 0
	movq	-112(%rbp), %rax	# lastrelem, tmp228
	addq	$8, %rax	#, tmp227
	movq	%rax, -72(%rbp)	# tmp227, firstlelem
	.loc 1 1005 0
	movl	$0, -124(%rbp)	#, duplicates
	.loc 1 1006 0
	movq	$0, -96(%rbp)	#, firsthashrelem
	.loc 1 1009 0
	movl	$256, PL_delaymagic(%rip)	#, PL_delaymagic
	.loc 1 1010 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.447
	movzbl	36(%rax), %eax	# PL_op.447_52->op_flags, D.18160
	movzbl	%al, %eax	# D.18160, D.18157
	andl	$3, %eax	#, D.18157
	cmpl	$1, %eax	#, D.18157
	je	.L423	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.449
	movzbl	36(%rax), %eax	# PL_op.449_56->op_flags, D.18160
	movzbl	%al, %eax	# D.18160, D.18157
	andl	$3, %eax	#, D.18157
	cmpl	$2, %eax	#, D.18157
	je	.L424	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.451
	movzbl	36(%rax), %eax	# PL_op.451_60->op_flags, D.18160
	movzbl	%al, %eax	# D.18160, D.18157
	andl	$3, %eax	#, D.18157
	cmpl	$3, %eax	#, D.18157
	je	.L425	#,
	call	Perl_block_gimme	#
	jmp	.L428	#
.L425:
	.loc 1 1010 0 discriminator 2
	movl	$1, %eax	#, iftmp.450
	jmp	.L428	#
.L424:
	movl	$0, %eax	#, iftmp.448
	jmp	.L428	#
.L423:
	movl	$128, %eax	#, iftmp.446
.L428:
	.loc 1 1010 0 discriminator 3
	movl	%eax, -120(%rbp)	# iftmp.446, gimme
	.loc 1 1016 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.452
	movzbl	37(%rax), %eax	# PL_op.452_71->op_private, D.18160
	movzbl	%al, %eax	# D.18160, D.18157
	andl	$64, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L429	#,
	.loc 1 1017 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.453
	cltq
	movq	-112(%rbp), %rcx	# lastrelem, lastrelem.454
	movq	-80(%rbp), %rdx	# firstrelem, firstrelem.455
	subq	%rdx, %rcx	# firstrelem.455, D.18161
	movq	%rcx, %rdx	# D.18161, D.18161
	sarq	$3, %rdx	#, tmp229
	addq	$1, %rdx	#, D.18161
	addq	%rax, %rdx	# D.18161, D.18161
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.456
	cltq
	cmpq	%rax, %rdx	# D.18161, D.18161
	jl	.L430	#,
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rdx	# lastrelem, lastrelem.457
	movq	-80(%rbp), %rax	# firstrelem, firstrelem.458
	subq	%rax, %rdx	# firstrelem.458, D.18161
	movq	%rdx, %rax	# D.18161, D.18161
	sarq	$3, %rax	#, tmp230
	addl	$1, %eax	#, D.18162
	movl	%eax, %edi	# D.18157,
	call	Perl_tmps_grow	#
.L430:
	.loc 1 1018 0 is_stmt 1
	movq	-80(%rbp), %rbx	# firstrelem, relem
	jmp	.L431	#
.L433:
	.loc 1 1020 0
	movq	(%rbx), %r12	# *relem_4, sv
	testq	%r12, %r12	# sv
	je	.L432	#,
	.loc 1 1021 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1022 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%rbx)	# D.18163, *relem_4
.L432:
	.loc 1 1018 0
	addq	$8, %rbx	#, relem
.L431:
	.loc 1 1018 0 is_stmt 0 discriminator 1
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	jbe	.L433	#,
.L429:
	.loc 1 1027 0 is_stmt 1
	movq	-80(%rbp), %rbx	# firstrelem, relem
	.loc 1 1028 0
	movq	-72(%rbp), %r13	# firstlelem, lelem
	.loc 1 1029 0
	movl	$0, %r14d	#, ary
	.loc 1 1030 0
	movq	$0, -104(%rbp)	#, hash
	.loc 1 1032 0
	jmp	.L434	#
.L461:
	.loc 1 1033 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1034 0
	movq	%r13, %rax	# lelem, lelem.459
	leaq	8(%rax), %r13	#, lelem
	movq	(%rax), %r12	# *lelem.459_100, sv
	.loc 1 1035 0
	movl	12(%r12), %eax	# sv_102->sv_flags, D.18164
	movzbl	%al, %eax	# D.18164, D.18164
	cmpl	$10, %eax	#, D.18164
	je	.L436	#,
	cmpl	$11, %eax	#, D.18164
	je	.L437	#,
	jmp	.L485	#
.L436:
	.loc 1 1037 0
	movq	%r12, %r14	# sv, ary
	.loc 1 1038 0
	movl	12(%r14), %eax	# ary_105->sv_flags, D.18164
	andl	$57344, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	setne	%al	#, D.18165
	movzbl	%al, %eax	# D.18165, tmp231
	movl	%eax, -116(%rbp)	# tmp231, magic
	.loc 1 1039 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.460
	movzbl	37(%rax), %eax	# PL_op.460_110->op_private, D.18160
	movzbl	%al, %eax	# D.18160, D.18157
	andl	$32, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L438	#,
	.loc 1 1040 0
	movq	-112(%rbp), %rdx	# lastrelem, tmp232
	movq	-72(%rbp), %rax	# firstlelem, tmp233
	movq	%rdx, %r8	# tmp232,
	movq	%rbx, %rcx	# relem,
	movq	%rax, %rdx	# tmp233,
	movq	%r13, %rsi	# lelem,
	movq	%r14, %rdi	# ary,
	call	S_do_maybe_phash	#
	testl	%eax, %eax	# D.18157
	je	.L486	#,
	cmpl	$1, %eax	#, D.18157
	jne	.L439	#,
	.loc 1 1046 0
	movq	-80(%rbp), %rax	# firstrelem, tmp234
	movq	%rax, %rdx	# tmp234,
	movq	%rbx, %rsi	# relem,
	movq	%r14, %rdi	# ary,
	call	S_do_oddball	#
.L439:
	.loc 1 1048 0
	movq	-112(%rbp), %rax	# lastrelem, tmp235
	leaq	8(%rax), %rbx	#, relem
	.loc 1 1049 0
	jmp	.L434	#
.L486:
	.loc 1 1044 0
	nop
.L438:
	.loc 1 1052 0
	movq	%r14, %rdi	# ary,
	call	Perl_av_clear	#
	.loc 1 1053 0
	movq	-112(%rbp), %rdx	# lastrelem, lastrelem.461
	movq	%rbx, %rax	# relem, relem.462
	subq	%rax, %rdx	# relem.462, D.18161
	movq	%rdx, %rax	# D.18161, D.18161
	sarq	$3, %rax	#, tmp236
	movl	%eax, %esi	# D.18157,
	movq	%r14, %rdi	# ary,
	call	Perl_av_extend	#
	.loc 1 1054 0
	movl	$0, -128(%rbp)	#, i
	.loc 1 1055 0
	jmp	.L442	#
.L445:
.LBB64:
	.loc 1 1058 0
	movq	(%rbx), %rax	# *relem_5, D.18163
	movq	%rax, %rdi	# D.18163,
	call	Perl_newSVsv	#
	movq	%rax, %r12	#, sv
	.loc 1 1059 0
	movq	%rbx, %rax	# relem, relem.463
	leaq	8(%rax), %rbx	#, relem
	movq	%r12, (%rax)	# sv, *relem.463_124
	.loc 1 1060 0
	movl	-128(%rbp), %eax	# i, i.464
	leal	1(%rax), %edx	#, tmp237
	movl	%edx, -128(%rbp)	# tmp237, i
	movq	%r12, %rdx	# sv,
	movl	%eax, %esi	# i.464,
	movq	%r14, %rdi	# ary,
	call	Perl_av_store	#
	movq	%rax, -64(%rbp)	# tmp238, didstore
	.loc 1 1061 0
	cmpl	$0, -116(%rbp)	#, magic
	je	.L443	#,
	.loc 1 1062 0
	movl	12(%r12), %eax	# sv_123->sv_flags, D.18164
	andl	$16384, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	je	.L444	#,
	.loc 1 1063 0
	movq	%r12, %rdi	# sv,
	call	Perl_mg_set	#
.L444:
	.loc 1 1064 0
	cmpq	$0, -64(%rbp)	#, didstore
	jne	.L443	#,
	.loc 1 1065 0
	movq	%r12, %rdi	# sv,
	call	Perl_sv_2mortal	#
.L443:
	.loc 1 1067 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L442:
.LBE64:
	.loc 1 1055 0 discriminator 1
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	jbe	.L445	#,
	.loc 1 1069 0
	jmp	.L434	#
.L437:
.LBB65:
	.loc 1 1073 0
	movq	%r12, -104(%rbp)	# sv, hash
	.loc 1 1074 0
	movq	-104(%rbp), %rax	# hash, tmp239
	movl	12(%rax), %eax	# hash_131->sv_flags, D.18164
	andl	$57344, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	setne	%al	#, D.18165
	movzbl	%al, %eax	# D.18165, tmp240
	movl	%eax, -116(%rbp)	# tmp240, magic
	.loc 1 1075 0
	movq	-104(%rbp), %rax	# hash, tmp241
	movq	%rax, %rdi	# tmp241,
	call	Perl_hv_clear	#
	.loc 1 1076 0
	movq	%rbx, -96(%rbp)	# relem, firsthashrelem
	.loc 1 1078 0
	jmp	.L446	#
.L453:
.LBB66:
	.loc 1 1080 0
	movq	(%rbx), %rax	# *relem_7, D.18163
	testq	%rax, %rax	# D.18163
	je	.L447	#,
	.loc 1 1081 0
	movq	%rbx, %rax	# relem, relem.465
	leaq	8(%rax), %rbx	#, relem
	movq	(%rax), %r12	# *relem.465_138, sv
	jmp	.L448	#
.L447:
	.loc 1 1083 0
	movl	$PL_sv_no, %r12d	#, sv
	addq	$8, %rbx	#, relem
.L448:
	.loc 1 1084 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -56(%rbp)	# tmp242, tmpstr
	.loc 1 1085 0
	movq	(%rbx), %rax	# *relem_6, D.18163
	testq	%rax, %rax	# D.18163
	je	.L449	#,
	.loc 1 1086 0
	movq	(%rbx), %rcx	# *relem_6, D.18163
	movq	-56(%rbp), %rax	# tmpstr, tmp243
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.18163,
	movq	%rax, %rdi	# tmp243,
	call	Perl_sv_setsv_flags	#
.L449:
	.loc 1 1087 0
	movq	%rbx, %rax	# relem, relem.466
	leaq	8(%rax), %rbx	#, relem
	movq	-56(%rbp), %rdx	# tmpstr, tmp244
	movq	%rdx, (%rax)	# tmp244, *relem.466_146
	.loc 1 1088 0
	cmpl	$128, -120(%rbp)	#, gimme
	je	.L450	#,
	.loc 1 1088 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hash, tmp245
	movl	$0, %edx	#,
	movq	%r12, %rsi	# sv,
	movq	%rax, %rdi	# tmp245,
	call	Perl_hv_exists_ent	#
	testb	%al, %al	# D.18166
	je	.L450	#,
	.loc 1 1090 0 is_stmt 1
	addl	$2, -124(%rbp)	#, duplicates
.L450:
	.loc 1 1091 0
	movq	-56(%rbp), %rdx	# tmpstr, tmp246
	movq	-104(%rbp), %rax	# hash, tmp247
	movl	$0, %ecx	#,
	movq	%r12, %rsi	# sv,
	movq	%rax, %rdi	# tmp247,
	call	Perl_hv_store_ent	#
	movq	%rax, -48(%rbp)	# tmp248, didstore
	.loc 1 1092 0
	cmpl	$0, -116(%rbp)	#, magic
	je	.L451	#,
	.loc 1 1093 0
	movq	-56(%rbp), %rax	# tmpstr, tmp249
	movl	12(%rax), %eax	# tmpstr_143->sv_flags, D.18164
	andl	$16384, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	je	.L452	#,
	.loc 1 1094 0
	movq	-56(%rbp), %rax	# tmpstr, tmp250
	movq	%rax, %rdi	# tmp250,
	call	Perl_mg_set	#
.L452:
	.loc 1 1095 0
	cmpq	$0, -48(%rbp)	#, didstore
	jne	.L451	#,
	.loc 1 1096 0
	movq	-56(%rbp), %rax	# tmpstr, tmp251
	movq	%rax, %rdi	# tmp251,
	call	Perl_sv_2mortal	#
.L451:
	.loc 1 1098 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L446:
.LBE66:
	.loc 1 1078 0 discriminator 1
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	jb	.L453	#,
	.loc 1 1100 0
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	jne	.L454	#,
	.loc 1 1101 0
	movq	-80(%rbp), %rdx	# firstrelem, tmp252
	movq	-104(%rbp), %rax	# hash, tmp253
	movq	%rbx, %rsi	# relem,
	movq	%rax, %rdi	# tmp253,
	call	S_do_oddball	#
	.loc 1 1102 0
	addq	$8, %rbx	#, relem
.LBE65:
	.loc 1 1105 0
	jmp	.L434	#
.L454:
	jmp	.L434	#
.L485:
	.loc 1 1107 0
	cmpq	$PL_sv_undef, %r12	#, sv
	je	.L455	#,
	.loc 1 1107 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_yes, %r12	#, sv
	je	.L455	#,
	cmpq	$PL_sv_no, %r12	#, sv
	je	.L455	#,
	cmpq	$PL_sv_placeholder, %r12	#, sv
	jne	.L456	#,
.L455:
	.loc 1 1108 0 is_stmt 1
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	ja	.L457	#,
	.loc 1 1109 0
	addq	$8, %rbx	#, relem
	.loc 1 1110 0
	jmp	.L434	#
.L457:
	jmp	.L434	#
.L456:
	.loc 1 1112 0
	cmpq	-112(%rbp), %rbx	# lastrelem, relem
	ja	.L458	#,
	.loc 1 1113 0
	movq	(%rbx), %rax	# *relem_11, D.18163
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.18163,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
	.loc 1 1114 0
	movq	%rbx, %rax	# relem, relem.467
	leaq	8(%rax), %rbx	#, relem
	movq	%r12, (%rax)	# sv, *relem.467_155
	jmp	.L459	#
.L458:
	.loc 1 1117 0
	movl	$2, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%r12, %rdi	# sv,
	call	Perl_sv_setsv_flags	#
.L459:
	.loc 1 1118 0
	movl	12(%r12), %eax	# sv_102->sv_flags, D.18164
	andl	$16384, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	je	.L460	#,
	.loc 1 1118 0 is_stmt 0 discriminator 1
	movq	%r12, %rdi	# sv,
	call	Perl_mg_set	#
	.loc 1 1119 0 is_stmt 1 discriminator 1
	jmp	.L487	#
.L460:
.L487:
	.loc 1 1119 0 is_stmt 0
	nop
.L434:
	.loc 1 1032 0 is_stmt 1 discriminator 1
	cmpq	-88(%rbp), %r13	# lastlelem, lelem
	jbe	.L461	#,
	.loc 1 1122 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.468
	andb	$254, %ah	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L462	#,
	.loc 1 1123 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.469
	andl	$3, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L463	#,
	.loc 1 1145 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.470
	andl	$3, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L464	#,
	.loc 1 1146 0
	movl	PL_uid(%rip), %edx	# PL_uid, PL_uid.471
	movl	PL_euid(%rip), %eax	# PL_euid, PL_euid.472
	cmpl	%eax, %edx	# PL_euid.472, PL_uid.471
	je	.L465	#,
	.loc 1 1147 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L466	#
.L465:
	.loc 1 1148 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.473
	movl	%eax, %edi	# PL_uid.473,
	call	setuid	#
.L464:
	.loc 1 1152 0
	call	getuid	#
	movl	%eax, PL_uid(%rip)	# PL_uid.474, PL_uid
	.loc 1 1153 0
	call	geteuid	#
	movl	%eax, PL_euid(%rip)	# PL_euid.475, PL_euid
.L463:
	.loc 1 1155 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.476
	andl	$48, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L467	#,
	.loc 1 1177 0
	movl	PL_delaymagic(%rip), %eax	# PL_delaymagic, PL_delaymagic.477
	andl	$48, %eax	#, D.18157
	testl	%eax, %eax	# D.18157
	je	.L468	#,
	.loc 1 1178 0
	movl	PL_gid(%rip), %edx	# PL_gid, PL_gid.478
	movl	PL_egid(%rip), %eax	# PL_egid, PL_egid.479
	cmpl	%eax, %edx	# PL_egid.479, PL_gid.478
	je	.L469	#,
	.loc 1 1179 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L466	#
.L469:
	.loc 1 1180 0
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.480
	movl	%eax, %edi	# PL_gid.480,
	call	setgid	#
.L468:
	.loc 1 1184 0
	call	getgid	#
	movl	%eax, PL_gid(%rip)	# PL_gid.481, PL_gid
	.loc 1 1185 0
	call	getegid	#
	movl	%eax, PL_egid(%rip)	# PL_egid.482, PL_egid
.L467:
	.loc 1 1187 0
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.484
	testl	%eax, %eax	# PL_uid.484
	je	.L470	#,
	.loc 1 1187 0 is_stmt 0 discriminator 1
	movl	PL_euid(%rip), %edx	# PL_euid, PL_euid.485
	movl	PL_uid(%rip), %eax	# PL_uid, PL_uid.486
	cmpl	%eax, %edx	# PL_uid.486, PL_euid.485
	jne	.L471	#,
	.loc 1 1187 0 discriminator 4
	movl	PL_egid(%rip), %edx	# PL_egid, PL_egid.487
	movl	PL_gid(%rip), %eax	# PL_gid, PL_gid.488
	cmpl	%eax, %edx	# PL_gid.488, PL_egid.487
	je	.L470	#,
.L471:
	.loc 1 1187 0 discriminator 3
	movl	$1, %eax	#, iftmp.483
	jmp	.L472	#
.L470:
	.loc 1 1187 0 discriminator 2
	movl	$0, %eax	#, iftmp.483
.L472:
	.loc 1 1187 0 discriminator 5
	movl	%eax, %edx	# iftmp.483, D.18166
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.489
	orl	%edx, %eax	# D.18166, PL_tainting.490
	movb	%al, PL_tainting(%rip)	# PL_tainting.490, PL_tainting
.L462:
	.loc 1 1189 0 is_stmt 1
	movl	$0, PL_delaymagic(%rip)	#, PL_delaymagic
	.loc 1 1191 0
	cmpl	$128, -120(%rbp)	#, gimme
	jne	.L473	#,
	.loc 1 1192 0
	movq	-80(%rbp), %rax	# firstrelem, tmp254
	leaq	-8(%rax), %r12	#, sp
	jmp	.L474	#
.L473:
	.loc 1 1193 0
	cmpl	$0, -120(%rbp)	#, gimme
	jne	.L475	#,
.LBB67:
	.loc 1 1194 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.491
	movq	PL_op(%rip), %rax	# PL_op, PL_op.492
	movq	24(%rax), %rax	# PL_op.492_194->op_targ, D.18158
	salq	$3, %rax	#, D.18158
	addq	%rdx, %rax	# PL_curpad.491, D.18167
	movq	(%rax), %rax	# *_197, tmp255
	movq	%rax, -40(%rbp)	# tmp255, targ
	.loc 1 1195 0
	movq	-80(%rbp), %r12	# firstrelem, sp
.LBB68:
	.loc 1 1196 0
	movq	-112(%rbp), %rdx	# lastrelem, lastrelem.493
	movq	-80(%rbp), %rax	# firstrelem, firstrelem.494
	subq	%rax, %rdx	# firstrelem.494, D.18161
	movq	%rdx, %rax	# D.18161, D.18161
	sarq	$3, %rax	#, tmp256
	leaq	1(%rax), %rdx	#, D.18161
	movl	-124(%rbp), %eax	# duplicates, tmp257
	cltq
	subq	%rax, %rdx	# D.18161, D.18161
	movq	-40(%rbp), %rax	# targ, tmp258
	movq	%rdx, %rsi	# D.18161,
	movq	%rax, %rdi	# tmp258,
	call	Perl_sv_setiv	#
.LBB69:
	movq	-40(%rbp), %rax	# targ, tmp259
	movl	12(%rax), %eax	# targ_198->sv_flags, D.18164
	andl	$16384, %eax	#, D.18164
	testl	%eax, %eax	# D.18164
	je	.L476	#,
	.loc 1 1196 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# targ, tmp260
	movq	%rax, %rdi	# tmp260,
	call	Perl_mg_set	#
.L476:
	.loc 1 1196 0 discriminator 2
	movq	-40(%rbp), %rax	# targ, tmp261
	movq	%rax, (%r12)	# tmp261, *sp_199
.LBE69:
.LBE68:
.LBE67:
	jmp	.L474	#
.L475:
	.loc 1 1199 0 is_stmt 1
	testq	%r14, %r14	# ary
	je	.L477	#,
	.loc 1 1200 0
	movq	-112(%rbp), %r12	# lastrelem, sp
	jmp	.L478	#
.L477:
	.loc 1 1201 0
	cmpq	$0, -104(%rbp)	#, hash
	je	.L479	#,
	.loc 1 1202 0
	cmpl	$0, -124(%rbp)	#, duplicates
	je	.L480	#,
	.loc 1 1205 0
	movl	-124(%rbp), %eax	# duplicates, tmp262
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18158
	movl	-124(%rbp), %eax	# duplicates, tmp263
	cltq
	leaq	0(,%rax,8), %rcx	#, D.18158
	movq	-96(%rbp), %rax	# firsthashrelem, tmp264
	addq	%rax, %rcx	# tmp264, D.18168
	movq	-96(%rbp), %rax	# firsthashrelem, tmp265
	movq	%rcx, %rsi	# D.18168,
	movq	%rax, %rdi	# tmp265,
	call	memmove	#
	.loc 1 1207 0
	movl	-124(%rbp), %eax	# duplicates, tmp266
	cltq
	salq	$3, %rax	#, D.18158
	negq	%rax	# D.18159
	addq	%rax, -112(%rbp)	# D.18159, lastrelem
.L480:
	.loc 1 1209 0
	movq	-112(%rbp), %r12	# lastrelem, sp
	jmp	.L478	#
.L479:
	.loc 1 1212 0
	movq	-88(%rbp), %rdx	# lastlelem, lastlelem.495
	movq	-72(%rbp), %rax	# firstlelem, firstlelem.496
	subq	%rax, %rdx	# firstlelem.496, D.18161
	movq	%rdx, %rax	# D.18161, D.18161
	sarq	$3, %rax	#, tmp267
	leaq	0(,%rax,8), %rdx	#, D.18158
	movq	-80(%rbp), %rax	# firstrelem, tmp268
	leaq	(%rdx,%rax), %r12	#, sp
.L478:
	.loc 1 1213 0
	movq	%rbx, %rdx	# relem, relem.497
	movq	-80(%rbp), %rax	# firstrelem, firstrelem.498
	subq	%rax, %rdx	# firstrelem.498, D.18161
	movq	%rdx, %rax	# D.18161, D.18161
	sarq	$3, %rax	#, tmp269
	leaq	0(,%rax,8), %rdx	#, D.18158
	movq	-72(%rbp), %rax	# firstlelem, tmp270
	leaq	(%rdx,%rax), %r13	#, lelem
	.loc 1 1214 0
	jmp	.L481	#
.L484:
	.loc 1 1215 0
	movq	%rbx, %rax	# relem, relem.499
	leaq	8(%rax), %rbx	#, relem
	cmpq	-88(%rbp), %r13	# lastlelem, lelem
	ja	.L482	#,
	.loc 1 1215 0 is_stmt 0 discriminator 1
	movq	%r13, %rdx	# lelem, lelem.501
	leaq	8(%rdx), %r13	#, lelem
	movq	(%rdx), %rdx	# *lelem.501_237, iftmp.500
	jmp	.L483	#
.L482:
	.loc 1 1215 0 discriminator 2
	movl	$PL_sv_undef, %edx	#, iftmp.500
.L483:
	.loc 1 1215 0 discriminator 3
	movq	%rdx, (%rax)	# iftmp.500, *relem.499_235
.L481:
	.loc 1 1214 0 is_stmt 1 discriminator 1
	cmpq	%r12, %rbx	# sp, relem
	jbe	.L484	#,
.L474:
	.loc 1 1217 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.502
	movq	(%rax), %rax	# PL_op.502_241->op_next, D.18156
.L466:
	.loc 1 1218 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_pp_aassign, .-Perl_pp_aassign
	.section	.rodata
.LC15:
	.string	"Regexp"
	.text
	.globl	Perl_pp_qr
	.type	Perl_pp_qr, @function
Perl_pp_qr:
.LFB30:
	.loc 1 1221 0
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
	.loc 1 1222 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1223 0
	movq	PL_op(%rip), %rbx	# PL_op, pm
	.loc 1 1224 0
	call	Perl_sv_newmortal	#
	movq	%rax, -32(%rbp)	# tmp75, rv
	.loc 1 1225 0
	movq	-32(%rbp), %rax	# rv, tmp76
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	Perl_newSVrv	#
	movq	%rax, -24(%rbp)	# tmp77, sv
	.loc 1 1226 0
	movzbl	96(%rbx), %eax	# pm_2->op_pmdynflags, D.18171
	movzbl	%al, %eax	# D.18171, D.18172
	andl	$2, %eax	#, D.18172
	testl	%eax, %eax	# D.18172
	je	.L489	#,
	.loc 1 1227 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.503
	testb	%al, %al	# PL_tainting.503
	je	.L489	#,
	.loc 1 1227 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# rv, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_taint	#
.L489:
	.loc 1 1228 0 is_stmt 1
	movq	80(%rbx), %rax	# pm_2->op_pmregexp, D.18173
	testq	%rax, %rax	# D.18173
	je	.L491	#,
	.loc 1 1228 0 is_stmt 0 discriminator 1
	movq	80(%rbx), %rdx	# pm_2->op_pmregexp, D.18173
	movl	68(%rdx), %eax	# _10->refcnt, D.18172
	leal	1(%rax), %ecx	#, D.18172
	movl	%ecx, 68(%rdx)	# D.18172, _10->refcnt
	testl	%eax, %eax	# D.18172
	je	.L491	#,
	.loc 1 1228 0
	nop
.L491:
	.loc 1 1228 0 discriminator 3
	movq	80(%rbx), %rsi	# pm_2->op_pmregexp, D.18173
	movq	-24(%rbp), %rax	# sv, tmp79
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$114, %edx	#,
	movq	%rax, %rdi	# tmp79,
	call	Perl_sv_magic	#
	.loc 1 1229 0 is_stmt 1 discriminator 3
	addq	$8, %r12	#, sp
	movq	-32(%rbp), %rax	# rv, tmp80
	movq	%rax, (%r12)	# tmp80, *sp_17
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.505
	movq	(%rax), %rax	# PL_op.505_18->op_next, D.18174
	.loc 1 1230 0 discriminator 3
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_pp_qr, .-Perl_pp_qr
	.section	.rodata
.LC16:
	.string	"panic: pp_match"
	.align 8
.LC17:
	.string	"panic: pp_match start/end pointers"
	.text
	.globl	Perl_pp_match
	.type	Perl_pp_match, @function
Perl_pp_match:
.LFB31:
	.loc 1 1233 0
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
	subq	$152, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 1234 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1235 0
	movq	PL_op(%rip), %r14	# PL_op, pm
	.loc 1 1236 0
	movq	%r14, -96(%rbp)	# pm, dynpm
	.loc 1 1241 0
	movl	$2, -172(%rbp)	#, r_flags
	.loc 1 1243 0
	movq	80(%r14), %rbx	# pm_43->op_pmregexp, rx
	.loc 1 1245 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.507
	movzbl	36(%rax), %eax	# PL_op.507_47->op_flags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$3, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	je	.L494	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.508
	movzbl	36(%rax), %eax	# PL_op.508_51->op_flags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$3, %eax	#, D.18178
	cmpl	$3, %eax	#, D.18178
	sete	%al	#, D.18179
	movzbl	%al, %eax	# D.18179, iftmp.506
	jmp	.L495	#
.L494:
	.loc 1 1245 0 discriminator 2
	call	Perl_dowantarray	#
.L495:
	.loc 1 1245 0 discriminator 3
	movl	%eax, -152(%rbp)	# iftmp.506, gimme
	.loc 1 1247 0 is_stmt 1 discriminator 3
	movl	$0, -168(%rbp)	#, minmatch
	.loc 1 1248 0 discriminator 3
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp410
	movl	%eax, -148(%rbp)	# tmp410, oldsave
	.loc 1 1249 0 discriminator 3
	movl	$1, -164(%rbp)	#, update_minmatch
	.loc 1 1250 0 discriminator 3
	movl	$0, -160(%rbp)	#, had_zerolen
	.loc 1 1252 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.509
	movzbl	36(%rax), %eax	# PL_op.509_63->op_flags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$64, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	je	.L496	#,
	.loc 1 1253 0
	movq	%r12, %rax	# sp, sp.510
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.510_67, tmp411
	movq	%rax, -120(%rbp)	# tmp411, targ
	jmp	.L497	#
.L496:
	.loc 1 1255 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.511
	movq	(%rax), %rax	# PL_defgv.511_70->sv_any, D.18180
	movq	56(%rax), %rax	# _71->xgv_gp, D.18181
	movq	(%rax), %rax	# _72->gp_sv, tmp412
	movq	%rax, -120(%rbp)	# tmp412, targ
	.loc 1 1256 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.512
	movq	%rax, %rdx	# PL_stack_max.512, PL_stack_max.513
	movq	%r12, %rax	# sp, sp.514
	subq	%rax, %rdx	# sp.514, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	cmpq	$7, %rax	#, D.18182
	jg	.L497	#,
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L497:
	.loc 1 1259 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1260 0
	movq	-120(%rbp), %rax	# targ, tmp413
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$262144, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L498	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# targ, tmp414
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	8(%rax), %rax	# MEM[(struct XPV *)_81].xpv_cur, len.516
	movq	%rax, -128(%rbp)	# len.516, len
	movq	-120(%rbp), %rax	# targ, tmp415
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	(%rax), %rax	# MEM[(struct XPV *)_83].xpv_pv, iftmp.515
	jmp	.L499	#
.L498:
	.loc 1 1260 0 discriminator 2
	leaq	-128(%rbp), %rcx	#, tmp416
	movq	-120(%rbp), %rax	# targ, tmp417
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp416,
	movq	%rax, %rdi	# tmp417,
	call	Perl_sv_2pv_flags	#
.L499:
	.loc 1 1260 0 discriminator 3
	movq	%rax, %r13	# iftmp.515, s
	.loc 1 1261 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# len, len.517
	addq	%r13, %rax	# s, tmp418
	movq	%rax, -88(%rbp)	# tmp418, strend
	.loc 1 1262 0 discriminator 3
	testq	%r13, %r13	# s
	jne	.L500	#,
	.loc 1 1263 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L500:
	.loc 1 1264 0
	movzbl	96(%r14), %eax	# pm_43->op_pmdynflags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$2, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	jne	.L502	#,
	.loc 1 1265 0 discriminator 2
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.519
	.loc 1 1264 0 discriminator 2
	testb	%al, %al	# PL_tainted.519
	je	.L503	#,
	.loc 1 1265 0
	movl	88(%r14), %eax	# pm_43->op_pmflags, D.18183
	andl	$1, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L503	#,
.L502:
	.loc 1 1264 0 discriminator 1
	movl	$1, %eax	#, iftmp.518
	jmp	.L504	#
.L503:
	.loc 1 1264 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.518
.L504:
	.loc 1 1264 0 discriminator 4
	movb	%al, -173(%rbp)	# iftmp.518, rxtainted
	.loc 1 1266 0 is_stmt 1 discriminator 4
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1268 0 discriminator 4
	movq	-120(%rbp), %rax	# targ, tmp419
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$536870912, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L505	#,
	.loc 1 1268 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.521
	movzbl	37(%rax), %eax	# PL_curcop.521_101->op_private, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$8, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	jne	.L505	#,
	movl	92(%rbx), %eax	# rx_46->reganch, D.18183
	orl	$268435456, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_46->reganch
	movb	$1, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
	jmp	.L506	#
.L505:
	.loc 1 1268 0 discriminator 2
	movl	92(%rbx), %eax	# rx_46->reganch, D.18183
	andl	$-268435457, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_46->reganch
	movb	$0, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
.L506:
	.loc 1 1271 0 is_stmt 1
	movzbl	96(%r14), %eax	# pm_43->op_pmdynflags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$1, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	je	.L507	#,
.L508:
	.loc 1 1273 0
	cmpl	$1, -152(%rbp)	#, gimme
	jne	.L509	#,
	.loc 1 1274 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.522
	movq	(%rax), %rax	# PL_op.522_455->op_next, D.18176
	jmp	.L573	#
.L509:
	.loc 1 1275 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_no, (%r12)	#, *sp_457
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.523
	movq	(%rax), %rax	# PL_op.523_458->op_next, D.18176
	jmp	.L573	#
.L507:
	.loc 1 1279 0
	movl	76(%rbx), %eax	# rx_46->prelen, D.18178
	testl	%eax, %eax	# D.18178
	jne	.L510	#,
	.loc 1 1279 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.524
	testq	%rax, %rax	# PL_curpm.524
	je	.L510	#,
	.loc 1 1280 0 is_stmt 1
	movq	PL_curpm(%rip), %r14	# PL_curpm, pm
	.loc 1 1281 0
	movq	80(%r14), %rbx	# pm_116->op_pmregexp, rx
.L510:
	.loc 1 1284 0
	movl	72(%rbx), %edx	# rx_22->minlen, D.18178
	movq	-128(%rbp), %rax	# len, len.525
	cmpl	%eax, %edx	# D.18178, D.18178
	jle	.L511	#,
	.loc 1 1285 0
	jmp	.L508	#
.L511:
	.loc 1 1287 0
	movq	%r13, %r15	# s, t
	movq	%r15, -80(%rbp)	# t, truebase
	.loc 1 1290 0
	movq	-96(%rbp), %rax	# dynpm, tmp420
	movl	88(%rax), %eax	# dynpm_44->op_pmflags, D.18183
	andl	$256, %eax	#, tmp421
	movl	%eax, -144(%rbp)	# tmp421, global
	cmpl	$0, -144(%rbp)	#, global
	je	.L512	#,
	.loc 1 1291 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	$-1, (%rax)	#, *_126
	.loc 1 1292 0
	movq	-120(%rbp), %rax	# targ, tmp422
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$6, %eax	#, D.18183
	jbe	.L512	#,
	.loc 1 1292 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# targ, tmp423
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_129].xmg_magic, D.18186
	testq	%rax, %rax	# D.18186
	je	.L512	#,
.LBB70:
	.loc 1 1293 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp424
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp424,
	call	Perl_mg_find	#
	movq	%rax, -72(%rbp)	# tmp425, mg
	.loc 1 1294 0
	cmpq	$0, -72(%rbp)	#, mg
	je	.L512	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# mg, tmp426
	movl	40(%rax), %eax	# mg_131->mg_len, D.18178
	testl	%eax, %eax	# D.18178
	js	.L512	#,
	.loc 1 1295 0 is_stmt 1
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$128, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L513	#,
	.loc 1 1296 0
	movq	8(%rbx), %rdx	# rx_22->endp, D.18185
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movq	-72(%rbp), %rcx	# mg, tmp427
	movl	40(%rcx), %ecx	# mg_131->mg_len, D.18178
	movl	%ecx, (%rax)	# D.18178, *_136
	movl	(%rax), %eax	# *_136, D.18178
	movl	%eax, (%rdx)	# D.18178, *_135
	jmp	.L514	#
.L513:
	.loc 1 1297 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$8, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L514	#,
	.loc 1 1298 0
	orl	$8, -172(%rbp)	#, r_flags
	.loc 1 1299 0
	movq	8(%rbx), %rdx	# rx_22->endp, D.18185
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movq	-72(%rbp), %rcx	# mg, tmp428
	movl	40(%rcx), %ecx	# mg_131->mg_len, D.18178
	movl	%ecx, (%rax)	# D.18178, *_143
	movl	(%rax), %eax	# *_143, D.18178
	movl	%eax, (%rdx)	# D.18178, *_142
.L514:
	.loc 1 1301 0
	movq	-72(%rbp), %rax	# mg, tmp429
	movzbl	19(%rax), %eax	# mg_131->mg_flags, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$1, %eax	#, tmp430
	movl	%eax, -168(%rbp)	# tmp430, minmatch
	.loc 1 1302 0
	movl	$0, -164(%rbp)	#, update_minmatch
.L512:
.LBE70:
	.loc 1 1306 0
	cmpl	$0, -144(%rbp)	#, global
	jne	.L515	#,
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movl	80(%rbx), %eax	# rx_22->nparens, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L516	#,
.L515:
	.loc 1 1307 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp431
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$2048, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L516	#,
	.loc 1 1307 0 is_stmt 0 discriminator 1
	movzbl	PL_sawampersand(%rip), %eax	# PL_sawampersand, PL_sawampersand.526
	testb	%al, %al	# PL_sawampersand.526
	je	.L517	#,
.L516:
	.loc 1 1308 0 is_stmt 1
	orl	$1, -172(%rbp)	#, r_flags
.L517:
	.loc 1 1309 0
	movq	-120(%rbp), %rax	# targ, tmp432
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$134217728, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L518	#,
	.loc 1 1310 0
	orl	$4, -172(%rbp)	#, r_flags
.L518:
	.loc 1 1312 0
	movl	88(%r14), %eax	# pm_8->op_pmflags, D.18183
	andl	$12288, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L519	#,
	.loc 1 1313 0
	movl	$PL_multiline, %edi	#,
	call	Perl_save_int	#
	.loc 1 1314 0
	movl	88(%r14), %eax	# pm_8->op_pmflags, D.18183
	andl	$4096, %eax	#, PL_multiline.527
	movl	%eax, PL_multiline(%rip)	# PL_multiline.527, PL_multiline
.L519:
	.loc 1 1318 0
	cmpl	$0, -144(%rbp)	#, global
	je	.L520	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %eax	# *_163, D.18178
	cmpl	$-1, %eax	#, D.18178
	je	.L520	#,
	.loc 1 1319 0 is_stmt 1
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %eax	# *_165, D.18178
	movslq	%eax, %rdx	# D.18178, D.18187
	movq	-80(%rbp), %rax	# truebase, tmp433
	leaq	(%rdx,%rax), %r13	#, s
	movq	%r13, %r15	# s, t
	.loc 1 1320 0
	movl	72(%rbx), %eax	# rx_22->minlen, D.18178
	cltq
	addq	%r13, %rax	# s, D.18188
	cmpq	-88(%rbp), %rax	# strend, D.18188
	jbe	.L521	#,
	.loc 1 1321 0
	jmp	.L569	#
.L521:
	.loc 1 1322 0
	movl	-164(%rbp), %eax	# update_minmatch, update_minmatch.528
	leal	1(%rax), %edx	#, tmp434
	movl	%edx, -164(%rbp)	# tmp434, update_minmatch
	testl	%eax, %eax	# update_minmatch.528
	je	.L520	#,
	.loc 1 1323 0
	movl	-160(%rbp), %eax	# had_zerolen, tmp435
	movl	%eax, -168(%rbp)	# tmp435, minmatch
.L520:
	.loc 1 1325 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$3145728, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L523	#,
	.loc 1 1326 0
	movq	-120(%rbp), %rax	# targ, tmp436
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$536870912, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L524	#,
	.loc 1 1326 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.530
	movzbl	37(%rax), %eax	# PL_curcop.530_180->op_private, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$8, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	jne	.L524	#,
	.loc 1 1326 0 discriminator 3
	movl	$1, %eax	#, iftmp.529
	jmp	.L525	#
.L524:
	.loc 1 1326 0 discriminator 2
	movl	$0, %eax	#, iftmp.529
.L525:
	.loc 1 1326 0 discriminator 4
	andl	$1, %eax	#, D.18179
	xorl	$1, %eax	#, D.18179
	movl	92(%rbx), %edx	# rx_22->reganch, D.18183
	andl	$65536, %edx	#, D.18183
	testl	%edx, %edx	# D.18183
	setne	%dl	#, D.18179
	xorl	%edx, %eax	# D.18179, D.18179
	.loc 1 1325 0 is_stmt 1 discriminator 4
	testb	%al, %al	# D.18179
	je	.L523	#,
	.loc 1 1327 0
	movq	-80(%rbp), %rax	# truebase, tmp437
	movq	%rax, PL_bostr(%rip)	# tmp437, PL_bostr
	.loc 1 1328 0
	movq	PL_regint_start(%rip), %rax	# PL_regint_start, PL_regint_start.531
	movl	-172(%rbp), %ecx	# r_flags, r_flags.532
	movq	-88(%rbp), %rdx	# strend, tmp438
	movq	-120(%rbp), %rsi	# targ, tmp439
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# r_flags.532,
	movq	%rdx, %rcx	# tmp438,
	movq	%r13, %rdx	# s,
	movq	%rbx, %rdi	# rx,
	call	*%rax	# PL_regint_start.531
	movq	%rax, %r13	#, s
	.loc 1 1330 0
	testq	%r13, %r13	# s
	jne	.L526	#,
	.loc 1 1331 0
	jmp	.L569	#
.L526:
	.loc 1 1332 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$256, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L523	#,
	.loc 1 1333 0
	movzbl	PL_sawampersand(%rip), %eax	# PL_sawampersand, PL_sawampersand.533
	testb	%al, %al	# PL_sawampersand.533
	jne	.L523	#,
	.loc 1 1334 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$64, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L527	#,
	.loc 1 1335 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$134217728, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L527	#,
	.loc 1 1336 0 discriminator 1
	movl	-172(%rbp), %eax	# r_flags, tmp440
	andl	$4, %eax	#, D.18178
	.loc 1 1335 0 discriminator 1
	testl	%eax, %eax	# D.18178
	jne	.L523	#,
.L527:
	.loc 1 1337 0
	movq	-120(%rbp), %rax	# targ, tmp441
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$524288, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L523	#,
	.loc 1 1338 0
	nop
.L528:
	.loc 1 1430 0
	cmpb	$0, -173(%rbp)	#, rxtainted
	je	.L559	#,
	jmp	.L574	#
.L523:
	.loc 1 1340 0
	movq	PL_regexecp(%rip), %rax	# PL_regexecp, PL_regexecp.534
	movl	-172(%rbp), %esi	# r_flags, r_flags.535
	movq	-120(%rbp), %r8	# targ, tmp442
	movl	-168(%rbp), %edi	# minmatch, tmp443
	movq	-80(%rbp), %rcx	# truebase, tmp444
	movq	-88(%rbp), %rdx	# strend, tmp445
	movl	%esi, 8(%rsp)	# r_flags.535,
	movq	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp442,
	movl	%edi, %r8d	# tmp443,
	movq	%r13, %rsi	# s,
	movq	%rbx, %rdi	# rx,
	call	*%rax	# PL_regexecp.534
	testl	%eax, %eax	# D.18178
	je	.L529	#,
	.loc 1 1342 0
	movq	%r14, PL_curpm(%rip)	# pm, PL_curpm
	.loc 1 1343 0
	movq	-96(%rbp), %rax	# dynpm, tmp446
	movl	88(%rax), %eax	# dynpm_44->op_pmflags, D.18183
	andl	$2, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L530	#,
	.loc 1 1344 0
	movq	-96(%rbp), %rax	# dynpm, tmp447
	movzbl	96(%rax), %eax	# dynpm_44->op_pmdynflags, D.18177
	orl	$1, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-96(%rbp), %rax	# dynpm, tmp448
	movb	%dl, 96(%rax)	# D.18177, dynpm_44->op_pmdynflags
	.loc 1 1345 0
	jmp	.L531	#
.L530:
	jmp	.L531	#
.L529:
	.loc 1 1348 0
	jmp	.L569	#
.L531:
	.loc 1 1352 0
	cmpb	$0, -173(%rbp)	#, rxtainted
	je	.L532	#,
	.loc 1 1353 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	orl	$524288, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_22->reganch
.L532:
	.loc 1 1354 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$524288, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L533	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L533:
	.loc 1 1355 0 is_stmt 1
	cmpl	$1, -152(%rbp)	#, gimme
	jne	.L534	#,
.LBB71:
	.loc 1 1358 0
	movl	80(%rbx), %eax	# rx_22->nparens, D.18183
	movl	%eax, -136(%rbp)	# D.18183, nparens
	.loc 1 1359 0
	cmpl	$0, -144(%rbp)	#, global
	je	.L535	#,
	.loc 1 1359 0 is_stmt 0 discriminator 1
	cmpl	$0, -136(%rbp)	#, nparens
	jne	.L535	#,
	.loc 1 1360 0 is_stmt 1
	movl	$1, -156(%rbp)	#, i
	jmp	.L536	#
.L535:
	.loc 1 1362 0
	movl	$0, -156(%rbp)	#, i
.L536:
	.loc 1 1363 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1364 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.536
	movq	%rax, %rdx	# PL_stack_max.536, PL_stack_max.537
	movq	%r12, %rax	# sp, sp.538
	subq	%rax, %rdx	# sp.538, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	sarq	$3, %rax	#, tmp449
	movq	%rax, %rdx	# tmp449, D.18182
	movl	-156(%rbp), %eax	# i, tmp450
	movl	-136(%rbp), %ecx	# nparens, tmp451
	addl	%ecx, %eax	# tmp451, D.18178
	cltq
	cmpq	%rax, %rdx	# D.18182, D.18182
	jge	.L537	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# i, tmp452
	movl	-136(%rbp), %edx	# nparens, tmp453
	addl	%edx, %eax	# tmp453, D.18178
	movl	%eax, %edx	# D.18178,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L537:
	.loc 1 1365 0 is_stmt 1
	movl	-156(%rbp), %eax	# i, tmp454
	movl	-136(%rbp), %edx	# nparens, tmp455
	addl	%eax, %edx	# tmp454, D.18178
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.539
	addl	%eax, %edx	# PL_tmps_ix.539, D.18178
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.540
	cmpl	%eax, %edx	# PL_tmps_max.540, D.18178
	jl	.L538	#,
	.loc 1 1365 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# i, tmp456
	movl	-136(%rbp), %edx	# nparens, tmp457
	addl	%edx, %eax	# tmp457, D.18178
	movl	%eax, %edi	# D.18178,
	call	Perl_tmps_grow	#
.L538:
	.loc 1 1366 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, i
	sete	%al	#, D.18179
	movzbl	%al, %eax	# D.18179, tmp458
	movl	%eax, -156(%rbp)	# tmp458, i
	jmp	.L539	#
.L543:
	.loc 1 1367 0
	addq	$8, %r12	#, sp
	call	Perl_sv_newmortal	#
	movq	%rax, (%r12)	# D.18190, *sp_318
	.loc 1 1369 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	-156(%rbp), %edx	# i, tmp459
	movslq	%edx, %rdx	# tmp459, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_323, D.18178
	cmpl	$-1, %eax	#, D.18178
	je	.L540	#,
	.loc 1 1369 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	-156(%rbp), %edx	# i, tmp460
	movslq	%edx, %rdx	# tmp460, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_328, D.18178
	cmpl	$-1, %eax	#, D.18178
	je	.L540	#,
	.loc 1 1370 0 is_stmt 1
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	-156(%rbp), %edx	# i, tmp461
	movslq	%edx, %rdx	# tmp461, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %edx	# *_333, D.18178
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	-156(%rbp), %ecx	# i, tmp462
	movslq	%ecx, %rcx	# tmp462, D.18191
	salq	$2, %rcx	#, D.18191
	addq	%rcx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_338, D.18178
	subl	%eax, %edx	# D.18178, tmp463
	movl	%edx, %eax	# tmp463, tmp463
	movl	%eax, -132(%rbp)	# tmp463, len
	.loc 1 1371 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	-156(%rbp), %edx	# i, tmp464
	movslq	%edx, %rdx	# tmp464, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_344, D.18178
	movslq	%eax, %rdx	# D.18178, D.18187
	movq	-80(%rbp), %rax	# truebase, tmp465
	leaq	(%rdx,%rax), %r13	#, s
	.loc 1 1372 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	-156(%rbp), %edx	# i, tmp466
	movslq	%edx, %rdx	# tmp466, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_351, D.18178
	testl	%eax, %eax	# D.18178
	js	.L541	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	-156(%rbp), %edx	# i, tmp467
	movslq	%edx, %rdx	# tmp467, D.18191
	salq	$2, %rdx	#, D.18191
	addq	%rdx, %rax	# D.18191, D.18185
	movl	(%rax), %eax	# *_356, D.18178
	testl	%eax, %eax	# D.18178
	js	.L541	#,
	cmpl	$0, -132(%rbp)	#, len
	js	.L541	#,
	.loc 1 1373 0 is_stmt 1
	movl	-132(%rbp), %eax	# len, tmp468
	cltq
	movq	-88(%rbp), %rcx	# strend, strend.541
	movq	%r13, %rdx	# s, s.542
	subq	%rdx, %rcx	# s.542, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	cmpq	%rdx, %rax	# D.18182, D.18182
	jle	.L542	#,
.L541:
	.loc 1 1374 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L573	#
.L542:
	.loc 1 1375 0
	movl	-132(%rbp), %eax	# len, tmp469
	movslq	%eax, %rdx	# tmp469, D.18191
	movq	(%r12), %rax	# *sp_318, D.18190
	movq	%r13, %rsi	# s,
	movq	%rax, %rdi	# D.18190,
	call	Perl_sv_setpvn	#
	.loc 1 1376 0
	movq	-120(%rbp), %rax	# targ, tmp470
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	andl	$536870912, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L540	#,
	.loc 1 1376 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.543
	movzbl	37(%rax), %eax	# PL_curcop.543_366->op_private, D.18177
	movzbl	%al, %eax	# D.18177, D.18178
	andl	$8, %eax	#, D.18178
	testl	%eax, %eax	# D.18178
	jne	.L540	#,
	movl	-132(%rbp), %eax	# len, tmp471
	cltq
	movq	%rax, %rsi	# D.18191,
	movq	%r13, %rdi	# s,
	call	Perl_is_utf8_string	#
	testb	%al, %al	# D.18192
	je	.L540	#,
	.loc 1 1377 0 is_stmt 1
	movq	(%r12), %rax	# *sp_318, D.18190
	movq	(%r12), %rdx	# *sp_318, D.18190
	movl	12(%rdx), %edx	# _373->sv_flags, D.18183
	orl	$536870912, %edx	#, D.18183
	movl	%edx, 12(%rax)	# D.18183, _372->sv_flags
.L540:
	.loc 1 1366 0
	addl	$1, -156(%rbp)	#, i
.L539:
	.loc 1 1366 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# i, tmp472
	cmpl	-136(%rbp), %eax	# nparens, tmp472
	jle	.L543	#,
	.loc 1 1380 0 is_stmt 1
	cmpl	$0, -144(%rbp)	#, global
	je	.L544	#,
	.loc 1 1381 0
	movq	-96(%rbp), %rax	# dynpm, tmp473
	movl	88(%rax), %eax	# dynpm_44->op_pmflags, D.18183
	andl	$512, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L545	#,
.LBB72:
	.loc 1 1382 0
	movq	$0, -112(%rbp)	#, mg
	.loc 1 1383 0
	movq	-120(%rbp), %rax	# targ, tmp474
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$6, %eax	#, D.18183
	jbe	.L546	#,
	.loc 1 1383 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# targ, tmp475
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_383].xmg_magic, D.18186
	testq	%rax, %rax	# D.18186
	je	.L546	#,
	.loc 1 1384 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp476
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp476,
	call	Perl_mg_find	#
	movq	%rax, -112(%rbp)	# tmp477, mg
.L546:
	.loc 1 1385 0
	cmpq	$0, -112(%rbp)	#, mg
	jne	.L547	#,
	.loc 1 1386 0
	movq	-120(%rbp), %rax	# targ, tmp478
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp478,
	call	Perl_sv_magic	#
	.loc 1 1387 0
	movq	-120(%rbp), %rax	# targ, tmp479
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp479,
	call	Perl_mg_find	#
	movq	%rax, -112(%rbp)	# tmp480, mg
.L547:
	.loc 1 1389 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %eax	# *_387, D.18178
	cmpl	$-1, %eax	#, D.18178
	je	.L545	#,
	.loc 1 1390 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %edx	# *_389, D.18178
	movq	-112(%rbp), %rax	# mg, tmp481
	movl	%edx, 40(%rax)	# D.18178, mg_33->mg_len
	.loc 1 1391 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %edx	# *_391, D.18178
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %eax	# *_393, D.18178
	cmpl	%eax, %edx	# D.18178, D.18178
	jne	.L548	#,
	.loc 1 1392 0
	movq	-112(%rbp), %rax	# mg, tmp482
	movzbl	19(%rax), %eax	# mg_33->mg_flags, D.18177
	orl	$1, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-112(%rbp), %rax	# mg, tmp483
	movb	%dl, 19(%rax)	# D.18177, mg_33->mg_flags
	jmp	.L545	#
.L548:
	.loc 1 1394 0
	movq	-112(%rbp), %rax	# mg, tmp484
	movzbl	19(%rax), %eax	# mg_33->mg_flags, D.18177
	andl	$-2, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-112(%rbp), %rax	# mg, tmp485
	movb	%dl, 19(%rax)	# D.18177, mg_33->mg_flags
.L545:
.LBE72:
	.loc 1 1397 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %eax	# *_399, D.18178
	.loc 1 1398 0
	cmpl	$-1, %eax	#, D.18178
	je	.L549	#,
	.loc 1 1398 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %edx	# *_401, D.18178
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %eax	# *_403, D.18178
	cmpl	%eax, %edx	# D.18178, D.18178
	jne	.L549	#,
	.loc 1 1398 0 discriminator 3
	movl	$1, %eax	#, iftmp.544
	jmp	.L550	#
.L549:
	.loc 1 1398 0 discriminator 2
	movl	$0, %eax	#, iftmp.544
.L550:
	.loc 1 1397 0 is_stmt 1
	movl	%eax, -160(%rbp)	# iftmp.544, had_zerolen
	.loc 1 1399 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1400 0
	orl	$24, -172(%rbp)	#, r_flags
	.loc 1 1401 0
	jmp	.L519	#
.L544:
	.loc 1 1403 0
	cmpl	$0, -136(%rbp)	#, nparens
	jne	.L551	#,
.LBB73:
	.loc 1 1404 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.545
	movq	%rax, %rdx	# PL_stack_max.545, PL_stack_max.546
	movq	%r12, %rax	# sp, sp.547
	subq	%rax, %rdx	# sp.547, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	cmpq	$7, %rax	#, D.18182
	jg	.L552	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L552:
	.loc 1 1404 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	$PL_sv_yes, (%r12)	#, *sp_414
.L551:
.LBE73:
	.loc 1 1405 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.548
	cmpl	-148(%rbp), %eax	# oldsave, PL_savestack_ix.548
	jle	.L553	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# oldsave, tmp486
	movl	%eax, %edi	# tmp486,
	call	Perl_leave_scope	#
.L553:
	.loc 1 1406 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.549
	movq	(%rax), %rax	# PL_op.549_417->op_next, D.18176
	jmp	.L573	#
.L534:
.LBE71:
	.loc 1 1409 0
	cmpl	$0, -144(%rbp)	#, global
	je	.L554	#,
.LBB74:
	.loc 1 1410 0
	movq	$0, -104(%rbp)	#, mg
	.loc 1 1411 0
	movq	-120(%rbp), %rax	# targ, tmp487
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$6, %eax	#, D.18183
	jbe	.L555	#,
	.loc 1 1411 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# targ, tmp488
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_422].xmg_magic, D.18186
	testq	%rax, %rax	# D.18186
	je	.L555	#,
	.loc 1 1412 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp489
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp489,
	call	Perl_mg_find	#
	movq	%rax, -104(%rbp)	# tmp490, mg
.L555:
	.loc 1 1413 0
	cmpq	$0, -104(%rbp)	#, mg
	jne	.L556	#,
	.loc 1 1414 0
	movq	-120(%rbp), %rax	# targ, tmp491
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_magic	#
	.loc 1 1415 0
	movq	-120(%rbp), %rax	# targ, tmp492
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp492,
	call	Perl_mg_find	#
	movq	%rax, -104(%rbp)	# tmp493, mg
.L556:
	.loc 1 1417 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %eax	# *_426, D.18178
	cmpl	$-1, %eax	#, D.18178
	je	.L554	#,
	.loc 1 1418 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %edx	# *_428, D.18178
	movq	-104(%rbp), %rax	# mg, tmp494
	movl	%edx, 40(%rax)	# D.18178, mg_35->mg_len
	.loc 1 1419 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movl	(%rax), %edx	# *_430, D.18178
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	(%rax), %eax	# *_432, D.18178
	cmpl	%eax, %edx	# D.18178, D.18178
	jne	.L557	#,
	.loc 1 1420 0
	movq	-104(%rbp), %rax	# mg, tmp495
	movzbl	19(%rax), %eax	# mg_35->mg_flags, D.18177
	orl	$1, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-104(%rbp), %rax	# mg, tmp496
	movb	%dl, 19(%rax)	# D.18177, mg_35->mg_flags
	jmp	.L554	#
.L557:
	.loc 1 1422 0
	movq	-104(%rbp), %rax	# mg, tmp497
	movzbl	19(%rax), %eax	# mg_35->mg_flags, D.18177
	andl	$-2, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-104(%rbp), %rax	# mg, tmp498
	movb	%dl, 19(%rax)	# D.18177, mg_35->mg_flags
.L554:
.LBE74:
	.loc 1 1425 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.550
	cmpl	-148(%rbp), %eax	# oldsave, PL_savestack_ix.550
	jle	.L558	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# oldsave, tmp499
	movl	%eax, %edi	# tmp499,
	call	Perl_leave_scope	#
.L558:
	.loc 1 1426 0 is_stmt 1
	addq	$8, %r12	#, sp
	movq	$PL_sv_yes, (%r12)	#, *sp_439
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.551
	movq	(%rax), %rax	# PL_op.551_440->op_next, D.18176
	jmp	.L573	#
.L574:
	.loc 1 1431 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	orl	$524288, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_22->reganch
.L559:
	.loc 1 1432 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$524288, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L560	#,
	.loc 1 1432 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L560:
	.loc 1 1433 0 is_stmt 1
	movq	%r14, PL_curpm(%rip)	# pm, PL_curpm
	.loc 1 1434 0
	movq	-96(%rbp), %rax	# dynpm, tmp500
	movl	88(%rax), %eax	# dynpm_44->op_pmflags, D.18183
	andl	$2, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L561	#,
	.loc 1 1435 0
	movq	-96(%rbp), %rax	# dynpm, tmp501
	movzbl	96(%rax), %eax	# dynpm_44->op_pmdynflags, D.18177
	orl	$1, %eax	#, D.18177
	movl	%eax, %edx	# D.18177, D.18177
	movq	-96(%rbp), %rax	# dynpm, tmp502
	movb	%dl, 96(%rax)	# D.18177, dynpm_44->op_pmdynflags
.L561:
	.loc 1 1436 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$262144, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L562	#,
	.loc 1 1437 0
	movq	48(%rbx), %rax	# rx_22->subbeg, D.18188
	movq	%rax, %rdi	# D.18188,
	call	Perl_safesysfree	#
.L562:
	.loc 1 1438 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$-262145, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_22->reganch
	.loc 1 1439 0
	movq	$0, 48(%rbx)	#, rx_22->subbeg
	.loc 1 1440 0
	cmpl	$0, -144(%rbp)	#, global
	je	.L563	#,
	.loc 1 1441 0
	movq	-80(%rbp), %rax	# truebase, tmp503
	movq	%rax, 48(%rbx)	# tmp503, rx_22->subbeg
	.loc 1 1442 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movq	%r13, %rcx	# s, s.552
	movq	-80(%rbp), %rdx	# truebase, truebase.553
	subq	%rdx, %rcx	# truebase.553, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, (%rax)	# D.18178, *_218
	.loc 1 1443 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	andl	$268435456, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	je	.L564	#,
.LBB75:
	.loc 1 1444 0
	movl	72(%rbx), %eax	# rx_22->minlen, D.18178
	movl	%eax, %esi	# D.18178,
	movq	%r13, %rdi	# s,
	call	Perl_utf8_hop	#
	movq	%rax, -64(%rbp)	# tmp504, t
	.loc 1 1445 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movq	-64(%rbp), %rcx	# t, t.554
	movq	-80(%rbp), %rdx	# truebase, truebase.555
	subq	%rdx, %rcx	# truebase.555, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, (%rax)	# D.18178, *_227
.LBE75:
	jmp	.L565	#
.L564:
	.loc 1 1448 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movq	%r13, %rcx	# s, s.556
	movq	-80(%rbp), %rdx	# truebase, truebase.557
	subq	%rdx, %rcx	# truebase.557, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, %ecx	# D.18182, D.18189
	movl	72(%rbx), %edx	# rx_22->minlen, D.18178
	addl	%ecx, %edx	# D.18189, D.18189
	movl	%edx, (%rax)	# D.18178, *_232
.L565:
	.loc 1 1450 0
	movq	-88(%rbp), %rdx	# strend, strend.558
	movq	-80(%rbp), %rax	# truebase, truebase.559
	subq	%rax, %rdx	# truebase.559, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	movl	%eax, 64(%rbx)	# D.18178, rx_22->sublen
	.loc 1 1451 0
	jmp	.L531	#
.L563:
	.loc 1 1453 0
	movzbl	PL_sawampersand(%rip), %eax	# PL_sawampersand, PL_sawampersand.560
	testb	%al, %al	# PL_sawampersand.560
	je	.L566	#,
.LBB76:
	.loc 1 1456 0
	movq	-88(%rbp), %rdx	# strend, strend.561
	movq	%r15, %rax	# t, t.562
	subq	%rax, %rdx	# t.562, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	movl	%eax, %esi	# D.18178,
	movq	%r15, %rdi	# t,
	call	Perl_savepvn	#
	movq	%rax, 48(%rbx)	# D.18188, rx_22->subbeg
	.loc 1 1457 0
	movq	-88(%rbp), %rdx	# strend, strend.563
	movq	%r15, %rax	# t, t.564
	subq	%rax, %rdx	# t.564, D.18182
	movq	%rdx, %rax	# D.18182, D.18182
	movl	%eax, 64(%rbx)	# D.18178, rx_22->sublen
	.loc 1 1458 0
	movl	92(%rbx), %eax	# rx_22->reganch, D.18183
	orl	$262144, %eax	#, D.18183
	movl	%eax, 92(%rbx)	# D.18183, rx_22->reganch
	.loc 1 1459 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movq	%r13, %rcx	# s, s.565
	movq	%r15, %rdx	# t, t.566
	subq	%rdx, %rcx	# t.566, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, (%rax)	# D.18178, *_257
	movl	(%rax), %eax	# *_257, tmp505
	movl	%eax, -140(%rbp)	# tmp505, off
	.loc 1 1460 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movl	72(%rbx), %ecx	# rx_22->minlen, D.18178
	movl	-140(%rbp), %edx	# off, tmp506
	addl	%ecx, %edx	# D.18178, D.18178
	movl	%edx, (%rax)	# D.18178, *_263
.LBE76:
	jmp	.L567	#
.L566:
	.loc 1 1463 0
	movq	(%rbx), %rax	# rx_22->startp, D.18185
	movq	%r13, %rcx	# s, s.567
	movq	-80(%rbp), %rdx	# truebase, truebase.568
	subq	%rdx, %rcx	# truebase.568, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, (%rax)	# D.18178, *_266
	.loc 1 1464 0
	movq	8(%rbx), %rax	# rx_22->endp, D.18185
	movq	%r13, %rcx	# s, s.569
	movq	-80(%rbp), %rdx	# truebase, truebase.570
	subq	%rdx, %rcx	# truebase.570, D.18182
	movq	%rcx, %rdx	# D.18182, D.18182
	movl	%edx, %ecx	# D.18182, D.18189
	movl	72(%rbx), %edx	# rx_22->minlen, D.18178
	addl	%ecx, %edx	# D.18189, D.18189
	movl	%edx, (%rax)	# D.18178, *_271
.L567:
	.loc 1 1466 0
	movl	$0, 88(%rbx)	#, rx_22->lastcloseparen
	movl	88(%rbx), %eax	# rx_22->lastcloseparen, D.18183
	movl	%eax, 84(%rbx)	# D.18183, rx_22->lastparen
	movl	84(%rbx), %eax	# rx_22->lastparen, D.18183
	movl	%eax, 80(%rbx)	# D.18183, rx_22->nparens
	.loc 1 1467 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.571
	cmpl	-148(%rbp), %eax	# oldsave, PL_savestack_ix.571
	jle	.L568	#,
	.loc 1 1467 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# oldsave, tmp507
	movl	%eax, %edi	# tmp507,
	call	Perl_leave_scope	#
.L568:
	.loc 1 1468 0 is_stmt 1
	addq	$8, %r12	#, sp
	movq	$PL_sv_yes, (%r12)	#, *sp_283
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.572
	movq	(%rax), %rax	# PL_op.572_284->op_next, D.18176
	jmp	.L573	#
.L522:
.L569:
	.loc 1 1472 0
	cmpl	$0, -144(%rbp)	#, global
	je	.L570	#,
	.loc 1 1472 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# dynpm, tmp508
	movl	88(%rax), %eax	# dynpm_44->op_pmflags, D.18183
	andl	$512, %eax	#, D.18183
	testl	%eax, %eax	# D.18183
	jne	.L570	#,
	.loc 1 1473 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp509
	movl	12(%rax), %eax	# targ_7->sv_flags, D.18183
	movzbl	%al, %eax	# D.18183, D.18183
	cmpl	$6, %eax	#, D.18183
	jbe	.L570	#,
	.loc 1 1473 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# targ, tmp510
	movq	(%rax), %rax	# targ_7->sv_any, D.18184
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_446].xmg_magic, D.18186
	testq	%rax, %rax	# D.18186
	je	.L570	#,
.LBB77:
	.loc 1 1474 0 is_stmt 1
	movq	-120(%rbp), %rax	# targ, tmp511
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp511,
	call	Perl_mg_find	#
	movq	%rax, -56(%rbp)	# tmp512, mg
	.loc 1 1475 0
	cmpq	$0, -56(%rbp)	#, mg
	je	.L570	#,
	.loc 1 1476 0
	movq	-56(%rbp), %rax	# mg, tmp513
	movl	$-1, 40(%rax)	#, mg_448->mg_len
.L570:
.LBE77:
	.loc 1 1479 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.573
	cmpl	-148(%rbp), %eax	# oldsave, PL_savestack_ix.573
	jle	.L571	#,
	.loc 1 1479 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# oldsave, tmp514
	movl	%eax, %edi	# tmp514,
	call	Perl_leave_scope	#
.L571:
	.loc 1 1480 0 is_stmt 1
	cmpl	$1, -152(%rbp)	#, gimme
	jne	.L572	#,
	.loc 1 1481 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.574
	movq	(%rax), %rax	# PL_op.574_450->op_next, D.18176
	jmp	.L573	#
.L572:
	.loc 1 1482 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_no, (%r12)	#, *sp_452
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.575
	movq	(%rax), %rax	# PL_op.575_453->op_next, D.18176
.L573:
	.loc 1 1483 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_pp_match, .-Perl_pp_match
	.section	.rodata
.LC18:
	.string	"READLINE"
.LC19:
	.string	"-"
	.align 8
.LC20:
	.string	"glob failed (can't start child: %s)"
.LC21:
	.string	", core dumped"
	.align 8
.LC22:
	.string	"glob failed (child exited with status %d%s)"
.LC23:
	.string	"$&*(){}[]'\";\\|?<>~`"
	.align 8
.LC24:
	.string	"utf8 \"\\x%02X\" does not map to Unicode"
	.text
	.globl	Perl_do_readline
	.type	Perl_do_readline, @function
Perl_do_readline:
.LFB32:
	.loc 1 1487 0
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
	.loc 1 1488 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.577
	movzbl	36(%rax), %eax	# PL_op.577_35->op_flags, D.18196
	movzbl	%al, %eax	# D.18196, D.18197
	andl	$64, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L576	#,
	.loc 1 1488 0 is_stmt 0 discriminator 1
	movq	%r12, %rax	# sp, sp.578
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.578_39, iftmp.576
	jmp	.L577	#
.L576:
	.loc 1 1488 0 discriminator 2
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.579
	movq	PL_op(%rip), %rax	# PL_op, PL_op.580
	movq	24(%rax), %rax	# PL_op.580_43->op_targ, D.18198
	salq	$3, %rax	#, D.18198
	addq	%rdx, %rax	# PL_curpad.579, D.18199
	movq	(%rax), %rax	# *_46, iftmp.576
.L577:
	.loc 1 1488 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.576, targ
	.loc 1 1490 0 is_stmt 1 discriminator 3
	movq	$0, -120(%rbp)	#, tmplen
	.loc 1 1493 0 discriminator 3
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.582
	testq	%rax, %rax	# PL_last_in_gv.582
	je	.L578	#,
	.loc 1 1493 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.583
	movl	12(%rax), %eax	# MEM[(struct SV *)PL_last_in_gv.583_51].sv_flags, D.18200
	movzbl	%al, %eax	# D.18200, D.18200
	cmpl	$13, %eax	#, D.18200
	jne	.L578	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.584
	movq	(%rax), %rax	# PL_last_in_gv.584_54->sv_any, D.18201
	movq	56(%rax), %rax	# _55->xgv_gp, D.18202
	testq	%rax, %rax	# D.18202
	je	.L578	#,
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.585
	movq	(%rax), %rax	# PL_last_in_gv.585_57->sv_any, D.18201
	movq	56(%rax), %rax	# _58->xgv_gp, D.18202
	movq	16(%rax), %rax	# _59->gp_io, iftmp.581
	jmp	.L579	#
.L578:
	.loc 1 1493 0 discriminator 2
	movl	$0, %eax	#, iftmp.581
.L579:
	.loc 1 1493 0 discriminator 3
	movq	%rax, %r13	# iftmp.581, io
	.loc 1 1494 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.586
	movzwl	32(%rax), %eax	# PL_op.586_63->op_type, D.18203
	movzwl	%ax, %r14d	# D.18203, type
	.loc 1 1495 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.588
	movzbl	36(%rax), %eax	# PL_op.588_66->op_flags, D.18196
	movzbl	%al, %eax	# D.18196, D.18197
	andl	$3, %eax	#, D.18197
	cmpl	$1, %eax	#, D.18197
	je	.L580	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.590
	movzbl	36(%rax), %eax	# PL_op.590_70->op_flags, D.18196
	movzbl	%al, %eax	# D.18196, D.18197
	andl	$3, %eax	#, D.18197
	cmpl	$2, %eax	#, D.18197
	je	.L581	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.592
	movzbl	36(%rax), %eax	# PL_op.592_74->op_flags, D.18196
	movzbl	%al, %eax	# D.18196, D.18197
	andl	$3, %eax	#, D.18197
	cmpl	$3, %eax	#, D.18197
	je	.L582	#,
	call	Perl_block_gimme	#
	jmp	.L585	#
.L582:
	.loc 1 1495 0 discriminator 2
	movl	$1, %eax	#, iftmp.591
	jmp	.L585	#
.L581:
	movl	$0, %eax	#, iftmp.589
	jmp	.L585	#
.L580:
	movl	$128, %eax	#, iftmp.587
.L585:
	.loc 1 1495 0 discriminator 3
	movl	%eax, -132(%rbp)	# iftmp.587, gimme
	.loc 1 1498 0 is_stmt 1 discriminator 3
	testq	%r13, %r13	# io
	je	.L586	#,
	.loc 1 1498 0 is_stmt 0 discriminator 1
	movl	12(%r13), %eax	# MEM[(struct SV *)io_62].sv_flags, D.18200
	andl	$32768, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L587	#,
	movl	$113, %esi	#,
	movq	%r13, %rdi	# io,
	call	Perl_mg_find	#
	jmp	.L588	#
.L587:
	.loc 1 1498 0 discriminator 2
	movl	$0, %eax	#, iftmp.593
.L588:
	.loc 1 1498 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.593, mg
	cmpq	$0, -80(%rbp)	#, mg
	je	.L586	#,
.LBB78:
	.loc 1 1499 0 is_stmt 1
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.594
	addq	$4, %rax	#, PL_markstack_ptr.595
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.595, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.596
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.597
	cmpq	%rax, %rdx	# PL_markstack_max.597, PL_markstack_ptr.596
	jne	.L589	#,
	.loc 1 1499 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L589:
	.loc 1 1499 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.598
	movq	%r12, %rcx	# sp, sp.599
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.600
	subq	%rdx, %rcx	# PL_stack_base.601, D.18204
	movq	%rcx, %rdx	# D.18204, D.18204
	sarq	$3, %rdx	#, tmp458
	movl	%edx, (%rax)	# D.18197, *PL_markstack_ptr.598_94
.LBE78:
.LBB79:
	.loc 1 1500 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.602
	movq	%rax, %rdx	# PL_stack_max.602, PL_stack_max.603
	movq	%r12, %rax	# sp, sp.604
	subq	%rax, %rdx	# sp.604, D.18204
	movq	%rdx, %rax	# D.18204, D.18204
	cmpq	$7, %rax	#, D.18204
	jg	.L590	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L590:
	.loc 1 1500 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-80(%rbp), %rax	# mg, tmp459
	movq	24(%rax), %rax	# mg_89->mg_obj, D.18206
	testq	%rax, %rax	# D.18206
	je	.L591	#,
	.loc 1 1500 0 discriminator 1
	movq	-80(%rbp), %rax	# mg, tmp460
	movq	24(%rax), %rax	# mg_89->mg_obj, iftmp.605
	jmp	.L592	#
.L591:
	.loc 1 1500 0 discriminator 2
	movq	%r13, %rdi	# io,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18206,
	call	Perl_sv_2mortal	#
.L592:
	.loc 1 1500 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.605, *sp_107
.LBE79:
	.loc 1 1501 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1502 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 1503 0 discriminator 3
	movl	-132(%rbp), %eax	# gimme, tmp461
	movl	%eax, %esi	# tmp461,
	movl	$.LC18, %edi	#,
	call	Perl_call_method	#
	.loc 1 1504 0 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 1505 0 discriminator 3
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1506 0 discriminator 3
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L593	#,
.LBB80:
	.loc 1 1507 0
	movq	%r12, %rax	# sp, sp.606
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.606_114, tmp462
	movq	%rax, -72(%rbp)	# tmp462, result
	.loc 1 1508 0
	movq	-88(%rbp), %rax	# targ, tmp463
	cmpq	-72(%rbp), %rax	# result, tmp463
	je	.L594	#,
	.loc 1 1508 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rcx	# result, tmp464
	movq	-88(%rbp), %rax	# targ, tmp465
	movl	$18, %edx	#,
	movq	%rcx, %rsi	# tmp464,
	movq	%rax, %rdi	# tmp465,
	call	Perl_sv_setsv_flags	#
.L594:
.LBB81:
	.loc 1 1509 0 is_stmt 1
	movq	-88(%rbp), %rax	# targ, tmp466
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$16384, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L595	#,
	.loc 1 1509 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp467
	movq	%rax, %rdi	# tmp467,
	call	Perl_mg_set	#
.L595:
	.loc 1 1509 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-88(%rbp), %rax	# targ, tmp468
	movq	%rax, (%r12)	# tmp468, *sp_119
.L593:
.LBE81:
.LBE80:
	.loc 1 1511 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.607
	movq	(%rax), %rax	# PL_op.607_121->op_next, D.18195
	jmp	.L596	#
.L586:
	.loc 1 1513 0
	movq	$0, -104(%rbp)	#, fp
	.loc 1 1514 0
	testq	%r13, %r13	# io
	je	.L597	#,
	.loc 1 1515 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	56(%rax), %rax	# _124->xio_ifp, tmp469
	movq	%rax, -104(%rbp)	# tmp469, fp
	.loc 1 1516 0
	cmpq	$0, -104(%rbp)	#, fp
	jne	.L598	#,
	.loc 1 1517 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _126->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L599	#,
	.loc 1 1518 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _130->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$2, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L600	#,
	.loc 1 1519 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	$0, 80(%rax)	#, _134->xio_lines
	.loc 1 1520 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.609
	movq	(%rax), %rax	# PL_last_in_gv.609_135->sv_any, D.18201
	movq	56(%rax), %rax	# _136->xgv_gp, D.18202
	movq	32(%rax), %rax	# _137->gp_av, D.18209
	testq	%rax, %rax	# D.18209
	je	.L601	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.610
	movq	(%rax), %rax	# PL_last_in_gv.610_139->sv_any, D.18201
	movq	56(%rax), %rax	# _140->xgv_gp, D.18202
	movq	32(%rax), %rax	# _141->gp_av, iftmp.608
	jmp	.L602	#
.L601:
	.loc 1 1520 0 discriminator 2
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.611
	movq	%rax, %rdi	# PL_last_in_gv.611,
	call	Perl_gv_AVadd	#
	movq	(%rax), %rax	# _144->sv_any, D.18201
	movq	56(%rax), %rax	# _145->xgv_gp, D.18202
	movq	32(%rax), %rax	# _146->gp_av, iftmp.608
.L602:
	.loc 1 1520 0 discriminator 3
	movq	%rax, %rdi	# iftmp.608,
	call	Perl_av_len	#
	testl	%eax, %eax	# D.18197
	jns	.L600	#,
	.loc 1 1521 0 is_stmt 1
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	0(%r13), %rdx	# io_62->sv_any, D.18207
	movzbl	163(%rdx), %edx	# _150->xio_flags, D.18208
	andl	$-3, %edx	#, D.18208
	movb	%dl, 163(%rax)	# D.18208, _149->xio_flags
	.loc 1 1522 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.612
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# PL_last_in_gv.612,
	call	Perl_do_open	#
	.loc 1 1523 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.613
	movq	(%rax), %rax	# PL_last_in_gv.613_154->sv_any, D.18201
	movq	56(%rax), %rax	# _155->xgv_gp, D.18202
	movq	(%rax), %rax	# _156->gp_sv, D.18206
	movl	$1, %edx	#,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.18206,
	call	Perl_sv_setpvn	#
	.loc 1 1524 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.614
	movq	(%rax), %rax	# PL_last_in_gv.614_158->sv_any, D.18201
	movq	56(%rax), %rax	# _159->xgv_gp, D.18202
	movq	(%rax), %rax	# _160->gp_sv, D.18206
	movl	12(%rax), %eax	# _161->sv_flags, D.18200
	andl	$16384, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L603	#,
	.loc 1 1524 0 is_stmt 0 discriminator 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.615
	movq	(%rax), %rax	# PL_last_in_gv.615_164->sv_any, D.18201
	movq	56(%rax), %rax	# _165->xgv_gp, D.18202
	movq	(%rax), %rax	# _166->gp_sv, D.18206
	movq	%rax, %rdi	# D.18206,
	call	Perl_mg_set	#
.L603:
	.loc 1 1525 0 is_stmt 1
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	56(%rax), %rax	# _168->xio_ifp, tmp470
	movq	%rax, -104(%rbp)	# tmp470, fp
	.loc 1 1526 0
	jmp	.L604	#
.L600:
	.loc 1 1529 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.616
	movq	%rax, %rdi	# PL_last_in_gv.616,
	call	Perl_nextargv	#
	movq	%rax, -104(%rbp)	# tmp471, fp
	.loc 1 1530 0
	cmpq	$0, -104(%rbp)	#, fp
	jne	.L597	#,
	.loc 1 1531 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.617
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_last_in_gv.617,
	call	Perl_do_close	#
	jmp	.L597	#
.L599:
	.loc 1 1534 0
	cmpl	$25, %r14d	#, type
	jne	.L597	#,
	.loc 1 1535 0
	movq	%r12, %rax	# sp, sp.618
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.618_173, D.18206
	movq	%r13, %rsi	# io,
	movq	%rax, %rdi	# D.18206,
	call	Perl_start_glob	#
	movq	%rax, -104(%rbp)	# tmp472, fp
	jmp	.L597	#
.L598:
	.loc 1 1537 0
	cmpl	$25, %r14d	#, type
	jne	.L607	#,
	.loc 1 1538 0
	subq	$8, %r12	#, sp
	jmp	.L597	#
.L607:
	.loc 1 1539 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.619
	movq	80(%rax), %rax	# PL_curcop.619_178->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	je	.L608	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.620
	movq	80(%rax), %rax	# PL_curcop.620_180->cop_warnings, D.18206
	cmpq	$32, %rax	#, D.18206
	je	.L608	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.621
	movq	80(%rax), %rax	# PL_curcop.621_182->cop_warnings, D.18206
	cmpq	$16, %rax	#, D.18206
	je	.L609	#,
	.loc 1 1539 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.622
	movq	80(%rax), %rax	# PL_curcop.622_184->cop_warnings, D.18206
	movq	(%rax), %rax	# _185->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_186].xpv_pv, D.18212
	addq	$1, %rax	#, D.18212
	movzbl	(%rax), %eax	# *_188, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$4, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L609	#,
.L608:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.623
	movq	80(%rax), %rax	# PL_curcop.623_192->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	jne	.L597	#,
	.loc 1 1539 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.624
	movzbl	%al, %eax	# PL_dowarn.624, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L597	#,
.L609:
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	162(%rax), %eax	# _197->xio_type, D.18208
	cmpb	$62, %al	#, D.18208
	jne	.L597	#,
	.loc 1 1540 0 is_stmt 1
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.625
	movl	$-2, %edx	#,
	movq	%r13, %rsi	# io,
	movq	%rax, %rdi	# PL_last_in_gv.625,
	call	Perl_report_evil_fh	#
.L597:
	.loc 1 1543 0
	cmpq	$0, -104(%rbp)	#, fp
	jne	.L604	#,
	.loc 1 1544 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.626
	movq	80(%rax), %rax	# PL_curcop.626_200->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	je	.L610	#,
	.loc 1 1544 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.627
	movq	80(%rax), %rax	# PL_curcop.627_202->cop_warnings, D.18206
	cmpq	$32, %rax	#, D.18206
	je	.L610	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.628
	movq	80(%rax), %rax	# PL_curcop.628_204->cop_warnings, D.18206
	cmpq	$16, %rax	#, D.18206
	je	.L611	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.629
	movq	80(%rax), %rax	# PL_curcop.629_206->cop_warnings, D.18206
	movq	(%rax), %rax	# _207->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_208].xpv_pv, D.18212
	addq	$1, %rax	#, D.18212
	movzbl	(%rax), %eax	# *_210, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L611	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.630
	movq	80(%rax), %rax	# PL_curcop.630_214->cop_warnings, D.18206
	movq	(%rax), %rax	# _215->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_216].xpv_pv, D.18212
	addq	$1, %rax	#, D.18212
	movzbl	(%rax), %eax	# *_218, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$16, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L611	#,
.L610:
	.loc 1 1544 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.631
	movq	80(%rax), %rax	# PL_curcop.631_222->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	jne	.L612	#,
	.loc 1 1544 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.632
	movzbl	%al, %eax	# PL_dowarn.632, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L612	#,
.L611:
	.loc 1 1545 0 is_stmt 1
	testq	%r13, %r13	# io
	je	.L613	#,
	.loc 1 1545 0 is_stmt 0 discriminator 1
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _227->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$2, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L612	#,
.L613:
	.loc 1 1546 0 is_stmt 1
	cmpl	$25, %r14d	#, type
	jne	.L614	#,
	.loc 1 1549 0
	call	__errno_location	#
	.loc 1 1547 0
	movl	(%rax), %eax	# *_231, D.18197
	movl	%eax, %edi	# D.18197,
	call	strerror	#
	movq	%rax, %rdx	# D.18212,
	movl	$.LC20, %esi	#,
	movl	$4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L612	#
.L614:
	.loc 1 1551 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.633
	movzwl	32(%rax), %eax	# PL_op.633_234->op_type, D.18203
	movzwl	%ax, %edx	# D.18203, D.18197
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.634
	movq	%r13, %rsi	# io,
	movq	%rax, %rdi	# PL_last_in_gv.634,
	call	Perl_report_evil_fh	#
.L612:
	.loc 1 1553 0
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L615	#,
	.loc 1 1555 0
	cmpl	$27, %r14d	#, type
	je	.L616	#,
	.loc 1 1556 0
	movq	-88(%rbp), %rax	# targ, tmp473
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$9961472, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L617	#,
	.loc 1 1556 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp474
	movq	%rax, %rdi	# tmp474,
	call	Perl_sv_force_normal	#
.L617:
	.loc 1 1557 0 is_stmt 1
	movq	-88(%rbp), %rax	# targ, tmp475
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$1223753727, %eax	#, D.18200
	movl	%eax, %edx	# D.18200, D.18200
	movq	-88(%rbp), %rax	# targ, tmp476
	movl	%edx, 12(%rax)	# D.18200, targ_48->sv_flags
	movq	-88(%rbp), %rax	# targ, tmp477
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$2097152, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L616	#,
	.loc 1 1557 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp478
	movq	%rax, %rdi	# tmp478,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.18197
	je	.L616	#,
	.loc 1 1557 0
	nop
.L616:
.LBB82:
	.loc 1 1559 0 is_stmt 1
	movq	-88(%rbp), %rax	# targ, tmp479
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$16384, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L619	#,
	.loc 1 1559 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp480
	movq	%rax, %rdi	# tmp480,
	call	Perl_mg_set	#
.L619:
	.loc 1 1559 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-88(%rbp), %rax	# targ, tmp481
	movq	%rax, (%r12)	# tmp481, *sp_249
.L615:
.LBE82:
	.loc 1 1561 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.636
	movq	(%rax), %rax	# PL_op.636_251->op_next, D.18195
	jmp	.L596	#
.L604:
	.loc 1 1564 0
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L620	#,
	.loc 1 1565 0
	movq	-88(%rbp), %rbx	# targ, sv
	.loc 1 1566 0
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	andl	$524288, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L621	#,
	.loc 1 1567 0
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_unref	#
.L621:
	.loc 1 1568 0
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	movzbl	%al, %eax	# D.18200, D.18200
	cmpl	$3, %eax	#, D.18200
	ja	.L622	#,
	.loc 1 1568 0 is_stmt 0 discriminator 2
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.18208
	je	.L624	#,
.L622:
	.loc 1 1568 0 discriminator 1
	nop
.L624:
	.loc 1 1569 0 is_stmt 1
	movq	(%rbx), %rax	# sv_253->sv_any, D.18211
	movq	16(%rax), %rax	# MEM[(struct XPV *)_261].xpv_len, tmp482
	movq	%rax, -120(%rbp)	# tmp482, tmplen
	.loc 1 1570 0
	cmpq	$0, -120(%rbp)	#, tmplen
	jne	.L625	#,
	.loc 1 1570 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	andl	$8388608, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	jne	.L625	#,
	.loc 1 1571 0 is_stmt 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_grow	#
.L625:
	.loc 1 1572 0
	movq	$0, -112(%rbp)	#, offset
	.loc 1 1573 0
	cmpl	$27, %r14d	#, type
	jne	.L630	#,
	.loc 1 1573 0 is_stmt 0 discriminator 1
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	andl	$118423552, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L630	#,
	.loc 1 1574 0 is_stmt 1
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	andl	$262144, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	jne	.L627	#,
.LBB83:
	.loc 1 1576 0
	movl	12(%rbx), %eax	# sv_253->sv_flags, D.18200
	andl	$10223616, %eax	#, D.18200
	cmpl	$262144, %eax	#, D.18200
	jne	.L628	#,
	.loc 1 1576 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_253->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_272].xpv_cur, n_a.638
	movq	%rax, -128(%rbp)	# n_a.638, n_a
	jmp	.L627	#
.L628:
	.loc 1 1576 0 discriminator 2
	leaq	-128(%rbp), %rax	#, tmp483
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp483,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_pvn_force_flags	#
.L627:
.LBE83:
	.loc 1 1578 0 is_stmt 1
	movq	(%rbx), %rax	# sv_253->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_275].xpv_cur, tmp484
	movq	%rax, -112(%rbp)	# tmp484, offset
	jmp	.L630	#
.L620:
	.loc 1 1582 0
	movl	$80, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rdi	# D.18206,
	call	Perl_sv_2mortal	#
	movq	%rax, %rbx	#, sv
	.loc 1 1583 0
	movq	$0, -112(%rbp)	#, offset
.L630:
	.loc 1 1599 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1600 0
	movq	-112(%rbp), %rax	# offset, tmp485
	movl	%eax, %edx	# tmp485, D.18197
	movq	-104(%rbp), %rax	# fp, tmp486
	movq	%rax, %rsi	# tmp486,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_gets	#
	testq	%rax, %rax	# D.18212
	jne	.L631	#,
	.loc 1 1601 0
	cmpl	$25, %r14d	#, type
	je	.L632	#,
	.loc 1 1602 0
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L632	#,
	.loc 1 1602 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_282].xpv_cur, D.18198
	testq	%rax, %rax	# D.18198
	jne	.L632	#,
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _284->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$32, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L632	#,
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.639
	movl	12(%rax), %eax	# PL_rs.639_288->sv_flags, D.18200
	andl	$118423552, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	jne	.L632	#,
	.loc 1 1603 0 is_stmt 1
	movq	-104(%rbp), %rax	# fp, tmp487
	movq	%rax, %rdi	# tmp487,
	call	Perl_PerlIO_error	#
	testl	%eax, %eax	# D.18197
	je	.L631	#,
.L632:
	.loc 1 1605 0
	movq	-104(%rbp), %rax	# fp, tmp488
	movq	%rax, %rdi	# tmp488,
	call	Perl_PerlIO_clearerr	#
	.loc 1 1606 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _292->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L633	#,
	.loc 1 1607 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.640
	movq	%rax, %rdi	# PL_last_in_gv.640,
	call	Perl_nextargv	#
	movq	%rax, -104(%rbp)	# tmp489, fp
	.loc 1 1608 0
	cmpq	$0, -104(%rbp)	#, fp
	je	.L634	#,
	.loc 1 1609 0
	jmp	.L635	#
.L634:
	.loc 1 1610 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.641
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_last_in_gv.641,
	call	Perl_do_close	#
	jmp	.L636	#
.L633:
	.loc 1 1612 0
	cmpl	$25, %r14d	#, type
	jne	.L636	#,
	.loc 1 1613 0
	movq	PL_last_in_gv(%rip), %rax	# PL_last_in_gv, PL_last_in_gv.642
	movl	$0, %esi	#,
	movq	%rax, %rdi	# PL_last_in_gv.642,
	call	Perl_do_close	#
	testb	%al, %al	# D.18208
	jne	.L636	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.643
	movq	80(%rax), %rax	# PL_curcop.643_301->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	je	.L637	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.644
	movq	80(%rax), %rax	# PL_curcop.644_303->cop_warnings, D.18206
	cmpq	$32, %rax	#, D.18206
	je	.L637	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.645
	movq	80(%rax), %rax	# PL_curcop.645_305->cop_warnings, D.18206
	cmpq	$16, %rax	#, D.18206
	je	.L638	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.646
	movq	80(%rax), %rax	# PL_curcop.646_307->cop_warnings, D.18206
	movq	(%rax), %rax	# _308->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_309].xpv_pv, D.18212
	addq	$1, %rax	#, D.18212
	movzbl	(%rax), %eax	# *_311, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L638	#,
.L637:
	.loc 1 1613 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.647
	movq	80(%rax), %rax	# PL_curcop.647_315->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	jne	.L636	#,
	.loc 1 1613 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.648
	movzbl	%al, %eax	# PL_dowarn.648, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L636	#,
.L638:
	.loc 1 1617 0 is_stmt 1
	movl	PL_statusvalue(%rip), %eax	# PL_statusvalue, PL_statusvalue.650
	andl	$128, %eax	#, D.18197
	.loc 1 1614 0
	testl	%eax, %eax	# D.18197
	je	.L639	#,
	.loc 1 1614 0 is_stmt 0 discriminator 1
	movl	$.LC21, %eax	#, iftmp.649
	jmp	.L640	#
.L639:
	.loc 1 1614 0 discriminator 2
	movl	$.LC1, %eax	#, iftmp.649
.L640:
	.loc 1 1614 0 discriminator 3
	movl	PL_statusvalue(%rip), %edx	# PL_statusvalue, PL_statusvalue.651
	sarl	$8, %edx	#, D.18197
	movq	%rax, %rcx	# iftmp.649,
	movl	$.LC22, %esi	#,
	movl	$4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L636:
	.loc 1 1620 0 is_stmt 1
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L641	#,
	.loc 1 1621 0
	cmpl	$27, %r14d	#, type
	je	.L642	#,
	.loc 1 1622 0
	movq	-88(%rbp), %rax	# targ, tmp490
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$9961472, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L643	#,
	.loc 1 1622 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp491
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_force_normal	#
.L643:
	.loc 1 1623 0 is_stmt 1
	movq	-88(%rbp), %rax	# targ, tmp492
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$1223753727, %eax	#, D.18200
	movl	%eax, %edx	# D.18200, D.18200
	movq	-88(%rbp), %rax	# targ, tmp493
	movl	%edx, 12(%rax)	# D.18200, targ_48->sv_flags
	movq	-88(%rbp), %rax	# targ, tmp494
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$2097152, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L642	#,
	.loc 1 1623 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp495
	movq	%rax, %rdi	# tmp495,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.18197
	je	.L642	#,
	.loc 1 1623 0
	nop
.L642:
	.loc 1 1625 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
.LBB84:
	.loc 1 1626 0
	movq	-88(%rbp), %rax	# targ, tmp496
	movl	12(%rax), %eax	# targ_48->sv_flags, D.18200
	andl	$16384, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L645	#,
	.loc 1 1626 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# targ, tmp497
	movq	%rax, %rdi	# tmp497,
	call	Perl_mg_set	#
.L645:
	.loc 1 1626 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-88(%rbp), %rax	# targ, tmp498
	movq	%rax, (%r12)	# tmp498, *sp_338
.L641:
.LBE84:
	.loc 1 1628 0 is_stmt 1
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _340->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$16, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L646	#,
	.loc 1 1628 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.653
	testb	%al, %al	# PL_tainting.653
	je	.L646	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_taint	#
.L646:
	.loc 1 1629 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.654
	movq	(%rax), %rax	# PL_op.654_345->op_next, D.18195
	jmp	.L596	#
.L631:
	.loc 1 1631 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movzbl	163(%rax), %eax	# _347->xio_flags, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$16, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L647	#,
	.loc 1 1631 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.655
	testb	%al, %al	# PL_tainting.655
	je	.L647	#,
	movq	%rbx, %rdi	# sv,
	call	Perl_sv_taint	#
.L647:
	.loc 1 1632 0 is_stmt 1
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	80(%rax), %rdx	# _352->xio_lines, D.18204
	addq	$1, %rdx	#, D.18204
	movq	%rdx, 80(%rax)	# D.18204, _352->xio_lines
	.loc 1 1633 0
	movq	0(%r13), %rax	# io_62->sv_any, D.18207
	movq	0(%r13), %rdx	# io_62->sv_any, D.18207
	movzbl	163(%rdx), %edx	# _356->xio_flags, D.18208
	orl	$32, %edx	#, D.18214
	movb	%dl, 163(%rax)	# D.18214, _355->xio_flags
	.loc 1 1634 0
	movl	12(%rbx), %eax	# sv_12->sv_flags, D.18200
	andl	$16384, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L648	#,
	.loc 1 1634 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# sv,
	call	Perl_mg_set	#
.L648:
	.loc 1 1635 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
.LBB85:
	.loc 1 1636 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.656
	movq	%rax, %rdx	# PL_stack_max.656, PL_stack_max.657
	movq	%r12, %rax	# sp, sp.658
	subq	%rax, %rdx	# sp.658, D.18204
	movq	%rdx, %rax	# D.18204, D.18204
	cmpq	$7, %rax	#, D.18204
	jg	.L649	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L649:
	.loc 1 1636 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	%rbx, (%r12)	# sv, *sp_367
.LBE85:
	.loc 1 1637 0 is_stmt 1 discriminator 2
	cmpl	$25, %r14d	#, type
	jne	.L650	#,
.LBB86:
	.loc 1 1640 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_369].xpv_cur, D.18198
	testq	%rax, %rax	# D.18198
	je	.L651	#,
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.659
	movq	(%rax), %rax	# PL_rs.659_371->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_372].xpv_cur, D.18198
	testq	%rax, %rax	# D.18198
	je	.L651	#,
	.loc 1 1641 0 is_stmt 1
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rdx	# MEM[(struct XPV *)_374].xpv_pv, D.18212
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_376].xpv_cur, D.18198
	subq	$1, %rax	#, D.18215
	addq	%rdx, %rax	# D.18212, tmp499
	movq	%rax, -96(%rbp)	# tmp499, tmps
	.loc 1 1642 0
	movq	-96(%rbp), %rax	# tmps, tmp500
	movzbl	(%rax), %edx	# *tmps_379, D.18208
	movq	PL_rs(%rip), %rax	# PL_rs, PL_rs.660
	movq	(%rax), %rax	# PL_rs.660_381->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_382].xpv_pv, D.18212
	movzbl	(%rax), %eax	# *_383, D.18208
	cmpb	%al, %dl	# D.18208, D.18208
	jne	.L651	#,
	.loc 1 1643 0
	movq	-96(%rbp), %rax	# tmps, tmp501
	movb	$0, (%rax)	#, *tmps_379
	.loc 1 1644 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_385].xpv_cur, D.18198
	subq	$1, %rdx	#, D.18198
	movq	%rdx, 8(%rax)	# D.18198, MEM[(struct XPV *)_385].xpv_cur
.L651:
	.loc 1 1647 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_388].xpv_pv, tmp502
	movq	%rax, -96(%rbp)	# tmp502, tmps
	jmp	.L652	#
.L658:
	.loc 1 1648 0
	movq	-96(%rbp), %rax	# tmps, tmp503
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$64, %al	#, D.18208
	jle	.L653	#,
	.loc 1 1648 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# tmps, tmp504
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$90, %al	#, D.18208
	jle	.L654	#,
.L653:
	.loc 1 1648 0 discriminator 1
	movq	-96(%rbp), %rax	# tmps, tmp505
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$96, %al	#, D.18208
	jle	.L655	#,
	.loc 1 1648 0 discriminator 2
	movq	-96(%rbp), %rax	# tmps, tmp506
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$122, %al	#, D.18208
	jle	.L654	#,
.L655:
	.loc 1 1648 0 discriminator 1
	movq	-96(%rbp), %rax	# tmps, tmp507
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$47, %al	#, D.18208
	jle	.L656	#,
	.loc 1 1648 0 discriminator 2
	movq	-96(%rbp), %rax	# tmps, tmp508
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	cmpb	$57, %al	#, D.18208
	jle	.L654	#,
.L656:
	.loc 1 1649 0 is_stmt 1 discriminator 1
	movq	-96(%rbp), %rax	# tmps, tmp509
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	movl	%eax, %esi	# D.18197,
	movl	$.LC23, %edi	#,
	call	strchr	#
	.loc 1 1648 0 discriminator 1
	testq	%rax, %rax	# D.18212
	je	.L654	#,
	.loc 1 1650 0
	jmp	.L657	#
.L654:
	.loc 1 1647 0
	addq	$1, -96(%rbp)	#, tmps
.L652:
	.loc 1 1647 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# tmps, tmp510
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	testb	%al, %al	# D.18208
	jne	.L658	#,
.L657:
	.loc 1 1651 0 is_stmt 1
	movq	-96(%rbp), %rax	# tmps, tmp511
	movzbl	(%rax), %eax	# *tmps_22, D.18208
	testb	%al, %al	# D.18208
	je	.L659	#,
	.loc 1 1651 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_402].xpv_pv, D.18212
	movl	$PL_statbuf, %esi	#,
	movq	%rax, %rdi	# D.18212,
	call	stat	#
	testl	%eax, %eax	# D.18197
	jns	.L659	#,
	.loc 1 1652 0 is_stmt 1
	movq	%r12, %rax	# sp, sp.661
	leaq	-8(%rax), %r12	#, sp
	.loc 1 1653 0
	jmp	.L635	#
.L659:
.LBE86:
	jmp	.L660	#
.L650:
	.loc 1 1655 0
	movl	12(%rbx), %eax	# sv_12->sv_flags, D.18200
	andl	$536870912, %eax	#, D.18200
	testl	%eax, %eax	# D.18200
	je	.L660	#,
.LBB87:
	.loc 1 1656 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rdx	# MEM[(struct XPV *)_409].xpv_pv, D.18212
	movq	-112(%rbp), %rax	# offset, tmp515
	addq	%rdx, %rax	# D.18212, tmp514
	movq	%rax, -64(%rbp)	# tmp514, s
	.loc 1 1657 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_412].xpv_cur, D.18198
	subq	-112(%rbp), %rax	# offset, tmp517
	movq	%rax, -56(%rbp)	# tmp517, len
	.loc 1 1660 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.662
	movq	80(%rax), %rax	# PL_curcop.662_415->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	je	.L661	#,
	.loc 1 1660 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.663
	movq	80(%rax), %rax	# PL_curcop.663_417->cop_warnings, D.18206
	cmpq	$32, %rax	#, D.18206
	je	.L661	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.664
	movq	80(%rax), %rax	# PL_curcop.664_419->cop_warnings, D.18206
	cmpq	$16, %rax	#, D.18206
	je	.L662	#,
	.loc 1 1660 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.665
	movq	80(%rax), %rax	# PL_curcop.665_421->cop_warnings, D.18206
	movq	(%rax), %rax	# _422->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_423].xpv_pv, D.18212
	addq	$11, %rax	#, D.18212
	movzbl	(%rax), %eax	# *_425, D.18208
	movsbl	%al, %eax	# D.18208, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	jne	.L662	#,
.L661:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.666
	movq	80(%rax), %rax	# PL_curcop.666_429->cop_warnings, D.18206
	testq	%rax, %rax	# D.18206
	jne	.L660	#,
	.loc 1 1660 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.667
	movzbl	%al, %eax	# PL_dowarn.667, D.18197
	andl	$1, %eax	#, D.18197
	testl	%eax, %eax	# D.18197
	je	.L660	#,
.L662:
	.loc 1 1661 0 is_stmt 1 discriminator 1
	leaq	-128(%rbp), %rdx	#, tmp518
	movq	-56(%rbp), %rcx	# len, tmp519
	movq	-64(%rbp), %rax	# s, tmp520
	movq	%rcx, %rsi	# tmp519,
	movq	%rax, %rdi	# tmp520,
	call	Perl_is_utf8_string_loc	#
	.loc 1 1660 0 discriminator 1
	testb	%al, %al	# D.18208
	jne	.L660	#,
	.loc 1 1665 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rdx	# MEM[(struct XPV *)_435].xpv_pv, D.18212
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_437].xpv_cur, D.18198
	addq	%rax, %rdx	# D.18198, D.18216
	movq	-128(%rbp), %rax	# f, f.669
	.loc 1 1663 0
	cmpq	%rax, %rdx	# f.669, D.18216
	jbe	.L664	#,
	.loc 1 1665 0
	movq	-128(%rbp), %rax	# f, f.670
	movzbl	(%rax), %eax	# *f.670_441, D.18196
	.loc 1 1663 0
	movzbl	%al, %eax	# D.18196, iftmp.668
	jmp	.L665	#
.L664:
	.loc 1 1663 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.668
.L665:
	.loc 1 1663 0 discriminator 2
	movl	%eax, %edx	# iftmp.668,
	movl	$.LC24, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L660:
.LBE87:
	.loc 1 1667 0 is_stmt 1
	cmpl	$1, -132(%rbp)	#, gimme
	jne	.L666	#,
	.loc 1 1668 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_445].xpv_len, D.18198
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_447].xpv_cur, D.18198
	subq	%rax, %rdx	# D.18198, D.18198
	movq	%rdx, %rax	# D.18198, D.18198
	cmpq	$20, %rax	#, D.18198
	jbe	.L667	#,
	.loc 1 1669 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rbx), %rdx	# sv_12->sv_any, D.18211
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_451].xpv_cur, D.18198
	addq	$1, %rdx	#, D.18198
	movq	%rdx, 16(%rax)	# D.18198, MEM[(struct XPV *)_450].xpv_len
	.loc 1 1670 0
	movq	(%rbx), %r15	# sv_12->sv_any, D.18211
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_455].xpv_len, D.18198
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_457].xpv_pv, D.18212
	movq	%rdx, %rsi	# D.18198,
	movq	%rax, %rdi	# D.18212,
	call	Perl_safesysrealloc	#
	movq	%rax, (%r15)	# D.18211, MEM[(struct XPV *)_454].xpv_pv
.L667:
	.loc 1 1672 0
	movl	$80, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rdi	# D.18206,
	call	Perl_sv_2mortal	#
	movq	%rax, %rbx	#, sv
	.loc 1 1673 0
	jmp	.L635	#
.L666:
	.loc 1 1675 0
	cmpl	$0, -132(%rbp)	#, gimme
	jne	.L668	#,
	.loc 1 1675 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, tmplen
	jne	.L668	#,
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_462].xpv_len, D.18198
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_464].xpv_cur, D.18198
	subq	%rax, %rdx	# D.18198, D.18198
	movq	%rdx, %rax	# D.18198, D.18198
	cmpq	$80, %rax	#, D.18198
	jbe	.L668	#,
	.loc 1 1677 0 is_stmt 1
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	8(%rax), %rax	# MEM[(struct XPV *)_467].xpv_cur, D.18198
	cmpq	$59, %rax	#, D.18198
	ja	.L669	#,
	.loc 1 1678 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	$80, 16(%rax)	#, MEM[(struct XPV *)_469].xpv_len
	jmp	.L670	#
.L669:
	.loc 1 1680 0
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rbx), %rdx	# sv_12->sv_any, D.18211
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_471].xpv_cur, D.18198
	addq	$40, %rdx	#, D.18198
	movq	%rdx, 16(%rax)	# D.18198, MEM[(struct XPV *)_470].xpv_len
.L670:
	.loc 1 1681 0
	movq	(%rbx), %r13	# sv_12->sv_any, D.18211
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_475].xpv_len, D.18198
	movq	(%rbx), %rax	# sv_12->sv_any, D.18211
	movq	(%rax), %rax	# MEM[(struct XPV *)_477].xpv_pv, D.18212
	movq	%rdx, %rsi	# D.18198,
	movq	%rax, %rdi	# D.18212,
	call	Perl_safesysrealloc	#
	movq	%rax, 0(%r13)	# D.18211, MEM[(struct XPV *)_474].xpv_pv
.L668:
	.loc 1 1683 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.671
	movq	(%rax), %rax	# PL_op.671_480->op_next, D.18195
	jmp	.L596	#
.L635:
	.loc 1 1684 0
	jmp	.L630	#
.L596:
	.loc 1 1685 0
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
.LFE32:
	.size	Perl_do_readline, .-Perl_do_readline
	.globl	Perl_pp_enter
	.type	Perl_pp_enter, @function
Perl_pp_enter:
.LFB33:
	.loc 1 1688 0
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
	.loc 1 1689 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1691 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.673
	movzbl	36(%rax), %eax	# PL_op.673_6->op_flags, D.18225
	movzbl	%al, %eax	# D.18225, D.18226
	andl	$3, %eax	#, D.18226
	cmpl	$1, %eax	#, D.18226
	je	.L672	#,
	.loc 1 1691 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.675
	movzbl	36(%rax), %eax	# PL_op.675_10->op_flags, D.18225
	movzbl	%al, %eax	# D.18225, D.18226
	andl	$3, %eax	#, D.18226
	cmpl	$2, %eax	#, D.18226
	je	.L673	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.677
	movzbl	36(%rax), %eax	# PL_op.677_14->op_flags, D.18225
	movzbl	%al, %eax	# D.18225, D.18226
	andl	$3, %eax	#, D.18226
	cmpl	$3, %eax	#, D.18226
	jne	.L674	#,
	movl	$1, %eax	#, iftmp.676
	jmp	.L677	#
.L674:
	.loc 1 1691 0 discriminator 2
	movl	$-1, %eax	#, iftmp.676
	jmp	.L677	#
.L673:
	movl	$0, %eax	#, iftmp.674
	jmp	.L677	#
.L672:
	movl	$128, %eax	#, iftmp.672
.L677:
	.loc 1 1691 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.672, gimme
	.loc 1 1693 0 is_stmt 1 discriminator 3
	cmpl	$-1, -20(%rbp)	#, gimme
	jne	.L678	#,
	.loc 1 1694 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.678
	movl	16(%rax), %eax	# PL_curstackinfo.678_25->si_cxix, D.18226
	testl	%eax, %eax	# D.18226
	js	.L679	#,
	.loc 1 1695 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.679
	movq	8(%rax), %rcx	# PL_curstackinfo.679_27->si_cxstack, D.18227
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.680
	movl	16(%rax), %eax	# PL_curstackinfo.680_29->si_cxix, D.18226
	movslq	%eax, %rdx	# D.18226, D.18228
	movq	%rdx, %rax	# D.18228, tmp125
	salq	$3, %rax	#, tmp125
	addq	%rdx, %rax	# D.18228, tmp125
	salq	$4, %rax	#, tmp126
	addq	%rcx, %rax	# D.18227, D.18227
	movzbl	48(%rax), %eax	# _33->cx_u.cx_blk.blku_gimme, D.18225
	movzbl	%al, %eax	# D.18225, tmp127
	movl	%eax, -20(%rbp)	# tmp127, gimme
	jmp	.L678	#
.L679:
	.loc 1 1697 0
	movl	$0, -20(%rbp)	#, gimme
.L678:
	.loc 1 1700 0
	call	Perl_push_scope	#
	.loc 1 1702 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.681
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.681, PL_tmps_floor
	.loc 1 1703 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.683
	movl	16(%rax), %edx	# PL_curstackinfo.683_38->si_cxix, D.18226
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.684
	movl	20(%rax), %eax	# PL_curstackinfo.684_40->si_cxmax, D.18226
	cmpl	%eax, %edx	# D.18226, D.18226
	jge	.L680	#,
	.loc 1 1703 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.685
	movl	16(%rax), %edx	# PL_curstackinfo.685_42->si_cxix, D.18226
	addl	$1, %edx	#, D.18226
	movl	%edx, 16(%rax)	# D.18226, PL_curstackinfo.685_42->si_cxix
	jmp	.L681	#
.L680:
	.loc 1 1703 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rbx	# PL_curstackinfo, PL_curstackinfo.686
	call	Perl_cxinc	#
	movl	%eax, 16(%rbx)	# D.18226, PL_curstackinfo.686_46->si_cxix
.L681:
	.loc 1 1703 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.687
	movq	8(%rax), %rcx	# PL_curstackinfo.687_49->si_cxstack, D.18227
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.688
	movl	16(%rax), %eax	# PL_curstackinfo.688_51->si_cxix, D.18226
	movslq	%eax, %rdx	# D.18226, D.18228
	movq	%rdx, %rax	# D.18228, tmp128
	salq	$3, %rax	#, tmp128
	addq	%rdx, %rax	# D.18228, tmp128
	salq	$4, %rax	#, tmp129
	leaq	(%rcx,%rax), %rbx	#, cx
	movl	$5, (%rbx)	#, cx_55->cx_type
	movq	%r12, %rdx	# sp, sp.689
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.690
	subq	%rax, %rdx	# PL_stack_base.691, D.18229
	movq	%rdx, %rax	# D.18229, D.18229
	sarq	$3, %rax	#, tmp130
	movl	%eax, 8(%rbx)	# D.18226, cx_55->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.692
	movq	%rax, 16(%rbx)	# PL_curcop.692, cx_55->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.693
	movq	%rax, %rdx	# PL_markstack_ptr.693, PL_markstack_ptr.694
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.695
	subq	%rax, %rdx	# PL_markstack.696, D.18229
	movq	%rdx, %rax	# D.18229, D.18229
	sarq	$2, %rax	#, tmp131
	movl	%eax, 28(%rbx)	# D.18226, cx_55->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.697
	movl	%eax, 32(%rbx)	# PL_scopestack_ix.697, cx_55->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.698
	movl	%eax, 24(%rbx)	# PL_retstack_ix.698, cx_55->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.699
	movq	%rax, 40(%rbx)	# PL_curpm.699, cx_55->cx_u.cx_blk.blku_oldpm
	movl	-20(%rbp), %eax	# gimme, tmp132
	movb	%al, 48(%rbx)	# D.18225, cx_55->cx_u.cx_blk.blku_gimme
	.loc 1 1705 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.700
	movq	(%rax), %rax	# PL_op.700_74->op_next, D.18230
	.loc 1 1706 0 discriminator 3
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_pp_enter, .-Perl_pp_enter
	.section	.rodata
.LC25:
	.string	"EXISTS"
.LC26:
	.string	"DELETE"
	.align 8
.LC27:
	.string	"Can't localize pseudo-hash element"
	.text
	.globl	Perl_pp_helem
	.type	Perl_pp_helem, @function
Perl_pp_helem:
.LFB34:
	.loc 1 1709 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 1710 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1713 0
	movq	%rbx, %rax	# sp, sp.701
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.701_17, tmp168
	movq	%rax, -80(%rbp)	# tmp168, keysv
	.loc 1 1714 0
	movq	%rbx, %rax	# sp, sp.702
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.702_20, tmp169
	movq	%rax, -72(%rbp)	# tmp169, hv
	.loc 1 1715 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.704
	movzbl	36(%rax), %eax	# PL_op.704_23->op_flags, D.18232
	movzbl	%al, %eax	# D.18232, D.18233
	andl	$32, %eax	#, D.18233
	testl	%eax, %eax	# D.18233
	jne	.L684	#,
	.loc 1 1715 0 is_stmt 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.705
	movzbl	37(%rax), %eax	# PL_op.705_27->op_private, D.18232
	movzbl	%al, %eax	# D.18232, D.18233
	andl	$8, %eax	#, D.18233
	testl	%eax, %eax	# D.18233
	je	.L685	#,
	.loc 1 1715 0 discriminator 3
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18233
	je	.L685	#,
.L684:
	.loc 1 1715 0 discriminator 1
	movl	$1, %eax	#, iftmp.703
	jmp	.L686	#
.L685:
	.loc 1 1715 0 discriminator 4
	movl	$0, %eax	#, iftmp.703
.L686:
	.loc 1 1715 0 discriminator 5
	movl	%eax, -116(%rbp)	# iftmp.703, lval
	.loc 1 1716 0 is_stmt 1 discriminator 5
	movq	PL_op(%rip), %rax	# PL_op, PL_op.706
	movzbl	37(%rax), %eax	# PL_op.706_35->op_private, D.18232
	movzbl	%al, %eax	# D.18232, D.18234
	andl	$16, %eax	#, tmp170
	movl	%eax, -112(%rbp)	# tmp170, defer
	.loc 1 1718 0 discriminator 5
	movq	-80(%rbp), %rax	# keysv, tmp171
	movl	12(%rax), %eax	# keysv_19->sv_flags, D.18234
	andl	$1048576, %eax	#, D.18234
	testl	%eax, %eax	# D.18234
	je	.L687	#,
	.loc 1 1718 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# keysv, tmp172
	movl	12(%rax), %eax	# keysv_19->sv_flags, D.18234
	andl	$8388608, %eax	#, D.18234
	testl	%eax, %eax	# D.18234
	je	.L687	#,
	movq	-80(%rbp), %rax	# keysv, tmp173
	movq	(%rax), %rax	# keysv_19->sv_any, D.18235
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_43].xuv_uv, D.18236
	jmp	.L688	#
.L687:
	.loc 1 1718 0 discriminator 2
	movl	$0, %eax	#, iftmp.707
.L688:
	.loc 1 1718 0 discriminator 3
	movl	%eax, -108(%rbp)	# iftmp.707, hash
	.loc 1 1719 0 is_stmt 1 discriminator 3
	movl	$0, -120(%rbp)	#, preeminent
	.loc 1 1721 0 discriminator 3
	movq	-72(%rbp), %rax	# hv, tmp174
	movl	12(%rax), %eax	# hv_22->sv_flags, D.18234
	movzbl	%al, %eax	# D.18234, D.18234
	cmpl	$11, %eax	#, D.18234
	jne	.L689	#,
	.loc 1 1722 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.708
	movzbl	37(%rax), %eax	# PL_op.708_51->op_private, D.18232
	testb	%al, %al	# D.18237
	jns	.L690	#,
.LBB88:
	.loc 1 1728 0
	movq	-72(%rbp), %rax	# hv, tmp175
	movl	12(%rax), %eax	# hv_22->sv_flags, D.18234
	andl	$32768, %eax	#, D.18234
	.loc 1 1738 0
	testl	%eax, %eax	# D.18234
	je	.L691	#,
	.loc 1 1729 0
	movq	-72(%rbp), %rax	# hv, tmp176
	movl	$69, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.18238
	jne	.L691	#,
	.loc 1 1730 0
	movq	-72(%rbp), %rax	# hv, tmp177
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	Perl_mg_find	#
	movq	%rax, -64(%rbp)	# tmp178, mg
	cmpq	$0, -64(%rbp)	#, mg
	je	.L692	#,
	.loc 1 1734 0
	movq	-64(%rbp), %rax	# mg, tmp179
	movq	24(%rax), %rax	# mg_57->mg_obj, D.18239
	testq	%rax, %rax	# D.18239
	je	.L693	#,
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mg, tmp180
	movq	24(%rax), %rax	# mg_57->mg_obj, iftmp.710
	jmp	.L694	#
.L693:
	.loc 1 1734 0 discriminator 2
	movq	-72(%rbp), %rax	# hv, tmp181
	movq	%rax, %rdi	# tmp181,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18239,
	call	Perl_sv_2mortal	#
.L694:
	.loc 1 1734 0 discriminator 3
	movq	(%rax), %rax	# iftmp.710_8->sv_any, D.18235
	movq	(%rax), %rax	# MEM[(struct XRV *)_62].xrv_rv, D.18239
	movq	(%rax), %rax	# _63->sv_any, D.18235
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_64].xmg_stash, tmp182
	movq	%rax, -56(%rbp)	# tmp182, stash
	cmpq	$0, -56(%rbp)	#, stash
	je	.L692	#,
	.loc 1 1735 0 is_stmt 1
	movq	-56(%rbp), %rax	# stash, tmp183
	movl	$1, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	Perl_gv_fetchmethod_autoload	#
	testq	%rax, %rax	# D.18240
	je	.L692	#,
	.loc 1 1736 0
	movq	-56(%rbp), %rax	# stash, tmp184
	movl	$1, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	Perl_gv_fetchmethod_autoload	#
	testq	%rax, %rax	# D.18240
	je	.L692	#,
.L691:
	.loc 1 1738 0 discriminator 1
	movq	-80(%rbp), %rcx	# keysv, tmp185
	movq	-72(%rbp), %rax	# hv, tmp186
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp185,
	movq	%rax, %rdi	# tmp186,
	call	Perl_hv_exists_ent	#
	movsbl	%al, %eax	# D.18241, iftmp.709
	jmp	.L695	#
.L692:
	.loc 1 1738 0 is_stmt 0
	movl	$1, %eax	#, iftmp.709
.L695:
	.loc 1 1726 0 is_stmt 1
	movl	%eax, -120(%rbp)	# iftmp.709, preeminent
.L690:
.LBE88:
	.loc 1 1741 0
	cmpl	$0, -116(%rbp)	#, lval
	je	.L696	#,
	.loc 1 1741 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, defer
	jne	.L696	#,
	.loc 1 1741 0 discriminator 3
	movl	$1, %eax	#, iftmp.711
	jmp	.L697	#
.L696:
	.loc 1 1741 0 discriminator 2
	movl	$0, %eax	#, iftmp.711
.L697:
	.loc 1 1741 0 discriminator 4
	movl	-108(%rbp), %edx	# hash, tmp187
	movq	-80(%rbp), %rsi	# keysv, tmp188
	movq	-72(%rbp), %rdi	# hv, tmp189
	movl	%edx, %ecx	# tmp187,
	movl	%eax, %edx	# iftmp.711,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -48(%rbp)	# tmp190, he
	.loc 1 1742 0 is_stmt 1 discriminator 4
	cmpq	$0, -48(%rbp)	#, he
	je	.L698	#,
	.loc 1 1742 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# he, tmp191
	addq	$16, %rax	#, iftmp.712
	jmp	.L699	#
.L698:
	.loc 1 1742 0 discriminator 2
	movl	$0, %eax	#, iftmp.712
.L699:
	.loc 1 1742 0 discriminator 1
	movq	%rax, -96(%rbp)	# iftmp.712, svp
	jmp	.L700	#
.L689:
	.loc 1 1744 0 is_stmt 1
	movq	-72(%rbp), %rax	# hv, tmp192
	movl	12(%rax), %eax	# hv_22->sv_flags, D.18234
	movzbl	%al, %eax	# D.18234, D.18234
	cmpl	$10, %eax	#, D.18234
	jne	.L701	#,
	.loc 1 1745 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.713
	movzbl	37(%rax), %eax	# PL_op.713_80->op_private, D.18232
	testb	%al, %al	# D.18237
	jns	.L702	#,
	.loc 1 1746 0
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L703	#
.L702:
	.loc 1 1747 0
	cmpl	$0, -116(%rbp)	#, lval
	je	.L704	#,
	.loc 1 1747 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, defer
	jne	.L704	#,
	.loc 1 1747 0 discriminator 3
	movl	$1, %eax	#, iftmp.714
	jmp	.L705	#
.L704:
	.loc 1 1747 0 discriminator 2
	movl	$0, %eax	#, iftmp.714
.L705:
	.loc 1 1747 0 discriminator 4
	movl	-108(%rbp), %edx	# hash, tmp193
	movq	-80(%rbp), %rsi	# keysv, tmp194
	movq	-72(%rbp), %rdi	# hv, tmp195
	movl	%edx, %ecx	# tmp193,
	movl	%eax, %edx	# iftmp.714,
	call	Perl_avhv_fetch_ent	#
	movq	%rax, -96(%rbp)	# tmp196, svp
	jmp	.L700	#
.L701:
	.loc 1 1750 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_87
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.715
	movq	(%rax), %rax	# PL_op.715_88->op_next, D.18231
	jmp	.L703	#
.L700:
	.loc 1 1752 0
	cmpl	$0, -116(%rbp)	#, lval
	je	.L706	#,
	.loc 1 1753 0
	cmpq	$0, -96(%rbp)	#, svp
	je	.L707	#,
	.loc 1 1753 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# svp, tmp197
	movq	(%rax), %rax	# *svp_1, D.18239
	cmpq	$PL_sv_undef, %rax	#, D.18239
	jne	.L708	#,
.L707:
.LBB89:
	.loc 1 1756 0 is_stmt 1
	cmpl	$0, -112(%rbp)	#, defer
	jne	.L709	#,
.LBB90:
	.loc 1 1758 0
	movq	-80(%rbp), %rax	# keysv, tmp198
	movl	12(%rax), %eax	# keysv_19->sv_flags, D.18234
	andl	$262144, %eax	#, D.18234
	testl	%eax, %eax	# D.18234
	je	.L710	#,
	.loc 1 1758 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# keysv, tmp199
	movq	(%rax), %rax	# keysv_19->sv_any, D.18235
	movq	8(%rax), %rax	# MEM[(struct XPV *)_129].xpv_cur, n_a.717
	movq	%rax, -104(%rbp)	# n_a.717, n_a
	movq	-80(%rbp), %rax	# keysv, tmp200
	movq	(%rax), %rax	# keysv_19->sv_any, D.18235
	movq	(%rax), %rax	# MEM[(struct XPV *)_131].xpv_pv, iftmp.716
	jmp	.L711	#
.L710:
	.loc 1 1758 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp201
	movq	-80(%rbp), %rax	# keysv, tmp202
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	Perl_sv_2pv_flags	#
.L711:
	.loc 1 1758 0 discriminator 3
	movq	%rax, %rsi	# iftmp.716,
	movl	$PL_no_helem, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L703	#
.L709:
.LBE90:
	.loc 1 1760 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -32(%rbp)	# tmp203, lv
	.loc 1 1761 0
	movq	-32(%rbp), %rax	# lv, tmp204
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	Perl_sv_upgrade	#
	.loc 1 1762 0
	movq	-32(%rbp), %rax	# lv, tmp205
	movq	(%rax), %rax	# lv_135->sv_any, D.18235
	movb	$121, 80(%rax)	#, MEM[(struct XPVLV *)_136].xlv_type
	.loc 1 1763 0
	movq	-80(%rbp), %rax	# keysv, tmp206
	movq	%rax, %rdi	# tmp206,
	call	Perl_newSVsv	#
	movq	%rax, -24(%rbp)	# tmp207, key2
	movq	-24(%rbp), %rsi	# key2, tmp208
	movq	-32(%rbp), %rax	# lv, tmp209
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$121, %edx	#,
	movq	%rax, %rdi	# tmp209,
	call	Perl_sv_magic	#
	.loc 1 1764 0
	movq	-24(%rbp), %rax	# key2, tmp210
	movq	%rax, %rdi	# tmp210,
	call	Perl_sv_free	#
	.loc 1 1765 0
	movq	-72(%rbp), %rax	# hv, tmp211
	movq	%rax, PL_Sv(%rip)	# tmp211, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.719
	testq	%rax, %rax	# PL_Sv.719
	je	.L713	#,
	.loc 1 1765 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.720
	movl	8(%rax), %edx	# PL_Sv.720_139->sv_refcnt, D.18234
	addl	$1, %edx	#, D.18234
	movl	%edx, 8(%rax)	# D.18234, PL_Sv.720_139->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.720_139->sv_refcnt, D.18234
	testl	%eax, %eax	# D.18234
	je	.L713	#,
	.loc 1 1765 0
	nop
.L713:
	.loc 1 1765 0 discriminator 4
	movq	-32(%rbp), %rax	# lv, tmp212
	movq	(%rax), %rax	# lv_135->sv_any, D.18235
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.721
	movq	%rdx, 72(%rax)	# PL_Sv.721, MEM[(struct XPVLV *)_145].xlv_targ
	.loc 1 1766 0 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax	# lv, tmp213
	movq	(%rax), %rax	# lv_135->sv_any, D.18235
	movq	$1, 64(%rax)	#, MEM[(struct XPVLV *)_147].xlv_targlen
	.loc 1 1767 0 discriminator 4
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# lv, tmp214
	movq	%rax, (%rbx)	# tmp214, *sp_148
	.loc 1 1768 0 discriminator 4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.722
	movq	(%rax), %rax	# PL_op.722_149->op_next, D.18231
	jmp	.L703	#
.L708:
.LBE89:
	.loc 1 1770 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.723
	movzbl	37(%rax), %eax	# PL_op.723_91->op_private, D.18232
	testb	%al, %al	# D.18237
	jns	.L714	#,
	.loc 1 1771 0
	movq	-72(%rbp), %rax	# hv, tmp215
	movq	(%rax), %rax	# hv_22->sv_any, D.18242
	movq	80(%rax), %rax	# _94->xhv_name, D.18243
	testq	%rax, %rax	# D.18243
	je	.L715	#,
	.loc 1 1771 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# svp, tmp216
	movq	(%rax), %rax	# *svp_1, D.18239
	movl	12(%rax), %eax	# _96->sv_flags, D.18234
	movzbl	%al, %eax	# D.18234, D.18234
	cmpl	$13, %eax	#, D.18234
	jne	.L715	#,
	.loc 1 1772 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.724
	movzbl	36(%rax), %eax	# PL_op.724_99->op_flags, D.18232
	notl	%eax	# tmp217
	shrb	$7, %al	#, D.18244
	movzbl	%al, %edx	# D.18244, D.18233
	movq	-96(%rbp), %rax	# svp, tmp218
	movq	(%rax), %rax	# *svp_1, D.18239
	movl	%edx, %esi	# D.18233,
	movq	%rax, %rdi	# D.18239,
	call	Perl_save_gp	#
	jmp	.L706	#
.L715:
	.loc 1 1774 0
	cmpl	$0, -120(%rbp)	#, preeminent
	jne	.L717	#,
.LBB91:
	.loc 1 1776 0
	movq	-80(%rbp), %rax	# keysv, tmp219
	movl	12(%rax), %eax	# keysv_19->sv_flags, D.18234
	andl	$262144, %eax	#, D.18234
	testl	%eax, %eax	# D.18234
	je	.L718	#,
	.loc 1 1776 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# keysv, tmp220
	movq	(%rax), %rax	# keysv_19->sv_any, D.18235
	movq	8(%rax), %rax	# MEM[(struct XPV *)_107].xpv_cur, keylen.726
	movq	%rax, -104(%rbp)	# keylen.726, keylen
	movq	-80(%rbp), %rax	# keysv, tmp221
	movq	(%rax), %rax	# keysv_19->sv_any, D.18235
	movq	(%rax), %rax	# MEM[(struct XPV *)_109].xpv_pv, iftmp.725
	jmp	.L719	#
.L718:
	.loc 1 1776 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp222
	movq	-80(%rbp), %rax	# keysv, tmp223
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	Perl_sv_2pv_flags	#
.L719:
	.loc 1 1776 0 discriminator 1
	movq	%rax, -40(%rbp)	# iftmp.725, key
	.loc 1 1777 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax	# keylen, keylen.727
	movl	%eax, %r12d	# keylen.727, D.18233
	movq	-104(%rbp), %rax	# keylen, keylen.728
	movl	%eax, %edx	# keylen.728, D.18233
	movq	-40(%rbp), %rax	# key, tmp224
	movl	%edx, %esi	# D.18233,
	movq	%rax, %rdi	# tmp224,
	call	Perl_savepvn	#
	movq	%rax, %rcx	#, D.18243
	movq	-72(%rbp), %rax	# hv, tmp225
	movl	%r12d, %edx	# D.18233,
	movq	%rcx, %rsi	# D.18243,
	movq	%rax, %rdi	# tmp225,
	call	Perl_save_delete	#
.LBE91:
	jmp	.L706	#
.L717:
	.loc 1 1779 0
	movq	-96(%rbp), %rdx	# svp, tmp226
	movq	-80(%rbp), %rcx	# keysv, tmp227
	movq	-72(%rbp), %rax	# hv, tmp228
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	Perl_save_helem	#
	jmp	.L706	#
.L714:
	.loc 1 1782 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.729
	movzbl	37(%rax), %eax	# PL_op.729_118->op_private, D.18232
	movzbl	%al, %eax	# D.18232, D.18233
	andl	$96, %eax	#, D.18233
	testl	%eax, %eax	# D.18233
	je	.L706	#,
	.loc 1 1783 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.730
	movzbl	37(%rax), %eax	# PL_op.730_122->op_private, D.18232
	movzbl	%al, %eax	# D.18232, D.18234
	andl	$96, %eax	#, D.18234
	movl	%eax, %edx	# D.18234, D.18234
	movq	-96(%rbp), %rax	# svp, tmp229
	movq	(%rax), %rax	# *svp_1, D.18239
	movl	%edx, %esi	# D.18234,
	movq	%rax, %rdi	# D.18239,
	call	Perl_vivify_ref	#
.L706:
	.loc 1 1785 0
	cmpq	$0, -96(%rbp)	#, svp
	je	.L720	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# svp, tmp230
	movq	(%rax), %rax	# *svp_1, iftmp.731
	jmp	.L721	#
.L720:
	.loc 1 1785 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.731
.L721:
	.loc 1 1785 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.731, sv
	.loc 1 1792 0 is_stmt 1 discriminator 3
	cmpl	$0, -116(%rbp)	#, lval
	jne	.L722	#,
	.loc 1 1792 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# sv, tmp231
	movl	12(%rax), %eax	# sv_153->sv_flags, D.18234
	andl	$8192, %eax	#, D.18234
	testl	%eax, %eax	# D.18234
	je	.L722	#,
	.loc 1 1793 0 is_stmt 1
	movq	-88(%rbp), %rax	# sv, tmp232
	movq	%rax, %rdi	# tmp232,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -88(%rbp)	# tmp233, sv
.L722:
	.loc 1 1794 0
	addq	$8, %rbx	#, sp
	movq	-88(%rbp), %rax	# sv, tmp234
	movq	%rax, (%rbx)	# tmp234, *sp_157
	.loc 1 1795 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.732
	movq	(%rax), %rax	# PL_op.732_158->op_next, D.18231
.L703:
	.loc 1 1796 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_pp_helem, .-Perl_pp_helem
	.globl	Perl_pp_leave
	.type	Perl_pp_leave, @function
Perl_pp_leave:
.LFB35:
	.loc 1 1799 0
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
	.loc 1 1800 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1807 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.733
	movzbl	36(%rax), %eax	# PL_op.733_10->op_flags, D.18249
	testb	%al, %al	# D.18250
	jns	.L724	#,
	.loc 1 1808 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.734
	movq	8(%rax), %rcx	# PL_curstackinfo.734_13->si_cxstack, D.18251
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.735
	movl	16(%rax), %eax	# PL_curstackinfo.735_15->si_cxix, D.18252
	movslq	%eax, %rdx	# D.18252, D.18253
	movq	%rdx, %rax	# D.18253, tmp143
	salq	$3, %rax	#, tmp143
	addq	%rdx, %rax	# D.18253, tmp143
	salq	$4, %rax	#, tmp144
	leaq	(%rcx,%rax), %rbx	#, cx
	.loc 1 1809 0
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.736
	movq	%rax, 40(%rbx)	# PL_curpm.736, cx_19->cx_u.cx_blk.blku_oldpm
.L724:
	.loc 1 1812 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.737
	movq	8(%rax), %rsi	# PL_curstackinfo.737_21->si_cxstack, D.18251
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.738
	movl	16(%rax), %edx	# PL_curstackinfo.738_23->si_cxix, D.18252
	leal	-1(%rdx), %ecx	#, D.18252
	movl	%ecx, 16(%rax)	# D.18252, PL_curstackinfo.738_23->si_cxix
	movslq	%edx, %rdx	# D.18252, D.18253
	movq	%rdx, %rax	# D.18253, tmp145
	salq	$3, %rax	#, tmp145
	addq	%rdx, %rax	# D.18253, tmp145
	salq	$4, %rax	#, tmp146
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.739
	movl	8(%rbx), %edx	# cx_29->cx_u.cx_blk.blku_oldsp, D.18252
	movslq	%edx, %rdx	# D.18252, D.18253
	salq	$3, %rdx	#, D.18253
	addq	%rdx, %rax	# D.18253, tmp147
	movq	%rax, -32(%rbp)	# tmp147, newsp
	movq	16(%rbx), %rax	# cx_29->cx_u.cx_blk.blku_oldcop, PL_curcop.740
	movq	%rax, PL_curcop(%rip)	# PL_curcop.740, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.741
	movl	28(%rbx), %edx	# cx_29->cx_u.cx_blk.blku_oldmarksp, D.18252
	movslq	%edx, %rdx	# D.18252, D.18253
	salq	$2, %rdx	#, D.18253
	addq	%rdx, %rax	# D.18253, PL_markstack_ptr.742
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.742, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_29->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.743
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.743, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_29->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.744
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.744, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_29->cx_u.cx_blk.blku_oldpm, tmp148
	movq	%rax, -24(%rbp)	# tmp148, newpm
	movzbl	48(%rbx), %eax	# cx_29->cx_u.cx_blk.blku_gimme, D.18249
	movzbl	%al, %eax	# D.18249, tmp149
	movl	%eax, -40(%rbp)	# tmp149, gimme
	.loc 1 1814 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.746
	movzbl	36(%rax), %eax	# PL_op.746_46->op_flags, D.18249
	movzbl	%al, %eax	# D.18249, D.18252
	andl	$3, %eax	#, D.18252
	cmpl	$1, %eax	#, D.18252
	je	.L725	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.748
	movzbl	36(%rax), %eax	# PL_op.748_50->op_flags, D.18249
	movzbl	%al, %eax	# D.18249, D.18252
	andl	$3, %eax	#, D.18252
	cmpl	$2, %eax	#, D.18252
	je	.L726	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.750
	movzbl	36(%rax), %eax	# PL_op.750_54->op_flags, D.18249
	movzbl	%al, %eax	# D.18249, D.18252
	andl	$3, %eax	#, D.18252
	cmpl	$3, %eax	#, D.18252
	jne	.L727	#,
	movl	$1, %eax	#, iftmp.749
	jmp	.L730	#
.L727:
	.loc 1 1814 0 discriminator 2
	movl	$-1, %eax	#, iftmp.749
	jmp	.L730	#
.L726:
	movl	$0, %eax	#, iftmp.747
	jmp	.L730	#
.L725:
	movl	$128, %eax	#, iftmp.745
.L730:
	.loc 1 1814 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.745, gimme
	.loc 1 1815 0 is_stmt 1 discriminator 3
	cmpl	$-1, -40(%rbp)	#, gimme
	jne	.L731	#,
	.loc 1 1816 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.751
	movl	16(%rax), %eax	# PL_curstackinfo.751_65->si_cxix, D.18252
	testl	%eax, %eax	# D.18252
	js	.L732	#,
	.loc 1 1817 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.752
	movq	8(%rax), %rcx	# PL_curstackinfo.752_67->si_cxstack, D.18251
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.753
	movl	16(%rax), %eax	# PL_curstackinfo.753_69->si_cxix, D.18252
	movslq	%eax, %rdx	# D.18252, D.18253
	movq	%rdx, %rax	# D.18253, tmp150
	salq	$3, %rax	#, tmp150
	addq	%rdx, %rax	# D.18253, tmp150
	salq	$4, %rax	#, tmp151
	addq	%rcx, %rax	# D.18251, D.18251
	movzbl	48(%rax), %eax	# _73->cx_u.cx_blk.blku_gimme, D.18249
	movzbl	%al, %eax	# D.18249, tmp152
	movl	%eax, -40(%rbp)	# tmp152, gimme
	jmp	.L731	#
.L732:
	.loc 1 1819 0
	movl	$0, -40(%rbp)	#, gimme
.L731:
	.loc 1 1822 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 1823 0
	cmpl	$128, -40(%rbp)	#, gimme
	jne	.L733	#,
	.loc 1 1824 0
	movq	-32(%rbp), %r12	# newsp, sp
	jmp	.L734	#
.L733:
	.loc 1 1825 0
	cmpl	$0, -40(%rbp)	#, gimme
	jne	.L735	#,
	.loc 1 1826 0
	movq	-32(%rbp), %rax	# newsp, tmp153
	leaq	8(%rax), %rbx	#, mark
	.loc 1 1827 0
	cmpq	%r12, %rbx	# sp, mark
	ja	.L736	#,
	.loc 1 1828 0
	movq	(%r12), %rax	# *sp_9, D.18254
	movl	12(%rax), %eax	# _79->sv_flags, D.18255
	andl	$2560, %eax	#, D.18255
	testl	%eax, %eax	# D.18255
	je	.L737	#,
	.loc 1 1829 0
	movq	(%r12), %rax	# *sp_9, D.18254
	movq	%rax, (%rbx)	# D.18254, *mark_78
	jmp	.L739	#
.L737:
	.loc 1 1831 0
	movq	(%r12), %rax	# *sp_9, D.18254
	movq	%rax, %rdi	# D.18254,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%rbx)	# D.18254, *mark_78
	jmp	.L739	#
.L736:
	.loc 1 1833 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.754
	movq	%rax, %rdx	# PL_stack_max.754, PL_stack_max.755
	movq	%rbx, %rax	# mark, mark.756
	subq	%rax, %rdx	# mark.756, D.18256
	movq	%rdx, %rax	# D.18256, D.18256
	cmpq	$-7, %rax	#, D.18256
	jge	.L740	#,
.LBB92:
	.loc 1 1833 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx	# mark, mark.757
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.758
	subq	%rax, %rdx	# PL_stack_base.759, D.18256
	movq	%rdx, %rax	# D.18256, D.18256
	sarq	$3, %rax	#, tmp154
	movl	%eax, -36(%rbp)	# D.18256, markoff
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# mark,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.760
	movl	-36(%rbp), %edx	# markoff, tmp155
	movslq	%edx, %rdx	# tmp155, D.18253
	salq	$3, %rdx	#, D.18253
	leaq	(%rax,%rdx), %rbx	#, mark
.L740:
.LBE92:
	.loc 1 1834 0 is_stmt 1
	movq	$PL_sv_undef, (%rbx)	#, *mark_2
.L739:
	.loc 1 1836 0 discriminator 4
	movq	%rbx, %r12	# mark, sp
	jmp	.L734	#
.L735:
	.loc 1 1838 0
	cmpl	$1, -40(%rbp)	#, gimme
	jne	.L734	#,
	.loc 1 1840 0
	movq	-32(%rbp), %rax	# newsp, tmp156
	leaq	8(%rax), %rbx	#, mark
	jmp	.L741	#
.L743:
	.loc 1 1841 0
	movq	(%rbx), %rax	# *mark_4, D.18254
	movl	12(%rax), %eax	# _102->sv_flags, D.18255
	andl	$2560, %eax	#, D.18255
	testl	%eax, %eax	# D.18255
	jne	.L742	#,
	.loc 1 1842 0
	movq	(%rbx), %rax	# *mark_4, D.18254
	movq	%rax, %rdi	# D.18254,
	call	Perl_sv_mortalcopy	#
	movq	%rax, (%rbx)	# D.18254, *mark_4
	.loc 1 1843 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L742:
	.loc 1 1840 0
	addq	$8, %rbx	#, mark
.L741:
	.loc 1 1840 0 is_stmt 0 discriminator 1
	cmpq	%r12, %rbx	# sp, mark
	jbe	.L743	#,
.L734:
	.loc 1 1847 0 is_stmt 1
	movq	-24(%rbp), %rax	# newpm, tmp157
	movq	%rax, PL_curpm(%rip)	# tmp157, PL_curpm
	.loc 1 1849 0
	call	Perl_pop_scope	#
	.loc 1 1851 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.761
	movq	(%rax), %rax	# PL_op.761_108->op_next, D.18257
	.loc 1 1852 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_pp_leave, .-Perl_pp_leave
	.section	.rodata
.LC28:
	.string	"panic: pp_iter"
	.align 8
.LC29:
	.string	"Use of freed value in iteration"
	.text
	.globl	Perl_pp_iter
	.type	Perl_pp_iter, @function
Perl_pp_iter:
.LFB36:
	.loc 1 1855 0
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
	.loc 1 1856 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1862 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.762
	movq	%rax, %rdx	# PL_stack_max.762, PL_stack_max.763
	movq	%rbx, %rax	# sp, sp.764
	subq	%rax, %rdx	# sp.764, D.18259
	movq	%rdx, %rax	# D.18259, D.18259
	cmpq	$7, %rax	#, D.18259
	jg	.L746	#,
	.loc 1 1862 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L746:
	.loc 1 1863 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.765
	movq	8(%rax), %rcx	# PL_curstackinfo.765_22->si_cxstack, D.18260
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.766
	movl	16(%rax), %eax	# PL_curstackinfo.766_24->si_cxix, D.18261
	movslq	%eax, %rdx	# D.18261, D.18262
	movq	%rdx, %rax	# D.18262, tmp202
	salq	$3, %rax	#, tmp202
	addq	%rdx, %rax	# D.18262, tmp202
	salq	$4, %rax	#, tmp203
	leaq	(%rcx,%rax), %r12	#, cx
	.loc 1 1864 0
	movl	(%r12), %eax	# cx_28->cx_type, D.18263
	movzbl	%al, %eax	# D.18263, D.18263
	cmpl	$3, %eax	#, D.18263
	je	.L747	#,
	.loc 1 1865 0
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L748	#
.L747:
	.loc 1 1867 0
	movq	96(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.itervar, tmp204
	movq	%rax, -80(%rbp)	# tmp204, itersvp
	.loc 1 1868 0
	movq	120(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterary, tmp205
	movq	%rax, -72(%rbp)	# tmp205, av
	.loc 1 1869 0
	movq	-72(%rbp), %rax	# av, tmp206
	movl	12(%rax), %eax	# av_33->sv_flags, D.18263
	movzbl	%al, %eax	# D.18263, D.18263
	cmpl	$10, %eax	#, D.18263
	je	.L749	#,
	.loc 1 1871 0
	movq	112(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterlval, D.18264
	testq	%rax, %rax	# D.18264
	je	.L750	#,
.LBB93:
	.loc 1 1873 0
	movq	112(%r12), %r12	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterlval, cur
	.loc 1 1874 0
	movq	$0, -104(%rbp)	#, maxlen
	.loc 1 1875 0
	movq	-72(%rbp), %rax	# av, tmp207
	movl	12(%rax), %eax	# MEM[(struct SV *)av_33].sv_flags, D.18263
	andl	$118423552, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	je	.L751	#,
	.loc 1 1875 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp208
	movl	12(%rax), %eax	# MEM[(struct SV *)av_33].sv_flags, D.18263
	andl	$262144, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	je	.L752	#,
	movq	-72(%rbp), %rax	# av, tmp209
	movq	(%rax), %rax	# MEM[(struct SV *)av_33].sv_any, D.18265
	movq	8(%rax), %rax	# MEM[(struct XPV *)_42].xpv_cur, maxlen.769
	movq	%rax, -104(%rbp)	# maxlen.769, maxlen
	movq	-72(%rbp), %rax	# av, tmp210
	movq	(%rax), %rax	# MEM[(struct SV *)av_33].sv_any, D.18265
	movq	(%rax), %rax	# MEM[(struct XPV *)_44].xpv_pv, iftmp.768
	jmp	.L754	#
.L752:
	.loc 1 1875 0 discriminator 2
	leaq	-104(%rbp), %rcx	#, tmp211
	movq	-72(%rbp), %rax	# av, tmp212
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	Perl_sv_2pv_flags	#
	jmp	.L754	#
.L751:
	movl	$.LC1, %eax	#, iftmp.767
.L754:
	.loc 1 1875 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.767, max
	.loc 1 1876 0 is_stmt 1 discriminator 3
	movl	12(%r12), %eax	# cur_37->sv_flags, D.18263
	andl	$196608, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L755	#,
	.loc 1 1876 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# cur_37->sv_any, D.18265
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_52].xpv_cur, D.18262
	movq	-104(%rbp), %rax	# maxlen, maxlen.770
	cmpq	%rax, %rdx	# maxlen.770, D.18262
	ja	.L755	#,
	.loc 1 1878 0 is_stmt 1
	movq	-80(%rbp), %rax	# itersvp, tmp213
	movq	(%rax), %rax	# *itersvp_32, D.18264
	movl	8(%rax), %eax	# _55->sv_refcnt, D.18263
	cmpl	$1, %eax	#, D.18263
	jne	.L756	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# itersvp, tmp214
	movq	(%rax), %rax	# *itersvp_32, D.18264
	movl	12(%rax), %eax	# _57->sv_flags, D.18263
	andl	$57344, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L756	#,
	.loc 1 1880 0 is_stmt 1
	movq	-80(%rbp), %rax	# itersvp, tmp215
	movq	(%rax), %rax	# *itersvp_32, D.18264
	movl	$2, %edx	#,
	movq	%r12, %rsi	# cur,
	movq	%rax, %rdi	# D.18264,
	call	Perl_sv_setsv_flags	#
	jmp	.L757	#
.L756:
	.loc 1 1888 0
	movq	-80(%rbp), %rax	# itersvp, tmp216
	movq	(%rax), %rax	# *itersvp_32, tmp217
	movq	%rax, -56(%rbp)	# tmp217, oldsv
	.loc 1 1889 0
	movq	%r12, %rdi	# cur,
	call	Perl_newSVsv	#
	movq	-80(%rbp), %rdx	# itersvp, tmp218
	movq	%rax, (%rdx)	# D.18264, *itersvp_32
	.loc 1 1890 0
	movq	-56(%rbp), %rax	# oldsv, tmp219
	movq	%rax, %rdi	# tmp219,
	call	Perl_sv_free	#
.L757:
	.loc 1 1892 0
	movq	(%r12), %rax	# cur_37->sv_any, D.18265
	movq	(%rax), %rax	# MEM[(struct XPV *)_63].xpv_pv, D.18266
	movq	-64(%rbp), %rdx	# max, tmp220
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# D.18266,
	call	strcmp	#
	testl	%eax, %eax	# D.18261
	jne	.L758	#,
	.loc 1 1893 0
	movl	$0, %esi	#,
	movq	%r12, %rdi	# cur,
	call	Perl_sv_setiv	#
	jmp	.L759	#
.L758:
	.loc 1 1895 0
	movq	%r12, %rdi	# cur,
	call	Perl_sv_inc	#
.L759:
	.loc 1 1896 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_66
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.771
	movq	(%rax), %rax	# PL_op.771_67->op_next, D.18258
	jmp	.L748	#
.L755:
	.loc 1 1898 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_69
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.772
	movq	(%rax), %rax	# PL_op.772_70->op_next, D.18258
	jmp	.L748	#
.L750:
.LBE93:
	.loc 1 1901 0
	movq	128(%r12), %rdx	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	movq	136(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.itermax, D.18259
	cmpq	%rax, %rdx	# D.18259, D.18259
	jle	.L761	#,
	.loc 1 1902 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_74
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.773
	movq	(%rax), %rax	# PL_op.773_75->op_next, D.18258
	jmp	.L748	#
.L761:
	.loc 1 1905 0
	movq	-80(%rbp), %rax	# itersvp, tmp221
	movq	(%rax), %rax	# *itersvp_32, D.18264
	movl	8(%rax), %eax	# _77->sv_refcnt, D.18263
	cmpl	$1, %eax	#, D.18263
	jne	.L762	#,
	.loc 1 1905 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# itersvp, tmp222
	movq	(%rax), %rax	# *itersvp_32, D.18264
	movl	12(%rax), %eax	# _79->sv_flags, D.18263
	andl	$57344, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L762	#,
	.loc 1 1907 0 is_stmt 1
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	leaq	1(%rax), %rdx	#, D.18259
	movq	%rdx, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	-80(%rbp), %rdx	# itersvp, tmp223
	movq	(%rdx), %rdx	# *itersvp_32, D.18264
	movq	%rax, %rsi	# D.18259,
	movq	%rdx, %rdi	# D.18264,
	call	Perl_sv_setiv	#
	jmp	.L763	#
.L762:
	.loc 1 1915 0
	movq	-80(%rbp), %rax	# itersvp, tmp224
	movq	(%rax), %rax	# *itersvp_32, tmp225
	movq	%rax, -56(%rbp)	# tmp225, oldsv
	.loc 1 1916 0
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	leaq	1(%rax), %rdx	#, D.18259
	movq	%rdx, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	%rax, %rdi	# D.18259,
	call	Perl_newSViv	#
	movq	-80(%rbp), %rdx	# itersvp, tmp226
	movq	%rax, (%rdx)	# D.18264, *itersvp_32
	.loc 1 1917 0
	movq	-56(%rbp), %rax	# oldsv, tmp227
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_free	#
.L763:
	.loc 1 1919 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_91
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.774
	movq	(%rax), %rax	# PL_op.774_92->op_next, D.18258
	jmp	.L748	#
.L749:
	.loc 1 1923 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.775
	movzbl	37(%rax), %eax	# PL_op.775_94->op_private, D.18267
	movzbl	%al, %eax	# D.18267, D.18261
	andl	$4, %eax	#, D.18261
	testl	%eax, %eax	# D.18261
	je	.L764	#,
	.loc 1 1925 0
	movq	128(%r12), %rdx	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	movq	136(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.itermax, D.18259
	cmpq	%rax, %rdx	# D.18259, D.18259
	jg	.L765	#,
	.loc 1 1926 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_100
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.776
	movq	(%rax), %rax	# PL_op.776_101->op_next, D.18258
	jmp	.L748	#
.L765:
	.loc 1 1928 0
	movq	-72(%rbp), %rax	# av, tmp228
	movl	12(%rax), %eax	# av_33->sv_flags, D.18263
	andl	$57344, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L766	#,
	.loc 1 1928 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp229
	movq	(%rax), %rax	# av_33->sv_any, D.18268
	movzbl	72(%rax), %eax	# _105->xav_flags, D.18267
	movzbl	%al, %eax	# D.18267, D.18261
	andl	$2, %eax	#, D.18261
	testl	%eax, %eax	# D.18261
	je	.L767	#,
.L766:
.LBB94:
	.loc 1 1929 0 is_stmt 1
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	leaq	-1(%rax), %rdx	#, D.18259
	movq	%rdx, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	movl	%eax, %ecx	# D.18259, D.18261
	movq	-72(%rbp), %rax	# av, tmp230
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18261,
	movq	%rax, %rdi	# tmp230,
	call	Perl_av_fetch	#
	movq	%rax, -48(%rbp)	# tmp231, svp
	.loc 1 1930 0
	cmpq	$0, -48(%rbp)	#, svp
	je	.L768	#,
	.loc 1 1931 0
	movq	-48(%rbp), %rax	# svp, tmp232
	movq	(%rax), %rax	# *svp_122, tmp233
	movq	%rax, -96(%rbp)	# tmp233, sv
.LBE94:
	.loc 1 1928 0
	jmp	.L770	#
.L768:
.LBB95:
	.loc 1 1933 0
	movq	$0, -96(%rbp)	#, sv
.LBE95:
	.loc 1 1928 0
	jmp	.L770	#
.L767:
	.loc 1 1936 0
	movq	-72(%rbp), %rax	# av, tmp234
	movq	(%rax), %rax	# av_33->sv_any, D.18268
	movq	(%rax), %rcx	# _109->xav_array, D.18266
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	leaq	-1(%rax), %rdx	#, D.18259
	movq	%rdx, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	salq	$3, %rax	#, D.18262
	addq	%rcx, %rax	# D.18266, D.18269
	movq	(%rax), %rax	# *_116, tmp235
	movq	%rax, -96(%rbp)	# tmp235, sv
	jmp	.L771	#
.L770:
	jmp	.L771	#
.L764:
	.loc 1 1940 0
	movq	128(%r12), %r13	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.778
	cmpq	%rax, -72(%rbp)	# PL_curstack.778, av
	jne	.L772	#,
	.loc 1 1940 0 is_stmt 0 discriminator 1
	movl	8(%r12), %eax	# cx_28->cx_u.cx_blk.blku_oldsp, D.18261
	cltq
	jmp	.L773	#
.L772:
	.loc 1 1941 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# av, tmp236
	movl	12(%rax), %eax	# MEM[(struct SV *)av_33].sv_flags, D.18263
	andl	$32768, %eax	#, D.18263
	.loc 1 1940 0 discriminator 2
	testl	%eax, %eax	# D.18263
	je	.L774	#,
	.loc 1 1941 0
	movq	-72(%rbp), %rax	# av, tmp237
	movq	%rax, %rdi	# tmp237,
	call	Perl_mg_size	#
	.loc 1 1940 0
	cltq
	jmp	.L773	#
.L774:
	.loc 1 1941 0 discriminator 3
	movq	-72(%rbp), %rax	# av, tmp238
	movq	(%rax), %rax	# av_33->sv_any, D.18268
	.loc 1 1940 0 discriminator 3
	movq	8(%rax), %rax	# _133->xav_fill, iftmp.779
.L773:
	.loc 1 1940 0 is_stmt 0 discriminator 5
	cmpq	%rax, %r13	# iftmp.777, D.18259
	jl	.L776	#,
	.loc 1 1942 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	$PL_sv_no, (%rbx)	#, *sp_136
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.780
	movq	(%rax), %rax	# PL_op.780_137->op_next, D.18258
	jmp	.L748	#
.L776:
	.loc 1 1944 0
	movq	-72(%rbp), %rax	# av, tmp239
	movl	12(%rax), %eax	# av_33->sv_flags, D.18263
	andl	$57344, %eax	#, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L777	#,
	.loc 1 1944 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# av, tmp240
	movq	(%rax), %rax	# av_33->sv_any, D.18268
	movzbl	72(%rax), %eax	# _141->xav_flags, D.18267
	movzbl	%al, %eax	# D.18267, D.18261
	andl	$2, %eax	#, D.18261
	testl	%eax, %eax	# D.18261
	je	.L778	#,
.L777:
.LBB96:
	.loc 1 1945 0 is_stmt 1
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	addq	$1, %rax	#, D.18259
	movq	%rax, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	128(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	movl	%eax, %ecx	# D.18259, D.18261
	movq	-72(%rbp), %rax	# av, tmp241
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18261,
	movq	%rax, %rdi	# tmp241,
	call	Perl_av_fetch	#
	movq	%rax, -40(%rbp)	# tmp242, svp
	.loc 1 1946 0
	cmpq	$0, -40(%rbp)	#, svp
	je	.L779	#,
	.loc 1 1947 0
	movq	-40(%rbp), %rax	# svp, tmp243
	movq	(%rax), %rax	# *svp_158, tmp244
	movq	%rax, -96(%rbp)	# tmp244, sv
.LBE96:
	.loc 1 1944 0
	jmp	.L771	#
.L779:
.LBB97:
	.loc 1 1949 0
	movq	$0, -96(%rbp)	#, sv
.LBE97:
	.loc 1 1944 0
	jmp	.L771	#
.L778:
	.loc 1 1952 0
	movq	-72(%rbp), %rax	# av, tmp245
	movq	(%rax), %rax	# av_33->sv_any, D.18268
	movq	(%rax), %rax	# _145->xav_array, D.18266
	movq	128(%r12), %rdx	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	addq	$1, %rdx	#, D.18259
	movq	%rdx, 128(%r12)	# D.18259, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix
	movq	128(%r12), %rdx	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	salq	$3, %rdx	#, D.18262
	addq	%rdx, %rax	# D.18262, D.18269
	movq	(%rax), %rax	# *_152, tmp246
	movq	%rax, -96(%rbp)	# tmp246, sv
.L771:
	.loc 1 1956 0
	cmpq	$0, -96(%rbp)	#, sv
	je	.L781	#,
	.loc 1 1956 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# sv, tmp247
	movl	8(%rax), %eax	# sv_5->sv_refcnt, D.18263
	testl	%eax, %eax	# D.18263
	jne	.L781	#,
	.loc 1 1957 0 is_stmt 1
	movq	-80(%rbp), %rax	# itersvp, tmp248
	movq	$0, (%rax)	#, *itersvp_32
	.loc 1 1958 0
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L781:
	.loc 1 1961 0
	cmpq	$0, -96(%rbp)	#, sv
	je	.L782	#,
	.loc 1 1962 0
	movq	-96(%rbp), %rax	# sv, tmp249
	movl	12(%rax), %eax	# sv_5->sv_flags, D.18263
	andb	$247, %ah	#, D.18263
	movl	%eax, %edx	# D.18263, D.18263
	movq	-96(%rbp), %rax	# sv, tmp250
	movl	%edx, 12(%rax)	# D.18263, sv_5->sv_flags
	jmp	.L783	#
.L782:
	.loc 1 1964 0
	movq	$PL_sv_undef, -96(%rbp)	#, sv
.L783:
	.loc 1 1965 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.781
	cmpq	%rax, -72(%rbp)	# PL_curstack.781, av
	je	.L784	#,
	.loc 1 1965 0 is_stmt 0 discriminator 1
	cmpq	$PL_sv_undef, -96(%rbp)	#, sv
	jne	.L784	#,
.LBB98:
	.loc 1 1966 0 is_stmt 1
	movq	112(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterlval, tmp251
	movq	%rax, -88(%rbp)	# tmp251, lv
	.loc 1 1967 0
	cmpq	$0, -88(%rbp)	#, lv
	je	.L785	#,
	.loc 1 1967 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# lv, tmp252
	movl	8(%rax), %eax	# lv_166->sv_refcnt, D.18263
	cmpl	$1, %eax	#, D.18263
	jbe	.L785	#,
	.loc 1 1968 0 is_stmt 1
	movq	-88(%rbp), %rax	# lv, tmp253
	movq	%rax, %rdi	# tmp253,
	call	Perl_sv_free	#
	.loc 1 1969 0
	movq	$0, -88(%rbp)	#, lv
.L785:
	.loc 1 1971 0
	cmpq	$0, -88(%rbp)	#, lv
	je	.L786	#,
	.loc 1 1972 0
	movq	-88(%rbp), %rax	# lv, tmp254
	movq	(%rax), %rax	# lv_8->sv_any, D.18265
	movq	72(%rax), %rax	# MEM[(struct XPVLV *)_169].xlv_targ, D.18264
	movq	%rax, %rdi	# D.18264,
	call	Perl_sv_free	#
	jmp	.L787	#
.L786:
	.loc 1 1974 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, 112(%r12)	# D.18264, cx_28->cx_u.cx_blk.blk_u.blku_loop.iterlval
	movq	112(%r12), %rax	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterlval, tmp255
	movq	%rax, -88(%rbp)	# tmp255, lv
	.loc 1 1975 0
	movq	-88(%rbp), %rax	# lv, tmp256
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	Perl_sv_upgrade	#
	.loc 1 1976 0
	movq	-88(%rbp), %rax	# lv, tmp257
	movq	(%rax), %rax	# lv_172->sv_any, D.18265
	movb	$121, 80(%rax)	#, MEM[(struct XPVLV *)_173].xlv_type
	.loc 1 1977 0
	movq	-88(%rbp), %rax	# lv, tmp258
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$121, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	Perl_sv_magic	#
.L787:
	.loc 1 1979 0
	movq	-72(%rbp), %rax	# av, tmp259
	movq	%rax, PL_Sv(%rip)	# tmp259, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.783
	testq	%rax, %rax	# PL_Sv.783
	je	.L789	#,
	.loc 1 1979 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.784
	movl	8(%rax), %edx	# PL_Sv.784_175->sv_refcnt, D.18263
	addl	$1, %edx	#, D.18263
	movl	%edx, 8(%rax)	# D.18263, PL_Sv.784_175->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.784_175->sv_refcnt, D.18263
	testl	%eax, %eax	# D.18263
	je	.L789	#,
	.loc 1 1979 0
	nop
.L789:
	.loc 1 1979 0 discriminator 4
	movq	-88(%rbp), %rax	# lv, tmp260
	movq	(%rax), %rax	# lv_9->sv_any, D.18265
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.785
	movq	%rdx, 72(%rax)	# PL_Sv.785, MEM[(struct XPVLV *)_181].xlv_targ
	.loc 1 1980 0 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax	# lv, tmp261
	movq	(%rax), %rax	# lv_9->sv_any, D.18265
	movq	128(%r12), %rdx	# cx_28->cx_u.cx_blk.blk_u.blku_loop.iterix, D.18259
	movq	%rdx, 56(%rax)	# D.18262, MEM[(struct XPVLV *)_183].xlv_targoff
	.loc 1 1981 0 discriminator 4
	movq	-88(%rbp), %rax	# lv, tmp262
	movq	(%rax), %rax	# lv_9->sv_any, D.18265
	movq	$-1, 64(%rax)	#, MEM[(struct XPVLV *)_186].xlv_targlen
	.loc 1 1982 0 discriminator 4
	movq	-88(%rbp), %rax	# lv, tmp263
	movq	%rax, -96(%rbp)	# tmp263, sv
.L784:
.LBE98:
	.loc 1 1985 0
	movq	-80(%rbp), %rax	# itersvp, tmp264
	movq	(%rax), %rax	# *itersvp_32, tmp265
	movq	%rax, -56(%rbp)	# tmp265, oldsv
	.loc 1 1986 0
	movq	-96(%rbp), %rax	# sv, tmp266
	movq	%rax, PL_Sv(%rip)	# tmp266, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.787
	testq	%rax, %rax	# PL_Sv.787
	je	.L791	#,
	.loc 1 1986 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.788
	movl	8(%rax), %edx	# PL_Sv.788_190->sv_refcnt, D.18263
	addl	$1, %edx	#, D.18263
	movl	%edx, 8(%rax)	# D.18263, PL_Sv.788_190->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.788_190->sv_refcnt, D.18263
	testl	%eax, %eax	# D.18263
	je	.L791	#,
	.loc 1 1986 0
	nop
.L791:
	.loc 1 1986 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.789
	movq	-80(%rbp), %rax	# itersvp, tmp267
	movq	%rdx, (%rax)	# PL_Sv.789, *itersvp_32
	.loc 1 1987 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# oldsv, tmp268
	movq	%rax, %rdi	# tmp268,
	call	Perl_sv_free	#
	.loc 1 1989 0 discriminator 4
	addq	$8, %rbx	#, sp
	movq	$PL_sv_yes, (%rbx)	#, *sp_197
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.790
	movq	(%rax), %rax	# PL_op.790_198->op_next, D.18258
.L748:
	.loc 1 1990 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_pp_iter, .-Perl_pp_iter
	.section	.rodata
.LC30:
	.string	"panic: pp_subst"
.LC31:
	.string	"Substitution loop"
	.text
	.globl	Perl_pp_subst
	.type	Perl_pp_subst, @function
Perl_pp_subst:
.LFB37:
	.loc 1 1993 0
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
	subq	$136, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 1994 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 1995 0
	movq	PL_op(%rip), %rax	# PL_op, pm
	movq	%rax, %rsi	# pm, pm
	movq	%rsi, -152(%rbp)	# pm, %sfp
	.loc 1 1996 0
	movq	%rsi, %rax	# pm, pm
	movq	%rax, -64(%rbp)	# pm, rpm
	.loc 1 2004 0
	movl	$0, -140(%rbp)	#, iters
	.loc 1 2011 0
	movq	%rsi, %rax	# pm, pm
	movq	80(%rax), %r13	# pm_61->op_pmregexp, rx
	.loc 1 2013 0
	movl	$0, -132(%rbp)	#, force_on_match
	.loc 1 2014 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, tmp455
	movl	%eax, -128(%rbp)	# tmp455, oldsave
	.loc 1 2016 0
	movb	$0, -142(%rbp)	#, doutf8
	.loc 1 2017 0
	movq	$0, -72(%rbp)	#, nsv
	.loc 1 2020 0
	movq	%rsi, %rax	# pm, pm
	movl	88(%rax), %eax	# pm_61->op_pmflags, D.18273
	andl	$64, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L793	#,
	.loc 1 2020 0 is_stmt 0 discriminator 1
	movq	%r12, %rax	# sp, sp.792
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.792_71, iftmp.791
	jmp	.L794	#
.L793:
	.loc 1 2020 0 discriminator 2
	movl	$0, %eax	#, iftmp.791
.L794:
	.loc 1 2020 0 discriminator 3
	movq	%rax, %r15	# iftmp.791, dstr
	.loc 1 2021 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.793
	movzbl	36(%rax), %eax	# PL_op.793_76->op_flags, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$64, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	je	.L795	#,
	.loc 1 2022 0
	movq	%r12, %rax	# sp, sp.794
	leaq	-8(%rax), %r12	#, sp
	movq	(%rax), %rax	# *sp.794_80, tmp456
	movq	%rax, -104(%rbp)	# tmp456, targ
	jmp	.L796	#
.L795:
	.loc 1 2024 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.795
	movq	(%rax), %rax	# PL_defgv.795_83->sv_any, D.18276
	movq	56(%rax), %rax	# _84->xgv_gp, D.18277
	movq	(%rax), %rax	# _85->gp_sv, tmp457
	movq	%rax, -104(%rbp)	# tmp457, targ
	.loc 1 2025 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.796
	movq	%rax, %rdx	# PL_stack_max.796, PL_stack_max.797
	movq	%r12, %rax	# sp, sp.798
	subq	%rax, %rdx	# sp.798, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	cmpq	$7, %rax	#, D.18278
	jg	.L796	#,
	.loc 1 2025 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L796:
	.loc 1 2028 0 is_stmt 1
	movq	-104(%rbp), %rax	# targ, tmp458
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$1048576, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L797	#,
	.loc 1 2028 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp459
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$8388608, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L797	#,
	.loc 1 2029 0 is_stmt 1
	movq	-104(%rbp), %rax	# targ, tmp460
	movq	%rax, %rdi	# tmp460,
	call	Perl_sv_force_normal	#
.L797:
	.loc 1 2030 0
	movq	-104(%rbp), %rax	# targ, tmp461
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$8388608, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	jne	.L798	#,
	.loc 1 2031 0
	movq	-104(%rbp), %rax	# targ, tmp462
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	movzbl	%al, %eax	# D.18273, D.18273
	cmpl	$9, %eax	#, D.18273
	jbe	.L799	#,
	.loc 1 2032 0
	movq	-104(%rbp), %rax	# targ, tmp463
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	movzbl	%al, %eax	# D.18273, D.18273
	cmpl	$13, %eax	#, D.18273
	jne	.L798	#,
	.loc 1 2032 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp464
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$1048576, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	jne	.L799	#,
.L798:
	.loc 1 2033 0 is_stmt 1
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L905	#
.L799:
	.loc 1 2034 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2036 0
	movq	-104(%rbp), %rax	# targ, tmp465
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$262144, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L801	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp466
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	8(%rax), %rax	# MEM[(struct XPV *)_106].xpv_cur, len.800
	movq	%rax, -112(%rbp)	# len.800, len
	movq	-104(%rbp), %rax	# targ, tmp467
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_108].xpv_pv, iftmp.799
	jmp	.L802	#
.L801:
	.loc 1 2036 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp468
	movq	-104(%rbp), %rax	# targ, tmp469
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp468,
	movq	%rax, %rdi	# tmp469,
	call	Perl_sv_2pv_flags	#
.L802:
	.loc 1 2036 0 discriminator 3
	movq	%rax, %rbx	# iftmp.799, s
	.loc 1 2037 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# targ, tmp470
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$67108864, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L803	#,
	.loc 1 2037 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp471
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	movzbl	%al, %eax	# D.18273, D.18273
	cmpl	$13, %eax	#, D.18273
	jne	.L804	#,
.L803:
	.loc 1 2038 0 is_stmt 1
	movl	$1, -132(%rbp)	#, force_on_match
.L804:
	.loc 1 2039 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movzbl	96(%rax), %eax	# pm_61->op_pmdynflags, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$2, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L805	#,
	.loc 1 2040 0 discriminator 2
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.802
	.loc 1 2039 0 discriminator 2
	testb	%al, %al	# PL_tainted.802
	je	.L806	#,
	.loc 1 2040 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movl	88(%rax), %eax	# pm_61->op_pmflags, D.18273
	andl	$1, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L806	#,
.L805:
	.loc 1 2039 0 discriminator 1
	movl	$1, %eax	#, iftmp.801
	jmp	.L807	#
.L806:
	.loc 1 2039 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.801
.L807:
	.loc 1 2039 0 discriminator 4
	movb	%al, -143(%rbp)	# iftmp.801, rxtainted
	.loc 1 2041 0 is_stmt 1 discriminator 4
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.803
	testb	%al, %al	# PL_tainted.803
	je	.L808	#,
	.loc 1 2042 0
	orb	$2, -143(%rbp)	#, rxtainted
.L808:
	.loc 1 2043 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 2045 0
	movq	-104(%rbp), %rax	# targ, tmp472
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L809	#,
	.loc 1 2045 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.805
	movzbl	37(%rax), %eax	# PL_curcop.805_130->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L809	#,
	movl	92(%r13), %eax	# rx_64->reganch, D.18273
	orl	$268435456, %eax	#, D.18273
	movl	%eax, 92(%r13)	# D.18273, rx_64->reganch
	movb	$1, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
	jmp	.L810	#
.L809:
	.loc 1 2045 0 discriminator 2
	movl	92(%r13), %eax	# rx_64->reganch, D.18273
	andl	$-268435457, %eax	#, D.18273
	movl	%eax, 92(%r13)	# D.18273, rx_64->reganch
	movb	$0, PL_reg_match_utf8(%rip)	#, PL_reg_match_utf8
.L810:
	.loc 1 2048 0 is_stmt 1
	cmpq	$0, -152(%rbp)	#, %sfp
	je	.L811	#,
	.loc 1 2048 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# s
	jne	.L812	#,
.L811:
	.loc 1 2049 0 is_stmt 1
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L905	#
.L812:
	.loc 1 2051 0
	movq	-112(%rbp), %rax	# len, len.806
	addq	%rbx, %rax	# s, tmp473
	movq	%rax, -96(%rbp)	# tmp473, strend
	.loc 1 2052 0
	movl	92(%r13), %eax	# rx_34->reganch, D.18273
	andl	$268435456, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L813	#,
	.loc 1 2052 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# strend, tmp474
	movq	%rax, %rsi	# tmp474,
	movq	%rbx, %rdi	# s,
	call	Perl_utf8_length	#
	jmp	.L814	#
.L813:
	.loc 1 2052 0 discriminator 2
	movq	-112(%rbp), %rax	# len, iftmp.807
.L814:
	.loc 1 2052 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.807, slen
	.loc 1 2053 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# slen, tmp475
	addq	$5, %rax	#, D.18280
	addl	%eax, %eax	# D.18281
	movl	%eax, -124(%rbp)	# D.18281, maxiters
	.loc 1 2057 0 discriminator 3
	movl	76(%r13), %eax	# rx_34->prelen, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L815	#,
	.loc 1 2057 0 is_stmt 0 discriminator 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.808
	testq	%rax, %rax	# PL_curpm.808
	je	.L815	#,
	.loc 1 2058 0 is_stmt 1
	movq	PL_curpm(%rip), %rax	# PL_curpm, pm
	movq	%rax, -152(%rbp)	# pm, %sfp
	.loc 1 2059 0
	movq	80(%rax), %r13	# pm_153->op_pmregexp, rx
.L815:
	.loc 1 2061 0
	movl	80(%r13), %eax	# rx_35->nparens, D.18273
	.loc 1 2062 0
	testl	%eax, %eax	# D.18273
	jne	.L816	#,
	.loc 1 2061 0
	movq	-104(%rbp), %rax	# targ, tmp476
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$2048, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	jne	.L816	#,
	.loc 1 2061 0 is_stmt 0 discriminator 1
	movzbl	PL_sawampersand(%rip), %eax	# PL_sawampersand, PL_sawampersand.810
	.loc 1 2062 0 is_stmt 1 discriminator 1
	testb	%al, %al	# PL_sawampersand.810
	je	.L817	#,
.L816:
	movl	$1, %eax	#, iftmp.809
	jmp	.L818	#
.L817:
	.loc 1 2062 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.809
.L818:
	.loc 1 2061 0 is_stmt 1
	movl	%eax, -136(%rbp)	# iftmp.809, r_flags
	.loc 1 2063 0
	movq	-104(%rbp), %rax	# targ, tmp477
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$134217728, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L819	#,
	.loc 1 2064 0
	orl	$4, -136(%rbp)	#, r_flags
.L819:
	.loc 1 2065 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movl	88(%rax), %eax	# pm_7->op_pmflags, D.18273
	andl	$12288, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L820	#,
	.loc 1 2066 0
	movl	$PL_multiline, %edi	#,
	call	Perl_save_int	#
	.loc 1 2067 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movl	88(%rax), %eax	# pm_7->op_pmflags, D.18273
	andl	$4096, %eax	#, PL_multiline.811
	movl	%eax, PL_multiline(%rip)	# PL_multiline.811, PL_multiline
.L820:
	.loc 1 2069 0
	movq	%rbx, %r14	# s, m
	movq	%r14, -80(%rbp)	# m, orig
	.loc 1 2070 0
	movl	92(%r13), %eax	# rx_35->reganch, D.18273
	andl	$3145728, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L821	#,
	.loc 1 2071 0
	movq	-80(%rbp), %rax	# orig, tmp478
	movq	%rax, PL_bostr(%rip)	# tmp478, PL_bostr
	.loc 1 2072 0
	movq	PL_regint_start(%rip), %rax	# PL_regint_start, PL_regint_start.812
	movl	-136(%rbp), %ecx	# r_flags, r_flags.813
	movq	-96(%rbp), %rdx	# strend, tmp479
	movq	-104(%rbp), %rsi	# targ, tmp480
	movl	$0, %r9d	#,
	movl	%ecx, %r8d	# r_flags.813,
	movq	%rdx, %rcx	# tmp479,
	movq	%rbx, %rdx	# s,
	movq	%r13, %rdi	# rx,
	call	*%rax	# PL_regint_start.812
	movq	%rax, %rbx	#, s
	.loc 1 2074 0
	testq	%rbx, %rbx	# s
	jne	.L821	#,
	.loc 1 2075 0
	jmp	.L903	#
.L821:
	.loc 1 2087 0
	movq	-64(%rbp), %rax	# rpm, tmp481
	movl	88(%rax), %eax	# rpm_62->op_pmflags, D.18273
	andl	$256, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	sete	%al	#, D.18282
	movb	%al, -141(%rbp)	# D.18282, once
	.loc 1 2090 0
	testq	%r15, %r15	# dstr
	je	.L823	#,
	.loc 1 2092 0
	movq	-104(%rbp), %rax	# targ, tmp482
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L824	#,
	.loc 1 2092 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.814
	movzbl	37(%rax), %eax	# PL_curcop.814_183->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L824	#,
	cmpb	$0, -142(%rbp)	#, doutf8
	jne	.L824	#,
	.loc 1 2093 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -72(%rbp)	# tmp483, nsv
	.loc 1 2094 0
	cmpq	%r15, -72(%rbp)	# dstr, nsv
	je	.L825	#,
	.loc 1 2094 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# nsv, tmp484
	movl	$2, %edx	#,
	movq	%r15, %rsi	# dstr,
	movq	%rax, %rdi	# tmp484,
	call	Perl_sv_setsv_flags	#
.L825:
	.loc 1 2095 0 is_stmt 1
	movq	PL_encoding(%rip), %rax	# PL_encoding, PL_encoding.815
	testq	%rax, %rax	# PL_encoding.815
	je	.L826	#,
	.loc 1 2096 0
	movq	PL_encoding(%rip), %rdx	# PL_encoding, PL_encoding.816
	movq	-72(%rbp), %rax	# nsv, tmp485
	movq	%rdx, %rsi	# PL_encoding.816,
	movq	%rax, %rdi	# tmp485,
	call	Perl_sv_recode_to_utf8	#
	jmp	.L827	#
.L826:
	.loc 1 2098 0
	movq	-72(%rbp), %rax	# nsv, tmp486
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp486,
	call	Perl_sv_utf8_upgrade_flags	#
.L827:
	.loc 1 2099 0
	movq	-72(%rbp), %rax	# nsv, tmp487
	movl	12(%rax), %eax	# nsv_187->sv_flags, D.18273
	andl	$262144, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L828	#,
	.loc 1 2099 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# nsv, tmp488
	movq	(%rax), %rax	# nsv_187->sv_any, D.18279
	movq	8(%rax), %rax	# MEM[(struct XPV *)_192].xpv_cur, clen.818
	movq	%rax, -120(%rbp)	# clen.818, clen
	movq	-72(%rbp), %rax	# nsv, tmp489
	movq	(%rax), %rax	# nsv_187->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_194].xpv_pv, iftmp.817
	jmp	.L829	#
.L828:
	.loc 1 2099 0 discriminator 2
	leaq	-120(%rbp), %rcx	#, tmp490
	movq	-72(%rbp), %rax	# nsv, tmp491
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	Perl_sv_2pv_flags	#
.L829:
	.loc 1 2099 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.817, c
	.loc 1 2100 0 is_stmt 1 discriminator 3
	movb	$1, -142(%rbp)	#, doutf8
	jmp	.L835	#
.L824:
	.loc 1 2103 0
	movl	12(%r15), %eax	# dstr_75->sv_flags, D.18273
	andl	$262144, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L831	#,
	.loc 1 2103 0 is_stmt 0 discriminator 1
	movq	(%r15), %rax	# dstr_75->sv_any, D.18279
	movq	8(%rax), %rax	# MEM[(struct XPV *)_201].xpv_cur, clen.820
	movq	%rax, -120(%rbp)	# clen.820, clen
	movq	(%r15), %rax	# dstr_75->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_203].xpv_pv, iftmp.819
	jmp	.L832	#
.L831:
	.loc 1 2103 0 discriminator 2
	leaq	-120(%rbp), %rax	#, tmp492
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp492,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_2pv_flags	#
.L832:
	.loc 1 2103 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.819, c
	.loc 1 2104 0 is_stmt 1 discriminator 3
	movl	12(%r15), %eax	# dstr_75->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L833	#,
	.loc 1 2104 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.822
	movzbl	37(%rax), %eax	# PL_curcop.822_209->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L833	#,
	.loc 1 2104 0 discriminator 3
	movl	$1, %eax	#, iftmp.821
	jmp	.L834	#
.L833:
	.loc 1 2104 0 discriminator 2
	movl	$0, %eax	#, iftmp.821
.L834:
	.loc 1 2104 0 discriminator 4
	movb	%al, -142(%rbp)	# iftmp.821, doutf8
	jmp	.L835	#
.L823:
	.loc 1 2108 0 is_stmt 1
	movq	$0, -88(%rbp)	#, c
	.loc 1 2109 0
	movb	$0, -142(%rbp)	#, doutf8
.L835:
	.loc 1 2113 0
	cmpq	$0, -88(%rbp)	#, c
	je	.L836	#,
	.loc 1 2113 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# clen, clen.823
	movl	%eax, %edx	# clen.823, D.18275
	movl	72(%r13), %eax	# rx_35->minlen, D.18275
	cmpl	%eax, %edx	# D.18275, D.18275
	jg	.L836	#,
	cmpb	$0, -141(%rbp)	#, once
	jne	.L837	#,
	movl	-136(%rbp), %eax	# r_flags, tmp493
	andl	$1, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L836	#,
.L837:
	.loc 1 2114 0 is_stmt 1
	movl	92(%r13), %eax	# rx_35->reganch, D.18273
	andl	$512, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	jne	.L836	#,
	.loc 1 2115 0
	cmpb	$0, -142(%rbp)	#, doutf8
	je	.L838	#,
	.loc 1 2115 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp494
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L836	#,
.L838:
	.loc 1 2116 0 is_stmt 1
	movq	PL_regexecp(%rip), %rax	# PL_regexecp, PL_regexecp.824
	.loc 1 2117 0
	movl	-136(%rbp), %edx	# r_flags, tmp495
	orl	$2, %edx	#, D.18275
	.loc 1 2116 0
	movl	%edx, %esi	# D.18275, D.18273
	movq	-104(%rbp), %rdi	# targ, tmp496
	movq	-80(%rbp), %rcx	# orig, tmp497
	movq	-96(%rbp), %rdx	# strend, tmp498
	movl	%esi, 8(%rsp)	# D.18273,
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# tmp496,
	movl	$0, %r8d	#,
	movq	%rbx, %rsi	# s,
	movq	%r13, %rdi	# rx,
	call	*%rax	# PL_regexecp.824
	testl	%eax, %eax	# D.18275
	jne	.L839	#,
	.loc 1 2119 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2120 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_no, (%r12)	#, *sp_231
	.loc 1 2121 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.825
	cmpl	-128(%rbp), %eax	# oldsave, PL_savestack_ix.825
	jle	.L840	#,
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# oldsave, tmp499
	movl	%eax, %edi	# tmp499,
	call	Perl_leave_scope	#
.L840:
	.loc 1 2122 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.826
	movq	(%rax), %rax	# PL_op.826_233->op_next, D.18272
	jmp	.L905	#
.L839:
	.loc 1 2124 0
	cmpl	$0, -132(%rbp)	#, force_on_match
	je	.L841	#,
	.loc 1 2125 0
	movl	$0, -132(%rbp)	#, force_on_match
	.loc 1 2126 0
	movq	-104(%rbp), %rax	# targ, tmp500
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$10223616, %eax	#, D.18273
	cmpl	$262144, %eax	#, D.18273
	jne	.L842	#,
	.loc 1 2126 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp501
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	8(%rax), %rax	# MEM[(struct XPV *)_238].xpv_cur, len.828
	movq	%rax, -112(%rbp)	# len.828, len
	movq	-104(%rbp), %rax	# targ, tmp502
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_240].xpv_pv, iftmp.827
	jmp	.L843	#
.L842:
	.loc 1 2126 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp503
	movq	-104(%rbp), %rax	# targ, tmp504
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp503,
	movq	%rax, %rdi	# tmp504,
	call	Perl_sv_pvn_force_flags	#
.L843:
	.loc 1 2126 0 discriminator 3
	movq	%rax, %rbx	# iftmp.827, s
	.loc 1 2127 0 is_stmt 1 discriminator 3
	jmp	.L810	#
.L841:
	.loc 1 2129 0
	movq	%rbx, %r12	# s, d
	.loc 1 2130 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movq	%rax, PL_curpm(%rip)	# pm, PL_curpm
	.loc 1 2131 0
	movq	-104(%rbp), %rax	# targ, tmp505
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$-134217729, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp506
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
	.loc 1 2132 0
	cmpb	$0, -141(%rbp)	#, once
	je	.L844	#,
	.loc 1 2134 0
	movq	0(%r13), %rax	# rx_35->startp, D.18283
	movl	(%rax), %eax	# *_248, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp507
	leaq	(%rdx,%rax), %r14	#, m
	.loc 1 2135 0
	movq	8(%r13), %rax	# rx_35->endp, D.18283
	movl	(%rax), %eax	# *_252, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp508
	leaq	(%rdx,%rax), %r12	#, d
	.loc 1 2136 0
	movq	-80(%rbp), %rbx	# orig, s
	.loc 1 2137 0
	movq	%r14, %rdx	# m, m.829
	movq	%rbx, %rax	# s, s.830
	movq	%rdx, %rcx	# m.829, D.18278
	subq	%rax, %rcx	# s.830, D.18278
	movq	-96(%rbp), %rdx	# strend, strend.831
	movq	%r12, %rax	# d, d.832
	subq	%rax, %rdx	# d.832, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	cmpq	%rax, %rcx	# D.18278, D.18278
	jle	.L845	#,
	.loc 1 2138 0
	movq	-120(%rbp), %rax	# clen, clen.833
	testq	%rax, %rax	# clen.833
	je	.L846	#,
	.loc 1 2139 0
	movq	-120(%rbp), %rdx	# clen, clen.834
	movq	-88(%rbp), %rax	# c, tmp509
	movq	%rax, %rsi	# tmp509,
	movq	%r14, %rdi	# m,
	call	memcpy	#
	.loc 1 2140 0
	movq	-120(%rbp), %rax	# clen, clen.835
	addq	%rax, %r14	# clen.835, m
.L846:
	.loc 1 2142 0
	movq	-96(%rbp), %rdx	# strend, strend.836
	movq	%r12, %rax	# d, d.837
	subq	%rax, %rdx	# d.837, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	%eax, %r15d	# D.18278, i
	.loc 1 2143 0
	testl	%r15d, %r15d	# i
	jle	.L847	#,
	.loc 1 2144 0
	movslq	%r15d, %rax	# i, D.18280
	movq	%rax, %rdx	# D.18280,
	movq	%r12, %rsi	# d,
	movq	%r14, %rdi	# m,
	call	memmove	#
	.loc 1 2145 0
	movslq	%r15d, %rax	# i, D.18284
	addq	%rax, %r14	# D.18284, m
.L847:
	.loc 1 2147 0
	movb	$0, (%r14)	#, *m_17
	.loc 1 2148 0
	movq	-104(%rbp), %rax	# targ, tmp510
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	%r14, %rcx	# m, m.838
	movq	%rbx, %rdx	# s, s.839
	subq	%rdx, %rcx	# s.839, D.18278
	movq	%rcx, %rdx	# D.18278, D.18278
	movq	%rdx, 8(%rax)	# D.18280, MEM[(struct XPV *)_274].xpv_cur
	jmp	.L848	#
.L845:
	.loc 1 2151 0
	movq	%r14, %rdx	# m, m.840
	movq	%rbx, %rax	# s, s.841
	subq	%rax, %rdx	# s.841, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	%eax, %r15d	# D.18278, i
	testl	%r15d, %r15d	# i
	je	.L849	#,
	.loc 1 2152 0
	movq	-120(%rbp), %rax	# clen, clen.842
	negq	%rax	# D.18284
	addq	%rax, %r12	# D.18284, d
	.loc 1 2153 0
	movq	%r12, %r14	# d, m
	.loc 1 2154 0
	movslq	%r15d, %rax	# i, D.18284
	negq	%rax	# D.18284
	leaq	(%r12,%rax), %rdx	#, D.18285
	movq	-104(%rbp), %rax	# targ, tmp511
	movq	%rdx, %rsi	# D.18285,
	movq	%rax, %rdi	# tmp511,
	call	Perl_sv_chop	#
	.loc 1 2155 0
	movslq	%r15d, %rax	# i, D.18284
	addq	%rax, %rbx	# D.18284, s
	.loc 1 2156 0
	jmp	.L850	#
.L851:
	.loc 1 2157 0
	subq	$1, %r12	#, d
	subq	$1, %rbx	#, s
	movzbl	(%rbx), %eax	# *s_295, D.18286
	movb	%al, (%r12)	# D.18286, *d_294
.L850:
	.loc 1 2156 0 discriminator 1
	movl	%r15d, %eax	# i, i.843
	leal	-1(%rax), %r15d	#, i
	testl	%eax, %eax	# i.843
	jne	.L851	#,
	.loc 1 2158 0
	movq	-120(%rbp), %rax	# clen, clen.844
	testq	%rax, %rax	# clen.844
	je	.L848	#,
	.loc 1 2159 0
	movq	-120(%rbp), %rdx	# clen, clen.845
	movq	-88(%rbp), %rax	# c, tmp512
	movq	%rax, %rsi	# tmp512,
	movq	%r14, %rdi	# m,
	call	memcpy	#
	jmp	.L848	#
.L849:
	.loc 1 2161 0
	movq	-120(%rbp), %rax	# clen, clen.846
	testq	%rax, %rax	# clen.846
	je	.L853	#,
	.loc 1 2162 0
	movq	-120(%rbp), %rax	# clen, clen.847
	negq	%rax	# D.18284
	addq	%rax, %r12	# D.18284, d
	.loc 1 2163 0
	movq	-104(%rbp), %rax	# targ, tmp513
	movq	%r12, %rsi	# d,
	movq	%rax, %rdi	# tmp513,
	call	Perl_sv_chop	#
	.loc 1 2164 0
	movq	-120(%rbp), %rdx	# clen, clen.848
	movq	-88(%rbp), %rax	# c, tmp514
	movq	%rax, %rsi	# tmp514,
	movq	%r12, %rdi	# d,
	call	memcpy	#
	jmp	.L848	#
.L853:
	.loc 1 2167 0
	movq	-104(%rbp), %rax	# targ, tmp515
	movq	%r12, %rsi	# d,
	movq	%rax, %rdi	# tmp515,
	call	Perl_sv_chop	#
.L848:
	.loc 1 2169 0
	movsbl	-143(%rbp), %eax	# rxtainted, D.18275
	andl	$1, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	je	.L854	#,
	.loc 1 2169 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L854:
	.loc 1 2170 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2171 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_yes, (%r12)	#, *sp_307
	jmp	.L855	#
.L844:
	.loc 1 2175 0
	movl	-140(%rbp), %eax	# iters, iters.849
	leal	1(%rax), %edx	#, tmp516
	movl	%edx, -140(%rbp)	# tmp516, iters
	cmpl	-124(%rbp), %eax	# maxiters, iters.849
	jle	.L856	#,
	.loc 1 2176 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L905	#
.L856:
	.loc 1 2178 0
	movq	0(%r13), %rax	# rx_35->startp, D.18283
	movl	(%rax), %eax	# *_312, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp517
	leaq	(%rdx,%rax), %r14	#, m
	.loc 1 2180 0
	movq	%r14, %rdx	# m, m.850
	movq	%rbx, %rax	# s, s.851
	subq	%rax, %rdx	# s.851, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	%eax, %r15d	# D.18278, i
	testl	%r15d, %r15d	# i
	je	.L857	#,
	.loc 1 2181 0
	cmpq	%r12, %rbx	# d, s
	je	.L858	#,
	.loc 1 2182 0
	movslq	%r15d, %rax	# i, D.18280
	movq	%rax, %rdx	# D.18280,
	movq	%rbx, %rsi	# s,
	movq	%r12, %rdi	# d,
	call	memmove	#
.L858:
	.loc 1 2183 0
	movslq	%r15d, %rax	# i, D.18284
	addq	%rax, %r12	# D.18284, d
.L857:
	.loc 1 2185 0
	movq	-120(%rbp), %rax	# clen, clen.852
	testq	%rax, %rax	# clen.852
	je	.L859	#,
	.loc 1 2186 0
	movq	-120(%rbp), %rdx	# clen, clen.853
	movq	-88(%rbp), %rax	# c, tmp518
	movq	%rax, %rsi	# tmp518,
	movq	%r12, %rdi	# d,
	call	memcpy	#
	.loc 1 2187 0
	movq	-120(%rbp), %rax	# clen, clen.854
	addq	%rax, %r12	# clen.854, d
.L859:
	.loc 1 2189 0
	movq	8(%r13), %rax	# rx_35->endp, D.18283
	movl	(%rax), %eax	# *_327, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp519
	leaq	(%rdx,%rax), %rbx	#, s
	.loc 1 2190 0
	movq	PL_regexecp(%rip), %rax	# PL_regexecp, PL_regexecp.855
	cmpq	%r14, %rbx	# m, s
	sete	%dl	#, D.18282
	movzbl	%dl, %esi	# D.18282, D.18275
	movq	-104(%rbp), %rdi	# targ, tmp520
	movq	-80(%rbp), %rcx	# orig, tmp521
	movq	-96(%rbp), %rdx	# strend, tmp522
	movl	$24, 8(%rsp)	#,
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# tmp520,
	movl	%esi, %r8d	# D.18275,
	movq	%rbx, %rsi	# s,
	movq	%r13, %rdi	# rx,
	call	*%rax	# PL_regexecp.855
	.loc 1 2193 0
	testl	%eax, %eax	# D.18275
	jne	.L844	#,
	.loc 1 2194 0
	cmpq	%r12, %rbx	# d, s
	je	.L860	#,
	.loc 1 2195 0
	movq	-96(%rbp), %rdx	# strend, strend.856
	movq	%rbx, %rax	# s, s.857
	subq	%rax, %rdx	# s.857, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	%eax, %r15d	# D.18278, i
	.loc 1 2196 0
	movq	-104(%rbp), %rax	# targ, tmp523
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	%r12, %rcx	# d, d.858
	movq	-104(%rbp), %rdx	# targ, tmp524
	movq	(%rdx), %rdx	# targ_5->sv_any, D.18279
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_341].xpv_pv, D.18285
	subq	%rdx, %rcx	# D.18278, D.18278
	movslq	%r15d, %rdx	# i, D.18278
	addq	%rcx, %rdx	# D.18278, D.18278
	movq	%rdx, 8(%rax)	# D.18280, MEM[(struct XPV *)_339].xpv_cur
	.loc 1 2197 0
	leal	1(%r15), %eax	#, D.18275
	cltq
	movq	%rax, %rdx	# D.18280,
	movq	%rbx, %rsi	# s,
	movq	%r12, %rdi	# d,
	call	memmove	#
.L860:
	.loc 1 2199 0
	movsbl	-143(%rbp), %eax	# rxtainted, D.18275
	andl	$1, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	je	.L861	#,
	.loc 1 2199 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L861:
	.loc 1 2200 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2201 0
	addq	$8, %r12	#, sp
	movl	-140(%rbp), %eax	# iters, tmp525
	cltq
	movq	%rax, %rdi	# D.18278,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18287,
	call	Perl_sv_2mortal	#
	movq	%rax, (%r12)	# D.18287, *sp_353
.L855:
	.loc 1 2203 0
	movq	-104(%rbp), %rax	# targ, tmp526
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$1760624639, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp527
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
	movq	-104(%rbp), %rax	# targ, tmp528
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	orl	$67371008, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp529
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
	.loc 1 2204 0
	cmpb	$0, -143(%rbp)	#, rxtainted
	je	.L862	#,
	.loc 1 2204 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L862:
	.loc 1 2205 0 is_stmt 1
	movq	-104(%rbp), %rax	# targ, tmp530
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$16384, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L863	#,
	.loc 1 2206 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2207 0
	movq	-104(%rbp), %rax	# targ, tmp531
	movq	%rax, %rdi	# tmp531,
	call	Perl_mg_set	#
	.loc 1 2208 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
.L863:
	.loc 1 2210 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.859
	testb	%al, %al	# PL_tainting.859
	je	.L864	#,
	.loc 1 2210 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.860
	testb	%al, %al	# PL_tainted.860
	je	.L864	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.861
	testb	%al, %al	# PL_tainting.861
	je	.L864	#,
	movq	-104(%rbp), %rax	# targ, tmp532
	movq	%rax, %rdi	# tmp532,
	call	Perl_sv_taint	#
.L864:
	.loc 1 2211 0 is_stmt 1
	cmpb	$0, -142(%rbp)	#, doutf8
	je	.L865	#,
	.loc 1 2212 0
	movq	-104(%rbp), %rax	# targ, tmp533
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	orl	$536870912, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp534
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
.L865:
	.loc 1 2213 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.862
	cmpl	-128(%rbp), %eax	# oldsave, PL_savestack_ix.862
	jle	.L866	#,
	.loc 1 2213 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# oldsave, tmp535
	movl	%eax, %edi	# tmp535,
	call	Perl_leave_scope	#
.L866:
	.loc 1 2214 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.863
	movq	(%rax), %rax	# PL_op.863_370->op_next, D.18272
	jmp	.L905	#
.L836:
	.loc 1 2217 0
	movq	PL_regexecp(%rip), %rax	# PL_regexecp, PL_regexecp.864
	.loc 1 2218 0
	movl	-136(%rbp), %edx	# r_flags, tmp536
	orl	$2, %edx	#, D.18275
	.loc 1 2217 0
	movl	%edx, %esi	# D.18275, D.18273
	movq	-104(%rbp), %rdi	# targ, tmp537
	movq	-80(%rbp), %rcx	# orig, tmp538
	movq	-96(%rbp), %rdx	# strend, tmp539
	movl	%esi, 8(%rsp)	# D.18273,
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# tmp537,
	movl	$0, %r8d	#,
	movq	%rbx, %rsi	# s,
	movq	%r13, %rdi	# rx,
	call	*%rax	# PL_regexecp.864
	testl	%eax, %eax	# D.18275
	je	.L867	#,
	.loc 1 2220 0
	cmpl	$0, -132(%rbp)	#, force_on_match
	je	.L868	#,
	.loc 1 2221 0
	movl	$0, -132(%rbp)	#, force_on_match
	.loc 1 2222 0
	movq	-104(%rbp), %rax	# targ, tmp540
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$10223616, %eax	#, D.18273
	cmpl	$262144, %eax	#, D.18273
	jne	.L869	#,
	.loc 1 2222 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp541
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	8(%rax), %rax	# MEM[(struct XPV *)_379].xpv_cur, len.866
	movq	%rax, -112(%rbp)	# len.866, len
	movq	-104(%rbp), %rax	# targ, tmp542
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_381].xpv_pv, iftmp.865
	jmp	.L870	#
.L869:
	.loc 1 2222 0 discriminator 2
	leaq	-112(%rbp), %rcx	#, tmp543
	movq	-104(%rbp), %rax	# targ, tmp544
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp543,
	movq	%rax, %rdi	# tmp544,
	call	Perl_sv_pvn_force_flags	#
.L870:
	.loc 1 2222 0 discriminator 3
	movq	%rax, %rbx	# iftmp.865, s
	.loc 1 2223 0 is_stmt 1 discriminator 3
	jmp	.L810	#
.L868:
	.loc 1 2226 0
	movq	%rbx, %rdx	# s, s.867
	movq	%r14, %rax	# m, m.868
	subq	%rax, %rdx	# m.868, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rsi	# D.18280,
	movq	%r14, %rdi	# m,
	call	Perl_newSVpvn	#
	movq	%rax, %r15	#, dstr
	.loc 1 2227 0
	movq	-104(%rbp), %rax	# targ, tmp545
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L871	#,
	.loc 1 2227 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.869
	movzbl	37(%rax), %eax	# PL_curcop.869_393->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L871	#,
	.loc 1 2228 0 is_stmt 1
	movl	12(%r15), %eax	# dstr_390->sv_flags, D.18273
	orl	$536870912, %eax	#, D.18273
	movl	%eax, 12(%r15)	# D.18273, dstr_390->sv_flags
.L871:
	.loc 1 2229 0
	movq	-152(%rbp), %rax	# %sfp, pm
	movq	%rax, PL_curpm(%rip)	# pm, PL_curpm
	.loc 1 2230 0
	cmpq	$0, -88(%rbp)	#, c
	jne	.L872	#,
.LBB99:
	.loc 1 2232 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2233 0
	testq	%r13, %r13	# rx
	je	.L874	#,
	.loc 1 2233 0 is_stmt 0 discriminator 1
	movl	68(%r13), %eax	# rx_35->refcnt, D.18275
	leal	1(%rax), %edx	#, D.18275
	movl	%edx, 68(%r13)	# D.18275, rx_35->refcnt
	testl	%eax, %eax	# D.18275
	je	.L874	#,
	.loc 1 2233 0
	nop
.L874:
	.loc 1 2234 0 is_stmt 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.872
	movl	16(%rax), %edx	# PL_curstackinfo.872_405->si_cxix, D.18275
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.873
	movl	20(%rax), %eax	# PL_curstackinfo.873_407->si_cxmax, D.18275
	cmpl	%eax, %edx	# D.18275, D.18275
	jge	.L875	#,
	.loc 1 2234 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.874
	movl	16(%rax), %edx	# PL_curstackinfo.874_409->si_cxix, D.18275
	addl	$1, %edx	#, D.18275
	movl	%edx, 16(%rax)	# D.18275, PL_curstackinfo.874_409->si_cxix
	jmp	.L876	#
.L875:
	.loc 1 2234 0 discriminator 2
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.875
	movq	%rax, -152(%rbp)	# PL_curstackinfo.875, %sfp
	call	Perl_cxinc	#
	movq	-152(%rbp), %rsi	# %sfp, PL_curstackinfo.875
	movl	%eax, 16(%rsi)	# D.18275, PL_curstackinfo.875_413->si_cxix
.L876:
	.loc 1 2234 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.876
	movq	8(%rax), %rcx	# PL_curstackinfo.876_416->si_cxstack, D.18288
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.877
	movl	16(%rax), %eax	# PL_curstackinfo.877_418->si_cxix, D.18275
	movslq	%eax, %rdx	# D.18275, D.18280
	movq	%rdx, %rax	# D.18280, tmp546
	salq	$3, %rax	#, tmp546
	addq	%rdx, %rax	# D.18280, tmp546
	salq	$4, %rax	#, tmp547
	addq	%rcx, %rax	# D.18288, cx
	movq	%rax, %rcx	# cx, cx
	movl	-140(%rbp), %eax	# iters, tmp548
	movl	%eax, 8(%rcx)	# tmp548, cx_422->cx_u.cx_subst.sbu_iters
	movl	-124(%rbp), %eax	# maxiters, tmp549
	movl	%eax, 12(%rcx)	# tmp549, cx_422->cx_u.cx_subst.sbu_maxiters
	movl	-136(%rbp), %eax	# r_flags, tmp550
	movl	%eax, 16(%rcx)	# tmp550, cx_422->cx_u.cx_subst.sbu_rflags
	movl	-128(%rbp), %eax	# oldsave, tmp551
	movl	%eax, 20(%rcx)	# tmp551, cx_422->cx_u.cx_subst.sbu_oldsave
	movzbl	-141(%rbp), %eax	# once, tmp552
	movb	%al, 24(%rcx)	# tmp552, cx_422->cx_u.cx_subst.sbu_once
	movzbl	-143(%rbp), %eax	# rxtainted, tmp553
	movb	%al, 25(%rcx)	# tmp553, cx_422->cx_u.cx_subst.sbu_rxtainted
	movq	-80(%rbp), %rax	# orig, tmp554
	movq	%rax, 32(%rcx)	# tmp554, cx_422->cx_u.cx_subst.sbu_orig
	movq	%r15, 40(%rcx)	# dstr, cx_422->cx_u.cx_subst.sbu_dstr
	movq	-104(%rbp), %rax	# targ, tmp555
	movq	%rax, 48(%rcx)	# tmp555, cx_422->cx_u.cx_subst.sbu_targ
	movq	%rbx, 56(%rcx)	# s, cx_422->cx_u.cx_subst.sbu_s
	movq	%r14, 64(%rcx)	# m, cx_422->cx_u.cx_subst.sbu_m
	movq	-96(%rbp), %rax	# strend, tmp556
	movq	%rax, 72(%rcx)	# tmp556, cx_422->cx_u.cx_subst.sbu_strend
	movq	$0, 80(%rcx)	#, cx_422->cx_u.cx_subst.sbu_rxres
	movq	%r13, 88(%rcx)	# rx, cx_422->cx_u.cx_subst.sbu_rx
	movl	$4, (%rcx)	#, cx_422->cx_type
	leaq	80(%rcx), %rax	#, D.18289
	movq	%r13, %rsi	# rx,
	movq	%rax, %rdi	# D.18289,
	call	Perl_rxres_save	#
	.loc 1 2235 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.878
	movq	56(%rax), %rax	# MEM[(struct PMOP *)PL_op.878_424].op_pmreplroot, D.18272
	jmp	.L905	#
.L872:
.LBE99:
	.loc 1 2237 0
	orl	$24, -136(%rbp)	#, r_flags
.L886:
	.loc 1 2239 0
	movl	-140(%rbp), %eax	# iters, iters.879
	leal	1(%rax), %edx	#, tmp557
	movl	%edx, -140(%rbp)	# tmp557, iters
	cmpl	-124(%rbp), %eax	# maxiters, iters.879
	jle	.L877	#,
	.loc 1 2240 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L905	#
.L877:
	.loc 1 2242 0
	movl	92(%r13), %eax	# rx_35->reganch, D.18273
	andl	$262144, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L878	#,
	.loc 1 2242 0 is_stmt 0 discriminator 1
	movq	48(%r13), %rax	# rx_35->subbeg, D.18285
	cmpq	-80(%rbp), %rax	# orig, D.18285
	je	.L878	#,
	.loc 1 2243 0 is_stmt 1
	movq	%rbx, %r14	# s, m
	.loc 1 2244 0
	movq	-80(%rbp), %rbx	# orig, s
	.loc 1 2245 0
	movq	48(%r13), %rax	# rx_35->subbeg, tmp558
	movq	%rax, -80(%rbp)	# tmp558, orig
	.loc 1 2246 0
	movq	%r14, %rdx	# m, m.880
	movq	%rbx, %rax	# s, s.881
	subq	%rax, %rdx	# s.881, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rdx	# D.18278, D.18284
	movq	-80(%rbp), %rax	# orig, tmp559
	leaq	(%rdx,%rax), %rbx	#, s
	.loc 1 2247 0
	movq	-96(%rbp), %rdx	# strend, strend.882
	movq	%r14, %rax	# m, m.883
	subq	%rax, %rdx	# m.883, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	addq	%rbx, %rax	# s, tmp560
	movq	%rax, -96(%rbp)	# tmp560, strend
.L878:
	.loc 1 2249 0
	movq	0(%r13), %rax	# rx_35->startp, D.18283
	movl	(%rax), %eax	# *_447, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp561
	leaq	(%rdx,%rax), %r14	#, m
	.loc 1 2250 0
	cmpb	$0, -142(%rbp)	#, doutf8
	je	.L879	#,
	.loc 1 2250 0 is_stmt 0 discriminator 1
	movl	12(%r15), %eax	# dstr_390->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	jne	.L879	#,
.LBB100:
	.loc 1 2251 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, nsv
	jne	.L880	#,
	.loc 1 2251 0 is_stmt 0 discriminator 1
	movq	%r14, %rdx	# m, m.884
	movq	%rbx, %rax	# s, s.885
	subq	%rax, %rdx	# s.885, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rsi	# D.18280,
	movq	%rbx, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18287,
	call	Perl_sv_2mortal	#
	movq	%rax, -72(%rbp)	# tmp562, nsv
	jmp	.L881	#
.L880:
	.loc 1 2251 0 discriminator 2
	movq	%r14, %rdx	# m, m.886
	movq	%rbx, %rax	# s, s.887
	subq	%rax, %rdx	# s.887, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rdx	# D.18278, D.18280
	movq	-72(%rbp), %rax	# nsv, tmp563
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp563,
	call	Perl_sv_setpvn	#
.L881:
	.loc 1 2251 0 discriminator 1
	movq	-72(%rbp), %rax	# nsv, tmp564
	movl	12(%rax), %eax	# nsv_45->sv_flags, D.18273
	andl	$-536870913, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-72(%rbp), %rax	# nsv, tmp565
	movl	%edx, 12(%rax)	# D.18273, nsv_45->sv_flags
	movq	-72(%rbp), %rax	# nsv, tmp566
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp566,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	-72(%rbp), %rax	# nsv, tmp567
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp567,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_catsv_flags	#
.LBE100:
	jmp	.L882	#
.L879:
	.loc 1 2253 0 is_stmt 1
	movq	%r14, %rdx	# m, m.888
	movq	%rbx, %rax	# s, s.889
	subq	%rax, %rdx	# s.889, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# D.18280,
	movq	%rbx, %rsi	# s,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_catpvn_flags	#
.L882:
	.loc 1 2254 0
	movq	8(%r13), %rax	# rx_35->endp, D.18283
	movl	(%rax), %eax	# *_469, D.18275
	movslq	%eax, %rdx	# D.18275, D.18284
	movq	-80(%rbp), %rax	# orig, tmp568
	leaq	(%rdx,%rax), %rbx	#, s
	.loc 1 2255 0
	movq	-120(%rbp), %rax	# clen, clen.890
	testq	%rax, %rax	# clen.890
	je	.L883	#,
	.loc 1 2256 0
	movq	-120(%rbp), %rdx	# clen, clen.891
	movq	-88(%rbp), %rax	# c, tmp569
	movl	$2, %ecx	#,
	movq	%rax, %rsi	# tmp569,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_catpvn_flags	#
.L883:
	.loc 1 2257 0
	cmpb	$0, -141(%rbp)	#, once
	je	.L884	#,
	.loc 1 2258 0
	jmp	.L885	#
.L884:
	.loc 1 2259 0
	movq	PL_regexecp(%rip), %rax	# PL_regexecp, PL_regexecp.892
	movl	-136(%rbp), %esi	# r_flags, r_flags.893
	cmpq	%r14, %rbx	# m, s
	sete	%dl	#, D.18282
	movzbl	%dl, %edi	# D.18282, D.18275
	movq	-104(%rbp), %r8	# targ, tmp570
	movq	-80(%rbp), %rcx	# orig, tmp571
	movq	-96(%rbp), %rdx	# strend, tmp572
	movl	%esi, 8(%rsp)	# r_flags.893,
	movq	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp570,
	movl	%edi, %r8d	# D.18275,
	movq	%rbx, %rsi	# s,
	movq	%r13, %rdi	# rx,
	call	*%rax	# PL_regexecp.892
	.loc 1 2260 0
	testl	%eax, %eax	# D.18275
	jne	.L886	#,
.L885:
	.loc 1 2261 0
	cmpb	$0, -142(%rbp)	#, doutf8
	je	.L887	#,
	.loc 1 2261 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp573
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L888	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.894
	movzbl	37(%rax), %eax	# PL_curcop.894_482->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	je	.L887	#,
.L888:
.LBB101:
	.loc 1 2262 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, nsv
	jne	.L889	#,
	.loc 1 2262 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx	# strend, strend.895
	movq	%rbx, %rax	# s, s.896
	subq	%rax, %rdx	# s.896, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rsi	# D.18280,
	movq	%rbx, %rdi	# s,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.18287,
	call	Perl_sv_2mortal	#
	movq	%rax, -72(%rbp)	# tmp574, nsv
	jmp	.L890	#
.L889:
	.loc 1 2262 0 discriminator 2
	movq	-96(%rbp), %rdx	# strend, strend.897
	movq	%rbx, %rax	# s, s.898
	subq	%rax, %rdx	# s.898, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movq	%rax, %rdx	# D.18278, D.18280
	movq	-72(%rbp), %rax	# nsv, tmp575
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# tmp575,
	call	Perl_sv_setpvn	#
.L890:
	.loc 1 2262 0 discriminator 1
	movq	-72(%rbp), %rax	# nsv, tmp576
	movl	12(%rax), %eax	# nsv_47->sv_flags, D.18273
	andl	$-536870913, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-72(%rbp), %rax	# nsv, tmp577
	movl	%edx, 12(%rax)	# D.18273, nsv_47->sv_flags
	movq	-72(%rbp), %rax	# nsv, tmp578
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp578,
	call	Perl_sv_utf8_upgrade_flags	#
	movq	-72(%rbp), %rax	# nsv, tmp579
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp579,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_catsv_flags	#
.LBE101:
	jmp	.L891	#
.L887:
	.loc 1 2264 0 is_stmt 1
	movq	-96(%rbp), %rdx	# strend, strend.899
	movq	%rbx, %rax	# s, s.900
	subq	%rax, %rdx	# s.900, D.18278
	movq	%rdx, %rax	# D.18278, D.18278
	movl	$2, %ecx	#,
	movq	%rax, %rdx	# D.18280,
	movq	%rbx, %rsi	# s,
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_catpvn_flags	#
.L891:
	.loc 1 2266 0
	movq	-104(%rbp), %rax	# targ, tmp580
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$2097152, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L893	#,
	.loc 1 2266 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp581
	movq	%rax, %rdi	# tmp581,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.18275
	je	.L893	#,
	.loc 1 2266 0
	nop
.L893:
	.loc 1 2267 0 is_stmt 1
	movq	-104(%rbp), %rax	# targ, tmp582
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	16(%rax), %rax	# MEM[(struct XPV *)_507].xpv_len, D.18280
	testq	%rax, %rax	# D.18280
	je	.L894	#,
	.loc 1 2268 0
	movq	-104(%rbp), %rax	# targ, tmp583
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%rax), %rax	# MEM[(struct XPV *)_509].xpv_pv, D.18285
	movq	%rax, %rdi	# D.18285,
	call	Perl_safesysfree	#
.L894:
	.loc 1 2269 0
	movq	-104(%rbp), %rax	# targ, tmp584
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%r15), %rdx	# dstr_390->sv_any, D.18279
	movq	(%rdx), %rdx	# MEM[(struct XPV *)_512].xpv_pv, D.18285
	movq	%rdx, (%rax)	# D.18285, MEM[(struct XPV *)_511].xpv_pv
	.loc 1 2270 0
	movq	-104(%rbp), %rax	# targ, tmp585
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%r15), %rdx	# dstr_390->sv_any, D.18279
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_515].xpv_cur, D.18280
	movq	%rdx, 8(%rax)	# D.18280, MEM[(struct XPV *)_514].xpv_cur
	.loc 1 2271 0
	movq	-104(%rbp), %rax	# targ, tmp586
	movq	(%rax), %rax	# targ_5->sv_any, D.18279
	movq	(%r15), %rdx	# dstr_390->sv_any, D.18279
	movq	16(%rdx), %rdx	# MEM[(struct XPV *)_518].xpv_len, D.18280
	movq	%rdx, 16(%rax)	# D.18280, MEM[(struct XPV *)_517].xpv_len
	.loc 1 2272 0
	movl	12(%r15), %eax	# dstr_390->sv_flags, D.18273
	andl	$536870912, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L895	#,
	.loc 1 2272 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.903
	movzbl	37(%rax), %eax	# PL_curcop.903_522->op_private, D.18274
	movzbl	%al, %eax	# D.18274, D.18275
	andl	$8, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	jne	.L895	#,
	.loc 1 2272 0 discriminator 3
	movl	$1, %eax	#, iftmp.902
	jmp	.L896	#
.L895:
	.loc 1 2272 0 discriminator 2
	movl	$0, %eax	#, iftmp.902
.L896:
	.loc 1 2272 0 discriminator 4
	orb	%al, -142(%rbp)	# D.18286, doutf8
	.loc 1 2273 0 is_stmt 1 discriminator 4
	movq	(%r15), %rax	# dstr_390->sv_any, D.18279
	movq	$0, (%rax)	#, MEM[(struct XPV *)_530].xpv_pv
	.loc 1 2274 0 discriminator 4
	movq	%r15, %rdi	# dstr,
	call	Perl_sv_free	#
	.loc 1 2276 0 discriminator 4
	movsbl	-143(%rbp), %eax	# rxtainted, D.18275
	andl	$1, %eax	#, D.18275
	testl	%eax, %eax	# D.18275
	je	.L897	#,
	.loc 1 2276 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L897:
	.loc 1 2277 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2278 0
	addq	$8, %r12	#, sp
	movl	-140(%rbp), %eax	# iters, tmp587
	cltq
	movq	%rax, %rdi	# D.18278,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.18287,
	call	Perl_sv_2mortal	#
	movq	%rax, (%r12)	# D.18287, *sp_534
	.loc 1 2280 0
	movq	-104(%rbp), %rax	# targ, tmp588
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$1223753727, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp589
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
	movq	-104(%rbp), %rax	# targ, tmp590
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	orl	$67371008, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp591
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
	.loc 1 2281 0
	cmpb	$0, -142(%rbp)	#, doutf8
	je	.L898	#,
	.loc 1 2282 0
	movq	-104(%rbp), %rax	# targ, tmp592
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	orl	$536870912, %eax	#, D.18273
	movl	%eax, %edx	# D.18273, D.18273
	movq	-104(%rbp), %rax	# targ, tmp593
	movl	%edx, 12(%rax)	# D.18273, targ_5->sv_flags
.L898:
	.loc 1 2283 0
	cmpb	$0, -143(%rbp)	#, rxtainted
	je	.L899	#,
	.loc 1 2283 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L899:
	.loc 1 2284 0 is_stmt 1
	movq	-104(%rbp), %rax	# targ, tmp594
	movl	12(%rax), %eax	# targ_5->sv_flags, D.18273
	andl	$16384, %eax	#, D.18273
	testl	%eax, %eax	# D.18273
	je	.L900	#,
	.loc 1 2284 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# targ, tmp595
	movq	%rax, %rdi	# tmp595,
	call	Perl_mg_set	#
.L900:
	.loc 1 2285 0 is_stmt 1
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.904
	testb	%al, %al	# PL_tainting.904
	je	.L901	#,
	.loc 1 2285 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.905
	testb	%al, %al	# PL_tainted.905
	je	.L901	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.906
	testb	%al, %al	# PL_tainting.906
	je	.L901	#,
	movq	-104(%rbp), %rax	# targ, tmp596
	movq	%rax, %rdi	# tmp596,
	call	Perl_sv_taint	#
.L901:
	.loc 1 2286 0 is_stmt 1
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.907
	cmpl	-128(%rbp), %eax	# oldsave, PL_savestack_ix.907
	jle	.L902	#,
	.loc 1 2286 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# oldsave, tmp597
	movl	%eax, %edi	# tmp597,
	call	Perl_leave_scope	#
.L902:
	.loc 1 2287 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.908
	movq	(%rax), %rax	# PL_op.908_550->op_next, D.18272
	jmp	.L905	#
.L867:
	.loc 1 2289 0
	nop
.L822:
.L903:
	.loc 1 2293 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2294 0
	addq	$8, %r12	#, sp
	movq	$PL_sv_no, (%r12)	#, *sp_553
	.loc 1 2295 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.909
	cmpl	-128(%rbp), %eax	# oldsave, PL_savestack_ix.909
	jle	.L904	#,
	.loc 1 2295 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# oldsave, tmp598
	movl	%eax, %edi	# tmp598,
	call	Perl_leave_scope	#
.L904:
	.loc 1 2296 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.910
	movq	(%rax), %rax	# PL_op.910_555->op_next, D.18272
.L905:
	.loc 1 2297 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_pp_subst, .-Perl_pp_subst
	.globl	Perl_pp_grepwhile
	.type	Perl_pp_grepwhile, @function
Perl_pp_grepwhile:
.LFB38:
	.loc 1 2300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2301 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2303 0
	movq	%rbx, %rax	# sp, sp.911
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.911_13, PL_Sv.912
	movq	%rax, PL_Sv(%rip)	# PL_Sv.912, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.914
	testq	%rax, %rax	# PL_Sv.914
	je	.L907	#,
	.loc 1 2303 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.916
	movl	12(%rax), %eax	# PL_Sv.916_17->sv_flags, D.18293
	andl	$262144, %eax	#, D.18293
	testl	%eax, %eax	# D.18293
	je	.L908	#,
	.loc 1 2303 0 discriminator 3
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.918
	movq	(%rax), %rax	# PL_Sv.918_20->sv_any, PL_Xpv.919
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.919, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.920
	testq	%rax, %rax	# PL_Xpv.920
	je	.L909	#,
	.loc 1 2303 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.921
	movq	8(%rax), %rax	# PL_Xpv.921_23->xpv_cur, D.18294
	cmpq	$1, %rax	#, D.18294
	ja	.L910	#,
	.loc 1 2303 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.922
	movq	8(%rax), %rax	# PL_Xpv.922_25->xpv_cur, D.18294
	testq	%rax, %rax	# D.18294
	je	.L909	#,
	.loc 1 2303 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.923
	movq	(%rax), %rax	# PL_Xpv.923_27->xpv_pv, D.18295
	movzbl	(%rax), %eax	# *_28, D.18296
	cmpb	$48, %al	#, D.18296
	je	.L909	#,
.L910:
	.loc 1 2303 0 discriminator 3
	movl	$1, %eax	#, iftmp.917
	jmp	.L911	#
.L909:
	.loc 1 2303 0 discriminator 2
	movl	$0, %eax	#, iftmp.917
.L911:
	.loc 1 2303 0 discriminator 5
	testl	%eax, %eax	# iftmp.917
	setne	%al	#, iftmp.915
	jmp	.L917	#
.L908:
	.loc 1 2303 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.925
	movl	12(%rax), %eax	# PL_Sv.925_33->sv_flags, D.18293
	andl	$65536, %eax	#, D.18293
	testl	%eax, %eax	# D.18293
	je	.L913	#,
	.loc 1 2303 0 discriminator 5
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.926
	movq	(%rax), %rax	# PL_Sv.926_36->sv_any, D.18297
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_37].xiv_iv, D.18298
	testq	%rax, %rax	# D.18298
	setne	%al	#, iftmp.924
	jmp	.L917	#
.L913:
	.loc 1 2303 0 discriminator 6
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.928
	movl	12(%rax), %eax	# PL_Sv.928_40->sv_flags, D.18293
	andl	$131072, %eax	#, D.18293
	testl	%eax, %eax	# D.18293
	je	.L915	#,
	.loc 1 2303 0 discriminator 7
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.929
	movq	(%rax), %rax	# PL_Sv.929_43->sv_any, D.18297
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_44].xnv_nv, D.18299
	xorpd	%xmm1, %xmm1	# tmp185
	ucomisd	%xmm1, %xmm0	# tmp185, D.18299
	setp	%dl	#, tmp184
	movl	$1, %eax	#, tmp187
	xorpd	%xmm1, %xmm1	# tmp186
	ucomisd	%xmm1, %xmm0	# tmp186, D.18299
	cmove	%edx, %eax	# tmp184,, iftmp.927
	jmp	.L917	#
.L915:
	.loc 1 2303 0 discriminator 8
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.930
	movq	%rax, %rdi	# PL_Sv.930,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.18296
	setne	%al	#, iftmp.927
	jmp	.L917	#
.L907:
	.loc 1 2303 0 discriminator 2
	movl	$0, %eax	#, iftmp.913
.L917:
	.loc 1 2303 0 discriminator 11
	testb	%al, %al	# iftmp.913
	je	.L918	#,
	.loc 1 2304 0 is_stmt 1
	movq	PL_stack_base(%rip), %rsi	# PL_stack_base, PL_stack_base.931
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.932
	leaq	-4(%rax), %rdx	#, D.18300
	movl	(%rdx), %eax	# *_56, D.18301
	leal	1(%rax), %ecx	#, D.18301
	movl	%ecx, (%rdx)	# D.18301, *_56
	cltq
	salq	$3, %rax	#, D.18294
	leaq	(%rsi,%rax), %rdx	#, D.18302
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.933
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.934
	movl	(%rax), %eax	# *PL_markstack_ptr.934_64, D.18301
	cltq
	salq	$3, %rax	#, D.18294
	addq	%rcx, %rax	# PL_stack_base.933, D.18302
	movq	(%rax), %rax	# *_68, D.18303
	movq	%rax, (%rdx)	# D.18303, *_62
.L918:
	.loc 1 2305 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.935
	movl	(%rax), %edx	# *PL_markstack_ptr.935_70, D.18301
	addl	$1, %edx	#, D.18301
	movl	%edx, (%rax)	# D.18301, *PL_markstack_ptr.935_70
	.loc 1 2306 0
	call	Perl_pop_scope	#
	.loc 1 2309 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.936
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.937
	movl	(%rax), %eax	# *PL_markstack_ptr.937_74, D.18301
	cltq
	salq	$3, %rax	#, D.18294
	addq	%rdx, %rax	# PL_stack_base.936, D.18302
	cmpq	%rbx, %rax	# sp, D.18302
	jbe	.L919	#,
.LBB102:
	.loc 1 2311 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.939
	movzbl	36(%rax), %eax	# PL_op.939_79->op_flags, D.18304
	movzbl	%al, %eax	# D.18304, D.18301
	andl	$3, %eax	#, D.18301
	cmpl	$1, %eax	#, D.18301
	je	.L920	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.941
	movzbl	36(%rax), %eax	# PL_op.941_83->op_flags, D.18304
	movzbl	%al, %eax	# D.18304, D.18301
	andl	$3, %eax	#, D.18301
	cmpl	$2, %eax	#, D.18301
	je	.L921	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.943
	movzbl	36(%rax), %eax	# PL_op.943_87->op_flags, D.18304
	movzbl	%al, %eax	# D.18304, D.18301
	andl	$3, %eax	#, D.18301
	cmpl	$3, %eax	#, D.18301
	je	.L922	#,
	call	Perl_block_gimme	#
	jmp	.L925	#
.L922:
	.loc 1 2311 0 discriminator 2
	movl	$1, %eax	#, iftmp.942
	jmp	.L925	#
.L921:
	movl	$0, %eax	#, iftmp.940
	jmp	.L925	#
.L920:
	movl	$128, %eax	#, iftmp.938
.L925:
	.loc 1 2311 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.938, gimme
	.loc 1 2313 0 is_stmt 1 discriminator 3
	call	Perl_pop_scope	#
	.loc 1 2314 0 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.944
	subq	$4, %rax	#, PL_markstack_ptr.946
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.946, PL_markstack_ptr
	.loc 1 2315 0 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.947
	movl	(%rax), %edx	# *PL_markstack_ptr.947_101, D.18301
	subl	$1, %edx	#, D.18301
	movl	%edx, (%rax)	# D.18301, *PL_markstack_ptr.947_101
	movl	(%rax), %edx	# *PL_markstack_ptr.947_101, D.18301
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.948
	subq	$4, %rax	#, D.18300
	movl	(%rax), %eax	# *_106, D.18301
	subl	%eax, %edx	# D.18301, tmp188
	movl	%edx, %eax	# tmp188, tmp188
	movl	%eax, -36(%rbp)	# tmp188, items
	.loc 1 2316 0 discriminator 3
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.949
	subq	$4, %rax	#, PL_markstack_ptr.951
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.951, PL_markstack_ptr
	.loc 1 2317 0 discriminator 3
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.952
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.953
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.955
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.955, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.954_114, D.18301
	cltq
	salq	$3, %rax	#, D.18294
	leaq	(%rcx,%rax), %rbx	#, sp
	.loc 1 2318 0 discriminator 3
	cmpl	$0, -40(%rbp)	#, gimme
	jne	.L926	#,
.LBB103:
	.loc 1 2319 0
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.956
	movq	PL_op(%rip), %rax	# PL_op, PL_op.957
	movq	24(%rax), %rax	# PL_op.957_121->op_targ, D.18294
	salq	$3, %rax	#, D.18294
	addq	%rdx, %rax	# PL_curpad.956, D.18302
	movq	(%rax), %rax	# *_124, tmp189
	movq	%rax, -32(%rbp)	# tmp189, targ
.LBB104:
	.loc 1 2320 0
	movl	-36(%rbp), %eax	# items, tmp190
	movslq	%eax, %rdx	# tmp190, D.18298
	movq	-32(%rbp), %rax	# targ, tmp191
	movq	%rdx, %rsi	# D.18298,
	movq	%rax, %rdi	# tmp191,
	call	Perl_sv_setiv	#
.LBB105:
	movq	-32(%rbp), %rax	# targ, tmp192
	movl	12(%rax), %eax	# targ_125->sv_flags, D.18293
	andl	$16384, %eax	#, D.18293
	testl	%eax, %eax	# D.18293
	je	.L927	#,
	.loc 1 2320 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp193
	movq	%rax, %rdi	# tmp193,
	call	Perl_mg_set	#
.L927:
.LBB106:
	.loc 1 2320 0 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.958
	movq	%rax, %rdx	# PL_stack_max.958, PL_stack_max.959
	movq	%rbx, %rax	# sp, sp.960
	subq	%rax, %rdx	# sp.960, D.18298
	movq	%rdx, %rax	# D.18298, D.18298
	cmpq	$7, %rax	#, D.18298
	jg	.L928	#,
	.loc 1 2320 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L928:
	.loc 1 2320 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp194
	movq	%rax, (%rbx)	# tmp194, *sp_134
.LBE106:
.LBE105:
.LBE104:
.LBE103:
	jmp	.L929	#
.L926:
	.loc 1 2322 0 is_stmt 1
	cmpl	$1, -40(%rbp)	#, gimme
	jne	.L929	#,
	.loc 1 2323 0
	movl	-36(%rbp), %eax	# items, tmp195
	cltq
	salq	$3, %rax	#, D.18294
	addq	%rax, %rbx	# D.18294, sp
.L929:
	.loc 1 2324 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.961
	movq	(%rax), %rax	# PL_op.961_139->op_next, D.18292
	jmp	.L930	#
.L919:
.LBE102:
.LBB107:
	.loc 1 2329 0
	call	Perl_push_scope	#
	.loc 1 2330 0
	movl	$PL_curpm, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 2332 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.962
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.963
	movl	(%rax), %eax	# *PL_markstack_ptr.963_142, D.18301
	cltq
	salq	$3, %rax	#, D.18294
	addq	%rdx, %rax	# PL_stack_base.962, D.18302
	movq	(%rax), %rax	# *_146, tmp196
	movq	%rax, -24(%rbp)	# tmp196, src
	.loc 1 2333 0
	movq	-24(%rbp), %rax	# src, tmp197
	movl	12(%rax), %eax	# src_147->sv_flags, D.18293
	andb	$247, %ah	#, D.18293
	movl	%eax, %edx	# D.18293, D.18293
	movq	-24(%rbp), %rax	# src, tmp198
	movl	%edx, 12(%rax)	# D.18293, src_147->sv_flags
	.loc 1 2334 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.964
	movq	(%rax), %rax	# PL_defgv.964_150->sv_any, D.18305
	movq	56(%rax), %rax	# _151->xgv_gp, D.18306
	movq	-24(%rbp), %rdx	# src, tmp199
	movq	%rdx, (%rax)	# tmp199, _152->gp_sv
	.loc 1 2336 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.965
	movq	48(%rax), %rax	# MEM[(struct LOGOP *)PL_op.965_153].op_other, D.18292
.L930:
.LBE107:
	.loc 1 2338 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_pp_grepwhile, .-Perl_pp_grepwhile
	.globl	Perl_pp_leavesub
	.type	Perl_pp_leavesub, @function
Perl_pp_leavesub:
.LFB39:
	.loc 1 2341 0
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
	.loc 1 2342 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2350 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.966
	movq	8(%rax), %rsi	# PL_curstackinfo.966_8->si_cxstack, D.18307
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.967
	movl	16(%rax), %edx	# PL_curstackinfo.967_10->si_cxix, D.18308
	leal	-1(%rdx), %ecx	#, D.18308
	movl	%ecx, 16(%rax)	# D.18308, PL_curstackinfo.967_10->si_cxix
	movslq	%edx, %rdx	# D.18308, D.18309
	movq	%rdx, %rax	# D.18309, tmp195
	salq	$3, %rax	#, tmp195
	addq	%rdx, %rax	# D.18309, tmp195
	salq	$4, %rax	#, tmp196
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.968
	movl	8(%rbx), %edx	# cx_16->cx_u.cx_blk.blku_oldsp, D.18308
	movslq	%edx, %rdx	# D.18308, D.18309
	salq	$3, %rdx	#, D.18309
	addq	%rdx, %rax	# D.18309, tmp197
	movq	%rax, -40(%rbp)	# tmp197, newsp
	movq	16(%rbx), %rax	# cx_16->cx_u.cx_blk.blku_oldcop, PL_curcop.969
	movq	%rax, PL_curcop(%rip)	# PL_curcop.969, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.970
	movl	28(%rbx), %edx	# cx_16->cx_u.cx_blk.blku_oldmarksp, D.18308
	movslq	%edx, %rdx	# D.18308, D.18309
	salq	$2, %rdx	#, D.18309
	addq	%rdx, %rax	# D.18309, PL_markstack_ptr.971
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.971, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_16->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.972
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.972, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_16->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.973
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.973, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_16->cx_u.cx_blk.blku_oldpm, tmp198
	movq	%rax, -32(%rbp)	# tmp198, newpm
	movzbl	48(%rbx), %eax	# cx_16->cx_u.cx_blk.blku_gimme, D.18310
	movzbl	%al, %eax	# D.18310, tmp199
	movl	%eax, -64(%rbp)	# tmp199, gimme
	.loc 1 2351 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.974
	movl	16(%rax), %edx	# PL_curstackinfo.974_33->si_cxix, D.18308
	addl	$1, %edx	#, D.18308
	movl	%edx, 16(%rax)	# D.18308, PL_curstackinfo.974_33->si_cxix
	.loc 1 2353 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 2354 0
	cmpl	$0, -64(%rbp)	#, gimme
	jne	.L932	#,
	.loc 1 2355 0
	movq	-40(%rbp), %rax	# newsp, tmp203
	addq	$8, %rax	#, tmp202
	movq	%rax, -56(%rbp)	# tmp202, mark
	.loc 1 2356 0
	cmpq	%r12, -56(%rbp)	# sp, mark
	ja	.L933	#,
	.loc 1 2357 0
	movq	56(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.cv, D.18311
	testq	%rax, %rax	# D.18311
	je	.L934	#,
	.loc 1 2357 0 is_stmt 0 discriminator 1
	movq	56(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.cv, D.18311
	movq	(%rax), %rax	# _38->sv_any, D.18312
	movq	112(%rax), %rax	# _39->xcv_depth, D.18313
	cmpq	$1, %rax	#, D.18313
	jle	.L934	#,
	.loc 1 2358 0 is_stmt 1
	movq	(%r12), %rax	# *sp_7, D.18314
	movl	12(%rax), %eax	# _41->sv_flags, D.18315
	andl	$2048, %eax	#, D.18315
	testl	%eax, %eax	# D.18315
	je	.L935	#,
	.loc 1 2359 0
	movq	(%r12), %rax	# *sp_7, PL_Sv.975
	movq	%rax, PL_Sv(%rip)	# PL_Sv.975, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.977
	testq	%rax, %rax	# PL_Sv.977
	je	.L937	#,
	.loc 1 2359 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.978
	movl	8(%rax), %edx	# PL_Sv.978_46->sv_refcnt, D.18315
	addl	$1, %edx	#, D.18315
	movl	%edx, 8(%rax)	# D.18315, PL_Sv.978_46->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.978_46->sv_refcnt, D.18315
	testl	%eax, %eax	# D.18315
	je	.L937	#,
	.loc 1 2359 0
	nop
.L937:
	.loc 1 2359 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.979
	movq	-56(%rbp), %rax	# mark, tmp204
	movq	%rdx, (%rax)	# PL_Sv.979, *mark_36
	.loc 1 2360 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.980
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.981
	cmpl	%eax, %edx	# PL_tmps_floor.981, PL_tmps_ix.980
	jle	.L938	#,
	.loc 1 2360 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L938:
	.loc 1 2361 0 is_stmt 1
	movq	-56(%rbp), %rax	# mark, tmp205
	movq	(%rax), %rax	# *mark_36, D.18314
	movq	%rax, %rdi	# D.18314,
	call	Perl_sv_2mortal	#
	.loc 1 2358 0
	jmp	.L943	#
.L935:
	.loc 1 2364 0
	movq	(%r12), %rax	# *sp_7, PL_Sv.982
	movq	%rax, PL_Sv(%rip)	# PL_Sv.982, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.984
	testq	%rax, %rax	# PL_Sv.984
	je	.L941	#,
	.loc 1 2364 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.985
	movl	8(%rax), %edx	# PL_Sv.985_58->sv_refcnt, D.18315
	addl	$1, %edx	#, D.18315
	movl	%edx, 8(%rax)	# D.18315, PL_Sv.985_58->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.985_58->sv_refcnt, D.18315
	testl	%eax, %eax	# D.18315
	je	.L941	#,
	.loc 1 2364 0
	nop
.L941:
	.loc 1 2364 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp206
	movq	%rax, -48(%rbp)	# tmp206, sv
	.loc 1 2365 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.986
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.987
	cmpl	%eax, %edx	# PL_tmps_floor.987, PL_tmps_ix.986
	jle	.L942	#,
	.loc 1 2365 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L942:
	.loc 1 2366 0 is_stmt 1
	movq	-48(%rbp), %rax	# sv, tmp207
	movq	%rax, %rdi	# tmp207,
	call	Perl_sv_mortalcopy	#
	movq	-56(%rbp), %rdx	# mark, tmp208
	movq	%rax, (%rdx)	# D.18314, *mark_36
	.loc 1 2367 0
	movq	-48(%rbp), %rax	# sv, tmp209
	movq	%rax, %rdi	# tmp209,
	call	Perl_sv_free	#
	.loc 1 2358 0
	jmp	.L943	#
.L934:
	.loc 1 2371 0
	movq	(%r12), %rax	# *sp_7, D.18314
	movl	12(%rax), %eax	# _68->sv_flags, D.18315
	andl	$2048, %eax	#, D.18315
	testl	%eax, %eax	# D.18315
	je	.L944	#,
	.loc 1 2371 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *sp_7, iftmp.988
	jmp	.L945	#
.L944:
	.loc 1 2371 0 discriminator 2
	movq	(%r12), %rax	# *sp_7, D.18314
	movq	%rax, %rdi	# D.18314,
	call	Perl_sv_mortalcopy	#
.L945:
	.loc 1 2371 0 discriminator 3
	movq	-56(%rbp), %rdx	# mark, tmp210
	movq	%rax, (%rdx)	# iftmp.988, *mark_36
	jmp	.L946	#
.L943:
	jmp	.L946	#
.L933:
	.loc 1 2374 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.989
	movq	%rax, %rdx	# PL_stack_max.989, PL_stack_max.990
	movq	-56(%rbp), %rax	# mark, mark.991
	subq	%rax, %rdx	# mark.991, D.18313
	movq	%rdx, %rax	# D.18313, D.18313
	cmpq	$-7, %rax	#, D.18313
	jge	.L947	#,
.LBB108:
	.loc 1 2374 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rdx	# mark, mark.992
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.993
	subq	%rax, %rdx	# PL_stack_base.994, D.18313
	movq	%rdx, %rax	# D.18313, D.18313
	sarq	$3, %rax	#, tmp211
	movl	%eax, -60(%rbp)	# D.18313, markoff
	movq	-56(%rbp), %rax	# mark, tmp212
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp212,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.995
	movl	-60(%rbp), %edx	# markoff, tmp213
	movslq	%edx, %rdx	# tmp213, D.18309
	salq	$3, %rdx	#, D.18309
	addq	%rdx, %rax	# D.18309, tmp214
	movq	%rax, -56(%rbp)	# tmp214, mark
.L947:
.LBE108:
	.loc 1 2375 0 is_stmt 1
	movq	-56(%rbp), %rax	# mark, tmp215
	movq	$PL_sv_undef, (%rax)	#, *mark_2
.L946:
	.loc 1 2377 0 discriminator 1
	movq	-56(%rbp), %r12	# mark, sp
	jmp	.L948	#
.L932:
	.loc 1 2379 0
	cmpl	$1, -64(%rbp)	#, gimme
	jne	.L948	#,
	.loc 1 2380 0
	movq	-40(%rbp), %rax	# newsp, tmp219
	addq	$8, %rax	#, tmp218
	movq	%rax, -56(%rbp)	# tmp218, mark
	jmp	.L949	#
.L951:
	.loc 1 2381 0
	movq	-56(%rbp), %rax	# mark, tmp220
	movq	(%rax), %rax	# *mark_4, D.18314
	movl	12(%rax), %eax	# _91->sv_flags, D.18315
	andl	$2048, %eax	#, D.18315
	testl	%eax, %eax	# D.18315
	jne	.L950	#,
	.loc 1 2382 0
	movq	-56(%rbp), %rax	# mark, tmp221
	movq	(%rax), %rax	# *mark_4, D.18314
	movq	%rax, %rdi	# D.18314,
	call	Perl_sv_mortalcopy	#
	movq	-56(%rbp), %rdx	# mark, tmp222
	movq	%rax, (%rdx)	# D.18314, *mark_4
	.loc 1 2383 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L950:
	.loc 1 2380 0
	addq	$8, -56(%rbp)	#, mark
.L949:
	.loc 1 2380 0 is_stmt 0 discriminator 1
	cmpq	%r12, -56(%rbp)	# sp, mark
	jbe	.L951	#,
.L948:
	.loc 1 2387 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2389 0
	call	Perl_pop_scope	#
	.loc 1 2390 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.996
	movl	16(%rax), %edx	# PL_curstackinfo.996_97->si_cxix, D.18308
	subl	$1, %edx	#, D.18308
	movl	%edx, 16(%rax)	# D.18308, PL_curstackinfo.996_97->si_cxix
.LBB109:
	.loc 1 2391 0
	movzbl	104(%rbx), %eax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18310
	testb	%al, %al	# D.18310
	je	.L952	#,
.LBB110:
	.loc 1 2391 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.997
	movq	(%rax), %rax	# PL_defgv.997_101->sv_any, D.18316
	movq	56(%rax), %rax	# _102->xgv_gp, D.18317
	movq	32(%rax), %rax	# _103->gp_av, D.18318
	movq	%rax, %rdi	# D.18318,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.998
	movq	(%rax), %rax	# PL_defgv.998_105->sv_any, D.18316
	movq	56(%rax), %rax	# _106->xgv_gp, D.18317
	movq	80(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18318
	movq	%rdx, 32(%rax)	# D.18318, _107->gp_av
.LBE110:
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _110->sv_any, D.18319
	movzbl	72(%rax), %eax	# _111->xav_flags, D.18310
	movzbl	%al, %eax	# D.18310, D.18308
	andl	$1, %eax	#, D.18308
	testl	%eax, %eax	# D.18308
	je	.L953	#,
.LBB111:
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _115->sv_any, D.18319
	movq	8(%rax), %rax	# _116->xav_fill, tmp223
	movq	%rax, -24(%rbp)	# tmp223, fill
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	%rax, %rdi	# D.18318,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18318, cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-24(%rbp), %rax	# fill, tmp224
	movl	%eax, %edx	# tmp224, D.18308
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movl	%edx, %esi	# D.18308,
	movq	%rax, %rdi	# D.18318,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _122->sv_any, D.18319
	movb	$2, 72(%rax)	#, _123->xav_flags
	movq	112(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18320
	movq	(%rax), %rax	# MEM[(struct AV *)_124].sv_any, D.18319
	movq	(%rax), %rax	# _125->xav_array, D.18321
	movq	88(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	%rdx, (%rax)	# D.18318, MEM[(struct SV * *)_126]
.LBE111:
	jmp	.L952	#
.L953:
.LBB112:
	.loc 1 2391 0 discriminator 2
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _128->sv_any, D.18319
	movq	88(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rdx), %rdx	# _130->sv_any, D.18319
	movq	16(%rdx), %rcx	# _131->xav_max, D.18313
	movq	88(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rdx), %rdx	# _133->sv_any, D.18319
	movq	(%rdx), %rdx	# _134->xav_array, D.18321
	movq	%rdx, %rsi	# D.18321, D.18313
	movq	88(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rdx), %rdx	# _137->sv_any, D.18319
	movq	56(%rdx), %rdx	# _138->xav_alloc, D.18322
	subq	%rdx, %rsi	# D.18313, D.18313
	movq	%rsi, %rdx	# D.18313, D.18313
	sarq	$3, %rdx	#, tmp225
	addq	%rcx, %rdx	# D.18313, D.18313
	movq	%rdx, 16(%rax)	# D.18313, _129->xav_max
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _144->sv_any, D.18319
	movq	88(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rdx), %rdx	# _146->sv_any, D.18319
	movq	56(%rdx), %rdx	# _147->xav_alloc, D.18322
	movq	%rdx, (%rax)	# D.18322, MEM[(struct XPV *)_145].xpv_pv
	movq	88(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18318
	movq	(%rax), %rax	# _149->sv_any, D.18319
	movq	$-1, 8(%rax)	#, _150->xav_fill
.L952:
.LBE112:
	movq	56(%rbx), %rax	# cx_16->cx_u.cx_blk.blk_u.blku_sub.cv, tmp226
	movq	%rax, -48(%rbp)	# tmp226, sv
	cmpq	$0, -48(%rbp)	#, sv
	je	.L954	#,
	.loc 1 2391 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp227
	movq	(%rax), %rax	# MEM[(struct CV *)sv_152].sv_any, D.18312
	movq	96(%rbx), %rdx	# cx_16->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18313
	movq	%rdx, 112(%rax)	# D.18313, _153->xcv_depth
	movq	112(%rax), %rax	# _153->xcv_depth, D.18313
	testq	%rax, %rax	# D.18313
	je	.L954	#,
	movq	$0, -48(%rbp)	#, sv
.L954:
.LBE109:
	.loc 1 2392 0 is_stmt 1
	movq	-32(%rbp), %rax	# newpm, tmp228
	movq	%rax, PL_curpm(%rip)	# tmp228, PL_curpm
	.loc 1 2394 0
	cmpq	$0, -48(%rbp)	#, sv
	je	.L955	#,
	.loc 1 2394 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp229
	movq	%rax, %rdi	# tmp229,
	call	Perl_sv_free	#
.L955:
	.loc 1 2395 0 is_stmt 1
	call	Perl_pop_return	#
	.loc 1 2396 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_pp_leavesub, .-Perl_pp_leavesub
	.section	.rodata
	.align 8
.LC32:
	.string	"Can't modify non-lvalue subroutine call"
.LC33:
	.string	"undef"
.LC34:
	.string	"a readonly value"
.LC35:
	.string	"a temporary"
	.align 8
.LC36:
	.string	"Can't return %s from lvalue subroutine"
.LC37:
	.string	"Empty array"
.LC38:
	.string	"Array"
	.align 8
.LC39:
	.string	"%s returned from lvalue subroutine in scalar context"
.LC40:
	.string	"readonly value"
.LC41:
	.string	"temporary"
	.align 8
.LC42:
	.string	"Can't return a %s from lvalue subroutine"
	.text
	.globl	Perl_pp_leavesublv
	.type	Perl_pp_leavesublv, @function
Perl_pp_leavesublv:
.LFB40:
	.loc 1 2401 0
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
	.loc 1 2402 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 2410 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.999
	movq	8(%rax), %rsi	# PL_curstackinfo.999_19->si_cxstack, D.18326
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1000
	movl	16(%rax), %edx	# PL_curstackinfo.1000_21->si_cxix, D.18327
	leal	-1(%rdx), %ecx	#, D.18327
	movl	%ecx, 16(%rax)	# D.18327, PL_curstackinfo.1000_21->si_cxix
	movslq	%edx, %rdx	# D.18327, D.18328
	movq	%rdx, %rax	# D.18328, tmp542
	salq	$3, %rax	#, tmp542
	addq	%rdx, %rax	# D.18328, tmp542
	salq	$4, %rax	#, tmp543
	leaq	(%rsi,%rax), %rbx	#, cx
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1001
	movl	8(%rbx), %edx	# cx_27->cx_u.cx_blk.blku_oldsp, D.18327
	movslq	%edx, %rdx	# D.18327, D.18328
	salq	$3, %rdx	#, D.18328
	addq	%rdx, %rax	# D.18328, tmp544
	movq	%rax, -72(%rbp)	# tmp544, newsp
	movq	16(%rbx), %rax	# cx_27->cx_u.cx_blk.blku_oldcop, PL_curcop.1002
	movq	%rax, PL_curcop(%rip)	# PL_curcop.1002, PL_curcop
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1003
	movl	28(%rbx), %edx	# cx_27->cx_u.cx_blk.blku_oldmarksp, D.18327
	movslq	%edx, %rdx	# D.18327, D.18328
	salq	$2, %rdx	#, D.18328
	addq	%rdx, %rax	# D.18328, PL_markstack_ptr.1004
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1004, PL_markstack_ptr
	movl	32(%rbx), %eax	# cx_27->cx_u.cx_blk.blku_oldscopesp, PL_scopestack_ix.1005
	movl	%eax, PL_scopestack_ix(%rip)	# PL_scopestack_ix.1005, PL_scopestack_ix
	movl	24(%rbx), %eax	# cx_27->cx_u.cx_blk.blku_oldretsp, PL_retstack_ix.1006
	movl	%eax, PL_retstack_ix(%rip)	# PL_retstack_ix.1006, PL_retstack_ix
	movq	40(%rbx), %rax	# cx_27->cx_u.cx_blk.blku_oldpm, tmp545
	movq	%rax, -64(%rbp)	# tmp545, newpm
	movzbl	48(%rbx), %eax	# cx_27->cx_u.cx_blk.blku_gimme, D.18329
	movzbl	%al, %eax	# D.18329, tmp546
	movl	%eax, -96(%rbp)	# tmp546, gimme
	.loc 1 2411 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1007
	movl	16(%rax), %edx	# PL_curstackinfo.1007_44->si_cxix, D.18327
	addl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1007_44->si_cxix
	.loc 1 2413 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 2415 0
	movzbl	105(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.lval, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$4, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L958	#,
	.loc 1 2423 0
	cmpl	$0, -96(%rbp)	#, gimme
	jne	.L959	#,
	.loc 1 2424 0
	jmp	.L960	#
.L959:
	.loc 1 2425 0
	cmpl	$1, -96(%rbp)	#, gimme
	jne	.L961	#,
	.loc 1 2426 0
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, D.18330
	movq	(%rax), %rax	# _50->sv_any, D.18331
	movzwl	136(%rax), %eax	# _51->xcv_flags, D.18332
	movzwl	%ax, %eax	# D.18332, D.18327
	andl	$256, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	jne	.L962	#,
	.loc 1 2427 0
	jmp	.L963	#
.L962:
	.loc 1 2428 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1008
	movslq	%eax, %rdx	# PL_tmps_ix.1008, D.18333
	movq	%r12, %rcx	# sp, sp.1009
	movq	-72(%rbp), %rax	# newsp, newsp.1010
	subq	%rax, %rcx	# newsp.1010, D.18333
	movq	%rcx, %rax	# D.18333, D.18333
	sarq	$3, %rax	#, tmp547
	addq	%rax, %rdx	# D.18333, D.18333
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1011
	cltq
	cmpq	%rax, %rdx	# D.18333, D.18333
	jl	.L964	#,
	.loc 1 2428 0 is_stmt 0 discriminator 1
	movq	%r12, %rdx	# sp, sp.1012
	movq	-72(%rbp), %rax	# newsp, newsp.1013
	subq	%rax, %rdx	# newsp.1013, D.18333
	movq	%rdx, %rax	# D.18333, D.18333
	sarq	$3, %rax	#, tmp548
	movl	%eax, %edi	# D.18327,
	call	Perl_tmps_grow	#
.L964:
	.loc 1 2429 0 is_stmt 1
	movq	-72(%rbp), %rax	# newsp, tmp552
	addq	$8, %rax	#, tmp551
	movq	%rax, -88(%rbp)	# tmp551, mark
	jmp	.L965	#
.L969:
	.loc 1 2430 0
	movq	-88(%rbp), %rax	# mark, tmp553
	movq	(%rax), %rax	# *mark_2, D.18334
	movl	12(%rax), %eax	# _70->sv_flags, D.18335
	andl	$2048, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	jne	.L966	#,
	.loc 1 2432 0
	movq	-88(%rbp), %rax	# mark, tmp554
	movq	(%rax), %rax	# *mark_2, D.18334
	movl	12(%rax), %eax	# _73->sv_flags, D.18335
	andl	$8389120, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	je	.L967	#,
	.loc 1 2433 0
	movq	-88(%rbp), %rax	# mark, tmp555
	movq	(%rax), %rax	# *mark_2, D.18334
	movq	%rax, %rdi	# D.18334,
	call	Perl_sv_mortalcopy	#
	movq	-88(%rbp), %rdx	# mark, tmp556
	movq	%rax, (%rdx)	# D.18334, *mark_2
	jmp	.L966	#
.L967:
	.loc 1 2436 0
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.1014
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1015
	addl	$1, %edx	#, PL_tmps_ix.1016
	movl	%edx, PL_tmps_ix(%rip)	# PL_tmps_ix.1016, PL_tmps_ix
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1017
	movslq	%edx, %rdx	# PL_tmps_ix.1017, D.18328
	salq	$3, %rdx	#, D.18328
	addq	%rax, %rdx	# PL_tmps_stack.1014, D.18336
	movq	-88(%rbp), %rax	# mark, tmp557
	movq	(%rax), %rax	# *mark_2, D.18334
	movq	%rax, (%rdx)	# D.18334, *_84
	.loc 1 2437 0
	movq	-88(%rbp), %rax	# mark, tmp558
	movq	(%rax), %rax	# *mark_2, PL_Sv.1018
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1018, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1020
	testq	%rax, %rax	# PL_Sv.1020
	je	.L966	#,
	.loc 1 2437 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1021
	movl	8(%rax), %edx	# PL_Sv.1021_88->sv_refcnt, D.18335
	addl	$1, %edx	#, D.18335
	movl	%edx, 8(%rax)	# D.18335, PL_Sv.1021_88->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1021_88->sv_refcnt, D.18335
	testl	%eax, %eax	# D.18335
	je	.L966	#,
	.loc 1 2437 0
	nop
.L966:
	.loc 1 2429 0 is_stmt 1
	addq	$8, -88(%rbp)	#, mark
.L965:
	.loc 1 2429 0 is_stmt 0 discriminator 1
	cmpq	%r12, -88(%rbp)	# sp, mark
	jbe	.L969	#,
	jmp	.L961	#
.L958:
	.loc 1 2442 0 is_stmt 1
	movzbl	105(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.lval, D.18329
	testb	%al, %al	# D.18329
	je	.L970	#,
	.loc 1 2446 0
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, D.18330
	movq	(%rax), %rax	# _96->sv_any, D.18331
	movzwl	136(%rax), %eax	# _97->xcv_flags, D.18332
	movzwl	%ax, %eax	# D.18332, D.18327
	andl	$256, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	jne	.L971	#,
	.loc 1 2447 0
	call	Perl_pop_scope	#
	.loc 1 2448 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1022
	movl	16(%rax), %edx	# PL_curstackinfo.1022_101->si_cxix, D.18327
	subl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1022_101->si_cxix
.LBB113:
	.loc 1 2449 0
	movzbl	104(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18329
	testb	%al, %al	# D.18329
	je	.L972	#,
.LBB114:
	.loc 1 2449 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1023
	movq	(%rax), %rax	# PL_defgv.1023_105->sv_any, D.18337
	movq	56(%rax), %rax	# _106->xgv_gp, D.18338
	movq	32(%rax), %rax	# _107->gp_av, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1024
	movq	(%rax), %rax	# PL_defgv.1024_109->sv_any, D.18337
	movq	56(%rax), %rax	# _110->xgv_gp, D.18338
	movq	80(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18339
	movq	%rdx, 32(%rax)	# D.18339, _111->gp_av
.LBE114:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _114->sv_any, D.18340
	movzbl	72(%rax), %eax	# _115->xav_flags, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$1, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L973	#,
.LBB115:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _119->sv_any, D.18340
	movq	8(%rax), %rax	# _120->xav_fill, tmp559
	movq	%rax, -56(%rbp)	# tmp559, fill
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18339, cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-56(%rbp), %rax	# fill, tmp560
	movl	%eax, %edx	# tmp560, D.18327
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movl	%edx, %esi	# D.18327,
	movq	%rax, %rdi	# D.18339,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _126->sv_any, D.18340
	movb	$2, 72(%rax)	#, _127->xav_flags
	movq	112(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18341
	movq	(%rax), %rax	# MEM[(struct AV *)_128].sv_any, D.18340
	movq	(%rax), %rax	# _129->xav_array, D.18342
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rdx, (%rax)	# D.18339, MEM[(struct SV * *)_130]
.LBE115:
	jmp	.L972	#
.L973:
.LBB116:
	.loc 1 2449 0 discriminator 2
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _132->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _134->sv_any, D.18340
	movq	16(%rdx), %rcx	# _135->xav_max, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _137->sv_any, D.18340
	movq	(%rdx), %rdx	# _138->xav_array, D.18342
	movq	%rdx, %rsi	# D.18342, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _141->sv_any, D.18340
	movq	56(%rdx), %rdx	# _142->xav_alloc, D.18336
	subq	%rdx, %rsi	# D.18333, D.18333
	movq	%rsi, %rdx	# D.18333, D.18333
	sarq	$3, %rdx	#, tmp561
	addq	%rcx, %rdx	# D.18333, D.18333
	movq	%rdx, 16(%rax)	# D.18333, _133->xav_max
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _148->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _150->sv_any, D.18340
	movq	56(%rdx), %rdx	# _151->xav_alloc, D.18336
	movq	%rdx, (%rax)	# D.18336, MEM[(struct XPV *)_149].xpv_pv
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _153->sv_any, D.18340
	movq	$-1, 8(%rax)	#, _154->xav_fill
.L972:
.LBE116:
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, tmp562
	movq	%rax, -80(%rbp)	# tmp562, sv
	cmpq	$0, -80(%rbp)	#, sv
	je	.L974	#,
	.loc 1 2449 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp563
	movq	(%rax), %rax	# MEM[(struct CV *)sv_156].sv_any, D.18331
	movq	96(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18333
	movq	%rdx, 112(%rax)	# D.18333, _157->xcv_depth
	movq	112(%rax), %rax	# _157->xcv_depth, D.18333
	testq	%rax, %rax	# D.18333
	je	.L974	#,
	movq	$0, -80(%rbp)	#, sv
.L974:
.LBE113:
	.loc 1 2450 0 is_stmt 1
	movq	-64(%rbp), %rax	# newpm, tmp564
	movq	%rax, PL_curpm(%rip)	# tmp564, PL_curpm
	.loc 1 2451 0
	cmpq	$0, -80(%rbp)	#, sv
	je	.L975	#,
	.loc 1 2451 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp565
	movq	%rax, %rdi	# tmp565,
	call	Perl_sv_free	#
.L975:
	.loc 1 2452 0 is_stmt 1
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L976	#
.L971:
	.loc 1 2454 0
	cmpl	$0, -96(%rbp)	#, gimme
	jne	.L977	#,
	.loc 1 2455 0
	movq	-72(%rbp), %rax	# newsp, tmp569
	addq	$8, %rax	#, tmp568
	movq	%rax, -88(%rbp)	# tmp568, mark
	.loc 1 2456 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1025
	leal	1(%rax), %edx	#, D.18327
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1026
	cmpl	%eax, %edx	# PL_tmps_max.1026, D.18327
	jl	.L978	#,
	.loc 1 2456 0 is_stmt 0 discriminator 1
	movl	$1, %edi	#,
	call	Perl_tmps_grow	#
.L978:
	.loc 1 2457 0 is_stmt 1
	cmpq	%r12, -88(%rbp)	# sp, mark
	jne	.L979	#,
	.loc 1 2458 0
	movq	(%r12), %rax	# *sp_18, D.18334
	movl	12(%rax), %eax	# _166->sv_flags, D.18335
	andl	$8391168, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	je	.L980	#,
	.loc 1 2459 0
	call	Perl_pop_scope	#
	.loc 1 2460 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1027
	movl	16(%rax), %edx	# PL_curstackinfo.1027_169->si_cxix, D.18327
	subl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1027_169->si_cxix
.LBB117:
	.loc 1 2461 0
	movzbl	104(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18329
	testb	%al, %al	# D.18329
	je	.L981	#,
.LBB118:
	.loc 1 2461 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1028
	movq	(%rax), %rax	# PL_defgv.1028_173->sv_any, D.18337
	movq	56(%rax), %rax	# _174->xgv_gp, D.18338
	movq	32(%rax), %rax	# _175->gp_av, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1029
	movq	(%rax), %rax	# PL_defgv.1029_177->sv_any, D.18337
	movq	56(%rax), %rax	# _178->xgv_gp, D.18338
	movq	80(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18339
	movq	%rdx, 32(%rax)	# D.18339, _179->gp_av
.LBE118:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _182->sv_any, D.18340
	movzbl	72(%rax), %eax	# _183->xav_flags, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$1, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L982	#,
.LBB119:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _187->sv_any, D.18340
	movq	8(%rax), %rax	# _188->xav_fill, tmp570
	movq	%rax, -48(%rbp)	# tmp570, fill
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18339, cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-48(%rbp), %rax	# fill, tmp571
	movl	%eax, %edx	# tmp571, D.18327
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movl	%edx, %esi	# D.18327,
	movq	%rax, %rdi	# D.18339,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _194->sv_any, D.18340
	movb	$2, 72(%rax)	#, _195->xav_flags
	movq	112(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18341
	movq	(%rax), %rax	# MEM[(struct AV *)_196].sv_any, D.18340
	movq	(%rax), %rax	# _197->xav_array, D.18342
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rdx, (%rax)	# D.18339, MEM[(struct SV * *)_198]
.LBE119:
	jmp	.L981	#
.L982:
.LBB120:
	.loc 1 2461 0 discriminator 2
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _200->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _202->sv_any, D.18340
	movq	16(%rdx), %rcx	# _203->xav_max, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _205->sv_any, D.18340
	movq	(%rdx), %rdx	# _206->xav_array, D.18342
	movq	%rdx, %rsi	# D.18342, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _209->sv_any, D.18340
	movq	56(%rdx), %rdx	# _210->xav_alloc, D.18336
	subq	%rdx, %rsi	# D.18333, D.18333
	movq	%rsi, %rdx	# D.18333, D.18333
	sarq	$3, %rdx	#, tmp572
	addq	%rcx, %rdx	# D.18333, D.18333
	movq	%rdx, 16(%rax)	# D.18333, _201->xav_max
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _216->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _218->sv_any, D.18340
	movq	56(%rdx), %rdx	# _219->xav_alloc, D.18336
	movq	%rdx, (%rax)	# D.18336, MEM[(struct XPV *)_217].xpv_pv
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _221->sv_any, D.18340
	movq	$-1, 8(%rax)	#, _222->xav_fill
.L981:
.LBE120:
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, tmp573
	movq	%rax, -80(%rbp)	# tmp573, sv
	cmpq	$0, -80(%rbp)	#, sv
	je	.L983	#,
	.loc 1 2461 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp574
	movq	(%rax), %rax	# MEM[(struct CV *)sv_224].sv_any, D.18331
	movq	96(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18333
	movq	%rdx, 112(%rax)	# D.18333, _225->xcv_depth
	movq	112(%rax), %rax	# _225->xcv_depth, D.18333
	testq	%rax, %rax	# D.18333
	je	.L983	#,
	movq	$0, -80(%rbp)	#, sv
.L983:
.LBE117:
	.loc 1 2462 0 is_stmt 1
	movq	-64(%rbp), %rax	# newpm, tmp575
	movq	%rax, PL_curpm(%rip)	# tmp575, PL_curpm
	.loc 1 2463 0
	cmpq	$0, -80(%rbp)	#, sv
	je	.L984	#,
	.loc 1 2463 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp576
	movq	%rax, %rdi	# tmp576,
	call	Perl_sv_free	#
.L984:
	.loc 1 2465 0 is_stmt 1
	movq	(%r12), %rax	# *sp_18, D.18334
	movl	12(%rax), %eax	# _229->sv_flags, D.18335
	andl	$8388608, %eax	#, D.18335
	.loc 1 2464 0
	testl	%eax, %eax	# D.18335
	je	.L985	#,
	.loc 1 2465 0
	movq	(%r12), %rax	# *sp_18, D.18334
	.loc 1 2466 0
	cmpq	$PL_sv_undef, %rax	#, D.18334
	jne	.L986	#,
	.loc 1 2466 0 is_stmt 0 discriminator 1
	movl	$.LC33, %eax	#, iftmp.1031
	jmp	.L988	#
.L986:
	.loc 1 2466 0 discriminator 2
	movl	$.LC34, %eax	#, iftmp.1031
	jmp	.L988	#
.L985:
	.loc 1 2464 0 is_stmt 1 discriminator 1
	movl	$.LC35, %eax	#, iftmp.1030
.L988:
	.loc 1 2464 0 is_stmt 0 discriminator 2
	movq	%rax, %rsi	# iftmp.1030,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L976	#
.L980:
	.loc 1 2470 0 is_stmt 1
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.1032
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1033
	addl	$1, %edx	#, PL_tmps_ix.1034
	movl	%edx, PL_tmps_ix(%rip)	# PL_tmps_ix.1034, PL_tmps_ix
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1035
	movslq	%edx, %rdx	# PL_tmps_ix.1035, D.18328
	salq	$3, %rdx	#, D.18328
	addq	%rax, %rdx	# PL_tmps_stack.1032, D.18336
	movq	-88(%rbp), %rax	# mark, tmp577
	movq	(%rax), %rax	# *mark_162, D.18334
	movq	%rax, (%rdx)	# D.18334, *_244
	.loc 1 2471 0
	movq	-88(%rbp), %rax	# mark, tmp578
	movq	(%rax), %rax	# *mark_162, PL_Sv.1036
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1036, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1038
	testq	%rax, %rax	# PL_Sv.1038
	je	.L991	#,
	.loc 1 2471 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1039
	movl	8(%rax), %edx	# PL_Sv.1039_248->sv_refcnt, D.18335
	addl	$1, %edx	#, D.18335
	movl	%edx, 8(%rax)	# D.18335, PL_Sv.1039_248->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1039_248->sv_refcnt, D.18335
	testl	%eax, %eax	# D.18335
	je	.L991	#,
	.loc 1 2471 0 discriminator 3
	jmp	.L991	#
.L979:
	.loc 1 2475 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 2476 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1040
	movl	16(%rax), %edx	# PL_curstackinfo.1040_255->si_cxix, D.18327
	subl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1040_255->si_cxix
.LBB121:
	.loc 1 2477 0
	movzbl	104(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18329
	testb	%al, %al	# D.18329
	je	.L992	#,
.LBB122:
	.loc 1 2477 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1041
	movq	(%rax), %rax	# PL_defgv.1041_259->sv_any, D.18337
	movq	56(%rax), %rax	# _260->xgv_gp, D.18338
	movq	32(%rax), %rax	# _261->gp_av, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1042
	movq	(%rax), %rax	# PL_defgv.1042_263->sv_any, D.18337
	movq	56(%rax), %rax	# _264->xgv_gp, D.18338
	movq	80(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18339
	movq	%rdx, 32(%rax)	# D.18339, _265->gp_av
.LBE122:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _268->sv_any, D.18340
	movzbl	72(%rax), %eax	# _269->xav_flags, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$1, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L993	#,
.LBB123:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _273->sv_any, D.18340
	movq	8(%rax), %rax	# _274->xav_fill, tmp579
	movq	%rax, -40(%rbp)	# tmp579, fill
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18339, cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-40(%rbp), %rax	# fill, tmp580
	movl	%eax, %edx	# tmp580, D.18327
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movl	%edx, %esi	# D.18327,
	movq	%rax, %rdi	# D.18339,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _280->sv_any, D.18340
	movb	$2, 72(%rax)	#, _281->xav_flags
	movq	112(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18341
	movq	(%rax), %rax	# MEM[(struct AV *)_282].sv_any, D.18340
	movq	(%rax), %rax	# _283->xav_array, D.18342
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rdx, (%rax)	# D.18339, MEM[(struct SV * *)_284]
.LBE123:
	jmp	.L992	#
.L993:
.LBB124:
	.loc 1 2477 0 discriminator 2
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _286->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _288->sv_any, D.18340
	movq	16(%rdx), %rcx	# _289->xav_max, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _291->sv_any, D.18340
	movq	(%rdx), %rdx	# _292->xav_array, D.18342
	movq	%rdx, %rsi	# D.18342, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _295->sv_any, D.18340
	movq	56(%rdx), %rdx	# _296->xav_alloc, D.18336
	subq	%rdx, %rsi	# D.18333, D.18333
	movq	%rsi, %rdx	# D.18333, D.18333
	sarq	$3, %rdx	#, tmp581
	addq	%rcx, %rdx	# D.18333, D.18333
	movq	%rdx, 16(%rax)	# D.18333, _287->xav_max
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _302->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _304->sv_any, D.18340
	movq	56(%rdx), %rdx	# _305->xav_alloc, D.18336
	movq	%rdx, (%rax)	# D.18336, MEM[(struct XPV *)_303].xpv_pv
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _307->sv_any, D.18340
	movq	$-1, 8(%rax)	#, _308->xav_fill
.L992:
.LBE124:
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, tmp582
	movq	%rax, -80(%rbp)	# tmp582, sv
	cmpq	$0, -80(%rbp)	#, sv
	je	.L994	#,
	.loc 1 2477 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp583
	movq	(%rax), %rax	# MEM[(struct CV *)sv_310].sv_any, D.18331
	movq	96(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18333
	movq	%rdx, 112(%rax)	# D.18333, _311->xcv_depth
	movq	112(%rax), %rax	# _311->xcv_depth, D.18333
	testq	%rax, %rax	# D.18333
	je	.L994	#,
	movq	$0, -80(%rbp)	#, sv
.L994:
.LBE121:
	.loc 1 2478 0 is_stmt 1
	movq	-64(%rbp), %rax	# newpm, tmp584
	movq	%rax, PL_curpm(%rip)	# tmp584, PL_curpm
	.loc 1 2479 0
	cmpq	$0, -80(%rbp)	#, sv
	je	.L995	#,
	.loc 1 2479 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp585
	movq	%rax, %rdi	# tmp585,
	call	Perl_sv_free	#
.L995:
	.loc 1 2480 0 is_stmt 1
	cmpq	%r12, -88(%rbp)	# sp, mark
	jbe	.L996	#,
	.loc 1 2480 0 is_stmt 0 discriminator 1
	movl	$.LC37, %eax	#, iftmp.1043
	jmp	.L997	#
.L996:
	.loc 1 2480 0 discriminator 2
	movl	$.LC38, %eax	#, iftmp.1043
.L997:
	.loc 1 2480 0 discriminator 3
	movq	%rax, %rsi	# iftmp.1043,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L976	#
.L991:
	.loc 1 2483 0 is_stmt 1 discriminator 2
	movq	-88(%rbp), %r12	# mark, sp
	jmp	.L961	#
.L977:
	.loc 1 2485 0
	cmpl	$1, -96(%rbp)	#, gimme
	jne	.L961	#,
	.loc 1 2486 0
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1044
	movslq	%eax, %rdx	# PL_tmps_ix.1044, D.18333
	movq	%r12, %rcx	# sp, sp.1045
	movq	-72(%rbp), %rax	# newsp, newsp.1046
	subq	%rax, %rcx	# newsp.1046, D.18333
	movq	%rcx, %rax	# D.18333, D.18333
	sarq	$3, %rax	#, tmp586
	addq	%rax, %rdx	# D.18333, D.18333
	movl	PL_tmps_max(%rip), %eax	# PL_tmps_max, PL_tmps_max.1047
	cltq
	cmpq	%rax, %rdx	# D.18333, D.18333
	jl	.L998	#,
	.loc 1 2486 0 is_stmt 0 discriminator 1
	movq	%r12, %rdx	# sp, sp.1048
	movq	-72(%rbp), %rax	# newsp, newsp.1049
	subq	%rax, %rdx	# newsp.1049, D.18333
	movq	%rdx, %rax	# D.18333, D.18333
	sarq	$3, %rax	#, tmp587
	movl	%eax, %edi	# D.18327,
	call	Perl_tmps_grow	#
.L998:
	.loc 1 2487 0 is_stmt 1
	movq	-72(%rbp), %rax	# newsp, tmp591
	addq	$8, %rax	#, tmp590
	movq	%rax, -88(%rbp)	# tmp590, mark
	jmp	.L999	#
.L1009:
	.loc 1 2488 0
	movq	-88(%rbp), %rax	# mark, tmp592
	movq	(%rax), %rax	# *mark_3, D.18334
	cmpq	$PL_sv_undef, %rax	#, D.18334
	je	.L1000	#,
	.loc 1 2489 0
	movq	-88(%rbp), %rax	# mark, tmp593
	movq	(%rax), %rax	# *mark_3, D.18334
	movl	12(%rax), %eax	# _334->sv_flags, D.18335
	andl	$8391168, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1000	#,
	.loc 1 2491 0
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2492 0
	call	Perl_pop_scope	#
	.loc 1 2493 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1050
	movl	16(%rax), %edx	# PL_curstackinfo.1050_337->si_cxix, D.18327
	subl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1050_337->si_cxix
.LBB125:
	.loc 1 2494 0
	movzbl	104(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18329
	testb	%al, %al	# D.18329
	je	.L1001	#,
.LBB126:
	.loc 1 2494 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1051
	movq	(%rax), %rax	# PL_defgv.1051_341->sv_any, D.18337
	movq	56(%rax), %rax	# _342->xgv_gp, D.18338
	movq	32(%rax), %rax	# _343->gp_av, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1052
	movq	(%rax), %rax	# PL_defgv.1052_345->sv_any, D.18337
	movq	56(%rax), %rax	# _346->xgv_gp, D.18338
	movq	80(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18339
	movq	%rdx, 32(%rax)	# D.18339, _347->gp_av
.LBE126:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _350->sv_any, D.18340
	movzbl	72(%rax), %eax	# _351->xav_flags, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$1, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L1002	#,
.LBB127:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _355->sv_any, D.18340
	movq	8(%rax), %rax	# _356->xav_fill, tmp594
	movq	%rax, -32(%rbp)	# tmp594, fill
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18339, cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-32(%rbp), %rax	# fill, tmp595
	movl	%eax, %edx	# tmp595, D.18327
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movl	%edx, %esi	# D.18327,
	movq	%rax, %rdi	# D.18339,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _362->sv_any, D.18340
	movb	$2, 72(%rax)	#, _363->xav_flags
	movq	112(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18341
	movq	(%rax), %rax	# MEM[(struct AV *)_364].sv_any, D.18340
	movq	(%rax), %rax	# _365->xav_array, D.18342
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rdx, (%rax)	# D.18339, MEM[(struct SV * *)_366]
.LBE127:
	jmp	.L1001	#
.L1002:
.LBB128:
	.loc 1 2494 0 discriminator 2
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _368->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _370->sv_any, D.18340
	movq	16(%rdx), %rcx	# _371->xav_max, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _373->sv_any, D.18340
	movq	(%rdx), %rdx	# _374->xav_array, D.18342
	movq	%rdx, %rsi	# D.18342, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _377->sv_any, D.18340
	movq	56(%rdx), %rdx	# _378->xav_alloc, D.18336
	subq	%rdx, %rsi	# D.18333, D.18333
	movq	%rsi, %rdx	# D.18333, D.18333
	sarq	$3, %rdx	#, tmp596
	addq	%rcx, %rdx	# D.18333, D.18333
	movq	%rdx, 16(%rax)	# D.18333, _369->xav_max
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _384->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _386->sv_any, D.18340
	movq	56(%rdx), %rdx	# _387->xav_alloc, D.18336
	movq	%rdx, (%rax)	# D.18336, MEM[(struct XPV *)_385].xpv_pv
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _389->sv_any, D.18340
	movq	$-1, 8(%rax)	#, _390->xav_fill
.L1001:
.LBE128:
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, tmp597
	movq	%rax, -80(%rbp)	# tmp597, sv
	cmpq	$0, -80(%rbp)	#, sv
	je	.L1003	#,
	.loc 1 2494 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp598
	movq	(%rax), %rax	# MEM[(struct CV *)sv_392].sv_any, D.18331
	movq	96(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18333
	movq	%rdx, 112(%rax)	# D.18333, _393->xcv_depth
	movq	112(%rax), %rax	# _393->xcv_depth, D.18333
	testq	%rax, %rax	# D.18333
	je	.L1003	#,
	movq	$0, -80(%rbp)	#, sv
.L1003:
.LBE125:
	.loc 1 2495 0 is_stmt 1
	movq	-64(%rbp), %rax	# newpm, tmp599
	movq	%rax, PL_curpm(%rip)	# tmp599, PL_curpm
	.loc 1 2496 0
	cmpq	$0, -80(%rbp)	#, sv
	je	.L1004	#,
	.loc 1 2496 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp600
	movq	%rax, %rdi	# tmp600,
	call	Perl_sv_free	#
.L1004:
	.loc 1 2498 0 is_stmt 1
	movq	(%r12), %rax	# *sp_18, D.18334
	movl	12(%rax), %eax	# _397->sv_flags, D.18335
	andl	$8388608, %eax	#, D.18335
	.loc 1 2497 0
	testl	%eax, %eax	# D.18335
	je	.L1005	#,
	.loc 1 2497 0 is_stmt 0 discriminator 1
	movl	$.LC40, %eax	#, iftmp.1053
	jmp	.L1006	#
.L1005:
	.loc 1 2497 0 discriminator 2
	movl	$.LC41, %eax	#, iftmp.1053
.L1006:
	.loc 1 2497 0 discriminator 3
	movq	%rax, %rsi	# iftmp.1053,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L976	#
.L1000:
	.loc 1 2502 0 is_stmt 1
	movq	PL_tmps_stack(%rip), %rax	# PL_tmps_stack, PL_tmps_stack.1054
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1055
	addl	$1, %edx	#, PL_tmps_ix.1056
	movl	%edx, PL_tmps_ix(%rip)	# PL_tmps_ix.1056, PL_tmps_ix
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1057
	movslq	%edx, %rdx	# PL_tmps_ix.1057, D.18328
	salq	$3, %rdx	#, D.18328
	addq	%rax, %rdx	# PL_tmps_stack.1054, D.18336
	movq	-88(%rbp), %rax	# mark, tmp601
	movq	(%rax), %rax	# *mark_3, D.18334
	movq	%rax, (%rdx)	# D.18334, *_409
	.loc 1 2503 0
	movq	-88(%rbp), %rax	# mark, tmp602
	movq	(%rax), %rax	# *mark_3, PL_Sv.1058
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1058, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1060
	testq	%rax, %rax	# PL_Sv.1060
	je	.L1008	#,
	.loc 1 2503 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1061
	movl	8(%rax), %edx	# PL_Sv.1061_413->sv_refcnt, D.18335
	addl	$1, %edx	#, D.18335
	movl	%edx, 8(%rax)	# D.18335, PL_Sv.1061_413->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1061_413->sv_refcnt, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1008	#,
	.loc 1 2503 0
	nop
.L1008:
	.loc 1 2487 0 is_stmt 1
	addq	$8, -88(%rbp)	#, mark
.L999:
	.loc 1 2487 0 is_stmt 0 discriminator 1
	cmpq	%r12, -88(%rbp)	# sp, mark
	jbe	.L1009	#,
	jmp	.L961	#
.L970:
	.loc 1 2509 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, gimme
	jne	.L1010	#,
.L960:
	.loc 1 2511 0
	movq	-72(%rbp), %rax	# newsp, tmp606
	addq	$8, %rax	#, tmp605
	movq	%rax, -88(%rbp)	# tmp605, mark
	.loc 1 2512 0
	cmpq	%r12, -88(%rbp)	# sp, mark
	ja	.L1011	#,
	.loc 1 2513 0
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, D.18330
	testq	%rax, %rax	# D.18330
	je	.L1012	#,
	.loc 1 2513 0 is_stmt 0 discriminator 1
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, D.18330
	movq	(%rax), %rax	# _422->sv_any, D.18331
	movq	112(%rax), %rax	# _423->xcv_depth, D.18333
	cmpq	$1, %rax	#, D.18333
	jle	.L1012	#,
	.loc 1 2514 0 is_stmt 1
	movq	(%r12), %rax	# *sp_18, D.18334
	movl	12(%rax), %eax	# _425->sv_flags, D.18335
	andl	$2048, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1013	#,
	.loc 1 2515 0
	movq	(%r12), %rax	# *sp_18, PL_Sv.1062
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1062, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1064
	testq	%rax, %rax	# PL_Sv.1064
	je	.L1015	#,
	.loc 1 2515 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1065
	movl	8(%rax), %edx	# PL_Sv.1065_430->sv_refcnt, D.18335
	addl	$1, %edx	#, D.18335
	movl	%edx, 8(%rax)	# D.18335, PL_Sv.1065_430->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1065_430->sv_refcnt, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1015	#,
	.loc 1 2515 0
	nop
.L1015:
	.loc 1 2515 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1066
	movq	-88(%rbp), %rax	# mark, tmp607
	movq	%rdx, (%rax)	# PL_Sv.1066, *mark_420
	.loc 1 2516 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1067
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1068
	cmpl	%eax, %edx	# PL_tmps_floor.1068, PL_tmps_ix.1067
	jle	.L1016	#,
	.loc 1 2516 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L1016:
	.loc 1 2517 0 is_stmt 1
	movq	-88(%rbp), %rax	# mark, tmp608
	movq	(%rax), %rax	# *mark_420, D.18334
	movq	%rax, %rdi	# D.18334,
	call	Perl_sv_2mortal	#
	.loc 1 2514 0
	jmp	.L1021	#
.L1013:
	.loc 1 2520 0
	movq	(%r12), %rax	# *sp_18, PL_Sv.1069
	movq	%rax, PL_Sv(%rip)	# PL_Sv.1069, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1071
	testq	%rax, %rax	# PL_Sv.1071
	je	.L1019	#,
	.loc 1 2520 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1072
	movl	8(%rax), %edx	# PL_Sv.1072_442->sv_refcnt, D.18335
	addl	$1, %edx	#, D.18335
	movl	%edx, 8(%rax)	# D.18335, PL_Sv.1072_442->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1072_442->sv_refcnt, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1019	#,
	.loc 1 2520 0
	nop
.L1019:
	.loc 1 2520 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp609
	movq	%rax, -80(%rbp)	# tmp609, sv
	.loc 1 2521 0 is_stmt 1 discriminator 4
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.1073
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.1074
	cmpl	%eax, %edx	# PL_tmps_floor.1074, PL_tmps_ix.1073
	jle	.L1020	#,
	.loc 1 2521 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L1020:
	.loc 1 2522 0 is_stmt 1
	movq	-80(%rbp), %rax	# sv, tmp610
	movq	%rax, %rdi	# tmp610,
	call	Perl_sv_mortalcopy	#
	movq	-88(%rbp), %rdx	# mark, tmp611
	movq	%rax, (%rdx)	# D.18334, *mark_420
	.loc 1 2523 0
	movq	-80(%rbp), %rax	# sv, tmp612
	movq	%rax, %rdi	# tmp612,
	call	Perl_sv_free	#
	.loc 1 2514 0
	jmp	.L1021	#
.L1012:
	.loc 1 2527 0
	movq	(%r12), %rax	# *sp_18, D.18334
	movl	12(%rax), %eax	# _452->sv_flags, D.18335
	andl	$2048, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	je	.L1022	#,
	.loc 1 2527 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *sp_18, iftmp.1075
	jmp	.L1023	#
.L1022:
	.loc 1 2527 0 discriminator 2
	movq	(%r12), %rax	# *sp_18, D.18334
	movq	%rax, %rdi	# D.18334,
	call	Perl_sv_mortalcopy	#
.L1023:
	.loc 1 2527 0 discriminator 3
	movq	-88(%rbp), %rdx	# mark, tmp613
	movq	%rax, (%rdx)	# iftmp.1075, *mark_420
	jmp	.L1024	#
.L1021:
	jmp	.L1024	#
.L1011:
	.loc 1 2530 0 is_stmt 1
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1076
	movq	%rax, %rdx	# PL_stack_max.1076, PL_stack_max.1077
	movq	-88(%rbp), %rax	# mark, mark.1078
	subq	%rax, %rdx	# mark.1078, D.18333
	movq	%rdx, %rax	# D.18333, D.18333
	cmpq	$-7, %rax	#, D.18333
	jge	.L1025	#,
.LBB129:
	.loc 1 2530 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# mark, mark.1079
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1080
	subq	%rax, %rdx	# PL_stack_base.1081, D.18333
	movq	%rdx, %rax	# D.18333, D.18333
	sarq	$3, %rax	#, tmp614
	movl	%eax, -92(%rbp)	# D.18333, markoff
	movq	-88(%rbp), %rax	# mark, tmp615
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp615,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1082
	movl	-92(%rbp), %edx	# markoff, tmp616
	movslq	%edx, %rdx	# tmp616, D.18328
	salq	$3, %rdx	#, D.18328
	addq	%rdx, %rax	# D.18328, tmp617
	movq	%rax, -88(%rbp)	# tmp617, mark
.L1025:
.LBE129:
	.loc 1 2531 0 is_stmt 1
	movq	-88(%rbp), %rax	# mark, tmp618
	movq	$PL_sv_undef, (%rax)	#, *mark_4
.L1024:
	.loc 1 2533 0 discriminator 4
	movq	-88(%rbp), %r12	# mark, sp
	jmp	.L961	#
.L1010:
	.loc 1 2535 0
	cmpl	$1, -96(%rbp)	#, gimme
	jne	.L961	#,
.L963:
	.loc 1 2537 0
	movq	-72(%rbp), %rax	# newsp, tmp622
	addq	$8, %rax	#, tmp621
	movq	%rax, -88(%rbp)	# tmp621, mark
	jmp	.L1026	#
.L1028:
	.loc 1 2538 0
	movq	-88(%rbp), %rax	# mark, tmp623
	movq	(%rax), %rax	# *mark_6, D.18334
	movl	12(%rax), %eax	# _475->sv_flags, D.18335
	andl	$2048, %eax	#, D.18335
	testl	%eax, %eax	# D.18335
	jne	.L1027	#,
	.loc 1 2539 0
	movq	-88(%rbp), %rax	# mark, tmp624
	movq	(%rax), %rax	# *mark_6, D.18334
	movq	%rax, %rdi	# D.18334,
	call	Perl_sv_mortalcopy	#
	movq	-88(%rbp), %rdx	# mark, tmp625
	movq	%rax, (%rdx)	# D.18334, *mark_6
	.loc 1 2540 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
.L1027:
	.loc 1 2537 0
	addq	$8, -88(%rbp)	#, mark
.L1026:
	.loc 1 2537 0 is_stmt 0 discriminator 1
	cmpq	%r12, -88(%rbp)	# sp, mark
	jbe	.L1028	#,
.L961:
	.loc 1 2545 0 is_stmt 1
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2547 0
	call	Perl_pop_scope	#
	.loc 1 2548 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1083
	movl	16(%rax), %edx	# PL_curstackinfo.1083_481->si_cxix, D.18327
	subl	$1, %edx	#, D.18327
	movl	%edx, 16(%rax)	# D.18327, PL_curstackinfo.1083_481->si_cxix
.LBB130:
	.loc 1 2549 0
	movzbl	104(%rbx), %eax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.hasargs, D.18329
	testb	%al, %al	# D.18329
	je	.L1029	#,
.LBB131:
	.loc 1 2549 0 is_stmt 0 discriminator 1
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1084
	movq	(%rax), %rax	# PL_defgv.1084_485->sv_any, D.18337
	movq	56(%rax), %rax	# _486->xgv_gp, D.18338
	movq	32(%rax), %rax	# _487->gp_av, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1085
	movq	(%rax), %rax	# PL_defgv.1085_489->sv_any, D.18337
	movq	56(%rax), %rax	# _490->xgv_gp, D.18338
	movq	80(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.savearray, D.18339
	movq	%rdx, 32(%rax)	# D.18339, _491->gp_av
.LBE131:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _494->sv_any, D.18340
	movzbl	72(%rax), %eax	# _495->xav_flags, D.18329
	movzbl	%al, %eax	# D.18329, D.18327
	andl	$1, %eax	#, D.18327
	testl	%eax, %eax	# D.18327
	je	.L1030	#,
.LBB132:
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _499->sv_any, D.18340
	movq	8(%rax), %rax	# _500->xav_fill, tmp626
	movq	%rax, -24(%rbp)	# tmp626, fill
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rax, %rdi	# D.18339,
	call	Perl_sv_free	#
	call	Perl_newAV	#
	movq	%rax, 88(%rbx)	# D.18339, cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray
	movq	-24(%rbp), %rax	# fill, tmp627
	movl	%eax, %edx	# tmp627, D.18327
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movl	%edx, %esi	# D.18327,
	movq	%rax, %rdi	# D.18339,
	call	Perl_av_extend	#
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _506->sv_any, D.18340
	movb	$2, 72(%rax)	#, _507->xav_flags
	movq	112(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.oldcomppad, D.18341
	movq	(%rax), %rax	# MEM[(struct AV *)_508].sv_any, D.18340
	movq	(%rax), %rax	# _509->xav_array, D.18342
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	%rdx, (%rax)	# D.18339, MEM[(struct SV * *)_510]
.LBE132:
	jmp	.L1029	#
.L1030:
.LBB133:
	.loc 1 2549 0 discriminator 2
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _512->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _514->sv_any, D.18340
	movq	16(%rdx), %rcx	# _515->xav_max, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _517->sv_any, D.18340
	movq	(%rdx), %rdx	# _518->xav_array, D.18342
	movq	%rdx, %rsi	# D.18342, D.18333
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _521->sv_any, D.18340
	movq	56(%rdx), %rdx	# _522->xav_alloc, D.18336
	subq	%rdx, %rsi	# D.18333, D.18333
	movq	%rsi, %rdx	# D.18333, D.18333
	sarq	$3, %rdx	#, tmp628
	addq	%rcx, %rdx	# D.18333, D.18333
	movq	%rdx, 16(%rax)	# D.18333, _513->xav_max
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _528->sv_any, D.18340
	movq	88(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rdx), %rdx	# _530->sv_any, D.18340
	movq	56(%rdx), %rdx	# _531->xav_alloc, D.18336
	movq	%rdx, (%rax)	# D.18336, MEM[(struct XPV *)_529].xpv_pv
	movq	88(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.argarray, D.18339
	movq	(%rax), %rax	# _533->sv_any, D.18340
	movq	$-1, 8(%rax)	#, _534->xav_fill
.L1029:
.LBE133:
	movq	56(%rbx), %rax	# cx_27->cx_u.cx_blk.blk_u.blku_sub.cv, tmp629
	movq	%rax, -80(%rbp)	# tmp629, sv
	cmpq	$0, -80(%rbp)	#, sv
	je	.L1031	#,
	.loc 1 2549 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp630
	movq	(%rax), %rax	# MEM[(struct CV *)sv_536].sv_any, D.18331
	movq	96(%rbx), %rdx	# cx_27->cx_u.cx_blk.blk_u.blku_sub.olddepth, D.18333
	movq	%rdx, 112(%rax)	# D.18333, _537->xcv_depth
	movq	112(%rax), %rax	# _537->xcv_depth, D.18333
	testq	%rax, %rax	# D.18333
	je	.L1031	#,
	movq	$0, -80(%rbp)	#, sv
.L1031:
.LBE130:
	.loc 1 2550 0 is_stmt 1
	movq	-64(%rbp), %rax	# newpm, tmp631
	movq	%rax, PL_curpm(%rip)	# tmp631, PL_curpm
	.loc 1 2552 0
	cmpq	$0, -80(%rbp)	#, sv
	je	.L1032	#,
	.loc 1 2552 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# sv, tmp632
	movq	%rax, %rdi	# tmp632,
	call	Perl_sv_free	#
.L1032:
	.loc 1 2553 0 is_stmt 1
	call	Perl_pop_return	#
.L976:
	.loc 1 2554 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_pp_leavesublv, .-Perl_pp_leavesublv
	.section	.rodata
.LC43:
	.string	"END"
	.text
	.type	S_get_db_sub, @function
S_get_db_sub:
.LFB41:
	.loc 1 2559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# svp, svp
	movq	%rsi, -48(%rbp)	# cv, cv
	.loc 1 2560 0
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.1086
	movq	(%rax), %rax	# PL_DBsub.1086_2->sv_any, D.18355
	movq	56(%rax), %rax	# _3->xgv_gp, D.18356
	movq	(%rax), %rax	# _4->gp_sv, tmp107
	movq	%rax, -16(%rbp)	# tmp107, dbsv
	.loc 1 2562 0
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1087
	testl	%eax, %eax	# PL_perldb.1087
	je	.L1034	#,
	.loc 1 2562 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1088
	andl	$64, %eax	#, D.18357
	testl	%eax, %eax	# D.18357
	jne	.L1035	#,
.L1034:
.LBB134:
	.loc 1 2563 0 is_stmt 1
	movq	-48(%rbp), %rax	# cv, tmp108
	movq	(%rax), %rax	# cv_24(D)->sv_any, D.18362
	movq	96(%rax), %rax	# _26->xcv_gv, tmp109
	movq	%rax, -24(%rbp)	# tmp109, gv
	.loc 1 2565 0
	movq	-16(%rbp), %rax	# dbsv, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_save_item	#
	.loc 1 2566 0
	movq	-48(%rbp), %rax	# cv, tmp111
	movq	(%rax), %rax	# cv_24(D)->sv_any, D.18362
	movzwl	136(%rax), %eax	# _28->xcv_flags, D.18363
	movzwl	%ax, %eax	# D.18363, D.18359
	andl	$6, %eax	#, D.18359
	testl	%eax, %eax	# D.18359
	jne	.L1036	#,
	.loc 1 2567 0
	movq	-24(%rbp), %rax	# gv, tmp112
	movq	(%rax), %rax	# gv_27->sv_any, D.18355
	movq	64(%rax), %rax	# _32->xgv_name, D.18364
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# D.18364,
	call	strcmp	#
	testl	%eax, %eax	# D.18359
	je	.L1036	#,
	.loc 1 2568 0
	movq	-24(%rbp), %rax	# gv, tmp113
	movq	(%rax), %rax	# gv_27->sv_any, D.18355
	movq	56(%rax), %rax	# _35->xgv_gp, D.18356
	movq	56(%rax), %rax	# _36->gp_cv, D.18365
	cmpq	-48(%rbp), %rax	# cv, D.18365
	je	.L1037	#,
	.loc 1 2569 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp114
	movq	(%rax), %rax	# *svp_38(D), D.18366
	movl	12(%rax), %eax	# _39->sv_flags, D.18357
	movzbl	%al, %eax	# D.18357, D.18357
	.loc 1 2568 0 discriminator 1
	cmpl	$13, %eax	#, D.18357
	jne	.L1036	#,
	.loc 1 2569 0
	movq	-40(%rbp), %rax	# svp, tmp115
	movq	(%rax), %rax	# *svp_38(D), D.18366
	movq	(%rax), %rax	# MEM[(struct GV *)_42].sv_any, D.18355
	movq	56(%rax), %rax	# _43->xgv_gp, D.18356
	movq	56(%rax), %rax	# _44->gp_cv, D.18365
	cmpq	-48(%rbp), %rax	# cv, D.18365
	jne	.L1036	#,
	.loc 1 2570 0 discriminator 1
	movq	-40(%rbp), %rax	# svp, tmp116
	movq	(%rax), %rax	# *svp_38(D), tmp117
	movq	%rax, -24(%rbp)	# tmp117, gv
	.loc 1 2569 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gv
	jne	.L1037	#,
.L1036:
.LBB135:
	.loc 1 2573 0
	movq	-48(%rbp), %rax	# cv, tmp118
	movq	%rax, %rdi	# tmp118,
	call	Perl_newRV	#
	movq	%rax, -8(%rbp)	# tmp119, tmp
	.loc 1 2574 0
	movq	-8(%rbp), %rcx	# tmp, tmp120
	movq	-16(%rbp), %rax	# dbsv, tmp121
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	Perl_sv_setsv_flags	#
	.loc 1 2575 0
	movq	-8(%rbp), %rax	# tmp, tmp122
	movq	%rax, %rdi	# tmp122,
	call	Perl_sv_free	#
.LBE135:
	.loc 1 2570 0
	nop
.LBE134:
	.loc 1 2562 0
	jmp	.L1039	#
.L1037:
.LBB136:
	.loc 1 2578 0
	movq	-24(%rbp), %rsi	# gv, tmp123
	movq	-16(%rbp), %rax	# dbsv, tmp124
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp124,
	call	Perl_gv_efullname4	#
.LBE136:
	.loc 1 2562 0
	jmp	.L1039	#
.L1035:
	.loc 1 2582 0
	movq	-16(%rbp), %rax	# dbsv, tmp125
	movl	12(%rax), %eax	# dbsv_5->sv_flags, D.18357
	movzbl	%al, %eax	# D.18357, D.18357
	cmpl	$4, %eax	#, D.18357
	ja	.L1040	#,
	.loc 1 2582 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# dbsv, tmp126
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.18358
	je	.L1042	#,
.L1040:
	.loc 1 2582 0 discriminator 1
	nop
.L1042:
	.loc 1 2583 0 is_stmt 1
	movq	-16(%rbp), %rax	# dbsv, tmp127
	movl	12(%rax), %eax	# dbsv_5->sv_flags, D.18357
	andl	$2097152, %eax	#, D.18357
	testl	%eax, %eax	# D.18357
	je	.L1044	#,
	.loc 1 2583 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dbsv, tmp128
	movq	%rax, %rdi	# tmp128,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.18359
	je	.L1044	#,
	.loc 1 2583 0
	nop
.L1044:
	.loc 1 2583 0 discriminator 3
	movq	-16(%rbp), %rax	# dbsv, tmp129
	movl	12(%rax), %eax	# dbsv_5->sv_flags, D.18357
	orl	$16842752, %eax	#, D.18357
	movl	%eax, %edx	# D.18357, D.18357
	movq	-16(%rbp), %rax	# dbsv, tmp130
	movl	%edx, 12(%rax)	# D.18357, dbsv_5->sv_flags
	.loc 1 2584 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# dbsv, tmp131
	movq	(%rax), %rax	# dbsv_5->sv_any, D.18360
	addq	$24, %rax	#, D.18361
	movq	%rax, %rdi	# D.18361,
	call	Perl_save_iv	#
	.loc 1 2585 0 discriminator 3
	movq	-16(%rbp), %rax	# dbsv, tmp132
	movq	(%rax), %rax	# dbsv_5->sv_any, D.18360
	movq	-48(%rbp), %rdx	# cv, cv.1091
	movq	%rdx, 24(%rax)	# cv.1091, MEM[(struct XPVIV *)_23].xiv_iv
.L1039:
	.loc 1 2588 0
	movq	-48(%rbp), %rax	# cv, tmp133
	movq	(%rax), %rax	# cv_24(D)->sv_any, D.18362
	movq	80(%rax), %rax	# _48->xcv_xsub, D.18367
	testq	%rax, %rax	# D.18367
	je	.L1045	#,
	.loc 1 2589 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1092
	movq	%rax, PL_curcopdb(%rip)	# PL_curcop.1092, PL_curcopdb
.L1045:
	.loc 1 2590 0
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.1093
	movq	(%rax), %rax	# PL_DBsub.1093_51->sv_any, D.18355
	movq	56(%rax), %rax	# _52->xgv_gp, D.18356
	movq	56(%rax), %rax	# _53->gp_cv, tmp134
	movq	%rax, -48(%rbp)	# tmp134, cv
	.loc 1 2591 0
	movq	-48(%rbp), %rax	# cv, D.18365
	.loc 1 2592 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	S_get_db_sub, .-S_get_db_sub
	.section	.rodata
.LC44:
	.string	"Not a CODE reference"
.LC45:
	.string	"a subroutine"
.LC46:
	.string	"Undefined subroutine called"
	.align 8
.LC47:
	.string	"Undefined subroutine &%_ called"
.LC48:
	.string	"No DB::sub routine defined"
	.text
	.globl	Perl_pp_entersub
	.type	Perl_pp_entersub, @function
Perl_pp_entersub:
.LFB42:
	.loc 1 2595 0
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
	subq	$136, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 2596 0
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	movq	%r13, %rax	# sp, sp.1094
	leaq	-8(%rax), %r13	#, sp
	movq	(%rax), %rax	# *sp.1094_21, sv.1095
	movq	%rax, -152(%rbp)	# sv.1095, sv
	.loc 1 2602 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1096
	movzbl	36(%rax), %eax	# PL_op.1096_24->op_flags, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$64, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	setne	%al	#, D.18372
	movb	%al, -165(%rbp)	# D.18372, hasargs
	.loc 1 2604 0
	movq	-152(%rbp), %rax	# sv, sv.1097
	testq	%rax, %rax	# sv.1097
	jne	.L1048	#,
	.loc 1 2605 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1048:
	.loc 1 2606 0
	movq	-152(%rbp), %rax	# sv, sv.1098
	movl	12(%rax), %eax	# sv.1098_32->sv_flags, D.18373
	movzbl	%al, %eax	# D.18373, D.18373
	cmpl	$12, %eax	#, D.18373
	je	.L1051	#,
	cmpl	$12, %eax	#, D.18373
	ja	.L1052	#,
	cmpl	$10, %eax	#, D.18373
	jb	.L1050	#,
	jmp	.L1053	#
.L1052:
	cmpl	$13, %eax	#, D.18373
	je	.L1054	#,
.L1050:
	.loc 1 2608 0
	movq	-152(%rbp), %rax	# sv, sv.1099
	movl	12(%rax), %eax	# sv.1099_35->sv_flags, D.18373
	andl	$524288, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	jne	.L1055	#,
.LBB137:
	.loc 1 2612 0
	movq	-152(%rbp), %rax	# sv, sv.1100
	cmpq	$PL_sv_yes, %rax	#, sv.1100
	jne	.L1056	#,
	.loc 1 2613 0
	cmpb	$0, -165(%rbp)	#, hasargs
	je	.L1057	#,
	.loc 1 2614 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1101
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1102
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1104
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1104, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1103_41, D.18371
	cltq
	salq	$3, %rax	#, D.18374
	leaq	(%rcx,%rax), %r13	#, sp
.L1057:
	.loc 1 2615 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1105
	movq	(%rax), %rax	# PL_op.1105_47->op_next, D.18369
	jmp	.L1121	#
.L1056:
	.loc 1 2617 0
	movq	-152(%rbp), %rax	# sv, sv.1106
	movl	12(%rax), %eax	# sv.1106_49->sv_flags, D.18373
	andl	$8192, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1059	#,
	.loc 1 2618 0
	movq	-152(%rbp), %rax	# sv, sv.1107
	movq	%rax, %rdi	# sv.1107,
	call	Perl_mg_get	#
	.loc 1 2619 0
	movq	-152(%rbp), %rax	# sv, sv.1108
	movl	12(%rax), %eax	# sv.1108_53->sv_flags, D.18373
	andl	$524288, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	jne	.L1055	#,
	.loc 1 2621 0
	movq	-152(%rbp), %rax	# sv, sv.1110
	movl	12(%rax), %eax	# sv.1110_56->sv_flags, D.18373
	andl	$67108864, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1061	#,
	.loc 1 2621 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# sv, sv.1111
	movq	(%rax), %rax	# sv.1111_59->sv_any, D.18375
	movq	(%rax), %rax	# MEM[(struct XPV *)_60].xpv_pv, iftmp.1109
	jmp	.L1062	#
.L1061:
	.loc 1 2621 0 discriminator 2
	movl	$0, %eax	#, iftmp.1109
.L1062:
	.loc 1 2621 0 discriminator 1
	movq	%rax, -128(%rbp)	# iftmp.1109, sym
	jmp	.L1063	#
.L1059:
	.loc 1 2624 0 is_stmt 1
	movq	-152(%rbp), %rax	# sv, sv.1113
	movl	12(%rax), %eax	# sv.1113_64->sv_flags, D.18373
	andl	$262144, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1064	#,
	.loc 1 2624 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# sv, sv.1114
	movq	(%rax), %rax	# sv.1114_67->sv_any, D.18375
	movq	8(%rax), %rax	# MEM[(struct XPV *)_68].xpv_cur, n_a.1115
	movq	%rax, -136(%rbp)	# n_a.1115, n_a
	movq	-152(%rbp), %rax	# sv, sv.1116
	movq	(%rax), %rax	# sv.1116_70->sv_any, D.18375
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, iftmp.1112
	jmp	.L1065	#
.L1064:
	.loc 1 2624 0 discriminator 2
	movq	-152(%rbp), %rax	# sv, sv.1117
	leaq	-136(%rbp), %rcx	#, tmp468
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp468,
	movq	%rax, %rdi	# sv.1117,
	call	Perl_sv_2pv_flags	#
.L1065:
	.loc 1 2624 0 discriminator 3
	movq	%rax, -128(%rbp)	# iftmp.1112, sym
.L1063:
	.loc 1 2625 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, sym
	jne	.L1066	#,
	.loc 1 2626 0
	movl	$.LC45, %esi	#,
	movl	$PL_no_usym, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1066:
	.loc 1 2627 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1118
	movzbl	37(%rax), %eax	# PL_op.1118_77->op_private, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$2, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	je	.L1067	#,
	.loc 1 2628 0
	movq	-128(%rbp), %rax	# sym, tmp469
	movl	$.LC45, %edx	#,
	movq	%rax, %rsi	# tmp469,
	movl	$PL_no_symref, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1067:
	.loc 1 2629 0
	movq	-128(%rbp), %rax	# sym, tmp470
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp470,
	call	Perl_get_cv	#
	movq	%rax, %rbx	#, cv
	jmp	.L1068	#
.L1055:
.LBE137:
.LBB138:
	.loc 1 2634 0
	leaq	-152(%rbp), %rax	#, tmp471
	movq	%rax, -112(%rbp)	# tmp471, sp
	.loc 1 2635 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.1119
	testq	%rax, %rax	# PL_amagic_generation.1119
	je	.L1069	#,
.LBB139:
	.loc 1 2635 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# sp, tmp472
	movq	(%rax), %rax	# *sp_83, tmp473
	movq	%rax, -120(%rbp)	# tmp473, arg
.L1070:
	.loc 1 2635 0 discriminator 2
	movq	-120(%rbp), %rax	# arg, tmp474
	movl	12(%rax), %eax	# arg_9->sv_flags, D.18373
	andl	$268435456, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1069	#,
	.loc 1 2635 0 discriminator 1
	movq	-120(%rbp), %rax	# arg, tmp475
	movl	$9, %ecx	#,
	movl	$62, %edx	#,
	movl	$PL_sv_undef, %esi	#,
	movq	%rax, %rdi	# tmp475,
	call	Perl_amagic_call	#
	movq	%rax, -104(%rbp)	# tmp476, tmpsv
	cmpq	$0, -104(%rbp)	#, tmpsv
	je	.L1069	#,
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, tmp477
	movq	%rax, -112(%rbp)	# tmp477, sp
.LBB140:
	movq	-104(%rbp), %rax	# tmpsv, tmp478
	movq	%rax, -152(%rbp)	# tmp478, sv
	movq	-104(%rbp), %rax	# tmpsv, tmp479
	movl	12(%rax), %eax	# tmpsv_88->sv_flags, D.18373
	andl	$524288, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	jne	.L1071	#,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1071:
	.loc 1 2635 0 discriminator 2
	movq	-104(%rbp), %rax	# tmpsv, tmp480
	cmpq	-120(%rbp), %rax	# arg, tmp480
	je	.L1069	#,
	.loc 1 2635 0 discriminator 1
	movq	-104(%rbp), %rax	# tmpsv, tmp481
	movq	(%rax), %rax	# tmpsv_88->sv_any, D.18375
	movq	(%rax), %rdx	# MEM[(struct XRV *)_92].xrv_rv, D.18376
	movq	-120(%rbp), %rax	# arg, tmp482
	movq	(%rax), %rax	# arg_9->sv_any, D.18375
	movq	(%rax), %rax	# MEM[(struct XRV *)_94].xrv_rv, D.18376
	cmpq	%rax, %rdx	# D.18376, D.18376
	je	.L1069	#,
	movq	-104(%rbp), %rax	# tmpsv, tmp483
	movq	%rax, -120(%rbp)	# tmp483, arg
	jmp	.L1070	#
.L1069:
.LBE140:
.LBE139:
.LBE138:
	.loc 1 2637 0 is_stmt 1
	movq	-152(%rbp), %rax	# sv, sv.1120
	movq	(%rax), %rax	# sv.1120_97->sv_any, D.18375
	movq	(%rax), %rbx	# MEM[(struct XRV *)_98].xrv_rv, cv
	.loc 1 2638 0
	movl	12(%rbx), %eax	# cv_99->sv_flags, D.18373
	movzbl	%al, %eax	# D.18373, D.18373
	cmpl	$12, %eax	#, D.18373
	jne	.L1053	#,
	.loc 1 2639 0
	jmp	.L1068	#
.L1053:
	.loc 1 2643 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1051:
	.loc 1 2645 0
	movq	-152(%rbp), %rbx	# sv, cv
	.loc 1 2646 0
	jmp	.L1068	#
.L1054:
	.loc 1 2648 0
	movq	-152(%rbp), %rax	# sv, sv.1122
	movq	(%rax), %rax	# MEM[(struct GV *)sv.1122_104].sv_any, D.18377
	movq	56(%rax), %rax	# _105->xgv_gp, D.18378
	movl	64(%rax), %eax	# _106->gp_cvgen, D.18373
	testl	%eax, %eax	# D.18373
	jne	.L1072	#,
	.loc 1 2648 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# sv, sv.1123
	movq	(%rax), %rax	# MEM[(struct GV *)sv.1123_108].sv_any, D.18377
	movq	56(%rax), %rax	# _109->xgv_gp, D.18378
	movq	56(%rax), %rax	# _110->gp_cv, iftmp.1121
	jmp	.L1073	#
.L1072:
	.loc 1 2648 0 discriminator 2
	movl	$0, %eax	#, iftmp.1121
.L1073:
	.loc 1 2648 0 discriminator 3
	movq	%rax, %rbx	# iftmp.1121, cv
	testq	%rbx, %rbx	# cv
	jne	.L1074	#,
	.loc 1 2649 0 is_stmt 1
	movq	-152(%rbp), %rax	# sv, sv.1124
	leaq	-144(%rbp), %rdx	#, tmp484
	leaq	-136(%rbp), %rsi	#, tmp485
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# sv.1124,
	call	Perl_sv_2cv	#
	movq	%rax, %rbx	#, cv
.L1074:
	.loc 1 2650 0
	testq	%rbx, %rbx	# cv
	jne	.L1075	#,
	.loc 1 2651 0
	call	Perl_push_scope	#
	.loc 1 2652 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1125
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1125, PL_tmps_floor
	.loc 1 2653 0
	jmp	.L1076	#
.L1075:
	.loc 1 2655 0
	nop
.L1068:
	.loc 1 2658 0
	call	Perl_push_scope	#
	.loc 1 2659 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.1126
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.1126, PL_tmps_floor
.L1077:
	.loc 1 2662 0
	movq	(%rbx), %rax	# cv_5->sv_any, D.18379
	movq	72(%rax), %rax	# _119->xcv_root, D.18369
	testq	%rax, %rax	# D.18369
	jne	.L1078	#,
	.loc 1 2662 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cv_5->sv_any, D.18379
	movq	80(%rax), %rax	# _121->xcv_xsub, D.18380
	testq	%rax, %rax	# D.18380
	jne	.L1078	#,
.LBB141:
	.loc 1 2667 0 is_stmt 1
	movq	(%rbx), %rax	# cv_5->sv_any, D.18379
	movzwl	136(%rax), %eax	# _123->xcv_flags, D.18381
	movzwl	%ax, %eax	# D.18381, D.18371
	andl	$4, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	jne	.L1079	#,
	.loc 1 2667 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cv_5->sv_any, D.18379
	movq	96(%rax), %rax	# _127->xcv_gv, gv.1127
	movq	%rax, -144(%rbp)	# gv.1127, gv
	movq	-144(%rbp), %rax	# gv, gv.1128
	testq	%rax, %rax	# gv.1128
	jne	.L1080	#,
.L1079:
	.loc 1 2668 0 is_stmt 1
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1080:
	.loc 1 2671 0
	movq	-144(%rbp), %rax	# gv, gv.1129
	movq	(%rax), %rax	# gv.1129_130->sv_any, D.18377
	movq	56(%rax), %rax	# _131->xgv_gp, D.18378
	movq	56(%rax), %rax	# _132->gp_cv, D.18382
	cmpq	%rbx, %rax	# cv, D.18382
	je	.L1076	#,
	.loc 1 2672 0
	movq	-144(%rbp), %rax	# gv, gv.1130
	movq	(%rax), %rax	# gv.1130_134->sv_any, D.18377
	movq	56(%rax), %rax	# _135->xgv_gp, D.18378
	movq	56(%rax), %rbx	# _136->gp_cv, cv
	jmp	.L1081	#
.L1076:
	.loc 1 2677 0
	movq	-144(%rbp), %rax	# gv, gv.1131
	movq	(%rax), %rax	# gv.1131_461->sv_any, D.18377
	movq	72(%rax), %rdx	# _462->xgv_namelen, D.18374
	movq	-144(%rbp), %rax	# gv, gv.1132
	movq	(%rax), %rax	# gv.1132_464->sv_any, D.18377
	movq	64(%rax), %rsi	# _465->xgv_name, D.18386
	movq	-144(%rbp), %rax	# gv, gv.1133
	movq	(%rax), %rax	# gv.1133_467->sv_any, D.18377
	movq	80(%rax), %rax	# _468->xgv_stash, D.18393
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.18393,
	call	Perl_gv_autoload4	#
	movq	%rax, -64(%rbp)	# tmp486, autogv
	cmpq	$0, -64(%rbp)	#, autogv
	je	.L1082	#,
	.loc 1 2680 0
	movq	-64(%rbp), %rax	# autogv, tmp487
	movq	(%rax), %rax	# autogv_470->sv_any, D.18377
	movq	56(%rax), %rax	# _471->xgv_gp, D.18378
	movq	56(%rax), %rbx	# _472->gp_cv, cv
	jmp	.L1081	#
.L1082:
	.loc 1 2684 0
	call	Perl_sv_newmortal	#
	movq	%rax, -56(%rbp)	# tmp488, sub_name
	.loc 1 2685 0
	movq	-144(%rbp), %rsi	# gv, gv.1134
	movq	-56(%rbp), %rax	# sub_name, tmp489
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp489,
	call	Perl_gv_efullname4	#
	.loc 1 2686 0
	movq	-56(%rbp), %rax	# sub_name, tmp490
	movq	%rax, %rsi	# tmp490,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1081:
	.loc 1 2689 0
	testq	%rbx, %rbx	# cv
	jne	.L1083	#,
	.loc 1 2690 0
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1083:
	.loc 1 2691 0
	jmp	.L1077	#
.L1078:
.LBE141:
	.loc 1 2694 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1136
	movzbl	36(%rax), %eax	# PL_op.1136_139->op_flags, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$3, %eax	#, D.18371
	cmpl	$1, %eax	#, D.18371
	je	.L1084	#,
	.loc 1 2694 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1138
	movzbl	36(%rax), %eax	# PL_op.1138_143->op_flags, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$3, %eax	#, D.18371
	cmpl	$2, %eax	#, D.18371
	je	.L1085	#,
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1140
	movzbl	36(%rax), %eax	# PL_op.1140_147->op_flags, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$3, %eax	#, D.18371
	cmpl	$3, %eax	#, D.18371
	je	.L1086	#,
	call	Perl_block_gimme	#
	jmp	.L1089	#
.L1086:
	.loc 1 2694 0 discriminator 2
	movl	$1, %eax	#, iftmp.1139
	jmp	.L1089	#
.L1085:
	movl	$0, %eax	#, iftmp.1137
	jmp	.L1089	#
.L1084:
	movl	$128, %eax	#, iftmp.1135
.L1089:
	.loc 1 2694 0 discriminator 3
	movl	%eax, -164(%rbp)	# iftmp.1135, gimme
	.loc 1 2695 0 is_stmt 1 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1141
	movzbl	37(%rax), %eax	# PL_op.1141_158->op_private, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$16, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	je	.L1090	#,
	.loc 1 2695 0 is_stmt 0 discriminator 1
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.1142
	movq	(%rax), %rax	# PL_DBsub.1142_162->sv_any, D.18377
	movq	56(%rax), %rax	# _163->xgv_gp, D.18378
	movq	56(%rax), %rax	# _164->gp_cv, D.18382
	testq	%rax, %rax	# D.18382
	je	.L1090	#,
	movq	(%rbx), %rax	# cv_5->sv_any, D.18379
	movzwl	136(%rax), %eax	# _166->xcv_flags, D.18381
	movzwl	%ax, %eax	# D.18381, D.18371
	andl	$32, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	jne	.L1090	#,
	.loc 1 2696 0 is_stmt 1
	leaq	-152(%rbp), %rax	#, tmp491
	movq	%rbx, %rsi	# cv,
	movq	%rax, %rdi	# tmp491,
	call	S_get_db_sub	#
	movq	%rax, %rbx	#, cv
	.loc 1 2697 0
	testq	%rbx, %rbx	# cv
	je	.L1091	#,
	.loc 1 2697 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# cv_170->sv_any, D.18379
	movq	80(%rax), %rax	# _171->xcv_xsub, D.18380
	testq	%rax, %rax	# D.18380
	jne	.L1090	#,
	movq	(%rbx), %rax	# cv_170->sv_any, D.18379
	movq	64(%rax), %rax	# _173->xcv_start, D.18369
	testq	%rax, %rax	# D.18369
	jne	.L1090	#,
.L1091:
	.loc 1 2698 0 is_stmt 1
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1121	#
.L1090:
	.loc 1 2835 0
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	80(%rax), %rax	# _176->xcv_xsub, D.18380
	testq	%rax, %rax	# D.18380
	je	.L1092	#,
.LBB142:
	.loc 1 2856 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1143
	movl	(%rax), %eax	# *PL_markstack_ptr.1143_178, tmp492
	movl	%eax, -160(%rbp)	# tmp492, markix
	.loc 1 2858 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2860 0
	cmpb	$0, -165(%rbp)	#, hasargs
	jne	.L1093	#,
.LBB143:
	.loc 1 2869 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1144
	movq	(%rax), %rax	# PL_defgv.1144_180->sv_any, D.18377
	movq	56(%rax), %rax	# _181->xgv_gp, D.18378
	movq	32(%rax), %rax	# _182->gp_av, tmp493
	movq	%rax, -96(%rbp)	# tmp493, av
	.loc 1 2871 0
	movq	-96(%rbp), %rax	# av, tmp494
	movq	(%rax), %rax	# av_183->sv_any, D.18383
	movq	8(%rax), %rax	# _184->xav_fill, D.18384
	addl	$1, %eax	#, D.18385
	movl	%eax, -156(%rbp)	# D.18385, items
	.loc 1 2873 0
	cmpl	$0, -156(%rbp)	#, items
	je	.L1093	#,
	.loc 1 2875 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1145
	movq	%rax, %rdx	# PL_stack_max.1145, PL_stack_max.1146
	movq	%r13, %rax	# sp, sp.1147
	subq	%rax, %rdx	# sp.1147, D.18384
	movq	%rdx, %rax	# D.18384, D.18384
	sarq	$3, %rax	#, tmp495
	movq	%rax, %rdx	# tmp495, D.18384
	movl	-156(%rbp), %eax	# items, tmp496
	cltq
	cmpq	%rax, %rdx	# D.18384, D.18384
	jge	.L1094	#,
	.loc 1 2875 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# items, tmp497
	movl	%eax, %edx	# tmp497,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L1094:
	.loc 1 2876 0 is_stmt 1
	movl	-156(%rbp), %eax	# items, tmp498
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18374
	movq	-96(%rbp), %rax	# av, tmp499
	movq	(%rax), %rax	# av_183->sv_any, D.18383
	movq	(%rax), %rcx	# _198->xav_array, D.18386
	leaq	8(%r13), %rax	#, D.18386
	movq	%rcx, %rsi	# D.18386,
	movq	%rax, %rdi	# D.18386,
	call	memcpy	#
	.loc 1 2877 0
	movl	-156(%rbp), %eax	# items, tmp500
	cltq
	salq	$3, %rax	#, D.18374
	addq	%rax, %r13	# D.18374, sp
	.loc 1 2878 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
.L1093:
.LBE143:
	.loc 1 2882 0
	movq	PL_curcopdb(%rip), %rax	# PL_curcopdb, PL_curcopdb.1148
	testq	%rax, %rax	# PL_curcopdb.1148
	je	.L1095	#,
	.loc 1 2883 0
	movl	$PL_curcop, %edi	#,
	call	Perl_save_vptr	#
	.loc 1 2884 0
	movq	PL_curcopdb(%rip), %rax	# PL_curcopdb, PL_curcopdb.1149
	movq	%rax, PL_curcop(%rip)	# PL_curcopdb.1149, PL_curcop
	.loc 1 2885 0
	movq	$0, PL_curcopdb(%rip)	#, PL_curcopdb
.L1095:
	.loc 1 2888 0
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	80(%rax), %rax	# _206->xcv_xsub, D.18380
	movq	%rbx, %rdi	# cv,
	call	*%rax	# D.18380
	.loc 1 2891 0
	cmpl	$0, -164(%rbp)	#, gimme
	jne	.L1096	#,
	.loc 1 2891 0 is_stmt 0 discriminator 1
	addl	$1, -160(%rbp)	#, markix
	movl	-160(%rbp), %eax	# markix, tmp501
	movslq	%eax, %rdx	# tmp501, D.18384
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.1150
	movq	%rax, %rcx	# PL_stack_sp.1150, PL_stack_sp.1151
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1152
	subq	%rax, %rcx	# PL_stack_base.1153, D.18384
	movq	%rcx, %rax	# D.18384, D.18384
	sarq	$3, %rax	#, tmp502
	cmpq	%rax, %rdx	# D.18384, D.18384
	je	.L1096	#,
	.loc 1 2892 0 is_stmt 1
	movl	-160(%rbp), %eax	# markix, tmp503
	movslq	%eax, %rdx	# tmp503, D.18384
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.1154
	movq	%rax, %rcx	# PL_stack_sp.1154, PL_stack_sp.1155
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1156
	subq	%rax, %rcx	# PL_stack_base.1157, D.18384
	movq	%rcx, %rax	# D.18384, D.18384
	sarq	$3, %rax	#, tmp504
	cmpq	%rax, %rdx	# D.18384, D.18384
	jle	.L1097	#,
	.loc 1 2893 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1158
	movl	-160(%rbp), %edx	# markix, tmp505
	movslq	%edx, %rdx	# tmp505, D.18374
	salq	$3, %rdx	#, D.18374
	addq	%rdx, %rax	# D.18374, D.18387
	movq	$PL_sv_undef, (%rax)	#, *_226
	jmp	.L1098	#
.L1097:
	.loc 1 2895 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1159
	movl	-160(%rbp), %edx	# markix, tmp506
	movslq	%edx, %rdx	# tmp506, D.18374
	salq	$3, %rdx	#, D.18374
	addq	%rax, %rdx	# PL_stack_base.1159, D.18387
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.1160
	movq	(%rax), %rax	# *PL_stack_sp.1160_231, D.18376
	movq	%rax, (%rdx)	# D.18376, *_230
.L1098:
	.loc 1 2896 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1161
	movl	-160(%rbp), %edx	# markix, tmp507
	movslq	%edx, %rdx	# tmp507, D.18374
	salq	$3, %rdx	#, D.18374
	addq	%rdx, %rax	# D.18374, PL_stack_sp.1162
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1162, PL_stack_sp
.L1096:
.LBE142:
	.loc 1 2899 0
	call	Perl_pop_scope	#
	.loc 1 2900 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1163
	movq	(%rax), %rax	# PL_op.1163_237->op_next, D.18369
	jmp	.L1121	#
.L1092:
.LBB144:
	.loc 1 2903 0
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1164
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1165
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1167
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1167, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1166_241, D.18371
	cltq
	salq	$3, %rax	#, D.18374
	leaq	(%rcx,%rax), %r14	#, mark
	.loc 1 2904 0
	movq	%r13, %rdx	# sp, sp.1168
	movq	%r14, %rax	# mark, mark.1169
	subq	%rax, %rdx	# mark.1169, D.18384
	movq	%rdx, %rax	# D.18384, D.18384
	sarq	$3, %rax	#, tmp508
	movl	%eax, %r15d	# D.18384, items
	.loc 1 2905 0
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	120(%rax), %rax	# _252->xcv_padlist, tmp509
	movq	%rax, -88(%rbp)	# tmp509, padlist
	.loc 1 2906 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1170
	movq	(%rax), %rax	# PL_op.1170_254->op_next, D.18369
	movq	%rax, %rdi	# D.18369,
	call	Perl_push_return	#
	.loc 1 2907 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1172
	movl	16(%rax), %edx	# PL_curstackinfo.1172_256->si_cxix, D.18371
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1173
	movl	20(%rax), %eax	# PL_curstackinfo.1173_258->si_cxmax, D.18371
	cmpl	%eax, %edx	# D.18371, D.18371
	jge	.L1099	#,
	.loc 1 2907 0 is_stmt 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1174
	movl	16(%rax), %edx	# PL_curstackinfo.1174_260->si_cxix, D.18371
	addl	$1, %edx	#, D.18371
	movl	%edx, 16(%rax)	# D.18371, PL_curstackinfo.1174_260->si_cxix
	jmp	.L1100	#
.L1099:
	.loc 1 2907 0 discriminator 2
	movq	PL_curstackinfo(%rip), %r12	# PL_curstackinfo, PL_curstackinfo.1175
	call	Perl_cxinc	#
	movl	%eax, 16(%r12)	# D.18371, PL_curstackinfo.1175_264->si_cxix
.L1100:
	.loc 1 2907 0 discriminator 3
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1176
	movq	8(%rax), %rcx	# PL_curstackinfo.1176_267->si_cxstack, D.18388
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.1177
	movl	16(%rax), %eax	# PL_curstackinfo.1177_269->si_cxix, D.18371
	movslq	%eax, %rdx	# D.18371, D.18374
	movq	%rdx, %rax	# D.18374, tmp510
	salq	$3, %rax	#, tmp510
	addq	%rdx, %rax	# D.18374, tmp510
	salq	$4, %rax	#, tmp511
	leaq	(%rcx,%rax), %r12	#, cx
	movl	$1, (%r12)	#, cx_273->cx_type
	movq	%r14, %rdx	# mark, mark.1178
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1179
	subq	%rax, %rdx	# PL_stack_base.1180, D.18384
	movq	%rdx, %rax	# D.18384, D.18384
	sarq	$3, %rax	#, tmp512
	movl	%eax, 8(%r12)	# D.18371, cx_273->cx_u.cx_blk.blku_oldsp
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1181
	movq	%rax, 16(%r12)	# PL_curcop.1181, cx_273->cx_u.cx_blk.blku_oldcop
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1182
	movq	%rax, %rdx	# PL_markstack_ptr.1182, PL_markstack_ptr.1183
	movq	PL_markstack(%rip), %rax	# PL_markstack, PL_markstack.1184
	subq	%rax, %rdx	# PL_markstack.1185, D.18384
	movq	%rdx, %rax	# D.18384, D.18384
	sarq	$2, %rax	#, tmp513
	movl	%eax, 28(%r12)	# D.18371, cx_273->cx_u.cx_blk.blku_oldmarksp
	movl	PL_scopestack_ix(%rip), %eax	# PL_scopestack_ix, PL_scopestack_ix.1186
	movl	%eax, 32(%r12)	# PL_scopestack_ix.1186, cx_273->cx_u.cx_blk.blku_oldscopesp
	movl	PL_retstack_ix(%rip), %eax	# PL_retstack_ix, PL_retstack_ix.1187
	movl	%eax, 24(%r12)	# PL_retstack_ix.1187, cx_273->cx_u.cx_blk.blku_oldretsp
	movq	PL_curpm(%rip), %rax	# PL_curpm, PL_curpm.1188
	movq	%rax, 40(%r12)	# PL_curpm.1188, cx_273->cx_u.cx_blk.blku_oldpm
	movl	-164(%rbp), %eax	# gimme, tmp514
	movb	%al, 48(%r12)	# D.18370, cx_273->cx_u.cx_blk.blku_gimme
	.loc 1 2908 0 is_stmt 1 discriminator 3
	movq	%rbx, 56(%r12)	# cv, cx_273->cx_u.cx_blk.blk_u.blku_sub.cv
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _292->xcv_depth, D.18384
	movq	%rax, 96(%r12)	# D.18384, cx_273->cx_u.cx_blk.blk_u.blku_sub.olddepth
	movzbl	-165(%rbp), %eax	# hasargs, hasargs.1189
	movb	%al, 104(%r12)	# hasargs.1189, cx_273->cx_u.cx_blk.blk_u.blku_sub.hasargs
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _295->xcv_depth, D.18384
	testq	%rax, %rax	# D.18384
	jne	.L1101	#,
	.loc 1 2908 0 is_stmt 0 discriminator 1
	movq	%rbx, PL_Sv(%rip)	# cv, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1191
	testq	%rax, %rax	# PL_Sv.1191
	je	.L1103	#,
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1192
	movl	8(%rax), %edx	# PL_Sv.1192_298->sv_refcnt, D.18373
	addl	$1, %edx	#, D.18373
	movl	%edx, 8(%rax)	# D.18373, PL_Sv.1192_298->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1192_298->sv_refcnt, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1103	#,
	.loc 1 2908 0
	nop
.L1103:
	.loc 1 2908 0 discriminator 4
	movq	%rbx, PL_Sv(%rip)	# cv, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1194
	testq	%rax, %rax	# PL_Sv.1194
	je	.L1105	#,
	.loc 1 2908 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1195
	movl	8(%rax), %edx	# PL_Sv.1195_305->sv_refcnt, D.18373
	addl	$1, %edx	#, D.18373
	movl	%edx, 8(%rax)	# D.18373, PL_Sv.1195_305->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1195_305->sv_refcnt, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1105	#,
	.loc 1 2908 0
	nop
.L1105:
	.loc 1 2908 0 discriminator 4
	movq	%rbx, %rdi	# cv,
	call	Perl_save_freesv	#
.L1101:
	.loc 1 2908 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1196
	movzbl	37(%rax), %eax	# PL_op.1196_311->op_private, D.18370
	andl	$-124, %eax	#, D.18370
	movb	%al, 105(%r12)	# D.18370, cx_273->cx_u.cx_blk.blk_u.blku_sub.lval
	.loc 1 2909 0 is_stmt 1 discriminator 2
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rdx	# _314->xcv_depth, D.18384
	addq	$1, %rdx	#, D.18384
	movq	%rdx, 112(%rax)	# D.18384, _314->xcv_depth
	.loc 1 2915 0 discriminator 2
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _317->xcv_depth, D.18384
	cmpq	$1, %rax	#, D.18384
	jle	.L1106	#,
	.loc 1 2917 0
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _319->xcv_depth, D.18384
	movl	%eax, %ecx	# D.18384, D.18371
	movq	-88(%rbp), %rax	# padlist, tmp515
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18371,
	movq	%rax, %rdi	# tmp515,
	call	Perl_pad_push	#
.L1106:
.LBB145:
	.loc 1 2933 0
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1197
	leal	2(%rax), %edx	#, D.18371
	movl	PL_savestack_max(%rip), %eax	# PL_savestack_max, PL_savestack_max.1198
	cmpl	%eax, %edx	# PL_savestack_max.1198, D.18371
	jle	.L1107	#,
	.loc 1 2933 0 is_stmt 0 discriminator 1
	call	Perl_savestack_grow	#
.L1107:
	.loc 1 2933 0 discriminator 2
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1199
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1200
	leal	1(%rax), %edx	#, PL_savestack_ix.1202
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1202, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.18374
	leaq	(%rcx,%rax), %rdx	#, D.18389
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1203
	movq	%rax, (%rdx)	# PL_comppad.1203, _331->any_ptr
	movq	PL_savestack(%rip), %rcx	# PL_savestack, PL_savestack.1204
	movl	PL_savestack_ix(%rip), %eax	# PL_savestack_ix, PL_savestack_ix.1205
	leal	1(%rax), %edx	#, PL_savestack_ix.1207
	movl	%edx, PL_savestack_ix(%rip)	# PL_savestack_ix.1207, PL_savestack_ix
	cltq
	salq	$3, %rax	#, D.18374
	addq	%rcx, %rax	# PL_savestack.1204, D.18389
	movl	$33, (%rax)	#, _339->any_i32
.LBE145:
	movq	-88(%rbp), %rax	# padlist, tmp516
	movq	(%rax), %rax	# padlist_253->sv_any, D.18383
	movq	(%rax), %rdx	# _341->xav_array, D.18386
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _343->xcv_depth, D.18384
	salq	$3, %rax	#, D.18374
	addq	%rdx, %rax	# D.18386, D.18387
	movq	(%rax), %rax	# *_347, PL_comppad.1208
	movq	%rax, PL_comppad(%rip)	# PL_comppad.1208, PL_comppad
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1209
	movq	(%rax), %rax	# PL_comppad.1209_349->sv_any, D.18383
	movq	(%rax), %rax	# _350->xav_array, PL_curpad.1210
	movq	%rax, PL_curpad(%rip)	# PL_curpad.1210, PL_curpad
	.loc 1 2935 0 is_stmt 1 discriminator 2
	cmpb	$0, -165(%rbp)	#, hasargs
	je	.L1108	#,
.LBB146:
	.loc 1 2945 0
	movq	PL_curpad(%rip), %rax	# PL_curpad, PL_curpad.1211
	movq	(%rax), %rax	# *PL_curpad.1211_352, tmp517
	movq	%rax, -80(%rbp)	# tmp517, av
	.loc 1 2946 0
	movq	-80(%rbp), %rax	# av, tmp518
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movzbl	72(%rax), %eax	# _354->xav_flags, D.18370
	movzbl	%al, %eax	# D.18370, D.18371
	andl	$1, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	je	.L1109	#,
	.loc 1 2949 0
	movq	-80(%rbp), %rax	# av, tmp519
	movq	%rax, %rdi	# tmp519,
	call	Perl_av_clear	#
	.loc 1 2950 0
	movq	-80(%rbp), %rax	# av, tmp520
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-80(%rbp), %rdx	# av, tmp521
	movq	(%rdx), %rdx	# av_353->sv_any, D.18383
	movzbl	72(%rdx), %edx	# _359->xav_flags, D.18370
	andl	$-2, %edx	#, D.18370
	movb	%dl, 72(%rax)	# D.18370, _358->xav_flags
	.loc 1 2951 0
	movq	-80(%rbp), %rax	# av, tmp522
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-80(%rbp), %rdx	# av, tmp523
	movq	(%rdx), %rdx	# av_353->sv_any, D.18383
	movzbl	72(%rdx), %edx	# _363->xav_flags, D.18370
	orl	$2, %edx	#, D.18370
	movb	%dl, 72(%rax)	# D.18370, _362->xav_flags
.L1109:
	.loc 1 2954 0
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1212
	movq	(%rax), %rax	# PL_defgv.1212_366->sv_any, D.18377
	movq	56(%rax), %rax	# _367->xgv_gp, D.18378
	movq	32(%rax), %rax	# _368->gp_av, D.18391
	movq	%rax, 80(%r12)	# D.18391, cx_273->cx_u.cx_blk.blk_u.blku_sub.savearray
	.loc 1 2955 0
	movq	-80(%rbp), %rax	# av, tmp524
	movq	%rax, PL_Sv(%rip)	# tmp524, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1214
	testq	%rax, %rax	# PL_Sv.1214
	je	.L1111	#,
	.loc 1 2955 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1215
	movl	8(%rax), %edx	# PL_Sv.1215_371->sv_refcnt, D.18373
	addl	$1, %edx	#, D.18373
	movl	%edx, 8(%rax)	# D.18373, PL_Sv.1215_371->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1215_371->sv_refcnt, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1111	#,
	.loc 1 2955 0
	nop
.L1111:
	.loc 1 2955 0 discriminator 4
	movq	PL_defgv(%rip), %rax	# PL_defgv, PL_defgv.1216
	movq	(%rax), %rax	# PL_defgv.1216_377->sv_any, D.18377
	movq	56(%rax), %rax	# _378->xgv_gp, D.18378
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1217
	movq	%rdx, 32(%rax)	# PL_Sv.1217, _379->gp_av
	.loc 1 2957 0 is_stmt 1 discriminator 4
	movq	PL_comppad(%rip), %rax	# PL_comppad, PL_comppad.1218
	movq	%rax, 112(%r12)	# PL_comppad.1218, cx_273->cx_u.cx_blk.blk_u.blku_sub.oldcomppad
	.loc 1 2958 0 discriminator 4
	movq	-80(%rbp), %rax	# av, tmp525
	movq	%rax, 88(%r12)	# tmp525, cx_273->cx_u.cx_blk.blk_u.blku_sub.argarray
	.loc 1 2959 0 discriminator 4
	addq	$8, %r14	#, mark
	.loc 1 2961 0 discriminator 4
	movslq	%r15d, %rdx	# items, D.18384
	movq	-80(%rbp), %rax	# av, tmp526
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	16(%rax), %rax	# _384->xav_max, D.18384
	addq	$1, %rax	#, D.18384
	cmpq	%rax, %rdx	# D.18384, D.18384
	jle	.L1112	#,
	.loc 1 2962 0
	movq	-80(%rbp), %rax	# av, tmp527
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	56(%rax), %rax	# _387->xav_alloc, tmp528
	movq	%rax, -72(%rbp)	# tmp528, ary
	.loc 1 2963 0
	movq	-80(%rbp), %rax	# av, tmp529
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	(%rax), %rax	# _389->xav_array, D.18386
	cmpq	-72(%rbp), %rax	# ary, D.18386
	je	.L1113	#,
	.loc 1 2964 0
	movq	-80(%rbp), %rax	# av, tmp530
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-80(%rbp), %rdx	# av, tmp531
	movq	(%rdx), %rdx	# av_353->sv_any, D.18383
	movq	16(%rdx), %rcx	# _392->xav_max, D.18384
	movq	-80(%rbp), %rdx	# av, tmp532
	movq	(%rdx), %rdx	# av_353->sv_any, D.18383
	movq	(%rdx), %rdx	# _394->xav_array, D.18386
	movq	%rdx, %rsi	# D.18386, D.18384
	movq	-80(%rbp), %rdx	# av, tmp533
	movq	(%rdx), %rdx	# av_353->sv_any, D.18383
	movq	56(%rdx), %rdx	# _397->xav_alloc, D.18387
	subq	%rdx, %rsi	# D.18384, D.18384
	movq	%rsi, %rdx	# D.18384, D.18384
	sarq	$3, %rdx	#, tmp534
	addq	%rcx, %rdx	# D.18384, D.18384
	movq	%rdx, 16(%rax)	# D.18384, _391->xav_max
	.loc 1 2965 0
	movq	-80(%rbp), %rax	# av, tmp535
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-72(%rbp), %rdx	# ary, tmp536
	movq	%rdx, (%rax)	# tmp536, MEM[(struct XPV *)_403].xpv_pv
.L1113:
	.loc 1 2967 0
	movslq	%r15d, %rdx	# items, D.18384
	movq	-80(%rbp), %rax	# av, tmp537
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	16(%rax), %rax	# _405->xav_max, D.18384
	addq	$1, %rax	#, D.18384
	cmpq	%rax, %rdx	# D.18384, D.18384
	jle	.L1112	#,
	.loc 1 2968 0
	movq	-80(%rbp), %rax	# av, tmp538
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	leal	-1(%r15), %edx	#, D.18371
	movslq	%edx, %rdx	# D.18371, D.18384
	movq	%rdx, 16(%rax)	# D.18384, _408->xav_max
	.loc 1 2969 0
	movslq	%r15d, %rax	# items, D.18374
	leaq	0(,%rax,8), %rdx	#, D.18374
	movq	-72(%rbp), %rax	# ary, tmp539
	movq	%rdx, %rsi	# D.18374,
	movq	%rax, %rdi	# tmp539,
	call	Perl_safesysrealloc	#
	movq	%rax, -72(%rbp)	# tmp540, ary
	.loc 1 2970 0
	movq	-80(%rbp), %rax	# av, tmp541
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-72(%rbp), %rdx	# ary, tmp542
	movq	%rdx, 56(%rax)	# tmp542, _414->xav_alloc
	.loc 1 2971 0
	movq	-80(%rbp), %rax	# av, tmp543
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	-72(%rbp), %rdx	# ary, tmp544
	movq	%rdx, (%rax)	# tmp544, MEM[(struct XPV *)_415].xpv_pv
.L1112:
	.loc 1 2974 0
	movslq	%r15d, %rax	# items, D.18374
	leaq	0(,%rax,8), %rdx	#, D.18374
	movq	-80(%rbp), %rax	# av, tmp545
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	movq	(%rax), %rax	# _418->xav_array, D.18386
	movq	%r14, %rsi	# mark,
	movq	%rax, %rdi	# D.18386,
	call	memcpy	#
	.loc 1 2975 0
	movq	-80(%rbp), %rax	# av, tmp546
	movq	(%rax), %rax	# av_353->sv_any, D.18383
	leal	-1(%r15), %edx	#, D.18371
	movslq	%edx, %rdx	# D.18371, D.18384
	movq	%rdx, 8(%rax)	# D.18384, _420->xav_fill
	.loc 1 2977 0
	jmp	.L1114	#
.L1116:
	.loc 1 2978 0
	movq	(%r14), %rax	# *mark_10, D.18376
	testq	%rax, %rax	# D.18376
	je	.L1115	#,
	.loc 1 2979 0
	movq	(%r14), %rax	# *mark_10, D.18376
	movq	(%r14), %rdx	# *mark_10, D.18376
	movl	12(%rdx), %edx	# _427->sv_flags, D.18373
	andb	$247, %dh	#, D.18373
	movl	%edx, 12(%rax)	# D.18373, _426->sv_flags
.L1115:
	.loc 1 2980 0
	addq	$8, %r14	#, mark
.L1114:
	.loc 1 2977 0 discriminator 1
	movl	%r15d, %eax	# items, items.1219
	leal	-1(%rax), %r15d	#, items
	testl	%eax, %eax	# items.1219
	jne	.L1116	#,
.L1108:
.LBE146:
	.loc 1 2987 0
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	112(%rax), %rax	# _431->xcv_depth, D.18384
	cmpq	$100, %rax	#, D.18384
	jne	.L1117	#,
	.loc 1 2987 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1220
	movq	80(%rax), %rax	# PL_curcop.1220_433->cop_warnings, D.18376
	testq	%rax, %rax	# D.18376
	je	.L1118	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1221
	movq	80(%rax), %rax	# PL_curcop.1221_435->cop_warnings, D.18376
	cmpq	$32, %rax	#, D.18376
	je	.L1118	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1222
	movq	80(%rax), %rax	# PL_curcop.1222_437->cop_warnings, D.18376
	cmpq	$16, %rax	#, D.18376
	je	.L1119	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1223
	movq	80(%rax), %rax	# PL_curcop.1223_439->cop_warnings, D.18376
	movq	(%rax), %rax	# _440->sv_any, D.18375
	movq	(%rax), %rax	# MEM[(struct XPV *)_441].xpv_pv, D.18386
	addq	$4, %rax	#, D.18386
	movzbl	(%rax), %eax	# *_443, D.18392
	movsbl	%al, %eax	# D.18392, D.18371
	andl	$16, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	jne	.L1119	#,
.L1118:
	.loc 1 2987 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1224
	movq	80(%rax), %rax	# PL_curcop.1224_447->cop_warnings, D.18376
	testq	%rax, %rax	# D.18376
	jne	.L1117	#,
	.loc 1 2987 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1225
	movzbl	%al, %eax	# PL_dowarn.1225, D.18371
	andl	$1, %eax	#, D.18371
	testl	%eax, %eax	# D.18371
	je	.L1117	#,
.L1119:
	.loc 1 2988 0 is_stmt 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1226
	testl	%eax, %eax	# PL_perldb.1226
	je	.L1120	#,
	.loc 1 2988 0 is_stmt 0 discriminator 1
	movl	PL_perldb(%rip), %eax	# PL_perldb, PL_perldb.1227
	andl	$1, %eax	#, D.18373
	testl	%eax, %eax	# D.18373
	je	.L1120	#,
	movq	PL_DBsub(%rip), %rax	# PL_DBsub, PL_DBsub.1228
	movq	(%rax), %rax	# PL_DBsub.1228_455->sv_any, D.18377
	movq	56(%rax), %rax	# _456->xgv_gp, D.18378
	movq	56(%rax), %rax	# _457->gp_cv, D.18382
	cmpq	%rbx, %rax	# cv, D.18382
	je	.L1117	#,
.L1120:
	.loc 1 2989 0 is_stmt 1
	movq	%rbx, %rdi	# cv,
	call	Perl_sub_crush_depth	#
.L1117:
	.loc 1 2994 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	(%rbx), %rax	# cv_7->sv_any, D.18379
	movq	64(%rax), %rax	# _459->xcv_start, D.18369
.L1121:
.LBE144:
	.loc 1 2996 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_pp_entersub, .-Perl_pp_entersub
	.section	.rodata
	.align 8
.LC49:
	.string	"Deep recursion on anonymous subroutine"
	.align 8
.LC50:
	.string	"Deep recursion on subroutine \"%_\""
	.text
	.globl	Perl_sub_crush_depth
	.type	Perl_sub_crush_depth, @function
Perl_sub_crush_depth:
.LFB43:
	.loc 1 3000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cv, cv
	.loc 1 3001 0
	movq	-24(%rbp), %rax	# cv, tmp65
	movq	(%rax), %rax	# cv_1(D)->sv_any, D.18401
	movzwl	136(%rax), %eax	# _2->xcv_flags, D.18402
	movzwl	%ax, %eax	# D.18402, D.18403
	andl	$4, %eax	#, D.18403
	testl	%eax, %eax	# D.18403
	je	.L1123	#,
	.loc 1 3002 0
	movl	$.LC49, %esi	#,
	movl	$18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L1122	#
.L1123:
.LBB147:
	.loc 1 3004 0
	call	Perl_sv_newmortal	#
	movq	%rax, -8(%rbp)	# tmp66, tmpstr
	.loc 1 3005 0
	movq	-24(%rbp), %rax	# cv, tmp67
	movq	(%rax), %rax	# cv_1(D)->sv_any, D.18401
	movq	96(%rax), %rsi	# _7->xcv_gv, D.18404
	movq	-8(%rbp), %rax	# tmpstr, tmp68
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp68,
	call	Perl_gv_efullname4	#
	.loc 1 3006 0
	movq	-8(%rbp), %rax	# tmpstr, tmp69
	movq	%rax, %rdx	# tmp69,
	movl	$.LC50, %esi	#,
	movl	$18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L1122:
.LBE147:
	.loc 1 3009 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_sub_crush_depth, .-Perl_sub_crush_depth
	.section	.rodata
	.align 8
.LC51:
	.string	"Use of reference \"%_\" as array index"
	.text
	.globl	Perl_pp_aelem
	.type	Perl_pp_aelem, @function
Perl_pp_aelem:
.LFB44:
	.loc 1 3012 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3013 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3015 0
	movq	%rbx, %rax	# sp, sp.1229
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1229_11, tmp151
	movq	%rax, -48(%rbp)	# tmp151, elemsv
	.loc 1 3016 0
	movq	-48(%rbp), %rax	# elemsv, tmp152
	movl	12(%rax), %eax	# elemsv_13->sv_flags, D.18408
	andl	$65536, %eax	#, D.18408
	testl	%eax, %eax	# D.18408
	je	.L1126	#,
	.loc 1 3016 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# elemsv, tmp153
	movq	(%rax), %rax	# elemsv_13->sv_any, D.18409
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_16].xiv_iv, iftmp.1230
	jmp	.L1127	#
.L1126:
	.loc 1 3016 0 discriminator 2
	movq	-48(%rbp), %rax	# elemsv, tmp154
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_2iv	#
.L1127:
	.loc 1 3016 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.1230, elem
	.loc 1 3017 0 is_stmt 1 discriminator 3
	movq	%rbx, %rax	# sp, sp.1231
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.1231_20, tmp155
	movq	%rax, -40(%rbp)	# tmp155, av
	.loc 1 3018 0 discriminator 3
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1233
	movzbl	36(%rax), %eax	# PL_op.1233_23->op_flags, D.18410
	movzbl	%al, %eax	# D.18410, D.18411
	andl	$32, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	jne	.L1128	#,
	.loc 1 3018 0 is_stmt 0 discriminator 2
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1234
	movzbl	37(%rax), %eax	# PL_op.1234_27->op_private, D.18410
	movzbl	%al, %eax	# D.18410, D.18411
	andl	$8, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	je	.L1129	#,
	.loc 1 3018 0 discriminator 3
	call	Perl_is_lvalue_sub	#
	testl	%eax, %eax	# D.18411
	je	.L1129	#,
.L1128:
	.loc 1 3018 0 discriminator 1
	movl	$1, %eax	#, iftmp.1232
	jmp	.L1130	#
.L1129:
	.loc 1 3018 0 discriminator 4
	movl	$0, %eax	#, iftmp.1232
.L1130:
	.loc 1 3018 0 discriminator 5
	movl	%eax, -72(%rbp)	# iftmp.1232, lval
	.loc 1 3019 0 is_stmt 1 discriminator 5
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1236
	movzbl	37(%rax), %eax	# PL_op.1236_35->op_private, D.18410
	movzbl	%al, %eax	# D.18410, D.18411
	andl	$16, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	je	.L1131	#,
	.loc 1 3019 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# av, tmp156
	movl	12(%rax), %eax	# MEM[(struct SV *)av_22].sv_flags, D.18408
	andl	$32768, %eax	#, D.18408
	testl	%eax, %eax	# D.18408
	je	.L1132	#,
	movq	-40(%rbp), %rax	# av, tmp157
	movq	%rax, %rdi	# tmp157,
	call	Perl_mg_size	#
	cltq
	jmp	.L1133	#
.L1132:
	.loc 1 3019 0 discriminator 2
	movq	-40(%rbp), %rax	# av, tmp158
	movq	(%rax), %rax	# av_22->sv_any, D.18412
	movq	8(%rax), %rax	# _43->xav_fill, iftmp.1237
.L1133:
	.loc 1 3019 0 discriminator 3
	cmpq	-64(%rbp), %rax	# elem, iftmp.1237
	jge	.L1131	#,
	movl	$1, %eax	#, iftmp.1235
	jmp	.L1134	#
.L1131:
	.loc 1 3019 0 discriminator 2
	movl	$0, %eax	#, iftmp.1235
.L1134:
	.loc 1 3019 0 discriminator 4
	movl	%eax, -68(%rbp)	# iftmp.1235, defer
	.loc 1 3022 0 is_stmt 1 discriminator 4
	movq	-48(%rbp), %rax	# elemsv, tmp159
	movl	12(%rax), %eax	# elemsv_13->sv_flags, D.18408
	andl	$524288, %eax	#, D.18408
	testl	%eax, %eax	# D.18408
	je	.L1135	#,
	.loc 1 3022 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# elemsv, tmp160
	movl	12(%rax), %eax	# elemsv_13->sv_flags, D.18408
	andl	$268443648, %eax	#, D.18408
	testl	%eax, %eax	# D.18408
	jne	.L1135	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1238
	movq	80(%rax), %rax	# PL_curcop.1238_52->cop_warnings, D.18413
	testq	%rax, %rax	# D.18413
	je	.L1136	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1239
	movq	80(%rax), %rax	# PL_curcop.1239_54->cop_warnings, D.18413
	cmpq	$32, %rax	#, D.18413
	je	.L1136	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1240
	movq	80(%rax), %rax	# PL_curcop.1240_56->cop_warnings, D.18413
	cmpq	$16, %rax	#, D.18413
	je	.L1137	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1241
	movq	80(%rax), %rax	# PL_curcop.1241_58->cop_warnings, D.18413
	movq	(%rax), %rax	# _59->sv_any, D.18409
	movq	(%rax), %rax	# MEM[(struct XPV *)_60].xpv_pv, D.18414
	addq	$3, %rax	#, D.18414
	movzbl	(%rax), %eax	# *_62, D.18415
	movsbl	%al, %eax	# D.18415, D.18411
	andl	$1, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	jne	.L1137	#,
.L1136:
	.loc 1 3022 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1242
	movq	80(%rax), %rax	# PL_curcop.1242_66->cop_warnings, D.18413
	testq	%rax, %rax	# D.18413
	jne	.L1135	#,
	.loc 1 3022 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.1243
	movzbl	%al, %eax	# PL_dowarn.1243, D.18411
	andl	$1, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	je	.L1135	#,
.L1137:
	.loc 1 3023 0 is_stmt 1
	movq	-48(%rbp), %rax	# elemsv, tmp161
	movq	%rax, %rdx	# tmp161,
	movl	$.LC51, %esi	#,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L1135:
	.loc 1 3024 0
	cmpq	$0, -64(%rbp)	#, elem
	jle	.L1138	#,
	.loc 1 3025 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1244
	movl	68(%rax), %eax	# PL_curcop.1244_71->cop_arybase, D.18411
	cltq
	subq	%rax, -64(%rbp)	# D.18416, elem
.L1138:
	.loc 1 3026 0
	movq	-40(%rbp), %rax	# av, tmp162
	movl	12(%rax), %eax	# av_22->sv_flags, D.18408
	movzbl	%al, %eax	# D.18408, D.18408
	cmpl	$10, %eax	#, D.18408
	je	.L1139	#,
	.loc 1 3027 0
	addq	$8, %rbx	#, sp
	movq	$PL_sv_undef, (%rbx)	#, *sp_77
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1245
	movq	(%rax), %rax	# PL_op.1245_78->op_next, D.18407
	jmp	.L1140	#
.L1139:
	.loc 1 3028 0
	cmpl	$0, -72(%rbp)	#, lval
	je	.L1141	#,
	.loc 1 3028 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, defer
	jne	.L1141	#,
	.loc 1 3028 0 discriminator 3
	movl	$1, %eax	#, iftmp.1246
	jmp	.L1142	#
.L1141:
	.loc 1 3028 0 discriminator 2
	movl	$0, %eax	#, iftmp.1246
.L1142:
	.loc 1 3028 0 discriminator 4
	movq	-64(%rbp), %rdx	# elem, tmp163
	movl	%edx, %esi	# tmp163, D.18411
	movq	-40(%rbp), %rcx	# av, tmp164
	movl	%eax, %edx	# iftmp.1246,
	movq	%rcx, %rdi	# tmp164,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp165, svp
	.loc 1 3029 0 is_stmt 1 discriminator 4
	cmpl	$0, -72(%rbp)	#, lval
	je	.L1143	#,
	.loc 1 3042 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L1144	#,
	.loc 1 3042 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# svp, tmp166
	movq	(%rax), %rax	# *svp_83, D.18413
	cmpq	$PL_sv_undef, %rax	#, D.18413
	jne	.L1145	#,
.L1144:
.LBB148:
	.loc 1 3044 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, defer
	jne	.L1146	#,
	.loc 1 3045 0
	movq	-64(%rbp), %rax	# elem, tmp167
	movq	%rax, %rsi	# tmp167,
	movl	$PL_no_aelem, %edi	#,
	movl	$0, %eax	#,
	call	Perl_die	#
	jmp	.L1140	#
.L1146:
	.loc 1 3046 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp168, lv
	.loc 1 3047 0
	movq	-24(%rbp), %rax	# lv, tmp169
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	Perl_sv_upgrade	#
	.loc 1 3048 0
	movq	-24(%rbp), %rax	# lv, tmp170
	movq	(%rax), %rax	# lv_99->sv_any, D.18409
	movb	$121, 80(%rax)	#, MEM[(struct XPVLV *)_100].xlv_type
	.loc 1 3049 0
	movq	-24(%rbp), %rax	# lv, tmp171
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$121, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp171,
	call	Perl_sv_magic	#
	.loc 1 3050 0
	movq	-40(%rbp), %rax	# av, tmp172
	movq	%rax, PL_Sv(%rip)	# tmp172, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1248
	testq	%rax, %rax	# PL_Sv.1248
	je	.L1148	#,
	.loc 1 3050 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1249
	movl	8(%rax), %edx	# PL_Sv.1249_102->sv_refcnt, D.18408
	addl	$1, %edx	#, D.18408
	movl	%edx, 8(%rax)	# D.18408, PL_Sv.1249_102->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.1249_102->sv_refcnt, D.18408
	testl	%eax, %eax	# D.18408
	je	.L1148	#,
	.loc 1 3050 0
	nop
.L1148:
	.loc 1 3050 0 discriminator 4
	movq	-24(%rbp), %rax	# lv, tmp173
	movq	(%rax), %rax	# lv_99->sv_any, D.18409
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.1250
	movq	%rdx, 72(%rax)	# PL_Sv.1250, MEM[(struct XPVLV *)_108].xlv_targ
	.loc 1 3051 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# lv, tmp174
	movq	(%rax), %rax	# lv_99->sv_any, D.18409
	movq	-64(%rbp), %rdx	# elem, elem.1251
	movq	%rdx, 56(%rax)	# elem.1251, MEM[(struct XPVLV *)_110].xlv_targoff
	.loc 1 3052 0 discriminator 4
	movq	-24(%rbp), %rax	# lv, tmp175
	movq	(%rax), %rax	# lv_99->sv_any, D.18409
	movq	$1, 64(%rax)	#, MEM[(struct XPVLV *)_112].xlv_targlen
	.loc 1 3053 0 discriminator 4
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# lv, tmp176
	movq	%rax, (%rbx)	# tmp176, *sp_113
	.loc 1 3054 0 discriminator 4
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1252
	movq	(%rax), %rax	# PL_op.1252_114->op_next, D.18407
	jmp	.L1140	#
.L1145:
.LBE148:
	.loc 1 3056 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1253
	movzbl	37(%rax), %eax	# PL_op.1253_85->op_private, D.18410
	testb	%al, %al	# D.18417
	jns	.L1149	#,
	.loc 1 3057 0
	movq	-64(%rbp), %rax	# elem, tmp177
	movl	%eax, %ecx	# tmp177, D.18411
	movq	-32(%rbp), %rdx	# svp, tmp178
	movq	-40(%rbp), %rax	# av, tmp179
	movl	%ecx, %esi	# D.18411,
	movq	%rax, %rdi	# tmp179,
	call	Perl_save_aelem	#
	jmp	.L1143	#
.L1149:
	.loc 1 3058 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1254
	movzbl	37(%rax), %eax	# PL_op.1254_89->op_private, D.18410
	movzbl	%al, %eax	# D.18410, D.18411
	andl	$96, %eax	#, D.18411
	testl	%eax, %eax	# D.18411
	je	.L1143	#,
	.loc 1 3059 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1255
	movzbl	37(%rax), %eax	# PL_op.1255_93->op_private, D.18410
	movzbl	%al, %eax	# D.18410, D.18408
	andl	$96, %eax	#, D.18408
	movl	%eax, %edx	# D.18408, D.18408
	movq	-32(%rbp), %rax	# svp, tmp180
	movq	(%rax), %rax	# *svp_83, D.18413
	movl	%edx, %esi	# D.18408,
	movq	%rax, %rdi	# D.18413,
	call	Perl_vivify_ref	#
.L1143:
	.loc 1 3061 0
	cmpq	$0, -32(%rbp)	#, svp
	je	.L1150	#,
	.loc 1 3061 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# svp, tmp181
	movq	(%rax), %rax	# *svp_83, iftmp.1256
	jmp	.L1151	#
.L1150:
	.loc 1 3061 0 discriminator 2
	movl	$PL_sv_undef, %eax	#, iftmp.1256
.L1151:
	.loc 1 3061 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.1256, sv
	.loc 1 3062 0 is_stmt 1 discriminator 3
	cmpl	$0, -72(%rbp)	#, lval
	jne	.L1152	#,
	.loc 1 3062 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp182
	movl	12(%rax), %eax	# sv_118->sv_flags, D.18408
	andl	$8192, %eax	#, D.18408
	testl	%eax, %eax	# D.18408
	je	.L1152	#,
	.loc 1 3063 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp183
	movq	%rax, %rdi	# tmp183,
	call	Perl_sv_mortalcopy	#
	movq	%rax, -56(%rbp)	# tmp184, sv
.L1152:
	.loc 1 3064 0
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# sv, tmp185
	movq	%rax, (%rbx)	# tmp185, *sp_122
	.loc 1 3065 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1257
	movq	(%rax), %rax	# PL_op.1257_123->op_next, D.18407
.L1140:
	.loc 1 3066 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_pp_aelem, .-Perl_pp_aelem
	.globl	Perl_vivify_ref
	.type	Perl_vivify_ref, @function
Perl_vivify_ref:
.LFB45:
	.loc 1 3070 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# sv, sv
	movl	%esi, -28(%rbp)	# to_what, to_what
	.loc 1 3071 0
	movq	-24(%rbp), %rax	# sv, tmp89
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	andl	$8192, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L1154	#,
	.loc 1 3072 0
	movq	-24(%rbp), %rax	# sv, tmp90
	movq	%rax, %rdi	# tmp90,
	call	Perl_mg_get	#
.L1154:
	.loc 1 3073 0
	movq	-24(%rbp), %rax	# sv, tmp91
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	andl	$118423552, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	jne	.L1153	#,
	.loc 1 3074 0
	movq	-24(%rbp), %rax	# sv, tmp92
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	andl	$8388608, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L1156	#,
	.loc 1 3075 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1156:
	.loc 1 3076 0
	movq	-24(%rbp), %rax	# sv, tmp93
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	movzbl	%al, %eax	# D.18419, D.18419
	cmpl	$2, %eax	#, D.18419
	ja	.L1157	#,
	.loc 1 3077 0
	movq	-24(%rbp), %rax	# sv, tmp94
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_upgrade	#
	jmp	.L1158	#
.L1157:
	.loc 1 3078 0
	movq	-24(%rbp), %rax	# sv, tmp95
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	movzbl	%al, %eax	# D.18419, D.18419
	cmpl	$3, %eax	#, D.18419
	jbe	.L1158	#,
	.loc 1 3079 0
	movq	-24(%rbp), %rax	# sv, tmp96
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	andl	$2097152, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L1160	#,
	.loc 1 3079 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp97
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.18420
	je	.L1160	#,
	.loc 1 3079 0
	nop
.L1160:
	.loc 1 3080 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp98
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.18421
	movq	(%rax), %rax	# MEM[(struct XPV *)_17].xpv_pv, D.18422
	movq	%rax, %rdi	# D.18422,
	call	Perl_safesysfree	#
	.loc 1 3081 0
	movq	-24(%rbp), %rax	# sv, tmp99
	movq	(%rax), %rdx	# sv_1(D)->sv_any, D.18421
	movq	-24(%rbp), %rax	# sv, tmp100
	movq	(%rax), %rax	# sv_1(D)->sv_any, D.18421
	movq	$0, 8(%rax)	#, MEM[(struct XPV *)_20].xpv_cur
	movq	8(%rax), %rax	# MEM[(struct XPV *)_20].xpv_cur, D.18423
	movq	%rax, 16(%rdx)	# D.18423, MEM[(struct XPV *)_19].xpv_len
.L1158:
	.loc 1 3083 0
	movl	-28(%rbp), %eax	# to_what, to_what
	cmpl	$64, %eax	#, to_what
	je	.L1162	#,
	cmpl	$96, %eax	#, to_what
	je	.L1163	#,
	cmpl	$32, %eax	#, to_what
	je	.L1164	#,
	jmp	.L1161	#
.L1163:
	.loc 1 3085 0
	movq	-24(%rbp), %rax	# sv, tmp102
	movq	(%rax), %rbx	# sv_1(D)->sv_any, D.18421
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, (%rbx)	# D.18424, MEM[(struct XRV *)_23].xrv_rv
	.loc 1 3086 0
	jmp	.L1161	#
.L1164:
	.loc 1 3088 0
	movq	-24(%rbp), %rax	# sv, tmp103
	movq	(%rax), %rbx	# sv_1(D)->sv_any, D.18421
	call	Perl_newAV	#
	movq	%rax, (%rbx)	# D.18425, MEM[(struct XRV *)_25].xrv_rv
	.loc 1 3089 0
	jmp	.L1161	#
.L1162:
	.loc 1 3091 0
	movq	-24(%rbp), %rax	# sv, tmp104
	movq	(%rax), %rbx	# sv_1(D)->sv_any, D.18421
	call	Perl_newHV	#
	movq	%rax, (%rbx)	# D.18426, MEM[(struct XRV *)_27].xrv_rv
	.loc 1 3092 0
	nop
.L1161:
	.loc 1 3094 0
	movq	-24(%rbp), %rax	# sv, tmp105
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	orl	$524288, %eax	#, D.18419
	movl	%eax, %edx	# D.18419, D.18419
	movq	-24(%rbp), %rax	# sv, tmp106
	movl	%edx, 12(%rax)	# D.18419, sv_1(D)->sv_flags
	.loc 1 3095 0
	movq	-24(%rbp), %rax	# sv, tmp107
	movl	12(%rax), %eax	# sv_1(D)->sv_flags, D.18419
	andl	$16384, %eax	#, D.18419
	testl	%eax, %eax	# D.18419
	je	.L1153	#,
	.loc 1 3095 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp108
	movq	%rax, %rdi	# tmp108,
	call	Perl_mg_set	#
.L1153:
	.loc 1 3097 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_vivify_ref, .-Perl_vivify_ref
	.globl	Perl_pp_method
	.type	Perl_pp_method, @function
Perl_pp_method:
.LFB46:
	.loc 1 3100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3101 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3102 0
	movq	(%rbx), %rax	# *sp_2, tmp70
	movq	%rax, -32(%rbp)	# tmp70, sv
	.loc 1 3104 0
	movq	-32(%rbp), %rax	# sv, tmp71
	movl	12(%rax), %eax	# sv_3->sv_flags, D.18428
	andl	$524288, %eax	#, D.18428
	testl	%eax, %eax	# D.18428
	je	.L1166	#,
.LBB149:
	.loc 1 3105 0
	movq	-32(%rbp), %rax	# sv, tmp72
	movq	(%rax), %rax	# sv_3->sv_any, D.18429
	movq	(%rax), %rax	# MEM[(struct XRV *)_6].xrv_rv, tmp73
	movq	%rax, -24(%rbp)	# tmp73, rsv
	.loc 1 3106 0
	movq	-24(%rbp), %rax	# rsv, tmp74
	movl	12(%rax), %eax	# rsv_7->sv_flags, D.18428
	movzbl	%al, %eax	# D.18428, D.18428
	cmpl	$12, %eax	#, D.18428
	jne	.L1166	#,
	.loc 1 3107 0
	movq	-24(%rbp), %rax	# rsv, tmp75
	movq	%rax, (%rbx)	# tmp75, *sp_2
	.loc 1 3108 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1259
	movq	(%rax), %rax	# PL_op.1259_10->op_next, D.18427
	jmp	.L1167	#
.L1166:
.LBE149:
	.loc 1 3112 0
	movq	-32(%rbp), %rax	# sv, tmp76
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	S_method_common	#
	movq	%rax, (%rbx)	# D.18430, *sp_2
	.loc 1 3113 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1260
	movq	(%rax), %rax	# PL_op.1260_13->op_next, D.18427
.L1167:
	.loc 1 3114 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_pp_method, .-Perl_pp_method
	.globl	Perl_pp_method_named
	.type	Perl_pp_method_named, @function
Perl_pp_method_named:
.LFB47:
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
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 3119 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1261
	movq	40(%rax), %rax	# MEM[(struct SVOP *)PL_op.1261_3].op_sv, tmp73
	movq	%rax, -24(%rbp)	# tmp73, sv
	.loc 1 3120 0
	movq	-24(%rbp), %rax	# sv, tmp74
	movq	(%rax), %rax	# sv_4->sv_any, D.18431
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_5].xuv_uv, D.18432
	movl	%eax, -28(%rbp)	# hash.1262, hash
.LBB150:
	.loc 1 3122 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.1263
	movq	%rax, %rdx	# PL_stack_max.1263, PL_stack_max.1264
	movq	%rbx, %rax	# sp, sp.1265
	subq	%rax, %rdx	# sp.1265, D.18433
	movq	%rdx, %rax	# D.18433, D.18433
	cmpq	$7, %rax	#, D.18433
	jg	.L1169	#,
	.loc 1 3122 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1169:
	.loc 1 3122 0 discriminator 2
	addq	$8, %rbx	#, sp
	leaq	-28(%rbp), %rdx	#, tmp75
	movq	-24(%rbp), %rax	# sv, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	S_method_common	#
	movq	%rax, (%rbx)	# D.18434, *sp_13
.LBE150:
	.loc 1 3123 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1266
	movq	(%rax), %rax	# PL_op.1266_16->op_next, D.18435
	.loc 1 3124 0 discriminator 2
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_pp_method_named, .-Perl_pp_method_named
	.section	.rodata
	.align 8
.LC52:
	.string	"Can't call method \"%s\" on an undefined value"
	.align 8
.LC53:
	.string	"without a package or object reference"
.LC54:
	.string	"on an undefined value"
.LC55:
	.string	"Can't call method \"%s\" %s"
	.align 8
.LC56:
	.string	"Can't call method \"%s\" on unblessed reference"
.LC57:
	.string	"SUPER"
	.align 8
.LC58:
	.string	"Can't use anonymous symbol table for method lookup"
	.align 8
.LC59:
	.string	"Can't locate object method \"%s\" via package \"%.*s\""
	.align 8
.LC60:
	.string	"Can't locate object method \"%s\" via package \"%.*s\" (perhaps you forgot to load \"%.*s\"?)"
	.text
	.type	S_method_common, @function
S_method_common:
.LFB48:
	.loc 1 3128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# meth, meth
	movq	%rsi, -160(%rbp)	# hashp, hashp
	.loc 1 3135 0
	movq	$0, -112(%rbp)	#, packname
	.loc 1 3136 0
	movq	$0, -104(%rbp)	#, packsv
	.loc 1 3139 0
	movq	-152(%rbp), %rax	# meth, tmp210
	movl	12(%rax), %eax	# meth_32(D)->sv_flags, D.18437
	andl	$262144, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1172	#,
	.loc 1 3139 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# meth, tmp211
	movq	(%rax), %rax	# meth_32(D)->sv_any, D.18438
	movq	8(%rax), %rax	# MEM[(struct XPV *)_35].xpv_cur, namelen.1268
	movq	%rax, -144(%rbp)	# namelen.1268, namelen
	movq	-152(%rbp), %rax	# meth, tmp212
	movq	(%rax), %rax	# meth_32(D)->sv_any, D.18438
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, iftmp.1267
	jmp	.L1173	#
.L1172:
	.loc 1 3139 0 discriminator 2
	leaq	-144(%rbp), %rcx	#, tmp213
	movq	-152(%rbp), %rax	# meth, tmp214
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp213,
	movq	%rax, %rdi	# tmp214,
	call	Perl_sv_2pv_flags	#
.L1173:
	.loc 1 3139 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.1267, name
	.loc 1 3140 0 is_stmt 1 discriminator 3
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1269
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1270
	movl	(%rax), %eax	# *PL_markstack_ptr.1270_42, D.18439
	cltq
	addq	$1, %rax	#, D.18440
	salq	$3, %rax	#, D.18440
	addq	%rdx, %rax	# PL_stack_base.1269, D.18441
	movq	(%rax), %rax	# *_47, tmp215
	movq	%rax, -64(%rbp)	# tmp215, sv
	.loc 1 3142 0 discriminator 3
	cmpq	$0, -64(%rbp)	#, sv
	jne	.L1174	#,
	.loc 1 3143 0
	movq	-72(%rbp), %rax	# name, tmp216
	movq	%rax, %rsi	# tmp216,
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1174:
	.loc 1 3145 0
	movq	-64(%rbp), %rax	# sv, tmp217
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$8192, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1175	#,
	.loc 1 3146 0
	movq	-64(%rbp), %rax	# sv, tmp218
	movq	%rax, %rdi	# tmp218,
	call	Perl_mg_get	#
.L1175:
	.loc 1 3147 0
	movq	-64(%rbp), %rax	# sv, tmp219
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$524288, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1176	#,
	.loc 1 3148 0
	movq	-64(%rbp), %rax	# sv, tmp220
	movq	(%rax), %rax	# sv_48->sv_any, D.18438
	movq	(%rax), %rax	# MEM[(struct XRV *)_53].xrv_rv, tmp221
	movq	%rax, -128(%rbp)	# tmp221, ob
	jmp	.L1177	#
.L1176:
.LBB151:
	.loc 1 3153 0
	movq	$0, -112(%rbp)	#, packname
	.loc 1 3155 0
	movq	-64(%rbp), %rax	# sv, tmp222
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$118423552, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1178	#,
	.loc 1 3155 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp223
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$262144, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1179	#,
	movq	-64(%rbp), %rax	# sv, tmp224
	movq	(%rax), %rax	# sv_48->sv_any, D.18438
	movq	8(%rax), %rax	# MEM[(struct XPV *)_60].xpv_cur, packlen.1272
	movq	%rax, -136(%rbp)	# packlen.1272, packlen
	movq	-64(%rbp), %rax	# sv, tmp225
	movq	(%rax), %rax	# sv_48->sv_any, D.18438
	movq	(%rax), %rax	# MEM[(struct XPV *)_62].xpv_pv, iftmp.1271
	jmp	.L1180	#
.L1179:
	.loc 1 3155 0 discriminator 2
	leaq	-136(%rbp), %rcx	#, tmp226
	movq	-64(%rbp), %rax	# sv, tmp227
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_2pv_flags	#
.L1180:
	.loc 1 3155 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.1271, packname
	cmpq	$0, -112(%rbp)	#, packname
	je	.L1178	#,
.LBB152:
	.loc 1 3157 0 is_stmt 1
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.1273
	movq	-64(%rbp), %rsi	# sv, tmp228
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# PL_stashcache.1273,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -56(%rbp)	# tmp229, he
	.loc 1 3158 0
	cmpq	$0, -56(%rbp)	#, he
	je	.L1178	#,
	.loc 1 3159 0
	movq	-56(%rbp), %rax	# he, tmp230
	movq	16(%rax), %rax	# he_67->hent_val, D.18436
	movl	12(%rax), %eax	# _68->sv_flags, D.18437
	andl	$65536, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1181	#,
	.loc 1 3159 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# he, tmp231
	movq	16(%rax), %rax	# he_67->hent_val, D.18436
	movq	(%rax), %rax	# _71->sv_any, D.18438
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_72].xiv_iv, iftmp.1274
	jmp	.L1182	#
.L1181:
	.loc 1 3159 0 discriminator 2
	movq	-56(%rbp), %rax	# he, tmp232
	movq	16(%rax), %rax	# he_67->hent_val, D.18436
	movq	%rax, %rdi	# D.18436,
	call	Perl_sv_2iv	#
.L1182:
	.loc 1 3159 0 discriminator 3
	movq	%rax, -120(%rbp)	# iftmp.1274, stash
	.loc 1 3160 0 is_stmt 1 discriminator 3
	jmp	.L1183	#
.L1178:
.LBE152:
	.loc 1 3164 0
	movq	-64(%rbp), %rax	# sv, tmp233
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$118423552, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1184	#,
	.loc 1 3164 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, packname
	je	.L1184	#,
	.loc 1 3165 0 is_stmt 1
	movq	-112(%rbp), %rax	# packname, tmp234
	movl	$15, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	Perl_gv_fetchpv	#
	movq	%rax, -48(%rbp)	# tmp235, iogv
	cmpq	$0, -48(%rbp)	#, iogv
	je	.L1184	#,
	.loc 1 3167 0
	cmpq	$0, -48(%rbp)	#, iogv
	je	.L1185	#,
	.loc 1 3167 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# iogv, tmp236
	movl	12(%rax), %eax	# MEM[(struct SV *)iogv_79].sv_flags, D.18437
	movzbl	%al, %eax	# D.18437, D.18437
	cmpl	$13, %eax	#, D.18437
	jne	.L1185	#,
	movq	-48(%rbp), %rax	# iogv, tmp237
	movq	(%rax), %rax	# iogv_79->sv_any, D.18442
	movq	56(%rax), %rax	# _82->xgv_gp, D.18443
	testq	%rax, %rax	# D.18443
	je	.L1185	#,
	movq	-48(%rbp), %rax	# iogv, tmp238
	movq	(%rax), %rax	# iogv_79->sv_any, D.18442
	movq	56(%rax), %rax	# _84->xgv_gp, D.18443
	movq	16(%rax), %rax	# _85->gp_io, iftmp.1275
	jmp	.L1186	#
.L1185:
	.loc 1 3167 0 discriminator 2
	movl	$0, %eax	#, iftmp.1275
.L1186:
	.loc 1 3167 0 discriminator 3
	movq	%rax, -128(%rbp)	# iftmp.1275, ob
	.loc 1 3166 0 is_stmt 1 discriminator 3
	cmpq	$0, -128(%rbp)	#, ob
	jne	.L1187	#,
.L1184:
	.loc 1 3170 0
	cmpq	$0, -112(%rbp)	#, packname
	je	.L1188	#,
	.loc 1 3171 0 discriminator 1
	movq	-112(%rbp), %rax	# packname, tmp239
	movzbl	(%rax), %eax	# *packname_5, D.18444
	.loc 1 3170 0 discriminator 1
	cmpb	$-65, %al	#, D.18445
	jbe	.L1189	#,
	.loc 1 3171 0
	movq	-112(%rbp), %rax	# packname, tmp240
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$-3, %al	#, D.18445
	ja	.L1189	#,
	.loc 1 3171 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp241
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$536870912, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	je	.L1189	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1276
	movzbl	37(%rax), %eax	# PL_curcop.1276_104->op_private, D.18445
	movzbl	%al, %eax	# D.18445, D.18439
	andl	$8, %eax	#, D.18439
	testl	%eax, %eax	# D.18439
	jne	.L1189	#,
	.loc 1 3172 0 is_stmt 1
	movq	-112(%rbp), %rax	# packname, tmp242
	movq	%rax, %rdi	# tmp242,
	call	Perl_is_utf8_idcont	#
	testb	%al, %al	# D.18444
	je	.L1190	#,
	.loc 1 3172 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# packname, tmp243
	movq	%rax, %rdi	# tmp243,
	call	Perl_is_utf8_digit	#
	testb	%al, %al	# D.18444
	je	.L1191	#,
.L1190:
	.loc 1 3172 0 discriminator 1
	movl	$1, %eax	#, iftmp.1277
	jmp	.L1192	#
.L1191:
	.loc 1 3172 0 discriminator 3
	movl	$0, %eax	#, iftmp.1277
.L1192:
	.loc 1 3170 0 is_stmt 1
	andl	$1, %eax	#, D.18446
	testb	%al, %al	# D.18446
	jne	.L1188	#,
	jmp	.L1193	#
.L1189:
	.loc 1 3173 0
	movq	-112(%rbp), %rax	# packname, tmp244
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$64, %al	#, D.18444
	jle	.L1194	#,
	.loc 1 3173 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# packname, tmp245
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$90, %al	#, D.18444
	jle	.L1195	#,
.L1194:
	.loc 1 3173 0 discriminator 1
	movq	-112(%rbp), %rax	# packname, tmp246
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$96, %al	#, D.18444
	jle	.L1196	#,
	.loc 1 3173 0 discriminator 2
	movq	-112(%rbp), %rax	# packname, tmp247
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$122, %al	#, D.18444
	jle	.L1195	#,
.L1196:
	.loc 1 3173 0 discriminator 1
	movq	-112(%rbp), %rax	# packname, tmp248
	movzbl	(%rax), %eax	# *packname_5, D.18444
	cmpb	$95, %al	#, D.18444
	je	.L1195	#,
	.loc 1 3173 0 discriminator 3
	movl	$1, %eax	#, iftmp.1278
	jmp	.L1197	#
.L1195:
	.loc 1 3173 0 discriminator 1
	movl	$0, %eax	#, iftmp.1278
.L1197:
	.loc 1 3170 0 is_stmt 1
	andl	$1, %eax	#, D.18446
	testb	%al, %al	# D.18446
	je	.L1193	#,
.L1188:
	.loc 1 3177 0
	movq	-64(%rbp), %rax	# sv, tmp249
	movl	12(%rax), %eax	# sv_48->sv_flags, D.18437
	andl	$118423552, %eax	#, D.18437
	.loc 1 3176 0
	testl	%eax, %eax	# D.18437
	je	.L1198	#,
	.loc 1 3176 0 is_stmt 0 discriminator 1
	movl	$.LC53, %eax	#, iftmp.1279
	jmp	.L1199	#
.L1198:
	.loc 1 3176 0 discriminator 2
	movl	$.LC54, %eax	#, iftmp.1279
.L1199:
	.loc 1 3176 0 discriminator 3
	movq	-72(%rbp), %rcx	# name, tmp250
	movq	%rax, %rdx	# iftmp.1279,
	movq	%rcx, %rsi	# tmp250,
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1193:
	.loc 1 3181 0 is_stmt 1
	movq	-136(%rbp), %rax	# packlen, packlen.1280
	movl	%eax, %ecx	# packlen.1280, D.18437
	movq	-112(%rbp), %rax	# packname, tmp251
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18437,
	movq	%rax, %rdi	# tmp251,
	call	Perl_gv_stashpvn	#
	movq	%rax, -120(%rbp)	# tmp252, stash
	.loc 1 3182 0
	cmpq	$0, -120(%rbp)	#, stash
	jne	.L1200	#,
	.loc 1 3183 0
	movq	-64(%rbp), %rax	# sv, tmp253
	movq	%rax, -104(%rbp)	# tmp253, packsv
	.loc 1 3188 0
	jmp	.L1183	#
.L1200:
.LBB153:
	.loc 1 3185 0
	movq	-120(%rbp), %rax	# stash, stash.1281
	movq	%rax, %rdi	# stash.1281,
	call	Perl_newSViv	#
	movq	%rax, -40(%rbp)	# tmp254, Perl_ref
	.loc 1 3186 0
	movq	-136(%rbp), %rax	# packlen, packlen.1282
	movl	%eax, %edx	# packlen.1282, D.18439
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.1283
	movq	-40(%rbp), %rcx	# Perl_ref, tmp255
	movq	-112(%rbp), %rsi	# packname, tmp256
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# PL_stashcache.1283,
	call	Perl_hv_store	#
.LBE153:
	.loc 1 3188 0
	jmp	.L1183	#
.L1187:
	.loc 1 3191 0
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.1284
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1285
	movl	(%rax), %eax	# *PL_markstack_ptr.1285_90, D.18439
	cltq
	addq	$1, %rax	#, D.18440
	salq	$3, %rax	#, D.18440
	leaq	(%rdx,%rax), %rbx	#, D.18441
	movq	-48(%rbp), %rax	# iogv, tmp257
	movq	%rax, %rdi	# tmp257,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.18436,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.18436, *_95
.L1177:
.LBE151:
	.loc 1 3195 0
	cmpq	$0, -128(%rbp)	#, ob
	je	.L1202	#,
	.loc 1 3195 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# ob, tmp258
	movl	12(%rax), %eax	# ob_1->sv_flags, D.18437
	andl	$4096, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	jne	.L1203	#,
	.loc 1 3196 0 is_stmt 1 discriminator 1
	movq	-128(%rbp), %rax	# ob, tmp259
	movl	12(%rax), %eax	# ob_1->sv_flags, D.18437
	movzbl	%al, %eax	# D.18437, D.18437
	.loc 1 3195 0 discriminator 1
	cmpl	$13, %eax	#, D.18437
	jne	.L1202	#,
	.loc 1 3196 0
	cmpq	$0, -128(%rbp)	#, ob
	je	.L1204	#,
	.loc 1 3196 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# ob, tmp260
	movl	12(%rax), %eax	# ob_1->sv_flags, D.18437
	movzbl	%al, %eax	# D.18437, D.18437
	cmpl	$13, %eax	#, D.18437
	jne	.L1204	#,
	movq	-128(%rbp), %rax	# ob, tmp261
	movq	(%rax), %rax	# MEM[(struct GV *)ob_1].sv_any, D.18442
	movq	56(%rax), %rax	# _140->xgv_gp, D.18443
	testq	%rax, %rax	# D.18443
	je	.L1204	#,
	movq	-128(%rbp), %rax	# ob, tmp262
	movq	(%rax), %rax	# MEM[(struct GV *)ob_1].sv_any, D.18442
	movq	56(%rax), %rax	# _142->xgv_gp, D.18443
	movq	16(%rax), %rax	# _143->gp_io, iftmp.1286
	jmp	.L1205	#
.L1204:
	.loc 1 3196 0 discriminator 2
	movl	$0, %eax	#, iftmp.1286
.L1205:
	.loc 1 3196 0 discriminator 3
	movq	%rax, -128(%rbp)	# iftmp.1286, ob
	cmpq	$0, -128(%rbp)	#, ob
	je	.L1202	#,
	.loc 1 3197 0 is_stmt 1
	movq	-128(%rbp), %rax	# ob, tmp263
	movl	12(%rax), %eax	# ob_146->sv_flags, D.18437
	andl	$4096, %eax	#, D.18437
	testl	%eax, %eax	# D.18437
	jne	.L1203	#,
.L1202:
	.loc 1 3199 0
	movq	-72(%rbp), %rax	# name, tmp264
	movq	%rax, %rsi	# tmp264,
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1203:
	.loc 1 3203 0
	movq	-128(%rbp), %rax	# ob, tmp265
	movq	(%rax), %rax	# ob_3->sv_any, D.18438
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_149].xmg_stash, tmp266
	movq	%rax, -120(%rbp)	# tmp266, stash
.L1183:
	.loc 1 3210 0
	cmpq	$0, -160(%rbp)	#, hashp
	je	.L1206	#,
.LBB154:
	.loc 1 3211 0
	movq	-160(%rbp), %rax	# hashp, tmp267
	movl	(%rax), %edx	# *hashp_151(D), D.18437
	movq	-152(%rbp), %rsi	# meth, tmp268
	movq	-120(%rbp), %rax	# stash, tmp269
	movl	%edx, %ecx	# D.18437,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp269,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -32(%rbp)	# tmp270, he
	.loc 1 3212 0
	cmpq	$0, -32(%rbp)	#, he
	je	.L1206	#,
	.loc 1 3213 0
	movq	-32(%rbp), %rax	# he, tmp271
	movq	16(%rax), %rax	# he_153->hent_val, tmp272
	movq	%rax, -24(%rbp)	# tmp272, gv
	.loc 1 3214 0
	movq	-24(%rbp), %rax	# gv, tmp273
	movl	12(%rax), %eax	# gv_154->sv_flags, D.18437
	movzbl	%al, %eax	# D.18437, D.18437
	cmpl	$13, %eax	#, D.18437
	jne	.L1206	#,
	.loc 1 3214 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp274
	movq	(%rax), %rax	# gv_154->sv_any, D.18442
	movq	56(%rax), %rax	# _157->xgv_gp, D.18443
	movq	56(%rax), %rax	# _158->gp_cv, D.18447
	testq	%rax, %rax	# D.18447
	je	.L1206	#,
	.loc 1 3215 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp275
	movq	(%rax), %rax	# gv_154->sv_any, D.18442
	movq	56(%rax), %rax	# _160->xgv_gp, D.18443
	movl	64(%rax), %eax	# _161->gp_cvgen, D.18437
	.loc 1 3214 0 discriminator 1
	testl	%eax, %eax	# D.18437
	je	.L1207	#,
	.loc 1 3215 0
	movq	-24(%rbp), %rax	# gv, tmp276
	movq	(%rax), %rax	# gv_154->sv_any, D.18442
	movq	56(%rax), %rax	# _163->xgv_gp, D.18443
	movl	64(%rax), %edx	# _164->gp_cvgen, D.18437
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.1287
	cmpl	%eax, %edx	# PL_sub_generation.1287, D.18437
	jne	.L1206	#,
.L1207:
	.loc 1 3216 0
	movq	-24(%rbp), %rax	# gv, tmp277
	movq	(%rax), %rax	# gv_154->sv_any, D.18442
	movq	56(%rax), %rax	# _167->xgv_gp, D.18443
	movq	56(%rax), %rax	# _168->gp_cv, D.18436
	jmp	.L1230	#
.L1206:
.LBE154:
	.loc 1 3220 0
	cmpq	$0, -120(%rbp)	#, stash
	je	.L1209	#,
	.loc 1 3220 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# stash, iftmp.1288
	jmp	.L1210	#
.L1209:
	.loc 1 3220 0 discriminator 2
	movq	-104(%rbp), %rax	# packsv, iftmp.1288
.L1210:
	.loc 1 3220 0 discriminator 3
	movq	-72(%rbp), %rdx	# name, tmp278
	movq	%rdx, %rsi	# tmp278,
	movq	%rax, %rdi	# iftmp.1288,
	call	Perl_gv_fetchmethod	#
	movq	%rax, -24(%rbp)	# tmp279, gv
	.loc 1 3222 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, gv
	jne	.L1211	#,
.LBB155:
	.loc 1 3230 0
	movq	-72(%rbp), %rax	# name, tmp280
	movq	%rax, -96(%rbp)	# tmp280, leaf
	.loc 1 3231 0
	movq	$0, -88(%rbp)	#, sep
	.loc 1 3234 0
	movq	-72(%rbp), %rax	# name, tmp281
	movq	%rax, -80(%rbp)	# tmp281, p
	jmp	.L1212	#
.L1215:
	.loc 1 3235 0
	movq	-80(%rbp), %rax	# p, tmp282
	movzbl	(%rax), %eax	# *p_15, D.18444
	cmpb	$39, %al	#, D.18444
	jne	.L1213	#,
	.loc 1 3236 0
	movq	-80(%rbp), %rax	# p, tmp283
	movq	%rax, -88(%rbp)	# tmp283, sep
	movq	-80(%rbp), %rax	# p, tmp287
	addq	$1, %rax	#, tmp286
	movq	%rax, -96(%rbp)	# tmp286, leaf
	jmp	.L1214	#
.L1213:
	.loc 1 3237 0
	movq	-80(%rbp), %rax	# p, tmp288
	movzbl	(%rax), %eax	# *p_15, D.18444
	cmpb	$58, %al	#, D.18444
	jne	.L1214	#,
	.loc 1 3237 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# p, tmp289
	addq	$1, %rax	#, D.18448
	movzbl	(%rax), %eax	# *_181, D.18444
	cmpb	$58, %al	#, D.18444
	jne	.L1214	#,
	.loc 1 3238 0 is_stmt 1
	movq	-80(%rbp), %rax	# p, tmp290
	movq	%rax, -88(%rbp)	# tmp290, sep
	movq	-80(%rbp), %rax	# p, tmp294
	addq	$2, %rax	#, tmp293
	movq	%rax, -96(%rbp)	# tmp293, leaf
.L1214:
	.loc 1 3234 0
	addq	$1, -80(%rbp)	#, p
.L1212:
	.loc 1 3234 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# p, tmp295
	movzbl	(%rax), %eax	# *p_15, D.18444
	testb	%al, %al	# D.18444
	jne	.L1215	#,
	.loc 1 3240 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, sep
	je	.L1216	#,
	.loc 1 3240 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# sep, sep.1289
	movq	-72(%rbp), %rax	# name, name.1290
	subq	%rax, %rdx	# name.1290, D.18449
	movq	%rdx, %rax	# D.18449, D.18449
	cmpq	$5, %rax	#, D.18449
	jne	.L1217	#,
	movq	-72(%rbp), %rax	# name, tmp296
	movl	$5, %edx	#,
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp296,
	call	strncmp	#
	testl	%eax, %eax	# D.18439
	jne	.L1217	#,
.L1216:
	.loc 1 3242 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, sep
	je	.L1218	#,
	.loc 1 3242 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1293
	movq	48(%rax), %rax	# PL_curcop.1293_195->cop_stash, D.18450
	testq	%rax, %rax	# D.18450
	je	.L1219	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1294
	movq	48(%rax), %rax	# PL_curcop.1294_197->cop_stash, D.18450
	movq	(%rax), %rax	# _198->sv_any, D.18451
	movq	80(%rax), %rax	# _199->xhv_name, iftmp.1292
	jmp	.L1221	#
.L1219:
	.loc 1 3242 0 discriminator 2
	movl	$0, %eax	#, iftmp.1292
	jmp	.L1221	#
.L1218:
	.loc 1 3243 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, stash
	je	.L1222	#,
	.loc 1 3243 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# stash, tmp297
	movq	(%rax), %rax	# stash_4->sv_any, D.18451
	movq	80(%rax), %rax	# _203->xhv_name, iftmp.1295
	jmp	.L1221	#
.L1222:
	.loc 1 3243 0 discriminator 2
	movq	-112(%rbp), %rax	# packname, iftmp.1295
.L1221:
	.loc 1 3242 0 is_stmt 1 discriminator 2
	movq	%rax, -112(%rbp)	# iftmp.1291, packname
	.loc 1 3244 0 discriminator 2
	cmpq	$0, -112(%rbp)	#, packname
	jne	.L1224	#,
	.loc 1 3245 0
	movl	$.LC58, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 3244 0
	jmp	.L1226	#
.L1224:
	.loc 1 3248 0
	movq	-112(%rbp), %rax	# packname, tmp298
	movq	%rax, %rdi	# tmp298,
	call	strlen	#
	movq	%rax, -136(%rbp)	# packlen.1296, packlen
	.loc 1 3244 0
	jmp	.L1226	#
.L1217:
	.loc 1 3252 0
	movq	-72(%rbp), %rax	# name, tmp299
	movq	%rax, -112(%rbp)	# tmp299, packname
	.loc 1 3253 0
	movq	-88(%rbp), %rdx	# sep, sep.1297
	movq	-72(%rbp), %rax	# name, name.1298
	subq	%rax, %rdx	# name.1298, D.18449
	movq	%rdx, %rax	# D.18449, D.18449
	movq	%rax, -136(%rbp)	# packlen.1299, packlen
.L1226:
	.loc 1 3257 0
	movq	-136(%rbp), %rax	# packlen, packlen.1300
	movl	%eax, %ecx	# packlen.1300, D.18437
	movq	-112(%rbp), %rax	# packname, tmp300
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18437,
	movq	%rax, %rdi	# tmp300,
	call	Perl_gv_stashpvn	#
	testq	%rax, %rax	# D.18450
	je	.L1227	#,
	.loc 1 3258 0
	movq	-136(%rbp), %rax	# packlen, packlen.1301
	movl	%eax, %edx	# packlen.1301, D.18439
	movq	-112(%rbp), %rcx	# packname, tmp301
	movq	-96(%rbp), %rax	# leaf, tmp302
	movq	%rax, %rsi	# tmp302,
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	jmp	.L1211	#
.L1227:
	.loc 1 3263 0
	movq	-136(%rbp), %rax	# packlen, packlen.1302
	movl	%eax, %esi	# packlen.1302, D.18439
	movq	-136(%rbp), %rax	# packlen, packlen.1303
	movl	%eax, %edx	# packlen.1303, D.18439
	movq	-112(%rbp), %rdi	# packname, tmp303
	movq	-112(%rbp), %rcx	# packname, tmp304
	movq	-96(%rbp), %rax	# leaf, tmp305
	movq	%rdi, %r9	# tmp303,
	movl	%esi, %r8d	# D.18439,
	movq	%rax, %rsi	# tmp305,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1211:
.LBE155:
	.loc 1 3269 0
	movq	-24(%rbp), %rax	# gv, tmp306
	movl	12(%rax), %eax	# gv_172->sv_flags, D.18437
	movzbl	%al, %eax	# D.18437, D.18437
	cmpl	$13, %eax	#, D.18437
	jne	.L1228	#,
	.loc 1 3269 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gv, tmp307
	movq	(%rax), %rax	# gv_172->sv_any, D.18442
	movq	56(%rax), %rax	# _220->xgv_gp, D.18443
	movq	56(%rax), %rax	# _221->gp_cv, iftmp.1304
	jmp	.L1229	#
.L1228:
	.loc 1 3269 0 discriminator 2
	movq	-24(%rbp), %rax	# gv, iftmp.1304
.L1229:
.L1230:
	.loc 1 3270 0 is_stmt 1
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	S_method_common, .-S_method_common
	.section	.rodata
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/stat.h"
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
	.file 19 "perlio.h"
	.file 20 "pad.h"
	.file 21 "intrpvar.h"
	.file 22 "thrdvar.h"
	.file 23 "perlvars.h"
	.file 24 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4a30
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF980
	.byte	0x1
	.long	.LASF981
	.long	.LASF982
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
	.byte	0x41
	.long	0x7b
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x50
	.long	0x70
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x6d
	.long	0xdc
	.uleb128 0x4
	.long	.LASF24
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x7
	.long	.LASF29
	.byte	0x10
	.byte	0x5
	.byte	0x78
	.long	0x150
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0x7a
	.long	0xb9
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
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
	.uleb128 0x6
	.byte	0x8
	.long	0x164
	.uleb128 0x9
	.long	0xf8
	.uleb128 0x7
	.long	.LASF30
	.byte	0x90
	.byte	0x6
	.byte	0x2e
	.long	0x22a
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.byte	0x4e
	.long	0xc6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x50
	.long	0xd1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x5b
	.long	0x12b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x5c
	.long	0x12b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x5d
	.long	0x12b
	.byte	0x68
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x6a
	.long	0x22a
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0xe7
	.long	0x23a
	.uleb128 0xb
	.long	0xb2
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"DIR"
	.byte	0x7
	.byte	0x80
	.long	0x245
	.uleb128 0xd
	.long	.LASF250
	.uleb128 0xe
	.string	"IV"
	.byte	0x8
	.value	0x52b
	.long	0x5e
	.uleb128 0xe
	.string	"UV"
	.byte	0x8
	.value	0x52c
	.long	0x42
	.uleb128 0xe
	.string	"NV"
	.byte	0x8
	.value	0x5f3
	.long	0x26b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF46
	.uleb128 0xf
	.long	.LASF47
	.byte	0x8
	.value	0x7d3
	.long	0x120
	.uleb128 0xe
	.string	"OP"
	.byte	0x8
	.value	0x7d5
	.long	0x289
	.uleb128 0x10
	.string	"op"
	.byte	0x28
	.byte	0x9
	.byte	0xe2
	.long	0x2f5
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0xe3
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xe3
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xe3
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xe3
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xe3
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xe3
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xe3
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xe3
	.long	0x12fa
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"COP"
	.byte	0x8
	.value	0x7d6
	.long	0x301
	.uleb128 0x10
	.string	"cop"
	.byte	0x60
	.byte	0xa
	.byte	0x10
	.long	0x3ce
	.uleb128 0x8
	.long	.LASF48
	.byte	0xa
	.byte	0x11
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0xa
	.byte	0x11
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0xa
	.byte	0x11
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0xa
	.byte	0x11
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0xa
	.byte	0x11
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0xa
	.byte	0x11
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0xa
	.byte	0x11
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0xa
	.byte	0x11
	.long	0x12fa
	.byte	0x25
	.uleb128 0x8
	.long	.LASF56
	.byte	0xa
	.byte	0x12
	.long	0xf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF57
	.byte	0xa
	.byte	0x17
	.long	0x1485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF58
	.byte	0xa
	.byte	0x18
	.long	0x14ba
	.byte	0x38
	.uleb128 0x8
	.long	.LASF59
	.byte	0xa
	.byte	0x1a
	.long	0x131a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF60
	.byte	0xa
	.byte	0x1b
	.long	0x130f
	.byte	0x44
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa
	.byte	0x1c
	.long	0x1325
	.byte	0x48
	.uleb128 0x8
	.long	.LASF62
	.byte	0xa
	.byte	0x1d
	.long	0x1342
	.byte	0x50
	.uleb128 0x8
	.long	.LASF63
	.byte	0xa
	.byte	0x1e
	.long	0x1342
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x8
	.value	0x7d8
	.long	0x3da
	.uleb128 0x7
	.long	.LASF65
	.byte	0x38
	.byte	0x9
	.byte	0xeb
	.long	0x45f
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0xec
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xec
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xec
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xec
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xec
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xec
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xec
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xec
	.long	0x12fa
	.byte	0x25
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0xed
	.long	0x149d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0xee
	.long	0x149d
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0x8
	.value	0x7d9
	.long	0x46b
	.uleb128 0x7
	.long	.LASF69
	.byte	0x38
	.byte	0x9
	.byte	0xf7
	.long	0x4f0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0xf8
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xf8
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xf8
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xf8
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xf8
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xf8
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xf8
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xf8
	.long	0x12fa
	.byte	0x25
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0xf9
	.long	0x149d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0xfa
	.long	0x149d
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x7da
	.long	0x4fc
	.uleb128 0x7
	.long	.LASF71
	.byte	0x38
	.byte	0x9
	.byte	0xf1
	.long	0x581
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0xf2
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xf2
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xf2
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xf2
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xf2
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xf2
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xf2
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xf2
	.long	0x12fa
	.byte	0x25
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0xf3
	.long	0x149d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0xf4
	.long	0x149d
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x7db
	.long	0x58d
	.uleb128 0x7
	.long	.LASF74
	.byte	0x70
	.byte	0x9
	.byte	0xfd
	.long	0x67b
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0xfe
	.long	0x149d
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0xfe
	.long	0x149d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xfe
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xfe
	.long	0x1516
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xfe
	.long	0x1304
	.byte	0x20
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xfe
	.long	0x1304
	.byte	0x22
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xfe
	.long	0x12fa
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0xfe
	.long	0x12fa
	.byte	0x25
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0xff
	.long	0x149d
	.byte	0x28
	.uleb128 0x11
	.long	.LASF67
	.byte	0x9
	.value	0x100
	.long	0x149d
	.byte	0x30
	.uleb128 0x11
	.long	.LASF75
	.byte	0x9
	.value	0x101
	.long	0x149d
	.byte	0x38
	.uleb128 0x11
	.long	.LASF76
	.byte	0x9
	.value	0x102
	.long	0x149d
	.byte	0x40
	.uleb128 0x11
	.long	.LASF77
	.byte	0x9
	.value	0x103
	.long	0x1ea6
	.byte	0x48
	.uleb128 0x11
	.long	.LASF78
	.byte	0x9
	.value	0x107
	.long	0x1eac
	.byte	0x50
	.uleb128 0x11
	.long	.LASF79
	.byte	0x9
	.value	0x109
	.long	0x131a
	.byte	0x58
	.uleb128 0x11
	.long	.LASF80
	.byte	0x9
	.value	0x10a
	.long	0x131a
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF81
	.byte	0x9
	.value	0x10b
	.long	0x12fa
	.byte	0x60
	.uleb128 0x11
	.long	.LASF82
	.byte	0x9
	.value	0x10f
	.long	0x1485
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x7dc
	.long	0x687
	.uleb128 0x12
	.long	.LASF84
	.byte	0x30
	.byte	0x9
	.value	0x14c
	.long	0x70a
	.uleb128 0x11
	.long	.LASF48
	.byte	0x9
	.value	0x14d
	.long	0x149d
	.byte	0
	.uleb128 0x11
	.long	.LASF49
	.byte	0x9
	.value	0x14d
	.long	0x149d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF50
	.byte	0x9
	.value	0x14d
	.long	0x1ea0
	.byte	0x10
	.uleb128 0x11
	.long	.LASF51
	.byte	0x9
	.value	0x14d
	.long	0x1516
	.byte	0x18
	.uleb128 0x11
	.long	.LASF52
	.byte	0x9
	.value	0x14d
	.long	0x1304
	.byte	0x20
	.uleb128 0x11
	.long	.LASF53
	.byte	0x9
	.value	0x14d
	.long	0x1304
	.byte	0x22
	.uleb128 0x11
	.long	.LASF54
	.byte	0x9
	.value	0x14d
	.long	0x12fa
	.byte	0x24
	.uleb128 0x11
	.long	.LASF55
	.byte	0x9
	.value	0x14d
	.long	0x12fa
	.byte	0x25
	.uleb128 0x11
	.long	.LASF85
	.byte	0x9
	.value	0x14e
	.long	0x1342
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x7e1
	.long	0x716
	.uleb128 0x12
	.long	.LASF87
	.byte	0x1
	.byte	0x8
	.value	0xea7
	.long	0x731
	.uleb128 0x11
	.long	.LASF88
	.byte	0x8
	.value	0xea8
	.long	0xf8
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"SV"
	.byte	0x8
	.value	0x7ea
	.long	0x73c
	.uleb128 0x10
	.string	"sv"
	.byte	0x10
	.byte	0xb
	.byte	0x43
	.long	0x76c
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x44
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x45
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x46
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"AV"
	.byte	0x8
	.value	0x7eb
	.long	0x777
	.uleb128 0x10
	.string	"av"
	.byte	0x10
	.byte	0xb
	.byte	0x55
	.long	0x7a7
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x56
	.long	0x146d
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x57
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x58
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"HV"
	.byte	0x8
	.value	0x7ec
	.long	0x7b2
	.uleb128 0x10
	.string	"hv"
	.byte	0x10
	.byte	0xb
	.byte	0x5b
	.long	0x7e2
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x5c
	.long	0x1473
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x5d
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x5e
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"CV"
	.byte	0x8
	.value	0x7ed
	.long	0x7ed
	.uleb128 0x10
	.string	"cv"
	.byte	0x10
	.byte	0xb
	.byte	0x4f
	.long	0x81d
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x50
	.long	0x1467
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x51
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x52
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x7ee
	.long	0x829
	.uleb128 0x7
	.long	.LASF93
	.byte	0x68
	.byte	0xc
	.byte	0x1f
	.long	0x902
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x20
	.long	0x13b5
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x21
	.long	0x13b5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x22
	.long	0x13bb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x23
	.long	0x13c6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x24
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x25
	.long	0x13d1
	.byte	0x28
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x26
	.long	0xf2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x28
	.long	0x13d7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF102
	.byte	0xc
	.byte	0x29
	.long	0x130f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF103
	.byte	0xc
	.byte	0x2a
	.long	0x130f
	.byte	0x44
	.uleb128 0x8
	.long	.LASF104
	.byte	0xc
	.byte	0x2b
	.long	0x130f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF105
	.byte	0xc
	.byte	0x2c
	.long	0x130f
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF106
	.byte	0xc
	.byte	0x2d
	.long	0x131a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF107
	.byte	0xc
	.byte	0x2e
	.long	0x131a
	.byte	0x54
	.uleb128 0x8
	.long	.LASF108
	.byte	0xc
	.byte	0x2f
	.long	0x131a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF109
	.byte	0xc
	.byte	0x30
	.long	0x131a
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF110
	.byte	0xc
	.byte	0x32
	.long	0x13dd
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.string	"GP"
	.byte	0x8
	.value	0x7ef
	.long	0x90d
	.uleb128 0x10
	.string	"gp"
	.byte	0x58
	.byte	0xd
	.byte	0xb
	.long	0x9a9
	.uleb128 0x8
	.long	.LASF111
	.byte	0xd
	.byte	0xc
	.long	0x1342
	.byte	0
	.uleb128 0x8
	.long	.LASF112
	.byte	0xd
	.byte	0xd
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd
	.byte	0xe
	.long	0x14fa
	.byte	0x10
	.uleb128 0x8
	.long	.LASF114
	.byte	0xd
	.byte	0xf
	.long	0x14ae
	.byte	0x18
	.uleb128 0x8
	.long	.LASF115
	.byte	0xd
	.byte	0x10
	.long	0x14c0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF116
	.byte	0xd
	.byte	0x11
	.long	0x1485
	.byte	0x28
	.uleb128 0x8
	.long	.LASF117
	.byte	0xd
	.byte	0x12
	.long	0x14ba
	.byte	0x30
	.uleb128 0x8
	.long	.LASF118
	.byte	0xd
	.byte	0x13
	.long	0x14ae
	.byte	0x38
	.uleb128 0x8
	.long	.LASF119
	.byte	0xd
	.byte	0x14
	.long	0x131a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF120
	.byte	0xd
	.byte	0x15
	.long	0x131a
	.byte	0x44
	.uleb128 0x8
	.long	.LASF121
	.byte	0xd
	.byte	0x16
	.long	0x1325
	.byte	0x48
	.uleb128 0x8
	.long	.LASF122
	.byte	0xd
	.byte	0x17
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.string	"GV"
	.byte	0x8
	.value	0x7f0
	.long	0x9b4
	.uleb128 0x10
	.string	"gv"
	.byte	0x10
	.byte	0xb
	.byte	0x49
	.long	0x9e4
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x4a
	.long	0x1461
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x4b
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x4c
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"IO"
	.byte	0x8
	.value	0x7f1
	.long	0x9ef
	.uleb128 0x10
	.string	"io"
	.byte	0x10
	.byte	0xb
	.byte	0x61
	.long	0xa1f
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x62
	.long	0x1479
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x63
	.long	0x131a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0x64
	.long	0x131a
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.long	.LASF123
	.byte	0x8
	.value	0x7f2
	.long	0xa2b
	.uleb128 0x12
	.long	.LASF124
	.byte	0x90
	.byte	0xa
	.value	0x1a2
	.long	0xa53
	.uleb128 0x11
	.long	.LASF125
	.byte	0xa
	.value	0x1a3
	.long	0x131a
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0xa
	.value	0x1a7
	.long	0x2113
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF127
	.byte	0x88
	.byte	0xa
	.value	0x130
	.long	0xac9
	.uleb128 0x11
	.long	.LASF128
	.byte	0xa
	.value	0x131
	.long	0x130f
	.byte	0
	.uleb128 0x11
	.long	.LASF129
	.byte	0xa
	.value	0x132
	.long	0x2049
	.byte	0x8
	.uleb128 0x11
	.long	.LASF130
	.byte	0xa
	.value	0x133
	.long	0x130f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF131
	.byte	0xa
	.value	0x134
	.long	0x130f
	.byte	0x14
	.uleb128 0x11
	.long	.LASF132
	.byte	0xa
	.value	0x135
	.long	0x130f
	.byte	0x18
	.uleb128 0x11
	.long	.LASF133
	.byte	0xa
	.value	0x136
	.long	0x1ea6
	.byte	0x20
	.uleb128 0x11
	.long	.LASF134
	.byte	0xa
	.value	0x137
	.long	0x12fa
	.byte	0x28
	.uleb128 0x11
	.long	.LASF135
	.byte	0xa
	.value	0x13d
	.long	0x201b
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x7f5
	.long	0xad5
	.uleb128 0x7
	.long	.LASF137
	.byte	0x30
	.byte	0xe
	.byte	0x1a
	.long	0xb42
	.uleb128 0x8
	.long	.LASF138
	.byte	0xe
	.byte	0x1b
	.long	0x147f
	.byte	0
	.uleb128 0x8
	.long	.LASF139
	.byte	0xe
	.byte	0x1c
	.long	0x22c2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF140
	.byte	0xe
	.byte	0x1d
	.long	0x1304
	.byte	0x10
	.uleb128 0x8
	.long	.LASF141
	.byte	0xe
	.byte	0x1e
	.long	0xf8
	.byte	0x12
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x1f
	.long	0x12fa
	.byte	0x13
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x20
	.long	0x1342
	.byte	0x18
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x21
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x22
	.long	0x130f
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.string	"XRV"
	.byte	0x8
	.value	0x7f6
	.long	0xb4e
	.uleb128 0x10
	.string	"xrv"
	.byte	0x8
	.byte	0xb
	.byte	0xf5
	.long	0xb67
	.uleb128 0x8
	.long	.LASF146
	.byte	0xb
	.byte	0xf6
	.long	0x1342
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"XPV"
	.byte	0x8
	.value	0x7f7
	.long	0xb73
	.uleb128 0x10
	.string	"xpv"
	.byte	0x18
	.byte	0xb
	.byte	0xf9
	.long	0xba4
	.uleb128 0x8
	.long	.LASF147
	.byte	0xb
	.byte	0xfa
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF148
	.byte	0xb
	.byte	0xfb
	.long	0x272
	.byte	0x8
	.uleb128 0x8
	.long	.LASF149
	.byte	0xb
	.byte	0xfc
	.long	0x272
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.value	0x7f8
	.long	0xbb0
	.uleb128 0x7
	.long	.LASF151
	.byte	0x20
	.byte	0xb
	.byte	0xff
	.long	0xbf1
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x100
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x101
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x102
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x103
	.long	0x24a
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF153
	.byte	0x8
	.value	0x7f9
	.long	0xbfd
	.uleb128 0x12
	.long	.LASF154
	.byte	0x20
	.byte	0xb
	.value	0x106
	.long	0xc3f
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x107
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x108
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x109
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF155
	.byte	0xb
	.value	0x10a
	.long	0x255
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF156
	.byte	0x8
	.value	0x7fa
	.long	0xc4b
	.uleb128 0x12
	.long	.LASF157
	.byte	0x28
	.byte	0xb
	.value	0x10d
	.long	0xc9a
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x10e
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x10f
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x110
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x111
	.long	0x24a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x112
	.long	0x260
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF159
	.byte	0x8
	.value	0x7fb
	.long	0xca6
	.uleb128 0x12
	.long	.LASF160
	.byte	0x38
	.byte	0xb
	.value	0x116
	.long	0xd0f
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x117
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x118
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x119
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x11a
	.long	0x24a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x11b
	.long	0x260
	.byte	0x20
	.uleb128 0x11
	.long	.LASF161
	.byte	0xb
	.value	0x11c
	.long	0x147f
	.byte	0x28
	.uleb128 0x11
	.long	.LASF162
	.byte	0xb
	.value	0x11d
	.long	0x1485
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF163
	.byte	0x8
	.value	0x7fc
	.long	0xd1b
	.uleb128 0x12
	.long	.LASF164
	.byte	0x58
	.byte	0xb
	.value	0x120
	.long	0xdb8
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x121
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x122
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x123
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x124
	.long	0x24a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x125
	.long	0x260
	.byte	0x20
	.uleb128 0x11
	.long	.LASF161
	.byte	0xb
	.value	0x126
	.long	0x147f
	.byte	0x28
	.uleb128 0x11
	.long	.LASF162
	.byte	0xb
	.value	0x127
	.long	0x1485
	.byte	0x30
	.uleb128 0x11
	.long	.LASF165
	.byte	0xb
	.value	0x129
	.long	0x272
	.byte	0x38
	.uleb128 0x11
	.long	.LASF166
	.byte	0xb
	.value	0x12a
	.long	0x272
	.byte	0x40
	.uleb128 0x11
	.long	.LASF167
	.byte	0xb
	.value	0x12b
	.long	0x1342
	.byte	0x48
	.uleb128 0x11
	.long	.LASF168
	.byte	0xb
	.value	0x12c
	.long	0xf8
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF169
	.byte	0x8
	.value	0x7fd
	.long	0xdc4
	.uleb128 0x7
	.long	.LASF170
	.byte	0x50
	.byte	0xf
	.byte	0xb
	.long	0xe49
	.uleb128 0x8
	.long	.LASF171
	.byte	0xf
	.byte	0xc
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0xf
	.byte	0xd
	.long	0x115
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0xf
	.byte	0xe
	.long	0x115
	.byte	0x10
	.uleb128 0x8
	.long	.LASF174
	.byte	0xf
	.byte	0xf
	.long	0x24a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x10
	.long	0x260
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0xf
	.byte	0x11
	.long	0x147f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0xf
	.byte	0x12
	.long	0x1485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF175
	.byte	0xf
	.byte	0x14
	.long	0x2015
	.byte	0x38
	.uleb128 0x8
	.long	.LASF176
	.byte	0xf
	.byte	0x15
	.long	0x1342
	.byte	0x40
	.uleb128 0x8
	.long	.LASF177
	.byte	0xf
	.byte	0x16
	.long	0x12fa
	.byte	0x48
	.byte	0
	.uleb128 0xf
	.long	.LASF178
	.byte	0x8
	.value	0x7fe
	.long	0xe55
	.uleb128 0x7
	.long	.LASF179
	.byte	0x58
	.byte	0x10
	.byte	0x22
	.long	0xee6
	.uleb128 0x8
	.long	.LASF180
	.byte	0x10
	.byte	0x23
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF181
	.byte	0x10
	.byte	0x24
	.long	0x272
	.byte	0x8
	.uleb128 0x8
	.long	.LASF182
	.byte	0x10
	.byte	0x25
	.long	0x272
	.byte	0x10
	.uleb128 0x8
	.long	.LASF183
	.byte	0x10
	.byte	0x26
	.long	0x24a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x10
	.byte	0x27
	.long	0x260
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x29
	.long	0x147f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x2a
	.long	0x1485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF184
	.byte	0x10
	.byte	0x2c
	.long	0x130f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF185
	.byte	0x10
	.byte	0x2d
	.long	0x2239
	.byte	0x40
	.uleb128 0x8
	.long	.LASF186
	.byte	0x10
	.byte	0x2e
	.long	0x1ea6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF187
	.byte	0x10
	.byte	0x2f
	.long	0xf2
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	.LASF188
	.byte	0x8
	.value	0x7ff
	.long	0xef2
	.uleb128 0x12
	.long	.LASF189
	.byte	0x60
	.byte	0xb
	.value	0x130
	.long	0xf9c
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x131
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x132
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x133
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x134
	.long	0x24a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x135
	.long	0x260
	.byte	0x20
	.uleb128 0x11
	.long	.LASF161
	.byte	0xb
	.value	0x136
	.long	0x147f
	.byte	0x28
	.uleb128 0x11
	.long	.LASF162
	.byte	0xb
	.value	0x137
	.long	0x1485
	.byte	0x30
	.uleb128 0x11
	.long	.LASF190
	.byte	0xb
	.value	0x139
	.long	0x148b
	.byte	0x38
	.uleb128 0x11
	.long	.LASF191
	.byte	0xb
	.value	0x13a
	.long	0xf2
	.byte	0x40
	.uleb128 0x11
	.long	.LASF192
	.byte	0xb
	.value	0x13b
	.long	0x272
	.byte	0x48
	.uleb128 0x11
	.long	.LASF193
	.byte	0xb
	.value	0x13c
	.long	0x1485
	.byte	0x50
	.uleb128 0x11
	.long	.LASF194
	.byte	0xb
	.value	0x13d
	.long	0x12fa
	.byte	0x58
	.byte	0
	.uleb128 0xf
	.long	.LASF195
	.byte	0x8
	.value	0x800
	.long	0xfa8
	.uleb128 0x7
	.long	.LASF196
	.byte	0x90
	.byte	0x11
	.byte	0xe
	.long	0x1099
	.uleb128 0x8
	.long	.LASF147
	.byte	0x11
	.byte	0xf
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x11
	.byte	0x10
	.long	0x272
	.byte	0x8
	.uleb128 0x8
	.long	.LASF149
	.byte	0x11
	.byte	0x11
	.long	0x272
	.byte	0x10
	.uleb128 0x8
	.long	.LASF174
	.byte	0x11
	.byte	0x12
	.long	0x24a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x11
	.byte	0x13
	.long	0x260
	.byte	0x20
	.uleb128 0x8
	.long	.LASF161
	.byte	0x11
	.byte	0x14
	.long	0x147f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF162
	.byte	0x11
	.byte	0x15
	.long	0x1485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF197
	.byte	0x11
	.byte	0x17
	.long	0x1485
	.byte	0x38
	.uleb128 0x8
	.long	.LASF198
	.byte	0x11
	.byte	0x18
	.long	0x149d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF199
	.byte	0x11
	.byte	0x19
	.long	0x149d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF200
	.byte	0x11
	.byte	0x1a
	.long	0x14b4
	.byte	0x50
	.uleb128 0x8
	.long	.LASF201
	.byte	0x11
	.byte	0x1b
	.long	0x124b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF202
	.byte	0x11
	.byte	0x1c
	.long	0x14ba
	.byte	0x60
	.uleb128 0x8
	.long	.LASF203
	.byte	0x11
	.byte	0x1d
	.long	0xf2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF204
	.byte	0x11
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0x8
	.long	.LASF205
	.byte	0x11
	.byte	0x1f
	.long	0x1521
	.byte	0x78
	.uleb128 0x8
	.long	.LASF206
	.byte	0x11
	.byte	0x20
	.long	0x14ae
	.byte	0x80
	.uleb128 0x8
	.long	.LASF207
	.byte	0x11
	.byte	0x25
	.long	0x1491
	.byte	0x88
	.uleb128 0x8
	.long	.LASF208
	.byte	0x11
	.byte	0x26
	.long	0x131a
	.byte	0x8c
	.byte	0
	.uleb128 0xf
	.long	.LASF209
	.byte	0x8
	.value	0x803
	.long	0x10a5
	.uleb128 0x12
	.long	.LASF210
	.byte	0xa8
	.byte	0xb
	.value	0x170
	.long	0x11de
	.uleb128 0x11
	.long	.LASF147
	.byte	0xb
	.value	0x171
	.long	0xf2
	.byte	0
	.uleb128 0x11
	.long	.LASF148
	.byte	0xb
	.value	0x172
	.long	0x272
	.byte	0x8
	.uleb128 0x11
	.long	.LASF149
	.byte	0xb
	.value	0x173
	.long	0x272
	.byte	0x10
	.uleb128 0x11
	.long	.LASF152
	.byte	0xb
	.value	0x174
	.long	0x24a
	.byte	0x18
	.uleb128 0x11
	.long	.LASF158
	.byte	0xb
	.value	0x175
	.long	0x260
	.byte	0x20
	.uleb128 0x11
	.long	.LASF161
	.byte	0xb
	.value	0x176
	.long	0x147f
	.byte	0x28
	.uleb128 0x11
	.long	.LASF162
	.byte	0xb
	.value	0x177
	.long	0x1485
	.byte	0x30
	.uleb128 0x11
	.long	.LASF211
	.byte	0xb
	.value	0x179
	.long	0x14ee
	.byte	0x38
	.uleb128 0x11
	.long	.LASF212
	.byte	0xb
	.value	0x17a
	.long	0x14ee
	.byte	0x40
	.uleb128 0x11
	.long	.LASF213
	.byte	0xb
	.value	0x187
	.long	0x14c6
	.byte	0x48
	.uleb128 0x11
	.long	.LASF214
	.byte	0xb
	.value	0x188
	.long	0x24a
	.byte	0x50
	.uleb128 0x11
	.long	.LASF215
	.byte	0xb
	.value	0x189
	.long	0x24a
	.byte	0x58
	.uleb128 0x11
	.long	.LASF216
	.byte	0xb
	.value	0x18a
	.long	0x24a
	.byte	0x60
	.uleb128 0x11
	.long	.LASF217
	.byte	0xb
	.value	0x18b
	.long	0x24a
	.byte	0x68
	.uleb128 0x11
	.long	.LASF218
	.byte	0xb
	.value	0x18c
	.long	0xf2
	.byte	0x70
	.uleb128 0x11
	.long	.LASF219
	.byte	0xb
	.value	0x18d
	.long	0x14ba
	.byte	0x78
	.uleb128 0x11
	.long	.LASF220
	.byte	0xb
	.value	0x18e
	.long	0xf2
	.byte	0x80
	.uleb128 0x11
	.long	.LASF221
	.byte	0xb
	.value	0x18f
	.long	0x14ba
	.byte	0x88
	.uleb128 0x11
	.long	.LASF222
	.byte	0xb
	.value	0x190
	.long	0xf2
	.byte	0x90
	.uleb128 0x11
	.long	.LASF223
	.byte	0xb
	.value	0x191
	.long	0x14ba
	.byte	0x98
	.uleb128 0x11
	.long	.LASF224
	.byte	0xb
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF225
	.byte	0xb
	.value	0x193
	.long	0xf8
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF226
	.byte	0xb
	.value	0x194
	.long	0xf8
	.byte	0xa3
	.byte	0
	.uleb128 0xf
	.long	.LASF227
	.byte	0x8
	.value	0x804
	.long	0x11ea
	.uleb128 0x7
	.long	.LASF228
	.byte	0x38
	.byte	0xe
	.byte	0xe
	.long	0x124b
	.uleb128 0x8
	.long	.LASF229
	.byte	0xe
	.byte	0xf
	.long	0x2259
	.byte	0
	.uleb128 0x8
	.long	.LASF230
	.byte	0xe
	.byte	0x10
	.long	0x2259
	.byte	0x8
	.uleb128 0x8
	.long	.LASF231
	.byte	0xe
	.byte	0x11
	.long	0x2273
	.byte	0x10
	.uleb128 0x8
	.long	.LASF232
	.byte	0xe
	.byte	0x12
	.long	0x2259
	.byte	0x18
	.uleb128 0x8
	.long	.LASF233
	.byte	0xe
	.byte	0x13
	.long	0x2259
	.byte	0x20
	.uleb128 0x8
	.long	.LASF234
	.byte	0xe
	.byte	0x14
	.long	0x229c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF235
	.byte	0xe
	.byte	0x16
	.long	0x22bc
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.string	"ANY"
	.byte	0x8
	.value	0x805
	.long	0x1257
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x8
	.value	0x9f1
	.long	0x12b9
	.uleb128 0x14
	.long	.LASF236
	.byte	0x8
	.value	0x9f2
	.long	0xc4
	.uleb128 0x14
	.long	.LASF237
	.byte	0x8
	.value	0x9f3
	.long	0x130f
	.uleb128 0x14
	.long	.LASF238
	.byte	0x8
	.value	0x9f4
	.long	0x24a
	.uleb128 0x14
	.long	.LASF239
	.byte	0x8
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF240
	.byte	0x8
	.value	0x9f6
	.long	0xf8
	.uleb128 0x14
	.long	.LASF241
	.byte	0x8
	.value	0x9f7
	.long	0x133c
	.uleb128 0x14
	.long	.LASF242
	.byte	0x8
	.value	0x9f8
	.long	0x133c
	.byte	0
	.uleb128 0xf
	.long	.LASF243
	.byte	0x8
	.value	0x808
	.long	0x12c5
	.uleb128 0x12
	.long	.LASF244
	.byte	0x18
	.byte	0xb
	.value	0x4ed
	.long	0x12fa
	.uleb128 0x11
	.long	.LASF245
	.byte	0xb
	.value	0x4ee
	.long	0x14c0
	.byte	0
	.uleb128 0x11
	.long	.LASF246
	.byte	0xb
	.value	0x4ef
	.long	0x255
	.byte	0x8
	.uleb128 0x11
	.long	.LASF247
	.byte	0xb
	.value	0x4f0
	.long	0x14f4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"U8"
	.byte	0x12
	.byte	0x85
	.long	0x2d
	.uleb128 0xc
	.string	"U16"
	.byte	0x12
	.byte	0x87
	.long	0x34
	.uleb128 0xc
	.string	"I32"
	.byte	0x12
	.byte	0x88
	.long	0x57
	.uleb128 0xc
	.string	"U32"
	.byte	0x12
	.byte	0x89
	.long	0x3b
	.uleb128 0xf
	.long	.LASF248
	.byte	0x12
	.value	0x209
	.long	0x131a
	.uleb128 0x15
	.long	0x133c
	.uleb128 0x16
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1331
	.uleb128 0x6
	.byte	0x8
	.long	0x731
	.uleb128 0xa
	.long	0xf8
	.long	0x1358
	.uleb128 0xb
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF249
	.byte	0x13
	.byte	0x63
	.long	0x1363
	.uleb128 0xd
	.long	.LASF251
	.uleb128 0x4
	.long	.LASF252
	.byte	0x13
	.byte	0x65
	.long	0x1373
	.uleb128 0x6
	.byte	0x8
	.long	0x1358
	.uleb128 0x7
	.long	.LASF253
	.byte	0x4
	.byte	0xc
	.byte	0x13
	.long	0x13aa
	.uleb128 0x8
	.long	.LASF246
	.byte	0xc
	.byte	0x14
	.long	0x12fa
	.byte	0
	.uleb128 0x8
	.long	.LASF254
	.byte	0xc
	.byte	0x15
	.long	0x12fa
	.byte	0x1
	.uleb128 0x8
	.long	.LASF255
	.byte	0xc
	.byte	0x16
	.long	0x1304
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF253
	.byte	0xc
	.byte	0x19
	.long	0x1379
	.uleb128 0x6
	.byte	0x8
	.long	0x130f
	.uleb128 0x6
	.byte	0x8
	.long	0x13aa
	.uleb128 0xd
	.long	.LASF256
	.uleb128 0x6
	.byte	0x8
	.long	0x13c1
	.uleb128 0xd
	.long	.LASF257
	.uleb128 0x6
	.byte	0x8
	.long	0x13cc
	.uleb128 0x6
	.byte	0x8
	.long	0x131a
	.uleb128 0xa
	.long	0x13aa
	.long	0x13ed
	.uleb128 0xb
	.long	0xb2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF93
	.byte	0xc
	.byte	0x33
	.long	0x829
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x1461
	.uleb128 0x18
	.long	.LASF258
	.sleb128 0
	.uleb128 0x18
	.long	.LASF259
	.sleb128 1
	.uleb128 0x18
	.long	.LASF260
	.sleb128 2
	.uleb128 0x18
	.long	.LASF261
	.sleb128 3
	.uleb128 0x18
	.long	.LASF262
	.sleb128 4
	.uleb128 0x18
	.long	.LASF263
	.sleb128 5
	.uleb128 0x18
	.long	.LASF264
	.sleb128 6
	.uleb128 0x18
	.long	.LASF265
	.sleb128 7
	.uleb128 0x18
	.long	.LASF266
	.sleb128 8
	.uleb128 0x18
	.long	.LASF267
	.sleb128 9
	.uleb128 0x18
	.long	.LASF268
	.sleb128 10
	.uleb128 0x18
	.long	.LASF269
	.sleb128 11
	.uleb128 0x18
	.long	.LASF270
	.sleb128 12
	.uleb128 0x18
	.long	.LASF271
	.sleb128 13
	.uleb128 0x18
	.long	.LASF272
	.sleb128 14
	.uleb128 0x18
	.long	.LASF273
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xee6
	.uleb128 0x6
	.byte	0x8
	.long	0xf9c
	.uleb128 0x6
	.byte	0x8
	.long	0xdb8
	.uleb128 0x6
	.byte	0x8
	.long	0xe49
	.uleb128 0x6
	.byte	0x8
	.long	0x1099
	.uleb128 0x6
	.byte	0x8
	.long	0xac9
	.uleb128 0x6
	.byte	0x8
	.long	0x7a7
	.uleb128 0x6
	.byte	0x8
	.long	0x902
	.uleb128 0xf
	.long	.LASF274
	.byte	0xb
	.value	0x150
	.long	0x1304
	.uleb128 0x6
	.byte	0x8
	.long	0x27e
	.uleb128 0x15
	.long	0x14ae
	.uleb128 0x16
	.long	0x14ae
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7e2
	.uleb128 0x6
	.byte	0x8
	.long	0x14a3
	.uleb128 0x6
	.byte	0x8
	.long	0x9a9
	.uleb128 0x6
	.byte	0x8
	.long	0x76c
	.uleb128 0x19
	.byte	0x8
	.byte	0xb
	.value	0x184
	.long	0x14e8
	.uleb128 0x14
	.long	.LASF275
	.byte	0xb
	.value	0x185
	.long	0x14e8
	.uleb128 0x14
	.long	.LASF276
	.byte	0xb
	.value	0x186
	.long	0xc4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0x6
	.byte	0x8
	.long	0x1368
	.uleb128 0x6
	.byte	0x8
	.long	0x70a
	.uleb128 0x6
	.byte	0x8
	.long	0x9ef
	.uleb128 0x4
	.long	.LASF277
	.byte	0x14
	.byte	0x13
	.long	0x76c
	.uleb128 0xc
	.string	"PAD"
	.byte	0x14
	.byte	0x14
	.long	0x76c
	.uleb128 0x4
	.long	.LASF278
	.byte	0x14
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1500
	.uleb128 0x1a
	.long	.LASF983
	.byte	0x4
	.byte	0x18
	.byte	0xf
	.long	0x1e9b
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
	.uleb128 0x18
	.long	.LASF284
	.sleb128 5
	.uleb128 0x18
	.long	.LASF285
	.sleb128 6
	.uleb128 0x18
	.long	.LASF286
	.sleb128 7
	.uleb128 0x18
	.long	.LASF287
	.sleb128 8
	.uleb128 0x18
	.long	.LASF288
	.sleb128 9
	.uleb128 0x18
	.long	.LASF289
	.sleb128 10
	.uleb128 0x18
	.long	.LASF290
	.sleb128 11
	.uleb128 0x18
	.long	.LASF291
	.sleb128 12
	.uleb128 0x18
	.long	.LASF292
	.sleb128 13
	.uleb128 0x18
	.long	.LASF293
	.sleb128 14
	.uleb128 0x18
	.long	.LASF294
	.sleb128 15
	.uleb128 0x18
	.long	.LASF295
	.sleb128 16
	.uleb128 0x18
	.long	.LASF296
	.sleb128 17
	.uleb128 0x18
	.long	.LASF297
	.sleb128 18
	.uleb128 0x18
	.long	.LASF298
	.sleb128 19
	.uleb128 0x18
	.long	.LASF299
	.sleb128 20
	.uleb128 0x18
	.long	.LASF300
	.sleb128 21
	.uleb128 0x18
	.long	.LASF301
	.sleb128 22
	.uleb128 0x18
	.long	.LASF302
	.sleb128 23
	.uleb128 0x18
	.long	.LASF303
	.sleb128 24
	.uleb128 0x18
	.long	.LASF304
	.sleb128 25
	.uleb128 0x18
	.long	.LASF305
	.sleb128 26
	.uleb128 0x18
	.long	.LASF306
	.sleb128 27
	.uleb128 0x18
	.long	.LASF307
	.sleb128 28
	.uleb128 0x18
	.long	.LASF308
	.sleb128 29
	.uleb128 0x18
	.long	.LASF309
	.sleb128 30
	.uleb128 0x18
	.long	.LASF310
	.sleb128 31
	.uleb128 0x18
	.long	.LASF311
	.sleb128 32
	.uleb128 0x18
	.long	.LASF312
	.sleb128 33
	.uleb128 0x18
	.long	.LASF313
	.sleb128 34
	.uleb128 0x18
	.long	.LASF314
	.sleb128 35
	.uleb128 0x18
	.long	.LASF315
	.sleb128 36
	.uleb128 0x18
	.long	.LASF316
	.sleb128 37
	.uleb128 0x18
	.long	.LASF317
	.sleb128 38
	.uleb128 0x18
	.long	.LASF318
	.sleb128 39
	.uleb128 0x18
	.long	.LASF319
	.sleb128 40
	.uleb128 0x18
	.long	.LASF320
	.sleb128 41
	.uleb128 0x18
	.long	.LASF321
	.sleb128 42
	.uleb128 0x18
	.long	.LASF322
	.sleb128 43
	.uleb128 0x18
	.long	.LASF323
	.sleb128 44
	.uleb128 0x18
	.long	.LASF324
	.sleb128 45
	.uleb128 0x18
	.long	.LASF325
	.sleb128 46
	.uleb128 0x18
	.long	.LASF326
	.sleb128 47
	.uleb128 0x18
	.long	.LASF327
	.sleb128 48
	.uleb128 0x18
	.long	.LASF328
	.sleb128 49
	.uleb128 0x18
	.long	.LASF329
	.sleb128 50
	.uleb128 0x18
	.long	.LASF330
	.sleb128 51
	.uleb128 0x18
	.long	.LASF331
	.sleb128 52
	.uleb128 0x18
	.long	.LASF332
	.sleb128 53
	.uleb128 0x18
	.long	.LASF333
	.sleb128 54
	.uleb128 0x18
	.long	.LASF334
	.sleb128 55
	.uleb128 0x18
	.long	.LASF335
	.sleb128 56
	.uleb128 0x18
	.long	.LASF336
	.sleb128 57
	.uleb128 0x18
	.long	.LASF337
	.sleb128 58
	.uleb128 0x18
	.long	.LASF338
	.sleb128 59
	.uleb128 0x18
	.long	.LASF339
	.sleb128 60
	.uleb128 0x18
	.long	.LASF340
	.sleb128 61
	.uleb128 0x18
	.long	.LASF341
	.sleb128 62
	.uleb128 0x18
	.long	.LASF342
	.sleb128 63
	.uleb128 0x18
	.long	.LASF343
	.sleb128 64
	.uleb128 0x18
	.long	.LASF344
	.sleb128 65
	.uleb128 0x18
	.long	.LASF345
	.sleb128 66
	.uleb128 0x18
	.long	.LASF346
	.sleb128 67
	.uleb128 0x18
	.long	.LASF347
	.sleb128 68
	.uleb128 0x18
	.long	.LASF348
	.sleb128 69
	.uleb128 0x18
	.long	.LASF349
	.sleb128 70
	.uleb128 0x18
	.long	.LASF350
	.sleb128 71
	.uleb128 0x18
	.long	.LASF351
	.sleb128 72
	.uleb128 0x18
	.long	.LASF352
	.sleb128 73
	.uleb128 0x18
	.long	.LASF353
	.sleb128 74
	.uleb128 0x18
	.long	.LASF354
	.sleb128 75
	.uleb128 0x18
	.long	.LASF355
	.sleb128 76
	.uleb128 0x18
	.long	.LASF356
	.sleb128 77
	.uleb128 0x18
	.long	.LASF357
	.sleb128 78
	.uleb128 0x18
	.long	.LASF358
	.sleb128 79
	.uleb128 0x18
	.long	.LASF359
	.sleb128 80
	.uleb128 0x18
	.long	.LASF360
	.sleb128 81
	.uleb128 0x18
	.long	.LASF361
	.sleb128 82
	.uleb128 0x18
	.long	.LASF362
	.sleb128 83
	.uleb128 0x18
	.long	.LASF363
	.sleb128 84
	.uleb128 0x18
	.long	.LASF364
	.sleb128 85
	.uleb128 0x18
	.long	.LASF365
	.sleb128 86
	.uleb128 0x18
	.long	.LASF366
	.sleb128 87
	.uleb128 0x18
	.long	.LASF367
	.sleb128 88
	.uleb128 0x18
	.long	.LASF368
	.sleb128 89
	.uleb128 0x18
	.long	.LASF369
	.sleb128 90
	.uleb128 0x18
	.long	.LASF370
	.sleb128 91
	.uleb128 0x18
	.long	.LASF371
	.sleb128 92
	.uleb128 0x18
	.long	.LASF372
	.sleb128 93
	.uleb128 0x18
	.long	.LASF373
	.sleb128 94
	.uleb128 0x18
	.long	.LASF374
	.sleb128 95
	.uleb128 0x18
	.long	.LASF375
	.sleb128 96
	.uleb128 0x18
	.long	.LASF376
	.sleb128 97
	.uleb128 0x18
	.long	.LASF377
	.sleb128 98
	.uleb128 0x18
	.long	.LASF378
	.sleb128 99
	.uleb128 0x18
	.long	.LASF379
	.sleb128 100
	.uleb128 0x18
	.long	.LASF380
	.sleb128 101
	.uleb128 0x18
	.long	.LASF381
	.sleb128 102
	.uleb128 0x18
	.long	.LASF382
	.sleb128 103
	.uleb128 0x18
	.long	.LASF383
	.sleb128 104
	.uleb128 0x18
	.long	.LASF384
	.sleb128 105
	.uleb128 0x18
	.long	.LASF385
	.sleb128 106
	.uleb128 0x18
	.long	.LASF386
	.sleb128 107
	.uleb128 0x18
	.long	.LASF387
	.sleb128 108
	.uleb128 0x18
	.long	.LASF388
	.sleb128 109
	.uleb128 0x18
	.long	.LASF389
	.sleb128 110
	.uleb128 0x18
	.long	.LASF390
	.sleb128 111
	.uleb128 0x18
	.long	.LASF391
	.sleb128 112
	.uleb128 0x18
	.long	.LASF392
	.sleb128 113
	.uleb128 0x18
	.long	.LASF393
	.sleb128 114
	.uleb128 0x18
	.long	.LASF394
	.sleb128 115
	.uleb128 0x18
	.long	.LASF395
	.sleb128 116
	.uleb128 0x18
	.long	.LASF396
	.sleb128 117
	.uleb128 0x18
	.long	.LASF397
	.sleb128 118
	.uleb128 0x18
	.long	.LASF398
	.sleb128 119
	.uleb128 0x18
	.long	.LASF399
	.sleb128 120
	.uleb128 0x18
	.long	.LASF400
	.sleb128 121
	.uleb128 0x18
	.long	.LASF401
	.sleb128 122
	.uleb128 0x18
	.long	.LASF402
	.sleb128 123
	.uleb128 0x18
	.long	.LASF403
	.sleb128 124
	.uleb128 0x18
	.long	.LASF404
	.sleb128 125
	.uleb128 0x18
	.long	.LASF405
	.sleb128 126
	.uleb128 0x18
	.long	.LASF406
	.sleb128 127
	.uleb128 0x18
	.long	.LASF407
	.sleb128 128
	.uleb128 0x18
	.long	.LASF408
	.sleb128 129
	.uleb128 0x18
	.long	.LASF409
	.sleb128 130
	.uleb128 0x18
	.long	.LASF410
	.sleb128 131
	.uleb128 0x18
	.long	.LASF411
	.sleb128 132
	.uleb128 0x18
	.long	.LASF412
	.sleb128 133
	.uleb128 0x18
	.long	.LASF413
	.sleb128 134
	.uleb128 0x18
	.long	.LASF414
	.sleb128 135
	.uleb128 0x18
	.long	.LASF415
	.sleb128 136
	.uleb128 0x18
	.long	.LASF416
	.sleb128 137
	.uleb128 0x18
	.long	.LASF417
	.sleb128 138
	.uleb128 0x18
	.long	.LASF418
	.sleb128 139
	.uleb128 0x18
	.long	.LASF419
	.sleb128 140
	.uleb128 0x18
	.long	.LASF420
	.sleb128 141
	.uleb128 0x18
	.long	.LASF421
	.sleb128 142
	.uleb128 0x18
	.long	.LASF422
	.sleb128 143
	.uleb128 0x18
	.long	.LASF423
	.sleb128 144
	.uleb128 0x18
	.long	.LASF424
	.sleb128 145
	.uleb128 0x18
	.long	.LASF425
	.sleb128 146
	.uleb128 0x18
	.long	.LASF426
	.sleb128 147
	.uleb128 0x18
	.long	.LASF427
	.sleb128 148
	.uleb128 0x18
	.long	.LASF428
	.sleb128 149
	.uleb128 0x18
	.long	.LASF429
	.sleb128 150
	.uleb128 0x18
	.long	.LASF430
	.sleb128 151
	.uleb128 0x18
	.long	.LASF431
	.sleb128 152
	.uleb128 0x18
	.long	.LASF432
	.sleb128 153
	.uleb128 0x18
	.long	.LASF433
	.sleb128 154
	.uleb128 0x18
	.long	.LASF434
	.sleb128 155
	.uleb128 0x18
	.long	.LASF435
	.sleb128 156
	.uleb128 0x18
	.long	.LASF436
	.sleb128 157
	.uleb128 0x18
	.long	.LASF437
	.sleb128 158
	.uleb128 0x18
	.long	.LASF438
	.sleb128 159
	.uleb128 0x18
	.long	.LASF439
	.sleb128 160
	.uleb128 0x18
	.long	.LASF440
	.sleb128 161
	.uleb128 0x18
	.long	.LASF441
	.sleb128 162
	.uleb128 0x18
	.long	.LASF442
	.sleb128 163
	.uleb128 0x18
	.long	.LASF443
	.sleb128 164
	.uleb128 0x18
	.long	.LASF444
	.sleb128 165
	.uleb128 0x18
	.long	.LASF445
	.sleb128 166
	.uleb128 0x18
	.long	.LASF446
	.sleb128 167
	.uleb128 0x18
	.long	.LASF447
	.sleb128 168
	.uleb128 0x18
	.long	.LASF448
	.sleb128 169
	.uleb128 0x18
	.long	.LASF449
	.sleb128 170
	.uleb128 0x18
	.long	.LASF450
	.sleb128 171
	.uleb128 0x18
	.long	.LASF451
	.sleb128 172
	.uleb128 0x18
	.long	.LASF452
	.sleb128 173
	.uleb128 0x18
	.long	.LASF453
	.sleb128 174
	.uleb128 0x18
	.long	.LASF454
	.sleb128 175
	.uleb128 0x18
	.long	.LASF455
	.sleb128 176
	.uleb128 0x18
	.long	.LASF456
	.sleb128 177
	.uleb128 0x18
	.long	.LASF457
	.sleb128 178
	.uleb128 0x18
	.long	.LASF458
	.sleb128 179
	.uleb128 0x18
	.long	.LASF459
	.sleb128 180
	.uleb128 0x18
	.long	.LASF460
	.sleb128 181
	.uleb128 0x18
	.long	.LASF461
	.sleb128 182
	.uleb128 0x18
	.long	.LASF462
	.sleb128 183
	.uleb128 0x18
	.long	.LASF463
	.sleb128 184
	.uleb128 0x18
	.long	.LASF464
	.sleb128 185
	.uleb128 0x18
	.long	.LASF465
	.sleb128 186
	.uleb128 0x18
	.long	.LASF466
	.sleb128 187
	.uleb128 0x18
	.long	.LASF467
	.sleb128 188
	.uleb128 0x18
	.long	.LASF468
	.sleb128 189
	.uleb128 0x18
	.long	.LASF469
	.sleb128 190
	.uleb128 0x18
	.long	.LASF470
	.sleb128 191
	.uleb128 0x18
	.long	.LASF471
	.sleb128 192
	.uleb128 0x18
	.long	.LASF472
	.sleb128 193
	.uleb128 0x18
	.long	.LASF473
	.sleb128 194
	.uleb128 0x18
	.long	.LASF474
	.sleb128 195
	.uleb128 0x18
	.long	.LASF475
	.sleb128 196
	.uleb128 0x18
	.long	.LASF476
	.sleb128 197
	.uleb128 0x18
	.long	.LASF477
	.sleb128 198
	.uleb128 0x18
	.long	.LASF478
	.sleb128 199
	.uleb128 0x18
	.long	.LASF479
	.sleb128 200
	.uleb128 0x18
	.long	.LASF480
	.sleb128 201
	.uleb128 0x18
	.long	.LASF481
	.sleb128 202
	.uleb128 0x18
	.long	.LASF482
	.sleb128 203
	.uleb128 0x18
	.long	.LASF483
	.sleb128 204
	.uleb128 0x18
	.long	.LASF484
	.sleb128 205
	.uleb128 0x18
	.long	.LASF485
	.sleb128 206
	.uleb128 0x18
	.long	.LASF486
	.sleb128 207
	.uleb128 0x18
	.long	.LASF487
	.sleb128 208
	.uleb128 0x18
	.long	.LASF488
	.sleb128 209
	.uleb128 0x18
	.long	.LASF489
	.sleb128 210
	.uleb128 0x18
	.long	.LASF490
	.sleb128 211
	.uleb128 0x18
	.long	.LASF491
	.sleb128 212
	.uleb128 0x18
	.long	.LASF492
	.sleb128 213
	.uleb128 0x18
	.long	.LASF493
	.sleb128 214
	.uleb128 0x18
	.long	.LASF494
	.sleb128 215
	.uleb128 0x18
	.long	.LASF495
	.sleb128 216
	.uleb128 0x18
	.long	.LASF496
	.sleb128 217
	.uleb128 0x18
	.long	.LASF497
	.sleb128 218
	.uleb128 0x18
	.long	.LASF498
	.sleb128 219
	.uleb128 0x18
	.long	.LASF499
	.sleb128 220
	.uleb128 0x18
	.long	.LASF500
	.sleb128 221
	.uleb128 0x18
	.long	.LASF501
	.sleb128 222
	.uleb128 0x18
	.long	.LASF502
	.sleb128 223
	.uleb128 0x18
	.long	.LASF503
	.sleb128 224
	.uleb128 0x18
	.long	.LASF504
	.sleb128 225
	.uleb128 0x18
	.long	.LASF505
	.sleb128 226
	.uleb128 0x18
	.long	.LASF506
	.sleb128 227
	.uleb128 0x18
	.long	.LASF507
	.sleb128 228
	.uleb128 0x18
	.long	.LASF508
	.sleb128 229
	.uleb128 0x18
	.long	.LASF509
	.sleb128 230
	.uleb128 0x18
	.long	.LASF510
	.sleb128 231
	.uleb128 0x18
	.long	.LASF511
	.sleb128 232
	.uleb128 0x18
	.long	.LASF512
	.sleb128 233
	.uleb128 0x18
	.long	.LASF513
	.sleb128 234
	.uleb128 0x18
	.long	.LASF514
	.sleb128 235
	.uleb128 0x18
	.long	.LASF515
	.sleb128 236
	.uleb128 0x18
	.long	.LASF516
	.sleb128 237
	.uleb128 0x18
	.long	.LASF517
	.sleb128 238
	.uleb128 0x18
	.long	.LASF518
	.sleb128 239
	.uleb128 0x18
	.long	.LASF519
	.sleb128 240
	.uleb128 0x18
	.long	.LASF520
	.sleb128 241
	.uleb128 0x18
	.long	.LASF521
	.sleb128 242
	.uleb128 0x18
	.long	.LASF522
	.sleb128 243
	.uleb128 0x18
	.long	.LASF523
	.sleb128 244
	.uleb128 0x18
	.long	.LASF524
	.sleb128 245
	.uleb128 0x18
	.long	.LASF525
	.sleb128 246
	.uleb128 0x18
	.long	.LASF526
	.sleb128 247
	.uleb128 0x18
	.long	.LASF527
	.sleb128 248
	.uleb128 0x18
	.long	.LASF528
	.sleb128 249
	.uleb128 0x18
	.long	.LASF529
	.sleb128 250
	.uleb128 0x18
	.long	.LASF530
	.sleb128 251
	.uleb128 0x18
	.long	.LASF531
	.sleb128 252
	.uleb128 0x18
	.long	.LASF532
	.sleb128 253
	.uleb128 0x18
	.long	.LASF533
	.sleb128 254
	.uleb128 0x18
	.long	.LASF534
	.sleb128 255
	.uleb128 0x18
	.long	.LASF535
	.sleb128 256
	.uleb128 0x18
	.long	.LASF536
	.sleb128 257
	.uleb128 0x18
	.long	.LASF537
	.sleb128 258
	.uleb128 0x18
	.long	.LASF538
	.sleb128 259
	.uleb128 0x18
	.long	.LASF539
	.sleb128 260
	.uleb128 0x18
	.long	.LASF540
	.sleb128 261
	.uleb128 0x18
	.long	.LASF541
	.sleb128 262
	.uleb128 0x18
	.long	.LASF542
	.sleb128 263
	.uleb128 0x18
	.long	.LASF543
	.sleb128 264
	.uleb128 0x18
	.long	.LASF544
	.sleb128 265
	.uleb128 0x18
	.long	.LASF545
	.sleb128 266
	.uleb128 0x18
	.long	.LASF546
	.sleb128 267
	.uleb128 0x18
	.long	.LASF547
	.sleb128 268
	.uleb128 0x18
	.long	.LASF548
	.sleb128 269
	.uleb128 0x18
	.long	.LASF549
	.sleb128 270
	.uleb128 0x18
	.long	.LASF550
	.sleb128 271
	.uleb128 0x18
	.long	.LASF551
	.sleb128 272
	.uleb128 0x18
	.long	.LASF552
	.sleb128 273
	.uleb128 0x18
	.long	.LASF553
	.sleb128 274
	.uleb128 0x18
	.long	.LASF554
	.sleb128 275
	.uleb128 0x18
	.long	.LASF555
	.sleb128 276
	.uleb128 0x18
	.long	.LASF556
	.sleb128 277
	.uleb128 0x18
	.long	.LASF557
	.sleb128 278
	.uleb128 0x18
	.long	.LASF558
	.sleb128 279
	.uleb128 0x18
	.long	.LASF559
	.sleb128 280
	.uleb128 0x18
	.long	.LASF560
	.sleb128 281
	.uleb128 0x18
	.long	.LASF561
	.sleb128 282
	.uleb128 0x18
	.long	.LASF562
	.sleb128 283
	.uleb128 0x18
	.long	.LASF563
	.sleb128 284
	.uleb128 0x18
	.long	.LASF564
	.sleb128 285
	.uleb128 0x18
	.long	.LASF565
	.sleb128 286
	.uleb128 0x18
	.long	.LASF566
	.sleb128 287
	.uleb128 0x18
	.long	.LASF567
	.sleb128 288
	.uleb128 0x18
	.long	.LASF568
	.sleb128 289
	.uleb128 0x18
	.long	.LASF569
	.sleb128 290
	.uleb128 0x18
	.long	.LASF570
	.sleb128 291
	.uleb128 0x18
	.long	.LASF571
	.sleb128 292
	.uleb128 0x18
	.long	.LASF572
	.sleb128 293
	.uleb128 0x18
	.long	.LASF573
	.sleb128 294
	.uleb128 0x18
	.long	.LASF574
	.sleb128 295
	.uleb128 0x18
	.long	.LASF575
	.sleb128 296
	.uleb128 0x18
	.long	.LASF576
	.sleb128 297
	.uleb128 0x18
	.long	.LASF577
	.sleb128 298
	.uleb128 0x18
	.long	.LASF578
	.sleb128 299
	.uleb128 0x18
	.long	.LASF579
	.sleb128 300
	.uleb128 0x18
	.long	.LASF580
	.sleb128 301
	.uleb128 0x18
	.long	.LASF581
	.sleb128 302
	.uleb128 0x18
	.long	.LASF582
	.sleb128 303
	.uleb128 0x18
	.long	.LASF583
	.sleb128 304
	.uleb128 0x18
	.long	.LASF584
	.sleb128 305
	.uleb128 0x18
	.long	.LASF585
	.sleb128 306
	.uleb128 0x18
	.long	.LASF586
	.sleb128 307
	.uleb128 0x18
	.long	.LASF587
	.sleb128 308
	.uleb128 0x18
	.long	.LASF588
	.sleb128 309
	.uleb128 0x18
	.long	.LASF589
	.sleb128 310
	.uleb128 0x18
	.long	.LASF590
	.sleb128 311
	.uleb128 0x18
	.long	.LASF591
	.sleb128 312
	.uleb128 0x18
	.long	.LASF592
	.sleb128 313
	.uleb128 0x18
	.long	.LASF593
	.sleb128 314
	.uleb128 0x18
	.long	.LASF594
	.sleb128 315
	.uleb128 0x18
	.long	.LASF595
	.sleb128 316
	.uleb128 0x18
	.long	.LASF596
	.sleb128 317
	.uleb128 0x18
	.long	.LASF597
	.sleb128 318
	.uleb128 0x18
	.long	.LASF598
	.sleb128 319
	.uleb128 0x18
	.long	.LASF599
	.sleb128 320
	.uleb128 0x18
	.long	.LASF600
	.sleb128 321
	.uleb128 0x18
	.long	.LASF601
	.sleb128 322
	.uleb128 0x18
	.long	.LASF602
	.sleb128 323
	.uleb128 0x18
	.long	.LASF603
	.sleb128 324
	.uleb128 0x18
	.long	.LASF604
	.sleb128 325
	.uleb128 0x18
	.long	.LASF605
	.sleb128 326
	.uleb128 0x18
	.long	.LASF606
	.sleb128 327
	.uleb128 0x18
	.long	.LASF607
	.sleb128 328
	.uleb128 0x18
	.long	.LASF608
	.sleb128 329
	.uleb128 0x18
	.long	.LASF609
	.sleb128 330
	.uleb128 0x18
	.long	.LASF610
	.sleb128 331
	.uleb128 0x18
	.long	.LASF611
	.sleb128 332
	.uleb128 0x18
	.long	.LASF612
	.sleb128 333
	.uleb128 0x18
	.long	.LASF613
	.sleb128 334
	.uleb128 0x18
	.long	.LASF614
	.sleb128 335
	.uleb128 0x18
	.long	.LASF615
	.sleb128 336
	.uleb128 0x18
	.long	.LASF616
	.sleb128 337
	.uleb128 0x18
	.long	.LASF617
	.sleb128 338
	.uleb128 0x18
	.long	.LASF618
	.sleb128 339
	.uleb128 0x18
	.long	.LASF619
	.sleb128 340
	.uleb128 0x18
	.long	.LASF620
	.sleb128 341
	.uleb128 0x18
	.long	.LASF621
	.sleb128 342
	.uleb128 0x18
	.long	.LASF622
	.sleb128 343
	.uleb128 0x18
	.long	.LASF623
	.sleb128 344
	.uleb128 0x18
	.long	.LASF624
	.sleb128 345
	.uleb128 0x18
	.long	.LASF625
	.sleb128 346
	.uleb128 0x18
	.long	.LASF626
	.sleb128 347
	.uleb128 0x18
	.long	.LASF627
	.sleb128 348
	.uleb128 0x18
	.long	.LASF628
	.sleb128 349
	.uleb128 0x18
	.long	.LASF629
	.sleb128 350
	.uleb128 0x18
	.long	.LASF630
	.sleb128 351
	.uleb128 0x18
	.long	.LASF631
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0x149d
	.uleb128 0x6
	.byte	0x8
	.long	0x1e9b
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x6
	.byte	0x8
	.long	0x81d
	.uleb128 0x7
	.long	.LASF632
	.byte	0x40
	.byte	0xa
	.byte	0x70
	.long	0x1f29
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0x71
	.long	0x14ae
	.byte	0
	.uleb128 0x1c
	.string	"gv"
	.byte	0xa
	.byte	0x72
	.long	0x14ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF633
	.byte	0xa
	.byte	0x73
	.long	0x14ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF634
	.byte	0xa
	.byte	0x75
	.long	0x14c0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF635
	.byte	0xa
	.byte	0x77
	.long	0x14c0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF636
	.byte	0xa
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF637
	.byte	0xa
	.byte	0x79
	.long	0x12fa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF638
	.byte	0xa
	.byte	0x7a
	.long	0x12fa
	.byte	0x31
	.uleb128 0x8
	.long	.LASF639
	.byte	0xa
	.byte	0x7b
	.long	0x1f29
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x150b
	.uleb128 0x7
	.long	.LASF640
	.byte	0x28
	.byte	0xa
	.byte	0xd3
	.long	0x1f83
	.uleb128 0x8
	.long	.LASF641
	.byte	0xa
	.byte	0xd4
	.long	0x130f
	.byte	0
	.uleb128 0x8
	.long	.LASF642
	.byte	0xa
	.byte	0xd5
	.long	0x130f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF643
	.byte	0xa
	.byte	0xd6
	.long	0x1342
	.byte	0x8
	.uleb128 0x8
	.long	.LASF644
	.byte	0xa
	.byte	0xd7
	.long	0x149d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF645
	.byte	0xa
	.byte	0xd8
	.long	0x1342
	.byte	0x18
	.uleb128 0x1c
	.string	"cv"
	.byte	0xa
	.byte	0xd9
	.long	0x14ae
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF646
	.byte	0x58
	.byte	0xa
	.byte	0xf0
	.long	0x2015
	.uleb128 0x8
	.long	.LASF647
	.byte	0xa
	.byte	0xf1
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF648
	.byte	0xa
	.byte	0xf2
	.long	0x130f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF649
	.byte	0xa
	.byte	0xf3
	.long	0x149d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF650
	.byte	0xa
	.byte	0xf4
	.long	0x149d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF651
	.byte	0xa
	.byte	0xf5
	.long	0x149d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF652
	.byte	0xa
	.byte	0xfa
	.long	0x2015
	.byte	0x28
	.uleb128 0x8
	.long	.LASF653
	.byte	0xa
	.byte	0xfc
	.long	0x1342
	.byte	0x30
	.uleb128 0x8
	.long	.LASF654
	.byte	0xa
	.byte	0xfd
	.long	0x1342
	.byte	0x38
	.uleb128 0x8
	.long	.LASF655
	.byte	0xa
	.byte	0xfe
	.long	0x14c0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF656
	.byte	0xa
	.byte	0xff
	.long	0x24a
	.byte	0x48
	.uleb128 0x11
	.long	.LASF657
	.byte	0xa
	.value	0x100
	.long	0x24a
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1342
	.uleb128 0x19
	.byte	0x58
	.byte	0xa
	.value	0x139
	.long	0x2049
	.uleb128 0x14
	.long	.LASF658
	.byte	0xa
	.value	0x13a
	.long	0x1eb2
	.uleb128 0x14
	.long	.LASF659
	.byte	0xa
	.value	0x13b
	.long	0x1f2f
	.uleb128 0x14
	.long	.LASF660
	.byte	0xa
	.value	0x13c
	.long	0x1f83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f5
	.uleb128 0x12
	.long	.LASF661
	.byte	0x58
	.byte	0xa
	.value	0x16e
	.long	0x2113
	.uleb128 0x11
	.long	.LASF662
	.byte	0xa
	.value	0x16f
	.long	0x130f
	.byte	0
	.uleb128 0x11
	.long	.LASF663
	.byte	0xa
	.value	0x170
	.long	0x130f
	.byte	0x4
	.uleb128 0x11
	.long	.LASF664
	.byte	0xa
	.value	0x171
	.long	0x130f
	.byte	0x8
	.uleb128 0x11
	.long	.LASF665
	.byte	0xa
	.value	0x172
	.long	0x130f
	.byte	0xc
	.uleb128 0x11
	.long	.LASF666
	.byte	0xa
	.value	0x173
	.long	0xf8
	.byte	0x10
	.uleb128 0x11
	.long	.LASF667
	.byte	0xa
	.value	0x174
	.long	0xf8
	.byte	0x11
	.uleb128 0x11
	.long	.LASF668
	.byte	0xa
	.value	0x175
	.long	0xf2
	.byte	0x18
	.uleb128 0x11
	.long	.LASF669
	.byte	0xa
	.value	0x176
	.long	0x1342
	.byte	0x20
	.uleb128 0x11
	.long	.LASF670
	.byte	0xa
	.value	0x177
	.long	0x1342
	.byte	0x28
	.uleb128 0x11
	.long	.LASF671
	.byte	0xa
	.value	0x178
	.long	0xf2
	.byte	0x30
	.uleb128 0x11
	.long	.LASF672
	.byte	0xa
	.value	0x179
	.long	0xf2
	.byte	0x38
	.uleb128 0x11
	.long	.LASF673
	.byte	0xa
	.value	0x17a
	.long	0xf2
	.byte	0x40
	.uleb128 0x11
	.long	.LASF674
	.byte	0xa
	.value	0x17b
	.long	0xc4
	.byte	0x48
	.uleb128 0x11
	.long	.LASF675
	.byte	0xa
	.value	0x17c
	.long	0x1eac
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0xa
	.value	0x1a4
	.long	0x2135
	.uleb128 0x14
	.long	.LASF676
	.byte	0xa
	.value	0x1a5
	.long	0xa53
	.uleb128 0x14
	.long	.LASF677
	.byte	0xa
	.value	0x1a6
	.long	0x204f
	.byte	0
	.uleb128 0x12
	.long	.LASF678
	.byte	0x38
	.byte	0xa
	.value	0x20c
	.long	0x21ab
	.uleb128 0x11
	.long	.LASF679
	.byte	0xa
	.value	0x20d
	.long	0x14c0
	.byte	0
	.uleb128 0x11
	.long	.LASF680
	.byte	0xa
	.value	0x20e
	.long	0x21ab
	.byte	0x8
	.uleb128 0x11
	.long	.LASF681
	.byte	0xa
	.value	0x20f
	.long	0x130f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF682
	.byte	0xa
	.value	0x210
	.long	0x130f
	.byte	0x14
	.uleb128 0x11
	.long	.LASF683
	.byte	0xa
	.value	0x211
	.long	0x130f
	.byte	0x18
	.uleb128 0x11
	.long	.LASF684
	.byte	0xa
	.value	0x212
	.long	0x21b1
	.byte	0x20
	.uleb128 0x11
	.long	.LASF685
	.byte	0xa
	.value	0x213
	.long	0x21b1
	.byte	0x28
	.uleb128 0x11
	.long	.LASF686
	.byte	0xa
	.value	0x214
	.long	0x130f
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1f
	.uleb128 0x6
	.byte	0x8
	.long	0x2135
	.uleb128 0xf
	.long	.LASF687
	.byte	0xa
	.value	0x219
	.long	0x2135
	.uleb128 0xc
	.string	"HE"
	.byte	0x10
	.byte	0xc
	.long	0x21cd
	.uleb128 0x10
	.string	"he"
	.byte	0x18
	.byte	0x10
	.byte	0x10
	.long	0x21fd
	.uleb128 0x8
	.long	.LASF688
	.byte	0x10
	.byte	0x11
	.long	0x2239
	.byte	0
	.uleb128 0x8
	.long	.LASF689
	.byte	0x10
	.byte	0x12
	.long	0x223f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF690
	.byte	0x10
	.byte	0x13
	.long	0x1342
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"HEK"
	.byte	0x10
	.byte	0xd
	.long	0x2208
	.uleb128 0x10
	.string	"hek"
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.long	0x2239
	.uleb128 0x8
	.long	.LASF691
	.byte	0x10
	.byte	0x18
	.long	0x131a
	.byte	0
	.uleb128 0x8
	.long	.LASF692
	.byte	0x10
	.byte	0x19
	.long	0x130f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF693
	.byte	0x10
	.byte	0x1a
	.long	0x1348
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c3
	.uleb128 0x6
	.byte	0x8
	.long	0x21fd
	.uleb128 0x1d
	.long	0x57
	.long	0x2259
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0x147f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2245
	.uleb128 0x1d
	.long	0x131a
	.long	0x2273
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0x147f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x225f
	.uleb128 0x1d
	.long	0x57
	.long	0x229c
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0x147f
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0x15e
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2279
	.uleb128 0x1d
	.long	0x57
	.long	0x22b6
	.uleb128 0x16
	.long	0x147f
	.uleb128 0x16
	.long	0x22b6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12b9
	.uleb128 0x6
	.byte	0x8
	.long	0x22a2
	.uleb128 0x6
	.byte	0x8
	.long	0x11de
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF694
	.uleb128 0x6
	.byte	0x8
	.long	0x13ed
	.uleb128 0xf
	.long	.LASF695
	.byte	0x8
	.value	0xe63
	.long	0x22e1
	.uleb128 0x6
	.byte	0x8
	.long	0x22e7
	.uleb128 0x1d
	.long	0x130f
	.long	0x2319
	.uleb128 0x16
	.long	0x22cf
	.uleb128 0x16
	.long	0xf2
	.uleb128 0x16
	.long	0xf2
	.uleb128 0x16
	.long	0xf2
	.uleb128 0x16
	.long	0x130f
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0xc4
	.uleb128 0x16
	.long	0x131a
	.byte	0
	.uleb128 0xf
	.long	.LASF696
	.byte	0x8
	.value	0xe66
	.long	0x2325
	.uleb128 0x6
	.byte	0x8
	.long	0x232b
	.uleb128 0x1d
	.long	0xf2
	.long	0x2353
	.uleb128 0x16
	.long	0x22cf
	.uleb128 0x16
	.long	0x1342
	.uleb128 0x16
	.long	0xf2
	.uleb128 0x16
	.long	0xf2
	.uleb128 0x16
	.long	0x131a
	.uleb128 0x16
	.long	0x2353
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2359
	.uleb128 0xd
	.long	.LASF697
	.uleb128 0x1e
	.byte	0x4
	.byte	0x8
	.value	0xfb1
	.long	0x24fd
	.uleb128 0x18
	.long	.LASF698
	.sleb128 0
	.uleb128 0x18
	.long	.LASF699
	.sleb128 1
	.uleb128 0x18
	.long	.LASF700
	.sleb128 2
	.uleb128 0x18
	.long	.LASF701
	.sleb128 3
	.uleb128 0x18
	.long	.LASF702
	.sleb128 4
	.uleb128 0x18
	.long	.LASF703
	.sleb128 5
	.uleb128 0x18
	.long	.LASF704
	.sleb128 6
	.uleb128 0x18
	.long	.LASF705
	.sleb128 7
	.uleb128 0x18
	.long	.LASF706
	.sleb128 8
	.uleb128 0x18
	.long	.LASF707
	.sleb128 9
	.uleb128 0x18
	.long	.LASF708
	.sleb128 10
	.uleb128 0x18
	.long	.LASF709
	.sleb128 11
	.uleb128 0x18
	.long	.LASF710
	.sleb128 12
	.uleb128 0x18
	.long	.LASF711
	.sleb128 13
	.uleb128 0x18
	.long	.LASF712
	.sleb128 14
	.uleb128 0x18
	.long	.LASF713
	.sleb128 15
	.uleb128 0x18
	.long	.LASF714
	.sleb128 16
	.uleb128 0x18
	.long	.LASF715
	.sleb128 17
	.uleb128 0x18
	.long	.LASF716
	.sleb128 18
	.uleb128 0x18
	.long	.LASF717
	.sleb128 19
	.uleb128 0x18
	.long	.LASF718
	.sleb128 20
	.uleb128 0x18
	.long	.LASF719
	.sleb128 21
	.uleb128 0x18
	.long	.LASF720
	.sleb128 22
	.uleb128 0x18
	.long	.LASF721
	.sleb128 23
	.uleb128 0x18
	.long	.LASF722
	.sleb128 24
	.uleb128 0x18
	.long	.LASF723
	.sleb128 25
	.uleb128 0x18
	.long	.LASF724
	.sleb128 26
	.uleb128 0x18
	.long	.LASF725
	.sleb128 27
	.uleb128 0x18
	.long	.LASF726
	.sleb128 28
	.uleb128 0x18
	.long	.LASF727
	.sleb128 29
	.uleb128 0x18
	.long	.LASF728
	.sleb128 30
	.uleb128 0x18
	.long	.LASF729
	.sleb128 31
	.uleb128 0x18
	.long	.LASF730
	.sleb128 32
	.uleb128 0x18
	.long	.LASF731
	.sleb128 33
	.uleb128 0x18
	.long	.LASF732
	.sleb128 34
	.uleb128 0x18
	.long	.LASF733
	.sleb128 35
	.uleb128 0x18
	.long	.LASF734
	.sleb128 36
	.uleb128 0x18
	.long	.LASF735
	.sleb128 37
	.uleb128 0x18
	.long	.LASF736
	.sleb128 38
	.uleb128 0x18
	.long	.LASF737
	.sleb128 39
	.uleb128 0x18
	.long	.LASF738
	.sleb128 40
	.uleb128 0x18
	.long	.LASF739
	.sleb128 41
	.uleb128 0x18
	.long	.LASF740
	.sleb128 42
	.uleb128 0x18
	.long	.LASF741
	.sleb128 43
	.uleb128 0x18
	.long	.LASF742
	.sleb128 44
	.uleb128 0x18
	.long	.LASF743
	.sleb128 45
	.uleb128 0x18
	.long	.LASF744
	.sleb128 46
	.uleb128 0x18
	.long	.LASF745
	.sleb128 47
	.uleb128 0x18
	.long	.LASF746
	.sleb128 48
	.uleb128 0x18
	.long	.LASF747
	.sleb128 49
	.uleb128 0x18
	.long	.LASF748
	.sleb128 50
	.uleb128 0x18
	.long	.LASF749
	.sleb128 51
	.uleb128 0x18
	.long	.LASF750
	.sleb128 52
	.uleb128 0x18
	.long	.LASF751
	.sleb128 53
	.uleb128 0x18
	.long	.LASF752
	.sleb128 54
	.uleb128 0x18
	.long	.LASF753
	.sleb128 55
	.uleb128 0x18
	.long	.LASF754
	.sleb128 56
	.uleb128 0x18
	.long	.LASF755
	.sleb128 57
	.uleb128 0x18
	.long	.LASF756
	.sleb128 58
	.uleb128 0x18
	.long	.LASF757
	.sleb128 59
	.uleb128 0x18
	.long	.LASF758
	.sleb128 60
	.uleb128 0x18
	.long	.LASF759
	.sleb128 61
	.uleb128 0x18
	.long	.LASF760
	.sleb128 62
	.uleb128 0x18
	.long	.LASF761
	.sleb128 63
	.uleb128 0x18
	.long	.LASF762
	.sleb128 64
	.uleb128 0x18
	.long	.LASF763
	.sleb128 65
	.uleb128 0x18
	.long	.LASF764
	.sleb128 66
	.byte	0
	.uleb128 0x1f
	.long	.LASF765
	.byte	0x1
	.byte	0x2a
	.long	0x149d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x252b
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x2c
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	.LASF767
	.byte	0x1
	.byte	0x31
	.long	0x149d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF766
	.byte	0x1
	.byte	0x3a
	.long	0x149d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2576
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x3c
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.long	.LASF768
	.byte	0x1
	.byte	0x45
	.long	0x149d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF769
	.byte	0x1
	.byte	0x4a
	.long	0x149d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF770
	.byte	0x1
	.byte	0x50
	.long	0x149d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF771
	.byte	0x1
	.byte	0x56
	.long	0x149d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2609
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x58
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF772
	.byte	0x1
	.byte	0x58
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.long	.LASF773
	.byte	0x1
	.byte	0x5e
	.long	0x149d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2637
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x60
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.long	.LASF774
	.byte	0x1
	.byte	0x65
	.long	0x149d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2665
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x67
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.long	.LASF775
	.byte	0x1
	.byte	0x70
	.long	0x149d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x26cf
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x72
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF776
	.byte	0x1
	.byte	0x72
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF777
	.byte	0x1
	.byte	0x72
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x23
	.long	.LASF778
	.byte	0x1
	.byte	0x75
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF779
	.byte	0x1
	.byte	0x7f
	.long	0x149d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x26fd
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x81
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1f
	.long	.LASF780
	.byte	0x1
	.byte	0x88
	.long	0x149d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x272d
	.uleb128 0x23
	.long	.LASF781
	.byte	0x1
	.byte	0x8a
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF782
	.byte	0x1
	.byte	0x93
	.long	0x149d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2842
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x95
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF772
	.byte	0x1
	.byte	0x95
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x27aa
	.uleb128 0x23
	.long	.LASF783
	.byte	0x1
	.byte	0x95
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF776
	.byte	0x1
	.byte	0x95
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF777
	.byte	0x1
	.byte	0x95
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x23
	.long	.LASF776
	.byte	0x1
	.byte	0x97
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF777
	.byte	0x1
	.byte	0x97
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF784
	.byte	0x1
	.byte	0x98
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.string	"lpv"
	.byte	0x1
	.byte	0x99
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF785
	.byte	0x1
	.byte	0x9a
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -115
	.uleb128 0x23
	.long	.LASF786
	.byte	0x1
	.byte	0x9b
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"rpv"
	.byte	0x1
	.byte	0x9c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF787
	.byte	0x1
	.byte	0x9d
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x23
	.long	.LASF788
	.byte	0x1
	.byte	0x9d
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -114
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF789
	.byte	0x1
	.byte	0xd5
	.long	0x149d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x287e
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xd7
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF772
	.byte	0x1
	.byte	0xd7
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1f
	.long	.LASF790
	.byte	0x1
	.byte	0xe5
	.long	0x149d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x295b
	.uleb128 0x26
	.long	.LASF808
	.byte	0x1
	.byte	0xe7
	.quad	.L114
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x293c
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xe7
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.long	.LASF772
	.byte	0x1
	.byte	0xe7
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xe7
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x23
	.long	.LASF783
	.byte	0x1
	.byte	0xe7
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0xe7
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xed
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF791
	.byte	0x1
	.byte	0xf7
	.long	0x149d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a97
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0xf9
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x29cb
	.uleb128 0x23
	.long	.LASF783
	.byte	0x1
	.byte	0xf9
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF776
	.byte	0x1
	.byte	0xf9
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF777
	.byte	0x1
	.byte	0xf9
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2a75
	.uleb128 0x27
	.long	.LASF792
	.byte	0x1
	.value	0x109
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x27
	.long	.LASF793
	.byte	0x1
	.value	0x10a
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2a34
	.uleb128 0x28
	.string	"buv"
	.byte	0x1
	.value	0x113
	.long	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"auv"
	.byte	0x1
	.value	0x114
	.long	0x255
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.string	"ivp"
	.byte	0x1
	.value	0x11a
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"uvp"
	.byte	0x1
	.value	0x11a
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"iv"
	.byte	0x1
	.value	0x11b
	.long	0x24a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x27
	.long	.LASF794
	.byte	0x1
	.value	0x134
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF795
	.byte	0x1
	.value	0x13a
	.long	0x149d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ac7
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x13c
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x14b
	.long	0x149d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af7
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x14d
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.long	.LASF797
	.byte	0x1
	.value	0x156
	.long	0x149d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c85
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x158
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x158
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF798
	.byte	0x1
	.value	0x158
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x2b8b
	.uleb128 0x27
	.long	.LASF783
	.byte	0x1
	.value	0x158
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF776
	.byte	0x1
	.value	0x158
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF777
	.byte	0x1
	.value	0x158
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x2c63
	.uleb128 0x28
	.string	"auv"
	.byte	0x1
	.value	0x18e
	.long	0x255
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF792
	.byte	0x1
	.value	0x18f
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x27
	.long	.LASF799
	.byte	0x1
	.value	0x190
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x2bf2
	.uleb128 0x28
	.string	"aiv"
	.byte	0x1
	.value	0x19f
	.long	0x24a
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x24
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x27
	.long	.LASF800
	.byte	0x1
	.value	0x1ab
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -99
	.uleb128 0x27
	.long	.LASF801
	.byte	0x1
	.value	0x1ac
	.long	0x255
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"buv"
	.byte	0x1
	.value	0x1ad
	.long	0x255
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF793
	.byte	0x1
	.value	0x1ae
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x24
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x28
	.string	"biv"
	.byte	0x1
	.value	0x1b3
	.long	0x24a
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x27
	.long	.LASF794
	.byte	0x1
	.value	0x1ed
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF802
	.byte	0x1
	.value	0x1f8
	.long	0x149d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cef
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x1fa
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x1fb
	.long	0x14c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.value	0x1fd
	.long	0x131a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0x1fe
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x1ff
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.long	.LASF803
	.byte	0x1
	.value	0x207
	.long	0x149d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d3c
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x209
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0x209
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x209
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF805
	.byte	0x1
	.value	0x211
	.long	0x149d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d6c
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x213
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x29
	.long	.LASF806
	.byte	0x1
	.value	0x226
	.long	0x149d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e34
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x228
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0x228
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF807
	.byte	0x1
	.value	0x228
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0x229
	.long	0x14ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"io"
	.byte	0x1
	.value	0x22a
	.long	0x2e34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"fp"
	.byte	0x1
	.value	0x22b
	.long	0x14ee
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x22c
	.long	0x147f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF809
	.byte	0x1
	.value	0x236
	.quad	.L241
	.uleb128 0x2a
	.long	.LASF810
	.byte	0x1
	.value	0x285
	.quad	.L259
	.uleb128 0x24
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x27
	.long	.LASF811
	.byte	0x1
	.value	0x23b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e4
	.uleb128 0x29
	.long	.LASF812
	.byte	0x1
	.value	0x28b
	.long	0x149d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fcb
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x28d
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x28d
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x28e
	.long	0x14c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF813
	.byte	0x1
	.value	0x291
	.quad	.L281
	.uleb128 0x2a
	.long	.LASF808
	.byte	0x1
	.value	0x292
	.quad	.L283
	.uleb128 0x25
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x2edc
	.uleb128 0x27
	.long	.LASF783
	.byte	0x1
	.value	0x292
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x292
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x2f32
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0x2b5
	.long	0x14ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x28
	.string	"sym"
	.byte	0x1
	.value	0x2b8
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x2b9
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x2f99
	.uleb128 0x27
	.long	.LASF814
	.byte	0x1
	.value	0x2f3
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2f7
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0x2f9
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x306
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF814
	.byte	0x1
	.value	0x307
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF815
	.byte	0x1
	.value	0x30d
	.long	0x149d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x30f4
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x30f
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x30f
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x310
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x311
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF813
	.byte	0x1
	.value	0x314
	.quad	.L353
	.uleb128 0x2a
	.long	.LASF808
	.byte	0x1
	.value	0x315
	.quad	.L355
	.uleb128 0x25
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x307d
	.uleb128 0x27
	.long	.LASF783
	.byte	0x1
	.value	0x315
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0x315
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x30d2
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0x338
	.long	0x14ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x28
	.string	"sym"
	.byte	0x1
	.value	0x33b
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x33c
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x37a
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF885
	.byte	0x1
	.value	0x386
	.long	0x57
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a2
	.uleb128 0x2c
	.string	"ary"
	.byte	0x1
	.value	0x386
	.long	0x14c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF817
	.byte	0x1
	.value	0x386
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF818
	.byte	0x1
	.value	0x386
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF819
	.byte	0x1
	.value	0x386
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF820
	.byte	0x1
	.value	0x387
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF821
	.byte	0x1
	.value	0x389
	.long	0x149d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x38a
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x27
	.long	.LASF822
	.byte	0x1
	.value	0x39e
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF984
	.byte	0x1
	.value	0x3b3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3230
	.uleb128 0x2d
	.long	.LASF823
	.byte	0x1
	.value	0x3b3
	.long	0x1485
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF819
	.byte	0x1
	.value	0x3b3
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF824
	.byte	0x1
	.value	0x3b3
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x27
	.long	.LASF822
	.byte	0x1
	.value	0x3b6
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x27
	.long	.LASF825
	.byte	0x1
	.value	0x3cd
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF826
	.byte	0x1
	.value	0x3db
	.long	0x149d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x33d3
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x3dd
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF827
	.byte	0x1
	.value	0x3de
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF820
	.byte	0x1
	.value	0x3df
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF824
	.byte	0x1
	.value	0x3e0
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF818
	.byte	0x1
	.value	0x3e1
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF819
	.byte	0x1
	.value	0x3e3
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF817
	.byte	0x1
	.value	0x3e4
	.long	0x2015
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x3e6
	.long	0x1342
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"ary"
	.byte	0x1
	.value	0x3e7
	.long	0x14c0
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x3e9
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF823
	.byte	0x1
	.value	0x3ea
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3eb
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.long	.LASF137
	.byte	0x1
	.value	0x3ec
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.long	.LASF828
	.byte	0x1
	.value	0x3ed
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.long	.LASF829
	.byte	0x1
	.value	0x3ee
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF830
	.byte	0x1
	.value	0x41b
	.quad	.L438
	.uleb128 0x25
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x336a
	.uleb128 0x27
	.long	.LASF825
	.byte	0x1
	.value	0x420
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.long	0x33b1
	.uleb128 0x27
	.long	.LASF822
	.byte	0x1
	.value	0x42f
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x27
	.long	.LASF825
	.byte	0x1
	.value	0x437
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x4aa
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF831
	.byte	0x1
	.value	0x4c4
	.long	0x149d
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x342c
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x4c6
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"pm"
	.byte	0x1
	.value	0x4c7
	.long	0x1ea6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"rv"
	.byte	0x1
	.value	0x4c8
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x4c9
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF832
	.byte	0x1
	.value	0x4d0
	.long	0x149d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d8
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x4d2
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x4d2
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"pm"
	.byte	0x1
	.value	0x4d3
	.long	0x1ea6
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF833
	.byte	0x1
	.value	0x4d4
	.long	0x1ea6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x4d5
	.long	0xf2
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x4d6
	.long	0xf2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF834
	.byte	0x1
	.value	0x4d7
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF835
	.byte	0x1
	.value	0x4d8
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF836
	.byte	0x1
	.value	0x4d9
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x27
	.long	.LASF837
	.byte	0x1
	.value	0x4da
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"rx"
	.byte	0x1
	.value	0x4db
	.long	0x1eac
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF838
	.byte	0x1
	.value	0x4dc
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -189
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x4dd
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x4de
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.long	.LASF839
	.byte	0x1
	.value	0x4df
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF781
	.byte	0x1
	.value	0x4e0
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.long	.LASF840
	.byte	0x1
	.value	0x4e1
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x27
	.long	.LASF841
	.byte	0x1
	.value	0x4e2
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF842
	.byte	0x1
	.value	0x4f8
	.quad	.L508
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x1
	.value	0x525
	.quad	.L519
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0x5be
	.quad	.L522
	.uleb128 0x2f
	.string	"yup"
	.byte	0x1
	.value	0x595
	.quad	.L528
	.uleb128 0x2a
	.long	.LASF845
	.byte	0x1
	.value	0x547
	.quad	.L531
	.uleb128 0x2a
	.long	.LASF846
	.byte	0x1
	.value	0x5bf
	.quad	.L569
	.uleb128 0x25
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x35e2
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x50d
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x25
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x3647
	.uleb128 0x27
	.long	.LASF106
	.byte	0x1
	.value	0x54c
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x54c
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x54c
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x566
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x366c
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x582
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x25
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x3690
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x5a4
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x36b6
	.uleb128 0x28
	.string	"off"
	.byte	0x1
	.value	0x5ae
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x24
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x5c2
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF847
	.byte	0x1
	.value	0x5ce
	.long	0x149d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x384e
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x5d0
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x5d0
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x5d1
	.long	0x1342
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF848
	.byte	0x1
	.value	0x5d2
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF849
	.byte	0x1
	.value	0x5d3
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"fp"
	.byte	0x1
	.value	0x5d4
	.long	0x14ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"io"
	.byte	0x1
	.value	0x5d5
	.long	0x2e34
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.long	.LASF254
	.byte	0x1
	.value	0x5d6
	.long	0x130f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x5d7
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x5d8
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF850
	.byte	0x1
	.value	0x61b
	.quad	.L604
	.uleb128 0x25
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x37c3
	.uleb128 0x27
	.long	.LASF801
	.byte	0x1
	.value	0x5e3
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x25
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x37e9
	.uleb128 0x28
	.string	"n_a"
	.byte	0x1
	.value	0x627
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x25
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0x380f
	.uleb128 0x27
	.long	.LASF851
	.byte	0x1
	.value	0x666
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x24
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x678
	.long	0x384e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x679
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x67a
	.long	0x384e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12fa
	.uleb128 0x29
	.long	.LASF852
	.byte	0x1
	.value	0x697
	.long	0x149d
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a0
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x699
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0x69a
	.long	0x21ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x69b
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	.LASF853
	.byte	0x1
	.value	0x6ac
	.long	0x149d
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a17
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x6ae
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"he"
	.byte	0x1
	.value	0x6af
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0x6b0
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF854
	.byte	0x1
	.value	0x6b1
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x6b2
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.value	0x6b3
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x27
	.long	.LASF855
	.byte	0x1
	.value	0x6b4
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x6b5
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF823
	.byte	0x1
	.value	0x6b6
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.long	.LASF856
	.byte	0x1
	.value	0x6b7
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.long	0x3990
	.uleb128 0x28
	.string	"mg"
	.byte	0x1
	.value	0x6bb
	.long	0x147f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF857
	.byte	0x1
	.value	0x6bc
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0x39e5
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x6da
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF858
	.byte	0x1
	.value	0x6db
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x28
	.string	"n_a"
	.byte	0x1
	.value	0x6dd
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x27
	.long	.LASF859
	.byte	0x1
	.value	0x6ef
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x6f0
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF860
	.byte	0x1
	.value	0x706
	.long	0x149d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ab0
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x708
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0x709
	.long	0x21ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0x70a
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF861
	.byte	0x1
	.value	0x70b
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF862
	.byte	0x1
	.value	0x70c
	.long	0x1ea6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x70d
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x27
	.long	.LASF811
	.byte	0x1
	.value	0x729
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF863
	.byte	0x1
	.value	0x73e
	.long	0x149d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bc2
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x740
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0x741
	.long	0x21ab
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x742
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF864
	.byte	0x1
	.value	0x742
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x743
	.long	0x14c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF865
	.byte	0x1
	.value	0x744
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x3b6e
	.uleb128 0x28
	.string	"cur"
	.byte	0x1
	.value	0x751
	.long	0x1342
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF866
	.byte	0x1
	.value	0x752
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"max"
	.byte	0x1
	.value	0x753
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0
	.long	0x3b87
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0x789
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.long	.Ldebug_ranges0+0x30
	.long	0x3ba0
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0x799
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x7ae
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF867
	.byte	0x1
	.value	0x7c8
	.long	0x149d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da3
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x7ca
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x7ca
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"pm"
	.byte	0x1
	.value	0x7cb
	.long	0x1ea6
	.uleb128 0x28
	.string	"rpm"
	.byte	0x1
	.value	0x7cc
	.long	0x1ea6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF868
	.byte	0x1
	.value	0x7cd
	.long	0x1342
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x7ce
	.long	0xf2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF834
	.byte	0x1
	.value	0x7cf
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.value	0x7d0
	.long	0xf2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.value	0x7d1
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x7d2
	.long	0xf2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF869
	.byte	0x1
	.value	0x7d3
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF870
	.byte	0x1
	.value	0x7d4
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x27
	.long	.LASF871
	.byte	0x1
	.value	0x7d5
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x7d6
	.long	0x130f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x27
	.long	.LASF872
	.byte	0x1
	.value	0x7d7
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0x27
	.long	.LASF838
	.byte	0x1
	.value	0x7d8
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -159
	.uleb128 0x27
	.long	.LASF873
	.byte	0x1
	.value	0x7d9
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF836
	.byte	0x1
	.value	0x7da
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"rx"
	.byte	0x1
	.value	0x7db
	.long	0x1eac
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x7dc
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF874
	.byte	0x1
	.value	0x7dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x27
	.long	.LASF781
	.byte	0x1
	.value	0x7de
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.long	.LASF875
	.byte	0x1
	.value	0x7df
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF876
	.byte	0x1
	.value	0x7e0
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -158
	.uleb128 0x28
	.string	"nsv"
	.byte	0x1
	.value	0x7e1
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF877
	.byte	0x1
	.value	0x7ff
	.quad	.L810
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0x8f3
	.quad	.L822
	.uleb128 0x2a
	.long	.LASF846
	.byte	0x1
	.value	0x8f4
	.quad	.L903
	.uleb128 0x24
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x31
	.string	"cx"
	.byte	0x1
	.value	0x8b7
	.long	0x21ab
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF878
	.byte	0x1
	.value	0x8fb
	.long	0x149d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e49
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x8fd
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x3e27
	.uleb128 0x27
	.long	.LASF879
	.byte	0x1
	.value	0x906
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x907
	.long	0x130f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x27
	.long	.LASF772
	.byte	0x1
	.value	0x90f
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x917
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF880
	.byte	0x1
	.value	0x924
	.long	0x149d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f19
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x926
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0x927
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF861
	.byte	0x1
	.value	0x928
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF862
	.byte	0x1
	.value	0x929
	.long	0x1ea6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x92a
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0x92b
	.long	0x21ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x92c
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0x3ef7
	.uleb128 0x27
	.long	.LASF811
	.byte	0x1
	.value	0x946
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x24
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x957
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF882
	.byte	0x1
	.value	0x960
	.long	0x149d
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x40a1
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x962
	.long	0x2015
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0x963
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF861
	.byte	0x1
	.value	0x964
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF862
	.byte	0x1
	.value	0x965
	.long	0x1ea6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0x966
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0x967
	.long	0x21ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x968
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF883
	.byte	0x1
	.value	0x9ce
	.quad	.L960
	.uleb128 0x2a
	.long	.LASF884
	.byte	0x1
	.value	0x9e8
	.quad	.L963
	.uleb128 0x25
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x3fea
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x991
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.long	0x400f
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x99d
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.long	0x4034
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x9ad
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.long	0x4059
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x9be
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.long	0x407f
	.uleb128 0x27
	.long	.LASF811
	.byte	0x1
	.value	0x9e2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x24
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x27
	.long	.LASF881
	.byte	0x1
	.value	0x9f5
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF886
	.byte	0x1
	.value	0x9fe
	.long	0x14ae
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4125
	.uleb128 0x2c
	.string	"svp"
	.byte	0x1
	.value	0x9fe
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"cv"
	.byte	0x1
	.value	0x9fe
	.long	0x14ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF887
	.byte	0x1
	.value	0xa00
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0xa03
	.long	0x14ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0xa0d
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF888
	.byte	0x1
	.value	0xa22
	.long	0x149d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4386
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0xa24
	.long	0x2015
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0xa24
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0xa25
	.long	0x14ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF857
	.byte	0x1
	.value	0xa26
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"cv"
	.byte	0x1
	.value	0xa27
	.long	0x14ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"cx"
	.byte	0x1
	.value	0xa28
	.long	0x21ab
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x27
	.long	.LASF816
	.byte	0x1
	.value	0xa29
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x27
	.long	.LASF637
	.byte	0x1
	.value	0xa2a
	.long	0xf8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -181
	.uleb128 0x2a
	.long	.LASF889
	.byte	0x1
	.value	0xa48
	.quad	.L1055
	.uleb128 0x2a
	.long	.LASF808
	.byte	0x1
	.value	0xa4b
	.quad	.L1070
	.uleb128 0x2a
	.long	.LASF890
	.byte	0x1
	.value	0xa74
	.quad	.L1076
	.uleb128 0x2a
	.long	.LASF891
	.byte	0x1
	.value	0xa65
	.quad	.L1077
	.uleb128 0x25
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.long	0x4232
	.uleb128 0x28
	.string	"sym"
	.byte	0x1
	.value	0xa31
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"n_a"
	.byte	0x1
	.value	0xa32
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x25
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.long	0x4289
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0xa4a
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x27
	.long	.LASF783
	.byte	0x1
	.value	0xa4b
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"arg"
	.byte	0x1
	.value	0xa4b
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.long	0x42bf
	.uleb128 0x27
	.long	.LASF892
	.byte	0x1
	.value	0xa67
	.long	0x14ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF893
	.byte	0x1
	.value	0xa68
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.long	0x4316
	.uleb128 0x27
	.long	.LASF894
	.byte	0x1
	.value	0xb28
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0xb30
	.long	0x14c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF879
	.byte	0x1
	.value	0xb31
	.long	0x130f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.uleb128 0x27
	.long	.LASF804
	.byte	0x1
	.value	0xb57
	.long	0x2015
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF879
	.byte	0x1
	.value	0xb58
	.long	0x130f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x27
	.long	.LASF895
	.byte	0x1
	.value	0xb59
	.long	0x14c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0xb7a
	.long	0x14c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"ary"
	.byte	0x1
	.value	0xb7b
	.long	0x2015
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF899
	.byte	0x1
	.value	0xbb7
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d4
	.uleb128 0x2c
	.string	"cv"
	.byte	0x1
	.value	0xbb7
	.long	0x14ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.uleb128 0x27
	.long	.LASF822
	.byte	0x1
	.value	0xbbc
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF896
	.byte	0x1
	.value	0xbc3
	.long	0x149d
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x448f
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0xbc5
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"svp"
	.byte	0x1
	.value	0xbc6
	.long	0x2015
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF897
	.byte	0x1
	.value	0xbc7
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF898
	.byte	0x1
	.value	0xbc8
	.long	0x24a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0xbc9
	.long	0x14c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF638
	.byte	0x1
	.value	0xbca
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF855
	.byte	0x1
	.value	0xbcb
	.long	0x131a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0xbcc
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0xbe3
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF900
	.byte	0x1
	.value	0xbfd
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x44cb
	.uleb128 0x2c
	.string	"sv"
	.byte	0x1
	.value	0xbfd
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF901
	.byte	0x1
	.value	0xbfd
	.long	0x131a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x29
	.long	.LASF902
	.byte	0x1
	.value	0xc1b
	.long	0x149d
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x452a
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0xc1d
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0xc1e
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.uleb128 0x28
	.string	"rsv"
	.byte	0x1
	.value	0xc21
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF903
	.byte	0x1
	.value	0xc2c
	.long	0x149d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4577
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0xc2e
	.long	0x2015
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0xc2f
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF823
	.byte	0x1
	.value	0xc30
	.long	0x131a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.long	.LASF904
	.byte	0x1
	.value	0xc37
	.long	0x1342
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4725
	.uleb128 0x2d
	.long	.LASF905
	.byte	0x1
	.value	0xc37
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF906
	.byte	0x1
	.value	0xc37
	.long	0x13d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0xc39
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"ob"
	.byte	0x1
	.value	0xc3a
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"gv"
	.byte	0x1
	.value	0xc3b
	.long	0x14ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF857
	.byte	0x1
	.value	0xc3c
	.long	0x1485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF907
	.byte	0x1
	.value	0xc3d
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF908
	.byte	0x1
	.value	0xc3e
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF909
	.byte	0x1
	.value	0xc3f
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF910
	.byte	0x1
	.value	0xc40
	.long	0x1342
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF911
	.byte	0x1
	.value	0xc41
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF912
	.byte	0x1
	.value	0xc85
	.quad	.L1183
	.uleb128 0x25
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.long	0x46c0
	.uleb128 0x27
	.long	.LASF913
	.byte	0x1
	.value	0xc4e
	.long	0x14ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB152
	.quad	.LBE152-.LBB152
	.long	0x469e
	.uleb128 0x28
	.string	"he"
	.byte	0x1
	.value	0xc54
	.long	0x2239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.uleb128 0x27
	.long	.LASF914
	.byte	0x1
	.value	0xc71
	.long	0x1342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.long	0x46e4
	.uleb128 0x28
	.string	"he"
	.byte	0x1
	.value	0xc8b
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.uleb128 0x27
	.long	.LASF915
	.byte	0x1
	.value	0xc9e
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"sep"
	.byte	0x1
	.value	0xc9f
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0xca0
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xf8
	.long	0x4730
	.uleb128 0x34
	.byte	0
	.uleb128 0x35
	.long	.LASF916
	.byte	0x8
	.value	0xcef
	.long	0x473c
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x35
	.long	.LASF917
	.byte	0x8
	.value	0xcf1
	.long	0x474d
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x35
	.long	.LASF918
	.byte	0x8
	.value	0xcf3
	.long	0x475e
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x35
	.long	.LASF919
	.byte	0x8
	.value	0xcf5
	.long	0x476f
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x35
	.long	.LASF920
	.byte	0x8
	.value	0xcf7
	.long	0x4780
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x35
	.long	.LASF921
	.byte	0x8
	.value	0xd05
	.long	0x4791
	.uleb128 0x9
	.long	0x4725
	.uleb128 0x36
	.long	.LASF922
	.byte	0x15
	.byte	0x34
	.long	0x12fa
	.uleb128 0x36
	.long	.LASF923
	.byte	0x15
	.byte	0x37
	.long	0xf8
	.uleb128 0x36
	.long	.LASF924
	.byte	0x15
	.byte	0x3b
	.long	0x131a
	.uleb128 0x36
	.long	.LASF925
	.byte	0x15
	.byte	0x48
	.long	0x57
	.uleb128 0x36
	.long	.LASF926
	.byte	0x15
	.byte	0x49
	.long	0x130f
	.uleb128 0x36
	.long	.LASF927
	.byte	0x15
	.byte	0x52
	.long	0x14ba
	.uleb128 0x36
	.long	.LASF928
	.byte	0x15
	.byte	0x79
	.long	0x14ba
	.uleb128 0x36
	.long	.LASF929
	.byte	0x15
	.byte	0x89
	.long	0x131a
	.uleb128 0x36
	.long	.LASF930
	.byte	0x15
	.byte	0x98
	.long	0xf8
	.uleb128 0x36
	.long	.LASF931
	.byte	0x15
	.byte	0xa3
	.long	0x2049
	.uleb128 0x36
	.long	.LASF932
	.byte	0x15
	.byte	0xb4
	.long	0x1342
	.uleb128 0x36
	.long	.LASF933
	.byte	0x15
	.byte	0xed
	.long	0x10a
	.uleb128 0x36
	.long	.LASF934
	.byte	0x15
	.byte	0xee
	.long	0x10a
	.uleb128 0x36
	.long	.LASF935
	.byte	0x15
	.byte	0xef
	.long	0xff
	.uleb128 0x36
	.long	.LASF936
	.byte	0x15
	.byte	0xf0
	.long	0xff
	.uleb128 0x35
	.long	.LASF937
	.byte	0x15
	.value	0x125
	.long	0x731
	.uleb128 0x35
	.long	.LASF938
	.byte	0x15
	.value	0x126
	.long	0x731
	.uleb128 0x35
	.long	.LASF939
	.byte	0x15
	.value	0x127
	.long	0x731
	.uleb128 0x35
	.long	.LASF940
	.byte	0x15
	.value	0x166
	.long	0x5e
	.uleb128 0x35
	.long	.LASF941
	.byte	0x15
	.value	0x1ff
	.long	0x1342
	.uleb128 0x35
	.long	.LASF942
	.byte	0x15
	.value	0x21c
	.long	0x1485
	.uleb128 0x36
	.long	.LASF943
	.byte	0x16
	.byte	0x22
	.long	0x2015
	.uleb128 0x36
	.long	.LASF944
	.byte	0x16
	.byte	0x26
	.long	0x149d
	.uleb128 0x36
	.long	.LASF945
	.byte	0x16
	.byte	0x28
	.long	0x2015
	.uleb128 0x36
	.long	.LASF946
	.byte	0x16
	.byte	0x2a
	.long	0x2015
	.uleb128 0x36
	.long	.LASF947
	.byte	0x16
	.byte	0x2b
	.long	0x2015
	.uleb128 0x36
	.long	.LASF948
	.byte	0x16
	.byte	0x2d
	.long	0x13b5
	.uleb128 0x36
	.long	.LASF949
	.byte	0x16
	.byte	0x2e
	.long	0x130f
	.uleb128 0x36
	.long	.LASF950
	.byte	0x16
	.byte	0x31
	.long	0x48db
	.uleb128 0x6
	.byte	0x8
	.long	0x124b
	.uleb128 0x36
	.long	.LASF951
	.byte	0x16
	.byte	0x33
	.long	0x130f
	.uleb128 0x36
	.long	.LASF952
	.byte	0x16
	.byte	0x34
	.long	0x130f
	.uleb128 0x36
	.long	.LASF953
	.byte	0x16
	.byte	0x36
	.long	0x2015
	.uleb128 0x36
	.long	.LASF954
	.byte	0x16
	.byte	0x37
	.long	0x130f
	.uleb128 0x36
	.long	.LASF955
	.byte	0x16
	.byte	0x38
	.long	0x130f
	.uleb128 0x36
	.long	.LASF956
	.byte	0x16
	.byte	0x39
	.long	0x130f
	.uleb128 0x36
	.long	.LASF957
	.byte	0x16
	.byte	0x3b
	.long	0x13b5
	.uleb128 0x36
	.long	.LASF958
	.byte	0x16
	.byte	0x3c
	.long	0x13b5
	.uleb128 0x36
	.long	.LASF959
	.byte	0x16
	.byte	0x3d
	.long	0x13b5
	.uleb128 0x36
	.long	.LASF960
	.byte	0x16
	.byte	0x40
	.long	0x130f
	.uleb128 0x36
	.long	.LASF961
	.byte	0x16
	.byte	0x43
	.long	0x1342
	.uleb128 0x36
	.long	.LASF962
	.byte	0x16
	.byte	0x44
	.long	0x4965
	.uleb128 0x6
	.byte	0x8
	.long	0xb67
	.uleb128 0x36
	.long	.LASF963
	.byte	0x16
	.byte	0x55
	.long	0x169
	.uleb128 0x36
	.long	.LASF964
	.byte	0x16
	.byte	0x5f
	.long	0xf8
	.uleb128 0x36
	.long	.LASF965
	.byte	0x16
	.byte	0x60
	.long	0x1ea6
	.uleb128 0x36
	.long	.LASF966
	.byte	0x16
	.byte	0x73
	.long	0x1342
	.uleb128 0x36
	.long	.LASF967
	.byte	0x16
	.byte	0x74
	.long	0x14ba
	.uleb128 0x36
	.long	.LASF968
	.byte	0x16
	.byte	0x75
	.long	0x1342
	.uleb128 0x36
	.long	.LASF969
	.byte	0x16
	.byte	0x76
	.long	0x14ba
	.uleb128 0x36
	.long	.LASF970
	.byte	0x16
	.byte	0x81
	.long	0x49c3
	.uleb128 0x37
	.long	0x2049
	.uleb128 0x36
	.long	.LASF971
	.byte	0x16
	.byte	0x83
	.long	0x57
	.uleb128 0x36
	.long	.LASF972
	.byte	0x16
	.byte	0x87
	.long	0x14c0
	.uleb128 0x36
	.long	.LASF973
	.byte	0x16
	.byte	0x88
	.long	0x49e9
	.uleb128 0x6
	.byte	0x8
	.long	0x21b7
	.uleb128 0x36
	.long	.LASF974
	.byte	0x16
	.byte	0xcd
	.long	0xf2
	.uleb128 0x36
	.long	.LASF975
	.byte	0x16
	.byte	0xe7
	.long	0x22d5
	.uleb128 0x36
	.long	.LASF976
	.byte	0x16
	.byte	0xe9
	.long	0x2319
	.uleb128 0x35
	.long	.LASF977
	.byte	0x16
	.value	0x113
	.long	0xf8
	.uleb128 0x35
	.long	.LASF978
	.byte	0x16
	.value	0x115
	.long	0x14c0
	.uleb128 0x36
	.long	.LASF979
	.byte	0x17
	.byte	0x42
	.long	0x731
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2116
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
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.quad	.LBB94-.Ltext0
	.quad	.LBE94-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB134-.Ltext0
	.quad	.LBE134-.Ltext0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF613:
	.string	"OP_ESERVENT"
.LASF806:
	.string	"Perl_pp_print"
.LASF538:
	.string	"OP_FTSVTX"
.LASF98:
	.string	"precomp"
.LASF491:
	.string	"OP_SYSREAD"
.LASF130:
	.string	"blku_oldretsp"
.LASF508:
	.string	"OP_SHUTDOWN"
.LASF751:
	.string	"repeat_ass_amg"
.LASF719:
	.string	"rshift_ass_amg"
.LASF584:
	.string	"OP_MSGRCV"
.LASF829:
	.string	"firsthashrelem"
.LASF684:
	.string	"si_prev"
.LASF957:
	.string	"PL_markstack"
.LASF965:
	.string	"PL_curpm"
.LASF814:
	.string	"maxarg"
.LASF626:
	.string	"OP_LOCK"
.LASF631:
	.string	"OP_max"
.LASF911:
	.string	"packlen"
.LASF21:
	.string	"gid_t"
.LASF276:
	.string	"xiou_any"
.LASF542:
	.string	"OP_CHDIR"
.LASF122:
	.string	"gp_file"
.LASF799:
	.string	"a_valid"
.LASF456:
	.string	"OP_ENTER"
.LASF968:
	.string	"PL_ofs_sv"
.LASF858:
	.string	"key2"
.LASF307:
	.string	"OP_REGCMAYBE"
.LASF127:
	.string	"block"
.LASF437:
	.string	"OP_FLOP"
.LASF475:
	.string	"OP_BINMODE"
.LASF189:
	.string	"xpvgv"
.LASF71:
	.string	"logop"
.LASF211:
	.string	"xio_ifp"
.LASF367:
	.string	"OP_SEQ"
.LASF63:
	.string	"cop_io"
.LASF678:
	.string	"stackinfo"
.LASF808:
	.string	"am_again"
.LASF721:
	.string	"band_ass_amg"
.LASF728:
	.string	"gt_amg"
.LASF833:
	.string	"dynpm"
.LASF529:
	.string	"OP_FTSOCK"
.LASF183:
	.string	"xhv_keys"
.LASF851:
	.string	"tmps"
.LASF226:
	.string	"xio_flags"
.LASF605:
	.string	"OP_GSERVENT"
.LASF230:
	.string	"svt_set"
.LASF765:
	.string	"Perl_pp_const"
.LASF179:
	.string	"xpvhv"
.LASF753:
	.string	"concat_ass_amg"
.LASF982:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF496:
	.string	"OP_TELL"
.LASF568:
	.string	"OP_SETPGRP"
.LASF960:
	.string	"PL_retstack_ix"
.LASF523:
	.string	"OP_FTROWNED"
.LASF116:
	.string	"gp_hv"
.LASF210:
	.string	"xpvio"
.LASF512:
	.string	"OP_GETPEERNAME"
.LASF366:
	.string	"OP_SGE"
.LASF151:
	.string	"xpviv"
.LASF745:
	.string	"cos_amg"
.LASF978:
	.string	"PL_comppad"
.LASF670:
	.string	"sbu_targ"
.LASF448:
	.string	"OP_CALLER"
.LASF506:
	.string	"OP_LISTEN"
.LASF825:
	.string	"didstore"
.LASF364:
	.string	"OP_SGT"
.LASF578:
	.string	"OP_SHMCTL"
.LASF336:
	.string	"OP_DIVIDE"
.LASF919:
	.string	"PL_no_helem"
.LASF906:
	.string	"hashp"
.LASF198:
	.string	"xcv_start"
.LASF13:
	.string	"__off_t"
.LASF113:
	.string	"gp_io"
.LASF872:
	.string	"once"
.LASF117:
	.string	"gp_egv"
.LASF39:
	.string	"st_size"
.LASF662:
	.string	"sbu_iters"
.LASF381:
	.string	"OP_SRAND"
.LASF691:
	.string	"hek_hash"
.LASF732:
	.string	"ncmp_amg"
.LASF61:
	.string	"cop_line"
.LASF197:
	.string	"xcv_stash"
.LASF347:
	.string	"OP_LEFT_SHIFT"
.LASF882:
	.string	"Perl_pp_leavesublv"
.LASF885:
	.string	"S_do_maybe_phash"
.LASF859:
	.string	"keylen"
.LASF964:
	.string	"PL_tainted"
.LASF614:
	.string	"OP_GPWNAM"
.LASF898:
	.string	"elem"
.LASF748:
	.string	"log_amg"
.LASF202:
	.string	"xcv_gv"
.LASF477:
	.string	"OP_UNTIE"
.LASF378:
	.string	"OP_SIN"
.LASF695:
	.string	"regexec_t"
.LASF685:
	.string	"si_next"
.LASF565:
	.string	"OP_KILL"
.LASF804:
	.string	"mark"
.LASF809:
	.string	"had_magic"
.LASF148:
	.string	"xpv_cur"
.LASF305:
	.string	"OP_READLINE"
.LASF318:
	.string	"OP_SCHOP"
.LASF141:
	.string	"mg_type"
.LASF551:
	.string	"OP_READLINK"
.LASF442:
	.string	"OP_ANDASSIGN"
.LASF40:
	.string	"st_blksize"
.LASF164:
	.string	"xpvlv"
.LASF147:
	.string	"xpv_pv"
.LASF816:
	.string	"gimme"
.LASF983:
	.string	"opcode"
.LASF444:
	.string	"OP_METHOD"
.LASF917:
	.string	"PL_no_usym"
.LASF824:
	.string	"firstrelem"
.LASF321:
	.string	"OP_DEFINED"
.LASF160:
	.string	"xpvmg"
.LASF669:
	.string	"sbu_dstr"
.LASF730:
	.string	"eq_amg"
.LASF36:
	.string	"st_gid"
.LASF559:
	.string	"OP_CLOSEDIR"
.LASF780:
	.string	"Perl_pp_unstack"
.LASF586:
	.string	"OP_SEMCTL"
.LASF462:
	.string	"OP_LEAVELOOP"
.LASF553:
	.string	"OP_RMDIR"
.LASF72:
	.string	"op_other"
.LASF492:
	.string	"OP_SYSWRITE"
.LASF274:
	.string	"cv_flags_t"
.LASF121:
	.string	"gp_line"
.LASF623:
	.string	"OP_EGRENT"
.LASF815:
	.string	"Perl_pp_rv2hv"
.LASF661:
	.string	"subst"
.LASF19:
	.string	"__syscall_slong_t"
.LASF216:
	.string	"xio_page_len"
.LASF320:
	.string	"OP_SCHOMP"
.LASF727:
	.string	"le_amg"
.LASF856:
	.string	"preeminent"
.LASF486:
	.string	"OP_LEAVEWRITE"
.LASF33:
	.string	"st_nlink"
.LASF365:
	.string	"OP_SLE"
.LASF157:
	.string	"xpvnv"
.LASF190:
	.string	"xgv_gp"
.LASF485:
	.string	"OP_ENTERWRITE"
.LASF837:
	.string	"truebase"
.LASF884:
	.string	"temporise_array"
.LASF363:
	.string	"OP_SLT"
.LASF419:
	.string	"OP_JOIN"
.LASF140:
	.string	"mg_private"
.LASF835:
	.string	"global"
.LASF319:
	.string	"OP_CHOMP"
.LASF44:
	.string	"st_ctim"
.LASF757:
	.string	"to_av_amg"
.LASF914:
	.string	"Perl_ref"
.LASF668:
	.string	"sbu_orig"
.LASF412:
	.string	"OP_EXISTS"
.LASF176:
	.string	"xav_arylen"
.LASF110:
	.string	"program"
.LASF199:
	.string	"xcv_root"
.LASF641:
	.string	"old_in_eval"
.LASF689:
	.string	"hent_hek"
.LASF941:
	.string	"PL_encoding"
.LASF139:
	.string	"mg_virtual"
.LASF461:
	.string	"OP_ENTERLOOP"
.LASF280:
	.string	"OP_STUB"
.LASF167:
	.string	"xlv_targ"
.LASF747:
	.string	"exp_amg"
.LASF830:
	.string	"normal_array"
.LASF926:
	.string	"PL_statusvalue"
.LASF754:
	.string	"copy_amg"
.LASF895:
	.string	"padlist"
.LASF896:
	.string	"Perl_pp_aelem"
.LASF59:
	.string	"cop_seq"
.LASF471:
	.string	"OP_CLOSE"
.LASF368:
	.string	"OP_SNE"
.LASF91:
	.string	"sv_flags"
.LASF834:
	.string	"strend"
.LASF720:
	.string	"band_amg"
.LASF575:
	.string	"OP_ALARM"
.LASF356:
	.string	"OP_I_GE"
.LASF702:
	.string	"string_amg"
.LASF352:
	.string	"OP_I_GT"
.LASF88:
	.string	"broiled"
.LASF221:
	.string	"xio_fmt_gv"
.LASF42:
	.string	"st_atim"
.LASF888:
	.string	"Perl_pp_entersub"
.LASF476:
	.string	"OP_TIE"
.LASF309:
	.string	"OP_REGCOMP"
.LASF120:
	.string	"gp_flags"
.LASF126:
	.string	"cx_u"
.LASF317:
	.string	"OP_CHOP"
.LASF871:
	.string	"maxiters"
.LASF112:
	.string	"gp_refcnt"
.LASF652:
	.string	"itervar"
.LASF106:
	.string	"nparens"
.LASF591:
	.string	"OP_LEAVEEVAL"
.LASF254:
	.string	"type"
.LASF480:
	.string	"OP_DBMCLOSE"
.LASF909:
	.string	"packname"
.LASF334:
	.string	"OP_MULTIPLY"
.LASF443:
	.string	"OP_ORASSIGN"
.LASF8:
	.string	"__uid_t"
.LASF509:
	.string	"OP_GSOCKOPT"
.LASF215:
	.string	"xio_page"
.LASF607:
	.string	"OP_SNETENT"
.LASF934:
	.string	"PL_euid"
.LASF449:
	.string	"OP_WARN"
.LASF577:
	.string	"OP_SHMGET"
.LASF385:
	.string	"OP_INT"
.LASF599:
	.string	"OP_GNETENT"
.LASF566:
	.string	"OP_GETPPID"
.LASF977:
	.string	"PL_reg_match_utf8"
.LASF389:
	.string	"OP_LENGTH"
.LASF310:
	.string	"OP_MATCH"
.LASF205:
	.string	"xcv_padlist"
.LASF893:
	.string	"sub_name"
.LASF903:
	.string	"Perl_pp_method_named"
.LASF534:
	.string	"OP_FTPIPE"
.LASF826:
	.string	"Perl_pp_aassign"
.LASF463:
	.string	"OP_RETURN"
.LASF660:
	.string	"blku_loop"
.LASF890:
	.string	"try_autoload"
.LASF701:
	.string	"nomethod_amg"
.LASF373:
	.string	"OP_NEGATE"
.LASF111:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF430:
	.string	"OP_REVERSE"
.LASF818:
	.string	"firstlelem"
.LASF846:
	.string	"ret_no"
.LASF793:
	.string	"buvok"
.LASF612:
	.string	"OP_EPROTOENT"
.LASF388:
	.string	"OP_ABS"
.LASF252:
	.string	"PerlIO"
.LASF671:
	.string	"sbu_s"
.LASF17:
	.string	"__blkcnt_t"
.LASF602:
	.string	"OP_GPROTOENT"
.LASF923:
	.string	"PL_sawampersand"
.LASF861:
	.string	"newsp"
.LASF865:
	.string	"itersvp"
.LASF694:
	.string	"float"
.LASF971:
	.string	"PL_delaymagic"
.LASF904:
	.string	"S_method_common"
.LASF653:
	.string	"itersave"
.LASF910:
	.string	"packsv"
.LASF900:
	.string	"Perl_vivify_ref"
.LASF874:
	.string	"force_on_match"
.LASF48:
	.string	"op_next"
.LASF154:
	.string	"xpvuv"
.LASF89:
	.string	"sv_any"
.LASF423:
	.string	"OP_ANONHASH"
.LASF354:
	.string	"OP_I_LE"
.LASF622:
	.string	"OP_SGRENT"
.LASF640:
	.string	"block_eval"
.LASF350:
	.string	"OP_I_LT"
.LASF734:
	.string	"slt_amg"
.LASF441:
	.string	"OP_COND_EXPR"
.LASF535:
	.string	"OP_FTLINK"
.LASF109:
	.string	"reganch"
.LASF245:
	.string	"stashes"
.LASF469:
	.string	"OP_EXIT"
.LASF95:
	.string	"endp"
.LASF341:
	.string	"OP_ADD"
.LASF585:
	.string	"OP_SEMGET"
.LASF312:
	.string	"OP_SUBST"
.LASF435:
	.string	"OP_RANGE"
.LASF281:
	.string	"OP_SCALAR"
.LASF879:
	.string	"items"
.LASF608:
	.string	"OP_SPROTOENT"
.LASF583:
	.string	"OP_MSGSND"
.LASF11:
	.string	"__mode_t"
.LASF836:
	.string	"r_flags"
.LASF875:
	.string	"slen"
.LASF408:
	.string	"OP_EACH"
.LASF580:
	.string	"OP_SHMWRITE"
.LASF409:
	.string	"OP_VALUES"
.LASF431:
	.string	"OP_GREPSTART"
.LASF24:
	.string	"size_t"
.LASF298:
	.string	"OP_PROTOTYPE"
.LASF863:
	.string	"Perl_pp_iter"
.LASF166:
	.string	"xlv_targlen"
.LASF360:
	.string	"OP_I_NE"
.LASF935:
	.string	"PL_gid"
.LASF951:
	.string	"PL_savestack_ix"
.LASF303:
	.string	"OP_BACKTICK"
.LASF864:
	.string	"oldsv"
.LASF552:
	.string	"OP_MKDIR"
.LASF927:
	.string	"PL_defgv"
.LASF271:
	.string	"SVt_PVGV"
.LASF659:
	.string	"blku_eval"
.LASF899:
	.string	"Perl_sub_crush_depth"
.LASF102:
	.string	"sublen"
.LASF798:
	.string	"useleft"
.LASF457:
	.string	"OP_LEAVE"
.LASF172:
	.string	"xav_fill"
.LASF543:
	.string	"OP_CHOWN"
.LASF569:
	.string	"OP_GETPRIORITY"
.LASF650:
	.string	"next_op"
.LASF517:
	.string	"OP_FTREXEC"
.LASF138:
	.string	"mg_moremagic"
.LASF548:
	.string	"OP_RENAME"
.LASF673:
	.string	"sbu_strend"
.LASF60:
	.string	"cop_arybase"
.LASF958:
	.string	"PL_markstack_ptr"
.LASF391:
	.string	"OP_VEC"
.LASF682:
	.string	"si_cxmax"
.LASF484:
	.string	"OP_READ"
.LASF452:
	.string	"OP_LINESEQ"
.LASF144:
	.string	"mg_ptr"
.LASF478:
	.string	"OP_TIED"
.LASF329:
	.string	"OP_POSTINC"
.LASF797:
	.string	"Perl_pp_add"
.LASF657:
	.string	"itermax"
.LASF416:
	.string	"OP_UNPACK"
.LASF573:
	.string	"OP_LOCALTIME"
.LASF224:
	.string	"xio_subprocess"
.LASF532:
	.string	"OP_FTFILE"
.LASF100:
	.string	"subbeg"
.LASF94:
	.string	"startp"
.LASF776:
	.string	"right"
.LASF758:
	.string	"to_hv_amg"
.LASF619:
	.string	"OP_GGRNAM"
.LASF913:
	.string	"iogv"
.LASF980:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF343:
	.string	"OP_SUBTRACT"
.LASF781:
	.string	"oldsave"
.LASF697:
	.string	"re_scream_pos_data_s"
.LASF519:
	.string	"OP_FTEWRITE"
.LASF901:
	.string	"to_what"
.LASF759:
	.string	"to_gv_amg"
.LASF545:
	.string	"OP_UNLINK"
.LASF803:
	.string	"Perl_pp_join"
.LASF93:
	.string	"regexp"
.LASF628:
	.string	"OP_SETSTATE"
.LASF465:
	.string	"OP_NEXT"
.LASF500:
	.string	"OP_IOCTL"
.LASF870:
	.string	"iters"
.LASF92:
	.string	"REGEXP"
.LASF90:
	.string	"sv_refcnt"
.LASF894:
	.string	"markix"
.LASF460:
	.string	"OP_ITER"
.LASF537:
	.string	"OP_FTSGID"
.LASF292:
	.string	"OP_PUSHRE"
.LASF290:
	.string	"OP_PADHV"
.LASF560:
	.string	"OP_FORK"
.LASF231:
	.string	"svt_len"
.LASF832:
	.string	"Perl_pp_match"
.LASF764:
	.string	"max_amg_code"
.LASF255:
	.string	"next_off"
.LASF454:
	.string	"OP_DBSTATE"
.LASF54:
	.string	"op_flags"
.LASF45:
	.string	"__unused"
.LASF62:
	.string	"cop_warnings"
.LASF687:
	.string	"PERL_SI"
.LASF807:
	.string	"origmark"
.LASF97:
	.string	"substrs"
.LASF615:
	.string	"OP_GPWUID"
.LASF323:
	.string	"OP_STUDY"
.LASF390:
	.string	"OP_SUBSTR"
.LASF132:
	.string	"blku_oldscopesp"
.LASF268:
	.string	"SVt_PVAV"
.LASF596:
	.string	"OP_GHOSTENT"
.LASF681:
	.string	"si_cxix"
.LASF912:
	.string	"fetch"
.LASF180:
	.string	"xhv_array"
.LASF598:
	.string	"OP_GNBYADDR"
.LASF715:
	.string	"pow_ass_amg"
.LASF821:
	.string	"leftop"
.LASF101:
	.string	"offsets"
.LASF738:
	.string	"seq_amg"
.LASF424:
	.string	"OP_SPLICE"
.LASF877:
	.string	"force_it"
.LASF943:
	.string	"PL_stack_sp"
.LASF369:
	.string	"OP_SCMP"
.LASF556:
	.string	"OP_TELLDIR"
.LASF222:
	.string	"xio_bottom_name"
.LASF370:
	.string	"OP_BIT_AND"
.LASF881:
	.string	"fill"
.LASF266:
	.string	"SVt_PVBM"
.LASF841:
	.string	"had_zerolen"
.LASF12:
	.string	"__nlink_t"
.LASF698:
	.string	"fallback_amg"
.LASF937:
	.string	"PL_sv_undef"
.LASF32:
	.string	"st_ino"
.LASF34:
	.string	"st_mode"
.LASF136:
	.string	"MAGIC"
.LASF56:
	.string	"cop_label"
.LASF142:
	.string	"mg_flags"
.LASF645:
	.string	"cur_text"
.LASF169:
	.string	"XPVAV"
.LASF84:
	.string	"svop"
.LASF820:
	.string	"lastrelem"
.LASF270:
	.string	"SVt_PVCV"
.LASF326:
	.string	"OP_I_PREINC"
.LASF105:
	.string	"prelen"
.LASF970:
	.string	"PL_curcop"
.LASF432:
	.string	"OP_GREPWHILE"
.LASF466:
	.string	"OP_REDO"
.LASF51:
	.string	"op_targ"
.LASF794:
	.string	"value"
.LASF325:
	.string	"OP_PREINC"
.LASF223:
	.string	"xio_bottom_gv"
.LASF322:
	.string	"OP_UNDEF"
.LASF375:
	.string	"OP_NOT"
.LASF473:
	.string	"OP_FILENO"
.LASF131:
	.string	"blku_oldmarksp"
.LASF438:
	.string	"OP_AND"
.LASF590:
	.string	"OP_ENTEREVAL"
.LASF107:
	.string	"lastparen"
.LASF855:
	.string	"defer"
.LASF959:
	.string	"PL_markstack_max"
.LASF723:
	.string	"bor_ass_amg"
.LASF195:
	.string	"XPVCV"
.LASF928:
	.string	"PL_DBsub"
.LASF655:
	.string	"iterary"
.LASF952:
	.string	"PL_savestack_max"
.LASF372:
	.string	"OP_BIT_OR"
.LASF507:
	.string	"OP_ACCEPT"
.LASF840:
	.string	"update_minmatch"
.LASF945:
	.string	"PL_curpad"
.LASF479:
	.string	"OP_DBMOPEN"
.LASF624:
	.string	"OP_GETLOGIN"
.LASF18:
	.string	"__ssize_t"
.LASF257:
	.string	"reg_data"
.LASF220:
	.string	"xio_fmt_name"
.LASF800:
	.string	"result_good"
.LASF690:
	.string	"hent_val"
.LASF455:
	.string	"OP_UNSTACK"
.LASF158:
	.string	"xnv_nv"
.LASF29:
	.string	"timespec"
.LASF688:
	.string	"hent_next"
.LASF497:
	.string	"OP_SEEK"
.LASF718:
	.string	"rshift_amg"
.LASF168:
	.string	"xlv_type"
.LASF233:
	.string	"svt_free"
.LASF81:
	.string	"op_pmdynflags"
.LASF761:
	.string	"iter_amg"
.LASF839:
	.string	"minmatch"
.LASF736:
	.string	"sgt_amg"
.LASF272:
	.string	"SVt_PVFM"
.LASF427:
	.string	"OP_SHIFT"
.LASF921:
	.string	"PL_no_localize_ref"
.LASF453:
	.string	"OP_NEXTSTATE"
.LASF244:
	.string	"clone_params"
.LASF784:
	.string	"llen"
.LASF621:
	.string	"OP_GGRENT"
.LASF725:
	.string	"bxor_ass_amg"
.LASF362:
	.string	"OP_I_NCMP"
.LASF340:
	.string	"OP_REPEAT"
.LASF400:
	.string	"OP_LCFIRST"
.LASF539:
	.string	"OP_FTTTY"
.LASF819:
	.string	"relem"
.LASF345:
	.string	"OP_CONCAT"
.LASF35:
	.string	"st_uid"
.LASF672:
	.string	"sbu_m"
.LASF206:
	.string	"xcv_outside"
.LASF277:
	.string	"PADLIST"
.LASF788:
	.string	"rcopied"
.LASF242:
	.string	"any_dxptr"
.LASF955:
	.string	"PL_tmps_floor"
.LASF428:
	.string	"OP_UNSHIFT"
.LASF194:
	.string	"xgv_flags"
.LASF137:
	.string	"magic"
.LASF774:
	.string	"Perl_pp_and"
.LASF571:
	.string	"OP_TIME"
.LASF520:
	.string	"OP_FTEEXEC"
.LASF939:
	.string	"PL_sv_yes"
.LASF617:
	.string	"OP_SPWENT"
.LASF801:
	.string	"result"
.LASF522:
	.string	"OP_FTEOWNED"
.LASF337:
	.string	"OP_I_DIVIDE"
.LASF358:
	.string	"OP_I_EQ"
.LASF930:
	.string	"PL_tainting"
.LASF775:
	.string	"Perl_pp_sassign"
.LASF269:
	.string	"SVt_PVHV"
.LASF258:
	.string	"SVt_NULL"
.LASF588:
	.string	"OP_REQUIRE"
.LASF228:
	.string	"mgvtbl"
.LASF304:
	.string	"OP_GLOB"
.LASF557:
	.string	"OP_SEEKDIR"
.LASF929:
	.string	"PL_sub_generation"
.LASF188:
	.string	"XPVGV"
.LASF487:
	.string	"OP_PRTF"
.LASF675:
	.string	"sbu_rx"
.LASF227:
	.string	"MGVTBL"
.LASF597:
	.string	"OP_GNBYNAME"
.LASF677:
	.string	"cx_subst"
.LASF676:
	.string	"cx_blk"
.LASF273:
	.string	"SVt_PVIO"
.LASF15:
	.string	"__time_t"
.LASF263:
	.string	"SVt_PVIV"
.LASF383:
	.string	"OP_LOG"
.LASF103:
	.string	"refcnt"
.LASF905:
	.string	"meth"
.LASF330:
	.string	"OP_I_POSTINC"
.LASF886:
	.string	"S_get_db_sub"
.LASF760:
	.string	"to_cv_amg"
.LASF667:
	.string	"sbu_rxtainted"
.LASF549:
	.string	"OP_LINK"
.LASF433:
	.string	"OP_MAPSTART"
.LASF729:
	.string	"ge_amg"
.LASF178:
	.string	"XPVHV"
.LASF14:
	.string	"sizetype"
.LASF817:
	.string	"lelem"
.LASF357:
	.string	"OP_EQ"
.LASF284:
	.string	"OP_CONST"
.LASF77:
	.string	"op_pmnext"
.LASF173:
	.string	"xav_max"
.LASF505:
	.string	"OP_CONNECT"
.LASF200:
	.string	"xcv_xsub"
.LASF572:
	.string	"OP_TMS"
.LASF637:
	.string	"hasargs"
.LASF447:
	.string	"OP_LEAVESUBLV"
.LASF511:
	.string	"OP_GETSOCKNAME"
.LASF55:
	.string	"op_private"
.LASF287:
	.string	"OP_GELEM"
.LASF397:
	.string	"OP_CHR"
.LASF743:
	.string	"dec_amg"
.LASF868:
	.string	"dstr"
.LASF961:
	.string	"PL_Sv"
.LASF813:
	.string	"wasref"
.LASF236:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF827:
	.string	"lastlelem"
.LASF4:
	.string	"signed char"
.LASF946:
	.string	"PL_stack_base"
.LASF346:
	.string	"OP_STRINGIFY"
.LASF848:
	.string	"tmplen"
.LASF564:
	.string	"OP_EXEC"
.LASF344:
	.string	"OP_I_SUBTRACT"
.LASF209:
	.string	"XPVIO"
.LASF16:
	.string	"__blksize_t"
.LASF852:
	.string	"Perl_pp_enter"
.LASF150:
	.string	"XPVIV"
.LASF175:
	.string	"xav_alloc"
.LASF285:
	.string	"OP_GVSV"
.LASF665:
	.string	"sbu_oldsave"
.LASF182:
	.string	"xhv_max"
.LASF104:
	.string	"minlen"
.LASF316:
	.string	"OP_AASSIGN"
.LASF805:
	.string	"Perl_pp_pushre"
.LASF490:
	.string	"OP_SYSSEEK"
.LASF696:
	.string	"re_intuit_start_t"
.LASF162:
	.string	"xmg_stash"
.LASF587:
	.string	"OP_SEMOP"
.LASF664:
	.string	"sbu_rflags"
.LASF857:
	.string	"stash"
.LASF770:
	.string	"Perl_pp_pushmark"
.LASF96:
	.string	"regstclass"
.LASF355:
	.string	"OP_GE"
.LASF185:
	.string	"xhv_eiter"
.LASF421:
	.string	"OP_LSLICE"
.LASF873:
	.string	"orig"
.LASF351:
	.string	"OP_GT"
.LASF286:
	.string	"OP_GV"
.LASF513:
	.string	"OP_LSTAT"
.LASF482:
	.string	"OP_SELECT"
.LASF576:
	.string	"OP_SLEEP"
.LASF267:
	.string	"SVt_PVLV"
.LASF256:
	.string	"reg_substr_data"
.LASF735:
	.string	"sle_amg"
.LASF638:
	.string	"lval"
.LASF634:
	.string	"savearray"
.LASF654:
	.string	"iterlval"
.LASF658:
	.string	"blku_sub"
.LASF704:
	.string	"add_amg"
.LASF283:
	.string	"OP_WANTARRAY"
.LASF947:
	.string	"PL_stack_max"
.LASF348:
	.string	"OP_RIGHT_SHIFT"
.LASF603:
	.string	"OP_GSBYNAME"
.LASF135:
	.string	"blk_u"
.LASF265:
	.string	"SVt_PVMG"
.LASF174:
	.string	"xof_off"
.LASF902:
	.string	"Perl_pp_method"
.LASF570:
	.string	"OP_SETPRIORITY"
.LASF810:
	.string	"just_say_no"
.LASF707:
	.string	"subtr_ass_amg"
.LASF620:
	.string	"OP_GGRGID"
.LASF192:
	.string	"xgv_namelen"
.LASF67:
	.string	"op_last"
.LASF289:
	.string	"OP_PADAV"
.LASF250:
	.string	"__dirstream"
.LASF417:
	.string	"OP_PACK"
.LASF239:
	.string	"any_long"
.LASF163:
	.string	"XPVLV"
.LASF470:
	.string	"OP_OPEN"
.LASF954:
	.string	"PL_tmps_ix"
.LASF53:
	.string	"op_seq"
.LASF740:
	.string	"not_amg"
.LASF972:
	.string	"PL_curstack"
.LASF601:
	.string	"OP_GPBYNUMBER"
.LASF785:
	.string	"lbyte"
.LASF165:
	.string	"xlv_targoff"
.LASF64:
	.string	"BINOP"
.LASF264:
	.string	"SVt_PVNV"
.LASF73:
	.string	"PMOP"
.LASF404:
	.string	"OP_RV2AV"
.LASF488:
	.string	"OP_PRINT"
.LASF493:
	.string	"OP_SEND"
.LASF531:
	.string	"OP_FTBLK"
.LASF108:
	.string	"lastcloseparen"
.LASF159:
	.string	"XPVMG"
.LASF699:
	.string	"abs_amg"
.LASF544:
	.string	"OP_CHROOT"
.LASF944:
	.string	"PL_op"
.LASF225:
	.string	"xio_type"
.LASF518:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF232:
	.string	"svt_clear"
.LASF212:
	.string	"xio_ofp"
.LASF193:
	.string	"xgv_stash"
.LASF387:
	.string	"OP_OCT"
.LASF769:
	.string	"Perl_pp_setstate"
.LASF867:
	.string	"Perl_pp_subst"
.LASF642:
	.string	"old_op_type"
.LASF342:
	.string	"OP_I_ADD"
.LASF75:
	.string	"op_pmreplroot"
.LASF979:
	.string	"PL_sv_placeholder"
.LASF843:
	.string	"play_it_again"
.LASF204:
	.string	"xcv_depth"
.LASF908:
	.string	"namelen"
.LASF119:
	.string	"gp_cvgen"
.LASF156:
	.string	"XPVNV"
.LASF796:
	.string	"Perl_pp_or"
.LASF184:
	.string	"xhv_riter"
.LASF134:
	.string	"blku_gimme"
.LASF647:
	.string	"label"
.LASF850:
	.string	"have_fp"
.LASF296:
	.string	"OP_RV2CV"
.LASF124:
	.string	"context"
.LASF633:
	.string	"dfoutgv"
.LASF733:
	.string	"scmp_amg"
.LASF530:
	.string	"OP_FTCHR"
.LASF938:
	.string	"PL_sv_no"
.LASF931:
	.string	"PL_curcopdb"
.LASF429:
	.string	"OP_SORT"
.LASF402:
	.string	"OP_LC"
.LASF353:
	.string	"OP_LE"
.LASF822:
	.string	"tmpstr"
.LASF604:
	.string	"OP_GSBYPORT"
.LASF76:
	.string	"op_pmreplstart"
.LASF630:
	.string	"OP_CUSTOM"
.LASF349:
	.string	"OP_LT"
.LASF371:
	.string	"OP_BIT_XOR"
.LASF976:
	.string	"PL_regint_start"
.LASF450:
	.string	"OP_DIE"
.LASF313:
	.string	"OP_SUBSTCONT"
.LASF949:
	.string	"PL_scopestack_ix"
.LASF259:
	.string	"SVt_IV"
.LASF335:
	.string	"OP_I_MULTIPLY"
.LASF253:
	.string	"regnode"
.LASF708:
	.string	"mult_amg"
.LASF379:
	.string	"OP_COS"
.LASF889:
	.string	"got_rv"
.LASF49:
	.string	"op_sibling"
.LASF213:
	.string	"xio_dirpu"
.LASF238:
	.string	"any_iv"
.LASF406:
	.string	"OP_AELEM"
.LASF779:
	.string	"Perl_pp_cond_expr"
.LASF966:
	.string	"PL_rs"
.LASF916:
	.string	"PL_no_symref"
.LASF186:
	.string	"xhv_pmroot"
.LASF717:
	.string	"lshift_ass_amg"
.LASF376:
	.string	"OP_COMPLEMENT"
.LASF451:
	.string	"OP_RESET"
.LASF924:
	.string	"PL_perldb"
.LASF3:
	.string	"long unsigned int"
.LASF74:
	.string	"pmop"
.LASF528:
	.string	"OP_FTCTIME"
.LASF434:
	.string	"OP_MAPWHILE"
.LASF526:
	.string	"OP_FTMTIME"
.LASF418:
	.string	"OP_SPLIT"
.LASF666:
	.string	"sbu_once"
.LASF374:
	.string	"OP_I_NEGATE"
.LASF555:
	.string	"OP_READDIR"
.LASF762:
	.string	"int_amg"
.LASF86:
	.string	"PerlInterpreter"
.LASF703:
	.string	"numer_amg"
.LASF712:
	.string	"modulo_amg"
.LASF359:
	.string	"OP_NE"
.LASF749:
	.string	"sqrt_amg"
.LASF752:
	.string	"concat_amg"
.LASF595:
	.string	"OP_GHBYADDR"
.LASF705:
	.string	"add_ass_amg"
.LASF802:
	.string	"Perl_pp_aelemfast"
.LASF20:
	.string	"char"
.LASF812:
	.string	"Perl_pp_rv2av"
.LASF440:
	.string	"OP_XOR"
.LASF515:
	.string	"OP_FTRREAD"
.LASF635:
	.string	"argarray"
.LASF65:
	.string	"binop"
.LASF724:
	.string	"bxor_amg"
.LASF218:
	.string	"xio_top_name"
.LASF563:
	.string	"OP_SYSTEM"
.LASF967:
	.string	"PL_last_in_gv"
.LASF145:
	.string	"mg_len"
.LASF489:
	.string	"OP_SYSOPEN"
.LASF275:
	.string	"xiou_dirp"
.LASF950:
	.string	"PL_savestack"
.LASF191:
	.string	"xgv_name"
.LASF306:
	.string	"OP_RCATLINE"
.LASF439:
	.string	"OP_OR"
.LASF331:
	.string	"OP_POSTDEC"
.LASF984:
	.string	"S_do_oddball"
.LASF711:
	.string	"div_ass_amg"
.LASF632:
	.string	"block_sub"
.LASF7:
	.string	"__dev_t"
.LASF499:
	.string	"OP_FCNTL"
.LASF524:
	.string	"OP_FTZERO"
.LASF293:
	.string	"OP_RV2GV"
.LASF420:
	.string	"OP_LIST"
.LASF883:
	.string	"temporise"
.LASF214:
	.string	"xio_lines"
.LASF854:
	.string	"keysv"
.LASF823:
	.string	"hash"
.LASF521:
	.string	"OP_FTIS"
.LASF680:
	.string	"si_cxstack"
.LASF279:
	.string	"OP_NULL"
.LASF149:
	.string	"xpv_len"
.LASF845:
	.string	"gotcha"
.LASF963:
	.string	"PL_statbuf"
.LASF52:
	.string	"op_type"
.LASF413:
	.string	"OP_RV2HV"
.LASF897:
	.string	"elemsv"
.LASF47:
	.string	"STRLEN"
.LASF920:
	.string	"PL_no_modify"
.LASF536:
	.string	"OP_FTSUID"
.LASF853:
	.string	"Perl_pp_helem"
.LASF311:
	.string	"OP_QR"
.LASF915:
	.string	"leaf"
.LASF395:
	.string	"OP_FORMLINE"
.LASF643:
	.string	"old_namesv"
.LASF562:
	.string	"OP_WAITPID"
.LASF260:
	.string	"SVt_NV"
.LASF392:
	.string	"OP_INDEX"
.LASF876:
	.string	"doutf8"
.LASF380:
	.string	"OP_RAND"
.LASF393:
	.string	"OP_RINDEX"
.LASF693:
	.string	"hek_key"
.LASF610:
	.string	"OP_EHOSTENT"
.LASF339:
	.string	"OP_I_MODULO"
.LASF763:
	.string	"DESTROY_amg"
.LASF203:
	.string	"xcv_file"
.LASF153:
	.string	"XPVUV"
.LASF37:
	.string	"__pad0"
.LASF975:
	.string	"PL_regexecp"
.LASF247:
	.string	"proto_perl"
.LASF644:
	.string	"old_eval_root"
.LASF415:
	.string	"OP_HSLICE"
.LASF338:
	.string	"OP_MODULO"
.LASF85:
	.string	"op_sv"
.LASF579:
	.string	"OP_SHMREAD"
.LASF842:
	.string	"failure"
.LASF533:
	.string	"OP_FTDIR"
.LASF609:
	.string	"OP_SSERVENT"
.LASF766:
	.string	"Perl_pp_gvsv"
.LASF744:
	.string	"atan2_amg"
.LASF869:
	.string	"clen"
.LASF767:
	.string	"Perl_pp_nextstate"
.LASF278:
	.string	"PADOFFSET"
.LASF791:
	.string	"Perl_pp_eq"
.LASF79:
	.string	"op_pmflags"
.LASF713:
	.string	"modulo_ass_amg"
.LASF155:
	.string	"xuv_uv"
.LASF87:
	.string	"interpreter"
.LASF133:
	.string	"blku_oldpm"
.LASF925:
	.string	"PL_multiline"
.LASF737:
	.string	"sge_amg"
.LASF66:
	.string	"op_first"
.LASF46:
	.string	"double"
.LASF969:
	.string	"PL_defoutgv"
.LASF768:
	.string	"Perl_pp_null"
.LASF80:
	.string	"op_pmpermflags"
.LASF146:
	.string	"xrv_rv"
.LASF38:
	.string	"st_rdev"
.LASF942:
	.string	"PL_stashcache"
.LASF31:
	.string	"st_dev"
.LASF23:
	.string	"ssize_t"
.LASF50:
	.string	"op_ppaddr"
.LASF627:
	.string	"OP_THREADSV"
.LASF741:
	.string	"compl_amg"
.LASF237:
	.string	"any_i32"
.LASF742:
	.string	"inc_amg"
.LASF755:
	.string	"neg_amg"
.LASF932:
	.string	"PL_ors_sv"
.LASF262:
	.string	"SVt_PV"
.LASF58:
	.string	"cop_filegv"
.LASF240:
	.string	"any_bool"
.LASF425:
	.string	"OP_PUSH"
.LASF948:
	.string	"PL_scopestack"
.LASF401:
	.string	"OP_UC"
.LASF208:
	.string	"xcv_outside_seq"
.LASF328:
	.string	"OP_I_PREDEC"
.LASF99:
	.string	"data"
.LASF504:
	.string	"OP_BIND"
.LASF611:
	.string	"OP_ENETENT"
.LASF558:
	.string	"OP_REWINDDIR"
.LASF683:
	.string	"si_type"
.LASF773:
	.string	"Perl_pp_gv"
.LASF171:
	.string	"xav_array"
.LASF261:
	.string	"SVt_RV"
.LASF922:
	.string	"PL_dowarn"
.LASF243:
	.string	"CLONE_PARAMS"
.LASF458:
	.string	"OP_SCOPE"
.LASF790:
	.string	"Perl_pp_readline"
.LASF594:
	.string	"OP_GHBYNAME"
.LASF327:
	.string	"OP_PREDEC"
.LASF811:
	.string	"markoff"
.LASF648:
	.string	"resetsp"
.LASF123:
	.string	"PERL_CONTEXT"
.LASF786:
	.string	"rlen"
.LASF181:
	.string	"xhv_fill"
.LASF152:
	.string	"xiv_iv"
.LASF981:
	.string	"pp_hot.c"
.LASF777:
	.string	"left"
.LASF128:
	.string	"blku_oldsp"
.LASF716:
	.string	"lshift_amg"
.LASF828:
	.string	"duplicates"
.LASF561:
	.string	"OP_WAIT"
.LASF467:
	.string	"OP_DUMP"
.LASF750:
	.string	"repeat_amg"
.LASF9:
	.string	"__gid_t"
.LASF315:
	.string	"OP_SASSIGN"
.LASF709:
	.string	"mult_ass_amg"
.LASF649:
	.string	"redo_op"
.LASF880:
	.string	"Perl_pp_leavesub"
.LASF405:
	.string	"OP_AELEMFAST"
.LASF692:
	.string	"hek_len"
.LASF860:
	.string	"Perl_pp_leave"
.LASF399:
	.string	"OP_UCFIRST"
.LASF550:
	.string	"OP_SYMLINK"
.LASF384:
	.string	"OP_SQRT"
.LASF582:
	.string	"OP_MSGCTL"
.LASF891:
	.string	"retry"
.LASF25:
	.string	"tv_sec"
.LASF878:
	.string	"Perl_pp_grepwhile"
.LASF525:
	.string	"OP_FTSIZE"
.LASF27:
	.string	"long long unsigned int"
.LASF849:
	.string	"offset"
.LASF726:
	.string	"lt_amg"
.LASF495:
	.string	"OP_EOF"
.LASF651:
	.string	"last_op"
.LASF22:
	.string	"uid_t"
.LASF541:
	.string	"OP_FTBINARY"
.LASF514:
	.string	"OP_STAT"
.LASF414:
	.string	"OP_HELEM"
.LASF41:
	.string	"st_blocks"
.LASF291:
	.string	"OP_PADANY"
.LASF295:
	.string	"OP_AV2ARYLEN"
.LASF501:
	.string	"OP_FLOCK"
.LASF936:
	.string	"PL_egid"
.LASF396:
	.string	"OP_ORD"
.LASF235:
	.string	"svt_dup"
.LASF686:
	.string	"si_markoff"
.LASF282:
	.string	"OP_PUSHMARK"
.LASF778:
	.string	"temp"
.LASF589:
	.string	"OP_DOFILE"
.LASF219:
	.string	"xio_top_gv"
.LASF710:
	.string	"div_amg"
.LASF866:
	.string	"maxlen"
.LASF953:
	.string	"PL_tmps_stack"
.LASF940:
	.string	"PL_amagic_generation"
.LASF411:
	.string	"OP_DELETE"
.LASF706:
	.string	"subtr_amg"
.LASF956:
	.string	"PL_tmps_max"
.LASF674:
	.string	"sbu_rxres"
.LASF973:
	.string	"PL_curstackinfo"
.LASF887:
	.string	"dbsv"
.LASF446:
	.string	"OP_LEAVESUB"
.LASF918:
	.string	"PL_no_aelem"
.LASF288:
	.string	"OP_PADSV"
.LASF300:
	.string	"OP_SREFGEN"
.LASF468:
	.string	"OP_GOTO"
.LASF907:
	.string	"name"
.LASF82:
	.string	"op_pmstash"
.LASF229:
	.string	"svt_get"
.LASF114:
	.string	"gp_form"
.LASF332:
	.string	"OP_I_POSTDEC"
.LASF795:
	.string	"Perl_pp_preinc"
.LASF294:
	.string	"OP_RV2SV"
.LASF129:
	.string	"blku_oldcop"
.LASF789:
	.string	"Perl_pp_padsv"
.LASF57:
	.string	"cop_stash"
.LASF302:
	.string	"OP_BLESS"
.LASF787:
	.string	"rbyte"
.LASF574:
	.string	"OP_GMTIME"
.LASF862:
	.string	"newpm"
.LASF28:
	.string	"long long int"
.LASF248:
	.string	"line_t"
.LASF844:
	.string	"nope"
.LASF187:
	.string	"xhv_name"
.LASF540:
	.string	"OP_FTTEXT"
.LASF731:
	.string	"ne_amg"
.LASF679:
	.string	"si_stack"
.LASF527:
	.string	"OP_FTATIME"
.LASF234:
	.string	"svt_copy"
.LASF426:
	.string	"OP_POP"
.LASF324:
	.string	"OP_POS"
.LASF333:
	.string	"OP_POW"
.LASF459:
	.string	"OP_ENTERITER"
.LASF299:
	.string	"OP_REFGEN"
.LASF772:
	.string	"targ"
.LASF26:
	.string	"tv_nsec"
.LASF69:
	.string	"listop"
.LASF516:
	.string	"OP_FTRWRITE"
.LASF510:
	.string	"OP_SSOCKOPT"
.LASF125:
	.string	"cx_type"
.LASF83:
	.string	"SVOP"
.LASF177:
	.string	"xav_flags"
.LASF616:
	.string	"OP_GPWENT"
.LASF68:
	.string	"LISTOP"
.LASF656:
	.string	"iterix"
.LASF606:
	.string	"OP_SHOSTENT"
.LASF10:
	.string	"__ino_t"
.LASF464:
	.string	"OP_LAST"
.LASF161:
	.string	"xmg_magic"
.LASF410:
	.string	"OP_KEYS"
.LASF143:
	.string	"mg_obj"
.LASF792:
	.string	"auvok"
.LASF593:
	.string	"OP_LEAVETRY"
.LASF241:
	.string	"any_dptr"
.LASF436:
	.string	"OP_FLIP"
.LASF756:
	.string	"to_sv_amg"
.LASF554:
	.string	"OP_OPEN_DIR"
.LASF170:
	.string	"xpvav"
.LASF78:
	.string	"op_pmregexp"
.LASF301:
	.string	"OP_REF"
.LASF503:
	.string	"OP_SOCKPAIR"
.LASF483:
	.string	"OP_GETC"
.LASF600:
	.string	"OP_GPBYNAME"
.LASF201:
	.string	"xcv_xsubany"
.LASF474:
	.string	"OP_UMASK"
.LASF782:
	.string	"Perl_pp_concat"
.LASF217:
	.string	"xio_lines_left"
.LASF494:
	.string	"OP_RECV"
.LASF115:
	.string	"gp_av"
.LASF700:
	.string	"bool__amg"
.LASF498:
	.string	"OP_TRUNCATE"
.LASF70:
	.string	"LOGOP"
.LASF472:
	.string	"OP_PIPE_OP"
.LASF618:
	.string	"OP_EPWENT"
.LASF892:
	.string	"autogv"
.LASF771:
	.string	"Perl_pp_stringify"
.LASF831:
	.string	"Perl_pp_qr"
.LASF646:
	.string	"block_loop"
.LASF297:
	.string	"OP_ANONCODE"
.LASF714:
	.string	"pow_amg"
.LASF314:
	.string	"OP_TRANS"
.LASF933:
	.string	"PL_uid"
.LASF625:
	.string	"OP_SYSCALL"
.LASF962:
	.string	"PL_Xpv"
.LASF207:
	.string	"xcv_flags"
.LASF629:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF663:
	.string	"sbu_maxiters"
.LASF196:
	.string	"xpvcv"
.LASF377:
	.string	"OP_ATAN2"
.LASF422:
	.string	"OP_ANONLIST"
.LASF502:
	.string	"OP_SOCKET"
.LASF974:
	.string	"PL_bostr"
.LASF407:
	.string	"OP_ASLICE"
.LASF386:
	.string	"OP_HEX"
.LASF639:
	.string	"oldcomppad"
.LASF251:
	.string	"_PerlIO"
.LASF43:
	.string	"st_mtim"
.LASF481:
	.string	"OP_SSELECT"
.LASF722:
	.string	"bor_amg"
.LASF739:
	.string	"sne_amg"
.LASF581:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF118:
	.string	"gp_cv"
.LASF403:
	.string	"OP_QUOTEMETA"
.LASF567:
	.string	"OP_GETPGRP"
.LASF838:
	.string	"rxtainted"
.LASF636:
	.string	"olddepth"
.LASF361:
	.string	"OP_NCMP"
.LASF592:
	.string	"OP_ENTERTRY"
.LASF546:
	.string	"OP_CHMOD"
.LASF382:
	.string	"OP_EXP"
.LASF398:
	.string	"OP_CRYPT"
.LASF547:
	.string	"OP_UTIME"
.LASF746:
	.string	"sin_amg"
.LASF30:
	.string	"stat"
.LASF249:
	.string	"PerlIOl"
.LASF445:
	.string	"OP_ENTERSUB"
.LASF246:
	.string	"flags"
.LASF394:
	.string	"OP_SPRINTF"
.LASF847:
	.string	"Perl_do_readline"
.LASF308:
	.string	"OP_REGCRESET"
.LASF783:
	.string	"tmpsv"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
