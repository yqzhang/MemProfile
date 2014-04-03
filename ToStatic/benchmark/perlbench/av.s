	.file	"av.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 av.c -mtune=generic
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
	.globl	Perl_av_reify
	.type	Perl_av_reify, @function
Perl_av_reify:
.LFB2:
	.file 1 "av.c"
	.loc 1 26 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# av, av
	.loc 1 30 0
	movq	-24(%rbp), %rax	# av, tmp109
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movzbl	72(%rax), %eax	# _5->xav_flags, D.12905
	movzbl	%al, %eax	# D.12905, D.12906
	andl	$1, %eax	#, D.12906
	testl	%eax, %eax	# D.12906
	je	.L2	#,
	.loc 1 31 0
	jmp	.L1	#
.L2:
	.loc 1 36 0
	movq	-24(%rbp), %rax	# av, tmp110
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	16(%rax), %rax	# _9->xav_max, D.12907
	addl	$1, %eax	#, D.12908
	movl	%eax, -12(%rbp)	# D.12908, key
	.loc 1 37 0
	jmp	.L4	#
.L5:
	.loc 1 38 0
	movq	-24(%rbp), %rax	# av, tmp111
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	(%rax), %rax	# _18->xav_array, D.12909
	subl	$1, -12(%rbp)	#, key
	movl	-12(%rbp), %edx	# key, tmp112
	movslq	%edx, %rdx	# tmp112, D.12910
	salq	$3, %rdx	#, D.12910
	addq	%rdx, %rax	# D.12910, D.12911
	movq	$PL_sv_undef, (%rax)	#, *_23
.L4:
	.loc 1 37 0 discriminator 1
	movl	-12(%rbp), %eax	# key, tmp113
	movslq	%eax, %rdx	# tmp113, D.12907
	movq	-24(%rbp), %rax	# av, tmp114
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	8(%rax), %rax	# _15->xav_fill, D.12907
	addq	$1, %rax	#, D.12907
	cmpq	%rax, %rdx	# D.12907, D.12907
	jg	.L5	#,
	.loc 1 39 0
	jmp	.L6	#
.L8:
	.loc 1 40 0
	movq	-24(%rbp), %rax	# av, tmp115
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	(%rax), %rax	# _24->xav_array, D.12909
	subl	$1, -12(%rbp)	#, key
	movl	-12(%rbp), %edx	# key, tmp116
	movslq	%edx, %rdx	# tmp116, D.12910
	salq	$3, %rdx	#, D.12910
	addq	%rdx, %rax	# D.12910, D.12911
	movq	(%rax), %rax	# *_29, tmp117
	movq	%rax, -8(%rbp)	# tmp117, sv
	.loc 1 42 0
	cmpq	$PL_sv_undef, -8(%rbp)	#, sv
	je	.L6	#,
	.loc 1 43 0
	movq	-8(%rbp), %rax	# sv, tmp118
	movq	%rax, PL_Sv(%rip)	# tmp118, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.1
	testq	%rax, %rax	# PL_Sv.1
	je	.L6	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.2
	movl	8(%rax), %edx	# PL_Sv.2_32->sv_refcnt, D.12912
	addl	$1, %edx	#, D.12912
	movl	%edx, 8(%rax)	# D.12912, PL_Sv.2_32->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.2_32->sv_refcnt, D.12912
	testl	%eax, %eax	# D.12912
	je	.L6	#,
	.loc 1 43 0
	nop
.L6:
	.loc 1 39 0 is_stmt 1 discriminator 1
	cmpl	$0, -12(%rbp)	#, key
	jne	.L8	#,
	.loc 1 45 0
	movq	-24(%rbp), %rax	# av, tmp119
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	(%rax), %rax	# _38->xav_array, D.12909
	movq	%rax, %rdx	# D.12909, D.12907
	movq	-24(%rbp), %rax	# av, tmp120
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	56(%rax), %rax	# _41->xav_alloc, D.12911
	subq	%rax, %rdx	# D.12907, D.12907
	movq	%rdx, %rax	# D.12907, D.12907
	sarq	$3, %rax	#, tmp121
	movl	%eax, -12(%rbp)	# D.12907, key
	.loc 1 46 0
	jmp	.L9	#
.L10:
	.loc 1 47 0
	movq	-24(%rbp), %rax	# av, tmp122
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	56(%rax), %rax	# _47->xav_alloc, D.12911
	subl	$1, -12(%rbp)	#, key
	movl	-12(%rbp), %edx	# key, tmp123
	movslq	%edx, %rdx	# tmp123, D.12910
	salq	$3, %rdx	#, D.12910
	addq	%rdx, %rax	# D.12910, D.12911
	movq	$PL_sv_undef, (%rax)	#, *_52
.L9:
	.loc 1 46 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, key
	jne	.L10	#,
	.loc 1 48 0
	movq	-24(%rbp), %rax	# av, tmp124
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	-24(%rbp), %rdx	# av, tmp125
	movq	(%rdx), %rdx	# av_4(D)->sv_any, D.12904
	movzbl	72(%rdx), %edx	# _54->xav_flags, D.12905
	andl	$-3, %edx	#, D.12905
	movb	%dl, 72(%rax)	# D.12905, _53->xav_flags
	.loc 1 49 0
	movq	-24(%rbp), %rax	# av, tmp126
	movq	(%rax), %rax	# av_4(D)->sv_any, D.12904
	movq	-24(%rbp), %rdx	# av, tmp127
	movq	(%rdx), %rdx	# av_4(D)->sv_any, D.12904
	movzbl	72(%rdx), %edx	# _58->xav_flags, D.12905
	orl	$1, %edx	#, D.12905
	movb	%dl, 72(%rax)	# D.12905, _57->xav_flags
.L1:
	.loc 1 50 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_av_reify, .-Perl_av_reify
	.section	.rodata
.LC0:
	.string	"EXTEND"
.LC1:
	.string	"panic: POPSTACK\n"
	.text
	.globl	Perl_av_extend
	.type	Perl_av_extend, @function
Perl_av_extend:
.LFB3:
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# av, av
	movl	%esi, -108(%rbp)	# key, key
	.loc 1 65 0
	movq	-104(%rbp), %rax	# av, tmp316
	movl	12(%rax), %eax	# MEM[(struct SV *)av_13(D)].sv_flags, D.12913
	andl	$32768, %eax	#, D.12913
	testl	%eax, %eax	# D.12913
	je	.L12	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# av, tmp317
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp317,
	call	Perl_mg_find	#
	jmp	.L13	#
.L12:
	.loc 1 65 0 discriminator 2
	movl	$0, %eax	#, iftmp.3
.L13:
	.loc 1 65 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.3, mg
	cmpq	$0, -48(%rbp)	#, mg
	je	.L14	#,
.LBB2:
	.loc 1 66 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 67 0
	call	Perl_push_scope	#
	.loc 1 68 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.4
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.4, PL_tmps_floor
.LBB3:
	.loc 1 69 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.5
	movq	40(%rax), %rax	# PL_curstackinfo.5_21->si_next, tmp318
	movq	%rax, -72(%rbp)	# tmp318, next
	cmpq	$0, -72(%rbp)	#, next
	jne	.L15	#,
	.loc 1 69 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -72(%rbp)	# tmp319, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.6
	movq	-72(%rbp), %rax	# next, tmp320
	movq	%rdx, 32(%rax)	# PL_curstackinfo.6, next_23->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.7
	movq	-72(%rbp), %rdx	# next, tmp321
	movq	%rdx, 40(%rax)	# tmp321, PL_curstackinfo.7_25->si_next
.L15:
	.loc 1 69 0 discriminator 2
	movq	-72(%rbp), %rax	# next, tmp322
	movl	$2, 24(%rax)	#, next_2->si_type
	movq	-72(%rbp), %rax	# next, tmp323
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-72(%rbp), %rax	# next, tmp324
	movq	(%rax), %rax	# next_2->si_stack, D.12914
	movq	(%rax), %rax	# _26->sv_any, D.12915
	movq	$0, 8(%rax)	#, _27->xav_fill
.LBB4:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.8
	movq	(%rax), %rax	# PL_curstack.8_28->sv_any, D.12915
	movq	%rbx, %rcx	# sp, sp.9
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.10
	subq	%rdx, %rcx	# PL_stack_base.11, D.12916
	movq	%rcx, %rdx	# D.12916, D.12916
	sarq	$3, %rdx	#, tmp325
	movq	%rdx, 8(%rax)	# D.12916, _29->xav_fill
	movq	-72(%rbp), %rax	# next, tmp326
	movq	(%rax), %rax	# next_2->si_stack, D.12914
	movq	(%rax), %rax	# _35->sv_any, D.12915
	movq	(%rax), %rax	# _36->xav_array, PL_stack_base.12
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.12, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.13
	movq	-72(%rbp), %rax	# next, tmp327
	movq	(%rax), %rax	# next_2->si_stack, D.12914
	movq	(%rax), %rax	# _39->sv_any, D.12915
	movq	16(%rax), %rax	# _40->xav_max, D.12916
	salq	$3, %rax	#, D.12917
	addq	%rdx, %rax	# PL_stack_base.13, PL_stack_max.14
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.14, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.15
	movq	-72(%rbp), %rax	# next, tmp328
	movq	(%rax), %rax	# next_2->si_stack, D.12914
	movq	(%rax), %rax	# _46->sv_any, D.12915
	movq	8(%rax), %rax	# _47->xav_fill, D.12916
	salq	$3, %rax	#, D.12917
	addq	%rdx, %rax	# PL_stack_base.15, PL_stack_sp.16
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.16, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-72(%rbp), %rax	# next, tmp329
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.17
	movq	%rax, PL_curstack(%rip)	# PL_curstack.17, PL_curstack
.LBE4:
	movq	-72(%rbp), %rax	# next, tmp330
	movq	%rax, PL_curstackinfo(%rip)	# tmp330, PL_curstackinfo
.LBE3:
.LBB5:
	.loc 1 70 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.18
	addq	$4, %rax	#, PL_markstack_ptr.19
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.19, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.20
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.21
	cmpq	%rax, %rdx	# PL_markstack_max.21, PL_markstack_ptr.20
	jne	.L16	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L16:
	.loc 1 70 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.22
	movq	%rbx, %rcx	# sp, sp.23
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.24
	subq	%rdx, %rcx	# PL_stack_base.25, D.12916
	movq	%rcx, %rdx	# D.12916, D.12916
	sarq	$3, %rdx	#, tmp331
	movl	%edx, (%rax)	# D.12918, *PL_markstack_ptr.22_59
.LBE5:
	.loc 1 71 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.26
	movq	%rax, %rdx	# PL_stack_max.26, PL_stack_max.27
	movq	%rbx, %rax	# sp, sp.28
	subq	%rax, %rdx	# sp.28, D.12916
	movq	%rdx, %rax	# D.12916, D.12916
	cmpq	$15, %rax	#, D.12916
	jg	.L17	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L17:
	.loc 1 72 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-48(%rbp), %rax	# mg, tmp332
	movq	24(%rax), %rax	# mg_18->mg_obj, D.12920
	testq	%rax, %rax	# D.12920
	je	.L18	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp333
	movq	24(%rax), %rax	# mg_18->mg_obj, iftmp.29
	jmp	.L19	#
.L18:
	.loc 1 72 0 discriminator 2
	movq	-104(%rbp), %rax	# av, tmp334
	movq	%rax, %rdi	# tmp334,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.12920,
	call	Perl_sv_2mortal	#
.L19:
	.loc 1 72 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.29, *sp_72
	.loc 1 73 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	movl	-108(%rbp), %eax	# key, tmp335
	addl	$1, %eax	#, D.12918
	cltq
	movq	%rax, %rdi	# D.12916,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.12920,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12920, *sp_77
	.loc 1 74 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 75 0 discriminator 3
	movl	$2, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_call_method	#
.LBB6:
	.loc 1 76 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.30
	movq	32(%rax), %rax	# PL_curstackinfo.30_84->si_prev, tmp336
	movq	%rax, -40(%rbp)	# tmp336, prev
	cmpq	$0, -40(%rbp)	#, prev
	jne	.L20	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.32
	testq	%rax, %rax	# PL_stderrgv.32
	je	.L21	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.33
	movl	12(%rax), %eax	# PL_stderrgv.33_87->sv_flags, D.12913
	movzbl	%al, %eax	# D.12913, D.12913
	cmpl	$13, %eax	#, D.12913
	jne	.L21	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.34
	movq	(%rax), %rax	# PL_stderrgv.34_90->sv_any, D.12921
	movq	56(%rax), %rax	# _91->xgv_gp, D.12922
	movq	16(%rax), %rax	# _92->gp_io, D.12923
	testq	%rax, %rax	# D.12923
	je	.L21	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.35
	movq	(%rax), %rax	# PL_stderrgv.35_94->sv_any, D.12921
	movq	56(%rax), %rax	# _95->xgv_gp, D.12922
	movq	16(%rax), %rax	# _96->gp_io, D.12923
	movq	(%rax), %rax	# _97->sv_any, D.12924
	movq	64(%rax), %rax	# _98->xio_ofp, D.12925
	testq	%rax, %rax	# D.12925
	je	.L21	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.36
	movq	(%rax), %rax	# PL_stderrgv.36_100->sv_any, D.12921
	movq	56(%rax), %rax	# _101->xgv_gp, D.12922
	movq	16(%rax), %rax	# _102->gp_io, D.12923
	movq	(%rax), %rax	# _103->sv_any, D.12924
	movq	64(%rax), %rax	# _104->xio_ofp, iftmp.31
	jmp	.L22	#
.L21:
	.loc 1 76 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L22:
	.loc 1 76 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.31,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L20:
.LBB7:
	.loc 1 76 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.37
	movq	(%rax), %rax	# PL_curstack.37_107->sv_any, D.12915
	movq	%rbx, %rcx	# sp, sp.38
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.39
	subq	%rdx, %rcx	# PL_stack_base.40, D.12916
	movq	%rcx, %rdx	# D.12916, D.12916
	sarq	$3, %rdx	#, tmp337
	movq	%rdx, 8(%rax)	# D.12916, _108->xav_fill
	movq	-40(%rbp), %rax	# prev, tmp338
	movq	(%rax), %rax	# prev_85->si_stack, D.12914
	movq	(%rax), %rax	# _114->sv_any, D.12915
	movq	(%rax), %rax	# _115->xav_array, PL_stack_base.41
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.41, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.42
	movq	-40(%rbp), %rax	# prev, tmp339
	movq	(%rax), %rax	# prev_85->si_stack, D.12914
	movq	(%rax), %rax	# _118->sv_any, D.12915
	movq	16(%rax), %rax	# _119->xav_max, D.12916
	salq	$3, %rax	#, D.12917
	addq	%rdx, %rax	# PL_stack_base.42, PL_stack_max.43
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.43, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.44
	movq	-40(%rbp), %rax	# prev, tmp340
	movq	(%rax), %rax	# prev_85->si_stack, D.12914
	movq	(%rax), %rax	# _125->sv_any, D.12915
	movq	8(%rax), %rax	# _126->xav_fill, D.12916
	salq	$3, %rax	#, D.12917
	addq	%rdx, %rax	# PL_stack_base.44, PL_stack_sp.45
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.45, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# prev, tmp341
	movq	(%rax), %rax	# prev_85->si_stack, PL_curstack.46
	movq	%rax, PL_curstack(%rip)	# PL_curstack.46, PL_curstack
.LBE7:
	movq	-40(%rbp), %rax	# prev, tmp342
	movq	%rax, PL_curstackinfo(%rip)	# tmp342, PL_curstackinfo
.LBE6:
	.loc 1 77 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.47
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.48
	cmpl	%eax, %edx	# PL_tmps_floor.48, PL_tmps_ix.47
	jle	.L23	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L23:
	.loc 1 78 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 79 0
	jmp	.L11	#
.L14:
.LBE2:
	.loc 1 81 0
	movl	-108(%rbp), %eax	# key, tmp343
	movslq	%eax, %rdx	# tmp343, D.12916
	movq	-104(%rbp), %rax	# av, tmp344
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _138->xav_max, D.12916
	cmpq	%rax, %rdx	# D.12916, D.12916
	jle	.L11	#,
.LBB8:
	.loc 1 86 0
	movq	-104(%rbp), %rax	# av, tmp345
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rdx	# _140->xav_alloc, D.12927
	movq	-104(%rbp), %rax	# av, tmp346
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	(%rax), %rax	# _142->xav_array, D.12928
	cmpq	%rax, %rdx	# D.12928, D.12927
	je	.L25	#,
	.loc 1 87 0
	movq	-104(%rbp), %rax	# av, tmp347
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rdx	# _144->xav_alloc, D.12927
	movq	-104(%rbp), %rax	# av, tmp348
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	8(%rax), %rax	# _146->xav_fill, D.12916
	addq	$1, %rax	#, D.12929
	salq	$3, %rax	#, D.12929
	addq	%rdx, %rax	# D.12927, tmp349
	movq	%rax, -64(%rbp)	# tmp349, ary
	.loc 1 88 0
	movq	-104(%rbp), %rax	# av, tmp350
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	(%rax), %rax	# _152->xav_array, D.12928
	movq	%rax, %rdx	# D.12928, D.12916
	movq	-104(%rbp), %rax	# av, tmp351
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _155->xav_alloc, D.12927
	subq	%rax, %rdx	# D.12916, D.12916
	movq	%rdx, %rax	# D.12916, D.12916
	sarq	$3, %rax	#, tmp352
	movl	%eax, -84(%rbp)	# D.12916, tmp
	.loc 1 89 0
	movq	-104(%rbp), %rax	# av, tmp353
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	8(%rax), %rax	# _161->xav_fill, D.12916
	addq	$1, %rax	#, D.12916
	leaq	0(,%rax,8), %rdx	#, D.12917
	movq	-104(%rbp), %rax	# av, tmp354
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	(%rax), %rcx	# _166->xav_array, D.12928
	movq	-104(%rbp), %rax	# av, tmp355
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _168->xav_alloc, D.12927
	movq	%rcx, %rsi	# D.12928,
	movq	%rax, %rdi	# D.12927,
	call	memmove	#
	.loc 1 90 0
	movq	-104(%rbp), %rax	# av, tmp356
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	-104(%rbp), %rdx	# av, tmp357
	movq	(%rdx), %rdx	# av_13(D)->sv_any, D.12915
	movq	16(%rdx), %rcx	# _171->xav_max, D.12916
	movl	-84(%rbp), %edx	# tmp, tmp358
	movslq	%edx, %rdx	# tmp358, D.12916
	addq	%rcx, %rdx	# D.12916, D.12916
	movq	%rdx, 16(%rax)	# D.12916, _170->xav_max
	.loc 1 91 0
	movq	-104(%rbp), %rax	# av, tmp359
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	-104(%rbp), %rdx	# av, tmp360
	movq	(%rdx), %rdx	# av_13(D)->sv_any, D.12915
	movq	56(%rdx), %rdx	# _176->xav_alloc, D.12927
	movq	%rdx, (%rax)	# D.12927, MEM[(struct XPV *)_175].xpv_pv
	.loc 1 92 0
	movq	-104(%rbp), %rax	# av, tmp361
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movzbl	72(%rax), %eax	# _178->xav_flags, D.12930
	movzbl	%al, %eax	# D.12930, D.12918
	andl	$1, %eax	#, D.12918
	testl	%eax, %eax	# D.12918
	je	.L26	#,
	.loc 1 93 0
	jmp	.L27	#
.L28:
	.loc 1 94 0
	subl	$1, -84(%rbp)	#, tmp
	movl	-84(%rbp), %eax	# tmp, tmp362
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12917
	movq	-64(%rbp), %rax	# ary, tmp363
	addq	%rdx, %rax	# D.12917, D.12927
	movq	$PL_sv_undef, (%rax)	#, *_185
.L27:
	.loc 1 93 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, tmp
	jne	.L28	#,
.L26:
	.loc 1 97 0
	movl	-108(%rbp), %eax	# key, tmp364
	movslq	%eax, %rdx	# tmp364, D.12916
	movq	-104(%rbp), %rax	# av, tmp365
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _187->xav_max, D.12916
	subq	$10, %rax	#, D.12916
	cmpq	%rax, %rdx	# D.12916, D.12916
	jle	.L11	#,
	.loc 1 98 0
	movq	-104(%rbp), %rax	# av, tmp366
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _190->xav_max, D.12916
	movl	%eax, %edx	# D.12916, D.12931
	movl	-108(%rbp), %eax	# key, key.49
	addl	%edx, %eax	# D.12931, D.12931
	movl	%eax, -80(%rbp)	# D.12931, newmax
	.loc 1 99 0
	jmp	.L29	#
.L25:
	.loc 1 108 0
	movq	-104(%rbp), %rax	# av, tmp367
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _196->xav_alloc, D.12927
	testq	%rax, %rax	# D.12927
	je	.L30	#,
.LBB9:
	.loc 1 120 0
	movq	-104(%rbp), %rax	# av, tmp368
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rcx	# _198->xav_max, D.12916
	movabsq	$7378697629483820647, %rdx	#, tmp370
	movq	%rcx, %rax	# D.12916, tmp420
	imulq	%rdx	# tmp370
	sarq	%rdx	# tmp371
	movq	%rcx, %rax	# D.12916, tmp372
	sarq	$63, %rax	#, tmp372
	subq	%rax, %rdx	# tmp372, D.12916
	movq	%rdx, %rax	# D.12916, D.12916
	movl	%eax, %edx	# D.12916, D.12931
	movl	-108(%rbp), %eax	# key, key.50
	addl	%edx, %eax	# D.12931, D.12931
	movl	%eax, -80(%rbp)	# D.12931, newmax
.L29:
	.loc 1 126 0
	movl	-80(%rbp), %eax	# newmax, tmp373
	addl	$1, %eax	#, D.12918
	cltq
	salq	$3, %rax	#, tmp374
	movq	%rax, -32(%rbp)	# tmp374, bytes
	.loc 1 128 0
	movq	$16, -56(%rbp)	#, itmp
	.loc 1 129 0
	jmp	.L31	#
.L32:
	.loc 1 130 0
	movq	-56(%rbp), %rax	# itmp, tmp378
	addq	%rax, %rax	# tmp378, tmp377
	movq	%rax, -56(%rbp)	# tmp377, itmp
.L31:
	.loc 1 129 0 discriminator 1
	movq	-56(%rbp), %rax	# itmp, tmp379
	subq	$16, %rax	#, D.12916
	cmpq	-32(%rbp), %rax	# bytes, D.12917
	jb	.L32	#,
	.loc 1 131 0
	subq	$16, -56(%rbp)	#, itmp
	.loc 1 132 0
	movq	-56(%rbp), %rax	# itmp, itmp.51
	shrq	$3, %rax	#, D.12917
	movq	%rax, -56(%rbp)	# D.12917, itmp
	.loc 1 134 0
	movq	-56(%rbp), %rax	# itmp, tmp380
	subl	$1, %eax	#, D.12931
	movl	%eax, -80(%rbp)	# D.12931, newmax
	.loc 1 136 0
	movl	-80(%rbp), %eax	# newmax, tmp381
	addl	$1, %eax	#, D.12918
	cltq
	salq	$3, %rax	#, D.12917
	movq	%rax, %rdi	# D.12917,
	call	Perl_safesysmalloc	#
	movq	%rax, -64(%rbp)	# tmp382, ary
	.loc 1 137 0
	movq	-104(%rbp), %rax	# av, tmp383
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _235->xav_max, D.12916
	addq	$1, %rax	#, D.12916
	leaq	0(,%rax,8), %rdx	#, D.12917
	movq	-104(%rbp), %rax	# av, tmp384
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rcx	# _240->xav_alloc, D.12927
	movq	-64(%rbp), %rax	# ary, tmp385
	movq	%rcx, %rsi	# D.12927,
	movq	%rax, %rdi	# tmp385,
	call	memcpy	#
	.loc 1 138 0
	movq	-104(%rbp), %rax	# av, tmp386
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _242->xav_max, D.12916
	cmpq	$64, %rax	#, D.12916
	jle	.L33	#,
.LBB10:
	.loc 1 139 0
	movq	-104(%rbp), %rax	# av, tmp387
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _244->xav_alloc, tmp388
	movq	%rax, -24(%rbp)	# tmp388, new_chunk
	movq	-104(%rbp), %rax	# av, tmp389
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _246->xav_max, D.12916
	addq	$1, %rax	#, D.12916
	sall	$3, %eax	#, tmp390
	movl	%eax, -76(%rbp)	# tmp390, new_chunk_size
	movl	PL_nice_chunk_size(%rip), %eax	# PL_nice_chunk_size, PL_nice_chunk_size.52
	cmpl	%eax, -76(%rbp)	# PL_nice_chunk_size.52, new_chunk_size
	jbe	.L34	#,
	.loc 1 139 0 is_stmt 0 discriminator 1
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.53
	testq	%rax, %rax	# PL_nice_chunk.53
	je	.L35	#,
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.54
	movq	%rax, %rdi	# PL_nice_chunk.54,
	call	Perl_safesysfree	#
.L35:
	.loc 1 139 0 discriminator 2
	movq	-24(%rbp), %rax	# new_chunk, tmp391
	movq	%rax, PL_nice_chunk(%rip)	# tmp391, PL_nice_chunk
	movl	-76(%rbp), %eax	# new_chunk_size, tmp392
	movl	%eax, PL_nice_chunk_size(%rip)	# tmp392, PL_nice_chunk_size
	jmp	.L37	#
.L34:
	movq	-104(%rbp), %rax	# av, tmp393
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _254->xav_alloc, D.12927
	movq	%rax, %rdi	# D.12927,
	call	Perl_safesysfree	#
.LBE10:
	jmp	.L37	#
.L33:
	.loc 1 141 0 is_stmt 1
	movq	-104(%rbp), %rax	# av, tmp394
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _256->xav_alloc, D.12927
	movq	%rax, %rdi	# D.12927,
	call	Perl_safesysfree	#
.L37:
	.loc 1 142 0
	movq	-104(%rbp), %rax	# av, tmp395
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	-64(%rbp), %rdx	# ary, tmp396
	movq	%rdx, 56(%rax)	# tmp396, _258->xav_alloc
	.loc 1 147 0
	movq	-104(%rbp), %rax	# av, tmp397
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rdx	# _259->xav_alloc, D.12927
	movq	-104(%rbp), %rax	# av, tmp398
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _261->xav_max, D.12916
	addq	$1, %rax	#, D.12929
	salq	$3, %rax	#, D.12929
	addq	%rdx, %rax	# D.12927, tmp399
	movq	%rax, -64(%rbp)	# tmp399, ary
	.loc 1 148 0
	movl	-80(%rbp), %edx	# newmax, newmax.55
	movq	-104(%rbp), %rax	# av, tmp400
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	16(%rax), %rax	# _268->xav_max, D.12916
	subl	%eax, %edx	# D.12931, D.12931
	movl	%edx, %eax	# D.12931, D.12931
	movl	%eax, -84(%rbp)	# D.12931, tmp
	.loc 1 149 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.56
	cmpq	%rax, -104(%rbp)	# PL_curstack.56, av
	jne	.L38	#,
	.loc 1 150 0
	movq	-104(%rbp), %rax	# av, tmp401
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _274->xav_alloc, D.12927
	movq	PL_stack_sp(%rip), %rdx	# PL_stack_sp, PL_stack_sp.57
	movq	%rdx, %rcx	# PL_stack_sp.57, PL_stack_sp.58
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.59
	subq	%rdx, %rcx	# PL_stack_base.60, D.12916
	movq	%rcx, %rdx	# D.12916, D.12916
	sarq	$3, %rdx	#, tmp402
	salq	$3, %rdx	#, D.12917
	addq	%rdx, %rax	# D.12917, PL_stack_sp.61
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.61, PL_stack_sp
	.loc 1 151 0
	movq	-104(%rbp), %rax	# av, tmp403
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _285->xav_alloc, PL_stack_base.62
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.62, PL_stack_base
	.loc 1 152 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.63
	movl	-80(%rbp), %edx	# newmax, tmp404
	movslq	%edx, %rdx	# tmp404, D.12917
	salq	$3, %rdx	#, D.12917
	addq	%rdx, %rax	# D.12917, PL_stack_max.64
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.64, PL_stack_max
.LBE9:
	jmp	.L39	#
.L38:
	jmp	.L39	#
.L30:
	.loc 1 156 0
	movl	$3, %eax	#, tmp406
	cmpl	$3, -108(%rbp)	#, key
	cmovge	-108(%rbp), %eax	# key,, tmp405
	movl	%eax, -80(%rbp)	# tmp405, newmax
	.loc 1 158 0
	movq	-104(%rbp), %rax	# av, tmp407
	movq	(%rax), %rbx	# av_13(D)->sv_any, D.12915
	movl	-80(%rbp), %eax	# newmax, tmp408
	addl	$1, %eax	#, D.12918
	cltq
	salq	$3, %rax	#, D.12917
	movq	%rax, %rdi	# D.12917,
	call	Perl_safesysmalloc	#
	movq	%rax, 56(%rbx)	# D.12932, _206->xav_alloc
	.loc 1 159 0
	movq	-104(%rbp), %rax	# av, tmp409
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _211->xav_alloc, D.12927
	addq	$8, %rax	#, tmp410
	movq	%rax, -64(%rbp)	# tmp410, ary
	.loc 1 160 0
	movl	-80(%rbp), %eax	# newmax, tmp411
	movl	%eax, -84(%rbp)	# tmp411, tmp
	.loc 1 161 0
	movq	-104(%rbp), %rax	# av, tmp412
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	56(%rax), %rax	# _215->xav_alloc, D.12927
	movq	$PL_sv_undef, (%rax)	#, *_216
.L39:
	.loc 1 163 0
	movq	-104(%rbp), %rax	# av, tmp413
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movzbl	72(%rax), %eax	# _291->xav_flags, D.12930
	movzbl	%al, %eax	# D.12930, D.12918
	andl	$1, %eax	#, D.12918
	testl	%eax, %eax	# D.12918
	je	.L40	#,
	.loc 1 164 0
	jmp	.L41	#
