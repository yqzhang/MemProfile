	.file	"global.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 global.c -mtune=generic -march=x86-64 -g -fverbose-asm
# -fno-strict-aliasing -fstack-protector -Wformat -Wformat-security
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
	.local	max_allocno
	.comm	max_allocno,4,4
	.local	reg_allocno
	.comm	reg_allocno,8,8
	.local	allocno
	.comm	allocno,8,8
	.local	allocno_order
	.comm	allocno_order,8,8
	.local	reg_may_share
	.comm	reg_may_share,8,8
	.local	conflicts
	.comm	conflicts,8,8
	.local	allocno_row_words
	.comm	allocno_row_words,4,4
	.local	hard_regs_live
	.comm	hard_regs_live,8,8
	.local	no_global_alloc_regs
	.comm	no_global_alloc_regs,8,8
	.local	regs_used_so_far
	.comm	regs_used_so_far,8,8
	.local	local_reg_n_refs
	.comm	local_reg_n_refs,212,32
	.local	local_reg_freq
	.comm	local_reg_freq,212,32
	.local	local_reg_live_length
	.comm	local_reg_live_length,212,32
	.local	allocnos_live
	.comm	allocnos_live,8,8
	.local	regs_set
	.comm	regs_set,8,8
	.local	n_regs_set
	.comm	n_regs_set,4,4
	.local	eliminable_regset
	.comm	eliminable_regset,8,8
	.section	.rodata
.LC0:
	.string	"global.c"
	.text
	.globl	global_alloc
	.type	global_alloc, @function
global_alloc:
.LFB2:
	.file 1 "global.c"
	.loc 1 326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# file, file
	.loc 1 332 0
	movl	flag_omit_frame_pointer(%rip), %eax	# flag_omit_frame_pointer, flag_omit_frame_pointer.1
	.loc 1 336 0
	testl	%eax, %eax	# flag_omit_frame_pointer.1
	je	.L2	#,
	.loc 1 334 0
	movq	cfun(%rip), %rax	# cfun, cfun.2
	movzbl	424(%rax), %eax	# *cfun.2_27, D.14260
	andl	$64, %eax	#, D.14260
	testb	%al, %al	# D.14260
	jne	.L2	#,
	.loc 1 336 0
	call	ix86_frame_pointer_required	#
	testl	%eax, %eax	# D.14261
	je	.L3	#,
.L2:
	.loc 1 336 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L4	#
.L3:
	.loc 1 336 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L4:
	.loc 1 331 0 is_stmt 1
	movl	%eax, -60(%rbp)	# iftmp.0, need_fp
	.loc 1 341 0
	movl	$0, max_allocno(%rip)	#, max_allocno
	.loc 1 346 0
	movq	$0, no_global_alloc_regs(%rip)	#, no_global_alloc_regs
	.loc 1 351 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L5	#
.L9:
	.loc 1 353 0
	movq	-32(%rbp), %rax	# i, tmp502
	movl	eliminables.10607(,%rax,8), %eax	# eliminables[i_1].from, D.14261
	movl	$1, %edx	#, tmp503
	movl	%eax, %ecx	# D.14261, tmp644
	salq	%cl, %rdx	# tmp644, D.14262
	movq	eliminable_regset(%rip), %rax	# eliminable_regset, eliminable_regset.3
	orq	%rdx, %rax	# D.14262, eliminable_regset.4
	movq	%rax, eliminable_regset(%rip)	# eliminable_regset.4, eliminable_regset
	.loc 1 355 0
	movq	-32(%rbp), %rax	# i, tmp504
	movl	eliminables.10607+4(,%rax,8), %eax	# eliminables[i_1].to, D.14261
	cmpl	$7, %eax	#, D.14261
	jne	.L6	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.5
	.loc 1 356 0 is_stmt 1 discriminator 1
	testl	%eax, %eax	# frame_pointer_needed.5
	jne	.L7	#,
.L6:
	movq	-32(%rbp), %rax	# i, tmp505
	movl	eliminables.10607+4(,%rax,8), %eax	# eliminables[i_1].to, D.14261
	cmpl	$7, %eax	#, D.14261
	jne	.L8	#,
	.loc 1 356 0 is_stmt 0 discriminator 2
	cmpl	$0, -60(%rbp)	#, need_fp
	je	.L8	#,
.L7:
	.loc 1 357 0 is_stmt 1
	movq	-32(%rbp), %rax	# i, tmp506
	movl	eliminables.10607(,%rax,8), %eax	# eliminables[i_1].from, D.14261
	movl	$1, %edx	#, tmp507
	movl	%eax, %ecx	# D.14261, tmp645
	salq	%cl, %rdx	# tmp645, D.14262
	movq	no_global_alloc_regs(%rip), %rax	# no_global_alloc_regs, no_global_alloc_regs.6
	orq	%rdx, %rax	# D.14262, no_global_alloc_regs.7
	movq	%rax, no_global_alloc_regs(%rip)	# no_global_alloc_regs.7, no_global_alloc_regs
.L8:
	.loc 1 351 0
	addq	$1, -32(%rbp)	#, i
.L5:
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpq	$3, -32(%rbp)	#, i
	jbe	.L9	#,
	.loc 1 360 0 is_stmt 1
	movq	eliminable_regset(%rip), %rax	# eliminable_regset, eliminable_regset.8
	orq	$64, %rax	#, eliminable_regset.9
	movq	%rax, eliminable_regset(%rip)	# eliminable_regset.9, eliminable_regset
	.loc 1 361 0
	cmpl	$0, -60(%rbp)	#, need_fp
	je	.L10	#,
	.loc 1 362 0
	movq	no_global_alloc_regs(%rip), %rax	# no_global_alloc_regs, no_global_alloc_regs.10
	orq	$64, %rax	#, no_global_alloc_regs.11
	movq	%rax, no_global_alloc_regs(%rip)	# no_global_alloc_regs.11, no_global_alloc_regs
.L10:
	.loc 1 375 0
	movq	$0, regs_used_so_far(%rip)	#, regs_used_so_far
	.loc 1 396 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L11	#
.L14:
	.loc 1 397 0
	movq	-32(%rbp), %rax	# i, tmp509
	addq	$regs_ever_live, %rax	#, tmp508
	movzbl	(%rax), %eax	# regs_ever_live, D.14263
	testb	%al, %al	# D.14263
	jne	.L12	#,
	.loc 1 397 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# i, tmp511
	addq	$call_used_regs, %rax	#, tmp510
	movzbl	(%rax), %eax	# call_used_regs, D.14263
	testb	%al, %al	# D.14263
	je	.L13	#,
.L12:
	.loc 1 398 0 is_stmt 1
	movq	-32(%rbp), %rax	# i, tmp512
	movl	$1, %edx	#, tmp513
	movl	%eax, %ecx	# D.14261, tmp646
	salq	%cl, %rdx	# tmp646, D.14262
	movq	regs_used_so_far(%rip), %rax	# regs_used_so_far, regs_used_so_far.12
	orq	%rdx, %rax	# D.14262, regs_used_so_far.13
	movq	%rax, regs_used_so_far(%rip)	# regs_used_so_far.13, regs_used_so_far
.L13:
	.loc 1 396 0
	addq	$1, -32(%rbp)	#, i
.L11:
	.loc 1 396 0 is_stmt 0 discriminator 1
	cmpq	$52, -32(%rbp)	#, i
	jbe	.L14	#,
	.loc 1 401 0 is_stmt 1
	movq	$53, -32(%rbp)	#, i
	jmp	.L15	#
.L17:
	.loc 1 402 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.14
	movq	-32(%rbp), %rdx	# i, tmp514
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_64, D.14265
	testw	%ax, %ax	# D.14265
	js	.L16	#,
	.loc 1 403 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.15
	movq	-32(%rbp), %rdx	# i, tmp515
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_68, D.14265
	cwtl
	movl	$1, %edx	#, tmp516
	movl	%eax, %ecx	# D.14261, tmp647
	salq	%cl, %rdx	# tmp647, D.14262
	movq	regs_used_so_far(%rip), %rax	# regs_used_so_far, regs_used_so_far.16
	orq	%rdx, %rax	# D.14262, regs_used_so_far.17
	movq	%rax, regs_used_so_far(%rip)	# regs_used_so_far.17, regs_used_so_far
.L16:
	.loc 1 401 0
	addq	$1, -32(%rbp)	#, i
.L15:
	.loc 1 401 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.18
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L17	#,
	.loc 1 408 0 is_stmt 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.19
	cltq
	salq	$2, %rax	#, D.14262
	movq	%rax, %rdi	# D.14262,
	call	xmalloc	#
	movq	%rax, reg_allocno(%rip)	# reg_allocno.20, reg_allocno
	.loc 1 410 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L18	#
.L19:
	.loc 1 411 0 discriminator 2
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.21
	movq	-32(%rbp), %rdx	# i, tmp518
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	$-1, (%rax)	#, *_82
	.loc 1 410 0 discriminator 2
	addq	$1, -32(%rbp)	#, i
.L18:
	.loc 1 410 0 is_stmt 0 discriminator 1
	cmpq	$52, -32(%rbp)	#, i
	jbe	.L19	#,
	.loc 1 415 0 is_stmt 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.22
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.14262,
	call	xcalloc	#
	movq	%rax, reg_may_share(%rip)	# reg_may_share.23, reg_may_share
	.loc 1 416 0
	movq	regs_may_share(%rip), %rax	# regs_may_share, tmp520
	movq	%rax, -24(%rbp)	# tmp520, x
	jmp	.L20	#
.L23:
.LBB2:
	.loc 1 418 0
	movq	-24(%rbp), %rax	# x, tmp521
	movq	8(%rax), %rax	# x_13->fld[0].rtx, D.14267
	movl	8(%rax), %eax	# _88->fld[0].rtuint, D.14268
	movl	%eax, -56(%rbp)	# D.14268, r1
	.loc 1 419 0
	movq	-24(%rbp), %rax	# x, tmp522
	movq	16(%rax), %rax	# x_13->fld[1].rtx, D.14267
	movq	8(%rax), %rax	# _91->fld[0].rtx, D.14267
	movl	8(%rax), %eax	# _92->fld[0].rtuint, D.14268
	movl	%eax, -52(%rbp)	# D.14268, r2
	.loc 1 420 0
	movl	-56(%rbp), %eax	# r1, tmp523
	cmpl	-52(%rbp), %eax	# r2, tmp523
	jle	.L21	#,
	.loc 1 421 0
	movq	reg_may_share(%rip), %rax	# reg_may_share, reg_may_share.24
	movl	-56(%rbp), %edx	# r1, tmp524
	movslq	%edx, %rdx	# tmp524, D.14262
	salq	$2, %rdx	#, D.14262
	addq	%rax, %rdx	# reg_may_share.24, D.14266
	movl	-52(%rbp), %eax	# r2, tmp525
	movl	%eax, (%rdx)	# tmp525, *_98
	jmp	.L22	#
.L21:
	.loc 1 423 0
	movq	reg_may_share(%rip), %rax	# reg_may_share, reg_may_share.25
	movl	-52(%rbp), %edx	# r2, tmp526
	movslq	%edx, %rdx	# tmp526, D.14262
	salq	$2, %rdx	#, D.14262
	addq	%rax, %rdx	# reg_may_share.25, D.14266
	movl	-56(%rbp), %eax	# r1, tmp527
	movl	%eax, (%rdx)	# tmp527, *_102
.L22:
.LBE2:
	.loc 1 416 0
	movq	-24(%rbp), %rax	# x, tmp528
	movq	16(%rax), %rax	# x_13->fld[1].rtx, D.14267
	movq	16(%rax), %rax	# _103->fld[1].rtx, tmp529
	movq	%rax, -24(%rbp)	# tmp529, x
.L20:
	.loc 1 416 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, x
	jne	.L23	#,
	.loc 1 426 0 is_stmt 1
	movq	$53, -32(%rbp)	#, i
	jmp	.L24	#
.L31:
	.loc 1 430 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.26
	movq	-32(%rbp), %rdx	# i, tmp531
	addq	$4, %rdx	#, tmp530
	movq	(%rax,%rdx,8), %rax	# reg_n_info.26_108->data.reg, D.14269
	movl	16(%rax), %eax	# _109->refs, D.14261
	testl	%eax, %eax	# D.14261
	je	.L25	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.27
	movq	-32(%rbp), %rdx	# i, tmp533
	addq	$4, %rdx	#, tmp532
	movq	(%rax,%rdx,8), %rax	# reg_n_info.27_111->data.reg, D.14269
	movl	28(%rax), %eax	# _112->live_length, D.14261
	cmpl	$-1, %eax	#, D.14261
	je	.L25	#,
	.loc 1 433 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.28
	movzbl	425(%rax), %eax	# *cfun.28_114, D.14260
	andl	$1, %eax	#, D.14260
	testb	%al, %al	# D.14260
	je	.L26	#,
	.loc 1 434 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.29
	movq	-32(%rbp), %rdx	# i, tmp535
	addq	$4, %rdx	#, tmp534
	movq	(%rax,%rdx,8), %rax	# reg_n_info.29_117->data.reg, D.14269
	movl	32(%rax), %eax	# _118->calls_crossed, D.14261
	testl	%eax, %eax	# D.14261
	jne	.L25	#,
.L26:
	.loc 1 436 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.30
	movq	-32(%rbp), %rdx	# i, tmp536
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_122, D.14265
	testw	%ax, %ax	# D.14265
	jns	.L27	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movq	reg_may_share(%rip), %rax	# reg_may_share, reg_may_share.31
	movq	-32(%rbp), %rdx	# i, tmp537
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_126, D.14261
	testl	%eax, %eax	# D.14261
	je	.L27	#,
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.32
	movq	reg_may_share(%rip), %rdx	# reg_may_share, reg_may_share.33
	movq	-32(%rbp), %rcx	# i, tmp538
	salq	$2, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14266
	movl	(%rdx), %edx	# *_131, D.14261
	movslq	%edx, %rdx	# D.14261, D.14262
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_135, D.14261
	testl	%eax, %eax	# D.14261
	js	.L27	#,
	.loc 1 437 0 is_stmt 1
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.34
	movq	-32(%rbp), %rdx	# i, tmp539
	salq	$2, %rdx	#, D.14262
	addq	%rax, %rdx	# reg_allocno.34, D.14266
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.35
	movq	reg_may_share(%rip), %rcx	# reg_may_share, reg_may_share.36
	movq	-32(%rbp), %rsi	# i, tmp540
	salq	$2, %rsi	#, D.14262
	addq	%rsi, %rcx	# D.14262, D.14266
	movl	(%rcx), %ecx	# *_143, D.14261
	movslq	%ecx, %rcx	# D.14261, D.14262
	salq	$2, %rcx	#, D.14262
	addq	%rcx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_147, D.14261
	movl	%eax, (%rdx)	# D.14261, *_139
	jmp	.L28	#
.L27:
	.loc 1 439 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.37
	movq	-32(%rbp), %rdx	# i, tmp541
	salq	$2, %rdx	#, D.14262
	leaq	(%rax,%rdx), %rcx	#, D.14266
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.38
	leal	1(%rax), %edx	#, max_allocno.40
	movl	%edx, max_allocno(%rip)	# max_allocno.40, max_allocno
	movl	%eax, (%rcx)	# max_allocno.39, *_151
.L28:
	.loc 1 440 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.41
	movq	-32(%rbp), %rdx	# i, tmp543
	addq	$4, %rdx	#, tmp542
	movq	(%rax,%rdx,8), %rax	# reg_n_info.41_155->data.reg, D.14269
	movl	28(%rax), %eax	# _156->live_length, D.14261
	testl	%eax, %eax	# D.14261
	jne	.L29	#,
	.loc 1 441 0
	movl	$__FUNCTION__.10628, %edx	#,
	movl	$441, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L29:
	.loc 1 440 0 discriminator 1
	jmp	.L30	#
.L25:
	.loc 1 444 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.42
	movq	-32(%rbp), %rdx	# i, tmp544
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	$-1, (%rax)	#, *_160
.L30:
	.loc 1 426 0
	addq	$1, -32(%rbp)	#, i
.L24:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.43
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L31	#,
	.loc 1 446 0 is_stmt 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.44
	cltq
	movl	$64, %esi	#,
	movq	%rax, %rdi	# D.14262,
	call	xcalloc	#
	movq	%rax, allocno(%rip)	# allocno.45, allocno
	.loc 1 448 0
	movq	$53, -32(%rbp)	#, i
	jmp	.L32	#
.L38:
	.loc 1 449 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.46
	movq	-32(%rbp), %rdx	# i, tmp546
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_170, D.14261
	testl	%eax, %eax	# D.14261
	js	.L33	#,
.LBB3:
	.loc 1 451 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.47
	movq	-32(%rbp), %rdx	# i, tmp547
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_174, tmp548
	movl	%eax, -48(%rbp)	# tmp548, num
	.loc 1 452 0
	movq	allocno(%rip), %rax	# allocno, allocno.48
	movl	-48(%rbp), %edx	# num, tmp549
	movslq	%edx, %rdx	# tmp549, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno.48, D.14270
	movq	-32(%rbp), %rax	# i, tmp550
	movl	%eax, (%rdx)	# D.14261, _179->reg
	.loc 1 453 0
	movq	allocno(%rip), %rax	# allocno, allocno.49
	movl	-48(%rbp), %edx	# num, tmp551
	movslq	%edx, %rdx	# tmp551, D.14262
	salq	$6, %rdx	#, D.14262
	leaq	(%rax,%rdx), %rcx	#, D.14270
	movq	cfun(%rip), %rax	# cfun, cfun.50
	movq	24(%rax), %rax	# cfun.50_185->emit, D.14271
	movq	80(%rax), %rax	# _186->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp552
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_189, D.14267
	movzbl	2(%rax), %eax	# _190->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14261
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14260
	movzbl	%al, %edx	# D.14260, D.14261
	movl	target_flags(%rip), %eax	# target_flags, target_flags.52
	andl	$33554432, %eax	#, D.14261
	testl	%eax, %eax	# D.14261
	je	.L34	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.51
	jmp	.L35	#
.L34:
	.loc 1 453 0 discriminator 2
	movl	$4, %eax	#, iftmp.51
.L35:
	.loc 1 453 0 discriminator 3
	addl	%edx, %eax	# D.14261, D.14261
	subl	$1, %eax	#, D.14261
	movl	target_flags(%rip), %edx	# target_flags, target_flags.54
	andl	$33554432, %edx	#, D.14261
	testl	%edx, %edx	# D.14261
	je	.L36	#,
	.loc 1 453 0 discriminator 1
	movl	$8, %ebx	#, iftmp.53
	jmp	.L37	#
.L36:
	.loc 1 453 0 discriminator 2
	movl	$4, %ebx	#, iftmp.53
.L37:
	.loc 1 453 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.53
	movl	%eax, 4(%rcx)	# D.14261, _184->size
	.loc 1 454 0 is_stmt 1 discriminator 3
	movq	allocno(%rip), %rax	# allocno, allocno.55
	movl	-48(%rbp), %edx	# num, tmp556
	movslq	%edx, %rdx	# tmp556, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno.55, D.14270
	movq	allocno(%rip), %rax	# allocno, allocno.56
	movl	-48(%rbp), %ecx	# num, tmp557
	movslq	%ecx, %rcx	# tmp557, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rax	# D.14262, D.14270
	movl	8(%rax), %ecx	# _213->calls_crossed, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.57
	movq	-32(%rbp), %rsi	# i, tmp559
	addq	$4, %rsi	#, tmp558
	movq	(%rax,%rsi,8), %rax	# reg_n_info.57_215->data.reg, D.14269
	movl	32(%rax), %eax	# _216->calls_crossed, D.14261
	addl	%ecx, %eax	# D.14261, D.14261
	movl	%eax, 8(%rdx)	# D.14261, _209->calls_crossed
	.loc 1 455 0 discriminator 3
	movq	allocno(%rip), %rax	# allocno, allocno.58
	movl	-48(%rbp), %edx	# num, tmp560
	movslq	%edx, %rdx	# tmp560, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno.58, D.14270
	movq	allocno(%rip), %rax	# allocno, allocno.59
	movl	-48(%rbp), %ecx	# num, tmp561
	movslq	%ecx, %rcx	# tmp561, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rax	# D.14262, D.14270
	movl	12(%rax), %ecx	# _226->n_refs, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.60
	movq	-32(%rbp), %rsi	# i, tmp563
	addq	$4, %rsi	#, tmp562
	movq	(%rax,%rsi,8), %rax	# reg_n_info.60_228->data.reg, D.14269
	movl	16(%rax), %eax	# _229->refs, D.14261
	addl	%ecx, %eax	# D.14261, D.14261
	movl	%eax, 12(%rdx)	# D.14261, _222->n_refs
	.loc 1 456 0 discriminator 3
	movq	allocno(%rip), %rax	# allocno, allocno.61
	movl	-48(%rbp), %edx	# num, tmp564
	movslq	%edx, %rdx	# tmp564, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno.61, D.14270
	movq	allocno(%rip), %rax	# allocno, allocno.62
	movl	-48(%rbp), %ecx	# num, tmp565
	movslq	%ecx, %rcx	# tmp565, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rax	# D.14262, D.14270
	movl	16(%rax), %ecx	# _239->freq, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.63
	movq	-32(%rbp), %rsi	# i, tmp567
	addq	$4, %rsi	#, tmp566
	movq	(%rax,%rsi,8), %rax	# reg_n_info.63_241->data.reg, D.14269
	movl	20(%rax), %eax	# _242->freq, D.14261
	addl	%ecx, %eax	# D.14261, D.14261
	movl	%eax, 16(%rdx)	# D.14261, _235->freq
	.loc 1 457 0 discriminator 3
	movq	allocno(%rip), %rax	# allocno, allocno.64
	movl	-48(%rbp), %edx	# num, tmp568
	movslq	%edx, %rdx	# tmp568, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	20(%rax), %edx	# _248->live_length, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.65
	movq	-32(%rbp), %rcx	# i, tmp570
	addq	$4, %rcx	#, tmp569
	movq	(%rax,%rcx,8), %rax	# reg_n_info.65_250->data.reg, D.14269
	movl	28(%rax), %eax	# _251->live_length, D.14261
	cmpl	%eax, %edx	# D.14261, D.14261
	jge	.L33	#,
	.loc 1 458 0
	movq	allocno(%rip), %rax	# allocno, allocno.66
	movl	-48(%rbp), %edx	# num, tmp571
	movslq	%edx, %rdx	# tmp571, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno.66, D.14270
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.67
	movq	-32(%rbp), %rcx	# i, tmp573
	addq	$4, %rcx	#, tmp572
	movq	(%rax,%rcx,8), %rax	# reg_n_info.67_257->data.reg, D.14269
	movl	28(%rax), %eax	# _258->live_length, D.14261
	movl	%eax, 20(%rdx)	# D.14261, _256->live_length
.L33:
.LBE3:
	.loc 1 448 0
	addq	$1, -32(%rbp)	#, i
.L32:
	.loc 1 448 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.68
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L38	#,
	.loc 1 464 0 is_stmt 1
	movl	$212, %edx	#,
	movl	$0, %esi	#,
	movl	$local_reg_live_length, %edi	#,
	call	memset	#
	.loc 1 465 0
	movl	$212, %edx	#,
	movl	$0, %esi	#,
	movl	$local_reg_n_refs, %edi	#,
	call	memset	#
	.loc 1 466 0
	movl	$212, %edx	#,
	movl	$0, %esi	#,
	movl	$local_reg_freq, %edi	#,
	call	memset	#
	.loc 1 467 0
	movq	$53, -32(%rbp)	#, i
	jmp	.L39	#
.L64:
	.loc 1 468 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.69
	movq	-32(%rbp), %rdx	# i, tmp574
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_266, D.14265
	testw	%ax, %ax	# D.14265
	js	.L40	#,
.LBB4:
	.loc 1 470 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.70
	movq	-32(%rbp), %rdx	# i, tmp575
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_270, D.14265
	cwtl
	movl	%eax, -44(%rbp)	# tmp576, regno
	.loc 1 471 0
	cmpl	$7, -44(%rbp)	#, regno
	jle	.L41	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, regno
	jle	.L42	#,
.L41:
	.loc 1 471 0 discriminator 2
	cmpl	$20, -44(%rbp)	#, regno
	jle	.L43	#,
	.loc 1 471 0 discriminator 1
	cmpl	$28, -44(%rbp)	#, regno
	jle	.L42	#,
.L43:
	.loc 1 471 0 discriminator 2
	cmpl	$44, -44(%rbp)	#, regno
	jle	.L44	#,
	.loc 1 471 0 discriminator 1
	cmpl	$52, -44(%rbp)	#, regno
	jle	.L42	#,
.L44:
	.loc 1 471 0 discriminator 2
	cmpl	$28, -44(%rbp)	#, regno
	jle	.L45	#,
	.loc 1 471 0 discriminator 1
	cmpl	$36, -44(%rbp)	#, regno
	jg	.L45	#,
.L42:
	movq	cfun(%rip), %rax	# cfun, cfun.73
	movq	24(%rax), %rax	# cfun.73_320->emit, D.14271
	movq	80(%rax), %rax	# _321->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp577
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_324, D.14267
	movzbl	2(%rax), %eax	# _325->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14261
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14273
	cmpl	$5, %eax	#, D.14273
	je	.L46	#,
	.loc 1 471 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.74
	movq	24(%rax), %rax	# cfun.74_329->emit, D.14271
	movq	80(%rax), %rax	# _330->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp579
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_333, D.14267
	movzbl	2(%rax), %eax	# _334->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14261
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14273
	cmpl	$6, %eax	#, D.14273
	jne	.L47	#,
.L46:
	.loc 1 471 0 discriminator 1
	movl	$2, %eax	#, iftmp.72
	jmp	.L48	#
.L47:
	movl	$1, %eax	#, iftmp.72
.L48:
	.loc 1 471 0 discriminator 3
	jmp	.L49	#
.L45:
	.loc 1 471 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.76
	movq	24(%rax), %rax	# cfun.76_273->emit, D.14271
	movq	80(%rax), %rax	# _274->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp581
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_277, D.14267
	movzbl	2(%rax), %eax	# _278->mode, D.14260
	cmpb	$18, %al	#, D.14260
	jne	.L50	#,
	.loc 1 471 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.14261
	testl	%eax, %eax	# D.14261
	je	.L51	#,
	movl	$2, %eax	#, iftmp.77
	jmp	.L49	#
.L51:
	.loc 1 471 0 discriminator 2
	movl	$3, %eax	#, iftmp.77
	jmp	.L49	#
.L50:
	movq	cfun(%rip), %rax	# cfun, cfun.80
	movq	24(%rax), %rax	# cfun.80_285->emit, D.14271
	movq	80(%rax), %rax	# _286->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp582
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_289, D.14267
	movzbl	2(%rax), %eax	# _290->mode, D.14260
	cmpb	$24, %al	#, D.14260
	jne	.L54	#,
	.loc 1 471 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$33554432, %eax	#, D.14261
	testl	%eax, %eax	# D.14261
	je	.L55	#,
	movl	$4, %eax	#, iftmp.81
	jmp	.L49	#
.L55:
	.loc 1 471 0 discriminator 2
	movl	$6, %eax	#, iftmp.81
	jmp	.L49	#
.L54:
	movq	cfun(%rip), %rax	# cfun, cfun.83
	movq	24(%rax), %rax	# cfun.83_297->emit, D.14271
	movq	80(%rax), %rax	# _298->x_regno_reg_rtx, D.14272
	movq	-32(%rbp), %rdx	# i, tmp583
	salq	$3, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14272
	movq	(%rax), %rax	# *_301, D.14267
	movzbl	2(%rax), %eax	# _302->mode, D.14260
	movzbl	%al, %eax	# D.14260, D.14261
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14260
	movzbl	%al, %edx	# D.14260, D.14261
	movl	target_flags(%rip), %eax	# target_flags, target_flags.85
	andl	$33554432, %eax	#, D.14261
	testl	%eax, %eax	# D.14261
	je	.L58	#,
	.loc 1 471 0 discriminator 1
	movl	$8, %eax	#, iftmp.84
	jmp	.L59	#
.L58:
	.loc 1 471 0 discriminator 2
	movl	$4, %eax	#, iftmp.84
.L59:
	.loc 1 471 0 discriminator 3
	addl	%edx, %eax	# D.14261, D.14261
	subl	$1, %eax	#, D.14261
	movl	target_flags(%rip), %edx	# target_flags, target_flags.87
	andl	$33554432, %edx	#, D.14261
	testl	%edx, %edx	# D.14261
	je	.L60	#,
	.loc 1 471 0 discriminator 1
	movl	$8, %ebx	#, iftmp.86
	jmp	.L61	#
.L60:
	.loc 1 471 0 discriminator 2
	movl	$4, %ebx	#, iftmp.86
.L61:
	.loc 1 471 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.86
.L49:
	movl	-44(%rbp), %edx	# regno, tmp590
	addl	%edx, %eax	# tmp590, tmp589
	movl	%eax, -40(%rbp)	# tmp589, endregno
	.loc 1 474 0 is_stmt 1 discriminator 3
	movl	-44(%rbp), %eax	# regno, tmp591
	movl	%eax, -64(%rbp)	# tmp591, j
	jmp	.L62	#
.L63:
	.loc 1 476 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp593
	cltq
	movl	local_reg_n_refs(,%rax,4), %edx	# local_reg_n_refs, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.88
	movq	-32(%rbp), %rcx	# i, tmp595
	addq	$4, %rcx	#, tmp594
	movq	(%rax,%rcx,8), %rax	# reg_n_info.88_344->data.reg, D.14269
	movl	16(%rax), %eax	# _345->refs, D.14261
	addl	%eax, %edx	# D.14261, D.14261
	movl	-64(%rbp), %eax	# j, tmp597
	cltq
	movl	%edx, local_reg_n_refs(,%rax,4)	# D.14261, local_reg_n_refs
	.loc 1 477 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp599
	cltq
	movl	local_reg_freq(,%rax,4), %edx	# local_reg_freq, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.89
	movq	-32(%rbp), %rcx	# i, tmp601
	addq	$4, %rcx	#, tmp600
	movq	(%rax,%rcx,8), %rax	# reg_n_info.89_349->data.reg, D.14269
	movl	20(%rax), %eax	# _350->freq, D.14261
	addl	%eax, %edx	# D.14261, D.14261
	movl	-64(%rbp), %eax	# j, tmp603
	cltq
	movl	%edx, local_reg_freq(,%rax,4)	# D.14261, local_reg_freq
	.loc 1 478 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp605
	cltq
	movl	local_reg_live_length(,%rax,4), %edx	# local_reg_live_length, D.14261
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.90
	movq	-32(%rbp), %rcx	# i, tmp607
	addq	$4, %rcx	#, tmp606
	movq	(%rax,%rcx,8), %rax	# reg_n_info.90_354->data.reg, D.14269
	movl	28(%rax), %eax	# _355->live_length, D.14261
	addl	%eax, %edx	# D.14261, D.14261
	movl	-64(%rbp), %eax	# j, tmp609
	cltq
	movl	%edx, local_reg_live_length(,%rax,4)	# D.14261, local_reg_live_length
	.loc 1 474 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L62:
	.loc 1 474 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp610
	cmpl	-40(%rbp), %eax	# endregno, tmp610
	jl	.L63	#,
.L40:
.LBE4:
	.loc 1 467 0 is_stmt 1
	addq	$1, -32(%rbp)	#, i
.L39:
	.loc 1 467 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.91
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L64	#,
	.loc 1 483 0 is_stmt 1
	movq	$0, -32(%rbp)	#, i
	jmp	.L65	#
.L67:
	.loc 1 484 0
	movq	-32(%rbp), %rax	# i, tmp612
	addq	$regs_ever_live, %rax	#, tmp611
	movzbl	(%rax), %eax	# regs_ever_live, D.14263
	testb	%al, %al	# D.14263
	je	.L66	#,
	.loc 1 485 0
	movq	-32(%rbp), %rax	# i, tmp613
	movl	$0, local_reg_n_refs(,%rax,4)	#, local_reg_n_refs
	movq	-32(%rbp), %rax	# i, tmp614
	movl	$0, local_reg_freq(,%rax,4)	#, local_reg_freq
.L66:
	.loc 1 483 0
	addq	$1, -32(%rbp)	#, i
.L65:
	.loc 1 483 0 is_stmt 0 discriminator 1
	cmpq	$52, -32(%rbp)	#, i
	jbe	.L67	#,
	.loc 1 487 0 is_stmt 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.92
	addl	$63, %eax	#, D.14261
	leal	63(%rax), %edx	#, tmp616
	testl	%eax, %eax	# tmp615
	cmovs	%edx, %eax	# tmp616,, tmp615
	sarl	$6, %eax	#, tmp617
	movl	%eax, allocno_row_words(%rip)	# allocno_row_words.93, allocno_row_words
	.loc 1 492 0
	movl	max_allocno(%rip), %edx	# max_allocno, max_allocno.94
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.95
	imull	%edx, %eax	# max_allocno.94, D.14261
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14262,
	call	xcalloc	#
	movq	%rax, conflicts(%rip)	# conflicts.96, conflicts
	.loc 1 495 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.97
	cltq
	salq	$3, %rax	#, D.14262
	movq	%rax, %rdi	# D.14262,
	call	xmalloc	#
	movq	%rax, allocnos_live(%rip)	# allocnos_live.98, allocnos_live
	.loc 1 500 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.99
	testl	%eax, %eax	# max_allocno.99
	jle	.L68	#,
	.loc 1 505 0
	call	global_conflicts	#
	.loc 1 507 0
	call	mirror_conflicts	#
	.loc 1 516 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L69	#
.L70:
	.loc 1 518 0 discriminator 2
	movq	allocno(%rip), %rax	# allocno, allocno.100
	movq	-32(%rbp), %rdx	# i, tmp620
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movq	allocno(%rip), %rdx	# allocno, allocno.101
	movq	-32(%rbp), %rcx	# i, tmp621
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movq	24(%rdx), %rdx	# _384->hard_reg_conflicts, D.14262
	movq	eliminable_regset(%rip), %rcx	# eliminable_regset, eliminable_regset.102
	notq	%rcx	# D.14262
	andq	%rcx, %rdx	# D.14262, D.14262
	movq	%rdx, 24(%rax)	# D.14262, _381->hard_reg_conflicts
	.loc 1 520 0 discriminator 2
	movq	allocno(%rip), %rax	# allocno, allocno.103
	movq	-32(%rbp), %rdx	# i, tmp622
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movq	allocno(%rip), %rdx	# allocno, allocno.104
	movq	-32(%rbp), %rcx	# i, tmp623
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movq	40(%rdx), %rdx	# _394->hard_reg_copy_preferences, D.14262
	movq	eliminable_regset(%rip), %rcx	# eliminable_regset, eliminable_regset.105
	notq	%rcx	# D.14262
	andq	%rcx, %rdx	# D.14262, D.14262
	movq	%rdx, 40(%rax)	# D.14262, _391->hard_reg_copy_preferences
	.loc 1 522 0 discriminator 2
	movq	allocno(%rip), %rax	# allocno, allocno.106
	movq	-32(%rbp), %rdx	# i, tmp624
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movq	allocno(%rip), %rdx	# allocno, allocno.107
	movq	-32(%rbp), %rcx	# i, tmp625
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movq	32(%rdx), %rdx	# _404->hard_reg_preferences, D.14262
	movq	eliminable_regset(%rip), %rcx	# eliminable_regset, eliminable_regset.108
	notq	%rcx	# D.14262
	andq	%rcx, %rdx	# D.14262, D.14262
	movq	%rdx, 32(%rax)	# D.14262, _401->hard_reg_preferences
	.loc 1 516 0 discriminator 2
	addq	$1, -32(%rbp)	#, i
.L69:
	.loc 1 516 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.109
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L70	#,
	.loc 1 528 0 is_stmt 1
	call	expand_preferences	#
	.loc 1 532 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.110
	cltq
	salq	$2, %rax	#, D.14262
	movq	%rax, %rdi	# D.14262,
	call	xmalloc	#
	movq	%rax, allocno_order(%rip)	# allocno_order.111, allocno_order
	.loc 1 533 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L71	#
.L72:
	.loc 1 534 0 discriminator 2
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.112
	movq	-32(%rbp), %rdx	# i, tmp627
	salq	$2, %rdx	#, D.14262
	addq	%rax, %rdx	# allocno_order.112, D.14266
	movq	-32(%rbp), %rax	# i, tmp628
	movl	%eax, (%rdx)	# D.14261, *_419
	.loc 1 533 0 discriminator 2
	addq	$1, -32(%rbp)	#, i
.L71:
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.113
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L72	#,
	.loc 1 543 0 is_stmt 1
	movq	$0, -32(%rbp)	#, i
	jmp	.L73	#
.L76:
	.loc 1 545 0
	movq	allocno(%rip), %rax	# allocno, allocno.114
	movq	-32(%rbp), %rdx	# i, tmp629
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	4(%rax), %eax	# _427->size, D.14261
	testl	%eax, %eax	# D.14261
	jne	.L74	#,
	.loc 1 546 0
	movq	allocno(%rip), %rax	# allocno, allocno.115
	movq	-32(%rbp), %rdx	# i, tmp630
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	$1, 4(%rax)	#, _431->size
.L74:
	.loc 1 547 0
	movq	allocno(%rip), %rax	# allocno, allocno.116
	movq	-32(%rbp), %rdx	# i, tmp631
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	20(%rax), %eax	# _434->live_length, D.14261
	testl	%eax, %eax	# D.14261
	jne	.L75	#,
	.loc 1 548 0
	movq	allocno(%rip), %rax	# allocno, allocno.117
	movq	-32(%rbp), %rdx	# i, tmp632
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	$-1, 20(%rax)	#, _438->live_length
.L75:
	.loc 1 543 0
	addq	$1, -32(%rbp)	#, i
.L73:
	.loc 1 543 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.118
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L76	#,
	.loc 1 551 0 is_stmt 1
	movl	max_allocno(%rip), %esi	# max_allocno, max_allocno.119
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.120
	movl	$allocno_compare, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# allocno_order.120,
	call	specqsort	#
	.loc 1 554 0
	call	prune_preferences	#
	.loc 1 556 0
	cmpq	$0, -72(%rbp)	#, file
	je	.L77	#,
	.loc 1 557 0
	movq	-72(%rbp), %rax	# file, tmp633
	movq	%rax, %rdi	# tmp633,
	call	dump_conflicts	#
.L77:
	.loc 1 562 0
	movq	$0, -32(%rbp)	#, i
	jmp	.L78	#
.L81:
	.loc 1 563 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.121
	movq	allocno(%rip), %rdx	# allocno, allocno.122
	movq	allocno_order(%rip), %rcx	# allocno_order, allocno_order.123
	movq	-32(%rbp), %rsi	# i, tmp634
	salq	$2, %rsi	#, D.14262
	addq	%rsi, %rcx	# D.14262, D.14266
	movl	(%rcx), %ecx	# *_450, D.14261
	movslq	%ecx, %rcx	# D.14261, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movl	(%rdx), %edx	# _454->reg, D.14261
	movslq	%edx, %rdx	# D.14261, D.14262
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_458, D.14265
	testw	%ax, %ax	# D.14265
	jns	.L79	#,
	.loc 1 564 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.124
	movq	allocno(%rip), %rdx	# allocno, allocno.125
	movq	allocno_order(%rip), %rcx	# allocno_order, allocno_order.126
	movq	-32(%rbp), %rsi	# i, tmp635
	salq	$2, %rsi	#, D.14262
	addq	%rsi, %rcx	# D.14262, D.14266
	movl	(%rcx), %ecx	# *_464, D.14261
	movslq	%ecx, %rcx	# D.14261, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movl	(%rdx), %edx	# _468->reg, D.14261
	movslq	%edx, %rdx	# D.14261, tmp636
	addq	$4, %rdx	#, tmp637
	movq	(%rax,%rdx,8), %rax	# reg_n_info.124_460->data.reg, D.14269
	movl	28(%rax), %eax	# _470->live_length, D.14261
	testl	%eax, %eax	# D.14261
	js	.L79	#,
	.loc 1 571 0
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.127
	movq	-32(%rbp), %rdx	# i, tmp638
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_474, D.14261
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.14261,
	call	find_reg	#
	.loc 1 572 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.128
	movq	allocno(%rip), %rdx	# allocno, allocno.129
	movq	allocno_order(%rip), %rcx	# allocno_order, allocno_order.130
	movq	-32(%rbp), %rsi	# i, tmp639
	salq	$2, %rsi	#, D.14262
	addq	%rsi, %rcx	# D.14262, D.14266
	movl	(%rcx), %ecx	# *_480, D.14261
	movslq	%ecx, %rcx	# D.14261, D.14262
	salq	$6, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14270
	movl	(%rdx), %edx	# _484->reg, D.14261
	movslq	%edx, %rdx	# D.14261, D.14262
	addq	%rdx, %rdx	# D.14262
	addq	%rdx, %rax	# D.14262, D.14264
	movzwl	(%rax), %eax	# *_488, D.14265
	testw	%ax, %ax	# D.14265
	js	.L80	#,
	.loc 1 573 0
	jmp	.L79	#
.L80:
	.loc 1 575 0
	movq	allocno(%rip), %rax	# allocno, allocno.131
	movq	allocno_order(%rip), %rdx	# allocno_order, allocno_order.132
	movq	-32(%rbp), %rcx	# i, tmp640
	salq	$2, %rcx	#, D.14262
	addq	%rcx, %rdx	# D.14262, D.14266
	movl	(%rdx), %edx	# *_493, D.14261
	movslq	%edx, %rdx	# D.14261, D.14262
	salq	$6, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14270
	movl	(%rax), %eax	# _497->reg, D.14261
	movl	%eax, %edi	# D.14261,
	call	reg_alternate_class	#
	testl	%eax, %eax	# D.14274
	je	.L79	#,
	.loc 1 576 0
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.133
	movq	-32(%rbp), %rdx	# i, tmp641
	salq	$2, %rdx	#, D.14262
	addq	%rdx, %rax	# D.14262, D.14266
	movl	(%rax), %eax	# *_502, D.14261
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.14261,
	call	find_reg	#
.L79:
	.loc 1 562 0
	addq	$1, -32(%rbp)	#, i
.L78:
	.loc 1 562 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.134
	cltq
	cmpq	-32(%rbp), %rax	# i, D.14262
	ja	.L81	#,
	.loc 1 579 0 is_stmt 1
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.135
	movq	%rax, %rdi	# allocno_order.135,
	call	free	#
.L68:
	.loc 1 590 0
	call	get_insns	#
	movq	%rax, %rdi	# D.14267,
	call	build_insn_chain	#
	.loc 1 591 0
	call	get_insns	#
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14267,
	call	reload	#
	movl	%eax, -36(%rbp)	# tmp642, retval
	.loc 1 595 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.136
	movq	%rax, %rdi	# reg_allocno.136,
	call	free	#
	.loc 1 596 0
	movq	reg_may_share(%rip), %rax	# reg_may_share, reg_may_share.137
	movq	%rax, %rdi	# reg_may_share.137,
	call	free	#
	.loc 1 597 0
	movq	allocno(%rip), %rax	# allocno, allocno.138
	movq	%rax, %rdi	# allocno.138,
	call	free	#
	.loc 1 598 0
	movq	conflicts(%rip), %rax	# conflicts, conflicts.139
	movq	%rax, %rdi	# conflicts.139,
	call	free	#
	.loc 1 599 0
	movq	allocnos_live(%rip), %rax	# allocnos_live, allocnos_live.140
	movq	%rax, %rdi	# allocnos_live.140,
	call	free	#
	.loc 1 601 0
	movl	-36(%rbp), %eax	# retval, D.14261
	.loc 1 602 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	global_alloc, .-global_alloc
	.type	allocno_compare, @function
allocno_compare:
.LFB3:
	.loc 1 611 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# v1p, v1p
	movq	%rsi, -48(%rbp)	# v2p, v2p
	.loc 1 612 0
	movq	-40(%rbp), %rax	# v1p, tmp111
	movl	(%rax), %eax	# MEM[(const int *)v1p_2(D)], tmp112
	movl	%eax, -32(%rbp)	# tmp112, v1
	movq	-48(%rbp), %rax	# v2p, tmp113
	movl	(%rax), %eax	# MEM[(const int *)v2p_4(D)], tmp114
	movl	%eax, -28(%rbp)	# tmp114, v2
	.loc 1 620 0
	movq	allocno(%rip), %rax	# allocno, allocno.141
	movl	-32(%rbp), %edx	# v1, tmp115
	movslq	%edx, %rdx	# tmp115, D.14277
	salq	$6, %rdx	#, D.14277
	addq	%rdx, %rax	# D.14277, D.14278
	movl	4(%rax), %edx	# _9->size, D.14276
	movl	%edx, %eax	# D.14276, tmp116
	sall	$2, %eax	#, tmp116
	addl	%edx, %eax	# D.14276, tmp116
	addl	%eax, %eax	# tmp117
	movl	%eax, %ebx	# tmp116, D.14276
	.loc 1 621 0
	movq	allocno(%rip), %rax	# allocno, allocno.142
	movl	-32(%rbp), %edx	# v1, tmp118
	movslq	%edx, %rdx	# tmp118, D.14277
	salq	$6, %rdx	#, D.14277
	addq	%rdx, %rax	# D.14277, D.14278
	movl	12(%rax), %eax	# _15->n_refs, D.14276
	cltq
	movq	%rax, %rdi	# D.14277,
	call	floor_log2_wide	#
	movq	allocno(%rip), %rdx	# allocno, allocno.143
	movl	-32(%rbp), %ecx	# v1, tmp119
	movslq	%ecx, %rcx	# tmp119, D.14277
	salq	$6, %rcx	#, D.14277
	addq	%rcx, %rdx	# D.14277, D.14278
	movl	16(%rdx), %edx	# _22->freq, D.14276
	imull	%edx, %eax	# D.14276, D.14276
	.loc 1 620 0
	imull	%ebx, %eax	# D.14276, D.14276
	.loc 1 622 0
	movq	allocno(%rip), %rdx	# allocno, allocno.144
	movl	-32(%rbp), %ecx	# v1, tmp120
	movslq	%ecx, %rcx	# tmp120, D.14277
	salq	$6, %rcx	#, D.14277
	addq	%rcx, %rdx	# D.14277, D.14278
	movl	20(%rdx), %esi	# _29->live_length, D.14276
	.loc 1 619 0
	cltd
	idivl	%esi	# D.14276
	movl	%eax, -24(%rbp)	# tmp121, pri1
	.loc 1 624 0
	movq	allocno(%rip), %rax	# allocno, allocno.145
	movl	-28(%rbp), %edx	# v2, tmp123
	movslq	%edx, %rdx	# tmp123, D.14277
	salq	$6, %rdx	#, D.14277
	addq	%rdx, %rax	# D.14277, D.14278
	movl	4(%rax), %edx	# _35->size, D.14276
	movl	%edx, %eax	# D.14276, tmp124
	sall	$2, %eax	#, tmp124
	addl	%edx, %eax	# D.14276, tmp124
	addl	%eax, %eax	# tmp125
	movl	%eax, %ebx	# tmp124, D.14276
	.loc 1 625 0
	movq	allocno(%rip), %rax	# allocno, allocno.146
	movl	-28(%rbp), %edx	# v2, tmp126
	movslq	%edx, %rdx	# tmp126, D.14277
	salq	$6, %rdx	#, D.14277
	addq	%rdx, %rax	# D.14277, D.14278
	movl	12(%rax), %eax	# _41->n_refs, D.14276
	cltq
	movq	%rax, %rdi	# D.14277,
	call	floor_log2_wide	#
	movq	allocno(%rip), %rdx	# allocno, allocno.147
	movl	-28(%rbp), %ecx	# v2, tmp127
	movslq	%ecx, %rcx	# tmp127, D.14277
	salq	$6, %rcx	#, D.14277
	addq	%rcx, %rdx	# D.14277, D.14278
	movl	16(%rdx), %edx	# _48->freq, D.14276
	imull	%edx, %eax	# D.14276, D.14276
	.loc 1 624 0
	imull	%ebx, %eax	# D.14276, D.14276
	.loc 1 626 0
	movq	allocno(%rip), %rdx	# allocno, allocno.148
	movl	-28(%rbp), %ecx	# v2, tmp128
	movslq	%ecx, %rcx	# tmp128, D.14277
	salq	$6, %rcx	#, D.14277
	addq	%rcx, %rdx	# D.14277, D.14278
	movl	20(%rdx), %esi	# _55->live_length, D.14276
	.loc 1 623 0
	cltd
	idivl	%esi	# D.14276
	movl	%eax, -20(%rbp)	# tmp129, pri2
	.loc 1 637 0
	movl	-20(%rbp), %eax	# pri2, tmp131
	cmpl	-24(%rbp), %eax	# pri1, tmp131
	je	.L84	#,
	.loc 1 638 0
	movl	-24(%rbp), %eax	# pri1, tmp132
	movl	-20(%rbp), %edx	# pri2, tmp133
	subl	%eax, %edx	# tmp132, D.14276
	movl	%edx, %eax	# D.14276, D.14276
	jmp	.L85	#
.L84:
	.loc 1 642 0
	movl	-28(%rbp), %eax	# v2, tmp134
	movl	-32(%rbp), %edx	# v1, tmp135
	subl	%eax, %edx	# tmp134, D.14276
	movl	%edx, %eax	# D.14276, D.14276
.L85:
	.loc 1 643 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	allocno_compare, .-allocno_compare
	.type	global_conflicts, @function
global_conflicts:
.LFB4:
	.loc 1 650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	.loc 1 656 0
	movl	max_parallel(%rip), %eax	# max_parallel, max_parallel.149
	cltq
	salq	$4, %rax	#, D.14279
	movq	%rax, %rdi	# D.14279,
	call	xmalloc	#
	movq	%rax, regs_set(%rip)	# regs_set.150, regs_set
	.loc 1 658 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.151
	cltq
	salq	$2, %rax	#, D.14279
	movq	%rax, %rdi	# D.14279,
	call	xmalloc	#
	movq	%rax, -48(%rbp)	# tmp162, block_start_allocnos
	.loc 1 660 0
	movl	$0, -128(%rbp)	#, b
	jmp	.L87	#
.L126:
	.loc 1 662 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.152
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14279
	movq	allocnos_live(%rip), %rax	# allocnos_live, allocnos_live.153
	movl	$0, %esi	#,
	movq	%rax, %rdi	# allocnos_live.153,
	call	memset	#
.LBB5:
	.loc 1 679 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.154
	movl	-128(%rbp), %edx	# b, tmp164
	movslq	%edx, %rdx	# tmp164, tmp163
	addq	$4, %rdx	#, tmp165
	movq	(%rax,%rdx,8), %rax	# basic_block_info.154_41->data.bb, D.14280
	movq	64(%rax), %rax	# _42->global_live_at_start, tmp166
	movq	%rax, -40(%rbp)	# tmp166, old
	.loc 1 680 0
	movl	$0, -124(%rbp)	#, ax
	.loc 1 682 0
	movq	$0, hard_regs_live(%rip)	#, hard_regs_live
	movq	-40(%rbp), %rax	# old, tmp167
	movq	%rax, %rsi	# tmp167,
	movl	$hard_regs_live, %edi	#,
	call	reg_set_to_hard_reg_set	#
.LBB6:
	.loc 1 683 0
	movq	-40(%rbp), %rax	# old, tmp168
	movq	(%rax), %rax	# old_43->first, tmp169
	movq	%rax, -80(%rbp)	# tmp169, ptr_
	movl	$0, -104(%rbp)	#, indx_
	movl	$53, -120(%rbp)	#, bit_num_
	movl	$0, -116(%rbp)	#, word_num_
	jmp	.L88	#
.L90:
	.loc 1 683 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp170
	movq	(%rax), %rax	# ptr__10->next, tmp171
	movq	%rax, -80(%rbp)	# tmp171, ptr_
.L88:
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L89	#,
	.loc 1 683 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp172
	movl	16(%rax), %eax	# ptr__10->indx, D.14281
	cmpl	-104(%rbp), %eax	# indx_, D.14281
	jb	.L90	#,
.L89:
	.loc 1 683 0 discriminator 3
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L91	#,
	.loc 1 683 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp173
	movl	16(%rax), %eax	# ptr__10->indx, D.14281
	cmpl	-104(%rbp), %eax	# indx_, D.14281
	je	.L91	#,
	movl	$0, -120(%rbp)	#, bit_num_
	movl	$0, -116(%rbp)	#, word_num_
	jmp	.L92	#
.L91:
	.loc 1 683 0 discriminator 2
	jmp	.L92	#
.L101:
	.loc 1 683 0
	jmp	.L93	#
.L100:
.LBB7:
	.loc 1 683 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp174
	movl	-116(%rbp), %edx	# word_num_, tmp175
	addq	$2, %rdx	#, tmp176
	movq	8(%rax,%rdx,8), %rax	# ptr__11->bits, tmp177
	movq	%rax, -72(%rbp)	# tmp177, word_
	cmpq	$0, -72(%rbp)	#, word_
	je	.L94	#,
	.loc 1 683 0 discriminator 1
	jmp	.L95	#
.L99:
.LBB8:
	.loc 1 683 0 discriminator 2
	movl	-120(%rbp), %eax	# bit_num_, bit_num_.155
	movl	$1, %edx	#, tmp178
	movl	%eax, %ecx	# bit_num_.155, tmp255
	salq	%cl, %rdx	# tmp255, tmp179
	movq	%rdx, %rax	# tmp179, tmp179
	movq	%rax, -32(%rbp)	# tmp179, mask_
	movq	-32(%rbp), %rax	# mask_, tmp180
	movq	-72(%rbp), %rdx	# word_, tmp181
	andq	%rdx, %rax	# tmp181, D.14279
	testq	%rax, %rax	# D.14279
	je	.L96	#,
	.loc 1 683 0 discriminator 1
	movq	-32(%rbp), %rax	# mask_, tmp182
	notq	%rax	# D.14279
	andq	%rax, -72(%rbp)	# D.14279, word_
	movq	-80(%rbp), %rax	# ptr_, tmp183
	movl	16(%rax), %eax	# ptr__11->indx, D.14281
	leal	(%rax,%rax), %edx	#, D.14281
	movl	-116(%rbp), %eax	# word_num_, tmp184
	addl	%edx, %eax	# D.14281, D.14281
	sall	$6, %eax	#, D.14281
	movl	%eax, %edx	# D.14281, D.14281
	movl	-120(%rbp), %eax	# bit_num_, tmp185
	addl	%edx, %eax	# D.14281, D.14281
	movl	%eax, -100(%rbp)	# D.14281, i
.LBB9:
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.156
	movl	-100(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.14279
	salq	$2, %rdx	#, D.14279
	addq	%rdx, %rax	# D.14279, D.14282
	movl	(%rax), %eax	# *_69, tmp187
	movl	%eax, -96(%rbp)	# tmp187, a
	cmpl	$0, -96(%rbp)	#, a
	js	.L97	#,
	movq	allocnos_live(%rip), %rdx	# allocnos_live, allocnos_live.157
	movl	-96(%rbp), %eax	# a, a.158
	shrl	$6, %eax	#, D.14281
	movl	%eax, %ecx	# D.14281, D.14279
	salq	$3, %rcx	#, D.14279
	addq	%rcx, %rdx	# D.14279, D.14283
	movq	allocnos_live(%rip), %rcx	# allocnos_live, allocnos_live.159
	movl	%eax, %eax	# D.14281, D.14279
	salq	$3, %rax	#, D.14279
	addq	%rcx, %rax	# allocnos_live.159, D.14283
	movq	(%rax), %rax	# *_80, D.14284
	movl	-96(%rbp), %ecx	# a, tmp188
	andl	$63, %ecx	#, D.14285
	movl	$1, %esi	#, tmp189
	salq	%cl, %rsi	# D.14285, D.14284
	movq	%rsi, %rcx	# D.14284, D.14284
	orq	%rcx, %rax	# D.14284, D.14284
	movq	%rax, (%rdx)	# D.14284, *_76
	movl	-124(%rbp), %eax	# ax, ax.160
	leal	1(%rax), %edx	#, tmp190
	movl	%edx, -124(%rbp)	# tmp190, ax
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14279
	movq	-48(%rbp), %rax	# block_start_allocnos, tmp191
	addq	%rax, %rdx	# tmp191, D.14282
	movl	-96(%rbp), %eax	# a, tmp192
	movl	%eax, (%rdx)	# tmp192, *_89
	jmp	.L98	#
.L97:
	.loc 1 683 0 discriminator 2
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.161
	movl	-100(%rbp), %edx	# i, tmp193
	movslq	%edx, %rdx	# tmp193, D.14279
	addq	%rdx, %rdx	# D.14279
	addq	%rdx, %rax	# D.14279, D.14286
	movzwl	(%rax), %eax	# *_93, D.14287
	cwtl
	movl	%eax, -96(%rbp)	# tmp194, a
	cmpl	$0, -96(%rbp)	#, a
	js	.L98	#,
	.loc 1 683 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.162
	movq	24(%rax), %rax	# cfun.162_96->emit, D.14288
	movq	80(%rax), %rax	# _97->x_regno_reg_rtx, D.14289
	movl	-100(%rbp), %edx	# i, tmp195
	movslq	%edx, %rdx	# tmp195, D.14279
	salq	$3, %rdx	#, D.14279
	addq	%rdx, %rax	# D.14279, D.14289
	movq	(%rax), %rax	# *_101, D.14290
	movzbl	2(%rax), %eax	# _102->mode, D.14291
	movzbl	%al, %edx	# D.14291, D.14292
	movl	-96(%rbp), %eax	# a, tmp196
	movl	%edx, %esi	# D.14292,
	movl	%eax, %edi	# tmp196,
	call	mark_reg_live_nc	#
.L98:
.LBE9:
	.loc 1 683 0 discriminator 2
	cmpq	$0, -72(%rbp)	#, word_
	jne	.L96	#,
	.loc 1 683 0 discriminator 1
	jmp	.L94	#
.L96:
.LBE8:
	.loc 1 683 0 discriminator 2
	addl	$1, -120(%rbp)	#, bit_num_
.L95:
	.loc 1 683 0 discriminator 1
	cmpl	$63, -120(%rbp)	#, bit_num_
	jbe	.L99	#,
.L94:
	.loc 1 683 0 discriminator 2
	movl	$0, -120(%rbp)	#, bit_num_
.LBE7:
	addl	$1, -116(%rbp)	#, word_num_
.L93:
	.loc 1 683 0 discriminator 1
	cmpl	$1, -116(%rbp)	#, word_num_
	jbe	.L100	#,
	.loc 1 683 0 discriminator 3
	movl	$0, -116(%rbp)	#, word_num_
	movq	-80(%rbp), %rax	# ptr_, tmp197
	movq	(%rax), %rax	# ptr__11->next, tmp198
	movq	%rax, -80(%rbp)	# tmp198, ptr_
.L92:
	.loc 1 683 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, ptr_
	jne	.L101	#,
.LBE6:
	.loc 1 720 0 is_stmt 1
	movl	-124(%rbp), %edx	# ax, tmp199
	movq	-48(%rbp), %rax	# block_start_allocnos, tmp200
	movl	%edx, %esi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	record_conflicts	#
.LBB10:
	.loc 1 728 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.163
	movl	-128(%rbp), %edx	# b, tmp202
	movslq	%edx, %rdx	# tmp202, tmp201
	addq	$4, %rdx	#, tmp203
	movq	(%rax,%rdx,8), %rax	# basic_block_info.163_110->data.bb, D.14280
	movq	32(%rax), %rax	# _111->pred, tmp204
	movq	%rax, -64(%rbp)	# tmp204, e
	jmp	.L102	#
.L105:
	.loc 1 729 0
	movq	-64(%rbp), %rax	# e, tmp205
	movl	48(%rax), %eax	# e_21->flags, D.14285
	andl	$2, %eax	#, D.14285
	testl	%eax, %eax	# D.14285
	je	.L103	#,
	.loc 1 730 0
	jmp	.L104	#
.L103:
	.loc 1 728 0
	movq	-64(%rbp), %rax	# e, tmp206
	movq	(%rax), %rax	# e_21->pred_next, tmp207
	movq	%rax, -64(%rbp)	# tmp207, e
.L102:
	.loc 1 728 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L105	#,
.L104:
	.loc 1 731 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, e
	je	.L106	#,
	.loc 1 732 0
	movl	$8, -124(%rbp)	#, ax
	jmp	.L107	#
.L108:
	.loc 1 733 0 discriminator 2
	movl	-124(%rbp), %eax	# ax, tmp208
	movl	%eax, %edi	# tmp208,
	call	record_one_conflict	#
	.loc 1 732 0 discriminator 2
	addl	$1, -124(%rbp)	#, ax
.L107:
	.loc 1 732 0 is_stmt 0 discriminator 1
	cmpl	$15, -124(%rbp)	#, ax
	jle	.L108	#,
.L106:
.LBE10:
.LBE5:
	.loc 1 738 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.164
	movl	-128(%rbp), %edx	# b, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	addq	$4, %rdx	#, tmp211
	movq	(%rax,%rdx,8), %rax	# basic_block_info.164_118->data.bb, D.14280
	movq	(%rax), %rax	# _119->head, tmp212
	movq	%rax, -88(%rbp)	# tmp212, insn
.L125:
.LBB11:
	.loc 1 746 0
	movq	-88(%rbp), %rax	# insn, tmp213
	movzwl	(%rax), %eax	# insn_2->code, D.14293
	movzwl	%ax, %eax	# D.14293, tmp214
	movl	%eax, -92(%rbp)	# tmp214, code
	.loc 1 751 0
	movl	$0, n_regs_set(%rip)	#, n_regs_set
	.loc 1 753 0
	cmpl	$32, -92(%rbp)	#, code
	je	.L109	#,
	.loc 1 753 0 is_stmt 0 discriminator 1
	cmpl	$34, -92(%rbp)	#, code
	je	.L109	#,
	cmpl	$33, -92(%rbp)	#, code
	jne	.L110	#,
.L109:
	.loc 1 774 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp215
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14290
	movl	$0, %edx	#,
	movl	$mark_reg_clobber, %esi	#,
	movq	%rax, %rdi	# D.14290,
	call	note_stores	#
	.loc 1 778 0
	movq	-88(%rbp), %rax	# insn, tmp216
	movq	56(%rax), %rax	# insn_2->fld[6].rtx, tmp217
	movq	%rax, -56(%rbp)	# tmp217, link
	jmp	.L111	#
.L113:
	.loc 1 779 0
	movq	-56(%rbp), %rax	# link, tmp218
	movzbl	2(%rax), %eax	# link_22->mode, D.14291
	cmpb	$1, %al	#, D.14291
	jne	.L112	#,
	.loc 1 780 0
	movq	-56(%rbp), %rax	# link, tmp219
	movq	8(%rax), %rax	# link_22->fld[0].rtx, D.14290
	movq	%rax, %rdi	# D.14290,
	call	mark_reg_death	#
.L112:
	.loc 1 778 0
	movq	-56(%rbp), %rax	# link, tmp220
	movq	16(%rax), %rax	# link_22->fld[1].rtx, tmp221
	movq	%rax, -56(%rbp)	# tmp221, link
.L111:
	.loc 1 778 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L113	#,
	.loc 1 787 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp222
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14290
	movl	$0, %edx	#,
	movl	$mark_reg_store, %esi	#,
	movq	%rax, %rdi	# D.14290,
	call	note_stores	#
	.loc 1 806 0
	movq	-88(%rbp), %rax	# insn, tmp223
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14290
	movzwl	(%rax), %eax	# _129->code, D.14293
	cmpw	$39, %ax	#, D.14293
	jne	.L114	#,
	.loc 1 806 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp224
	movq	%rax, %rdi	# tmp224,
	call	multiple_sets	#
	testl	%eax, %eax	# D.14285
	je	.L114	#,
	.loc 1 807 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp225
	movq	56(%rax), %rax	# insn_2->fld[6].rtx, tmp226
	movq	%rax, -56(%rbp)	# tmp226, link
	jmp	.L115	#
.L120:
	.loc 1 808 0
	movq	-56(%rbp), %rax	# link, tmp227
	movzbl	2(%rax), %eax	# link_23->mode, D.14291
	cmpb	$1, %al	#, D.14291
	jne	.L116	#,
.LBB12:
	.loc 1 810 0
	movl	$0, -112(%rbp)	#, used_in_output
	.loc 1 812 0
	movq	-56(%rbp), %rax	# link, tmp228
	movq	8(%rax), %rax	# link_23->fld[0].rtx, tmp229
	movq	%rax, -24(%rbp)	# tmp229, reg
	.loc 1 814 0
	movq	-88(%rbp), %rax	# insn, tmp230
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14290
	movq	8(%rax), %rax	# _136->fld[0].rtvec, D.14294
	movl	(%rax), %eax	# _137->num_elem, D.14285
	subl	$1, %eax	#, tmp231
	movl	%eax, -108(%rbp)	# tmp231, i
	jmp	.L117	#
.L119:
.LBB13:
	.loc 1 816 0
	movq	-88(%rbp), %rax	# insn, tmp232
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.14290
	movq	8(%rax), %rax	# _140->fld[0].rtvec, D.14294
	movl	-108(%rbp), %edx	# i, tmp234
	movslq	%edx, %rdx	# tmp234, tmp233
	movq	8(%rax,%rdx,8), %rax	# _141->elem, tmp235
	movq	%rax, -16(%rbp)	# tmp235, set
	.loc 1 817 0
	movq	-16(%rbp), %rax	# set, tmp236
	movzwl	(%rax), %eax	# set_142->code, D.14293
	cmpw	$47, %ax	#, D.14293
	jne	.L118	#,
	.loc 1 818 0
	movq	-16(%rbp), %rax	# set, tmp237
	movq	8(%rax), %rax	# set_142->fld[0].rtx, D.14290
	movzwl	(%rax), %eax	# _144->code, D.14293
	cmpw	$61, %ax	#, D.14293
	je	.L118	#,
	.loc 1 819 0
	movq	-16(%rbp), %rax	# set, tmp238
	movq	8(%rax), %rdx	# set_142->fld[0].rtx, D.14290
	movq	-24(%rbp), %rax	# reg, tmp239
	movq	%rdx, %rsi	# D.14290,
	movq	%rax, %rdi	# tmp239,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14285
	jne	.L118	#,
	.loc 1 820 0
	movq	-16(%rbp), %rax	# set, tmp240
	movq	8(%rax), %rdx	# set_142->fld[0].rtx, D.14290
	movq	-24(%rbp), %rax	# reg, tmp241
	movq	%rdx, %rsi	# D.14290,
	movq	%rax, %rdi	# tmp241,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.14285
	je	.L118	#,
	.loc 1 821 0
	movl	$1, -112(%rbp)	#, used_in_output
.L118:
.LBE13:
	.loc 1 814 0
	subl	$1, -108(%rbp)	#, i
.L117:
	.loc 1 814 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, i
	jns	.L119	#,
	.loc 1 823 0 is_stmt 1
	cmpl	$0, -112(%rbp)	#, used_in_output
	je	.L116	#,
	.loc 1 824 0
	movq	-24(%rbp), %rax	# reg, tmp242
	movq	%rax, %rdi	# tmp242,
	call	mark_reg_conflicts	#
.L116:
.LBE12:
	.loc 1 807 0
	movq	-56(%rbp), %rax	# link, tmp243
	movq	16(%rax), %rax	# link_23->fld[1].rtx, tmp244
	movq	%rax, -56(%rbp)	# tmp244, link
.L115:
	.loc 1 807 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L120	#,
.L114:
	.loc 1 829 0 is_stmt 1
	jmp	.L121	#
.L122:
.LBB14:
	.loc 1 832 0
	movq	regs_set(%rip), %rax	# regs_set, regs_set.165
	movl	n_regs_set(%rip), %edx	# n_regs_set, n_regs_set.166
	movslq	%edx, %rdx	# n_regs_set.166, D.14279
	salq	$3, %rdx	#, D.14279
	addq	%rdx, %rax	# D.14279, D.14289
	movq	(%rax), %rax	# *_160, D.14290
	.loc 1 831 0
	movl	8(%rax), %edx	# _161->fld[0].rtuint, D.14281
	movq	-88(%rbp), %rax	# insn, tmp245
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	find_regno_note	#
	movq	%rax, -8(%rbp)	# tmp246, note
	.loc 1 833 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L121	#,
	.loc 1 834 0
	movq	-8(%rbp), %rax	# note, tmp247
	movq	8(%rax), %rax	# note_163->fld[0].rtx, D.14290
	movq	%rax, %rdi	# D.14290,
	call	mark_reg_death	#
.L121:
.LBE14:
	.loc 1 829 0 discriminator 1
	movl	n_regs_set(%rip), %eax	# n_regs_set, n_regs_set.167
	leal	-1(%rax), %edx	#, n_regs_set.169
	movl	%edx, n_regs_set(%rip)	# n_regs_set.169, n_regs_set
	testl	%eax, %eax	# n_regs_set.168
	jg	.L122	#,
.L110:
	.loc 1 838 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.170
	movl	-128(%rbp), %edx	# b, tmp249
	movslq	%edx, %rdx	# tmp249, tmp248
	addq	$4, %rdx	#, tmp250
	movq	(%rax,%rdx,8), %rax	# basic_block_info.170_165->data.bb, D.14280
	movq	8(%rax), %rax	# _166->end, D.14290
	cmpq	-88(%rbp), %rax	# insn, D.14290
	jne	.L123	#,
	.loc 1 839 0
	nop
.LBE11:
	.loc 1 660 0
	addl	$1, -128(%rbp)	#, b
	jmp	.L87	#
.L123:
.LBB15:
	.loc 1 840 0
	movq	-88(%rbp), %rax	# insn, tmp251
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp252
	movq	%rax, -88(%rbp)	# tmp252, insn
.LBE15:
	.loc 1 841 0
	jmp	.L125	#
.L87:
	.loc 1 660 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.171
	cmpl	%eax, -128(%rbp)	# n_basic_blocks.171, b
	jl	.L126	#,
	.loc 1 845 0
	movq	-48(%rbp), %rax	# block_start_allocnos, tmp253
	movq	%rax, %rdi	# tmp253,
	call	free	#
	.loc 1 846 0
	movq	regs_set(%rip), %rax	# regs_set, regs_set.172
	movq	%rax, %rdi	# regs_set.172,
	call	free	#
	.loc 1 847 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	global_conflicts, .-global_conflicts
	.type	expand_preferences, @function
expand_preferences:
.LFB5:
	.loc 1 854 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 862 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp228, insn
	jmp	.L128	#
.L138:
	.loc 1 863 0
	movq	-24(%rbp), %rax	# insn, tmp229
	movzwl	(%rax), %eax	# insn_1->code, D.14295
	movzwl	%ax, %eax	# D.14295, D.14296
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14297
	cmpb	$105, %al	#, D.14297
	jne	.L129	#,
	.loc 1 864 0
	movq	-24(%rbp), %rax	# insn, tmp231
	movzwl	(%rax), %eax	# insn_1->code, D.14295
	movzwl	%ax, %eax	# D.14295, D.14296
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14297
	cmpb	$105, %al	#, D.14297
	jne	.L130	#,
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp233
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.14298
	movzwl	(%rax), %eax	# _12->code, D.14295
	cmpw	$47, %ax	#, D.14295
	jne	.L131	#,
	.loc 1 864 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp234
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, iftmp.174
	jmp	.L133	#
.L131:
	.loc 1 864 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp235
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.14298
	movq	-24(%rbp), %rax	# insn, tmp236
	movq	%rdx, %rsi	# D.14298,
	movq	%rax, %rdi	# tmp236,
	call	single_set_2	#
	jmp	.L133	#
.L130:
	.loc 1 864 0 discriminator 2
	movl	$0, %eax	#, iftmp.173
.L133:
	.loc 1 864 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.173, set
	cmpq	$0, -8(%rbp)	#, set
	je	.L129	#,
	.loc 1 865 0 is_stmt 1
	movq	-8(%rbp), %rax	# set, tmp237
	movq	8(%rax), %rax	# set_19->fld[0].rtx, D.14298
	movzwl	(%rax), %eax	# _20->code, D.14295
	cmpw	$61, %ax	#, D.14295
	jne	.L129	#,
	.loc 1 866 0
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.175
	movq	-8(%rbp), %rax	# set, tmp238
	movq	8(%rax), %rax	# set_19->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _23->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rdx, %rax	# reg_allocno.175, D.14301
	movl	(%rax), %eax	# *_27, D.14296
	testl	%eax, %eax	# D.14296
	js	.L129	#,
	.loc 1 867 0
	movq	-24(%rbp), %rax	# insn, tmp239
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp240
	movq	%rax, -16(%rbp)	# tmp240, link
	jmp	.L134	#
.L137:
	.loc 1 868 0
	movq	-16(%rbp), %rax	# link, tmp241
	movzbl	2(%rax), %eax	# link_2->mode, D.14302
	cmpb	$1, %al	#, D.14302
	jne	.L135	#,
	.loc 1 869 0
	movq	-16(%rbp), %rax	# link, tmp242
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.14298
	movzwl	(%rax), %eax	# _31->code, D.14295
	cmpw	$61, %ax	#, D.14295
	jne	.L135	#,
	.loc 1 870 0
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.176
	movq	-16(%rbp), %rax	# link, tmp243
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _34->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rdx, %rax	# reg_allocno.176, D.14301
	movl	(%rax), %eax	# *_38, D.14296
	testl	%eax, %eax	# D.14296
	js	.L135	#,
	.loc 1 871 0
	movq	conflicts(%rip), %rdx	# conflicts, conflicts.177
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.178
	movq	-8(%rbp), %rax	# set, tmp244
	movq	8(%rax), %rax	# set_19->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _42->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rcx, %rax	# reg_allocno.178, D.14301
	movl	(%rax), %ecx	# *_46, D.14296
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.179
	imull	%ecx, %eax	# D.14296, D.14296
	movl	%eax, %ecx	# D.14296, D.14299
	movq	reg_allocno(%rip), %rsi	# reg_allocno, reg_allocno.180
	movq	-16(%rbp), %rax	# link, tmp245
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _52->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rsi, %rax	# reg_allocno.180, D.14301
	movl	(%rax), %eax	# *_56, D.14296
	shrl	$6, %eax	#, D.14299
	addl	%ecx, %eax	# D.14299, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$3, %rax	#, D.14300
	addq	%rdx, %rax	# conflicts.177, D.14303
	movq	(%rax), %rdx	# *_63, D.14304
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.181
	movq	-16(%rbp), %rax	# link, tmp246
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _66->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rcx, %rax	# reg_allocno.181, D.14301
	movl	(%rax), %eax	# *_70, D.14296
	andl	$63, %eax	#, D.14296
	movl	%eax, %ecx	# D.14296, tmp276
	sarq	%cl, %rdx	# tmp276, D.14304
	movq	%rdx, %rax	# D.14304, D.14304
	andl	$1, %eax	#, D.14304
	testq	%rax, %rax	# D.14304
	jne	.L135	#,
.LBB16:
	.loc 1 874 0
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.182
	movq	-8(%rbp), %rax	# set, tmp247
	movq	8(%rax), %rax	# set_19->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _76->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rdx, %rax	# reg_allocno.182, D.14301
	movl	(%rax), %eax	# *_80, tmp248
	movl	%eax, -32(%rbp)	# tmp248, a1
	.loc 1 875 0
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.183
	movq	-16(%rbp), %rax	# link, tmp249
	movq	8(%rax), %rax	# link_2->fld[0].rtx, D.14298
	movl	8(%rax), %eax	# _83->fld[0].rtuint, D.14299
	movl	%eax, %eax	# D.14299, D.14300
	salq	$2, %rax	#, D.14300
	addq	%rdx, %rax	# reg_allocno.183, D.14301
	movl	(%rax), %eax	# *_87, tmp250
	movl	%eax, -28(%rbp)	# tmp250, a2
	.loc 1 877 0
	movq	-16(%rbp), %rax	# link, tmp251
	movq	8(%rax), %rdx	# link_2->fld[0].rtx, D.14298
	movq	-8(%rbp), %rax	# set, tmp252
	movq	16(%rax), %rax	# set_19->fld[1].rtx, D.14298
	cmpq	%rax, %rdx	# D.14298, D.14298
	jne	.L136	#,
	.loc 1 879 0
	movq	allocno(%rip), %rax	# allocno, allocno.184
	movl	-32(%rbp), %edx	# a1, tmp253
	movslq	%edx, %rdx	# tmp253, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.185
	movl	-32(%rbp), %ecx	# a1, tmp254
	movslq	%ecx, %rcx	# tmp254, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	40(%rdx), %rcx	# _98->hard_reg_copy_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.186
	movl	-28(%rbp), %esi	# a2, tmp255
	movslq	%esi, %rsi	# tmp255, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	40(%rdx), %rdx	# _103->hard_reg_copy_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 40(%rax)	# D.14300, _94->hard_reg_copy_preferences
	.loc 1 881 0
	movq	allocno(%rip), %rax	# allocno, allocno.187
	movl	-28(%rbp), %edx	# a2, tmp256
	movslq	%edx, %rdx	# tmp256, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.188
	movl	-28(%rbp), %ecx	# a2, tmp257
	movslq	%ecx, %rcx	# tmp257, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	40(%rdx), %rcx	# _113->hard_reg_copy_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.189
	movl	-32(%rbp), %esi	# a1, tmp258
	movslq	%esi, %rsi	# tmp258, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	40(%rdx), %rdx	# _118->hard_reg_copy_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 40(%rax)	# D.14300, _109->hard_reg_copy_preferences
.L136:
	.loc 1 885 0
	movq	allocno(%rip), %rax	# allocno, allocno.190
	movl	-32(%rbp), %edx	# a1, tmp259
	movslq	%edx, %rdx	# tmp259, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.191
	movl	-32(%rbp), %ecx	# a1, tmp260
	movslq	%ecx, %rcx	# tmp260, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	32(%rdx), %rcx	# _128->hard_reg_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.192
	movl	-28(%rbp), %esi	# a2, tmp261
	movslq	%esi, %rsi	# tmp261, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	32(%rdx), %rdx	# _133->hard_reg_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 32(%rax)	# D.14300, _124->hard_reg_preferences
	.loc 1 887 0
	movq	allocno(%rip), %rax	# allocno, allocno.193
	movl	-28(%rbp), %edx	# a2, tmp262
	movslq	%edx, %rdx	# tmp262, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.194
	movl	-28(%rbp), %ecx	# a2, tmp263
	movslq	%ecx, %rcx	# tmp263, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	32(%rdx), %rcx	# _143->hard_reg_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.195
	movl	-32(%rbp), %esi	# a1, tmp264
	movslq	%esi, %rsi	# tmp264, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	32(%rdx), %rdx	# _148->hard_reg_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 32(%rax)	# D.14300, _139->hard_reg_preferences
	.loc 1 889 0
	movq	allocno(%rip), %rax	# allocno, allocno.196
	movl	-32(%rbp), %edx	# a1, tmp265
	movslq	%edx, %rdx	# tmp265, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.197
	movl	-32(%rbp), %ecx	# a1, tmp266
	movslq	%ecx, %rcx	# tmp266, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	48(%rdx), %rcx	# _158->hard_reg_full_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.198
	movl	-28(%rbp), %esi	# a2, tmp267
	movslq	%esi, %rsi	# tmp267, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	48(%rdx), %rdx	# _163->hard_reg_full_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 48(%rax)	# D.14300, _154->hard_reg_full_preferences
	.loc 1 891 0
	movq	allocno(%rip), %rax	# allocno, allocno.199
	movl	-28(%rbp), %edx	# a2, tmp268
	movslq	%edx, %rdx	# tmp268, D.14300
	salq	$6, %rdx	#, D.14300
	addq	%rdx, %rax	# D.14300, D.14305
	movq	allocno(%rip), %rdx	# allocno, allocno.200
	movl	-28(%rbp), %ecx	# a2, tmp269
	movslq	%ecx, %rcx	# tmp269, D.14300
	salq	$6, %rcx	#, D.14300
	addq	%rcx, %rdx	# D.14300, D.14305
	movq	48(%rdx), %rcx	# _173->hard_reg_full_preferences, D.14300
	movq	allocno(%rip), %rdx	# allocno, allocno.201
	movl	-32(%rbp), %esi	# a1, tmp270
	movslq	%esi, %rsi	# tmp270, D.14300
	salq	$6, %rsi	#, D.14300
	addq	%rsi, %rdx	# D.14300, D.14305
	movq	48(%rdx), %rdx	# _178->hard_reg_full_preferences, D.14300
	orq	%rcx, %rdx	# D.14300, D.14300
	movq	%rdx, 48(%rax)	# D.14300, _169->hard_reg_full_preferences
.L135:
.LBE16:
	.loc 1 867 0
	movq	-16(%rbp), %rax	# link, tmp271
	movq	16(%rax), %rax	# link_2->fld[1].rtx, tmp272
	movq	%rax, -16(%rbp)	# tmp272, link
.L134:
	.loc 1 867 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L137	#,
.L129:
	.loc 1 862 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp273
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp274
	movq	%rax, -24(%rbp)	# tmp274, insn
.L128:
	.loc 1 862 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L138	#,
	.loc 1 894 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	expand_preferences, .-expand_preferences
	.type	prune_preferences, @function
prune_preferences:
.LFB6:
	.loc 1 905 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 908 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.202
	cltq
	salq	$2, %rax	#, D.14306
	movq	%rax, %rdi	# D.14306,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp171, allocno_to_order
	.loc 1 915 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.203
	subl	$1, %eax	#, tmp172
	movl	%eax, -68(%rbp)	# tmp172, i
	jmp	.L140	#
.L143:
.LBB17:
	.loc 1 919 0
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.204
	movl	-68(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, D.14306
	salq	$2, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14307
	movl	(%rax), %eax	# *_24, tmp174
	movl	%eax, -52(%rbp)	# tmp174, num
	.loc 1 920 0
	movl	-52(%rbp), %eax	# num, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14306
	movq	-8(%rbp), %rax	# allocno_to_order, tmp176
	addq	%rax, %rdx	# tmp176, D.14307
	movl	-68(%rbp), %eax	# i, tmp177
	movl	%eax, (%rdx)	# tmp177, *_28
	.loc 1 921 0
	movq	allocno(%rip), %rax	# allocno, allocno.205
	movl	-52(%rbp), %edx	# num, tmp178
	movslq	%edx, %rdx	# tmp178, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	24(%rax), %rax	# _32->hard_reg_conflicts, tmp179
	movq	%rax, -48(%rbp)	# tmp179, temp
	.loc 1 923 0
	movq	allocno(%rip), %rax	# allocno, allocno.206
	movl	-52(%rbp), %edx	# num, tmp180
	movslq	%edx, %rdx	# tmp180, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movl	8(%rax), %eax	# _37->calls_crossed, D.14309
	testl	%eax, %eax	# D.14309
	jne	.L141	#,
	.loc 1 924 0
	movq	fixed_reg_set(%rip), %rax	# fixed_reg_set, fixed_reg_set.207
	orq	%rax, -48(%rbp)	# fixed_reg_set.207, temp
	jmp	.L142	#
.L141:
	.loc 1 926 0
	movq	call_used_reg_set(%rip), %rax	# call_used_reg_set, call_used_reg_set.208
	orq	%rax, -48(%rbp)	# call_used_reg_set.208, temp
.L142:
	.loc 1 928 0
	movq	allocno(%rip), %rax	# allocno, allocno.209
	movl	-52(%rbp), %edx	# num, tmp181
	movslq	%edx, %rdx	# tmp181, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movl	(%rax), %eax	# _46->reg, D.14309
	movl	%eax, %edi	# D.14309,
	call	reg_preferred_class	#
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.14306
	notq	%rax	# D.14306
	orq	%rax, -48(%rbp)	# D.14306, temp
	.loc 1 932 0
	movq	allocno(%rip), %rax	# allocno, allocno.210
	movl	-52(%rbp), %edx	# num, tmp183
	movslq	%edx, %rdx	# tmp183, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	allocno(%rip), %rdx	# allocno, allocno.211
	movl	-52(%rbp), %ecx	# num, tmp184
	movslq	%ecx, %rcx	# tmp184, D.14306
	salq	$6, %rcx	#, D.14306
	addq	%rcx, %rdx	# D.14306, D.14308
	movq	32(%rdx), %rdx	# _60->hard_reg_preferences, D.14306
	movq	-48(%rbp), %rcx	# temp, tmp185
	notq	%rcx	# D.14306
	andq	%rcx, %rdx	# D.14306, D.14306
	movq	%rdx, 32(%rax)	# D.14306, _56->hard_reg_preferences
	.loc 1 933 0
	movq	allocno(%rip), %rax	# allocno, allocno.212
	movl	-52(%rbp), %edx	# num, tmp186
	movslq	%edx, %rdx	# tmp186, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	allocno(%rip), %rdx	# allocno, allocno.213
	movl	-52(%rbp), %ecx	# num, tmp187
	movslq	%ecx, %rcx	# tmp187, D.14306
	salq	$6, %rcx	#, D.14306
	addq	%rcx, %rdx	# D.14306, D.14308
	movq	40(%rdx), %rdx	# _71->hard_reg_copy_preferences, D.14306
	movq	-48(%rbp), %rcx	# temp, tmp188
	notq	%rcx	# D.14306
	andq	%rcx, %rdx	# D.14306, D.14306
	movq	%rdx, 40(%rax)	# D.14306, _67->hard_reg_copy_preferences
	.loc 1 934 0
	movq	allocno(%rip), %rax	# allocno, allocno.214
	movl	-52(%rbp), %edx	# num, tmp189
	movslq	%edx, %rdx	# tmp189, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	allocno(%rip), %rdx	# allocno, allocno.215
	movl	-52(%rbp), %ecx	# num, tmp190
	movslq	%ecx, %rcx	# tmp190, D.14306
	salq	$6, %rcx	#, D.14306
	addq	%rcx, %rdx	# D.14306, D.14308
	movq	48(%rdx), %rdx	# _82->hard_reg_full_preferences, D.14306
	movq	-48(%rbp), %rcx	# temp, tmp191
	notq	%rcx	# D.14306
	andq	%rcx, %rdx	# D.14306, D.14306
	movq	%rdx, 48(%rax)	# D.14306, _78->hard_reg_full_preferences
.LBE17:
	.loc 1 915 0
	subl	$1, -68(%rbp)	#, i
.L140:
	.loc 1 915 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jns	.L143	#,
	.loc 1 937 0 is_stmt 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.216
	subl	$1, %eax	#, tmp192
	movl	%eax, -68(%rbp)	# tmp192, i
	jmp	.L144	#
.L151:
.LBB18:
	.loc 1 947 0
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.217
	movl	-68(%rbp), %edx	# i, tmp193
	movslq	%edx, %rdx	# tmp193, D.14306
	salq	$2, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14307
	movl	(%rax), %eax	# *_92, tmp194
	movl	%eax, -52(%rbp)	# tmp194, num
	.loc 1 949 0
	movq	$0, -40(%rbp)	#, temp
	.loc 1 950 0
	movq	$0, -32(%rbp)	#, temp2
.LBB19:
	.loc 1 952 0
	movq	conflicts(%rip), %rdx	# conflicts, conflicts.218
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.219
	imull	-52(%rbp), %eax	# num, D.14309
	cltq
	salq	$3, %rax	#, D.14306
	addq	%rdx, %rax	# conflicts.218, tmp195
	movq	%rax, -24(%rbp)	# tmp195, p_
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.220
	subl	$1, %eax	#, tmp196
	movl	%eax, -60(%rbp)	# tmp196, i_
	movl	$0, -56(%rbp)	#, allocno_
	jmp	.L145	#
.L150:
.LBB20:
	.loc 1 952 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# p_, p_.221
	leaq	8(%rax), %rdx	#, tmp197
	movq	%rdx, -24(%rbp)	# tmp197, p_
	movq	(%rax), %rax	# *p_.221_105, D.14311
	movq	%rax, -16(%rbp)	# D.14311, word_
	movl	-56(%rbp), %eax	# allocno_, tmp198
	movl	%eax, -64(%rbp)	# tmp198, allocno2
	jmp	.L146	#
.L149:
	movq	-16(%rbp), %rax	# word_, tmp199
	andl	$1, %eax	#, D.14306
	testq	%rax, %rax	# D.14306
	je	.L147	#,
	.loc 1 952 0 discriminator 1
	movl	-64(%rbp), %eax	# allocno2, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14306
	movq	-8(%rbp), %rax	# allocno_to_order, tmp201
	addq	%rdx, %rax	# D.14306, D.14307
	movl	(%rax), %eax	# *_113, D.14309
	cmpl	-68(%rbp), %eax	# i, D.14309
	jle	.L147	#,
	movq	allocno(%rip), %rax	# allocno, allocno.222
	movl	-64(%rbp), %edx	# allocno2, tmp202
	movslq	%edx, %rdx	# tmp202, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movl	4(%rax), %edx	# _118->size, D.14309
	movq	allocno(%rip), %rax	# allocno, allocno.223
	movl	-52(%rbp), %ecx	# num, tmp203
	movslq	%ecx, %rcx	# tmp203, D.14306
	salq	$6, %rcx	#, D.14306
	addq	%rcx, %rax	# D.14306, D.14308
	movl	4(%rax), %eax	# _123->size, D.14309
	cmpl	%eax, %edx	# D.14309, D.14309
	jg	.L148	#,
	movq	allocno(%rip), %rax	# allocno, allocno.224
	movl	-64(%rbp), %edx	# allocno2, tmp204
	movslq	%edx, %rdx	# tmp204, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	48(%rax), %rax	# _128->hard_reg_full_preferences, D.14306
	orq	%rax, -40(%rbp)	# D.14306, temp
	jmp	.L147	#
.L148:
	.loc 1 952 0 discriminator 2
	movq	allocno(%rip), %rax	# allocno, allocno.225
	movl	-64(%rbp), %edx	# allocno2, tmp205
	movslq	%edx, %rdx	# tmp205, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	48(%rax), %rax	# _134->hard_reg_full_preferences, D.14306
	orq	%rax, -32(%rbp)	# D.14306, temp2
.L147:
	shrq	-16(%rbp)	# word_
	addl	$1, -64(%rbp)	#, allocno2
.L146:
	.loc 1 952 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, word_
	jne	.L149	#,
.LBE20:
	.loc 1 952 0 discriminator 3
	subl	$1, -60(%rbp)	#, i_
	addl	$64, -56(%rbp)	#, allocno_
.L145:
	.loc 1 952 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i_
	jns	.L150	#,
.LBE19:
	.loc 1 966 0 is_stmt 1
	movq	allocno(%rip), %rax	# allocno, allocno.226
	movl	-52(%rbp), %edx	# num, tmp206
	movslq	%edx, %rdx	# tmp206, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rdx, %rax	# D.14306, D.14308
	movq	48(%rax), %rax	# _144->hard_reg_full_preferences, D.14306
	notq	%rax	# D.14306
	andq	%rax, -40(%rbp)	# D.14306, temp
	.loc 1 967 0
	movq	-32(%rbp), %rax	# temp2, tmp207
	orq	%rax, -40(%rbp)	# tmp207, temp
	.loc 1 968 0
	movq	allocno(%rip), %rax	# allocno, allocno.227
	movl	-52(%rbp), %edx	# num, tmp208
	movslq	%edx, %rdx	# tmp208, D.14306
	salq	$6, %rdx	#, D.14306
	addq	%rax, %rdx	# allocno.227, D.14308
	movq	-40(%rbp), %rax	# temp, tmp209
	movq	%rax, 56(%rdx)	# tmp209, _152->regs_someone_prefers
.LBE18:
	.loc 1 937 0
	subl	$1, -68(%rbp)	#, i
.L144:
	.loc 1 937 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jns	.L151	#,
	.loc 1 970 0 is_stmt 1
	movq	-8(%rbp), %rax	# allocno_to_order, tmp210
	movq	%rax, %rdi	# tmp210,
	call	free	#
	.loc 1 971 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	prune_preferences, .-prune_preferences
	.type	find_reg, @function
find_reg:
.LFB7:
	.loc 1 998 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -164(%rbp)	# num, num
	movq	%rsi, -176(%rbp)	# losers, losers
	movl	%edx, -168(%rbp)	# alt_regs_p, alt_regs_p
	movl	%ecx, -180(%rbp)	# accept_call_clobbered, accept_call_clobbered
	movl	%r8d, -184(%rbp)	# retrying, retrying
	.loc 1 1007 0
	cmpl	$0, -168(%rbp)	#, alt_regs_p
	je	.L153	#,
	.loc 1 1006 0
	movq	allocno(%rip), %rax	# allocno, allocno.229
	movl	-164(%rbp), %edx	# num, tmp501
	movslq	%edx, %rdx	# tmp501, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	(%rax), %eax	# _74->reg, D.14314
	.loc 1 1007 0
	movl	%eax, %edi	# D.14314,
	call	reg_alternate_class	#
	jmp	.L154	#
.L153:
	.loc 1 1007 0 is_stmt 0 discriminator 1
	movq	allocno(%rip), %rax	# allocno, allocno.230
	movl	-164(%rbp), %edx	# num, tmp502
	movslq	%edx, %rdx	# tmp502, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	(%rax), %eax	# _80->reg, D.14314
	movl	%eax, %edi	# D.14314,
	call	reg_preferred_class	#
.L154:
	.loc 1 1005 0 is_stmt 1
	movl	%eax, -120(%rbp)	# iftmp.228, class
	.loc 1 1008 0
	movq	cfun(%rip), %rax	# cfun, cfun.231
	movq	24(%rax), %rax	# cfun.231_84->emit, D.14315
	movq	80(%rax), %rax	# _85->x_regno_reg_rtx, D.14316
	movq	allocno(%rip), %rdx	# allocno, allocno.232
	movl	-164(%rbp), %ecx	# num, tmp503
	movslq	%ecx, %rcx	# tmp503, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movl	(%rdx), %edx	# _90->reg, D.14314
	movslq	%edx, %rdx	# D.14314, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_94, D.14317
	movzbl	2(%rax), %eax	# _95->mode, D.14318
	movzbl	%al, %eax	# D.14318, tmp504
	movl	%eax, -116(%rbp)	# tmp504, mode
	.loc 1 1010 0
	cmpl	$0, -180(%rbp)	#, accept_call_clobbered
	je	.L155	#,
	.loc 1 1011 0
	movq	call_fixed_reg_set(%rip), %rbx	# call_fixed_reg_set, used1
	jmp	.L156	#
.L155:
	.loc 1 1012 0
	movq	allocno(%rip), %rax	# allocno, allocno.233
	movl	-164(%rbp), %edx	# num, tmp505
	movslq	%edx, %rdx	# tmp505, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	8(%rax), %eax	# _103->calls_crossed, D.14314
	testl	%eax, %eax	# D.14314
	jne	.L157	#,
	.loc 1 1013 0
	movq	fixed_reg_set(%rip), %rbx	# fixed_reg_set, used1
	jmp	.L156	#
.L157:
	.loc 1 1015 0
	movq	call_used_reg_set(%rip), %rbx	# call_used_reg_set, used1
.L156:
	.loc 1 1018 0
	movq	no_global_alloc_regs(%rip), %rax	# no_global_alloc_regs, no_global_alloc_regs.234
	orq	%rax, %rbx	# no_global_alloc_regs.234, used1
	.loc 1 1019 0
	cmpq	$0, -176(%rbp)	#, losers
	je	.L158	#,
	.loc 1 1020 0
	orq	-176(%rbp), %rbx	# losers, used1
.L158:
	.loc 1 1022 0
	movl	-120(%rbp), %eax	# class, class.235
	cltq
	movq	reg_class_contents(,%rax,8), %rax	# reg_class_contents, D.14312
	notq	%rax	# D.14312
	orq	%rax, %rbx	# D.14312, used1
	.loc 1 1023 0
	movq	%rbx, %r13	# used1, used2
	.loc 1 1025 0
	movq	allocno(%rip), %rax	# allocno, allocno.236
	movl	-164(%rbp), %edx	# num, tmp507
	movslq	%edx, %rdx	# tmp507, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	24(%rax), %rax	# _119->hard_reg_conflicts, D.14312
	orq	%rax, %rbx	# D.14312, used1
	.loc 1 1039 0
	movq	%rbx, %r12	# used1, used
	.loc 1 1040 0
	movq	regs_used_so_far(%rip), %rax	# regs_used_so_far, regs_used_so_far.237
	notq	%rax	# D.14312
	orq	%rax, %r12	# D.14312, used
	.loc 1 1041 0
	movq	allocno(%rip), %rax	# allocno, allocno.238
	movl	-164(%rbp), %edx	# num, tmp508
	movslq	%edx, %rdx	# tmp508, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	56(%rax), %rax	# _129->regs_someone_prefers, D.14312
	orq	%rax, %r12	# D.14312, used
	.loc 1 1043 0
	movl	$-1, -156(%rbp)	#, best_reg
	.loc 1 1044 0
	movl	$53, -160(%rbp)	#, i
	movl	$0, -152(%rbp)	#, pass
	jmp	.L159	#
.L190:
	.loc 1 1048 0
	cmpl	$1, -152(%rbp)	#, pass
	jne	.L160	#,
	.loc 1 1049 0
	movq	%rbx, %r12	# used1, used
.L160:
	.loc 1 1050 0
	movl	$0, -160(%rbp)	#, i
	jmp	.L161	#
.L188:
.LBB21:
	.loc 1 1053 0
	movl	-160(%rbp), %eax	# i, tmp510
	cltq
	movl	reg_alloc_order(,%rax,4), %eax	# reg_alloc_order, tmp511
	movl	%eax, -112(%rbp)	# tmp511, regno
	.loc 1 1057 0
	movl	-112(%rbp), %eax	# regno, tmp512
	movq	%r12, %rsi	# used, D.14312
	movl	%eax, %ecx	# tmp512, tmp722
	shrq	%cl, %rsi	# tmp722, D.14312
	movq	%rsi, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L162	#,
	.loc 1 1058 0
	movl	-116(%rbp), %edx	# mode, tmp513
	movl	-112(%rbp), %eax	# regno, tmp514
	movl	%edx, %esi	# tmp513,
	movl	%eax, %edi	# tmp514,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14314
	je	.L162	#,
.LBB22:
	.loc 1 1064 0
	cmpl	$7, -112(%rbp)	#, regno
	jle	.L163	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	cmpl	$15, -112(%rbp)	#, regno
	jle	.L164	#,
.L163:
	.loc 1 1064 0 discriminator 2
	cmpl	$20, -112(%rbp)	#, regno
	jle	.L165	#,
	.loc 1 1064 0 discriminator 1
	cmpl	$28, -112(%rbp)	#, regno
	jle	.L164	#,
.L165:
	.loc 1 1064 0 discriminator 2
	cmpl	$44, -112(%rbp)	#, regno
	jle	.L166	#,
	.loc 1 1064 0 discriminator 1
	cmpl	$52, -112(%rbp)	#, regno
	jle	.L164	#,
.L166:
	.loc 1 1064 0 discriminator 2
	cmpl	$28, -112(%rbp)	#, regno
	jle	.L167	#,
	.loc 1 1064 0 discriminator 1
	cmpl	$36, -112(%rbp)	#, regno
	jg	.L167	#,
.L164:
	movl	-116(%rbp), %eax	# mode, mode.241
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$5, %eax	#, D.14319
	je	.L168	#,
	.loc 1 1064 0 discriminator 2
	movl	-116(%rbp), %eax	# mode, mode.242
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$6, %eax	#, D.14319
	jne	.L169	#,
.L168:
	.loc 1 1064 0 discriminator 1
	movl	$2, %eax	#, iftmp.240
	jmp	.L170	#
.L169:
	movl	$1, %eax	#, iftmp.240
.L170:
	.loc 1 1064 0 discriminator 3
	jmp	.L171	#
.L167:
	.loc 1 1064 0 discriminator 2
	cmpl	$18, -116(%rbp)	#, mode
	jne	.L172	#,
	.loc 1 1064 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.245
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L173	#,
	movl	$2, %eax	#, iftmp.244
	jmp	.L171	#
.L173:
	.loc 1 1064 0 discriminator 2
	movl	$3, %eax	#, iftmp.244
	jmp	.L171	#
.L172:
	cmpl	$24, -116(%rbp)	#, mode
	jne	.L176	#,
	.loc 1 1064 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.248
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L177	#,
	movl	$4, %eax	#, iftmp.247
	jmp	.L171	#
.L177:
	.loc 1 1064 0 discriminator 2
	movl	$6, %eax	#, iftmp.247
	jmp	.L171	#
.L176:
	movl	-116(%rbp), %eax	# mode, mode.249
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14318
	movzbl	%al, %edx	# D.14318, D.14314
	movl	target_flags(%rip), %eax	# target_flags, target_flags.251
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L180	#,
	.loc 1 1064 0 discriminator 1
	movl	$8, %eax	#, iftmp.250
	jmp	.L181	#
.L180:
	.loc 1 1064 0 discriminator 2
	movl	$4, %eax	#, iftmp.250
.L181:
	.loc 1 1064 0 discriminator 3
	addl	%edx, %eax	# D.14314, D.14314
	subl	$1, %eax	#, D.14314
	movl	target_flags(%rip), %edx	# target_flags, target_flags.253
	andl	$33554432, %edx	#, D.14314
	testl	%edx, %edx	# D.14314
	je	.L182	#,
	.loc 1 1064 0 discriminator 1
	movl	$8, %esi	#, iftmp.252
	jmp	.L183	#
.L182:
	.loc 1 1064 0 discriminator 2
	movl	$4, %esi	#, iftmp.252
.L183:
	.loc 1 1064 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.252
.L171:
	movl	-112(%rbp), %edx	# regno, tmp523
	addl	%edx, %eax	# tmp523, tmp522
	movl	%eax, -108(%rbp)	# tmp522, lim
	.loc 1 1065 0 is_stmt 1 discriminator 3
	movl	-112(%rbp), %eax	# regno, tmp527
	addl	$1, %eax	#, tmp526
	movl	%eax, -148(%rbp)	# tmp526, j
	jmp	.L184	#
.L186:
	.loc 1 1068 0
	addl	$1, -148(%rbp)	#, j
.L184:
	.loc 1 1065 0 discriminator 1
	movl	-148(%rbp), %eax	# j, tmp528
	cmpl	-108(%rbp), %eax	# lim, tmp528
	jge	.L185	#,
	.loc 1 1067 0
	movl	-148(%rbp), %eax	# j, tmp529
	movq	%r12, %rdi	# used, D.14312
	movl	%eax, %ecx	# tmp529, tmp725
	shrq	%cl, %rdi	# tmp725, D.14312
	movq	%rdi, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	je	.L186	#,
.L185:
	.loc 1 1069 0
	movl	-148(%rbp), %eax	# j, tmp530
	cmpl	-108(%rbp), %eax	# lim, tmp530
	jne	.L162	#,
	.loc 1 1071 0
	movl	-112(%rbp), %eax	# regno, tmp531
	movl	%eax, -156(%rbp)	# tmp531, best_reg
	.loc 1 1072 0
	jmp	.L187	#
.L162:
.LBE22:
.LBE21:
	.loc 1 1050 0
	addl	$1, -160(%rbp)	#, i
.L161:
	.loc 1 1050 0 is_stmt 0 discriminator 1
	cmpl	$52, -160(%rbp)	#, i
	jle	.L188	#,
.L187:
	.loc 1 1046 0 is_stmt 1
	addl	$1, -152(%rbp)	#, pass
.L159:
	.loc 1 1044 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, pass
	jg	.L189	#,
	.loc 1 1045 0
	cmpl	$52, -160(%rbp)	#, i
	jg	.L190	#,
.L189:
	.loc 1 1092 0
	movq	allocno(%rip), %rax	# allocno, allocno.254
	movl	-164(%rbp), %edx	# num, tmp532
	movslq	%edx, %rdx	# tmp532, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	allocno(%rip), %rdx	# allocno, allocno.255
	movl	-164(%rbp), %ecx	# num, tmp533
	movslq	%ecx, %rcx	# tmp533, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movq	40(%rdx), %rdx	# _189->hard_reg_copy_preferences, D.14312
	movq	%r12, %rcx	# used, D.14312
	notq	%rcx	# D.14312
	andq	%rcx, %rdx	# D.14312, D.14312
	movq	%rdx, 40(%rax)	# D.14312, _185->hard_reg_copy_preferences
	.loc 1 1093 0
	movq	allocno(%rip), %rax	# allocno, allocno.256
	movl	-164(%rbp), %edx	# num, tmp534
	movslq	%edx, %rdx	# tmp534, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	40(%rax), %rax	# _196->hard_reg_copy_preferences, D.14312
	movq	reg_class_contents(%rip), %rdx	# reg_class_contents, D.14312
	notq	%rdx	# D.14312
	andq	%rdx, %rax	# D.14312, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L191	#,
	.loc 1 1093 0 is_stmt 0 discriminator 1
	jmp	.L192	#
.L191:
	.loc 1 1096 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, best_reg
	js	.L192	#,
	.loc 1 1098 0
	movl	$0, -160(%rbp)	#, i
	jmp	.L193	#
.L221:
	.loc 1 1099 0
	movq	allocno(%rip), %rax	# allocno, allocno.257
	movl	-164(%rbp), %edx	# num, tmp535
	movslq	%edx, %rdx	# tmp535, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	40(%rax), %rdx	# _205->hard_reg_copy_preferences, D.14312
	movl	-160(%rbp), %eax	# i, tmp536
	movl	%eax, %ecx	# tmp536, tmp728
	shrq	%cl, %rdx	# tmp728, D.14312
	movq	%rdx, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	je	.L194	#,
	.loc 1 1100 0
	movl	-116(%rbp), %edx	# mode, tmp537
	movl	-160(%rbp), %eax	# i, tmp538
	movl	%edx, %esi	# tmp537,
	movl	%eax, %edi	# tmp538,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14314
	je	.L194	#,
	.loc 1 1104 0
	movl	-160(%rbp), %eax	# i, tmp540
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-156(%rbp), %eax	# best_reg, tmp542
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	cmpl	%eax, %edx	# D.14320, D.14320
	je	.L195	#,
	.loc 1 1105 0
	movl	-156(%rbp), %eax	# best_reg, tmp544
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-160(%rbp), %eax	# i, tmp546
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L195	#,
	.loc 1 1107 0
	movl	-160(%rbp), %eax	# i, tmp548
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-156(%rbp), %eax	# best_reg, tmp550
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	je	.L194	#,
.L195:
.LBB23:
	.loc 1 1111 0
	cmpl	$7, -160(%rbp)	#, i
	jle	.L196	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	cmpl	$15, -160(%rbp)	#, i
	jle	.L197	#,
.L196:
	.loc 1 1111 0 discriminator 2
	cmpl	$20, -160(%rbp)	#, i
	jle	.L198	#,
	.loc 1 1111 0 discriminator 1
	cmpl	$28, -160(%rbp)	#, i
	jle	.L197	#,
.L198:
	.loc 1 1111 0 discriminator 2
	cmpl	$44, -160(%rbp)	#, i
	jle	.L199	#,
	.loc 1 1111 0 discriminator 1
	cmpl	$52, -160(%rbp)	#, i
	jle	.L197	#,
.L199:
	.loc 1 1111 0 discriminator 2
	cmpl	$28, -160(%rbp)	#, i
	jle	.L200	#,
	.loc 1 1111 0 discriminator 1
	cmpl	$36, -160(%rbp)	#, i
	jg	.L200	#,
.L197:
	movl	-116(%rbp), %eax	# mode, mode.260
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$5, %eax	#, D.14319
	je	.L201	#,
	.loc 1 1111 0 discriminator 2
	movl	-116(%rbp), %eax	# mode, mode.261
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$6, %eax	#, D.14319
	jne	.L202	#,
.L201:
	.loc 1 1111 0 discriminator 1
	movl	$2, %eax	#, iftmp.259
	jmp	.L203	#
.L202:
	movl	$1, %eax	#, iftmp.259
.L203:
	.loc 1 1111 0 discriminator 3
	jmp	.L204	#
.L200:
	.loc 1 1111 0 discriminator 2
	cmpl	$18, -116(%rbp)	#, mode
	jne	.L205	#,
	.loc 1 1111 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.264
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L206	#,
	movl	$2, %eax	#, iftmp.263
	jmp	.L204	#
.L206:
	.loc 1 1111 0 discriminator 2
	movl	$3, %eax	#, iftmp.263
	jmp	.L204	#
.L205:
	cmpl	$24, -116(%rbp)	#, mode
	jne	.L209	#,
	.loc 1 1111 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.267
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L210	#,
	movl	$4, %eax	#, iftmp.266
	jmp	.L204	#
.L210:
	.loc 1 1111 0 discriminator 2
	movl	$6, %eax	#, iftmp.266
	jmp	.L204	#
.L209:
	movl	-116(%rbp), %eax	# mode, mode.268
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14318
	movzbl	%al, %edx	# D.14318, D.14314
	movl	target_flags(%rip), %eax	# target_flags, target_flags.270
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L213	#,
	.loc 1 1111 0 discriminator 1
	movl	$8, %eax	#, iftmp.269
	jmp	.L214	#
.L213:
	.loc 1 1111 0 discriminator 2
	movl	$4, %eax	#, iftmp.269
.L214:
	.loc 1 1111 0 discriminator 3
	addl	%edx, %eax	# D.14314, D.14314
	subl	$1, %eax	#, D.14314
	movl	target_flags(%rip), %edx	# target_flags, target_flags.272
	andl	$33554432, %edx	#, D.14314
	testl	%edx, %edx	# D.14314
	je	.L215	#,
	.loc 1 1111 0 discriminator 1
	movl	$8, %edi	#, iftmp.271
	jmp	.L216	#
.L215:
	.loc 1 1111 0 discriminator 2
	movl	$4, %edi	#, iftmp.271
.L216:
	.loc 1 1111 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.271
.L204:
	movl	-160(%rbp), %edx	# i, tmp559
	addl	%edx, %eax	# tmp559, tmp558
	movl	%eax, -104(%rbp)	# tmp558, lim
	.loc 1 1112 0 is_stmt 1 discriminator 3
	movl	-160(%rbp), %eax	# i, tmp563
	addl	$1, %eax	#, tmp562
	movl	%eax, -144(%rbp)	# tmp562, j
	jmp	.L217	#
.L219:
	.loc 1 1121 0
	addl	$1, -144(%rbp)	#, j
.L217:
	.loc 1 1112 0 discriminator 1
	movl	-144(%rbp), %eax	# j, tmp564
	cmpl	-104(%rbp), %eax	# lim, tmp564
	jge	.L218	#,
	.loc 1 1114 0
	movl	-144(%rbp), %eax	# j, tmp565
	movq	%r12, %rbx	# used, D.14312
	movl	%eax, %ecx	# tmp565, tmp731
	shrq	%cl, %rbx	# tmp731, D.14312
	movq	%rbx, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L218	#,
	.loc 1 1115 0
	movl	-144(%rbp), %eax	# j, tmp567
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	.loc 1 1116 0
	movl	-160(%rbp), %eax	# i, tmp568
	movl	-144(%rbp), %ecx	# j, tmp569
	subl	%eax, %ecx	# tmp568, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp570
	addl	%ecx, %eax	# D.14314, D.14314
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	.loc 1 1115 0
	cmpl	%eax, %edx	# D.14320, D.14320
	je	.L219	#,
	.loc 1 1118 0
	movl	-160(%rbp), %eax	# i, tmp572
	movl	-144(%rbp), %edx	# j, tmp573
	subl	%eax, %edx	# tmp572, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp574
	addl	%edx, %eax	# D.14314, D.14314
	.loc 1 1117 0
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-144(%rbp), %eax	# j, tmp577
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L219	#,
	.loc 1 1119 0
	movl	-144(%rbp), %eax	# j, tmp579
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-160(%rbp), %eax	# i, tmp580
	movl	-144(%rbp), %ecx	# j, tmp581
	subl	%eax, %ecx	# tmp580, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp582
	addl	%ecx, %eax	# D.14314, D.14314
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L219	#,
.L218:
	.loc 1 1122 0
	movl	-144(%rbp), %eax	# j, tmp584
	cmpl	-104(%rbp), %eax	# lim, tmp584
	jne	.L194	#,
	.loc 1 1124 0
	movl	-160(%rbp), %eax	# i, tmp585
	movl	%eax, -156(%rbp)	# tmp585, best_reg
	.loc 1 1125 0
	jmp	.L220	#
.L194:
.LBE23:
	.loc 1 1098 0
	addl	$1, -160(%rbp)	#, i
.L193:
	.loc 1 1098 0 is_stmt 0 discriminator 1
	cmpl	$52, -160(%rbp)	#, i
	jle	.L221	#,
.L192:
	.loc 1 1131 0 is_stmt 1
	movq	allocno(%rip), %rax	# allocno, allocno.273
	movl	-164(%rbp), %edx	# num, tmp586
	movslq	%edx, %rdx	# tmp586, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	allocno(%rip), %rdx	# allocno, allocno.274
	movl	-164(%rbp), %ecx	# num, tmp587
	movslq	%ecx, %rcx	# tmp587, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movq	32(%rdx), %rdx	# _279->hard_reg_preferences, D.14312
	movq	%r12, %rcx	# used, D.14312
	notq	%rcx	# D.14312
	andq	%rcx, %rdx	# D.14312, D.14312
	movq	%rdx, 32(%rax)	# D.14312, _275->hard_reg_preferences
	.loc 1 1132 0
	movq	allocno(%rip), %rax	# allocno, allocno.275
	movl	-164(%rbp), %edx	# num, tmp588
	movslq	%edx, %rdx	# tmp588, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	32(%rax), %rax	# _286->hard_reg_preferences, D.14312
	movq	reg_class_contents(%rip), %rdx	# reg_class_contents, D.14312
	notq	%rdx	# D.14312
	andq	%rdx, %rax	# D.14312, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L222	#,
	.loc 1 1132 0 is_stmt 0 discriminator 1
	jmp	.L220	#
.L222:
	.loc 1 1135 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, best_reg
	js	.L220	#,
	.loc 1 1137 0
	movl	$0, -160(%rbp)	#, i
	jmp	.L223	#
.L250:
	.loc 1 1138 0
	movq	allocno(%rip), %rax	# allocno, allocno.276
	movl	-164(%rbp), %edx	# num, tmp589
	movslq	%edx, %rdx	# tmp589, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movq	32(%rax), %rdx	# _295->hard_reg_preferences, D.14312
	movl	-160(%rbp), %eax	# i, tmp590
	movl	%eax, %ecx	# tmp590, tmp734
	shrq	%cl, %rdx	# tmp734, D.14312
	movq	%rdx, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	je	.L224	#,
	.loc 1 1139 0
	movl	-116(%rbp), %edx	# mode, tmp591
	movl	-160(%rbp), %eax	# i, tmp592
	movl	%edx, %esi	# tmp591,
	movl	%eax, %edi	# tmp592,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14314
	je	.L224	#,
	.loc 1 1143 0
	movl	-160(%rbp), %eax	# i, tmp594
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-156(%rbp), %eax	# best_reg, tmp596
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	cmpl	%eax, %edx	# D.14320, D.14320
	je	.L225	#,
	.loc 1 1144 0
	movl	-156(%rbp), %eax	# best_reg, tmp598
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-160(%rbp), %eax	# i, tmp600
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L225	#,
	.loc 1 1146 0
	movl	-160(%rbp), %eax	# i, tmp602
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-156(%rbp), %eax	# best_reg, tmp604
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	je	.L224	#,
.L225:
.LBB24:
	.loc 1 1150 0
	cmpl	$7, -160(%rbp)	#, i
	jle	.L226	#,
	.loc 1 1150 0 is_stmt 0 discriminator 1
	cmpl	$15, -160(%rbp)	#, i
	jle	.L227	#,
.L226:
	.loc 1 1150 0 discriminator 2
	cmpl	$20, -160(%rbp)	#, i
	jle	.L228	#,
	.loc 1 1150 0 discriminator 1
	cmpl	$28, -160(%rbp)	#, i
	jle	.L227	#,
.L228:
	.loc 1 1150 0 discriminator 2
	cmpl	$44, -160(%rbp)	#, i
	jle	.L229	#,
	.loc 1 1150 0 discriminator 1
	cmpl	$52, -160(%rbp)	#, i
	jle	.L227	#,
.L229:
	.loc 1 1150 0 discriminator 2
	cmpl	$28, -160(%rbp)	#, i
	jle	.L230	#,
	.loc 1 1150 0 discriminator 1
	cmpl	$36, -160(%rbp)	#, i
	jg	.L230	#,
.L227:
	movl	-116(%rbp), %eax	# mode, mode.279
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$5, %eax	#, D.14319
	je	.L231	#,
	.loc 1 1150 0 discriminator 2
	movl	-116(%rbp), %eax	# mode, mode.280
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$6, %eax	#, D.14319
	jne	.L232	#,
.L231:
	.loc 1 1150 0 discriminator 1
	movl	$2, %eax	#, iftmp.278
	jmp	.L233	#
.L232:
	movl	$1, %eax	#, iftmp.278
.L233:
	.loc 1 1150 0 discriminator 3
	jmp	.L234	#
.L230:
	.loc 1 1150 0 discriminator 2
	cmpl	$18, -116(%rbp)	#, mode
	jne	.L235	#,
	.loc 1 1150 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.283
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L236	#,
	movl	$2, %eax	#, iftmp.282
	jmp	.L234	#
.L236:
	.loc 1 1150 0 discriminator 2
	movl	$3, %eax	#, iftmp.282
	jmp	.L234	#
.L235:
	cmpl	$24, -116(%rbp)	#, mode
	jne	.L239	#,
	.loc 1 1150 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.286
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L240	#,
	movl	$4, %eax	#, iftmp.285
	jmp	.L234	#
.L240:
	.loc 1 1150 0 discriminator 2
	movl	$6, %eax	#, iftmp.285
	jmp	.L234	#
.L239:
	movl	-116(%rbp), %eax	# mode, mode.287
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14318
	movzbl	%al, %edx	# D.14318, D.14314
	movl	target_flags(%rip), %eax	# target_flags, target_flags.289
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L243	#,
	.loc 1 1150 0 discriminator 1
	movl	$8, %eax	#, iftmp.288
	jmp	.L244	#
.L243:
	.loc 1 1150 0 discriminator 2
	movl	$4, %eax	#, iftmp.288
.L244:
	.loc 1 1150 0 discriminator 3
	addl	%edx, %eax	# D.14314, D.14314
	subl	$1, %eax	#, D.14314
	movl	target_flags(%rip), %edx	# target_flags, target_flags.291
	andl	$33554432, %edx	#, D.14314
	testl	%edx, %edx	# D.14314
	je	.L245	#,
	.loc 1 1150 0 discriminator 1
	movl	$8, %ebx	#, iftmp.290
	jmp	.L246	#
.L245:
	.loc 1 1150 0 discriminator 2
	movl	$4, %ebx	#, iftmp.290
.L246:
	.loc 1 1150 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.290
.L234:
	movl	-160(%rbp), %edx	# i, tmp613
	addl	%edx, %eax	# tmp613, tmp612
	movl	%eax, -100(%rbp)	# tmp612, lim
	.loc 1 1151 0 is_stmt 1 discriminator 3
	movl	-160(%rbp), %eax	# i, tmp617
	addl	$1, %eax	#, tmp616
	movl	%eax, -140(%rbp)	# tmp616, j
	jmp	.L247	#
.L249:
	.loc 1 1160 0
	addl	$1, -140(%rbp)	#, j
.L247:
	.loc 1 1151 0 discriminator 1
	movl	-140(%rbp), %eax	# j, tmp618
	cmpl	-100(%rbp), %eax	# lim, tmp618
	jge	.L248	#,
	.loc 1 1153 0
	movl	-140(%rbp), %eax	# j, tmp619
	movq	%r12, %rbx	# used, D.14312
	movl	%eax, %ecx	# tmp619, tmp737
	shrq	%cl, %rbx	# tmp737, D.14312
	movq	%rbx, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L248	#,
	.loc 1 1154 0
	movl	-140(%rbp), %eax	# j, tmp621
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	.loc 1 1155 0
	movl	-160(%rbp), %eax	# i, tmp622
	movl	-140(%rbp), %ecx	# j, tmp623
	subl	%eax, %ecx	# tmp622, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp624
	addl	%ecx, %eax	# D.14314, D.14314
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	.loc 1 1154 0
	cmpl	%eax, %edx	# D.14320, D.14320
	je	.L249	#,
	.loc 1 1157 0
	movl	-160(%rbp), %eax	# i, tmp626
	movl	-140(%rbp), %edx	# j, tmp627
	subl	%eax, %edx	# tmp626, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp628
	addl	%edx, %eax	# D.14314, D.14314
	.loc 1 1156 0
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-140(%rbp), %eax	# j, tmp631
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L249	#,
	.loc 1 1158 0
	movl	-140(%rbp), %eax	# j, tmp633
	cltq
	movl	regclass_map(,%rax,4), %edx	# regclass_map, D.14320
	movl	-160(%rbp), %eax	# i, tmp634
	movl	-140(%rbp), %ecx	# j, tmp635
	subl	%eax, %ecx	# tmp634, D.14314
	movl	-156(%rbp), %eax	# best_reg, tmp636
	addl	%ecx, %eax	# D.14314, D.14314
	cltq
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.14320
	movl	%edx, %esi	# D.14320,
	movl	%eax, %edi	# D.14320,
	call	reg_class_subset_p	#
	testl	%eax, %eax	# D.14314
	jne	.L249	#,
.L248:
	.loc 1 1161 0
	movl	-140(%rbp), %eax	# j, tmp638
	cmpl	-100(%rbp), %eax	# lim, tmp638
	jne	.L224	#,
	.loc 1 1163 0
	movl	-160(%rbp), %eax	# i, tmp639
	movl	%eax, -156(%rbp)	# tmp639, best_reg
	.loc 1 1164 0
	jmp	.L220	#
.L224:
.LBE24:
	.loc 1 1137 0
	addl	$1, -160(%rbp)	#, i
.L223:
	.loc 1 1137 0 is_stmt 0 discriminator 1
	cmpl	$52, -160(%rbp)	#, i
	jle	.L250	#,
.L220:
	.loc 1 1175 0 is_stmt 1
	movl	flag_caller_saves(%rip), %eax	# flag_caller_saves, flag_caller_saves.292
	testl	%eax, %eax	# flag_caller_saves.292
	je	.L251	#,
	.loc 1 1175 0 is_stmt 0 discriminator 1
	cmpl	$0, -156(%rbp)	#, best_reg
	jns	.L251	#,
	.loc 1 1180 0 is_stmt 1
	cmpl	$0, -180(%rbp)	#, accept_call_clobbered
	jne	.L251	#,
	.loc 1 1181 0
	movq	allocno(%rip), %rax	# allocno, allocno.293
	movl	-164(%rbp), %edx	# num, tmp640
	movslq	%edx, %rdx	# tmp640, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	8(%rax), %eax	# _366->calls_crossed, D.14314
	testl	%eax, %eax	# D.14314
	je	.L251	#,
	.loc 1 1182 0
	movq	allocno(%rip), %rax	# allocno, allocno.294
	movl	-164(%rbp), %edx	# num, tmp641
	movslq	%edx, %rdx	# tmp641, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	8(%rax), %eax	# _371->calls_crossed, D.14314
	leal	0(,%rax,4), %ecx	#, D.14314
	movq	allocno(%rip), %rax	# allocno, allocno.295
	movl	-164(%rbp), %edx	# num, tmp642
	movslq	%edx, %rdx	# tmp642, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	12(%rax), %eax	# _377->n_refs, D.14314
	cmpl	%eax, %ecx	# D.14314, D.14314
	jge	.L251	#,
.LBB25:
	.loc 1 1186 0
	cmpq	$0, -176(%rbp)	#, losers
	jne	.L252	#,
	.loc 1 1187 0
	movq	$0, -80(%rbp)	#, new_losers
	jmp	.L253	#
.L252:
	.loc 1 1189 0
	movq	-176(%rbp), %rax	# losers, tmp643
	movq	%rax, -80(%rbp)	# tmp643, new_losers
.L253:
	.loc 1 1191 0
	movq	losing_caller_save_reg_set(%rip), %rax	# losing_caller_save_reg_set, losing_caller_save_reg_set.296
	orq	%rax, -80(%rbp)	# losing_caller_save_reg_set.296, new_losers
	.loc 1 1192 0
	movl	-184(%rbp), %ecx	# retrying, tmp644
	movl	-168(%rbp), %edx	# alt_regs_p, tmp645
	movq	-80(%rbp), %rsi	# new_losers, tmp646
	movl	-164(%rbp), %eax	# num, tmp647
	movl	%ecx, %r8d	# tmp644,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp647,
	call	find_reg	#
	.loc 1 1193 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.297
	movq	allocno(%rip), %rdx	# allocno, allocno.298
	movl	-164(%rbp), %ecx	# num, tmp648
	movslq	%ecx, %rcx	# tmp648, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movl	(%rdx), %edx	# _388->reg, D.14314
	movslq	%edx, %rdx	# D.14314, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rdx, %rax	# D.14312, D.14321
	movzwl	(%rax), %eax	# *_392, D.14322
	testw	%ax, %ax	# D.14322
	js	.L251	#,
	.loc 1 1195 0
	movl	$1, caller_save_needed(%rip)	#, caller_save_needed
	.loc 1 1196 0
	jmp	.L152	#
.L251:
.LBE25:
	.loc 1 1206 0
	cmpl	$0, -156(%rbp)	#, best_reg
	jns	.L255	#,
	.loc 1 1206 0 is_stmt 0 discriminator 1
	cmpl	$0, -184(%rbp)	#, retrying
	jne	.L255	#,
	.loc 1 1208 0 is_stmt 1
	movq	allocno(%rip), %rax	# allocno, allocno.299
	movl	-164(%rbp), %edx	# num, tmp649
	movslq	%edx, %rdx	# tmp649, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	4(%rax), %eax	# _397->size, D.14314
	cmpl	$1, %eax	#, D.14314
	jne	.L255	#,
	.loc 1 1211 0
	movl	$52, -160(%rbp)	#, i
	jmp	.L256	#
.L283:
.LBB26:
	.loc 1 1214 0
	movl	-160(%rbp), %eax	# i, tmp651
	cltq
	movl	reg_alloc_order(,%rax,4), %eax	# reg_alloc_order, tmp652
	movl	%eax, -96(%rbp)	# tmp652, regno
	.loc 1 1219 0
	movl	-96(%rbp), %eax	# regno, tmp654
	cltq
	movl	local_reg_n_refs(,%rax,4), %eax	# local_reg_n_refs, D.14314
	testl	%eax, %eax	# D.14314
	je	.L257	#,
	.loc 1 1221 0
	movl	-96(%rbp), %eax	# regno, tmp655
	movq	%r13, %rbx	# used2, D.14312
	movl	%eax, %ecx	# tmp655, tmp739
	shrq	%cl, %rbx	# tmp739, D.14312
	movq	%rbx, %rax	# D.14312, D.14312
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	jne	.L257	#,
	.loc 1 1222 0
	movl	-116(%rbp), %edx	# mode, tmp656
	movl	-96(%rbp), %eax	# regno, tmp657
	movl	%edx, %esi	# tmp656,
	movl	%eax, %edi	# tmp657,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14314
	je	.L257	#,
.LBB27:
	.loc 1 1238 0
	movl	-96(%rbp), %eax	# regno, tmp659
	cltq
	movl	local_reg_freq(,%rax,4), %eax	# local_reg_freq, D.14314
	cvtsi2sd	%eax, %xmm0	# D.14314, D.14323
	.loc 1 1239 0
	movl	-96(%rbp), %eax	# regno, tmp661
	cltq
	movl	local_reg_live_length(,%rax,4), %eax	# local_reg_live_length, D.14314
	cvtsi2sd	%eax, %xmm1	# D.14314, D.14323
	.loc 1 1238 0
	divsd	%xmm1, %xmm0	# D.14323, tmp662
	movsd	%xmm0, -48(%rbp)	# tmp662, tmp1
	.loc 1 1240 0
	movq	allocno(%rip), %rax	# allocno, allocno.300
	movl	-164(%rbp), %edx	# num, tmp663
	movslq	%edx, %rdx	# tmp663, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	16(%rax), %eax	# _413->freq, D.14314
	cvtsi2sd	%eax, %xmm0	# D.14314, D.14323
	.loc 1 1241 0
	movq	allocno(%rip), %rax	# allocno, allocno.301
	movl	-164(%rbp), %edx	# num, tmp664
	movslq	%edx, %rdx	# tmp664, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14313
	movl	20(%rax), %eax	# _419->live_length, D.14314
	cvtsi2sd	%eax, %xmm1	# D.14314, D.14323
	.loc 1 1240 0
	divsd	%xmm1, %xmm0	# D.14323, tmp665
	movsd	%xmm0, -40(%rbp)	# tmp665, tmp2
	.loc 1 1243 0
	movsd	-40(%rbp), %xmm0	# tmp2, tmp666
	ucomisd	-48(%rbp), %xmm0	# tmp1, tmp666
	jbe	.L257	#,
.LBB28:
	.loc 1 1248 0
	movl	$0, -136(%rbp)	#, k
	jmp	.L259	#
.L282:
	.loc 1 1249 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.302
	movl	-136(%rbp), %edx	# k, tmp667
	movslq	%edx, %rdx	# tmp667, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rdx, %rax	# D.14312, D.14321
	movzwl	(%rax), %eax	# *_428, D.14322
	testw	%ax, %ax	# D.14322
	js	.L260	#,
.LBB29:
	.loc 1 1251 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.303
	movl	-136(%rbp), %edx	# k, tmp668
	movslq	%edx, %rdx	# tmp668, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rdx, %rax	# D.14312, D.14321
	movzwl	(%rax), %eax	# *_433, D.14322
	cwtl
	movl	%eax, -92(%rbp)	# tmp669, r
	.loc 1 1253 0
	cmpl	$7, -92(%rbp)	#, r
	jle	.L261	#,
	.loc 1 1253 0 is_stmt 0 discriminator 1
	cmpl	$15, -92(%rbp)	#, r
	jle	.L262	#,
.L261:
	.loc 1 1253 0 discriminator 2
	cmpl	$20, -92(%rbp)	#, r
	jle	.L263	#,
	.loc 1 1253 0 discriminator 1
	cmpl	$28, -92(%rbp)	#, r
	jle	.L262	#,
.L263:
	.loc 1 1253 0 discriminator 2
	cmpl	$44, -92(%rbp)	#, r
	jle	.L264	#,
	.loc 1 1253 0 discriminator 1
	cmpl	$52, -92(%rbp)	#, r
	jle	.L262	#,
.L264:
	.loc 1 1253 0 discriminator 2
	cmpl	$28, -92(%rbp)	#, r
	jle	.L265	#,
	.loc 1 1253 0 discriminator 1
	cmpl	$36, -92(%rbp)	#, r
	jg	.L265	#,
.L262:
	movq	cfun(%rip), %rax	# cfun, cfun.306
	movq	24(%rax), %rax	# cfun.306_486->emit, D.14315
	movq	80(%rax), %rax	# _487->x_regno_reg_rtx, D.14316
	movl	-136(%rbp), %edx	# k, tmp670
	movslq	%edx, %rdx	# tmp670, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_491, D.14317
	movzbl	2(%rax), %eax	# _492->mode, D.14318
	movzbl	%al, %eax	# D.14318, D.14314
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$5, %eax	#, D.14319
	je	.L266	#,
	.loc 1 1253 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.307
	movq	24(%rax), %rax	# cfun.307_496->emit, D.14315
	movq	80(%rax), %rax	# _497->x_regno_reg_rtx, D.14316
	movl	-136(%rbp), %edx	# k, tmp672
	movslq	%edx, %rdx	# tmp672, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_501, D.14317
	movzbl	2(%rax), %eax	# _502->mode, D.14318
	movzbl	%al, %eax	# D.14318, D.14314
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$6, %eax	#, D.14319
	jne	.L267	#,
.L266:
	.loc 1 1253 0 discriminator 1
	movl	$2, %eax	#, iftmp.305
	jmp	.L268	#
.L267:
	movl	$1, %eax	#, iftmp.305
.L268:
	.loc 1 1253 0 discriminator 3
	jmp	.L269	#
.L265:
	.loc 1 1253 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.309
	movq	24(%rax), %rax	# cfun.309_436->emit, D.14315
	movq	80(%rax), %rax	# _437->x_regno_reg_rtx, D.14316
	movl	-136(%rbp), %edx	# k, tmp674
	movslq	%edx, %rdx	# tmp674, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_441, D.14317
	movzbl	2(%rax), %eax	# _442->mode, D.14318
	cmpb	$18, %al	#, D.14318
	jne	.L270	#,
	.loc 1 1253 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.311
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L271	#,
	movl	$2, %eax	#, iftmp.310
	jmp	.L269	#
.L271:
	.loc 1 1253 0 discriminator 2
	movl	$3, %eax	#, iftmp.310
	jmp	.L269	#
.L270:
	movq	cfun(%rip), %rax	# cfun, cfun.313
	movq	24(%rax), %rax	# cfun.313_449->emit, D.14315
	movq	80(%rax), %rax	# _450->x_regno_reg_rtx, D.14316
	movl	-136(%rbp), %edx	# k, tmp675
	movslq	%edx, %rdx	# tmp675, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_454, D.14317
	movzbl	2(%rax), %eax	# _455->mode, D.14318
	cmpb	$24, %al	#, D.14318
	jne	.L274	#,
	.loc 1 1253 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.315
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L275	#,
	movl	$4, %eax	#, iftmp.314
	jmp	.L269	#
.L275:
	.loc 1 1253 0 discriminator 2
	movl	$6, %eax	#, iftmp.314
	jmp	.L269	#
.L274:
	movq	cfun(%rip), %rax	# cfun, cfun.316
	movq	24(%rax), %rax	# cfun.316_462->emit, D.14315
	movq	80(%rax), %rax	# _463->x_regno_reg_rtx, D.14316
	movl	-136(%rbp), %edx	# k, tmp676
	movslq	%edx, %rdx	# tmp676, D.14312
	salq	$3, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14316
	movq	(%rax), %rax	# *_467, D.14317
	movzbl	2(%rax), %eax	# _468->mode, D.14318
	movzbl	%al, %eax	# D.14318, D.14314
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14318
	movzbl	%al, %edx	# D.14318, D.14314
	movl	target_flags(%rip), %eax	# target_flags, target_flags.318
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L278	#,
	.loc 1 1253 0 discriminator 1
	movl	$8, %eax	#, iftmp.317
	jmp	.L279	#
.L278:
	.loc 1 1253 0 discriminator 2
	movl	$4, %eax	#, iftmp.317
.L279:
	.loc 1 1253 0 discriminator 3
	addl	%edx, %eax	# D.14314, D.14314
	subl	$1, %eax	#, D.14314
	movl	target_flags(%rip), %edx	# target_flags, target_flags.320
	andl	$33554432, %edx	#, D.14314
	testl	%edx, %edx	# D.14314
	je	.L280	#,
	.loc 1 1253 0 discriminator 1
	movl	$8, %esi	#, iftmp.319
	jmp	.L281	#
.L280:
	.loc 1 1253 0 discriminator 2
	movl	$4, %esi	#, iftmp.319
.L281:
	.loc 1 1253 0 discriminator 3
	cltd
	idivl	%esi	# iftmp.319
.L269:
	.loc 1 1252 0 is_stmt 1
	movl	-92(%rbp), %edx	# r, tmp683
	addl	%edx, %eax	# tmp683, tmp682
	movl	%eax, -88(%rbp)	# tmp682, endregno
	.loc 1 1255 0
	movl	-96(%rbp), %eax	# regno, tmp684
	cmpl	-92(%rbp), %eax	# r, tmp684
	jl	.L260	#,
	.loc 1 1255 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# regno, tmp685
	cmpl	-88(%rbp), %eax	# endregno, tmp685
	jge	.L260	#,
	.loc 1 1256 0 is_stmt 1
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.321
	movl	-136(%rbp), %edx	# k, tmp686
	movslq	%edx, %rdx	# tmp686, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rdx, %rax	# D.14312, D.14321
	movw	$-1, (%rax)	#, *_513
.L260:
.LBE29:
	.loc 1 1248 0
	addl	$1, -136(%rbp)	#, k
.L259:
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.322
	cmpl	%eax, -136(%rbp)	# max_regno.322, k
	jl	.L282	#,
	.loc 1 1259 0 is_stmt 1
	movl	-96(%rbp), %eax	# regno, tmp687
	movl	%eax, -156(%rbp)	# tmp687, best_reg
	.loc 1 1260 0
	jmp	.L255	#
.L257:
.LBE28:
.LBE27:
.LBE26:
	.loc 1 1211 0
	subl	$1, -160(%rbp)	#, i
.L256:
	.loc 1 1211 0 is_stmt 0 discriminator 1
	cmpl	$0, -160(%rbp)	#, i
	jns	.L283	#,
.L255:
	.loc 1 1268 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, best_reg
	js	.L152	#,
.LBB30:
	.loc 1 1274 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.323
	movq	allocno(%rip), %rdx	# allocno, allocno.324
	movl	-164(%rbp), %ecx	# num, tmp688
	movslq	%ecx, %rcx	# tmp688, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movl	(%rdx), %edx	# _521->reg, D.14314
	movslq	%edx, %rdx	# D.14314, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rax, %rdx	# reg_renumber.323, D.14321
	movl	-156(%rbp), %eax	# best_reg, tmp689
	movw	%ax, (%rdx)	# D.14322, *_525
	.loc 1 1276 0
	movq	reg_may_share(%rip), %rax	# reg_may_share, reg_may_share.325
	movq	allocno(%rip), %rdx	# allocno, allocno.326
	movl	-164(%rbp), %ecx	# num, tmp690
	movslq	%ecx, %rcx	# tmp690, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rdx	# D.14312, D.14313
	movl	(%rdx), %edx	# _531->reg, D.14314
	movslq	%edx, %rdx	# D.14314, D.14312
	salq	$2, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14324
	movl	(%rax), %eax	# *_535, D.14314
	testl	%eax, %eax	# D.14314
	je	.L284	#,
	.loc 1 1277 0
	movl	$53, -132(%rbp)	#, j
	jmp	.L285	#
.L287:
	.loc 1 1278 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.327
	movl	-132(%rbp), %edx	# j, tmp691
	movslq	%edx, %rdx	# tmp691, D.14312
	salq	$2, %rdx	#, D.14312
	addq	%rdx, %rax	# D.14312, D.14324
	movl	(%rax), %eax	# *_542, D.14314
	cmpl	-164(%rbp), %eax	# num, D.14314
	jne	.L286	#,
	.loc 1 1279 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.328
	movl	-132(%rbp), %edx	# j, tmp692
	movslq	%edx, %rdx	# tmp692, D.14312
	addq	%rdx, %rdx	# D.14312
	addq	%rax, %rdx	# reg_renumber.328, D.14321
	movl	-156(%rbp), %eax	# best_reg, tmp693
	movw	%ax, (%rdx)	# D.14322, *_547
.L286:
	.loc 1 1277 0
	addl	$1, -132(%rbp)	#, j
.L285:
	.loc 1 1277 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.329
	cmpl	%eax, -132(%rbp)	# max_regno.329, j
	jl	.L287	#,
.L284:
	.loc 1 1282 0 is_stmt 1
	movq	$0, -72(%rbp)	#, this_reg
	.loc 1 1283 0
	cmpl	$7, -156(%rbp)	#, best_reg
	jle	.L288	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	cmpl	$15, -156(%rbp)	#, best_reg
	jle	.L289	#,
.L288:
	.loc 1 1283 0 discriminator 2
	cmpl	$20, -156(%rbp)	#, best_reg
	jle	.L290	#,
	.loc 1 1283 0 discriminator 1
	cmpl	$28, -156(%rbp)	#, best_reg
	jle	.L289	#,
.L290:
	.loc 1 1283 0 discriminator 2
	cmpl	$44, -156(%rbp)	#, best_reg
	jle	.L291	#,
	.loc 1 1283 0 discriminator 1
	cmpl	$52, -156(%rbp)	#, best_reg
	jle	.L289	#,
.L291:
	.loc 1 1283 0 discriminator 2
	cmpl	$28, -156(%rbp)	#, best_reg
	jle	.L292	#,
	.loc 1 1283 0 discriminator 1
	cmpl	$36, -156(%rbp)	#, best_reg
	jg	.L292	#,
.L289:
	movl	-116(%rbp), %eax	# mode, mode.332
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$5, %eax	#, D.14319
	je	.L293	#,
	.loc 1 1283 0 discriminator 2
	movl	-116(%rbp), %eax	# mode, mode.333
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14319
	cmpl	$6, %eax	#, D.14319
	jne	.L294	#,
.L293:
	.loc 1 1283 0 discriminator 1
	movl	$2, %eax	#, iftmp.331
	jmp	.L295	#
.L294:
	movl	$1, %eax	#, iftmp.331
.L295:
	.loc 1 1283 0 discriminator 3
	jmp	.L296	#
.L292:
	.loc 1 1283 0 discriminator 2
	cmpl	$18, -116(%rbp)	#, mode
	jne	.L297	#,
	.loc 1 1283 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.336
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L298	#,
	movl	$2, %eax	#, iftmp.335
	jmp	.L296	#
.L298:
	.loc 1 1283 0 discriminator 2
	movl	$3, %eax	#, iftmp.335
	jmp	.L296	#
.L297:
	cmpl	$24, -116(%rbp)	#, mode
	jne	.L301	#,
	.loc 1 1283 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.339
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L302	#,
	movl	$4, %eax	#, iftmp.338
	jmp	.L296	#
.L302:
	.loc 1 1283 0 discriminator 2
	movl	$6, %eax	#, iftmp.338
	jmp	.L296	#
.L301:
	movl	-116(%rbp), %eax	# mode, mode.340
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14318
	movzbl	%al, %edx	# D.14318, D.14314
	movl	target_flags(%rip), %eax	# target_flags, target_flags.342
	andl	$33554432, %eax	#, D.14314
	testl	%eax, %eax	# D.14314
	je	.L305	#,
	.loc 1 1283 0 discriminator 1
	movl	$8, %eax	#, iftmp.341
	jmp	.L306	#
.L305:
	.loc 1 1283 0 discriminator 2
	movl	$4, %eax	#, iftmp.341
.L306:
	.loc 1 1283 0 discriminator 3
	addl	%edx, %eax	# D.14314, D.14314
	subl	$1, %eax	#, D.14314
	movl	target_flags(%rip), %edx	# target_flags, target_flags.344
	andl	$33554432, %edx	#, D.14314
	testl	%edx, %edx	# D.14314
	je	.L307	#,
	.loc 1 1283 0 discriminator 1
	movl	$8, %edi	#, iftmp.343
	jmp	.L308	#
.L307:
	.loc 1 1283 0 discriminator 2
	movl	$4, %edi	#, iftmp.343
.L308:
	.loc 1 1283 0 discriminator 3
	cltd
	idivl	%edi	# iftmp.343
.L296:
	movl	-156(%rbp), %edx	# best_reg, tmp702
	addl	%edx, %eax	# tmp702, tmp701
	movl	%eax, -84(%rbp)	# tmp701, lim
	.loc 1 1284 0 is_stmt 1 discriminator 3
	movl	-156(%rbp), %eax	# best_reg, tmp703
	movl	%eax, -132(%rbp)	# tmp703, j
	jmp	.L309	#
.L310:
	.loc 1 1286 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp704
	movl	$1, %edx	#, tmp705
	movl	%eax, %ecx	# tmp704, tmp743
	salq	%cl, %rdx	# tmp743, D.14312
	movq	%rdx, %rax	# D.14312, D.14312
	orq	%rax, -72(%rbp)	# D.14312, this_reg
	.loc 1 1287 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp706
	movl	$1, %edx	#, tmp707
	movl	%eax, %ecx	# tmp706, tmp744
	salq	%cl, %rdx	# tmp744, D.14312
	movq	regs_used_so_far(%rip), %rax	# regs_used_so_far, regs_used_so_far.345
	orq	%rdx, %rax	# D.14312, regs_used_so_far.346
	movq	%rax, regs_used_so_far(%rip)	# regs_used_so_far.346, regs_used_so_far
	.loc 1 1289 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp709
	cltq
	movl	$0, local_reg_n_refs(,%rax,4)	#, local_reg_n_refs
	.loc 1 1290 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp711
	cltq
	movl	$0, local_reg_freq(,%rax,4)	#, local_reg_freq
	.loc 1 1284 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L309:
	.loc 1 1284 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# j, tmp712
	cmpl	-84(%rbp), %eax	# lim, tmp712
	jl	.L310	#,
	.loc 1 1294 0 is_stmt 1
	movl	-164(%rbp), %eax	# num, tmp713
	movl	%eax, -84(%rbp)	# tmp713, lim
.LBB31:
	.loc 1 1295 0
	movq	conflicts(%rip), %rdx	# conflicts, conflicts.347
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.348
	imull	-84(%rbp), %eax	# lim, D.14314
	cltq
	salq	$3, %rax	#, D.14312
	addq	%rdx, %rax	# conflicts.347, tmp714
	movq	%rax, -64(%rbp)	# tmp714, p_
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.349
	subl	$1, %eax	#, tmp715
	movl	%eax, -128(%rbp)	# tmp715, i_
	movl	$0, -124(%rbp)	#, allocno_
	jmp	.L311	#
.L315:
.LBB32:
	.loc 1 1295 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# p_, p_.350
	leaq	8(%rax), %rdx	#, tmp716
	movq	%rdx, -64(%rbp)	# tmp716, p_
	movq	(%rax), %rax	# *p_.350_602, D.14325
	movq	%rax, -56(%rbp)	# D.14325, word_
	movl	-124(%rbp), %eax	# allocno_, tmp717
	movl	%eax, -132(%rbp)	# tmp717, j
	jmp	.L312	#
.L314:
	movq	-56(%rbp), %rax	# word_, tmp718
	andl	$1, %eax	#, D.14312
	testq	%rax, %rax	# D.14312
	je	.L313	#,
	.loc 1 1295 0 discriminator 1
	movq	allocno(%rip), %rax	# allocno, allocno.351
	movl	-132(%rbp), %edx	# j, tmp719
	movslq	%edx, %rdx	# tmp719, D.14312
	salq	$6, %rdx	#, D.14312
	addq	%rax, %rdx	# allocno.351, D.14313
	movq	allocno(%rip), %rax	# allocno, allocno.352
	movl	-132(%rbp), %ecx	# j, tmp720
	movslq	%ecx, %rcx	# tmp720, D.14312
	salq	$6, %rcx	#, D.14312
	addq	%rcx, %rax	# D.14312, D.14313
	movq	24(%rax), %rax	# _615->hard_reg_conflicts, D.14312
	orq	-72(%rbp), %rax	# this_reg, D.14312
	movq	%rax, 24(%rdx)	# D.14312, _611->hard_reg_conflicts
.L313:
	.loc 1 1295 0 discriminator 2
	shrq	-56(%rbp)	# word_
	addl	$1, -132(%rbp)	#, j
.L312:
	.loc 1 1295 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, word_
	jne	.L314	#,
.LBE32:
	.loc 1 1295 0 discriminator 3
	subl	$1, -128(%rbp)	#, i_
	addl	$64, -124(%rbp)	#, allocno_
.L311:
	.loc 1 1295 0 discriminator 1
	cmpl	$0, -128(%rbp)	#, i_
	jns	.L315	#,
.L152:
.LBE31:
.LBE30:
	.loc 1 1300 0 is_stmt 1
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	find_reg, .-find_reg
	.globl	retry_global_alloc
	.type	retry_global_alloc, @function
retry_global_alloc:
.LFB8:
	.loc 1 1313 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	movq	%rsi, -32(%rbp)	# forbidden_regs, forbidden_regs
	.loc 1 1314 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.353
	movl	-20(%rbp), %edx	# regno, tmp87
	movslq	%edx, %rdx	# tmp87, D.14326
	salq	$2, %rdx	#, D.14326
	addq	%rdx, %rax	# D.14326, D.14327
	movl	(%rax), %eax	# *_5, tmp88
	movl	%eax, -4(%rbp)	# tmp88, alloc_no
	.loc 1 1315 0
	cmpl	$0, -4(%rbp)	#, alloc_no
	js	.L317	#,
	.loc 1 1321 0
	movq	-32(%rbp), %rsi	# forbidden_regs, tmp89
	movl	-4(%rbp), %eax	# alloc_no, tmp90
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp90,
	call	find_reg	#
	.loc 1 1322 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.354
	movl	-20(%rbp), %edx	# regno, tmp91
	movslq	%edx, %rdx	# tmp91, D.14326
	addq	%rdx, %rdx	# D.14326
	addq	%rdx, %rax	# D.14326, D.14328
	movzwl	(%rax), %eax	# *_11, D.14329
	testw	%ax, %ax	# D.14329
	jns	.L319	#,
	.loc 1 1323 0
	movl	-20(%rbp), %eax	# regno, tmp92
	movl	%eax, %edi	# tmp92,
	call	reg_alternate_class	#
	testl	%eax, %eax	# D.14330
	je	.L319	#,
	.loc 1 1324 0
	movq	-32(%rbp), %rsi	# forbidden_regs, tmp93
	movl	-4(%rbp), %eax	# alloc_no, tmp94
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp94,
	call	find_reg	#
.L319:
	.loc 1 1328 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.355
	movl	-20(%rbp), %edx	# regno, tmp95
	movslq	%edx, %rdx	# tmp95, D.14326
	addq	%rdx, %rdx	# D.14326
	addq	%rdx, %rax	# D.14326, D.14328
	movzwl	(%rax), %eax	# *_17, D.14329
	testw	%ax, %ax	# D.14329
	js	.L317	#,
	.loc 1 1330 0
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	24(%rax), %rax	# cfun.356_19->emit, D.14331
	movq	80(%rax), %rax	# _20->x_regno_reg_rtx, D.14332
	movl	-20(%rbp), %edx	# regno, tmp96
	movslq	%edx, %rdx	# tmp96, D.14326
	salq	$3, %rdx	#, D.14326
	addq	%rdx, %rax	# D.14326, D.14332
	movq	(%rax), %rax	# *_24, D.14333
	movq	reg_renumber(%rip), %rdx	# reg_renumber, reg_renumber.357
	movl	-20(%rbp), %ecx	# regno, tmp97
	movslq	%ecx, %rcx	# tmp97, D.14326
	addq	%rcx, %rcx	# D.14326
	addq	%rcx, %rdx	# D.14326, D.14328
	movzwl	(%rdx), %edx	# *_29, D.14329
	movswl	%dx, %edx	# D.14329, D.14334
	movl	%edx, 8(%rax)	# D.14334, _25->fld[0].rtuint
	.loc 1 1331 0
	movl	-20(%rbp), %eax	# regno, tmp98
	movl	%eax, %edi	# tmp98,
	call	mark_home_live	#
.L317:
	.loc 1 1334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	retry_global_alloc, .-retry_global_alloc
	.type	record_one_conflict, @function
record_one_conflict:
.LFB9:
	.loc 1 1345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -52(%rbp)	# regno, regno
	.loc 1 1348 0
	cmpl	$52, -52(%rbp)	#, regno
	jg	.L321	#,
.LBB33:
	.loc 1 1351 0
	movq	allocnos_live(%rip), %rax	# allocnos_live, tmp108
	movq	%rax, -16(%rbp)	# tmp108, p_
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.358
	subl	$1, %eax	#, tmp109
	movl	%eax, -32(%rbp)	# tmp109, i_
	movl	$0, -28(%rbp)	#, allocno_
	jmp	.L322	#
.L326:
.LBB34:
	.loc 1 1351 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# p_, p_.359
	leaq	8(%rax), %rdx	#, tmp110
	movq	%rdx, -16(%rbp)	# tmp110, p_
	movq	(%rax), %rax	# *p_.359_12, D.14335
	movq	%rax, -8(%rbp)	# D.14335, word_
	movl	-28(%rbp), %eax	# allocno_, tmp111
	movl	%eax, -36(%rbp)	# tmp111, j
	jmp	.L323	#
.L325:
	movq	-8(%rbp), %rax	# word_, tmp112
	andl	$1, %eax	#, D.14336
	testq	%rax, %rax	# D.14336
	je	.L324	#,
	.loc 1 1351 0 discriminator 1
	movq	allocno(%rip), %rax	# allocno, allocno.360
	movl	-36(%rbp), %edx	# j, tmp113
	movslq	%edx, %rdx	# tmp113, D.14336
	salq	$6, %rdx	#, D.14336
	addq	%rax, %rdx	# allocno.360, D.14337
	movq	allocno(%rip), %rax	# allocno, allocno.361
	movl	-36(%rbp), %ecx	# j, tmp114
	movslq	%ecx, %rcx	# tmp114, D.14336
	salq	$6, %rcx	#, D.14336
	addq	%rcx, %rax	# D.14336, D.14337
	movq	24(%rax), %rsi	# _25->hard_reg_conflicts, D.14336
	movl	-52(%rbp), %eax	# regno, tmp115
	movl	$1, %edi	#, tmp116
	movl	%eax, %ecx	# tmp115, tmp130
	salq	%cl, %rdi	# tmp130, D.14336
	movq	%rdi, %rax	# D.14336, D.14336
	orq	%rsi, %rax	# D.14336, D.14336
	movq	%rax, 24(%rdx)	# D.14336, _21->hard_reg_conflicts
.L324:
	.loc 1 1351 0 discriminator 2
	shrq	-8(%rbp)	# word_
	addl	$1, -36(%rbp)	#, j
.L323:
	.loc 1 1351 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, word_
	jne	.L325	#,
.LBE34:
	.loc 1 1351 0 discriminator 3
	subl	$1, -32(%rbp)	#, i_
	addl	$64, -28(%rbp)	#, allocno_
.L322:
	.loc 1 1351 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, i_
	jns	.L326	#,
.LBE33:
	jmp	.L320	#
.L321:
.LBB35:
	.loc 1 1360 0 is_stmt 1
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.362
	movl	-52(%rbp), %edx	# regno, tmp117
	movslq	%edx, %rdx	# tmp117, D.14336
	salq	$2, %rdx	#, D.14336
	addq	%rdx, %rax	# D.14336, D.14338
	movl	(%rax), %eax	# *_36, tmp118
	movl	%eax, -24(%rbp)	# tmp118, ialloc
	.loc 1 1361 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.363
	movl	-24(%rbp), %edx	# ialloc, tmp120
	imull	%edx, %eax	# tmp120, tmp119
	movl	%eax, -20(%rbp)	# tmp119, ialloc_prod
	.loc 1 1363 0
	movq	allocno(%rip), %rax	# allocno, allocno.364
	movl	-24(%rbp), %edx	# ialloc, tmp121
	movslq	%edx, %rdx	# tmp121, D.14336
	salq	$6, %rdx	#, D.14336
	addq	%rdx, %rax	# D.14336, D.14337
	movq	allocno(%rip), %rdx	# allocno, allocno.365
	movl	-24(%rbp), %ecx	# ialloc, tmp122
	movslq	%ecx, %rcx	# tmp122, D.14336
	salq	$6, %rcx	#, D.14336
	addq	%rcx, %rdx	# D.14336, D.14337
	movq	24(%rdx), %rcx	# _47->hard_reg_conflicts, D.14336
	movq	hard_regs_live(%rip), %rdx	# hard_regs_live, hard_regs_live.366
	orq	%rcx, %rdx	# D.14336, D.14336
	movq	%rdx, 24(%rax)	# D.14336, _43->hard_reg_conflicts
	.loc 1 1364 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.367
	subl	$1, %eax	#, tmp123
	movl	%eax, -36(%rbp)	# tmp123, j
	jmp	.L328	#
.L329:
	.loc 1 1375 0 discriminator 2
	movq	conflicts(%rip), %rax	# conflicts, conflicts.368
	movl	-36(%rbp), %edx	# j, tmp124
	movl	-20(%rbp), %ecx	# ialloc_prod, tmp125
	addl	%ecx, %edx	# tmp125, D.14339
	movslq	%edx, %rdx	# D.14339, D.14336
	salq	$3, %rdx	#, D.14336
	addq	%rdx, %rax	# D.14336, D.14340
	movq	conflicts(%rip), %rdx	# conflicts, conflicts.369
	movl	-36(%rbp), %ecx	# j, tmp126
	movl	-20(%rbp), %esi	# ialloc_prod, tmp127
	addl	%esi, %ecx	# tmp127, D.14339
	movslq	%ecx, %rcx	# D.14339, D.14336
	salq	$3, %rcx	#, D.14336
	addq	%rcx, %rdx	# D.14336, D.14340
	movq	(%rdx), %rcx	# *_62, D.14335
	movq	allocnos_live(%rip), %rdx	# allocnos_live, allocnos_live.370
	movl	-36(%rbp), %esi	# j, tmp128
	movslq	%esi, %rsi	# tmp128, D.14336
	salq	$3, %rsi	#, D.14336
	addq	%rsi, %rdx	# D.14336, D.14340
	movq	(%rdx), %rdx	# *_67, D.14335
	orq	%rcx, %rdx	# D.14335, D.14335
	movq	%rdx, (%rax)	# D.14335, *_57
	.loc 1 1364 0 discriminator 2
	subl	$1, -36(%rbp)	#, j
.L328:
	.loc 1 1364 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, j
	jns	.L329	#,
.L320:
.LBE35:
	.loc 1 1378 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	record_one_conflict, .-record_one_conflict
	.type	record_conflicts, @function
record_conflicts:
.LFB10:
	.loc 1 1390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# allocno_vec, allocno_vec
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 1394 0
	jmp	.L331	#
.L332:
	.loc 1 1396 0
	movl	-28(%rbp), %eax	# len, tmp74
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14341
	movq	-24(%rbp), %rax	# allocno_vec, tmp75
	addq	%rdx, %rax	# D.14341, D.14342
	movl	(%rax), %eax	# *_7, tmp76
	movl	%eax, -8(%rbp)	# tmp76, num
	.loc 1 1397 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.371
	movl	-8(%rbp), %edx	# num, tmp78
	imull	%edx, %eax	# tmp78, tmp77
	movl	%eax, -4(%rbp)	# tmp77, ialloc_prod
	.loc 1 1398 0
	movq	allocno(%rip), %rax	# allocno, allocno.372
	movl	-8(%rbp), %edx	# num, tmp79
	movslq	%edx, %rdx	# tmp79, D.14341
	salq	$6, %rdx	#, D.14341
	addq	%rdx, %rax	# D.14341, D.14343
	movq	allocno(%rip), %rdx	# allocno, allocno.373
	movl	-8(%rbp), %ecx	# num, tmp80
	movslq	%ecx, %rcx	# tmp80, D.14341
	salq	$6, %rcx	#, D.14341
	addq	%rcx, %rdx	# D.14341, D.14343
	movq	24(%rdx), %rcx	# _18->hard_reg_conflicts, D.14341
	movq	hard_regs_live(%rip), %rdx	# hard_regs_live, hard_regs_live.374
	orq	%rcx, %rdx	# D.14341, D.14341
	movq	%rdx, 24(%rax)	# D.14341, _14->hard_reg_conflicts
.L331:
	.loc 1 1394 0 discriminator 1
	subl	$1, -28(%rbp)	#, len
	cmpl	$0, -28(%rbp)	#, len
	jns	.L332	#,
	.loc 1 1400 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	record_conflicts, .-record_conflicts
	.type	mirror_conflicts, @function
mirror_conflicts:
.LFB11:
	.loc 1 1405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1407 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, tmp72
	movl	%eax, -56(%rbp)	# tmp72, rw
	.loc 1 1408 0
	movl	-56(%rbp), %eax	# rw, tmp76
	sall	$6, %eax	#, tmp75
	movl	%eax, -52(%rbp)	# tmp75, rwb
	.loc 1 1409 0
	movq	conflicts(%rip), %rax	# conflicts, tmp77
	movq	%rax, -48(%rbp)	# tmp77, p
	.loc 1 1410 0
	movq	conflicts(%rip), %rax	# conflicts, tmp78
	movq	%rax, -40(%rbp)	# tmp78, q0
	.loc 1 1413 0
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.375
	subl	$1, %eax	#, tmp79
	movl	%eax, -64(%rbp)	# tmp79, i
	movq	$1, -16(%rbp)	#, mask
	jmp	.L334	#
.L341:
	.loc 1 1415 0
	cmpq	$0, -16(%rbp)	#, mask
	jne	.L335	#,
	.loc 1 1417 0
	movq	$1, -16(%rbp)	#, mask
	.loc 1 1418 0
	addq	$8, -40(%rbp)	#, q0
.L335:
	.loc 1 1420 0
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.376
	subl	$1, %eax	#, tmp80
	movl	%eax, -60(%rbp)	# tmp80, j
	movq	-40(%rbp), %rax	# q0, tmp81
	movq	%rax, -32(%rbp)	# tmp81, q1
	jmp	.L336	#
.L340:
.LBB36:
	.loc 1 1424 0
	movq	-48(%rbp), %rax	# p, p.377
	leaq	8(%rax), %rdx	#, tmp82
	movq	%rdx, -48(%rbp)	# tmp82, p
	movq	(%rax), %rax	# *p.377_24, D.14344
	movq	%rax, -8(%rbp)	# D.14344, word
	movq	-32(%rbp), %rax	# q1, tmp83
	movq	%rax, -24(%rbp)	# tmp83, q2
	jmp	.L337	#
.L339:
	.loc 1 1427 0
	movq	-8(%rbp), %rax	# word, tmp84
	andl	$1, %eax	#, D.14345
	testq	%rax, %rax	# D.14345
	je	.L338	#,
	.loc 1 1428 0
	movq	-24(%rbp), %rax	# q2, tmp85
	movq	(%rax), %rax	# *q2_8, D.14344
	orq	-16(%rbp), %rax	# mask, D.14345
	movq	%rax, %rdx	# D.14345, D.14344
	movq	-24(%rbp), %rax	# q2, tmp86
	movq	%rdx, (%rax)	# D.14344, *q2_8
.L338:
	.loc 1 1425 0
	shrq	-8(%rbp)	# word
	movl	-56(%rbp), %eax	# rw, tmp87
	cltq
	salq	$3, %rax	#, D.14345
	addq	%rax, -24(%rbp)	# D.14345, q2
.L337:
	.loc 1 1424 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, word
	jne	.L339	#,
.LBE36:
	.loc 1 1420 0
	subl	$1, -60(%rbp)	#, j
	movl	-52(%rbp), %eax	# rwb, tmp88
	cltq
	salq	$3, %rax	#, D.14345
	addq	%rax, -32(%rbp)	# D.14345, q1
.L336:
	.loc 1 1420 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, j
	jns	.L340	#,
	.loc 1 1413 0 is_stmt 1
	subl	$1, -64(%rbp)	#, i
	salq	-16(%rbp)	# mask
.L334:
	.loc 1 1413 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, i
	jns	.L341	#,
	.loc 1 1432 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mirror_conflicts, .-mirror_conflicts
	.type	mark_reg_store, @function
mark_reg_store:
.LFB12:
	.loc 1 1455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# reg, reg
	movq	%rsi, -48(%rbp)	# setter, setter
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 1458 0
	movq	-40(%rbp), %rax	# reg, tmp144
	movzwl	(%rax), %eax	# reg_12(D)->code, D.14346
	cmpw	$63, %ax	#, D.14346
	jne	.L343	#,
	.loc 1 1459 0
	movq	-40(%rbp), %rax	# reg, tmp145
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, tmp146
	movq	%rax, -40(%rbp)	# tmp146, reg
.L343:
	.loc 1 1461 0
	movq	-40(%rbp), %rax	# reg, tmp147
	movzwl	(%rax), %eax	# reg_1->code, D.14346
	cmpw	$61, %ax	#, D.14346
	je	.L344	#,
	.loc 1 1462 0
	jmp	.L342	#
.L344:
	.loc 1 1464 0
	movq	regs_set(%rip), %rcx	# regs_set, regs_set.378
	movl	n_regs_set(%rip), %eax	# n_regs_set, n_regs_set.379
	leal	1(%rax), %edx	#, n_regs_set.381
	movl	%edx, n_regs_set(%rip)	# n_regs_set.381, n_regs_set
	cltq
	salq	$3, %rax	#, D.14347
	leaq	(%rcx,%rax), %rdx	#, D.14348
	movq	-40(%rbp), %rax	# reg, tmp148
	movq	%rax, (%rdx)	# tmp148, *_22
	.loc 1 1466 0
	cmpq	$0, -48(%rbp)	#, setter
	je	.L346	#,
	.loc 1 1466 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# setter, tmp149
	movzwl	(%rax), %eax	# setter_23(D)->code, D.14346
	cmpw	$49, %ax	#, D.14346
	je	.L346	#,
	.loc 1 1467 0 is_stmt 1
	movq	-48(%rbp), %rax	# setter, tmp150
	movq	16(%rax), %rdx	# setter_23(D)->fld[1].rtx, D.14349
	movq	-40(%rbp), %rax	# reg, tmp151
	movq	%rdx, %rsi	# D.14349,
	movq	%rax, %rdi	# tmp151,
	call	set_preference	#
.L346:
	.loc 1 1469 0
	movq	-40(%rbp), %rax	# reg, tmp152
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.14350
	movl	%eax, -24(%rbp)	# D.14350, regno
	.loc 1 1473 0
	cmpl	$52, -24(%rbp)	#, regno
	jle	.L347	#,
	.loc 1 1475 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.382
	movl	-24(%rbp), %edx	# regno, tmp153
	movslq	%edx, %rdx	# tmp153, D.14347
	salq	$2, %rdx	#, D.14347
	addq	%rdx, %rax	# D.14347, D.14351
	movl	(%rax), %eax	# *_31, D.14352
	testl	%eax, %eax	# D.14352
	js	.L347	#,
	.loc 1 1477 0
	movq	allocnos_live(%rip), %rdx	# allocnos_live, allocnos_live.383
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.384
	movl	-24(%rbp), %ecx	# regno, tmp154
	movslq	%ecx, %rcx	# tmp154, D.14347
	salq	$2, %rcx	#, D.14347
	addq	%rcx, %rax	# D.14347, D.14351
	movl	(%rax), %eax	# *_37, D.14352
	shrl	$6, %eax	#, D.14350
	movl	%eax, %ecx	# D.14350, D.14347
	salq	$3, %rcx	#, D.14347
	addq	%rcx, %rdx	# D.14347, D.14353
	movq	allocnos_live(%rip), %rcx	# allocnos_live, allocnos_live.385
	movl	%eax, %eax	# D.14350, D.14347
	salq	$3, %rax	#, D.14347
	addq	%rcx, %rax	# allocnos_live.385, D.14353
	movq	(%rax), %rax	# *_47, D.14354
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.386
	movl	-24(%rbp), %esi	# regno, tmp155
	movslq	%esi, %rsi	# tmp155, D.14347
	salq	$2, %rsi	#, D.14347
	addq	%rsi, %rcx	# D.14347, D.14351
	movl	(%rcx), %ecx	# *_52, D.14352
	andl	$63, %ecx	#, D.14352
	movl	$1, %esi	#, tmp156
	salq	%cl, %rsi	# D.14352, D.14354
	movq	%rsi, %rcx	# D.14354, D.14354
	orq	%rcx, %rax	# D.14354, D.14354
	movq	%rax, (%rdx)	# D.14354, *_43
	.loc 1 1478 0
	movl	-24(%rbp), %eax	# regno, tmp157
	movl	%eax, %edi	# tmp157,
	call	record_one_conflict	#
.L347:
	.loc 1 1482 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.387
	movl	-24(%rbp), %edx	# regno, tmp158
	movslq	%edx, %rdx	# tmp158, D.14347
	addq	%rdx, %rdx	# D.14347
	addq	%rdx, %rax	# D.14347, D.14355
	movzwl	(%rax), %eax	# *_60, D.14356
	testw	%ax, %ax	# D.14356
	js	.L348	#,
	.loc 1 1483 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.388
	movl	-24(%rbp), %edx	# regno, tmp159
	movslq	%edx, %rdx	# tmp159, D.14347
	addq	%rdx, %rdx	# D.14347
	addq	%rdx, %rax	# D.14347, D.14355
	movzwl	(%rax), %eax	# *_65, D.14356
	cwtl
	movl	%eax, -24(%rbp)	# tmp160, regno
.L348:
	.loc 1 1486 0
	cmpl	$52, -24(%rbp)	#, regno
	jg	.L342	#,
	.loc 1 1486 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# regno, tmp162
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14357
	testb	%al, %al	# D.14357
	jne	.L342	#,
.LBB37:
	.loc 1 1488 0 is_stmt 1
	cmpl	$7, -24(%rbp)	#, regno
	jle	.L349	#,
	.loc 1 1488 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jle	.L350	#,
.L349:
	.loc 1 1488 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jle	.L351	#,
	.loc 1 1488 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L350	#,
.L351:
	.loc 1 1488 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jle	.L352	#,
	.loc 1 1488 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jle	.L350	#,
.L352:
	.loc 1 1488 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L353	#,
	.loc 1 1488 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	jg	.L353	#,
.L350:
	movq	-40(%rbp), %rax	# reg, tmp163
	movzbl	2(%rax), %eax	# reg_1->mode, D.14358
	movzbl	%al, %eax	# D.14358, D.14352
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14359
	cmpl	$5, %eax	#, D.14359
	je	.L354	#,
	.loc 1 1488 0 discriminator 2
	movq	-40(%rbp), %rax	# reg, tmp165
	movzbl	2(%rax), %eax	# reg_1->mode, D.14358
	movzbl	%al, %eax	# D.14358, D.14352
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14359
	cmpl	$6, %eax	#, D.14359
	jne	.L355	#,
.L354:
	.loc 1 1488 0 discriminator 1
	movl	$2, %eax	#, iftmp.390
	jmp	.L356	#
.L355:
	movl	$1, %eax	#, iftmp.390
.L356:
	.loc 1 1488 0 discriminator 3
	jmp	.L357	#
.L353:
	.loc 1 1488 0 discriminator 2
	movq	-40(%rbp), %rax	# reg, tmp167
	movzbl	2(%rax), %eax	# reg_1->mode, D.14358
	cmpb	$18, %al	#, D.14358
	jne	.L358	#,
	.loc 1 1488 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.393
	andl	$33554432, %eax	#, D.14352
	testl	%eax, %eax	# D.14352
	je	.L359	#,
	movl	$2, %eax	#, iftmp.392
	jmp	.L357	#
.L359:
	.loc 1 1488 0 discriminator 2
	movl	$3, %eax	#, iftmp.392
	jmp	.L357	#
.L358:
	movq	-40(%rbp), %rax	# reg, tmp168
	movzbl	2(%rax), %eax	# reg_1->mode, D.14358
	cmpb	$24, %al	#, D.14358
	jne	.L362	#,
	.loc 1 1488 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.396
	andl	$33554432, %eax	#, D.14352
	testl	%eax, %eax	# D.14352
	je	.L363	#,
	movl	$4, %eax	#, iftmp.395
	jmp	.L357	#
.L363:
	.loc 1 1488 0 discriminator 2
	movl	$6, %eax	#, iftmp.395
	jmp	.L357	#
.L362:
	movq	-40(%rbp), %rax	# reg, tmp169
	movzbl	2(%rax), %eax	# reg_1->mode, D.14358
	movzbl	%al, %eax	# D.14358, D.14352
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14358
	movzbl	%al, %edx	# D.14358, D.14352
	movl	target_flags(%rip), %eax	# target_flags, target_flags.398
	andl	$33554432, %eax	#, D.14352
	testl	%eax, %eax	# D.14352
	je	.L366	#,
	.loc 1 1488 0 discriminator 1
	movl	$8, %eax	#, iftmp.397
	jmp	.L367	#
.L366:
	.loc 1 1488 0 discriminator 2
	movl	$4, %eax	#, iftmp.397
.L367:
	.loc 1 1488 0 discriminator 3
	addl	%edx, %eax	# D.14352, D.14352
	subl	$1, %eax	#, D.14352
	movl	target_flags(%rip), %edx	# target_flags, target_flags.400
	andl	$33554432, %edx	#, D.14352
	testl	%edx, %edx	# D.14352
	je	.L368	#,
	.loc 1 1488 0 discriminator 1
	movl	$8, %ebx	#, iftmp.399
	jmp	.L369	#
.L368:
	.loc 1 1488 0 discriminator 2
	movl	$4, %ebx	#, iftmp.399
.L369:
	.loc 1 1488 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.399
.L357:
	movl	-24(%rbp), %edx	# regno, tmp176
	addl	%edx, %eax	# tmp176, tmp175
	movl	%eax, -20(%rbp)	# tmp175, last
	.loc 1 1489 0 is_stmt 1 discriminator 3
	jmp	.L370	#
.L371:
	.loc 1 1491 0
	movl	-24(%rbp), %eax	# regno, tmp177
	movl	%eax, %edi	# tmp177,
	call	record_one_conflict	#
	.loc 1 1492 0
	movl	-24(%rbp), %eax	# regno, tmp178
	movl	$1, %edx	#, tmp179
	movl	%eax, %ecx	# tmp178, tmp183
	salq	%cl, %rdx	# tmp183, D.14347
	movq	hard_regs_live(%rip), %rax	# hard_regs_live, hard_regs_live.401
	orq	%rdx, %rax	# D.14347, hard_regs_live.402
	movq	%rax, hard_regs_live(%rip)	# hard_regs_live.402, hard_regs_live
	.loc 1 1493 0
	addl	$1, -24(%rbp)	#, regno
.L370:
	.loc 1 1489 0 discriminator 1
	movl	-24(%rbp), %eax	# regno, tmp180
	cmpl	-20(%rbp), %eax	# last, tmp180
	jl	.L371	#,
.L342:
.LBE37:
	.loc 1 1496 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	mark_reg_store, .-mark_reg_store
	.type	mark_reg_clobber, @function
mark_reg_clobber:
.LFB13:
	.loc 1 1504 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# setter, setter
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 1505 0
	movq	-16(%rbp), %rax	# setter, tmp60
	movzwl	(%rax), %eax	# setter_1(D)->code, D.14360
	cmpw	$49, %ax	#, D.14360
	jne	.L372	#,
	.loc 1 1506 0
	movq	-24(%rbp), %rdx	# data, tmp61
	movq	-16(%rbp), %rcx	# setter, tmp62
	movq	-8(%rbp), %rax	# reg, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	mark_reg_store	#
.L372:
	.loc 1 1507 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	mark_reg_clobber, .-mark_reg_clobber
	.type	mark_reg_conflicts, @function
mark_reg_conflicts:
.LFB14:
	.loc 1 1515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	.loc 1 1518 0
	movq	-24(%rbp), %rax	# reg, tmp108
	movzwl	(%rax), %eax	# reg_12(D)->code, D.14361
	cmpw	$63, %ax	#, D.14361
	jne	.L375	#,
	.loc 1 1519 0
	movq	-24(%rbp), %rax	# reg, tmp109
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, tmp110
	movq	%rax, -24(%rbp)	# tmp110, reg
.L375:
	.loc 1 1521 0
	movq	-24(%rbp), %rax	# reg, tmp111
	movzwl	(%rax), %eax	# reg_1->code, D.14361
	cmpw	$61, %ax	#, D.14361
	je	.L376	#,
	.loc 1 1522 0
	jmp	.L374	#
.L376:
	.loc 1 1524 0
	movq	-24(%rbp), %rax	# reg, tmp112
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.14362
	movl	%eax, -8(%rbp)	# D.14362, regno
	.loc 1 1528 0
	cmpl	$52, -8(%rbp)	#, regno
	jle	.L378	#,
	.loc 1 1530 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.403
	movl	-8(%rbp), %edx	# regno, tmp113
	movslq	%edx, %rdx	# tmp113, D.14363
	salq	$2, %rdx	#, D.14363
	addq	%rdx, %rax	# D.14363, D.14364
	movl	(%rax), %eax	# *_21, D.14365
	testl	%eax, %eax	# D.14365
	js	.L378	#,
	.loc 1 1531 0
	movl	-8(%rbp), %eax	# regno, tmp114
	movl	%eax, %edi	# tmp114,
	call	record_one_conflict	#
.L378:
	.loc 1 1534 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.404
	movl	-8(%rbp), %edx	# regno, tmp115
	movslq	%edx, %rdx	# tmp115, D.14363
	addq	%rdx, %rdx	# D.14363
	addq	%rdx, %rax	# D.14363, D.14366
	movzwl	(%rax), %eax	# *_26, D.14367
	testw	%ax, %ax	# D.14367
	js	.L379	#,
	.loc 1 1535 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.405
	movl	-8(%rbp), %edx	# regno, tmp116
	movslq	%edx, %rdx	# tmp116, D.14363
	addq	%rdx, %rdx	# D.14363
	addq	%rdx, %rax	# D.14363, D.14366
	movzwl	(%rax), %eax	# *_31, D.14367
	cwtl
	movl	%eax, -8(%rbp)	# tmp117, regno
.L379:
	.loc 1 1538 0
	cmpl	$52, -8(%rbp)	#, regno
	jg	.L374	#,
	.loc 1 1538 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# regno, tmp119
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14368
	testb	%al, %al	# D.14368
	jne	.L374	#,
.LBB38:
	.loc 1 1540 0 is_stmt 1
	cmpl	$7, -8(%rbp)	#, regno
	jle	.L380	#,
	.loc 1 1540 0 is_stmt 0 discriminator 1
	cmpl	$15, -8(%rbp)	#, regno
	jle	.L381	#,
.L380:
	.loc 1 1540 0 discriminator 2
	cmpl	$20, -8(%rbp)	#, regno
	jle	.L382	#,
	.loc 1 1540 0 discriminator 1
	cmpl	$28, -8(%rbp)	#, regno
	jle	.L381	#,
.L382:
	.loc 1 1540 0 discriminator 2
	cmpl	$44, -8(%rbp)	#, regno
	jle	.L383	#,
	.loc 1 1540 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, regno
	jle	.L381	#,
.L383:
	.loc 1 1540 0 discriminator 2
	cmpl	$28, -8(%rbp)	#, regno
	jle	.L384	#,
	.loc 1 1540 0 discriminator 1
	cmpl	$36, -8(%rbp)	#, regno
	jg	.L384	#,
.L381:
	movq	-24(%rbp), %rax	# reg, tmp120
	movzbl	2(%rax), %eax	# reg_1->mode, D.14369
	movzbl	%al, %eax	# D.14369, D.14365
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14370
	cmpl	$5, %eax	#, D.14370
	je	.L385	#,
	.loc 1 1540 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp122
	movzbl	2(%rax), %eax	# reg_1->mode, D.14369
	movzbl	%al, %eax	# D.14369, D.14365
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14370
	cmpl	$6, %eax	#, D.14370
	jne	.L386	#,
.L385:
	.loc 1 1540 0 discriminator 1
	movl	$2, %eax	#, iftmp.407
	jmp	.L387	#
.L386:
	movl	$1, %eax	#, iftmp.407
.L387:
	.loc 1 1540 0 discriminator 3
	jmp	.L388	#
.L384:
	.loc 1 1540 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp124
	movzbl	2(%rax), %eax	# reg_1->mode, D.14369
	cmpb	$18, %al	#, D.14369
	jne	.L389	#,
	.loc 1 1540 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.410
	andl	$33554432, %eax	#, D.14365
	testl	%eax, %eax	# D.14365
	je	.L390	#,
	movl	$2, %eax	#, iftmp.409
	jmp	.L388	#
.L390:
	.loc 1 1540 0 discriminator 2
	movl	$3, %eax	#, iftmp.409
	jmp	.L388	#
.L389:
	movq	-24(%rbp), %rax	# reg, tmp125
	movzbl	2(%rax), %eax	# reg_1->mode, D.14369
	cmpb	$24, %al	#, D.14369
	jne	.L393	#,
	.loc 1 1540 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.413
	andl	$33554432, %eax	#, D.14365
	testl	%eax, %eax	# D.14365
	je	.L394	#,
	movl	$4, %eax	#, iftmp.412
	jmp	.L388	#
.L394:
	.loc 1 1540 0 discriminator 2
	movl	$6, %eax	#, iftmp.412
	jmp	.L388	#
.L393:
	movq	-24(%rbp), %rax	# reg, tmp126
	movzbl	2(%rax), %eax	# reg_1->mode, D.14369
	movzbl	%al, %eax	# D.14369, D.14365
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14369
	movzbl	%al, %edx	# D.14369, D.14365
	movl	target_flags(%rip), %eax	# target_flags, target_flags.415
	andl	$33554432, %eax	#, D.14365
	testl	%eax, %eax	# D.14365
	je	.L397	#,
	.loc 1 1540 0 discriminator 1
	movl	$8, %eax	#, iftmp.414
	jmp	.L398	#
.L397:
	.loc 1 1540 0 discriminator 2
	movl	$4, %eax	#, iftmp.414
.L398:
	.loc 1 1540 0 discriminator 3
	addl	%edx, %eax	# D.14365, D.14365
	subl	$1, %eax	#, D.14365
	movl	target_flags(%rip), %edx	# target_flags, target_flags.417
	andl	$33554432, %edx	#, D.14365
	testl	%edx, %edx	# D.14365
	je	.L399	#,
	.loc 1 1540 0 discriminator 1
	movl	$8, %ecx	#, iftmp.416
	jmp	.L400	#
.L399:
	.loc 1 1540 0 discriminator 2
	movl	$4, %ecx	#, iftmp.416
.L400:
	.loc 1 1540 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.416
.L388:
	movl	-8(%rbp), %edx	# regno, tmp133
	addl	%edx, %eax	# tmp133, tmp132
	movl	%eax, -4(%rbp)	# tmp132, last
	.loc 1 1541 0 is_stmt 1 discriminator 3
	jmp	.L401	#
.L402:
	.loc 1 1543 0
	movl	-8(%rbp), %eax	# regno, tmp134
	movl	%eax, %edi	# tmp134,
	call	record_one_conflict	#
	.loc 1 1544 0
	addl	$1, -8(%rbp)	#, regno
.L401:
	.loc 1 1541 0 discriminator 1
	movl	-8(%rbp), %eax	# regno, tmp135
	cmpl	-4(%rbp), %eax	# last, tmp135
	jl	.L402	#,
.L374:
.LBE38:
	.loc 1 1547 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	mark_reg_conflicts, .-mark_reg_conflicts
	.type	mark_reg_death, @function
mark_reg_death:
.LFB15:
	.loc 1 1555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# reg, reg
	.loc 1 1556 0
	movq	-32(%rbp), %rax	# reg, tmp135
	movl	8(%rax), %eax	# reg_11(D)->fld[0].rtuint, D.14371
	movl	%eax, -16(%rbp)	# D.14371, regno
	.loc 1 1560 0
	cmpl	$52, -16(%rbp)	#, regno
	jle	.L404	#,
	.loc 1 1562 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.418
	movl	-16(%rbp), %edx	# regno, tmp136
	movslq	%edx, %rdx	# tmp136, D.14372
	salq	$2, %rdx	#, D.14372
	addq	%rdx, %rax	# D.14372, D.14373
	movl	(%rax), %eax	# *_17, D.14374
	testl	%eax, %eax	# D.14374
	js	.L404	#,
	.loc 1 1563 0
	movq	allocnos_live(%rip), %rdx	# allocnos_live, allocnos_live.419
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.420
	movl	-16(%rbp), %ecx	# regno, tmp137
	movslq	%ecx, %rcx	# tmp137, D.14372
	salq	$2, %rcx	#, D.14372
	addq	%rcx, %rax	# D.14372, D.14373
	movl	(%rax), %eax	# *_23, D.14374
	shrl	$6, %eax	#, D.14371
	movl	%eax, %ecx	# D.14371, D.14372
	salq	$3, %rcx	#, D.14372
	addq	%rcx, %rdx	# D.14372, D.14375
	movq	allocnos_live(%rip), %rcx	# allocnos_live, allocnos_live.421
	movl	%eax, %eax	# D.14371, D.14372
	salq	$3, %rax	#, D.14372
	addq	%rcx, %rax	# allocnos_live.421, D.14375
	movq	(%rax), %rax	# *_33, D.14376
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.422
	movl	-16(%rbp), %esi	# regno, tmp138
	movslq	%esi, %rsi	# tmp138, D.14372
	salq	$2, %rsi	#, D.14372
	addq	%rsi, %rcx	# D.14372, D.14373
	movl	(%rcx), %ecx	# *_38, D.14374
	andl	$63, %ecx	#, D.14374
	movl	$1, %esi	#, tmp139
	salq	%cl, %rsi	# D.14374, D.14376
	movq	%rsi, %rcx	# D.14376, D.14376
	notq	%rcx	# D.14376
	andq	%rcx, %rax	# D.14376, D.14376
	movq	%rax, (%rdx)	# D.14376, *_29
.L404:
	.loc 1 1567 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.423
	movl	-16(%rbp), %edx	# regno, tmp140
	movslq	%edx, %rdx	# tmp140, D.14372
	addq	%rdx, %rdx	# D.14372
	addq	%rdx, %rax	# D.14372, D.14377
	movzwl	(%rax), %eax	# *_47, D.14378
	testw	%ax, %ax	# D.14378
	js	.L405	#,
	.loc 1 1568 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.424
	movl	-16(%rbp), %edx	# regno, tmp141
	movslq	%edx, %rdx	# tmp141, D.14372
	addq	%rdx, %rdx	# D.14372
	addq	%rdx, %rax	# D.14372, D.14377
	movzwl	(%rax), %eax	# *_52, D.14378
	cwtl
	movl	%eax, -16(%rbp)	# tmp142, regno
.L405:
	.loc 1 1571 0
	cmpl	$52, -16(%rbp)	#, regno
	jg	.L403	#,
	.loc 1 1571 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# regno, tmp144
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14379
	testb	%al, %al	# D.14379
	jne	.L403	#,
.LBB39:
	.loc 1 1575 0 is_stmt 1
	cmpl	$7, -16(%rbp)	#, regno
	jle	.L407	#,
	.loc 1 1575 0 is_stmt 0 discriminator 1
	cmpl	$15, -16(%rbp)	#, regno
	jle	.L408	#,
.L407:
	.loc 1 1575 0 discriminator 2
	cmpl	$20, -16(%rbp)	#, regno
	jle	.L409	#,
	.loc 1 1575 0 discriminator 1
	cmpl	$28, -16(%rbp)	#, regno
	jle	.L408	#,
.L409:
	.loc 1 1575 0 discriminator 2
	cmpl	$44, -16(%rbp)	#, regno
	jle	.L410	#,
	.loc 1 1575 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, regno
	jle	.L408	#,
.L410:
	.loc 1 1575 0 discriminator 2
	cmpl	$28, -16(%rbp)	#, regno
	jle	.L411	#,
	.loc 1 1575 0 discriminator 1
	cmpl	$36, -16(%rbp)	#, regno
	jg	.L411	#,
.L408:
	movq	-32(%rbp), %rax	# reg, tmp145
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.14380
	movzbl	%al, %eax	# D.14380, D.14374
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14381
	cmpl	$5, %eax	#, D.14381
	je	.L412	#,
	.loc 1 1575 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp147
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.14380
	movzbl	%al, %eax	# D.14380, D.14374
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14381
	cmpl	$6, %eax	#, D.14381
	jne	.L413	#,
.L412:
	.loc 1 1575 0 discriminator 1
	movl	$2, %eax	#, iftmp.426
	jmp	.L414	#
.L413:
	movl	$1, %eax	#, iftmp.426
.L414:
	.loc 1 1575 0 discriminator 3
	jmp	.L415	#
.L411:
	.loc 1 1575 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp149
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.14380
	cmpb	$18, %al	#, D.14380
	jne	.L416	#,
	.loc 1 1575 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.429
	andl	$33554432, %eax	#, D.14374
	testl	%eax, %eax	# D.14374
	je	.L417	#,
	movl	$2, %eax	#, iftmp.428
	jmp	.L415	#
.L417:
	.loc 1 1575 0 discriminator 2
	movl	$3, %eax	#, iftmp.428
	jmp	.L415	#
.L416:
	movq	-32(%rbp), %rax	# reg, tmp150
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.14380
	cmpb	$24, %al	#, D.14380
	jne	.L420	#,
	.loc 1 1575 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.432
	andl	$33554432, %eax	#, D.14374
	testl	%eax, %eax	# D.14374
	je	.L421	#,
	movl	$4, %eax	#, iftmp.431
	jmp	.L415	#
.L421:
	.loc 1 1575 0 discriminator 2
	movl	$6, %eax	#, iftmp.431
	jmp	.L415	#
.L420:
	movq	-32(%rbp), %rax	# reg, tmp151
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.14380
	movzbl	%al, %eax	# D.14380, D.14374
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14380
	movzbl	%al, %edx	# D.14380, D.14374
	movl	target_flags(%rip), %eax	# target_flags, target_flags.434
	andl	$33554432, %eax	#, D.14374
	testl	%eax, %eax	# D.14374
	je	.L424	#,
	.loc 1 1575 0 discriminator 1
	movl	$8, %eax	#, iftmp.433
	jmp	.L425	#
.L424:
	.loc 1 1575 0 discriminator 2
	movl	$4, %eax	#, iftmp.433
.L425:
	.loc 1 1575 0 discriminator 3
	addl	%edx, %eax	# D.14374, D.14374
	subl	$1, %eax	#, D.14374
	movl	target_flags(%rip), %edx	# target_flags, target_flags.436
	andl	$33554432, %edx	#, D.14374
	testl	%edx, %edx	# D.14374
	je	.L426	#,
	.loc 1 1575 0 discriminator 1
	movl	$8, %ebx	#, iftmp.435
	jmp	.L427	#
.L426:
	.loc 1 1575 0 discriminator 2
	movl	$4, %ebx	#, iftmp.435
.L427:
	.loc 1 1575 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.435
.L415:
	movl	-16(%rbp), %edx	# regno, tmp158
	addl	%edx, %eax	# tmp158, tmp157
	movl	%eax, -12(%rbp)	# tmp157, last
	.loc 1 1576 0 is_stmt 1 discriminator 3
	jmp	.L428	#
.L429:
	.loc 1 1578 0
	movl	-16(%rbp), %eax	# regno, tmp159
	movl	$1, %edx	#, tmp160
	movl	%eax, %ecx	# tmp159, tmp165
	salq	%cl, %rdx	# tmp165, D.14372
	movq	%rdx, %rax	# D.14372, D.14372
	notq	%rax	# D.14372
	movq	%rax, %rdx	# D.14372, D.14372
	movq	hard_regs_live(%rip), %rax	# hard_regs_live, hard_regs_live.437
	andq	%rdx, %rax	# D.14372, hard_regs_live.438
	movq	%rax, hard_regs_live(%rip)	# hard_regs_live.438, hard_regs_live
	.loc 1 1579 0
	addl	$1, -16(%rbp)	#, regno
.L428:
	.loc 1 1576 0 discriminator 1
	movl	-16(%rbp), %eax	# regno, tmp161
	cmpl	-12(%rbp), %eax	# last, tmp161
	jl	.L429	#,
.L403:
.LBE39:
	.loc 1 1582 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	mark_reg_death, .-mark_reg_death
	.type	mark_reg_live_nc, @function
mark_reg_live_nc:
.LFB16:
	.loc 1 1593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# regno, regno
	movl	%esi, -32(%rbp)	# mode, mode
	.loc 1 1594 0
	cmpl	$7, -28(%rbp)	#, regno
	jle	.L431	#,
	.loc 1 1594 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno
	jle	.L432	#,
.L431:
	.loc 1 1594 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno
	jle	.L433	#,
	.loc 1 1594 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L432	#,
.L433:
	.loc 1 1594 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno
	jle	.L434	#,
	.loc 1 1594 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno
	jle	.L432	#,
.L434:
	.loc 1 1594 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno
	jle	.L435	#,
	.loc 1 1594 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno
	jg	.L435	#,
.L432:
	movl	-32(%rbp), %eax	# mode, mode.441
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14384
	cmpl	$5, %eax	#, D.14384
	je	.L436	#,
	.loc 1 1594 0 discriminator 2
	movl	-32(%rbp), %eax	# mode, mode.442
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14384
	cmpl	$6, %eax	#, D.14384
	jne	.L437	#,
.L436:
	.loc 1 1594 0 discriminator 1
	movl	$2, %eax	#, iftmp.440
	jmp	.L438	#
.L437:
	movl	$1, %eax	#, iftmp.440
.L438:
	.loc 1 1594 0 discriminator 3
	jmp	.L439	#
.L435:
	.loc 1 1594 0 discriminator 2
	cmpl	$18, -32(%rbp)	#, mode
	jne	.L440	#,
	.loc 1 1594 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.445
	andl	$33554432, %eax	#, D.14382
	testl	%eax, %eax	# D.14382
	je	.L441	#,
	movl	$2, %eax	#, iftmp.444
	jmp	.L439	#
.L441:
	.loc 1 1594 0 discriminator 2
	movl	$3, %eax	#, iftmp.444
	jmp	.L439	#
.L440:
	cmpl	$24, -32(%rbp)	#, mode
	jne	.L444	#,
	.loc 1 1594 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.448
	andl	$33554432, %eax	#, D.14382
	testl	%eax, %eax	# D.14382
	je	.L445	#,
	movl	$4, %eax	#, iftmp.447
	jmp	.L439	#
.L445:
	.loc 1 1594 0 discriminator 2
	movl	$6, %eax	#, iftmp.447
	jmp	.L439	#
.L444:
	movl	-32(%rbp), %eax	# mode, mode.449
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14383
	movzbl	%al, %edx	# D.14383, D.14382
	movl	target_flags(%rip), %eax	# target_flags, target_flags.451
	andl	$33554432, %eax	#, D.14382
	testl	%eax, %eax	# D.14382
	je	.L448	#,
	.loc 1 1594 0 discriminator 1
	movl	$8, %eax	#, iftmp.450
	jmp	.L449	#
.L448:
	.loc 1 1594 0 discriminator 2
	movl	$4, %eax	#, iftmp.450
.L449:
	.loc 1 1594 0 discriminator 3
	addl	%edx, %eax	# D.14382, D.14382
	subl	$1, %eax	#, D.14382
	movl	target_flags(%rip), %edx	# target_flags, target_flags.453
	andl	$33554432, %edx	#, D.14382
	testl	%edx, %edx	# D.14382
	je	.L450	#,
	.loc 1 1594 0 discriminator 1
	movl	$8, %ebx	#, iftmp.452
	jmp	.L451	#
.L450:
	.loc 1 1594 0 discriminator 2
	movl	$4, %ebx	#, iftmp.452
.L451:
	.loc 1 1594 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.452
.L439:
	movl	-28(%rbp), %edx	# regno, tmp95
	addl	%edx, %eax	# tmp95, tmp94
	movl	%eax, -12(%rbp)	# tmp94, last
	.loc 1 1595 0 is_stmt 1 discriminator 3
	jmp	.L452	#
.L453:
	.loc 1 1597 0
	movl	-28(%rbp), %eax	# regno, tmp96
	movl	$1, %edx	#, tmp97
	movl	%eax, %ecx	# tmp96, tmp100
	salq	%cl, %rdx	# tmp100, D.14385
	movq	hard_regs_live(%rip), %rax	# hard_regs_live, hard_regs_live.454
	orq	%rdx, %rax	# D.14385, hard_regs_live.455
	movq	%rax, hard_regs_live(%rip)	# hard_regs_live.455, hard_regs_live
	.loc 1 1598 0
	addl	$1, -28(%rbp)	#, regno
.L452:
	.loc 1 1595 0 discriminator 1
	movl	-28(%rbp), %eax	# regno, tmp98
	cmpl	-12(%rbp), %eax	# last, tmp98
	jl	.L453	#,
	.loc 1 1600 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	mark_reg_live_nc, .-mark_reg_live_nc
	.type	set_preference, @function
set_preference:
.LFB17:
	.loc 1 1614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# dest, dest
	movq	%rsi, -64(%rbp)	# src, src
	.loc 1 1618 0
	movl	$0, -28(%rbp)	#, offset
	.loc 1 1620 0
	movl	$1, -20(%rbp)	#, copy
	.loc 1 1622 0
	movq	-64(%rbp), %rax	# src, tmp341
	movzwl	(%rax), %eax	# src_34(D)->code, D.14386
	movzwl	%ax, %eax	# D.14386, D.14387
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, D.14388
	movzbl	(%rax), %eax	# *_37, D.14389
	cmpb	$101, %al	#, D.14389
	jne	.L455	#,
	.loc 1 1623 0
	movq	-64(%rbp), %rax	# src, tmp343
	movq	8(%rax), %rax	# src_34(D)->fld[0].rtx, tmp344
	movq	%rax, -64(%rbp)	# tmp344, src
	movl	$0, -20(%rbp)	#, copy
.L455:
	.loc 1 1628 0
	movq	-64(%rbp), %rax	# src, tmp345
	movzwl	(%rax), %eax	# src_1->code, D.14386
	cmpw	$61, %ax	#, D.14386
	jne	.L456	#,
	.loc 1 1629 0
	movq	-64(%rbp), %rax	# src, tmp346
	movl	8(%rax), %eax	# src_1->fld[0].rtuint, tmp347
	movl	%eax, -36(%rbp)	# tmp347, src_regno
	jmp	.L457	#
.L456:
	.loc 1 1630 0
	movq	-64(%rbp), %rax	# src, tmp348
	movzwl	(%rax), %eax	# src_1->code, D.14386
	cmpw	$63, %ax	#, D.14386
	jne	.L458	#,
	.loc 1 1630 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# src, tmp349
	movq	8(%rax), %rax	# src_1->fld[0].rtx, D.14390
	movzwl	(%rax), %eax	# _44->code, D.14386
	cmpw	$61, %ax	#, D.14386
	jne	.L458	#,
	.loc 1 1632 0 is_stmt 1
	movq	-64(%rbp), %rax	# src, tmp350
	movq	8(%rax), %rax	# src_1->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _46->fld[0].rtuint, tmp351
	movl	%eax, -36(%rbp)	# tmp351, src_regno
	.loc 1 1634 0
	movq	-64(%rbp), %rax	# src, tmp352
	movq	8(%rax), %rax	# src_1->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _48->fld[0].rtuint, D.14391
	cmpl	$52, %eax	#, D.14391
	ja	.L459	#,
	.loc 1 1638 0
	movq	-64(%rbp), %rax	# src, tmp353
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	.loc 1 1635 0
	movzbl	%al, %ecx	# D.14392, D.14393
	movq	-64(%rbp), %rax	# src, tmp354
	movl	16(%rax), %edx	# src_1->fld[1].rtuint, D.14391
	.loc 1 1636 0
	movq	-64(%rbp), %rax	# src, tmp355
	movq	8(%rax), %rax	# src_1->fld[0].rtx, D.14390
	movzbl	2(%rax), %eax	# _53->mode, D.14392
	.loc 1 1635 0
	movzbl	%al, %esi	# D.14392, D.14393
	movq	-64(%rbp), %rax	# src, tmp356
	movq	8(%rax), %rax	# src_1->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _56->fld[0].rtuint, D.14391
	movl	%eax, %edi	# D.14391,
	call	subreg_regno_offset	#
	movl	-28(%rbp), %edx	# offset, offset.456
	addl	%edx, %eax	# offset.456, D.14391
	movl	%eax, -28(%rbp)	# D.14391, offset
	.loc 1 1634 0
	jmp	.L457	#
.L459:
	.loc 1 1640 0
	movq	-64(%rbp), %rax	# src, tmp357
	movl	16(%rax), %eax	# src_1->fld[1].rtuint, D.14391
	.loc 1 1641 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.458
	andl	$33554432, %edx	#, D.14387
	testl	%edx, %edx	# D.14387
	je	.L461	#,
	.loc 1 1641 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.457
	jmp	.L462	#
.L461:
	.loc 1 1641 0 discriminator 2
	movl	$4, %ebx	#, iftmp.457
.L462:
	.loc 1 1641 0 discriminator 3
	movl	$0, %edx	#, tmp359
	divl	%ebx	# iftmp.457
	movl	%eax, %edx	# tmp358, D.14391
	.loc 1 1640 0 is_stmt 1 discriminator 3
	movl	-28(%rbp), %eax	# offset, offset.459
	addl	%edx, %eax	# D.14391, D.14391
	movl	%eax, -28(%rbp)	# D.14391, offset
	.loc 1 1634 0 discriminator 3
	jmp	.L457	#
.L458:
	.loc 1 1644 0
	jmp	.L454	#
.L457:
	.loc 1 1646 0
	movq	-56(%rbp), %rax	# dest, tmp360
	movzwl	(%rax), %eax	# dest_71(D)->code, D.14386
	cmpw	$61, %ax	#, D.14386
	jne	.L464	#,
	.loc 1 1647 0
	movq	-56(%rbp), %rax	# dest, tmp361
	movl	8(%rax), %eax	# dest_71(D)->fld[0].rtuint, tmp362
	movl	%eax, -32(%rbp)	# tmp362, dest_regno
	jmp	.L465	#
.L464:
	.loc 1 1648 0
	movq	-56(%rbp), %rax	# dest, tmp363
	movzwl	(%rax), %eax	# dest_71(D)->code, D.14386
	cmpw	$63, %ax	#, D.14386
	jne	.L466	#,
	.loc 1 1648 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp364
	movq	8(%rax), %rax	# dest_71(D)->fld[0].rtx, D.14390
	movzwl	(%rax), %eax	# _75->code, D.14386
	cmpw	$61, %ax	#, D.14386
	jne	.L466	#,
	.loc 1 1650 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp365
	movq	8(%rax), %rax	# dest_71(D)->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _77->fld[0].rtuint, tmp366
	movl	%eax, -32(%rbp)	# tmp366, dest_regno
	.loc 1 1652 0
	movq	-56(%rbp), %rax	# dest, tmp367
	movq	8(%rax), %rax	# dest_71(D)->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _79->fld[0].rtuint, D.14391
	cmpl	$52, %eax	#, D.14391
	ja	.L467	#,
	.loc 1 1653 0
	movl	-28(%rbp), %ebx	# offset, offset.460
	.loc 1 1656 0
	movq	-56(%rbp), %rax	# dest, tmp368
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	.loc 1 1653 0
	movzbl	%al, %ecx	# D.14392, D.14393
	movq	-56(%rbp), %rax	# dest, tmp369
	movl	16(%rax), %edx	# dest_71(D)->fld[1].rtuint, D.14391
	.loc 1 1654 0
	movq	-56(%rbp), %rax	# dest, tmp370
	movq	8(%rax), %rax	# dest_71(D)->fld[0].rtx, D.14390
	movzbl	2(%rax), %eax	# _85->mode, D.14392
	.loc 1 1653 0
	movzbl	%al, %esi	# D.14392, D.14393
	movq	-56(%rbp), %rax	# dest, tmp371
	movq	8(%rax), %rax	# dest_71(D)->fld[0].rtx, D.14390
	movl	8(%rax), %eax	# _88->fld[0].rtuint, D.14391
	movl	%eax, %edi	# D.14391,
	call	subreg_regno_offset	#
	subl	%eax, %ebx	# D.14391, D.14391
	movl	%ebx, %eax	# D.14391, D.14391
	movl	%eax, -28(%rbp)	# D.14391, offset
	.loc 1 1652 0
	jmp	.L465	#
.L467:
	.loc 1 1658 0
	movl	-28(%rbp), %ecx	# offset, offset.461
	movq	-56(%rbp), %rax	# dest, tmp372
	movl	16(%rax), %eax	# dest_71(D)->fld[1].rtuint, D.14391
	.loc 1 1659 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.463
	andl	$33554432, %edx	#, D.14387
	testl	%edx, %edx	# D.14387
	je	.L469	#,
	.loc 1 1659 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.462
	jmp	.L470	#
.L469:
	.loc 1 1659 0 discriminator 2
	movl	$4, %ebx	#, iftmp.462
.L470:
	.loc 1 1659 0 discriminator 3
	movl	$0, %edx	#, tmp374
	divl	%ebx	# iftmp.462
	.loc 1 1658 0 is_stmt 1 discriminator 3
	subl	%eax, %ecx	# D.14391, D.14391
	movl	%ecx, %eax	# D.14391, D.14391
	movl	%eax, -28(%rbp)	# D.14391, offset
	.loc 1 1652 0 discriminator 3
	jmp	.L465	#
.L466:
	.loc 1 1662 0
	jmp	.L454	#
.L465:
	.loc 1 1666 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.464
	movl	-36(%rbp), %edx	# src_regno, D.14394
	addq	%rdx, %rdx	# D.14394
	addq	%rdx, %rax	# D.14394, D.14395
	movzwl	(%rax), %eax	# *_105, D.14396
	testw	%ax, %ax	# D.14396
	js	.L471	#,
	.loc 1 1667 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.465
	movl	-36(%rbp), %edx	# src_regno, D.14394
	addq	%rdx, %rdx	# D.14394
	addq	%rdx, %rax	# D.14394, D.14395
	movzwl	(%rax), %eax	# *_110, D.14396
	cwtl
	movl	%eax, -36(%rbp)	# tmp375, src_regno
.L471:
	.loc 1 1669 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.466
	movl	-32(%rbp), %edx	# dest_regno, D.14394
	addq	%rdx, %rdx	# D.14394
	addq	%rdx, %rax	# D.14394, D.14395
	movzwl	(%rax), %eax	# *_116, D.14396
	testw	%ax, %ax	# D.14396
	js	.L472	#,
	.loc 1 1670 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.467
	movl	-32(%rbp), %edx	# dest_regno, D.14394
	addq	%rdx, %rdx	# D.14394
	addq	%rdx, %rax	# D.14394, D.14395
	movzwl	(%rax), %eax	# *_121, D.14396
	cwtl
	movl	%eax, -32(%rbp)	# tmp376, dest_regno
.L472:
	.loc 1 1675 0
	cmpl	$52, -32(%rbp)	#, dest_regno
	ja	.L473	#,
	.loc 1 1675 0 is_stmt 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, src_regno
	jbe	.L473	#,
	.loc 1 1676 0 is_stmt 1
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.468
	movl	-36(%rbp), %edx	# src_regno, D.14394
	salq	$2, %rdx	#, D.14394
	addq	%rdx, %rax	# D.14394, D.14397
	movl	(%rax), %eax	# *_127, D.14387
	testl	%eax, %eax	# D.14387
	js	.L473	#,
	.loc 1 1678 0
	movl	-28(%rbp), %eax	# offset, offset.469
	subl	%eax, -32(%rbp)	# offset.469, dest_regno
	.loc 1 1679 0
	cmpl	$52, -32(%rbp)	#, dest_regno
	ja	.L473	#,
	.loc 1 1681 0
	cmpl	$0, -20(%rbp)	#, copy
	je	.L474	#,
	.loc 1 1682 0
	movq	allocno(%rip), %rax	# allocno, allocno.470
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.471
	movl	-36(%rbp), %ecx	# src_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_135, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.470, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.472
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.473
	movl	-36(%rbp), %esi	# src_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_144, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	40(%rax), %rsi	# _148->hard_reg_copy_preferences, D.14394
	movl	-32(%rbp), %eax	# dest_regno, dest_regno.474
	movl	$1, %edi	#, tmp377
	movl	%eax, %ecx	# dest_regno.474, tmp412
	salq	%cl, %rdi	# tmp412, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 40(%rdx)	# D.14394, _139->hard_reg_copy_preferences
.L474:
	.loc 1 1685 0
	movq	allocno(%rip), %rax	# allocno, allocno.475
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.476
	movl	-36(%rbp), %ecx	# src_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_157, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.475, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.477
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.478
	movl	-36(%rbp), %esi	# src_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_166, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	32(%rax), %rsi	# _170->hard_reg_preferences, D.14394
	movl	-32(%rbp), %eax	# dest_regno, dest_regno.479
	movl	$1, %edi	#, tmp378
	movl	%eax, %ecx	# dest_regno.479, tmp414
	salq	%cl, %rdi	# tmp414, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 32(%rdx)	# D.14394, _161->hard_reg_preferences
	.loc 1 1687 0
	movl	-32(%rbp), %eax	# dest_regno, tmp379
	movl	%eax, -24(%rbp)	# tmp379, i
	jmp	.L475	#
.L497:
	.loc 1 1690 0
	movq	allocno(%rip), %rax	# allocno, allocno.480
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.481
	movl	-36(%rbp), %ecx	# src_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_220, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.480, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.482
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.483
	movl	-36(%rbp), %esi	# src_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_229, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	48(%rax), %rsi	# _233->hard_reg_full_preferences, D.14394
	movl	-24(%rbp), %eax	# i, i.484
	movl	$1, %edi	#, tmp380
	movl	%eax, %ecx	# i.484, tmp416
	salq	%cl, %rdi	# tmp416, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 48(%rdx)	# D.14394, _224->hard_reg_full_preferences
	.loc 1 1689 0
	addl	$1, -24(%rbp)	#, i
.L475:
	.loc 1 1688 0
	cmpl	$7, -32(%rbp)	#, dest_regno
	jbe	.L476	#,
	.loc 1 1688 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, dest_regno
	jbe	.L477	#,
.L476:
	.loc 1 1688 0 discriminator 2
	cmpl	$20, -32(%rbp)	#, dest_regno
	jbe	.L478	#,
	.loc 1 1688 0 discriminator 1
	cmpl	$28, -32(%rbp)	#, dest_regno
	jbe	.L477	#,
.L478:
	.loc 1 1688 0 discriminator 2
	cmpl	$44, -32(%rbp)	#, dest_regno
	jbe	.L479	#,
	.loc 1 1688 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, dest_regno
	jbe	.L477	#,
.L479:
	.loc 1 1688 0 discriminator 2
	cmpl	$28, -32(%rbp)	#, dest_regno
	jbe	.L480	#,
	.loc 1 1688 0 discriminator 1
	cmpl	$36, -32(%rbp)	#, dest_regno
	ja	.L480	#,
.L477:
	movq	-56(%rbp), %rax	# dest, tmp381
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14399
	cmpl	$5, %eax	#, D.14399
	je	.L481	#,
	.loc 1 1688 0 discriminator 4
	movq	-56(%rbp), %rax	# dest, tmp383
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14399
	cmpl	$6, %eax	#, D.14399
	jne	.L482	#,
.L481:
	.loc 1 1688 0 discriminator 3
	movl	$2, %eax	#, iftmp.486
	jmp	.L484	#
.L482:
	.loc 1 1688 0 discriminator 1
	movl	$1, %eax	#, iftmp.486
	jmp	.L484	#
.L480:
	.loc 1 1688 0 discriminator 2
	movq	-56(%rbp), %rax	# dest, tmp385
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	cmpb	$18, %al	#, D.14392
	jne	.L485	#,
	.loc 1 1688 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.489
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L486	#,
	.loc 1 1688 0 discriminator 9
	movl	$2, %eax	#, iftmp.488
	jmp	.L484	#
.L486:
	.loc 1 1688 0 discriminator 10
	movl	$3, %eax	#, iftmp.488
	jmp	.L484	#
.L485:
	.loc 1 1688 0 discriminator 8
	movq	-56(%rbp), %rax	# dest, tmp386
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	cmpb	$24, %al	#, D.14392
	jne	.L489	#,
	.loc 1 1688 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.492
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L490	#,
	.loc 1 1688 0 discriminator 13
	movl	$4, %eax	#, iftmp.491
	jmp	.L484	#
.L490:
	.loc 1 1688 0 discriminator 14
	movl	$6, %eax	#, iftmp.491
	jmp	.L484	#
.L489:
	.loc 1 1688 0 discriminator 12
	movq	-56(%rbp), %rax	# dest, tmp387
	movzbl	2(%rax), %eax	# dest_71(D)->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14392
	movzbl	%al, %edx	# D.14392, D.14387
	movl	target_flags(%rip), %eax	# target_flags, target_flags.494
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L493	#,
	.loc 1 1688 0 discriminator 1
	movl	$8, %eax	#, iftmp.493
	jmp	.L494	#
.L493:
	.loc 1 1688 0 discriminator 2
	movl	$4, %eax	#, iftmp.493
.L494:
	.loc 1 1688 0 discriminator 3
	addl	%edx, %eax	# D.14387, D.14387
	subl	$1, %eax	#, D.14387
	movl	target_flags(%rip), %edx	# target_flags, target_flags.496
	andl	$33554432, %edx	#, D.14387
	testl	%edx, %edx	# D.14387
	je	.L495	#,
	.loc 1 1688 0 discriminator 1
	movl	$8, %ebx	#, iftmp.495
	jmp	.L496	#
.L495:
	.loc 1 1688 0 discriminator 2
	movl	$4, %ebx	#, iftmp.495
.L496:
	.loc 1 1688 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.495
.L484:
	.loc 1 1688 0 discriminator 6
	movl	-32(%rbp), %edx	# dest_regno, tmp391
	addl	%edx, %eax	# tmp391, D.14391
	.loc 1 1687 0 is_stmt 1 discriminator 6
	cmpl	-24(%rbp), %eax	# i, D.14391
	ja	.L497	#,
.L473:
	.loc 1 1694 0
	cmpl	$52, -36(%rbp)	#, src_regno
	ja	.L454	#,
	.loc 1 1694 0 is_stmt 0 discriminator 1
	cmpl	$52, -32(%rbp)	#, dest_regno
	jbe	.L454	#,
	.loc 1 1695 0 is_stmt 1
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.497
	movl	-32(%rbp), %edx	# dest_regno, D.14394
	salq	$2, %rdx	#, D.14394
	addq	%rdx, %rax	# D.14394, D.14397
	movl	(%rax), %eax	# *_242, D.14387
	testl	%eax, %eax	# D.14387
	js	.L454	#,
	.loc 1 1697 0
	movl	-28(%rbp), %eax	# offset, offset.498
	addl	%eax, -36(%rbp)	# offset.498, src_regno
	.loc 1 1698 0
	cmpl	$52, -36(%rbp)	#, src_regno
	ja	.L454	#,
	.loc 1 1700 0
	cmpl	$0, -20(%rbp)	#, copy
	je	.L498	#,
	.loc 1 1701 0
	movq	allocno(%rip), %rax	# allocno, allocno.499
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.500
	movl	-32(%rbp), %ecx	# dest_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_250, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.499, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.501
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.502
	movl	-32(%rbp), %esi	# dest_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_259, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	40(%rax), %rsi	# _263->hard_reg_copy_preferences, D.14394
	movl	-36(%rbp), %eax	# src_regno, src_regno.503
	movl	$1, %edi	#, tmp392
	movl	%eax, %ecx	# src_regno.503, tmp419
	salq	%cl, %rdi	# tmp419, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 40(%rdx)	# D.14394, _254->hard_reg_copy_preferences
.L498:
	.loc 1 1704 0
	movq	allocno(%rip), %rax	# allocno, allocno.504
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.505
	movl	-32(%rbp), %ecx	# dest_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_272, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.504, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.506
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.507
	movl	-32(%rbp), %esi	# dest_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_281, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	32(%rax), %rsi	# _285->hard_reg_preferences, D.14394
	movl	-36(%rbp), %eax	# src_regno, src_regno.508
	movl	$1, %edi	#, tmp393
	movl	%eax, %ecx	# src_regno.508, tmp421
	salq	%cl, %rdi	# tmp421, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 32(%rdx)	# D.14394, _276->hard_reg_preferences
	.loc 1 1706 0
	movl	-36(%rbp), %eax	# src_regno, tmp394
	movl	%eax, -24(%rbp)	# tmp394, i
	jmp	.L499	#
.L521:
	.loc 1 1709 0
	movq	allocno(%rip), %rax	# allocno, allocno.509
	movq	reg_allocno(%rip), %rdx	# reg_allocno, reg_allocno.510
	movl	-32(%rbp), %ecx	# dest_regno, D.14394
	salq	$2, %rcx	#, D.14394
	addq	%rcx, %rdx	# D.14394, D.14397
	movl	(%rdx), %edx	# *_335, D.14387
	movslq	%edx, %rdx	# D.14387, D.14394
	salq	$6, %rdx	#, D.14394
	addq	%rax, %rdx	# allocno.509, D.14398
	movq	allocno(%rip), %rax	# allocno, allocno.511
	movq	reg_allocno(%rip), %rcx	# reg_allocno, reg_allocno.512
	movl	-32(%rbp), %esi	# dest_regno, D.14394
	salq	$2, %rsi	#, D.14394
	addq	%rsi, %rcx	# D.14394, D.14397
	movl	(%rcx), %ecx	# *_344, D.14387
	movslq	%ecx, %rcx	# D.14387, D.14394
	salq	$6, %rcx	#, D.14394
	addq	%rcx, %rax	# D.14394, D.14398
	movq	48(%rax), %rsi	# _348->hard_reg_full_preferences, D.14394
	movl	-24(%rbp), %eax	# i, i.513
	movl	$1, %edi	#, tmp395
	movl	%eax, %ecx	# i.513, tmp423
	salq	%cl, %rdi	# tmp423, D.14394
	movq	%rdi, %rax	# D.14394, D.14394
	orq	%rsi, %rax	# D.14394, D.14394
	movq	%rax, 48(%rdx)	# D.14394, _339->hard_reg_full_preferences
	.loc 1 1708 0
	addl	$1, -24(%rbp)	#, i
.L499:
	.loc 1 1707 0
	cmpl	$7, -36(%rbp)	#, src_regno
	jbe	.L500	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, src_regno
	jbe	.L501	#,
.L500:
	.loc 1 1707 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, src_regno
	jbe	.L502	#,
	.loc 1 1707 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, src_regno
	jbe	.L501	#,
.L502:
	.loc 1 1707 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, src_regno
	jbe	.L503	#,
	.loc 1 1707 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, src_regno
	jbe	.L501	#,
.L503:
	.loc 1 1707 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, src_regno
	jbe	.L504	#,
	.loc 1 1707 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, src_regno
	ja	.L504	#,
.L501:
	movq	-64(%rbp), %rax	# src, tmp396
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14399
	cmpl	$5, %eax	#, D.14399
	je	.L505	#,
	.loc 1 1707 0 discriminator 4
	movq	-64(%rbp), %rax	# src, tmp398
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14399
	cmpl	$6, %eax	#, D.14399
	jne	.L506	#,
.L505:
	.loc 1 1707 0 discriminator 3
	movl	$2, %eax	#, iftmp.515
	jmp	.L508	#
.L506:
	.loc 1 1707 0 discriminator 1
	movl	$1, %eax	#, iftmp.515
	jmp	.L508	#
.L504:
	.loc 1 1707 0 discriminator 2
	movq	-64(%rbp), %rax	# src, tmp400
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	cmpb	$18, %al	#, D.14392
	jne	.L509	#,
	.loc 1 1707 0 discriminator 7
	movl	target_flags(%rip), %eax	# target_flags, target_flags.518
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L510	#,
	.loc 1 1707 0 discriminator 9
	movl	$2, %eax	#, iftmp.517
	jmp	.L508	#
.L510:
	.loc 1 1707 0 discriminator 10
	movl	$3, %eax	#, iftmp.517
	jmp	.L508	#
.L509:
	.loc 1 1707 0 discriminator 8
	movq	-64(%rbp), %rax	# src, tmp401
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	cmpb	$24, %al	#, D.14392
	jne	.L513	#,
	.loc 1 1707 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.521
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L514	#,
	.loc 1 1707 0 discriminator 13
	movl	$4, %eax	#, iftmp.520
	jmp	.L508	#
.L514:
	.loc 1 1707 0 discriminator 14
	movl	$6, %eax	#, iftmp.520
	jmp	.L508	#
.L513:
	.loc 1 1707 0 discriminator 12
	movq	-64(%rbp), %rax	# src, tmp402
	movzbl	2(%rax), %eax	# src_1->mode, D.14392
	movzbl	%al, %eax	# D.14392, D.14387
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14392
	movzbl	%al, %edx	# D.14392, D.14387
	movl	target_flags(%rip), %eax	# target_flags, target_flags.523
	andl	$33554432, %eax	#, D.14387
	testl	%eax, %eax	# D.14387
	je	.L517	#,
	.loc 1 1707 0 discriminator 1
	movl	$8, %eax	#, iftmp.522
	jmp	.L518	#
.L517:
	.loc 1 1707 0 discriminator 2
	movl	$4, %eax	#, iftmp.522
.L518:
	.loc 1 1707 0 discriminator 3
	addl	%edx, %eax	# D.14387, D.14387
	subl	$1, %eax	#, D.14387
	movl	target_flags(%rip), %edx	# target_flags, target_flags.525
	andl	$33554432, %edx	#, D.14387
	testl	%edx, %edx	# D.14387
	je	.L519	#,
	.loc 1 1707 0 discriminator 1
	movl	$8, %ebx	#, iftmp.524
	jmp	.L520	#
.L519:
	.loc 1 1707 0 discriminator 2
	movl	$4, %ebx	#, iftmp.524
.L520:
	.loc 1 1707 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.524
.L508:
	.loc 1 1707 0 discriminator 6
	movl	-36(%rbp), %edx	# src_regno, tmp406
	addl	%edx, %eax	# tmp406, D.14391
	.loc 1 1706 0 is_stmt 1 discriminator 6
	cmpl	-24(%rbp), %eax	# i, D.14391
	ja	.L521	#,
.L454:
	.loc 1 1712 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	set_preference, .-set_preference
	.globl	mark_elimination
	.type	mark_elimination, @function
mark_elimination:
.LFB18:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# from, from
	movl	%esi, -24(%rbp)	# to, to
	.loc 1 1725 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L523	#
.L525:
.LBB40:
	.loc 1 1727 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.526
	movl	-12(%rbp), %edx	# i, tmp64
	movslq	%edx, %rdx	# tmp64, tmp63
	addq	$4, %rdx	#, tmp65
	movq	(%rax,%rdx,8), %rax	# basic_block_info.526_4->data.bb, D.14400
	movq	64(%rax), %rax	# _5->global_live_at_start, tmp66
	movq	%rax, -8(%rbp)	# tmp66, r
	.loc 1 1728 0
	movl	-20(%rbp), %edx	# from, tmp67
	movq	-8(%rbp), %rax	# r, tmp68
	movl	%edx, %esi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.14401
	je	.L524	#,
	.loc 1 1730 0
	movl	-20(%rbp), %edx	# from, tmp69
	movq	-8(%rbp), %rax	# r, tmp70
	movl	%edx, %esi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	bitmap_clear_bit	#
	.loc 1 1731 0
	movl	-24(%rbp), %edx	# to, tmp71
	movq	-8(%rbp), %rax	# r, tmp72
	movl	%edx, %esi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	bitmap_set_bit	#
.L524:
.LBE40:
	.loc 1 1725 0
	addl	$1, -12(%rbp)	#, i
.L523:
	.loc 1 1725 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.527
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.527, i
	jl	.L525	#,
	.loc 1 1734 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	mark_elimination, .-mark_elimination
	.local	live_relevant_regs
	.comm	live_relevant_regs,8,8
	.type	reg_becomes_live, @function
reg_becomes_live:
.LFB19:
	.loc 1 1747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# setter, setter
	movq	%rdx, -40(%rbp)	# regs_set, regs_set
	.loc 1 1750 0
	movq	-24(%rbp), %rax	# reg, tmp101
	movzwl	(%rax), %eax	# reg_12(D)->code, D.14402
	cmpw	$63, %ax	#, D.14402
	jne	.L527	#,
	.loc 1 1751 0
	movq	-24(%rbp), %rax	# reg, tmp102
	movq	8(%rax), %rax	# reg_12(D)->fld[0].rtx, tmp103
	movq	%rax, -24(%rbp)	# tmp103, reg
.L527:
	.loc 1 1753 0
	movq	-24(%rbp), %rax	# reg, tmp104
	movzwl	(%rax), %eax	# reg_1->code, D.14402
	cmpw	$61, %ax	#, D.14402
	je	.L528	#,
	.loc 1 1754 0
	jmp	.L526	#
.L528:
	.loc 1 1756 0
	movq	-24(%rbp), %rax	# reg, tmp105
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.14403
	movl	%eax, -8(%rbp)	# D.14403, regno
	.loc 1 1757 0
	cmpl	$52, -8(%rbp)	#, regno
	jg	.L530	#,
.LBB41:
	.loc 1 1759 0
	cmpl	$7, -8(%rbp)	#, regno
	jle	.L531	#,
	.loc 1 1759 0 is_stmt 0 discriminator 1
	cmpl	$15, -8(%rbp)	#, regno
	jle	.L532	#,
.L531:
	.loc 1 1759 0 discriminator 2
	cmpl	$20, -8(%rbp)	#, regno
	jle	.L533	#,
	.loc 1 1759 0 discriminator 1
	cmpl	$28, -8(%rbp)	#, regno
	jle	.L532	#,
.L533:
	.loc 1 1759 0 discriminator 2
	cmpl	$44, -8(%rbp)	#, regno
	jle	.L534	#,
	.loc 1 1759 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, regno
	jle	.L532	#,
.L534:
	.loc 1 1759 0 discriminator 2
	cmpl	$28, -8(%rbp)	#, regno
	jle	.L535	#,
	.loc 1 1759 0 discriminator 1
	cmpl	$36, -8(%rbp)	#, regno
	jg	.L535	#,
.L532:
	movq	-24(%rbp), %rax	# reg, tmp106
	movzbl	2(%rax), %eax	# reg_1->mode, D.14404
	movzbl	%al, %eax	# D.14404, D.14405
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14406
	cmpl	$5, %eax	#, D.14406
	je	.L536	#,
	.loc 1 1759 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp108
	movzbl	2(%rax), %eax	# reg_1->mode, D.14404
	movzbl	%al, %eax	# D.14404, D.14405
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14406
	cmpl	$6, %eax	#, D.14406
	jne	.L537	#,
.L536:
	.loc 1 1759 0 discriminator 1
	movl	$2, %eax	#, iftmp.529
	jmp	.L538	#
.L537:
	movl	$1, %eax	#, iftmp.529
.L538:
	.loc 1 1759 0 discriminator 3
	jmp	.L539	#
.L535:
	.loc 1 1759 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp110
	movzbl	2(%rax), %eax	# reg_1->mode, D.14404
	cmpb	$18, %al	#, D.14404
	jne	.L540	#,
	.loc 1 1759 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.532
	andl	$33554432, %eax	#, D.14405
	testl	%eax, %eax	# D.14405
	je	.L541	#,
	movl	$2, %eax	#, iftmp.531
	jmp	.L539	#
.L541:
	.loc 1 1759 0 discriminator 2
	movl	$3, %eax	#, iftmp.531
	jmp	.L539	#
.L540:
	movq	-24(%rbp), %rax	# reg, tmp111
	movzbl	2(%rax), %eax	# reg_1->mode, D.14404
	cmpb	$24, %al	#, D.14404
	jne	.L544	#,
	.loc 1 1759 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.535
	andl	$33554432, %eax	#, D.14405
	testl	%eax, %eax	# D.14405
	je	.L545	#,
	movl	$4, %eax	#, iftmp.534
	jmp	.L539	#
.L545:
	.loc 1 1759 0 discriminator 2
	movl	$6, %eax	#, iftmp.534
	jmp	.L539	#
.L544:
	movq	-24(%rbp), %rax	# reg, tmp112
	movzbl	2(%rax), %eax	# reg_1->mode, D.14404
	movzbl	%al, %eax	# D.14404, D.14405
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14404
	movzbl	%al, %edx	# D.14404, D.14405
	movl	target_flags(%rip), %eax	# target_flags, target_flags.537
	andl	$33554432, %eax	#, D.14405
	testl	%eax, %eax	# D.14405
	je	.L548	#,
	.loc 1 1759 0 discriminator 1
	movl	$8, %eax	#, iftmp.536
	jmp	.L549	#
.L548:
	.loc 1 1759 0 discriminator 2
	movl	$4, %eax	#, iftmp.536
.L549:
	.loc 1 1759 0 discriminator 3
	addl	%edx, %eax	# D.14405, D.14405
	subl	$1, %eax	#, D.14405
	movl	target_flags(%rip), %edx	# target_flags, target_flags.539
	andl	$33554432, %edx	#, D.14405
	testl	%edx, %edx	# D.14405
	je	.L550	#,
	.loc 1 1759 0 discriminator 1
	movl	$8, %ecx	#, iftmp.538
	jmp	.L551	#
.L550:
	.loc 1 1759 0 discriminator 2
	movl	$4, %ecx	#, iftmp.538
.L551:
	.loc 1 1759 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.538
.L539:
	movl	%eax, -4(%rbp)	# iftmp.528, nregs
	.loc 1 1760 0 is_stmt 1 discriminator 3
	jmp	.L552	#
.L554:
	.loc 1 1762 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.540
	movl	-8(%rbp), %edx	# regno, tmp116
	movl	%edx, %esi	# tmp116,
	movq	%rax, %rdi	# live_relevant_regs.540,
	call	bitmap_set_bit	#
	.loc 1 1763 0
	movl	-8(%rbp), %eax	# regno, tmp118
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14407
	testb	%al, %al	# D.14407
	jne	.L553	#,
	.loc 1 1764 0
	movl	-8(%rbp), %edx	# regno, tmp119
	movq	-40(%rbp), %rax	# regs_set, tmp120
	movl	%edx, %esi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	bitmap_set_bit	#
.L553:
	.loc 1 1765 0
	addl	$1, -8(%rbp)	#, regno
.L552:
	.loc 1 1760 0 discriminator 1
	movl	-4(%rbp), %eax	# nregs, nregs.541
	leal	-1(%rax), %edx	#, tmp121
	movl	%edx, -4(%rbp)	# tmp121, nregs
	testl	%eax, %eax	# nregs.541
	jg	.L554	#,
.LBE41:
	jmp	.L526	#
.L530:
	.loc 1 1768 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.542
	movl	-8(%rbp), %edx	# regno, tmp122
	movslq	%edx, %rdx	# tmp122, D.14408
	addq	%rdx, %rdx	# D.14408
	addq	%rdx, %rax	# D.14408, D.14409
	movzwl	(%rax), %eax	# *_66, D.14410
	testw	%ax, %ax	# D.14410
	js	.L526	#,
	.loc 1 1770 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.543
	movl	-8(%rbp), %edx	# regno, tmp123
	movl	%edx, %esi	# tmp123,
	movq	%rax, %rdi	# live_relevant_regs.543,
	call	bitmap_set_bit	#
	.loc 1 1771 0
	movl	-8(%rbp), %edx	# regno, tmp124
	movq	-40(%rbp), %rax	# regs_set, tmp125
	movl	%edx, %esi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	bitmap_set_bit	#
.L526:
	.loc 1 1773 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	reg_becomes_live, .-reg_becomes_live
	.type	reg_dies, @function
reg_dies:
.LFB20:
	.loc 1 1781 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	movl	%esi, -24(%rbp)	# mode, mode
	movq	%rdx, -32(%rbp)	# chain, chain
	.loc 1 1782 0
	cmpl	$52, -20(%rbp)	#, regno
	jg	.L556	#,
.LBB42:
	.loc 1 1784 0
	cmpl	$7, -20(%rbp)	#, regno
	jle	.L557	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	cmpl	$15, -20(%rbp)	#, regno
	jle	.L558	#,
.L557:
	.loc 1 1784 0 discriminator 2
	cmpl	$20, -20(%rbp)	#, regno
	jle	.L559	#,
	.loc 1 1784 0 discriminator 1
	cmpl	$28, -20(%rbp)	#, regno
	jle	.L558	#,
.L559:
	.loc 1 1784 0 discriminator 2
	cmpl	$44, -20(%rbp)	#, regno
	jle	.L560	#,
	.loc 1 1784 0 discriminator 1
	cmpl	$52, -20(%rbp)	#, regno
	jle	.L558	#,
.L560:
	.loc 1 1784 0 discriminator 2
	cmpl	$28, -20(%rbp)	#, regno
	jle	.L561	#,
	.loc 1 1784 0 discriminator 1
	cmpl	$36, -20(%rbp)	#, regno
	jg	.L561	#,
.L558:
	movl	-24(%rbp), %eax	# mode, mode.546
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14413
	cmpl	$5, %eax	#, D.14413
	je	.L562	#,
	.loc 1 1784 0 discriminator 2
	movl	-24(%rbp), %eax	# mode, mode.547
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14413
	cmpl	$6, %eax	#, D.14413
	jne	.L563	#,
.L562:
	.loc 1 1784 0 discriminator 1
	movl	$2, %eax	#, iftmp.545
	jmp	.L564	#
.L563:
	movl	$1, %eax	#, iftmp.545
.L564:
	.loc 1 1784 0 discriminator 3
	jmp	.L565	#
.L561:
	.loc 1 1784 0 discriminator 2
	cmpl	$18, -24(%rbp)	#, mode
	jne	.L566	#,
	.loc 1 1784 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.550
	andl	$33554432, %eax	#, D.14411
	testl	%eax, %eax	# D.14411
	je	.L567	#,
	movl	$2, %eax	#, iftmp.549
	jmp	.L565	#
.L567:
	.loc 1 1784 0 discriminator 2
	movl	$3, %eax	#, iftmp.549
	jmp	.L565	#
.L566:
	cmpl	$24, -24(%rbp)	#, mode
	jne	.L570	#,
	.loc 1 1784 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.553
	andl	$33554432, %eax	#, D.14411
	testl	%eax, %eax	# D.14411
	je	.L571	#,
	movl	$4, %eax	#, iftmp.552
	jmp	.L565	#
.L571:
	.loc 1 1784 0 discriminator 2
	movl	$6, %eax	#, iftmp.552
	jmp	.L565	#
.L570:
	movl	-24(%rbp), %eax	# mode, mode.554
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14412
	movzbl	%al, %edx	# D.14412, D.14411
	movl	target_flags(%rip), %eax	# target_flags, target_flags.556
	andl	$33554432, %eax	#, D.14411
	testl	%eax, %eax	# D.14411
	je	.L574	#,
	.loc 1 1784 0 discriminator 1
	movl	$8, %eax	#, iftmp.555
	jmp	.L575	#
.L574:
	.loc 1 1784 0 discriminator 2
	movl	$4, %eax	#, iftmp.555
.L575:
	.loc 1 1784 0 discriminator 3
	addl	%edx, %eax	# D.14411, D.14411
	subl	$1, %eax	#, D.14411
	movl	target_flags(%rip), %edx	# target_flags, target_flags.558
	andl	$33554432, %edx	#, D.14411
	testl	%edx, %edx	# D.14411
	je	.L576	#,
	.loc 1 1784 0 discriminator 1
	movl	$8, %ecx	#, iftmp.557
	jmp	.L577	#
.L576:
	.loc 1 1784 0 discriminator 2
	movl	$4, %ecx	#, iftmp.557
.L577:
	.loc 1 1784 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.557
.L565:
	movl	%eax, -4(%rbp)	# iftmp.544, nregs
	.loc 1 1785 0 is_stmt 1 discriminator 3
	jmp	.L578	#
.L580:
	.loc 1 1787 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.559
	movl	-20(%rbp), %edx	# regno, tmp100
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# live_relevant_regs.559,
	call	bitmap_clear_bit	#
	.loc 1 1788 0
	movl	-20(%rbp), %eax	# regno, tmp102
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.14414
	testb	%al, %al	# D.14414
	jne	.L579	#,
	.loc 1 1789 0
	movq	-32(%rbp), %rax	# chain, tmp103
	leaq	64(%rax), %rdx	#, D.14415
	movl	-20(%rbp), %eax	# regno, tmp104
	movl	%eax, %esi	# tmp104,
	movq	%rdx, %rdi	# D.14415,
	call	bitmap_set_bit	#
.L579:
	.loc 1 1790 0
	addl	$1, -20(%rbp)	#, regno
.L578:
	.loc 1 1785 0 discriminator 1
	movl	-4(%rbp), %eax	# nregs, nregs.560
	leal	-1(%rax), %edx	#, tmp105
	movl	%edx, -4(%rbp)	# tmp105, nregs
	testl	%eax, %eax	# nregs.560
	jg	.L580	#,
.LBE42:
	jmp	.L555	#
.L556:
	.loc 1 1795 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.561
	movl	-20(%rbp), %edx	# regno, tmp106
	movl	%edx, %esi	# tmp106,
	movq	%rax, %rdi	# live_relevant_regs.561,
	call	bitmap_clear_bit	#
	.loc 1 1796 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.562
	movl	-20(%rbp), %edx	# regno, tmp107
	movslq	%edx, %rdx	# tmp107, D.14416
	addq	%rdx, %rdx	# D.14416
	addq	%rdx, %rax	# D.14416, D.14417
	movzwl	(%rax), %eax	# *_58, D.14418
	testw	%ax, %ax	# D.14418
	js	.L555	#,
	.loc 1 1797 0
	movq	-32(%rbp), %rax	# chain, tmp108
	leaq	64(%rax), %rdx	#, D.14415
	movl	-20(%rbp), %eax	# regno, tmp109
	movl	%eax, %esi	# tmp109,
	movq	%rdx, %rdi	# D.14415,
	call	bitmap_set_bit	#
.L555:
	.loc 1 1799 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	reg_dies, .-reg_dies
	.globl	build_insn_chain
	.type	build_insn_chain, @function
build_insn_chain:
.LFB21:
	.loc 1 1806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# first, first
	.loc 1 1807 0
	movq	$reload_insn_chain, -96(%rbp)	#, p
	.loc 1 1808 0
	movq	$0, -88(%rbp)	#, prev
	.loc 1 1809 0
	movl	$0, -116(%rbp)	#, b
	.loc 1 1812 0
	leaq	-32(%rbp), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	bitmap_initialize	#
	movq	%rax, live_relevant_regs(%rip)	# live_relevant_regs.563, live_relevant_regs
	.loc 1 1814 0
	jmp	.L583	#
.L617:
.LBB43:
	.loc 1 1818 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.564
	movl	-116(%rbp), %edx	# b, tmp139
	movslq	%edx, %rdx	# tmp139, tmp138
	addq	$4, %rdx	#, tmp140
	movq	(%rax,%rdx,8), %rax	# basic_block_info.564_29->data.bb, D.14419
	movq	(%rax), %rax	# _30->head, D.14420
	cmpq	-136(%rbp), %rax	# first, D.14420
	jne	.L584	#,
.LBB44:
	.loc 1 1822 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.565
	movq	%rax, %rdi	# live_relevant_regs.565,
	call	bitmap_clear	#
.LBB45:
	.loc 1 1824 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.566
	movl	-116(%rbp), %edx	# b, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	addq	$4, %rdx	#, tmp143
	movq	(%rax,%rdx,8), %rax	# basic_block_info.566_33->data.bb, D.14419
	movq	64(%rax), %rax	# _34->global_live_at_start, D.14421
	movq	(%rax), %rax	# _35->first, tmp144
	movq	%rax, -80(%rbp)	# tmp144, ptr_
	movl	$0, -104(%rbp)	#, indx_
	movl	$0, -112(%rbp)	#, bit_num_
	movl	$0, -108(%rbp)	#, word_num_
	jmp	.L585	#
.L587:
	.loc 1 1824 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp145
	movq	(%rax), %rax	# ptr__10->next, tmp146
	movq	%rax, -80(%rbp)	# tmp146, ptr_
.L585:
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L586	#,
	.loc 1 1824 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp147
	movl	16(%rax), %eax	# ptr__10->indx, D.14422
	cmpl	-104(%rbp), %eax	# indx_, D.14422
	jb	.L587	#,
.L586:
	.loc 1 1824 0 discriminator 3
	cmpq	$0, -80(%rbp)	#, ptr_
	je	.L588	#,
	.loc 1 1824 0 discriminator 1
	movq	-80(%rbp), %rax	# ptr_, tmp148
	movl	16(%rax), %eax	# ptr__10->indx, D.14422
	cmpl	-104(%rbp), %eax	# indx_, D.14422
	je	.L588	#,
	movl	$0, -112(%rbp)	#, bit_num_
	movl	$0, -108(%rbp)	#, word_num_
	jmp	.L589	#
.L588:
	.loc 1 1824 0 discriminator 2
	jmp	.L589	#
.L599:
	.loc 1 1824 0
	jmp	.L590	#
.L598:
.LBB46:
	.loc 1 1824 0 discriminator 2
	movq	-80(%rbp), %rax	# ptr_, tmp149
	movl	-108(%rbp), %edx	# word_num_, tmp150
	addq	$2, %rdx	#, tmp151
	movq	8(%rax,%rdx,8), %rax	# ptr__11->bits, tmp152
	movq	%rax, -72(%rbp)	# tmp152, word_
	cmpq	$0, -72(%rbp)	#, word_
	je	.L591	#,
	.loc 1 1824 0 discriminator 1
	jmp	.L592	#
.L597:
.LBB47:
	.loc 1 1824 0 discriminator 2
	movl	-112(%rbp), %eax	# bit_num_, bit_num_.567
	movl	$1, %edx	#, tmp153
	movl	%eax, %ecx	# bit_num_.567, tmp225
	salq	%cl, %rdx	# tmp225, tmp154
	movq	%rdx, %rax	# tmp154, tmp154
	movq	%rax, -48(%rbp)	# tmp154, mask_
	movq	-48(%rbp), %rax	# mask_, tmp155
	movq	-72(%rbp), %rdx	# word_, tmp156
	andq	%rdx, %rax	# tmp156, D.14423
	testq	%rax, %rax	# D.14423
	je	.L593	#,
	.loc 1 1824 0 discriminator 1
	movq	-48(%rbp), %rax	# mask_, tmp157
	notq	%rax	# D.14423
	andq	%rax, -72(%rbp)	# D.14423, word_
	movq	-80(%rbp), %rax	# ptr_, tmp158
	movl	16(%rax), %eax	# ptr__11->indx, D.14422
	leal	(%rax,%rax), %edx	#, D.14422
	movl	-108(%rbp), %eax	# word_num_, tmp159
	addl	%edx, %eax	# D.14422, D.14422
	sall	$6, %eax	#, D.14422
	movl	%eax, %edx	# D.14422, D.14422
	movl	-112(%rbp), %eax	# bit_num_, tmp160
	addl	%edx, %eax	# D.14422, D.14422
	movl	%eax, -100(%rbp)	# D.14422, i
	cmpl	$52, -100(%rbp)	#, i
	jg	.L594	#,
	movq	eliminable_regset(%rip), %rdx	# eliminable_regset, eliminable_regset.569
	movl	-100(%rbp), %eax	# i, tmp161
	movl	%eax, %ecx	# tmp161, tmp228
	shrq	%cl, %rdx	# tmp228, D.14423
	movq	%rdx, %rax	# D.14423, D.14423
	andl	$1, %eax	#, D.14423
	testq	%rax, %rax	# D.14423
	sete	%al	#, iftmp.568
	jmp	.L595	#
.L594:
	.loc 1 1824 0 discriminator 2
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.570
	movl	-100(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.14423
	addq	%rdx, %rdx	# D.14423
	addq	%rdx, %rax	# D.14423, D.14424
	movzwl	(%rax), %eax	# *_64, D.14425
	notl	%eax	# tmp163
	shrw	$15, %ax	#, tmp164
.L595:
	.loc 1 1824 0 discriminator 3
	testb	%al, %al	# iftmp.568
	je	.L596	#,
	.loc 1 1824 0 discriminator 1
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.571
	movl	-100(%rbp), %edx	# i, tmp165
	movl	%edx, %esi	# tmp165,
	movq	%rax, %rdi	# live_relevant_regs.571,
	call	bitmap_set_bit	#
.L596:
	.loc 1 1824 0 discriminator 2
	cmpq	$0, -72(%rbp)	#, word_
	jne	.L593	#,
	.loc 1 1824 0 discriminator 1
	jmp	.L591	#
.L593:
.LBE47:
	.loc 1 1824 0 discriminator 2
	addl	$1, -112(%rbp)	#, bit_num_
.L592:
	.loc 1 1824 0 discriminator 1
	cmpl	$63, -112(%rbp)	#, bit_num_
	jbe	.L597	#,
.L591:
	.loc 1 1824 0 discriminator 2
	movl	$0, -112(%rbp)	#, bit_num_
.LBE46:
	addl	$1, -108(%rbp)	#, word_num_
.L590:
	.loc 1 1824 0 discriminator 1
	cmpl	$1, -108(%rbp)	#, word_num_
	jbe	.L598	#,
	.loc 1 1824 0 discriminator 3
	movl	$0, -108(%rbp)	#, word_num_
	movq	-80(%rbp), %rax	# ptr_, tmp166
	movq	(%rax), %rax	# ptr__11->next, tmp167
	movq	%rax, -80(%rbp)	# tmp167, ptr_
.L589:
	.loc 1 1824 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, ptr_
	jne	.L599	#,
.L584:
.LBE45:
.LBE44:
	.loc 1 1834 0 is_stmt 1
	movq	-136(%rbp), %rax	# first, tmp168
	movzwl	(%rax), %eax	# first_2->code, D.14426
	cmpw	$37, %ax	#, D.14426
	je	.L600	#,
	.loc 1 1834 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# first, tmp169
	movzwl	(%rax), %eax	# first_2->code, D.14426
	cmpw	$35, %ax	#, D.14426
	je	.L600	#,
	.loc 1 1836 0 is_stmt 1
	call	new_insn_chain	#
	movq	%rax, -40(%rbp)	# tmp170, c
	.loc 1 1837 0
	movq	-40(%rbp), %rax	# c, tmp171
	movq	-88(%rbp), %rdx	# prev, tmp172
	movq	%rdx, 8(%rax)	# tmp172, c_75->prev
	.loc 1 1838 0
	movq	-40(%rbp), %rax	# c, tmp173
	movq	%rax, -88(%rbp)	# tmp173, prev
	.loc 1 1839 0
	movq	-96(%rbp), %rax	# p, tmp174
	movq	-40(%rbp), %rdx	# c, tmp175
	movq	%rdx, (%rax)	# tmp175, *p_4
	.loc 1 1840 0
	movq	-40(%rbp), %rax	# c, tmp176
	movq	%rax, -96(%rbp)	# tmp176, p
	.loc 1 1841 0
	movq	-40(%rbp), %rax	# c, tmp177
	movq	-136(%rbp), %rdx	# first, tmp178
	movq	%rdx, 32(%rax)	# tmp178, c_75->insn
	.loc 1 1842 0
	movq	-40(%rbp), %rax	# c, tmp179
	movl	-116(%rbp), %edx	# b, tmp180
	movl	%edx, 24(%rax)	# tmp180, c_75->block
	.loc 1 1844 0
	movq	-136(%rbp), %rax	# first, tmp181
	movzwl	(%rax), %eax	# first_2->code, D.14426
	movzwl	%ax, %eax	# D.14426, D.14427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14428
	cmpb	$105, %al	#, D.14428
	jne	.L601	#,
.LBB48:
	.loc 1 1850 0
	movq	-136(%rbp), %rax	# first, tmp183
	movq	56(%rax), %rax	# first_2->fld[6].rtx, tmp184
	movq	%rax, -64(%rbp)	# tmp184, link
	jmp	.L602	#
.L604:
	.loc 1 1851 0
	movq	-64(%rbp), %rax	# link, tmp185
	movzbl	2(%rax), %eax	# link_21->mode, D.14429
	cmpb	$1, %al	#, D.14429
	jne	.L603	#,
	.loc 1 1852 0
	movq	-64(%rbp), %rax	# link, tmp186
	movq	8(%rax), %rax	# link_21->fld[0].rtx, D.14420
	movzwl	(%rax), %eax	# _83->code, D.14426
	cmpw	$61, %ax	#, D.14426
	jne	.L603	#,
	.loc 1 1853 0
	movq	-64(%rbp), %rax	# link, tmp187
	movq	8(%rax), %rax	# link_21->fld[0].rtx, D.14420
	movzbl	2(%rax), %eax	# _85->mode, D.14429
	movzbl	%al, %ecx	# D.14429, D.14430
	movq	-64(%rbp), %rax	# link, tmp188
	movq	8(%rax), %rax	# link_21->fld[0].rtx, D.14420
	movl	8(%rax), %eax	# _88->fld[0].rtuint, D.14422
	movq	-40(%rbp), %rdx	# c, tmp189
	movl	%ecx, %esi	# D.14430,
	movl	%eax, %edi	# D.14427,
	call	reg_dies	#
.L603:
	.loc 1 1850 0
	movq	-64(%rbp), %rax	# link, tmp190
	movq	16(%rax), %rax	# link_21->fld[1].rtx, tmp191
	movq	%rax, -64(%rbp)	# tmp191, link
.L602:
	.loc 1 1850 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, link
	jne	.L604	#,
	.loc 1 1856 0 is_stmt 1
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.572
	movq	-40(%rbp), %rdx	# c, tmp192
	addq	$40, %rdx	#, D.14431
	movq	%rax, %rsi	# live_relevant_regs.572,
	movq	%rdx, %rdi	# D.14431,
	call	bitmap_copy	#
	.loc 1 1861 0
	movq	-40(%rbp), %rax	# c, tmp193
	leaq	64(%rax), %rdx	#, D.14431
	.loc 1 1860 0
	movq	-136(%rbp), %rax	# first, tmp194
	movq	32(%rax), %rax	# first_2->fld[3].rtx, D.14420
	movl	$reg_becomes_live, %esi	#,
	movq	%rax, %rdi	# D.14420,
	call	note_stores	#
.LBE48:
	jmp	.L605	#
.L601:
	.loc 1 1864 0
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.573
	movq	-40(%rbp), %rdx	# c, tmp195
	addq	$40, %rdx	#, D.14431
	movq	%rax, %rsi	# live_relevant_regs.573,
	movq	%rdx, %rdi	# D.14431,
	call	bitmap_copy	#
.L605:
	.loc 1 1866 0
	movq	-136(%rbp), %rax	# first, tmp196
	movzwl	(%rax), %eax	# first_2->code, D.14426
	movzwl	%ax, %eax	# D.14426, D.14427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14428
	cmpb	$105, %al	#, D.14428
	jne	.L600	#,
.LBB49:
	.loc 1 1872 0
	movq	-136(%rbp), %rax	# first, tmp198
	movq	56(%rax), %rax	# first_2->fld[6].rtx, tmp199
	movq	%rax, -56(%rbp)	# tmp199, link
	jmp	.L606	#
.L608:
	.loc 1 1873 0
	movq	-56(%rbp), %rax	# link, tmp200
	movzbl	2(%rax), %eax	# link_22->mode, D.14429
	cmpb	$10, %al	#, D.14429
	jne	.L607	#,
	.loc 1 1874 0
	movq	-56(%rbp), %rax	# link, tmp201
	movq	8(%rax), %rax	# link_22->fld[0].rtx, D.14420
	movzwl	(%rax), %eax	# _103->code, D.14426
	cmpw	$61, %ax	#, D.14426
	jne	.L607	#,
	.loc 1 1875 0
	movq	-56(%rbp), %rax	# link, tmp202
	movq	8(%rax), %rax	# link_22->fld[0].rtx, D.14420
	movzbl	2(%rax), %eax	# _105->mode, D.14429
	movzbl	%al, %ecx	# D.14429, D.14430
	movq	-56(%rbp), %rax	# link, tmp203
	movq	8(%rax), %rax	# link_22->fld[0].rtx, D.14420
	movl	8(%rax), %eax	# _108->fld[0].rtuint, D.14422
	movq	-40(%rbp), %rdx	# c, tmp204
	movl	%ecx, %esi	# D.14430,
	movl	%eax, %edi	# D.14427,
	call	reg_dies	#
.L607:
	.loc 1 1872 0
	movq	-56(%rbp), %rax	# link, tmp205
	movq	16(%rax), %rax	# link_22->fld[1].rtx, tmp206
	movq	%rax, -56(%rbp)	# tmp206, link
.L606:
	.loc 1 1872 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L608	#,
.L600:
.LBE49:
	.loc 1 1880 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.574
	movl	-116(%rbp), %edx	# b, tmp208
	movslq	%edx, %rdx	# tmp208, tmp207
	addq	$4, %rdx	#, tmp209
	movq	(%rax,%rdx,8), %rax	# basic_block_info.574_112->data.bb, D.14419
	movq	8(%rax), %rax	# _113->end, D.14420
	cmpq	-136(%rbp), %rax	# first, D.14420
	jne	.L609	#,
	.loc 1 1881 0
	addl	$1, -116(%rbp)	#, b
.L609:
	.loc 1 1889 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.575
	cmpl	%eax, -116(%rbp)	# n_basic_blocks.575, b
	jne	.L610	#,
	.loc 1 1891 0
	movq	-136(%rbp), %rax	# first, tmp210
	movq	24(%rax), %rax	# first_2->fld[2].rtx, tmp211
	movq	%rax, -136(%rbp)	# tmp211, first
	jmp	.L611	#
.L615:
	.loc 1 1892 0
	movq	-136(%rbp), %rax	# first, tmp212
	movzwl	(%rax), %eax	# first_1->code, D.14426
	movzwl	%ax, %eax	# D.14426, D.14427
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14428
	cmpb	$105, %al	#, D.14428
	jne	.L612	#,
	.loc 1 1893 0
	movq	-136(%rbp), %rax	# first, tmp214
	movq	32(%rax), %rax	# first_1->fld[3].rtx, D.14420
	movzwl	(%rax), %eax	# _121->code, D.14426
	cmpw	$48, %ax	#, D.14426
	je	.L612	#,
	.loc 1 1894 0
	movq	-136(%rbp), %rax	# first, tmp215
	movq	32(%rax), %rax	# first_1->fld[3].rtx, D.14420
	movzwl	(%rax), %eax	# _123->code, D.14426
	cmpw	$44, %ax	#, D.14426
	je	.L613	#,
	.loc 1 1895 0
	movq	-136(%rbp), %rax	# first, tmp216
	movq	32(%rax), %rax	# first_1->fld[3].rtx, D.14420
	movzwl	(%rax), %eax	# _125->code, D.14426
	cmpw	$45, %ax	#, D.14426
	jne	.L614	#,
.L613:
	.loc 1 1896 0
	movq	-136(%rbp), %rax	# first, tmp217
	movq	%rax, %rdi	# tmp217,
	call	prev_real_insn	#
	testq	%rax, %rax	# D.14420
	je	.L614	#,
	.loc 1 1897 0
	movq	-136(%rbp), %rax	# first, tmp218
	movq	%rax, %rdi	# tmp218,
	call	prev_real_insn	#
	movzwl	(%rax), %eax	# _128->code, D.14426
	.loc 1 1894 0
	cmpw	$33, %ax	#, D.14426
	je	.L612	#,
.L614:
	.loc 1 1898 0
	movl	$__FUNCTION__.11014, %edx	#,
	movl	$1898, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L612:
	.loc 1 1891 0
	movq	-136(%rbp), %rax	# first, tmp219
	movq	24(%rax), %rax	# first_1->fld[2].rtx, tmp220
	movq	%rax, -136(%rbp)	# tmp220, first
.L611:
	.loc 1 1891 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, first
	jne	.L615	#,
	.loc 1 1899 0 is_stmt 1
	jmp	.L616	#
.L610:
.LBE43:
	.loc 1 1814 0
	movq	-136(%rbp), %rax	# first, tmp221
	movq	24(%rax), %rax	# first_2->fld[2].rtx, tmp222
	movq	%rax, -136(%rbp)	# tmp222, first
.L583:
	.loc 1 1814 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, first
	jne	.L617	#,
.L616:
	.loc 1 1902 0 is_stmt 1
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.576
	testq	%rax, %rax	# live_relevant_regs.576
	je	.L618	#,
	.loc 1 1902 0 is_stmt 0 discriminator 1
	movq	live_relevant_regs(%rip), %rax	# live_relevant_regs, live_relevant_regs.577
	movq	%rax, %rdi	# live_relevant_regs.577,
	call	bitmap_clear	#
	movq	$0, live_relevant_regs(%rip)	#, live_relevant_regs
.L618:
	.loc 1 1903 0 is_stmt 1
	movq	-96(%rbp), %rax	# p, tmp223
	movq	$0, (%rax)	#, *p_5
	.loc 1 1904 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	build_insn_chain, .-build_insn_chain
	.section	.rodata
.LC1:
	.string	";; %d regs to allocate:"
.LC2:
	.string	" %d"
.LC3:
	.string	"+%d"
.LC4:
	.string	" (%d)"
.LC5:
	.string	";; %d conflicts:"
.LC6:
	.string	";; %d preferences:"
	.text
	.type	dump_conflicts, @function
dump_conflicts:
.LFB22:
	.loc 1 1912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	.loc 1 1916 0
	movl	$0, -12(%rbp)	#, nregs
	.loc 1 1917 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L620	#
.L623:
	.loc 1 1919 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.578
	movq	allocno(%rip), %rdx	# allocno, allocno.579
	movq	allocno_order(%rip), %rcx	# allocno_order, allocno_order.580
	movl	-20(%rbp), %esi	# i, tmp194
	movslq	%esi, %rsi	# tmp194, D.14432
	salq	$2, %rsi	#, D.14432
	addq	%rsi, %rcx	# D.14432, D.14433
	movl	(%rcx), %ecx	# *_21, D.14434
	movslq	%ecx, %rcx	# D.14434, D.14432
	salq	$6, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14435
	movl	(%rdx), %edx	# _25->reg, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	addq	%rdx, %rdx	# D.14432
	addq	%rdx, %rax	# D.14432, D.14436
	movzwl	(%rax), %eax	# *_29, D.14437
	testw	%ax, %ax	# D.14437
	js	.L621	#,
	.loc 1 1920 0
	jmp	.L622	#
.L621:
	.loc 1 1921 0
	addl	$1, -12(%rbp)	#, nregs
.L622:
	.loc 1 1917 0
	addl	$1, -20(%rbp)	#, i
.L620:
	.loc 1 1917 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.581
	cmpl	%eax, -20(%rbp)	# max_allocno.581, i
	jl	.L623	#,
	.loc 1 1923 0 is_stmt 1
	movl	-12(%rbp), %edx	# nregs, tmp195
	movq	-40(%rbp), %rax	# file, tmp196
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp196,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1924 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L624	#
.L630:
.LBB50:
	.loc 1 1927 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.582
	movq	allocno(%rip), %rdx	# allocno, allocno.583
	movq	allocno_order(%rip), %rcx	# allocno_order, allocno_order.584
	movl	-20(%rbp), %esi	# i, tmp197
	movslq	%esi, %rsi	# tmp197, D.14432
	salq	$2, %rsi	#, D.14432
	addq	%rsi, %rcx	# D.14432, D.14433
	movl	(%rcx), %ecx	# *_41, D.14434
	movslq	%ecx, %rcx	# D.14434, D.14432
	salq	$6, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14435
	movl	(%rdx), %edx	# _45->reg, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	addq	%rdx, %rdx	# D.14432
	addq	%rdx, %rax	# D.14432, D.14436
	movzwl	(%rax), %eax	# *_49, D.14437
	testw	%ax, %ax	# D.14437
	js	.L625	#,
	.loc 1 1928 0
	jmp	.L626	#
.L625:
	.loc 1 1929 0
	movq	allocno(%rip), %rax	# allocno, allocno.585
	movq	allocno_order(%rip), %rdx	# allocno_order, allocno_order.586
	movl	-20(%rbp), %ecx	# i, tmp198
	movslq	%ecx, %rcx	# tmp198, D.14432
	salq	$2, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14433
	movl	(%rdx), %edx	# *_55, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	(%rax), %edx	# _59->reg, D.14434
	movq	-40(%rbp), %rax	# file, tmp199
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp199,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1930 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L627	#
.L629:
	.loc 1 1931 0
	movq	reg_allocno(%rip), %rax	# reg_allocno, reg_allocno.587
	movl	-8(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, D.14432
	salq	$2, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14433
	movl	(%rax), %edx	# *_66, D.14434
	movq	allocno_order(%rip), %rax	# allocno_order, allocno_order.588
	movl	-20(%rbp), %ecx	# i, tmp201
	movslq	%ecx, %rcx	# tmp201, D.14432
	salq	$2, %rcx	#, D.14432
	addq	%rcx, %rax	# D.14432, D.14433
	movl	(%rax), %eax	# *_71, D.14434
	cmpl	%eax, %edx	# D.14434, D.14434
	jne	.L628	#,
	.loc 1 1932 0
	movq	allocno(%rip), %rax	# allocno, allocno.589
	movq	allocno_order(%rip), %rdx	# allocno_order, allocno_order.590
	movl	-20(%rbp), %ecx	# i, tmp202
	movslq	%ecx, %rcx	# tmp202, D.14432
	salq	$2, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14433
	movl	(%rdx), %edx	# *_77, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	(%rax), %eax	# _81->reg, D.14434
	cmpl	-8(%rbp), %eax	# j, D.14434
	je	.L628	#,
	.loc 1 1933 0
	movl	-8(%rbp), %edx	# j, tmp203
	movq	-40(%rbp), %rax	# file, tmp204
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp204,
	movl	$0, %eax	#,
	call	fprintf	#
.L628:
	.loc 1 1930 0
	addl	$1, -8(%rbp)	#, j
.L627:
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.591
	cmpl	%eax, -8(%rbp)	# max_regno.591, j
	jl	.L629	#,
	.loc 1 1934 0 is_stmt 1
	movq	allocno(%rip), %rax	# allocno, allocno.592
	movq	allocno_order(%rip), %rdx	# allocno_order, allocno_order.593
	movl	-20(%rbp), %ecx	# i, tmp205
	movslq	%ecx, %rcx	# tmp205, D.14432
	salq	$2, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14433
	movl	(%rdx), %edx	# *_88, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	4(%rax), %eax	# _92->size, D.14434
	cmpl	$1, %eax	#, D.14434
	je	.L626	#,
	.loc 1 1935 0
	movq	allocno(%rip), %rax	# allocno, allocno.594
	movq	allocno_order(%rip), %rdx	# allocno_order, allocno_order.595
	movl	-20(%rbp), %ecx	# i, tmp206
	movslq	%ecx, %rcx	# tmp206, D.14432
	salq	$2, %rcx	#, D.14432
	addq	%rcx, %rdx	# D.14432, D.14433
	movl	(%rdx), %edx	# *_98, D.14434
	movslq	%edx, %rdx	# D.14434, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	4(%rax), %edx	# _102->size, D.14434
	movq	-40(%rbp), %rax	# file, tmp207
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	fprintf	#
.L626:
.LBE50:
	.loc 1 1924 0
	addl	$1, -20(%rbp)	#, i
.L624:
	.loc 1 1924 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.596
	cmpl	%eax, -20(%rbp)	# max_allocno.596, i
	jl	.L630	#,
	.loc 1 1937 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp208
	movq	%rax, %rsi	# tmp208,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1939 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L631	#
.L646:
.LBB51:
	.loc 1 1942 0
	movq	allocno(%rip), %rax	# allocno, allocno.597
	movl	-20(%rbp), %edx	# i, tmp209
	movslq	%edx, %rdx	# tmp209, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	(%rax), %edx	# _110->reg, D.14434
	movq	-40(%rbp), %rax	# file, tmp210
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp210,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1943 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L632	#
.L634:
	.loc 1 1944 0
	movq	conflicts(%rip), %rdx	# conflicts, conflicts.598
	movl	allocno_row_words(%rip), %eax	# allocno_row_words, allocno_row_words.599
	imull	-4(%rbp), %eax	# j, D.14434
	movl	-20(%rbp), %ecx	# i, i.600
	shrl	$6, %ecx	#, D.14438
	addl	%ecx, %eax	# D.14438, D.14438
	movl	%eax, %eax	# D.14438, D.14432
	salq	$3, %rax	#, D.14432
	addq	%rdx, %rax	# conflicts.598, D.14439
	movq	(%rax), %rdx	# *_123, D.14440
	movl	-20(%rbp), %eax	# i, tmp211
	andl	$63, %eax	#, D.14434
	movl	%eax, %ecx	# D.14434, tmp230
	sarq	%cl, %rdx	# tmp230, D.14440
	movq	%rdx, %rax	# D.14440, D.14440
	andl	$1, %eax	#, D.14440
	testq	%rax, %rax	# D.14440
	je	.L633	#,
	.loc 1 1945 0
	movq	allocno(%rip), %rax	# allocno, allocno.601
	movl	-4(%rbp), %edx	# j, tmp212
	movslq	%edx, %rdx	# tmp212, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	(%rax), %edx	# _131->reg, D.14434
	movq	-40(%rbp), %rax	# file, tmp213
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp213,
	movl	$0, %eax	#,
	call	fprintf	#
.L633:
	.loc 1 1943 0
	addl	$1, -4(%rbp)	#, j
.L632:
	.loc 1 1943 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.602
	cmpl	%eax, -4(%rbp)	# max_allocno.602, j
	jl	.L634	#,
	.loc 1 1946 0 is_stmt 1
	movl	$0, -4(%rbp)	#, j
	jmp	.L635	#
.L637:
	.loc 1 1947 0
	movq	allocno(%rip), %rax	# allocno, allocno.603
	movl	-20(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movq	24(%rax), %rdx	# _138->hard_reg_conflicts, D.14432
	movl	-4(%rbp), %eax	# j, tmp215
	movl	%eax, %ecx	# tmp215, tmp232
	shrq	%cl, %rdx	# tmp232, D.14432
	movq	%rdx, %rax	# D.14432, D.14432
	andl	$1, %eax	#, D.14432
	testq	%rax, %rax	# D.14432
	je	.L636	#,
	.loc 1 1948 0
	movl	-4(%rbp), %edx	# j, tmp216
	movq	-40(%rbp), %rax	# file, tmp217
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp217,
	movl	$0, %eax	#,
	call	fprintf	#
.L636:
	.loc 1 1946 0
	addl	$1, -4(%rbp)	#, j
.L635:
	.loc 1 1946 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, j
	jle	.L637	#,
	.loc 1 1949 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp218
	movq	%rax, %rsi	# tmp218,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1951 0
	movl	$0, -16(%rbp)	#, has_preferences
	.loc 1 1952 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L638	#
.L640:
	.loc 1 1953 0
	movq	allocno(%rip), %rax	# allocno, allocno.604
	movl	-20(%rbp), %edx	# i, tmp219
	movslq	%edx, %rdx	# tmp219, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movq	32(%rax), %rdx	# _148->hard_reg_preferences, D.14432
	movl	-4(%rbp), %eax	# j, tmp220
	movl	%eax, %ecx	# tmp220, tmp234
	shrq	%cl, %rdx	# tmp234, D.14432
	movq	%rdx, %rax	# D.14432, D.14432
	andl	$1, %eax	#, D.14432
	testq	%rax, %rax	# D.14432
	je	.L639	#,
	.loc 1 1954 0
	movl	$1, -16(%rbp)	#, has_preferences
.L639:
	.loc 1 1952 0
	addl	$1, -4(%rbp)	#, j
.L638:
	.loc 1 1952 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, j
	jle	.L640	#,
	.loc 1 1956 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, has_preferences
	jne	.L641	#,
	.loc 1 1957 0
	jmp	.L642	#
.L641:
	.loc 1 1958 0
	movq	allocno(%rip), %rax	# allocno, allocno.605
	movl	-20(%rbp), %edx	# i, tmp221
	movslq	%edx, %rdx	# tmp221, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movl	(%rax), %edx	# _157->reg, D.14434
	movq	-40(%rbp), %rax	# file, tmp222
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp222,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1959 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L643	#
.L645:
	.loc 1 1960 0
	movq	allocno(%rip), %rax	# allocno, allocno.606
	movl	-20(%rbp), %edx	# i, tmp223
	movslq	%edx, %rdx	# tmp223, D.14432
	salq	$6, %rdx	#, D.14432
	addq	%rdx, %rax	# D.14432, D.14435
	movq	32(%rax), %rdx	# _163->hard_reg_preferences, D.14432
	movl	-4(%rbp), %eax	# j, tmp224
	movl	%eax, %ecx	# tmp224, tmp236
	shrq	%cl, %rdx	# tmp236, D.14432
	movq	%rdx, %rax	# D.14432, D.14432
	andl	$1, %eax	#, D.14432
	testq	%rax, %rax	# D.14432
	je	.L644	#,
	.loc 1 1961 0
	movl	-4(%rbp), %edx	# j, tmp225
	movq	-40(%rbp), %rax	# file, tmp226
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp226,
	movl	$0, %eax	#,
	call	fprintf	#
.L644:
	.loc 1 1959 0
	addl	$1, -4(%rbp)	#, j
.L643:
	.loc 1 1959 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, j
	jle	.L645	#,
	.loc 1 1962 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp227
	movq	%rax, %rsi	# tmp227,
	movl	$10, %edi	#,
	call	fputc	#
.L642:
.LBE51:
	.loc 1 1939 0
	addl	$1, -20(%rbp)	#, i
.L631:
	.loc 1 1939 0 is_stmt 0 discriminator 1
	movl	max_allocno(%rip), %eax	# max_allocno, max_allocno.607
	cmpl	%eax, -20(%rbp)	# max_allocno.607, i
	jl	.L646	#,
	.loc 1 1964 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp228
	movq	%rax, %rsi	# tmp228,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1965 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	dump_conflicts, .-dump_conflicts
	.section	.rodata
.LC7:
	.string	";; Register dispositions:\n"
.LC8:
	.string	"%d in %d  "
.LC9:
	.string	"\n\n;; Hard regs used: "
.LC10:
	.string	"\n\n"
	.text
	.globl	dump_global_regs
	.type	dump_global_regs, @function
dump_global_regs:
.LFB23:
	.loc 1 1970 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	.loc 1 1973 0
	movq	-24(%rbp), %rax	# file, tmp73
	movq	%rax, %rcx	# tmp73,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	.loc 1 1974 0
	movl	$53, -8(%rbp)	#, i
	movl	$0, -4(%rbp)	#, j
	jmp	.L648	#
.L650:
	.loc 1 1975 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.608
	movl	-8(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, D.14447
	addq	%rdx, %rdx	# D.14447
	addq	%rdx, %rax	# D.14447, D.14448
	movzwl	(%rax), %eax	# *_12, D.14449
	testw	%ax, %ax	# D.14449
	js	.L649	#,
	.loc 1 1977 0
	movq	reg_renumber(%rip), %rax	# reg_renumber, reg_renumber.609
	movl	-8(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.14447
	addq	%rdx, %rdx	# D.14447
	addq	%rdx, %rax	# D.14447, D.14448
	movzwl	(%rax), %eax	# *_17, D.14449
	movswl	%ax, %ecx	# D.14449, D.14450
	movl	-8(%rbp), %edx	# i, tmp76
	movq	-24(%rbp), %rax	# file, tmp77
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1978 0
	addl	$1, -4(%rbp)	#, j
	movl	-4(%rbp), %ecx	# j, tmp78
	movl	$715827883, %edx	#, tmp80
	movl	%ecx, %eax	# tmp78, tmp91
	imull	%edx	# tmp80
	movl	%ecx, %eax	# tmp78, tmp81
	sarl	$31, %eax	#, tmp81
	subl	%eax, %edx	# tmp81, D.14450
	movl	%edx, %eax	# D.14450, tmp82
	addl	%eax, %eax	# tmp82
	addl	%edx, %eax	# D.14450, tmp82
	addl	%eax, %eax	# tmp83
	subl	%eax, %ecx	# tmp82, D.14450
	movl	%ecx, %edx	# D.14450, D.14450
	testl	%edx, %edx	# D.14450
	jne	.L649	#,
	.loc 1 1979 0
	movq	-24(%rbp), %rax	# file, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$10, %edi	#,
	call	fputc	#
.L649:
	.loc 1 1974 0
	addl	$1, -8(%rbp)	#, i
.L648:
	.loc 1 1974 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.610
	cmpl	%eax, -8(%rbp)	# max_regno.610, i
	jl	.L650	#,
	.loc 1 1982 0 is_stmt 1
	movq	-24(%rbp), %rax	# file, tmp85
	movq	%rax, %rcx	# tmp85,
	movl	$21, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	.loc 1 1983 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L651	#
.L653:
	.loc 1 1984 0
	movl	-8(%rbp), %eax	# i, tmp87
	cltq
	movzbl	regs_ever_live(%rax), %eax	# regs_ever_live, D.14451
	testb	%al, %al	# D.14451
	je	.L652	#,
	.loc 1 1985 0
	movl	-8(%rbp), %edx	# i, tmp88
	movq	-24(%rbp), %rax	# file, tmp89
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp89,
	movl	$0, %eax	#,
	call	fprintf	#
.L652:
	.loc 1 1983 0
	addl	$1, -8(%rbp)	#, i
.L651:
	.loc 1 1983 0 is_stmt 0 discriminator 1
	cmpl	$52, -8(%rbp)	#, i
	jle	.L653	#,
	.loc 1 1986 0 is_stmt 1
	movq	-24(%rbp), %rax	# file, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 1987 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	dump_global_regs, .-dump_global_regs
	.section	.rodata
	.align 32
	.type	eliminables.10607, @object
	.size	eliminables.10607, 32
eliminables.10607:
# from:
	.long	16
# to:
	.long	7
# from:
	.long	16
# to:
	.long	6
# from:
	.long	20
# to:
	.long	7
# from:
	.long	20
# to:
	.long	6
	.type	__FUNCTION__.10628, @object
	.size	__FUNCTION__.10628, 13
__FUNCTION__.10628:
	.string	"global_alloc"
	.align 16
	.type	__FUNCTION__.11014, @object
	.size	__FUNCTION__.11014, 17
__FUNCTION__.11014:
	.string	"build_insn_chain"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "hard-reg-set.h"
	.file 11 "bitmap.h"
	.file 12 "basic-block.h"
	.file 13 "varray.h"
	.file 14 "regs.h"
	.file 15 "function.h"
	.file 16 "reload.h"
	.file 17 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3085
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF717
	.byte	0x1
	.long	.LASF718
	.long	.LASF719
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x26b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd4a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xd5a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF720
	.uleb128 0xa
	.long	0x13e
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xd
	.long	.LASF100
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x1f6
	.uleb128 0xe
	.long	.LASF17
	.sleb128 0
	.uleb128 0xe
	.long	.LASF18
	.sleb128 1
	.uleb128 0xe
	.long	.LASF19
	.sleb128 2
	.uleb128 0xe
	.long	.LASF20
	.sleb128 3
	.uleb128 0xe
	.long	.LASF21
	.sleb128 4
	.uleb128 0xe
	.long	.LASF22
	.sleb128 5
	.uleb128 0xe
	.long	.LASF23
	.sleb128 6
	.uleb128 0xe
	.long	.LASF24
	.sleb128 7
	.uleb128 0xe
	.long	.LASF25
	.sleb128 8
	.uleb128 0xe
	.long	.LASF26
	.sleb128 9
	.uleb128 0xe
	.long	.LASF27
	.sleb128 10
	.uleb128 0xe
	.long	.LASF28
	.sleb128 11
	.uleb128 0xe
	.long	.LASF29
	.sleb128 12
	.uleb128 0xe
	.long	.LASF30
	.sleb128 13
	.uleb128 0xe
	.long	.LASF31
	.sleb128 14
	.uleb128 0xe
	.long	.LASF32
	.sleb128 15
	.uleb128 0xe
	.long	.LASF33
	.sleb128 16
	.uleb128 0xe
	.long	.LASF34
	.sleb128 17
	.uleb128 0xe
	.long	.LASF35
	.sleb128 18
	.uleb128 0xe
	.long	.LASF36
	.sleb128 19
	.uleb128 0xe
	.long	.LASF37
	.sleb128 20
	.uleb128 0xe
	.long	.LASF38
	.sleb128 21
	.uleb128 0xe
	.long	.LASF39
	.sleb128 22
	.uleb128 0xe
	.long	.LASF40
	.sleb128 23
	.uleb128 0xe
	.long	.LASF41
	.sleb128 24
	.uleb128 0xe
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xf
	.long	.LASF43
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x25f
	.uleb128 0x10
	.long	.LASF44
	.byte	0x4
	.value	0x684
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x4
	.value	0x685
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF46
	.byte	0x4
	.value	0x686
	.long	0x13e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF47
	.byte	0x4
	.value	0x687
	.long	0x13e
	.byte	0xc
	.uleb128 0x10
	.long	.LASF48
	.byte	0x4
	.value	0x688
	.long	0x13e
	.byte	0x10
	.uleb128 0x10
	.long	.LASF49
	.byte	0x4
	.value	0x689
	.long	0x13e
	.byte	0x14
	.uleb128 0x10
	.long	.LASF50
	.byte	0x4
	.value	0x68a
	.long	0x13e
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x4
	.value	0x68b
	.long	0x1f6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF52
	.uleb128 0x12
	.byte	0x8
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x286
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x8c
	.long	0x274
	.uleb128 0x7
	.long	.LASF61
	.byte	0x6
	.byte	0x8d
	.long	0x274
	.uleb128 0x3
	.byte	0x8
	.long	0x2c5
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x2d7
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x458
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xf7
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xfc
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xfd
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xfe
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xff
	.long	0x2bf
	.byte	0x20
	.uleb128 0x10
	.long	.LASF70
	.byte	0x8
	.value	0x100
	.long	0x2bf
	.byte	0x28
	.uleb128 0x10
	.long	.LASF71
	.byte	0x8
	.value	0x101
	.long	0x2bf
	.byte	0x30
	.uleb128 0x10
	.long	.LASF72
	.byte	0x8
	.value	0x102
	.long	0x2bf
	.byte	0x38
	.uleb128 0x10
	.long	.LASF73
	.byte	0x8
	.value	0x103
	.long	0x2bf
	.byte	0x40
	.uleb128 0x10
	.long	.LASF74
	.byte	0x8
	.value	0x105
	.long	0x2bf
	.byte	0x48
	.uleb128 0x10
	.long	.LASF75
	.byte	0x8
	.value	0x106
	.long	0x2bf
	.byte	0x50
	.uleb128 0x10
	.long	.LASF76
	.byte	0x8
	.value	0x107
	.long	0x2bf
	.byte	0x58
	.uleb128 0x10
	.long	.LASF77
	.byte	0x8
	.value	0x109
	.long	0x490
	.byte	0x60
	.uleb128 0x10
	.long	.LASF78
	.byte	0x8
	.value	0x10b
	.long	0x496
	.byte	0x68
	.uleb128 0x10
	.long	.LASF79
	.byte	0x8
	.value	0x10d
	.long	0x13e
	.byte	0x70
	.uleb128 0x10
	.long	.LASF80
	.byte	0x8
	.value	0x111
	.long	0x13e
	.byte	0x74
	.uleb128 0x10
	.long	.LASF81
	.byte	0x8
	.value	0x113
	.long	0x2a9
	.byte	0x78
	.uleb128 0x10
	.long	.LASF82
	.byte	0x8
	.value	0x117
	.long	0x294
	.byte	0x80
	.uleb128 0x10
	.long	.LASF83
	.byte	0x8
	.value	0x118
	.long	0x29b
	.byte	0x82
	.uleb128 0x10
	.long	.LASF84
	.byte	0x8
	.value	0x119
	.long	0x49c
	.byte	0x83
	.uleb128 0x10
	.long	.LASF85
	.byte	0x8
	.value	0x11d
	.long	0x4ac
	.byte	0x88
	.uleb128 0x10
	.long	.LASF86
	.byte	0x8
	.value	0x126
	.long	0x2b4
	.byte	0x90
	.uleb128 0x10
	.long	.LASF87
	.byte	0x8
	.value	0x12f
	.long	0x272
	.byte	0x98
	.uleb128 0x10
	.long	.LASF88
	.byte	0x8
	.value	0x130
	.long	0x272
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF89
	.byte	0x8
	.value	0x131
	.long	0x272
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF90
	.byte	0x8
	.value	0x132
	.long	0x272
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x8
	.value	0x133
	.long	0x27b
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0x13e
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x8
	.value	0x137
	.long	0x4b2
	.byte	0xc4
	.byte	0
	.uleb128 0x13
	.long	.LASF721
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF94
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x490
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0xa2
	.long	0x490
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0xa3
	.long	0x496
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0xa7
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45f
	.uleb128 0x3
	.byte	0x8
	.long	0x2d7
	.uleb128 0x14
	.long	0x2c5
	.long	0x4ac
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x458
	.uleb128 0x14
	.long	0x2c5
	.long	0x4c2
	.uleb128 0x15
	.long	0x145
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c8
	.uleb128 0xa
	.long	0x2c5
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF98
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF99
	.uleb128 0x3
	.byte	0x8
	.long	0x13e
	.uleb128 0x3
	.byte	0x8
	.long	0x4e7
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x65d
	.uleb128 0xe
	.long	.LASF102
	.sleb128 0
	.uleb128 0xe
	.long	.LASF103
	.sleb128 1
	.uleb128 0xe
	.long	.LASF104
	.sleb128 2
	.uleb128 0xe
	.long	.LASF105
	.sleb128 3
	.uleb128 0xe
	.long	.LASF106
	.sleb128 4
	.uleb128 0xe
	.long	.LASF107
	.sleb128 5
	.uleb128 0xe
	.long	.LASF108
	.sleb128 6
	.uleb128 0xe
	.long	.LASF109
	.sleb128 7
	.uleb128 0xe
	.long	.LASF110
	.sleb128 8
	.uleb128 0xe
	.long	.LASF111
	.sleb128 9
	.uleb128 0xe
	.long	.LASF112
	.sleb128 10
	.uleb128 0xe
	.long	.LASF113
	.sleb128 11
	.uleb128 0xe
	.long	.LASF114
	.sleb128 12
	.uleb128 0xe
	.long	.LASF115
	.sleb128 13
	.uleb128 0xe
	.long	.LASF116
	.sleb128 14
	.uleb128 0xe
	.long	.LASF117
	.sleb128 15
	.uleb128 0xe
	.long	.LASF118
	.sleb128 16
	.uleb128 0xe
	.long	.LASF119
	.sleb128 17
	.uleb128 0xe
	.long	.LASF120
	.sleb128 18
	.uleb128 0xe
	.long	.LASF121
	.sleb128 19
	.uleb128 0xe
	.long	.LASF122
	.sleb128 20
	.uleb128 0xe
	.long	.LASF123
	.sleb128 21
	.uleb128 0xe
	.long	.LASF124
	.sleb128 22
	.uleb128 0xe
	.long	.LASF125
	.sleb128 23
	.uleb128 0xe
	.long	.LASF126
	.sleb128 24
	.uleb128 0xe
	.long	.LASF127
	.sleb128 25
	.uleb128 0xe
	.long	.LASF128
	.sleb128 26
	.uleb128 0xe
	.long	.LASF129
	.sleb128 27
	.uleb128 0xe
	.long	.LASF130
	.sleb128 28
	.uleb128 0xe
	.long	.LASF131
	.sleb128 29
	.uleb128 0xe
	.long	.LASF132
	.sleb128 30
	.uleb128 0xe
	.long	.LASF133
	.sleb128 31
	.uleb128 0xe
	.long	.LASF134
	.sleb128 32
	.uleb128 0xe
	.long	.LASF135
	.sleb128 33
	.uleb128 0xe
	.long	.LASF136
	.sleb128 34
	.uleb128 0xe
	.long	.LASF137
	.sleb128 35
	.uleb128 0xe
	.long	.LASF138
	.sleb128 36
	.uleb128 0xe
	.long	.LASF139
	.sleb128 37
	.uleb128 0xe
	.long	.LASF140
	.sleb128 38
	.uleb128 0xe
	.long	.LASF141
	.sleb128 39
	.uleb128 0xe
	.long	.LASF142
	.sleb128 40
	.uleb128 0xe
	.long	.LASF143
	.sleb128 41
	.uleb128 0xe
	.long	.LASF144
	.sleb128 42
	.uleb128 0xe
	.long	.LASF145
	.sleb128 43
	.uleb128 0xe
	.long	.LASF146
	.sleb128 44
	.uleb128 0xe
	.long	.LASF147
	.sleb128 45
	.uleb128 0xe
	.long	.LASF148
	.sleb128 46
	.uleb128 0xe
	.long	.LASF149
	.sleb128 47
	.uleb128 0xe
	.long	.LASF150
	.sleb128 48
	.uleb128 0xe
	.long	.LASF151
	.sleb128 49
	.uleb128 0xe
	.long	.LASF152
	.sleb128 50
	.uleb128 0xe
	.long	.LASF153
	.sleb128 51
	.uleb128 0xe
	.long	.LASF154
	.sleb128 52
	.uleb128 0xe
	.long	.LASF155
	.sleb128 53
	.uleb128 0xe
	.long	.LASF156
	.sleb128 54
	.uleb128 0xe
	.long	.LASF157
	.sleb128 55
	.uleb128 0xe
	.long	.LASF158
	.sleb128 56
	.uleb128 0xe
	.long	.LASF159
	.sleb128 57
	.uleb128 0xe
	.long	.LASF160
	.sleb128 58
	.uleb128 0xe
	.long	.LASF161
	.sleb128 59
	.byte	0
	.uleb128 0x17
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x6a6
	.uleb128 0xe
	.long	.LASF163
	.sleb128 0
	.uleb128 0xe
	.long	.LASF164
	.sleb128 1
	.uleb128 0xe
	.long	.LASF165
	.sleb128 2
	.uleb128 0xe
	.long	.LASF166
	.sleb128 3
	.uleb128 0xe
	.long	.LASF167
	.sleb128 4
	.uleb128 0xe
	.long	.LASF168
	.sleb128 5
	.uleb128 0xe
	.long	.LASF169
	.sleb128 6
	.uleb128 0xe
	.long	.LASF170
	.sleb128 7
	.uleb128 0xe
	.long	.LASF171
	.sleb128 8
	.uleb128 0xe
	.long	.LASF172
	.sleb128 9
	.byte	0
	.uleb128 0x7
	.long	.LASF173
	.byte	0xa
	.byte	0x29
	.long	0x286
	.uleb128 0x17
	.long	.LASF174
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xaad
	.uleb128 0xe
	.long	.LASF175
	.sleb128 0
	.uleb128 0x18
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF176
	.sleb128 2
	.uleb128 0xe
	.long	.LASF177
	.sleb128 3
	.uleb128 0xe
	.long	.LASF178
	.sleb128 4
	.uleb128 0xe
	.long	.LASF179
	.sleb128 5
	.uleb128 0xe
	.long	.LASF180
	.sleb128 6
	.uleb128 0xe
	.long	.LASF181
	.sleb128 7
	.uleb128 0xe
	.long	.LASF182
	.sleb128 8
	.uleb128 0xe
	.long	.LASF183
	.sleb128 9
	.uleb128 0xe
	.long	.LASF184
	.sleb128 10
	.uleb128 0xe
	.long	.LASF185
	.sleb128 11
	.uleb128 0xe
	.long	.LASF186
	.sleb128 12
	.uleb128 0xe
	.long	.LASF187
	.sleb128 13
	.uleb128 0xe
	.long	.LASF188
	.sleb128 14
	.uleb128 0xe
	.long	.LASF189
	.sleb128 15
	.uleb128 0xe
	.long	.LASF190
	.sleb128 16
	.uleb128 0xe
	.long	.LASF191
	.sleb128 17
	.uleb128 0xe
	.long	.LASF192
	.sleb128 18
	.uleb128 0xe
	.long	.LASF193
	.sleb128 19
	.uleb128 0xe
	.long	.LASF194
	.sleb128 20
	.uleb128 0xe
	.long	.LASF195
	.sleb128 21
	.uleb128 0xe
	.long	.LASF196
	.sleb128 22
	.uleb128 0xe
	.long	.LASF197
	.sleb128 23
	.uleb128 0xe
	.long	.LASF198
	.sleb128 24
	.uleb128 0xe
	.long	.LASF199
	.sleb128 25
	.uleb128 0xe
	.long	.LASF200
	.sleb128 26
	.uleb128 0xe
	.long	.LASF201
	.sleb128 27
	.uleb128 0xe
	.long	.LASF202
	.sleb128 28
	.uleb128 0xe
	.long	.LASF203
	.sleb128 29
	.uleb128 0xe
	.long	.LASF204
	.sleb128 30
	.uleb128 0xe
	.long	.LASF205
	.sleb128 31
	.uleb128 0xe
	.long	.LASF206
	.sleb128 32
	.uleb128 0xe
	.long	.LASF207
	.sleb128 33
	.uleb128 0xe
	.long	.LASF208
	.sleb128 34
	.uleb128 0xe
	.long	.LASF209
	.sleb128 35
	.uleb128 0xe
	.long	.LASF210
	.sleb128 36
	.uleb128 0xe
	.long	.LASF211
	.sleb128 37
	.uleb128 0xe
	.long	.LASF212
	.sleb128 38
	.uleb128 0xe
	.long	.LASF213
	.sleb128 39
	.uleb128 0xe
	.long	.LASF214
	.sleb128 40
	.uleb128 0xe
	.long	.LASF215
	.sleb128 41
	.uleb128 0xe
	.long	.LASF216
	.sleb128 42
	.uleb128 0xe
	.long	.LASF217
	.sleb128 43
	.uleb128 0xe
	.long	.LASF218
	.sleb128 44
	.uleb128 0xe
	.long	.LASF219
	.sleb128 45
	.uleb128 0xe
	.long	.LASF220
	.sleb128 46
	.uleb128 0x18
	.string	"SET"
	.sleb128 47
	.uleb128 0x18
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF221
	.sleb128 49
	.uleb128 0xe
	.long	.LASF222
	.sleb128 50
	.uleb128 0xe
	.long	.LASF223
	.sleb128 51
	.uleb128 0xe
	.long	.LASF224
	.sleb128 52
	.uleb128 0xe
	.long	.LASF225
	.sleb128 53
	.uleb128 0xe
	.long	.LASF226
	.sleb128 54
	.uleb128 0xe
	.long	.LASF227
	.sleb128 55
	.uleb128 0xe
	.long	.LASF228
	.sleb128 56
	.uleb128 0xe
	.long	.LASF229
	.sleb128 57
	.uleb128 0xe
	.long	.LASF230
	.sleb128 58
	.uleb128 0x18
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF231
	.sleb128 60
	.uleb128 0x18
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF232
	.sleb128 62
	.uleb128 0xe
	.long	.LASF233
	.sleb128 63
	.uleb128 0xe
	.long	.LASF234
	.sleb128 64
	.uleb128 0xe
	.long	.LASF235
	.sleb128 65
	.uleb128 0x18
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF236
	.sleb128 67
	.uleb128 0xe
	.long	.LASF237
	.sleb128 68
	.uleb128 0x18
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF238
	.sleb128 70
	.uleb128 0xe
	.long	.LASF239
	.sleb128 71
	.uleb128 0xe
	.long	.LASF240
	.sleb128 72
	.uleb128 0xe
	.long	.LASF241
	.sleb128 73
	.uleb128 0xe
	.long	.LASF242
	.sleb128 74
	.uleb128 0xe
	.long	.LASF243
	.sleb128 75
	.uleb128 0xe
	.long	.LASF244
	.sleb128 76
	.uleb128 0x18
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF245
	.sleb128 78
	.uleb128 0x18
	.string	"DIV"
	.sleb128 79
	.uleb128 0x18
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF246
	.sleb128 81
	.uleb128 0xe
	.long	.LASF247
	.sleb128 82
	.uleb128 0x18
	.string	"AND"
	.sleb128 83
	.uleb128 0x18
	.string	"IOR"
	.sleb128 84
	.uleb128 0x18
	.string	"XOR"
	.sleb128 85
	.uleb128 0x18
	.string	"NOT"
	.sleb128 86
	.uleb128 0xe
	.long	.LASF248
	.sleb128 87
	.uleb128 0xe
	.long	.LASF249
	.sleb128 88
	.uleb128 0xe
	.long	.LASF250
	.sleb128 89
	.uleb128 0xe
	.long	.LASF251
	.sleb128 90
	.uleb128 0xe
	.long	.LASF252
	.sleb128 91
	.uleb128 0xe
	.long	.LASF253
	.sleb128 92
	.uleb128 0xe
	.long	.LASF254
	.sleb128 93
	.uleb128 0xe
	.long	.LASF255
	.sleb128 94
	.uleb128 0xe
	.long	.LASF256
	.sleb128 95
	.uleb128 0xe
	.long	.LASF257
	.sleb128 96
	.uleb128 0xe
	.long	.LASF258
	.sleb128 97
	.uleb128 0xe
	.long	.LASF259
	.sleb128 98
	.uleb128 0xe
	.long	.LASF260
	.sleb128 99
	.uleb128 0xe
	.long	.LASF261
	.sleb128 100
	.uleb128 0xe
	.long	.LASF262
	.sleb128 101
	.uleb128 0x18
	.string	"NE"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ"
	.sleb128 103
	.uleb128 0x18
	.string	"GE"
	.sleb128 104
	.uleb128 0x18
	.string	"GT"
	.sleb128 105
	.uleb128 0x18
	.string	"LE"
	.sleb128 106
	.uleb128 0x18
	.string	"LT"
	.sleb128 107
	.uleb128 0x18
	.string	"GEU"
	.sleb128 108
	.uleb128 0x18
	.string	"GTU"
	.sleb128 109
	.uleb128 0x18
	.string	"LEU"
	.sleb128 110
	.uleb128 0x18
	.string	"LTU"
	.sleb128 111
	.uleb128 0xe
	.long	.LASF263
	.sleb128 112
	.uleb128 0xe
	.long	.LASF264
	.sleb128 113
	.uleb128 0xe
	.long	.LASF265
	.sleb128 114
	.uleb128 0xe
	.long	.LASF266
	.sleb128 115
	.uleb128 0xe
	.long	.LASF267
	.sleb128 116
	.uleb128 0xe
	.long	.LASF268
	.sleb128 117
	.uleb128 0xe
	.long	.LASF269
	.sleb128 118
	.uleb128 0xe
	.long	.LASF270
	.sleb128 119
	.uleb128 0xe
	.long	.LASF271
	.sleb128 120
	.uleb128 0xe
	.long	.LASF272
	.sleb128 121
	.uleb128 0xe
	.long	.LASF273
	.sleb128 122
	.uleb128 0xe
	.long	.LASF274
	.sleb128 123
	.uleb128 0xe
	.long	.LASF275
	.sleb128 124
	.uleb128 0xe
	.long	.LASF276
	.sleb128 125
	.uleb128 0x18
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF277
	.sleb128 127
	.uleb128 0xe
	.long	.LASF278
	.sleb128 128
	.uleb128 0x18
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF279
	.sleb128 130
	.uleb128 0x18
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF280
	.sleb128 132
	.uleb128 0xe
	.long	.LASF281
	.sleb128 133
	.uleb128 0xe
	.long	.LASF282
	.sleb128 134
	.uleb128 0xe
	.long	.LASF283
	.sleb128 135
	.uleb128 0xe
	.long	.LASF284
	.sleb128 136
	.uleb128 0xe
	.long	.LASF285
	.sleb128 137
	.uleb128 0xe
	.long	.LASF286
	.sleb128 138
	.uleb128 0xe
	.long	.LASF287
	.sleb128 139
	.uleb128 0xe
	.long	.LASF288
	.sleb128 140
	.uleb128 0xe
	.long	.LASF289
	.sleb128 141
	.uleb128 0xe
	.long	.LASF290
	.sleb128 142
	.uleb128 0xe
	.long	.LASF291
	.sleb128 143
	.uleb128 0xe
	.long	.LASF292
	.sleb128 144
	.uleb128 0xe
	.long	.LASF293
	.sleb128 145
	.uleb128 0xe
	.long	.LASF294
	.sleb128 146
	.uleb128 0xe
	.long	.LASF295
	.sleb128 147
	.uleb128 0xe
	.long	.LASF296
	.sleb128 148
	.uleb128 0xe
	.long	.LASF297
	.sleb128 149
	.uleb128 0xe
	.long	.LASF298
	.sleb128 150
	.uleb128 0xe
	.long	.LASF299
	.sleb128 151
	.uleb128 0x18
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF300
	.sleb128 153
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb2e
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x47
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x49
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x4e
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x50
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x53
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF308
	.byte	0x2
	.byte	0x55
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF309
	.byte	0x2
	.byte	0x56
	.long	0xaad
	.uleb128 0x19
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb7e
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5e
	.long	0x274
	.byte	0
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF314
	.byte	0x2
	.byte	0x62
	.long	0x26b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF315
	.byte	0x2
	.byte	0x63
	.long	0xb39
	.uleb128 0x1a
	.long	.LASF422
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc24
	.uleb128 0x1b
	.long	.LASF316
	.byte	0x2
	.byte	0x69
	.long	0x274
	.uleb128 0x1b
	.long	.LASF317
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x1b
	.long	.LASF318
	.byte	0x2
	.byte	0x6b
	.long	0x26b
	.uleb128 0x1b
	.long	.LASF319
	.byte	0x2
	.byte	0x6c
	.long	0x4c2
	.uleb128 0x1c
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x2
	.byte	0x6f
	.long	0x4e8
	.uleb128 0x1b
	.long	.LASF321
	.byte	0x2
	.byte	0x70
	.long	0xb2e
	.uleb128 0x1b
	.long	.LASF322
	.byte	0x2
	.byte	0x71
	.long	0xc29
	.uleb128 0x1b
	.long	.LASF323
	.byte	0x2
	.byte	0x72
	.long	0xc60
	.uleb128 0x1b
	.long	.LASF324
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1c
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd33
	.uleb128 0x1b
	.long	.LASF325
	.byte	0x2
	.byte	0x75
	.long	0xd39
	.byte	0
	.uleb128 0x1d
	.long	.LASF430
	.uleb128 0x3
	.byte	0x8
	.long	0xc24
	.uleb128 0x4
	.long	.LASF326
	.byte	0x18
	.byte	0xb
	.byte	0x34
	.long	0xc60
	.uleb128 0x8
	.long	.LASF327
	.byte	0xb
	.byte	0x35
	.long	0xf95
	.byte	0
	.uleb128 0x8
	.long	.LASF328
	.byte	0xb
	.byte	0x36
	.long	0xf95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0x37
	.long	0x26b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc2f
	.uleb128 0x4
	.long	.LASF330
	.byte	0x70
	.byte	0xc
	.byte	0xae
	.long	0xd33
	.uleb128 0x8
	.long	.LASF331
	.byte	0xc
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF332
	.byte	0xc
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF333
	.byte	0xc
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF334
	.byte	0xc
	.byte	0xb7
	.long	0x138d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF335
	.byte	0xc
	.byte	0xb7
	.long	0x138d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF336
	.byte	0xc
	.byte	0xbc
	.long	0x12f8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF337
	.byte	0xc
	.byte	0xc0
	.long	0x12f8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF338
	.byte	0xc
	.byte	0xc6
	.long	0x12f8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF339
	.byte	0xc
	.byte	0xc8
	.long	0x12f8
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xcb
	.long	0x272
	.byte	0x50
	.uleb128 0x8
	.long	.LASF340
	.byte	0xc
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF341
	.byte	0xc
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF342
	.byte	0xc
	.byte	0xd4
	.long	0x1303
	.byte	0x60
	.uleb128 0x8
	.long	.LASF343
	.byte	0xc
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF344
	.byte	0xc
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc66
	.uleb128 0x3
	.byte	0x8
	.long	0xb7e
	.uleb128 0x7
	.long	.LASF345
	.byte	0x2
	.byte	0x76
	.long	0xb89
	.uleb128 0x14
	.long	0xd3f
	.long	0xd5a
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0xd6a
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF346
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe2c
	.uleb128 0xe
	.long	.LASF347
	.sleb128 1
	.uleb128 0xe
	.long	.LASF348
	.sleb128 2
	.uleb128 0xe
	.long	.LASF349
	.sleb128 3
	.uleb128 0xe
	.long	.LASF350
	.sleb128 4
	.uleb128 0xe
	.long	.LASF351
	.sleb128 5
	.uleb128 0xe
	.long	.LASF352
	.sleb128 6
	.uleb128 0xe
	.long	.LASF353
	.sleb128 7
	.uleb128 0xe
	.long	.LASF354
	.sleb128 8
	.uleb128 0xe
	.long	.LASF355
	.sleb128 9
	.uleb128 0xe
	.long	.LASF356
	.sleb128 10
	.uleb128 0xe
	.long	.LASF357
	.sleb128 11
	.uleb128 0xe
	.long	.LASF358
	.sleb128 12
	.uleb128 0xe
	.long	.LASF359
	.sleb128 13
	.uleb128 0xe
	.long	.LASF360
	.sleb128 14
	.uleb128 0xe
	.long	.LASF361
	.sleb128 15
	.uleb128 0xe
	.long	.LASF362
	.sleb128 16
	.uleb128 0xe
	.long	.LASF363
	.sleb128 17
	.uleb128 0xe
	.long	.LASF364
	.sleb128 18
	.uleb128 0xe
	.long	.LASF365
	.sleb128 19
	.uleb128 0xe
	.long	.LASF366
	.sleb128 20
	.uleb128 0xe
	.long	.LASF367
	.sleb128 21
	.uleb128 0xe
	.long	.LASF368
	.sleb128 22
	.uleb128 0xe
	.long	.LASF369
	.sleb128 23
	.uleb128 0xe
	.long	.LASF370
	.sleb128 24
	.uleb128 0xe
	.long	.LASF371
	.sleb128 25
	.uleb128 0xe
	.long	.LASF372
	.sleb128 26
	.uleb128 0xe
	.long	.LASF373
	.sleb128 27
	.uleb128 0xe
	.long	.LASF374
	.sleb128 28
	.uleb128 0xe
	.long	.LASF375
	.sleb128 29
	.uleb128 0xe
	.long	.LASF376
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF377
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xedb
	.uleb128 0xe
	.long	.LASF378
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF379
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF380
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF381
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF382
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF383
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF384
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF385
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF386
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF387
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF388
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF389
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF390
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF391
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF392
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF393
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF394
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF395
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF396
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF397
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF398
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF399
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF400
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF401
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf37
	.uleb128 0xe
	.long	.LASF402
	.sleb128 0
	.uleb128 0xe
	.long	.LASF403
	.sleb128 1
	.uleb128 0xe
	.long	.LASF404
	.sleb128 2
	.uleb128 0xe
	.long	.LASF405
	.sleb128 3
	.uleb128 0xe
	.long	.LASF406
	.sleb128 4
	.uleb128 0xe
	.long	.LASF407
	.sleb128 5
	.uleb128 0xe
	.long	.LASF408
	.sleb128 6
	.uleb128 0xe
	.long	.LASF409
	.sleb128 7
	.uleb128 0xe
	.long	.LASF410
	.sleb128 8
	.uleb128 0xe
	.long	.LASF411
	.sleb128 9
	.uleb128 0xe
	.long	.LASF412
	.sleb128 10
	.uleb128 0xe
	.long	.LASF413
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF414
	.byte	0x28
	.byte	0xb
	.byte	0x2b
	.long	0xf74
	.uleb128 0x8
	.long	.LASF415
	.byte	0xb
	.byte	0x2d
	.long	0xf74
	.byte	0
	.uleb128 0x8
	.long	.LASF416
	.byte	0xb
	.byte	0x2e
	.long	0xf74
	.byte	0x8
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0x2f
	.long	0x26b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF417
	.byte	0xb
	.byte	0x30
	.long	0xf7a
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf37
	.uleb128 0x14
	.long	0x286
	.long	0xf8a
	.uleb128 0x15
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF418
	.byte	0xb
	.byte	0x31
	.long	0xf37
	.uleb128 0x3
	.byte	0x8
	.long	0xf8a
	.uleb128 0x7
	.long	.LASF419
	.byte	0xb
	.byte	0x39
	.long	0xc2f
	.uleb128 0x7
	.long	.LASF420
	.byte	0xb
	.byte	0x39
	.long	0xc60
	.uleb128 0x14
	.long	0x286
	.long	0xfc1
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF421
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.long	0xfe6
	.uleb128 0x6
	.string	"rtx"
	.byte	0xd
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xd
	.byte	0x36
	.long	0x26b
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF423
	.byte	0x10
	.byte	0xd
	.byte	0x3a
	.long	0x10cb
	.uleb128 0x1c
	.string	"c"
	.byte	0xd
	.byte	0x3b
	.long	0x49c
	.uleb128 0x1c
	.string	"uc"
	.byte	0xd
	.byte	0x3c
	.long	0x10cb
	.uleb128 0x1c
	.string	"s"
	.byte	0xd
	.byte	0x3d
	.long	0x10db
	.uleb128 0x1c
	.string	"us"
	.byte	0xd
	.byte	0x3e
	.long	0x10eb
	.uleb128 0x1c
	.string	"i"
	.byte	0xd
	.byte	0x3f
	.long	0x10fb
	.uleb128 0x1c
	.string	"u"
	.byte	0xd
	.byte	0x40
	.long	0x110b
	.uleb128 0x1c
	.string	"l"
	.byte	0xd
	.byte	0x41
	.long	0x111b
	.uleb128 0x1c
	.string	"ul"
	.byte	0xd
	.byte	0x42
	.long	0xfb1
	.uleb128 0x1b
	.long	.LASF424
	.byte	0xd
	.byte	0x43
	.long	0x111b
	.uleb128 0x1b
	.long	.LASF425
	.byte	0xd
	.byte	0x44
	.long	0xfb1
	.uleb128 0x1b
	.long	.LASF426
	.byte	0xd
	.byte	0x45
	.long	0x112b
	.uleb128 0x1b
	.long	.LASF427
	.byte	0xd
	.byte	0x46
	.long	0x113b
	.uleb128 0x1c
	.string	"rtx"
	.byte	0xd
	.byte	0x47
	.long	0x114b
	.uleb128 0x1b
	.long	.LASF10
	.byte	0xd
	.byte	0x48
	.long	0x115b
	.uleb128 0x1b
	.long	.LASF15
	.byte	0xd
	.byte	0x49
	.long	0x116b
	.uleb128 0x1b
	.long	.LASF420
	.byte	0xd
	.byte	0x4a
	.long	0x117b
	.uleb128 0x1b
	.long	.LASF428
	.byte	0xd
	.byte	0x4b
	.long	0x118b
	.uleb128 0x1c
	.string	"reg"
	.byte	0xd
	.byte	0x4c
	.long	0x11a6
	.uleb128 0x1b
	.long	.LASF429
	.byte	0xd
	.byte	0x4d
	.long	0x124d
	.uleb128 0x1c
	.string	"bb"
	.byte	0xd
	.byte	0x4e
	.long	0x125d
	.uleb128 0x1c
	.string	"te"
	.byte	0xd
	.byte	0x4f
	.long	0x126d
	.byte	0
	.uleb128 0x14
	.long	0x28d
	.long	0x10db
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2a2
	.long	0x10eb
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x294
	.long	0x10fb
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x13e
	.long	0x110b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26b
	.long	0x111b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x274
	.long	0x112b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x272
	.long	0x113b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2bf
	.long	0x114b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x115b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x116b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x117b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xc60
	.long	0x118b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x119b
	.long	0x119b
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11a1
	.uleb128 0x1d
	.long	.LASF431
	.uleb128 0x14
	.long	0x11b6
	.long	0x11b6
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11bc
	.uleb128 0x4
	.long	.LASF432
	.byte	0x2c
	.byte	0xe
	.byte	0x2d
	.long	0x124d
	.uleb128 0x8
	.long	.LASF433
	.byte	0xe
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF434
	.byte	0xe
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF435
	.byte	0xe
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF436
	.byte	0xe
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF437
	.byte	0xe
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF438
	.byte	0xe
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF439
	.byte	0xe
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF440
	.byte	0xe
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF441
	.byte	0xe
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF442
	.byte	0xe
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF443
	.byte	0xe
	.byte	0x3d
	.long	0x2c5
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0xfc1
	.long	0x125d
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xd33
	.long	0x126d
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x127d
	.long	0x127d
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1283
	.uleb128 0x1d
	.long	.LASF444
	.uleb128 0x7
	.long	.LASF445
	.byte	0xd
	.byte	0x50
	.long	0xfe6
	.uleb128 0x4
	.long	.LASF446
	.byte	0x30
	.byte	0xd
	.byte	0x53
	.long	0x12dc
	.uleb128 0x8
	.long	.LASF447
	.byte	0xd
	.byte	0x54
	.long	0x27b
	.byte	0
	.uleb128 0x8
	.long	.LASF448
	.byte	0xd
	.byte	0x55
	.long	0x27b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF449
	.byte	0xd
	.byte	0x57
	.long	0x27b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF450
	.byte	0xd
	.byte	0x58
	.long	0x4c2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF451
	.byte	0xd
	.byte	0x59
	.long	0x1288
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF452
	.byte	0xd
	.byte	0x5a
	.long	0x12e7
	.uleb128 0x3
	.byte	0x8
	.long	0x1293
	.uleb128 0x7
	.long	.LASF453
	.byte	0xc
	.byte	0x1f
	.long	0xf9b
	.uleb128 0x7
	.long	.LASF454
	.byte	0xc
	.byte	0x21
	.long	0xfa6
	.uleb128 0x7
	.long	.LASF455
	.byte	0xc
	.byte	0x74
	.long	0x274
	.uleb128 0x4
	.long	.LASF456
	.byte	0x40
	.byte	0xc
	.byte	0x77
	.long	0x1387
	.uleb128 0x8
	.long	.LASF457
	.byte	0xc
	.byte	0x79
	.long	0x1387
	.byte	0
	.uleb128 0x8
	.long	.LASF458
	.byte	0xc
	.byte	0x79
	.long	0x1387
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7c
	.long	0xd33
	.byte	0x10
	.uleb128 0x8
	.long	.LASF459
	.byte	0xc
	.byte	0x7c
	.long	0xd33
	.byte	0x18
	.uleb128 0x8
	.long	.LASF460
	.byte	0xc
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x82
	.long	0x272
	.byte	0x28
	.uleb128 0x8
	.long	.LASF344
	.byte	0xc
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF461
	.byte	0xc
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF342
	.byte	0xc
	.byte	0x86
	.long	0x1303
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x130e
	.uleb128 0x7
	.long	.LASF462
	.byte	0xc
	.byte	0x88
	.long	0x1387
	.uleb128 0x4
	.long	.LASF463
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x13d5
	.uleb128 0x8
	.long	.LASF464
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF465
	.byte	0xf
	.byte	0x19
	.long	0x4e8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF415
	.byte	0xf
	.byte	0x1b
	.long	0x13d5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1398
	.uleb128 0x4
	.long	.LASF467
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x1418
	.uleb128 0x8
	.long	.LASF327
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF468
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF469
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF415
	.byte	0xf
	.byte	0x28
	.long	0x1418
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13db
	.uleb128 0x4
	.long	.LASF470
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x14c7
	.uleb128 0x8
	.long	.LASF471
	.byte	0xf
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF472
	.byte	0xf
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF473
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF474
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF469
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF467
	.byte	0xf
	.byte	0x4f
	.long	0x1418
	.byte	0x20
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF476
	.byte	0xf
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x58
	.long	0x4c2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF478
	.byte	0xf
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF479
	.byte	0xf
	.byte	0x63
	.long	0x14c7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF480
	.byte	0xf
	.byte	0x67
	.long	0x14cd
	.byte	0x48
	.uleb128 0x8
	.long	.LASF481
	.byte	0xf
	.byte	0x6b
	.long	0xedb
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28d
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF482
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1534
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF485
	.byte	0xf
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF490
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x19b4
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x19b9
	.byte	0
	.uleb128 0x8
	.long	.LASF491
	.byte	0xf
	.byte	0xb1
	.long	0x19c4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0xf
	.byte	0xb2
	.long	0x19ca
	.byte	0x10
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0xb3
	.long	0x19d0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0xb4
	.long	0x19db
	.byte	0x20
	.uleb128 0x8
	.long	.LASF450
	.byte	0xf
	.byte	0xb9
	.long	0x4c2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0xbf
	.long	0x19e1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0xda
	.long	0x25f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0xe7
	.long	0x4c2
	.byte	0x88
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0xeb
	.long	0x19ec
	.byte	0x90
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF510
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF511
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF512
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF513
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF514
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF515
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF516
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF517
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF518
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1f
	.long	.LASF519
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1f
	.long	.LASF520
	.byte	0xf
	.value	0x12f
	.long	0x274
	.value	0x108
	.uleb128 0x1f
	.long	.LASF521
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1f
	.long	.LASF522
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1f
	.long	.LASF523
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1f
	.long	.LASF524
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1f
	.long	.LASF525
	.byte	0xf
	.value	0x148
	.long	0x26b
	.value	0x130
	.uleb128 0x1f
	.long	.LASF526
	.byte	0xf
	.value	0x14e
	.long	0xedb
	.value	0x138
	.uleb128 0x1f
	.long	.LASF527
	.byte	0xf
	.value	0x151
	.long	0x19f7
	.value	0x140
	.uleb128 0x1f
	.long	.LASF528
	.byte	0xf
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x1f
	.long	.LASF529
	.byte	0xf
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x1f
	.long	.LASF530
	.byte	0xf
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x1f
	.long	.LASF531
	.byte	0xf
	.value	0x161
	.long	0x13d5
	.value	0x158
	.uleb128 0x1f
	.long	.LASF532
	.byte	0xf
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xf
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x1f
	.long	.LASF534
	.byte	0xf
	.value	0x167
	.long	0x272
	.value	0x168
	.uleb128 0x1f
	.long	.LASF535
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1f
	.long	.LASF536
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1f
	.long	.LASF537
	.byte	0xf
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x1f
	.long	.LASF538
	.byte	0xf
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x1f
	.long	.LASF539
	.byte	0xf
	.value	0x175
	.long	0x1a02
	.value	0x188
	.uleb128 0x1f
	.long	.LASF540
	.byte	0xf
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x1f
	.long	.LASF541
	.byte	0xf
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x1f
	.long	.LASF542
	.byte	0xf
	.value	0x17c
	.long	0x1a0d
	.value	0x198
	.uleb128 0x1f
	.long	.LASF543
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x20
	.long	.LASF544
	.byte	0xf
	.value	0x188
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF545
	.byte	0xf
	.value	0x18c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF546
	.byte	0xf
	.value	0x18f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF547
	.byte	0xf
	.value	0x192
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF548
	.byte	0xf
	.value	0x195
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF549
	.byte	0xf
	.value	0x198
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF550
	.byte	0xf
	.value	0x19c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF551
	.byte	0xf
	.value	0x19f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF552
	.byte	0xf
	.value	0x1a3
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF553
	.byte	0xf
	.value	0x1a7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF554
	.byte	0xf
	.value	0x1aa
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF555
	.byte	0xf
	.value	0x1ad
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF556
	.byte	0xf
	.value	0x1b2
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF557
	.byte	0xf
	.value	0x1b6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF558
	.byte	0xf
	.value	0x1b9
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF559
	.byte	0xf
	.value	0x1bd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF560
	.byte	0xf
	.value	0x1c1
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF561
	.byte	0xf
	.value	0x1c5
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF562
	.byte	0xf
	.value	0x1cb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF563
	.byte	0xf
	.value	0x1d4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF564
	.byte	0xf
	.value	0x1d7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF565
	.byte	0xf
	.value	0x1da
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF566
	.byte	0xf
	.value	0x1dd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF567
	.byte	0xf
	.value	0x1e0
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1d
	.long	.LASF568
	.uleb128 0x3
	.byte	0x8
	.long	0x19b4
	.uleb128 0x1d
	.long	.LASF569
	.uleb128 0x3
	.byte	0x8
	.long	0x19bf
	.uleb128 0x3
	.byte	0x8
	.long	0x14d3
	.uleb128 0x3
	.byte	0x8
	.long	0x141e
	.uleb128 0x1d
	.long	.LASF570
	.uleb128 0x3
	.byte	0x8
	.long	0x19d6
	.uleb128 0x3
	.byte	0x8
	.long	0x1534
	.uleb128 0x1d
	.long	.LASF571
	.uleb128 0x3
	.byte	0x8
	.long	0x19e7
	.uleb128 0x1d
	.long	.LASF572
	.uleb128 0x3
	.byte	0x8
	.long	0x19f2
	.uleb128 0x1d
	.long	.LASF573
	.uleb128 0x3
	.byte	0x8
	.long	0x19fd
	.uleb128 0x1d
	.long	.LASF574
	.uleb128 0x3
	.byte	0x8
	.long	0x1a08
	.uleb128 0x4
	.long	.LASF575
	.byte	0x96
	.byte	0x10
	.byte	0xc3
	.long	0x1a38
	.uleb128 0x8
	.long	.LASF576
	.byte	0x10
	.byte	0xc6
	.long	0x1a38
	.byte	0
	.uleb128 0x8
	.long	.LASF577
	.byte	0x10
	.byte	0xc7
	.long	0x1a4e
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.long	0x2a2
	.long	0x1a4e
	.uleb128 0x15
	.long	0x145
	.byte	0x1
	.uleb128 0x15
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.long	0x2a2
	.long	0x1a5e
	.uleb128 0x15
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.long	.LASF578
	.value	0x108
	.byte	0x10
	.byte	0xce
	.long	0x1b30
	.uleb128 0x8
	.long	.LASF415
	.byte	0x10
	.byte	0xd1
	.long	0x1b30
	.byte	0
	.uleb128 0x8
	.long	.LASF416
	.byte	0x10
	.byte	0xd1
	.long	0x1b30
	.byte	0x8
	.uleb128 0x8
	.long	.LASF579
	.byte	0x10
	.byte	0xd5
	.long	0x1b30
	.byte	0x10
	.uleb128 0x8
	.long	.LASF580
	.byte	0x10
	.byte	0xd8
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF581
	.byte	0x10
	.byte	0xda
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF582
	.byte	0x10
	.byte	0xdd
	.long	0x12ed
	.byte	0x28
	.uleb128 0x8
	.long	.LASF583
	.byte	0x10
	.byte	0xde
	.long	0x12ed
	.byte	0x40
	.uleb128 0x6
	.string	"rld"
	.byte	0x10
	.byte	0xe1
	.long	0x1b3b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF584
	.byte	0x10
	.byte	0xe2
	.long	0x13e
	.byte	0x60
	.uleb128 0x8
	.long	.LASF585
	.byte	0x10
	.byte	0xe5
	.long	0x6a6
	.byte	0x68
	.uleb128 0x8
	.long	.LASF586
	.byte	0x10
	.byte	0xe8
	.long	0x1a13
	.byte	0x70
	.uleb128 0x21
	.long	.LASF587
	.byte	0x10
	.byte	0xeb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x104
	.uleb128 0x21
	.long	.LASF588
	.byte	0x10
	.byte	0xee
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x104
	.uleb128 0x21
	.long	.LASF589
	.byte	0x10
	.byte	0xf0
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x104
	.uleb128 0x21
	.long	.LASF590
	.byte	0x10
	.byte	0xf2
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x104
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a5e
	.uleb128 0x1d
	.long	.LASF591
	.uleb128 0x3
	.byte	0x8
	.long	0x1b36
	.uleb128 0x4
	.long	.LASF592
	.byte	0x40
	.byte	0x1
	.byte	0x57
	.long	0x1bd2
	.uleb128 0x6
	.string	"reg"
	.byte	0x1
	.byte	0x59
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF313
	.byte	0x1
	.byte	0x5c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF441
	.byte	0x1
	.byte	0x5f
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF593
	.byte	0x1
	.byte	0x62
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF438
	.byte	0x1
	.byte	0x65
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF440
	.byte	0x1
	.byte	0x69
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF594
	.byte	0x1
	.byte	0x6d
	.long	0x6a6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF595
	.byte	0x1
	.byte	0x73
	.long	0x6a6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF596
	.byte	0x1
	.byte	0x7a
	.long	0x6a6
	.byte	0x28
	.uleb128 0x8
	.long	.LASF597
	.byte	0x1
	.byte	0x80
	.long	0x6a6
	.byte	0x30
	.uleb128 0x8
	.long	.LASF598
	.byte	0x1
	.byte	0x84
	.long	0x6a6
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.long	.LASF722
	.byte	0x1
	.value	0x144
	.long	0x13e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d21
	.uleb128 0x23
	.long	.LASF604
	.byte	0x1
	.value	0x145
	.long	0x1d21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF600
	.byte	0x1
	.value	0x147
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.byte	0x8
	.byte	0x1
	.value	0x149
	.long	0x1c36
	.uleb128 0x10
	.long	.LASF599
	.byte	0x1
	.value	0x149
	.long	0x139
	.byte	0
	.uleb128 0x26
	.string	"to"
	.byte	0x1
	.value	0x149
	.long	0x139
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.long	.LASF601
	.byte	0x1
	.value	0x149
	.long	0x1d37
	.uleb128 0x9
	.byte	0x3
	.quad	eliminables.10607
	.uleb128 0x24
	.long	.LASF602
	.byte	0x1
	.value	0x14b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x152
	.long	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x153
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF670
	.long	0x1d4c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10628
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1cbd
	.uleb128 0x27
	.string	"r1"
	.byte	0x1
	.value	0x1a2
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"r2"
	.byte	0x1
	.value	0x1a3
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1ce2
	.uleb128 0x27
	.string	"num"
	.byte	0x1
	.value	0x1c3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x1d6
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF603
	.byte	0x1
	.value	0x1d7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x1d8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc
	.uleb128 0x14
	.long	0x1c13
	.long	0x1d37
	.uleb128 0x15
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x1d27
	.uleb128 0x14
	.long	0x2c5
	.long	0x1d4c
	.uleb128 0x15
	.long	0x145
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	0x1d3c
	.uleb128 0x2b
	.long	.LASF723
	.byte	0x1
	.value	0x260
	.long	0x13e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dcc
	.uleb128 0x2c
	.string	"v1p"
	.byte	0x1
	.value	0x261
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"v2p"
	.byte	0x1
	.value	0x262
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"v1"
	.byte	0x1
	.value	0x264
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"v2"
	.byte	0x1
	.value	0x264
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF605
	.byte	0x1
	.value	0x26b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF606
	.byte	0x1
	.value	0x26f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF617
	.byte	0x1
	.value	0x289
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fde
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x28b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x28b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF581
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF607
	.byte	0x1
	.value	0x28d
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1f32
	.uleb128 0x27
	.string	"old"
	.byte	0x1
	.value	0x2a7
	.long	0x12f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"ax"
	.byte	0x1
	.value	0x2a8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1f11
	.uleb128 0x24
	.long	.LASF608
	.byte	0x1
	.value	0x2ab
	.long	0xf95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF609
	.byte	0x1
	.value	0x2ab
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF610
	.byte	0x1
	.value	0x2ab
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF611
	.byte	0x1
	.value	0x2ab
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x24
	.long	.LASF612
	.byte	0x1
	.value	0x2ab
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x24
	.long	.LASF613
	.byte	0x1
	.value	0x2ab
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x2ab
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x2d7
	.long	0x138d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	.LASF0
	.byte	0x1
	.value	0x2ea
	.long	0x6b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.long	.LASF614
	.byte	0x1
	.value	0x2eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1fbb
	.uleb128 0x24
	.long	.LASF615
	.byte	0x1
	.value	0x32a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x32b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"reg"
	.byte	0x1
	.value	0x32c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x330
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x24
	.long	.LASF616
	.byte	0x1
	.value	0x33f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF618
	.byte	0x1
	.value	0x355
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2058
	.uleb128 0x24
	.long	.LASF581
	.byte	0x1
	.value	0x357
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF614
	.byte	0x1
	.value	0x358
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x359
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x27
	.string	"a1"
	.byte	0x1
	.value	0x36a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"a2"
	.byte	0x1
	.value	0x36b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x1
	.value	0x388
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2169
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x38a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.string	"num"
	.byte	0x1
	.value	0x38b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF620
	.byte	0x1
	.value	0x38c
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x20c8
	.uleb128 0x24
	.long	.LASF621
	.byte	0x1
	.value	0x395
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.long	.LASF621
	.byte	0x1
	.value	0x3b0
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF622
	.byte	0x1
	.value	0x3b0
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF623
	.byte	0x1
	.value	0x3b1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x27
	.string	"i_"
	.byte	0x1
	.value	0x3b8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.long	.LASF624
	.byte	0x1
	.value	0x3b8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"p_"
	.byte	0x1
	.value	0x3b8
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x24
	.long	.LASF612
	.byte	0x1
	.value	0x3b8
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x274
	.uleb128 0x2d
	.long	.LASF625
	.byte	0x1
	.value	0x3e0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x24a2
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.value	0x3e1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x23
	.long	.LASF626
	.byte	0x1
	.value	0x3e2
	.long	0x6a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	.LASF627
	.byte	0x1
	.value	0x3e3
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF628
	.byte	0x1
	.value	0x3e4
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x23
	.long	.LASF629
	.byte	0x1
	.value	0x3e5
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x3e7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF630
	.byte	0x1
	.value	0x3e7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.long	.LASF631
	.byte	0x1
	.value	0x3e7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF7
	.byte	0x1
	.value	0x3eb
	.long	0x6a6
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF632
	.byte	0x1
	.value	0x3eb
	.long	0x6a6
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF633
	.byte	0x1
	.value	0x3eb
	.long	0x6a6
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x24
	.long	.LASF634
	.byte	0x1
	.value	0x3ed
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x3f0
	.long	0x4e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.long	.LASF635
	.byte	0x1
	.value	0x469
	.quad	.L192
	.uleb128 0x2f
	.long	.LASF636
	.byte	0x1
	.value	0x490
	.quad	.L220
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x22cb
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x41d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x427
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.string	"lim"
	.byte	0x1
	.value	0x428
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x22ff
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x456
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.string	"lim"
	.byte	0x1
	.value	0x457
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x2333
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x47d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x27
	.string	"lim"
	.byte	0x1
	.value	0x47e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x2359
	.uleb128 0x24
	.long	.LASF637
	.byte	0x1
	.value	0x4a1
	.long	0x6a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x23ff
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x4be
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x24
	.long	.LASF638
	.byte	0x1
	.value	0x4d6
	.long	0x24a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF639
	.byte	0x1
	.value	0x4d8
	.long	0x24a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x4df
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x4e3
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.long	.LASF603
	.byte	0x1
	.value	0x4e4
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x27
	.string	"lim"
	.byte	0x1
	.value	0x4f6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x4f6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.long	.LASF640
	.byte	0x1
	.value	0x4f7
	.long	0x6a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x27
	.string	"i_"
	.byte	0x1
	.value	0x50f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF624
	.byte	0x1
	.value	0x50f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x27
	.string	"p_"
	.byte	0x1
	.value	0x50f
	.long	0x2169
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x24
	.long	.LASF612
	.byte	0x1
	.value	0x50f
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF641
	.uleb128 0x30
	.long	.LASF662
	.byte	0x1
	.value	0x51e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f5
	.uleb128 0x23
	.long	.LASF46
	.byte	0x1
	.value	0x51f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF642
	.byte	0x1
	.value	0x520
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF643
	.byte	0x1
	.value	0x522
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF644
	.byte	0x1
	.value	0x53f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x25c3
	.uleb128 0x23
	.long	.LASF46
	.byte	0x1
	.value	0x540
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x542
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x2592
	.uleb128 0x27
	.string	"i_"
	.byte	0x1
	.value	0x547
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF624
	.byte	0x1
	.value	0x547
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"p_"
	.byte	0x1
	.value	0x547
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x24
	.long	.LASF612
	.byte	0x1
	.value	0x547
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x24
	.long	.LASF645
	.byte	0x1
	.value	0x550
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF646
	.byte	0x1
	.value	0x551
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF647
	.byte	0x1
	.value	0x56b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x261e
	.uleb128 0x23
	.long	.LASF648
	.byte	0x1
	.value	0x56c
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x56d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"num"
	.byte	0x1
	.value	0x56f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF646
	.byte	0x1
	.value	0x570
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF649
	.byte	0x1
	.value	0x57c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x26df
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x57e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x57e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.string	"rw"
	.byte	0x1
	.value	0x57f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"rwb"
	.byte	0x1
	.value	0x580
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x581
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"q0"
	.byte	0x1
	.value	0x582
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"q1"
	.byte	0x1
	.value	0x582
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"q2"
	.byte	0x1
	.value	0x582
	.long	0x2169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF650
	.byte	0x1
	.value	0x583
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x24
	.long	.LASF651
	.byte	0x1
	.value	0x58e
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF652
	.byte	0x1
	.value	0x5ac
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x275c
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x5ad
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF653
	.byte	0x1
	.value	0x5ad
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF451
	.byte	0x1
	.value	0x5ae
	.long	0x272
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x5b0
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x5d0
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF654
	.byte	0x1
	.value	0x5dd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a8
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x5de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF653
	.byte	0x1
	.value	0x5de
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF451
	.byte	0x1
	.value	0x5df
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF655
	.byte	0x1
	.value	0x5e9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2806
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x5ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x5ec
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x604
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF656
	.byte	0x1
	.value	0x611
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2864
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x612
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x614
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x627
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF657
	.byte	0x1
	.value	0x636
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b0
	.uleb128 0x23
	.long	.LASF46
	.byte	0x1
	.value	0x637
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF1
	.byte	0x1
	.value	0x638
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x63a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF658
	.byte	0x1
	.value	0x64c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2938
	.uleb128 0x23
	.long	.LASF459
	.byte	0x1
	.value	0x64d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.value	0x64d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF659
	.byte	0x1
	.value	0x64f
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF660
	.byte	0x1
	.value	0x64f
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF312
	.byte	0x1
	.value	0x652
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x653
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF661
	.byte	0x1
	.value	0x654
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF663
	.byte	0x1
	.value	0x6b8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x29a0
	.uleb128 0x23
	.long	.LASF599
	.byte	0x1
	.value	0x6b9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"to"
	.byte	0x1
	.value	0x6b9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x6bb
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.value	0x6bf
	.long	0x12f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF664
	.byte	0x1
	.value	0x6cf
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1c
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x6d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF653
	.byte	0x1
	.value	0x6d1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF665
	.byte	0x1
	.value	0x6d2
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x6d4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x24
	.long	.LASF45
	.byte	0x1
	.value	0x6df
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF666
	.byte	0x1
	.value	0x6f1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a89
	.uleb128 0x23
	.long	.LASF46
	.byte	0x1
	.value	0x6f2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF1
	.byte	0x1
	.value	0x6f3
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF667
	.byte	0x1
	.value	0x6f4
	.long	0x1b30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x24
	.long	.LASF45
	.byte	0x1
	.value	0x6f8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF668
	.byte	0x1
	.value	0x70c
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c26
	.uleb128 0x23
	.long	.LASF327
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x70f
	.long	0x2c26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF416
	.byte	0x1
	.value	0x710
	.long	0x1b30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x711
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x24
	.long	.LASF669
	.byte	0x1
	.value	0x712
	.long	0x12ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF670
	.long	0x2c3c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11014
	.uleb128 0x2a
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x718
	.long	0x1b30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x2bdc
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x71c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x24
	.long	.LASF608
	.byte	0x1
	.value	0x720
	.long	0xf95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF609
	.byte	0x1
	.value	0x720
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF610
	.byte	0x1
	.value	0x720
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF611
	.byte	0x1
	.value	0x720
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x24
	.long	.LASF612
	.byte	0x1
	.value	0x720
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x24
	.long	.LASF613
	.byte	0x1
	.value	0x720
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x2c02
	.uleb128 0x24
	.long	.LASF614
	.byte	0x1
	.value	0x736
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x24
	.long	.LASF614
	.byte	0x1
	.value	0x74c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b30
	.uleb128 0x14
	.long	0x2c5
	.long	0x2c3c
	.uleb128 0x15
	.long	0x145
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x2c2c
	.uleb128 0x2d
	.long	.LASF671
	.byte	0x1
	.value	0x776
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cdc
	.uleb128 0x23
	.long	.LASF604
	.byte	0x1
	.value	0x777
	.long	0x1d21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x779
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF672
	.byte	0x1
	.value	0x77a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF45
	.byte	0x1
	.value	0x77b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x2cbc
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x786
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x795
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF673
	.byte	0x1
	.value	0x7b0
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d24
	.uleb128 0x23
	.long	.LASF604
	.byte	0x1
	.value	0x7b1
	.long	0x1d21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x7b3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x7b3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF674
	.byte	0x1
	.byte	0x50
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	max_allocno
	.uleb128 0x32
	.long	.LASF675
	.byte	0x1
	.byte	0x55
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	reg_allocno
	.uleb128 0x32
	.long	.LASF592
	.byte	0x1
	.byte	0x87
	.long	0x2d63
	.uleb128 0x9
	.byte	0x3
	.quad	allocno
	.uleb128 0x3
	.byte	0x8
	.long	0x1b41
	.uleb128 0x32
	.long	.LASF676
	.byte	0x1
	.byte	0x8c
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	allocno_order
	.uleb128 0x32
	.long	.LASF677
	.byte	0x1
	.byte	0x92
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	reg_may_share
	.uleb128 0x32
	.long	.LASF678
	.byte	0x1
	.byte	0xa1
	.long	0x2169
	.uleb128 0x9
	.byte	0x3
	.quad	conflicts
	.uleb128 0x32
	.long	.LASF679
	.byte	0x1
	.byte	0xa6
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	allocno_row_words
	.uleb128 0x32
	.long	.LASF680
	.byte	0x1
	.byte	0xd3
	.long	0x6a6
	.uleb128 0x9
	.byte	0x3
	.quad	hard_regs_live
	.uleb128 0x32
	.long	.LASF681
	.byte	0x1
	.byte	0xd7
	.long	0x6a6
	.uleb128 0x9
	.byte	0x3
	.quad	no_global_alloc_regs
	.uleb128 0x32
	.long	.LASF682
	.byte	0x1
	.byte	0xdb
	.long	0x6a6
	.uleb128 0x9
	.byte	0x3
	.quad	regs_used_so_far
	.uleb128 0x14
	.long	0x13e
	.long	0x2e0c
	.uleb128 0x15
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x32
	.long	.LASF683
	.byte	0x1
	.byte	0xe0
	.long	0x2dfc
	.uleb128 0x9
	.byte	0x3
	.quad	local_reg_n_refs
	.uleb128 0x32
	.long	.LASF684
	.byte	0x1
	.byte	0xe3
	.long	0x2dfc
	.uleb128 0x9
	.byte	0x3
	.quad	local_reg_freq
	.uleb128 0x32
	.long	.LASF685
	.byte	0x1
	.byte	0xe8
	.long	0x2dfc
	.uleb128 0x9
	.byte	0x3
	.quad	local_reg_live_length
	.uleb128 0x32
	.long	.LASF686
	.byte	0x1
	.byte	0xf5
	.long	0x2169
	.uleb128 0x9
	.byte	0x3
	.quad	allocnos_live
	.uleb128 0x24
	.long	.LASF665
	.byte	0x1
	.value	0x122
	.long	0xedb
	.uleb128 0x9
	.byte	0x3
	.quad	regs_set
	.uleb128 0x24
	.long	.LASF687
	.byte	0x1
	.value	0x123
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	n_regs_set
	.uleb128 0x24
	.long	.LASF688
	.byte	0x1
	.value	0x127
	.long	0x6a6
	.uleb128 0x9
	.byte	0x3
	.quad	eliminable_regset
	.uleb128 0x24
	.long	.LASF689
	.byte	0x1
	.value	0x6ca
	.long	0x12f8
	.uleb128 0x9
	.byte	0x3
	.quad	live_relevant_regs
	.uleb128 0x33
	.long	.LASF690
	.byte	0x4
	.byte	0x62
	.long	0x13e
	.uleb128 0x14
	.long	0x14c
	.long	0x2ed3
	.uleb128 0x15
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x34
	.long	.LASF691
	.byte	0x4
	.value	0xc3a
	.long	0x2edf
	.uleb128 0xa
	.long	0x2ec3
	.uleb128 0x14
	.long	0x65d
	.long	0x2ef4
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x2eff
	.uleb128 0xa
	.long	0x2ee4
	.uleb128 0x14
	.long	0x28d
	.long	0x2f14
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.long	.LASF692
	.byte	0x9
	.byte	0x50
	.long	0x2f1f
	.uleb128 0xa
	.long	0x2f04
	.uleb128 0x14
	.long	0x2c5
	.long	0x2f34
	.uleb128 0x15
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x34
	.long	.LASF693
	.byte	0xa
	.value	0x18b
	.long	0x2f24
	.uleb128 0x34
	.long	.LASF694
	.byte	0xa
	.value	0x18f
	.long	0x6a6
	.uleb128 0x34
	.long	.LASF695
	.byte	0xa
	.value	0x196
	.long	0x2f24
	.uleb128 0x34
	.long	.LASF696
	.byte	0xa
	.value	0x19a
	.long	0x6a6
	.uleb128 0x34
	.long	.LASF697
	.byte	0xa
	.value	0x19d
	.long	0x6a6
	.uleb128 0x34
	.long	.LASF698
	.byte	0xa
	.value	0x1a9
	.long	0x6a6
	.uleb128 0x34
	.long	.LASF699
	.byte	0xa
	.value	0x1be
	.long	0x2dfc
	.uleb128 0x14
	.long	0x6a6
	.long	0x2f98
	.uleb128 0x15
	.long	0x145
	.byte	0x18
	.byte	0
	.uleb128 0x34
	.long	.LASF700
	.byte	0xa
	.value	0x1c7
	.long	0x2f88
	.uleb128 0x14
	.long	0x4c2
	.long	0x2fb4
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF701
	.byte	0x2
	.byte	0x3c
	.long	0x2fbf
	.uleb128 0xa
	.long	0x2fa4
	.uleb128 0x14
	.long	0x2c5
	.long	0x2fd4
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x33
	.long	.LASF702
	.byte	0x2
	.byte	0x3f
	.long	0x2fdf
	.uleb128 0xa
	.long	0x2fc4
	.uleb128 0x34
	.long	.LASF703
	.byte	0x2
	.value	0x5fd
	.long	0x13e
	.uleb128 0x33
	.long	.LASF704
	.byte	0x11
	.byte	0xe6
	.long	0x13e
	.uleb128 0x34
	.long	.LASF705
	.byte	0x11
	.value	0x13a
	.long	0x13e
	.uleb128 0x34
	.long	.LASF706
	.byte	0x11
	.value	0x244
	.long	0x13e
	.uleb128 0x33
	.long	.LASF707
	.byte	0xc
	.byte	0xe4
	.long	0x13e
	.uleb128 0x33
	.long	.LASF708
	.byte	0xc
	.byte	0xec
	.long	0x12dc
	.uleb128 0x33
	.long	.LASF709
	.byte	0xe
	.byte	0x2a
	.long	0x13e
	.uleb128 0x33
	.long	.LASF710
	.byte	0xe
	.byte	0x41
	.long	0x12dc
	.uleb128 0x33
	.long	.LASF711
	.byte	0xe
	.byte	0x9d
	.long	0x304a
	.uleb128 0x3
	.byte	0x8
	.long	0x2a2
	.uleb128 0x33
	.long	.LASF712
	.byte	0xe
	.byte	0xa2
	.long	0x2f24
	.uleb128 0x33
	.long	.LASF713
	.byte	0xe
	.byte	0xc4
	.long	0x2d
	.uleb128 0x33
	.long	.LASF714
	.byte	0xe
	.byte	0xc9
	.long	0x13e
	.uleb128 0x34
	.long	.LASF715
	.byte	0xf
	.value	0x1e4
	.long	0x19e1
	.uleb128 0x33
	.long	.LASF716
	.byte	0x10
	.byte	0xf7
	.long	0x1b30
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x26
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF362:
	.string	"REG_BR_PROB"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF538:
	.string	"profile_label_no"
.LASF319:
	.string	"rtstr"
.LASF379:
	.string	"NOTE_INSN_DELETED"
.LASF93:
	.string	"_unused2"
.LASF247:
	.string	"UMOD"
.LASF301:
	.string	"min_align"
.LASF694:
	.string	"fixed_reg_set"
.LASF79:
	.string	"_fileno"
.LASF423:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF684:
	.string	"local_reg_freq"
.LASF327:
	.string	"first"
.LASF686:
	.string	"allocnos_live"
.LASF532:
	.string	"inlinable"
.LASF564:
	.string	"uses_const_pool"
.LASF288:
	.string	"CONSTANT_P_RTX"
.LASF638:
	.string	"tmp1"
.LASF639:
	.string	"tmp2"
.LASF580:
	.string	"block"
.LASF605:
	.string	"pri1"
.LASF606:
	.string	"pri2"
.LASF318:
	.string	"rtuint"
.LASF707:
	.string	"n_basic_blocks"
.LASF322:
	.string	"rt_cselib"
.LASF191:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF537:
	.string	"inl_max_label_num"
.LASF722:
	.string	"global_alloc"
.LASF251:
	.string	"LSHIFTRT"
.LASF185:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF719:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF695:
	.string	"call_used_regs"
.LASF246:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF179:
	.string	"MATCH_OPERAND"
.LASF472:
	.string	"x_first_label_num"
.LASF159:
	.string	"CCFPmode"
.LASF100:
	.string	"reg_class"
.LASF268:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF306:
	.string	"max_after_base"
.LASF269:
	.string	"UNLT"
.LASF689:
	.string	"live_relevant_regs"
.LASF565:
	.string	"uses_pic_offset_table"
.LASF571:
	.string	"initial_value_struct"
.LASF461:
	.string	"probability"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF415:
	.string	"next"
.LASF60:
	.string	"__off_t"
.LASF671:
	.string	"dump_conflicts"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF290:
	.string	"VEC_MERGE"
.LASF535:
	.string	"original_decl_initial"
.LASF631:
	.string	"pass"
.LASF85:
	.string	"_lock"
.LASF425:
	.string	"uhint"
.LASF223:
	.string	"RETURN"
.LASF426:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF688:
	.string	"eliminable_regset"
.LASF310:
	.string	"alias"
.LASF307:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF561:
	.string	"stdarg"
.LASF522:
	.string	"x_trampoline_list"
.LASF25:
	.string	"Q_REGS"
.LASF210:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF216:
	.string	"UNSPEC"
.LASF209:
	.string	"BARRIER"
.LASF646:
	.string	"ialloc_prod"
.LASF385:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF212:
	.string	"COND_EXEC"
.LASF650:
	.string	"mask"
.LASF226:
	.string	"CONST_INT"
.LASF222:
	.string	"CALL"
.LASF637:
	.string	"new_losers"
.LASF50:
	.string	"maybe_vaarg"
.LASF543:
	.string	"epilogue_delay_list"
.LASF137:
	.string	"V4QImode"
.LASF201:
	.string	"ATTR"
.LASF342:
	.string	"count"
.LASF320:
	.string	"rttype"
.LASF701:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF687:
	.string	"n_regs_set"
.LASF332:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF409:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF704:
	.string	"flag_caller_saves"
.LASF659:
	.string	"src_regno"
.LASF136:
	.string	"V2DImode"
.LASF512:
	.string	"x_return_label"
.LASF452:
	.string	"varray_type"
.LASF315:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF356:
	.string	"REG_UNUSED"
.LASF194:
	.string	"DEFINE_DELAY"
.LASF244:
	.string	"MINUS"
.LASF519:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF431:
	.string	"sched_info_tag"
.LASF234:
	.string	"STRICT_LOW_PART"
.LASF582:
	.string	"live_throughout"
.LASF699:
	.string	"reg_alloc_order"
.LASF176:
	.string	"INCLUDE"
.LASF405:
	.string	"GR_FRAME_POINTER"
.LASF667:
	.string	"chain"
.LASF340:
	.string	"index"
.LASF438:
	.string	"freq"
.LASF272:
	.string	"ZERO_EXTEND"
.LASF275:
	.string	"FLOAT_TRUNCATE"
.LASF488:
	.string	"x_forced_labels"
.LASF503:
	.string	"internal_arg_pointer"
.LASF402:
	.string	"GR_PC"
.LASF603:
	.string	"endregno"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF445:
	.string	"varray_data"
.LASF573:
	.string	"machine_function"
.LASF276:
	.string	"FLOAT"
.LASF368:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF698:
	.string	"call_fixed_reg_set"
.LASF716:
	.string	"reload_insn_chain"
.LASF325:
	.string	"rtmem"
.LASF531:
	.string	"fixup_var_refs_queue"
.LASF285:
	.string	"RANGE_REG"
.LASF323:
	.string	"rtbit"
.LASF414:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF261:
	.string	"PRE_MODIFY"
.LASF623:
	.string	"allocno2"
.LASF546:
	.string	"returns_pointer"
.LASF274:
	.string	"FLOAT_EXTEND"
.LASF435:
	.string	"last_note_uid"
.LASF491:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF380:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF624:
	.string	"allocno_"
.LASF106:
	.string	"SImode"
.LASF218:
	.string	"ADDR_VEC"
.LASF569:
	.string	"stmt_status"
.LASF691:
	.string	"regclass_map"
.LASF147:
	.string	"V2DFmode"
.LASF300:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF314:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF329:
	.string	"indx"
.LASF539:
	.string	"machine"
.LASF237:
	.string	"SYMBOL_REF"
.LASF378:
	.string	"NOTE_INSN_BIAS"
.LASF400:
	.string	"NOTE_INSN_MAX"
.LASF486:
	.string	"x_saveregs_value"
.LASF712:
	.string	"regs_ever_live"
.LASF700:
	.string	"reg_class_contents"
.LASF190:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF242:
	.string	"COMPARE"
.LASF270:
	.string	"LTGT"
.LASF621:
	.string	"temp"
.LASF466:
	.string	"unsignedp"
.LASF282:
	.string	"HIGH"
.LASF239:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF663:
	.string	"mark_elimination"
.LASF421:
	.string	"const_equiv_data"
.LASF505:
	.string	"hard_reg_initial_vals"
.LASF484:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF260:
	.string	"POST_INC"
.LASF120:
	.string	"TFmode"
.LASF56:
	.string	"unsigned char"
.LASF572:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF489:
	.string	"x_pending_chain"
.LASF504:
	.string	"cannot_inline"
.LASF721:
	.string	"_IO_lock_t"
.LASF634:
	.string	"class"
.LASF589:
	.string	"need_elim"
.LASF442:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF258:
	.string	"PRE_INC"
.LASF355:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF492:
	.string	"emit"
.LASF705:
	.string	"flag_omit_frame_pointer"
.LASF207:
	.string	"JUMP_INSN"
.LASF337:
	.string	"cond_local_set"
.LASF679:
	.string	"allocno_row_words"
.LASF462:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF324:
	.string	"rttree"
.LASF610:
	.string	"bit_num_"
.LASF377:
	.string	"insn_note"
.LASF396:
	.string	"NOTE_INSN_RANGE_END"
.LASF189:
	.string	"DEFINE_SPLIT"
.LASF553:
	.string	"has_nonlocal_goto"
.LASF567:
	.string	"arg_pointer_save_area_init"
.LASF228:
	.string	"CONST_VECTOR"
.LASF186:
	.string	"MATCH_INSN"
.LASF513:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF455:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF220:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF496:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF515:
	.string	"x_rtl_expr_chain"
.LASF284:
	.string	"RANGE_INFO"
.LASF422:
	.string	"rtunion_def"
.LASF200:
	.string	"DEFINE_ATTR"
.LASF202:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF507:
	.string	"x_nonlocal_labels"
.LASF277:
	.string	"UNSIGNED_FLOAT"
.LASF367:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF430:
	.string	"cselib_val_struct"
.LASF399:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF249:
	.string	"ROTATE"
.LASF335:
	.string	"succ"
.LASF437:
	.string	"refs"
.LASF273:
	.string	"TRUNCATE"
.LASF360:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF579:
	.string	"next_need_reload"
.LASF410:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF599:
	.string	"from"
.LASF381:
	.string	"NOTE_INSN_BLOCK_END"
.LASF420:
	.string	"bitmap"
.LASF390:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF702:
	.string	"rtx_class"
.LASF614:
	.string	"link"
.LASF344:
	.string	"flags"
.LASF481:
	.string	"x_regno_reg_rtx"
.LASF177:
	.string	"EXPR_LIST"
.LASF204:
	.string	"EQ_ATTR"
.LASF657:
	.string	"mark_reg_live_nc"
.LASF714:
	.string	"caller_save_needed"
.LASF156:
	.string	"CCGOCmode"
.LASF235:
	.string	"CONCAT"
.LASF457:
	.string	"pred_next"
.LASF303:
	.string	"min_after_vec"
.LASF63:
	.string	"FILE"
.LASF241:
	.string	"COND"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF523:
	.string	"x_parm_birth_insn"
.LASF525:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF576:
	.string	"regs"
.LASF124:
	.string	"DCmode"
.LASF192:
	.string	"DEFINE_COMBINE"
.LASF717:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF517:
	.string	"x_tail_recursion_reentry"
.LASF250:
	.string	"ASHIFTRT"
.LASF591:
	.string	"reload"
.LASF630:
	.string	"best_reg"
.LASF154:
	.string	"CCmode"
.LASF333:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF383:
	.string	"NOTE_INSN_LOOP_END"
.LASF152:
	.string	"V16SFmode"
.LASF397:
	.string	"NOTE_INSN_LIVE"
.LASF197:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF463:
	.string	"var_refs_queue"
.LASF485:
	.string	"x_stack_pointer_delta"
.LASF193:
	.string	"DEFINE_EXPAND"
.LASF556:
	.string	"is_thunk"
.LASF608:
	.string	"ptr_"
.LASF448:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF509:
	.string	"x_nonlocal_goto_handler_labels"
.LASF206:
	.string	"INSN"
.LASF317:
	.string	"rtint"
.LASF236:
	.string	"LABEL_REF"
.LASF359:
	.string	"REG_LABEL"
.LASF626:
	.string	"losers"
.LASF709:
	.string	"max_regno"
.LASF444:
	.string	"elt_list"
.LASF680:
	.string	"hard_regs_live"
.LASF347:
	.string	"REG_DEAD"
.LASF604:
	.string	"file"
.LASF387:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF587:
	.string	"need_reload"
.LASF692:
	.string	"mode_size"
.LASF350:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF454:
	.string	"regset"
.LASF668:
	.string	"build_insn_chain"
.LASF155:
	.string	"CCGCmode"
.LASF339:
	.string	"global_live_at_end"
.LASF232:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF710:
	.string	"reg_n_info"
.LASF592:
	.string	"allocno"
.LASF611:
	.string	"word_num_"
.LASF594:
	.string	"hard_reg_conflicts"
.LASF271:
	.string	"SIGN_EXTEND"
.LASF548:
	.string	"calls_setjmp"
.LASF696:
	.string	"call_used_reg_set"
.LASF718:
	.string	"global.c"
.LASF293:
	.string	"VEC_DUPLICATE"
.LASF419:
	.string	"bitmap_head"
.LASF510:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF311:
	.string	"expr"
.LASF393:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF508:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF581:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF358:
	.string	"REG_CC_USER"
.LASF215:
	.string	"ASM_OPERANDS"
.LASF528:
	.string	"x_temp_slot_level"
.LASF158:
	.string	"CCZmode"
.LASF384:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF641:
	.string	"double"
.LASF575:
	.string	"needs"
.LASF609:
	.string	"indx_"
.LASF656:
	.string	"mark_reg_death"
.LASF554:
	.string	"contains_functions"
.LASF658:
	.string	"set_preference"
.LASF493:
	.string	"varasm"
.LASF373:
	.string	"REG_NON_LOCAL_GOTO"
.LASF219:
	.string	"ADDR_DIFF_VEC"
.LASF558:
	.string	"profile"
.LASF281:
	.string	"ZERO_EXTRACT"
.LASF424:
	.string	"hint"
.LASF214:
	.string	"ASM_INPUT"
.LASF264:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF465:
	.string	"promoted_mode"
.LASF601:
	.string	"eliminables"
.LASF683:
	.string	"local_reg_n_refs"
.LASF447:
	.string	"num_elements"
.LASF278:
	.string	"UNSIGNED_FIX"
.LASF545:
	.string	"returns_pcc_struct"
.LASF595:
	.string	"hard_reg_preferences"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF450:
	.string	"name"
.LASF178:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF286:
	.string	"RANGE_VAR"
.LASF443:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF164:
	.string	"MODE_INT"
.LASF449:
	.string	"element_size"
.LASF500:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF674:
	.string	"max_allocno"
.LASF482:
	.string	"expr_status"
.LASF552:
	.string	"has_nonlocal_label"
.LASF287:
	.string	"RANGE_LIVE"
.LASF483:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF497:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF429:
	.string	"const_equiv"
.LASF434:
	.string	"last_uid"
.LASF321:
	.string	"rt_addr_diff_vec_flags"
.LASF583:
	.string	"dead_or_set"
.LASF407:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF296:
	.string	"SS_MINUS"
.LASF183:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF349:
	.string	"REG_EQUIV"
.LASF57:
	.string	"short unsigned int"
.LASF58:
	.string	"signed char"
.LASF182:
	.string	"MATCH_OPERATOR"
.LASF446:
	.string	"varray_head_tag"
.LASF328:
	.string	"current"
.LASF475:
	.string	"x_cur_insn_uid"
.LASF524:
	.string	"x_last_parm_insn"
.LASF647:
	.string	"record_conflicts"
.LASF298:
	.string	"SS_TRUNCATE"
.LASF363:
	.string	"REG_EXEC_COUNT"
.LASF677:
	.string	"reg_may_share"
.LASF533:
	.string	"no_debugging_symbols"
.LASF693:
	.string	"fixed_regs"
.LASF302:
	.string	"base_after_vec"
.LASF187:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF140:
	.string	"V4DImode"
.LASF341:
	.string	"loop_depth"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF86:
	.string	"_offset"
.LASF408:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF477:
	.string	"x_last_filename"
.LASF635:
	.string	"no_copy_prefs"
.LASF361:
	.string	"REG_DEP_OUTPUT"
.LASF73:
	.string	"_IO_buf_end"
.LASF196:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF297:
	.string	"US_MINUS"
.LASF502:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF280:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF713:
	.string	"regs_may_share"
.LASF440:
	.string	"live_length"
.LASF221:
	.string	"CLOBBER"
.LASF456:
	.string	"edge_def"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF365:
	.string	"REG_SAVE_AREA"
.LASF289:
	.string	"CALL_PLACEHOLDER"
.LASF490:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF676:
	.string	"allocno_order"
.LASF557:
	.string	"instrument_entry_exit"
.LASF520:
	.string	"x_frame_offset"
.LASF243:
	.string	"PLUS"
.LASF661:
	.string	"copy"
.LASF259:
	.string	"POST_DEC"
.LASF417:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF345:
	.string	"rtunion"
.LASF386:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF597:
	.string	"hard_reg_full_preferences"
.LASF568:
	.string	"eh_status"
.LASF467:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF412:
	.string	"GR_VIRTUAL_CFA"
.LASF708:
	.string	"basic_block_info"
.LASF351:
	.string	"REG_WAS_0"
.LASF372:
	.string	"REG_NORETURN"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF547:
	.string	"needs_context"
.LASF371:
	.string	"REG_MAYBE_DEAD"
.LASF149:
	.string	"V4DFmode"
.LASF711:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF346:
	.string	"reg_note"
.LASF551:
	.string	"calls_eh_return"
.LASF530:
	.string	"x_target_temp_slot_level"
.LASF498:
	.string	"pretend_args_size"
.LASF174:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF468:
	.string	"last"
.LASF560:
	.string	"varargs"
.LASF627:
	.string	"alt_regs_p"
.LASF20:
	.string	"CREG"
.LASF562:
	.string	"x_whole_function_mode_p"
.LASF175:
	.string	"UNKNOWN"
.LASF217:
	.string	"UNSPEC_VOLATILE"
.LASF574:
	.string	"language_function"
.LASF389:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF115:
	.string	"HFmode"
.LASF673:
	.string	"dump_global_regs"
.LASF536:
	.string	"inl_last_parm_insn"
.LASF224:
	.string	"TRAP_IF"
.LASF439:
	.string	"deaths"
.LASF369:
	.string	"REG_EH_REGION"
.LASF526:
	.string	"x_parm_reg_stack_loc"
.LASF593:
	.string	"n_refs"
.LASF352:
	.string	"REG_RETVAL"
.LASF602:
	.string	"need_fp"
.LASF127:
	.string	"CQImode"
.LASF62:
	.string	"char"
.LASF544:
	.string	"returns_struct"
.LASF125:
	.string	"XCmode"
.LASF518:
	.string	"x_arg_pointer_save_area"
.LASF18:
	.string	"AREG"
.LASF613:
	.string	"mask_"
.LASF516:
	.string	"x_tail_recursion_label"
.LASF72:
	.string	"_IO_buf_base"
.LASF542:
	.string	"language"
.LASF252:
	.string	"ROTATERT"
.LASF238:
	.string	"ADDRESSOF"
.LASF374:
	.string	"REG_SETJMP"
.LASF649:
	.string	"mirror_conflicts"
.LASF133:
	.string	"V2QImode"
.LASF681:
	.string	"no_global_alloc_regs"
.LASF471:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF464:
	.string	"modified"
.LASF480:
	.string	"regno_decl"
.LASF432:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF588:
	.string	"need_operand_change"
.LASF257:
	.string	"PRE_DEC"
.LASF64:
	.string	"_IO_FILE"
.LASF388:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF406:
	.string	"GR_HARD_FRAME_POINTER"
.LASF357:
	.string	"REG_CC_SETTER"
.LASF550:
	.string	"calls_alloca"
.LASF651:
	.string	"word"
.LASF529:
	.string	"x_var_temp_slot_level"
.LASF163:
	.string	"MODE_RANDOM"
.LASF652:
	.string	"mark_reg_store"
.LASF295:
	.string	"US_PLUS"
.LASF697:
	.string	"losing_caller_save_reg_set"
.LASF153:
	.string	"BLKmode"
.LASF122:
	.string	"HCmode"
.LASF643:
	.string	"alloc_no"
.LASF453:
	.string	"regset_head"
.LASF622:
	.string	"temp2"
.LASF229:
	.string	"CONST_STRING"
.LASF292:
	.string	"VEC_CONCAT"
.LASF313:
	.string	"size"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF364:
	.string	"REG_NOALIAS"
.LASF205:
	.string	"ATTR_FLAG"
.LASF160:
	.string	"CCFPUmode"
.LASF723:
	.string	"allocno_compare"
.LASF348:
	.string	"REG_INC"
.LASF195:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF521:
	.string	"x_context_display"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF653:
	.string	"setter"
.LASF199:
	.string	"ADDRESS"
.LASF460:
	.string	"insns"
.LASF586:
	.string	"need"
.LASF534:
	.string	"original_arg_vector"
.LASF566:
	.string	"uses_eh_lsda"
.LASF427:
	.string	"cptr"
.LASF664:
	.string	"reg_becomes_live"
.LASF326:
	.string	"bitmap_head_def"
.LASF620:
	.string	"allocno_to_order"
.LASF629:
	.string	"retrying"
.LASF669:
	.string	"live_relevant_regs_head"
.LASF441:
	.string	"calls_crossed"
.LASF299:
	.string	"US_TRUNCATE"
.LASF596:
	.string	"hard_reg_copy_preferences"
.LASF655:
	.string	"mark_reg_conflicts"
.LASF401:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF294:
	.string	"SS_PLUS"
.LASF256:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF308:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF690:
	.string	"target_flags"
.LASF585:
	.string	"used_spill_regs"
.LASF451:
	.string	"data"
.LASF404:
	.string	"GR_STACK_POINTER"
.LASF116:
	.string	"TQFmode"
.LASF612:
	.string	"word_"
.LASF331:
	.string	"head"
.LASF640:
	.string	"this_reg"
.LASF636:
	.string	"no_prefs"
.LASF44:
	.string	"words"
.LASF305:
	.string	"min_after_base"
.LASF428:
	.string	"sched"
.LASF665:
	.string	"regs_set"
.LASF563:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF17:
	.string	"NO_REGS"
.LASF715:
	.string	"cfun"
.LASF499:
	.string	"outgoing_args_size"
.LASF109:
	.string	"OImode"
.LASF370:
	.string	"REG_SAVE_NOTE"
.LASF254:
	.string	"SMAX"
.LASF413:
	.string	"GR_MAX"
.LASF291:
	.string	"VEC_SELECT"
.LASF354:
	.string	"REG_NONNEG"
.LASF540:
	.string	"stack_alignment_needed"
.LASF470:
	.string	"emit_status"
.LASF632:
	.string	"used1"
.LASF633:
	.string	"used2"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF675:
	.string	"reg_allocno"
.LASF262:
	.string	"POST_MODIFY"
.LASF685:
	.string	"local_reg_live_length"
.LASF578:
	.string	"insn_chain"
.LASF366:
	.string	"REG_BR_PRED"
.LASF188:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF395:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF312:
	.string	"offset"
.LASF309:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF184:
	.string	"MATCH_OP_DUP"
.LASF198:
	.string	"SEQUENCE"
.LASF114:
	.string	"QFmode"
.LASF436:
	.string	"sets"
.LASF501:
	.string	"args_info"
.LASF703:
	.string	"max_parallel"
.LASF559:
	.string	"limit_stack"
.LASF225:
	.string	"RESX"
.LASF459:
	.string	"dest"
.LASF213:
	.string	"PARALLEL"
.LASF645:
	.string	"ialloc"
.LASF13:
	.string	"num_elem"
.LASF75:
	.string	"_IO_backup_base"
.LASF615:
	.string	"used_in_output"
.LASF263:
	.string	"UNORDERED"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF617:
	.string	"global_conflicts"
.LASF338:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF180:
	.string	"MATCH_SCRATCH"
.LASF230:
	.string	"CONST"
.LASF479:
	.string	"regno_pointer_align"
.LASF279:
	.string	"SQRT"
.LASF403:
	.string	"GR_CC0"
.LASF654:
	.string	"mark_reg_clobber"
.LASF162:
	.string	"mode_class"
.LASF245:
	.string	"MULT"
.LASF167:
	.string	"MODE_CC"
.LASF336:
	.string	"local_set"
.LASF110:
	.string	"PQImode"
.LASF469:
	.string	"sequence_rtl_expr"
.LASF142:
	.string	"V8HImode"
.LASF590:
	.string	"is_caller_save_insn"
.LASF527:
	.string	"x_temp_slots"
.LASF514:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF208:
	.string	"CALL_INSN"
.LASF660:
	.string	"dest_regno"
.LASF233:
	.string	"SUBREG"
.LASF600:
	.string	"retval"
.LASF549:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF375:
	.string	"REG_ALWAYS_RETURN"
.LASF494:
	.string	"decl"
.LASF99:
	.string	"long long int"
.LASF353:
	.string	"REG_LIBCALL"
.LASF80:
	.string	"_flags2"
.LASF121:
	.string	"QCmode"
.LASF628:
	.string	"accept_call_clobbered"
.LASF231:
	.string	"VALUE"
.LASF211:
	.string	"NOTE"
.LASF48:
	.string	"sse_nregs"
.LASF255:
	.string	"UMIN"
.LASF181:
	.string	"MATCH_DUP"
.LASF642:
	.string	"forbidden_regs"
.LASF173:
	.string	"HARD_REG_ELT_TYPE"
.LASF330:
	.string	"basic_block_def"
.LASF672:
	.string	"has_preferences"
.LASF570:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF625:
	.string	"find_reg"
.LASF644:
	.string	"record_one_conflict"
.LASF382:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF418:
	.string	"bitmap_element"
.LASF506:
	.string	"x_function_call_count"
.LASF128:
	.string	"CHImode"
.LASF398:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF203:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF478:
	.string	"regno_pointer_align_length"
.LASF473:
	.string	"x_first_insn"
.LASF662:
	.string	"retry_global_alloc"
.LASF487:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF227:
	.string	"CONST_DOUBLE"
.LASF433:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF138:
	.string	"V4HImode"
.LASF265:
	.string	"UNEQ"
.LASF598:
	.string	"regs_someone_prefers"
.LASF248:
	.string	"ASHIFT"
.LASF253:
	.string	"SMIN"
.LASF670:
	.string	"__FUNCTION__"
.LASF240:
	.string	"IF_THEN_ELSE"
.LASF648:
	.string	"allocno_vec"
.LASF577:
	.string	"groups"
.LASF706:
	.string	"frame_pointer_needed"
.LASF394:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF678:
	.string	"conflicts"
.LASF495:
	.string	"outer"
.LASF584:
	.string	"n_reloads"
.LASF391:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF476:
	.string	"x_last_linenum"
.LASF52:
	.string	"unsigned int"
.LASF720:
	.string	"tree_node"
.LASF616:
	.string	"note"
.LASF511:
	.string	"x_cleanup_label"
.LASF682:
	.string	"regs_used_so_far"
.LASF607:
	.string	"block_start_allocnos"
.LASF304:
	.string	"max_after_vec"
.LASF266:
	.string	"UNGE"
.LASF59:
	.string	"short int"
.LASF334:
	.string	"pred"
.LASF267:
	.string	"UNGT"
.LASF555:
	.string	"has_computed_jump"
.LASF474:
	.string	"x_last_insn"
.LASF416:
	.string	"prev"
.LASF83:
	.string	"_vtable_offset"
.LASF666:
	.string	"reg_dies"
.LASF541:
	.string	"preferred_stack_boundary"
.LASF102:
	.string	"VOIDmode"
.LASF376:
	.string	"REG_VTABLE_REF"
.LASF618:
	.string	"expand_preferences"
.LASF411:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF283:
	.string	"LO_SUM"
.LASF619:
	.string	"prune_preferences"
.LASF343:
	.string	"frequency"
.LASF316:
	.string	"rtwint"
.LASF458:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