.L42:
	.loc 1 165 0
	subl	$1, -84(%rbp)	#, tmp
	movl	-84(%rbp), %eax	# tmp, tmp414
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12917
	movq	-64(%rbp), %rax	# ary, tmp415
	addq	%rdx, %rax	# D.12917, D.12927
	movq	$PL_sv_undef, (%rax)	#, *_298
.L41:
	.loc 1 164 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, tmp
	jne	.L42	#,
.L40:
	.loc 1 168 0
	movq	-104(%rbp), %rax	# av, tmp416
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movq	-104(%rbp), %rdx	# av, tmp417
	movq	(%rdx), %rdx	# av_13(D)->sv_any, D.12915
	movq	56(%rdx), %rdx	# _300->xav_alloc, D.12927
	movq	%rdx, (%rax)	# D.12927, MEM[(struct XPV *)_299].xpv_pv
	.loc 1 169 0
	movq	-104(%rbp), %rax	# av, tmp418
	movq	(%rax), %rax	# av_13(D)->sv_any, D.12915
	movl	-80(%rbp), %edx	# newmax, tmp419
	movslq	%edx, %rdx	# tmp419, D.12916
	movq	%rdx, 16(%rax)	# D.12916, _302->xav_max
.L11:
.LBE8:
	.loc 1 172 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_av_extend, .-Perl_av_extend
	.section	.rodata
.LC2:
	.string	"NEGATIVE_INDICES"
	.text
	.globl	Perl_av_fetch
	.type	Perl_av_fetch, @function
Perl_av_fetch:
.LFB4:
	.loc 1 189 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# av, av
	movl	%esi, -52(%rbp)	# key, key
	movl	%edx, -56(%rbp)	# lval, lval
	.loc 1 192 0
	testq	%rbx, %rbx	# av
	jne	.L44	#,
	.loc 1 193 0
	movl	$0, %eax	#, D.12935
	jmp	.L45	#
.L44:
	.loc 1 195 0
	movl	12(%rbx), %eax	# av_13(D)->sv_flags, D.12936
	andl	$32768, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L46	#,
.LBB11:
	.loc 1 196 0
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	movq	%rax, -40(%rbp)	# tmp188, tied_magic
	.loc 1 197 0
	cmpq	$0, -40(%rbp)	#, tied_magic
	jne	.L47	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movl	$68, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12937
	je	.L46	#,
.L47:
.LBB12:
	.loc 1 198 0 is_stmt 1
	movl	$1, -44(%rbp)	#, adjust_index
	.loc 1 200 0
	cmpq	$0, -40(%rbp)	#, tied_magic
	je	.L48	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, key
	jns	.L48	#,
.LBB13:
	.loc 1 203 0 is_stmt 1
	movq	-40(%rbp), %rax	# tied_magic, tmp189
	movq	24(%rax), %rax	# tied_magic_17->mg_obj, D.12938
	testq	%rax, %rax	# D.12938
	je	.L49	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tied_magic, tmp190
	movq	24(%rax), %rax	# tied_magic_17->mg_obj, iftmp.65
	jmp	.L50	#
.L49:
	.loc 1 203 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.12938,
	call	Perl_sv_2mortal	#
.L50:
	.loc 1 203 0 discriminator 3
	movq	(%rax), %rax	# iftmp.65_5->sv_any, D.12939
	movq	(%rax), %rax	# MEM[(struct XRV *)_25].xrv_rv, D.12938
	movq	(%rax), %rax	# _26->sv_any, D.12939
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_27].xmg_stash, D.12940
	.loc 1 202 0 is_stmt 1 discriminator 3
	movl	$0, %ecx	#,
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.12940,
	call	Perl_hv_fetch	#
	movq	%rax, -32(%rbp)	# tmp191, negative_indices_glob
	.loc 1 207 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, negative_indices_glob
	je	.L48	#,
	.loc 1 208 0
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp192
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _30->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_31].xgv_gp, D.12941
	movq	(%rax), %rax	# _32->gp_sv, D.12938
	testq	%rax, %rax	# D.12938
	je	.L51	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp193
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _34->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_35].xgv_gp, D.12941
	movq	(%rax), %rax	# _36->gp_sv, D.12938
	movl	12(%rax), %eax	# _37->sv_flags, D.12936
	andl	$262144, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L52	#,
	.loc 1 208 0 discriminator 3
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp194
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _40->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_41].xgv_gp, D.12941
	movq	(%rax), %rax	# _42->gp_sv, D.12938
	movq	(%rax), %rax	# _43->sv_any, PL_Xpv.69
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.69, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.70
	testq	%rax, %rax	# PL_Xpv.70
	je	.L53	#,
	.loc 1 208 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.71
	movq	8(%rax), %rax	# PL_Xpv.71_46->xpv_cur, D.12942
	cmpq	$1, %rax	#, D.12942
	ja	.L54	#,
	.loc 1 208 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.72
	movq	8(%rax), %rax	# PL_Xpv.72_48->xpv_cur, D.12942
	testq	%rax, %rax	# D.12942
	je	.L53	#,
	.loc 1 208 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.73
	movq	(%rax), %rax	# PL_Xpv.73_50->xpv_pv, D.12943
	movzbl	(%rax), %eax	# *_51, D.12944
	cmpb	$48, %al	#, D.12944
	je	.L53	#,
.L54:
	.loc 1 208 0 discriminator 7
	movl	$1, %eax	#, iftmp.68
	jmp	.L55	#
.L53:
	.loc 1 208 0 discriminator 6
	movl	$0, %eax	#, iftmp.68
.L55:
	.loc 1 208 0 discriminator 9
	andl	$1, %eax	#, iftmp.67
	jmp	.L61	#
.L52:
	.loc 1 208 0 discriminator 4
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp195
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _56->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_57].xgv_gp, D.12941
	movq	(%rax), %rax	# _58->gp_sv, D.12938
	movl	12(%rax), %eax	# _59->sv_flags, D.12936
	andl	$65536, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L57	#,
	.loc 1 208 0 discriminator 10
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp196
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _62->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_63].xgv_gp, D.12941
	movq	(%rax), %rax	# _64->gp_sv, D.12938
	movq	(%rax), %rax	# _65->sv_any, D.12939
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_66].xiv_iv, D.12945
	testq	%rax, %rax	# D.12945
	setne	%al	#, iftmp.74
	jmp	.L61	#
.L57:
	.loc 1 208 0 discriminator 11
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp197
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _69->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_70].xgv_gp, D.12941
	movq	(%rax), %rax	# _71->gp_sv, D.12938
	movl	12(%rax), %eax	# _72->sv_flags, D.12936
	andl	$131072, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L59	#,
	.loc 1 208 0 discriminator 12
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp198
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _75->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_76].xgv_gp, D.12941
	movq	(%rax), %rax	# _77->gp_sv, D.12938
	movq	(%rax), %rax	# _78->sv_any, D.12939
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_79].xnv_nv, D.12946
	xorpd	%xmm1, %xmm1	# tmp200
	ucomisd	%xmm1, %xmm0	# tmp200, D.12946
	setp	%dl	#, tmp199
	movl	$1, %eax	#, tmp202
	xorpd	%xmm1, %xmm1	# tmp201
	ucomisd	%xmm1, %xmm0	# tmp201, D.12946
	cmove	%edx, %eax	# tmp199,, iftmp.75
	jmp	.L61	#
.L59:
	.loc 1 208 0 discriminator 13
	movq	-32(%rbp), %rax	# negative_indices_glob, tmp203
	movq	(%rax), %rax	# *negative_indices_glob_29, D.12938
	movq	(%rax), %rax	# _82->sv_any, D.12939
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_83].xgv_gp, D.12941
	movq	(%rax), %rax	# _84->gp_sv, D.12938
	movq	%rax, %rdi	# D.12938,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12944
	setne	%al	#, iftmp.75
	jmp	.L61	#
.L51:
	.loc 1 208 0 discriminator 2
	movl	$0, %eax	#, iftmp.66
.L61:
	.loc 1 208 0 discriminator 16
	testb	%al, %al	# iftmp.66
	je	.L48	#,
	.loc 1 209 0 is_stmt 1
	movl	$0, -44(%rbp)	#, adjust_index
.L48:
.LBE13:
	.loc 1 212 0
	cmpl	$0, -52(%rbp)	#, key
	jns	.L62	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, adjust_index
	je	.L62	#,
	.loc 1 213 0 is_stmt 1
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_13(D)].sv_flags, D.12936
	andl	$32768, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L63	#,
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.76
	jmp	.L64	#
.L63:
	.loc 1 213 0 discriminator 2
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	8(%rax), %rax	# _98->xav_fill, D.12945
	addl	$1, %eax	#, iftmp.76
.L64:
	.loc 1 213 0 discriminator 3
	movl	-52(%rbp), %edx	# key, key.77
	addl	%edx, %eax	# key.77, D.12948
	movl	%eax, -52(%rbp)	# D.12948, key
	.loc 1 214 0 is_stmt 1 discriminator 3
	cmpl	$0, -52(%rbp)	#, key
	jns	.L62	#,
	.loc 1 215 0
	movl	$0, %eax	#, D.12935
	jmp	.L45	#
.L62:
	.loc 1 218 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp204, sv
	.loc 1 219 0
	movq	-24(%rbp), %rax	# sv, tmp205
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	Perl_sv_upgrade	#
	.loc 1 220 0
	movl	-52(%rbp), %edx	# key, tmp206
	movq	-24(%rbp), %rax	# sv, tmp207
	movl	%edx, %ecx	# tmp206,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp207,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_copy	#
	.loc 1 221 0
	movq	-24(%rbp), %rax	# sv, tmp208
	movq	(%rax), %rax	# sv_106->sv_any, D.12939
	movb	$116, 80(%rax)	#, MEM[(struct XPVLV *)_107].xlv_type
	.loc 1 222 0
	movq	-24(%rbp), %rax	# sv, tmp209
	movq	(%rax), %rax	# sv_106->sv_any, D.12939
	movq	-24(%rbp), %rdx	# sv, tmp210
	movq	%rdx, 72(%rax)	# tmp210, MEM[(struct XPVLV *)_108].xlv_targ
	.loc 1 223 0
	movq	-24(%rbp), %rax	# sv, tmp211
	movq	(%rax), %rax	# sv_106->sv_any, D.12939
	addq	$72, %rax	#, D.12935
	jmp	.L45	#
.L46:
.LBE12:
.LBE11:
	.loc 1 227 0
	cmpl	$0, -52(%rbp)	#, key
	jns	.L65	#,
	.loc 1 228 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_13(D)].sv_flags, D.12936
	andl	$32768, %eax	#, D.12936
	testl	%eax, %eax	# D.12936
	je	.L66	#,
	.loc 1 228 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.78
	jmp	.L67	#
.L66:
	.loc 1 228 0 discriminator 2
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	8(%rax), %rax	# _116->xav_fill, D.12945
	addl	$1, %eax	#, iftmp.78
.L67:
	.loc 1 228 0 discriminator 3
	movl	-52(%rbp), %edx	# key, key.79
	addl	%edx, %eax	# key.79, D.12948
	movl	%eax, -52(%rbp)	# D.12948, key
	.loc 1 229 0 is_stmt 1 discriminator 3
	cmpl	$0, -52(%rbp)	#, key
	jns	.L65	#,
	.loc 1 230 0
	movl	$0, %eax	#, D.12935
	jmp	.L45	#
.L65:
	.loc 1 233 0
	movl	-52(%rbp), %eax	# key, tmp212
	movslq	%eax, %rdx	# tmp212, D.12945
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	8(%rax), %rax	# _125->xav_fill, D.12945
	cmpq	%rax, %rdx	# D.12945, D.12945
	jle	.L68	#,
	.loc 1 234 0
	cmpl	$0, -56(%rbp)	#, lval
	jne	.L69	#,
	.loc 1 235 0
	movl	$0, %eax	#, D.12935
	jmp	.L45	#
.L69:
	.loc 1 236 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp213, sv
	.loc 1 237 0
	movq	-24(%rbp), %rdx	# sv, tmp214
	movl	-52(%rbp), %eax	# key, tmp215
	movl	%eax, %esi	# tmp215,
	movq	%rbx, %rdi	# av,
	call	Perl_av_store	#
	jmp	.L45	#
.L68:
	.loc 1 239 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	(%rax), %rax	# _131->xav_array, D.12943
	movl	-52(%rbp), %edx	# key, tmp216
	movslq	%edx, %rdx	# tmp216, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12935
	movq	(%rax), %rax	# *_135, D.12938
	cmpq	$PL_sv_undef, %rax	#, D.12938
	jne	.L70	#,
.L71:
	.loc 1 241 0
	cmpl	$0, -56(%rbp)	#, lval
	je	.L72	#,
	.loc 1 242 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp217, sv
	.loc 1 243 0
	movq	-24(%rbp), %rdx	# sv, tmp218
	movl	-52(%rbp), %eax	# key, tmp219
	movl	%eax, %esi	# tmp219,
	movq	%rbx, %rdi	# av,
	call	Perl_av_store	#
	jmp	.L45	#
.L72:
	.loc 1 245 0
	movl	$0, %eax	#, D.12935
	jmp	.L45	#
.L70:
	.loc 1 247 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movzbl	72(%rax), %eax	# _137->xav_flags, D.12950
	movzbl	%al, %eax	# D.12950, D.12947
	andl	$2, %eax	#, D.12947
	testl	%eax, %eax	# D.12947
	je	.L73	#,
	.loc 1 248 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	(%rax), %rax	# _141->xav_array, D.12943
	movl	-52(%rbp), %edx	# key, tmp220
	movslq	%edx, %rdx	# tmp220, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12935
	movq	(%rax), %rax	# *_145, D.12938
	testq	%rax, %rax	# D.12938
	je	.L74	#,
	.loc 1 249 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	(%rax), %rax	# _147->xav_array, D.12943
	movl	-52(%rbp), %edx	# key, tmp221
	movslq	%edx, %rdx	# tmp221, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12935
	movq	(%rax), %rax	# *_151, D.12938
	movl	12(%rax), %eax	# _152->sv_flags, D.12936
	movzbl	%al, %eax	# D.12936, D.12936
	cmpl	$255, %eax	#, D.12936
	jne	.L73	#,
.L74:
	.loc 1 250 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	(%rax), %rax	# _155->xav_array, D.12943
	movl	-52(%rbp), %edx	# key, tmp222
	movslq	%edx, %rdx	# tmp222, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12935
	movq	$PL_sv_undef, (%rax)	#, *_159
	.loc 1 251 0
	jmp	.L71	#
.L73:
	.loc 1 253 0
	movq	(%rbx), %rax	# av_13(D)->sv_any, D.12949
	movq	(%rax), %rax	# _160->xav_array, D.12943
	movl	-52(%rbp), %edx	# key, tmp223
	movslq	%edx, %rdx	# tmp223, D.12942
	salq	$3, %rdx	#, D.12942
	addq	%rdx, %rax	# D.12942, D.12935
.L45:
	.loc 1 254 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_av_fetch, .-Perl_av_fetch
	.globl	Perl_av_store
	.type	Perl_av_store, @function
Perl_av_store:
.LFB5:
	.loc 1 275 0
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
	movq	%rdi, %rbx	# av, av
	movl	%esi, -68(%rbp)	# key, key
	movq	%rdx, -80(%rbp)	# val, val
	.loc 1 278 0
	testq	%rbx, %rbx	# av
	jne	.L76	#,
	.loc 1 279 0
	movl	$0, %eax	#, D.12952
	jmp	.L77	#
.L76:
	.loc 1 280 0
	cmpq	$0, -80(%rbp)	#, val
	jne	.L78	#,
	.loc 1 281 0
	movq	$PL_sv_undef, -80(%rbp)	#, val
.L78:
	.loc 1 283 0
	movl	12(%rbx), %eax	# av_16(D)->sv_flags, D.12953
	andl	$32768, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L79	#,
.LBB14:
	.loc 1 284 0
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	movq	%rax, -48(%rbp)	# tmp221, tied_magic
	.loc 1 285 0
	cmpq	$0, -48(%rbp)	#, tied_magic
	je	.L79	#,
	.loc 1 287 0
	cmpl	$0, -68(%rbp)	#, key
	jns	.L80	#,
.LBB15:
	.loc 1 288 0
	movl	$1, -52(%rbp)	#, adjust_index
	.loc 1 290 0
	movq	-48(%rbp), %rax	# tied_magic, tmp222
	movq	24(%rax), %rax	# tied_magic_22->mg_obj, D.12954
	testq	%rax, %rax	# D.12954
	je	.L81	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# tied_magic, tmp223
	movq	24(%rax), %rax	# tied_magic_22->mg_obj, iftmp.80
	jmp	.L82	#
.L81:
	.loc 1 290 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.12954,
	call	Perl_sv_2mortal	#
.L82:
	.loc 1 290 0 discriminator 3
	movq	(%rax), %rax	# iftmp.80_6->sv_any, D.12955
	movq	(%rax), %rax	# MEM[(struct XRV *)_29].xrv_rv, D.12954
	movq	(%rax), %rax	# _30->sv_any, D.12955
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_31].xmg_stash, D.12956
	.loc 1 289 0 is_stmt 1 discriminator 3
	movl	$0, %ecx	#,
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.12956,
	call	Perl_hv_fetch	#
	movq	%rax, -40(%rbp)	# tmp224, negative_indices_glob
	.loc 1 293 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, negative_indices_glob
	je	.L83	#,
	.loc 1 294 0
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp225
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _34->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_35].xgv_gp, D.12957
	movq	(%rax), %rax	# _36->gp_sv, D.12954
	testq	%rax, %rax	# D.12954
	je	.L84	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp226
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _38->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_39].xgv_gp, D.12957
	movq	(%rax), %rax	# _40->gp_sv, D.12954
	movl	12(%rax), %eax	# _41->sv_flags, D.12953
	andl	$262144, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L85	#,
	.loc 1 294 0 discriminator 3
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp227
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _44->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_45].xgv_gp, D.12957
	movq	(%rax), %rax	# _46->gp_sv, D.12954
	movq	(%rax), %rax	# _47->sv_any, PL_Xpv.84
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.84, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.85
	testq	%rax, %rax	# PL_Xpv.85
	je	.L86	#,
	.loc 1 294 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.86
	movq	8(%rax), %rax	# PL_Xpv.86_50->xpv_cur, D.12958
	cmpq	$1, %rax	#, D.12958
	ja	.L87	#,
	.loc 1 294 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.87
	movq	8(%rax), %rax	# PL_Xpv.87_52->xpv_cur, D.12958
	testq	%rax, %rax	# D.12958
	je	.L86	#,
	.loc 1 294 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.88
	movq	(%rax), %rax	# PL_Xpv.88_54->xpv_pv, D.12959
	movzbl	(%rax), %eax	# *_55, D.12960
	cmpb	$48, %al	#, D.12960
	je	.L86	#,
.L87:
	.loc 1 294 0 discriminator 7
	movl	$1, %eax	#, iftmp.83
	jmp	.L88	#
.L86:
	.loc 1 294 0 discriminator 6
	movl	$0, %eax	#, iftmp.83
.L88:
	.loc 1 294 0 discriminator 9
	andl	$1, %eax	#, iftmp.82
	jmp	.L94	#
.L85:
	.loc 1 294 0 discriminator 4
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp228
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _60->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_61].xgv_gp, D.12957
	movq	(%rax), %rax	# _62->gp_sv, D.12954
	movl	12(%rax), %eax	# _63->sv_flags, D.12953
	andl	$65536, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L90	#,
	.loc 1 294 0 discriminator 10
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp229
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _66->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_67].xgv_gp, D.12957
	movq	(%rax), %rax	# _68->gp_sv, D.12954
	movq	(%rax), %rax	# _69->sv_any, D.12955
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_70].xiv_iv, D.12961
	testq	%rax, %rax	# D.12961
	setne	%al	#, iftmp.89
	jmp	.L94	#
.L90:
	.loc 1 294 0 discriminator 11
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp230
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _73->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_74].xgv_gp, D.12957
	movq	(%rax), %rax	# _75->gp_sv, D.12954
	movl	12(%rax), %eax	# _76->sv_flags, D.12953
	andl	$131072, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L92	#,
	.loc 1 294 0 discriminator 12
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp231
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _79->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_80].xgv_gp, D.12957
	movq	(%rax), %rax	# _81->gp_sv, D.12954
	movq	(%rax), %rax	# _82->sv_any, D.12955
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_83].xnv_nv, D.12962
	xorpd	%xmm1, %xmm1	# tmp233
	ucomisd	%xmm1, %xmm0	# tmp233, D.12962
	setp	%dl	#, tmp232
	movl	$1, %eax	#, tmp235
	xorpd	%xmm1, %xmm1	# tmp234
	ucomisd	%xmm1, %xmm0	# tmp234, D.12962
	cmove	%edx, %eax	# tmp232,, iftmp.90
	jmp	.L94	#
.L92:
	.loc 1 294 0 discriminator 13
	movq	-40(%rbp), %rax	# negative_indices_glob, tmp236
	movq	(%rax), %rax	# *negative_indices_glob_33, D.12954
	movq	(%rax), %rax	# _86->sv_any, D.12955
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_87].xgv_gp, D.12957
	movq	(%rax), %rax	# _88->gp_sv, D.12954
	movq	%rax, %rdi	# D.12954,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12960
	setne	%al	#, iftmp.90
	jmp	.L94	#
.L84:
	.loc 1 294 0 discriminator 2
	movl	$0, %eax	#, iftmp.81
.L94:
	.loc 1 294 0 discriminator 16
	testb	%al, %al	# iftmp.81
	je	.L83	#,
	.loc 1 295 0 is_stmt 1
	movl	$0, -52(%rbp)	#, adjust_index
.L83:
	.loc 1 296 0
	cmpl	$0, -52(%rbp)	#, adjust_index
	je	.L80	#,
	.loc 1 297 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_16(D)].sv_flags, D.12953
	andl	$32768, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L95	#,
	.loc 1 297 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.91
	jmp	.L96	#
.L95:
	.loc 1 297 0 discriminator 2
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rax	# _102->xav_fill, D.12961
	addl	$1, %eax	#, iftmp.91
.L96:
	.loc 1 297 0 discriminator 3
	movl	-68(%rbp), %edx	# key, key.92
	addl	%edx, %eax	# key.92, D.12964
	movl	%eax, -68(%rbp)	# D.12964, key
	.loc 1 298 0 is_stmt 1 discriminator 3
	cmpl	$0, -68(%rbp)	#, key
	jns	.L80	#,
	.loc 1 299 0
	movl	$0, %eax	#, D.12952
	jmp	.L77	#
.L80:
.LBE15:
	.loc 1 302 0
	cmpq	$PL_sv_undef, -80(%rbp)	#, val
	je	.L97	#,
	.loc 1 303 0
	movl	-68(%rbp), %edx	# key, tmp237
	movq	-80(%rbp), %rax	# val, tmp238
	movl	%edx, %ecx	# tmp237,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp238,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_copy	#
.L97:
	.loc 1 305 0
	movl	$0, %eax	#, D.12952
	jmp	.L77	#
.L79:
.LBE14:
	.loc 1 310 0
	cmpl	$0, -68(%rbp)	#, key
	jns	.L98	#,
	.loc 1 311 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_16(D)].sv_flags, D.12953
	andl	$32768, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L99	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.93
	jmp	.L100	#
.L99:
	.loc 1 311 0 discriminator 2
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rax	# _116->xav_fill, D.12961
	addl	$1, %eax	#, iftmp.93
.L100:
	.loc 1 311 0 discriminator 3
	movl	-68(%rbp), %edx	# key, key.94
	addl	%edx, %eax	# key.94, D.12964
	movl	%eax, -68(%rbp)	# D.12964, key
	.loc 1 312 0 is_stmt 1 discriminator 3
	cmpl	$0, -68(%rbp)	#, key
	jns	.L98	#,
	.loc 1 313 0
	movl	$0, %eax	#, D.12952
	jmp	.L77	#
.L98:
	.loc 1 316 0
	movl	12(%rbx), %eax	# av_16(D)->sv_flags, D.12953
	andl	$8388608, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L101	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# key, tmp239
	movslq	%eax, %r12	# tmp239, D.12961
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_16(D)].sv_flags, D.12953
	andl	$32768, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L102	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	cltq
	jmp	.L103	#
.L102:
	.loc 1 316 0 discriminator 2
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rax	# _131->xav_fill, iftmp.95
.L103:
	.loc 1 316 0 discriminator 3
	cmpq	%rax, %r12	# iftmp.95, D.12961
	jl	.L101	#,
	.loc 1 317 0 is_stmt 1
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L101:
	.loc 1 319 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movzbl	72(%rax), %eax	# _133->xav_flags, D.12966
	movzbl	%al, %eax	# D.12966, D.12963
	andl	$1, %eax	#, D.12963
	testl	%eax, %eax	# D.12963
	jne	.L104	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movzbl	72(%rax), %eax	# _137->xav_flags, D.12966
	movzbl	%al, %eax	# D.12966, D.12963
	andl	$2, %eax	#, D.12963
	testl	%eax, %eax	# D.12963
	je	.L104	#,
	.loc 1 320 0 is_stmt 1
	movq	%rbx, %rdi	# av,
	call	Perl_av_reify	#
.L104:
	.loc 1 321 0
	movl	-68(%rbp), %eax	# key, tmp240
	movslq	%eax, %rdx	# tmp240, D.12961
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	16(%rax), %rax	# _142->xav_max, D.12961
	cmpq	%rax, %rdx	# D.12961, D.12961
	jle	.L105	#,
	.loc 1 322 0
	movl	-68(%rbp), %eax	# key, tmp241
	movl	%eax, %esi	# tmp241,
	movq	%rbx, %rdi	# av,
	call	Perl_av_extend	#
.L105:
	.loc 1 323 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	(%rax), %rax	# _144->xav_array, tmp242
	movq	%rax, -32(%rbp)	# tmp242, ary
	.loc 1 324 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rdx	# _146->xav_fill, D.12961
	movl	-68(%rbp), %eax	# key, tmp243
	cltq
	cmpq	%rax, %rdx	# D.12961, D.12961
	jge	.L106	#,
	.loc 1 325 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movzbl	72(%rax), %eax	# _149->xav_flags, D.12966
	movzbl	%al, %eax	# D.12966, D.12963
	andl	$1, %eax	#, D.12963
	testl	%eax, %eax	# D.12963
	jne	.L107	#,
	.loc 1 326 0
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.96
	cmpq	%rax, %rbx	# PL_curstack.96, av
	jne	.L108	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# key, tmp244
	movslq	%eax, %rdx	# tmp244, D.12961
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.97
	movq	%rax, %rcx	# PL_stack_sp.97, PL_stack_sp.98
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.99
	subq	%rax, %rcx	# PL_stack_base.100, D.12961
	movq	%rcx, %rax	# D.12961, D.12961
	sarq	$3, %rax	#, tmp245
	cmpq	%rax, %rdx	# D.12961, D.12961
	jle	.L108	#,
	.loc 1 327 0 is_stmt 1
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.101
	movl	-68(%rbp), %edx	# key, tmp246
	movslq	%edx, %rdx	# tmp246, D.12958
	salq	$3, %rdx	#, D.12958
	addq	%rdx, %rax	# D.12958, PL_stack_sp.102
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.102, PL_stack_sp
.L108:
	.loc 1 329 0 discriminator 1
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rdx	# _165->xav_fill, D.12961
	addq	$1, %rdx	#, D.12961
	movq	%rdx, 8(%rax)	# D.12961, _165->xav_fill
	movq	8(%rax), %rax	# _165->xav_fill, D.12961
	leaq	0(,%rax,8), %rdx	#, D.12958
	movq	-32(%rbp), %rax	# ary, tmp247
	addq	%rdx, %rax	# D.12958, D.12952
	movq	$PL_sv_undef, (%rax)	#, *_171
	.loc 1 330 0 discriminator 1
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	8(%rax), %rdx	# _172->xav_fill, D.12961
	movl	-68(%rbp), %eax	# key, tmp248
	cltq
	cmpq	%rax, %rdx	# D.12961, D.12961
	jl	.L108	#,
.L107:
	.loc 1 332 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movl	-68(%rbp), %edx	# key, tmp249
	movslq	%edx, %rdx	# tmp249, D.12961
	movq	%rdx, 8(%rax)	# D.12961, _175->xav_fill
	jmp	.L109	#
.L106:
	.loc 1 334 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movzbl	72(%rax), %eax	# _177->xav_flags, D.12966
	movzbl	%al, %eax	# D.12966, D.12963
	andl	$1, %eax	#, D.12963
	testl	%eax, %eax	# D.12963
	je	.L109	#,
	.loc 1 335 0
	movl	-68(%rbp), %eax	# key, tmp250
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12958
	movq	-32(%rbp), %rax	# ary, tmp251
	addq	%rdx, %rax	# D.12958, D.12952
	movq	(%rax), %rax	# *_183, D.12954
	movq	%rax, %rdi	# D.12954,
	call	Perl_sv_free	#
.L109:
	.loc 1 336 0
	movl	-68(%rbp), %eax	# key, tmp252
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12958
	movq	-32(%rbp), %rax	# ary, tmp253
	addq	%rax, %rdx	# tmp253, D.12952
	movq	-80(%rbp), %rax	# val, tmp254
	movq	%rax, (%rdx)	# tmp254, *_187
	.loc 1 337 0
	movl	12(%rbx), %eax	# av_16(D)->sv_flags, D.12953
	andl	$16384, %eax	#, D.12953
	testl	%eax, %eax	# D.12953
	je	.L110	#,
	.loc 1 338 0
	cmpq	$PL_sv_undef, -80(%rbp)	#, val
	je	.L111	#,
.LBB16:
	.loc 1 339 0
	movq	(%rbx), %rax	# av_16(D)->sv_any, D.12965
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_190].xmg_magic, tmp255
	movq	%rax, -24(%rbp)	# tmp255, mg
	.loc 1 340 0
	movq	-24(%rbp), %rax	# mg, tmp256
	movzbl	18(%rax), %eax	# mg_191->mg_type, D.12960
	cmpb	$64, %al	#, D.12960
	jle	.L112	#,
	.loc 1 340 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mg, tmp257
	movzbl	18(%rax), %eax	# mg_191->mg_type, D.12960
	cmpb	$90, %al	#, D.12960
	jg	.L112	#,
	movq	-24(%rbp), %rax	# mg, tmp258
	movzbl	18(%rax), %eax	# mg_191->mg_type, D.12960
	movsbl	%al, %eax	# D.12960, D.12963
	addl	$32, %eax	#, iftmp.103
	jmp	.L113	#
.L112:
	.loc 1 340 0 discriminator 2
	movq	-24(%rbp), %rax	# mg, tmp259
	movzbl	18(%rax), %eax	# mg_191->mg_type, D.12960
	movsbl	%al, %eax	# D.12960, iftmp.103
.L113:
	.loc 1 340 0 discriminator 3
	movl	-68(%rbp), %edx	# key, tmp260
	movq	-80(%rbp), %rdi	# val, tmp261
	movl	%edx, %r8d	# tmp260,
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.103,
	movq	%rbx, %rsi	# av,
	call	Perl_sv_magic	#
.L111:
.LBE16:
	.loc 1 342 0 is_stmt 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_set	#
.L110:
	.loc 1 344 0
	movl	-68(%rbp), %eax	# key, tmp262
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12958
	movq	-32(%rbp), %rax	# ary, tmp263
	addq	%rdx, %rax	# D.12958, D.12952
.L77:
	.loc 1 345 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_av_store, .-Perl_av_store
	.globl	Perl_newAV
	.type	Perl_newAV, @function
Perl_newAV:
.LFB6:
	.loc 1 357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 360 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rbx	#, av
	.loc 1 361 0
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_sv_upgrade	#
	.loc 1 362 0
	movq	(%rbx), %rax	# av_1->sv_any, D.12967
	movq	(%rbx), %rdx	# av_1->sv_any, D.12967
	movzbl	72(%rdx), %edx	# _3->xav_flags, D.12968
	orl	$1, %edx	#, D.12968
	movb	%dl, 72(%rax)	# D.12968, _2->xav_flags
	.loc 1 363 0
	movq	(%rbx), %rax	# av_1->sv_any, D.12967
	movq	$0, 56(%rax)	#, _6->xav_alloc
	.loc 1 364 0
	movq	(%rbx), %rax	# av_1->sv_any, D.12967
	movq	$0, (%rax)	#, MEM[(struct XPV *)_7].xpv_pv
	.loc 1 365 0
	movq	(%rbx), %rdx	# av_1->sv_any, D.12967
	movq	(%rbx), %rax	# av_1->sv_any, D.12967
	movq	$-1, 8(%rax)	#, _9->xav_fill
	movq	8(%rax), %rax	# _9->xav_fill, D.12969
	movq	%rax, 16(%rdx)	# D.12969, _8->xav_max
	.loc 1 366 0
	movq	%rbx, %rax	# av, D.12970
	.loc 1 367 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_newAV, .-Perl_newAV
	.globl	Perl_av_make
	.type	Perl_av_make, @function
Perl_av_make:
.LFB7:
	.loc 1 381 0
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
	subq	$24, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, %r12d	# size, size
	movq	%rsi, %r15	# strp, strp
	.loc 1 386 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rbx	#, av
	.loc 1 387 0
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_sv_upgrade	#
	.loc 1 388 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12971
	movb	$1, 72(%rax)	#, _4->xav_flags
	.loc 1 389 0
	testl	%r12d, %r12d	# size
	je	.L117	#,
	.loc 1 390 0
	movslq	%r12d, %rax	# size, D.12972
	salq	$3, %rax	#, D.12972
	movq	%rax, %rdi	# D.12972,
	call	Perl_safesysmalloc	#
	movq	%rax, %r14	#, ary
	.loc 1 391 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12971
	movq	%r14, 56(%rax)	# ary, _9->xav_alloc
	.loc 1 392 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12971
	movq	%r14, (%rax)	# ary, MEM[(struct XPV *)_10].xpv_pv
	.loc 1 393 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12971
	leal	-1(%r12), %edx	#, D.12973
	movslq	%edx, %rdx	# D.12973, D.12974
	movq	%rdx, 8(%rax)	# D.12974, _11->xav_fill
	.loc 1 394 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12971
	leal	-1(%r12), %edx	#, D.12973
	movslq	%edx, %rdx	# D.12973, D.12974
	movq	%rdx, 16(%rax)	# D.12974, _14->xav_max
	.loc 1 395 0
	movl	$0, %r13d	#, i
	jmp	.L118	#
.L119:
	.loc 1 397 0 discriminator 2
	movslq	%r13d, %rax	# i, D.12972
	salq	$3, %rax	#, D.12972
	addq	%r14, %rax	# ary, D.12975
	movq	%rax, -56(%rbp)	# D.12975, %sfp
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	-56(%rbp), %rcx	# %sfp, D.12975
	movq	%rax, (%rcx)	# D.12976, *_21
	.loc 1 398 0 discriminator 2
	movq	(%r15), %rcx	# *strp_1, D.12976
	movslq	%r13d, %rax	# i, D.12972
	salq	$3, %rax	#, D.12972
	addq	%r14, %rax	# ary, D.12975
	movq	(%rax), %rax	# *_26, D.12976
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.12976,
	movq	%rax, %rdi	# D.12976,
	call	Perl_sv_setsv_flags	#
	.loc 1 399 0 discriminator 2
	addq	$8, %r15	#, strp
	.loc 1 395 0 discriminator 2
	addl	$1, %r13d	#, i
.L118:
	.loc 1 395 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %r13d	# size, i
	jl	.L119	#,
.L117:
	.loc 1 402 0 is_stmt 1
	movq	%rbx, %rax	# av, D.12977
	.loc 1 403 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_av_make, .-Perl_av_make
	.globl	Perl_av_fake
	.type	Perl_av_fake, @function
Perl_av_fake:
.LFB8:
	.loc 1 407 0
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
	movl	%edi, %r12d	# size, size
	movq	%rsi, %r13	# strp, strp
	.loc 1 411 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rbx	#, av
	.loc 1 412 0
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_sv_upgrade	#
	.loc 1 413 0
	leal	1(%r12), %eax	#, D.12979
	cltq
	salq	$3, %rax	#, D.12980
	movq	%rax, %rdi	# D.12980,
	call	Perl_safesysmalloc	#
	movq	%rax, %r14	#, ary
	.loc 1 414 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12981
	movq	%r14, 56(%rax)	# ary, _9->xav_alloc
	.loc 1 415 0
	movslq	%r12d, %rax	# size, D.12980
	salq	$3, %rax	#, D.12980
	movq	%rax, %rdx	# D.12980,
	movq	%r13, %rsi	# strp,
	movq	%r14, %rdi	# ary,
	call	memcpy	#
	.loc 1 416 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12981
	movb	$2, 72(%rax)	#, _13->xav_flags
	.loc 1 417 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12981
	movq	%r14, (%rax)	# ary, MEM[(struct XPV *)_14].xpv_pv
	.loc 1 418 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12981
	leal	-1(%r12), %edx	#, D.12979
	movslq	%edx, %rdx	# D.12979, D.12982
	movq	%rdx, 8(%rax)	# D.12982, _15->xav_fill
	.loc 1 419 0
	movq	(%rbx), %rax	# av_3->sv_any, D.12981
	leal	-1(%r12), %edx	#, D.12979
	movslq	%edx, %rdx	# D.12979, D.12982
	movq	%rdx, 16(%rax)	# D.12982, _18->xav_max
	.loc 1 420 0
	jmp	.L122	#
.L123:
	.loc 1 422 0
	movq	0(%r13), %rax	# *strp_2, D.12983
	movq	0(%r13), %rdx	# *strp_2, D.12983
	movl	12(%rdx), %edx	# _24->sv_flags, D.12984
	andb	$247, %dh	#, D.12984
	movl	%edx, 12(%rax)	# D.12984, _23->sv_flags
	.loc 1 423 0
	addq	$8, %r13	#, strp
.L122:
	.loc 1 420 0 discriminator 1
	movl	%r12d, %eax	# size, size.104
	leal	-1(%rax), %r12d	#, size
	testl	%eax, %eax	# size.104
	jne	.L123	#,
	.loc 1 425 0
	movq	%rbx, %rax	# av, D.12985
	.loc 1 426 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_av_fake, .-Perl_av_fake
	.globl	Perl_av_clear
	.type	Perl_av_clear, @function
Perl_av_clear:
.LFB9:
	.loc 1 439 0
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
	movq	%rdi, %rbx	# av, av
	.loc 1 448 0
	testq	%rbx, %rbx	# av
	jne	.L126	#,
	.loc 1 449 0
	jmp	.L125	#
.L126:
	.loc 1 452 0
	movl	12(%rbx), %eax	# av_2(D)->sv_flags, D.12986
	andl	$8388608, %eax	#, D.12986
	testl	%eax, %eax	# D.12986
	je	.L128	#,
	.loc 1 453 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L128:
	.loc 1 456 0
	movl	12(%rbx), %eax	# av_2(D)->sv_flags, D.12986
	andl	$32768, %eax	#, D.12986
	testl	%eax, %eax	# D.12986
	je	.L129	#,
	.loc 1 457 0
	movq	%rbx, %rdi	# av,
	call	Perl_mg_clear	#
.L129:
	.loc 1 459 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	16(%rax), %rax	# _7->xav_max, D.12988
	testq	%rax, %rax	# D.12988
	jns	.L130	#,
	.loc 1 460 0
	jmp	.L125	#
.L130:
	.loc 1 462 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movzbl	72(%rax), %eax	# _9->xav_flags, D.12989
	movzbl	%al, %eax	# D.12989, D.12990
	andl	$1, %eax	#, D.12990
	testl	%eax, %eax	# D.12990
	je	.L131	#,
	.loc 1 463 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	(%rax), %rax	# _13->xav_array, tmp99
	movq	%rax, -32(%rbp)	# tmp99, ary
	.loc 1 464 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	8(%rax), %rax	# _15->xav_fill, D.12988
	addl	$1, %eax	#, D.12991
	movl	%eax, %r12d	# D.12991, key
	.loc 1 465 0
	jmp	.L132	#
.L133:
.LBB17:
	.loc 1 466 0
	subl	$1, %r12d	#, key
	movslq	%r12d, %rax	# key, D.12992
	leaq	0(,%rax,8), %rdx	#, D.12992
	movq	-32(%rbp), %rax	# ary, tmp100
	addq	%rdx, %rax	# D.12992, D.12993
	movq	(%rax), %rax	# *_23, tmp101
	movq	%rax, -24(%rbp)	# tmp101, sv
	.loc 1 469 0
	movslq	%r12d, %rax	# key, D.12992
	leaq	0(,%rax,8), %rdx	#, D.12992
	movq	-32(%rbp), %rax	# ary, tmp102
	addq	%rdx, %rax	# D.12992, D.12993
	movq	$PL_sv_undef, (%rax)	#, *_27
	.loc 1 470 0
	movq	-24(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	Perl_sv_free	#
.L132:
.LBE17:
	.loc 1 465 0 discriminator 1
	testl	%r12d, %r12d	# key
	jne	.L133	#,
.L131:
	.loc 1 473 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	(%rax), %rax	# _28->xav_array, D.12994
	movq	%rax, %rdx	# D.12994, D.12988
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	56(%rax), %rax	# _31->xav_alloc, D.12993
	subq	%rax, %rdx	# D.12988, D.12988
	movq	%rdx, %rax	# D.12988, D.12988
	sarq	$3, %rax	#, tmp104
	movl	%eax, %r12d	# D.12988, key
	testl	%r12d, %r12d	# key
	je	.L134	#,
	.loc 1 474 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	(%rbx), %rdx	# av_2(D)->sv_any, D.12987
	movq	16(%rdx), %rcx	# _38->xav_max, D.12988
	movslq	%r12d, %rdx	# key, D.12988
	addq	%rcx, %rdx	# D.12988, D.12988
	movq	%rdx, 16(%rax)	# D.12988, _37->xav_max
	.loc 1 475 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	(%rbx), %rdx	# av_2(D)->sv_any, D.12987
	movq	56(%rdx), %rdx	# _43->xav_alloc, D.12993
	movq	%rdx, (%rax)	# D.12993, MEM[(struct XPV *)_42].xpv_pv
.L134:
	.loc 1 477 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12987
	movq	$-1, 8(%rax)	#, _45->xav_fill
.L125:
	.loc 1 479 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_av_clear, .-Perl_av_clear
	.globl	Perl_av_undef
	.type	Perl_av_undef, @function
Perl_av_undef:
.LFB10:
	.loc 1 491 0
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
	movq	%rdi, %rbx	# av, av
	.loc 1 494 0
	testq	%rbx, %rbx	# av
	jne	.L136	#,
	.loc 1 495 0
	jmp	.L135	#
.L136:
	.loc 1 499 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_2(D)].sv_flags, D.12995
	andl	$32768, %eax	#, D.12995
	testl	%eax, %eax	# D.12995
	je	.L138	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12996
	je	.L138	#,
	.loc 1 500 0 is_stmt 1
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_av_fill	#
.L138:
	.loc 1 502 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movzbl	72(%rax), %eax	# _6->xav_flags, D.12998
	movzbl	%al, %eax	# D.12998, D.12999
	andl	$1, %eax	#, D.12999
	testl	%eax, %eax	# D.12999
	je	.L139	#,
	.loc 1 503 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	8(%rax), %rax	# _10->xav_fill, D.13000
	addl	$1, %eax	#, D.13001
	movl	%eax, %r12d	# D.13001, key
	.loc 1 504 0
	jmp	.L140	#
.L141:
	.loc 1 505 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	(%rax), %rax	# _15->xav_array, D.13002
	subl	$1, %r12d	#, key
	movslq	%r12d, %rdx	# key, D.13003
	salq	$3, %rdx	#, D.13003
	addq	%rdx, %rax	# D.13003, D.13004
	movq	(%rax), %rax	# *_20, D.13005
	movq	%rax, %rdi	# D.13005,
	call	Perl_sv_free	#
.L140:
	.loc 1 504 0 discriminator 1
	testl	%r12d, %r12d	# key
	jne	.L141	#,
.L139:
	.loc 1 507 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	56(%rax), %rax	# _22->xav_alloc, D.13004
	movq	%rax, %rdi	# D.13004,
	call	Perl_safesysfree	#
	.loc 1 508 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	$0, 56(%rax)	#, _24->xav_alloc
	.loc 1 509 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	$0, (%rax)	#, MEM[(struct XPV *)_25].xpv_pv
	.loc 1 510 0
	movq	(%rbx), %rdx	# av_2(D)->sv_any, D.12997
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	$-1, 8(%rax)	#, _27->xav_fill
	movq	8(%rax), %rax	# _27->xav_fill, D.13000
	movq	%rax, 16(%rdx)	# D.13000, _26->xav_max
	.loc 1 511 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	64(%rax), %rax	# _29->xav_arylen, D.13005
	testq	%rax, %rax	# D.13005
	je	.L135	#,
	.loc 1 512 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	64(%rax), %rax	# _31->xav_arylen, D.13005
	movq	%rax, %rdi	# D.13005,
	call	Perl_sv_free	#
	.loc 1 513 0
	movq	(%rbx), %rax	# av_2(D)->sv_any, D.12997
	movq	$0, 64(%rax)	#, _33->xav_arylen
.L135:
	.loc 1 515 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_av_undef, .-Perl_av_undef
	.section	.rodata
.LC4:
	.string	"PUSH"
	.text
	.globl	Perl_av_push
	.type	Perl_av_push, @function
Perl_av_push:
.LFB11:
	.loc 1 528 0
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
	movq	%rdi, %r12	# av, av
	movq	%rsi, -56(%rbp)	# val, val
	.loc 1 530 0
	testq	%r12, %r12	# av
	jne	.L143	#,
	.loc 1 531 0
	jmp	.L142	#
.L143:
	.loc 1 532 0
	movl	12(%r12), %eax	# av_6(D)->sv_flags, D.13006
	andl	$8388608, %eax	#, D.13006
	testl	%eax, %eax	# D.13006
	je	.L145	#,
	.loc 1 533 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L145:
	.loc 1 535 0
	movl	12(%r12), %eax	# MEM[(struct SV *)av_6(D)].sv_flags, D.13006
	andl	$32768, %eax	#, D.13006
	testl	%eax, %eax	# D.13006
	je	.L146	#,
	.loc 1 535 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%r12, %rdi	# av,
	call	Perl_mg_find	#
	jmp	.L147	#
.L146:
	.loc 1 535 0 discriminator 2
	movl	$0, %eax	#, iftmp.105
.L147:
	.loc 1 535 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.105, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L148	#,
.LBB18:
	.loc 1 536 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB19:
	.loc 1 537 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.106
	movq	40(%rax), %rax	# PL_curstackinfo.106_15->si_next, tmp170
	movq	%rax, -40(%rbp)	# tmp170, next
	cmpq	$0, -40(%rbp)	#, next
	jne	.L149	#,
	.loc 1 537 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -40(%rbp)	# tmp171, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.107
	movq	-40(%rbp), %rax	# next, tmp172
	movq	%rdx, 32(%rax)	# PL_curstackinfo.107, next_17->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.108
	movq	-40(%rbp), %rdx	# next, tmp173
	movq	%rdx, 40(%rax)	# tmp173, PL_curstackinfo.108_19->si_next
.L149:
	.loc 1 537 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp174
	movl	$2, 24(%rax)	#, next_2->si_type
	movq	-40(%rbp), %rax	# next, tmp175
	movl	$-1, 16(%rax)	#, next_2->si_cxix
	movq	-40(%rbp), %rax	# next, tmp176
	movq	(%rax), %rax	# next_2->si_stack, D.13007
	movq	(%rax), %rax	# _20->sv_any, D.13008
	movq	$0, 8(%rax)	#, _21->xav_fill
.LBB20:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.109
	movq	(%rax), %rax	# PL_curstack.109_22->sv_any, D.13008
	movq	%rbx, %rcx	# sp, sp.110
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.111
	subq	%rdx, %rcx	# PL_stack_base.112, D.13009
	movq	%rcx, %rdx	# D.13009, D.13009
	sarq	$3, %rdx	#, tmp177
	movq	%rdx, 8(%rax)	# D.13009, _23->xav_fill
	movq	-40(%rbp), %rax	# next, tmp178
	movq	(%rax), %rax	# next_2->si_stack, D.13007
	movq	(%rax), %rax	# _29->sv_any, D.13008
	movq	(%rax), %rax	# _30->xav_array, PL_stack_base.113
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.113, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.114
	movq	-40(%rbp), %rax	# next, tmp179
	movq	(%rax), %rax	# next_2->si_stack, D.13007
	movq	(%rax), %rax	# _33->sv_any, D.13008
	movq	16(%rax), %rax	# _34->xav_max, D.13009
	salq	$3, %rax	#, D.13010
	addq	%rdx, %rax	# PL_stack_base.114, PL_stack_max.115
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.115, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.116
	movq	-40(%rbp), %rax	# next, tmp180
	movq	(%rax), %rax	# next_2->si_stack, D.13007
	movq	(%rax), %rax	# _40->sv_any, D.13008
	movq	8(%rax), %rax	# _41->xav_fill, D.13009
	salq	$3, %rax	#, D.13010
	addq	%rdx, %rax	# PL_stack_base.116, PL_stack_sp.117
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.117, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# next, tmp181
	movq	(%rax), %rax	# next_2->si_stack, PL_curstack.118
	movq	%rax, PL_curstack(%rip)	# PL_curstack.118, PL_curstack
.LBE20:
	movq	-40(%rbp), %rax	# next, tmp182
	movq	%rax, PL_curstackinfo(%rip)	# tmp182, PL_curstackinfo
.LBE19:
.LBB21:
	.loc 1 538 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.119
	addq	$4, %rax	#, PL_markstack_ptr.120
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.120, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.121
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.122
	cmpq	%rax, %rdx	# PL_markstack_max.122, PL_markstack_ptr.121
	jne	.L150	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L150:
	.loc 1 538 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.123
	movq	%rbx, %rcx	# sp, sp.124
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.125
	subq	%rdx, %rcx	# PL_stack_base.126, D.13009
	movq	%rcx, %rdx	# D.13009, D.13009
	sarq	$3, %rdx	#, tmp183
	movl	%edx, (%rax)	# D.13011, *PL_markstack_ptr.123_53
.LBE21:
	.loc 1 539 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.127
	movq	%rax, %rdx	# PL_stack_max.127, PL_stack_max.128
	movq	%rbx, %rax	# sp, sp.129
	subq	%rax, %rdx	# sp.129, D.13009
	movq	%rdx, %rax	# D.13009, D.13009
	cmpq	$15, %rax	#, D.13009
	jg	.L151	#,
	.loc 1 539 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L151:
	.loc 1 540 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# mg, tmp184
	movq	24(%rax), %rax	# mg_13->mg_obj, D.13013
	testq	%rax, %rax	# D.13013
	je	.L152	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp185
	movq	24(%rax), %rax	# mg_13->mg_obj, iftmp.130
	jmp	.L153	#
.L152:
	.loc 1 540 0 discriminator 2
	movq	%r12, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13013,
	call	Perl_sv_2mortal	#
.L153:
	.loc 1 540 0 discriminator 3
	movq	%rax, (%rbx)	# iftmp.130, *sp_66
	.loc 1 541 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# val, tmp186
	movq	%rax, (%rbx)	# tmp186, *sp_71
	.loc 1 542 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 543 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 544 0 discriminator 3
	movl	$2, %esi	#,
	movl	$.LC4, %edi	#,
	call	Perl_call_method	#
	.loc 1 545 0 discriminator 3
	call	Perl_pop_scope	#
.LBB22:
	.loc 1 546 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.131
	movq	32(%rax), %rax	# PL_curstackinfo.131_74->si_prev, tmp187
	movq	%rax, -24(%rbp)	# tmp187, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L154	#,
	.loc 1 546 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.133
	testq	%rax, %rax	# PL_stderrgv.133
	je	.L155	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.134
	movl	12(%rax), %eax	# PL_stderrgv.134_77->sv_flags, D.13006
	movzbl	%al, %eax	# D.13006, D.13006
	cmpl	$13, %eax	#, D.13006
	jne	.L155	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.135
	movq	(%rax), %rax	# PL_stderrgv.135_80->sv_any, D.13014
	movq	56(%rax), %rax	# _81->xgv_gp, D.13015
	movq	16(%rax), %rax	# _82->gp_io, D.13016
	testq	%rax, %rax	# D.13016
	je	.L155	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.136
	movq	(%rax), %rax	# PL_stderrgv.136_84->sv_any, D.13014
	movq	56(%rax), %rax	# _85->xgv_gp, D.13015
	movq	16(%rax), %rax	# _86->gp_io, D.13016
	movq	(%rax), %rax	# _87->sv_any, D.13017
	movq	64(%rax), %rax	# _88->xio_ofp, D.13018
	testq	%rax, %rax	# D.13018
	je	.L155	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.137
	movq	(%rax), %rax	# PL_stderrgv.137_90->sv_any, D.13014
	movq	56(%rax), %rax	# _91->xgv_gp, D.13015
	movq	16(%rax), %rax	# _92->gp_io, D.13016
	movq	(%rax), %rax	# _93->sv_any, D.13017
	movq	64(%rax), %rax	# _94->xio_ofp, iftmp.132
	jmp	.L156	#
.L155:
	.loc 1 546 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L156:
	.loc 1 546 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.132,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L154:
.LBB23:
	.loc 1 546 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.138
	movq	(%rax), %rax	# PL_curstack.138_97->sv_any, D.13008
	movq	%rbx, %rcx	# sp, sp.139
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.140
	subq	%rdx, %rcx	# PL_stack_base.141, D.13009
	movq	%rcx, %rdx	# D.13009, D.13009
	sarq	$3, %rdx	#, tmp188
	movq	%rdx, 8(%rax)	# D.13009, _98->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp189
	movq	(%rax), %rax	# prev_75->si_stack, D.13007
	movq	(%rax), %rax	# _104->sv_any, D.13008
	movq	(%rax), %rax	# _105->xav_array, PL_stack_base.142
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.142, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.143
	movq	-24(%rbp), %rax	# prev, tmp190
	movq	(%rax), %rax	# prev_75->si_stack, D.13007
	movq	(%rax), %rax	# _108->sv_any, D.13008
	movq	16(%rax), %rax	# _109->xav_max, D.13009
	salq	$3, %rax	#, D.13010
	addq	%rdx, %rax	# PL_stack_base.143, PL_stack_max.144
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.144, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.145
	movq	-24(%rbp), %rax	# prev, tmp191
	movq	(%rax), %rax	# prev_75->si_stack, D.13007
	movq	(%rax), %rax	# _115->sv_any, D.13008
	movq	8(%rax), %rax	# _116->xav_fill, D.13009
	salq	$3, %rax	#, D.13010
	addq	%rdx, %rax	# PL_stack_base.145, PL_stack_sp.146
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.146, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp192
	movq	(%rax), %rax	# prev_75->si_stack, PL_curstack.147
	movq	%rax, PL_curstack(%rip)	# PL_curstack.147, PL_curstack
.LBE23:
	movq	-24(%rbp), %rax	# prev, tmp193
	movq	%rax, PL_curstackinfo(%rip)	# tmp193, PL_curstackinfo
.LBE22:
	.loc 1 547 0 is_stmt 1 discriminator 2
	jmp	.L142	#
.L148:
.LBE18:
	.loc 1 549 0
	movq	(%r12), %rax	# av_6(D)->sv_any, D.13008
	movq	8(%rax), %rax	# _125->xav_fill, D.13009
	addl	$1, %eax	#, D.13020
	movq	-56(%rbp), %rdx	# val, tmp194
	movl	%eax, %esi	# D.13011,
	movq	%r12, %rdi	# av,
	call	Perl_av_store	#
.L142:
	.loc 1 550 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_av_push, .-Perl_av_push
	.section	.rodata
.LC5:
	.string	"POP"
	.text
	.globl	Perl_av_pop
	.type	Perl_av_pop, @function
Perl_av_pop:
.LFB12:
	.loc 1 563 0
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
	movq	%rdi, %rbx	# av, av
	.loc 1 567 0
	testq	%rbx, %rbx	# av
	jne	.L158	#,
	.loc 1 568 0
	movl	$PL_sv_undef, %eax	#, D.13022
	jmp	.L159	#
.L158:
	.loc 1 569 0
	movl	12(%rbx), %eax	# av_9(D)->sv_flags, D.13023
	andl	$8388608, %eax	#, D.13023
	testl	%eax, %eax	# D.13023
	je	.L160	#,
	.loc 1 570 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L160:
	.loc 1 571 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_9(D)].sv_flags, D.13023
	andl	$32768, %eax	#, D.13023
	testl	%eax, %eax	# D.13023
	je	.L161	#,
	.loc 1 571 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	jmp	.L162	#
.L161:
	.loc 1 571 0 discriminator 2
	movl	$0, %eax	#, iftmp.148
.L162:
	.loc 1 571 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.148, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L163	#,
.LBB24:
	.loc 1 572 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
.LBB25:
	.loc 1 573 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.149
	movq	40(%rax), %rax	# PL_curstackinfo.149_19->si_next, tmp196
	movq	%rax, -40(%rbp)	# tmp196, next
	cmpq	$0, -40(%rbp)	#, next
	jne	.L164	#,
	.loc 1 573 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -40(%rbp)	# tmp197, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.150
	movq	-40(%rbp), %rax	# next, tmp198
	movq	%rdx, 32(%rax)	# PL_curstackinfo.150, next_21->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.151
	movq	-40(%rbp), %rdx	# next, tmp199
	movq	%rdx, 40(%rax)	# tmp199, PL_curstackinfo.151_23->si_next
.L164:
	.loc 1 573 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp200
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-40(%rbp), %rax	# next, tmp201
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-40(%rbp), %rax	# next, tmp202
	movq	(%rax), %rax	# next_3->si_stack, D.13024
	movq	(%rax), %rax	# _24->sv_any, D.13025
	movq	$0, 8(%rax)	#, _25->xav_fill
.LBB26:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.152
	movq	(%rax), %rax	# PL_curstack.152_26->sv_any, D.13025
	movq	%r12, %rcx	# sp, sp.153
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.154
	subq	%rdx, %rcx	# PL_stack_base.155, D.13026
	movq	%rcx, %rdx	# D.13026, D.13026
	sarq	$3, %rdx	#, tmp203
	movq	%rdx, 8(%rax)	# D.13026, _27->xav_fill
	movq	-40(%rbp), %rax	# next, tmp204
	movq	(%rax), %rax	# next_3->si_stack, D.13024
	movq	(%rax), %rax	# _33->sv_any, D.13025
	movq	(%rax), %rax	# _34->xav_array, PL_stack_base.156
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.156, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.157
	movq	-40(%rbp), %rax	# next, tmp205
	movq	(%rax), %rax	# next_3->si_stack, D.13024
	movq	(%rax), %rax	# _37->sv_any, D.13025
	movq	16(%rax), %rax	# _38->xav_max, D.13026
	salq	$3, %rax	#, D.13027
	addq	%rdx, %rax	# PL_stack_base.157, PL_stack_max.158
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.158, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.159
	movq	-40(%rbp), %rax	# next, tmp206
	movq	(%rax), %rax	# next_3->si_stack, D.13024
	movq	(%rax), %rax	# _44->sv_any, D.13025
	movq	8(%rax), %rax	# _45->xav_fill, D.13026
	salq	$3, %rax	#, D.13027
	addq	%rdx, %rax	# PL_stack_base.159, PL_stack_sp.160
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.160, PL_stack_sp
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# next, tmp207
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.161
	movq	%rax, PL_curstack(%rip)	# PL_curstack.161, PL_curstack
.LBE26:
	movq	-40(%rbp), %rax	# next, tmp208
	movq	%rax, PL_curstackinfo(%rip)	# tmp208, PL_curstackinfo
.LBE25:
.LBB27:
	.loc 1 574 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.162
	addq	$4, %rax	#, PL_markstack_ptr.163
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.163, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.164
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.165
	cmpq	%rax, %rdx	# PL_markstack_max.165, PL_markstack_ptr.164
	jne	.L165	#,
	.loc 1 574 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L165:
	.loc 1 574 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.166
	movq	%r12, %rcx	# sp, sp.167
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.168
	subq	%rdx, %rcx	# PL_stack_base.169, D.13026
	movq	%rcx, %rdx	# D.13026, D.13026
	sarq	$3, %rdx	#, tmp209
	movl	%edx, (%rax)	# D.13028, *PL_markstack_ptr.166_57
.LBE27:
.LBB28:
	.loc 1 575 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.170
	movq	%rax, %rdx	# PL_stack_max.170, PL_stack_max.171
	movq	%r12, %rax	# sp, sp.172
	subq	%rax, %rdx	# sp.172, D.13026
	movq	%rdx, %rax	# D.13026, D.13026
	cmpq	$7, %rax	#, D.13026
	jg	.L166	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L166:
	.loc 1 575 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-32(%rbp), %rax	# mg, tmp210
	movq	24(%rax), %rax	# mg_17->mg_obj, D.13022
	testq	%rax, %rax	# D.13022
	je	.L167	#,
	.loc 1 575 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp211
	movq	24(%rax), %rax	# mg_17->mg_obj, iftmp.173
	jmp	.L168	#
.L167:
	.loc 1 575 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13022,
	call	Perl_sv_2mortal	#
.L168:
	.loc 1 575 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.173, *sp_70
.LBE28:
	.loc 1 576 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 577 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 578 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.13028
	je	.L169	#,
	.loc 1 579 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.174
	leaq	-8(%rax), %rdx	#, PL_stack_sp.176
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.176, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.175_78, D.13022
	movq	%rax, %rdi	# D.13022,
	call	Perl_newSVsv	#
	movq	%rax, -48(%rbp)	# tmp212, retval
	jmp	.L170	#
.L169:
	.loc 1 581 0
	movq	$PL_sv_undef, -48(%rbp)	#, retval
.L170:
	.loc 1 583 0
	call	Perl_pop_scope	#
.LBB29:
	.loc 1 584 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.177
	movq	32(%rax), %rax	# PL_curstackinfo.177_84->si_prev, tmp213
	movq	%rax, -24(%rbp)	# tmp213, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L171	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.179
	testq	%rax, %rax	# PL_stderrgv.179
	je	.L172	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.180
	movl	12(%rax), %eax	# PL_stderrgv.180_87->sv_flags, D.13023
	movzbl	%al, %eax	# D.13023, D.13023
	cmpl	$13, %eax	#, D.13023
	jne	.L172	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.181
	movq	(%rax), %rax	# PL_stderrgv.181_90->sv_any, D.13030
	movq	56(%rax), %rax	# _91->xgv_gp, D.13031
	movq	16(%rax), %rax	# _92->gp_io, D.13032
	testq	%rax, %rax	# D.13032
	je	.L172	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.182
	movq	(%rax), %rax	# PL_stderrgv.182_94->sv_any, D.13030
	movq	56(%rax), %rax	# _95->xgv_gp, D.13031
	movq	16(%rax), %rax	# _96->gp_io, D.13032
	movq	(%rax), %rax	# _97->sv_any, D.13033
	movq	64(%rax), %rax	# _98->xio_ofp, D.13034
	testq	%rax, %rax	# D.13034
	je	.L172	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.183
	movq	(%rax), %rax	# PL_stderrgv.183_100->sv_any, D.13030
	movq	56(%rax), %rax	# _101->xgv_gp, D.13031
	movq	16(%rax), %rax	# _102->gp_io, D.13032
	movq	(%rax), %rax	# _103->sv_any, D.13033
	movq	64(%rax), %rax	# _104->xio_ofp, iftmp.178
	jmp	.L173	#
.L172:
	.loc 1 584 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L173:
	.loc 1 584 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.178,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L171:
.LBB30:
	.loc 1 584 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.184
	movq	(%rax), %rax	# PL_curstack.184_107->sv_any, D.13025
	movq	%rbx, %rcx	# sp, sp.185
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.186
	subq	%rdx, %rcx	# PL_stack_base.187, D.13026
	movq	%rcx, %rdx	# D.13026, D.13026
	sarq	$3, %rdx	#, tmp214
	movq	%rdx, 8(%rax)	# D.13026, _108->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp215
	movq	(%rax), %rax	# prev_85->si_stack, D.13024
	movq	(%rax), %rax	# _114->sv_any, D.13025
	movq	(%rax), %rax	# _115->xav_array, PL_stack_base.188
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.188, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.189
	movq	-24(%rbp), %rax	# prev, tmp216
	movq	(%rax), %rax	# prev_85->si_stack, D.13024
	movq	(%rax), %rax	# _118->sv_any, D.13025
	movq	16(%rax), %rax	# _119->xav_max, D.13026
	salq	$3, %rax	#, D.13027
	addq	%rdx, %rax	# PL_stack_base.189, PL_stack_max.190
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.190, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.191
	movq	-24(%rbp), %rax	# prev, tmp217
	movq	(%rax), %rax	# prev_85->si_stack, D.13024
	movq	(%rax), %rax	# _125->sv_any, D.13025
	movq	8(%rax), %rax	# _126->xav_fill, D.13026
	salq	$3, %rax	#, D.13027
	addq	%rdx, %rax	# PL_stack_base.191, PL_stack_sp.192
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.192, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp218
	movq	(%rax), %rax	# prev_85->si_stack, PL_curstack.193
	movq	%rax, PL_curstack(%rip)	# PL_curstack.193, PL_curstack
.LBE30:
	movq	-24(%rbp), %rax	# prev, tmp219
	movq	%rax, PL_curstackinfo(%rip)	# tmp219, PL_curstackinfo
.LBE29:
	.loc 1 585 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# retval, D.13022
	jmp	.L159	#
.L163:
.LBE24:
	.loc 1 587 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_9(D)].sv_flags, D.13023
	andl	$32768, %eax	#, D.13023
	testl	%eax, %eax	# D.13023
	je	.L174	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	shrl	$31, %eax	#, tmp220
	jmp	.L175	#
.L174:
	.loc 1 587 0 discriminator 2
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13025
	movq	8(%rax), %rax	# _140->xav_fill, D.13026
	shrq	$63, %rax	#, tmp221
.L175:
	.loc 1 587 0 discriminator 3
	testb	%al, %al	# iftmp.194
	je	.L176	#,
	.loc 1 588 0 is_stmt 1
	movl	$PL_sv_undef, %eax	#, D.13022
	jmp	.L159	#
.L176:
	.loc 1 589 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13025
	movq	(%rax), %rdx	# _144->xav_array, D.13036
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13025
	movq	8(%rax), %rax	# _146->xav_fill, D.13026
	salq	$3, %rax	#, D.13027
	addq	%rdx, %rax	# D.13036, D.13037
	movq	(%rax), %rax	# *_150, tmp222
	movq	%rax, -48(%rbp)	# tmp222, retval
	.loc 1 590 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13025
	movq	(%rax), %rsi	# _152->xav_array, D.13036
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13025
	movq	8(%rax), %rdx	# _154->xav_fill, D.13026
	leaq	-1(%rdx), %rcx	#, D.13026
	movq	%rcx, 8(%rax)	# D.13026, _154->xav_fill
	movq	%rdx, %rax	# D.13026, D.13027
	salq	$3, %rax	#, D.13027
	addq	%rsi, %rax	# D.13036, D.13037
	movq	$PL_sv_undef, (%rax)	#, *_160
	.loc 1 591 0
	movl	12(%rbx), %eax	# av_9(D)->sv_flags, D.13023
	andl	$16384, %eax	#, D.13023
	testl	%eax, %eax	# D.13023
	je	.L177	#,
	.loc 1 592 0
	movq	%rbx, %rdi	# av,
	call	Perl_mg_set	#
.L177:
	.loc 1 593 0
	movq	-48(%rbp), %rax	# retval, D.13022
.L159:
	.loc 1 594 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_av_pop, .-Perl_av_pop
	.section	.rodata
.LC6:
	.string	"UNSHIFT"
	.text
	.globl	Perl_av_unshift
	.type	Perl_av_unshift, @function
Perl_av_unshift:
.LFB13:
	.loc 1 608 0
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
	movq	%rdi, %rbx	# av, av
	movl	%esi, %r12d	# num, num
	.loc 1 614 0
	testq	%rbx, %rbx	# av
	jne	.L179	#,
	.loc 1 615 0
	jmp	.L178	#
.L179:
	.loc 1 616 0
	movl	12(%rbx), %eax	# av_11(D)->sv_flags, D.13039
	andl	$8388608, %eax	#, D.13039
	testl	%eax, %eax	# D.13039
	je	.L181	#,
	.loc 1 617 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L181:
	.loc 1 619 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_11(D)].sv_flags, D.13039
	andl	$32768, %eax	#, D.13039
	testl	%eax, %eax	# D.13039
	je	.L182	#,
	.loc 1 619 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	jmp	.L183	#
.L182:
	.loc 1 619 0 discriminator 2
	movl	$0, %eax	#, iftmp.195
.L183:
	.loc 1 619 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.195, mg
	cmpq	$0, -48(%rbp)	#, mg
	je	.L184	#,
.LBB31:
	.loc 1 620 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
.LBB32:
	.loc 1 621 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.196
	movq	40(%rax), %rax	# PL_curstackinfo.196_20->si_next, tmp240
	movq	%rax, -56(%rbp)	# tmp240, next
	cmpq	$0, -56(%rbp)	#, next
	jne	.L185	#,
	.loc 1 621 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -56(%rbp)	# tmp241, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.197
	movq	-56(%rbp), %rax	# next, tmp242
	movq	%rdx, 32(%rax)	# PL_curstackinfo.197, next_22->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.198
	movq	-56(%rbp), %rdx	# next, tmp243
	movq	%rdx, 40(%rax)	# tmp243, PL_curstackinfo.198_24->si_next
.L185:
	.loc 1 621 0 discriminator 2
	movq	-56(%rbp), %rax	# next, tmp244
	movl	$2, 24(%rax)	#, next_7->si_type
	movq	-56(%rbp), %rax	# next, tmp245
	movl	$-1, 16(%rax)	#, next_7->si_cxix
	movq	-56(%rbp), %rax	# next, tmp246
	movq	(%rax), %rax	# next_7->si_stack, D.13040
	movq	(%rax), %rax	# _25->sv_any, D.13041
	movq	$0, 8(%rax)	#, _26->xav_fill
.LBB33:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.199
	movq	(%rax), %rax	# PL_curstack.199_27->sv_any, D.13041
	movq	%r13, %rcx	# sp, sp.200
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.201
	subq	%rdx, %rcx	# PL_stack_base.202, D.13042
	movq	%rcx, %rdx	# D.13042, D.13042
	sarq	$3, %rdx	#, tmp247
	movq	%rdx, 8(%rax)	# D.13042, _28->xav_fill
	movq	-56(%rbp), %rax	# next, tmp248
	movq	(%rax), %rax	# next_7->si_stack, D.13040
	movq	(%rax), %rax	# _34->sv_any, D.13041
	movq	(%rax), %rax	# _35->xav_array, PL_stack_base.203
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.203, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.204
	movq	-56(%rbp), %rax	# next, tmp249
	movq	(%rax), %rax	# next_7->si_stack, D.13040
	movq	(%rax), %rax	# _38->sv_any, D.13041
	movq	16(%rax), %rax	# _39->xav_max, D.13042
	salq	$3, %rax	#, D.13043
	addq	%rdx, %rax	# PL_stack_base.204, PL_stack_max.205
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.205, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.206
	movq	-56(%rbp), %rax	# next, tmp250
	movq	(%rax), %rax	# next_7->si_stack, D.13040
	movq	(%rax), %rax	# _45->sv_any, D.13041
	movq	8(%rax), %rax	# _46->xav_fill, D.13042
	salq	$3, %rax	#, D.13043
	addq	%rdx, %rax	# PL_stack_base.206, PL_stack_sp.207
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.207, PL_stack_sp
	movq	PL_stack_sp(%rip), %r13	# PL_stack_sp, sp
	movq	-56(%rbp), %rax	# next, tmp251
	movq	(%rax), %rax	# next_7->si_stack, PL_curstack.208
	movq	%rax, PL_curstack(%rip)	# PL_curstack.208, PL_curstack
.LBE33:
	movq	-56(%rbp), %rax	# next, tmp252
	movq	%rax, PL_curstackinfo(%rip)	# tmp252, PL_curstackinfo
.LBE32:
.LBB34:
	.loc 1 622 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.209
	addq	$4, %rax	#, PL_markstack_ptr.210
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.210, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.211
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.212
	cmpq	%rax, %rdx	# PL_markstack_max.212, PL_markstack_ptr.211
	jne	.L186	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L186:
	.loc 1 622 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.213
	movq	%r13, %rcx	# sp, sp.214
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.215
	subq	%rdx, %rcx	# PL_stack_base.216, D.13042
	movq	%rcx, %rdx	# D.13042, D.13042
	sarq	$3, %rdx	#, tmp253
	movl	%edx, (%rax)	# D.13044, *PL_markstack_ptr.213_58
.LBE34:
	.loc 1 623 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.217
	movq	%rax, %rdx	# PL_stack_max.217, PL_stack_max.218
	movq	%r13, %rax	# sp, sp.219
	subq	%rax, %rdx	# sp.219, D.13042
	movq	%rdx, %rax	# D.13042, D.13042
	sarq	$3, %rax	#, tmp254
	movq	%rax, %rdx	# tmp254, D.13042
	leal	1(%r12), %eax	#, D.13044
	cltq
	cmpq	%rax, %rdx	# D.13042, D.13042
	jge	.L187	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	leal	1(%r12), %eax	#, D.13044
	movl	%eax, %edx	# D.13044,
	movq	%r13, %rsi	# sp,
	movq	%r13, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r13	#, sp
.L187:
	.loc 1 624 0 is_stmt 1
	addq	$8, %r13	#, sp
	movq	-48(%rbp), %rax	# mg, tmp255
	movq	24(%rax), %rax	# mg_18->mg_obj, D.13046
	testq	%rax, %rax	# D.13046
	je	.L188	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mg, tmp256
	movq	24(%rax), %rax	# mg_18->mg_obj, iftmp.220
	jmp	.L189	#
.L188:
	.loc 1 624 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13046,
	call	Perl_sv_2mortal	#
.L189:
	.loc 1 624 0 discriminator 3
	movq	%rax, 0(%r13)	# iftmp.220, *sp_76
	.loc 1 625 0 is_stmt 1 discriminator 3
	jmp	.L190	#
.L191:
	.loc 1 626 0
	addq	$8, %r13	#, sp
	movq	$PL_sv_undef, 0(%r13)	#, *sp_83
.L190:
	.loc 1 625 0 discriminator 1
	movl	%r12d, %eax	# num, num.221
	leal	-1(%rax), %r12d	#, num
	testl	%eax, %eax	# num.221
	jg	.L191	#,
	.loc 1 628 0
	movq	%r13, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 629 0
	call	Perl_push_scope	#
	.loc 1 630 0
	movl	$2, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_call_method	#
	.loc 1 631 0
	call	Perl_pop_scope	#
.LBB35:
	.loc 1 632 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.222
	movq	32(%rax), %rax	# PL_curstackinfo.222_85->si_prev, tmp257
	movq	%rax, -40(%rbp)	# tmp257, prev
	cmpq	$0, -40(%rbp)	#, prev
	jne	.L192	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.224
	testq	%rax, %rax	# PL_stderrgv.224
	je	.L193	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.225
	movl	12(%rax), %eax	# PL_stderrgv.225_88->sv_flags, D.13039
	movzbl	%al, %eax	# D.13039, D.13039
	cmpl	$13, %eax	#, D.13039
	jne	.L193	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.226
	movq	(%rax), %rax	# PL_stderrgv.226_91->sv_any, D.13047
	movq	56(%rax), %rax	# _92->xgv_gp, D.13048
	movq	16(%rax), %rax	# _93->gp_io, D.13049
	testq	%rax, %rax	# D.13049
	je	.L193	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.227
	movq	(%rax), %rax	# PL_stderrgv.227_95->sv_any, D.13047
	movq	56(%rax), %rax	# _96->xgv_gp, D.13048
	movq	16(%rax), %rax	# _97->gp_io, D.13049
	movq	(%rax), %rax	# _98->sv_any, D.13050
	movq	64(%rax), %rax	# _99->xio_ofp, D.13051
	testq	%rax, %rax	# D.13051
	je	.L193	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.228
	movq	(%rax), %rax	# PL_stderrgv.228_101->sv_any, D.13047
	movq	56(%rax), %rax	# _102->xgv_gp, D.13048
	movq	16(%rax), %rax	# _103->gp_io, D.13049
	movq	(%rax), %rax	# _104->sv_any, D.13050
	movq	64(%rax), %rax	# _105->xio_ofp, iftmp.223
	jmp	.L194	#
.L193:
	.loc 1 632 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L194:
	.loc 1 632 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.223,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L192:
.LBB36:
	.loc 1 632 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.229
	movq	(%rax), %rax	# PL_curstack.229_108->sv_any, D.13041
	movq	%rbx, %rcx	# sp, sp.230
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.231
	subq	%rdx, %rcx	# PL_stack_base.232, D.13042
	movq	%rcx, %rdx	# D.13042, D.13042
	sarq	$3, %rdx	#, tmp258
	movq	%rdx, 8(%rax)	# D.13042, _109->xav_fill
	movq	-40(%rbp), %rax	# prev, tmp259
	movq	(%rax), %rax	# prev_86->si_stack, D.13040
	movq	(%rax), %rax	# _115->sv_any, D.13041
	movq	(%rax), %rax	# _116->xav_array, PL_stack_base.233
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.233, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.234
	movq	-40(%rbp), %rax	# prev, tmp260
	movq	(%rax), %rax	# prev_86->si_stack, D.13040
	movq	(%rax), %rax	# _119->sv_any, D.13041
	movq	16(%rax), %rax	# _120->xav_max, D.13042
	salq	$3, %rax	#, D.13043
	addq	%rdx, %rax	# PL_stack_base.234, PL_stack_max.235
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.235, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.236
	movq	-40(%rbp), %rax	# prev, tmp261
	movq	(%rax), %rax	# prev_86->si_stack, D.13040
	movq	(%rax), %rax	# _126->sv_any, D.13041
	movq	8(%rax), %rax	# _127->xav_fill, D.13042
	salq	$3, %rax	#, D.13043
	addq	%rdx, %rax	# PL_stack_base.236, PL_stack_sp.237
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.237, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# prev, tmp262
	movq	(%rax), %rax	# prev_86->si_stack, PL_curstack.238
	movq	%rax, PL_curstack(%rip)	# PL_curstack.238, PL_curstack
.LBE36:
	movq	-40(%rbp), %rax	# prev, tmp263
	movq	%rax, PL_curstackinfo(%rip)	# tmp263, PL_curstackinfo
.LBE35:
	.loc 1 633 0 is_stmt 1 discriminator 2
	jmp	.L178	#
.L184:
.LBE31:
	.loc 1 636 0
	testl	%r12d, %r12d	# num
	jg	.L195	#,
	.loc 1 637 0
	jmp	.L178	#
.L195:
	.loc 1 638 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movzbl	72(%rax), %eax	# _136->xav_flags, D.13053
	movzbl	%al, %eax	# D.13053, D.13044
	andl	$1, %eax	#, D.13044
	testl	%eax, %eax	# D.13044
	jne	.L196	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movzbl	72(%rax), %eax	# _140->xav_flags, D.13053
	movzbl	%al, %eax	# D.13053, D.13044
	andl	$2, %eax	#, D.13044
	testl	%eax, %eax	# D.13044
	je	.L196	#,
	.loc 1 639 0 is_stmt 1
	movq	%rbx, %rdi	# av,
	call	Perl_av_reify	#
.L196:
	.loc 1 640 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rax), %rax	# _144->xav_array, D.13054
	movq	%rax, %rdx	# D.13054, D.13042
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	56(%rax), %rax	# _147->xav_alloc, D.13055
	subq	%rax, %rdx	# D.13042, D.13042
	movq	%rdx, %rax	# D.13042, D.13042
	sarq	$3, %rax	#, tmp264
	movl	%eax, %r13d	# D.13042, i
	.loc 1 641 0
	testl	%r13d, %r13d	# i
	je	.L197	#,
	.loc 1 642 0
	cmpl	%r12d, %r13d	# num, i
	jle	.L198	#,
	.loc 1 643 0
	movl	%r12d, %r13d	# num, i
.L198:
	.loc 1 644 0
	subl	%r13d, %r12d	# i, num
	.loc 1 646 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	16(%rdx), %rcx	# _156->xav_max, D.13042
	movslq	%r13d, %rdx	# i, D.13042
	addq	%rcx, %rdx	# D.13042, D.13042
	movq	%rdx, 16(%rax)	# D.13042, _155->xav_max
	.loc 1 647 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	8(%rdx), %rcx	# _161->xav_fill, D.13042
	movslq	%r13d, %rdx	# i, D.13042
	addq	%rcx, %rdx	# D.13042, D.13042
	movq	%rdx, 8(%rax)	# D.13042, _160->xav_fill
	.loc 1 648 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	(%rdx), %rdx	# _166->xav_array, D.13054
	movslq	%r13d, %rcx	# i, D.13043
	salq	$3, %rcx	#, D.13043
	negq	%rcx	# D.13056
	addq	%rcx, %rdx	# D.13056, D.13054
	movq	%rdx, (%rax)	# D.13054, MEM[(struct XPV *)_165].xpv_pv
.L197:
	.loc 1 650 0
	testl	%r12d, %r12d	# num
	je	.L178	#,
	.loc 1 651 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	8(%rax), %rax	# _172->xav_fill, D.13042
	movl	%eax, %r13d	# D.13042, i
	.loc 1 653 0
	movl	$0, %eax	#, tmp266
	testl	%r13d, %r13d	# i
	cmovns	%r13d, %eax	# i,, tmp265
	movl	%eax, -60(%rbp)	# tmp265, slide
	.loc 1 654 0
	movl	-60(%rbp), %eax	# slide, tmp269
	addl	%r12d, %eax	# num, tmp268
	movl	%eax, %r12d	# tmp268, num
	.loc 1 655 0
	leal	0(%r13,%r12), %eax	#, D.13044
	movl	%eax, %esi	# D.13044,
	movq	%rbx, %rdi	# av,
	call	Perl_av_extend	#
	.loc 1 656 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	8(%rdx), %rcx	# _179->xav_fill, D.13042
	movslq	%r12d, %rdx	# num, D.13042
	addq	%rcx, %rdx	# D.13042, D.13042
	movq	%rdx, 8(%rax)	# D.13042, _178->xav_fill
	.loc 1 657 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rax), %r14	# _183->xav_array, ary
	.loc 1 658 0
	leal	1(%r13), %eax	#, D.13044
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13043
	movslq	%r12d, %rax	# num, D.13043
	salq	$3, %rax	#, D.13043
	addq	%r14, %rax	# ary, D.13057
	movq	%r14, %rsi	# ary,
	movq	%rax, %rdi	# D.13057,
	call	memmove	#
.L199:
	.loc 1 660 0 discriminator 1
	subl	$1, %r12d	#, num
	movslq	%r12d, %rax	# num, D.13043
	salq	$3, %rax	#, D.13043
	addq	%r14, %rax	# ary, D.13055
	movq	$PL_sv_undef, (%rax)	#, *_194
	.loc 1 661 0 discriminator 1
	testl	%r12d, %r12d	# num
	jne	.L199	#,
	.loc 1 663 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	16(%rdx), %rcx	# _196->xav_max, D.13042
	movl	-60(%rbp), %edx	# slide, tmp270
	movslq	%edx, %rdx	# tmp270, D.13042
	subq	%rdx, %rcx	# D.13042, D.13042
	movq	%rcx, %rdx	# D.13042, D.13042
	movq	%rdx, 16(%rax)	# D.13042, _195->xav_max
	.loc 1 664 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	8(%rdx), %rcx	# _201->xav_fill, D.13042
	movl	-60(%rbp), %edx	# slide, tmp271
	movslq	%edx, %rdx	# tmp271, D.13042
	subq	%rdx, %rcx	# D.13042, D.13042
	movq	%rcx, %rdx	# D.13042, D.13042
	movq	%rdx, 8(%rax)	# D.13042, _200->xav_fill
	.loc 1 665 0
	movq	(%rbx), %rax	# av_11(D)->sv_any, D.13041
	movq	(%rbx), %rdx	# av_11(D)->sv_any, D.13041
	movq	(%rdx), %rdx	# _206->xav_array, D.13054
	movl	-60(%rbp), %ecx	# slide, tmp272
	movslq	%ecx, %rcx	# tmp272, D.13043
	salq	$3, %rcx	#, D.13043
	addq	%rcx, %rdx	# D.13043, D.13054
	movq	%rdx, (%rax)	# D.13054, MEM[(struct XPV *)_205].xpv_pv
.L178:
	.loc 1 667 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_av_unshift, .-Perl_av_unshift
	.section	.rodata
.LC7:
	.string	"SHIFT"
	.text
	.globl	Perl_av_shift
	.type	Perl_av_shift, @function
Perl_av_shift:
.LFB14:
	.loc 1 679 0
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
	movq	%rdi, %rbx	# av, av
	.loc 1 683 0
	testq	%rbx, %rbx	# av
	jne	.L201	#,
	.loc 1 684 0
	movl	$PL_sv_undef, %eax	#, D.13059
	jmp	.L202	#
.L201:
	.loc 1 685 0
	movl	12(%rbx), %eax	# av_9(D)->sv_flags, D.13060
	andl	$8388608, %eax	#, D.13060
	testl	%eax, %eax	# D.13060
	je	.L203	#,
	.loc 1 686 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L203:
	.loc 1 687 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_9(D)].sv_flags, D.13060
	andl	$32768, %eax	#, D.13060
	testl	%eax, %eax	# D.13060
	je	.L204	#,
	.loc 1 687 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	jmp	.L205	#
.L204:
	.loc 1 687 0 discriminator 2
	movl	$0, %eax	#, iftmp.239
.L205:
	.loc 1 687 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.239, mg
	cmpq	$0, -32(%rbp)	#, mg
	je	.L206	#,
.LBB37:
	.loc 1 688 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
.LBB38:
	.loc 1 689 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.240
	movq	40(%rax), %rax	# PL_curstackinfo.240_19->si_next, tmp199
	movq	%rax, -40(%rbp)	# tmp199, next
	cmpq	$0, -40(%rbp)	#, next
	jne	.L207	#,
	.loc 1 689 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -40(%rbp)	# tmp200, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.241
	movq	-40(%rbp), %rax	# next, tmp201
	movq	%rdx, 32(%rax)	# PL_curstackinfo.241, next_21->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.242
	movq	-40(%rbp), %rdx	# next, tmp202
	movq	%rdx, 40(%rax)	# tmp202, PL_curstackinfo.242_23->si_next
.L207:
	.loc 1 689 0 discriminator 2
	movq	-40(%rbp), %rax	# next, tmp203
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-40(%rbp), %rax	# next, tmp204
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-40(%rbp), %rax	# next, tmp205
	movq	(%rax), %rax	# next_3->si_stack, D.13061
	movq	(%rax), %rax	# _24->sv_any, D.13062
	movq	$0, 8(%rax)	#, _25->xav_fill
.LBB39:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.243
	movq	(%rax), %rax	# PL_curstack.243_26->sv_any, D.13062
	movq	%r12, %rcx	# sp, sp.244
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.245
	subq	%rdx, %rcx	# PL_stack_base.246, D.13063
	movq	%rcx, %rdx	# D.13063, D.13063
	sarq	$3, %rdx	#, tmp206
	movq	%rdx, 8(%rax)	# D.13063, _27->xav_fill
	movq	-40(%rbp), %rax	# next, tmp207
	movq	(%rax), %rax	# next_3->si_stack, D.13061
	movq	(%rax), %rax	# _33->sv_any, D.13062
	movq	(%rax), %rax	# _34->xav_array, PL_stack_base.247
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.247, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.248
	movq	-40(%rbp), %rax	# next, tmp208
	movq	(%rax), %rax	# next_3->si_stack, D.13061
	movq	(%rax), %rax	# _37->sv_any, D.13062
	movq	16(%rax), %rax	# _38->xav_max, D.13063
	salq	$3, %rax	#, D.13064
	addq	%rdx, %rax	# PL_stack_base.248, PL_stack_max.249
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.249, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.250
	movq	-40(%rbp), %rax	# next, tmp209
	movq	(%rax), %rax	# next_3->si_stack, D.13061
	movq	(%rax), %rax	# _44->sv_any, D.13062
	movq	8(%rax), %rax	# _45->xav_fill, D.13063
	salq	$3, %rax	#, D.13064
	addq	%rdx, %rax	# PL_stack_base.250, PL_stack_sp.251
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.251, PL_stack_sp
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	-40(%rbp), %rax	# next, tmp210
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.252
	movq	%rax, PL_curstack(%rip)	# PL_curstack.252, PL_curstack
.LBE39:
	movq	-40(%rbp), %rax	# next, tmp211
	movq	%rax, PL_curstackinfo(%rip)	# tmp211, PL_curstackinfo
.LBE38:
.LBB40:
	.loc 1 690 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.253
	addq	$4, %rax	#, PL_markstack_ptr.254
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.254, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.255
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.256
	cmpq	%rax, %rdx	# PL_markstack_max.256, PL_markstack_ptr.255
	jne	.L208	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L208:
	.loc 1 690 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.257
	movq	%r12, %rcx	# sp, sp.258
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.259
	subq	%rdx, %rcx	# PL_stack_base.260, D.13063
	movq	%rcx, %rdx	# D.13063, D.13063
	sarq	$3, %rdx	#, tmp212
	movl	%edx, (%rax)	# D.13065, *PL_markstack_ptr.257_57
.LBE40:
.LBB41:
	.loc 1 691 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.261
	movq	%rax, %rdx	# PL_stack_max.261, PL_stack_max.262
	movq	%r12, %rax	# sp, sp.263
	subq	%rax, %rdx	# sp.263, D.13063
	movq	%rdx, %rax	# D.13063, D.13063
	cmpq	$7, %rax	#, D.13063
	jg	.L209	#,
	.loc 1 691 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L209:
	.loc 1 691 0 discriminator 2
	addq	$8, %r12	#, sp
	movq	-32(%rbp), %rax	# mg, tmp213
	movq	24(%rax), %rax	# mg_17->mg_obj, D.13059
	testq	%rax, %rax	# D.13059
	je	.L210	#,
	.loc 1 691 0 discriminator 1
	movq	-32(%rbp), %rax	# mg, tmp214
	movq	24(%rax), %rax	# mg_17->mg_obj, iftmp.264
	jmp	.L211	#
.L210:
	.loc 1 691 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13059,
	call	Perl_sv_2mortal	#
.L211:
	.loc 1 691 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.264, *sp_70
.LBE41:
	.loc 1 692 0 is_stmt 1 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 693 0 discriminator 3
	call	Perl_push_scope	#
	.loc 1 694 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.13065
	je	.L212	#,
	.loc 1 695 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.265
	leaq	-8(%rax), %rdx	#, PL_stack_sp.267
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.267, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.266_78, D.13059
	movq	%rax, %rdi	# D.13059,
	call	Perl_newSVsv	#
	movq	%rax, -48(%rbp)	# tmp215, retval
	jmp	.L213	#
.L212:
	.loc 1 697 0
	movq	$PL_sv_undef, -48(%rbp)	#, retval
.L213:
	.loc 1 699 0
	call	Perl_pop_scope	#
.LBB42:
	.loc 1 700 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.268
	movq	32(%rax), %rax	# PL_curstackinfo.268_84->si_prev, tmp216
	movq	%rax, -24(%rbp)	# tmp216, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L214	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.270
	testq	%rax, %rax	# PL_stderrgv.270
	je	.L215	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.271
	movl	12(%rax), %eax	# PL_stderrgv.271_87->sv_flags, D.13060
	movzbl	%al, %eax	# D.13060, D.13060
	cmpl	$13, %eax	#, D.13060
	jne	.L215	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.272
	movq	(%rax), %rax	# PL_stderrgv.272_90->sv_any, D.13067
	movq	56(%rax), %rax	# _91->xgv_gp, D.13068
	movq	16(%rax), %rax	# _92->gp_io, D.13069
	testq	%rax, %rax	# D.13069
	je	.L215	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.273
	movq	(%rax), %rax	# PL_stderrgv.273_94->sv_any, D.13067
	movq	56(%rax), %rax	# _95->xgv_gp, D.13068
	movq	16(%rax), %rax	# _96->gp_io, D.13069
	movq	(%rax), %rax	# _97->sv_any, D.13070
	movq	64(%rax), %rax	# _98->xio_ofp, D.13071
	testq	%rax, %rax	# D.13071
	je	.L215	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.274
	movq	(%rax), %rax	# PL_stderrgv.274_100->sv_any, D.13067
	movq	56(%rax), %rax	# _101->xgv_gp, D.13068
	movq	16(%rax), %rax	# _102->gp_io, D.13069
	movq	(%rax), %rax	# _103->sv_any, D.13070
	movq	64(%rax), %rax	# _104->xio_ofp, iftmp.269
	jmp	.L216	#
.L215:
	.loc 1 700 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L216:
	.loc 1 700 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.269,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L214:
.LBB43:
	.loc 1 700 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.275
	movq	(%rax), %rax	# PL_curstack.275_107->sv_any, D.13062
	movq	%rbx, %rcx	# sp, sp.276
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.277
	subq	%rdx, %rcx	# PL_stack_base.278, D.13063
	movq	%rcx, %rdx	# D.13063, D.13063
	sarq	$3, %rdx	#, tmp217
	movq	%rdx, 8(%rax)	# D.13063, _108->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp218
	movq	(%rax), %rax	# prev_85->si_stack, D.13061
	movq	(%rax), %rax	# _114->sv_any, D.13062
	movq	(%rax), %rax	# _115->xav_array, PL_stack_base.279
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.279, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.280
	movq	-24(%rbp), %rax	# prev, tmp219
	movq	(%rax), %rax	# prev_85->si_stack, D.13061
	movq	(%rax), %rax	# _118->sv_any, D.13062
	movq	16(%rax), %rax	# _119->xav_max, D.13063
	salq	$3, %rax	#, D.13064
	addq	%rdx, %rax	# PL_stack_base.280, PL_stack_max.281
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.281, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.282
	movq	-24(%rbp), %rax	# prev, tmp220
	movq	(%rax), %rax	# prev_85->si_stack, D.13061
	movq	(%rax), %rax	# _125->sv_any, D.13062
	movq	8(%rax), %rax	# _126->xav_fill, D.13063
	salq	$3, %rax	#, D.13064
	addq	%rdx, %rax	# PL_stack_base.282, PL_stack_sp.283
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.283, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp221
	movq	(%rax), %rax	# prev_85->si_stack, PL_curstack.284
	movq	%rax, PL_curstack(%rip)	# PL_curstack.284, PL_curstack
.LBE43:
	movq	-24(%rbp), %rax	# prev, tmp222
	movq	%rax, PL_curstackinfo(%rip)	# tmp222, PL_curstackinfo
.LBE42:
	.loc 1 701 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# retval, D.13059
	jmp	.L202	#
.L206:
.LBE37:
	.loc 1 703 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_9(D)].sv_flags, D.13060
	andl	$32768, %eax	#, D.13060
	testl	%eax, %eax	# D.13060
	je	.L217	#,
	.loc 1 703 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdi	# av,
	call	Perl_mg_size	#
	shrl	$31, %eax	#, tmp223
	jmp	.L218	#
.L217:
	.loc 1 703 0 discriminator 2
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	8(%rax), %rax	# _140->xav_fill, D.13063
	shrq	$63, %rax	#, tmp224
.L218:
	.loc 1 703 0 discriminator 3
	testb	%al, %al	# iftmp.285
	je	.L219	#,
	.loc 1 704 0 is_stmt 1
	movl	$PL_sv_undef, %eax	#, D.13059
	jmp	.L202	#
.L219:
	.loc 1 705 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	(%rax), %rax	# _144->xav_array, D.13073
	movq	(%rax), %rax	# MEM[(struct SV * *)_145], tmp225
	movq	%rax, -48(%rbp)	# tmp225, retval
	.loc 1 706 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movzbl	72(%rax), %eax	# _147->xav_flags, D.13074
	movzbl	%al, %eax	# D.13074, D.13065
	andl	$1, %eax	#, D.13065
	testl	%eax, %eax	# D.13065
	je	.L220	#,
	.loc 1 707 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	(%rax), %rax	# _151->xav_array, D.13073
	movq	$PL_sv_undef, (%rax)	#, MEM[(struct SV * *)_152]
.L220:
	.loc 1 708 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	(%rbx), %rdx	# av_9(D)->sv_any, D.13062
	movq	(%rdx), %rdx	# _154->xav_array, D.13073
	addq	$8, %rdx	#, D.13073
	movq	%rdx, (%rax)	# D.13073, MEM[(struct XPV *)_153].xpv_pv
	.loc 1 709 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	16(%rax), %rdx	# _157->xav_max, D.13063
	subq	$1, %rdx	#, D.13063
	movq	%rdx, 16(%rax)	# D.13063, _157->xav_max
	.loc 1 710 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13062
	movq	8(%rax), %rdx	# _160->xav_fill, D.13063
	subq	$1, %rdx	#, D.13063
	movq	%rdx, 8(%rax)	# D.13063, _160->xav_fill
	.loc 1 711 0
	movl	12(%rbx), %eax	# av_9(D)->sv_flags, D.13060
	andl	$16384, %eax	#, D.13060
	testl	%eax, %eax	# D.13060
	je	.L221	#,
	.loc 1 712 0
	movq	%rbx, %rdi	# av,
	call	Perl_mg_set	#
.L221:
	.loc 1 713 0
	movq	-48(%rbp), %rax	# retval, D.13059
.L202:
	.loc 1 714 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_av_shift, .-Perl_av_shift
	.globl	Perl_av_len
	.type	Perl_av_len, @function
Perl_av_len:
.LFB15:
	.loc 1 727 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# av, av
	.loc 1 728 0
	movl	12(%rax), %edx	# MEM[(struct SV *)av_2(D)].sv_flags, D.13076
	andl	$32768, %edx	#, D.13076
	testl	%edx, %edx	# D.13076
	je	.L223	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movq	%rax, %rdi	# av,
	call	Perl_mg_size	#
	jmp	.L224	#
.L223:
	.loc 1 728 0 discriminator 2
	movq	(%rax), %rax	# av_2(D)->sv_any, D.13077
	movq	8(%rax), %rax	# _6->xav_fill, D.13078
.L224:
	.loc 1 729 0 is_stmt 1 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_av_len, .-Perl_av_len
	.section	.rodata
.LC8:
	.string	"panic: null array"
.LC9:
	.string	"STORESIZE"
	.text
	.globl	Perl_av_fill
	.type	Perl_av_fill, @function
Perl_av_fill:
.LFB16:
	.loc 1 741 0
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
	movq	%rdi, %rbx	# av, av
	movl	%esi, -68(%rbp)	# fill, fill
	.loc 1 743 0
	testq	%rbx, %rbx	# av
	jne	.L227	#,
	.loc 1 744 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L227:
	.loc 1 745 0
	cmpl	$0, -68(%rbp)	#, fill
	jns	.L228	#,
	.loc 1 746 0
	movl	$-1, -68(%rbp)	#, fill
.L228:
	.loc 1 747 0
	movl	12(%rbx), %eax	# MEM[(struct SV *)av_9(D)].sv_flags, D.13080
	andl	$32768, %eax	#, D.13080
	testl	%eax, %eax	# D.13080
	je	.L229	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	movl	$80, %esi	#,
	movq	%rbx, %rdi	# av,
	call	Perl_mg_find	#
	jmp	.L230	#
.L229:
	.loc 1 747 0 discriminator 2
	movl	$0, %eax	#, iftmp.287
.L230:
	.loc 1 747 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.287, mg
	cmpq	$0, -40(%rbp)	#, mg
	je	.L231	#,
.LBB44:
	.loc 1 748 0 is_stmt 1
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	.loc 1 749 0
	call	Perl_push_scope	#
	.loc 1 750 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.288
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.288, PL_tmps_floor
.LBB45:
	.loc 1 751 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.289
	movq	40(%rax), %rax	# PL_curstackinfo.289_19->si_next, tmp195
	movq	%rax, -48(%rbp)	# tmp195, next
	cmpq	$0, -48(%rbp)	#, next
	jne	.L232	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -48(%rbp)	# tmp196, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.290
	movq	-48(%rbp), %rax	# next, tmp197
	movq	%rdx, 32(%rax)	# PL_curstackinfo.290, next_21->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.291
	movq	-48(%rbp), %rdx	# next, tmp198
	movq	%rdx, 40(%rax)	# tmp198, PL_curstackinfo.291_23->si_next
.L232:
	.loc 1 751 0 discriminator 2
	movq	-48(%rbp), %rax	# next, tmp199
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-48(%rbp), %rax	# next, tmp200
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-48(%rbp), %rax	# next, tmp201
	movq	(%rax), %rax	# next_3->si_stack, D.13081
	movq	(%rax), %rax	# _24->sv_any, D.13082
	movq	$0, 8(%rax)	#, _25->xav_fill
.LBB46:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.292
	movq	(%rax), %rax	# PL_curstack.292_26->sv_any, D.13082
	movq	%r12, %rcx	# sp, sp.293
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.294
	subq	%rdx, %rcx	# PL_stack_base.295, D.13083
	movq	%rcx, %rdx	# D.13083, D.13083
	sarq	$3, %rdx	#, tmp202
	movq	%rdx, 8(%rax)	# D.13083, _27->xav_fill
	movq	-48(%rbp), %rax	# next, tmp203
	movq	(%rax), %rax	# next_3->si_stack, D.13081
	movq	(%rax), %rax	# _33->sv_any, D.13082
	movq	(%rax), %rax	# _34->xav_array, PL_stack_base.296
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.296, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.297
	movq	-48(%rbp), %rax	# next, tmp204
	movq	(%rax), %rax	# next_3->si_stack, D.13081
	movq	(%rax), %rax	# _37->sv_any, D.13082
	movq	16(%rax), %rax	# _38->xav_max, D.13083
	salq	$3, %rax	#, D.13084
	addq	%rdx, %rax	# PL_stack_base.297, PL_stack_max.298
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.298, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.299
	movq	-48(%rbp), %rax	# next, tmp205
	movq	(%rax), %rax	# next_3->si_stack, D.13081
	movq	(%rax), %rax	# _44->sv_any, D.13082
	movq	8(%rax), %rax	# _45->xav_fill, D.13083
	salq	$3, %rax	#, D.13084
	addq	%rdx, %rax	# PL_stack_base.299, PL_stack_sp.300
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.300, PL_stack_sp
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	-48(%rbp), %rax	# next, tmp206
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.301
	movq	%rax, PL_curstack(%rip)	# PL_curstack.301, PL_curstack
.LBE46:
	movq	-48(%rbp), %rax	# next, tmp207
	movq	%rax, PL_curstackinfo(%rip)	# tmp207, PL_curstackinfo
.LBE45:
.LBB47:
	.loc 1 752 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.302
	addq	$4, %rax	#, PL_markstack_ptr.303
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.303, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.304
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.305
	cmpq	%rax, %rdx	# PL_markstack_max.305, PL_markstack_ptr.304
	jne	.L233	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L233:
	.loc 1 752 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.306
	movq	%r12, %rcx	# sp, sp.307
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.308
	subq	%rdx, %rcx	# PL_stack_base.309, D.13083
	movq	%rcx, %rdx	# D.13083, D.13083
	sarq	$3, %rdx	#, tmp208
	movl	%edx, (%rax)	# D.13085, *PL_markstack_ptr.306_57
.LBE47:
	.loc 1 753 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.310
	movq	%rax, %rdx	# PL_stack_max.310, PL_stack_max.311
	movq	%r12, %rax	# sp, sp.312
	subq	%rax, %rdx	# sp.312, D.13083
	movq	%rdx, %rax	# D.13083, D.13083
	cmpq	$15, %rax	#, D.13083
	jg	.L234	#,
	.loc 1 753 0 is_stmt 0 discriminator 1
	movl	$2, %edx	#,
	movq	%r12, %rsi	# sp,
	movq	%r12, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %r12	#, sp
.L234:
	.loc 1 754 0 is_stmt 1
	addq	$8, %r12	#, sp
	movq	-40(%rbp), %rax	# mg, tmp209
	movq	24(%rax), %rax	# mg_16->mg_obj, D.13087
	testq	%rax, %rax	# D.13087
	je	.L235	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mg, tmp210
	movq	24(%rax), %rax	# mg_16->mg_obj, iftmp.313
	jmp	.L236	#
.L235:
	.loc 1 754 0 discriminator 2
	movq	%rbx, %rdi	# av,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13087,
	call	Perl_sv_2mortal	#
.L236:
	.loc 1 754 0 discriminator 3
	movq	%rax, (%r12)	# iftmp.313, *sp_70
	.loc 1 755 0 is_stmt 1 discriminator 3
	addq	$8, %r12	#, sp
	movl	-68(%rbp), %eax	# fill, tmp211
	addl	$1, %eax	#, D.13085
	cltq
	movq	%rax, %rdi	# D.13083,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13087,
	call	Perl_sv_2mortal	#
	movq	%rax, (%r12)	# D.13087, *sp_75
	.loc 1 756 0 discriminator 3
	movq	%r12, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 757 0 discriminator 3
	movl	$2, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_call_method	#
.LBB48:
	.loc 1 758 0 discriminator 3
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.314
	movq	32(%rax), %rax	# PL_curstackinfo.314_81->si_prev, tmp212
	movq	%rax, -32(%rbp)	# tmp212, prev
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L237	#,
	.loc 1 758 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.316
	testq	%rax, %rax	# PL_stderrgv.316
	je	.L238	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.317
	movl	12(%rax), %eax	# PL_stderrgv.317_84->sv_flags, D.13080
	movzbl	%al, %eax	# D.13080, D.13080
	cmpl	$13, %eax	#, D.13080
	jne	.L238	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.318
	movq	(%rax), %rax	# PL_stderrgv.318_87->sv_any, D.13088
	movq	56(%rax), %rax	# _88->xgv_gp, D.13089
	movq	16(%rax), %rax	# _89->gp_io, D.13090
	testq	%rax, %rax	# D.13090
	je	.L238	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.319
	movq	(%rax), %rax	# PL_stderrgv.319_91->sv_any, D.13088
	movq	56(%rax), %rax	# _92->xgv_gp, D.13089
	movq	16(%rax), %rax	# _93->gp_io, D.13090
	movq	(%rax), %rax	# _94->sv_any, D.13091
	movq	64(%rax), %rax	# _95->xio_ofp, D.13092
	testq	%rax, %rax	# D.13092
	je	.L238	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.320
	movq	(%rax), %rax	# PL_stderrgv.320_97->sv_any, D.13088
	movq	56(%rax), %rax	# _98->xgv_gp, D.13089
	movq	16(%rax), %rax	# _99->gp_io, D.13090
	movq	(%rax), %rax	# _100->sv_any, D.13091
	movq	64(%rax), %rax	# _101->xio_ofp, iftmp.315
	jmp	.L239	#
.L238:
	.loc 1 758 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L239:
	.loc 1 758 0 discriminator 3
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# iftmp.315,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L237:
.LBB49:
	.loc 1 758 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.321
	movq	(%rax), %rax	# PL_curstack.321_104->sv_any, D.13082
	movq	%rbx, %rcx	# sp, sp.322
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.323
	subq	%rdx, %rcx	# PL_stack_base.324, D.13083
	movq	%rcx, %rdx	# D.13083, D.13083
	sarq	$3, %rdx	#, tmp213
	movq	%rdx, 8(%rax)	# D.13083, _105->xav_fill
	movq	-32(%rbp), %rax	# prev, tmp214
	movq	(%rax), %rax	# prev_82->si_stack, D.13081
	movq	(%rax), %rax	# _111->sv_any, D.13082
	movq	(%rax), %rax	# _112->xav_array, PL_stack_base.325
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.325, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.326
	movq	-32(%rbp), %rax	# prev, tmp215
	movq	(%rax), %rax	# prev_82->si_stack, D.13081
	movq	(%rax), %rax	# _115->sv_any, D.13082
	movq	16(%rax), %rax	# _116->xav_max, D.13083
	salq	$3, %rax	#, D.13084
	addq	%rdx, %rax	# PL_stack_base.326, PL_stack_max.327
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.327, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.328
	movq	-32(%rbp), %rax	# prev, tmp216
	movq	(%rax), %rax	# prev_82->si_stack, D.13081
	movq	(%rax), %rax	# _122->sv_any, D.13082
	movq	8(%rax), %rax	# _123->xav_fill, D.13083
	salq	$3, %rax	#, D.13084
	addq	%rdx, %rax	# PL_stack_base.328, PL_stack_sp.329
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.329, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# prev, tmp217
	movq	(%rax), %rax	# prev_82->si_stack, PL_curstack.330
	movq	%rax, PL_curstack(%rip)	# PL_curstack.330, PL_curstack
.LBE49:
	movq	-32(%rbp), %rax	# prev, tmp218
	movq	%rax, PL_curstackinfo(%rip)	# tmp218, PL_curstackinfo
.LBE48:
	.loc 1 759 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.331
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.332
	cmpl	%eax, %edx	# PL_tmps_floor.332, PL_tmps_ix.331
	jle	.L240	#,
	.loc 1 759 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L240:
	.loc 1 760 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 761 0
	jmp	.L226	#
.L231:
.LBE44:
	.loc 1 763 0
	movl	-68(%rbp), %eax	# fill, tmp219
	movslq	%eax, %rdx	# tmp219, D.13083
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13082
	movq	16(%rax), %rax	# _135->xav_max, D.13083
	cmpq	%rax, %rdx	# D.13083, D.13083
	jg	.L242	#,
.LBB50:
	.loc 1 764 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13082
	movq	8(%rax), %rax	# _137->xav_fill, D.13083
	movl	%eax, -52(%rbp)	# D.13083, key
	.loc 1 765 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13082
	movq	(%rax), %rax	# _140->xav_array, tmp220
	movq	%rax, -24(%rbp)	# tmp220, ary
	.loc 1 767 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13082
	movzbl	72(%rax), %eax	# _142->xav_flags, D.13094
	movzbl	%al, %eax	# D.13094, D.13085
	andl	$1, %eax	#, D.13085
	testl	%eax, %eax	# D.13085
	je	.L243	#,
	.loc 1 768 0
	jmp	.L244	#
.L245:
	.loc 1 769 0
	movl	-52(%rbp), %eax	# key, tmp221
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13084
	movq	-24(%rbp), %rax	# ary, tmp222
	addq	%rdx, %rax	# D.13084, D.13095
	movq	(%rax), %rax	# *_148, D.13087
	movq	%rax, %rdi	# D.13087,
	call	Perl_sv_free	#
	.loc 1 770 0
	movl	-52(%rbp), %eax	# key, key.333
	leal	-1(%rax), %edx	#, tmp223
	movl	%edx, -52(%rbp)	# tmp223, key
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13084
	movq	-24(%rbp), %rax	# ary, tmp224
	addq	%rdx, %rax	# D.13084, D.13095
	movq	$PL_sv_undef, (%rax)	#, *_154
.L244:
	.loc 1 768 0 discriminator 1
	movl	-52(%rbp), %eax	# key, tmp225
	cmpl	-68(%rbp), %eax	# fill, tmp225
	jg	.L245	#,
	jmp	.L246	#
.L243:
	.loc 1 774 0
	jmp	.L247	#
.L248:
	.loc 1 775 0
	addl	$1, -52(%rbp)	#, key
	movl	-52(%rbp), %eax	# key, tmp226
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13084
	movq	-24(%rbp), %rax	# ary, tmp227
	addq	%rdx, %rax	# D.13084, D.13095
	movq	$PL_sv_undef, (%rax)	#, *_158
.L247:
	.loc 1 774 0 discriminator 1
	movl	-52(%rbp), %eax	# key, tmp228
	cmpl	-68(%rbp), %eax	# fill, tmp228
	jl	.L248	#,
.L246:
	.loc 1 778 0
	movq	(%rbx), %rax	# av_9(D)->sv_any, D.13082
	movl	-68(%rbp), %edx	# fill, tmp229
	movslq	%edx, %rdx	# tmp229, D.13083
	movq	%rdx, 8(%rax)	# D.13083, _159->xav_fill
	.loc 1 779 0
	movl	12(%rbx), %eax	# av_9(D)->sv_flags, D.13080
	andl	$16384, %eax	#, D.13080
	testl	%eax, %eax	# D.13080
	je	.L249	#,
	.loc 1 780 0
	movq	%rbx, %rdi	# av,
	call	Perl_mg_set	#
.LBE50:
	jmp	.L226	#
.L249:
	jmp	.L226	#
.L242:
	.loc 1 783 0
	movl	-68(%rbp), %eax	# fill, tmp230
	movl	$PL_sv_undef, %edx	#,
	movl	%eax, %esi	# tmp230,
	movq	%rbx, %rdi	# av,
	call	Perl_av_store	#
.L226:
	.loc 1 784 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_av_fill, .-Perl_av_fill
	.globl	Perl_av_delete
	.type	Perl_av_delete, @function
Perl_av_delete:
.LFB17:
	.loc 1 797 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# av, av
	movl	%esi, -60(%rbp)	# key, key
	movl	%edx, -64(%rbp)	# flags, flags
	.loc 1 800 0
	cmpq	$0, -56(%rbp)	#, av
	jne	.L251	#,
	.loc 1 801 0
	movl	$0, %eax	#, D.13098
	jmp	.L252	#
.L251:
	.loc 1 802 0
	movq	-56(%rbp), %rax	# av, tmp196
	movl	12(%rax), %eax	# av_16(D)->sv_flags, D.13099
	andl	$8388608, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L253	#,
	.loc 1 803 0
	movl	$PL_no_modify, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L253:
	.loc 1 805 0
	movq	-56(%rbp), %rax	# av, tmp197
	movl	12(%rax), %eax	# av_16(D)->sv_flags, D.13099
	andl	$32768, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L254	#,
.LBB51:
	.loc 1 806 0
	movq	-56(%rbp), %rax	# av, tmp198
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	Perl_mg_find	#
	movq	%rax, -24(%rbp)	# tmp199, tied_magic
	.loc 1 808 0
	cmpq	$0, -24(%rbp)	#, tied_magic
	jne	.L255	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp200
	movl	$68, %esi	#,
	movq	%rax, %rdi	# tmp200,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13100
	je	.L254	#,
.L255:
	.loc 1 810 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, key
	jns	.L256	#,
.LBB52:
	.loc 1 811 0
	movl	$1, -36(%rbp)	#, adjust_index
	.loc 1 812 0
	cmpq	$0, -24(%rbp)	#, tied_magic
	je	.L257	#,
.LBB53:
	.loc 1 814 0
	movq	-24(%rbp), %rax	# tied_magic, tmp201
	movq	24(%rax), %rax	# tied_magic_23->mg_obj, D.13098
	testq	%rax, %rax	# D.13098
	je	.L258	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tied_magic, tmp202
	movq	24(%rax), %rax	# tied_magic_23->mg_obj, iftmp.334
	jmp	.L259	#
.L258:
	.loc 1 814 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp203
	movq	%rax, %rdi	# tmp203,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13098,
	call	Perl_sv_2mortal	#
.L259:
	.loc 1 814 0 discriminator 3
	movq	(%rax), %rax	# iftmp.334_8->sv_any, D.13101
	movq	(%rax), %rax	# MEM[(struct XRV *)_30].xrv_rv, D.13098
	movq	(%rax), %rax	# _31->sv_any, D.13101
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_32].xmg_stash, D.13102
	.loc 1 813 0 is_stmt 1 discriminator 3
	movl	$0, %ecx	#,
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.13102,
	call	Perl_hv_fetch	#
	movq	%rax, -16(%rbp)	# tmp204, negative_indices_glob
	.loc 1 817 0 discriminator 3
	cmpq	$0, -16(%rbp)	#, negative_indices_glob
	je	.L257	#,
	.loc 1 818 0
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp205
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _35->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_36].xgv_gp, D.13103
	movq	(%rax), %rax	# _37->gp_sv, D.13098
	testq	%rax, %rax	# D.13098
	je	.L260	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp206
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _39->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_40].xgv_gp, D.13103
	movq	(%rax), %rax	# _41->gp_sv, D.13098
	movl	12(%rax), %eax	# _42->sv_flags, D.13099
	andl	$262144, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L261	#,
	.loc 1 818 0 discriminator 3
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp207
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _45->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_46].xgv_gp, D.13103
	movq	(%rax), %rax	# _47->gp_sv, D.13098
	movq	(%rax), %rax	# _48->sv_any, PL_Xpv.338
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.338, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.339
	testq	%rax, %rax	# PL_Xpv.339
	je	.L262	#,
	.loc 1 818 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.340
	movq	8(%rax), %rax	# PL_Xpv.340_51->xpv_cur, D.13104
	cmpq	$1, %rax	#, D.13104
	ja	.L263	#,
	.loc 1 818 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.341
	movq	8(%rax), %rax	# PL_Xpv.341_53->xpv_cur, D.13104
	testq	%rax, %rax	# D.13104
	je	.L262	#,
	.loc 1 818 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.342
	movq	(%rax), %rax	# PL_Xpv.342_55->xpv_pv, D.13105
	movzbl	(%rax), %eax	# *_56, D.13106
	cmpb	$48, %al	#, D.13106
	je	.L262	#,
.L263:
	.loc 1 818 0 discriminator 7
	movl	$1, %eax	#, iftmp.337
	jmp	.L264	#
.L262:
	.loc 1 818 0 discriminator 6
	movl	$0, %eax	#, iftmp.337
.L264:
	.loc 1 818 0 discriminator 9
	andl	$1, %eax	#, iftmp.336
	jmp	.L270	#
.L261:
	.loc 1 818 0 discriminator 4
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp208
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _61->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_62].xgv_gp, D.13103
	movq	(%rax), %rax	# _63->gp_sv, D.13098
	movl	12(%rax), %eax	# _64->sv_flags, D.13099
	andl	$65536, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L266	#,
	.loc 1 818 0 discriminator 10
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp209
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _67->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_68].xgv_gp, D.13103
	movq	(%rax), %rax	# _69->gp_sv, D.13098
	movq	(%rax), %rax	# _70->sv_any, D.13101
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_71].xiv_iv, D.13107
	testq	%rax, %rax	# D.13107
	setne	%al	#, iftmp.343
	jmp	.L270	#
.L266:
	.loc 1 818 0 discriminator 11
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp210
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _74->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_75].xgv_gp, D.13103
	movq	(%rax), %rax	# _76->gp_sv, D.13098
	movl	12(%rax), %eax	# _77->sv_flags, D.13099
	andl	$131072, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L268	#,
	.loc 1 818 0 discriminator 12
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp211
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _80->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_81].xgv_gp, D.13103
	movq	(%rax), %rax	# _82->gp_sv, D.13098
	movq	(%rax), %rax	# _83->sv_any, D.13101
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_84].xnv_nv, D.13108
	xorpd	%xmm1, %xmm1	# tmp213
	ucomisd	%xmm1, %xmm0	# tmp213, D.13108
	setp	%dl	#, tmp212
	movl	$1, %eax	#, tmp215
	xorpd	%xmm1, %xmm1	# tmp214
	ucomisd	%xmm1, %xmm0	# tmp214, D.13108
	cmove	%edx, %eax	# tmp212,, iftmp.344
	jmp	.L270	#
.L268:
	.loc 1 818 0 discriminator 13
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp216
	movq	(%rax), %rax	# *negative_indices_glob_34, D.13098
	movq	(%rax), %rax	# _87->sv_any, D.13101
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_88].xgv_gp, D.13103
	movq	(%rax), %rax	# _89->gp_sv, D.13098
	movq	%rax, %rdi	# D.13098,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13106
	setne	%al	#, iftmp.344
	jmp	.L270	#
.L260:
	.loc 1 818 0 discriminator 2
	movl	$0, %eax	#, iftmp.335
.L270:
	.loc 1 818 0 discriminator 16
	testb	%al, %al	# iftmp.335
	je	.L257	#,
	.loc 1 819 0 is_stmt 1
	movl	$0, -36(%rbp)	#, adjust_index
.L257:
.LBE53:
	.loc 1 821 0
	cmpl	$0, -36(%rbp)	#, adjust_index
	je	.L256	#,
	.loc 1 822 0
	movq	-56(%rbp), %rax	# av, tmp217
	movl	12(%rax), %eax	# MEM[(struct SV *)av_16(D)].sv_flags, D.13099
	andl	$32768, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L271	#,
	.loc 1 822 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp218
	movq	%rax, %rdi	# tmp218,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.345
	jmp	.L272	#
.L271:
	.loc 1 822 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp219
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	8(%rax), %rax	# _103->xav_fill, D.13107
	addl	$1, %eax	#, iftmp.345
.L272:
	.loc 1 822 0 discriminator 3
	movl	-60(%rbp), %edx	# key, key.346
	addl	%edx, %eax	# key.346, D.13110
	movl	%eax, -60(%rbp)	# D.13110, key
	.loc 1 823 0 is_stmt 1 discriminator 3
	cmpl	$0, -60(%rbp)	#, key
	jns	.L256	#,
	.loc 1 824 0
	movl	$0, %eax	#, D.13098
	jmp	.L252	#
.L256:
.LBE52:
	.loc 1 827 0
	movl	-60(%rbp), %ecx	# key, tmp220
	movq	-56(%rbp), %rax	# av, tmp221
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	Perl_av_fetch	#
	movq	%rax, -8(%rbp)	# tmp222, svp
	.loc 1 828 0
	cmpq	$0, -8(%rbp)	#, svp
	je	.L254	#,
	.loc 1 829 0
	movq	-8(%rbp), %rax	# svp, tmp223
	movq	(%rax), %rax	# *svp_111, tmp224
	movq	%rax, -32(%rbp)	# tmp224, sv
	.loc 1 830 0
	movq	-32(%rbp), %rax	# sv, tmp225
	movq	%rax, %rdi	# tmp225,
	call	Perl_mg_clear	#
	.loc 1 831 0
	movq	-32(%rbp), %rax	# sv, tmp226
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13100
	je	.L273	#,
	.loc 1 832 0
	movq	-32(%rbp), %rax	# sv, tmp227
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	Perl_sv_unmagic	#
	.loc 1 833 0
	movq	-32(%rbp), %rax	# sv, D.13098
	jmp	.L252	#
.L273:
	.loc 1 835 0
	movl	$0, %eax	#, D.13098
	jmp	.L252	#
.L254:
.LBE51:
	.loc 1 840 0
	cmpl	$0, -60(%rbp)	#, key
	jns	.L274	#,
	.loc 1 841 0
	movq	-56(%rbp), %rax	# av, tmp228
	movl	12(%rax), %eax	# MEM[(struct SV *)av_16(D)].sv_flags, D.13099
	andl	$32768, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L275	#,
	.loc 1 841 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp229
	movq	%rax, %rdi	# tmp229,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.347
	jmp	.L276	#
.L275:
	.loc 1 841 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp230
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	8(%rax), %rax	# _121->xav_fill, D.13107
	addl	$1, %eax	#, iftmp.347
.L276:
	.loc 1 841 0 discriminator 3
	movl	-60(%rbp), %edx	# key, key.348
	addl	%edx, %eax	# key.348, D.13110
	movl	%eax, -60(%rbp)	# D.13110, key
	.loc 1 842 0 is_stmt 1 discriminator 3
	cmpl	$0, -60(%rbp)	#, key
	jns	.L274	#,
	.loc 1 843 0
	movl	$0, %eax	#, D.13098
	jmp	.L252	#
.L274:
	.loc 1 846 0
	movl	-60(%rbp), %eax	# key, tmp231
	movslq	%eax, %rdx	# tmp231, D.13107
	movq	-56(%rbp), %rax	# av, tmp232
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	8(%rax), %rax	# _130->xav_fill, D.13107
	cmpq	%rax, %rdx	# D.13107, D.13107
	jle	.L277	#,
	.loc 1 847 0
	movl	$0, %eax	#, D.13098
	jmp	.L252	#
.L277:
	.loc 1 849 0
	movq	-56(%rbp), %rax	# av, tmp233
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movzbl	72(%rax), %eax	# _133->xav_flags, D.13112
	movzbl	%al, %eax	# D.13112, D.13109
	andl	$1, %eax	#, D.13109
	testl	%eax, %eax	# D.13109
	jne	.L278	#,
	.loc 1 849 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp234
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movzbl	72(%rax), %eax	# _137->xav_flags, D.13112
	movzbl	%al, %eax	# D.13112, D.13109
	andl	$2, %eax	#, D.13109
	testl	%eax, %eax	# D.13109
	je	.L278	#,
	.loc 1 850 0 is_stmt 1
	movq	-56(%rbp), %rax	# av, tmp235
	movq	%rax, %rdi	# tmp235,
	call	Perl_av_reify	#
.L278:
	.loc 1 851 0
	movq	-56(%rbp), %rax	# av, tmp236
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	(%rax), %rax	# _141->xav_array, D.13105
	movl	-60(%rbp), %edx	# key, tmp237
	movslq	%edx, %rdx	# tmp237, D.13104
	salq	$3, %rdx	#, D.13104
	addq	%rdx, %rax	# D.13104, D.13113
	movq	(%rax), %rax	# *_145, tmp238
	movq	%rax, -32(%rbp)	# tmp238, sv
	.loc 1 852 0
	movl	-60(%rbp), %eax	# key, tmp239
	movslq	%eax, %rdx	# tmp239, D.13107
	movq	-56(%rbp), %rax	# av, tmp240
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	8(%rax), %rax	# _148->xav_fill, D.13107
	cmpq	%rax, %rdx	# D.13107, D.13107
	jne	.L279	#,
	.loc 1 853 0
	movq	-56(%rbp), %rax	# av, tmp241
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	(%rax), %rax	# _150->xav_array, D.13105
	movl	-60(%rbp), %edx	# key, tmp242
	movslq	%edx, %rdx	# tmp242, D.13104
	salq	$3, %rdx	#, D.13104
	addq	%rdx, %rax	# D.13104, D.13113
	movq	$PL_sv_undef, (%rax)	#, *_154
.L281:
	.loc 1 855 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp243
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	8(%rax), %rdx	# _155->xav_fill, D.13107
	subq	$1, %rdx	#, D.13107
	movq	%rdx, 8(%rax)	# D.13107, _155->xav_fill
	.loc 1 856 0 discriminator 1
	subl	$1, -60(%rbp)	#, key
	cmpl	$0, -60(%rbp)	#, key
	js	.L280	#,
	movq	-56(%rbp), %rax	# av, tmp244
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	(%rax), %rax	# _159->xav_array, D.13105
	movl	-60(%rbp), %edx	# key, tmp245
	movslq	%edx, %rdx	# tmp245, D.13104
	salq	$3, %rdx	#, D.13104
	addq	%rdx, %rax	# D.13104, D.13113
	movq	(%rax), %rax	# *_163, D.13098
	cmpq	$PL_sv_undef, %rax	#, D.13098
	je	.L281	#,
	jmp	.L280	#
.L279:
	.loc 1 859 0
	movq	-56(%rbp), %rax	# av, tmp246
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movq	(%rax), %rax	# _165->xav_array, D.13105
	movl	-60(%rbp), %edx	# key, tmp247
	movslq	%edx, %rdx	# tmp247, D.13104
	salq	$3, %rdx	#, D.13104
	addq	%rdx, %rax	# D.13104, D.13113
	movq	$PL_sv_undef, (%rax)	#, *_169
.L280:
	.loc 1 860 0
	movq	-56(%rbp), %rax	# av, tmp248
	movl	12(%rax), %eax	# av_16(D)->sv_flags, D.13099
	andl	$16384, %eax	#, D.13099
	testl	%eax, %eax	# D.13099
	je	.L282	#,
	.loc 1 861 0
	movq	-56(%rbp), %rax	# av, tmp249
	movq	%rax, %rdi	# tmp249,
	call	Perl_mg_set	#
.L282:
	.loc 1 863 0
	movl	-64(%rbp), %eax	# flags, tmp250
	andl	$2, %eax	#, D.13109
	testl	%eax, %eax	# D.13109
	je	.L283	#,
	.loc 1 864 0
	movq	-32(%rbp), %rax	# sv, tmp251
	movq	%rax, %rdi	# tmp251,
	call	Perl_sv_free	#
	.loc 1 865 0
	movq	$0, -32(%rbp)	#, sv
	jmp	.L284	#
.L283:
	.loc 1 867 0
	movq	-56(%rbp), %rax	# av, tmp252
	movq	(%rax), %rax	# av_16(D)->sv_any, D.13111
	movzbl	72(%rax), %eax	# _175->xav_flags, D.13112
	movzbl	%al, %eax	# D.13112, D.13109
	andl	$1, %eax	#, D.13109
	testl	%eax, %eax	# D.13109
	je	.L284	#,
	.loc 1 868 0
	movq	-32(%rbp), %rax	# sv, tmp253
	movq	%rax, %rdi	# tmp253,
	call	Perl_sv_2mortal	#
	movq	%rax, -32(%rbp)	# tmp254, sv
.L284:
	.loc 1 869 0
	movq	-32(%rbp), %rax	# sv, D.13098
.L252:
	.loc 1 870 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_av_delete, .-Perl_av_delete
	.globl	Perl_av_exists
	.type	Perl_av_exists, @function
Perl_av_exists:
.LFB18:
	.loc 1 884 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# av, av
	movl	%esi, -60(%rbp)	# key, key
	.loc 1 885 0
	cmpq	$0, -56(%rbp)	#, av
	jne	.L286	#,
	.loc 1 886 0
	movl	$0, %eax	#, D.13114
	jmp	.L287	#
.L286:
	.loc 1 889 0
	movq	-56(%rbp), %rax	# av, tmp189
	movl	12(%rax), %eax	# av_19(D)->sv_flags, D.13115
	andl	$32768, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L288	#,
.LBB54:
	.loc 1 890 0
	movq	-56(%rbp), %rax	# av, tmp190
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	Perl_mg_find	#
	movq	%rax, -32(%rbp)	# tmp191, tied_magic
	.loc 1 891 0
	cmpq	$0, -32(%rbp)	#, tied_magic
	jne	.L289	#,
	.loc 1 891 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp192
	movl	$68, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.13116
	je	.L288	#,
.L289:
.LBB55:
	.loc 1 892 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp193, sv
	.loc 1 895 0
	cmpl	$0, -60(%rbp)	#, key
	jns	.L290	#,
.LBB56:
	.loc 1 896 0
	movl	$1, -36(%rbp)	#, adjust_index
	.loc 1 897 0
	cmpq	$0, -32(%rbp)	#, tied_magic
	je	.L291	#,
.LBB57:
	.loc 1 899 0
	movq	-32(%rbp), %rax	# tied_magic, tmp194
	movq	24(%rax), %rax	# tied_magic_24->mg_obj, D.13117
	testq	%rax, %rax	# D.13117
	je	.L292	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tied_magic, tmp195
	movq	24(%rax), %rax	# tied_magic_24->mg_obj, iftmp.349
	jmp	.L293	#
.L292:
	.loc 1 899 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp196
	movq	%rax, %rdi	# tmp196,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.13117,
	call	Perl_sv_2mortal	#
.L293:
	.loc 1 899 0 discriminator 3
	movq	(%rax), %rax	# iftmp.349_6->sv_any, D.13118
	movq	(%rax), %rax	# MEM[(struct XRV *)_32].xrv_rv, D.13117
	movq	(%rax), %rax	# _33->sv_any, D.13118
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_34].xmg_stash, D.13119
	.loc 1 898 0 is_stmt 1 discriminator 3
	movl	$0, %ecx	#,
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.13119,
	call	Perl_hv_fetch	#
	movq	%rax, -16(%rbp)	# tmp197, negative_indices_glob
	.loc 1 902 0 discriminator 3
	cmpq	$0, -16(%rbp)	#, negative_indices_glob
	je	.L291	#,
	.loc 1 903 0
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp198
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _37->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_38].xgv_gp, D.13120
	movq	(%rax), %rax	# _39->gp_sv, D.13117
	testq	%rax, %rax	# D.13117
	je	.L294	#,
	.loc 1 903 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp199
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _41->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_42].xgv_gp, D.13120
	movq	(%rax), %rax	# _43->gp_sv, D.13117
	movl	12(%rax), %eax	# _44->sv_flags, D.13115
	andl	$262144, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L295	#,
	.loc 1 903 0 discriminator 3
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp200
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _47->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_48].xgv_gp, D.13120
	movq	(%rax), %rax	# _49->gp_sv, D.13117
	movq	(%rax), %rax	# _50->sv_any, PL_Xpv.353
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.353, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.354
	testq	%rax, %rax	# PL_Xpv.354
	je	.L296	#,
	.loc 1 903 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.355
	movq	8(%rax), %rax	# PL_Xpv.355_53->xpv_cur, D.13121
	cmpq	$1, %rax	#, D.13121
	ja	.L297	#,
	.loc 1 903 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.356
	movq	8(%rax), %rax	# PL_Xpv.356_55->xpv_cur, D.13121
	testq	%rax, %rax	# D.13121
	je	.L296	#,
	.loc 1 903 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.357
	movq	(%rax), %rax	# PL_Xpv.357_57->xpv_pv, D.13122
	movzbl	(%rax), %eax	# *_58, D.13114
	cmpb	$48, %al	#, D.13114
	je	.L296	#,
.L297:
	.loc 1 903 0 discriminator 7
	movl	$1, %eax	#, iftmp.352
	jmp	.L298	#
.L296:
	.loc 1 903 0 discriminator 6
	movl	$0, %eax	#, iftmp.352
.L298:
	.loc 1 903 0 discriminator 9
	andl	$1, %eax	#, iftmp.351
	jmp	.L304	#
.L295:
	.loc 1 903 0 discriminator 4
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp201
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _63->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_64].xgv_gp, D.13120
	movq	(%rax), %rax	# _65->gp_sv, D.13117
	movl	12(%rax), %eax	# _66->sv_flags, D.13115
	andl	$65536, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L300	#,
	.loc 1 903 0 discriminator 10
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp202
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _69->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_70].xgv_gp, D.13120
	movq	(%rax), %rax	# _71->gp_sv, D.13117
	movq	(%rax), %rax	# _72->sv_any, D.13118
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_73].xiv_iv, D.13123
	testq	%rax, %rax	# D.13123
	setne	%al	#, iftmp.358
	jmp	.L304	#
.L300:
	.loc 1 903 0 discriminator 11
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp203
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _76->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_77].xgv_gp, D.13120
	movq	(%rax), %rax	# _78->gp_sv, D.13117
	movl	12(%rax), %eax	# _79->sv_flags, D.13115
	andl	$131072, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L302	#,
	.loc 1 903 0 discriminator 12
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp204
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _82->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_83].xgv_gp, D.13120
	movq	(%rax), %rax	# _84->gp_sv, D.13117
	movq	(%rax), %rax	# _85->sv_any, D.13118
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_86].xnv_nv, D.13124
	xorpd	%xmm1, %xmm1	# tmp206
	ucomisd	%xmm1, %xmm0	# tmp206, D.13124
	setp	%dl	#, tmp205
	movl	$1, %eax	#, tmp208
	xorpd	%xmm1, %xmm1	# tmp207
	ucomisd	%xmm1, %xmm0	# tmp207, D.13124
	cmove	%edx, %eax	# tmp205,, iftmp.359
	jmp	.L304	#
.L302:
	.loc 1 903 0 discriminator 13
	movq	-16(%rbp), %rax	# negative_indices_glob, tmp209
	movq	(%rax), %rax	# *negative_indices_glob_36, D.13117
	movq	(%rax), %rax	# _89->sv_any, D.13118
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_90].xgv_gp, D.13120
	movq	(%rax), %rax	# _91->gp_sv, D.13117
	movq	%rax, %rdi	# D.13117,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13114
	setne	%al	#, iftmp.359
	jmp	.L304	#
.L294:
	.loc 1 903 0 discriminator 2
	movl	$0, %eax	#, iftmp.350
.L304:
	.loc 1 903 0 discriminator 16
	testb	%al, %al	# iftmp.350
	je	.L291	#,
	.loc 1 904 0 is_stmt 1
	movl	$0, -36(%rbp)	#, adjust_index
.L291:
.LBE57:
	.loc 1 906 0
	cmpl	$0, -36(%rbp)	#, adjust_index
	je	.L290	#,
	.loc 1 907 0
	movq	-56(%rbp), %rax	# av, tmp210
	movl	12(%rax), %eax	# MEM[(struct SV *)av_19(D)].sv_flags, D.13115
	andl	$32768, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L305	#,
	.loc 1 907 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp211
	movq	%rax, %rdi	# tmp211,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.360
	jmp	.L306	#
.L305:
	.loc 1 907 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp212
	movq	(%rax), %rax	# av_19(D)->sv_any, D.13127
	movq	8(%rax), %rax	# _105->xav_fill, D.13123
	addl	$1, %eax	#, iftmp.360
.L306:
	.loc 1 907 0 discriminator 3
	movl	-60(%rbp), %edx	# key, key.361
	addl	%edx, %eax	# key.361, D.13126
	movl	%eax, -60(%rbp)	# D.13126, key
	.loc 1 908 0 is_stmt 1 discriminator 3
	cmpl	$0, -60(%rbp)	#, key
	jns	.L290	#,
	.loc 1 909 0
	movl	$0, %eax	#, D.13114
	jmp	.L287	#
.L290:
.LBE56:
	.loc 1 913 0
	movl	-60(%rbp), %edx	# key, tmp213
	movq	-24(%rbp), %rsi	# sv, tmp214
	movq	-56(%rbp), %rax	# av, tmp215
	movl	%edx, %ecx	# tmp213,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp215,
	call	Perl_mg_copy	#
	.loc 1 914 0
	movq	-24(%rbp), %rax	# sv, tmp216
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	Perl_mg_find	#
	movq	%rax, -8(%rbp)	# tmp217, mg
	.loc 1 915 0
	cmpq	$0, -8(%rbp)	#, mg
	je	.L288	#,
	.loc 1 916 0
	movq	-8(%rbp), %rdx	# mg, tmp218
	movq	-24(%rbp), %rax	# sv, tmp219
	movq	%rdx, %rsi	# tmp218,
	movq	%rax, %rdi	# tmp219,
	call	Perl_magic_existspack	#
	.loc 1 917 0
	cmpq	$0, -24(%rbp)	#, sv
	je	.L307	#,
	.loc 1 917 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp220
	movl	12(%rax), %eax	# sv_26->sv_flags, D.13115
	andl	$262144, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L308	#,
	.loc 1 917 0 discriminator 3
	movq	-24(%rbp), %rax	# sv, tmp221
	movq	(%rax), %rax	# sv_26->sv_any, PL_Xpv.365
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.365, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.366
	testq	%rax, %rax	# PL_Xpv.366
	je	.L309	#,
	.loc 1 917 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.367
	movq	8(%rax), %rax	# PL_Xpv.367_118->xpv_cur, D.13121
	cmpq	$1, %rax	#, D.13121
	ja	.L310	#,
	.loc 1 917 0 discriminator 2
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.368
	movq	8(%rax), %rax	# PL_Xpv.368_120->xpv_cur, D.13121
	testq	%rax, %rax	# D.13121
	je	.L309	#,
	.loc 1 917 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.369
	movq	(%rax), %rax	# PL_Xpv.369_122->xpv_pv, D.13122
	movzbl	(%rax), %eax	# *_123, D.13114
	cmpb	$48, %al	#, D.13114
	je	.L309	#,
.L310:
	movl	$1, %eax	#, iftmp.364
	jmp	.L311	#
.L309:
	.loc 1 917 0 discriminator 6
	movl	$0, %eax	#, iftmp.364
.L311:
	jmp	.L317	#
.L308:
	.loc 1 917 0 discriminator 4
	movq	-24(%rbp), %rax	# sv, tmp222
	movl	12(%rax), %eax	# sv_26->sv_flags, D.13115
	andl	$65536, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L313	#,
	.loc 1 917 0 discriminator 8
	movq	-24(%rbp), %rax	# sv, tmp223
	movq	(%rax), %rax	# sv_26->sv_any, D.13118
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_130].xiv_iv, D.13123
	testq	%rax, %rax	# D.13123
	setne	%al	#, D.13128
	jmp	.L317	#
.L313:
	.loc 1 917 0 discriminator 9
	movq	-24(%rbp), %rax	# sv, tmp224
	movl	12(%rax), %eax	# sv_26->sv_flags, D.13115
	andl	$131072, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L315	#,
	.loc 1 917 0 discriminator 10
	movq	-24(%rbp), %rax	# sv, tmp225
	movq	(%rax), %rax	# sv_26->sv_any, D.13118
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_136].xnv_nv, D.13124
	xorpd	%xmm1, %xmm1	# tmp227
	ucomisd	%xmm1, %xmm0	# tmp227, D.13124
	setp	%dl	#, tmp226
	movl	$1, %eax	#, tmp229
	xorpd	%xmm1, %xmm1	# tmp228
	ucomisd	%xmm1, %xmm0	# tmp228, D.13124
	cmove	%edx, %eax	# tmp226,, D.13128
	jmp	.L317	#
.L315:
	.loc 1 917 0 discriminator 11
	movq	-24(%rbp), %rax	# sv, tmp230
	movq	%rax, %rdi	# tmp230,
	call	Perl_sv_2bool	#
	jmp	.L287	#
.L307:
	.loc 1 917 0 discriminator 2
	movl	$0, %eax	#, iftmp.362
.L317:
	.loc 1 917 0 discriminator 14
	jmp	.L287	#
.L288:
.LBE55:
.LBE54:
	.loc 1 923 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, key
	jns	.L318	#,
	.loc 1 924 0
	movq	-56(%rbp), %rax	# av, tmp231
	movl	12(%rax), %eax	# MEM[(struct SV *)av_19(D)].sv_flags, D.13115
	andl	$32768, %eax	#, D.13115
	testl	%eax, %eax	# D.13115
	je	.L319	#,
	.loc 1 924 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp232
	movq	%rax, %rdi	# tmp232,
	call	Perl_mg_size	#
	addl	$1, %eax	#, iftmp.372
	jmp	.L320	#
.L319:
	.loc 1 924 0 discriminator 2
	movq	-56(%rbp), %rax	# av, tmp233
	movq	(%rax), %rax	# av_19(D)->sv_any, D.13127
	movq	8(%rax), %rax	# _151->xav_fill, D.13123
	addl	$1, %eax	#, iftmp.372
.L320:
	.loc 1 924 0 discriminator 3
	movl	-60(%rbp), %edx	# key, key.373
	addl	%edx, %eax	# key.373, D.13126
	movl	%eax, -60(%rbp)	# D.13126, key
	.loc 1 925 0 is_stmt 1 discriminator 3
	cmpl	$0, -60(%rbp)	#, key
	jns	.L318	#,
	.loc 1 926 0
	movl	$0, %eax	#, D.13114
	jmp	.L287	#
.L318:
	.loc 1 929 0
	movl	-60(%rbp), %eax	# key, tmp234
	movslq	%eax, %rdx	# tmp234, D.13123
	movq	-56(%rbp), %rax	# av, tmp235
	movq	(%rax), %rax	# av_19(D)->sv_any, D.13127
	movq	8(%rax), %rax	# _160->xav_fill, D.13123
	cmpq	%rax, %rdx	# D.13123, D.13123
	jg	.L321	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# av, tmp236
	movq	(%rax), %rax	# av_19(D)->sv_any, D.13127
	movq	(%rax), %rax	# _162->xav_array, D.13122
	movl	-60(%rbp), %edx	# key, tmp237
	movslq	%edx, %rdx	# tmp237, D.13121
	salq	$3, %rdx	#, D.13121
	addq	%rdx, %rax	# D.13121, D.13129
	movq	(%rax), %rax	# *_166, D.13117
	cmpq	$PL_sv_undef, %rax	#, D.13117
	je	.L321	#,
	.loc 1 930 0 is_stmt 1
	movq	-56(%rbp), %rax	# av, tmp238
	movq	(%rax), %rax	# av_19(D)->sv_any, D.13127
	movq	(%rax), %rax	# _168->xav_array, D.13122
	movl	-60(%rbp), %edx	# key, tmp239
	movslq	%edx, %rdx	# tmp239, D.13121
	salq	$3, %rdx	#, D.13121
	addq	%rdx, %rax	# D.13121, D.13129
	movq	(%rax), %rax	# *_172, D.13117
	testq	%rax, %rax	# D.13117
	je	.L321	#,
	.loc 1 932 0
	movl	$1, %eax	#, D.13114
	jmp	.L287	#
.L321:
	.loc 1 935 0
	movl	$0, %eax	#, D.13114
.L287:
	.loc 1 936 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_av_exists, .-Perl_av_exists
	.section	.rodata
	.align 8
.LC10:
	.string	"Bad index while coercing array into hash"
	.text
	.type	S_avhv_index_sv, @function
S_avhv_index_sv:
.LFB19:
	.loc 1 945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 946 0
	movq	-24(%rbp), %rax	# sv, tmp67
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.13130
	andl	$65536, %eax	#, D.13130
	testl	%eax, %eax	# D.13130
	je	.L323	#,
	.loc 1 946 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp68
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.13131
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_5].xiv_iv, D.13132
	jmp	.L324	#
.L323:
	.loc 1 946 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp69
	movq	%rax, %rdi	# tmp69,
	call	Perl_sv_2iv	#
.L324:
	.loc 1 946 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.374, index
	.loc 1 947 0 is_stmt 1 discriminator 3
	cmpl	$0, -4(%rbp)	#, index
	jg	.L325	#,
	.loc 1 948 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L325:
	.loc 1 949 0
	movl	-4(%rbp), %eax	# index, D.13133
	.loc 1 950 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	S_avhv_index_sv, .-S_avhv_index_sv
	.section	.rodata
	.align 8
.LC11:
	.string	"No such pseudo-hash field \"%s\""
	.text
	.type	S_avhv_index, @function
S_avhv_index:
.LFB20:
	.loc 1 954 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# av, av
	movq	%rsi, -48(%rbp)	# keysv, keysv
	movl	%edx, -52(%rbp)	# hash, hash
	.loc 1 959 0
	movq	-40(%rbp), %rax	# av, tmp68
	movq	%rax, %rdi	# tmp68,
	call	Perl_avhv_keys	#
	movq	%rax, -16(%rbp)	# tmp69, keys
	.loc 1 960 0
	movl	-52(%rbp), %edx	# hash, tmp70
	movq	-48(%rbp), %rsi	# keysv, tmp71
	movq	-16(%rbp), %rax	# keys, tmp72
	movl	%edx, %ecx	# tmp70,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp72,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -8(%rbp)	# tmp73, he
	.loc 1 961 0
	cmpq	$0, -8(%rbp)	#, he
	jne	.L328	#,
	.loc 1 962 0
	movq	-48(%rbp), %rax	# keysv, tmp74
	movl	12(%rax), %eax	# keysv_4(D)->sv_flags, D.13135
	andl	$262144, %eax	#, D.13135
	testl	%eax, %eax	# D.13135
	je	.L329	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# keysv, tmp75
	movq	(%rax), %rax	# keysv_4(D)->sv_any, D.13136
	movq	8(%rax), %rax	# MEM[(struct XPV *)_9].xpv_cur, n_a.376
	movq	%rax, -24(%rbp)	# n_a.376, n_a
	movq	-48(%rbp), %rax	# keysv, tmp76
	movq	(%rax), %rax	# keysv_4(D)->sv_any, D.13136
	movq	(%rax), %rax	# MEM[(struct XPV *)_11].xpv_pv, iftmp.375
	jmp	.L330	#
.L329:
	.loc 1 962 0 discriminator 2
	leaq	-24(%rbp), %rcx	#, tmp77
	movq	-48(%rbp), %rax	# keysv, tmp78
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_2pv_flags	#
.L330:
	.loc 1 962 0 discriminator 3
	movq	%rax, %rsi	# iftmp.375,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L328:
	.loc 1 963 0 is_stmt 1
	movq	-8(%rbp), %rax	# he, tmp79
	movq	16(%rax), %rax	# he_6->hent_val, D.13137
	movq	%rax, %rdi	# D.13137,
	call	S_avhv_index_sv	#
	.loc 1 964 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	S_avhv_index, .-S_avhv_index
	.section	.rodata
.LC12:
	.string	"pseudohash"
.LC13:
	.string	"Pseudo-hashes are deprecated"
.LC14:
	.string	"Can't coerce array into hash"
	.text
	.globl	Perl_avhv_keys
	.type	Perl_avhv_keys, @function
Perl_avhv_keys:
.LFB21:
	.loc 1 968 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	.loc 1 969 0
	movq	-24(%rbp), %rax	# av, tmp87
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	Perl_av_fetch	#
	movq	%rax, -16(%rbp)	# tmp88, keysp
	.loc 1 970 0
	cmpq	$0, -16(%rbp)	#, keysp
	je	.L333	#,
.LBB58:
	.loc 1 971 0
	movq	-16(%rbp), %rax	# keysp, tmp89
	movq	(%rax), %rax	# *keysp_3, tmp90
	movq	%rax, -8(%rbp)	# tmp90, sv
	.loc 1 972 0
	movq	-8(%rbp), %rax	# sv, tmp91
	movl	12(%rax), %eax	# sv_4->sv_flags, D.13141
	andl	$8192, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L334	#,
	.loc 1 973 0
	movq	-8(%rbp), %rax	# sv, tmp92
	movq	%rax, %rdi	# tmp92,
	call	Perl_mg_get	#
.L334:
	.loc 1 974 0
	movq	-8(%rbp), %rax	# sv, tmp93
	movl	12(%rax), %eax	# sv_4->sv_flags, D.13141
	andl	$524288, %eax	#, D.13141
	testl	%eax, %eax	# D.13141
	je	.L333	#,
	.loc 1 975 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.377
	movq	80(%rax), %rax	# PL_curcop.377_9->cop_warnings, D.13142
	testq	%rax, %rax	# D.13142
	je	.L335	#,
	.loc 1 975 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.378
	movq	80(%rax), %rax	# PL_curcop.378_11->cop_warnings, D.13142
	cmpq	$32, %rax	#, D.13142
	je	.L335	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.379
	movq	80(%rax), %rax	# PL_curcop.379_13->cop_warnings, D.13142
	cmpq	$16, %rax	#, D.13142
	je	.L336	#,
	.loc 1 975 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.380
	movq	80(%rax), %rax	# PL_curcop.380_15->cop_warnings, D.13142
	movq	(%rax), %rax	# _16->sv_any, D.13143
	movq	(%rax), %rax	# MEM[(struct XPV *)_17].xpv_pv, D.13144
	movzbl	(%rax), %eax	# *_18, D.13145
	movsbl	%al, %eax	# D.13145, D.13146
	andl	$16, %eax	#, D.13146
	testl	%eax, %eax	# D.13146
	jne	.L336	#,
.L335:
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.381
	movq	80(%rax), %rax	# PL_curcop.381_22->cop_warnings, D.13142
	testq	%rax, %rax	# D.13142
	jne	.L337	#,
	.loc 1 975 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.382
	movzbl	%al, %eax	# PL_dowarn.382, D.13146
	andl	$1, %eax	#, D.13146
	testl	%eax, %eax	# D.13146
	je	.L337	#,
.L336:
	movq	-8(%rbp), %rax	# sv, tmp94
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_isa	#
	testl	%eax, %eax	# D.13146
	jne	.L337	#,
	.loc 1 976 0 is_stmt 1
	movl	$.LC13, %esi	#,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L337:
	.loc 1 978 0
	movq	-8(%rbp), %rax	# sv, tmp95
	movq	(%rax), %rax	# sv_4->sv_any, D.13143
	movq	(%rax), %rax	# MEM[(struct XRV *)_28].xrv_rv, tmp96
	movq	%rax, -8(%rbp)	# tmp96, sv
	.loc 1 979 0
	movq	-8(%rbp), %rax	# sv, tmp97
	movl	12(%rax), %eax	# sv_29->sv_flags, D.13141
	movzbl	%al, %eax	# D.13141, D.13141
	cmpl	$11, %eax	#, D.13141
	jne	.L333	#,
	.loc 1 980 0
	movq	-8(%rbp), %rax	# sv, D.13140
	jmp	.L338	#
.L333:
.LBE58:
	.loc 1 983 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 984 0
	movl	$0, %eax	#, D.13140
.L338:
	.loc 1 985 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_avhv_keys, .-Perl_avhv_keys
	.globl	Perl_avhv_store_ent
	.type	Perl_avhv_store_ent, @function
Perl_avhv_store_ent:
.LFB22:
	.loc 1 989 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# av, av
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movq	%rdx, -24(%rbp)	# val, val
	movl	%ecx, -28(%rbp)	# hash, hash
	.loc 1 990 0
	movl	-28(%rbp), %edx	# hash, tmp62
	movq	-16(%rbp), %rcx	# keysv, tmp63
	movq	-8(%rbp), %rax	# av, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	S_avhv_index	#
	movl	%eax, %ecx	#, D.13150
	movq	-24(%rbp), %rdx	# val, tmp65
	movq	-8(%rbp), %rax	# av, tmp66
	movl	%ecx, %esi	# D.13150,
	movq	%rax, %rdi	# tmp66,
	call	Perl_av_store	#
	.loc 1 991 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_avhv_store_ent, .-Perl_avhv_store_ent
	.globl	Perl_avhv_fetch_ent
	.type	Perl_avhv_fetch_ent, @function
Perl_avhv_fetch_ent:
.LFB23:
	.loc 1 995 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# av, av
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movl	%edx, -20(%rbp)	# lval, lval
	movl	%ecx, -24(%rbp)	# hash, hash
	.loc 1 996 0
	movl	-24(%rbp), %edx	# hash, tmp62
	movq	-16(%rbp), %rcx	# keysv, tmp63
	movq	-8(%rbp), %rax	# av, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	S_avhv_index	#
	movl	%eax, %ecx	#, D.13152
	movl	-20(%rbp), %edx	# lval, tmp65
	movq	-8(%rbp), %rax	# av, tmp66
	movl	%ecx, %esi	# D.13152,
	movq	%rax, %rdi	# tmp66,
	call	Perl_av_fetch	#
	.loc 1 997 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_avhv_fetch_ent, .-Perl_avhv_fetch_ent
	.globl	Perl_avhv_delete_ent
	.type	Perl_avhv_delete_ent, @function
Perl_avhv_delete_ent:
.LFB24:
	.loc 1 1001 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	movq	%rsi, -32(%rbp)	# keysv, keysv
	movl	%edx, -36(%rbp)	# flags, flags
	movl	%ecx, -40(%rbp)	# hash, hash
	.loc 1 1002 0
	movq	-24(%rbp), %rax	# av, tmp66
	movq	%rax, %rdi	# tmp66,
	call	Perl_avhv_keys	#
	movq	%rax, -16(%rbp)	# tmp67, keys
	.loc 1 1005 0
	movl	-40(%rbp), %edx	# hash, tmp68
	movq	-32(%rbp), %rsi	# keysv, tmp69
	movq	-16(%rbp), %rax	# keys, tmp70
	movl	%edx, %ecx	# tmp68,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -8(%rbp)	# tmp71, he
	.loc 1 1006 0
	cmpq	$0, -8(%rbp)	#, he
	je	.L344	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# he, tmp72
	movq	16(%rax), %rax	# he_6->hent_val, D.13154
	movl	12(%rax), %eax	# _7->sv_flags, D.13155
	andl	$118423552, %eax	#, D.13155
	testl	%eax, %eax	# D.13155
	jne	.L345	#,
.L344:
	.loc 1 1007 0 is_stmt 1
	movl	$0, %eax	#, D.13154
	jmp	.L346	#
.L345:
	.loc 1 1009 0
	movq	-8(%rbp), %rax	# he, tmp73
	movq	16(%rax), %rax	# he_6->hent_val, D.13154
	movq	%rax, %rdi	# D.13154,
	call	S_avhv_index_sv	#
	movl	%eax, %ecx	#, D.13156
	movl	-36(%rbp), %edx	# flags, tmp74
	movq	-24(%rbp), %rax	# av, tmp75
	movl	%ecx, %esi	# D.13156,
	movq	%rax, %rdi	# tmp75,
	call	Perl_av_delete	#
.L346:
	.loc 1 1010 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_avhv_delete_ent, .-Perl_avhv_delete_ent
	.globl	Perl_avhv_exists_ent
	.type	Perl_avhv_exists_ent, @function
Perl_avhv_exists_ent:
.LFB25:
	.loc 1 1017 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	movq	%rsi, -32(%rbp)	# keysv, keysv
	movl	%edx, -36(%rbp)	# hash, hash
	.loc 1 1018 0
	movq	-24(%rbp), %rax	# av, tmp66
	movq	%rax, %rdi	# tmp66,
	call	Perl_avhv_keys	#
	movq	%rax, -16(%rbp)	# tmp67, keys
	.loc 1 1021 0
	movl	-36(%rbp), %edx	# hash, tmp68
	movq	-32(%rbp), %rsi	# keysv, tmp69
	movq	-16(%rbp), %rax	# keys, tmp70
	movl	%edx, %ecx	# tmp68,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -8(%rbp)	# tmp71, he
	.loc 1 1022 0
	cmpq	$0, -8(%rbp)	#, he
	je	.L348	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# he, tmp72
	movq	16(%rax), %rax	# he_6->hent_val, D.13158
	movl	12(%rax), %eax	# _7->sv_flags, D.13159
	andl	$118423552, %eax	#, D.13159
	testl	%eax, %eax	# D.13159
	jne	.L349	#,
.L348:
	.loc 1 1023 0 is_stmt 1
	movl	$0, %eax	#, D.13157
	jmp	.L350	#
.L349:
	.loc 1 1025 0
	movq	-8(%rbp), %rax	# he, tmp73
	movq	16(%rax), %rax	# he_6->hent_val, D.13158
	movq	%rax, %rdi	# D.13158,
	call	S_avhv_index_sv	#
	movl	%eax, %edx	#, D.13160
	movq	-24(%rbp), %rax	# av, tmp74
	movl	%edx, %esi	# D.13160,
	movq	%rax, %rdi	# tmp74,
	call	Perl_av_exists	#
.L350:
	.loc 1 1026 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_avhv_exists_ent, .-Perl_avhv_exists_ent
	.globl	Perl_avhv_iternext
	.type	Perl_avhv_iternext, @function
Perl_avhv_iternext:
.LFB26:
	.loc 1 1030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# av, av
	.loc 1 1031 0
	movq	-24(%rbp), %rax	# av, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_avhv_keys	#
	movq	%rax, -8(%rbp)	# tmp62, keys
	.loc 1 1032 0
	movq	-8(%rbp), %rax	# keys, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_hv_iternext	#
	.loc 1 1033 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_avhv_iternext, .-Perl_avhv_iternext
	.globl	Perl_avhv_iterval
	.type	Perl_avhv_iterval, @function
Perl_avhv_iterval:
.LFB27:
	.loc 1 1037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# av, av
	movq	%rsi, %rbx	# entry, entry
	.loc 1 1038 0
	movq	-40(%rbp), %rax	# av, tmp65
	movq	%rax, %rdi	# tmp65,
	call	Perl_avhv_keys	#
	movq	%rbx, %rsi	# entry,
	movq	%rax, %rdi	# D.13162,
	call	Perl_hv_iterval	#
	movq	%rax, -24(%rbp)	# tmp66, sv
	.loc 1 1039 0
	movq	-24(%rbp), %rax	# sv, tmp67
	movq	%rax, %rdi	# tmp67,
	call	S_avhv_index_sv	#
	movl	%eax, %ecx	#, D.13163
	movq	-40(%rbp), %rax	# av, tmp68
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.13163,
	movq	%rax, %rdi	# tmp68,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_6, D.13165
	.loc 1 1040 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_avhv_iterval, .-Perl_avhv_iterval
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
	.long	0x2426
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF364
	.byte	0x1
	.long	.LASF365
	.long	.LASF366
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
	.long	.LASF205
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
	.long	0x1072
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0x1072
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0x1101
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0x10eb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xee4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xee4
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xeda
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xeda
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
	.long	0x1072
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0x1072
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0x1101
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0x10eb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xee4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xee4
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xeda
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xeda
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
	.long	0x105a
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0x108f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xefa
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xeef
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xf05
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xf22
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xf22
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
	.long	0x1072
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0x1072
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0x1101
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0x10eb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xee4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xee4
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xeda
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xeda
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0x1072
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0x1072
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0x1072
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0x1072
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x1107
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0x110d
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xefa
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xefa
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xeda
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0x105a
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
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xefa
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
	.long	0x1042
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xefa
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
	.long	0x1048
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xefa
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
	.long	0x103c
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xefa
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
	.long	0xf95
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xf95
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xf9b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xfa6
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
	.long	0xfb1
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
	.long	0xfb7
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xeef
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xeef
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xeef
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xeef
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xefa
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xefa
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xefa
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xefa
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xfbd
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
	.long	0xf22
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0x10cf
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0x1083
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0x1095
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0x105a
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0x108f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0x1083
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xefa
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xefa
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xf05
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
	.long	0x1036
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xefa
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
	.long	0x104e
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xefa
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xefa
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f2
	.long	0x659
	.uleb128 0x10
	.long	.LASF82
	.byte	0x90
	.byte	0x8
	.value	0x1a2
	.long	0x681
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x1a3
	.long	0xefa
	.byte	0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x1a7
	.long	0x1374
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x88
	.byte	0x8
	.value	0x130
	.long	0x6f7
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x131
	.long	0xeef
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x132
	.long	0x12aa
	.byte	0x8
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x133
	.long	0xeef
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x134
	.long	0xeef
	.byte	0x14
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x135
	.long	0xeef
	.byte	0x18
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x136
	.long	0x1107
	.byte	0x20
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x137
	.long	0xeda
	.byte	0x28
	.uleb128 0xf
	.long	.LASF93
	.byte	0x8
	.value	0x13d
	.long	0x127c
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x6
	.value	0x7f5
	.long	0x703
	.uleb128 0xe
	.long	.LASF95
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x770
	.uleb128 0xd
	.long	.LASF96
	.byte	0xc
	.byte	0x1b
	.long	0x1054
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0xc
	.byte	0x1c
	.long	0x1523
	.byte	0x8
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x1d
	.long	0xee4
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
	.long	0xeda
	.byte	0x13
	.uleb128 0xd
	.long	.LASF101
	.byte	0xc
	.byte	0x20
	.long	0xf22
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
	.long	0xeef
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x77c
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x795
	.uleb128 0xd
	.long	.LASF104
	.byte	0x9
	.byte	0xf6
	.long	0xf22
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x7a1
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x7d2
	.uleb128 0xd
	.long	.LASF105
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF107
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF108
	.byte	0x6
	.value	0x7f8
	.long	0x7de
	.uleb128 0xe
	.long	.LASF109
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x81f
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF111
	.byte	0x6
	.value	0x7fa
	.long	0x82b
	.uleb128 0x10
	.long	.LASF112
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x87a
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0x9
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF114
	.byte	0x6
	.value	0x7fb
	.long	0x886
	.uleb128 0x10
	.long	.LASF115
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x8ef
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x118
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x119
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x11a
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0x9
	.value	0x11b
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF116
	.byte	0x9
	.value	0x11c
	.long	0x1054
	.byte	0x28
	.uleb128 0xf
	.long	.LASF117
	.byte	0x9
	.value	0x11d
	.long	0x105a
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF118
	.byte	0x6
	.value	0x7fc
	.long	0x8fb
	.uleb128 0x10
	.long	.LASF119
	.byte	0x58
	.byte	0x9
	.value	0x120
	.long	0x998
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x121
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x122
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x123
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x124
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0x9
	.value	0x125
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF116
	.byte	0x9
	.value	0x126
	.long	0x1054
	.byte	0x28
	.uleb128 0xf
	.long	.LASF117
	.byte	0x9
	.value	0x127
	.long	0x105a
	.byte	0x30
	.uleb128 0xf
	.long	.LASF120
	.byte	0x9
	.value	0x129
	.long	0xed
	.byte	0x38
	.uleb128 0xf
	.long	.LASF121
	.byte	0x9
	.value	0x12a
	.long	0xed
	.byte	0x40
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x12b
	.long	0xf22
	.byte	0x48
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.value	0x12c
	.long	0x7f
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF124
	.byte	0x6
	.value	0x7fd
	.long	0x9a4
	.uleb128 0xe
	.long	.LASF125
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0xa29
	.uleb128 0xd
	.long	.LASF126
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF127
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF128
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF129
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF113
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF116
	.byte	0xd
	.byte	0x11
	.long	0x1054
	.byte	0x28
	.uleb128 0xd
	.long	.LASF117
	.byte	0xd
	.byte	0x12
	.long	0x105a
	.byte	0x30
	.uleb128 0xd
	.long	.LASF130
	.byte	0xd
	.byte	0x14
	.long	0x1276
	.byte	0x38
	.uleb128 0xd
	.long	.LASF131
	.byte	0xd
	.byte	0x15
	.long	0xf22
	.byte	0x40
	.uleb128 0xd
	.long	.LASF132
	.byte	0xd
	.byte	0x16
	.long	0xeda
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF133
	.byte	0x6
	.value	0x7fe
	.long	0xa35
	.uleb128 0xe
	.long	.LASF134
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0xac6
	.uleb128 0xd
	.long	.LASF135
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF136
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF137
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF138
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF113
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF116
	.byte	0xe
	.byte	0x29
	.long	0x1054
	.byte	0x28
	.uleb128 0xd
	.long	.LASF117
	.byte	0xe
	.byte	0x2a
	.long	0x105a
	.byte	0x30
	.uleb128 0xd
	.long	.LASF139
	.byte	0xe
	.byte	0x2c
	.long	0xeef
	.byte	0x38
	.uleb128 0xd
	.long	.LASF140
	.byte	0xe
	.byte	0x2d
	.long	0x149a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF141
	.byte	0xe
	.byte	0x2e
	.long	0x1107
	.byte	0x48
	.uleb128 0xd
	.long	.LASF142
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF143
	.byte	0x6
	.value	0x7ff
	.long	0xad2
	.uleb128 0x10
	.long	.LASF144
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xb7c
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF116
	.byte	0x9
	.value	0x136
	.long	0x1054
	.byte	0x28
	.uleb128 0xf
	.long	.LASF117
	.byte	0x9
	.value	0x137
	.long	0x105a
	.byte	0x30
	.uleb128 0xf
	.long	.LASF145
	.byte	0x9
	.value	0x139
	.long	0x1060
	.byte	0x38
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x13c
	.long	0x105a
	.byte	0x50
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x13d
	.long	0xeda
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.value	0x800
	.long	0xb88
	.uleb128 0xe
	.long	.LASF151
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xc79
	.uleb128 0xd
	.long	.LASF105
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF106
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF107
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF129
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF113
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF116
	.byte	0xf
	.byte	0x14
	.long	0x1054
	.byte	0x28
	.uleb128 0xd
	.long	.LASF117
	.byte	0xf
	.byte	0x15
	.long	0x105a
	.byte	0x30
	.uleb128 0xd
	.long	.LASF152
	.byte	0xf
	.byte	0x17
	.long	0x105a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF153
	.byte	0xf
	.byte	0x18
	.long	0x1072
	.byte	0x40
	.uleb128 0xd
	.long	.LASF154
	.byte	0xf
	.byte	0x19
	.long	0x1072
	.byte	0x48
	.uleb128 0xd
	.long	.LASF155
	.byte	0xf
	.byte	0x1a
	.long	0x1089
	.byte	0x50
	.uleb128 0xd
	.long	.LASF156
	.byte	0xf
	.byte	0x1b
	.long	0xe2b
	.byte	0x58
	.uleb128 0xd
	.long	.LASF157
	.byte	0xf
	.byte	0x1c
	.long	0x108f
	.byte	0x60
	.uleb128 0xd
	.long	.LASF158
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF159
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF160
	.byte	0xf
	.byte	0x1f
	.long	0x10f6
	.byte	0x78
	.uleb128 0xd
	.long	.LASF161
	.byte	0xf
	.byte	0x20
	.long	0x1083
	.byte	0x80
	.uleb128 0xd
	.long	.LASF162
	.byte	0xf
	.byte	0x25
	.long	0x1066
	.byte	0x88
	.uleb128 0xd
	.long	.LASF163
	.byte	0xf
	.byte	0x26
	.long	0xefa
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF164
	.byte	0x6
	.value	0x803
	.long	0xc85
	.uleb128 0x10
	.long	.LASF165
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xdbe
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF116
	.byte	0x9
	.value	0x176
	.long	0x1054
	.byte	0x28
	.uleb128 0xf
	.long	.LASF117
	.byte	0x9
	.value	0x177
	.long	0x105a
	.byte	0x30
	.uleb128 0xf
	.long	.LASF166
	.byte	0x9
	.value	0x179
	.long	0x10c3
	.byte	0x38
	.uleb128 0xf
	.long	.LASF167
	.byte	0x9
	.value	0x17a
	.long	0x10c3
	.byte	0x40
	.uleb128 0xf
	.long	.LASF168
	.byte	0x9
	.value	0x187
	.long	0x109b
	.byte	0x48
	.uleb128 0xf
	.long	.LASF169
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF170
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF171
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF172
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF173
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF174
	.byte	0x9
	.value	0x18d
	.long	0x108f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF175
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF176
	.byte	0x9
	.value	0x18f
	.long	0x108f
	.byte	0x88
	.uleb128 0xf
	.long	.LASF177
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF178
	.byte	0x9
	.value	0x191
	.long	0x108f
	.byte	0x98
	.uleb128 0xf
	.long	.LASF179
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF180
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF181
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF182
	.byte	0x6
	.value	0x804
	.long	0xdca
	.uleb128 0xe
	.long	.LASF183
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xe2b
	.uleb128 0xd
	.long	.LASF184
	.byte	0xc
	.byte	0xf
	.long	0x14ba
	.byte	0
	.uleb128 0xd
	.long	.LASF185
	.byte	0xc
	.byte	0x10
	.long	0x14ba
	.byte	0x8
	.uleb128 0xd
	.long	.LASF186
	.byte	0xc
	.byte	0x11
	.long	0x14d4
	.byte	0x10
	.uleb128 0xd
	.long	.LASF187
	.byte	0xc
	.byte	0x12
	.long	0x14ba
	.byte	0x18
	.uleb128 0xd
	.long	.LASF188
	.byte	0xc
	.byte	0x13
	.long	0x14ba
	.byte	0x20
	.uleb128 0xd
	.long	.LASF189
	.byte	0xc
	.byte	0x14
	.long	0x14fd
	.byte	0x28
	.uleb128 0xd
	.long	.LASF190
	.byte	0xc
	.byte	0x16
	.long	0x151d
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xe37
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xe99
	.uleb128 0x12
	.long	.LASF191
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF192
	.byte	0x6
	.value	0x9f3
	.long	0xeef
	.uleb128 0x12
	.long	.LASF193
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF194
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF195
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF196
	.byte	0x6
	.value	0x9f7
	.long	0xf1c
	.uleb128 0x12
	.long	.LASF197
	.byte	0x6
	.value	0x9f8
	.long	0xf1c
	.byte	0
	.uleb128 0xb
	.long	.LASF198
	.byte	0x6
	.value	0x808
	.long	0xea5
	.uleb128 0x10
	.long	.LASF199
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xeda
	.uleb128 0xf
	.long	.LASF200
	.byte	0x9
	.value	0x4ee
	.long	0x1095
	.byte	0
	.uleb128 0xf
	.long	.LASF201
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF202
	.byte	0x9
	.value	0x4f0
	.long	0x10c9
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
	.long	.LASF203
	.byte	0x10
	.value	0x209
	.long	0xefa
	.uleb128 0x13
	.long	0xf1c
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf11
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xf38
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF204
	.byte	0x11
	.byte	0x63
	.long	0xf43
	.uleb128 0x9
	.long	.LASF206
	.uleb128 0x5
	.long	.LASF207
	.byte	0x11
	.byte	0x65
	.long	0xf53
	.uleb128 0x6
	.byte	0x8
	.long	0xf38
	.uleb128 0xe
	.long	.LASF208
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xf8a
	.uleb128 0xd
	.long	.LASF201
	.byte	0xa
	.byte	0x14
	.long	0xeda
	.byte	0
	.uleb128 0xd
	.long	.LASF209
	.byte	0xa
	.byte	0x15
	.long	0xeda
	.byte	0x1
	.uleb128 0xd
	.long	.LASF210
	.byte	0xa
	.byte	0x16
	.long	0xee4
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF208
	.byte	0xa
	.byte	0x19
	.long	0xf59
	.uleb128 0x6
	.byte	0x8
	.long	0xeef
	.uleb128 0x6
	.byte	0x8
	.long	0xf8a
	.uleb128 0x9
	.long	.LASF211
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x9
	.long	.LASF212
	.uleb128 0x6
	.byte	0x8
	.long	0xfac
	.uleb128 0x6
	.byte	0x8
	.long	0xefa
	.uleb128 0x15
	.long	0xf8a
	.long	0xfcd
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0x1036
	.uleb128 0x18
	.long	.LASF213
	.sleb128 0
	.uleb128 0x18
	.long	.LASF214
	.sleb128 1
	.uleb128 0x18
	.long	.LASF215
	.sleb128 2
	.uleb128 0x18
	.long	.LASF216
	.sleb128 3
	.uleb128 0x18
	.long	.LASF217
	.sleb128 4
	.uleb128 0x18
	.long	.LASF218
	.sleb128 5
	.uleb128 0x18
	.long	.LASF219
	.sleb128 6
	.uleb128 0x18
	.long	.LASF220
	.sleb128 7
	.uleb128 0x18
	.long	.LASF221
	.sleb128 8
	.uleb128 0x18
	.long	.LASF222
	.sleb128 9
	.uleb128 0x18
	.long	.LASF223
	.sleb128 10
	.uleb128 0x18
	.long	.LASF224
	.sleb128 11
	.uleb128 0x18
	.long	.LASF225
	.sleb128 12
	.uleb128 0x18
	.long	.LASF226
	.sleb128 13
	.uleb128 0x18
	.long	.LASF227
	.sleb128 14
	.uleb128 0x18
	.long	.LASF228
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xac6
	.uleb128 0x6
	.byte	0x8
	.long	0xb7c
	.uleb128 0x6
	.byte	0x8
	.long	0x998
	.uleb128 0x6
	.byte	0x8
	.long	0xa29
	.uleb128 0x6
	.byte	0x8
	.long	0xc79
	.uleb128 0x6
	.byte	0x8
	.long	0x6f7
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0xb
	.long	.LASF229
	.byte	0x9
	.value	0x150
	.long	0xee4
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0x1083
	.uleb128 0x14
	.long	0x1083
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0x1078
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
	.long	0x10bd
	.uleb128 0x12
	.long	.LASF230
	.byte	0x9
	.value	0x185
	.long	0x10bd
	.uleb128 0x12
	.long	.LASF231
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xf48
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF232
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x8
	.string	"PAD"
	.byte	0x12
	.byte	0x14
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF233
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x10d5
	.uleb128 0x1a
	.long	0x1072
	.uleb128 0x6
	.byte	0x8
	.long	0x10fc
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0xe
	.long	.LASF234
	.byte	0x40
	.byte	0x8
	.byte	0x70
	.long	0x118a
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0x71
	.long	0x1083
	.byte	0
	.uleb128 0x1b
	.string	"gv"
	.byte	0x8
	.byte	0x72
	.long	0x108f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF235
	.byte	0x8
	.byte	0x73
	.long	0x108f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF236
	.byte	0x8
	.byte	0x75
	.long	0x1095
	.byte	0x18
	.uleb128 0xd
	.long	.LASF237
	.byte	0x8
	.byte	0x77
	.long	0x1095
	.byte	0x20
	.uleb128 0xd
	.long	.LASF238
	.byte	0x8
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF239
	.byte	0x8
	.byte	0x79
	.long	0xeda
	.byte	0x30
	.uleb128 0xd
	.long	.LASF240
	.byte	0x8
	.byte	0x7a
	.long	0xeda
	.byte	0x31
	.uleb128 0xd
	.long	.LASF241
	.byte	0x8
	.byte	0x7b
	.long	0x118a
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10e0
	.uleb128 0xe
	.long	.LASF242
	.byte	0x28
	.byte	0x8
	.byte	0xd3
	.long	0x11e4
	.uleb128 0xd
	.long	.LASF243
	.byte	0x8
	.byte	0xd4
	.long	0xeef
	.byte	0
	.uleb128 0xd
	.long	.LASF244
	.byte	0x8
	.byte	0xd5
	.long	0xeef
	.byte	0x4
	.uleb128 0xd
	.long	.LASF245
	.byte	0x8
	.byte	0xd6
	.long	0xf22
	.byte	0x8
	.uleb128 0xd
	.long	.LASF246
	.byte	0x8
	.byte	0xd7
	.long	0x1072
	.byte	0x10
	.uleb128 0xd
	.long	.LASF247
	.byte	0x8
	.byte	0xd8
	.long	0xf22
	.byte	0x18
	.uleb128 0x1b
	.string	"cv"
	.byte	0x8
	.byte	0xd9
	.long	0x1083
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF248
	.byte	0x58
	.byte	0x8
	.byte	0xf0
	.long	0x1276
	.uleb128 0xd
	.long	.LASF249
	.byte	0x8
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF250
	.byte	0x8
	.byte	0xf2
	.long	0xeef
	.byte	0x8
	.uleb128 0xd
	.long	.LASF251
	.byte	0x8
	.byte	0xf3
	.long	0x1072
	.byte	0x10
	.uleb128 0xd
	.long	.LASF252
	.byte	0x8
	.byte	0xf4
	.long	0x1072
	.byte	0x18
	.uleb128 0xd
	.long	.LASF253
	.byte	0x8
	.byte	0xf5
	.long	0x1072
	.byte	0x20
	.uleb128 0xd
	.long	.LASF254
	.byte	0x8
	.byte	0xfa
	.long	0x1276
	.byte	0x28
	.uleb128 0xd
	.long	.LASF255
	.byte	0x8
	.byte	0xfc
	.long	0xf22
	.byte	0x30
	.uleb128 0xd
	.long	.LASF256
	.byte	0x8
	.byte	0xfd
	.long	0xf22
	.byte	0x38
	.uleb128 0xd
	.long	.LASF257
	.byte	0x8
	.byte	0xfe
	.long	0x1095
	.byte	0x40
	.uleb128 0xd
	.long	.LASF258
	.byte	0x8
	.byte	0xff
	.long	0xc5
	.byte	0x48
	.uleb128 0xf
	.long	.LASF259
	.byte	0x8
	.value	0x100
	.long	0xc5
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf22
	.uleb128 0x19
	.byte	0x58
	.byte	0x8
	.value	0x139
	.long	0x12aa
	.uleb128 0x12
	.long	.LASF260
	.byte	0x8
	.value	0x13a
	.long	0x1113
	.uleb128 0x12
	.long	.LASF261
	.byte	0x8
	.value	0x13b
	.long	0x1190
	.uleb128 0x12
	.long	.LASF262
	.byte	0x8
	.value	0x13c
	.long	0x11e4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x10
	.long	.LASF263
	.byte	0x58
	.byte	0x8
	.value	0x16e
	.long	0x1374
	.uleb128 0xf
	.long	.LASF264
	.byte	0x8
	.value	0x16f
	.long	0xeef
	.byte	0
	.uleb128 0xf
	.long	.LASF265
	.byte	0x8
	.value	0x170
	.long	0xeef
	.byte	0x4
	.uleb128 0xf
	.long	.LASF266
	.byte	0x8
	.value	0x171
	.long	0xeef
	.byte	0x8
	.uleb128 0xf
	.long	.LASF267
	.byte	0x8
	.value	0x172
	.long	0xeef
	.byte	0xc
	.uleb128 0xf
	.long	.LASF268
	.byte	0x8
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0xf
	.long	.LASF269
	.byte	0x8
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0xf
	.long	.LASF270
	.byte	0x8
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0xf
	.long	.LASF271
	.byte	0x8
	.value	0x176
	.long	0xf22
	.byte	0x20
	.uleb128 0xf
	.long	.LASF272
	.byte	0x8
	.value	0x177
	.long	0xf22
	.byte	0x28
	.uleb128 0xf
	.long	.LASF273
	.byte	0x8
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0xf
	.long	.LASF274
	.byte	0x8
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0xf
	.long	.LASF275
	.byte	0x8
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF276
	.byte	0x8
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0xf
	.long	.LASF277
	.byte	0x8
	.value	0x17c
	.long	0x110d
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0x8
	.value	0x1a4
	.long	0x1396
	.uleb128 0x12
	.long	.LASF278
	.byte	0x8
	.value	0x1a5
	.long	0x681
	.uleb128 0x12
	.long	.LASF279
	.byte	0x8
	.value	0x1a6
	.long	0x12b0
	.byte	0
	.uleb128 0x10
	.long	.LASF280
	.byte	0x38
	.byte	0x8
	.value	0x20c
	.long	0x140c
	.uleb128 0xf
	.long	.LASF281
	.byte	0x8
	.value	0x20d
	.long	0x1095
	.byte	0
	.uleb128 0xf
	.long	.LASF282
	.byte	0x8
	.value	0x20e
	.long	0x140c
	.byte	0x8
	.uleb128 0xf
	.long	.LASF283
	.byte	0x8
	.value	0x20f
	.long	0xeef
	.byte	0x10
	.uleb128 0xf
	.long	.LASF284
	.byte	0x8
	.value	0x210
	.long	0xeef
	.byte	0x14
	.uleb128 0xf
	.long	.LASF285
	.byte	0x8
	.value	0x211
	.long	0xeef
	.byte	0x18
	.uleb128 0xf
	.long	.LASF286
	.byte	0x8
	.value	0x212
	.long	0x1412
	.byte	0x20
	.uleb128 0xf
	.long	.LASF287
	.byte	0x8
	.value	0x213
	.long	0x1412
	.byte	0x28
	.uleb128 0xf
	.long	.LASF288
	.byte	0x8
	.value	0x214
	.long	0xeef
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x6
	.byte	0x8
	.long	0x1396
	.uleb128 0xb
	.long	.LASF289
	.byte	0x8
	.value	0x219
	.long	0x1396
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x142e
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x145e
	.uleb128 0xd
	.long	.LASF290
	.byte	0xe
	.byte	0x11
	.long	0x149a
	.byte	0
	.uleb128 0xd
	.long	.LASF291
	.byte	0xe
	.byte	0x12
	.long	0x14a0
	.byte	0x8
	.uleb128 0xd
	.long	.LASF292
	.byte	0xe
	.byte	0x13
	.long	0xf22
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x1469
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x149a
	.uleb128 0xd
	.long	.LASF293
	.byte	0xe
	.byte	0x18
	.long	0xefa
	.byte	0
	.uleb128 0xd
	.long	.LASF294
	.byte	0xe
	.byte	0x19
	.long	0xeef
	.byte	0x4
	.uleb128 0xd
	.long	.LASF295
	.byte	0xe
	.byte	0x1a
	.long	0xf28
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1424
	.uleb128 0x6
	.byte	0x8
	.long	0x145e
	.uleb128 0x1c
	.long	0x57
	.long	0x14ba
	.uleb128 0x14
	.long	0xf22
	.uleb128 0x14
	.long	0x1054
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14a6
	.uleb128 0x1c
	.long	0xefa
	.long	0x14d4
	.uleb128 0x14
	.long	0xf22
	.uleb128 0x14
	.long	0x1054
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14c0
	.uleb128 0x1c
	.long	0x57
	.long	0x14fd
	.uleb128 0x14
	.long	0xf22
	.uleb128 0x14
	.long	0x1054
	.uleb128 0x14
	.long	0xf22
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14da
	.uleb128 0x1c
	.long	0x57
	.long	0x1517
	.uleb128 0x14
	.long	0x1054
	.uleb128 0x14
	.long	0x1517
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe99
	.uleb128 0x6
	.byte	0x8
	.long	0x1503
	.uleb128 0x6
	.byte	0x8
	.long	0xdbe
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF296
	.uleb128 0x1d
	.long	.LASF297
	.byte	0x1
	.byte	0x19
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1576
	.uleb128 0x1e
	.string	"av"
	.byte	0x1
	.byte	0x19
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0x1b
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"sv"
	.byte	0x1
	.byte	0x1c
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF298
	.byte	0x1
	.byte	0x3e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x16dd
	.uleb128 0x1e
	.string	"av"
	.byte	0x1
	.byte	0x3e
	.long	0x1095
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0x3e
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1f
	.string	"mg"
	.byte	0x1
	.byte	0x40
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF306
	.byte	0x1
	.byte	0x79
	.quad	.L29
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x163f
	.uleb128 0x1f
	.string	"sp"
	.byte	0x1
	.byte	0x42
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1612
	.uleb128 0x23
	.long	.LASF299
	.byte	0x1
	.byte	0x45
	.long	0x16dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.string	"sp"
	.byte	0x1
	.byte	0x4c
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF300
	.byte	0x1
	.byte	0x4c
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1f
	.string	"ary"
	.byte	0x1
	.byte	0x52
	.long	0x1276
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.byte	0x53
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.long	.LASF301
	.byte	0x1
	.byte	0x54
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x23
	.long	.LASF302
	.byte	0x1
	.byte	0x6e
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF303
	.byte	0x1
	.byte	0x6f
	.long	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.long	.LASF304
	.byte	0x1
	.byte	0x8b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.byte	0x8b
	.long	0xefa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1418
	.uleb128 0x25
	.long	.LASF311
	.byte	0x1
	.byte	0xbc
	.long	0x1276
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ab
	.uleb128 0x1e
	.string	"av"
	.byte	0x1
	.byte	0xbc
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.byte	0xbc
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.byte	0xbc
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"sv"
	.byte	0x1
	.byte	0xbe
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF307
	.byte	0x1
	.byte	0xf0
	.quad	.L71
	.uleb128 0x24
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.long	.LASF308
	.byte	0x1
	.byte	0xc4
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x23
	.long	.LASF309
	.byte	0x1
	.byte	0xc6
	.long	0xefa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.long	.LASF310
	.byte	0x1
	.byte	0xca
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF312
	.byte	0x1
	.value	0x112
	.long	0x1276
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1880
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x112
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x112
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x112
	.long	0xf22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x114
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x185f
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x11c
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x1
	.value	0x120
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF310
	.byte	0x1
	.value	0x121
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x153
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF313
	.byte	0x1
	.value	0x164
	.long	0x1095
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b0
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x166
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x27
	.long	.LASF314
	.byte	0x1
	.value	0x17c
	.long	0x1095
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1916
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x1
	.value	0x17c
	.long	0xeef
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF316
	.byte	0x1
	.value	0x17c
	.long	0x1276
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x17e
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x17f
	.long	0xeef
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x180
	.long	0x1276
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x27
	.long	.LASF317
	.byte	0x1
	.value	0x196
	.long	0x1095
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1970
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x1
	.value	0x196
	.long	0xeef
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2b
	.long	.LASF316
	.byte	0x1
	.value	0x196
	.long	0x1276
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"av"
	.byte	0x1
	.value	0x198
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x199
	.long	0x1276
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x2c
	.long	.LASF318
	.byte	0x1
	.value	0x1b6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d9
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x1b6
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x1b8
	.long	0xeef
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x1b9
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x1d2
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF319
	.byte	0x1
	.value	0x1ea
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a13
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x1ea
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x1ec
	.long	0xeef
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x2c
	.long	.LASF320
	.byte	0x1
	.value	0x20f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1acf
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x20f
	.long	0x1095
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x20f
	.long	0xf22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x211
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x218
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1a9f
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x219
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x222
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x1
	.value	0x222
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF321
	.byte	0x1
	.value	0x232
	.long	0xf22
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b8e
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x232
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF322
	.byte	0x1
	.value	0x234
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x235
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x23c
	.long	0x1276
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1b5e
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x23d
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x248
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x1
	.value	0x248
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF323
	.byte	0x1
	.value	0x25f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c73
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x25f
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.string	"num"
	.byte	0x1
	.value	0x25f
	.long	0xeef
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x261
	.long	0xeef
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x262
	.long	0x1276
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x263
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF324
	.byte	0x1
	.value	0x264
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x26c
	.long	0x1276
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x22
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1c43
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x26d
	.long	0x16dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x24
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x278
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x1
	.value	0x278
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF325
	.byte	0x1
	.value	0x2a6
	.long	0xf22
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d32
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x2a6
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF322
	.byte	0x1
	.value	0x2a8
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x2a9
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x2b0
	.long	0x1276
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x1d02
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x2b1
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x24
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x2bc
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x1
	.value	0x2bc
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF326
	.byte	0x1
	.value	0x2d6
	.long	0xeef
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d62
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x2d6
	.long	0x1095
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2c
	.long	.LASF327
	.byte	0x1
	.value	0x2e4
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e53
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x2e4
	.long	0x1095
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.long	.LASF328
	.byte	0x1
	.value	0x2e4
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x2e6
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x1e21
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x2ec
	.long	0x1276
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1df2
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x2ef
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x24
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x29
	.string	"sp"
	.byte	0x1
	.value	0x2f6
	.long	0x1276
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x1
	.value	0x2f6
	.long	0x16dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x2fc
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"ary"
	.byte	0x1
	.value	0x2fd
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF329
	.byte	0x1
	.value	0x31c
	.long	0xf22
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f25
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x31c
	.long	0x1095
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x31c
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LASF201
	.byte	0x1
	.value	0x31c
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x31e
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x326
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"svp"
	.byte	0x1
	.value	0x327
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x1
	.value	0x32b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2a
	.long	.LASF310
	.byte	0x1
	.value	0x32d
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF330
	.byte	0x1
	.value	0x373
	.long	0x7f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff8
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x373
	.long	0x1095
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x373
	.long	0xeef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x37a
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x37c
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x37d
	.long	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x1
	.value	0x380
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2a
	.long	.LASF310
	.byte	0x1
	.value	0x382
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF332
	.byte	0x1
	.value	0x3b0
	.long	0xeef
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2038
	.uleb128 0x28
	.string	"sv"
	.byte	0x1
	.value	0x3b0
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF331
	.byte	0x1
	.value	0x3b2
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF333
	.byte	0x1
	.value	0x3b9
	.long	0xeef
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b4
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3b9
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x3b9
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0x3b9
	.long	0xefa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF336
	.byte	0x1
	.value	0x3bb
	.long	0x105a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"he"
	.byte	0x1
	.value	0x3bc
	.long	0x149a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"n_a"
	.byte	0x1
	.value	0x3bd
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF337
	.byte	0x1
	.value	0x3c7
	.long	0x105a
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2114
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3c7
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF338
	.byte	0x1
	.value	0x3c9
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x3cb
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF339
	.byte	0x1
	.value	0x3dc
	.long	0x1276
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2172
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3dc
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x3dc
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x3dc
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0x3dc
	.long	0xefa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.long	.LASF340
	.byte	0x1
	.value	0x3e2
	.long	0x1276
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d0
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3e2
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x3e2
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF240
	.byte	0x1
	.value	0x3e2
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0x3e2
	.long	0xefa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF341
	.byte	0x1
	.value	0x3e8
	.long	0xf22
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x224b
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3e8
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x3e8
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF201
	.byte	0x1
	.value	0x3e8
	.long	0xeef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0x3e8
	.long	0xefa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF336
	.byte	0x1
	.value	0x3ea
	.long	0x105a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"he"
	.byte	0x1
	.value	0x3eb
	.long	0x149a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF342
	.byte	0x1
	.value	0x3f8
	.long	0x7f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b7
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x3f8
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0x3f8
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF335
	.byte	0x1
	.value	0x3f8
	.long	0xefa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF336
	.byte	0x1
	.value	0x3fa
	.long	0x105a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"he"
	.byte	0x1
	.value	0x3fb
	.long	0x149a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x405
	.long	0x149a
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f7
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x405
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF336
	.byte	0x1
	.value	0x407
	.long	0x105a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF344
	.byte	0x1
	.value	0x40c
	.long	0xf22
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2344
	.uleb128 0x28
	.string	"av"
	.byte	0x1
	.value	0x40c
	.long	0x1095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF345
	.byte	0x1
	.value	0x40c
	.long	0x149a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x40e
	.long	0xf22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x234f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	.LASF346
	.byte	0x6
	.value	0xcf7
	.long	0x235b
	.uleb128 0x7
	.long	0x2344
	.uleb128 0x30
	.long	.LASF347
	.byte	0x13
	.byte	0x34
	.long	0xeda
	.uleb128 0x30
	.long	.LASF348
	.byte	0x13
	.byte	0x51
	.long	0x108f
	.uleb128 0x2f
	.long	.LASF349
	.byte	0x13
	.value	0x10f
	.long	0x79
	.uleb128 0x2f
	.long	.LASF350
	.byte	0x13
	.value	0x110
	.long	0xefa
	.uleb128 0x2f
	.long	.LASF351
	.byte	0x13
	.value	0x125
	.long	0x36a
	.uleb128 0x30
	.long	.LASF352
	.byte	0x14
	.byte	0x22
	.long	0x1276
	.uleb128 0x30
	.long	.LASF353
	.byte	0x14
	.byte	0x2a
	.long	0x1276
	.uleb128 0x30
	.long	.LASF354
	.byte	0x14
	.byte	0x2b
	.long	0x1276
	.uleb128 0x30
	.long	.LASF355
	.byte	0x14
	.byte	0x37
	.long	0xeef
	.uleb128 0x30
	.long	.LASF356
	.byte	0x14
	.byte	0x38
	.long	0xeef
	.uleb128 0x30
	.long	.LASF357
	.byte	0x14
	.byte	0x3c
	.long	0xf95
	.uleb128 0x30
	.long	.LASF358
	.byte	0x14
	.byte	0x3d
	.long	0xf95
	.uleb128 0x30
	.long	.LASF359
	.byte	0x14
	.byte	0x43
	.long	0xf22
	.uleb128 0x30
	.long	.LASF360
	.byte	0x14
	.byte	0x44
	.long	0x23fd
	.uleb128 0x6
	.byte	0x8
	.long	0x795
	.uleb128 0x30
	.long	.LASF361
	.byte	0x14
	.byte	0x81
	.long	0x240e
	.uleb128 0x31
	.long	0x12aa
	.uleb128 0x30
	.long	.LASF362
	.byte	0x14
	.byte	0x87
	.long	0x1095
	.uleb128 0x30
	.long	.LASF363
	.byte	0x14
	.byte	0x88
	.long	0x16dd
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF171:
	.string	"xio_page_len"
.LASF27:
	.string	"cop_seq"
.LASF177:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF204:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF366:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF150:
	.string	"XPVCV"
.LASF354:
	.string	"PL_stack_max"
.LASF222:
	.string	"SVt_PVLV"
.LASF184:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF180:
	.string	"xio_type"
.LASF314:
	.string	"Perl_av_make"
.LASF73:
	.string	"gp_av"
.LASF145:
	.string	"xgv_gp"
.LASF274:
	.string	"sbu_m"
.LASF151:
	.string	"xpvcv"
.LASF100:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF201:
	.string	"flags"
.LASF273:
	.string	"sbu_s"
.LASF238:
	.string	"olddepth"
.LASF319:
	.string	"Perl_av_undef"
.LASF136:
	.string	"xhv_fill"
.LASF214:
	.string	"SVt_IV"
.LASF80:
	.string	"gp_file"
.LASF189:
	.string	"svt_copy"
.LASF181:
	.string	"xio_flags"
.LASF299:
	.string	"next"
.LASF90:
	.string	"blku_oldscopesp"
.LASF346:
	.string	"PL_no_modify"
.LASF220:
	.string	"SVt_PVMG"
.LASF252:
	.string	"next_op"
.LASF363:
	.string	"PL_curstackinfo"
.LASF269:
	.string	"sbu_rxtainted"
.LASF230:
	.string	"xiou_dirp"
.LASF208:
	.string	"regnode"
.LASF344:
	.string	"Perl_avhv_iterval"
.LASF195:
	.string	"any_bool"
.LASF361:
	.string	"PL_curcop"
.LASF317:
	.string	"Perl_av_fake"
.LASF323:
	.string	"Perl_av_unshift"
.LASF232:
	.string	"PADLIST"
.LASF258:
	.string	"iterix"
.LASF39:
	.string	"op_pmregexp"
.LASF254:
	.string	"itervar"
.LASF56:
	.string	"precomp"
.LASF347:
	.string	"PL_dowarn"
.LASF340:
	.string	"Perl_avhv_fetch_ent"
.LASF132:
	.string	"xav_flags"
.LASF148:
	.string	"xgv_stash"
.LASF234:
	.string	"block_sub"
.LASF53:
	.string	"endp"
.LASF111:
	.string	"XPVNV"
.LASF20:
	.string	"op_type"
.LASF300:
	.string	"prev"
.LASF240:
	.string	"lval"
.LASF10:
	.string	"ssize_t"
.LASF239:
	.string	"hasargs"
.LASF206:
	.string	"_PerlIO"
.LASF359:
	.string	"PL_Sv"
.LASF219:
	.string	"SVt_PVNV"
.LASF242:
	.string	"block_eval"
.LASF140:
	.string	"xhv_eiter"
.LASF266:
	.string	"sbu_rflags"
.LASF333:
	.string	"S_avhv_index"
.LASF96:
	.string	"mg_moremagic"
.LASF76:
	.string	"gp_cv"
.LASF301:
	.string	"newmax"
.LASF92:
	.string	"blku_gimme"
.LASF207:
	.string	"PerlIO"
.LASF339:
	.string	"Perl_avhv_store_ent"
.LASF296:
	.string	"float"
.LASF138:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF355:
	.string	"PL_tmps_ix"
.LASF332:
	.string	"S_avhv_index_sv"
.LASF331:
	.string	"index"
.LASF303:
	.string	"itmp"
.LASF183:
	.string	"mgvtbl"
.LASF325:
	.string	"Perl_av_shift"
.LASF285:
	.string	"si_type"
.LASF158:
	.string	"xcv_file"
.LASF157:
	.string	"xcv_gv"
.LASF245:
	.string	"old_namesv"
.LASF12:
	.string	"long long unsigned int"
.LASF216:
	.string	"SVt_RV"
.LASF353:
	.string	"PL_stack_base"
.LASF263:
	.string	"subst"
.LASF50:
	.string	"REGEXP"
.LASF338:
	.string	"keysp"
.LASF256:
	.string	"iterlval"
.LASF328:
	.string	"fill"
.LASF212:
	.string	"reg_data"
.LASF199:
	.string	"clone_params"
.LASF211:
	.string	"reg_substr_data"
.LASF98:
	.string	"mg_private"
.LASF261:
	.string	"blku_eval"
.LASF324:
	.string	"slide"
.LASF149:
	.string	"xgv_flags"
.LASF169:
	.string	"xio_lines"
.LASF341:
	.string	"Perl_avhv_delete_ent"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF105:
	.string	"xpv_pv"
.LASF143:
	.string	"XPVGV"
.LASF350:
	.string	"PL_nice_chunk_size"
.LASF172:
	.string	"xio_lines_left"
.LASF23:
	.string	"op_private"
.LASF293:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF267:
	.string	"sbu_oldsave"
.LASF223:
	.string	"SVt_PVAV"
.LASF144:
	.string	"xpvgv"
.LASF244:
	.string	"old_op_type"
.LASF11:
	.string	"size_t"
.LASF237:
	.string	"argarray"
.LASF103:
	.string	"mg_len"
.LASF101:
	.string	"mg_obj"
.LASF159:
	.string	"xcv_depth"
.LASF255:
	.string	"itersave"
.LASF176:
	.string	"xio_fmt_gv"
.LASF295:
	.string	"hek_key"
.LASF311:
	.string	"Perl_av_fetch"
.LASF320:
	.string	"Perl_av_push"
.LASF190:
	.string	"svt_dup"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF141:
	.string	"xhv_pmroot"
.LASF248:
	.string	"block_loop"
.LASF302:
	.string	"bytes"
.LASF327:
	.string	"Perl_av_fill"
.LASF133:
	.string	"XPVHV"
.LASF349:
	.string	"PL_nice_chunk"
.LASF187:
	.string	"svt_clear"
.LASF221:
	.string	"SVt_PVBM"
.LASF168:
	.string	"xio_dirpu"
.LASF134:
	.string	"xpvhv"
.LASF306:
	.string	"resize"
.LASF264:
	.string	"sbu_iters"
.LASF36:
	.string	"op_pmreplroot"
.LASF356:
	.string	"PL_tmps_floor"
.LASF42:
	.string	"op_pmdynflags"
.LASF289:
	.string	"PERL_SI"
.LASF110:
	.string	"xiv_iv"
.LASF260:
	.string	"blku_sub"
.LASF316:
	.string	"strp"
.LASF107:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF336:
	.string	"keys"
.LASF164:
	.string	"XPVIO"
.LASF193:
	.string	"any_iv"
.LASF200:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF108:
	.string	"XPVIV"
.LASF321:
	.string	"Perl_av_pop"
.LASF251:
	.string	"redo_op"
.LASF312:
	.string	"Perl_av_store"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF165:
	.string	"xpvio"
.LASF275:
	.string	"sbu_strend"
.LASF57:
	.string	"data"
.LASF88:
	.string	"blku_oldretsp"
.LASF225:
	.string	"SVt_PVCV"
.LASF109:
	.string	"xpviv"
.LASF365:
	.string	"av.c"
.LASF351:
	.string	"PL_sv_undef"
.LASF262:
	.string	"blku_loop"
.LASF209:
	.string	"type"
.LASF35:
	.string	"op_last"
.LASF291:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF213:
	.string	"SVt_NULL"
.LASF305:
	.string	"new_chunk_size"
.LASF278:
	.string	"cx_blk"
.LASF58:
	.string	"subbeg"
.LASF202:
	.string	"proto_perl"
.LASF95:
	.string	"magic"
.LASF310:
	.string	"negative_indices_glob"
.LASF290:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF135:
	.string	"xhv_array"
.LASF122:
	.string	"xlv_targ"
.LASF173:
	.string	"xio_top_name"
.LASF66:
	.string	"lastcloseparen"
.LASF210:
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
.LASF288:
	.string	"si_markoff"
.LASF32:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF358:
	.string	"PL_markstack_max"
.LASF259:
	.string	"itermax"
.LASF253:
	.string	"last_op"
.LASF272:
	.string	"sbu_targ"
.LASF315:
	.string	"size"
.LASF142:
	.string	"xhv_name"
.LASF102:
	.string	"mg_ptr"
.LASF247:
	.string	"cur_text"
.LASF83:
	.string	"cx_type"
.LASF166:
	.string	"xio_ifp"
.LASF24:
	.string	"cop_label"
.LASF308:
	.string	"tied_magic"
.LASF46:
	.string	"broiled"
.LASF215:
	.string	"SVt_NV"
.LASF287:
	.string	"si_next"
.LASF16:
	.string	"op_next"
.LASF130:
	.string	"xav_alloc"
.LASF75:
	.string	"gp_egv"
.LASF52:
	.string	"startp"
.LASF26:
	.string	"cop_filegv"
.LASF271:
	.string	"sbu_dstr"
.LASF47:
	.string	"sv_any"
.LASF334:
	.string	"keysv"
.LASF329:
	.string	"Perl_av_delete"
.LASF126:
	.string	"xav_array"
.LASF43:
	.string	"op_pmstash"
.LASF118:
	.string	"XPVLV"
.LASF170:
	.string	"xio_page"
.LASF231:
	.string	"xiou_any"
.LASF84:
	.string	"cx_u"
.LASF360:
	.string	"PL_Xpv"
.LASF227:
	.string	"SVt_PVFM"
.LASF89:
	.string	"blku_oldmarksp"
.LASF94:
	.string	"MAGIC"
.LASF119:
	.string	"xpvlv"
.LASF286:
	.string	"si_prev"
.LASF318:
	.string	"Perl_av_clear"
.LASF186:
	.string	"svt_len"
.LASF364:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF284:
	.string	"si_cxmax"
.LASF203:
	.string	"line_t"
.LASF121:
	.string	"xlv_targlen"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF153:
	.string	"xcv_start"
.LASF163:
	.string	"xcv_outside_seq"
.LASF155:
	.string	"xcv_xsub"
.LASF335:
	.string	"hash"
.LASF115:
	.string	"xpvmg"
.LASF179:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF129:
	.string	"xof_off"
.LASF226:
	.string	"SVt_PVGV"
.LASF246:
	.string	"old_eval_root"
.LASF217:
	.string	"SVt_PV"
.LASF235:
	.string	"dfoutgv"
.LASF304:
	.string	"new_chunk"
.LASF294:
	.string	"hek_len"
.LASF182:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF28:
	.string	"cop_arybase"
.LASF61:
	.string	"refcnt"
.LASF85:
	.string	"block"
.LASF241:
	.string	"oldcomppad"
.LASF131:
	.string	"xav_arylen"
.LASF279:
	.string	"cx_subst"
.LASF152:
	.string	"xcv_stash"
.LASF147:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF337:
	.string	"Perl_avhv_keys"
.LASF154:
	.string	"xcv_root"
.LASF277:
	.string	"sbu_rx"
.LASF342:
	.string	"Perl_avhv_exists_ent"
.LASF228:
	.string	"SVt_PVIO"
.LASF51:
	.string	"regexp"
.LASF292:
	.string	"hent_val"
.LASF161:
	.string	"xcv_outside"
.LASF326:
	.string	"Perl_av_len"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF137:
	.string	"xhv_max"
.LASF160:
	.string	"xcv_padlist"
.LASF224:
	.string	"SVt_PVHV"
.LASF116:
	.string	"xmg_magic"
.LASF112:
	.string	"xpvnv"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF192:
	.string	"any_i32"
.LASF185:
	.string	"svt_set"
.LASF283:
	.string	"si_cxix"
.LASF198:
	.string	"CLONE_PARAMS"
.LASF175:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF281:
	.string	"si_stack"
.LASF205:
	.string	"__dirstream"
.LASF194:
	.string	"any_long"
.LASF33:
	.string	"pmop"
.LASF127:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF265:
	.string	"sbu_maxiters"
.LASF345:
	.string	"entry"
.LASF270:
	.string	"sbu_orig"
.LASF309:
	.string	"adjust_index"
.LASF0:
	.string	"unsigned char"
.LASF139:
	.string	"xhv_riter"
.LASF38:
	.string	"op_pmnext"
.LASF218:
	.string	"SVt_PVIV"
.LASF18:
	.string	"op_ppaddr"
.LASF81:
	.string	"PERL_CONTEXT"
.LASF268:
	.string	"sbu_once"
.LASF330:
	.string	"Perl_av_exists"
.LASF282:
	.string	"si_cxstack"
.LASF48:
	.string	"sv_refcnt"
.LASF276:
	.string	"sbu_rxres"
.LASF113:
	.string	"xnv_nv"
.LASF313:
	.string	"Perl_newAV"
.LASF236:
	.string	"savearray"
.LASF249:
	.string	"label"
.LASF162:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF99:
	.string	"mg_type"
.LASF123:
	.string	"xlv_type"
.LASF257:
	.string	"iterary"
.LASF178:
	.string	"xio_bottom_gv"
.LASF348:
	.string	"PL_stderrgv"
.LASF106:
	.string	"xpv_cur"
.LASF93:
	.string	"blk_u"
.LASF191:
	.string	"any_ptr"
.LASF124:
	.string	"XPVAV"
.LASF322:
	.string	"retval"
.LASF128:
	.string	"xav_max"
.LASF188:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF233:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF298:
	.string	"Perl_av_extend"
.LASF41:
	.string	"op_pmpermflags"
.LASF120:
	.string	"xlv_targoff"
.LASF125:
	.string	"xpvav"
.LASF117:
	.string	"xmg_stash"
.LASF280:
	.string	"stackinfo"
.LASF77:
	.string	"gp_cvgen"
.LASF243:
	.string	"old_in_eval"
.LASF60:
	.string	"sublen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF104:
	.string	"xrv_rv"
.LASF156:
	.string	"xcv_xsubany"
.LASF362:
	.string	"PL_curstack"
.LASF229:
	.string	"cv_flags_t"
.LASF25:
	.string	"cop_stash"
.LASF167:
	.string	"xio_ofp"
.LASF343:
	.string	"Perl_avhv_iternext"
.LASF357:
	.string	"PL_markstack_ptr"
.LASF197:
	.string	"any_dxptr"
.LASF54:
	.string	"regstclass"
.LASF250:
	.string	"resetsp"
.LASF174:
	.string	"xio_top_gv"
.LASF64:
	.string	"nparens"
.LASF114:
	.string	"XPVMG"
.LASF297:
	.string	"Perl_av_reify"
.LASF86:
	.string	"blku_oldsp"
.LASF352:
	.string	"PL_stack_sp"
.LASF196:
	.string	"any_dptr"
.LASF146:
	.string	"xgv_name"
.LASF307:
	.string	"emptyness"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
