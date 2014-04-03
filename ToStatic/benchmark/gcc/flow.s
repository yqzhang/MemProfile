	.file	"flow.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 flow.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	flow2_completed,4,4
	.comm	max_regno,4,4
	.comm	reg_n_info,8,8
	.comm	regset_bytes,4,4
	.comm	regset_size,4,4
	.comm	regs_live_at_setjmp,8,8
	.comm	regs_may_share,8,8
	.comm	lang_missing_noreturn_ok_p,8,8
	.local	elim_reg_set
	.comm	elim_reg_set,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"function might be possible candidate for attribute `noreturn'"
	.align 8
.LC1:
	.string	"`noreturn' function does return"
	.align 8
.LC2:
	.string	"control reaches end of non-void function"
	.text
	.globl	check_function_return_warnings
	.type	check_function_return_warnings, @function
check_function_return_warnings:
.LFB2:
	.file 1 "flow.c"
	.loc 1 348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 349 0
	movl	warn_missing_noreturn(%rip), %eax	# warn_missing_noreturn, warn_missing_noreturn.0
	testl	%eax, %eax	# warn_missing_noreturn.0
	je	.L2	#,
	.loc 1 350 0
	movq	cfun(%rip), %rax	# cfun, cfun.1
	movq	48(%rax), %rax	# cfun.1_2->decl, D.17340
	movzbl	17(%rax), %eax	# *_3, D.17341
	andl	$8, %eax	#, D.17341
	testb	%al, %al	# D.17341
	jne	.L2	#,
	.loc 1 351 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, D.17342
	testq	%rax, %rax	# D.17342
	jne	.L2	#,
	.loc 1 352 0
	movq	lang_missing_noreturn_ok_p(%rip), %rax	# lang_missing_noreturn_ok_p, lang_missing_noreturn_ok_p.2
	testq	%rax, %rax	# lang_missing_noreturn_ok_p.2
	je	.L2	#,
	.loc 1 353 0
	movq	lang_missing_noreturn_ok_p(%rip), %rax	# lang_missing_noreturn_ok_p, lang_missing_noreturn_ok_p.3
	movq	cfun(%rip), %rdx	# cfun, cfun.4
	movq	48(%rdx), %rdx	# cfun.4_9->decl, D.17340
	movq	%rdx, %rdi	# D.17340,
	call	*%rax	# lang_missing_noreturn_ok_p.3
	testl	%eax, %eax	# D.17343
	jne	.L2	#,
	.loc 1 354 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L2:
	.loc 1 357 0
	movq	cfun(%rip), %rax	# cfun, cfun.5
	movq	48(%rax), %rax	# cfun.5_12->decl, D.17340
	movzbl	17(%rax), %eax	# *_13, D.17341
	andl	$8, %eax	#, D.17341
	testb	%al, %al	# D.17341
	je	.L3	#,
	.loc 1 358 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, D.17342
	testq	%rax, %rax	# D.17342
	je	.L3	#,
	.loc 1 359 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L1	#
.L3:
	.loc 1 363 0
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.6
	testl	%eax, %eax	# warn_return_type.6
	je	.L1	#,
	.loc 1 364 0
	movq	cfun(%rip), %rax	# cfun, cfun.7
	movq	256(%rax), %rax	# cfun.7_18->x_clobber_return_insn, D.17344
	testq	%rax, %rax	# D.17344
	je	.L1	#,
	.loc 1 365 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, D.17342
	testq	%rax, %rax	# D.17342
	je	.L1	#,
.LBB2:
	.loc 1 367 0
	call	get_max_uid	#
	movl	%eax, -4(%rbp)	# tmp87, max_uid
	.loc 1 373 0
	movq	cfun(%rip), %rax	# cfun, cfun.8
	movq	256(%rax), %rax	# cfun.8_22->x_clobber_return_insn, D.17344
	movl	8(%rax), %eax	# _23->fld[0].rtint, D.17343
	cmpl	-4(%rbp), %eax	# max_uid, D.17343
	jge	.L1	#,
	.loc 1 377 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.9
	movq	cfun(%rip), %rdx	# cfun, cfun.10
	movq	256(%rdx), %rdx	# cfun.10_26->x_clobber_return_insn, D.17344
	movl	8(%rdx), %edx	# _27->fld[0].rtint, D.17343
	movslq	%edx, %rdx	# D.17343, tmp88
	addq	$4, %rdx	#, tmp89
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.9_25->data.bb, D.17345
	testq	%rax, %rax	# D.17345
	je	.L1	#,
	.loc 1 378 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1:
.LBE2:
	.loc 1 381 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_function_return_warnings, .-check_function_return_warnings
	.section	.rodata
.LC3:
	.string	"flow.c"
	.text
	.globl	first_insn_after_basic_block_note
	.type	first_insn_after_basic_block_note, @function
first_insn_after_basic_block_note:
.LFB3:
	.loc 1 389 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 393 0
	movq	-24(%rbp), %rax	# block, tmp64
	movq	(%rax), %rax	# block_3(D)->head, tmp65
	movq	%rax, -8(%rbp)	# tmp65, insn
	.loc 1 395 0
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L6	#,
	.loc 1 396 0
	movl	$0, %eax	#, D.17349
	jmp	.L7	#
.L6:
	.loc 1 397 0
	movq	-8(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_4->code, D.17350
	cmpw	$36, %ax	#, D.17350
	jne	.L8	#,
	.loc 1 398 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp68
	movq	%rax, -8(%rbp)	# tmp68, insn
.L8:
	.loc 1 399 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_1->code, D.17350
	cmpw	$37, %ax	#, D.17350
	jne	.L9	#,
	.loc 1 399 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp70
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.17351
	cmpl	$-80, %eax	#, D.17351
	je	.L10	#,
.L9:
	.loc 1 400 0 is_stmt 1
	movl	$__FUNCTION__.13533, %edx	#,
	movl	$400, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L10:
	.loc 1 402 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, D.17349
.L7:
	.loc 1 403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	first_insn_after_basic_block_note, .-first_insn_after_basic_block_note
	.globl	life_analysis
	.type	life_analysis, @function
life_analysis:
.LFB4:
	.loc 1 414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# file, file
	movl	%edx, -36(%rbp)	# flags, flags
	.loc 1 423 0
	movq	$0, elim_reg_set(%rip)	#, elim_reg_set
	.loc 1 426 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 427 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp73
	cltq
	movl	eliminables.13543(,%rax,8), %eax	# eliminables[i_3].from, D.17353
	movl	$1, %edx	#, tmp74
	movl	%eax, %ecx	# D.17353, tmp82
	salq	%cl, %rdx	# tmp82, D.17354
	movq	elim_reg_set(%rip), %rax	# elim_reg_set, elim_reg_set.11
	orq	%rdx, %rax	# D.17354, elim_reg_set.12
	movq	%rax, elim_reg_set(%rip)	# elim_reg_set.12, elim_reg_set
	.loc 1 426 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L12:
	.loc 1 426 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L13	#,
	.loc 1 432 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.13
	testl	%eax, %eax	# optimize.13
	jne	.L14	#,
	.loc 1 433 0
	andl	$-99, -36(%rbp)	#, flags
.L14:
	.loc 1 445 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.14
	testl	%eax, %eax	# reload_completed.14
	je	.L15	#,
	.loc 1 446 0
	andl	$-69, -36(%rbp)	#, flags
.L15:
	.loc 1 449 0
	movl	optimize(%rip), %eax	# optimize, optimize.15
	testl	%eax, %eax	# optimize.15
	je	.L16	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# flags, tmp75
	andl	$16, %eax	#, D.17353
	testl	%eax, %eax	# D.17353
	je	.L16	#,
	.loc 1 450 0 is_stmt 1
	call	init_alias_analysis	#
.L16:
	.loc 1 454 0
	movq	-24(%rbp), %rax	# f, tmp76
	movq	%rax, %rdi	# tmp76,
	call	delete_noop_moves	#
	.loc 1 455 0
	movl	$0, %edi	#,
	call	purge_all_dead_edges	#
	.loc 1 460 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.16
	testl	%eax, %eax	# reload_completed.16
	jne	.L17	#,
	.loc 1 461 0
	movq	-24(%rbp), %rax	# f, tmp77
	movq	%rax, %rdi	# tmp77,
	call	notice_stack_pointer_modification	#
.L17:
	.loc 1 465 0
	call	allocate_reg_life_data	#
	.loc 1 466 0
	call	allocate_bb_life_data	#
	.loc 1 469 0
	movq	entry_exit_blocks+176(%rip), %rax	# entry_exit_blocks[1].global_live_at_start, D.17355
	movq	%rax, %rdi	# D.17355,
	call	mark_regs_live_at_end	#
	.loc 1 475 0
	movl	-36(%rbp), %eax	# flags, tmp78
	andl	$4, %eax	#, D.17353
	testl	%eax, %eax	# D.17353
	je	.L18	#,
	.loc 1 476 0
	movl	$53, %edx	#,
	movl	$0, %esi	#,
	movl	$regs_ever_live, %edi	#,
	call	memset	#
.L18:
	.loc 1 477 0
	movl	-36(%rbp), %eax	# flags, tmp79
	movl	%eax, %edx	# tmp79,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
	.loc 1 480 0
	movl	optimize(%rip), %eax	# optimize, optimize.17
	testl	%eax, %eax	# optimize.17
	je	.L19	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# flags, tmp80
	andl	$16, %eax	#, D.17353
	testl	%eax, %eax	# D.17353
	je	.L19	#,
	.loc 1 481 0 is_stmt 1
	call	end_alias_analysis	#
.L19:
	.loc 1 483 0
	cmpq	$0, -32(%rbp)	#, file
	je	.L20	#,
	.loc 1 484 0
	movq	-32(%rbp), %rax	# file, tmp81
	movq	%rax, %rdi	# tmp81,
	call	dump_flow_info	#
.L20:
	.loc 1 486 0
	movl	$1, %edi	#,
	call	free_basic_block_vars	#
	.loc 1 503 0
	call	delete_dead_jumptables	#
	.loc 1 504 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	life_analysis, .-life_analysis
	.type	verify_wide_reg_1, @function
verify_wide_reg_1:
.LFB5:
	.loc 1 514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# px, px
	movq	%rsi, -32(%rbp)	# pregno, pregno
	.loc 1 515 0
	movq	-24(%rbp), %rax	# px, tmp71
	movq	(%rax), %rax	# *px_3(D), tmp72
	movq	%rax, -8(%rbp)	# tmp72, x
	.loc 1 516 0
	movq	-32(%rbp), %rax	# pregno, tmp73
	movl	(%rax), %eax	# MEM[(int *)pregno_5(D)], D.17356
	movl	%eax, -12(%rbp)	# D.17356, regno
	.loc 1 518 0
	movq	-8(%rbp), %rax	# x, tmp74
	movzwl	(%rax), %eax	# x_4->code, D.17357
	cmpw	$61, %ax	#, D.17357
	jne	.L22	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp75
	movl	8(%rax), %eax	# x_4->fld[0].rtuint, D.17358
	cmpl	-12(%rbp), %eax	# regno, D.17358
	jne	.L22	#,
	.loc 1 520 0 is_stmt 1
	movq	-8(%rbp), %rax	# x, tmp76
	movzbl	2(%rax), %eax	# x_4->mode, D.17359
	movzbl	%al, %eax	# D.17359, D.17356
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17357
	movzwl	%ax, %edx	# D.17357, D.17356
	movl	target_flags(%rip), %eax	# target_flags, target_flags.19
	andl	$33554432, %eax	#, D.17356
	testl	%eax, %eax	# D.17356
	je	.L23	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.18
	jmp	.L24	#
.L23:
	.loc 1 520 0 discriminator 2
	movl	$32, %eax	#, iftmp.18
.L24:
	.loc 1 520 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.18, D.17356
	jg	.L25	#,
	.loc 1 521 0 is_stmt 1
	movl	$2, %eax	#, D.17356
	jmp	.L26	#
.L25:
	.loc 1 522 0
	movl	$1, %eax	#, D.17356
	jmp	.L26	#
.L22:
	.loc 1 524 0
	movl	$0, %eax	#, D.17356
.L26:
	.loc 1 525 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	verify_wide_reg_1, .-verify_wide_reg_1
	.section	.rodata
	.align 8
.LC4:
	.string	"Register %d died unexpectedly.\n"
	.text
	.type	verify_wide_reg, @function
verify_wide_reg:
.LFB6:
	.loc 1 534 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# regno, regno
	movq	%rsi, -48(%rbp)	# bb, bb
	.loc 1 535 0
	movq	-48(%rbp), %rax	# bb, tmp67
	movq	(%rax), %rax	# bb_2(D)->head, tmp68
	movq	%rax, -16(%rbp)	# tmp68, head
	movq	-48(%rbp), %rax	# bb, tmp69
	movq	8(%rax), %rax	# bb_2(D)->end, tmp70
	movq	%rax, -8(%rbp)	# tmp70, end
.L33:
	.loc 1 539 0
	movq	-16(%rbp), %rax	# head, tmp71
	movzwl	(%rax), %eax	# head_1->code, D.17360
	movzwl	%ax, %eax	# D.17360, D.17361
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17362
	cmpb	$105, %al	#, D.17362
	jne	.L28	#,
.LBB3:
	.loc 1 541 0
	movq	-16(%rbp), %rax	# head, tmp73
	leaq	32(%rax), %rcx	#, D.17363
	leaq	-36(%rbp), %rax	#, tmp74
	movq	%rax, %rdx	# tmp74,
	movl	$verify_wide_reg_1, %esi	#,
	movq	%rcx, %rdi	# D.17363,
	call	for_each_rtx	#
	movl	%eax, -20(%rbp)	# tmp75, r
	.loc 1 542 0
	cmpl	$1, -20(%rbp)	#, r
	jne	.L29	#,
	.loc 1 543 0
	jmp	.L35	#
.L29:
	.loc 1 544 0
	cmpl	$2, -20(%rbp)	#, r
	jne	.L28	#,
	.loc 1 545 0
	jmp	.L31	#
.L28:
.LBE3:
	.loc 1 547 0
	movq	-16(%rbp), %rax	# head, tmp76
	cmpq	-8(%rbp), %rax	# end, tmp76
	jne	.L32	#,
	.loc 1 548 0
	jmp	.L31	#
.L32:
	.loc 1 549 0
	movq	-16(%rbp), %rax	# head, tmp77
	movq	24(%rax), %rax	# head_1->fld[2].rtx, tmp78
	movq	%rax, -16(%rbp)	# tmp78, head
	.loc 1 550 0
	jmp	.L33	#
.L31:
	.loc 1 552 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.20
	testq	%rax, %rax	# rtl_dump_file.20
	je	.L34	#,
	.loc 1 554 0
	movl	-36(%rbp), %edx	# regno, regno.21
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.22
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.22,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 555 0
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.23
	movq	-48(%rbp), %rax	# bb, tmp79
	movq	%rdx, %rsi	# rtl_dump_file.23,
	movq	%rax, %rdi	# tmp79,
	call	dump_bb	#
.L34:
	.loc 1 557 0
	movl	$__FUNCTION__.13562, %edx	#,
	movl	$557, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L35:
	.loc 1 558 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	verify_wide_reg, .-verify_wide_reg
	.section	.rodata
	.align 8
.LC5:
	.string	"live_at_start mismatch in bb %d, aborting\nNew:\n"
.LC6:
	.string	"Old:\n"
	.text
	.type	verify_local_live_at_start, @function
verify_local_live_at_start:
.LFB7:
	.loc 1 567 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# new_live_at_start, new_live_at_start
	movq	%rsi, -64(%rbp)	# bb, bb
	.loc 1 568 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.24
	testl	%eax, %eax	# reload_completed.24
	je	.L37	#,
	.loc 1 572 0
	movq	-64(%rbp), %rax	# bb, tmp84
	movq	64(%rax), %rdx	# bb_13(D)->global_live_at_start, D.17365
	movq	-56(%rbp), %rax	# new_live_at_start, tmp85
	movq	%rdx, %rsi	# D.17365,
	movq	%rax, %rdi	# tmp85,
	call	bitmap_equal_p	#
	testl	%eax, %eax	# D.17366
	jne	.L36	#,
	.loc 1 574 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.25
	testq	%rax, %rax	# rtl_dump_file.25
	je	.L39	#,
	.loc 1 576 0
	movq	-64(%rbp), %rax	# bb, tmp86
	movl	88(%rax), %edx	# bb_13(D)->index, D.17366
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.26
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.26,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 579 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.27
	movq	-56(%rbp), %rdx	# new_live_at_start, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# rtl_dump_file.27,
	call	debug_bitmap_file	#
	.loc 1 580 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.28
	movq	%rax, %rcx	# rtl_dump_file.28,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 581 0
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.29
	movq	-64(%rbp), %rax	# bb, tmp88
	movq	%rdx, %rsi	# rtl_dump_file.29,
	movq	%rax, %rdi	# tmp88,
	call	dump_bb	#
.L39:
	.loc 1 583 0
	movl	$__FUNCTION__.13567, %edx	#,
	movl	$583, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L37:
.LBB4:
	.loc 1 591 0
	movq	-64(%rbp), %rax	# bb, tmp89
	movq	64(%rax), %rdx	# bb_13(D)->global_live_at_start, D.17365
	movq	-56(%rbp), %rsi	# new_live_at_start, tmp90
	movq	-56(%rbp), %rax	# new_live_at_start, tmp91
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp91,
	call	bitmap_operation	#
.LBB5:
	.loc 1 593 0
	movq	-56(%rbp), %rax	# new_live_at_start, tmp92
	movq	(%rax), %rax	# new_live_at_start_15(D)->first, tmp93
	movq	%rax, -24(%rbp)	# tmp93, ptr_
	movl	$0, -32(%rbp)	#, indx_
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L40	#
.L42:
	.loc 1 593 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp94
	movq	(%rax), %rax	# ptr__1->next, tmp95
	movq	%rax, -24(%rbp)	# tmp95, ptr_
.L40:
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L41	#,
	.loc 1 593 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp96
	movl	16(%rax), %eax	# ptr__1->indx, D.17367
	cmpl	-32(%rbp), %eax	# indx_, D.17367
	jb	.L42	#,
.L41:
	.loc 1 593 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L43	#,
	.loc 1 593 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp97
	movl	16(%rax), %eax	# ptr__1->indx, D.17367
	cmpl	-32(%rbp), %eax	# indx_, D.17367
	je	.L43	#,
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L44	#
.L43:
	.loc 1 593 0 discriminator 2
	jmp	.L44	#
.L53:
	.loc 1 593 0
	jmp	.L45	#
.L52:
.LBB6:
	.loc 1 593 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp98
	movl	-36(%rbp), %edx	# word_num_, tmp99
	addq	$2, %rdx	#, tmp100
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp101
	movq	%rax, -16(%rbp)	# tmp101, word_
	cmpq	$0, -16(%rbp)	#, word_
	je	.L46	#,
	.loc 1 593 0 discriminator 1
	jmp	.L47	#
.L51:
.LBB7:
	.loc 1 593 0 discriminator 2
	movl	-40(%rbp), %eax	# bit_num_, bit_num_.30
	movl	$1, %edx	#, tmp102
	movl	%eax, %ecx	# bit_num_.30, tmp119
	salq	%cl, %rdx	# tmp119, tmp103
	movq	%rdx, %rax	# tmp103, tmp103
	movq	%rax, -8(%rbp)	# tmp103, mask_
	movq	-8(%rbp), %rax	# mask_, tmp104
	movq	-16(%rbp), %rdx	# word_, tmp105
	andq	%rdx, %rax	# tmp105, D.17368
	testq	%rax, %rax	# D.17368
	je	.L48	#,
	.loc 1 593 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp106
	notq	%rax	# D.17368
	andq	%rax, -16(%rbp)	# D.17368, word_
	movq	-24(%rbp), %rax	# ptr_, tmp107
	movl	16(%rax), %eax	# ptr__2->indx, D.17367
	leal	(%rax,%rax), %edx	#, D.17367
	movl	-36(%rbp), %eax	# word_num_, tmp108
	addl	%edx, %eax	# D.17367, D.17367
	sall	$6, %eax	#, D.17367
	movl	%eax, %edx	# D.17367, D.17367
	movl	-40(%rbp), %eax	# bit_num_, tmp109
	addl	%edx, %eax	# D.17367, D.17367
	movl	%eax, -28(%rbp)	# D.17367, i
	movq	-64(%rbp), %rax	# bb, tmp110
	movq	64(%rax), %rax	# bb_13(D)->global_live_at_start, D.17365
	movl	-28(%rbp), %edx	# i, tmp111
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# D.17365,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17366
	je	.L49	#,
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.31
	testq	%rax, %rax	# rtl_dump_file.31
	je	.L50	#,
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.32
	movl	-28(%rbp), %edx	# i, tmp112
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.32,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.33
	movq	-64(%rbp), %rax	# bb, tmp113
	movq	%rdx, %rsi	# rtl_dump_file.33,
	movq	%rax, %rdi	# tmp113,
	call	dump_bb	#
.L50:
	.loc 1 593 0 discriminator 2
	movl	$__FUNCTION__.13567, %edx	#,
	movl	$609, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L49:
	movq	-64(%rbp), %rdx	# bb, tmp114
	movl	-28(%rbp), %eax	# i, tmp115
	movq	%rdx, %rsi	# tmp114,
	movl	%eax, %edi	# tmp115,
	call	verify_wide_reg	#
	cmpq	$0, -16(%rbp)	#, word_
	jne	.L48	#,
	.loc 1 593 0 discriminator 1
	jmp	.L46	#
.L48:
.LBE7:
	.loc 1 593 0 discriminator 2
	addl	$1, -40(%rbp)	#, bit_num_
.L47:
	.loc 1 593 0 discriminator 1
	cmpl	$63, -40(%rbp)	#, bit_num_
	jbe	.L51	#,
.L46:
	.loc 1 593 0 discriminator 2
	movl	$0, -40(%rbp)	#, bit_num_
.LBE6:
	addl	$1, -36(%rbp)	#, word_num_
.L45:
	.loc 1 593 0 discriminator 1
	cmpl	$1, -36(%rbp)	#, word_num_
	jbe	.L52	#,
	.loc 1 593 0 discriminator 3
	movl	$0, -36(%rbp)	#, word_num_
	movq	-24(%rbp), %rax	# ptr_, tmp116
	movq	(%rax), %rax	# ptr__2->next, tmp117
	movq	%rax, -24(%rbp)	# tmp117, ptr_
.L44:
	.loc 1 593 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ptr_
	jne	.L53	#,
.L36:
.LBE5:
.LBE4:
	.loc 1 611 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	verify_local_live_at_start, .-verify_local_live_at_start
	.globl	update_life_info
	.type	update_life_info, @function
update_life_info:
.LFB8:
	.loc 1 635 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -200(%rbp)	# blocks, blocks
	movl	%esi, -204(%rbp)	# extent, extent
	movl	%edx, -208(%rbp)	# prop_flags, prop_flags
	.loc 1 639 0
	movl	-208(%rbp), %eax	# prop_flags, tmp119
	movl	%eax, -180(%rbp)	# tmp119, stabilized_prop_flags
	.loc 1 641 0
	leaq	-32(%rbp), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	bitmap_initialize	#
	movq	%rax, -96(%rbp)	# tmp121, tmp
	.loc 1 643 0
	cmpl	$0, -204(%rbp)	#, extent
	je	.L55	#,
	.loc 1 643 0 is_stmt 0 discriminator 2
	cmpq	$0, -200(%rbp)	#, blocks
	je	.L56	#,
.L55:
	.loc 1 643 0 discriminator 1
	movl	$6, %eax	#, iftmp.34
	jmp	.L57	#
.L56:
	movl	$5, %eax	#, iftmp.34
.L57:
	.loc 1 643 0 discriminator 3
	movl	%eax, %edi	# iftmp.34,
	call	timevar_push	#
	.loc 1 648 0 is_stmt 1 discriminator 3
	movl	-208(%rbp), %eax	# prop_flags, tmp122
	andl	$32, %eax	#, D.17371
	testl	%eax, %eax	# D.17371
	je	.L58	#,
	.loc 1 649 0
	cmpl	$0, -204(%rbp)	#, extent
	je	.L59	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	cmpq	$0, -200(%rbp)	#, blocks
	je	.L58	#,
.L59:
	.loc 1 650 0 is_stmt 1
	movl	$__FUNCTION__.13596, %edx	#,
	movl	$650, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L58:
	.loc 1 653 0
	movl	-208(%rbp), %eax	# prop_flags, tmp123
	andl	$2, %eax	#, D.17371
	testl	%eax, %eax	# D.17371
	je	.L60	#,
	.loc 1 654 0
	movq	-200(%rbp), %rax	# blocks, tmp124
	movq	%rax, %rdi	# tmp124,
	call	clear_log_links	#
.L60:
	.loc 1 657 0
	cmpl	$0, -204(%rbp)	#, extent
	je	.L61	#,
.L67:
.LBB8:
	.loc 1 661 0
	movl	$0, -176(%rbp)	#, changed
	.loc 1 663 0
	movl	-208(%rbp), %eax	# prop_flags, tmp125
	andl	$48, %eax	#, D.17371
	movl	%eax, %edx	# D.17371, D.17371
	movq	-200(%rbp), %rcx	# blocks, tmp126
	movq	-200(%rbp), %rax	# blocks, tmp127
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	calculate_global_regs_live	#
	.loc 1 667 0
	movl	-208(%rbp), %eax	# prop_flags, tmp128
	andl	$40, %eax	#, D.17371
	cmpl	$40, %eax	#, D.17371
	je	.L62	#,
	.loc 1 669 0
	jmp	.L63	#
.L62:
	.loc 1 673 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.35
	subl	$1, %eax	#, tmp129
	movl	%eax, -184(%rbp)	# tmp129, i
	jmp	.L64	#
.L65:
.LBB9:
	.loc 1 675 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.36
	movl	-184(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	addq	$4, %rdx	#, tmp132
	movq	(%rax,%rdx,8), %rax	# basic_block_info.36_50->data.bb, tmp133
	movq	%rax, -88(%rbp)	# tmp133, bb
	.loc 1 677 0 discriminator 2
	movq	-88(%rbp), %rax	# bb, tmp134
	movq	72(%rax), %rdx	# bb_51->global_live_at_end, D.17372
	movq	-96(%rbp), %rax	# tmp, tmp135
	movq	%rdx, %rsi	# D.17372,
	movq	%rax, %rdi	# tmp135,
	call	bitmap_copy	#
	.loc 1 678 0 discriminator 2
	movl	-208(%rbp), %eax	# prop_flags, tmp136
	andl	$24, %eax	#, D.17371
	movl	%eax, %edx	# D.17371, D.17371
	movq	-96(%rbp), %rsi	# tmp, tmp137
	movq	-88(%rbp), %rax	# bb, tmp138
	movl	%edx, %r8d	# D.17371,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp138,
	call	propagate_block	#
	orl	%eax, -176(%rbp)	# D.17371, changed
.LBE9:
	.loc 1 673 0 discriminator 2
	subl	$1, -184(%rbp)	#, i
.L64:
	.loc 1 673 0 is_stmt 0 discriminator 1
	cmpl	$0, -184(%rbp)	#, i
	jns	.L65	#,
	.loc 1 688 0 is_stmt 1
	andl	$-25, -180(%rbp)	#, stabilized_prop_flags
	.loc 1 690 0
	cmpl	$0, -176(%rbp)	#, changed
	jne	.L66	#,
	.loc 1 691 0
	jmp	.L63	#
.L66:
	.loc 1 697 0
	movl	$1, %edi	#,
	call	cleanup_cfg	#
.LBE8:
	.loc 1 698 0
	jmp	.L67	#
.L63:
	.loc 1 701 0
	cmpl	$2, -204(%rbp)	#, extent
	jne	.L61	#,
	.loc 1 702 0
	movq	-200(%rbp), %rax	# blocks, tmp139
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	count_or_remove_death_notes	#
.L61:
	.loc 1 705 0
	cmpq	$0, -200(%rbp)	#, blocks
	je	.L68	#,
.LBB10:
	.loc 1 707 0
	movl	$0, -168(%rbp)	#, bit_num_
	movq	-200(%rbp), %rax	# blocks, tmp140
	movl	4(%rax), %eax	# blocks_40(D)->size, tmp141
	movl	%eax, -148(%rbp)	# tmp141, size_
	movq	-200(%rbp), %rax	# blocks, tmp145
	addq	$16, %rax	#, tmp144
	movq	%rax, -80(%rbp)	# tmp144, ptr_
	movl	$0, -172(%rbp)	#, word_num_
	jmp	.L69	#
.L75:
.LBB11:
	.loc 1 707 0 is_stmt 0 discriminator 2
	movl	-172(%rbp), %eax	# word_num_, D.17373
	leaq	0(,%rax,8), %rdx	#, D.17373
	movq	-80(%rbp), %rax	# ptr_, tmp146
	addq	%rdx, %rax	# D.17373, D.17374
	movq	(%rax), %rax	# *_64, tmp147
	movq	%rax, -136(%rbp)	# tmp147, word_
	cmpq	$0, -136(%rbp)	#, word_
	je	.L70	#,
	.loc 1 707 0 discriminator 1
	jmp	.L71	#
.L74:
.LBB12:
	.loc 1 707 0 discriminator 2
	movl	-168(%rbp), %eax	# bit_num_, bit_num_.37
	movl	$1, %edx	#, tmp148
	movl	%eax, %ecx	# bit_num_.37, tmp232
	salq	%cl, %rdx	# tmp232, tmp149
	movq	%rdx, %rax	# tmp149, tmp149
	movq	%rax, -72(%rbp)	# tmp149, _mask
	movq	-72(%rbp), %rax	# _mask, tmp150
	movq	-136(%rbp), %rdx	# word_, tmp151
	andq	%rdx, %rax	# tmp151, D.17373
	testq	%rax, %rax	# D.17373
	je	.L72	#,
	.loc 1 707 0 discriminator 1
	movq	-72(%rbp), %rax	# _mask, tmp152
	notq	%rax	# D.17373
	andq	%rax, -136(%rbp)	# D.17373, word_
	movl	-172(%rbp), %eax	# word_num_, tmp153
	sall	$6, %eax	#, D.17375
	movl	%eax, %edx	# D.17375, D.17375
	movl	-168(%rbp), %eax	# bit_num_, tmp154
	addl	%edx, %eax	# D.17375, D.17375
	movl	%eax, -184(%rbp)	# D.17375, i
.LBB13:
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.38
	movl	-184(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	addq	$4, %rdx	#, tmp157
	movq	(%rax,%rdx,8), %rax	# basic_block_info.38_74->data.bb, tmp158
	movq	%rax, -64(%rbp)	# tmp158, bb
	movq	-64(%rbp), %rax	# bb, tmp159
	movq	72(%rax), %rdx	# bb_75->global_live_at_end, D.17372
	movq	-96(%rbp), %rax	# tmp, tmp160
	movq	%rdx, %rsi	# D.17372,
	movq	%rax, %rdi	# tmp160,
	call	bitmap_copy	#
	movl	-180(%rbp), %edx	# stabilized_prop_flags, tmp161
	movq	-96(%rbp), %rsi	# tmp, tmp162
	movq	-64(%rbp), %rax	# bb, tmp163
	movl	%edx, %r8d	# tmp161,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp163,
	call	propagate_block	#
	cmpl	$0, -204(%rbp)	#, extent
	jne	.L73	#,
	movq	-64(%rbp), %rdx	# bb, tmp164
	movq	-96(%rbp), %rax	# tmp, tmp165
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	verify_local_live_at_start	#
.L73:
.LBE13:
	.loc 1 707 0 discriminator 2
	cmpq	$0, -136(%rbp)	#, word_
	jne	.L72	#,
	.loc 1 707 0 discriminator 1
	jmp	.L70	#
.L72:
.LBE12:
	.loc 1 707 0 discriminator 2
	addl	$1, -168(%rbp)	#, bit_num_
.L71:
	.loc 1 707 0 discriminator 1
	cmpl	$63, -168(%rbp)	#, bit_num_
	jbe	.L74	#,
.L70:
.LBE11:
	.loc 1 707 0 discriminator 2
	addl	$1, -172(%rbp)	#, word_num_
	movl	$0, -168(%rbp)	#, bit_num_
.L69:
	.loc 1 707 0 discriminator 1
	movl	-172(%rbp), %eax	# word_num_, tmp166
	cmpl	-148(%rbp), %eax	# size_, tmp166
	jb	.L75	#,
.LBE10:
	jmp	.L76	#
.L68:
	.loc 1 720 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.39
	subl	$1, %eax	#, tmp167
	movl	%eax, -184(%rbp)	# tmp167, i
	jmp	.L77	#
.L79:
.LBB14:
	.loc 1 722 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.40
	movl	-184(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, tmp168
	addq	$4, %rdx	#, tmp170
	movq	(%rax,%rdx,8), %rax	# basic_block_info.40_82->data.bb, tmp171
	movq	%rax, -56(%rbp)	# tmp171, bb
	.loc 1 724 0
	movq	-56(%rbp), %rax	# bb, tmp172
	movq	72(%rax), %rdx	# bb_83->global_live_at_end, D.17372
	movq	-96(%rbp), %rax	# tmp, tmp173
	movq	%rdx, %rsi	# D.17372,
	movq	%rax, %rdi	# tmp173,
	call	bitmap_copy	#
	.loc 1 726 0
	movl	-180(%rbp), %edx	# stabilized_prop_flags, tmp174
	movq	-96(%rbp), %rsi	# tmp, tmp175
	movq	-56(%rbp), %rax	# bb, tmp176
	movl	%edx, %r8d	# tmp174,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp176,
	call	propagate_block	#
	.loc 1 728 0
	cmpl	$0, -204(%rbp)	#, extent
	jne	.L78	#,
	.loc 1 729 0
	movq	-56(%rbp), %rdx	# bb, tmp177
	movq	-96(%rbp), %rax	# tmp, tmp178
	movq	%rdx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	verify_local_live_at_start	#
.L78:
.LBE14:
	.loc 1 720 0
	subl	$1, -184(%rbp)	#, i
.L77:
	.loc 1 720 0 is_stmt 0 discriminator 1
	cmpl	$0, -184(%rbp)	#, i
	jns	.L79	#,
.L76:
	.loc 1 733 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, tmp
	je	.L80	#,
	.loc 1 733 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# tmp, tmp179
	movq	%rax, %rdi	# tmp179,
	call	bitmap_clear	#
	movq	$0, -96(%rbp)	#, tmp
.L80:
	.loc 1 735 0 is_stmt 1
	movl	-208(%rbp), %eax	# prop_flags, tmp180
	andl	$4, %eax	#, D.17371
	testl	%eax, %eax	# D.17371
	je	.L81	#,
.LBB15:
	.loc 1 741 0
	movq	entry_exit_blocks+72(%rip), %rax	# entry_exit_blocks[0].global_live_at_end, D.17372
	movq	(%rax), %rax	# _88->first, tmp181
	movq	%rax, -128(%rbp)	# tmp181, ptr_
	movl	$0, -144(%rbp)	#, indx_
	movl	$53, -164(%rbp)	#, bit_num_
	movl	$0, -160(%rbp)	#, word_num_
	jmp	.L82	#
.L84:
	.loc 1 741 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# ptr_, tmp182
	movq	(%rax), %rax	# ptr__12->next, tmp183
	movq	%rax, -128(%rbp)	# tmp183, ptr_
.L82:
	cmpq	$0, -128(%rbp)	#, ptr_
	je	.L83	#,
	.loc 1 741 0 discriminator 2
	movq	-128(%rbp), %rax	# ptr_, tmp184
	movl	16(%rax), %eax	# ptr__12->indx, D.17375
	cmpl	-144(%rbp), %eax	# indx_, D.17375
	jb	.L84	#,
.L83:
	.loc 1 741 0 discriminator 3
	cmpq	$0, -128(%rbp)	#, ptr_
	je	.L85	#,
	.loc 1 741 0 discriminator 1
	movq	-128(%rbp), %rax	# ptr_, tmp185
	movl	16(%rax), %eax	# ptr__12->indx, D.17375
	cmpl	-144(%rbp), %eax	# indx_, D.17375
	je	.L85	#,
	movl	$0, -164(%rbp)	#, bit_num_
	movl	$0, -160(%rbp)	#, word_num_
	jmp	.L86	#
.L85:
	.loc 1 741 0 discriminator 2
	jmp	.L86	#
.L93:
	.loc 1 741 0
	jmp	.L87	#
.L92:
.LBB16:
	.loc 1 741 0 discriminator 2
	movq	-128(%rbp), %rax	# ptr_, tmp186
	movl	-160(%rbp), %edx	# word_num_, tmp187
	addq	$2, %rdx	#, tmp188
	movq	8(%rax,%rdx,8), %rax	# ptr__13->bits, tmp189
	movq	%rax, -120(%rbp)	# tmp189, word_
	cmpq	$0, -120(%rbp)	#, word_
	je	.L88	#,
	.loc 1 741 0 discriminator 1
	jmp	.L89	#
.L91:
.LBB17:
	.loc 1 741 0 discriminator 2
	movl	-164(%rbp), %eax	# bit_num_, bit_num_.41
	movl	$1, %edx	#, tmp190
	movl	%eax, %ecx	# bit_num_.41, tmp235
	salq	%cl, %rdx	# tmp235, tmp191
	movq	%rdx, %rax	# tmp191, tmp191
	movq	%rax, -48(%rbp)	# tmp191, mask_
	movq	-48(%rbp), %rax	# mask_, tmp192
	movq	-120(%rbp), %rdx	# word_, tmp193
	andq	%rdx, %rax	# tmp193, D.17373
	testq	%rax, %rax	# D.17373
	je	.L90	#,
	.loc 1 741 0 discriminator 1
	movq	-48(%rbp), %rax	# mask_, tmp194
	notq	%rax	# D.17373
	andq	%rax, -120(%rbp)	# D.17373, word_
	movq	-128(%rbp), %rax	# ptr_, tmp195
	movl	16(%rax), %eax	# ptr__13->indx, D.17375
	leal	(%rax,%rax), %edx	#, D.17375
	movl	-160(%rbp), %eax	# word_num_, tmp196
	addl	%edx, %eax	# D.17375, D.17375
	sall	$6, %eax	#, D.17375
	movl	%eax, %edx	# D.17375, D.17375
	movl	-164(%rbp), %eax	# bit_num_, tmp197
	addl	%edx, %eax	# D.17375, D.17375
	movl	%eax, -184(%rbp)	# D.17375, i
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.42
	movl	-184(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, tmp198
	addq	$4, %rdx	#, tmp200
	movq	(%rax,%rdx,8), %rax	# reg_n_info.42_110->data.reg, D.17376
	movl	$-2, 36(%rax)	#, _111->basic_block
	cmpq	$0, -120(%rbp)	#, word_
	jne	.L90	#,
	jmp	.L88	#
.L90:
.LBE17:
	.loc 1 741 0 discriminator 2
	addl	$1, -164(%rbp)	#, bit_num_
.L89:
	.loc 1 741 0 discriminator 1
	cmpl	$63, -164(%rbp)	#, bit_num_
	jbe	.L91	#,
.L88:
	.loc 1 741 0 discriminator 2
	movl	$0, -164(%rbp)	#, bit_num_
.LBE16:
	addl	$1, -160(%rbp)	#, word_num_
.L87:
	.loc 1 741 0 discriminator 1
	cmpl	$1, -160(%rbp)	#, word_num_
	jbe	.L92	#,
	.loc 1 741 0 discriminator 3
	movl	$0, -160(%rbp)	#, word_num_
	movq	-128(%rbp), %rax	# ptr_, tmp201
	movq	(%rax), %rax	# ptr__13->next, tmp202
	movq	%rax, -128(%rbp)	# tmp202, ptr_
.L86:
	.loc 1 741 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, ptr_
	jne	.L93	#,
.LBE15:
.LBB18:
	.loc 1 753 0 is_stmt 1
	movq	regs_live_at_setjmp(%rip), %rax	# regs_live_at_setjmp, regs_live_at_setjmp.43
	movq	(%rax), %rax	# regs_live_at_setjmp.43_117->first, tmp203
	movq	%rax, -112(%rbp)	# tmp203, ptr_
	movl	$0, -140(%rbp)	#, indx_
	movl	$53, -156(%rbp)	#, bit_num_
	movl	$0, -152(%rbp)	#, word_num_
	jmp	.L94	#
.L96:
	.loc 1 753 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# ptr_, tmp204
	movq	(%rax), %rax	# ptr__23->next, tmp205
	movq	%rax, -112(%rbp)	# tmp205, ptr_
.L94:
	cmpq	$0, -112(%rbp)	#, ptr_
	je	.L95	#,
	.loc 1 753 0 discriminator 2
	movq	-112(%rbp), %rax	# ptr_, tmp206
	movl	16(%rax), %eax	# ptr__23->indx, D.17375
	cmpl	-140(%rbp), %eax	# indx_, D.17375
	jb	.L96	#,
.L95:
	.loc 1 753 0 discriminator 3
	cmpq	$0, -112(%rbp)	#, ptr_
	je	.L97	#,
	.loc 1 753 0 discriminator 1
	movq	-112(%rbp), %rax	# ptr_, tmp207
	movl	16(%rax), %eax	# ptr__23->indx, D.17375
	cmpl	-140(%rbp), %eax	# indx_, D.17375
	je	.L97	#,
	movl	$0, -156(%rbp)	#, bit_num_
	movl	$0, -152(%rbp)	#, word_num_
	jmp	.L98	#
.L97:
	.loc 1 753 0 discriminator 2
	jmp	.L98	#
.L106:
	.loc 1 753 0
	jmp	.L99	#
.L105:
.LBB19:
	.loc 1 753 0 discriminator 2
	movq	-112(%rbp), %rax	# ptr_, tmp208
	movl	-152(%rbp), %edx	# word_num_, tmp209
	addq	$2, %rdx	#, tmp210
	movq	8(%rax,%rdx,8), %rax	# ptr__24->bits, tmp211
	movq	%rax, -104(%rbp)	# tmp211, word_
	cmpq	$0, -104(%rbp)	#, word_
	je	.L100	#,
	.loc 1 753 0 discriminator 1
	jmp	.L101	#
.L104:
.LBB20:
	.loc 1 753 0 discriminator 2
	movl	-156(%rbp), %eax	# bit_num_, bit_num_.44
	movl	$1, %edx	#, tmp212
	movl	%eax, %ecx	# bit_num_.44, tmp238
	salq	%cl, %rdx	# tmp238, tmp213
	movq	%rdx, %rax	# tmp213, tmp213
	movq	%rax, -40(%rbp)	# tmp213, mask_
	movq	-40(%rbp), %rax	# mask_, tmp214
	movq	-104(%rbp), %rdx	# word_, tmp215
	andq	%rdx, %rax	# tmp215, D.17373
	testq	%rax, %rax	# D.17373
	je	.L102	#,
	.loc 1 753 0 discriminator 1
	movq	-40(%rbp), %rax	# mask_, tmp216
	notq	%rax	# D.17373
	andq	%rax, -104(%rbp)	# D.17373, word_
	movq	-112(%rbp), %rax	# ptr_, tmp217
	movl	16(%rax), %eax	# ptr__24->indx, D.17375
	leal	(%rax,%rax), %edx	#, D.17375
	movl	-152(%rbp), %eax	# word_num_, tmp218
	addl	%edx, %eax	# D.17375, D.17375
	sall	$6, %eax	#, D.17375
	movl	%eax, %edx	# D.17375, D.17375
	movl	-156(%rbp), %eax	# bit_num_, tmp219
	addl	%edx, %eax	# D.17375, D.17375
	movl	%eax, -184(%rbp)	# D.17375, i
	movq	cfun(%rip), %rax	# cfun, cfun.45
	movq	24(%rax), %rax	# cfun.45_139->emit, D.17377
	movq	80(%rax), %rax	# _140->x_regno_reg_rtx, D.17378
	movl	-184(%rbp), %edx	# i, tmp220
	movslq	%edx, %rdx	# tmp220, D.17373
	salq	$3, %rdx	#, D.17373
	addq	%rdx, %rax	# D.17373, D.17378
	movq	(%rax), %rax	# *_144, D.17379
	testq	%rax, %rax	# D.17379
	je	.L103	#,
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.46
	movl	-184(%rbp), %edx	# i, tmp222
	movslq	%edx, %rdx	# tmp222, tmp221
	addq	$4, %rdx	#, tmp223
	movq	(%rax,%rdx,8), %rax	# reg_n_info.46_146->data.reg, D.17376
	movl	$-1, 28(%rax)	#, _147->live_length
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.47
	movl	-184(%rbp), %edx	# i, tmp225
	movslq	%edx, %rdx	# tmp225, tmp224
	addq	$4, %rdx	#, tmp226
	movq	(%rax,%rdx,8), %rax	# reg_n_info.47_148->data.reg, D.17376
	movl	$-1, 36(%rax)	#, _149->basic_block
.L103:
	.loc 1 753 0 discriminator 2
	cmpq	$0, -104(%rbp)	#, word_
	jne	.L102	#,
	.loc 1 753 0 discriminator 1
	jmp	.L100	#
.L102:
.LBE20:
	.loc 1 753 0 discriminator 2
	addl	$1, -156(%rbp)	#, bit_num_
.L101:
	.loc 1 753 0 discriminator 1
	cmpl	$63, -156(%rbp)	#, bit_num_
	jbe	.L104	#,
.L100:
	.loc 1 753 0 discriminator 2
	movl	$0, -156(%rbp)	#, bit_num_
.LBE19:
	addl	$1, -152(%rbp)	#, word_num_
.L99:
	.loc 1 753 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, word_num_
	jbe	.L105	#,
	.loc 1 753 0 discriminator 3
	movl	$0, -152(%rbp)	#, word_num_
	movq	-112(%rbp), %rax	# ptr_, tmp227
	movq	(%rax), %rax	# ptr__24->next, tmp228
	movq	%rax, -112(%rbp)	# tmp228, ptr_
.L98:
	.loc 1 753 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, ptr_
	jne	.L106	#,
.L81:
.LBE18:
	.loc 1 763 0 is_stmt 1
	cmpl	$0, -204(%rbp)	#, extent
	je	.L107	#,
	.loc 1 763 0 is_stmt 0 discriminator 2
	cmpq	$0, -200(%rbp)	#, blocks
	je	.L108	#,
.L107:
	.loc 1 763 0 discriminator 1
	movl	$6, %eax	#, iftmp.48
	jmp	.L109	#
.L108:
	movl	$5, %eax	#, iftmp.48
.L109:
	.loc 1 763 0 discriminator 3
	movl	%eax, %edi	# iftmp.48,
	call	timevar_pop	#
	.loc 1 765 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	update_life_info, .-update_life_info
	.globl	free_basic_block_vars
	.type	free_basic_block_vars, @function
free_basic_block_vars:
.LFB9:
	.loc 1 774 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# keep_head_end_p, keep_head_end_p
	.loc 1 775 0
	cmpl	$0, -4(%rbp)	#, keep_head_end_p
	jne	.L110	#,
	.loc 1 777 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.49
	testq	%rax, %rax	# basic_block_info.49
	je	.L112	#,
	.loc 1 779 0
	call	clear_edges	#
	.loc 1 780 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.50
	testq	%rax, %rax	# basic_block_info.50
	je	.L112	#,
	.loc 1 780 0 is_stmt 0 discriminator 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.51
	movq	%rax, %rdi	# basic_block_info.51,
	call	free	#
	movq	$0, basic_block_info(%rip)	#, basic_block_info
.L112:
	.loc 1 782 0 is_stmt 1
	movl	$0, n_basic_blocks(%rip)	#, n_basic_blocks
	.loc 1 784 0
	movq	$0, entry_exit_blocks+80(%rip)	#, entry_exit_blocks[0].aux
	.loc 1 785 0
	movq	$0, entry_exit_blocks+72(%rip)	#, entry_exit_blocks[0].global_live_at_end
	.loc 1 786 0
	movq	$0, entry_exit_blocks+192(%rip)	#, entry_exit_blocks[1].aux
	.loc 1 787 0
	movq	$0, entry_exit_blocks+176(%rip)	#, entry_exit_blocks[1].global_live_at_start
.L110:
	.loc 1 789 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_basic_block_vars, .-free_basic_block_vars
	.globl	delete_noop_moves
	.type	delete_noop_moves, @function
delete_noop_moves:
.LFB10:
	.loc 1 796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# f, f
	.loc 1 801 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L114	#
.L119:
	.loc 1 803 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.52
	movl	-52(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# basic_block_info.52_5->data.bb, tmp75
	movq	%rax, -40(%rbp)	# tmp75, bb
	.loc 1 804 0
	movq	-40(%rbp), %rax	# bb, tmp76
	movq	(%rax), %rax	# bb_6->head, tmp77
	movq	%rax, -48(%rbp)	# tmp77, insn
	jmp	.L115	#
.L118:
	.loc 1 806 0
	movq	-48(%rbp), %rax	# insn, tmp78
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp79
	movq	%rax, -32(%rbp)	# tmp79, next
	.loc 1 807 0
	movq	-48(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_2->code, D.17381
	movzwl	%ax, %eax	# D.17381, D.17382
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17383
	cmpb	$105, %al	#, D.17383
	jne	.L116	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# insn, tmp82
	movq	%rax, %rdi	# tmp82,
	call	noop_move_p	#
	testl	%eax, %eax	# D.17382
	je	.L116	#,
.LBB21:
	.loc 1 814 0 is_stmt 1
	movq	-48(%rbp), %rax	# insn, tmp83
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	find_reg_note	#
	movq	%rax, -24(%rbp)	# tmp84, note
	cmpq	$0, -24(%rbp)	#, note
	je	.L117	#,
	.loc 1 815 0
	movq	-24(%rbp), %rax	# note, tmp85
	movq	8(%rax), %rax	# note_15->fld[0].rtx, D.17380
	cmpq	-48(%rbp), %rax	# insn, D.17380
	je	.L117	#,
.LBB22:
	.loc 1 817 0
	movq	-48(%rbp), %rax	# insn, tmp86
	movq	%rax, %rdi	# tmp86,
	call	next_real_insn	#
	movq	%rax, -16(%rbp)	# tmp87, new_libcall_insn
	.loc 1 818 0
	movq	-24(%rbp), %rax	# note, tmp88
	movq	8(%rax), %rax	# note_15->fld[0].rtx, D.17380
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.17380,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp89, retval_note
	.loc 1 821 0
	movq	-16(%rbp), %rax	# new_libcall_insn, tmp90
	movq	56(%rax), %rdx	# new_libcall_insn_17->fld[6].rtx, D.17380
	movq	-24(%rbp), %rax	# note, tmp91
	movq	8(%rax), %rax	# note_15->fld[0].rtx, D.17380
	movq	%rdx, %rcx	# D.17380,
	movq	%rax, %rdx	# D.17380,
	movl	$7, %esi	#,
	movl	$4, %edi	#,
	call	gen_rtx_fmt_ue	#
	movq	-16(%rbp), %rdx	# new_libcall_insn, tmp92
	movq	%rax, 56(%rdx)	# D.17380, new_libcall_insn_17->fld[6].rtx
	.loc 1 823 0
	movq	-8(%rbp), %rax	# retval_note, tmp93
	movq	-16(%rbp), %rdx	# new_libcall_insn, tmp94
	movq	%rdx, 8(%rax)	# tmp94, retval_note_19->fld[0].rtx
.L117:
.LBE22:
	.loc 1 828 0
	movq	-48(%rbp), %rax	# insn, tmp95
	movw	$37, (%rax)	#, insn_2->code
	.loc 1 829 0
	movq	-48(%rbp), %rax	# insn, tmp96
	movl	$-99, 40(%rax)	#, insn_2->fld[4].rtint
	.loc 1 830 0
	movq	-48(%rbp), %rax	# insn, tmp97
	movq	$0, 32(%rax)	#, insn_2->fld[3].rtstr
.L116:
.LBE21:
	.loc 1 804 0
	movq	-32(%rbp), %rax	# next, tmp98
	movq	%rax, -48(%rbp)	# tmp98, insn
.L115:
	.loc 1 804 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bb, tmp99
	movq	8(%rax), %rax	# bb_6->end, D.17380
	movq	24(%rax), %rax	# _8->fld[2].rtx, D.17380
	cmpq	-48(%rbp), %rax	# insn, D.17380
	jne	.L118	#,
	.loc 1 801 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L114:
	.loc 1 801 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.53
	cmpl	%eax, -52(%rbp)	# n_basic_blocks.53, i
	jl	.L119	#,
	.loc 1 834 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	delete_noop_moves, .-delete_noop_moves
	.section	.rodata
.LC7:
	.string	"Dead jumptable %i removed\n"
	.text
	.type	delete_dead_jumptables, @function
delete_dead_jumptables:
.LFB11:
	.loc 1 842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 844 0
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp72, insn
	jmp	.L121	#
.L125:
	.loc 1 846 0
	movq	-16(%rbp), %rax	# insn, tmp73
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, next
	.loc 1 847 0
	movq	-16(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_1->code, D.17384
	cmpw	$36, %ax	#, D.17384
	jne	.L122	#,
	.loc 1 848 0
	movq	-16(%rbp), %rax	# insn, tmp76
	movl	32(%rax), %edx	# insn_1->fld[3].rtint, D.17385
	movq	-16(%rbp), %rax	# insn, tmp77
	movzbl	3(%rax), %eax	# *insn_1, tmp80
	shrb	$4, %al	#, D.17386
	andl	$1, %eax	#, D.17386
	movzbl	%al, %eax	# D.17386, D.17385
	cmpl	%eax, %edx	# D.17385, D.17385
	jne	.L122	#,
	.loc 1 849 0
	movq	-8(%rbp), %rax	# next, tmp81
	movzwl	(%rax), %eax	# next_4->code, D.17384
	cmpw	$33, %ax	#, D.17384
	jne	.L122	#,
	.loc 1 850 0
	movq	-8(%rbp), %rax	# next, tmp82
	movq	32(%rax), %rax	# next_4->fld[3].rtx, D.17387
	movzwl	(%rax), %eax	# _10->code, D.17384
	cmpw	$44, %ax	#, D.17384
	je	.L123	#,
	.loc 1 851 0
	movq	-8(%rbp), %rax	# next, tmp83
	movq	32(%rax), %rax	# next_4->fld[3].rtx, D.17387
	movzwl	(%rax), %eax	# _12->code, D.17384
	cmpw	$45, %ax	#, D.17384
	jne	.L122	#,
.L123:
	.loc 1 853 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.54
	testq	%rax, %rax	# rtl_dump_file.54
	je	.L124	#,
	.loc 1 854 0
	movq	-16(%rbp), %rax	# insn, tmp84
	movl	8(%rax), %edx	# insn_1->fld[0].rtint, D.17385
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.55
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.55,
	movl	$0, %eax	#,
	call	fprintf	#
.L124:
	.loc 1 855 0
	movq	-16(%rbp), %rax	# insn, tmp85
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, D.17387
	movq	%rax, %rdi	# D.17387,
	call	delete_insn	#
	.loc 1 856 0
	movq	-16(%rbp), %rax	# insn, tmp86
	movq	%rax, %rdi	# tmp86,
	call	delete_insn	#
	.loc 1 857 0
	movq	-8(%rbp), %rax	# next, tmp87
	movq	24(%rax), %rax	# next_4->fld[2].rtx, tmp88
	movq	%rax, -8(%rbp)	# tmp88, next
.L122:
	.loc 1 844 0
	movq	-8(%rbp), %rax	# next, tmp89
	movq	%rax, -16(%rbp)	# tmp89, insn
.L121:
	.loc 1 844 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	jne	.L125	#,
	.loc 1 860 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	delete_dead_jumptables, .-delete_dead_jumptables
	.type	notice_stack_pointer_modification_1, @function
notice_stack_pointer_modification_1:
.LFB12:
	.loc 1 870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# pat, pat
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 871 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17389
	cmpq	-8(%rbp), %rax	# x, D.17389
	je	.L127	#,
	.loc 1 875 0
	movq	-8(%rbp), %rax	# x, tmp68
	movzwl	(%rax), %eax	# x_2(D)->code, D.17390
	cmpw	$66, %ax	#, D.17390
	jne	.L126	#,
	.loc 1 876 0
	movq	-8(%rbp), %rax	# x, tmp69
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.17389
	movzwl	(%rax), %eax	# _4->code, D.17390
	movzwl	%ax, %eax	# D.17390, D.17391
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17392
	cmpb	$97, %al	#, D.17392
	jne	.L126	#,
	.loc 1 877 0
	movq	-8(%rbp), %rax	# x, tmp71
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, D.17389
	movq	8(%rax), %rdx	# _8->fld[0].rtx, D.17389
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17389
	cmpq	%rax, %rdx	# D.17389, D.17389
	jne	.L126	#,
.L127:
	.loc 1 878 0
	movl	$0, current_function_sp_is_unchanging(%rip)	#, current_function_sp_is_unchanging
.L126:
	.loc 1 879 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	notice_stack_pointer_modification_1, .-notice_stack_pointer_modification_1
	.type	notice_stack_pointer_modification, @function
notice_stack_pointer_modification:
.LFB13:
	.loc 1 884 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 889 0
	movq	cfun(%rip), %rax	# cfun, cfun.56
	movzbl	424(%rax), %eax	# *cfun.56_2, D.17393
	andl	$64, %eax	#, D.17393
	testb	%al, %al	# D.17393
	sete	%al	#, D.17394
	movzbl	%al, %eax	# D.17394, current_function_sp_is_unchanging.57
	movl	%eax, current_function_sp_is_unchanging(%rip)	# current_function_sp_is_unchanging.57, current_function_sp_is_unchanging
	.loc 1 890 0
	movl	current_function_sp_is_unchanging(%rip), %eax	# current_function_sp_is_unchanging, current_function_sp_is_unchanging.58
	testl	%eax, %eax	# current_function_sp_is_unchanging.58
	jne	.L130	#,
	.loc 1 891 0
	jmp	.L129	#
.L130:
	.loc 1 893 0
	movq	-24(%rbp), %rax	# f, tmp70
	movq	%rax, -8(%rbp)	# tmp70, insn
	jmp	.L132	#
.L134:
	.loc 1 895 0
	movq	-8(%rbp), %rax	# insn, tmp71
	movzwl	(%rax), %eax	# insn_1->code, D.17395
	movzwl	%ax, %eax	# D.17395, D.17396
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17397
	cmpb	$105, %al	#, D.17397
	jne	.L133	#,
	.loc 1 898 0
	movq	-8(%rbp), %rax	# insn, tmp73
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17398
	movl	$0, %edx	#,
	movl	$notice_stack_pointer_modification_1, %esi	#,
	movq	%rax, %rdi	# D.17398,
	call	note_stores	#
	.loc 1 900 0
	movl	current_function_sp_is_unchanging(%rip), %eax	# current_function_sp_is_unchanging, current_function_sp_is_unchanging.59
	testl	%eax, %eax	# current_function_sp_is_unchanging.59
	jne	.L133	#,
	.loc 1 901 0
	jmp	.L129	#
.L133:
	.loc 1 893 0
	movq	-8(%rbp), %rax	# insn, tmp74
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, insn
.L132:
	.loc 1 893 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L134	#,
.L129:
	.loc 1 904 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	notice_stack_pointer_modification, .-notice_stack_pointer_modification
	.type	mark_reg, @function
mark_reg:
.LFB14:
	.loc 1 913 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# reg, reg
	movq	%rsi, -32(%rbp)	# xset, xset
	.loc 1 914 0
	movq	-32(%rbp), %rax	# xset, tmp92
	movq	%rax, -8(%rbp)	# tmp92, set
	.loc 1 915 0
	movq	-24(%rbp), %rax	# reg, tmp93
	movl	8(%rax), %eax	# reg_12(D)->fld[0].rtuint, D.17399
	movl	%eax, -12(%rbp)	# D.17399, regno
	.loc 1 917 0
	movq	-24(%rbp), %rax	# reg, tmp94
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	cmpb	$51, %al	#, D.17400
	jne	.L136	#,
	.loc 1 918 0
	movl	$__FUNCTION__.13701, %edx	#,
	movl	$918, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L136:
	.loc 1 920 0
	movl	-12(%rbp), %edx	# regno, tmp95
	movq	-8(%rbp), %rax	# set, tmp96
	movl	%edx, %esi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	bitmap_set_bit	#
	.loc 1 921 0
	cmpl	$52, -12(%rbp)	#, regno
	jg	.L135	#,
.LBB23:
	.loc 1 923 0
	cmpl	$7, -12(%rbp)	#, regno
	jle	.L138	#,
	.loc 1 923 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, regno
	jle	.L139	#,
.L138:
	.loc 1 923 0 discriminator 2
	cmpl	$20, -12(%rbp)	#, regno
	jle	.L140	#,
	.loc 1 923 0 discriminator 1
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L139	#,
.L140:
	.loc 1 923 0 discriminator 2
	cmpl	$44, -12(%rbp)	#, regno
	jle	.L141	#,
	.loc 1 923 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, regno
	jle	.L139	#,
.L141:
	.loc 1 923 0 discriminator 2
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L142	#,
	.loc 1 923 0 discriminator 1
	cmpl	$36, -12(%rbp)	#, regno
	jg	.L142	#,
.L139:
	movq	-24(%rbp), %rax	# reg, tmp97
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	movzbl	%al, %eax	# D.17400, D.17401
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17402
	cmpl	$5, %eax	#, D.17402
	je	.L143	#,
	.loc 1 923 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp99
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	movzbl	%al, %eax	# D.17400, D.17401
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17402
	cmpl	$6, %eax	#, D.17402
	jne	.L144	#,
.L143:
	.loc 1 923 0 discriminator 1
	movl	$2, %eax	#, iftmp.61
	jmp	.L145	#
.L144:
	movl	$1, %eax	#, iftmp.61
.L145:
	.loc 1 923 0 discriminator 3
	jmp	.L146	#
.L142:
	.loc 1 923 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp101
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	cmpb	$18, %al	#, D.17400
	jne	.L147	#,
	.loc 1 923 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.64
	andl	$33554432, %eax	#, D.17401
	testl	%eax, %eax	# D.17401
	je	.L148	#,
	movl	$2, %eax	#, iftmp.63
	jmp	.L146	#
.L148:
	.loc 1 923 0 discriminator 2
	movl	$3, %eax	#, iftmp.63
	jmp	.L146	#
.L147:
	movq	-24(%rbp), %rax	# reg, tmp102
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	cmpb	$24, %al	#, D.17400
	jne	.L151	#,
	.loc 1 923 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.67
	andl	$33554432, %eax	#, D.17401
	testl	%eax, %eax	# D.17401
	je	.L152	#,
	movl	$4, %eax	#, iftmp.66
	jmp	.L146	#
.L152:
	.loc 1 923 0 discriminator 2
	movl	$6, %eax	#, iftmp.66
	jmp	.L146	#
.L151:
	movq	-24(%rbp), %rax	# reg, tmp103
	movzbl	2(%rax), %eax	# reg_12(D)->mode, D.17400
	movzbl	%al, %eax	# D.17400, D.17401
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17400
	movzbl	%al, %edx	# D.17400, D.17401
	movl	target_flags(%rip), %eax	# target_flags, target_flags.69
	andl	$33554432, %eax	#, D.17401
	testl	%eax, %eax	# D.17401
	je	.L155	#,
	.loc 1 923 0 discriminator 1
	movl	$8, %eax	#, iftmp.68
	jmp	.L156	#
.L155:
	.loc 1 923 0 discriminator 2
	movl	$4, %eax	#, iftmp.68
.L156:
	.loc 1 923 0 discriminator 3
	addl	%edx, %eax	# D.17401, D.17401
	subl	$1, %eax	#, D.17401
	movl	target_flags(%rip), %edx	# target_flags, target_flags.71
	andl	$33554432, %edx	#, D.17401
	testl	%edx, %edx	# D.17401
	je	.L157	#,
	.loc 1 923 0 discriminator 1
	movl	$8, %ecx	#, iftmp.70
	jmp	.L158	#
.L157:
	.loc 1 923 0 discriminator 2
	movl	$4, %ecx	#, iftmp.70
.L158:
	.loc 1 923 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.70
.L146:
	movl	%eax, -16(%rbp)	# iftmp.60, n
	.loc 1 924 0 is_stmt 1 discriminator 3
	jmp	.L159	#
.L160:
	.loc 1 925 0
	movl	-16(%rbp), %eax	# n, tmp107
	movl	-12(%rbp), %edx	# regno, tmp108
	addl	%eax, %edx	# tmp107, D.17401
	movq	-8(%rbp), %rax	# set, tmp109
	movl	%edx, %esi	# D.17401,
	movq	%rax, %rdi	# tmp109,
	call	bitmap_set_bit	#
.L159:
	.loc 1 924 0 discriminator 1
	subl	$1, -16(%rbp)	#, n
	cmpl	$0, -16(%rbp)	#, n
	jg	.L160	#,
.L135:
.LBE23:
	.loc 1 927 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	mark_reg, .-mark_reg
	.type	mark_regs_live_at_end, @function
mark_regs_live_at_end:
.LFB15:
	.loc 1 935 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# set, set
	.loc 1 941 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.72
	.loc 1 940 0
	testl	%eax, %eax	# reload_completed.72
	jne	.L162	#,
	.loc 1 942 0
	call	ix86_frame_pointer_required	#
	testl	%eax, %eax	# D.17403
	jne	.L163	#,
	.loc 1 943 0
	movq	cfun(%rip), %rax	# cfun, cfun.73
	movzbl	424(%rax), %eax	# *cfun.73_10, D.17404
	andl	$64, %eax	#, D.17404
	testb	%al, %al	# D.17404
	jne	.L163	#,
	.loc 1 944 0
	movl	flag_omit_frame_pointer(%rip), %eax	# flag_omit_frame_pointer, flag_omit_frame_pointer.74
	testl	%eax, %eax	# flag_omit_frame_pointer.74
	jne	.L162	#,
.L163:
	.loc 1 945 0
	movl	current_function_sp_is_unchanging(%rip), %eax	# current_function_sp_is_unchanging, current_function_sp_is_unchanging.75
	testl	%eax, %eax	# current_function_sp_is_unchanging.75
	je	.L164	#,
.L162:
	.loc 1 947 0
	movq	-24(%rbp), %rax	# set, tmp103
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	bitmap_set_bit	#
.L164:
	.loc 1 954 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.76
	testl	%eax, %eax	# reload_completed.76
	je	.L165	#,
	.loc 1 954 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.77
	testl	%eax, %eax	# frame_pointer_needed.77
	je	.L166	#,
.L165:
	.loc 1 956 0 is_stmt 1
	movq	-24(%rbp), %rax	# set, tmp104
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	bitmap_set_bit	#
	.loc 1 960 0
	movq	-24(%rbp), %rax	# set, tmp105
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	bitmap_set_bit	#
.L166:
	.loc 1 968 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.17403
	testl	%eax, %eax	# D.17403
	jne	.L167	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.79
	testl	%eax, %eax	# flag_pic.79
	je	.L167	#,
	.loc 1 969 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.81
	andl	$33554432, %eax	#, D.17403
	testl	%eax, %eax	# D.17403
	jne	.L168	#,
	.loc 1 969 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.82
	testl	%eax, %eax	# flag_pic.82
	jne	.L169	#,
.L168:
	.loc 1 969 0 discriminator 1
	movl	$-1, %eax	#, iftmp.80
	jmp	.L170	#
.L169:
	movl	$3, %eax	#, iftmp.80
.L170:
	.loc 1 969 0 discriminator 3
	movl	%eax, %eax	# iftmp.80, tmp106
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17405
	testb	%al, %al	# D.17405
	je	.L167	#,
	.loc 1 970 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.84
	andl	$33554432, %eax	#, D.17403
	testl	%eax, %eax	# D.17403
	jne	.L171	#,
	.loc 1 970 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.85
	testl	%eax, %eax	# flag_pic.85
	jne	.L172	#,
.L171:
	.loc 1 970 0 discriminator 1
	movl	$-1, %eax	#, iftmp.83
	jmp	.L173	#
.L172:
	movl	$3, %eax	#, iftmp.83
.L173:
	.loc 1 970 0 discriminator 3
	movq	-24(%rbp), %rdx	# set, tmp107
	movl	%eax, %esi	# iftmp.83,
	movq	%rdx, %rdi	# tmp107,
	call	bitmap_set_bit	#
.L167:
	.loc 1 976 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L174	#
.L176:
	.loc 1 977 0
	movl	-16(%rbp), %eax	# i, tmp108
	movzbl	global_regs(%rax), %eax	# global_regs, D.17405
	testb	%al, %al	# D.17405
	je	.L175	#,
	.loc 1 978 0
	movl	-16(%rbp), %edx	# i, i.86
	movq	-24(%rbp), %rax	# set, tmp109
	movl	%edx, %esi	# i.86,
	movq	%rax, %rdi	# tmp109,
	call	bitmap_set_bit	#
.L175:
	.loc 1 976 0
	addl	$1, -16(%rbp)	#, i
.L174:
	.loc 1 976 0 is_stmt 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, i
	jbe	.L176	#,
	.loc 1 980 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.87
	testl	%eax, %eax	# reload_completed.87
	je	.L177	#,
	.loc 1 983 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L178	#
.L180:
	.loc 1 984 0
	movl	-16(%rbp), %eax	# i, tmp110
	movzbl	regs_ever_live(%rax), %eax	# regs_ever_live, D.17405
	testb	%al, %al	# D.17405
	je	.L179	#,
	.loc 1 985 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.88
	movl	-16(%rbp), %eax	# i, i.89
	movl	%eax, %ecx	# i.89, tmp119
	shrq	%cl, %rdx	# tmp119, D.17406
	movq	%rdx, %rax	# D.17406, D.17406
	andl	$1, %eax	#, D.17406
	testq	%rax, %rax	# D.17406
	jne	.L179	#,
	.loc 1 986 0
	movl	-16(%rbp), %edx	# i, i.90
	movq	-24(%rbp), %rax	# set, tmp111
	movl	%edx, %esi	# i.90,
	movq	%rax, %rdi	# tmp111,
	call	bitmap_set_bit	#
.L179:
	.loc 1 983 0
	addl	$1, -16(%rbp)	#, i
.L178:
	.loc 1 983 0 is_stmt 0 discriminator 1
	cmpl	$52, -16(%rbp)	#, i
	jbe	.L180	#,
.L177:
	.loc 1 991 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.91
	testl	%eax, %eax	# reload_completed.91
	je	.L181	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.92
	movzbl	424(%rax), %eax	# *cfun.92_46, D.17404
	andl	$-128, %eax	#, D.17404
	testb	%al, %al	# D.17404
	je	.L181	#,
	.loc 1 992 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
.L185:
.LBB24:
	.loc 1 994 0
	cmpl	$1, -16(%rbp)	#, i
	ja	.L182	#,
	.loc 1 994 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, iftmp.93
	jmp	.L183	#
.L182:
	.loc 1 994 0 discriminator 2
	movl	$-1, %eax	#, iftmp.93
.L183:
	.loc 1 994 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.93, regno
	.loc 1 995 0 is_stmt 1 discriminator 3
	cmpl	$-1, -12(%rbp)	#, regno
	jne	.L184	#,
	.loc 1 996 0
	jmp	.L181	#
.L184:
	.loc 1 997 0
	movl	-12(%rbp), %edx	# regno, regno.94
	movq	-24(%rbp), %rax	# set, tmp112
	movl	%edx, %esi	# regno.94,
	movq	%rax, %rdi	# tmp112,
	call	bitmap_set_bit	#
.LBE24:
	.loc 1 992 0
	addl	$1, -16(%rbp)	#, i
	.loc 1 998 0
	jmp	.L185	#
.L181:
	.loc 1 1001 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.95
	testl	%eax, %eax	# reload_completed.95
	jne	.L186	#,
	.loc 1 1002 0
	movq	cfun(%rip), %rax	# cfun, cfun.96
	movzbl	424(%rax), %eax	# *cfun.96_56, D.17404
	andl	$-128, %eax	#, D.17404
	testb	%al, %al	# D.17404
	je	.L186	#,
.LBB25:
	.loc 1 1004 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.98
	andl	$33554432, %eax	#, D.17403
	testl	%eax, %eax	# D.17403
	je	.L187	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.97
	jmp	.L188	#
.L187:
	.loc 1 1004 0 discriminator 2
	movl	$4, %eax	#, iftmp.97
.L188:
	.loc 1 1004 0 discriminator 3
	movl	$2, %esi	#,
	movl	%eax, %edi	# iftmp.97,
	call	gen_rtx_REG	#
	movq	%rax, -8(%rbp)	# tmp113, tmp
	.loc 1 1005 0 is_stmt 1 discriminator 3
	cmpq	$0, -8(%rbp)	#, tmp
	je	.L186	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tmp, tmp114
	movzwl	(%rax), %eax	# tmp_63->code, D.17407
	cmpw	$61, %ax	#, D.17407
	jne	.L186	#,
	.loc 1 1006 0 is_stmt 1
	movq	-24(%rbp), %rdx	# set, tmp115
	movq	-8(%rbp), %rax	# tmp, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	mark_reg	#
.L186:
.LBE25:
	.loc 1 1020 0
	movq	-24(%rbp), %rax	# set, tmp117
	movq	%rax, %rsi	# tmp117,
	movl	$mark_reg, %edi	#,
	call	diddle_return_value	#
	.loc 1 1021 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	mark_regs_live_at_end, .-mark_regs_live_at_end
	.type	set_phi_alternative_reg, @function
set_phi_alternative_reg:
.LFB16:
	.loc 1 1033 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# dest_regno, dest_regno
	movl	%edx, -32(%rbp)	# src_regno, src_regno
	movq	%rcx, -40(%rbp)	# data, data
	.loc 1 1034 0
	movq	-40(%rbp), %rax	# data, tmp61
	movq	%rax, -8(%rbp)	# tmp61, live
	.loc 1 1035 0
	movl	-32(%rbp), %edx	# src_regno, tmp62
	movq	-8(%rbp), %rax	# live, tmp63
	movl	%edx, %esi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	bitmap_set_bit	#
	.loc 1 1036 0
	movl	$0, %eax	#, D.17408
	.loc 1 1037 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	set_phi_alternative_reg, .-set_phi_alternative_reg
	.type	calculate_global_regs_live, @function
calculate_global_regs_live:
.LFB17:
	.loc 1 1049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$416, %rsp	#,
	movq	%rdi, -392(%rbp)	# blocks_in, blocks_in
	movq	%rsi, -400(%rbp)	# blocks_out, blocks_out
	movl	%edx, -404(%rbp)	# flags, flags
	.loc 1 1056 0
	leaq	-96(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	bitmap_initialize	#
	movq	%rax, -288(%rbp)	# tmp220, tmp
	.loc 1 1057 0
	leaq	-32(%rbp), %rax	#, tmp221
	movq	%rax, %rdi	# tmp221,
	call	bitmap_initialize	#
	movq	%rax, -280(%rbp)	# tmp222, new_live_at_end
	.loc 1 1058 0
	leaq	-64(%rbp), %rax	#, tmp223
	movq	%rax, %rdi	# tmp223,
	call	bitmap_initialize	#
	movq	%rax, -272(%rbp)	# tmp224, call_used
	.loc 1 1061 0
	movl	$0, -372(%rbp)	#, i
	jmp	.L192	#
.L194:
	.loc 1 1062 0
	movl	-372(%rbp), %eax	# i, tmp226
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.17409
	testb	%al, %al	# D.17409
	je	.L193	#,
	.loc 1 1063 0
	movl	-372(%rbp), %edx	# i, tmp227
	movq	-272(%rbp), %rax	# call_used, tmp228
	movl	%edx, %esi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	bitmap_set_bit	#
.L193:
	.loc 1 1061 0
	addl	$1, -372(%rbp)	#, i
.L192:
	.loc 1 1061 0 is_stmt 0 discriminator 1
	cmpl	$52, -372(%rbp)	#, i
	jle	.L194	#,
	.loc 1 1068 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.99
	addl	$2, %eax	#, D.17410
	cltq
	salq	$3, %rax	#, D.17411
	movq	%rax, %rdi	# D.17411,
	call	xmalloc	#
	movq	%rax, -264(%rbp)	# tmp229, queue
	.loc 1 1069 0
	movq	-264(%rbp), %rax	# queue, tmp230
	movq	%rax, -320(%rbp)	# tmp230, qtail
	.loc 1 1070 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.100
	cltq
	addq	$2, %rax	#, D.17412
	leaq	0(,%rax,8), %rdx	#, D.17412
	movq	-264(%rbp), %rax	# queue, tmp234
	addq	%rdx, %rax	# D.17412, tmp233
	movq	%rax, -256(%rbp)	# tmp233, qend
	movq	-256(%rbp), %rax	# qend, tmp235
	movq	%rax, -328(%rbp)	# tmp235, qhead
	.loc 1 1075 0
	cmpq	$0, -392(%rbp)	#, blocks_in
	je	.L195	#,
	.loc 1 1078 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.101
	subl	$1, %eax	#, tmp236
	movl	%eax, -372(%rbp)	# tmp236, i
	jmp	.L196	#
.L197:
	.loc 1 1079 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.102
	movl	-372(%rbp), %edx	# i, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	addq	$4, %rdx	#, tmp239
	movq	(%rax,%rdx,8), %rax	# basic_block_info.102_56->data.bb, D.17413
	movq	$0, 80(%rax)	#, _57->aux
	.loc 1 1078 0 discriminator 2
	subl	$1, -372(%rbp)	#, i
.L196:
	.loc 1 1078 0 is_stmt 0 discriminator 1
	cmpl	$0, -372(%rbp)	#, i
	jns	.L197	#,
.LBB26:
	.loc 1 1081 0 is_stmt 1
	movl	$0, -364(%rbp)	#, bit_num_
	movq	-392(%rbp), %rax	# blocks_in, tmp240
	movl	4(%rax), %eax	# blocks_in_53(D)->size, tmp241
	movl	%eax, -348(%rbp)	# tmp241, size_
	movq	-392(%rbp), %rax	# blocks_in, tmp245
	addq	$16, %rax	#, tmp244
	movq	%rax, -248(%rbp)	# tmp244, ptr_
	movl	$0, -368(%rbp)	#, word_num_
	jmp	.L198	#
.L203:
.LBB27:
	.loc 1 1081 0 is_stmt 0 discriminator 2
	movl	-368(%rbp), %eax	# word_num_, D.17411
	leaq	0(,%rax,8), %rdx	#, D.17411
	movq	-248(%rbp), %rax	# ptr_, tmp246
	addq	%rdx, %rax	# D.17411, D.17414
	movq	(%rax), %rax	# *_65, tmp247
	movq	%rax, -312(%rbp)	# tmp247, word_
	cmpq	$0, -312(%rbp)	#, word_
	je	.L199	#,
	.loc 1 1081 0 discriminator 1
	jmp	.L200	#
.L202:
.LBB28:
	.loc 1 1081 0 discriminator 2
	movl	-364(%rbp), %eax	# bit_num_, bit_num_.103
	movl	$1, %edx	#, tmp248
	movl	%eax, %ecx	# bit_num_.103, tmp473
	salq	%cl, %rdx	# tmp473, tmp249
	movq	%rdx, %rax	# tmp249, tmp249
	movq	%rax, -240(%rbp)	# tmp249, _mask
	movq	-240(%rbp), %rax	# _mask, tmp250
	movq	-312(%rbp), %rdx	# word_, tmp251
	andq	%rdx, %rax	# tmp251, D.17411
	testq	%rax, %rax	# D.17411
	je	.L201	#,
	.loc 1 1081 0 discriminator 1
	movq	-240(%rbp), %rax	# _mask, tmp252
	notq	%rax	# D.17411
	andq	%rax, -312(%rbp)	# D.17411, word_
	movl	-368(%rbp), %eax	# word_num_, tmp253
	sall	$6, %eax	#, D.17415
	movl	%eax, %edx	# D.17415, D.17415
	movl	-364(%rbp), %eax	# bit_num_, tmp254
	addl	%edx, %eax	# D.17415, D.17415
	movl	%eax, -372(%rbp)	# D.17415, i
.LBB29:
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.104
	movl	-372(%rbp), %edx	# i, tmp256
	movslq	%edx, %rdx	# tmp256, tmp255
	addq	$4, %rdx	#, tmp257
	movq	(%rax,%rdx,8), %rax	# basic_block_info.104_75->data.bb, tmp258
	movq	%rax, -232(%rbp)	# tmp258, bb
	subq	$8, -328(%rbp)	#, qhead
	movq	-328(%rbp), %rax	# qhead, tmp259
	movq	-232(%rbp), %rdx	# bb, tmp260
	movq	%rdx, (%rax)	# tmp260, *qhead_77
	movq	-232(%rbp), %rax	# bb, tmp261
	movq	-232(%rbp), %rdx	# bb, tmp262
	movq	%rdx, 80(%rax)	# tmp262, bb_76->aux
.LBE29:
	cmpq	$0, -312(%rbp)	#, word_
	jne	.L201	#,
	jmp	.L199	#
.L201:
.LBE28:
	.loc 1 1081 0 discriminator 2
	addl	$1, -364(%rbp)	#, bit_num_
.L200:
	.loc 1 1081 0 discriminator 1
	cmpl	$63, -364(%rbp)	#, bit_num_
	jbe	.L202	#,
.L199:
.LBE27:
	.loc 1 1081 0 discriminator 2
	addl	$1, -368(%rbp)	#, word_num_
	movl	$0, -364(%rbp)	#, bit_num_
.L198:
	.loc 1 1081 0 discriminator 1
	movl	-368(%rbp), %eax	# word_num_, tmp263
	cmpl	-348(%rbp), %eax	# size_, tmp263
	jb	.L203	#,
.LBE26:
	jmp	.L204	#
.L195:
	.loc 1 1090 0 is_stmt 1
	movl	$0, -372(%rbp)	#, i
	jmp	.L205	#
.L206:
.LBB30:
	.loc 1 1092 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.105
	movl	-372(%rbp), %edx	# i, tmp265
	movslq	%edx, %rdx	# tmp265, tmp264
	addq	$4, %rdx	#, tmp266
	movq	(%rax,%rdx,8), %rax	# basic_block_info.105_83->data.bb, tmp267
	movq	%rax, -224(%rbp)	# tmp267, bb
	.loc 1 1093 0 discriminator 2
	subq	$8, -328(%rbp)	#, qhead
	movq	-328(%rbp), %rax	# qhead, tmp268
	movq	-224(%rbp), %rdx	# bb, tmp269
	movq	%rdx, (%rax)	# tmp269, *qhead_85
	.loc 1 1094 0 discriminator 2
	movq	-224(%rbp), %rax	# bb, tmp270
	movq	-224(%rbp), %rdx	# bb, tmp271
	movq	%rdx, 80(%rax)	# tmp271, bb_84->aux
.LBE30:
	.loc 1 1090 0 discriminator 2
	addl	$1, -372(%rbp)	#, i
.L205:
	.loc 1 1090 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.106
	cmpl	%eax, -372(%rbp)	# n_basic_blocks.106, i
	jl	.L206	#,
.L204:
	.loc 1 1101 0 is_stmt 1
	movq	$0, entry_exit_blocks+192(%rip)	#, entry_exit_blocks[1].aux
	movq	entry_exit_blocks+192(%rip), %rax	# entry_exit_blocks[1].aux, D.17416
	movq	%rax, entry_exit_blocks+80(%rip)	# D.17416, entry_exit_blocks[0].aux
	.loc 1 1103 0
	cmpq	$0, -400(%rbp)	#, blocks_out
	je	.L207	#,
	.loc 1 1104 0
	movq	-400(%rbp), %rax	# blocks_out, tmp272
	movq	%rax, %rdi	# tmp272,
	call	sbitmap_zero	#
	.loc 1 1124 0
	jmp	.L208	#
.L207:
	jmp	.L208	#
.L249:
.LBB31:
	.loc 1 1130 0
	movq	-328(%rbp), %rax	# qhead, qhead.107
	leaq	8(%rax), %rdx	#, tmp273
	movq	%rdx, -328(%rbp)	# tmp273, qhead
	movq	(%rax), %rax	# *qhead.107_89, tmp274
	movq	%rax, -216(%rbp)	# tmp274, bb
	.loc 1 1131 0
	movq	-328(%rbp), %rax	# qhead, tmp275
	cmpq	-256(%rbp), %rax	# qend, tmp275
	jne	.L209	#,
	.loc 1 1132 0
	movq	-264(%rbp), %rax	# queue, tmp276
	movq	%rax, -328(%rbp)	# tmp276, qhead
.L209:
	.loc 1 1133 0
	movq	-216(%rbp), %rax	# bb, tmp277
	movq	$0, 80(%rax)	#, bb_91->aux
	.loc 1 1136 0
	movq	-280(%rbp), %rax	# new_live_at_end, tmp278
	movq	%rax, %rdi	# tmp278,
	call	bitmap_clear	#
	.loc 1 1138 0
	movq	-216(%rbp), %rax	# bb, tmp279
	movq	40(%rax), %rax	# bb_91->succ, D.17417
	testq	%rax, %rax	# D.17417
	je	.L210	#,
	.loc 1 1139 0
	movq	-216(%rbp), %rax	# bb, tmp280
	movq	40(%rax), %rax	# bb_91->succ, tmp281
	movq	%rax, -304(%rbp)	# tmp281, e
	jmp	.L211	#
.L217:
.LBB32:
	.loc 1 1141 0
	movq	-304(%rbp), %rax	# e, tmp282
	movq	24(%rax), %rax	# e_26->dest, tmp283
	movq	%rax, -208(%rbp)	# tmp283, sb
	.loc 1 1147 0
	movq	-304(%rbp), %rax	# e, tmp284
	movl	48(%rax), %eax	# e_26->flags, D.17410
	andl	$8, %eax	#, D.17410
	testl	%eax, %eax	# D.17410
	je	.L212	#,
	.loc 1 1149 0
	movq	-208(%rbp), %rax	# sb, tmp285
	movq	64(%rax), %rsi	# sb_95->global_live_at_start, D.17418
	movq	-272(%rbp), %rdx	# call_used, tmp286
	movq	-288(%rbp), %rax	# tmp, tmp287
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp287,
	call	bitmap_operation	#
	.loc 1 1151 0
	movq	-288(%rbp), %rdx	# tmp, tmp288
	movq	-280(%rbp), %rsi	# new_live_at_end, tmp289
	movq	-280(%rbp), %rax	# new_live_at_end, tmp290
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp290,
	call	bitmap_operation	#
	jmp	.L213	#
.L212:
	.loc 1 1154 0
	movq	-208(%rbp), %rax	# sb, tmp291
	movq	64(%rax), %rdx	# sb_95->global_live_at_start, D.17418
	movq	-280(%rbp), %rsi	# new_live_at_end, tmp292
	movq	-280(%rbp), %rax	# new_live_at_end, tmp293
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp293,
	call	bitmap_operation	#
.L213:
	.loc 1 1158 0
	movq	-304(%rbp), %rax	# e, tmp294
	movl	48(%rax), %eax	# e_26->flags, D.17410
	andl	$8, %eax	#, D.17410
	testl	%eax, %eax	# D.17410
	je	.L214	#,
	.loc 1 1159 0
	movl	$0, -372(%rbp)	#, i
	jmp	.L215	#
.L216:
	addl	$1, -372(%rbp)	#, i
.L215:
	.loc 1 1159 0 is_stmt 0 discriminator 1
	cmpl	$52, -372(%rbp)	#, i
	jle	.L216	#,
.L214:
.LBE32:
	.loc 1 1139 0 is_stmt 1
	movq	-304(%rbp), %rax	# e, tmp295
	movq	8(%rax), %rax	# e_26->succ_next, tmp296
	movq	%rax, -304(%rbp)	# tmp296, e
.L211:
	.loc 1 1139 0 is_stmt 0 discriminator 1
	cmpq	$0, -304(%rbp)	#, e
	jne	.L217	#,
	jmp	.L218	#
.L210:
	.loc 1 1168 0 is_stmt 1
	movl	$0, -372(%rbp)	#, i
	jmp	.L219	#
.L220:
	addl	$1, -372(%rbp)	#, i
.L219:
	.loc 1 1168 0 is_stmt 0 discriminator 1
	cmpl	$52, -372(%rbp)	#, i
	jle	.L220	#,
.L218:
	.loc 1 1174 0 is_stmt 1
	movq	-280(%rbp), %rax	# new_live_at_end, tmp297
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp297,
	call	bitmap_set_bit	#
	.loc 1 1179 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.108
	testl	%eax, %eax	# reload_completed.108
	jne	.L221	#,
	.loc 1 1183 0
	movq	-280(%rbp), %rax	# new_live_at_end, tmp298
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp298,
	call	bitmap_set_bit	#
	.loc 1 1188 0
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.17409
	testb	%al, %al	# D.17409
	je	.L222	#,
	.loc 1 1189 0
	movq	-280(%rbp), %rax	# new_live_at_end, tmp299
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp299,
	call	bitmap_set_bit	#
.L222:
	.loc 1 1194 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.109
	andl	$33554432, %eax	#, D.17410
	testl	%eax, %eax	# D.17410
	jne	.L221	#,
	.loc 1 1194 0 is_stmt 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.110
	testl	%eax, %eax	# flag_pic.110
	je	.L221	#,
	.loc 1 1195 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.112
	andl	$33554432, %eax	#, D.17410
	testl	%eax, %eax	# D.17410
	jne	.L223	#,
	.loc 1 1195 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.113
	testl	%eax, %eax	# flag_pic.113
	jne	.L224	#,
.L223:
	.loc 1 1195 0 discriminator 1
	movl	$-1, %eax	#, iftmp.111
	jmp	.L225	#
.L224:
	movl	$3, %eax	#, iftmp.111
.L225:
	.loc 1 1195 0 discriminator 3
	movl	%eax, %eax	# iftmp.111, tmp300
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17409
	testb	%al, %al	# D.17409
	je	.L221	#,
	.loc 1 1196 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.115
	andl	$33554432, %eax	#, D.17410
	testl	%eax, %eax	# D.17410
	jne	.L226	#,
	.loc 1 1196 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.116
	testl	%eax, %eax	# flag_pic.116
	jne	.L227	#,
.L226:
	.loc 1 1196 0 discriminator 1
	movl	$-1, %eax	#, iftmp.114
	jmp	.L228	#
.L227:
	movl	$3, %eax	#, iftmp.114
.L228:
	.loc 1 1196 0 discriminator 3
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp301
	movl	%eax, %esi	# iftmp.114,
	movq	%rdx, %rdi	# tmp301,
	call	bitmap_set_bit	#
.L221:
	.loc 1 1203 0 is_stmt 1
	movl	in_ssa_form(%rip), %eax	# in_ssa_form, in_ssa_form.117
	testl	%eax, %eax	# in_ssa_form.117
	je	.L229	#,
	.loc 1 1204 0
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp302
	movq	-216(%rbp), %rax	# bb, tmp303
	movl	$set_phi_alternative_reg, %esi	#,
	movq	%rax, %rdi	# tmp303,
	call	for_each_successor_phi	#
.L229:
	.loc 1 1207 0
	cmpq	$entry_exit_blocks, -216(%rbp)	#, bb
	jne	.L230	#,
	.loc 1 1209 0
	movq	-216(%rbp), %rax	# bb, tmp304
	movq	72(%rax), %rax	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp305
	movq	%rdx, %rsi	# tmp305,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_copy	#
	.loc 1 1210 0
	jmp	.L208	#
.L230:
	.loc 1 1217 0
	movq	-216(%rbp), %rax	# bb, tmp306
	movq	48(%rax), %rax	# bb_91->local_set, D.17418
	testq	%rax, %rax	# D.17418
	jne	.L231	#,
.LBB33:
	.loc 1 1219 0
	movq	$flow_obstack, -200(%rbp)	#, __h
.LBB34:
	movq	-200(%rbp), %rax	# __h, tmp307
	movq	%rax, -192(%rbp)	# tmp307, __o
	movl	$24, -344(%rbp)	#, __len
	movq	-192(%rbp), %rax	# __o, tmp308
	movq	32(%rax), %rax	# __o_127->chunk_limit, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-192(%rbp), %rax	# __o, tmp309
	movq	24(%rax), %rax	# __o_127->next_free, D.17419
	subq	%rax, %rdx	# D.17420, D.17420
	movl	-344(%rbp), %eax	# __len, tmp310
	cltq
	cmpq	%rax, %rdx	# D.17420, D.17420
	jge	.L232	#,
	.loc 1 1219 0 is_stmt 0 discriminator 1
	movl	-344(%rbp), %edx	# __len, tmp311
	movq	-192(%rbp), %rax	# __o, tmp312
	movl	%edx, %esi	# tmp311,
	movq	%rax, %rdi	# tmp312,
	call	_obstack_newchunk	#
.L232:
	.loc 1 1219 0 discriminator 2
	movq	-192(%rbp), %rax	# __o, tmp313
	movq	24(%rax), %rdx	# __o_127->next_free, D.17419
	movl	-344(%rbp), %eax	# __len, tmp314
	cltq
	addq	%rax, %rdx	# D.17412, D.17419
	movq	-192(%rbp), %rax	# __o, tmp315
	movq	%rdx, 24(%rax)	# D.17419, __o_127->next_free
.LBE34:
.LBB35:
	movq	-200(%rbp), %rax	# __h, tmp316
	movq	%rax, -184(%rbp)	# tmp316, __o1
	movq	-184(%rbp), %rax	# __o1, tmp317
	movq	16(%rax), %rax	# __o1_138->object_base, tmp318
	movq	%rax, -176(%rbp)	# tmp318, value
	movq	-184(%rbp), %rax	# __o1, tmp319
	movq	24(%rax), %rax	# __o1_138->next_free, D.17419
	cmpq	-176(%rbp), %rax	# value, D.17419
	jne	.L233	#,
	.loc 1 1219 0 discriminator 1
	movq	-184(%rbp), %rax	# __o1, tmp320
	movzbl	80(%rax), %edx	# __o1_138->maybe_empty_object, tmp323
	orl	$2, %edx	#, tmp324
	movb	%dl, 80(%rax)	# tmp324, __o1_138->maybe_empty_object
.L233:
	.loc 1 1219 0 discriminator 2
	movq	-184(%rbp), %rax	# __o1, tmp325
	movq	24(%rax), %rax	# __o1_138->next_free, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-184(%rbp), %rax	# __o1, tmp326
	movl	48(%rax), %eax	# __o1_138->alignment_mask, D.17410
	cltq
	addq	%rax, %rdx	# D.17420, D.17420
	movq	-184(%rbp), %rax	# __o1, tmp327
	movl	48(%rax), %eax	# __o1_138->alignment_mask, D.17410
	notl	%eax	# D.17410
	cltq
	andq	%rdx, %rax	# D.17420, D.17420
	movq	%rax, %rdx	# D.17420, D.17419
	movq	-184(%rbp), %rax	# __o1, tmp328
	movq	%rdx, 24(%rax)	# D.17419, __o1_138->next_free
	movq	-184(%rbp), %rax	# __o1, tmp329
	movq	24(%rax), %rax	# __o1_138->next_free, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-184(%rbp), %rax	# __o1, tmp330
	movq	8(%rax), %rax	# __o1_138->chunk, D.17421
	movq	%rdx, %rcx	# D.17420, D.17420
	subq	%rax, %rcx	# D.17420, D.17420
	movq	-184(%rbp), %rax	# __o1, tmp331
	movq	32(%rax), %rax	# __o1_138->chunk_limit, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-184(%rbp), %rax	# __o1, tmp332
	movq	8(%rax), %rax	# __o1_138->chunk, D.17421
	subq	%rax, %rdx	# D.17420, D.17420
	movq	%rdx, %rax	# D.17420, D.17420
	cmpq	%rax, %rcx	# D.17420, D.17420
	jle	.L234	#,
	.loc 1 1219 0 discriminator 1
	movq	-184(%rbp), %rax	# __o1, tmp333
	movq	32(%rax), %rdx	# __o1_138->chunk_limit, D.17419
	movq	-184(%rbp), %rax	# __o1, tmp334
	movq	%rdx, 24(%rax)	# D.17419, __o1_138->next_free
.L234:
	.loc 1 1219 0 discriminator 2
	movq	-184(%rbp), %rax	# __o1, tmp335
	movq	24(%rax), %rdx	# __o1_138->next_free, D.17419
	movq	-184(%rbp), %rax	# __o1, tmp336
	movq	%rdx, 16(%rax)	# D.17419, __o1_138->object_base
	movq	-176(%rbp), %rax	# value, D.17416
.LBE35:
.LBE33:
	movq	%rax, %rdi	# D.17416,
	call	bitmap_initialize	#
	movq	-216(%rbp), %rdx	# bb, tmp337
	movq	%rax, 48(%rdx)	# D.17418, bb_91->local_set
.LBB36:
	.loc 1 1220 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -168(%rbp)	#, __h
.LBB37:
	movq	-168(%rbp), %rax	# __h, tmp338
	movq	%rax, -160(%rbp)	# tmp338, __o
	movl	$24, -340(%rbp)	#, __len
	movq	-160(%rbp), %rax	# __o, tmp339
	movq	32(%rax), %rax	# __o_167->chunk_limit, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-160(%rbp), %rax	# __o, tmp340
	movq	24(%rax), %rax	# __o_167->next_free, D.17419
	subq	%rax, %rdx	# D.17420, D.17420
	movl	-340(%rbp), %eax	# __len, tmp341
	cltq
	cmpq	%rax, %rdx	# D.17420, D.17420
	jge	.L235	#,
	.loc 1 1220 0 is_stmt 0 discriminator 1
	movl	-340(%rbp), %edx	# __len, tmp342
	movq	-160(%rbp), %rax	# __o, tmp343
	movl	%edx, %esi	# tmp342,
	movq	%rax, %rdi	# tmp343,
	call	_obstack_newchunk	#
.L235:
	.loc 1 1220 0 discriminator 2
	movq	-160(%rbp), %rax	# __o, tmp344
	movq	24(%rax), %rdx	# __o_167->next_free, D.17419
	movl	-340(%rbp), %eax	# __len, tmp345
	cltq
	addq	%rax, %rdx	# D.17412, D.17419
	movq	-160(%rbp), %rax	# __o, tmp346
	movq	%rdx, 24(%rax)	# D.17419, __o_167->next_free
.LBE37:
.LBB38:
	movq	-168(%rbp), %rax	# __h, tmp347
	movq	%rax, -152(%rbp)	# tmp347, __o1
	movq	-152(%rbp), %rax	# __o1, tmp348
	movq	16(%rax), %rax	# __o1_178->object_base, tmp349
	movq	%rax, -144(%rbp)	# tmp349, value
	movq	-152(%rbp), %rax	# __o1, tmp350
	movq	24(%rax), %rax	# __o1_178->next_free, D.17419
	cmpq	-144(%rbp), %rax	# value, D.17419
	jne	.L236	#,
	.loc 1 1220 0 discriminator 1
	movq	-152(%rbp), %rax	# __o1, tmp351
	movzbl	80(%rax), %edx	# __o1_178->maybe_empty_object, tmp354
	orl	$2, %edx	#, tmp355
	movb	%dl, 80(%rax)	# tmp355, __o1_178->maybe_empty_object
.L236:
	.loc 1 1220 0 discriminator 2
	movq	-152(%rbp), %rax	# __o1, tmp356
	movq	24(%rax), %rax	# __o1_178->next_free, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-152(%rbp), %rax	# __o1, tmp357
	movl	48(%rax), %eax	# __o1_178->alignment_mask, D.17410
	cltq
	addq	%rax, %rdx	# D.17420, D.17420
	movq	-152(%rbp), %rax	# __o1, tmp358
	movl	48(%rax), %eax	# __o1_178->alignment_mask, D.17410
	notl	%eax	# D.17410
	cltq
	andq	%rdx, %rax	# D.17420, D.17420
	movq	%rax, %rdx	# D.17420, D.17419
	movq	-152(%rbp), %rax	# __o1, tmp359
	movq	%rdx, 24(%rax)	# D.17419, __o1_178->next_free
	movq	-152(%rbp), %rax	# __o1, tmp360
	movq	24(%rax), %rax	# __o1_178->next_free, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-152(%rbp), %rax	# __o1, tmp361
	movq	8(%rax), %rax	# __o1_178->chunk, D.17421
	movq	%rdx, %rcx	# D.17420, D.17420
	subq	%rax, %rcx	# D.17420, D.17420
	movq	-152(%rbp), %rax	# __o1, tmp362
	movq	32(%rax), %rax	# __o1_178->chunk_limit, D.17419
	movq	%rax, %rdx	# D.17419, D.17420
	movq	-152(%rbp), %rax	# __o1, tmp363
	movq	8(%rax), %rax	# __o1_178->chunk, D.17421
	subq	%rax, %rdx	# D.17420, D.17420
	movq	%rdx, %rax	# D.17420, D.17420
	cmpq	%rax, %rcx	# D.17420, D.17420
	jle	.L237	#,
	.loc 1 1220 0 discriminator 1
	movq	-152(%rbp), %rax	# __o1, tmp364
	movq	32(%rax), %rdx	# __o1_178->chunk_limit, D.17419
	movq	-152(%rbp), %rax	# __o1, tmp365
	movq	%rdx, 24(%rax)	# D.17419, __o1_178->next_free
.L237:
	.loc 1 1220 0 discriminator 2
	movq	-152(%rbp), %rax	# __o1, tmp366
	movq	24(%rax), %rdx	# __o1_178->next_free, D.17419
	movq	-152(%rbp), %rax	# __o1, tmp367
	movq	%rdx, 16(%rax)	# D.17419, __o1_178->object_base
	movq	-144(%rbp), %rax	# value, D.17416
.LBE38:
.LBE36:
	movq	%rax, %rdi	# D.17416,
	call	bitmap_initialize	#
	movq	-216(%rbp), %rdx	# bb, tmp368
	movq	%rax, 56(%rdx)	# D.17418, bb_91->cond_local_set
	.loc 1 1221 0 is_stmt 1 discriminator 2
	movl	$1, -360(%rbp)	#, rescan
	jmp	.L238	#
.L231:
	.loc 1 1229 0
	movq	-288(%rbp), %rax	# tmp, tmp369
	movq	%rax, %rdi	# tmp369,
	call	bitmap_clear	#
	.loc 1 1230 0
	movq	-216(%rbp), %rax	# bb, tmp370
	movq	72(%rax), %rsi	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp371
	movq	-288(%rbp), %rax	# tmp, tmp372
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp372,
	call	bitmap_operation	#
	movl	%eax, -360(%rbp)	# tmp373, rescan
	.loc 1 1233 0
	cmpl	$0, -360(%rbp)	#, rescan
	jne	.L239	#,
	.loc 1 1242 0
	movq	-288(%rbp), %rax	# tmp, tmp374
	movq	%rax, %rdi	# tmp374,
	call	bitmap_clear	#
	.loc 1 1243 0
	movq	-216(%rbp), %rax	# bb, tmp375
	movq	56(%rax), %rdx	# bb_91->cond_local_set, D.17418
	movq	-280(%rbp), %rsi	# new_live_at_end, tmp376
	movq	-288(%rbp), %rax	# tmp, tmp377
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp377,
	call	bitmap_operation	#
	movl	%eax, -360(%rbp)	# tmp378, rescan
.L239:
	.loc 1 1247 0
	cmpl	$0, -360(%rbp)	#, rescan
	jne	.L238	#,
	.loc 1 1251 0
	movq	-288(%rbp), %rax	# tmp, tmp379
	movq	%rax, %rdi	# tmp379,
	call	bitmap_clear	#
	.loc 1 1252 0
	movq	-216(%rbp), %rax	# bb, tmp380
	movq	72(%rax), %rsi	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp381
	movq	-288(%rbp), %rax	# tmp, tmp382
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp382,
	call	bitmap_operation	#
	movl	%eax, -336(%rbp)	# tmp383, changed
	.loc 1 1254 0
	cmpl	$0, -336(%rbp)	#, changed
	jne	.L240	#,
	.loc 1 1255 0
	jmp	.L208	#
.L240:
	.loc 1 1260 0
	movq	-216(%rbp), %rax	# bb, tmp384
	movq	48(%rax), %rdx	# bb_91->local_set, D.17418
	movq	-288(%rbp), %rsi	# tmp, tmp385
	movq	-288(%rbp), %rax	# tmp, tmp386
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp386,
	call	bitmap_operation	#
	movl	%eax, -360(%rbp)	# tmp387, rescan
.L238:
	.loc 1 1267 0
	cmpq	$0, -400(%rbp)	#, blocks_out
	je	.L241	#,
	.loc 1 1268 0
	movq	-216(%rbp), %rax	# bb, tmp388
	movl	88(%rax), %eax	# bb_91->index, D.17410
	shrl	$6, %eax	#, D.17415
	movq	-400(%rbp), %rdx	# blocks_out, tmp389
	movl	%eax, %ecx	# D.17415, tmp390
	addq	$2, %rcx	#, tmp391
	movq	(%rdx,%rcx,8), %rsi	# blocks_out_88(D)->elms, D.17411
	movq	-216(%rbp), %rdx	# bb, tmp392
	movl	88(%rdx), %edx	# bb_91->index, D.17410
	andl	$63, %edx	#, D.17410
	movl	$1, %edi	#, tmp393
	movl	%edx, %ecx	# D.17410, tmp480
	salq	%cl, %rdi	# tmp480, D.17411
	movq	%rdi, %rdx	# D.17411, D.17411
	movq	%rsi, %rcx	# D.17411, D.17411
	orq	%rdx, %rcx	# D.17411, D.17411
	movq	-400(%rbp), %rdx	# blocks_out, tmp394
	movl	%eax, %eax	# D.17415, tmp395
	addq	$2, %rax	#, tmp396
	movq	%rcx, (%rdx,%rax,8)	# D.17411, blocks_out_88(D)->elms
.L241:
	.loc 1 1270 0
	cmpl	$0, -360(%rbp)	#, rescan
	jne	.L242	#,
	.loc 1 1275 0
	movq	-216(%rbp), %rax	# bb, tmp397
	movq	72(%rax), %rdx	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rsi	# new_live_at_end, tmp398
	movq	-288(%rbp), %rax	# tmp, tmp399
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp399,
	call	bitmap_operation	#
	.loc 1 1277 0
	movq	-216(%rbp), %rax	# bb, tmp400
	movq	72(%rax), %rax	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp401
	movq	%rdx, %rsi	# tmp401,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_copy	#
	.loc 1 1279 0
	movq	-216(%rbp), %rax	# bb, tmp402
	movq	64(%rax), %rsi	# bb_91->global_live_at_start, D.17418
	movq	-216(%rbp), %rax	# bb, tmp403
	movq	64(%rax), %rax	# bb_91->global_live_at_start, D.17418
	movq	-288(%rbp), %rdx	# tmp, tmp404
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_operation	#
	movl	%eax, -336(%rbp)	# tmp405, changed
	.loc 1 1282 0
	cmpl	$0, -336(%rbp)	#, changed
	jne	.L243	#,
	.loc 1 1283 0
	jmp	.L208	#
.L242:
	.loc 1 1287 0
	movq	-216(%rbp), %rax	# bb, tmp406
	movq	72(%rax), %rax	# bb_91->global_live_at_end, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp407
	movq	%rdx, %rsi	# tmp407,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_copy	#
	.loc 1 1291 0
	movq	-216(%rbp), %rax	# bb, tmp408
	movq	56(%rax), %rcx	# bb_91->cond_local_set, D.17418
	movq	-216(%rbp), %rax	# bb, tmp409
	movq	48(%rax), %rdx	# bb_91->local_set, D.17418
	movl	-404(%rbp), %edi	# flags, tmp410
	movq	-280(%rbp), %rsi	# new_live_at_end, tmp411
	movq	-216(%rbp), %rax	# bb, tmp412
	movl	%edi, %r8d	# tmp410,
	movq	%rax, %rdi	# tmp412,
	call	propagate_block	#
	.loc 1 1295 0
	movq	-216(%rbp), %rax	# bb, tmp413
	movq	64(%rax), %rax	# bb_91->global_live_at_start, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp414
	movq	%rdx, %rsi	# tmp414,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_equal_p	#
	testl	%eax, %eax	# D.17410
	je	.L244	#,
	.loc 1 1296 0
	jmp	.L208	#
.L244:
	.loc 1 1298 0
	movq	-216(%rbp), %rax	# bb, tmp415
	movq	64(%rax), %rax	# bb_91->global_live_at_start, D.17418
	movq	-280(%rbp), %rdx	# new_live_at_end, tmp416
	movq	%rdx, %rsi	# tmp416,
	movq	%rax, %rdi	# D.17418,
	call	bitmap_copy	#
.L243:
	.loc 1 1303 0
	movq	-216(%rbp), %rax	# bb, tmp417
	movq	32(%rax), %rax	# bb_91->pred, tmp418
	movq	%rax, -304(%rbp)	# tmp418, e
	jmp	.L245	#
.L248:
.LBB39:
	.loc 1 1305 0
	movq	-304(%rbp), %rax	# e, tmp419
	movq	16(%rax), %rax	# e_27->src, tmp420
	movq	%rax, -136(%rbp)	# tmp420, pb
	.loc 1 1306 0
	movq	-136(%rbp), %rax	# pb, tmp421
	movq	80(%rax), %rax	# pb_236->aux, D.17416
	testq	%rax, %rax	# D.17416
	jne	.L246	#,
	.loc 1 1308 0
	movq	-320(%rbp), %rax	# qtail, qtail.118
	leaq	8(%rax), %rdx	#, tmp422
	movq	%rdx, -320(%rbp)	# tmp422, qtail
	movq	-136(%rbp), %rdx	# pb, tmp423
	movq	%rdx, (%rax)	# tmp423, *qtail.118_238
	.loc 1 1309 0
	movq	-320(%rbp), %rax	# qtail, tmp424
	cmpq	-256(%rbp), %rax	# qend, tmp424
	jne	.L247	#,
	.loc 1 1310 0
	movq	-264(%rbp), %rax	# queue, tmp425
	movq	%rax, -320(%rbp)	# tmp425, qtail
.L247:
	.loc 1 1311 0
	movq	-136(%rbp), %rax	# pb, tmp426
	movq	-136(%rbp), %rdx	# pb, tmp427
	movq	%rdx, 80(%rax)	# tmp427, pb_236->aux
.L246:
.LBE39:
	.loc 1 1303 0
	movq	-304(%rbp), %rax	# e, tmp428
	movq	(%rax), %rax	# e_27->pred_next, tmp429
	movq	%rax, -304(%rbp)	# tmp429, e
.L245:
	.loc 1 1303 0 is_stmt 0 discriminator 1
	cmpq	$0, -304(%rbp)	#, e
	jne	.L248	#,
.L208:
.LBE31:
	.loc 1 1124 0 is_stmt 1 discriminator 1
	movq	-328(%rbp), %rax	# qhead, tmp430
	cmpq	-320(%rbp), %rax	# qtail, tmp430
	jne	.L249	#,
	.loc 1 1316 0
	cmpq	$0, -288(%rbp)	#, tmp
	je	.L250	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# tmp, tmp431
	movq	%rax, %rdi	# tmp431,
	call	bitmap_clear	#
	movq	$0, -288(%rbp)	#, tmp
.L250:
	.loc 1 1317 0 is_stmt 1
	cmpq	$0, -280(%rbp)	#, new_live_at_end
	je	.L251	#,
	.loc 1 1317 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# new_live_at_end, tmp432
	movq	%rax, %rdi	# tmp432,
	call	bitmap_clear	#
	movq	$0, -280(%rbp)	#, new_live_at_end
.L251:
	.loc 1 1318 0 is_stmt 1
	cmpq	$0, -272(%rbp)	#, call_used
	je	.L252	#,
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# call_used, tmp433
	movq	%rax, %rdi	# tmp433,
	call	bitmap_clear	#
	movq	$0, -272(%rbp)	#, call_used
.L252:
	.loc 1 1320 0 is_stmt 1
	cmpq	$0, -400(%rbp)	#, blocks_out
	je	.L253	#,
.LBB40:
	.loc 1 1322 0
	movl	$0, -352(%rbp)	#, bit_num_
	movq	-400(%rbp), %rax	# blocks_out, tmp434
	movl	4(%rax), %eax	# blocks_out_88(D)->size, tmp435
	movl	%eax, -332(%rbp)	# tmp435, size_
	movq	-400(%rbp), %rax	# blocks_out, tmp439
	addq	$16, %rax	#, tmp438
	movq	%rax, -128(%rbp)	# tmp438, ptr_
	movl	$0, -356(%rbp)	#, word_num_
	jmp	.L254	#
.L261:
.LBB41:
	.loc 1 1322 0 is_stmt 0 discriminator 2
	movl	-356(%rbp), %eax	# word_num_, D.17411
	leaq	0(,%rax,8), %rdx	#, D.17411
	movq	-128(%rbp), %rax	# ptr_, tmp440
	addq	%rdx, %rax	# D.17411, D.17414
	movq	(%rax), %rax	# *_251, tmp441
	movq	%rax, -296(%rbp)	# tmp441, word_
	cmpq	$0, -296(%rbp)	#, word_
	je	.L255	#,
	.loc 1 1322 0 discriminator 1
	jmp	.L256	#
.L260:
.LBB42:
	.loc 1 1322 0 discriminator 2
	movl	-352(%rbp), %eax	# bit_num_, bit_num_.119
	movl	$1, %edx	#, tmp442
	movl	%eax, %ecx	# bit_num_.119, tmp483
	salq	%cl, %rdx	# tmp483, tmp443
	movq	%rdx, %rax	# tmp443, tmp443
	movq	%rax, -120(%rbp)	# tmp443, _mask
	movq	-120(%rbp), %rax	# _mask, tmp444
	movq	-296(%rbp), %rdx	# word_, tmp445
	andq	%rdx, %rax	# tmp445, D.17411
	testq	%rax, %rax	# D.17411
	je	.L257	#,
	.loc 1 1322 0 discriminator 1
	movq	-120(%rbp), %rax	# _mask, tmp446
	notq	%rax	# D.17411
	andq	%rax, -296(%rbp)	# D.17411, word_
	movl	-356(%rbp), %eax	# word_num_, tmp447
	sall	$6, %eax	#, D.17415
	movl	%eax, %edx	# D.17415, D.17415
	movl	-352(%rbp), %eax	# bit_num_, tmp448
	addl	%edx, %eax	# D.17415, D.17415
	movl	%eax, -372(%rbp)	# D.17415, i
.LBB43:
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.120
	movl	-372(%rbp), %edx	# i, tmp450
	movslq	%edx, %rdx	# tmp450, tmp449
	addq	$4, %rdx	#, tmp451
	movq	(%rax,%rdx,8), %rax	# basic_block_info.120_261->data.bb, tmp452
	movq	%rax, -112(%rbp)	# tmp452, bb
	movq	-112(%rbp), %rax	# bb, tmp453
	movq	48(%rax), %rax	# bb_262->local_set, D.17418
	testq	%rax, %rax	# D.17418
	je	.L258	#,
	movq	-112(%rbp), %rax	# bb, tmp454
	movq	48(%rax), %rax	# bb_262->local_set, D.17418
	movq	%rax, %rdi	# D.17418,
	call	bitmap_clear	#
	movq	-112(%rbp), %rax	# bb, tmp455
	movq	$0, 48(%rax)	#, bb_262->local_set
.L258:
	.loc 1 1322 0 discriminator 2
	movq	-112(%rbp), %rax	# bb, tmp456
	movq	56(%rax), %rax	# bb_262->cond_local_set, D.17418
	testq	%rax, %rax	# D.17418
	je	.L259	#,
	.loc 1 1322 0 discriminator 1
	movq	-112(%rbp), %rax	# bb, tmp457
	movq	56(%rax), %rax	# bb_262->cond_local_set, D.17418
	movq	%rax, %rdi	# D.17418,
	call	bitmap_clear	#
	movq	-112(%rbp), %rax	# bb, tmp458
	movq	$0, 56(%rax)	#, bb_262->cond_local_set
.L259:
.LBE43:
	.loc 1 1322 0 discriminator 2
	cmpq	$0, -296(%rbp)	#, word_
	jne	.L257	#,
	.loc 1 1322 0 discriminator 1
	jmp	.L255	#
.L257:
.LBE42:
	.loc 1 1322 0 discriminator 2
	addl	$1, -352(%rbp)	#, bit_num_
.L256:
	.loc 1 1322 0 discriminator 1
	cmpl	$63, -352(%rbp)	#, bit_num_
	jbe	.L260	#,
.L255:
.LBE41:
	.loc 1 1322 0 discriminator 2
	addl	$1, -356(%rbp)	#, word_num_
	movl	$0, -352(%rbp)	#, bit_num_
.L254:
	.loc 1 1322 0 discriminator 1
	movl	-356(%rbp), %eax	# word_num_, tmp459
	cmpl	-332(%rbp), %eax	# size_, tmp459
	jb	.L261	#,
.LBE40:
	jmp	.L262	#
.L253:
	.loc 1 1331 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.121
	subl	$1, %eax	#, tmp460
	movl	%eax, -372(%rbp)	# tmp460, i
	jmp	.L263	#
.L266:
.LBB44:
	.loc 1 1333 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.122
	movl	-372(%rbp), %edx	# i, tmp462
	movslq	%edx, %rdx	# tmp462, tmp461
	addq	$4, %rdx	#, tmp463
	movq	(%rax,%rdx,8), %rax	# basic_block_info.122_272->data.bb, tmp464
	movq	%rax, -104(%rbp)	# tmp464, bb
	.loc 1 1334 0
	movq	-104(%rbp), %rax	# bb, tmp465
	movq	48(%rax), %rax	# bb_273->local_set, D.17418
	testq	%rax, %rax	# D.17418
	je	.L264	#,
	.loc 1 1334 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# bb, tmp466
	movq	48(%rax), %rax	# bb_273->local_set, D.17418
	movq	%rax, %rdi	# D.17418,
	call	bitmap_clear	#
	movq	-104(%rbp), %rax	# bb, tmp467
	movq	$0, 48(%rax)	#, bb_273->local_set
.L264:
	.loc 1 1335 0 is_stmt 1
	movq	-104(%rbp), %rax	# bb, tmp468
	movq	56(%rax), %rax	# bb_273->cond_local_set, D.17418
	testq	%rax, %rax	# D.17418
	je	.L265	#,
	.loc 1 1335 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# bb, tmp469
	movq	56(%rax), %rax	# bb_273->cond_local_set, D.17418
	movq	%rax, %rdi	# D.17418,
	call	bitmap_clear	#
	movq	-104(%rbp), %rax	# bb, tmp470
	movq	$0, 56(%rax)	#, bb_273->cond_local_set
.L265:
.LBE44:
	.loc 1 1331 0 is_stmt 1
	subl	$1, -372(%rbp)	#, i
.L263:
	.loc 1 1331 0 is_stmt 0 discriminator 1
	cmpl	$0, -372(%rbp)	#, i
	jns	.L266	#,
.L262:
	.loc 1 1339 0 is_stmt 1
	movq	-264(%rbp), %rax	# queue, tmp471
	movq	%rax, %rdi	# tmp471,
	call	free	#
	.loc 1 1340 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	calculate_global_regs_live, .-calculate_global_regs_live
	.type	find_regno_partial, @function
find_regno_partial:
.LFB18:
	.loc 1 1361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 1362 0
	movq	-32(%rbp), %rax	# data, tmp81
	movq	%rax, -8(%rbp)	# tmp81, param
	.loc 1 1363 0
	movq	-8(%rbp), %rax	# param, tmp82
	movl	(%rax), %eax	# param_3->regno_to_find, tmp83
	movl	%eax, -12(%rbp)	# tmp83, reg
	.loc 1 1364 0
	movq	-8(%rbp), %rax	# param, tmp84
	movq	$0, 8(%rax)	#, param_3->retval
	.loc 1 1366 0
	movq	-24(%rbp), %rax	# ptr, tmp85
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	testq	%rax, %rax	# D.17423
	jne	.L268	#,
	.loc 1 1367 0
	movl	$0, %eax	#, D.17422
	jmp	.L269	#
.L268:
	.loc 1 1369 0
	movq	-24(%rbp), %rax	# ptr, tmp86
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movzwl	(%rax), %eax	# _8->code, D.17424
	movzwl	%ax, %eax	# D.17424, D.17425
	cmpl	$64, %eax	#, D.17425
	je	.L271	#,
	cmpl	$64, %eax	#, D.17425
	ja	.L272	#,
	cmpl	$63, %eax	#, D.17425
	je	.L273	#,
	.loc 1 1391 0
	jmp	.L277	#
.L272:
	.loc 1 1369 0
	subl	$132, %eax	#, tmp87
	cmpl	$1, %eax	#, tmp87
	ja	.L277	#,
.L271:
	.loc 1 1374 0
	movq	-24(%rbp), %rax	# ptr, tmp88
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rax	# _11->fld[0].rtx, D.17423
	movzwl	(%rax), %eax	# _12->code, D.17424
	cmpw	$61, %ax	#, D.17424
	jne	.L274	#,
	.loc 1 1374 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr, tmp89
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.17423
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.17425
	cmpl	-12(%rbp), %eax	# reg, D.17425
	jne	.L274	#,
	.loc 1 1376 0 is_stmt 1
	movq	-24(%rbp), %rax	# ptr, tmp90
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rdx	# _17->fld[0].rtx, D.17423
	movq	-8(%rbp), %rax	# param, tmp91
	movq	%rdx, 8(%rax)	# D.17423, param_3->retval
	.loc 1 1377 0
	movl	$1, %eax	#, D.17422
	jmp	.L269	#
.L274:
	.loc 1 1379 0
	jmp	.L275	#
.L273:
	.loc 1 1382 0
	movq	-24(%rbp), %rax	# ptr, tmp92
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.17423
	movzwl	(%rax), %eax	# _21->code, D.17424
	cmpw	$61, %ax	#, D.17424
	jne	.L276	#,
	.loc 1 1383 0
	movq	-24(%rbp), %rax	# ptr, tmp93
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.17423
	movl	8(%rax), %eax	# _24->fld[0].rtuint, D.17425
	cmpl	-12(%rbp), %eax	# reg, D.17425
	jne	.L276	#,
	.loc 1 1385 0
	movq	-24(%rbp), %rax	# ptr, tmp94
	movq	(%rax), %rax	# *ptr_5(D), D.17423
	movq	8(%rax), %rdx	# _26->fld[0].rtx, D.17423
	movq	-8(%rbp), %rax	# param, tmp95
	movq	%rdx, 8(%rax)	# D.17423, param_3->retval
	.loc 1 1386 0
	movl	$1, %eax	#, D.17422
	jmp	.L269	#
.L276:
	.loc 1 1388 0
	jmp	.L275	#
.L277:
	.loc 1 1391 0
	nop
.L275:
	.loc 1 1394 0
	movl	$0, %eax	#, D.17422
.L269:
	.loc 1 1395 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_regno_partial, .-find_regno_partial
	.globl	initialize_uninitialized_subregs
	.type	initialize_uninitialized_subregs, @function
initialize_uninitialized_subregs:
.LFB19:
	.loc 1 1406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	.loc 1 1409 0
	movl	$0, -104(%rbp)	#, did_something
	.loc 1 1412 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp87
	movq	%rax, -72(%rbp)	# tmp87, e
	jmp	.L279	#
.L296:
.LBB45:
	.loc 1 1414 0
	movq	-72(%rbp), %rax	# e, tmp88
	movq	24(%rax), %rax	# e_1->dest, tmp89
	movq	%rax, -48(%rbp)	# tmp89, bb
	.loc 1 1415 0
	movq	-48(%rbp), %rax	# bb, tmp90
	movq	64(%rax), %rax	# bb_22->global_live_at_start, tmp91
	movq	%rax, -40(%rbp)	# tmp91, map
.LBB46:
	.loc 1 1416 0
	movq	-40(%rbp), %rax	# map, tmp92
	movq	(%rax), %rax	# map_23->first, tmp93
	movq	%rax, -64(%rbp)	# tmp93, ptr_
	movl	$0, -92(%rbp)	#, indx_
	movl	$53, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L280	#
.L282:
	.loc 1 1416 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp94
	movq	(%rax), %rax	# ptr__9->next, tmp95
	movq	%rax, -64(%rbp)	# tmp95, ptr_
.L280:
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L281	#,
	.loc 1 1416 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp96
	movl	16(%rax), %eax	# ptr__9->indx, D.17427
	cmpl	-92(%rbp), %eax	# indx_, D.17427
	jb	.L282	#,
.L281:
	.loc 1 1416 0 discriminator 3
	cmpq	$0, -64(%rbp)	#, ptr_
	je	.L283	#,
	.loc 1 1416 0 discriminator 1
	movq	-64(%rbp), %rax	# ptr_, tmp97
	movl	16(%rax), %eax	# ptr__9->indx, D.17427
	cmpl	-92(%rbp), %eax	# indx_, D.17427
	je	.L283	#,
	movl	$0, -100(%rbp)	#, bit_num_
	movl	$0, -96(%rbp)	#, word_num_
	jmp	.L284	#
.L283:
	.loc 1 1416 0 discriminator 2
	jmp	.L284	#
.L295:
	.loc 1 1416 0
	jmp	.L285	#
.L294:
.LBB47:
	.loc 1 1416 0 discriminator 2
	movq	-64(%rbp), %rax	# ptr_, tmp98
	movl	-96(%rbp), %edx	# word_num_, tmp99
	addq	$2, %rdx	#, tmp100
	movq	8(%rax,%rdx,8), %rax	# ptr__10->bits, tmp101
	movq	%rax, -56(%rbp)	# tmp101, word_
	cmpq	$0, -56(%rbp)	#, word_
	je	.L286	#,
	.loc 1 1416 0 discriminator 1
	jmp	.L287	#
.L293:
.LBB48:
	.loc 1 1416 0 discriminator 2
	movl	-100(%rbp), %eax	# bit_num_, bit_num_.123
	movl	$1, %edx	#, tmp102
	movl	%eax, %ecx	# bit_num_.123, tmp126
	salq	%cl, %rdx	# tmp126, tmp103
	movq	%rdx, %rax	# tmp103, tmp103
	movq	%rax, -32(%rbp)	# tmp103, mask_
	movq	-32(%rbp), %rax	# mask_, tmp104
	movq	-56(%rbp), %rdx	# word_, tmp105
	andq	%rdx, %rax	# tmp105, D.17428
	testq	%rax, %rax	# D.17428
	je	.L288	#,
	.loc 1 1416 0 discriminator 1
	movq	-32(%rbp), %rax	# mask_, tmp106
	notq	%rax	# D.17428
	andq	%rax, -56(%rbp)	# D.17428, word_
	movq	-64(%rbp), %rax	# ptr_, tmp107
	movl	16(%rax), %eax	# ptr__10->indx, D.17427
	leal	(%rax,%rax), %edx	#, D.17427
	movl	-96(%rbp), %eax	# word_num_, tmp108
	addl	%edx, %eax	# D.17427, D.17427
	sall	$6, %eax	#, D.17427
	movl	%eax, %edx	# D.17427, D.17427
	movl	-100(%rbp), %eax	# bit_num_, tmp109
	addl	%edx, %eax	# D.17427, D.17427
	movl	%eax, -88(%rbp)	# D.17427, reg
.LBB49:
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.124
	movl	-88(%rbp), %edx	# reg, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	addq	$4, %rdx	#, tmp112
	movq	(%rax,%rdx,8), %rax	# reg_n_info.124_45->data.reg, D.17429
	movl	(%rax), %eax	# _46->first_uid, tmp113
	movl	%eax, -84(%rbp)	# tmp113, uid
	call	get_insns	#
	movq	%rax, -80(%rbp)	# i.125, i
	jmp	.L289	#
.L291:
	movq	-80(%rbp), %rax	# i, i.126
	movq	24(%rax), %rax	# i.126_52->fld[2].rtx, i.127
	movq	%rax, -80(%rbp)	# i.127, i
.L289:
	movq	-80(%rbp), %rax	# i, i.128
	testq	%rax, %rax	# i.128
	je	.L290	#,
	.loc 1 1416 0 discriminator 2
	movq	-80(%rbp), %rax	# i, i.129
	movl	8(%rax), %eax	# i.129_50->fld[0].rtint, D.17430
	cmpl	-84(%rbp), %eax	# uid, D.17430
	jne	.L291	#,
.L290:
	.loc 1 1416 0 discriminator 3
	movq	-80(%rbp), %rax	# i, i.130
	testq	%rax, %rax	# i.130
	je	.L292	#,
	.loc 1 1416 0 discriminator 1
	movl	-88(%rbp), %eax	# reg, reg.131
	movl	%eax, -16(%rbp)	# reg.131, param.regno_to_find
	leaq	-16(%rbp), %rdx	#, tmp114
	leaq	-80(%rbp), %rax	#, tmp115
	movl	$find_regno_partial, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	for_each_rtx	#
	movq	-8(%rbp), %rax	# param.retval, D.17431
	testq	%rax, %rax	# D.17431
	je	.L292	#,
	movq	-8(%rbp), %rax	# param.retval, D.17431
	movzbl	2(%rax), %eax	# _57->mode, D.17432
	movzbl	%al, %eax	# D.17432, D.17430
	cltq
	movq	const_tiny_rtx(,%rax,8), %rdx	# const_tiny_rtx, D.17431
	movq	-8(%rbp), %rax	# param.retval, D.17431
	movq	%rdx, %rsi	# D.17431,
	movq	%rax, %rdi	# D.17431,
	call	gen_move_insn	#
	movq	%rax, -24(%rbp)	# tmp117, insn
	movq	-72(%rbp), %rdx	# e, tmp118
	movq	-24(%rbp), %rax	# insn, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	insert_insn_on_edge	#
	movl	$1, -104(%rbp)	#, did_something
.L292:
.LBE49:
	.loc 1 1416 0 discriminator 2
	cmpq	$0, -56(%rbp)	#, word_
	jne	.L288	#,
	.loc 1 1416 0 discriminator 1
	jmp	.L286	#
.L288:
.LBE48:
	.loc 1 1416 0 discriminator 2
	addl	$1, -100(%rbp)	#, bit_num_
.L287:
	.loc 1 1416 0 discriminator 1
	cmpl	$63, -100(%rbp)	#, bit_num_
	jbe	.L293	#,
.L286:
	.loc 1 1416 0 discriminator 2
	movl	$0, -100(%rbp)	#, bit_num_
.LBE47:
	addl	$1, -96(%rbp)	#, word_num_
.L285:
	.loc 1 1416 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, word_num_
	jbe	.L294	#,
	.loc 1 1416 0 discriminator 3
	movl	$0, -96(%rbp)	#, word_num_
	movq	-64(%rbp), %rax	# ptr_, tmp120
	movq	(%rax), %rax	# ptr__10->next, tmp121
	movq	%rax, -64(%rbp)	# tmp121, ptr_
.L284:
	.loc 1 1416 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, ptr_
	jne	.L295	#,
.LBE46:
.LBE45:
	.loc 1 1412 0 is_stmt 1
	movq	-72(%rbp), %rax	# e, tmp122
	movq	8(%rax), %rax	# e_1->succ_next, tmp123
	movq	%rax, -72(%rbp)	# tmp123, e
.L279:
	.loc 1 1412 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, e
	jne	.L296	#,
	.loc 1 1445 0 is_stmt 1
	cmpl	$0, -104(%rbp)	#, did_something
	je	.L297	#,
	.loc 1 1446 0
	call	commit_edge_insertions	#
.L297:
	.loc 1 1447 0
	movl	-104(%rbp), %eax	# did_something, D.17430
	.loc 1 1448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	initialize_uninitialized_subregs, .-initialize_uninitialized_subregs
	.globl	allocate_bb_life_data
	.type	allocate_bb_life_data, @function
allocate_bb_life_data:
.LFB20:
	.loc 1 1458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	.loc 1 1461 0
	movl	$0, -192(%rbp)	#, i
	jmp	.L300	#
.L307:
.LBB50:
	.loc 1 1463 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.132
	movl	-192(%rbp), %edx	# i, tmp232
	movslq	%edx, %rdx	# tmp232, tmp231
	addq	$4, %rdx	#, tmp233
	movq	(%rax,%rdx,8), %rax	# basic_block_info.132_4->data.bb, tmp234
	movq	%rax, -168(%rbp)	# tmp234, bb
.LBB51:
	.loc 1 1465 0
	movq	$flow_obstack, -160(%rbp)	#, __h
.LBB52:
	movq	-160(%rbp), %rax	# __h, tmp235
	movq	%rax, -152(%rbp)	# tmp235, __o
	movl	$24, -188(%rbp)	#, __len
	movq	-152(%rbp), %rax	# __o, tmp236
	movq	32(%rax), %rax	# __o_7->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-152(%rbp), %rax	# __o, tmp237
	movq	24(%rax), %rax	# __o_7->next_free, D.17433
	subq	%rax, %rdx	# D.17434, D.17434
	movl	-188(%rbp), %eax	# __len, tmp238
	cltq
	cmpq	%rax, %rdx	# D.17434, D.17434
	jge	.L301	#,
	.loc 1 1465 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %edx	# __len, tmp239
	movq	-152(%rbp), %rax	# __o, tmp240
	movl	%edx, %esi	# tmp239,
	movq	%rax, %rdi	# tmp240,
	call	_obstack_newchunk	#
.L301:
	.loc 1 1465 0 discriminator 2
	movq	-152(%rbp), %rax	# __o, tmp241
	movq	24(%rax), %rdx	# __o_7->next_free, D.17433
	movl	-188(%rbp), %eax	# __len, tmp242
	cltq
	addq	%rax, %rdx	# D.17435, D.17433
	movq	-152(%rbp), %rax	# __o, tmp243
	movq	%rdx, 24(%rax)	# D.17433, __o_7->next_free
.LBE52:
.LBB53:
	movq	-160(%rbp), %rax	# __h, tmp244
	movq	%rax, -144(%rbp)	# tmp244, __o1
	movq	-144(%rbp), %rax	# __o1, tmp245
	movq	16(%rax), %rax	# __o1_18->object_base, tmp246
	movq	%rax, -136(%rbp)	# tmp246, value
	movq	-144(%rbp), %rax	# __o1, tmp247
	movq	24(%rax), %rax	# __o1_18->next_free, D.17433
	cmpq	-136(%rbp), %rax	# value, D.17433
	jne	.L302	#,
	.loc 1 1465 0 discriminator 1
	movq	-144(%rbp), %rax	# __o1, tmp248
	movzbl	80(%rax), %edx	# __o1_18->maybe_empty_object, tmp251
	orl	$2, %edx	#, tmp252
	movb	%dl, 80(%rax)	# tmp252, __o1_18->maybe_empty_object
.L302:
	.loc 1 1465 0 discriminator 2
	movq	-144(%rbp), %rax	# __o1, tmp253
	movq	24(%rax), %rax	# __o1_18->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-144(%rbp), %rax	# __o1, tmp254
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.17436
	cltq
	addq	%rax, %rdx	# D.17434, D.17434
	movq	-144(%rbp), %rax	# __o1, tmp255
	movl	48(%rax), %eax	# __o1_18->alignment_mask, D.17436
	notl	%eax	# D.17436
	cltq
	andq	%rdx, %rax	# D.17434, D.17434
	movq	%rax, %rdx	# D.17434, D.17433
	movq	-144(%rbp), %rax	# __o1, tmp256
	movq	%rdx, 24(%rax)	# D.17433, __o1_18->next_free
	movq	-144(%rbp), %rax	# __o1, tmp257
	movq	24(%rax), %rax	# __o1_18->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-144(%rbp), %rax	# __o1, tmp258
	movq	8(%rax), %rax	# __o1_18->chunk, D.17437
	movq	%rdx, %rcx	# D.17434, D.17434
	subq	%rax, %rcx	# D.17434, D.17434
	movq	-144(%rbp), %rax	# __o1, tmp259
	movq	32(%rax), %rax	# __o1_18->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-144(%rbp), %rax	# __o1, tmp260
	movq	8(%rax), %rax	# __o1_18->chunk, D.17437
	subq	%rax, %rdx	# D.17434, D.17434
	movq	%rdx, %rax	# D.17434, D.17434
	cmpq	%rax, %rcx	# D.17434, D.17434
	jle	.L303	#,
	.loc 1 1465 0 discriminator 1
	movq	-144(%rbp), %rax	# __o1, tmp261
	movq	32(%rax), %rdx	# __o1_18->chunk_limit, D.17433
	movq	-144(%rbp), %rax	# __o1, tmp262
	movq	%rdx, 24(%rax)	# D.17433, __o1_18->next_free
.L303:
	.loc 1 1465 0 discriminator 2
	movq	-144(%rbp), %rax	# __o1, tmp263
	movq	24(%rax), %rdx	# __o1_18->next_free, D.17433
	movq	-144(%rbp), %rax	# __o1, tmp264
	movq	%rdx, 16(%rax)	# D.17433, __o1_18->object_base
	movq	-136(%rbp), %rax	# value, D.17438
.LBE53:
.LBE51:
	movq	%rax, %rdi	# D.17438,
	call	bitmap_initialize	#
	movq	-168(%rbp), %rdx	# bb, tmp265
	movq	%rax, 64(%rdx)	# D.17439, bb_5->global_live_at_start
.LBB54:
	.loc 1 1466 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -128(%rbp)	#, __h
.LBB55:
	movq	-128(%rbp), %rax	# __h, tmp266
	movq	%rax, -120(%rbp)	# tmp266, __o
	movl	$24, -184(%rbp)	#, __len
	movq	-120(%rbp), %rax	# __o, tmp267
	movq	32(%rax), %rax	# __o_47->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-120(%rbp), %rax	# __o, tmp268
	movq	24(%rax), %rax	# __o_47->next_free, D.17433
	subq	%rax, %rdx	# D.17434, D.17434
	movl	-184(%rbp), %eax	# __len, tmp269
	cltq
	cmpq	%rax, %rdx	# D.17434, D.17434
	jge	.L304	#,
	.loc 1 1466 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %edx	# __len, tmp270
	movq	-120(%rbp), %rax	# __o, tmp271
	movl	%edx, %esi	# tmp270,
	movq	%rax, %rdi	# tmp271,
	call	_obstack_newchunk	#
.L304:
	.loc 1 1466 0 discriminator 2
	movq	-120(%rbp), %rax	# __o, tmp272
	movq	24(%rax), %rdx	# __o_47->next_free, D.17433
	movl	-184(%rbp), %eax	# __len, tmp273
	cltq
	addq	%rax, %rdx	# D.17435, D.17433
	movq	-120(%rbp), %rax	# __o, tmp274
	movq	%rdx, 24(%rax)	# D.17433, __o_47->next_free
.LBE55:
.LBB56:
	movq	-128(%rbp), %rax	# __h, tmp275
	movq	%rax, -112(%rbp)	# tmp275, __o1
	movq	-112(%rbp), %rax	# __o1, tmp276
	movq	16(%rax), %rax	# __o1_58->object_base, tmp277
	movq	%rax, -104(%rbp)	# tmp277, value
	movq	-112(%rbp), %rax	# __o1, tmp278
	movq	24(%rax), %rax	# __o1_58->next_free, D.17433
	cmpq	-104(%rbp), %rax	# value, D.17433
	jne	.L305	#,
	.loc 1 1466 0 discriminator 1
	movq	-112(%rbp), %rax	# __o1, tmp279
	movzbl	80(%rax), %edx	# __o1_58->maybe_empty_object, tmp282
	orl	$2, %edx	#, tmp283
	movb	%dl, 80(%rax)	# tmp283, __o1_58->maybe_empty_object
.L305:
	.loc 1 1466 0 discriminator 2
	movq	-112(%rbp), %rax	# __o1, tmp284
	movq	24(%rax), %rax	# __o1_58->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-112(%rbp), %rax	# __o1, tmp285
	movl	48(%rax), %eax	# __o1_58->alignment_mask, D.17436
	cltq
	addq	%rax, %rdx	# D.17434, D.17434
	movq	-112(%rbp), %rax	# __o1, tmp286
	movl	48(%rax), %eax	# __o1_58->alignment_mask, D.17436
	notl	%eax	# D.17436
	cltq
	andq	%rdx, %rax	# D.17434, D.17434
	movq	%rax, %rdx	# D.17434, D.17433
	movq	-112(%rbp), %rax	# __o1, tmp287
	movq	%rdx, 24(%rax)	# D.17433, __o1_58->next_free
	movq	-112(%rbp), %rax	# __o1, tmp288
	movq	24(%rax), %rax	# __o1_58->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-112(%rbp), %rax	# __o1, tmp289
	movq	8(%rax), %rax	# __o1_58->chunk, D.17437
	movq	%rdx, %rcx	# D.17434, D.17434
	subq	%rax, %rcx	# D.17434, D.17434
	movq	-112(%rbp), %rax	# __o1, tmp290
	movq	32(%rax), %rax	# __o1_58->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-112(%rbp), %rax	# __o1, tmp291
	movq	8(%rax), %rax	# __o1_58->chunk, D.17437
	subq	%rax, %rdx	# D.17434, D.17434
	movq	%rdx, %rax	# D.17434, D.17434
	cmpq	%rax, %rcx	# D.17434, D.17434
	jle	.L306	#,
	.loc 1 1466 0 discriminator 1
	movq	-112(%rbp), %rax	# __o1, tmp292
	movq	32(%rax), %rdx	# __o1_58->chunk_limit, D.17433
	movq	-112(%rbp), %rax	# __o1, tmp293
	movq	%rdx, 24(%rax)	# D.17433, __o1_58->next_free
.L306:
	.loc 1 1466 0 discriminator 2
	movq	-112(%rbp), %rax	# __o1, tmp294
	movq	24(%rax), %rdx	# __o1_58->next_free, D.17433
	movq	-112(%rbp), %rax	# __o1, tmp295
	movq	%rdx, 16(%rax)	# D.17433, __o1_58->object_base
	movq	-104(%rbp), %rax	# value, D.17438
.LBE56:
.LBE54:
	movq	%rax, %rdi	# D.17438,
	call	bitmap_initialize	#
	movq	-168(%rbp), %rdx	# bb, tmp296
	movq	%rax, 72(%rdx)	# D.17439, bb_5->global_live_at_end
.LBE50:
	.loc 1 1461 0 is_stmt 1 discriminator 2
	addl	$1, -192(%rbp)	#, i
.L300:
	.loc 1 1461 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.133
	cmpl	%eax, -192(%rbp)	# n_basic_blocks.133, i
	jl	.L307	#,
.LBB57:
	.loc 1 1470 0 is_stmt 1
	movq	$flow_obstack, -96(%rbp)	#, __h
.LBB58:
	movq	-96(%rbp), %rax	# __h, tmp297
	movq	%rax, -88(%rbp)	# tmp297, __o
	movl	$24, -180(%rbp)	#, __len
	movq	-88(%rbp), %rax	# __o, tmp298
	movq	32(%rax), %rax	# __o_88->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-88(%rbp), %rax	# __o, tmp299
	movq	24(%rax), %rax	# __o_88->next_free, D.17433
	subq	%rax, %rdx	# D.17434, D.17434
	movl	-180(%rbp), %eax	# __len, tmp300
	cltq
	cmpq	%rax, %rdx	# D.17434, D.17434
	jge	.L308	#,
	.loc 1 1470 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %edx	# __len, tmp301
	movq	-88(%rbp), %rax	# __o, tmp302
	movl	%edx, %esi	# tmp301,
	movq	%rax, %rdi	# tmp302,
	call	_obstack_newchunk	#
.L308:
	.loc 1 1470 0 discriminator 2
	movq	-88(%rbp), %rax	# __o, tmp303
	movq	24(%rax), %rdx	# __o_88->next_free, D.17433
	movl	-180(%rbp), %eax	# __len, tmp304
	cltq
	addq	%rax, %rdx	# D.17435, D.17433
	movq	-88(%rbp), %rax	# __o, tmp305
	movq	%rdx, 24(%rax)	# D.17433, __o_88->next_free
.LBE58:
.LBB59:
	movq	-96(%rbp), %rax	# __h, tmp306
	movq	%rax, -80(%rbp)	# tmp306, __o1
	movq	-80(%rbp), %rax	# __o1, tmp307
	movq	16(%rax), %rax	# __o1_99->object_base, tmp308
	movq	%rax, -72(%rbp)	# tmp308, value
	movq	-80(%rbp), %rax	# __o1, tmp309
	movq	24(%rax), %rax	# __o1_99->next_free, D.17433
	cmpq	-72(%rbp), %rax	# value, D.17433
	jne	.L309	#,
	.loc 1 1470 0 discriminator 1
	movq	-80(%rbp), %rax	# __o1, tmp310
	movzbl	80(%rax), %edx	# __o1_99->maybe_empty_object, tmp313
	orl	$2, %edx	#, tmp314
	movb	%dl, 80(%rax)	# tmp314, __o1_99->maybe_empty_object
.L309:
	.loc 1 1470 0 discriminator 2
	movq	-80(%rbp), %rax	# __o1, tmp315
	movq	24(%rax), %rax	# __o1_99->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-80(%rbp), %rax	# __o1, tmp316
	movl	48(%rax), %eax	# __o1_99->alignment_mask, D.17436
	cltq
	addq	%rax, %rdx	# D.17434, D.17434
	movq	-80(%rbp), %rax	# __o1, tmp317
	movl	48(%rax), %eax	# __o1_99->alignment_mask, D.17436
	notl	%eax	# D.17436
	cltq
	andq	%rdx, %rax	# D.17434, D.17434
	movq	%rax, %rdx	# D.17434, D.17433
	movq	-80(%rbp), %rax	# __o1, tmp318
	movq	%rdx, 24(%rax)	# D.17433, __o1_99->next_free
	movq	-80(%rbp), %rax	# __o1, tmp319
	movq	24(%rax), %rax	# __o1_99->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-80(%rbp), %rax	# __o1, tmp320
	movq	8(%rax), %rax	# __o1_99->chunk, D.17437
	movq	%rdx, %rcx	# D.17434, D.17434
	subq	%rax, %rcx	# D.17434, D.17434
	movq	-80(%rbp), %rax	# __o1, tmp321
	movq	32(%rax), %rax	# __o1_99->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-80(%rbp), %rax	# __o1, tmp322
	movq	8(%rax), %rax	# __o1_99->chunk, D.17437
	subq	%rax, %rdx	# D.17434, D.17434
	movq	%rdx, %rax	# D.17434, D.17434
	cmpq	%rax, %rcx	# D.17434, D.17434
	jle	.L310	#,
	.loc 1 1470 0 discriminator 1
	movq	-80(%rbp), %rax	# __o1, tmp323
	movq	32(%rax), %rdx	# __o1_99->chunk_limit, D.17433
	movq	-80(%rbp), %rax	# __o1, tmp324
	movq	%rdx, 24(%rax)	# D.17433, __o1_99->next_free
.L310:
	.loc 1 1470 0 discriminator 2
	movq	-80(%rbp), %rax	# __o1, tmp325
	movq	24(%rax), %rdx	# __o1_99->next_free, D.17433
	movq	-80(%rbp), %rax	# __o1, tmp326
	movq	%rdx, 16(%rax)	# D.17433, __o1_99->object_base
	movq	-72(%rbp), %rax	# value, D.17438
.LBE59:
.LBE57:
	movq	%rax, %rdi	# D.17438,
	call	bitmap_initialize	#
	movq	%rax, entry_exit_blocks+72(%rip)	# D.17439, entry_exit_blocks[0].global_live_at_end
.LBB60:
	.loc 1 1472 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -64(%rbp)	#, __h
.LBB61:
	movq	-64(%rbp), %rax	# __h, tmp327
	movq	%rax, -56(%rbp)	# tmp327, __o
	movl	$24, -176(%rbp)	#, __len
	movq	-56(%rbp), %rax	# __o, tmp328
	movq	32(%rax), %rax	# __o_128->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-56(%rbp), %rax	# __o, tmp329
	movq	24(%rax), %rax	# __o_128->next_free, D.17433
	subq	%rax, %rdx	# D.17434, D.17434
	movl	-176(%rbp), %eax	# __len, tmp330
	cltq
	cmpq	%rax, %rdx	# D.17434, D.17434
	jge	.L311	#,
	.loc 1 1472 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %edx	# __len, tmp331
	movq	-56(%rbp), %rax	# __o, tmp332
	movl	%edx, %esi	# tmp331,
	movq	%rax, %rdi	# tmp332,
	call	_obstack_newchunk	#
.L311:
	.loc 1 1472 0 discriminator 2
	movq	-56(%rbp), %rax	# __o, tmp333
	movq	24(%rax), %rdx	# __o_128->next_free, D.17433
	movl	-176(%rbp), %eax	# __len, tmp334
	cltq
	addq	%rax, %rdx	# D.17435, D.17433
	movq	-56(%rbp), %rax	# __o, tmp335
	movq	%rdx, 24(%rax)	# D.17433, __o_128->next_free
.LBE61:
.LBB62:
	movq	-64(%rbp), %rax	# __h, tmp336
	movq	%rax, -48(%rbp)	# tmp336, __o1
	movq	-48(%rbp), %rax	# __o1, tmp337
	movq	16(%rax), %rax	# __o1_139->object_base, tmp338
	movq	%rax, -40(%rbp)	# tmp338, value
	movq	-48(%rbp), %rax	# __o1, tmp339
	movq	24(%rax), %rax	# __o1_139->next_free, D.17433
	cmpq	-40(%rbp), %rax	# value, D.17433
	jne	.L312	#,
	.loc 1 1472 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp340
	movzbl	80(%rax), %edx	# __o1_139->maybe_empty_object, tmp343
	orl	$2, %edx	#, tmp344
	movb	%dl, 80(%rax)	# tmp344, __o1_139->maybe_empty_object
.L312:
	.loc 1 1472 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp345
	movq	24(%rax), %rax	# __o1_139->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-48(%rbp), %rax	# __o1, tmp346
	movl	48(%rax), %eax	# __o1_139->alignment_mask, D.17436
	cltq
	addq	%rax, %rdx	# D.17434, D.17434
	movq	-48(%rbp), %rax	# __o1, tmp347
	movl	48(%rax), %eax	# __o1_139->alignment_mask, D.17436
	notl	%eax	# D.17436
	cltq
	andq	%rdx, %rax	# D.17434, D.17434
	movq	%rax, %rdx	# D.17434, D.17433
	movq	-48(%rbp), %rax	# __o1, tmp348
	movq	%rdx, 24(%rax)	# D.17433, __o1_139->next_free
	movq	-48(%rbp), %rax	# __o1, tmp349
	movq	24(%rax), %rax	# __o1_139->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-48(%rbp), %rax	# __o1, tmp350
	movq	8(%rax), %rax	# __o1_139->chunk, D.17437
	movq	%rdx, %rcx	# D.17434, D.17434
	subq	%rax, %rcx	# D.17434, D.17434
	movq	-48(%rbp), %rax	# __o1, tmp351
	movq	32(%rax), %rax	# __o1_139->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-48(%rbp), %rax	# __o1, tmp352
	movq	8(%rax), %rax	# __o1_139->chunk, D.17437
	subq	%rax, %rdx	# D.17434, D.17434
	movq	%rdx, %rax	# D.17434, D.17434
	cmpq	%rax, %rcx	# D.17434, D.17434
	jle	.L313	#,
	.loc 1 1472 0 discriminator 1
	movq	-48(%rbp), %rax	# __o1, tmp353
	movq	32(%rax), %rdx	# __o1_139->chunk_limit, D.17433
	movq	-48(%rbp), %rax	# __o1, tmp354
	movq	%rdx, 24(%rax)	# D.17433, __o1_139->next_free
.L313:
	.loc 1 1472 0 discriminator 2
	movq	-48(%rbp), %rax	# __o1, tmp355
	movq	24(%rax), %rdx	# __o1_139->next_free, D.17433
	movq	-48(%rbp), %rax	# __o1, tmp356
	movq	%rdx, 16(%rax)	# D.17433, __o1_139->object_base
	movq	-40(%rbp), %rax	# value, D.17438
.LBE62:
.LBE60:
	movq	%rax, %rdi	# D.17438,
	call	bitmap_initialize	#
	movq	%rax, entry_exit_blocks+176(%rip)	# D.17439, entry_exit_blocks[1].global_live_at_start
.LBB63:
	.loc 1 1474 0 is_stmt 1 discriminator 2
	movq	$flow_obstack, -32(%rbp)	#, __h
.LBB64:
	movq	-32(%rbp), %rax	# __h, tmp357
	movq	%rax, -24(%rbp)	# tmp357, __o
	movl	$24, -172(%rbp)	#, __len
	movq	-24(%rbp), %rax	# __o, tmp358
	movq	32(%rax), %rax	# __o_168->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-24(%rbp), %rax	# __o, tmp359
	movq	24(%rax), %rax	# __o_168->next_free, D.17433
	subq	%rax, %rdx	# D.17434, D.17434
	movl	-172(%rbp), %eax	# __len, tmp360
	cltq
	cmpq	%rax, %rdx	# D.17434, D.17434
	jge	.L314	#,
	.loc 1 1474 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %edx	# __len, tmp361
	movq	-24(%rbp), %rax	# __o, tmp362
	movl	%edx, %esi	# tmp361,
	movq	%rax, %rdi	# tmp362,
	call	_obstack_newchunk	#
.L314:
	.loc 1 1474 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp363
	movq	24(%rax), %rdx	# __o_168->next_free, D.17433
	movl	-172(%rbp), %eax	# __len, tmp364
	cltq
	addq	%rax, %rdx	# D.17435, D.17433
	movq	-24(%rbp), %rax	# __o, tmp365
	movq	%rdx, 24(%rax)	# D.17433, __o_168->next_free
.LBE64:
.LBB65:
	movq	-32(%rbp), %rax	# __h, tmp366
	movq	%rax, -16(%rbp)	# tmp366, __o1
	movq	-16(%rbp), %rax	# __o1, tmp367
	movq	16(%rax), %rax	# __o1_179->object_base, tmp368
	movq	%rax, -8(%rbp)	# tmp368, value
	movq	-16(%rbp), %rax	# __o1, tmp369
	movq	24(%rax), %rax	# __o1_179->next_free, D.17433
	cmpq	-8(%rbp), %rax	# value, D.17433
	jne	.L315	#,
	.loc 1 1474 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp370
	movzbl	80(%rax), %edx	# __o1_179->maybe_empty_object, tmp373
	orl	$2, %edx	#, tmp374
	movb	%dl, 80(%rax)	# tmp374, __o1_179->maybe_empty_object
.L315:
	.loc 1 1474 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp375
	movq	24(%rax), %rax	# __o1_179->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-16(%rbp), %rax	# __o1, tmp376
	movl	48(%rax), %eax	# __o1_179->alignment_mask, D.17436
	cltq
	addq	%rax, %rdx	# D.17434, D.17434
	movq	-16(%rbp), %rax	# __o1, tmp377
	movl	48(%rax), %eax	# __o1_179->alignment_mask, D.17436
	notl	%eax	# D.17436
	cltq
	andq	%rdx, %rax	# D.17434, D.17434
	movq	%rax, %rdx	# D.17434, D.17433
	movq	-16(%rbp), %rax	# __o1, tmp378
	movq	%rdx, 24(%rax)	# D.17433, __o1_179->next_free
	movq	-16(%rbp), %rax	# __o1, tmp379
	movq	24(%rax), %rax	# __o1_179->next_free, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-16(%rbp), %rax	# __o1, tmp380
	movq	8(%rax), %rax	# __o1_179->chunk, D.17437
	movq	%rdx, %rcx	# D.17434, D.17434
	subq	%rax, %rcx	# D.17434, D.17434
	movq	-16(%rbp), %rax	# __o1, tmp381
	movq	32(%rax), %rax	# __o1_179->chunk_limit, D.17433
	movq	%rax, %rdx	# D.17433, D.17434
	movq	-16(%rbp), %rax	# __o1, tmp382
	movq	8(%rax), %rax	# __o1_179->chunk, D.17437
	subq	%rax, %rdx	# D.17434, D.17434
	movq	%rdx, %rax	# D.17434, D.17434
	cmpq	%rax, %rcx	# D.17434, D.17434
	jle	.L316	#,
	.loc 1 1474 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp383
	movq	32(%rax), %rdx	# __o1_179->chunk_limit, D.17433
	movq	-16(%rbp), %rax	# __o1, tmp384
	movq	%rdx, 24(%rax)	# D.17433, __o1_179->next_free
.L316:
	.loc 1 1474 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp385
	movq	24(%rax), %rdx	# __o1_179->next_free, D.17433
	movq	-16(%rbp), %rax	# __o1, tmp386
	movq	%rdx, 16(%rax)	# D.17433, __o1_179->object_base
	movq	-8(%rbp), %rax	# value, D.17438
.LBE65:
.LBE63:
	movq	%rax, %rdi	# D.17438,
	call	bitmap_initialize	#
	movq	%rax, regs_live_at_setjmp(%rip)	# regs_live_at_setjmp.134, regs_live_at_setjmp
	.loc 1 1475 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	allocate_bb_life_data, .-allocate_bb_life_data
	.globl	allocate_reg_life_data
	.type	allocate_reg_life_data, @function
allocate_reg_life_data:
.LFB21:
	.loc 1 1479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1482 0
	call	max_reg_num	#
	movl	%eax, max_regno(%rip)	# max_regno.135, max_regno
	.loc 1 1486 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.136
	cltq
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17440,
	call	allocate_reg_info	#
	.loc 1 1490 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L318	#
.L319:
	.loc 1 1492 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.137
	movl	-4(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	addq	$4, %rdx	#, tmp77
	movq	(%rax,%rdx,8), %rax	# reg_n_info.137_7->data.reg, D.17441
	movl	$0, 12(%rax)	#, _8->sets
	.loc 1 1493 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.138
	movl	-4(%rbp), %edx	# i, tmp79
	movslq	%edx, %rdx	# tmp79, tmp78
	addq	$4, %rdx	#, tmp80
	movq	(%rax,%rdx,8), %rax	# reg_n_info.138_9->data.reg, D.17441
	movl	$0, 16(%rax)	#, _10->refs
	.loc 1 1494 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.139
	movl	-4(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, tmp81
	addq	$4, %rdx	#, tmp83
	movq	(%rax,%rdx,8), %rax	# reg_n_info.139_11->data.reg, D.17441
	movl	$0, 24(%rax)	#, _12->deaths
	.loc 1 1495 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.140
	movl	-4(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, tmp84
	addq	$4, %rdx	#, tmp86
	movq	(%rax,%rdx,8), %rax	# reg_n_info.140_13->data.reg, D.17441
	movl	$0, 32(%rax)	#, _14->calls_crossed
	.loc 1 1496 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.141
	movl	-4(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, tmp87
	addq	$4, %rdx	#, tmp89
	movq	(%rax,%rdx,8), %rax	# reg_n_info.141_15->data.reg, D.17441
	movl	$0, 28(%rax)	#, _16->live_length
	.loc 1 1497 0 discriminator 2
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.142
	movl	-4(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	addq	$4, %rdx	#, tmp92
	movq	(%rax,%rdx,8), %rax	# reg_n_info.142_17->data.reg, D.17441
	movl	$-1, 36(%rax)	#, _18->basic_block
	.loc 1 1490 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L318:
	.loc 1 1490 0 is_stmt 0 discriminator 1
	movl	max_regno(%rip), %eax	# max_regno, max_regno.143
	cmpl	%eax, -4(%rbp)	# max_regno.143, i
	jl	.L319	#,
	.loc 1 1499 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	allocate_reg_life_data, .-allocate_reg_life_data
	.type	propagate_block_delete_insn, @function
propagate_block_delete_insn:
.LFB22:
	.loc 1 1507 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# bb, bb
	movq	%rsi, -64(%rbp)	# insn, insn
	.loc 1 1508 0
	movq	-64(%rbp), %rax	# insn, tmp78
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	find_reg_note	#
	movq	%rax, -32(%rbp)	# tmp79, inote
	.loc 1 1509 0
	movb	$0, -45(%rbp)	#, purge
	.loc 1 1525 0
	cmpq	$0, -32(%rbp)	#, inote
	je	.L321	#,
	.loc 1 1525 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# inote, tmp80
	movzwl	(%rax), %eax	# inote_4->code, D.17442
	cmpw	$36, %ax	#, D.17442
	jne	.L321	#,
.LBB66:
	.loc 1 1527 0 is_stmt 1
	movq	-32(%rbp), %rax	# inote, tmp81
	movq	8(%rax), %rax	# inote_4->fld[0].rtx, tmp82
	movq	%rax, -24(%rbp)	# tmp82, label
	.loc 1 1533 0
	movq	-24(%rbp), %rax	# label, tmp83
	movl	32(%rax), %edx	# label_7->fld[3].rtint, D.17443
	movq	-24(%rbp), %rax	# label, tmp84
	movzbl	3(%rax), %eax	# *label_7, tmp87
	shrb	$4, %al	#, D.17444
	andl	$1, %eax	#, D.17444
	movzbl	%al, %eax	# D.17444, D.17443
	addl	$1, %eax	#, D.17443
	cmpl	%eax, %edx	# D.17443, D.17443
	jne	.L321	#,
	.loc 1 1534 0
	movq	-24(%rbp), %rax	# label, tmp88
	movq	%rax, %rdi	# tmp88,
	call	next_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp89, next
	cmpq	$0, -16(%rbp)	#, next
	je	.L321	#,
	.loc 1 1535 0
	movq	-16(%rbp), %rax	# next, tmp90
	movzwl	(%rax), %eax	# next_12->code, D.17442
	cmpw	$33, %ax	#, D.17442
	jne	.L321	#,
	.loc 1 1536 0
	movq	-16(%rbp), %rax	# next, tmp91
	movq	32(%rax), %rax	# next_12->fld[3].rtx, D.17445
	movzwl	(%rax), %eax	# _14->code, D.17442
	cmpw	$44, %ax	#, D.17442
	je	.L322	#,
	.loc 1 1537 0
	movq	-16(%rbp), %rax	# next, tmp92
	movq	32(%rax), %rax	# next_12->fld[3].rtx, D.17445
	movzwl	(%rax), %eax	# _16->code, D.17442
	cmpw	$45, %ax	#, D.17442
	jne	.L321	#,
.L322:
.LBB67:
	.loc 1 1539 0
	movq	-16(%rbp), %rax	# next, tmp93
	movq	32(%rax), %rax	# next_12->fld[3].rtx, tmp94
	movq	%rax, -8(%rbp)	# tmp94, pat
	.loc 1 1540 0
	movq	-8(%rbp), %rax	# pat, tmp95
	movzwl	(%rax), %eax	# pat_18->code, D.17442
	cmpw	$45, %ax	#, D.17442
	sete	%al	#, D.17446
	movzbl	%al, %eax	# D.17446, tmp96
	movl	%eax, -40(%rbp)	# tmp96, diff_vec_p
	.loc 1 1541 0
	movq	-8(%rbp), %rax	# pat, tmp97
	movl	-40(%rbp), %edx	# diff_vec_p, tmp99
	movslq	%edx, %rdx	# tmp99, tmp98
	movq	8(%rax,%rdx,8), %rax	# pat_18->fld[diff_vec_p_21].rtvec, D.17447
	movl	(%rax), %eax	# _22->num_elem, tmp100
	movl	%eax, -36(%rbp)	# tmp100, len
	.loc 1 1544 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L323	#
.L324:
	.loc 1 1545 0 discriminator 2
	movq	-8(%rbp), %rax	# pat, tmp101
	movl	-40(%rbp), %edx	# diff_vec_p, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# pat_18->fld[diff_vec_p_21].rtvec, D.17447
	movl	-44(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	movq	8(%rax,%rdx,8), %rax	# _25->elem, D.17445
	movq	8(%rax), %rax	# _26->fld[0].rtx, D.17445
	movl	32(%rax), %edx	# _27->fld[3].rtint, D.17443
	subl	$1, %edx	#, D.17443
	movl	%edx, 32(%rax)	# D.17443, _27->fld[3].rtint
	.loc 1 1544 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L323:
	.loc 1 1544 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp106
	cmpl	-36(%rbp), %eax	# len, tmp106
	jl	.L324	#,
	.loc 1 1547 0 is_stmt 1
	movq	-16(%rbp), %rax	# next, tmp107
	movq	%rax, %rdi	# tmp107,
	call	delete_insn	#
.L321:
.LBE67:
.LBE66:
	.loc 1 1551 0
	movq	-56(%rbp), %rax	# bb, tmp108
	movq	8(%rax), %rax	# bb_31(D)->end, D.17445
	cmpq	-64(%rbp), %rax	# insn, D.17445
	jne	.L325	#,
	.loc 1 1552 0
	movb	$1, -45(%rbp)	#, purge
.L325:
	.loc 1 1553 0
	movq	-64(%rbp), %rax	# insn, tmp109
	movq	%rax, %rdi	# tmp109,
	call	delete_insn	#
	.loc 1 1554 0
	cmpb	$0, -45(%rbp)	#, purge
	je	.L320	#,
	.loc 1 1555 0
	movq	-56(%rbp), %rax	# bb, tmp110
	movq	%rax, %rdi	# tmp110,
	call	purge_dead_edges	#
.L320:
	.loc 1 1556 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	propagate_block_delete_insn, .-propagate_block_delete_insn
	.type	propagate_block_delete_libcall, @function
propagate_block_delete_libcall:
.LFB23:
	.loc 1 1564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# note, note
	.loc 1 1565 0
	movq	-32(%rbp), %rax	# note, tmp61
	movq	8(%rax), %rax	# note_1(D)->fld[0].rtx, tmp62
	movq	%rax, -16(%rbp)	# tmp62, first
	.loc 1 1566 0
	movq	-16(%rbp), %rax	# first, tmp63
	movq	16(%rax), %rax	# first_2->fld[1].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, before
	.loc 1 1568 0
	movq	-24(%rbp), %rdx	# insn, tmp65
	movq	-16(%rbp), %rax	# first, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	delete_insn_chain	#
	.loc 1 1569 0
	movq	-8(%rbp), %rax	# before, D.17448
	.loc 1 1570 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	propagate_block_delete_libcall, .-propagate_block_delete_libcall
	.section	.rodata
	.align 8
.LC8:
	.string	"Attempt to delete prologue/epilogue insn:"
	.text
	.globl	propagate_one_insn
	.type	propagate_one_insn, @function
propagate_one_insn:
.LFB24:
	.loc 1 1578 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# pbi, pbi
	movq	%rsi, -192(%rbp)	# insn, insn
	.loc 1 1579 0
	movq	-192(%rbp), %rax	# insn, tmp169
	movq	16(%rax), %rax	# insn_35(D)->fld[1].rtx, tmp170
	movq	%rax, -120(%rbp)	# tmp170, prev
	.loc 1 1580 0
	movq	-184(%rbp), %rax	# pbi, tmp171
	movl	64(%rax), %eax	# pbi_37(D)->flags, tmp172
	movl	%eax, -136(%rbp)	# tmp172, flags
	.loc 1 1581 0
	movl	$0, -168(%rbp)	#, insn_is_dead
	.loc 1 1582 0
	movl	$0, -164(%rbp)	#, libcall_is_dead
	.loc 1 1586 0
	movq	-192(%rbp), %rax	# insn, tmp173
	movzwl	(%rax), %eax	# insn_35(D)->code, D.17450
	movzwl	%ax, %eax	# D.17450, D.17451
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17452
	cmpb	$105, %al	#, D.17452
	je	.L330	#,
	.loc 1 1587 0
	movq	-120(%rbp), %rax	# prev, D.17449
	jmp	.L331	#
.L330:
	.loc 1 1589 0
	movq	-192(%rbp), %rax	# insn, tmp175
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp175,
	call	find_reg_note	#
	movq	%rax, -40(%rbp)	# tmp176, note
	.loc 1 1590 0
	movl	-136(%rbp), %eax	# flags, tmp177
	andl	$16, %eax	#, D.17451
	testl	%eax, %eax	# D.17451
	je	.L332	#,
	.loc 1 1592 0
	movq	-192(%rbp), %rax	# insn, tmp178
	movq	56(%rax), %rdx	# insn_35(D)->fld[6].rtx, D.17453
	movq	-192(%rbp), %rax	# insn, tmp179
	movq	32(%rax), %rsi	# insn_35(D)->fld[3].rtx, D.17453
	movq	-184(%rbp), %rax	# pbi, tmp180
	movq	%rdx, %rcx	# D.17453,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp180,
	call	insn_dead_p	#
	movl	%eax, -168(%rbp)	# tmp181, insn_is_dead
	.loc 1 1594 0
	cmpl	$0, -168(%rbp)	#, insn_is_dead
	je	.L333	#,
	.loc 1 1593 0
	cmpq	$0, -40(%rbp)	#, note
	je	.L333	#,
	.loc 1 1594 0
	movq	-192(%rbp), %rdx	# insn, tmp182
	movq	-40(%rbp), %rcx	# note, tmp183
	movq	-184(%rbp), %rax	# pbi, tmp184
	movq	%rcx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	libcall_dead_p	#
	testl	%eax, %eax	# D.17451
	je	.L333	#,
	.loc 1 1594 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.144
	jmp	.L334	#
.L333:
	.loc 1 1594 0 discriminator 1
	movl	$0, %eax	#, iftmp.144
.L334:
	.loc 1 1593 0 is_stmt 1
	movl	%eax, -164(%rbp)	# iftmp.144, libcall_is_dead
.L332:
	.loc 1 1599 0
	movl	-136(%rbp), %eax	# flags, tmp185
	andl	$8, %eax	#, D.17451
	testl	%eax, %eax	# D.17451
	je	.L335	#,
	.loc 1 1599 0 is_stmt 0 discriminator 1
	cmpl	$0, -168(%rbp)	#, insn_is_dead
	je	.L335	#,
	.loc 1 1606 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.145
	testl	%eax, %eax	# reload_completed.145
	je	.L336	#,
	.loc 1 1607 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.146
	movq	8(%rax), %rax	# current_function_decl.146_56->common.type, D.17454
	movzbl	16(%rax), %eax	# _57->common.code, D.17455
	cmpb	$23, %al	#, D.17455
	jne	.L337	#,
	.loc 1 1608 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.147
	movq	8(%rax), %rax	# current_function_decl.147_59->common.type, D.17454
	movzbl	62(%rax), %eax	# *_60, D.17455
	andl	$2, %eax	#, D.17455
	.loc 1 1607 0 discriminator 1
	testb	%al, %al	# D.17455
	jne	.L336	#,
.L337:
	.loc 1 1611 0
	movq	-192(%rbp), %rax	# insn, tmp186
	movq	%rax, %rdi	# tmp186,
	call	prologue_epilogue_contains	#
	.loc 1 1610 0
	testl	%eax, %eax	# D.17451
	jne	.L338	#,
	.loc 1 1613 0
	movq	-192(%rbp), %rax	# insn, tmp187
	movq	%rax, %rdi	# tmp187,
	call	sibcall_epilogue_contains	#
	.loc 1 1612 0
	testl	%eax, %eax	# D.17451
	je	.L336	#,
.L338:
	.loc 1 1614 0
	movq	-192(%rbp), %rax	# insn, tmp188
	movl	$0, %edx	#,
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	find_reg_note	#
	testq	%rax, %rax	# D.17453
	jne	.L336	#,
	.loc 1 1615 0
	movq	-192(%rbp), %rax	# insn, tmp189
	movl	$__FUNCTION__.13948, %r8d	#,
	movl	$1615, %ecx	#,
	movl	$.LC3, %edx	#,
	movq	%rax, %rsi	# tmp189,
	movl	$.LC8, %edi	#,
	call	_fatal_insn	#
.L336:
	.loc 1 1619 0
	movq	-192(%rbp), %rax	# insn, tmp190
	movq	32(%rax), %rcx	# insn_35(D)->fld[3].rtx, D.17453
	movq	-192(%rbp), %rdx	# insn, tmp191
	movq	-184(%rbp), %rax	# pbi, tmp192
	movq	%rcx, %rsi	# D.17453,
	movq	%rax, %rdi	# tmp192,
	call	mark_set_regs	#
	.loc 1 1624 0
	movq	-184(%rbp), %rax	# pbi, tmp193
	movl	$0, 60(%rax)	#, pbi_37(D)->cc0_live
	.loc 1 1626 0
	cmpl	$0, -164(%rbp)	#, libcall_is_dead
	je	.L339	#,
	.loc 1 1627 0
	movq	-40(%rbp), %rdx	# note, tmp194
	movq	-192(%rbp), %rax	# insn, tmp195
	movq	%rdx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	propagate_block_delete_libcall	#
	movq	%rax, -120(%rbp)	# tmp196, prev
	jmp	.L340	#
.L339:
	.loc 1 1629 0
	movq	-184(%rbp), %rax	# pbi, tmp197
	movq	(%rax), %rax	# pbi_37(D)->bb, D.17456
	movq	-192(%rbp), %rdx	# insn, tmp198
	movq	%rdx, %rsi	# tmp198,
	movq	%rax, %rdi	# D.17456,
	call	propagate_block_delete_insn	#
.L340:
	.loc 1 1631 0
	movq	-120(%rbp), %rax	# prev, D.17449
	jmp	.L331	#
.L335:
	.loc 1 1657 0
	movq	-184(%rbp), %rax	# pbi, tmp199
	movq	16(%rax), %rax	# pbi_37(D)->new_set, D.17457
	movq	%rax, %rdi	# D.17457,
	call	bitmap_clear	#
	.loc 1 1662 0
	cmpl	$0, -164(%rbp)	#, libcall_is_dead
	je	.L341	#,
	.loc 1 1665 0
	movq	-192(%rbp), %rax	# insn, tmp200
	movq	32(%rax), %rcx	# insn_35(D)->fld[3].rtx, D.17453
	movq	-192(%rbp), %rdx	# insn, tmp201
	movq	-184(%rbp), %rax	# pbi, tmp202
	movq	%rcx, %rsi	# D.17453,
	movq	%rax, %rdi	# tmp202,
	call	mark_set_regs	#
	.loc 1 1667 0
	movq	-40(%rbp), %rax	# note, tmp203
	movq	8(%rax), %rax	# note_45->fld[0].rtx, tmp204
	movq	%rax, -192(%rbp)	# tmp204, insn
	.loc 1 1668 0
	movq	-192(%rbp), %rax	# insn, tmp205
	movq	16(%rax), %rax	# insn_72->fld[1].rtx, D.17449
	jmp	.L331	#
.L341:
	.loc 1 1670 0
	movq	-192(%rbp), %rax	# insn, tmp206
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movzwl	(%rax), %eax	# _74->code, D.17450
	cmpw	$47, %ax	#, D.17450
	jne	.L342	#,
	.loc 1 1671 0
	movq	-192(%rbp), %rax	# insn, tmp207
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	8(%rax), %rdx	# _76->fld[0].rtx, D.17453
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17453
	cmpq	%rax, %rdx	# D.17453, D.17453
	jne	.L342	#,
	.loc 1 1672 0
	movq	-192(%rbp), %rax	# insn, tmp208
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	16(%rax), %rax	# _79->fld[1].rtx, D.17453
	movzwl	(%rax), %eax	# _80->code, D.17450
	cmpw	$75, %ax	#, D.17450
	jne	.L342	#,
	.loc 1 1673 0
	movq	-192(%rbp), %rax	# insn, tmp209
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	16(%rax), %rax	# _82->fld[1].rtx, D.17453
	movq	8(%rax), %rdx	# _83->fld[0].rtx, D.17453
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17453
	cmpq	%rax, %rdx	# D.17453, D.17453
	jne	.L342	#,
	.loc 1 1674 0
	movq	-192(%rbp), %rax	# insn, tmp210
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	16(%rax), %rax	# _86->fld[1].rtx, D.17453
	movq	16(%rax), %rax	# _87->fld[1].rtx, D.17453
	movzwl	(%rax), %eax	# _88->code, D.17450
	cmpw	$54, %ax	#, D.17450
	jne	.L342	#,
	.loc 1 1674 0 is_stmt 0 discriminator 1
	jmp	.L343	#
.L342:
.LBB68:
	.loc 1 1687 0 is_stmt 1
	movq	-192(%rbp), %rax	# insn, tmp211
	movzwl	(%rax), %eax	# insn_35(D)->code, D.17450
	cmpw	$34, %ax	#, D.17450
	jne	.L344	#,
	.loc 1 1687 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# flags, tmp212
	andl	$4, %eax	#, D.17451
	testl	%eax, %eax	# D.17451
	je	.L344	#,
.LBB69:
	.loc 1 1688 0 is_stmt 1
	movq	-184(%rbp), %rax	# pbi, tmp213
	movq	8(%rax), %rax	# pbi_37(D)->reg_live, D.17457
	movq	(%rax), %rax	# _92->first, tmp214
	movq	%rax, -104(%rbp)	# tmp214, ptr_
	movl	$0, -132(%rbp)	#, indx_
	movl	$0, -160(%rbp)	#, bit_num_
	movl	$0, -156(%rbp)	#, word_num_
	jmp	.L345	#
.L347:
	.loc 1 1688 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# ptr_, tmp215
	movq	(%rax), %rax	# ptr__5->next, tmp216
	movq	%rax, -104(%rbp)	# tmp216, ptr_
.L345:
	cmpq	$0, -104(%rbp)	#, ptr_
	je	.L346	#,
	.loc 1 1688 0 discriminator 2
	movq	-104(%rbp), %rax	# ptr_, tmp217
	movl	16(%rax), %eax	# ptr__5->indx, D.17458
	cmpl	-132(%rbp), %eax	# indx_, D.17458
	jb	.L347	#,
.L346:
	.loc 1 1688 0 discriminator 3
	cmpq	$0, -104(%rbp)	#, ptr_
	je	.L348	#,
	.loc 1 1688 0 discriminator 1
	movq	-104(%rbp), %rax	# ptr_, tmp218
	movl	16(%rax), %eax	# ptr__5->indx, D.17458
	cmpl	-132(%rbp), %eax	# indx_, D.17458
	je	.L348	#,
	movl	$0, -160(%rbp)	#, bit_num_
	movl	$0, -156(%rbp)	#, word_num_
	jmp	.L349	#
.L348:
	.loc 1 1688 0 discriminator 2
	jmp	.L349	#
.L356:
	.loc 1 1688 0
	jmp	.L350	#
.L355:
.LBB70:
	.loc 1 1688 0 discriminator 2
	movq	-104(%rbp), %rax	# ptr_, tmp219
	movl	-156(%rbp), %edx	# word_num_, tmp220
	addq	$2, %rdx	#, tmp221
	movq	8(%rax,%rdx,8), %rax	# ptr__6->bits, tmp222
	movq	%rax, -96(%rbp)	# tmp222, word_
	cmpq	$0, -96(%rbp)	#, word_
	je	.L351	#,
	.loc 1 1688 0 discriminator 1
	jmp	.L352	#
.L354:
.LBB71:
	.loc 1 1688 0 discriminator 2
	movl	-160(%rbp), %eax	# bit_num_, bit_num_.148
	movl	$1, %edx	#, tmp223
	movl	%eax, %ecx	# bit_num_.148, tmp324
	salq	%cl, %rdx	# tmp324, tmp224
	movq	%rdx, %rax	# tmp224, tmp224
	movq	%rax, -32(%rbp)	# tmp224, mask_
	movq	-32(%rbp), %rax	# mask_, tmp225
	movq	-96(%rbp), %rdx	# word_, tmp226
	andq	%rdx, %rax	# tmp226, D.17459
	testq	%rax, %rax	# D.17459
	je	.L353	#,
	.loc 1 1688 0 discriminator 1
	movq	-32(%rbp), %rax	# mask_, tmp227
	notq	%rax	# D.17459
	andq	%rax, -96(%rbp)	# D.17459, word_
	movq	-104(%rbp), %rax	# ptr_, tmp228
	movl	16(%rax), %eax	# ptr__6->indx, D.17458
	leal	(%rax,%rax), %edx	#, D.17458
	movl	-156(%rbp), %eax	# word_num_, tmp229
	addl	%edx, %eax	# D.17458, D.17458
	sall	$6, %eax	#, D.17458
	movl	%eax, %edx	# D.17458, D.17458
	movl	-160(%rbp), %eax	# bit_num_, tmp230
	addl	%edx, %eax	# D.17458, D.17458
	movl	%eax, -128(%rbp)	# D.17458, i
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.149
	movl	-128(%rbp), %edx	# i, tmp232
	movslq	%edx, %rdx	# tmp232, tmp231
	addq	$4, %rdx	#, tmp233
	movq	(%rax,%rdx,8), %rax	# reg_n_info.149_114->data.reg, D.17460
	movl	32(%rax), %edx	# _115->calls_crossed, D.17451
	addl	$1, %edx	#, D.17451
	movl	%edx, 32(%rax)	# D.17451, _115->calls_crossed
	cmpq	$0, -96(%rbp)	#, word_
	jne	.L353	#,
	jmp	.L351	#
.L353:
.LBE71:
	.loc 1 1688 0 discriminator 2
	addl	$1, -160(%rbp)	#, bit_num_
.L352:
	.loc 1 1688 0 discriminator 1
	cmpl	$63, -160(%rbp)	#, bit_num_
	jbe	.L354	#,
.L351:
	.loc 1 1688 0 discriminator 2
	movl	$0, -160(%rbp)	#, bit_num_
.LBE70:
	addl	$1, -156(%rbp)	#, word_num_
.L350:
	.loc 1 1688 0 discriminator 1
	cmpl	$1, -156(%rbp)	#, word_num_
	jbe	.L355	#,
	.loc 1 1688 0 discriminator 3
	movl	$0, -156(%rbp)	#, word_num_
	movq	-104(%rbp), %rax	# ptr_, tmp234
	movq	(%rax), %rax	# ptr__6->next, tmp235
	movq	%rax, -104(%rbp)	# tmp235, ptr_
.L349:
	.loc 1 1688 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, ptr_
	jne	.L356	#,
.L344:
.LBE69:
	.loc 1 1693 0 is_stmt 1
	movq	-192(%rbp), %rax	# insn, tmp236
	movq	32(%rax), %rcx	# insn_35(D)->fld[3].rtx, D.17453
	movq	-192(%rbp), %rdx	# insn, tmp237
	movq	-184(%rbp), %rax	# pbi, tmp238
	movq	%rcx, %rsi	# D.17453,
	movq	%rax, %rdi	# tmp238,
	call	mark_set_regs	#
	.loc 1 1695 0
	movq	-192(%rbp), %rax	# insn, tmp239
	movzwl	(%rax), %eax	# insn_35(D)->code, D.17450
	cmpw	$34, %ax	#, D.17450
	jne	.L357	#,
.LBB72:
	.loc 1 1700 0
	movq	$0, -80(%rbp)	#, cond
	.loc 1 1701 0
	movq	-192(%rbp), %rax	# insn, tmp240
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movzwl	(%rax), %eax	# _126->code, D.17450
	cmpw	$38, %ax	#, D.17450
	jne	.L358	#,
	.loc 1 1702 0
	movq	-192(%rbp), %rax	# insn, tmp241
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	8(%rax), %rax	# _128->fld[0].rtx, tmp242
	movq	%rax, -80(%rbp)	# tmp242, cond
.L358:
	.loc 1 1705 0
	movq	-192(%rbp), %rax	# insn, tmp243
	movzbl	3(%rax), %eax	# *insn_35(D), D.17455
	andl	$4, %eax	#, D.17455
	testb	%al, %al	# D.17455
	jne	.L359	#,
	.loc 1 1707 0
	movq	-184(%rbp), %rax	# pbi, tmp244
	addq	$32, %rax	#, D.17461
	movq	%rax, %rdi	# D.17461,
	call	free_EXPR_LIST_list	#
	.loc 1 1708 0
	movq	-184(%rbp), %rax	# pbi, tmp245
	movl	$0, 56(%rax)	#, pbi_37(D)->mem_set_list_len
.L359:
	.loc 1 1712 0
	movq	-192(%rbp), %rax	# insn, tmp246
	movq	64(%rax), %rax	# insn_35(D)->fld[7].rtx, tmp247
	movq	%rax, -88(%rbp)	# tmp247, note
	jmp	.L360	#
.L362:
	.loc 1 1715 0
	movq	-88(%rbp), %rax	# note, tmp248
	movq	8(%rax), %rax	# note_17->fld[0].rtx, D.17453
	movzwl	(%rax), %eax	# _134->code, D.17450
	cmpw	$49, %ax	#, D.17450
	jne	.L361	#,
	.loc 1 1716 0
	movq	-184(%rbp), %rax	# pbi, tmp249
	movl	64(%rax), %edi	# pbi_37(D)->flags, D.17451
	movq	-88(%rbp), %rax	# note, tmp250
	movq	8(%rax), %rax	# note_17->fld[0].rtx, D.17453
	movq	8(%rax), %rdx	# _137->fld[0].rtx, D.17453
	movq	-192(%rbp), %rsi	# insn, tmp251
	movq	-80(%rbp), %rcx	# cond, tmp252
	movq	-184(%rbp), %rax	# pbi, tmp253
	movl	%edi, %r9d	# D.17451,
	movq	%rsi, %r8	# tmp251,
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	mark_set_1	#
.L361:
	.loc 1 1714 0
	movq	-88(%rbp), %rax	# note, tmp254
	movq	16(%rax), %rax	# note_17->fld[1].rtx, tmp255
	movq	%rax, -88(%rbp)	# tmp255, note
.L360:
	.loc 1 1712 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, note
	jne	.L362	#,
	.loc 1 1720 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L363	#
.L365:
	.loc 1 1721 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.150
	movl	-152(%rbp), %eax	# i, tmp256
	movl	%eax, %ecx	# tmp256, tmp327
	shrq	%cl, %rdx	# tmp327, D.17459
	movq	%rdx, %rax	# D.17459, D.17459
	andl	$1, %eax	#, D.17459
	testq	%rax, %rax	# D.17459
	je	.L364	#,
	.loc 1 1726 0
	movq	-184(%rbp), %rax	# pbi, tmp257
	movl	64(%rax), %eax	# pbi_37(D)->flags, D.17451
	.loc 1 1724 0
	andl	$-6, %eax	#, D.17451
	movl	%eax, %ebx	# D.17451, D.17451
	movl	-152(%rbp), %eax	# i, tmp259
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.17462
	movl	-152(%rbp), %edx	# i, tmp260
	movl	%edx, %esi	# tmp260,
	movl	%eax, %edi	# D.17462,
	call	gen_rtx_REG	#
	movq	%rax, %rdx	#, D.17453
	movq	-192(%rbp), %rsi	# insn, tmp261
	movq	-80(%rbp), %rcx	# cond, tmp262
	movq	-184(%rbp), %rax	# pbi, tmp263
	movl	%ebx, %r9d	# D.17451,
	movq	%rsi, %r8	# tmp261,
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	mark_set_1	#
.L364:
	.loc 1 1720 0
	addl	$1, -152(%rbp)	#, i
.L363:
	.loc 1 1720 0 is_stmt 0 discriminator 1
	cmpl	$52, -152(%rbp)	#, i
	jle	.L365	#,
.L357:
.LBE72:
	.loc 1 1733 0 is_stmt 1
	movq	-184(%rbp), %rax	# pbi, tmp264
	movl	$0, 60(%rax)	#, pbi_37(D)->cc0_live
	.loc 1 1736 0
	cmpl	$0, -168(%rbp)	#, insn_is_dead
	jne	.L366	#,
	.loc 1 1737 0
	movq	-192(%rbp), %rax	# insn, tmp265
	movq	32(%rax), %rsi	# insn_35(D)->fld[3].rtx, D.17453
	movq	-192(%rbp), %rdx	# insn, tmp266
	movq	-184(%rbp), %rax	# pbi, tmp267
	movq	%rdx, %rcx	# tmp266,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp267,
	call	mark_used_regs	#
.L366:
	.loc 1 1738 0
	movl	-136(%rbp), %eax	# flags, tmp268
	andl	$128, %eax	#, D.17451
	testl	%eax, %eax	# D.17451
	je	.L367	#,
	.loc 1 1739 0
	movq	-192(%rbp), %rax	# insn, tmp269
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	find_reg_note	#
	movq	%rax, -112(%rbp)	# tmp270, note
	cmpq	$0, -112(%rbp)	#, note
	jne	.L368	#,
	.loc 1 1740 0
	movq	-192(%rbp), %rax	# insn, tmp271
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp271,
	call	find_reg_note	#
	movq	%rax, -112(%rbp)	# tmp272, note
	cmpq	$0, -112(%rbp)	#, note
	je	.L367	#,
.L368:
	.loc 1 1741 0
	movq	-112(%rbp), %rax	# note, tmp273
	movq	8(%rax), %rsi	# note_4->fld[0].rtx, D.17453
	movq	-192(%rbp), %rdx	# insn, tmp274
	movq	-184(%rbp), %rax	# pbi, tmp275
	movq	%rdx, %rcx	# tmp274,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp275,
	call	mark_used_regs	#
.L367:
	.loc 1 1749 0
	cmpl	$0, -168(%rbp)	#, insn_is_dead
	jne	.L343	#,
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# insn, tmp276
	movzwl	(%rax), %eax	# insn_35(D)->code, D.17450
	cmpw	$34, %ax	#, D.17450
	jne	.L343	#,
.LBB73:
	.loc 1 1754 0 is_stmt 1
	movq	$0, -64(%rbp)	#, cond
	.loc 1 1755 0
	movq	-192(%rbp), %rax	# insn, tmp277
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movzwl	(%rax), %eax	# _156->code, D.17450
	cmpw	$38, %ax	#, D.17450
	jne	.L369	#,
	.loc 1 1756 0
	movq	-192(%rbp), %rax	# insn, tmp278
	movq	32(%rax), %rax	# insn_35(D)->fld[3].rtx, D.17453
	movq	8(%rax), %rax	# _158->fld[0].rtx, tmp279
	movq	%rax, -64(%rbp)	# tmp279, cond
.L369:
	.loc 1 1759 0
	movq	-192(%rbp), %rax	# insn, tmp280
	movq	64(%rax), %rax	# insn_35(D)->fld[7].rtx, tmp281
	movq	%rax, -72(%rbp)	# tmp281, note
	jmp	.L370	#
.L372:
	.loc 1 1762 0
	movq	-72(%rbp), %rax	# note, tmp282
	movq	8(%rax), %rax	# note_20->fld[0].rtx, D.17453
	movzwl	(%rax), %eax	# _161->code, D.17450
	cmpw	$48, %ax	#, D.17450
	jne	.L371	#,
	.loc 1 1763 0
	movq	-72(%rbp), %rax	# note, tmp283
	movq	8(%rax), %rax	# note_20->fld[0].rtx, D.17453
	movq	8(%rax), %rsi	# _163->fld[0].rtx, D.17453
	movq	-192(%rbp), %rcx	# insn, tmp284
	movq	-64(%rbp), %rdx	# cond, tmp285
	movq	-184(%rbp), %rax	# pbi, tmp286
	movq	%rax, %rdi	# tmp286,
	call	mark_used_regs	#
.L371:
	.loc 1 1761 0
	movq	-72(%rbp), %rax	# note, tmp287
	movq	16(%rax), %rax	# note_20->fld[1].rtx, tmp288
	movq	%rax, -72(%rbp)	# tmp288, note
.L370:
	.loc 1 1759 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, note
	jne	.L372	#,
	.loc 1 1767 0
	movq	-184(%rbp), %rax	# pbi, tmp289
	movq	8(%rax), %rax	# pbi_37(D)->reg_live, D.17457
	movl	$7, %esi	#,
	movq	%rax, %rdi	# D.17457,
	call	bitmap_set_bit	#
	.loc 1 1771 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L373	#
.L375:
	.loc 1 1772 0
	movl	-148(%rbp), %eax	# i, tmp291
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.17452
	testb	%al, %al	# D.17452
	je	.L374	#,
	.loc 1 1773 0
	movl	-148(%rbp), %eax	# i, tmp293
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.17462
	movl	-148(%rbp), %edx	# i, tmp294
	movl	%edx, %esi	# tmp294,
	movl	%eax, %edi	# D.17462,
	call	gen_rtx_REG	#
	movq	%rax, %rsi	#, D.17453
	movq	-192(%rbp), %rcx	# insn, tmp295
	movq	-64(%rbp), %rdx	# cond, tmp296
	movq	-184(%rbp), %rax	# pbi, tmp297
	movq	%rax, %rdi	# tmp297,
	call	mark_used_reg	#
.L374:
	.loc 1 1771 0
	addl	$1, -148(%rbp)	#, i
.L373:
	.loc 1 1771 0 is_stmt 0 discriminator 1
	cmpl	$52, -148(%rbp)	#, i
	jle	.L375	#,
.L343:
.LBE73:
.LBE68:
	.loc 1 1780 0 is_stmt 1
	movl	-136(%rbp), %eax	# flags, tmp298
	andl	$4, %eax	#, D.17451
	testl	%eax, %eax	# D.17451
	je	.L376	#,
.LBB74:
	.loc 1 1781 0
	movq	-184(%rbp), %rax	# pbi, tmp299
	movq	8(%rax), %rax	# pbi_37(D)->reg_live, D.17457
	movq	(%rax), %rax	# _173->first, tmp300
	movq	%rax, -56(%rbp)	# tmp300, ptr_
	movl	$0, -124(%rbp)	#, indx_
	movl	$0, -144(%rbp)	#, bit_num_
	movl	$0, -140(%rbp)	#, word_num_
	jmp	.L377	#
.L379:
	.loc 1 1781 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp301
	movq	(%rax), %rax	# ptr__22->next, tmp302
	movq	%rax, -56(%rbp)	# tmp302, ptr_
.L377:
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L378	#,
	.loc 1 1781 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp303
	movl	16(%rax), %eax	# ptr__22->indx, D.17458
	cmpl	-124(%rbp), %eax	# indx_, D.17458
	jb	.L379	#,
.L378:
	.loc 1 1781 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, ptr_
	je	.L380	#,
	.loc 1 1781 0 discriminator 1
	movq	-56(%rbp), %rax	# ptr_, tmp304
	movl	16(%rax), %eax	# ptr__22->indx, D.17458
	cmpl	-124(%rbp), %eax	# indx_, D.17458
	je	.L380	#,
	movl	$0, -144(%rbp)	#, bit_num_
	movl	$0, -140(%rbp)	#, word_num_
	jmp	.L381	#
.L380:
	.loc 1 1781 0 discriminator 2
	jmp	.L381	#
.L388:
	.loc 1 1781 0
	jmp	.L382	#
.L387:
.LBB75:
	.loc 1 1781 0 discriminator 2
	movq	-56(%rbp), %rax	# ptr_, tmp305
	movl	-140(%rbp), %edx	# word_num_, tmp306
	addq	$2, %rdx	#, tmp307
	movq	8(%rax,%rdx,8), %rax	# ptr__23->bits, tmp308
	movq	%rax, -48(%rbp)	# tmp308, word_
	cmpq	$0, -48(%rbp)	#, word_
	je	.L383	#,
	.loc 1 1781 0 discriminator 1
	jmp	.L384	#
.L386:
.LBB76:
	.loc 1 1781 0 discriminator 2
	movl	-144(%rbp), %eax	# bit_num_, bit_num_.151
	movl	$1, %edx	#, tmp309
	movl	%eax, %ecx	# bit_num_.151, tmp330
	salq	%cl, %rdx	# tmp330, tmp310
	movq	%rdx, %rax	# tmp310, tmp310
	movq	%rax, -24(%rbp)	# tmp310, mask_
	movq	-24(%rbp), %rax	# mask_, tmp311
	movq	-48(%rbp), %rdx	# word_, tmp312
	andq	%rdx, %rax	# tmp312, D.17459
	testq	%rax, %rax	# D.17459
	je	.L385	#,
	.loc 1 1781 0 discriminator 1
	movq	-24(%rbp), %rax	# mask_, tmp313
	notq	%rax	# D.17459
	andq	%rax, -48(%rbp)	# D.17459, word_
	movq	-56(%rbp), %rax	# ptr_, tmp314
	movl	16(%rax), %eax	# ptr__23->indx, D.17458
	leal	(%rax,%rax), %edx	#, D.17458
	movl	-140(%rbp), %eax	# word_num_, tmp315
	addl	%edx, %eax	# D.17458, D.17458
	sall	$6, %eax	#, D.17458
	movl	%eax, %edx	# D.17458, D.17458
	movl	-144(%rbp), %eax	# bit_num_, tmp316
	addl	%edx, %eax	# D.17458, D.17458
	movl	%eax, -128(%rbp)	# D.17458, i
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.152
	movl	-128(%rbp), %edx	# i, tmp318
	movslq	%edx, %rdx	# tmp318, tmp317
	addq	$4, %rdx	#, tmp319
	movq	(%rax,%rdx,8), %rax	# reg_n_info.152_195->data.reg, D.17460
	movl	28(%rax), %edx	# _196->live_length, D.17451
	addl	$1, %edx	#, D.17451
	movl	%edx, 28(%rax)	# D.17451, _196->live_length
	cmpq	$0, -48(%rbp)	#, word_
	jne	.L385	#,
	jmp	.L383	#
.L385:
.LBE76:
	.loc 1 1781 0 discriminator 2
	addl	$1, -144(%rbp)	#, bit_num_
.L384:
	.loc 1 1781 0 discriminator 1
	cmpl	$63, -144(%rbp)	#, bit_num_
	jbe	.L386	#,
.L383:
	.loc 1 1781 0 discriminator 2
	movl	$0, -144(%rbp)	#, bit_num_
.LBE75:
	addl	$1, -140(%rbp)	#, word_num_
.L382:
	.loc 1 1781 0 discriminator 1
	cmpl	$1, -140(%rbp)	#, word_num_
	jbe	.L387	#,
	.loc 1 1781 0 discriminator 3
	movl	$0, -140(%rbp)	#, word_num_
	movq	-56(%rbp), %rax	# ptr_, tmp320
	movq	(%rax), %rax	# ptr__23->next, tmp321
	movq	%rax, -56(%rbp)	# tmp321, ptr_
.L381:
	.loc 1 1781 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, ptr_
	jne	.L388	#,
.L376:
.LBE74:
	.loc 1 1784 0 is_stmt 1
	movq	-120(%rbp), %rax	# prev, D.17449
.L331:
	.loc 1 1785 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	propagate_one_insn, .-propagate_one_insn
	.globl	init_propagate_block_info
	.type	init_propagate_block_info, @function
init_propagate_block_info:
.LFB25:
	.loc 1 1796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# bb, bb
	movq	%rsi, -64(%rbp)	# live, live
	movq	%rdx, -72(%rbp)	# local_set, local_set
	movq	%rcx, -80(%rbp)	# cond_local_set, cond_local_set
	movl	%r8d, -84(%rbp)	# flags, flags
	.loc 1 1797 0
	movl	$72, %edi	#,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp108, pbi
	.loc 1 1799 0
	movq	-32(%rbp), %rax	# pbi, tmp109
	movq	-56(%rbp), %rdx	# bb, tmp110
	movq	%rdx, (%rax)	# tmp110, pbi_4->bb
	.loc 1 1800 0
	movq	-32(%rbp), %rax	# pbi, tmp111
	movq	-64(%rbp), %rdx	# live, tmp112
	movq	%rdx, 8(%rax)	# tmp112, pbi_4->reg_live
	.loc 1 1801 0
	movq	-32(%rbp), %rax	# pbi, tmp113
	movq	$0, 32(%rax)	#, pbi_4->mem_set_list
	.loc 1 1802 0
	movq	-32(%rbp), %rax	# pbi, tmp114
	movl	$0, 56(%rax)	#, pbi_4->mem_set_list_len
	.loc 1 1803 0
	movq	-32(%rbp), %rax	# pbi, tmp115
	movq	-72(%rbp), %rdx	# local_set, tmp116
	movq	%rdx, 40(%rax)	# tmp116, pbi_4->local_set
	.loc 1 1804 0
	movq	-32(%rbp), %rax	# pbi, tmp117
	movq	-80(%rbp), %rdx	# cond_local_set, tmp118
	movq	%rdx, 48(%rax)	# tmp118, pbi_4->cond_local_set
	.loc 1 1805 0
	movq	-32(%rbp), %rax	# pbi, tmp119
	movl	$0, 60(%rax)	#, pbi_4->cc0_live
	.loc 1 1806 0
	movq	-32(%rbp), %rax	# pbi, tmp120
	movl	-84(%rbp), %edx	# flags, tmp121
	movl	%edx, 64(%rax)	# tmp121, pbi_4->flags
	.loc 1 1808 0
	movl	-84(%rbp), %eax	# flags, tmp122
	andl	$66, %eax	#, D.17464
	testl	%eax, %eax	# D.17464
	je	.L390	#,
	.loc 1 1809 0
	call	max_reg_num	#
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.17465,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp123, D.17466
	movq	-32(%rbp), %rax	# pbi, tmp124
	movq	%rdx, 24(%rax)	# D.17466, pbi_4->reg_next_use
	jmp	.L391	#
.L390:
	.loc 1 1811 0
	movq	-32(%rbp), %rax	# pbi, tmp125
	movq	$0, 24(%rax)	#, pbi_4->reg_next_use
.L391:
	.loc 1 1813 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.17466,
	call	bitmap_initialize	#
	movq	-32(%rbp), %rdx	# pbi, tmp127
	movq	%rax, 16(%rdx)	# D.17467, pbi_4->new_set
	.loc 1 1914 0
	movl	optimize(%rip), %eax	# optimize, optimize.153
	testl	%eax, %eax	# optimize.153
	je	.L392	#,
	.loc 1 1915 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.154
	movq	8(%rax), %rax	# current_function_decl.154_17->common.type, D.17468
	movzbl	16(%rax), %eax	# _18->common.code, D.17469
	cmpb	$23, %al	#, D.17469
	jne	.L393	#,
	.loc 1 1916 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.155
	movq	8(%rax), %rax	# current_function_decl.155_20->common.type, D.17468
	movzbl	62(%rax), %eax	# *_21, D.17469
	andl	$2, %eax	#, D.17469
	.loc 1 1915 0 discriminator 1
	testb	%al, %al	# D.17469
	jne	.L392	#,
.L393:
	.loc 1 1918 0
	movl	-84(%rbp), %eax	# flags, tmp128
	andl	$16, %eax	#, D.17464
	testl	%eax, %eax	# D.17464
	je	.L392	#,
	.loc 1 1919 0
	movq	-56(%rbp), %rax	# bb, tmp129
	movq	40(%rax), %rax	# bb_5(D)->succ, D.17470
	testq	%rax, %rax	# D.17470
	je	.L394	#,
	.loc 1 1920 0
	movq	-56(%rbp), %rax	# bb, tmp130
	movq	40(%rax), %rax	# bb_5(D)->succ, D.17470
	movq	8(%rax), %rax	# _26->succ_next, D.17470
	testq	%rax, %rax	# D.17470
	jne	.L392	#,
	.loc 1 1921 0
	movq	-56(%rbp), %rax	# bb, tmp131
	movq	40(%rax), %rax	# bb_5(D)->succ, D.17470
	movq	24(%rax), %rax	# _28->dest, D.17471
	cmpq	$entry_exit_blocks+112, %rax	#, D.17471
	jne	.L392	#,
	.loc 1 1922 0
	movq	cfun(%rip), %rax	# cfun, cfun.156
	movzbl	424(%rax), %eax	# *cfun.156_30, D.17469
	andl	$-128, %eax	#, D.17469
	testb	%al, %al	# D.17469
	jne	.L392	#,
.L394:
.LBB77:
	.loc 1 1925 0
	movq	-56(%rbp), %rax	# bb, tmp132
	movq	8(%rax), %rax	# bb_5(D)->end, tmp133
	movq	%rax, -40(%rbp)	# tmp133, insn
	jmp	.L395	#
.L403:
	.loc 1 1926 0
	movq	-40(%rbp), %rax	# insn, tmp134
	movzwl	(%rax), %eax	# insn_1->code, D.17473
	cmpw	$32, %ax	#, D.17473
	jne	.L396	#,
	.loc 1 1927 0
	movq	-40(%rbp), %rax	# insn, tmp135
	movzwl	(%rax), %eax	# insn_1->code, D.17473
	movzwl	%ax, %eax	# D.17473, D.17464
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17474
	cmpb	$105, %al	#, D.17474
	jne	.L397	#,
	.loc 1 1927 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp137
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.17472
	movzwl	(%rax), %eax	# _39->code, D.17473
	cmpw	$47, %ax	#, D.17473
	jne	.L398	#,
	.loc 1 1927 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp138
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, iftmp.158
	jmp	.L400	#
.L398:
	.loc 1 1927 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp139
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.17472
	movq	-40(%rbp), %rax	# insn, tmp140
	movq	%rdx, %rsi	# D.17472,
	movq	%rax, %rdi	# tmp140,
	call	single_set_2	#
	jmp	.L400	#
.L397:
	.loc 1 1927 0 discriminator 2
	movl	$0, %eax	#, iftmp.157
.L400:
	.loc 1 1927 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.157, set
	cmpq	$0, -24(%rbp)	#, set
	je	.L396	#,
	.loc 1 1928 0 is_stmt 1
	movq	-24(%rbp), %rax	# set, tmp141
	movq	8(%rax), %rax	# set_46->fld[0].rtx, D.17472
	movzwl	(%rax), %eax	# _47->code, D.17473
	cmpw	$66, %ax	#, D.17473
	jne	.L396	#,
.LBB78:
	.loc 1 1930 0
	movq	-24(%rbp), %rax	# set, tmp142
	movq	8(%rax), %rax	# set_46->fld[0].rtx, tmp143
	movq	%rax, -16(%rbp)	# tmp143, mem
	.loc 1 1931 0
	movq	-16(%rbp), %rax	# mem, tmp144
	movq	%rax, %rdi	# tmp144,
	call	canon_rtx	#
	movq	%rax, -8(%rbp)	# tmp145, canon_mem
	.loc 1 1937 0
	movq	-8(%rbp), %rax	# canon_mem, tmp146
	movzbl	3(%rax), %eax	# *canon_mem_50, D.17469
	andl	$4, %eax	#, D.17469
	testb	%al, %al	# D.17469
	je	.L401	#,
	.loc 1 1938 0
	jmp	.L396	#
.L401:
	.loc 1 1940 0
	movq	-8(%rbp), %rax	# canon_mem, tmp147
	movq	8(%rax), %rdx	# canon_mem_50->fld[0].rtx, D.17472
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.17472
	cmpq	%rax, %rdx	# D.17472, D.17472
	je	.L402	#,
	.loc 1 1941 0
	movq	-8(%rbp), %rax	# canon_mem, tmp148
	movq	8(%rax), %rax	# canon_mem_50->fld[0].rtx, D.17472
	movzwl	(%rax), %eax	# _55->code, D.17473
	cmpw	$75, %ax	#, D.17473
	jne	.L396	#,
	.loc 1 1942 0
	movq	-8(%rbp), %rax	# canon_mem, tmp149
	movq	8(%rax), %rax	# canon_mem_50->fld[0].rtx, D.17472
	movq	8(%rax), %rdx	# _57->fld[0].rtx, D.17472
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.17472
	cmpq	%rax, %rdx	# D.17472, D.17472
	jne	.L396	#,
	.loc 1 1943 0
	movq	-8(%rbp), %rax	# canon_mem, tmp150
	movq	8(%rax), %rax	# canon_mem_50->fld[0].rtx, D.17472
	movq	16(%rax), %rax	# _60->fld[1].rtx, D.17472
	movzwl	(%rax), %eax	# _61->code, D.17473
	cmpw	$54, %ax	#, D.17473
	jne	.L396	#,
.L402:
	.loc 1 1944 0
	movq	-8(%rbp), %rdx	# canon_mem, tmp151
	movq	-32(%rbp), %rax	# pbi, tmp152
	movq	%rdx, %rsi	# tmp151,
	movq	%rax, %rdi	# tmp152,
	call	add_to_mem_set_list	#
.L396:
.LBE78:
	.loc 1 1925 0
	movq	-40(%rbp), %rax	# insn, tmp153
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp154
	movq	%rax, -40(%rbp)	# tmp154, insn
.L395:
	.loc 1 1925 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# bb, tmp155
	movq	(%rax), %rax	# bb_5(D)->head, D.17472
	cmpq	-40(%rbp), %rax	# insn, D.17472
	jne	.L403	#,
.L392:
.LBE77:
	.loc 1 1948 0 is_stmt 1
	movq	-32(%rbp), %rax	# pbi, D.17475
	.loc 1 1949 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	init_propagate_block_info, .-init_propagate_block_info
	.globl	free_propagate_block_info
	.type	free_propagate_block_info, @function
free_propagate_block_info:
.LFB26:
	.loc 1 1956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pbi, pbi
	.loc 1 1957 0
	movq	-8(%rbp), %rax	# pbi, tmp65
	addq	$32, %rax	#, D.17476
	movq	%rax, %rdi	# D.17476,
	call	free_EXPR_LIST_list	#
	.loc 1 1959 0
	movq	-8(%rbp), %rax	# pbi, tmp66
	movq	16(%rax), %rax	# pbi_1(D)->new_set, D.17477
	testq	%rax, %rax	# D.17477
	je	.L406	#,
	.loc 1 1959 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pbi, tmp67
	movq	16(%rax), %rax	# pbi_1(D)->new_set, D.17477
	movq	%rax, %rdi	# D.17477,
	call	bitmap_clear	#
	movq	-8(%rbp), %rax	# pbi, tmp68
	movq	16(%rax), %rax	# pbi_1(D)->new_set, D.17477
	movq	%rax, %rdi	# D.17477,
	call	free	#
	movq	-8(%rbp), %rax	# pbi, tmp69
	movq	$0, 16(%rax)	#, pbi_1(D)->new_set
.L406:
	.loc 1 1966 0 is_stmt 1
	movq	-8(%rbp), %rax	# pbi, tmp70
	movq	24(%rax), %rax	# pbi_1(D)->reg_next_use, D.17476
	testq	%rax, %rax	# D.17476
	je	.L407	#,
	.loc 1 1967 0
	movq	-8(%rbp), %rax	# pbi, tmp71
	movq	24(%rax), %rax	# pbi_1(D)->reg_next_use, D.17476
	movq	%rax, %rdi	# D.17476,
	call	free	#
.L407:
	.loc 1 1969 0
	movq	-8(%rbp), %rax	# pbi, tmp72
	movq	%rax, %rdi	# tmp72,
	call	free	#
	.loc 1 1970 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	free_propagate_block_info, .-free_propagate_block_info
	.globl	propagate_block
	.type	propagate_block, @function
propagate_block:
.LFB27:
	.loc 1 1997 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -88(%rbp)	# bb, bb
	movq	%rsi, -96(%rbp)	# live, live
	movq	%rdx, -104(%rbp)	# local_set, local_set
	movq	%rcx, -112(%rbp)	# cond_local_set, cond_local_set
	movl	%r8d, -116(%rbp)	# flags, flags
	.loc 1 2002 0
	movl	-116(%rbp), %edi	# flags, tmp84
	movq	-112(%rbp), %rcx	# cond_local_set, tmp85
	movq	-104(%rbp), %rdx	# local_set, tmp86
	movq	-96(%rbp), %rsi	# live, tmp87
	movq	-88(%rbp), %rax	# bb, tmp88
	movl	%edi, %r8d	# tmp84,
	movq	%rax, %rdi	# tmp88,
	call	init_propagate_block_info	#
	movq	%rax, -24(%rbp)	# tmp89, pbi
	.loc 1 2004 0
	movl	-116(%rbp), %eax	# flags, tmp90
	andl	$4, %eax	#, D.17478
	testl	%eax, %eax	# D.17478
	je	.L409	#,
.LBB79:
.LBB80:
	.loc 1 2010 0
	movq	-96(%rbp), %rax	# live, tmp91
	movq	(%rax), %rax	# live_15(D)->first, tmp92
	movq	%rax, -40(%rbp)	# tmp92, ptr_
	movl	$0, -56(%rbp)	#, indx_
	movl	$0, -64(%rbp)	#, bit_num_
	movl	$0, -60(%rbp)	#, word_num_
	jmp	.L410	#
.L412:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp93
	movq	(%rax), %rax	# ptr__3->next, tmp94
	movq	%rax, -40(%rbp)	# tmp94, ptr_
.L410:
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L411	#,
	.loc 1 2010 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp95
	movl	16(%rax), %eax	# ptr__3->indx, D.17479
	cmpl	-56(%rbp), %eax	# indx_, D.17479
	jb	.L412	#,
.L411:
	.loc 1 2010 0 discriminator 3
	cmpq	$0, -40(%rbp)	#, ptr_
	je	.L413	#,
	.loc 1 2010 0 discriminator 1
	movq	-40(%rbp), %rax	# ptr_, tmp96
	movl	16(%rax), %eax	# ptr__3->indx, D.17479
	cmpl	-56(%rbp), %eax	# indx_, D.17479
	je	.L413	#,
	movl	$0, -64(%rbp)	#, bit_num_
	movl	$0, -60(%rbp)	#, word_num_
	jmp	.L414	#
.L413:
	.loc 1 2010 0 discriminator 2
	jmp	.L414	#
.L421:
	.loc 1 2010 0
	jmp	.L415	#
.L420:
.LBB81:
	.loc 1 2010 0 discriminator 2
	movq	-40(%rbp), %rax	# ptr_, tmp97
	movl	-60(%rbp), %edx	# word_num_, tmp98
	addq	$2, %rdx	#, tmp99
	movq	8(%rax,%rdx,8), %rax	# ptr__4->bits, tmp100
	movq	%rax, -32(%rbp)	# tmp100, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L416	#,
	.loc 1 2010 0 discriminator 1
	jmp	.L417	#
.L419:
.LBB82:
	.loc 1 2010 0 discriminator 2
	movl	-64(%rbp), %eax	# bit_num_, bit_num_.159
	movl	$1, %edx	#, tmp101
	movl	%eax, %ecx	# bit_num_.159, tmp129
	salq	%cl, %rdx	# tmp129, tmp102
	movq	%rdx, %rax	# tmp102, tmp102
	movq	%rax, -16(%rbp)	# tmp102, mask_
	movq	-16(%rbp), %rax	# mask_, tmp103
	movq	-32(%rbp), %rdx	# word_, tmp104
	andq	%rdx, %rax	# tmp104, D.17480
	testq	%rax, %rax	# D.17480
	je	.L418	#,
	.loc 1 2010 0 discriminator 1
	movq	-16(%rbp), %rax	# mask_, tmp105
	notq	%rax	# D.17480
	andq	%rax, -32(%rbp)	# D.17480, word_
	movq	-40(%rbp), %rax	# ptr_, tmp106
	movl	16(%rax), %eax	# ptr__4->indx, D.17479
	leal	(%rax,%rax), %edx	#, D.17479
	movl	-60(%rbp), %eax	# word_num_, tmp107
	addl	%edx, %eax	# D.17479, D.17479
	sall	$6, %eax	#, D.17479
	movl	%eax, %edx	# D.17479, D.17479
	movl	-64(%rbp), %eax	# bit_num_, tmp108
	addl	%edx, %eax	# D.17479, D.17479
	movl	%eax, -52(%rbp)	# D.17479, i
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.160
	movl	-52(%rbp), %edx	# i, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	addq	$4, %rdx	#, tmp111
	movq	(%rax,%rdx,8), %rax	# reg_n_info.160_42->data.reg, D.17481
	movl	$-2, 36(%rax)	#, _43->basic_block
	cmpq	$0, -32(%rbp)	#, word_
	jne	.L418	#,
	jmp	.L416	#
.L418:
.LBE82:
	.loc 1 2010 0 discriminator 2
	addl	$1, -64(%rbp)	#, bit_num_
.L417:
	.loc 1 2010 0 discriminator 1
	cmpl	$63, -64(%rbp)	#, bit_num_
	jbe	.L419	#,
.L416:
	.loc 1 2010 0 discriminator 2
	movl	$0, -64(%rbp)	#, bit_num_
.LBE81:
	addl	$1, -60(%rbp)	#, word_num_
.L415:
	.loc 1 2010 0 discriminator 1
	cmpl	$1, -60(%rbp)	#, word_num_
	jbe	.L420	#,
	.loc 1 2010 0 discriminator 3
	movl	$0, -60(%rbp)	#, word_num_
	movq	-40(%rbp), %rax	# ptr_, tmp112
	movq	(%rax), %rax	# ptr__4->next, tmp113
	movq	%rax, -40(%rbp)	# tmp113, ptr_
.L414:
	.loc 1 2010 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, ptr_
	jne	.L421	#,
.L409:
.LBE80:
.LBE79:
	.loc 1 2016 0 is_stmt 1
	movl	$0, -68(%rbp)	#, changed
	.loc 1 2017 0
	movq	-88(%rbp), %rax	# bb, tmp114
	movq	8(%rax), %rax	# bb_14(D)->end, tmp115
	movq	%rax, -48(%rbp)	# tmp115, insn
.L425:
	.loc 1 2021 0
	movl	-116(%rbp), %eax	# flags, tmp116
	andl	$4, %eax	#, D.17478
	testl	%eax, %eax	# D.17478
	je	.L422	#,
	.loc 1 2022 0
	movq	-48(%rbp), %rax	# insn, tmp117
	movzwl	(%rax), %eax	# insn_1->code, D.17482
	cmpw	$34, %ax	#, D.17482
	jne	.L422	#,
	.loc 1 2023 0
	movq	-48(%rbp), %rax	# insn, tmp118
	movl	$0, %edx	#,
	movl	$28, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	find_reg_note	#
	testq	%rax, %rax	# D.17483
	je	.L422	#,
	.loc 1 2024 0
	movq	-24(%rbp), %rax	# pbi, tmp119
	movq	8(%rax), %rdx	# pbi_19->reg_live, D.17484
	movq	regs_live_at_setjmp(%rip), %rsi	# regs_live_at_setjmp, regs_live_at_setjmp.161
	movq	regs_live_at_setjmp(%rip), %rax	# regs_live_at_setjmp, regs_live_at_setjmp.162
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# regs_live_at_setjmp.162,
	call	bitmap_operation	#
.L422:
	.loc 1 2026 0
	movq	-48(%rbp), %rdx	# insn, tmp120
	movq	-24(%rbp), %rax	# pbi, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	propagate_one_insn	#
	movq	%rax, -8(%rbp)	# tmp122, prev
	.loc 1 2027 0
	movq	-8(%rbp), %rax	# prev, tmp123
	movq	24(%rax), %rax	# prev_57->fld[2].rtx, D.17483
	cmpq	-48(%rbp), %rax	# insn, D.17483
	setne	%al	#, D.17485
	movzbl	%al, %eax	# D.17485, D.17478
	orl	%eax, -68(%rbp)	# D.17478, changed
	.loc 1 2029 0
	movq	-88(%rbp), %rax	# bb, tmp124
	movq	(%rax), %rax	# bb_14(D)->head, D.17483
	cmpq	-48(%rbp), %rax	# insn, D.17483
	jne	.L423	#,
	.loc 1 2030 0
	jmp	.L427	#
.L423:
	.loc 1 2017 0
	movq	-8(%rbp), %rax	# prev, tmp125
	movq	%rax, -48(%rbp)	# tmp125, insn
	.loc 1 2031 0
	jmp	.L425	#
.L427:
	.loc 1 2033 0
	movq	-24(%rbp), %rax	# pbi, tmp126
	movq	%rax, %rdi	# tmp126,
	call	free_propagate_block_info	#
	.loc 1 2035 0
	movl	-68(%rbp), %eax	# changed, D.17478
	.loc 1 2036 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	propagate_block, .-propagate_block
	.type	insn_dead_p, @function
insn_dead_p:
.LFB28:
	.loc 1 2053 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# pbi, pbi
	movq	%rsi, -80(%rbp)	# x, x
	movl	%edx, -84(%rbp)	# call_ok, call_ok
	movq	%rcx, -96(%rbp)	# notes, notes
	.loc 1 2054 0
	movq	-80(%rbp), %rax	# x, tmp146
	movzwl	(%rax), %eax	# x_14(D)->code, D.17487
	movzwl	%ax, %eax	# D.17487, tmp147
	movl	%eax, -56(%rbp)	# tmp147, code
	.loc 1 2076 0
	cmpl	$47, -56(%rbp)	#, code
	jne	.L429	#,
.LBB83:
	.loc 1 2078 0
	movq	-80(%rbp), %rax	# x, tmp148
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, tmp149
	movq	%rax, -48(%rbp)	# tmp149, r
	.loc 1 2086 0
	movq	-80(%rbp), %rax	# x, tmp150
	movq	16(%rax), %rax	# x_14(D)->fld[1].rtx, D.17488
	movzwl	(%rax), %eax	# _18->code, D.17487
	cmpw	$50, %ax	#, D.17487
	jne	.L430	#,
	.loc 1 2088 0
	cmpl	$0, -84(%rbp)	#, call_ok
	jne	.L431	#,
	.loc 1 2089 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L430:
	.loc 1 2093 0
	movq	-80(%rbp), %rax	# x, tmp151
	movq	16(%rax), %rax	# x_14(D)->fld[1].rtx, D.17488
	movq	%rax, %rdi	# D.17488,
	call	volatile_refs_p	#
	testl	%eax, %eax	# D.17486
	je	.L431	#,
	.loc 1 2094 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L431:
	.loc 1 2096 0
	movq	-48(%rbp), %rax	# r, tmp152
	movzwl	(%rax), %eax	# r_17->code, D.17487
	cmpw	$66, %ax	#, D.17487
	jne	.L433	#,
.LBB84:
	.loc 1 2100 0
	movq	-48(%rbp), %rax	# r, tmp153
	movzbl	3(%rax), %eax	# *r_17, D.17489
	andl	$8, %eax	#, D.17489
	testb	%al, %al	# D.17489
	jne	.L434	#,
	.loc 1 2100 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# r, tmp154
	movzbl	2(%rax), %eax	# r_17->mode, D.17489
	cmpb	$51, %al	#, D.17489
	jne	.L435	#,
.L434:
	.loc 1 2101 0 is_stmt 1
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L435:
	.loc 1 2103 0
	movq	-48(%rbp), %rax	# r, tmp155
	movq	%rax, %rdi	# tmp155,
	call	canon_rtx	#
	movq	%rax, -32(%rbp)	# tmp156, canon_r
	.loc 1 2111 0
	movq	-72(%rbp), %rax	# pbi, tmp157
	movq	32(%rax), %rax	# pbi_30(D)->mem_set_list, tmp158
	movq	%rax, -40(%rbp)	# tmp158, temp
	jmp	.L436	#
.L438:
	.loc 1 2112 0
	movq	-40(%rbp), %rax	# temp, tmp159
	movq	8(%rax), %rdx	# temp_2->fld[0].rtx, D.17488
	movq	-48(%rbp), %rax	# r, tmp160
	movq	%rdx, %rsi	# D.17488,
	movq	%rax, %rdi	# tmp160,
	call	anti_dependence	#
	testl	%eax, %eax	# D.17486
	je	.L437	#,
.LBB85:
	.loc 1 2114 0
	movq	-40(%rbp), %rax	# temp, tmp161
	movq	8(%rax), %rax	# temp_2->fld[0].rtx, tmp162
	movq	%rax, -24(%rbp)	# tmp162, mem
	.loc 1 2116 0
	movq	-24(%rbp), %rax	# mem, tmp163
	movq	8(%rax), %rdx	# mem_34->fld[0].rtx, D.17488
	movq	-32(%rbp), %rax	# canon_r, tmp164
	movq	8(%rax), %rax	# canon_r_29->fld[0].rtx, D.17488
	movq	%rdx, %rsi	# D.17488,
	movq	%rax, %rdi	# D.17488,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17486
	je	.L437	#,
	.loc 1 2117 0
	movq	-32(%rbp), %rax	# canon_r, tmp165
	movzbl	2(%rax), %eax	# canon_r_29->mode, D.17489
	movzbl	%al, %eax	# D.17489, D.17486
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17489
	.loc 1 2118 0
	movq	-24(%rbp), %rax	# mem, tmp167
	movzbl	2(%rax), %eax	# mem_34->mode, D.17489
	movzbl	%al, %eax	# D.17489, D.17486
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17489
	.loc 1 2117 0
	cmpb	%al, %dl	# D.17489, D.17489
	ja	.L437	#,
	.loc 1 2119 0
	movl	$1, %eax	#, D.17486
	jmp	.L432	#
.L437:
.LBE85:
	.loc 1 2111 0
	movq	-40(%rbp), %rax	# temp, tmp169
	movq	16(%rax), %rax	# temp_2->fld[1].rtx, tmp170
	movq	%rax, -40(%rbp)	# tmp170, temp
.L436:
	.loc 1 2111 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, temp
	jne	.L438	#,
.LBE84:
	jmp	.L439	#
.L433:
	.loc 1 2136 0 is_stmt 1
	jmp	.L440	#
.L441:
	.loc 1 2139 0
	movq	-48(%rbp), %rax	# r, tmp171
	movq	8(%rax), %rax	# r_1->fld[0].rtx, tmp172
	movq	%rax, -48(%rbp)	# tmp172, r
.L440:
	.loc 1 2136 0 discriminator 1
	movq	-48(%rbp), %rax	# r, tmp173
	movzwl	(%rax), %eax	# r_1->code, D.17487
	cmpw	$63, %ax	#, D.17487
	je	.L441	#,
	.loc 1 2137 0
	movq	-48(%rbp), %rax	# r, tmp174
	movzwl	(%rax), %eax	# r_1->code, D.17487
	cmpw	$64, %ax	#, D.17487
	je	.L441	#,
	.loc 1 2138 0
	movq	-48(%rbp), %rax	# r, tmp175
	movzwl	(%rax), %eax	# r_1->code, D.17487
	cmpw	$133, %ax	#, D.17487
	je	.L441	#,
	.loc 1 2141 0
	movq	-48(%rbp), %rax	# r, tmp176
	movzwl	(%rax), %eax	# r_1->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L439	#,
.LBB86:
	.loc 1 2143 0
	movq	-48(%rbp), %rax	# r, tmp177
	movl	8(%rax), %eax	# r_1->fld[0].rtuint, D.17490
	movl	%eax, -52(%rbp)	# D.17490, regno
	.loc 1 2146 0
	movq	-72(%rbp), %rax	# pbi, tmp178
	movq	8(%rax), %rax	# pbi_30(D)->reg_live, D.17491
	movl	-52(%rbp), %edx	# regno, tmp179
	movl	%edx, %esi	# tmp179,
	movq	%rax, %rdi	# D.17491,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17486
	je	.L442	#,
	.loc 1 2147 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L442:
	.loc 1 2151 0
	cmpl	$52, -52(%rbp)	#, regno
	jg	.L443	#,
.LBB87:
	.loc 1 2153 0
	cmpl	$7, -52(%rbp)	#, regno
	jle	.L444	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	cmpl	$15, -52(%rbp)	#, regno
	jle	.L445	#,
.L444:
	.loc 1 2153 0 discriminator 2
	cmpl	$20, -52(%rbp)	#, regno
	jle	.L446	#,
	.loc 1 2153 0 discriminator 1
	cmpl	$28, -52(%rbp)	#, regno
	jle	.L445	#,
.L446:
	.loc 1 2153 0 discriminator 2
	cmpl	$44, -52(%rbp)	#, regno
	jle	.L447	#,
	.loc 1 2153 0 discriminator 1
	cmpl	$52, -52(%rbp)	#, regno
	jle	.L445	#,
.L447:
	.loc 1 2153 0 discriminator 2
	cmpl	$28, -52(%rbp)	#, regno
	jle	.L448	#,
	.loc 1 2153 0 discriminator 1
	cmpl	$36, -52(%rbp)	#, regno
	jg	.L448	#,
.L445:
	movq	-48(%rbp), %rax	# r, tmp180
	movzbl	2(%rax), %eax	# r_1->mode, D.17489
	movzbl	%al, %eax	# D.17489, D.17486
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17492
	cmpl	$5, %eax	#, D.17492
	je	.L449	#,
	.loc 1 2153 0 discriminator 2
	movq	-48(%rbp), %rax	# r, tmp182
	movzbl	2(%rax), %eax	# r_1->mode, D.17489
	movzbl	%al, %eax	# D.17489, D.17486
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17492
	cmpl	$6, %eax	#, D.17492
	jne	.L450	#,
.L449:
	.loc 1 2153 0 discriminator 1
	movl	$2, %eax	#, iftmp.164
	jmp	.L451	#
.L450:
	movl	$1, %eax	#, iftmp.164
.L451:
	.loc 1 2153 0 discriminator 3
	jmp	.L452	#
.L448:
	.loc 1 2153 0 discriminator 2
	movq	-48(%rbp), %rax	# r, tmp184
	movzbl	2(%rax), %eax	# r_1->mode, D.17489
	cmpb	$18, %al	#, D.17489
	jne	.L453	#,
	.loc 1 2153 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.167
	andl	$33554432, %eax	#, D.17486
	testl	%eax, %eax	# D.17486
	je	.L454	#,
	movl	$2, %eax	#, iftmp.166
	jmp	.L452	#
.L454:
	.loc 1 2153 0 discriminator 2
	movl	$3, %eax	#, iftmp.166
	jmp	.L452	#
.L453:
	movq	-48(%rbp), %rax	# r, tmp185
	movzbl	2(%rax), %eax	# r_1->mode, D.17489
	cmpb	$24, %al	#, D.17489
	jne	.L457	#,
	.loc 1 2153 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.170
	andl	$33554432, %eax	#, D.17486
	testl	%eax, %eax	# D.17486
	je	.L458	#,
	movl	$4, %eax	#, iftmp.169
	jmp	.L452	#
.L458:
	.loc 1 2153 0 discriminator 2
	movl	$6, %eax	#, iftmp.169
	jmp	.L452	#
.L457:
	movq	-48(%rbp), %rax	# r, tmp186
	movzbl	2(%rax), %eax	# r_1->mode, D.17489
	movzbl	%al, %eax	# D.17489, D.17486
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17489
	movzbl	%al, %edx	# D.17489, D.17486
	movl	target_flags(%rip), %eax	# target_flags, target_flags.172
	andl	$33554432, %eax	#, D.17486
	testl	%eax, %eax	# D.17486
	je	.L461	#,
	.loc 1 2153 0 discriminator 1
	movl	$8, %eax	#, iftmp.171
	jmp	.L462	#
.L461:
	.loc 1 2153 0 discriminator 2
	movl	$4, %eax	#, iftmp.171
.L462:
	.loc 1 2153 0 discriminator 3
	addl	%edx, %eax	# D.17486, D.17486
	subl	$1, %eax	#, D.17486
	movl	target_flags(%rip), %edx	# target_flags, target_flags.174
	andl	$33554432, %edx	#, D.17486
	testl	%edx, %edx	# D.17486
	je	.L463	#,
	.loc 1 2153 0 discriminator 1
	movl	$8, %ebx	#, iftmp.173
	jmp	.L464	#
.L463:
	.loc 1 2153 0 discriminator 2
	movl	$4, %ebx	#, iftmp.173
.L464:
	.loc 1 2153 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.173
.L452:
	movl	%eax, -64(%rbp)	# iftmp.163, n
	.loc 1 2155 0 is_stmt 1 discriminator 3
	jmp	.L465	#
.L466:
	.loc 1 2156 0
	movl	-64(%rbp), %eax	# n, tmp190
	movl	-52(%rbp), %edx	# regno, tmp191
	addl	%eax, %edx	# tmp190, D.17486
	movq	-72(%rbp), %rax	# pbi, tmp192
	movq	8(%rax), %rax	# pbi_30(D)->reg_live, D.17491
	movl	%edx, %esi	# D.17486,
	movq	%rax, %rdi	# D.17491,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17486
	je	.L465	#,
	.loc 1 2157 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L465:
	.loc 1 2155 0 discriminator 1
	subl	$1, -64(%rbp)	#, n
	cmpl	$0, -64(%rbp)	#, n
	jg	.L466	#,
.L443:
.LBE87:
	.loc 1 2161 0
	cmpl	$52, -52(%rbp)	#, regno
	jg	.L467	#,
	.loc 1 2161 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# regno, tmp194
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.17493
	testb	%al, %al	# D.17493
	je	.L467	#,
	.loc 1 2162 0 is_stmt 1
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L467:
	.loc 1 2165 0
	cmpl	$7, -52(%rbp)	#, regno
	jne	.L468	#,
	.loc 1 2166 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L468:
	.loc 1 2173 0
	cmpl	$20, -52(%rbp)	#, regno
	jne	.L469	#,
	.loc 1 2174 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.175
	testl	%eax, %eax	# reload_completed.175
	je	.L470	#,
	.loc 1 2174 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.176
	testl	%eax, %eax	# frame_pointer_needed.176
	je	.L469	#,
.L470:
	.loc 1 2175 0 is_stmt 1
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L469:
	.loc 1 2177 0
	cmpl	$6, -52(%rbp)	#, regno
	jne	.L471	#,
	.loc 1 2178 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.177
	testl	%eax, %eax	# reload_completed.177
	je	.L472	#,
	.loc 1 2178 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.178
	testl	%eax, %eax	# frame_pointer_needed.178
	je	.L471	#,
.L472:
	.loc 1 2179 0 is_stmt 1
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L471:
	.loc 1 2186 0
	cmpl	$16, -52(%rbp)	#, regno
	jne	.L473	#,
	.loc 1 2186 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# regno, tmp196
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17493
	testb	%al, %al	# D.17493
	je	.L473	#,
	.loc 1 2187 0 is_stmt 1
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L473:
	.loc 1 2191 0
	movl	$1, %eax	#, D.17486
	jmp	.L432	#
.L439:
.LBE86:
.LBE83:
	jmp	.L474	#
.L429:
	.loc 1 2200 0
	cmpl	$39, -56(%rbp)	#, code
	jne	.L475	#,
.LBB88:
	.loc 1 2202 0
	movq	-80(%rbp), %rax	# x, tmp197
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtvec, D.17494
	movl	(%rax), %eax	# _113->num_elem, tmp198
	movl	%eax, -60(%rbp)	# tmp198, i
	.loc 1 2204 0
	subl	$1, -60(%rbp)	#, i
	jmp	.L476	#
.L478:
	.loc 1 2205 0
	movq	-80(%rbp), %rax	# x, tmp199
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtvec, D.17494
	movl	-60(%rbp), %edx	# i, tmp201
	movslq	%edx, %rdx	# tmp201, tmp200
	movq	8(%rax,%rdx,8), %rax	# _116->elem, D.17488
	movzwl	(%rax), %eax	# _117->code, D.17487
	cmpw	$49, %ax	#, D.17487
	je	.L477	#,
	.loc 1 2206 0
	movq	-80(%rbp), %rax	# x, tmp202
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtvec, D.17494
	movl	-60(%rbp), %edx	# i, tmp204
	movslq	%edx, %rdx	# tmp204, tmp203
	movq	8(%rax,%rdx,8), %rax	# _119->elem, D.17488
	movzwl	(%rax), %eax	# _120->code, D.17487
	cmpw	$48, %ax	#, D.17487
	je	.L477	#,
	.loc 1 2207 0
	movq	-80(%rbp), %rax	# x, tmp205
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtvec, D.17494
	movl	-60(%rbp), %edx	# i, tmp207
	movslq	%edx, %rdx	# tmp207, tmp206
	movq	8(%rax,%rdx,8), %rsi	# _122->elem, D.17488
	movl	-84(%rbp), %edx	# call_ok, tmp208
	movq	-72(%rbp), %rax	# pbi, tmp209
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp209,
	call	insn_dead_p	#
	testl	%eax, %eax	# D.17486
	jne	.L477	#,
	.loc 1 2208 0
	movl	$0, %eax	#, D.17486
	jmp	.L432	#
.L477:
	.loc 1 2204 0
	subl	$1, -60(%rbp)	#, i
.L476:
	.loc 1 2204 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L478	#,
	.loc 1 2210 0 is_stmt 1
	movl	$1, %eax	#, D.17486
	jmp	.L432	#
.L475:
.LBE88:
	.loc 1 2215 0
	cmpl	$49, -56(%rbp)	#, code
	jne	.L474	#,
	.loc 1 2215 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# x, tmp210
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.17488
	movzwl	(%rax), %eax	# _128->code, D.17487
	cmpw	$61, %ax	#, D.17487
	jne	.L474	#,
	.loc 1 2216 0 is_stmt 1
	movq	-80(%rbp), %rax	# x, tmp211
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.17488
	movl	8(%rax), %eax	# _130->fld[0].rtuint, D.17490
	cmpl	$52, %eax	#, D.17490
	jbe	.L474	#,
	.loc 1 2217 0
	movq	-80(%rbp), %rax	# x, tmp212
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, D.17488
	movl	8(%rax), %eax	# _132->fld[0].rtuint, D.17490
	movl	%eax, %edx	# D.17490, D.17486
	movq	-72(%rbp), %rax	# pbi, tmp213
	movq	8(%rax), %rax	# pbi_30(D)->reg_live, D.17491
	movl	%edx, %esi	# D.17486,
	movq	%rax, %rdi	# D.17491,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17486
	jne	.L474	#,
	.loc 1 2218 0
	movl	$1, %eax	#, D.17486
	jmp	.L432	#
.L474:
	.loc 1 2222 0
	movl	$0, %eax	#, D.17486
.L432:
	.loc 1 2223 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	insn_dead_p, .-insn_dead_p
	.type	libcall_dead_p, @function
libcall_dead_p:
.LFB29:
	.loc 1 2245 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pbi, pbi
	movq	%rsi, -64(%rbp)	# note, note
	movq	%rdx, -72(%rbp)	# insn, insn
	.loc 1 2246 0
	movq	-72(%rbp), %rax	# insn, tmp83
	movzwl	(%rax), %eax	# insn_7(D)->code, D.17496
	movzwl	%ax, %eax	# D.17496, D.17495
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17497
	cmpb	$105, %al	#, D.17497
	jne	.L480	#,
	.loc 1 2246 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, D.17498
	movzwl	(%rax), %eax	# _11->code, D.17496
	cmpw	$47, %ax	#, D.17496
	jne	.L481	#,
	.loc 1 2246 0 discriminator 3
	movq	-72(%rbp), %rax	# insn, tmp86
	movq	32(%rax), %rax	# insn_7(D)->fld[3].rtx, iftmp.180
	jmp	.L483	#
.L481:
	.loc 1 2246 0 discriminator 4
	movq	-72(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rdx	# insn_7(D)->fld[3].rtx, D.17498
	movq	-72(%rbp), %rax	# insn, tmp88
	movq	%rdx, %rsi	# D.17498,
	movq	%rax, %rdi	# tmp88,
	call	single_set_2	#
	jmp	.L483	#
.L480:
	.loc 1 2246 0 discriminator 2
	movl	$0, %eax	#, iftmp.179
.L483:
	.loc 1 2246 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.179, x
	.loc 1 2248 0 is_stmt 1 discriminator 5
	cmpq	$0, -16(%rbp)	#, x
	je	.L484	#,
.LBB89:
	.loc 1 2250 0
	movq	-16(%rbp), %rax	# x, tmp89
	movq	16(%rax), %rax	# x_18->fld[1].rtx, tmp90
	movq	%rax, -8(%rbp)	# tmp90, r
	.loc 1 2252 0
	movq	-8(%rbp), %rax	# r, tmp91
	movzwl	(%rax), %eax	# r_19->code, D.17496
	cmpw	$61, %ax	#, D.17496
	jne	.L484	#,
.LBB90:
	.loc 1 2254 0
	movq	-64(%rbp), %rax	# note, tmp92
	movq	8(%rax), %rax	# note_21(D)->fld[0].rtx, tmp93
	movq	%rax, -32(%rbp)	# tmp93, call
	.loc 1 2259 0
	jmp	.L485	#
.L487:
	.loc 1 2260 0
	movq	-32(%rbp), %rax	# call, tmp94
	movq	24(%rax), %rax	# call_1->fld[2].rtx, tmp95
	movq	%rax, -32(%rbp)	# tmp95, call
.L485:
	.loc 1 2259 0 discriminator 1
	movq	-32(%rbp), %rax	# call, tmp96
	cmpq	-72(%rbp), %rax	# insn, tmp96
	je	.L486	#,
	.loc 1 2259 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# call, tmp97
	movzwl	(%rax), %eax	# call_1->code, D.17496
	cmpw	$34, %ax	#, D.17496
	jne	.L487	#,
.L486:
	.loc 1 2264 0 is_stmt 1
	movq	-32(%rbp), %rax	# call, tmp98
	cmpq	-72(%rbp), %rax	# insn, tmp98
	jne	.L488	#,
	.loc 1 2265 0
	movl	$0, %eax	#, D.17495
	jmp	.L489	#
.L488:
	.loc 1 2269 0
	movq	-32(%rbp), %rax	# call, tmp99
	movq	32(%rax), %rax	# call_1->fld[3].rtx, tmp100
	movq	%rax, -24(%rbp)	# tmp100, call_pat
	.loc 1 2270 0
	movq	-24(%rbp), %rax	# call_pat, tmp101
	movzwl	(%rax), %eax	# call_pat_26->code, D.17496
	cmpw	$39, %ax	#, D.17496
	jne	.L490	#,
	.loc 1 2272 0
	movq	-24(%rbp), %rax	# call_pat, tmp102
	movq	8(%rax), %rax	# call_pat_26->fld[0].rtvec, D.17499
	movl	(%rax), %eax	# _28->num_elem, D.17495
	subl	$1, %eax	#, tmp103
	movl	%eax, -36(%rbp)	# tmp103, i
	jmp	.L491	#
.L494:
	.loc 1 2273 0
	movq	-24(%rbp), %rax	# call_pat, tmp104
	movq	8(%rax), %rax	# call_pat_26->fld[0].rtvec, D.17499
	movl	-36(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# _31->elem, D.17498
	movzwl	(%rax), %eax	# _32->code, D.17496
	cmpw	$47, %ax	#, D.17496
	jne	.L492	#,
	.loc 1 2274 0
	movq	-24(%rbp), %rax	# call_pat, tmp107
	movq	8(%rax), %rax	# call_pat_26->fld[0].rtvec, D.17499
	movl	-36(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	movq	8(%rax,%rdx,8), %rax	# _34->elem, D.17498
	movq	16(%rax), %rax	# _35->fld[1].rtx, D.17498
	movzwl	(%rax), %eax	# _36->code, D.17496
	cmpw	$50, %ax	#, D.17496
	jne	.L492	#,
	.loc 1 2275 0
	jmp	.L493	#
.L492:
	.loc 1 2272 0
	subl	$1, -36(%rbp)	#, i
.L491:
	.loc 1 2272 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L494	#,
.L493:
	.loc 1 2280 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L495	#,
	.loc 1 2281 0
	movl	$0, %eax	#, D.17495
	jmp	.L489	#
.L495:
	.loc 1 2283 0
	movq	-24(%rbp), %rax	# call_pat, tmp110
	movq	8(%rax), %rax	# call_pat_26->fld[0].rtvec, D.17499
	movl	-36(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	movq	8(%rax,%rdx,8), %rax	# _40->elem, tmp113
	movq	%rax, -24(%rbp)	# tmp113, call_pat
.L490:
	.loc 1 2286 0
	movq	-32(%rbp), %rax	# call, tmp114
	movq	56(%rax), %rdx	# call_1->fld[6].rtx, D.17498
	movq	-24(%rbp), %rsi	# call_pat, tmp115
	movq	-56(%rbp), %rax	# pbi, tmp116
	movq	%rdx, %rcx	# D.17498,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp116,
	call	insn_dead_p	#
	jmp	.L489	#
.L484:
.LBE90:
.LBE89:
	.loc 1 2289 0
	movl	$1, %eax	#, D.17495
.L489:
	.loc 1 2290 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	libcall_dead_p, .-libcall_dead_p
	.globl	regno_uninitialized
	.type	regno_uninitialized, @function
regno_uninitialized:
.LFB30:
	.loc 1 2300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# regno, regno
	.loc 1 2301 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.181
	testl	%eax, %eax	# n_basic_blocks.181
	je	.L497	#,
	.loc 1 2302 0
	cmpl	$52, -4(%rbp)	#, regno
	ja	.L498	#,
	.loc 1 2303 0
	movl	-4(%rbp), %eax	# regno, tmp70
	movzbl	global_regs(%rax), %eax	# global_regs, D.17501
	testb	%al, %al	# D.17501
	jne	.L497	#,
	.loc 1 2304 0
	movl	-4(%rbp), %eax	# regno, tmp71
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17501
	testb	%al, %al	# D.17501
	jne	.L497	#,
	.loc 1 2305 0
	movl	-4(%rbp), %eax	# regno, regno.182
	movl	%eax, %edi	# regno.182,
	call	ix86_function_arg_regno_p	#
	testb	%al, %al	# D.17502
	je	.L498	#,
.L497:
	.loc 1 2306 0
	movl	$0, %eax	#, D.17500
	jmp	.L499	#
.L498:
	.loc 1 2308 0
	movl	-4(%rbp), %edx	# regno, regno.183
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.184
	movq	32(%rax), %rax	# basic_block_info.184_9->data.bb, D.17503
	movq	64(%rax), %rax	# _10->global_live_at_start, D.17504
	movl	%edx, %esi	# regno.183,
	movq	%rax, %rdi	# D.17504,
	call	bitmap_bit_p	#
.L499:
	.loc 1 2309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	regno_uninitialized, .-regno_uninitialized
	.globl	regno_clobbered_at_setjmp
	.type	regno_clobbered_at_setjmp, @function
regno_clobbered_at_setjmp:
.LFB31:
	.loc 1 2318 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# regno, regno
	.loc 1 2319 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.185
	testl	%eax, %eax	# n_basic_blocks.185
	jne	.L501	#,
	.loc 1 2320 0
	movl	$0, %eax	#, D.17505
	jmp	.L502	#
.L501:
	.loc 1 2322 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.187
	movl	-4(%rbp), %edx	# regno, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	addq	$4, %rdx	#, tmp74
	movq	(%rax,%rdx,8), %rax	# reg_n_info.187_5->data.reg, D.17506
	movl	12(%rax), %eax	# _7->sets, D.17505
	.loc 1 2324 0
	cmpl	$1, %eax	#, D.17505
	jg	.L503	#,
	.loc 1 2323 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.188
	movq	32(%rax), %rax	# basic_block_info.188_9->data.bb, D.17507
	movq	64(%rax), %rax	# _10->global_live_at_start, D.17508
	movl	-4(%rbp), %edx	# regno, tmp75
	movl	%edx, %esi	# tmp75,
	movq	%rax, %rdi	# D.17508,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17505
	je	.L504	#,
.L503:
	.loc 1 2324 0 discriminator 1
	movq	regs_live_at_setjmp(%rip), %rax	# regs_live_at_setjmp, regs_live_at_setjmp.189
	movl	-4(%rbp), %edx	# regno, tmp76
	movl	%edx, %esi	# tmp76,
	movq	%rax, %rdi	# regs_live_at_setjmp.189,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17505
	je	.L504	#,
	.loc 1 2324 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.186
	jmp	.L505	#
.L504:
	.loc 1 2324 0 discriminator 3
	movl	$0, %eax	#, iftmp.186
.L505:
.L502:
	.loc 1 2325 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	regno_clobbered_at_setjmp, .-regno_clobbered_at_setjmp
	.type	add_to_mem_set_list, @function
add_to_mem_set_list:
.LFB32:
	.loc 1 2333 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pbi, pbi
	movq	%rsi, -32(%rbp)	# mem, mem
	.loc 1 2338 0
	movq	-32(%rbp), %rax	# mem, tmp74
	movzbl	2(%rax), %eax	# mem_2(D)->mode, D.17509
	cmpb	$51, %al	#, D.17509
	jne	.L507	#,
	.loc 1 2339 0
	jmp	.L506	#
.L507:
	.loc 1 2341 0
	movq	-24(%rbp), %rax	# pbi, tmp75
	movq	32(%rax), %rax	# pbi_4(D)->mem_set_list, tmp76
	movq	%rax, -16(%rbp)	# tmp76, i
	jmp	.L509	#
.L512:
.LBB91:
	.loc 1 2343 0
	movq	-16(%rbp), %rax	# i, tmp77
	movq	8(%rax), %rax	# i_1->fld[0].rtx, tmp78
	movq	%rax, -8(%rbp)	# tmp78, e
	.loc 1 2344 0
	movq	-8(%rbp), %rax	# e, tmp79
	movq	8(%rax), %rdx	# e_6->fld[0].rtx, D.17510
	movq	-32(%rbp), %rax	# mem, tmp80
	movq	8(%rax), %rax	# mem_2(D)->fld[0].rtx, D.17510
	movq	%rdx, %rsi	# D.17510,
	movq	%rax, %rdi	# D.17510,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17511
	je	.L510	#,
	.loc 1 2346 0
	movq	-32(%rbp), %rax	# mem, tmp81
	movzbl	2(%rax), %eax	# mem_2(D)->mode, D.17509
	movzbl	%al, %eax	# D.17509, D.17511
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17509
	movq	-8(%rbp), %rax	# e, tmp83
	movzbl	2(%rax), %eax	# e_6->mode, D.17509
	movzbl	%al, %eax	# D.17509, D.17511
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17509
	cmpb	%al, %dl	# D.17509, D.17509
	jbe	.L511	#,
	.loc 1 2355 0
	movq	-16(%rbp), %rax	# i, tmp85
	movq	-32(%rbp), %rdx	# mem, tmp86
	movq	%rdx, 8(%rax)	# tmp86, i_1->fld[0].rtx
	.loc 1 2357 0
	jmp	.L506	#
.L511:
	jmp	.L506	#
.L510:
.LBE91:
	.loc 1 2341 0
	movq	-16(%rbp), %rax	# i, tmp87
	movq	16(%rax), %rax	# i_1->fld[1].rtx, tmp88
	movq	%rax, -16(%rbp)	# tmp88, i
.L509:
	.loc 1 2341 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, i
	jne	.L512	#,
	.loc 1 2361 0 is_stmt 1
	movq	-24(%rbp), %rax	# pbi, tmp89
	movl	56(%rax), %eax	# pbi_4(D)->mem_set_list_len, D.17511
	cmpl	$99, %eax	#, D.17511
	jg	.L506	#,
	.loc 1 2369 0
	movq	-24(%rbp), %rax	# pbi, tmp90
	movq	32(%rax), %rdx	# pbi_4(D)->mem_set_list, D.17510
	movq	-32(%rbp), %rax	# mem, tmp91
	movq	%rax, %rsi	# tmp91,
	movl	$0, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-24(%rbp), %rdx	# pbi, tmp92
	movq	%rax, 32(%rdx)	# D.17510, pbi_4(D)->mem_set_list
	.loc 1 2370 0
	movq	-24(%rbp), %rax	# pbi, tmp93
	movl	56(%rax), %eax	# pbi_4(D)->mem_set_list_len, D.17511
	leal	1(%rax), %edx	#, D.17511
	movq	-24(%rbp), %rax	# pbi, tmp94
	movl	%edx, 56(%rax)	# D.17511, pbi_4(D)->mem_set_list_len
.L506:
	.loc 1 2372 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	add_to_mem_set_list, .-add_to_mem_set_list
	.type	invalidate_mems_from_autoinc, @function
invalidate_mems_from_autoinc:
.LFB33:
	.loc 1 2382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pbi, pbi
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 2383 0
	movq	-32(%rbp), %rax	# insn, tmp61
	movq	56(%rax), %rax	# insn_2(D)->fld[6].rtx, tmp62
	movq	%rax, -8(%rbp)	# tmp62, note
	.loc 1 2384 0
	movq	-32(%rbp), %rax	# insn, tmp63
	movq	56(%rax), %rax	# insn_2(D)->fld[6].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, note
	jmp	.L514	#
.L516:
	.loc 1 2385 0
	movq	-8(%rbp), %rax	# note, tmp65
	movzbl	2(%rax), %eax	# note_1->mode, D.17512
	cmpb	$2, %al	#, D.17512
	jne	.L515	#,
	.loc 1 2386 0
	movq	-8(%rbp), %rax	# note, tmp66
	movq	8(%rax), %rdx	# note_1->fld[0].rtx, D.17513
	movq	-24(%rbp), %rax	# pbi, tmp67
	movq	%rdx, %rsi	# D.17513,
	movq	%rax, %rdi	# tmp67,
	call	invalidate_mems_from_set	#
.L515:
	.loc 1 2384 0
	movq	-8(%rbp), %rax	# note, tmp68
	movq	16(%rax), %rax	# note_1->fld[1].rtx, tmp69
	movq	%rax, -8(%rbp)	# tmp69, note
.L514:
	.loc 1 2384 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, note
	jne	.L516	#,
	.loc 1 2387 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	invalidate_mems_from_autoinc, .-invalidate_mems_from_autoinc
	.type	invalidate_mems_from_set, @function
invalidate_mems_from_set:
.LFB34:
	.loc 1 2395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pbi, pbi
	movq	%rsi, -48(%rbp)	# exp, exp
	.loc 1 2396 0
	movq	-40(%rbp), %rax	# pbi, tmp63
	movq	32(%rax), %rax	# pbi_4(D)->mem_set_list, tmp64
	movq	%rax, -24(%rbp)	# tmp64, temp
	.loc 1 2397 0
	movq	$0, -16(%rbp)	#, prev
	.loc 1 2400 0
	jmp	.L518	#
.L523:
	.loc 1 2402 0
	movq	-24(%rbp), %rax	# temp, tmp65
	movq	16(%rax), %rax	# temp_1->fld[1].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, next
	.loc 1 2403 0
	movq	-24(%rbp), %rax	# temp, tmp67
	movq	8(%rax), %rdx	# temp_1->fld[0].rtx, D.17514
	movq	-48(%rbp), %rax	# exp, tmp68
	movq	%rdx, %rsi	# D.17514,
	movq	%rax, %rdi	# tmp68,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.17515
	je	.L519	#,
	.loc 1 2406 0
	cmpq	$0, -16(%rbp)	#, prev
	je	.L520	#,
	.loc 1 2407 0
	movq	-16(%rbp), %rax	# prev, tmp69
	movq	-8(%rbp), %rdx	# next, tmp70
	movq	%rdx, 16(%rax)	# tmp70, prev_3->fld[1].rtx
	jmp	.L521	#
.L520:
	.loc 1 2409 0
	movq	-40(%rbp), %rax	# pbi, tmp71
	movq	-8(%rbp), %rdx	# next, tmp72
	movq	%rdx, 32(%rax)	# tmp72, pbi_4(D)->mem_set_list
.L521:
	.loc 1 2410 0 discriminator 1
	movq	-24(%rbp), %rax	# temp, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free_EXPR_LIST_node	#
	.loc 1 2411 0 discriminator 1
	movq	-40(%rbp), %rax	# pbi, tmp74
	movl	56(%rax), %eax	# pbi_4(D)->mem_set_list_len, D.17515
	leal	-1(%rax), %edx	#, D.17515
	movq	-40(%rbp), %rax	# pbi, tmp75
	movl	%edx, 56(%rax)	# D.17515, pbi_4(D)->mem_set_list_len
	jmp	.L522	#
.L519:
	.loc 1 2414 0
	movq	-24(%rbp), %rax	# temp, tmp76
	movq	%rax, -16(%rbp)	# tmp76, prev
.L522:
	.loc 1 2415 0
	movq	-8(%rbp), %rax	# next, tmp77
	movq	%rax, -24(%rbp)	# tmp77, temp
.L518:
	.loc 1 2400 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, temp
	jne	.L523	#,
	.loc 1 2417 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	invalidate_mems_from_set, .-invalidate_mems_from_set
	.type	mark_set_regs, @function
mark_set_regs:
.LFB35:
	.loc 1 2430 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pbi, pbi
	movq	%rsi, -48(%rbp)	# x, x
	movq	%rdx, -56(%rbp)	# insn, insn
	.loc 1 2431 0
	movq	$0, -24(%rbp)	#, cond
	.loc 1 2435 0
	cmpq	$0, -56(%rbp)	#, insn
	je	.L525	#,
	.loc 1 2436 0
	movq	-56(%rbp), %rax	# insn, tmp75
	movq	56(%rax), %rax	# insn_11(D)->fld[6].rtx, tmp76
	movq	%rax, -16(%rbp)	# tmp76, link
	jmp	.L526	#
.L530:
	.loc 1 2438 0
	movq	-16(%rbp), %rax	# link, tmp77
	movzbl	2(%rax), %eax	# link_6->mode, D.17516
	cmpb	$2, %al	#, D.17516
	jne	.L527	#,
	.loc 1 2439 0
	movq	-40(%rbp), %rax	# pbi, tmp78
	movl	64(%rax), %esi	# pbi_15(D)->flags, D.17517
	.loc 1 2440 0
	movq	-48(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_12(D)->code, D.17518
	.loc 1 2439 0
	cmpw	$38, %ax	#, D.17518
	jne	.L528	#,
	.loc 1 2439 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# x, tmp80
	movq	8(%rax), %rax	# x_12(D)->fld[0].rtx, iftmp.190
	jmp	.L529	#
.L528:
	.loc 1 2439 0 discriminator 2
	movl	$0, %eax	#, iftmp.190
.L529:
	.loc 1 2439 0 discriminator 3
	movq	-16(%rbp), %rdx	# link, tmp81
	movq	8(%rdx), %rdx	# link_6->fld[0].rtx, D.17519
	movq	-56(%rbp), %rcx	# insn, tmp82
	movq	-40(%rbp), %rdi	# pbi, tmp83
	movl	%esi, %r9d	# D.17517,
	movq	%rcx, %r8	# tmp82,
	movq	%rax, %rcx	# iftmp.190,
	movl	$47, %esi	#,
	call	mark_set_1	#
.L527:
	.loc 1 2436 0 is_stmt 1
	movq	-16(%rbp), %rax	# link, tmp84
	movq	16(%rax), %rax	# link_6->fld[1].rtx, tmp85
	movq	%rax, -16(%rbp)	# tmp85, link
.L526:
	.loc 1 2436 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L530	#,
.L525:
	.loc 1 2445 0 is_stmt 1
	movq	-48(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_1->code, D.17518
	movzwl	%ax, %eax	# D.17518, tmp87
	movl	%eax, -28(%rbp)	# tmp87, code
	movl	-28(%rbp), %eax	# code, code
	cmpl	$39, %eax	#, code
	je	.L532	#,
	cmpl	$39, %eax	#, code
	ja	.L533	#,
	cmpl	$38, %eax	#, code
	je	.L534	#,
	.loc 1 2489 0
	jmp	.L524	#
.L533:
	.loc 1 2445 0
	cmpl	$47, %eax	#, code
	je	.L535	#,
	cmpl	$49, %eax	#, code
	je	.L535	#,
	.loc 1 2489 0
	jmp	.L524	#
.L535:
	.loc 1 2449 0
	movq	-40(%rbp), %rax	# pbi, tmp89
	movl	64(%rax), %r8d	# pbi_15(D)->flags, D.17517
	movq	-48(%rbp), %rax	# x, tmp90
	movq	8(%rax), %rdx	# x_1->fld[0].rtx, D.17519
	movq	-56(%rbp), %rdi	# insn, tmp91
	movq	-24(%rbp), %rcx	# cond, tmp92
	movl	-28(%rbp), %esi	# code, tmp93
	movq	-40(%rbp), %rax	# pbi, tmp94
	movl	%r8d, %r9d	# D.17517,
	movq	%rdi, %r8	# tmp91,
	movq	%rax, %rdi	# tmp94,
	call	mark_set_1	#
	.loc 1 2450 0
	jmp	.L524	#
.L534:
	.loc 1 2453 0
	movq	-48(%rbp), %rax	# x, tmp95
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp96
	movq	%rax, -24(%rbp)	# tmp96, cond
	.loc 1 2454 0
	movq	-48(%rbp), %rax	# x, tmp97
	movq	16(%rax), %rax	# x_1->fld[1].rtx, tmp98
	movq	%rax, -48(%rbp)	# tmp98, x
	.loc 1 2455 0
	jmp	.L525	#
.L532:
.LBB92:
	.loc 1 2461 0
	movq	-48(%rbp), %rax	# x, tmp99
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.17520
	movl	(%rax), %eax	# _28->num_elem, D.17517
	subl	$1, %eax	#, tmp100
	movl	%eax, -32(%rbp)	# tmp100, i
	jmp	.L537	#
.L543:
.LBB93:
	.loc 1 2463 0
	movq	-48(%rbp), %rax	# x, tmp101
	movq	8(%rax), %rax	# x_1->fld[0].rtvec, D.17520
	movl	-32(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _31->elem, tmp104
	movq	%rax, -8(%rbp)	# tmp104, sub
	.loc 1 2464 0
	movq	-8(%rbp), %rax	# sub, tmp105
	movzwl	(%rax), %eax	# sub_32->code, D.17518
	movzwl	%ax, %eax	# D.17518, tmp106
	movl	%eax, -28(%rbp)	# tmp106, code
	movl	-28(%rbp), %eax	# code, code
	cmpl	$47, %eax	#, code
	je	.L539	#,
	cmpl	$49, %eax	#, code
	je	.L539	#,
	cmpl	$38, %eax	#, code
	je	.L540	#,
	.loc 1 2482 0
	jmp	.L542	#
.L540:
	.loc 1 2467 0
	cmpq	$0, -24(%rbp)	#, cond
	je	.L541	#,
	.loc 1 2468 0
	movl	$__FUNCTION__.14149, %edx	#,
	movl	$2468, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L541:
	.loc 1 2470 0
	movq	-8(%rbp), %rax	# sub, tmp108
	movq	8(%rax), %rax	# sub_32->fld[0].rtx, tmp109
	movq	%rax, -24(%rbp)	# tmp109, cond
	.loc 1 2471 0
	movq	-8(%rbp), %rax	# sub, tmp110
	movq	16(%rax), %rax	# sub_32->fld[1].rtx, tmp111
	movq	%rax, -8(%rbp)	# tmp111, sub
	.loc 1 2472 0
	movq	-8(%rbp), %rax	# sub, tmp112
	movzwl	(%rax), %eax	# sub_36->code, D.17518
	cmpw	$47, %ax	#, D.17518
	je	.L539	#,
	.loc 1 2472 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sub, tmp113
	movzwl	(%rax), %eax	# sub_36->code, D.17518
	cmpw	$49, %ax	#, D.17518
	je	.L539	#,
	.loc 1 2473 0 is_stmt 1
	jmp	.L542	#
.L539:
	.loc 1 2478 0
	movq	-40(%rbp), %rax	# pbi, tmp114
	movl	64(%rax), %r8d	# pbi_15(D)->flags, D.17517
	movq	-8(%rbp), %rax	# sub, tmp115
	movq	8(%rax), %rdx	# sub_8->fld[0].rtx, D.17519
	movq	-56(%rbp), %rdi	# insn, tmp116
	movq	-24(%rbp), %rcx	# cond, tmp117
	movl	-28(%rbp), %esi	# code, tmp118
	movq	-40(%rbp), %rax	# pbi, tmp119
	movl	%r8d, %r9d	# D.17517,
	movq	%rdi, %r8	# tmp116,
	movq	%rax, %rdi	# tmp119,
	call	mark_set_1	#
	.loc 1 2479 0
	nop
.L542:
.LBE93:
	.loc 1 2461 0
	subl	$1, -32(%rbp)	#, i
.L537:
	.loc 1 2461 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, i
	jns	.L543	#,
	.loc 1 2485 0 is_stmt 1
	nop
.L524:
.LBE92:
	.loc 1 2491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	mark_set_regs, .-mark_set_regs
	.type	mark_set_1, @function
mark_set_1:
.LFB36:
	.loc 1 2505 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# pbi, pbi
	movl	%esi, -92(%rbp)	# code, code
	movq	%rdx, -104(%rbp)	# reg, reg
	movq	%rcx, -112(%rbp)	# cond, cond
	movq	%r8, -120(%rbp)	# insn, insn
	movl	%r9d, -96(%rbp)	# flags, flags
	.loc 1 2506 0
	movl	$-1, -68(%rbp)	#, regno_first
	movl	$-1, -64(%rbp)	#, regno_last
	.loc 1 2507 0
	movq	$0, -32(%rbp)	#, not_dead
	.loc 1 2514 0
	movq	-104(%rbp), %rax	# reg, tmp298
	movzwl	(%rax), %eax	# reg_53(D)->code, D.17522
	movzwl	%ax, %eax	# D.17522, D.17523
	cmpl	$63, %eax	#, D.17523
	je	.L546	#,
	cmpl	$63, %eax	#, D.17523
	ja	.L547	#,
	cmpl	$39, %eax	#, D.17523
	je	.L548	#,
	cmpl	$61, %eax	#, D.17523
	je	.L549	#,
	.loc 1 2594 0
	jmp	.L656	#
.L547:
	.loc 1 2514 0
	cmpl	$64, %eax	#, D.17523
	je	.L550	#,
	subl	$132, %eax	#, tmp299
	cmpl	$1, %eax	#, tmp299
	ja	.L656	#,
	jmp	.L550	#
.L548:
	.loc 1 2520 0
	movq	-104(%rbp), %rax	# reg, tmp300
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtvec, D.17524
	movl	(%rax), %eax	# _56->num_elem, D.17525
	subl	$1, %eax	#, tmp301
	movl	%eax, -60(%rbp)	# tmp301, i
	jmp	.L551	#
.L553:
	.loc 1 2521 0
	movq	-104(%rbp), %rax	# reg, tmp302
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtvec, D.17524
	movl	-60(%rbp), %edx	# i, tmp304
	movslq	%edx, %rdx	# tmp304, tmp303
	movq	8(%rax,%rdx,8), %rax	# _59->elem, D.17526
	movq	8(%rax), %rax	# _60->fld[0].rtx, D.17526
	testq	%rax, %rax	# D.17526
	je	.L552	#,
	.loc 1 2522 0
	movq	-104(%rbp), %rax	# reg, tmp305
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtvec, D.17524
	movl	-60(%rbp), %edx	# i, tmp307
	movslq	%edx, %rdx	# tmp307, tmp306
	movq	8(%rax,%rdx,8), %rax	# _62->elem, D.17526
	movq	8(%rax), %rdx	# _63->fld[0].rtx, D.17526
	movl	-96(%rbp), %r8d	# flags, tmp308
	movq	-120(%rbp), %rdi	# insn, tmp309
	movq	-112(%rbp), %rcx	# cond, tmp310
	movl	-92(%rbp), %esi	# code, tmp311
	movq	-88(%rbp), %rax	# pbi, tmp312
	movl	%r8d, %r9d	# tmp308,
	movq	%rdi, %r8	# tmp309,
	movq	%rax, %rdi	# tmp312,
	call	mark_set_1	#
.L552:
	.loc 1 2520 0
	subl	$1, -60(%rbp)	#, i
.L551:
	.loc 1 2520 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L553	#,
	.loc 1 2524 0 is_stmt 1
	jmp	.L544	#
.L550:
	.loc 1 2531 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp313
	movq	8(%rax), %rax	# reg_1->fld[0].rtx, tmp314
	movq	%rax, -104(%rbp)	# tmp314, reg
	.loc 1 2532 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp315
	movzwl	(%rax), %eax	# reg_71->code, D.17522
	.loc 1 2535 0 discriminator 1
	cmpw	$63, %ax	#, D.17522
	je	.L550	#,
	.loc 1 2533 0
	movq	-104(%rbp), %rax	# reg, tmp316
	movzwl	(%rax), %eax	# reg_71->code, D.17522
	cmpw	$133, %ax	#, D.17522
	je	.L550	#,
	.loc 1 2534 0
	movq	-104(%rbp), %rax	# reg, tmp317
	movzwl	(%rax), %eax	# reg_71->code, D.17522
	cmpw	$132, %ax	#, D.17522
	je	.L550	#,
	.loc 1 2535 0
	movq	-104(%rbp), %rax	# reg, tmp318
	movzwl	(%rax), %eax	# reg_71->code, D.17522
	cmpw	$64, %ax	#, D.17522
	je	.L550	#,
	.loc 1 2536 0
	movq	-104(%rbp), %rax	# reg, tmp319
	movzwl	(%rax), %eax	# reg_71->code, D.17522
	cmpw	$66, %ax	#, D.17522
	jne	.L555	#,
	.loc 1 2537 0
	jmp	.L556	#
.L555:
	.loc 1 2538 0
	movq	-104(%rbp), %rax	# reg, tmp320
	movl	8(%rax), %eax	# reg_71->fld[0].rtuint, D.17523
	movl	%eax, %edx	# D.17523, D.17525
	movq	-88(%rbp), %rax	# pbi, tmp321
	movq	8(%rax), %rax	# pbi_65(D)->reg_live, D.17527
	movl	%edx, %esi	# D.17525,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_bit_p	#
	cltq
	movq	%rax, -32(%rbp)	# tmp322, not_dead
.L549:
	.loc 1 2542 0
	movq	-104(%rbp), %rax	# reg, tmp323
	movl	8(%rax), %eax	# reg_2->fld[0].rtuint, D.17523
	movl	%eax, -68(%rbp)	# D.17523, regno_first
	movl	-68(%rbp), %eax	# regno_first, tmp324
	movl	%eax, -64(%rbp)	# tmp324, regno_last
	.loc 1 2543 0
	cmpl	$52, -68(%rbp)	#, regno_first
	jg	.L557	#,
	.loc 1 2544 0
	cmpl	$7, -68(%rbp)	#, regno_first
	jle	.L558	#,
	.loc 1 2544 0 is_stmt 0 discriminator 1
	cmpl	$15, -68(%rbp)	#, regno_first
	jle	.L559	#,
.L558:
	.loc 1 2544 0 discriminator 2
	cmpl	$20, -68(%rbp)	#, regno_first
	jle	.L560	#,
	.loc 1 2544 0 discriminator 1
	cmpl	$28, -68(%rbp)	#, regno_first
	jle	.L559	#,
.L560:
	.loc 1 2544 0 discriminator 2
	cmpl	$44, -68(%rbp)	#, regno_first
	jle	.L561	#,
	.loc 1 2544 0 discriminator 1
	cmpl	$52, -68(%rbp)	#, regno_first
	jle	.L559	#,
.L561:
	.loc 1 2544 0 discriminator 2
	cmpl	$28, -68(%rbp)	#, regno_first
	jle	.L562	#,
	.loc 1 2544 0 discriminator 1
	cmpl	$36, -68(%rbp)	#, regno_first
	jg	.L562	#,
.L559:
	movq	-104(%rbp), %rax	# reg, tmp325
	movzbl	2(%rax), %eax	# reg_2->mode, D.17528
	movzbl	%al, %eax	# D.17528, D.17525
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17529
	cmpl	$5, %eax	#, D.17529
	je	.L563	#,
	.loc 1 2544 0 discriminator 2
	movq	-104(%rbp), %rax	# reg, tmp327
	movzbl	2(%rax), %eax	# reg_2->mode, D.17528
	movzbl	%al, %eax	# D.17528, D.17525
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17529
	cmpl	$6, %eax	#, D.17529
	jne	.L564	#,
.L563:
	.loc 1 2544 0 discriminator 1
	movl	$1, %eax	#, iftmp.192
	jmp	.L565	#
.L564:
	.loc 1 2544 0 discriminator 3
	movl	$0, %eax	#, iftmp.192
.L565:
	.loc 1 2544 0 discriminator 4
	jmp	.L566	#
.L562:
	.loc 1 2544 0 discriminator 2
	movq	-104(%rbp), %rax	# reg, tmp329
	movzbl	2(%rax), %eax	# reg_2->mode, D.17528
	cmpb	$18, %al	#, D.17528
	jne	.L567	#,
	.loc 1 2544 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.195
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L568	#,
	.loc 1 2544 0 discriminator 6
	movl	$1, %eax	#, iftmp.194
	jmp	.L566	#
.L568:
	.loc 1 2544 0 discriminator 7
	movl	$2, %eax	#, iftmp.194
	jmp	.L566	#
.L567:
	.loc 1 2544 0 discriminator 5
	movq	-104(%rbp), %rax	# reg, tmp330
	movzbl	2(%rax), %eax	# reg_2->mode, D.17528
	cmpb	$24, %al	#, D.17528
	jne	.L571	#,
	.loc 1 2544 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.198
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L572	#,
	.loc 1 2544 0 discriminator 10
	movl	$3, %eax	#, iftmp.197
	jmp	.L566	#
.L572:
	.loc 1 2544 0 discriminator 11
	movl	$5, %eax	#, iftmp.197
	jmp	.L566	#
.L571:
	.loc 1 2544 0 discriminator 9
	movq	-104(%rbp), %rax	# reg, tmp331
	movzbl	2(%rax), %eax	# reg_2->mode, D.17528
	movzbl	%al, %eax	# D.17528, D.17525
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17528
	movzbl	%al, %edx	# D.17528, D.17525
	movl	target_flags(%rip), %eax	# target_flags, target_flags.200
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L575	#,
	.loc 1 2544 0 discriminator 1
	movl	$8, %eax	#, iftmp.199
	jmp	.L576	#
.L575:
	.loc 1 2544 0 discriminator 2
	movl	$4, %eax	#, iftmp.199
.L576:
	.loc 1 2544 0 discriminator 3
	addl	%edx, %eax	# D.17525, D.17525
	subl	$1, %eax	#, D.17525
	movl	target_flags(%rip), %edx	# target_flags, target_flags.202
	andl	$33554432, %edx	#, D.17525
	testl	%edx, %edx	# D.17525
	je	.L577	#,
	.loc 1 2544 0 discriminator 1
	movl	$8, %ebx	#, iftmp.201
	jmp	.L578	#
.L577:
	.loc 1 2544 0 discriminator 2
	movl	$4, %ebx	#, iftmp.201
.L578:
	.loc 1 2544 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.201
	subl	$1, %eax	#, iftmp.196
.L566:
	addl	%eax, -64(%rbp)	# iftmp.191, regno_last
	.loc 1 2545 0 is_stmt 1 discriminator 3
	jmp	.L556	#
.L557:
	.loc 1 2545 0 is_stmt 0
	jmp	.L556	#
.L546:
	.loc 1 2548 0 is_stmt 1
	movq	-104(%rbp), %rax	# reg, tmp335
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtx, D.17526
	movzwl	(%rax), %eax	# _125->code, D.17522
	cmpw	$61, %ax	#, D.17522
	jne	.L579	#,
.LBB94:
	.loc 1 2550 0
	movq	-104(%rbp), %rax	# reg, tmp336
	movzbl	2(%rax), %eax	# reg_53(D)->mode, D.17528
	movzbl	%al, %eax	# D.17528, tmp337
	movl	%eax, -48(%rbp)	# tmp337, outer_mode
	.loc 1 2551 0
	movq	-104(%rbp), %rax	# reg, tmp338
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtx, D.17526
	movzbl	2(%rax), %eax	# _129->mode, D.17528
	movzbl	%al, %eax	# D.17528, tmp339
	movl	%eax, -44(%rbp)	# tmp339, inner_mode
	.loc 1 2556 0
	movq	-104(%rbp), %rax	# reg, tmp340
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtx, D.17526
	movl	8(%rax), %eax	# _132->fld[0].rtuint, D.17523
	movl	%eax, -68(%rbp)	# D.17523, regno_first
	movl	-68(%rbp), %eax	# regno_first, tmp341
	movl	%eax, -64(%rbp)	# tmp341, regno_last
	.loc 1 2557 0
	cmpl	$52, -68(%rbp)	#, regno_first
	jg	.L580	#,
	.loc 1 2559 0
	movq	-104(%rbp), %rax	# reg, tmp342
	movl	16(%rax), %edx	# reg_53(D)->fld[1].rtuint, D.17523
	movl	-68(%rbp), %eax	# regno_first, regno_first.203
	movl	-48(%rbp), %ecx	# outer_mode, tmp343
	movl	-44(%rbp), %esi	# inner_mode, tmp344
	movl	%eax, %edi	# regno_first.203,
	call	subreg_regno_offset	#
	movl	-68(%rbp), %edx	# regno_first, regno_first.204
	addl	%edx, %eax	# regno_first.204, D.17523
	movl	%eax, -68(%rbp)	# D.17523, regno_first
	.loc 1 2563 0
	cmpl	$7, -68(%rbp)	#, regno_first
	jle	.L581	#,
	.loc 1 2563 0 is_stmt 0 discriminator 1
	cmpl	$15, -68(%rbp)	#, regno_first
	jle	.L582	#,
.L581:
	.loc 1 2563 0 discriminator 2
	cmpl	$20, -68(%rbp)	#, regno_first
	jle	.L583	#,
	.loc 1 2563 0 discriminator 1
	cmpl	$28, -68(%rbp)	#, regno_first
	jle	.L582	#,
.L583:
	.loc 1 2563 0 discriminator 2
	cmpl	$44, -68(%rbp)	#, regno_first
	jle	.L584	#,
	.loc 1 2563 0 discriminator 1
	cmpl	$52, -68(%rbp)	#, regno_first
	jle	.L582	#,
.L584:
	.loc 1 2563 0 discriminator 2
	cmpl	$28, -68(%rbp)	#, regno_first
	jle	.L585	#,
	.loc 1 2563 0 discriminator 1
	cmpl	$36, -68(%rbp)	#, regno_first
	jg	.L585	#,
.L582:
	movl	-48(%rbp), %eax	# outer_mode, outer_mode.207
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17529
	cmpl	$5, %eax	#, D.17529
	je	.L586	#,
	.loc 1 2563 0 discriminator 2
	movl	-48(%rbp), %eax	# outer_mode, outer_mode.208
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17529
	cmpl	$6, %eax	#, D.17529
	jne	.L587	#,
.L586:
	.loc 1 2563 0 discriminator 1
	movl	$2, %eax	#, iftmp.206
	jmp	.L588	#
.L587:
	movl	$1, %eax	#, iftmp.206
.L588:
	.loc 1 2563 0 discriminator 3
	jmp	.L589	#
.L585:
	.loc 1 2563 0 discriminator 2
	cmpl	$18, -48(%rbp)	#, outer_mode
	jne	.L590	#,
	.loc 1 2563 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.211
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L591	#,
	movl	$2, %eax	#, iftmp.210
	jmp	.L589	#
.L591:
	.loc 1 2563 0 discriminator 2
	movl	$3, %eax	#, iftmp.210
	jmp	.L589	#
.L590:
	cmpl	$24, -48(%rbp)	#, outer_mode
	jne	.L594	#,
	.loc 1 2563 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.214
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L595	#,
	movl	$4, %eax	#, iftmp.213
	jmp	.L589	#
.L595:
	.loc 1 2563 0 discriminator 2
	movl	$6, %eax	#, iftmp.213
	jmp	.L589	#
.L594:
	movl	-48(%rbp), %eax	# outer_mode, outer_mode.215
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17528
	movzbl	%al, %edx	# D.17528, D.17525
	movl	target_flags(%rip), %eax	# target_flags, target_flags.217
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L598	#,
	.loc 1 2563 0 discriminator 1
	movl	$8, %eax	#, iftmp.216
	jmp	.L599	#
.L598:
	.loc 1 2563 0 discriminator 2
	movl	$4, %eax	#, iftmp.216
.L599:
	.loc 1 2563 0 discriminator 3
	addl	%edx, %eax	# D.17525, D.17525
	subl	$1, %eax	#, D.17525
	movl	target_flags(%rip), %edx	# target_flags, target_flags.219
	andl	$33554432, %edx	#, D.17525
	testl	%edx, %edx	# D.17525
	je	.L600	#,
	.loc 1 2563 0 discriminator 1
	movl	$8, %ebx	#, iftmp.218
	jmp	.L601	#
.L600:
	.loc 1 2563 0 discriminator 2
	movl	$4, %ebx	#, iftmp.218
.L601:
	.loc 1 2563 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.218
.L589:
	movl	-68(%rbp), %edx	# regno_first, tmp350
	addl	%edx, %eax	# tmp350, D.17525
	.loc 1 2562 0 is_stmt 1 discriminator 3
	subl	$1, %eax	#, tmp351
	movl	%eax, -64(%rbp)	# tmp351, regno_last
	.loc 1 2569 0 discriminator 3
	movl	-68(%rbp), %edx	# regno_first, tmp352
	movl	-48(%rbp), %eax	# outer_mode, tmp353
	movl	%edx, %esi	# tmp352,
	movl	%eax, %edi	# tmp353,
	call	gen_rtx_REG	#
	movq	%rax, -104(%rbp)	# tmp354, reg
	jmp	.L612	#
.L580:
	.loc 1 2579 0
	movl	-48(%rbp), %eax	# outer_mode, outer_mode.220
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17528
	.loc 1 2580 0
	movzbl	%al, %edx	# D.17528, D.17525
	movl	target_flags(%rip), %eax	# target_flags, target_flags.222
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L603	#,
	.loc 1 2580 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.221
	jmp	.L604	#
.L603:
	.loc 1 2580 0 discriminator 2
	movl	$4, %eax	#, iftmp.221
.L604:
	.loc 1 2580 0 discriminator 3
	addl	%edx, %eax	# D.17525, D.17525
	subl	$1, %eax	#, D.17525
	movl	target_flags(%rip), %edx	# target_flags, target_flags.224
	andl	$33554432, %edx	#, D.17525
	testl	%edx, %edx	# D.17525
	je	.L605	#,
	.loc 1 2580 0 discriminator 1
	movl	$8, %ebx	#, iftmp.223
	jmp	.L606	#
.L605:
	.loc 1 2580 0 discriminator 2
	movl	$4, %ebx	#, iftmp.223
.L606:
	.loc 1 2580 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.223
	movl	%eax, %ecx	# tmp356, D.17525
	.loc 1 2581 0 is_stmt 1 discriminator 3
	movl	-44(%rbp), %eax	# inner_mode, inner_mode.225
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17528
	.loc 1 2582 0 discriminator 3
	movzbl	%al, %edx	# D.17528, D.17525
	movl	target_flags(%rip), %eax	# target_flags, target_flags.227
	andl	$33554432, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L607	#,
	.loc 1 2582 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.226
	jmp	.L608	#
.L607:
	.loc 1 2582 0 discriminator 2
	movl	$4, %eax	#, iftmp.226
.L608:
	.loc 1 2582 0 discriminator 3
	addl	%edx, %eax	# D.17525, D.17525
	subl	$1, %eax	#, D.17525
	movl	target_flags(%rip), %edx	# target_flags, target_flags.229
	andl	$33554432, %edx	#, D.17525
	testl	%edx, %edx	# D.17525
	je	.L609	#,
	.loc 1 2582 0 discriminator 1
	movl	$8, %ebx	#, iftmp.228
	jmp	.L610	#
.L609:
	.loc 1 2582 0 discriminator 2
	movl	$4, %ebx	#, iftmp.228
.L610:
	.loc 1 2582 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.228
	.loc 1 2579 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.17525, D.17525
	jge	.L611	#,
	.loc 1 2583 0
	movq	-88(%rbp), %rax	# pbi, tmp361
	movq	8(%rax), %rax	# pbi_65(D)->reg_live, D.17527
	movl	-68(%rbp), %edx	# regno_first, tmp362
	movl	%edx, %esi	# tmp362,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_bit_p	#
	cltq
	movq	%rax, -32(%rbp)	# tmp363, not_dead
.L611:
	.loc 1 2586 0
	movq	-104(%rbp), %rax	# reg, tmp364
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtx, tmp365
	movq	%rax, -104(%rbp)	# tmp365, reg
.LBE94:
	jmp	.L612	#
.L579:
	.loc 1 2590 0
	movq	-104(%rbp), %rax	# reg, tmp366
	movq	8(%rax), %rax	# reg_53(D)->fld[0].rtx, tmp367
	movq	%rax, -104(%rbp)	# tmp367, reg
	.loc 1 2591 0
	jmp	.L556	#
.L612:
	jmp	.L556	#
.L656:
	.loc 1 2594 0
	nop
.L556:
	.loc 1 2599 0
	movl	optimize(%rip), %eax	# optimize, optimize.230
	testl	%eax, %eax	# optimize.230
	je	.L613	#,
	.loc 1 2599 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# flags, tmp368
	andl	$16, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L613	#,
	.loc 1 2601 0 is_stmt 1
	movq	-104(%rbp), %rax	# reg, tmp369
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$61, %ax	#, D.17522
	jne	.L614	#,
	.loc 1 2602 0
	movq	-104(%rbp), %rdx	# reg, tmp370
	movq	-88(%rbp), %rax	# pbi, tmp371
	movq	%rdx, %rsi	# tmp370,
	movq	%rax, %rdi	# tmp371,
	call	invalidate_mems_from_set	#
.L614:
	.loc 1 2607 0
	cmpq	$0, -120(%rbp)	#, insn
	je	.L615	#,
	.loc 1 2607 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp372
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$66, %ax	#, D.17522
	jne	.L615	#,
	.loc 1 2608 0 is_stmt 1
	movq	-120(%rbp), %rdx	# insn, tmp373
	movq	-88(%rbp), %rax	# pbi, tmp374
	movq	%rdx, %rsi	# tmp373,
	movq	%rax, %rdi	# tmp374,
	call	invalidate_mems_from_autoinc	#
.L615:
	.loc 1 2610 0
	movq	-104(%rbp), %rax	# reg, tmp375
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$66, %ax	#, D.17522
	jne	.L613	#,
	.loc 1 2610 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# reg, tmp376
	movq	%rax, %rdi	# tmp376,
	call	side_effects_p	#
	testl	%eax, %eax	# D.17525
	jne	.L613	#,
	.loc 1 2612 0 is_stmt 1
	cmpq	$0, -112(%rbp)	#, cond
	jne	.L613	#,
	.loc 1 2616 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.17526
	movq	-104(%rbp), %rdx	# reg, tmp377
	movq	%rdx, %rsi	# tmp377,
	movq	%rax, %rdi	# D.17526,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17525
	jne	.L613	#,
	.loc 1 2617 0
	movq	-104(%rbp), %rax	# reg, tmp378
	movq	%rax, %rdi	# tmp378,
	call	canon_rtx	#
	movq	%rax, %rdx	#, D.17526
	movq	-88(%rbp), %rax	# pbi, tmp379
	movq	%rdx, %rsi	# D.17526,
	movq	%rax, %rdi	# tmp379,
	call	add_to_mem_set_list	#
.L613:
	.loc 1 2620 0
	movq	-104(%rbp), %rax	# reg, tmp380
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$61, %ax	#, D.17522
	jne	.L616	#,
	.loc 1 2621 0
	cmpl	$20, -68(%rbp)	#, regno_first
	jne	.L617	#,
	.loc 1 2622 0 discriminator 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.231
	.loc 1 2621 0 discriminator 1
	testl	%eax, %eax	# reload_completed.231
	je	.L616	#,
	.loc 1 2622 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.232
	testl	%eax, %eax	# frame_pointer_needed.232
	jne	.L616	#,
.L617:
	.loc 1 2624 0
	cmpl	$6, -68(%rbp)	#, regno_first
	jne	.L618	#,
	.loc 1 2625 0 discriminator 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.233
	.loc 1 2624 0 discriminator 1
	testl	%eax, %eax	# reload_completed.233
	je	.L616	#,
	.loc 1 2625 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.234
	testl	%eax, %eax	# frame_pointer_needed.234
	jne	.L616	#,
.L618:
	.loc 1 2628 0
	cmpl	$16, -68(%rbp)	#, regno_first
	jne	.L619	#,
	.loc 1 2628 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# regno_first, tmp382
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17530
	testb	%al, %al	# D.17530
	jne	.L616	#,
.L619:
.LBB95:
	.loc 1 2632 0 is_stmt 1
	movl	$0, -56(%rbp)	#, some_was_live
	movl	$0, -52(%rbp)	#, some_was_dead
	.loc 1 2634 0
	movl	-68(%rbp), %eax	# regno_first, tmp383
	movl	%eax, -60(%rbp)	# tmp383, i
	jmp	.L620	#
.L624:
.LBB96:
	.loc 1 2636 0
	movq	-88(%rbp), %rax	# pbi, tmp384
	movq	8(%rax), %rax	# pbi_65(D)->reg_live, D.17527
	movl	-60(%rbp), %edx	# i, tmp385
	movl	%edx, %esi	# tmp385,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_bit_p	#
	movl	%eax, -40(%rbp)	# tmp386, needed_regno
	.loc 1 2637 0
	movq	-88(%rbp), %rax	# pbi, tmp387
	movq	40(%rax), %rax	# pbi_65(D)->local_set, D.17527
	testq	%rax, %rax	# D.17527
	je	.L621	#,
	.loc 1 2641 0
	movq	-88(%rbp), %rax	# pbi, tmp388
	movq	48(%rax), %rax	# pbi_65(D)->cond_local_set, D.17527
	movl	-60(%rbp), %edx	# i, tmp389
	movl	%edx, %esi	# tmp389,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_clear_bit	#
	.loc 1 2642 0
	cmpq	$0, -112(%rbp)	#, cond
	je	.L622	#,
	.loc 1 2643 0
	movq	-88(%rbp), %rax	# pbi, tmp390
	movq	40(%rax), %rax	# pbi_65(D)->local_set, D.17527
	movl	-60(%rbp), %edx	# i, tmp391
	movl	%edx, %esi	# tmp391,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17525
	jne	.L622	#,
	.loc 1 2644 0
	movq	-88(%rbp), %rax	# pbi, tmp392
	movq	48(%rax), %rax	# pbi_65(D)->cond_local_set, D.17527
	movl	-60(%rbp), %edx	# i, tmp393
	movl	%edx, %esi	# tmp393,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_set_bit	#
	jmp	.L621	#
.L622:
	.loc 1 2646 0
	movq	-88(%rbp), %rax	# pbi, tmp394
	movq	40(%rax), %rax	# pbi_65(D)->local_set, D.17527
	movl	-60(%rbp), %edx	# i, tmp395
	movl	%edx, %esi	# tmp395,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_set_bit	#
.L621:
	.loc 1 2648 0
	cmpl	$49, -92(%rbp)	#, code
	je	.L623	#,
	.loc 1 2649 0
	movq	-88(%rbp), %rax	# pbi, tmp396
	movq	16(%rax), %rax	# pbi_65(D)->new_set, D.17527
	movl	-60(%rbp), %edx	# i, tmp397
	movl	%edx, %esi	# tmp397,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_set_bit	#
.L623:
	.loc 1 2651 0
	movl	-40(%rbp), %eax	# needed_regno, tmp398
	orl	%eax, -56(%rbp)	# tmp398, some_was_live
	.loc 1 2652 0
	cmpl	$0, -40(%rbp)	#, needed_regno
	sete	%al	#, D.17531
	movzbl	%al, %eax	# D.17531, D.17525
	orl	%eax, -52(%rbp)	# D.17525, some_was_dead
.LBE96:
	.loc 1 2634 0
	addl	$1, -60(%rbp)	#, i
.L620:
	.loc 1 2634 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp399
	cmpl	-64(%rbp), %eax	# regno_last, tmp399
	jle	.L624	#,
	.loc 1 2672 0 is_stmt 1
	movl	-96(%rbp), %eax	# flags, tmp400
	andl	$71, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L625	#,
.LBB97:
	.loc 1 2676 0
	movq	-88(%rbp), %rax	# pbi, tmp401
	movq	(%rax), %rax	# pbi_65(D)->bb, D.17532
	movl	88(%rax), %eax	# _244->index, tmp402
	movl	%eax, -36(%rbp)	# tmp402, blocknum
	.loc 1 2678 0
	movq	$0, -24(%rbp)	#, y
	.loc 1 2679 0
	movl	-96(%rbp), %eax	# flags, tmp403
	andl	$66, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L626	#,
	.loc 1 2681 0
	movq	-88(%rbp), %rax	# pbi, tmp404
	movq	24(%rax), %rax	# pbi_65(D)->reg_next_use, D.17533
	movl	-68(%rbp), %edx	# regno_first, tmp405
	movslq	%edx, %rdx	# tmp405, D.17534
	salq	$3, %rdx	#, D.17534
	addq	%rdx, %rax	# D.17534, D.17533
	movq	(%rax), %rax	# *_251, tmp406
	movq	%rax, -24(%rbp)	# tmp406, y
	.loc 1 2684 0
	movl	-68(%rbp), %eax	# regno_first, tmp407
	movl	%eax, -60(%rbp)	# tmp407, i
	jmp	.L627	#
.L628:
	.loc 1 2685 0 discriminator 2
	movq	-88(%rbp), %rax	# pbi, tmp408
	movq	24(%rax), %rax	# pbi_65(D)->reg_next_use, D.17533
	movl	-60(%rbp), %edx	# i, tmp409
	movslq	%edx, %rdx	# tmp409, D.17534
	salq	$3, %rdx	#, D.17534
	addq	%rdx, %rax	# D.17534, D.17533
	movq	$0, (%rax)	#, *_257
	.loc 1 2684 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L627:
	.loc 1 2684 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp410
	cmpl	-64(%rbp), %eax	# regno_last, tmp410
	jle	.L628	#,
.L626:
	.loc 1 2688 0 is_stmt 1
	movl	-96(%rbp), %eax	# flags, tmp411
	andl	$4, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L629	#,
	.loc 1 2690 0
	movl	-68(%rbp), %eax	# regno_first, tmp412
	movl	%eax, -60(%rbp)	# tmp412, i
	jmp	.L630	#
.L636:
	.loc 1 2694 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.235
	movl	-60(%rbp), %edx	# i, tmp414
	movslq	%edx, %rdx	# tmp414, tmp413
	addq	$4, %rdx	#, tmp415
	movq	(%rax,%rdx,8), %rax	# reg_n_info.235_261->data.reg, D.17535
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.236
	movl	-60(%rbp), %ecx	# i, tmp417
	movslq	%ecx, %rcx	# tmp417, tmp416
	addq	$4, %rcx	#, tmp418
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.236_263->data.reg, D.17535
	movl	12(%rdx), %edx	# _264->sets, D.17525
	addl	$1, %edx	#, D.17525
	movl	%edx, 12(%rax)	# D.17525, _262->sets
	.loc 1 2695 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.237
	movl	-60(%rbp), %edx	# i, tmp420
	movslq	%edx, %rdx	# tmp420, tmp419
	addq	$4, %rdx	#, tmp421
	movq	(%rax,%rdx,8), %rax	# reg_n_info.237_267->data.reg, D.17535
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.238
	movl	-60(%rbp), %ecx	# i, tmp423
	movslq	%ecx, %rcx	# tmp423, tmp422
	addq	$4, %rcx	#, tmp424
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.238_269->data.reg, D.17535
	movl	16(%rdx), %edx	# _270->refs, D.17525
	addl	$1, %edx	#, D.17525
	movl	%edx, 16(%rax)	# D.17525, _268->refs
	.loc 1 2696 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.239
	movl	-60(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, tmp425
	addq	$4, %rdx	#, tmp427
	movq	(%rax,%rdx,8), %rsi	# reg_n_info.239_273->data.reg, D.17535
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.240
	movl	-60(%rbp), %edx	# i, tmp429
	movslq	%edx, %rdx	# tmp429, tmp428
	addq	$4, %rdx	#, tmp430
	movq	(%rax,%rdx,8), %rax	# reg_n_info.240_275->data.reg, D.17535
	movl	20(%rax), %edi	# _276->freq, D.17525
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.242
	testl	%eax, %eax	# optimize_size.242
	jne	.L631	#,
	.loc 1 2696 0 is_stmt 0 discriminator 1
	movl	flag_branch_probabilities(%rip), %eax	# flag_branch_probabilities, flag_branch_probabilities.243
	testl	%eax, %eax	# flag_branch_probabilities.243
	je	.L632	#,
	.loc 1 2696 0 discriminator 2
	movq	entry_exit_blocks+96(%rip), %rax	# entry_exit_blocks[0].count, D.17536
	testq	%rax, %rax	# D.17536
	je	.L631	#,
.L632:
	.loc 1 2696 0 discriminator 1
	movq	-88(%rbp), %rax	# pbi, tmp431
	movq	(%rax), %rax	# pbi_65(D)->bb, D.17532
	movl	104(%rax), %eax	# _281->frequency, D.17525
	imull	$1000, %eax, %eax	#, D.17525, D.17525
	addl	$9999, %eax	#, D.17537
	cmpl	$19998, %eax	#, D.17537
	jbe	.L633	#,
	movq	-88(%rbp), %rax	# pbi, tmp432
	movq	(%rax), %rax	# pbi_65(D)->bb, D.17532
	movl	104(%rax), %eax	# _286->frequency, D.17525
	imull	$1000, %eax, %ecx	#, D.17525, D.17525
	movl	$1759218605, %edx	#, tmp434
	movl	%ecx, %eax	# D.17525, tmp506
	imull	%edx	# tmp434
	sarl	$12, %edx	#, tmp435
	movl	%ecx, %eax	# D.17525, tmp436
	sarl	$31, %eax	#, tmp436
	subl	%eax, %edx	# tmp436, iftmp.244
	movl	%edx, %eax	# iftmp.244, iftmp.244
	jmp	.L634	#
.L633:
	.loc 1 2696 0 discriminator 2
	movl	$1, %eax	#, iftmp.244
.L634:
	.loc 1 2696 0 discriminator 3
	jmp	.L635	#
.L631:
	.loc 1 2696 0 discriminator 2
	movl	$1000, %eax	#, iftmp.241
.L635:
	.loc 1 2696 0 discriminator 3
	addl	%edi, %eax	# D.17525, D.17525
	movl	%eax, 20(%rsi)	# D.17525, _274->freq
	.loc 1 2702 0 is_stmt 1 discriminator 3
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.245
	movl	-60(%rbp), %edx	# i, tmp438
	movslq	%edx, %rdx	# tmp438, tmp437
	addq	$4, %rdx	#, tmp439
	movq	(%rax,%rdx,8), %rax	# reg_n_info.245_294->data.reg, D.17535
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.246
	movl	-60(%rbp), %ecx	# i, tmp441
	movslq	%ecx, %rcx	# tmp441, tmp440
	addq	$4, %rcx	#, tmp442
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.246_296->data.reg, D.17535
	movl	28(%rdx), %edx	# _297->live_length, D.17525
	addl	$1, %edx	#, D.17525
	movl	%edx, 28(%rax)	# D.17525, _295->live_length
	.loc 1 2690 0 discriminator 3
	addl	$1, -60(%rbp)	#, i
.L630:
	.loc 1 2690 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp443
	cmpl	-64(%rbp), %eax	# regno_last, tmp443
	jle	.L636	#,
	.loc 1 2706 0 is_stmt 1
	cmpl	$52, -68(%rbp)	#, regno_first
	jg	.L637	#,
	.loc 1 2708 0
	movl	-68(%rbp), %eax	# regno_first, tmp444
	movl	%eax, -60(%rbp)	# tmp444, i
	jmp	.L638	#
.L639:
	.loc 1 2709 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp446
	cltq
	movb	$1, regs_ever_live(%rax)	#, regs_ever_live
	.loc 1 2708 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L638:
	.loc 1 2708 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp447
	cmpl	-64(%rbp), %eax	# regno_last, tmp447
	jle	.L639	#,
	jmp	.L629	#
.L637:
	.loc 1 2714 0 is_stmt 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.247
	movl	-68(%rbp), %edx	# regno_first, tmp449
	movslq	%edx, %rdx	# tmp449, tmp448
	addq	$4, %rdx	#, tmp450
	movq	(%rax,%rdx,8), %rax	# reg_n_info.247_303->data.reg, D.17535
	movl	36(%rax), %eax	# _304->basic_block, D.17525
	cmpl	$-1, %eax	#, D.17525
	jne	.L640	#,
	.loc 1 2715 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.248
	movl	-68(%rbp), %edx	# regno_first, tmp452
	movslq	%edx, %rdx	# tmp452, tmp451
	addq	$4, %rdx	#, tmp453
	movq	(%rax,%rdx,8), %rax	# reg_n_info.248_306->data.reg, D.17535
	movl	-36(%rbp), %edx	# blocknum, tmp454
	movl	%edx, 36(%rax)	# tmp454, _307->basic_block
	jmp	.L629	#
.L640:
	.loc 1 2716 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.249
	movl	-68(%rbp), %edx	# regno_first, tmp456
	movslq	%edx, %rdx	# tmp456, tmp455
	addq	$4, %rdx	#, tmp457
	movq	(%rax,%rdx,8), %rax	# reg_n_info.249_308->data.reg, D.17535
	movl	36(%rax), %eax	# _309->basic_block, D.17525
	cmpl	-36(%rbp), %eax	# blocknum, D.17525
	je	.L629	#,
	.loc 1 2717 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.250
	movl	-68(%rbp), %edx	# regno_first, tmp459
	movslq	%edx, %rdx	# tmp459, tmp458
	addq	$4, %rdx	#, tmp460
	movq	(%rax,%rdx,8), %rax	# reg_n_info.250_311->data.reg, D.17535
	movl	$-2, 36(%rax)	#, _312->basic_block
.L629:
	.loc 1 2721 0
	cmpl	$0, -52(%rbp)	#, some_was_dead
	jne	.L641	#,
	.loc 1 2723 0
	movl	-96(%rbp), %eax	# flags, tmp461
	andl	$2, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L625	#,
	.loc 1 2734 0
	cmpq	$0, -24(%rbp)	#, y
	je	.L625	#,
	.loc 1 2734 0 is_stmt 0 discriminator 1
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.251
	movq	-24(%rbp), %rdx	# y, tmp462
	movl	8(%rdx), %edx	# y_27->fld[0].rtint, D.17525
	movslq	%edx, %rdx	# D.17525, tmp463
	addq	$4, %rdx	#, tmp464
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.251_314->data.bb, D.17532
	movl	88(%rax), %eax	# _316->index, D.17525
	cmpl	-36(%rbp), %eax	# blocknum, D.17525
	jne	.L625	#,
	.loc 1 2735 0 is_stmt 1
	cmpl	$52, -68(%rbp)	#, regno_first
	jg	.L643	#,
	.loc 1 2736 0
	movq	-24(%rbp), %rax	# y, tmp465
	movq	32(%rax), %rax	# y_27->fld[3].rtx, D.17526
	movq	%rax, %rdi	# D.17526,
	call	asm_noperands	#
	testl	%eax, %eax	# D.17525
	jns	.L625	#,
.L643:
	.loc 1 2737 0
	movq	-24(%rbp), %rax	# y, tmp466
	movq	48(%rax), %rdx	# y_27->fld[5].rtx, D.17526
	movq	-120(%rbp), %rax	# insn, tmp467
	movq	%rdx, %rsi	# D.17526,
	movq	%rax, %rdi	# tmp467,
	call	alloc_INSN_LIST	#
	movq	-24(%rbp), %rdx	# y, tmp468
	movq	%rax, 48(%rdx)	# D.17526, y_27->fld[5].rtx
	jmp	.L625	#
.L641:
	.loc 1 2740 0
	cmpq	$0, -32(%rbp)	#, not_dead
	jne	.L625	#,
	.loc 1 2742 0
	cmpl	$0, -56(%rbp)	#, some_was_live
	jne	.L644	#,
	.loc 1 2744 0
	movl	-96(%rbp), %eax	# flags, tmp469
	andl	$4, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L645	#,
	.loc 1 2745 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.252
	movl	-68(%rbp), %edx	# regno_first, tmp471
	movslq	%edx, %rdx	# tmp471, tmp470
	addq	$4, %rdx	#, tmp472
	movq	(%rax,%rdx,8), %rax	# reg_n_info.252_323->data.reg, D.17535
	movq	reg_n_info(%rip), %rdx	# reg_n_info, reg_n_info.253
	movl	-68(%rbp), %ecx	# regno_first, tmp474
	movslq	%ecx, %rcx	# tmp474, tmp473
	addq	$4, %rcx	#, tmp475
	movq	(%rdx,%rcx,8), %rdx	# reg_n_info.253_325->data.reg, D.17535
	movl	24(%rdx), %edx	# _326->deaths, D.17525
	addl	$1, %edx	#, D.17525
	movl	%edx, 24(%rax)	# D.17525, _324->deaths
.L645:
	.loc 1 2747 0
	movl	-96(%rbp), %eax	# flags, tmp476
	andl	$1, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L625	#,
	.loc 1 2755 0
	movq	-120(%rbp), %rax	# insn, tmp477
	movq	56(%rax), %rdx	# insn_68(D)->fld[6].rtx, D.17526
	movq	-104(%rbp), %rax	# reg, tmp478
	movq	%rax, %rsi	# tmp478,
	movl	$10, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-120(%rbp), %rdx	# insn, tmp479
	movq	%rax, 56(%rdx)	# D.17526, insn_68(D)->fld[6].rtx
	jmp	.L625	#
.L644:
	.loc 1 2760 0
	movl	-96(%rbp), %eax	# flags, tmp480
	andl	$1, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L625	#,
	.loc 1 2768 0
	movl	-68(%rbp), %eax	# regno_first, tmp481
	movl	%eax, -60(%rbp)	# tmp481, i
	jmp	.L647	#
.L649:
	.loc 1 2769 0
	movq	-88(%rbp), %rax	# pbi, tmp482
	movq	8(%rax), %rax	# pbi_65(D)->reg_live, D.17527
	movl	-60(%rbp), %edx	# i, tmp483
	movl	%edx, %esi	# tmp483,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17525
	jne	.L648	#,
	.loc 1 2771 0
	movq	-120(%rbp), %rax	# insn, tmp484
	movq	56(%rax), %rbx	# insn_68(D)->fld[6].rtx, D.17526
	movl	-60(%rbp), %eax	# i, tmp486
	cltq
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.17538
	movl	-60(%rbp), %edx	# i, tmp487
	movl	%edx, %esi	# tmp487,
	movl	%eax, %edi	# D.17538,
	call	gen_rtx_REG	#
	movq	%rbx, %rdx	# D.17526,
	movq	%rax, %rsi	# D.17526,
	movl	$10, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-120(%rbp), %rdx	# insn, tmp488
	movq	%rax, 56(%rdx)	# D.17526, insn_68(D)->fld[6].rtx
.L648:
	.loc 1 2768 0
	addl	$1, -60(%rbp)	#, i
.L647:
	.loc 1 2768 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp489
	cmpl	-64(%rbp), %eax	# regno_last, tmp489
	jle	.L649	#,
.L625:
.LBE97:
	.loc 1 2779 0 is_stmt 1
	cmpl	$0, -56(%rbp)	#, some_was_live
	je	.L650	#,
	.loc 1 2784 0
	cmpl	$7, -68(%rbp)	#, regno_first
	je	.L650	#,
	.loc 1 2786 0
	movl	-68(%rbp), %eax	# regno_first, tmp490
	movl	%eax, -60(%rbp)	# tmp490, i
	jmp	.L651	#
.L653:
	.loc 1 2787 0
	movl	-68(%rbp), %eax	# regno_first, tmp491
	movl	-60(%rbp), %edx	# i, tmp492
	subl	%eax, %edx	# tmp491, D.17525
	movl	%edx, %eax	# D.17525, D.17525
	movq	-32(%rbp), %rdx	# not_dead, tmp493
	movl	%eax, %ecx	# D.17525, tmp516
	shrq	%cl, %rdx	# tmp516, D.17534
	movq	%rdx, %rax	# D.17534, D.17534
	andl	$1, %eax	#, D.17534
	testq	%rax, %rax	# D.17534
	jne	.L652	#,
	.loc 1 2788 0
	movq	-88(%rbp), %rax	# pbi, tmp494
	movq	8(%rax), %rax	# pbi_65(D)->reg_live, D.17527
	movl	-60(%rbp), %edx	# i, tmp495
	movl	%edx, %esi	# tmp495,
	movq	%rax, %rdi	# D.17527,
	call	bitmap_clear_bit	#
.L652:
	.loc 1 2786 0
	addl	$1, -60(%rbp)	#, i
.L651:
	.loc 1 2786 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp496
	cmpl	-64(%rbp), %eax	# regno_last, tmp496
	jle	.L653	#,
.L650:
.LBE95:
	.loc 1 2631 0 is_stmt 1
	jmp	.L544	#
.L616:
	.loc 1 2791 0
	movq	-104(%rbp), %rax	# reg, tmp497
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$61, %ax	#, D.17522
	jne	.L654	#,
	.loc 1 2793 0
	movl	-96(%rbp), %eax	# flags, tmp498
	andl	$66, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L544	#,
	.loc 1 2794 0
	movq	-88(%rbp), %rax	# pbi, tmp499
	movq	24(%rax), %rax	# pbi_65(D)->reg_next_use, D.17533
	movl	-68(%rbp), %edx	# regno_first, tmp500
	movslq	%edx, %rdx	# tmp500, D.17534
	salq	$3, %rdx	#, D.17534
	addq	%rdx, %rax	# D.17534, D.17533
	movq	$0, (%rax)	#, *_352
	jmp	.L544	#
.L654:
	.loc 1 2799 0
	movq	-104(%rbp), %rax	# reg, tmp501
	movzwl	(%rax), %eax	# reg_5->code, D.17522
	cmpw	$62, %ax	#, D.17522
	jne	.L544	#,
	.loc 1 2801 0
	movl	-96(%rbp), %eax	# flags, tmp502
	andl	$1, %eax	#, D.17525
	testl	%eax, %eax	# D.17525
	je	.L544	#,
	.loc 1 2803 0
	movq	-120(%rbp), %rax	# insn, tmp503
	movq	56(%rax), %rdx	# insn_68(D)->fld[6].rtx, D.17526
	movq	-104(%rbp), %rax	# reg, tmp504
	movq	%rax, %rsi	# tmp504,
	movl	$10, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-120(%rbp), %rdx	# insn, tmp505
	movq	%rax, 56(%rdx)	# D.17526, insn_68(D)->fld[6].rtx
.L544:
	.loc 1 2805 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	mark_set_1, .-mark_set_1
	.type	mark_used_reg, @function
mark_used_reg:
.LFB37:
	.loc 1 3478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pbi, pbi
	movq	%rsi, -64(%rbp)	# reg, reg
	movq	%rdx, -72(%rbp)	# cond, cond
	movq	%rcx, -80(%rbp)	# insn, insn
	.loc 1 3482 0
	movq	-64(%rbp), %rax	# reg, tmp173
	movl	8(%rax), %eax	# reg_23(D)->fld[0].rtuint, tmp174
	movl	%eax, -28(%rbp)	# tmp174, regno_first
	movl	-28(%rbp), %eax	# regno_first, tmp175
	movl	%eax, -48(%rbp)	# tmp175, regno_last
	.loc 1 3483 0
	cmpl	$52, -28(%rbp)	#, regno_first
	ja	.L658	#,
	.loc 1 3484 0
	cmpl	$7, -28(%rbp)	#, regno_first
	jbe	.L659	#,
	.loc 1 3484 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, regno_first
	jbe	.L660	#,
.L659:
	.loc 1 3484 0 discriminator 2
	cmpl	$20, -28(%rbp)	#, regno_first
	jbe	.L661	#,
	.loc 1 3484 0 discriminator 1
	cmpl	$28, -28(%rbp)	#, regno_first
	jbe	.L660	#,
.L661:
	.loc 1 3484 0 discriminator 2
	cmpl	$44, -28(%rbp)	#, regno_first
	jbe	.L662	#,
	.loc 1 3484 0 discriminator 1
	cmpl	$52, -28(%rbp)	#, regno_first
	jbe	.L660	#,
.L662:
	.loc 1 3484 0 discriminator 2
	cmpl	$28, -28(%rbp)	#, regno_first
	jbe	.L663	#,
	.loc 1 3484 0 discriminator 1
	cmpl	$36, -28(%rbp)	#, regno_first
	ja	.L663	#,
.L660:
	movq	-64(%rbp), %rax	# reg, tmp176
	movzbl	2(%rax), %eax	# reg_23(D)->mode, D.17540
	movzbl	%al, %eax	# D.17540, D.17541
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17542
	cmpl	$5, %eax	#, D.17542
	je	.L664	#,
	.loc 1 3484 0 discriminator 2
	movq	-64(%rbp), %rax	# reg, tmp178
	movzbl	2(%rax), %eax	# reg_23(D)->mode, D.17540
	movzbl	%al, %eax	# D.17540, D.17541
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17542
	cmpl	$6, %eax	#, D.17542
	jne	.L665	#,
.L664:
	.loc 1 3484 0 discriminator 1
	movl	$1, %eax	#, iftmp.255
	jmp	.L666	#
.L665:
	.loc 1 3484 0 discriminator 3
	movl	$0, %eax	#, iftmp.255
.L666:
	.loc 1 3484 0 discriminator 4
	jmp	.L667	#
.L663:
	.loc 1 3484 0 discriminator 2
	movq	-64(%rbp), %rax	# reg, tmp180
	movzbl	2(%rax), %eax	# reg_23(D)->mode, D.17540
	cmpb	$18, %al	#, D.17540
	jne	.L668	#,
	.loc 1 3484 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.258
	andl	$33554432, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L669	#,
	.loc 1 3484 0 discriminator 6
	movl	$1, %eax	#, iftmp.257
	jmp	.L667	#
.L669:
	.loc 1 3484 0 discriminator 7
	movl	$2, %eax	#, iftmp.257
	jmp	.L667	#
.L668:
	.loc 1 3484 0 discriminator 5
	movq	-64(%rbp), %rax	# reg, tmp181
	movzbl	2(%rax), %eax	# reg_23(D)->mode, D.17540
	cmpb	$24, %al	#, D.17540
	jne	.L672	#,
	.loc 1 3484 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.261
	andl	$33554432, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L673	#,
	.loc 1 3484 0 discriminator 10
	movl	$3, %eax	#, iftmp.260
	jmp	.L667	#
.L673:
	.loc 1 3484 0 discriminator 11
	movl	$5, %eax	#, iftmp.260
	jmp	.L667	#
.L672:
	.loc 1 3484 0 discriminator 9
	movq	-64(%rbp), %rax	# reg, tmp182
	movzbl	2(%rax), %eax	# reg_23(D)->mode, D.17540
	movzbl	%al, %eax	# D.17540, D.17541
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17540
	movzbl	%al, %edx	# D.17540, D.17541
	movl	target_flags(%rip), %eax	# target_flags, target_flags.263
	andl	$33554432, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L676	#,
	.loc 1 3484 0 discriminator 1
	movl	$8, %eax	#, iftmp.262
	jmp	.L677	#
.L676:
	.loc 1 3484 0 discriminator 2
	movl	$4, %eax	#, iftmp.262
.L677:
	.loc 1 3484 0 discriminator 3
	addl	%edx, %eax	# D.17541, D.17541
	subl	$1, %eax	#, D.17541
	movl	target_flags(%rip), %edx	# target_flags, target_flags.265
	andl	$33554432, %edx	#, D.17541
	testl	%edx, %edx	# D.17541
	je	.L678	#,
	.loc 1 3484 0 discriminator 1
	movl	$8, %ebx	#, iftmp.264
	jmp	.L679	#
.L678:
	.loc 1 3484 0 discriminator 2
	movl	$4, %ebx	#, iftmp.264
.L679:
	.loc 1 3484 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.264
	subl	$1, %eax	#, D.17541
.L667:
	addl	%eax, -48(%rbp)	# iftmp.254, regno_last
.L658:
	.loc 1 3487 0 is_stmt 1
	movl	$0, -36(%rbp)	#, some_was_dead
	movl	-36(%rbp), %eax	# some_was_dead, tmp186
	movl	%eax, -40(%rbp)	# tmp186, some_was_live
	.loc 1 3488 0
	movl	-28(%rbp), %eax	# regno_first, tmp187
	movl	%eax, -44(%rbp)	# tmp187, i
	jmp	.L680	#
.L681:
.LBB98:
	.loc 1 3490 0 discriminator 2
	movl	-44(%rbp), %edx	# i, i.266
	movq	-56(%rbp), %rax	# pbi, tmp188
	movq	8(%rax), %rax	# pbi_71(D)->reg_live, D.17543
	movl	%edx, %esi	# i.266,
	movq	%rax, %rdi	# D.17543,
	call	bitmap_bit_p	#
	movl	%eax, -24(%rbp)	# tmp189, needed_regno
	.loc 1 3491 0 discriminator 2
	movl	-24(%rbp), %eax	# needed_regno, tmp190
	orl	%eax, -40(%rbp)	# tmp190, some_was_live
	.loc 1 3492 0 discriminator 2
	cmpl	$0, -24(%rbp)	#, needed_regno
	sete	%al	#, D.17544
	movzbl	%al, %eax	# D.17544, D.17541
	orl	%eax, -36(%rbp)	# D.17541, some_was_dead
.LBE98:
	.loc 1 3488 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L680:
	.loc 1 3488 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp191
	cmpl	-48(%rbp), %eax	# regno_last, tmp191
	jbe	.L681	#,
	.loc 1 3496 0 is_stmt 1
	movl	$0, -32(%rbp)	#, some_not_set
	.loc 1 3497 0
	movl	-28(%rbp), %eax	# regno_first, tmp192
	movl	%eax, -44(%rbp)	# tmp192, i
	jmp	.L682	#
.L683:
	.loc 1 3498 0 discriminator 2
	movl	-44(%rbp), %edx	# i, i.267
	movq	-56(%rbp), %rax	# pbi, tmp193
	movq	16(%rax), %rax	# pbi_71(D)->new_set, D.17543
	movl	%edx, %esi	# i.267,
	movq	%rax, %rdi	# D.17543,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17541
	sete	%al	#, D.17544
	movzbl	%al, %eax	# D.17544, D.17541
	orl	%eax, -32(%rbp)	# D.17541, some_not_set
	.loc 1 3497 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L682:
	.loc 1 3497 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp194
	cmpl	-48(%rbp), %eax	# regno_last, tmp194
	jbe	.L683	#,
	.loc 1 3500 0 is_stmt 1
	movq	-56(%rbp), %rax	# pbi, tmp195
	movl	64(%rax), %eax	# pbi_71(D)->flags, D.17541
	andl	$66, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L684	#,
	.loc 1 3504 0
	movq	-56(%rbp), %rax	# pbi, tmp196
	movq	24(%rax), %rax	# pbi_71(D)->reg_next_use, D.17545
	movl	-28(%rbp), %edx	# regno_first, D.17546
	salq	$3, %rdx	#, D.17546
	addq	%rax, %rdx	# D.17545, D.17545
	movq	-80(%rbp), %rax	# insn, tmp197
	movq	%rax, (%rdx)	# tmp197, *_93
.L684:
	.loc 1 3507 0
	movq	-56(%rbp), %rax	# pbi, tmp198
	movl	64(%rax), %eax	# pbi_71(D)->flags, D.17541
	andl	$4, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L685	#,
	.loc 1 3509 0
	cmpl	$52, -28(%rbp)	#, regno_first
	ja	.L686	#,
	.loc 1 3523 0
	movq	elim_reg_set(%rip), %rdx	# elim_reg_set, elim_reg_set.268
	movl	-28(%rbp), %eax	# regno_first, regno_first.269
	movl	%eax, %ecx	# regno_first.269, tmp253
	shrq	%cl, %rdx	# tmp253, D.17546
	movq	%rdx, %rax	# D.17546, D.17546
	andl	$1, %eax	#, D.17546
	testq	%rax, %rax	# D.17546
	je	.L687	#,
	.loc 1 3523 0 is_stmt 0 discriminator 1
	cmpl	$20, -28(%rbp)	#, regno_first
	je	.L685	#,
	.loc 1 3525 0 is_stmt 1
	cmpl	$16, -28(%rbp)	#, regno_first
	je	.L685	#,
.L687:
	.loc 1 3526 0
	movl	-28(%rbp), %eax	# regno_first, tmp199
	movl	%eax, -44(%rbp)	# tmp199, i
	jmp	.L688	#
.L689:
	.loc 1 3527 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp200
	movb	$1, regs_ever_live(%rax)	#, regs_ever_live
	.loc 1 3526 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L688:
	.loc 1 3526 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp201
	cmpl	-48(%rbp), %eax	# regno_last, tmp201
	jbe	.L689	#,
	jmp	.L685	#
.L686:
.LBB99:
	.loc 1 3533 0 is_stmt 1
	movq	-56(%rbp), %rax	# pbi, tmp202
	movq	(%rax), %rax	# pbi_71(D)->bb, D.17547
	movl	88(%rax), %eax	# _103->index, tmp203
	movl	%eax, -20(%rbp)	# tmp203, blocknum
	.loc 1 3534 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.270
	movl	-28(%rbp), %edx	# regno_first, tmp204
	addq	$4, %rdx	#, tmp205
	movq	(%rax,%rdx,8), %rax	# reg_n_info.270_105->data.reg, D.17548
	movl	36(%rax), %eax	# _106->basic_block, D.17541
	cmpl	$-1, %eax	#, D.17541
	jne	.L690	#,
	.loc 1 3535 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.271
	movl	-28(%rbp), %edx	# regno_first, tmp206
	addq	$4, %rdx	#, tmp207
	movq	(%rax,%rdx,8), %rax	# reg_n_info.271_108->data.reg, D.17548
	movl	-20(%rbp), %edx	# blocknum, tmp208
	movl	%edx, 36(%rax)	# tmp208, _109->basic_block
	jmp	.L691	#
.L690:
	.loc 1 3536 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.272
	movl	-28(%rbp), %edx	# regno_first, tmp209
	addq	$4, %rdx	#, tmp210
	movq	(%rax,%rdx,8), %rax	# reg_n_info.272_110->data.reg, D.17548
	movl	36(%rax), %eax	# _111->basic_block, D.17541
	cmpl	-20(%rbp), %eax	# blocknum, D.17541
	je	.L691	#,
	.loc 1 3537 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.273
	movl	-28(%rbp), %edx	# regno_first, tmp211
	addq	$4, %rdx	#, tmp212
	movq	(%rax,%rdx,8), %rax	# reg_n_info.273_113->data.reg, D.17548
	movl	$-2, 36(%rax)	#, _114->basic_block
.L691:
	.loc 1 3540 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.274
	movl	-28(%rbp), %edx	# regno_first, tmp213
	addq	$4, %rdx	#, tmp214
	movq	(%rax,%rdx,8), %rsi	# reg_n_info.274_115->data.reg, D.17548
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.275
	movl	-28(%rbp), %edx	# regno_first, tmp215
	addq	$4, %rdx	#, tmp216
	movq	(%rax,%rdx,8), %rax	# reg_n_info.275_117->data.reg, D.17548
	movl	20(%rax), %edi	# _118->freq, D.17541
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.277
	testl	%eax, %eax	# optimize_size.277
	jne	.L692	#,
	.loc 1 3540 0 is_stmt 0 discriminator 1
	movl	flag_branch_probabilities(%rip), %eax	# flag_branch_probabilities, flag_branch_probabilities.278
	testl	%eax, %eax	# flag_branch_probabilities.278
	je	.L693	#,
	.loc 1 3540 0 discriminator 2
	movq	entry_exit_blocks+96(%rip), %rax	# entry_exit_blocks[0].count, D.17549
	testq	%rax, %rax	# D.17549
	je	.L692	#,
.L693:
	.loc 1 3540 0 discriminator 1
	movq	-56(%rbp), %rax	# pbi, tmp217
	movq	(%rax), %rax	# pbi_71(D)->bb, D.17547
	movl	104(%rax), %eax	# _123->frequency, D.17541
	imull	$1000, %eax, %eax	#, D.17541, D.17541
	addl	$9999, %eax	#, D.17550
	cmpl	$19998, %eax	#, D.17550
	jbe	.L694	#,
	movq	-56(%rbp), %rax	# pbi, tmp218
	movq	(%rax), %rax	# pbi_71(D)->bb, D.17547
	movl	104(%rax), %eax	# _128->frequency, D.17541
	imull	$1000, %eax, %ecx	#, D.17541, D.17541
	movl	$1759218605, %edx	#, tmp220
	movl	%ecx, %eax	# D.17541, tmp250
	imull	%edx	# tmp220
	sarl	$12, %edx	#, tmp221
	movl	%ecx, %eax	# D.17541, tmp222
	sarl	$31, %eax	#, tmp222
	subl	%eax, %edx	# tmp222, iftmp.279
	movl	%edx, %eax	# iftmp.279, iftmp.279
	jmp	.L695	#
.L694:
	.loc 1 3540 0 discriminator 2
	movl	$1, %eax	#, iftmp.279
.L695:
	.loc 1 3540 0 discriminator 3
	jmp	.L696	#
.L692:
	.loc 1 3540 0 discriminator 2
	movl	$1000, %eax	#, iftmp.276
.L696:
	.loc 1 3540 0 discriminator 3
	addl	%edi, %eax	# D.17541, D.17541
	movl	%eax, 20(%rsi)	# D.17541, _116->freq
	.loc 1 3541 0 is_stmt 1 discriminator 3
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.280
	movl	-28(%rbp), %edx	# regno_first, tmp223
	addq	$4, %rdx	#, tmp224
	movq	(%rax,%rdx,8), %rax	# reg_n_info.280_136->data.reg, D.17548
	movl	16(%rax), %edx	# _137->refs, D.17541
	addl	$1, %edx	#, D.17541
	movl	%edx, 16(%rax)	# D.17541, _137->refs
.L685:
.LBE99:
	.loc 1 3549 0
	movq	-56(%rbp), %rax	# pbi, tmp225
	movl	64(%rax), %eax	# pbi_71(D)->flags, D.17541
	andl	$5, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L697	#,
	.loc 1 3550 0
	cmpl	$0, -36(%rbp)	#, some_was_dead
	je	.L697	#,
	.loc 1 3551 0
	cmpl	$0, -32(%rbp)	#, some_not_set
	je	.L697	#,
	.loc 1 3555 0
	movl	-28(%rbp), %eax	# regno_first, tmp226
	cmpl	-48(%rbp), %eax	# regno_last, tmp226
	je	.L698	#,
	.loc 1 3556 0
	movl	-28(%rbp), %eax	# regno_first, tmp227
	movl	%eax, -44(%rbp)	# tmp227, i
	jmp	.L699	#
.L700:
	.loc 1 3557 0 discriminator 2
	movl	-44(%rbp), %edx	# i, i.281
	movq	-56(%rbp), %rax	# pbi, tmp228
	movq	16(%rax), %rax	# pbi_71(D)->new_set, D.17543
	movl	%edx, %esi	# i.281,
	movq	%rax, %rdi	# D.17543,
	call	bitmap_bit_p	#
	orl	%eax, -40(%rbp)	# D.17541, some_was_live
	.loc 1 3556 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L699:
	.loc 1 3556 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp229
	cmpl	-48(%rbp), %eax	# regno_last, tmp229
	jbe	.L700	#,
.L698:
	.loc 1 3561 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, some_was_live
	jne	.L701	#,
	.loc 1 3563 0
	movq	-56(%rbp), %rax	# pbi, tmp230
	movl	64(%rax), %eax	# pbi_71(D)->flags, D.17541
	andl	$1, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L702	#,
	.loc 1 3564 0
	movl	-28(%rbp), %edx	# regno_first, tmp231
	movq	-80(%rbp), %rax	# insn, tmp232
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	find_regno_note	#
	testq	%rax, %rax	# D.17551
	jne	.L702	#,
	.loc 1 3566 0
	movq	-80(%rbp), %rax	# insn, tmp233
	movq	56(%rax), %rdx	# insn_94(D)->fld[6].rtx, D.17551
	movq	-64(%rbp), %rax	# reg, tmp234
	movq	%rax, %rsi	# tmp234,
	movl	$1, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-80(%rbp), %rdx	# insn, tmp235
	movq	%rax, 56(%rdx)	# D.17551, insn_94(D)->fld[6].rtx
.L702:
	.loc 1 3568 0
	movq	-56(%rbp), %rax	# pbi, tmp236
	movl	64(%rax), %eax	# pbi_71(D)->flags, D.17541
	andl	$4, %eax	#, D.17541
	testl	%eax, %eax	# D.17541
	je	.L697	#,
	.loc 1 3569 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.282
	movl	-28(%rbp), %edx	# regno_first, tmp237
	addq	$4, %rdx	#, tmp238
	movq	(%rax,%rdx,8), %rax	# reg_n_info.282_155->data.reg, D.17548
	movl	24(%rax), %edx	# _156->deaths, D.17541
	addl	$1, %edx	#, D.17541
	movl	%edx, 24(%rax)	# D.17541, _156->deaths
	jmp	.L697	#
.L701:
	.loc 1 3575 0
	movl	-28(%rbp), %eax	# regno_first, tmp239
	movl	%eax, -44(%rbp)	# tmp239, i
	jmp	.L704	#
.L706:
	.loc 1 3576 0
	movl	-44(%rbp), %edx	# i, i.283
	movq	-56(%rbp), %rax	# pbi, tmp240
	movq	8(%rax), %rax	# pbi_71(D)->reg_live, D.17543
	movl	%edx, %esi	# i.283,
	movq	%rax, %rdi	# D.17543,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.17541
	jne	.L705	#,
	.loc 1 3577 0
	movl	-44(%rbp), %edx	# i, tmp241
	movq	-80(%rbp), %rax	# insn, tmp242
	movl	%edx, %esi	# tmp241,
	movq	%rax, %rdi	# tmp242,
	call	dead_or_set_regno_p	#
	testl	%eax, %eax	# D.17541
	jne	.L705	#,
	.loc 1 3579 0
	movq	-80(%rbp), %rax	# insn, tmp243
	movq	56(%rax), %rbx	# insn_94(D)->fld[6].rtx, D.17551
	movl	-44(%rbp), %edx	# i, i.284
	movl	-44(%rbp), %eax	# i, tmp244
	movl	reg_raw_mode(,%rax,4), %eax	# reg_raw_mode, D.17552
	movl	%edx, %esi	# i.284,
	movl	%eax, %edi	# D.17552,
	call	gen_rtx_REG	#
	movq	%rbx, %rdx	# D.17551,
	movq	%rax, %rsi	# D.17551,
	movl	$1, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-80(%rbp), %rdx	# insn, tmp245
	movq	%rax, 56(%rdx)	# D.17551, insn_94(D)->fld[6].rtx
.L705:
	.loc 1 3575 0
	addl	$1, -44(%rbp)	#, i
.L704:
	.loc 1 3575 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp246
	cmpl	-48(%rbp), %eax	# regno_last, tmp246
	jbe	.L706	#,
.L697:
	.loc 1 3586 0 is_stmt 1
	movl	-28(%rbp), %eax	# regno_first, tmp247
	movl	%eax, -44(%rbp)	# tmp247, i
	jmp	.L707	#
.L708:
	.loc 1 3592 0 discriminator 2
	movl	-44(%rbp), %edx	# i, i.285
	movq	-56(%rbp), %rax	# pbi, tmp248
	movq	8(%rax), %rax	# pbi_71(D)->reg_live, D.17543
	movl	%edx, %esi	# i.285,
	movq	%rax, %rdi	# D.17543,
	call	bitmap_set_bit	#
	.loc 1 3586 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L707:
	.loc 1 3586 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp249
	cmpl	-48(%rbp), %eax	# regno_last, tmp249
	jbe	.L708	#,
	.loc 1 3655 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	mark_used_reg, .-mark_used_reg
	.type	mark_used_regs, @function
mark_used_regs:
.LFB38:
	.loc 1 3668 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# pbi, pbi
	movq	%rsi, -112(%rbp)	# x, x
	movq	%rdx, -120(%rbp)	# cond, cond
	movq	%rcx, -128(%rbp)	# insn, insn
	.loc 1 3671 0
	movq	-104(%rbp), %rax	# pbi, tmp146
	movl	64(%rax), %eax	# pbi_18(D)->flags, tmp147
	movl	%eax, -68(%rbp)	# tmp147, flags
.L710:
	.loc 1 3674 0
	cmpq	$0, -112(%rbp)	#, x
	jne	.L711	#,
	.loc 1 3675 0
	jmp	.L709	#
.L711:
	.loc 1 3676 0
	movq	-112(%rbp), %rax	# x, tmp148
	movzwl	(%rax), %eax	# x_1->code, D.17553
	movzwl	%ax, %eax	# D.17553, tmp149
	movl	%eax, -64(%rbp)	# tmp149, code
	.loc 1 3677 0
	movl	-64(%rbp), %eax	# code, tmp151
	subl	$38, %eax	#, tmp150
	cmpl	$114, %eax	#, tmp150
	ja	.L769	#,
	movl	%eax, %eax	# tmp150, tmp152
	movq	.L715(,%rax,8), %rax	#, tmp153
	jmp	*%rax	# tmp153
	.section	.rodata
	.align 8
	.align 4
.L715:
	.quad	.L714
	.quad	.L769
	.quad	.L716
	.quad	.L716
	.quad	.L769
	.quad	.L716
	.quad	.L770
	.quad	.L770
	.quad	.L769
	.quad	.L718
	.quad	.L769
	.quad	.L719
	.quad	.L769
	.quad	.L769
	.quad	.L716
	.quad	.L769
	.quad	.L770
	.quad	.L770
	.quad	.L770
	.quad	.L769
	.quad	.L770
	.quad	.L770
	.quad	.L769
	.quad	.L720
	.quad	.L769
	.quad	.L721
	.quad	.L769
	.quad	.L769
	.quad	.L722
	.quad	.L770
	.quad	.L770
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L769
	.quad	.L770
	.text
.L719:
	.loc 1 3699 0
	movq	-112(%rbp), %rax	# x, tmp154
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.17554
	movzwl	(%rax), %eax	# _24->code, D.17553
	cmpw	$66, %ax	#, D.17553
	jne	.L724	#,
	.loc 1 3700 0
	movq	-112(%rbp), %rax	# x, tmp155
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.17554
	movq	8(%rax), %rsi	# _26->fld[0].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp156
	movq	-120(%rbp), %rdx	# cond, tmp157
	movq	-104(%rbp), %rax	# pbi, tmp158
	movq	%rax, %rdi	# tmp158,
	call	mark_used_regs	#
	.loc 1 3701 0
	jmp	.L709	#
.L724:
	jmp	.L709	#
.L722:
	.loc 1 3706 0
	movl	optimize(%rip), %eax	# optimize, optimize.286
	testl	%eax, %eax	# optimize.286
	je	.L725	#,
	.loc 1 3706 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# flags, tmp159
	andl	$16, %eax	#, D.17555
	testl	%eax, %eax	# D.17555
	je	.L725	#,
	.loc 1 3710 0 is_stmt 1
	movq	-112(%rbp), %rax	# x, tmp160
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.17554
	movzwl	(%rax), %eax	# _31->code, D.17553
	cmpw	$68, %ax	#, D.17553
	jne	.L726	#,
	.loc 1 3711 0
	movq	-112(%rbp), %rax	# x, tmp161
	movq	8(%rax), %rax	# x_1->fld[0].rtx, D.17554
	movzbl	3(%rax), %eax	# *_33, D.17556
	andl	$4, %eax	#, D.17556
	testb	%al, %al	# D.17556
	je	.L726	#,
	.loc 1 3711 0 is_stmt 0 discriminator 1
	jmp	.L727	#
.L726:
.LBB100:
	.loc 1 3716 0 is_stmt 1
	movq	-104(%rbp), %rax	# pbi, tmp162
	movq	32(%rax), %rax	# pbi_18(D)->mem_set_list, tmp163
	movq	%rax, -56(%rbp)	# tmp163, temp
	.loc 1 3717 0
	movq	$0, -48(%rbp)	#, prev
	.loc 1 3720 0
	jmp	.L728	#
.L733:
	.loc 1 3722 0
	movq	-56(%rbp), %rax	# temp, tmp164
	movq	16(%rax), %rax	# temp_4->fld[1].rtx, tmp165
	movq	%rax, -32(%rbp)	# tmp165, next
	.loc 1 3723 0
	movq	-56(%rbp), %rax	# temp, tmp166
	movq	8(%rax), %rax	# temp_4->fld[0].rtx, D.17554
	movq	-112(%rbp), %rdx	# x, tmp167
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# D.17554,
	call	anti_dependence	#
	testl	%eax, %eax	# D.17555
	je	.L729	#,
	.loc 1 3726 0
	cmpq	$0, -48(%rbp)	#, prev
	je	.L730	#,
	.loc 1 3727 0
	movq	-48(%rbp), %rax	# prev, tmp168
	movq	-32(%rbp), %rdx	# next, tmp169
	movq	%rdx, 16(%rax)	# tmp169, prev_6->fld[1].rtx
	jmp	.L731	#
.L730:
	.loc 1 3729 0
	movq	-104(%rbp), %rax	# pbi, tmp170
	movq	-32(%rbp), %rdx	# next, tmp171
	movq	%rdx, 32(%rax)	# tmp171, pbi_18(D)->mem_set_list
.L731:
	.loc 1 3730 0 discriminator 1
	movq	-56(%rbp), %rax	# temp, tmp172
	movq	%rax, %rdi	# tmp172,
	call	free_EXPR_LIST_node	#
	.loc 1 3731 0 discriminator 1
	movq	-104(%rbp), %rax	# pbi, tmp173
	movl	56(%rax), %eax	# pbi_18(D)->mem_set_list_len, D.17555
	leal	-1(%rax), %edx	#, D.17555
	movq	-104(%rbp), %rax	# pbi, tmp174
	movl	%edx, 56(%rax)	# D.17555, pbi_18(D)->mem_set_list_len
	jmp	.L732	#
.L729:
	.loc 1 3734 0
	movq	-56(%rbp), %rax	# temp, tmp175
	movq	%rax, -48(%rbp)	# tmp175, prev
.L732:
	.loc 1 3735 0
	movq	-32(%rbp), %rax	# next, tmp176
	movq	%rax, -56(%rbp)	# tmp176, temp
.L728:
	.loc 1 3720 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, temp
	jne	.L733	#,
.L727:
.LBE100:
	.loc 1 3742 0
	cmpq	$0, -128(%rbp)	#, insn
	je	.L725	#,
	.loc 1 3743 0
	movq	-128(%rbp), %rdx	# insn, tmp177
	movq	-104(%rbp), %rax	# pbi, tmp178
	movq	%rdx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	invalidate_mems_from_autoinc	#
	.loc 1 3750 0
	jmp	.L734	#
.L725:
	jmp	.L734	#
.L721:
	.loc 1 3762 0
	movq	-112(%rbp), %rax	# x, tmp179
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp180
	movq	%rax, -112(%rbp)	# tmp180, x
	.loc 1 3763 0
	movq	-112(%rbp), %rax	# x, tmp181
	movzwl	(%rax), %eax	# x_45->code, D.17553
	cmpw	$61, %ax	#, D.17553
	je	.L720	#,
	.loc 1 3764 0
	jmp	.L710	#
.L720:
	.loc 1 3769 0
	movq	-128(%rbp), %rcx	# insn, tmp182
	movq	-120(%rbp), %rdx	# cond, tmp183
	movq	-112(%rbp), %rsi	# x, tmp184
	movq	-104(%rbp), %rax	# pbi, tmp185
	movq	%rax, %rdi	# tmp185,
	call	mark_used_reg	#
	.loc 1 3770 0
	jmp	.L709	#
.L718:
.LBB101:
	.loc 1 3774 0
	movq	-112(%rbp), %rax	# x, tmp186
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp187
	movq	%rax, -40(%rbp)	# tmp187, testreg
	.loc 1 3775 0
	movl	$0, -84(%rbp)	#, mark_dest
	.loc 1 3779 0
	movq	-40(%rbp), %rax	# testreg, tmp188
	movzwl	(%rax), %eax	# testreg_47->code, D.17553
	cmpw	$66, %ax	#, D.17553
	jne	.L735	#,
	.loc 1 3785 0
	movq	-40(%rbp), %rax	# testreg, tmp189
	movq	8(%rax), %rsi	# testreg_47->fld[0].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp190
	movq	-120(%rbp), %rdx	# cond, tmp191
	movq	-104(%rbp), %rax	# pbi, tmp192
	movq	%rax, %rdi	# tmp192,
	call	mark_used_regs	#
	.loc 1 3786 0
	movq	-112(%rbp), %rax	# x, tmp193
	movq	16(%rax), %rsi	# x_1->fld[1].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp194
	movq	-120(%rbp), %rdx	# cond, tmp195
	movq	-104(%rbp), %rax	# pbi, tmp196
	movq	%rax, %rdi	# tmp196,
	call	mark_used_regs	#
	.loc 1 3787 0
	jmp	.L709	#
.L735:
	.loc 1 3797 0
	jmp	.L736	#
.L747:
	.loc 1 3814 0
	movq	-40(%rbp), %rax	# testreg, tmp197
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$63, %ax	#, D.17553
	jne	.L737	#,
	.loc 1 3815 0
	movq	-40(%rbp), %rax	# testreg, tmp198
	movq	8(%rax), %rax	# testreg_7->fld[0].rtx, D.17554
	movzbl	2(%rax), %eax	# _71->mode, D.17556
	movzbl	%al, %eax	# D.17556, D.17555
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17556
	.loc 1 3816 0
	movzbl	%al, %edx	# D.17556, D.17555
	movl	target_flags(%rip), %eax	# target_flags, target_flags.288
	andl	$33554432, %eax	#, D.17555
	testl	%eax, %eax	# D.17555
	je	.L738	#,
	.loc 1 3816 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.287
	jmp	.L739	#
.L738:
	.loc 1 3816 0 discriminator 2
	movl	$4, %eax	#, iftmp.287
.L739:
	.loc 1 3816 0 discriminator 3
	addl	%edx, %eax	# D.17555, D.17555
	subl	$1, %eax	#, D.17555
	movl	target_flags(%rip), %edx	# target_flags, target_flags.290
	andl	$33554432, %edx	#, D.17555
	testl	%edx, %edx	# D.17555
	je	.L740	#,
	.loc 1 3816 0 discriminator 1
	movl	$8, %ebx	#, iftmp.289
	jmp	.L741	#
.L740:
	.loc 1 3816 0 discriminator 2
	movl	$4, %ebx	#, iftmp.289
.L741:
	.loc 1 3816 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.289
	movl	%eax, %ecx	# tmp200, D.17555
	.loc 1 3817 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# testreg, tmp202
	movzbl	2(%rax), %eax	# testreg_7->mode, D.17556
	movzbl	%al, %eax	# D.17556, D.17555
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17556
	.loc 1 3818 0 discriminator 3
	movzbl	%al, %edx	# D.17556, D.17555
	movl	target_flags(%rip), %eax	# target_flags, target_flags.292
	andl	$33554432, %eax	#, D.17555
	testl	%eax, %eax	# D.17555
	je	.L742	#,
	.loc 1 3818 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.291
	jmp	.L743	#
.L742:
	.loc 1 3818 0 discriminator 2
	movl	$4, %eax	#, iftmp.291
.L743:
	.loc 1 3818 0 discriminator 3
	addl	%edx, %eax	# D.17555, D.17555
	subl	$1, %eax	#, D.17555
	movl	target_flags(%rip), %edx	# target_flags, target_flags.294
	andl	$33554432, %edx	#, D.17555
	testl	%edx, %edx	# D.17555
	je	.L744	#,
	.loc 1 3818 0 discriminator 1
	movl	$8, %ebx	#, iftmp.293
	jmp	.L745	#
.L744:
	.loc 1 3818 0 discriminator 2
	movl	$4, %ebx	#, iftmp.293
.L745:
	.loc 1 3818 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.293
	.loc 1 3815 0 is_stmt 1 discriminator 3
	cmpl	%eax, %ecx	# D.17555, D.17555
	jg	.L737	#,
	.loc 1 3815 0 is_stmt 0 discriminator 1
	jmp	.L746	#
.L737:
	.loc 1 3821 0 is_stmt 1
	movl	$1, -84(%rbp)	#, mark_dest
.L746:
	.loc 1 3823 0
	movq	-40(%rbp), %rax	# testreg, tmp206
	movq	8(%rax), %rax	# testreg_7->fld[0].rtx, tmp207
	movq	%rax, -40(%rbp)	# tmp207, testreg
.L736:
	.loc 1 3797 0 discriminator 1
	movq	-40(%rbp), %rax	# testreg, tmp208
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$64, %ax	#, D.17553
	je	.L747	#,
	.loc 1 3798 0
	movq	-40(%rbp), %rax	# testreg, tmp209
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$133, %ax	#, D.17553
	je	.L747	#,
	.loc 1 3799 0
	movq	-40(%rbp), %rax	# testreg, tmp210
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$132, %ax	#, D.17553
	je	.L747	#,
	.loc 1 3800 0
	movq	-40(%rbp), %rax	# testreg, tmp211
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$63, %ax	#, D.17553
	je	.L747	#,
	.loc 1 3829 0
	movq	-40(%rbp), %rax	# testreg, tmp212
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$39, %ax	#, D.17553
	jne	.L748	#,
	.loc 1 3830 0
	movq	-40(%rbp), %rax	# testreg, tmp213
	movzbl	2(%rax), %eax	# testreg_7->mode, D.17556
	cmpb	$51, %al	#, D.17556
	je	.L749	#,
.L748:
	.loc 1 3831 0
	movq	-40(%rbp), %rax	# testreg, tmp214
	movzwl	(%rax), %eax	# testreg_7->code, D.17553
	cmpw	$61, %ax	#, D.17553
	jne	.L750	#,
	.loc 1 3832 0
	movq	-40(%rbp), %rax	# testreg, tmp215
	movl	8(%rax), %eax	# testreg_7->fld[0].rtuint, D.17557
	movl	%eax, -60(%rbp)	# D.17557, regno
	.loc 1 3833 0
	cmpl	$20, -60(%rbp)	#, regno
	jne	.L751	#,
	.loc 1 3834 0 discriminator 2
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.296
	.loc 1 3833 0 discriminator 2
	testl	%eax, %eax	# reload_completed.296
	je	.L752	#,
	.loc 1 3834 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.297
	testl	%eax, %eax	# frame_pointer_needed.297
	jne	.L752	#,
.L751:
	.loc 1 3833 0 discriminator 1
	movl	$1, %eax	#, iftmp.295
	jmp	.L753	#
.L752:
	.loc 1 3833 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.295
.L753:
	.loc 1 3832 0 is_stmt 1
	testl	%eax, %eax	# iftmp.295
	je	.L750	#,
	.loc 1 3836 0
	cmpl	$6, -60(%rbp)	#, regno
	jne	.L754	#,
	.loc 1 3837 0 discriminator 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.298
	.loc 1 3836 0 discriminator 1
	testl	%eax, %eax	# reload_completed.298
	je	.L750	#,
	.loc 1 3837 0
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.299
	testl	%eax, %eax	# frame_pointer_needed.299
	jne	.L750	#,
.L754:
	.loc 1 3840 0
	cmpl	$16, -60(%rbp)	#, regno
	jne	.L749	#,
	.loc 1 3840 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# regno, tmp217
	cltq
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.17558
	testb	%al, %al	# D.17558
	jne	.L750	#,
.L749:
	.loc 1 3844 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, mark_dest
	je	.L755	#,
	.loc 1 3845 0
	movq	-112(%rbp), %rax	# x, tmp218
	movq	8(%rax), %rsi	# x_1->fld[0].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp219
	movq	-120(%rbp), %rdx	# cond, tmp220
	movq	-104(%rbp), %rax	# pbi, tmp221
	movq	%rax, %rdi	# tmp221,
	call	mark_used_regs	#
.L755:
	.loc 1 3846 0
	movq	-112(%rbp), %rax	# x, tmp222
	movq	16(%rax), %rsi	# x_1->fld[1].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp223
	movq	-120(%rbp), %rdx	# cond, tmp224
	movq	-104(%rbp), %rax	# pbi, tmp225
	movq	%rax, %rdi	# tmp225,
	call	mark_used_regs	#
	.loc 1 3847 0
	jmp	.L709	#
.L750:
.LBE101:
	.loc 1 3850 0
	jmp	.L734	#
.L716:
	.loc 1 3871 0
	cmpl	$41, -64(%rbp)	#, code
	jne	.L756	#,
	.loc 1 3871 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp226
	movzbl	3(%rax), %eax	# *x_1, D.17556
	andl	$8, %eax	#, D.17556
	testb	%al, %al	# D.17556
	je	.L757	#,
.L756:
	.loc 1 3873 0 is_stmt 1
	movq	-104(%rbp), %rax	# pbi, tmp227
	addq	$32, %rax	#, D.17559
	movq	%rax, %rdi	# D.17559,
	call	free_EXPR_LIST_list	#
	.loc 1 3874 0
	movq	-104(%rbp), %rax	# pbi, tmp228
	movl	$0, 56(%rax)	#, pbi_18(D)->mem_set_list_len
.L757:
	.loc 1 3881 0
	cmpl	$41, -64(%rbp)	#, code
	jne	.L758	#,
.LBB102:
	.loc 1 3885 0
	movl	$0, -80(%rbp)	#, j
	jmp	.L759	#
.L760:
	.loc 1 3886 0 discriminator 2
	movq	-112(%rbp), %rax	# x, tmp229
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.17560
	movl	-80(%rbp), %edx	# j, tmp231
	movslq	%edx, %rdx	# tmp231, tmp230
	movq	8(%rax,%rdx,8), %rsi	# _110->elem, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp232
	movq	-120(%rbp), %rdx	# cond, tmp233
	movq	-104(%rbp), %rax	# pbi, tmp234
	movq	%rax, %rdi	# tmp234,
	call	mark_used_regs	#
	.loc 1 3885 0 discriminator 2
	addl	$1, -80(%rbp)	#, j
.L759:
	.loc 1 3885 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp235
	movq	32(%rax), %rax	# x_1->fld[3].rtvec, D.17560
	movl	(%rax), %eax	# _108->num_elem, D.17555
	cmpl	-80(%rbp), %eax	# j, D.17555
	jg	.L760	#,
.L758:
.LBE102:
	.loc 1 3888 0 is_stmt 1
	jmp	.L734	#
.L714:
	.loc 1 3892 0
	cmpq	$0, -120(%rbp)	#, cond
	je	.L761	#,
	.loc 1 3893 0
	movl	$__FUNCTION__.14286, %edx	#,
	movl	$3893, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L761:
	.loc 1 3895 0
	movq	-112(%rbp), %rax	# x, tmp236
	movq	8(%rax), %rsi	# x_1->fld[0].rtx, D.17554
	movq	-128(%rbp), %rdx	# insn, tmp237
	movq	-104(%rbp), %rax	# pbi, tmp238
	movq	%rdx, %rcx	# tmp237,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp238,
	call	mark_used_regs	#
	.loc 1 3897 0
	movq	-112(%rbp), %rax	# x, tmp239
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp240
	movq	%rax, -120(%rbp)	# tmp240, cond
	.loc 1 3898 0
	movq	-112(%rbp), %rax	# x, tmp241
	movq	16(%rax), %rax	# x_1->fld[1].rtx, tmp242
	movq	%rax, -112(%rbp)	# tmp242, x
	.loc 1 3899 0
	jmp	.L710	#
.L769:
	.loc 1 3910 0
	nop
.L734:
.LBB103:
	.loc 1 3916 0
	movl	-64(%rbp), %eax	# code, code.300
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp244
	movq	%rax, -24(%rbp)	# tmp244, fmt
	.loc 1 3919 0
	movl	-64(%rbp), %eax	# code, code.301
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.17556
	movzbl	%al, %eax	# D.17556, D.17555
	subl	$1, %eax	#, tmp246
	movl	%eax, -76(%rbp)	# tmp246, i
	jmp	.L762	#
.L768:
	.loc 1 3921 0
	movl	-76(%rbp), %eax	# i, tmp247
	movslq	%eax, %rdx	# tmp247, D.17561
	movq	-24(%rbp), %rax	# fmt, tmp248
	addq	%rdx, %rax	# D.17561, D.17562
	movzbl	(%rax), %eax	# *_123, D.17558
	cmpb	$101, %al	#, D.17558
	jne	.L763	#,
	.loc 1 3924 0
	cmpl	$0, -76(%rbp)	#, i
	jne	.L764	#,
	.loc 1 3926 0
	movq	-112(%rbp), %rax	# x, tmp249
	movq	8(%rax), %rax	# x_1->fld[0].rtx, tmp250
	movq	%rax, -112(%rbp)	# tmp250, x
	.loc 1 3927 0
	jmp	.L710	#
.L764:
	.loc 1 3929 0
	movq	-112(%rbp), %rax	# x, tmp251
	movl	-76(%rbp), %edx	# i, tmp253
	movslq	%edx, %rdx	# tmp253, tmp252
	movq	8(%rax,%rdx,8), %rsi	# x_1->fld[i_11].rtx, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp254
	movq	-120(%rbp), %rdx	# cond, tmp255
	movq	-104(%rbp), %rax	# pbi, tmp256
	movq	%rax, %rdi	# tmp256,
	call	mark_used_regs	#
	jmp	.L765	#
.L763:
	.loc 1 3931 0
	movl	-76(%rbp), %eax	# i, tmp257
	movslq	%eax, %rdx	# tmp257, D.17561
	movq	-24(%rbp), %rax	# fmt, tmp258
	addq	%rdx, %rax	# D.17561, D.17562
	movzbl	(%rax), %eax	# *_128, D.17558
	cmpb	$69, %al	#, D.17558
	jne	.L765	#,
.LBB104:
	.loc 1 3934 0
	movl	$0, -72(%rbp)	#, j
	jmp	.L766	#
.L767:
	.loc 1 3935 0 discriminator 2
	movq	-112(%rbp), %rax	# x, tmp259
	movl	-76(%rbp), %edx	# i, tmp261
	movslq	%edx, %rdx	# tmp261, tmp260
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_11].rtvec, D.17560
	movl	-72(%rbp), %edx	# j, tmp263
	movslq	%edx, %rdx	# tmp263, tmp262
	movq	8(%rax,%rdx,8), %rsi	# _133->elem, D.17554
	movq	-128(%rbp), %rcx	# insn, tmp264
	movq	-120(%rbp), %rdx	# cond, tmp265
	movq	-104(%rbp), %rax	# pbi, tmp266
	movq	%rax, %rdi	# tmp266,
	call	mark_used_regs	#
	.loc 1 3934 0 discriminator 2
	addl	$1, -72(%rbp)	#, j
.L766:
	.loc 1 3934 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# x, tmp267
	movl	-76(%rbp), %edx	# i, tmp269
	movslq	%edx, %rdx	# tmp269, tmp268
	movq	8(%rax,%rdx,8), %rax	# x_1->fld[i_11].rtvec, D.17560
	movl	(%rax), %eax	# _131->num_elem, D.17555
	cmpl	-72(%rbp), %eax	# j, D.17555
	jg	.L767	#,
.L765:
.LBE104:
	.loc 1 3919 0 is_stmt 1
	subl	$1, -76(%rbp)	#, i
.L762:
	.loc 1 3919 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, i
	jns	.L768	#,
	jmp	.L709	#
.L770:
.LBE103:
	.loc 1 3688 0 is_stmt 1
	nop
.L709:
	.loc 1 3939 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	mark_used_regs, .-mark_used_regs
	.globl	find_use_as_address
	.type	find_use_as_address, @function
find_use_as_address:
.LFB39:
	.loc 1 4076 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# reg, reg
	movq	%rdx, -72(%rbp)	# plusconst, plusconst
	.loc 1 4077 0
	movq	-56(%rbp), %rax	# x, tmp90
	movzwl	(%rax), %eax	# x_8(D)->code, D.17564
	movzwl	%ax, %eax	# D.17564, tmp91
	movl	%eax, -28(%rbp)	# tmp91, code
	.loc 1 4078 0
	movl	-28(%rbp), %eax	# code, code.302
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp93
	movq	%rax, -16(%rbp)	# tmp93, fmt
	.loc 1 4080 0
	movq	$0, -24(%rbp)	#, value
	.loc 1 4083 0
	cmpl	$66, -28(%rbp)	#, code
	jne	.L772	#,
	.loc 1 4083 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp94
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	cmpq	-64(%rbp), %rax	# reg, D.17565
	jne	.L772	#,
	cmpq	$0, -72(%rbp)	#, plusconst
	jne	.L772	#,
	.loc 1 4084 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.17563
	jmp	.L773	#
.L772:
	.loc 1 4086 0
	cmpl	$66, -28(%rbp)	#, code
	jne	.L774	#,
	.loc 1 4086 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp95
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	movzwl	(%rax), %eax	# _18->code, D.17564
	cmpw	$75, %ax	#, D.17564
	jne	.L774	#,
	.loc 1 4087 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp96
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.17565
	cmpq	-64(%rbp), %rax	# reg, D.17565
	jne	.L774	#,
	.loc 1 4088 0
	movq	-56(%rbp), %rax	# x, tmp97
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	movq	16(%rax), %rax	# _22->fld[1].rtx, D.17565
	movzwl	(%rax), %eax	# _23->code, D.17564
	cmpw	$54, %ax	#, D.17564
	jne	.L774	#,
	.loc 1 4089 0
	movq	-56(%rbp), %rax	# x, tmp98
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	movq	16(%rax), %rax	# _25->fld[1].rtx, D.17565
	movq	8(%rax), %rax	# _26->fld[0].rtwint, D.17566
	cmpq	-72(%rbp), %rax	# plusconst, D.17566
	jne	.L774	#,
	.loc 1 4090 0
	movq	-56(%rbp), %rax	# x, D.17563
	jmp	.L773	#
.L774:
	.loc 1 4092 0
	cmpl	$132, -28(%rbp)	#, code
	je	.L775	#,
	.loc 1 4092 0 is_stmt 0 discriminator 1
	cmpl	$133, -28(%rbp)	#, code
	jne	.L776	#,
.L775:
	.loc 1 4096 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp99
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.17565
	movq	-64(%rbp), %rcx	# reg, tmp100
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.17565,
	call	find_use_as_address	#
	testq	%rax, %rax	# D.17565
	je	.L776	#,
	.loc 1 4097 0
	movl	$1, %eax	#, D.17563
	jmp	.L773	#
.L776:
	.loc 1 4100 0
	movq	-56(%rbp), %rax	# x, tmp101
	cmpq	-64(%rbp), %rax	# reg, tmp101
	jne	.L777	#,
	.loc 1 4101 0
	movl	$1, %eax	#, D.17563
	jmp	.L773	#
.L777:
	.loc 1 4103 0
	movl	-28(%rbp), %eax	# code, code.303
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.17567
	movzbl	%al, %eax	# D.17567, D.17568
	subl	$1, %eax	#, tmp103
	movl	%eax, -36(%rbp)	# tmp103, i
	jmp	.L778	#
.L786:
	.loc 1 4105 0
	movl	-36(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, D.17569
	movq	-16(%rbp), %rax	# fmt, tmp105
	addq	%rdx, %rax	# D.17569, D.17570
	movzbl	(%rax), %eax	# *_38, D.17571
	cmpb	$101, %al	#, D.17571
	jne	.L779	#,
	.loc 1 4107 0
	movq	-56(%rbp), %rax	# x, tmp106
	movl	-36(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtx, D.17565
	movq	-72(%rbp), %rdx	# plusconst, tmp109
	movq	-64(%rbp), %rcx	# reg, tmp110
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# D.17565,
	call	find_use_as_address	#
	movq	%rax, -8(%rbp)	# tmp111, tem
	.loc 1 4108 0
	cmpq	$0, -24(%rbp)	#, value
	jne	.L780	#,
	.loc 1 4109 0
	movq	-8(%rbp), %rax	# tem, tmp112
	movq	%rax, -24(%rbp)	# tmp112, value
	jmp	.L781	#
.L780:
	.loc 1 4110 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L781	#,
	.loc 1 4111 0
	movl	$1, %eax	#, D.17563
	jmp	.L773	#
.L779:
	.loc 1 4113 0
	movl	-36(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, D.17569
	movq	-16(%rbp), %rax	# fmt, tmp114
	addq	%rdx, %rax	# D.17569, D.17570
	movzbl	(%rax), %eax	# *_45, D.17571
	cmpb	$69, %al	#, D.17571
	jne	.L781	#,
.LBB105:
	.loc 1 4116 0
	movq	-56(%rbp), %rax	# x, tmp115
	movl	-36(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.17572
	movl	(%rax), %eax	# _47->num_elem, D.17568
	subl	$1, %eax	#, tmp118
	movl	%eax, -32(%rbp)	# tmp118, j
	jmp	.L782	#
.L785:
	.loc 1 4118 0
	movq	-56(%rbp), %rax	# x, tmp119
	movl	-36(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.17572
	movl	-32(%rbp), %edx	# j, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	movq	8(%rax,%rdx,8), %rax	# _50->elem, D.17565
	movq	-72(%rbp), %rdx	# plusconst, tmp124
	movq	-64(%rbp), %rcx	# reg, tmp125
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.17565,
	call	find_use_as_address	#
	movq	%rax, -8(%rbp)	# tmp126, tem
	.loc 1 4119 0
	cmpq	$0, -24(%rbp)	#, value
	jne	.L783	#,
	.loc 1 4120 0
	movq	-8(%rbp), %rax	# tem, tmp127
	movq	%rax, -24(%rbp)	# tmp127, value
	jmp	.L784	#
.L783:
	.loc 1 4121 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L784	#,
	.loc 1 4122 0
	movl	$1, %eax	#, D.17563
	jmp	.L773	#
.L784:
	.loc 1 4116 0
	subl	$1, -32(%rbp)	#, j
.L782:
	.loc 1 4116 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, j
	jns	.L785	#,
.L781:
.LBE105:
	.loc 1 4103 0 is_stmt 1
	subl	$1, -36(%rbp)	#, i
.L778:
	.loc 1 4103 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L786	#,
	.loc 1 4127 0 is_stmt 1
	movq	-24(%rbp), %rax	# value, D.17563
.L773:
	.loc 1 4128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	find_use_as_address, .-find_use_as_address
	.section	.rodata
.LC9:
	.string	" (nil)"
.LC10:
	.string	" %d"
.LC11:
	.string	" [%s]"
	.text
	.globl	dump_regset
	.type	dump_regset, @function
dump_regset:
.LFB40:
	.loc 1 4137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# r, r
	movq	%rsi, -64(%rbp)	# outf, outf
	.loc 1 4139 0
	cmpq	$0, -56(%rbp)	#, r
	jne	.L788	#,
	.loc 1 4141 0
	movq	-64(%rbp), %rax	# outf, tmp70
	movq	%rax, %rcx	# tmp70,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	.loc 1 4142 0
	jmp	.L787	#
.L788:
.LBB106:
	.loc 1 4145 0
	movq	-56(%rbp), %rax	# r, tmp71
	movq	(%rax), %rax	# r_12(D)->first, tmp72
	movq	%rax, -24(%rbp)	# tmp72, ptr_
	movl	$0, -32(%rbp)	#, indx_
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L790	#
.L792:
	.loc 1 4145 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp73
	movq	(%rax), %rax	# ptr__1->next, tmp74
	movq	%rax, -24(%rbp)	# tmp74, ptr_
.L790:
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L791	#,
	.loc 1 4145 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp75
	movl	16(%rax), %eax	# ptr__1->indx, D.17573
	cmpl	-32(%rbp), %eax	# indx_, D.17573
	jb	.L792	#,
.L791:
	.loc 1 4145 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L793	#,
	.loc 1 4145 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__1->indx, D.17573
	cmpl	-32(%rbp), %eax	# indx_, D.17573
	je	.L793	#,
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L794	#
.L793:
	.loc 1 4145 0 discriminator 2
	jmp	.L794	#
.L802:
	.loc 1 4145 0
	jmp	.L795	#
.L801:
.LBB107:
	.loc 1 4145 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp77
	movl	-36(%rbp), %edx	# word_num_, tmp78
	addq	$2, %rdx	#, tmp79
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp80
	movq	%rax, -16(%rbp)	# tmp80, word_
	cmpq	$0, -16(%rbp)	#, word_
	je	.L796	#,
	.loc 1 4145 0 discriminator 1
	jmp	.L797	#
.L800:
.LBB108:
	.loc 1 4145 0 discriminator 2
	movl	-40(%rbp), %eax	# bit_num_, bit_num_.304
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# bit_num_.304, tmp97
	salq	%cl, %rdx	# tmp97, tmp82
	movq	%rdx, %rax	# tmp82, tmp82
	movq	%rax, -8(%rbp)	# tmp82, mask_
	movq	-8(%rbp), %rax	# mask_, tmp83
	movq	-16(%rbp), %rdx	# word_, tmp84
	andq	%rdx, %rax	# tmp84, D.17574
	testq	%rax, %rax	# D.17574
	je	.L798	#,
	.loc 1 4145 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp85
	notq	%rax	# D.17574
	andq	%rax, -16(%rbp)	# D.17574, word_
	movq	-24(%rbp), %rax	# ptr_, tmp86
	movl	16(%rax), %eax	# ptr__2->indx, D.17573
	leal	(%rax,%rax), %edx	#, D.17573
	movl	-36(%rbp), %eax	# word_num_, tmp87
	addl	%edx, %eax	# D.17573, D.17573
	sall	$6, %eax	#, D.17573
	movl	%eax, %edx	# D.17573, D.17573
	movl	-40(%rbp), %eax	# bit_num_, tmp88
	addl	%edx, %eax	# D.17573, D.17573
	movl	%eax, -28(%rbp)	# D.17573, i
	movl	-28(%rbp), %edx	# i, tmp89
	movq	-64(%rbp), %rax	# outf, tmp90
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	cmpl	$52, -28(%rbp)	#, i
	jg	.L799	#,
	movl	-28(%rbp), %eax	# i, tmp92
	cltq
	movq	reg_names(,%rax,8), %rdx	# reg_names, D.17575
	movq	-64(%rbp), %rax	# outf, tmp93
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
.L799:
	.loc 1 4145 0 discriminator 2
	cmpq	$0, -16(%rbp)	#, word_
	jne	.L798	#,
	.loc 1 4145 0 discriminator 1
	jmp	.L796	#
.L798:
.LBE108:
	.loc 1 4145 0 discriminator 2
	addl	$1, -40(%rbp)	#, bit_num_
.L797:
	.loc 1 4145 0 discriminator 1
	cmpl	$63, -40(%rbp)	#, bit_num_
	jbe	.L800	#,
.L796:
	.loc 1 4145 0 discriminator 2
	movl	$0, -40(%rbp)	#, bit_num_
.LBE107:
	addl	$1, -36(%rbp)	#, word_num_
.L795:
	.loc 1 4145 0 discriminator 1
	cmpl	$1, -36(%rbp)	#, word_num_
	jbe	.L801	#,
	.loc 1 4145 0 discriminator 3
	movl	$0, -36(%rbp)	#, word_num_
	movq	-24(%rbp), %rax	# ptr_, tmp94
	movq	(%rax), %rax	# ptr__2->next, tmp95
	movq	%rax, -24(%rbp)	# tmp95, ptr_
.L794:
	.loc 1 4145 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ptr_
	jne	.L802	#,
.L787:
.LBE106:
	.loc 1 4152 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	dump_regset, .-dump_regset
	.globl	debug_regset
	.type	debug_regset, @function
debug_regset:
.LFB41:
	.loc 1 4161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# r, r
	.loc 1 4162 0
	movq	stderr(%rip), %rdx	# stderr, stderr.305
	movq	-8(%rbp), %rax	# r, tmp61
	movq	%rdx, %rsi	# stderr.305,
	movq	%rax, %rdi	# tmp61,
	call	dump_regset	#
	.loc 1 4163 0
	movq	stderr(%rip), %rax	# stderr, stderr.306
	movq	%rax, %rsi	# stderr.306,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 4164 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	debug_regset, .-debug_regset
	.globl	recompute_reg_usage
	.type	recompute_reg_usage, @function
recompute_reg_usage:
.LFB42:
	.loc 1 4189 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movl	%esi, -12(%rbp)	# loop_step, loop_step
	.loc 1 4190 0
	call	allocate_reg_life_data	#
	.loc 1 4191 0
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
	.loc 1 4192 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	recompute_reg_usage, .-recompute_reg_usage
	.globl	count_or_remove_death_notes
	.type	count_or_remove_death_notes, @function
count_or_remove_death_notes:
.LFB43:
	.loc 1 4202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# blocks, blocks
	movl	%esi, -92(%rbp)	# kill, kill
	.loc 1 4203 0
	movl	$0, -72(%rbp)	#, count
	.loc 1 4205 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.307
	subl	$1, %eax	#, tmp116
	movl	%eax, -76(%rbp)	# tmp116, i
	jmp	.L806	#
.L840:
.LBB109:
	.loc 1 4210 0
	cmpq	$0, -88(%rbp)	#, blocks
	je	.L807	#,
	.loc 1 4210 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# i, i.308
	shrl	$6, %eax	#, D.17579
	movl	%eax, %edx	# D.17579, D.17579
	movq	-88(%rbp), %rax	# blocks, tmp117
	movl	%edx, %edx	# D.17579, tmp118
	addq	$2, %rdx	#, tmp119
	movq	(%rax,%rdx,8), %rdx	# blocks_24(D)->elms, D.17580
	movl	-76(%rbp), %eax	# i, tmp120
	andl	$63, %eax	#, D.17581
	movl	%eax, %ecx	# D.17581, tmp177
	shrq	%cl, %rdx	# tmp177, D.17580
	movq	%rdx, %rax	# D.17580, D.17580
	andl	$1, %eax	#, D.17580
	testq	%rax, %rax	# D.17580
	jne	.L807	#,
	.loc 1 4211 0 is_stmt 1
	jmp	.L808	#
.L807:
	.loc 1 4213 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.309
	movl	-76(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	addq	$4, %rdx	#, tmp123
	movq	(%rax,%rdx,8), %rax	# basic_block_info.309_31->data.bb, tmp124
	movq	%rax, -40(%rbp)	# tmp124, bb
	.loc 1 4215 0
	movq	-40(%rbp), %rax	# bb, tmp125
	movq	(%rax), %rax	# bb_32->head, tmp126
	movq	%rax, -64(%rbp)	# tmp126, insn
.L839:
	.loc 1 4217 0
	movq	-64(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_9->code, D.17582
	movzwl	%ax, %eax	# D.17582, D.17581
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17583
	cmpb	$105, %al	#, D.17583
	jne	.L809	#,
.LBB110:
	.loc 1 4219 0
	movq	-64(%rbp), %rax	# insn, tmp132
	addq	$56, %rax	#, tmp131
	movq	%rax, -56(%rbp)	# tmp131, pprev
	.loc 1 4220 0
	movq	-56(%rbp), %rax	# pprev, tmp133
	movq	(%rax), %rax	# *pprev_37, tmp134
	movq	%rax, -48(%rbp)	# tmp134, link
	.loc 1 4222 0
	jmp	.L810	#
.L837:
	.loc 1 4224 0
	movq	-48(%rbp), %rax	# link, tmp135
	movzbl	2(%rax), %eax	# link_11->mode, D.17584
	movzbl	%al, %eax	# D.17584, D.17579
	cmpl	$1, %eax	#, D.17579
	je	.L812	#,
	cmpl	$10, %eax	#, D.17579
	je	.L813	#,
	jmp	.L811	#
.L812:
	.loc 1 4227 0
	movq	-48(%rbp), %rax	# link, tmp136
	movq	8(%rax), %rax	# link_11->fld[0].rtx, D.17585
	movzwl	(%rax), %eax	# _41->code, D.17582
	cmpw	$61, %ax	#, D.17582
	jne	.L813	#,
.LBB111:
	.loc 1 4229 0
	movq	-48(%rbp), %rax	# link, tmp137
	movq	8(%rax), %rax	# link_11->fld[0].rtx, tmp138
	movq	%rax, -32(%rbp)	# tmp138, reg
	.loc 1 4232 0
	movq	-32(%rbp), %rax	# reg, tmp139
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$52, %eax	#, D.17579
	jbe	.L814	#,
	.loc 1 4233 0
	movl	$1, -68(%rbp)	#, n
	jmp	.L815	#
.L814:
	.loc 1 4235 0
	movq	-32(%rbp), %rax	# reg, tmp140
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$7, %eax	#, D.17579
	jbe	.L816	#,
	.loc 1 4235 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp141
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$15, %eax	#, D.17579
	jbe	.L817	#,
.L816:
	.loc 1 4235 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp142
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$20, %eax	#, D.17579
	jbe	.L818	#,
	.loc 1 4235 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp143
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$28, %eax	#, D.17579
	jbe	.L817	#,
.L818:
	.loc 1 4235 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp144
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$44, %eax	#, D.17579
	jbe	.L819	#,
	.loc 1 4235 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp145
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$52, %eax	#, D.17579
	jbe	.L817	#,
.L819:
	.loc 1 4235 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp146
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$28, %eax	#, D.17579
	jbe	.L820	#,
	.loc 1 4235 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp147
	movl	8(%rax), %eax	# reg_43->fld[0].rtuint, D.17579
	cmpl	$36, %eax	#, D.17579
	ja	.L820	#,
.L817:
	movq	-32(%rbp), %rax	# reg, tmp148
	movzbl	2(%rax), %eax	# reg_43->mode, D.17584
	movzbl	%al, %eax	# D.17584, D.17581
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17586
	cmpl	$5, %eax	#, D.17586
	je	.L821	#,
	.loc 1 4235 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp150
	movzbl	2(%rax), %eax	# reg_43->mode, D.17584
	movzbl	%al, %eax	# D.17584, D.17581
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17586
	cmpl	$6, %eax	#, D.17586
	jne	.L822	#,
.L821:
	.loc 1 4235 0 discriminator 1
	movl	$2, %eax	#, iftmp.311
	jmp	.L823	#
.L822:
	movl	$1, %eax	#, iftmp.311
.L823:
	.loc 1 4235 0 discriminator 3
	jmp	.L824	#
.L820:
	.loc 1 4235 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp152
	movzbl	2(%rax), %eax	# reg_43->mode, D.17584
	cmpb	$18, %al	#, D.17584
	jne	.L825	#,
	.loc 1 4235 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.314
	andl	$33554432, %eax	#, D.17581
	testl	%eax, %eax	# D.17581
	je	.L826	#,
	movl	$2, %eax	#, iftmp.313
	jmp	.L824	#
.L826:
	.loc 1 4235 0 discriminator 2
	movl	$3, %eax	#, iftmp.313
	jmp	.L824	#
.L825:
	movq	-32(%rbp), %rax	# reg, tmp153
	movzbl	2(%rax), %eax	# reg_43->mode, D.17584
	cmpb	$24, %al	#, D.17584
	jne	.L829	#,
	.loc 1 4235 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.317
	andl	$33554432, %eax	#, D.17581
	testl	%eax, %eax	# D.17581
	je	.L830	#,
	movl	$4, %eax	#, iftmp.316
	jmp	.L824	#
.L830:
	.loc 1 4235 0 discriminator 2
	movl	$6, %eax	#, iftmp.316
	jmp	.L824	#
.L829:
	movq	-32(%rbp), %rax	# reg, tmp154
	movzbl	2(%rax), %eax	# reg_43->mode, D.17584
	movzbl	%al, %eax	# D.17584, D.17581
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17584
	movzbl	%al, %edx	# D.17584, D.17581
	movl	target_flags(%rip), %eax	# target_flags, target_flags.319
	andl	$33554432, %eax	#, D.17581
	testl	%eax, %eax	# D.17581
	je	.L833	#,
	.loc 1 4235 0 discriminator 1
	movl	$8, %eax	#, iftmp.318
	jmp	.L834	#
.L833:
	.loc 1 4235 0 discriminator 2
	movl	$4, %eax	#, iftmp.318
.L834:
	.loc 1 4235 0 discriminator 3
	addl	%edx, %eax	# D.17581, D.17581
	subl	$1, %eax	#, D.17581
	movl	target_flags(%rip), %edx	# target_flags, target_flags.321
	andl	$33554432, %edx	#, D.17581
	testl	%edx, %edx	# D.17581
	je	.L835	#,
	.loc 1 4235 0 discriminator 1
	movl	$8, %ebx	#, iftmp.320
	jmp	.L836	#
.L835:
	.loc 1 4235 0 discriminator 2
	movl	$4, %ebx	#, iftmp.320
.L836:
	.loc 1 4235 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.320
.L824:
	movl	%eax, -68(%rbp)	# iftmp.310, n
.L815:
	.loc 1 4236 0 is_stmt 1
	movl	-68(%rbp), %eax	# n, tmp158
	addl	%eax, -72(%rbp)	# tmp158, count
.L813:
.LBE111:
	.loc 1 4241 0
	cmpl	$0, -92(%rbp)	#, kill
	je	.L811	#,
.LBB112:
	.loc 1 4243 0
	movq	-48(%rbp), %rax	# link, tmp159
	movq	16(%rax), %rax	# link_11->fld[1].rtx, tmp160
	movq	%rax, -24(%rbp)	# tmp160, next
	.loc 1 4244 0
	movq	-48(%rbp), %rax	# link, tmp161
	movq	%rax, %rdi	# tmp161,
	call	free_EXPR_LIST_node	#
	.loc 1 4245 0
	movq	-24(%rbp), %rax	# next, tmp162
	movq	%rax, -48(%rbp)	# tmp162, link
	movq	-56(%rbp), %rax	# pprev, tmp163
	movq	-48(%rbp), %rdx	# link, tmp164
	movq	%rdx, (%rax)	# tmp164, *pprev_10
	.loc 1 4246 0
	jmp	.L810	#
.L811:
.LBE112:
	.loc 1 4251 0
	movq	-48(%rbp), %rax	# link, tmp168
	addq	$16, %rax	#, tmp167
	movq	%rax, -56(%rbp)	# tmp167, pprev
	.loc 1 4252 0
	movq	-56(%rbp), %rax	# pprev, tmp169
	movq	(%rax), %rax	# *pprev_97, tmp170
	movq	%rax, -48(%rbp)	# tmp170, link
	.loc 1 4253 0
	nop
.L810:
	.loc 1 4222 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, link
	jne	.L837	#,
.L809:
.LBE110:
	.loc 1 4258 0
	movq	-40(%rbp), %rax	# bb, tmp171
	movq	8(%rax), %rax	# bb_32->end, D.17585
	cmpq	-64(%rbp), %rax	# insn, D.17585
	jne	.L838	#,
	.loc 1 4259 0
	jmp	.L808	#
.L838:
	.loc 1 4215 0
	movq	-64(%rbp), %rax	# insn, tmp172
	movq	24(%rax), %rax	# insn_9->fld[2].rtx, tmp173
	movq	%rax, -64(%rbp)	# tmp173, insn
	.loc 1 4260 0
	jmp	.L839	#
.L808:
.LBE109:
	.loc 1 4205 0
	subl	$1, -76(%rbp)	#, i
.L806:
	.loc 1 4205 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, i
	jns	.L840	#,
	.loc 1 4263 0 is_stmt 1
	movl	-72(%rbp), %eax	# count, D.17581
	.loc 1 4264 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	count_or_remove_death_notes, .-count_or_remove_death_notes
	.type	clear_log_links, @function
clear_log_links:
.LFB44:
	.loc 1 4271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# blocks, blocks
	.loc 1 4275 0
	cmpq	$0, -72(%rbp)	#, blocks
	jne	.L843	#,
	.loc 1 4277 0
	call	get_insns	#
	movq	%rax, -40(%rbp)	# tmp78, insn
	jmp	.L844	#
.L846:
	.loc 1 4278 0
	movq	-40(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_1->code, D.17587
	movzwl	%ax, %eax	# D.17587, D.17588
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17589
	cmpb	$105, %al	#, D.17589
	jne	.L845	#,
	.loc 1 4279 0
	movq	-40(%rbp), %rax	# insn, tmp81
	addq	$48, %rax	#, D.17590
	movq	%rax, %rdi	# D.17590,
	call	free_INSN_LIST_list	#
.L845:
	.loc 1 4277 0
	movq	-40(%rbp), %rax	# insn, tmp82
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp83
	movq	%rax, -40(%rbp)	# tmp83, insn
.L844:
	.loc 1 4277 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L846	#,
	jmp	.L842	#
.L843:
.LBB113:
	.loc 1 4282 0 is_stmt 1
	movl	$0, -52(%rbp)	#, bit_num_
	movq	-72(%rbp), %rax	# blocks, tmp84
	movl	4(%rax), %eax	# blocks_8(D)->size, tmp85
	movl	%eax, -48(%rbp)	# tmp85, size_
	movq	-72(%rbp), %rax	# blocks, tmp89
	addq	$16, %rax	#, tmp88
	movq	%rax, -24(%rbp)	# tmp88, ptr_
	movl	$0, -56(%rbp)	#, word_num_
	jmp	.L848	#
.L856:
.LBB114:
	.loc 1 4282 0 is_stmt 0 discriminator 2
	movl	-56(%rbp), %eax	# word_num_, D.17591
	leaq	0(,%rax,8), %rdx	#, D.17591
	movq	-24(%rbp), %rax	# ptr_, tmp90
	addq	%rdx, %rax	# D.17591, D.17592
	movq	(%rax), %rax	# *_21, tmp91
	movq	%rax, -32(%rbp)	# tmp91, word_
	cmpq	$0, -32(%rbp)	#, word_
	je	.L849	#,
	.loc 1 4282 0 discriminator 1
	jmp	.L850	#
.L855:
.LBB115:
	.loc 1 4282 0 discriminator 2
	movl	-52(%rbp), %eax	# bit_num_, bit_num_.322
	movl	$1, %edx	#, tmp92
	movl	%eax, %ecx	# bit_num_.322, tmp113
	salq	%cl, %rdx	# tmp113, tmp93
	movq	%rdx, %rax	# tmp93, tmp93
	movq	%rax, -16(%rbp)	# tmp93, _mask
	movq	-16(%rbp), %rax	# _mask, tmp94
	movq	-32(%rbp), %rdx	# word_, tmp95
	andq	%rdx, %rax	# tmp95, D.17591
	testq	%rax, %rax	# D.17591
	je	.L851	#,
	.loc 1 4282 0 discriminator 1
	movq	-16(%rbp), %rax	# _mask, tmp96
	notq	%rax	# D.17591
	andq	%rax, -32(%rbp)	# D.17591, word_
	movl	-56(%rbp), %eax	# word_num_, tmp97
	sall	$6, %eax	#, D.17593
	movl	%eax, %edx	# D.17593, D.17593
	movl	-52(%rbp), %eax	# bit_num_, tmp98
	addl	%edx, %eax	# D.17593, D.17593
	movl	%eax, -44(%rbp)	# D.17593, i
.LBB116:
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.323
	movl	-44(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	addq	$4, %rdx	#, tmp101
	movq	(%rax,%rdx,8), %rax	# basic_block_info.323_31->data.bb, tmp102
	movq	%rax, -8(%rbp)	# tmp102, bb
	movq	-8(%rbp), %rax	# bb, tmp103
	movq	(%rax), %rax	# bb_32->head, tmp104
	movq	%rax, -40(%rbp)	# tmp104, insn
	jmp	.L852	#
.L854:
	.loc 1 4282 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp105
	movzwl	(%rax), %eax	# insn_2->code, D.17587
	movzwl	%ax, %eax	# D.17587, D.17588
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17589
	cmpb	$105, %al	#, D.17589
	jne	.L853	#,
	.loc 1 4282 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp107
	addq	$48, %rax	#, D.17590
	movq	%rax, %rdi	# D.17590,
	call	free_INSN_LIST_list	#
.L853:
	.loc 1 4282 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp108
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp109
	movq	%rax, -40(%rbp)	# tmp109, insn
.L852:
	.loc 1 4282 0 discriminator 1
	movq	-8(%rbp), %rax	# bb, tmp110
	movq	8(%rax), %rax	# bb_32->end, D.17594
	movq	24(%rax), %rax	# _34->fld[2].rtx, D.17594
	cmpq	-40(%rbp), %rax	# insn, D.17594
	jne	.L854	#,
.LBE116:
	.loc 1 4282 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, word_
	jne	.L851	#,
	.loc 1 4282 0 discriminator 1
	jmp	.L849	#
.L851:
.LBE115:
	.loc 1 4282 0 discriminator 2
	addl	$1, -52(%rbp)	#, bit_num_
.L850:
	.loc 1 4282 0 discriminator 1
	cmpl	$63, -52(%rbp)	#, bit_num_
	jbe	.L855	#,
.L849:
.LBE114:
	.loc 1 4282 0 discriminator 2
	addl	$1, -56(%rbp)	#, word_num_
	movl	$0, -52(%rbp)	#, bit_num_
.L848:
	.loc 1 4282 0 discriminator 1
	movl	-56(%rbp), %eax	# word_num_, tmp111
	cmpl	-48(%rbp), %eax	# size_, tmp111
	jb	.L856	#,
.L842:
.LBE113:
	.loc 1 4291 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	clear_log_links, .-clear_log_links
	.globl	reg_set_to_hard_reg_set
	.type	reg_set_to_hard_reg_set, @function
reg_set_to_hard_reg_set:
.LFB45:
	.loc 1 4302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# to, to
	movq	%rsi, -64(%rbp)	# from, from
.LBB117:
	.loc 1 4305 0
	movq	-64(%rbp), %rax	# from, tmp72
	movq	(%rax), %rax	# from_12(D)->first, tmp73
	movq	%rax, -24(%rbp)	# tmp73, ptr_
	movl	$0, -32(%rbp)	#, indx_
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L858	#
.L860:
	.loc 1 4305 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp74
	movq	(%rax), %rax	# ptr__1->next, tmp75
	movq	%rax, -24(%rbp)	# tmp75, ptr_
.L858:
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L859	#,
	.loc 1 4305 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp76
	movl	16(%rax), %eax	# ptr__1->indx, D.17595
	cmpl	-32(%rbp), %eax	# indx_, D.17595
	jb	.L860	#,
.L859:
	.loc 1 4305 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, ptr_
	je	.L861	#,
	.loc 1 4305 0 discriminator 1
	movq	-24(%rbp), %rax	# ptr_, tmp77
	movl	16(%rax), %eax	# ptr__1->indx, D.17595
	cmpl	-32(%rbp), %eax	# indx_, D.17595
	je	.L861	#,
	movl	$0, -40(%rbp)	#, bit_num_
	movl	$0, -36(%rbp)	#, word_num_
	jmp	.L862	#
.L861:
	.loc 1 4305 0 discriminator 2
	jmp	.L862	#
.L871:
	.loc 1 4305 0
	jmp	.L863	#
.L870:
.LBB118:
	.loc 1 4305 0 discriminator 2
	movq	-24(%rbp), %rax	# ptr_, tmp78
	movl	-36(%rbp), %edx	# word_num_, tmp79
	addq	$2, %rdx	#, tmp80
	movq	8(%rax,%rdx,8), %rax	# ptr__2->bits, tmp81
	movq	%rax, -16(%rbp)	# tmp81, word_
	cmpq	$0, -16(%rbp)	#, word_
	je	.L864	#,
	.loc 1 4305 0 discriminator 1
	jmp	.L865	#
.L869:
.LBB119:
	.loc 1 4305 0 discriminator 2
	movl	-40(%rbp), %eax	# bit_num_, bit_num_.324
	movl	$1, %edx	#, tmp82
	movl	%eax, %ecx	# bit_num_.324, tmp97
	salq	%cl, %rdx	# tmp97, tmp83
	movq	%rdx, %rax	# tmp83, tmp83
	movq	%rax, -8(%rbp)	# tmp83, mask_
	movq	-8(%rbp), %rax	# mask_, tmp84
	movq	-16(%rbp), %rdx	# word_, tmp85
	andq	%rdx, %rax	# tmp85, D.17596
	testq	%rax, %rax	# D.17596
	je	.L866	#,
	.loc 1 4305 0 discriminator 1
	movq	-8(%rbp), %rax	# mask_, tmp86
	notq	%rax	# D.17596
	andq	%rax, -16(%rbp)	# D.17596, word_
	movq	-24(%rbp), %rax	# ptr_, tmp87
	movl	16(%rax), %eax	# ptr__2->indx, D.17595
	leal	(%rax,%rax), %edx	#, D.17595
	movl	-36(%rbp), %eax	# word_num_, tmp88
	addl	%edx, %eax	# D.17595, D.17595
	sall	$6, %eax	#, D.17595
	movl	%eax, %edx	# D.17595, D.17595
	movl	-40(%rbp), %eax	# bit_num_, tmp89
	addl	%edx, %eax	# D.17595, D.17595
	movl	%eax, -28(%rbp)	# D.17595, i
	cmpl	$52, -28(%rbp)	#, i
	jle	.L867	#,
	jmp	.L857	#
.L867:
	.loc 1 4305 0 discriminator 2
	movq	-56(%rbp), %rax	# to, tmp90
	movq	(%rax), %rdx	# *to_34(D), D.17596
	movl	-28(%rbp), %eax	# i, tmp91
	movl	$1, %esi	#, tmp92
	movl	%eax, %ecx	# tmp91, tmp100
	salq	%cl, %rsi	# tmp100, D.17596
	movq	%rsi, %rax	# D.17596, D.17596
	orq	%rax, %rdx	# D.17596, D.17596
	movq	-56(%rbp), %rax	# to, tmp93
	movq	%rdx, (%rax)	# D.17596, *to_34(D)
	cmpq	$0, -16(%rbp)	#, word_
	jne	.L866	#,
	.loc 1 4305 0 discriminator 1
	jmp	.L864	#
.L866:
.LBE119:
	.loc 1 4305 0 discriminator 2
	addl	$1, -40(%rbp)	#, bit_num_
.L865:
	.loc 1 4305 0 discriminator 1
	cmpl	$63, -40(%rbp)	#, bit_num_
	jbe	.L869	#,
.L864:
	.loc 1 4305 0 discriminator 2
	movl	$0, -40(%rbp)	#, bit_num_
.LBE118:
	addl	$1, -36(%rbp)	#, word_num_
.L863:
	.loc 1 4305 0 discriminator 1
	cmpl	$1, -36(%rbp)	#, word_num_
	jbe	.L870	#,
	.loc 1 4305 0 discriminator 3
	movl	$0, -36(%rbp)	#, word_num_
	movq	-24(%rbp), %rax	# ptr_, tmp94
	movq	(%rax), %rax	# ptr__2->next, tmp95
	movq	%rax, -24(%rbp)	# tmp95, ptr_
.L862:
	.loc 1 4305 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, ptr_
	jne	.L871	#,
.L857:
.LBE117:
	.loc 1 4312 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	reg_set_to_hard_reg_set, .-reg_set_to_hard_reg_set
	.section	.rodata
	.align 32
	.type	__FUNCTION__.13533, @object
	.size	__FUNCTION__.13533, 34
__FUNCTION__.13533:
	.string	"first_insn_after_basic_block_note"
	.align 32
	.type	eliminables.13543, @object
	.size	eliminables.13543, 32
eliminables.13543:
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
	.align 16
	.type	__FUNCTION__.13562, @object
	.size	__FUNCTION__.13562, 16
__FUNCTION__.13562:
	.string	"verify_wide_reg"
	.align 16
	.type	__FUNCTION__.13567, @object
	.size	__FUNCTION__.13567, 27
__FUNCTION__.13567:
	.string	"verify_local_live_at_start"
	.align 16
	.type	__FUNCTION__.13596, @object
	.size	__FUNCTION__.13596, 17
__FUNCTION__.13596:
	.string	"update_life_info"
	.type	__FUNCTION__.13701, @object
	.size	__FUNCTION__.13701, 9
__FUNCTION__.13701:
	.string	"mark_reg"
	.align 16
	.type	__FUNCTION__.13948, @object
	.size	__FUNCTION__.13948, 19
__FUNCTION__.13948:
	.string	"propagate_one_insn"
	.type	__FUNCTION__.14149, @object
	.size	__FUNCTION__.14149, 14
__FUNCTION__.14149:
	.string	"mark_set_regs"
	.type	__FUNCTION__.14286, @object
	.size	__FUNCTION__.14286, 15
__FUNCTION__.14286:
	.string	"mark_used_regs"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "machmode.h"
	.file 11 "real.h"
	.file 12 "obstack.h"
	.file 13 "hashtable.h"
	.file 14 "function.h"
	.file 15 "bitmap.h"
	.file 16 "basic-block.h"
	.file 17 "hard-reg-set.h"
	.file 18 "sbitmap.h"
	.file 19 "varray.h"
	.file 20 "regs.h"
	.file 21 "flags.h"
	.file 22 "output.h"
	.file 23 "ssa.h"
	.file 24 "timevar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5bca
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x1
	.long	.LASF1285
	.long	.LASF1286
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
	.long	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x26b5
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
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x26c5
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
	.long	.LASF866
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0xd94
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xf54
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xfb7
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1070
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xfec
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x102e
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x11ee
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1aa7
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x137d
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x1215
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x124a
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x128d
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x12c2
	.byte	0
	.uleb128 0xc
	.long	0x1e3
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xf
	.long	.LASF111
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x29b
	.uleb128 0x10
	.long	.LASF28
	.sleb128 0
	.uleb128 0x10
	.long	.LASF29
	.sleb128 1
	.uleb128 0x10
	.long	.LASF30
	.sleb128 2
	.uleb128 0x10
	.long	.LASF31
	.sleb128 3
	.uleb128 0x10
	.long	.LASF32
	.sleb128 4
	.uleb128 0x10
	.long	.LASF33
	.sleb128 5
	.uleb128 0x10
	.long	.LASF34
	.sleb128 6
	.uleb128 0x10
	.long	.LASF35
	.sleb128 7
	.uleb128 0x10
	.long	.LASF36
	.sleb128 8
	.uleb128 0x10
	.long	.LASF37
	.sleb128 9
	.uleb128 0x10
	.long	.LASF38
	.sleb128 10
	.uleb128 0x10
	.long	.LASF39
	.sleb128 11
	.uleb128 0x10
	.long	.LASF40
	.sleb128 12
	.uleb128 0x10
	.long	.LASF41
	.sleb128 13
	.uleb128 0x10
	.long	.LASF42
	.sleb128 14
	.uleb128 0x10
	.long	.LASF43
	.sleb128 15
	.uleb128 0x10
	.long	.LASF44
	.sleb128 16
	.uleb128 0x10
	.long	.LASF45
	.sleb128 17
	.uleb128 0x10
	.long	.LASF46
	.sleb128 18
	.uleb128 0x10
	.long	.LASF47
	.sleb128 19
	.uleb128 0x10
	.long	.LASF48
	.sleb128 20
	.uleb128 0x10
	.long	.LASF49
	.sleb128 21
	.uleb128 0x10
	.long	.LASF50
	.sleb128 22
	.uleb128 0x10
	.long	.LASF51
	.sleb128 23
	.uleb128 0x10
	.long	.LASF52
	.sleb128 24
	.uleb128 0x10
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x304
	.uleb128 0x12
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1e3
	.byte	0x4
	.uleb128 0x12
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1e3
	.byte	0x8
	.uleb128 0x12
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1e3
	.byte	0xc
	.uleb128 0x12
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1e3
	.byte	0x10
	.uleb128 0x12
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1e3
	.byte	0x14
	.uleb128 0x12
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x29b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x14
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0xd4
	.long	0x32b
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF67
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF68
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF69
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF70
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0x8c
	.long	0x319
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0x8d
	.long	0x319
	.uleb128 0x3
	.byte	0x8
	.long	0x36a
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF73
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x30
	.long	0x37c
	.uleb128 0x4
	.long	.LASF75
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x4fd
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0xfc
	.long	0x364
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0xfd
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0xfe
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xff
	.long	0x364
	.byte	0x20
	.uleb128 0x12
	.long	.LASF81
	.byte	0x9
	.value	0x100
	.long	0x364
	.byte	0x28
	.uleb128 0x12
	.long	.LASF82
	.byte	0x9
	.value	0x101
	.long	0x364
	.byte	0x30
	.uleb128 0x12
	.long	.LASF83
	.byte	0x9
	.value	0x102
	.long	0x364
	.byte	0x38
	.uleb128 0x12
	.long	.LASF84
	.byte	0x9
	.value	0x103
	.long	0x364
	.byte	0x40
	.uleb128 0x12
	.long	.LASF85
	.byte	0x9
	.value	0x105
	.long	0x364
	.byte	0x48
	.uleb128 0x12
	.long	.LASF86
	.byte	0x9
	.value	0x106
	.long	0x364
	.byte	0x50
	.uleb128 0x12
	.long	.LASF87
	.byte	0x9
	.value	0x107
	.long	0x364
	.byte	0x58
	.uleb128 0x12
	.long	.LASF88
	.byte	0x9
	.value	0x109
	.long	0x545
	.byte	0x60
	.uleb128 0x12
	.long	.LASF89
	.byte	0x9
	.value	0x10b
	.long	0x54b
	.byte	0x68
	.uleb128 0x12
	.long	.LASF90
	.byte	0x9
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x12
	.long	.LASF91
	.byte	0x9
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x12
	.long	.LASF92
	.byte	0x9
	.value	0x113
	.long	0x34e
	.byte	0x78
	.uleb128 0x12
	.long	.LASF93
	.byte	0x9
	.value	0x117
	.long	0x339
	.byte	0x80
	.uleb128 0x12
	.long	.LASF94
	.byte	0x9
	.value	0x118
	.long	0x340
	.byte	0x82
	.uleb128 0x12
	.long	.LASF95
	.byte	0x9
	.value	0x119
	.long	0x551
	.byte	0x83
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x11d
	.long	0x561
	.byte	0x88
	.uleb128 0x12
	.long	.LASF97
	.byte	0x9
	.value	0x126
	.long	0x359
	.byte	0x90
	.uleb128 0x12
	.long	.LASF98
	.byte	0x9
	.value	0x12f
	.long	0x317
	.byte	0x98
	.uleb128 0x12
	.long	.LASF99
	.byte	0x9
	.value	0x130
	.long	0x317
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x9
	.value	0x131
	.long	0x317
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.value	0x132
	.long	0x317
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF102
	.byte	0x9
	.value	0x133
	.long	0x320
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF103
	.byte	0x9
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF104
	.byte	0x9
	.value	0x137
	.long	0x567
	.byte	0xc4
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x50d
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1287
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF105
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x545
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xa2
	.long	0x545
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xa3
	.long	0x54b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x514
	.uleb128 0x3
	.byte	0x8
	.long	0x37c
	.uleb128 0x15
	.long	0x36a
	.long	0x561
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x50d
	.uleb128 0x15
	.long	0x36a
	.long	0x577
	.uleb128 0x16
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x57d
	.uleb128 0xc
	.long	0x36a
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF109
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF110
	.uleb128 0x18
	.long	.LASF112
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x705
	.uleb128 0x10
	.long	.LASF113
	.sleb128 0
	.uleb128 0x10
	.long	.LASF114
	.sleb128 1
	.uleb128 0x10
	.long	.LASF115
	.sleb128 2
	.uleb128 0x10
	.long	.LASF116
	.sleb128 3
	.uleb128 0x10
	.long	.LASF117
	.sleb128 4
	.uleb128 0x10
	.long	.LASF118
	.sleb128 5
	.uleb128 0x10
	.long	.LASF119
	.sleb128 6
	.uleb128 0x10
	.long	.LASF120
	.sleb128 7
	.uleb128 0x10
	.long	.LASF121
	.sleb128 8
	.uleb128 0x10
	.long	.LASF122
	.sleb128 9
	.uleb128 0x10
	.long	.LASF123
	.sleb128 10
	.uleb128 0x10
	.long	.LASF124
	.sleb128 11
	.uleb128 0x10
	.long	.LASF125
	.sleb128 12
	.uleb128 0x10
	.long	.LASF126
	.sleb128 13
	.uleb128 0x10
	.long	.LASF127
	.sleb128 14
	.uleb128 0x10
	.long	.LASF128
	.sleb128 15
	.uleb128 0x10
	.long	.LASF129
	.sleb128 16
	.uleb128 0x10
	.long	.LASF130
	.sleb128 17
	.uleb128 0x10
	.long	.LASF131
	.sleb128 18
	.uleb128 0x10
	.long	.LASF132
	.sleb128 19
	.uleb128 0x10
	.long	.LASF133
	.sleb128 20
	.uleb128 0x10
	.long	.LASF134
	.sleb128 21
	.uleb128 0x10
	.long	.LASF135
	.sleb128 22
	.uleb128 0x10
	.long	.LASF136
	.sleb128 23
	.uleb128 0x10
	.long	.LASF137
	.sleb128 24
	.uleb128 0x10
	.long	.LASF138
	.sleb128 25
	.uleb128 0x10
	.long	.LASF139
	.sleb128 26
	.uleb128 0x10
	.long	.LASF140
	.sleb128 27
	.uleb128 0x10
	.long	.LASF141
	.sleb128 28
	.uleb128 0x10
	.long	.LASF142
	.sleb128 29
	.uleb128 0x10
	.long	.LASF143
	.sleb128 30
	.uleb128 0x10
	.long	.LASF144
	.sleb128 31
	.uleb128 0x10
	.long	.LASF145
	.sleb128 32
	.uleb128 0x10
	.long	.LASF146
	.sleb128 33
	.uleb128 0x10
	.long	.LASF147
	.sleb128 34
	.uleb128 0x10
	.long	.LASF148
	.sleb128 35
	.uleb128 0x10
	.long	.LASF149
	.sleb128 36
	.uleb128 0x10
	.long	.LASF150
	.sleb128 37
	.uleb128 0x10
	.long	.LASF151
	.sleb128 38
	.uleb128 0x10
	.long	.LASF152
	.sleb128 39
	.uleb128 0x10
	.long	.LASF153
	.sleb128 40
	.uleb128 0x10
	.long	.LASF154
	.sleb128 41
	.uleb128 0x10
	.long	.LASF155
	.sleb128 42
	.uleb128 0x10
	.long	.LASF156
	.sleb128 43
	.uleb128 0x10
	.long	.LASF157
	.sleb128 44
	.uleb128 0x10
	.long	.LASF158
	.sleb128 45
	.uleb128 0x10
	.long	.LASF159
	.sleb128 46
	.uleb128 0x10
	.long	.LASF160
	.sleb128 47
	.uleb128 0x10
	.long	.LASF161
	.sleb128 48
	.uleb128 0x10
	.long	.LASF162
	.sleb128 49
	.uleb128 0x10
	.long	.LASF163
	.sleb128 50
	.uleb128 0x10
	.long	.LASF164
	.sleb128 51
	.uleb128 0x10
	.long	.LASF165
	.sleb128 52
	.uleb128 0x10
	.long	.LASF166
	.sleb128 53
	.uleb128 0x10
	.long	.LASF167
	.sleb128 54
	.uleb128 0x10
	.long	.LASF168
	.sleb128 55
	.uleb128 0x10
	.long	.LASF169
	.sleb128 56
	.uleb128 0x10
	.long	.LASF170
	.sleb128 57
	.uleb128 0x10
	.long	.LASF171
	.sleb128 58
	.uleb128 0x10
	.long	.LASF172
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF173
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x74e
	.uleb128 0x10
	.long	.LASF174
	.sleb128 0
	.uleb128 0x10
	.long	.LASF175
	.sleb128 1
	.uleb128 0x10
	.long	.LASF176
	.sleb128 2
	.uleb128 0x10
	.long	.LASF177
	.sleb128 3
	.uleb128 0x10
	.long	.LASF178
	.sleb128 4
	.uleb128 0x10
	.long	.LASF179
	.sleb128 5
	.uleb128 0x10
	.long	.LASF180
	.sleb128 6
	.uleb128 0x10
	.long	.LASF181
	.sleb128 7
	.uleb128 0x10
	.long	.LASF182
	.sleb128 8
	.uleb128 0x10
	.long	.LASF183
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF184
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0xb27
	.uleb128 0x10
	.long	.LASF185
	.sleb128 0
	.uleb128 0x10
	.long	.LASF186
	.sleb128 1
	.uleb128 0x10
	.long	.LASF187
	.sleb128 2
	.uleb128 0x10
	.long	.LASF188
	.sleb128 3
	.uleb128 0x10
	.long	.LASF189
	.sleb128 4
	.uleb128 0x10
	.long	.LASF190
	.sleb128 5
	.uleb128 0x10
	.long	.LASF191
	.sleb128 6
	.uleb128 0x10
	.long	.LASF192
	.sleb128 7
	.uleb128 0x10
	.long	.LASF193
	.sleb128 8
	.uleb128 0x10
	.long	.LASF194
	.sleb128 9
	.uleb128 0x10
	.long	.LASF195
	.sleb128 10
	.uleb128 0x10
	.long	.LASF196
	.sleb128 11
	.uleb128 0x10
	.long	.LASF197
	.sleb128 12
	.uleb128 0x10
	.long	.LASF198
	.sleb128 13
	.uleb128 0x10
	.long	.LASF199
	.sleb128 14
	.uleb128 0x10
	.long	.LASF200
	.sleb128 15
	.uleb128 0x10
	.long	.LASF201
	.sleb128 16
	.uleb128 0x10
	.long	.LASF202
	.sleb128 17
	.uleb128 0x10
	.long	.LASF203
	.sleb128 18
	.uleb128 0x10
	.long	.LASF204
	.sleb128 19
	.uleb128 0x10
	.long	.LASF205
	.sleb128 20
	.uleb128 0x10
	.long	.LASF206
	.sleb128 21
	.uleb128 0x10
	.long	.LASF207
	.sleb128 22
	.uleb128 0x10
	.long	.LASF208
	.sleb128 23
	.uleb128 0x10
	.long	.LASF209
	.sleb128 24
	.uleb128 0x10
	.long	.LASF210
	.sleb128 25
	.uleb128 0x10
	.long	.LASF211
	.sleb128 26
	.uleb128 0x10
	.long	.LASF212
	.sleb128 27
	.uleb128 0x10
	.long	.LASF213
	.sleb128 28
	.uleb128 0x10
	.long	.LASF214
	.sleb128 29
	.uleb128 0x10
	.long	.LASF215
	.sleb128 30
	.uleb128 0x10
	.long	.LASF216
	.sleb128 31
	.uleb128 0x10
	.long	.LASF217
	.sleb128 32
	.uleb128 0x10
	.long	.LASF218
	.sleb128 33
	.uleb128 0x10
	.long	.LASF219
	.sleb128 34
	.uleb128 0x10
	.long	.LASF220
	.sleb128 35
	.uleb128 0x10
	.long	.LASF221
	.sleb128 36
	.uleb128 0x10
	.long	.LASF222
	.sleb128 37
	.uleb128 0x10
	.long	.LASF223
	.sleb128 38
	.uleb128 0x10
	.long	.LASF224
	.sleb128 39
	.uleb128 0x10
	.long	.LASF225
	.sleb128 40
	.uleb128 0x10
	.long	.LASF226
	.sleb128 41
	.uleb128 0x10
	.long	.LASF227
	.sleb128 42
	.uleb128 0x10
	.long	.LASF228
	.sleb128 43
	.uleb128 0x10
	.long	.LASF229
	.sleb128 44
	.uleb128 0x10
	.long	.LASF230
	.sleb128 45
	.uleb128 0x10
	.long	.LASF231
	.sleb128 46
	.uleb128 0x10
	.long	.LASF232
	.sleb128 47
	.uleb128 0x10
	.long	.LASF233
	.sleb128 48
	.uleb128 0x10
	.long	.LASF234
	.sleb128 49
	.uleb128 0x10
	.long	.LASF235
	.sleb128 50
	.uleb128 0x10
	.long	.LASF236
	.sleb128 51
	.uleb128 0x10
	.long	.LASF237
	.sleb128 52
	.uleb128 0x10
	.long	.LASF238
	.sleb128 53
	.uleb128 0x10
	.long	.LASF239
	.sleb128 54
	.uleb128 0x10
	.long	.LASF240
	.sleb128 55
	.uleb128 0x10
	.long	.LASF241
	.sleb128 56
	.uleb128 0x10
	.long	.LASF242
	.sleb128 57
	.uleb128 0x10
	.long	.LASF243
	.sleb128 58
	.uleb128 0x10
	.long	.LASF244
	.sleb128 59
	.uleb128 0x10
	.long	.LASF245
	.sleb128 60
	.uleb128 0x10
	.long	.LASF246
	.sleb128 61
	.uleb128 0x10
	.long	.LASF247
	.sleb128 62
	.uleb128 0x10
	.long	.LASF248
	.sleb128 63
	.uleb128 0x10
	.long	.LASF249
	.sleb128 64
	.uleb128 0x10
	.long	.LASF250
	.sleb128 65
	.uleb128 0x10
	.long	.LASF251
	.sleb128 66
	.uleb128 0x10
	.long	.LASF252
	.sleb128 67
	.uleb128 0x10
	.long	.LASF253
	.sleb128 68
	.uleb128 0x10
	.long	.LASF254
	.sleb128 69
	.uleb128 0x10
	.long	.LASF255
	.sleb128 70
	.uleb128 0x10
	.long	.LASF256
	.sleb128 71
	.uleb128 0x10
	.long	.LASF257
	.sleb128 72
	.uleb128 0x10
	.long	.LASF258
	.sleb128 73
	.uleb128 0x10
	.long	.LASF259
	.sleb128 74
	.uleb128 0x10
	.long	.LASF260
	.sleb128 75
	.uleb128 0x10
	.long	.LASF261
	.sleb128 76
	.uleb128 0x10
	.long	.LASF262
	.sleb128 77
	.uleb128 0x10
	.long	.LASF263
	.sleb128 78
	.uleb128 0x10
	.long	.LASF264
	.sleb128 79
	.uleb128 0x10
	.long	.LASF265
	.sleb128 80
	.uleb128 0x10
	.long	.LASF266
	.sleb128 81
	.uleb128 0x10
	.long	.LASF267
	.sleb128 82
	.uleb128 0x10
	.long	.LASF268
	.sleb128 83
	.uleb128 0x10
	.long	.LASF269
	.sleb128 84
	.uleb128 0x10
	.long	.LASF270
	.sleb128 85
	.uleb128 0x10
	.long	.LASF271
	.sleb128 86
	.uleb128 0x10
	.long	.LASF272
	.sleb128 87
	.uleb128 0x10
	.long	.LASF273
	.sleb128 88
	.uleb128 0x10
	.long	.LASF274
	.sleb128 89
	.uleb128 0x10
	.long	.LASF275
	.sleb128 90
	.uleb128 0x10
	.long	.LASF276
	.sleb128 91
	.uleb128 0x10
	.long	.LASF277
	.sleb128 92
	.uleb128 0x10
	.long	.LASF278
	.sleb128 93
	.uleb128 0x10
	.long	.LASF279
	.sleb128 94
	.uleb128 0x10
	.long	.LASF280
	.sleb128 95
	.uleb128 0x10
	.long	.LASF281
	.sleb128 96
	.uleb128 0x10
	.long	.LASF282
	.sleb128 97
	.uleb128 0x10
	.long	.LASF283
	.sleb128 98
	.uleb128 0x10
	.long	.LASF284
	.sleb128 99
	.uleb128 0x10
	.long	.LASF285
	.sleb128 100
	.uleb128 0x10
	.long	.LASF286
	.sleb128 101
	.uleb128 0x10
	.long	.LASF287
	.sleb128 102
	.uleb128 0x10
	.long	.LASF288
	.sleb128 103
	.uleb128 0x10
	.long	.LASF289
	.sleb128 104
	.uleb128 0x10
	.long	.LASF290
	.sleb128 105
	.uleb128 0x10
	.long	.LASF291
	.sleb128 106
	.uleb128 0x10
	.long	.LASF292
	.sleb128 107
	.uleb128 0x10
	.long	.LASF293
	.sleb128 108
	.uleb128 0x10
	.long	.LASF294
	.sleb128 109
	.uleb128 0x10
	.long	.LASF295
	.sleb128 110
	.uleb128 0x10
	.long	.LASF296
	.sleb128 111
	.uleb128 0x10
	.long	.LASF297
	.sleb128 112
	.uleb128 0x10
	.long	.LASF298
	.sleb128 113
	.uleb128 0x10
	.long	.LASF299
	.sleb128 114
	.uleb128 0x10
	.long	.LASF300
	.sleb128 115
	.uleb128 0x10
	.long	.LASF301
	.sleb128 116
	.uleb128 0x10
	.long	.LASF302
	.sleb128 117
	.uleb128 0x10
	.long	.LASF303
	.sleb128 118
	.uleb128 0x10
	.long	.LASF304
	.sleb128 119
	.uleb128 0x10
	.long	.LASF305
	.sleb128 120
	.uleb128 0x10
	.long	.LASF306
	.sleb128 121
	.uleb128 0x10
	.long	.LASF307
	.sleb128 122
	.uleb128 0x10
	.long	.LASF308
	.sleb128 123
	.uleb128 0x10
	.long	.LASF309
	.sleb128 124
	.uleb128 0x10
	.long	.LASF310
	.sleb128 125
	.uleb128 0x10
	.long	.LASF311
	.sleb128 126
	.uleb128 0x10
	.long	.LASF312
	.sleb128 127
	.uleb128 0x10
	.long	.LASF313
	.sleb128 128
	.uleb128 0x10
	.long	.LASF314
	.sleb128 129
	.uleb128 0x10
	.long	.LASF315
	.sleb128 130
	.uleb128 0x10
	.long	.LASF316
	.sleb128 131
	.uleb128 0x10
	.long	.LASF317
	.sleb128 132
	.uleb128 0x10
	.long	.LASF318
	.sleb128 133
	.uleb128 0x10
	.long	.LASF319
	.sleb128 134
	.uleb128 0x10
	.long	.LASF320
	.sleb128 135
	.uleb128 0x10
	.long	.LASF321
	.sleb128 136
	.uleb128 0x10
	.long	.LASF322
	.sleb128 137
	.uleb128 0x10
	.long	.LASF323
	.sleb128 138
	.uleb128 0x10
	.long	.LASF324
	.sleb128 139
	.uleb128 0x10
	.long	.LASF325
	.sleb128 140
	.uleb128 0x10
	.long	.LASF326
	.sleb128 141
	.uleb128 0x10
	.long	.LASF327
	.sleb128 142
	.uleb128 0x10
	.long	.LASF328
	.sleb128 143
	.uleb128 0x10
	.long	.LASF329
	.sleb128 144
	.uleb128 0x10
	.long	.LASF330
	.sleb128 145
	.uleb128 0x10
	.long	.LASF331
	.sleb128 146
	.uleb128 0x10
	.long	.LASF332
	.sleb128 147
	.byte	0
	.uleb128 0x18
	.long	.LASF333
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0xd94
	.uleb128 0x10
	.long	.LASF334
	.sleb128 0
	.uleb128 0x10
	.long	.LASF335
	.sleb128 1
	.uleb128 0x10
	.long	.LASF336
	.sleb128 2
	.uleb128 0x10
	.long	.LASF337
	.sleb128 3
	.uleb128 0x10
	.long	.LASF338
	.sleb128 4
	.uleb128 0x10
	.long	.LASF339
	.sleb128 5
	.uleb128 0x10
	.long	.LASF340
	.sleb128 6
	.uleb128 0x10
	.long	.LASF341
	.sleb128 7
	.uleb128 0x10
	.long	.LASF342
	.sleb128 8
	.uleb128 0x10
	.long	.LASF343
	.sleb128 9
	.uleb128 0x10
	.long	.LASF344
	.sleb128 10
	.uleb128 0x10
	.long	.LASF345
	.sleb128 11
	.uleb128 0x10
	.long	.LASF346
	.sleb128 12
	.uleb128 0x10
	.long	.LASF347
	.sleb128 13
	.uleb128 0x10
	.long	.LASF348
	.sleb128 14
	.uleb128 0x10
	.long	.LASF349
	.sleb128 15
	.uleb128 0x10
	.long	.LASF350
	.sleb128 16
	.uleb128 0x10
	.long	.LASF351
	.sleb128 17
	.uleb128 0x10
	.long	.LASF352
	.sleb128 18
	.uleb128 0x10
	.long	.LASF353
	.sleb128 19
	.uleb128 0x10
	.long	.LASF354
	.sleb128 20
	.uleb128 0x10
	.long	.LASF355
	.sleb128 21
	.uleb128 0x10
	.long	.LASF356
	.sleb128 22
	.uleb128 0x10
	.long	.LASF357
	.sleb128 23
	.uleb128 0x10
	.long	.LASF358
	.sleb128 24
	.uleb128 0x10
	.long	.LASF359
	.sleb128 25
	.uleb128 0x10
	.long	.LASF360
	.sleb128 26
	.uleb128 0x10
	.long	.LASF361
	.sleb128 27
	.uleb128 0x10
	.long	.LASF362
	.sleb128 28
	.uleb128 0x10
	.long	.LASF363
	.sleb128 29
	.uleb128 0x10
	.long	.LASF364
	.sleb128 30
	.uleb128 0x10
	.long	.LASF365
	.sleb128 31
	.uleb128 0x10
	.long	.LASF366
	.sleb128 32
	.uleb128 0x10
	.long	.LASF367
	.sleb128 33
	.uleb128 0x10
	.long	.LASF368
	.sleb128 34
	.uleb128 0x10
	.long	.LASF369
	.sleb128 35
	.uleb128 0x10
	.long	.LASF370
	.sleb128 36
	.uleb128 0x10
	.long	.LASF371
	.sleb128 37
	.uleb128 0x10
	.long	.LASF372
	.sleb128 38
	.uleb128 0x10
	.long	.LASF373
	.sleb128 39
	.uleb128 0x10
	.long	.LASF374
	.sleb128 40
	.uleb128 0x10
	.long	.LASF375
	.sleb128 41
	.uleb128 0x10
	.long	.LASF376
	.sleb128 42
	.uleb128 0x10
	.long	.LASF377
	.sleb128 43
	.uleb128 0x10
	.long	.LASF378
	.sleb128 44
	.uleb128 0x10
	.long	.LASF379
	.sleb128 45
	.uleb128 0x10
	.long	.LASF380
	.sleb128 46
	.uleb128 0x10
	.long	.LASF381
	.sleb128 47
	.uleb128 0x10
	.long	.LASF382
	.sleb128 48
	.uleb128 0x10
	.long	.LASF383
	.sleb128 49
	.uleb128 0x10
	.long	.LASF384
	.sleb128 50
	.uleb128 0x10
	.long	.LASF385
	.sleb128 51
	.uleb128 0x10
	.long	.LASF386
	.sleb128 52
	.uleb128 0x10
	.long	.LASF387
	.sleb128 53
	.uleb128 0x10
	.long	.LASF388
	.sleb128 54
	.uleb128 0x10
	.long	.LASF389
	.sleb128 55
	.uleb128 0x10
	.long	.LASF390
	.sleb128 56
	.uleb128 0x10
	.long	.LASF391
	.sleb128 57
	.uleb128 0x10
	.long	.LASF392
	.sleb128 58
	.uleb128 0x10
	.long	.LASF393
	.sleb128 59
	.uleb128 0x10
	.long	.LASF394
	.sleb128 60
	.uleb128 0x10
	.long	.LASF395
	.sleb128 61
	.uleb128 0x10
	.long	.LASF396
	.sleb128 62
	.uleb128 0x10
	.long	.LASF397
	.sleb128 63
	.uleb128 0x10
	.long	.LASF398
	.sleb128 64
	.uleb128 0x10
	.long	.LASF399
	.sleb128 65
	.uleb128 0x10
	.long	.LASF400
	.sleb128 66
	.uleb128 0x10
	.long	.LASF401
	.sleb128 67
	.uleb128 0x10
	.long	.LASF402
	.sleb128 68
	.uleb128 0x10
	.long	.LASF403
	.sleb128 69
	.uleb128 0x10
	.long	.LASF404
	.sleb128 70
	.uleb128 0x10
	.long	.LASF405
	.sleb128 71
	.uleb128 0x10
	.long	.LASF406
	.sleb128 72
	.uleb128 0x10
	.long	.LASF407
	.sleb128 73
	.uleb128 0x10
	.long	.LASF408
	.sleb128 74
	.uleb128 0x10
	.long	.LASF409
	.sleb128 75
	.uleb128 0x10
	.long	.LASF410
	.sleb128 76
	.uleb128 0x10
	.long	.LASF411
	.sleb128 77
	.uleb128 0x10
	.long	.LASF412
	.sleb128 78
	.uleb128 0x10
	.long	.LASF413
	.sleb128 79
	.uleb128 0x10
	.long	.LASF414
	.sleb128 80
	.uleb128 0x10
	.long	.LASF415
	.sleb128 81
	.uleb128 0x10
	.long	.LASF416
	.sleb128 82
	.uleb128 0x10
	.long	.LASF417
	.sleb128 83
	.uleb128 0x10
	.long	.LASF418
	.sleb128 84
	.uleb128 0x10
	.long	.LASF419
	.sleb128 85
	.uleb128 0x10
	.long	.LASF420
	.sleb128 86
	.uleb128 0x10
	.long	.LASF421
	.sleb128 87
	.uleb128 0x10
	.long	.LASF422
	.sleb128 88
	.uleb128 0x10
	.long	.LASF423
	.sleb128 89
	.uleb128 0x10
	.long	.LASF424
	.sleb128 90
	.uleb128 0x10
	.long	.LASF425
	.sleb128 91
	.uleb128 0x10
	.long	.LASF426
	.sleb128 92
	.uleb128 0x10
	.long	.LASF427
	.sleb128 93
	.uleb128 0x10
	.long	.LASF428
	.sleb128 94
	.uleb128 0x10
	.long	.LASF429
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF430
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xf30
	.uleb128 0x8
	.long	.LASF431
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF432
	.byte	0x4
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF433
	.byte	0x4
	.byte	0x81
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF434
	.byte	0x4
	.byte	0x82
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF435
	.byte	0x4
	.byte	0x83
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF436
	.byte	0x4
	.byte	0x84
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF437
	.byte	0x4
	.byte	0x85
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF438
	.byte	0x4
	.byte	0x86
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF439
	.byte	0x4
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF440
	.byte	0x4
	.byte	0x89
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF441
	.byte	0x4
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF442
	.byte	0x4
	.byte	0x8b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF443
	.byte	0x4
	.byte	0x8c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF444
	.byte	0x4
	.byte	0x8d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF445
	.byte	0x4
	.byte	0x8e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF446
	.byte	0x4
	.byte	0x8f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF447
	.byte	0x4
	.byte	0x90
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF448
	.byte	0x4
	.byte	0x92
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF449
	.byte	0x4
	.byte	0x93
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF450
	.byte	0x4
	.byte	0x94
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF451
	.byte	0x4
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF452
	.byte	0x4
	.byte	0x96
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF453
	.byte	0x4
	.byte	0x97
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF454
	.byte	0x4
	.byte	0x98
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF455
	.byte	0x4
	.byte	0x99
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xf54
	.uleb128 0x1a
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x32b
	.byte	0
	.uleb128 0x12
	.long	.LASF456
	.byte	0x4
	.value	0x2cb
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF457
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xf89
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xf30
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xf9c
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xf9c
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0xfac
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF458
	.byte	0xb
	.byte	0x6d
	.long	0xf89
	.uleb128 0x11
	.long	.LASF459
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xfec
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xfac
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF460
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x102e
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF461
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF462
	.byte	0x4
	.value	0x2ee
	.long	0x577
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF463
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1070
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF464
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF465
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF466
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x10a5
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF467
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF468
	.byte	0x18
	.byte	0xc
	.byte	0xa1
	.long	0x10d6
	.uleb128 0x8
	.long	.LASF469
	.byte	0xc
	.byte	0xa3
	.long	0x364
	.byte	0
	.uleb128 0x8
	.long	.LASF470
	.byte	0xc
	.byte	0xa4
	.long	0x10d6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF471
	.byte	0xc
	.byte	0xa5
	.long	0x4fd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10a5
	.uleb128 0x4
	.long	.LASF472
	.byte	0x58
	.byte	0xc
	.byte	0xa8
	.long	0x118e
	.uleb128 0x8
	.long	.LASF473
	.byte	0xc
	.byte	0xaa
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF474
	.byte	0xc
	.byte	0xab
	.long	0x10d6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF475
	.byte	0xc
	.byte	0xac
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF476
	.byte	0xc
	.byte	0xad
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF477
	.byte	0xc
	.byte	0xae
	.long	0x364
	.byte	0x20
	.uleb128 0x8
	.long	.LASF478
	.byte	0xc
	.byte	0xaf
	.long	0x319
	.byte	0x28
	.uleb128 0x8
	.long	.LASF479
	.byte	0xc
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF480
	.byte	0xc
	.byte	0xb5
	.long	0x11a2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF481
	.byte	0xc
	.byte	0xb6
	.long	0x11b8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF482
	.byte	0xc
	.byte	0xb7
	.long	0x317
	.byte	0x48
	.uleb128 0x5
	.long	.LASF483
	.byte	0xc
	.byte	0xbd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF484
	.byte	0xc
	.byte	0xbe
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF485
	.byte	0xc
	.byte	0xc2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.long	0x10d6
	.long	0x11a2
	.uleb128 0x1d
	.long	0x317
	.uleb128 0x1d
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x118e
	.uleb128 0x1e
	.long	0x11b8
	.uleb128 0x1d
	.long	0x317
	.uleb128 0x1d
	.long	0x10d6
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11a8
	.uleb128 0x4
	.long	.LASF486
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.long	0x11e3
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x1c
	.long	0x310
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xd
	.byte	0x1d
	.long	0x11e3
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11e9
	.uleb128 0xc
	.long	0x332
	.uleb128 0x11
	.long	.LASF487
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x1215
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0xd94
	.byte	0
	.uleb128 0x1a
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x11be
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF488
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x124a
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0xd94
	.byte	0
	.uleb128 0x12
	.long	.LASF489
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF490
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF491
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x127d
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0xd94
	.byte	0
	.uleb128 0x12
	.long	.LASF461
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x1a
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x127d
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	0x123
	.long	0x128d
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF492
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x12c2
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0xd94
	.byte	0
	.uleb128 0x12
	.long	.LASF493
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF494
	.byte	0x4
	.value	0x373
	.long	0x127d
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF495
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x135b
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0xd94
	.byte	0
	.uleb128 0x1f
	.long	.LASF496
	.byte	0x4
	.value	0x3a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF497
	.byte	0x4
	.value	0x3a8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF498
	.byte	0x4
	.value	0x3a9
	.long	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF499
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF500
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF501
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF502
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF503
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF504
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x137d
	.uleb128 0xa
	.long	.LASF505
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF462
	.byte	0x4
	.value	0x4d8
	.long	0x364
	.byte	0
	.uleb128 0x11
	.long	.LASF506
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1592
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0xd94
	.byte	0
	.uleb128 0x12
	.long	.LASF507
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF508
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF509
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF510
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x310
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF511
	.byte	0x4
	.value	0x4c1
	.long	0x310
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF512
	.byte	0x4
	.value	0x4c4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF513
	.byte	0x4
	.value	0x4c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF514
	.byte	0x4
	.value	0x4c6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF515
	.byte	0x4
	.value	0x4c7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x4
	.value	0x4c8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x4
	.value	0x4c9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x4
	.value	0x4ca
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF448
	.byte	0x4
	.value	0x4cc
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF449
	.byte	0x4
	.value	0x4cd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF450
	.byte	0x4
	.value	0x4ce
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF451
	.byte	0x4
	.value	0x4cf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF452
	.byte	0x4
	.value	0x4d0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF453
	.byte	0x4
	.value	0x4d1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF454
	.byte	0x4
	.value	0x4d2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x4
	.value	0x4d3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF520
	.byte	0x4
	.value	0x4d5
	.long	0x310
	.byte	0x40
	.uleb128 0x12
	.long	.LASF521
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF522
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF523
	.byte	0x4
	.value	0x4d8
	.long	0x135b
	.byte	0x58
	.uleb128 0x12
	.long	.LASF524
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF525
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF526
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF527
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF528
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF529
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF530
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF531
	.byte	0x4
	.value	0x4e0
	.long	0x319
	.byte	0x98
	.uleb128 0x12
	.long	.LASF532
	.byte	0x4
	.value	0x4e2
	.long	0x1597
	.byte	0xa0
	.byte	0
	.uleb128 0x21
	.long	.LASF650
	.uleb128 0x3
	.byte	0x8
	.long	0x1592
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x15c7
	.uleb128 0x1f
	.long	.LASF520
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF533
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x15ef
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0xb27
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x319
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x159d
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1621
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1aa1
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1e3
	.byte	0
	.uleb128 0x22
	.long	.LASF534
	.value	0x1b0
	.byte	0xe
	.byte	0xae
	.long	0x1aa1
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb0
	.long	0x2f59
	.byte	0
	.uleb128 0x8
	.long	.LASF535
	.byte	0xe
	.byte	0xb1
	.long	0x2f64
	.byte	0x8
	.uleb128 0x8
	.long	.LASF536
	.byte	0xe
	.byte	0xb2
	.long	0x2f6a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF537
	.byte	0xe
	.byte	0xb3
	.long	0x2f70
	.byte	0x18
	.uleb128 0x8
	.long	.LASF538
	.byte	0xe
	.byte	0xb4
	.long	0x2f7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF524
	.byte	0xe
	.byte	0xb9
	.long	0x577
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xe
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF539
	.byte	0xe
	.byte	0xbf
	.long	0x1aa1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF540
	.byte	0xe
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF541
	.byte	0xe
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF542
	.byte	0xe
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF543
	.byte	0xe
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF544
	.byte	0xe
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF545
	.byte	0xe
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF546
	.byte	0xe
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF547
	.byte	0xe
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF548
	.byte	0xe
	.byte	0xe7
	.long	0x577
	.byte	0x88
	.uleb128 0x8
	.long	.LASF549
	.byte	0xe
	.byte	0xeb
	.long	0x2f86
	.byte	0x90
	.uleb128 0x8
	.long	.LASF550
	.byte	0xe
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF551
	.byte	0xe
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF552
	.byte	0xe
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF553
	.byte	0xe
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF554
	.byte	0xe
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF555
	.byte	0xe
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF556
	.byte	0xe
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF557
	.byte	0xe
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF558
	.byte	0xe
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF559
	.byte	0xe
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF560
	.byte	0xe
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF561
	.byte	0xe
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF562
	.byte	0xe
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x23
	.long	.LASF563
	.byte	0xe
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x23
	.long	.LASF564
	.byte	0xe
	.value	0x12f
	.long	0x319
	.value	0x108
	.uleb128 0x23
	.long	.LASF565
	.byte	0xe
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x23
	.long	.LASF566
	.byte	0xe
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x23
	.long	.LASF567
	.byte	0xe
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x23
	.long	.LASF568
	.byte	0xe
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x23
	.long	.LASF569
	.byte	0xe
	.value	0x148
	.long	0x310
	.value	0x130
	.uleb128 0x23
	.long	.LASF570
	.byte	0xe
	.value	0x14e
	.long	0x2846
	.value	0x138
	.uleb128 0x23
	.long	.LASF571
	.byte	0xe
	.value	0x151
	.long	0x2f91
	.value	0x140
	.uleb128 0x23
	.long	.LASF572
	.byte	0xe
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x23
	.long	.LASF573
	.byte	0xe
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x23
	.long	.LASF574
	.byte	0xe
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x23
	.long	.LASF575
	.byte	0xe
	.value	0x161
	.long	0x2df5
	.value	0x158
	.uleb128 0x23
	.long	.LASF576
	.byte	0xe
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x23
	.long	.LASF577
	.byte	0xe
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x23
	.long	.LASF578
	.byte	0xe
	.value	0x167
	.long	0x317
	.value	0x168
	.uleb128 0x23
	.long	.LASF579
	.byte	0xe
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x23
	.long	.LASF580
	.byte	0xe
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x23
	.long	.LASF581
	.byte	0xe
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x23
	.long	.LASF582
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x23
	.long	.LASF583
	.byte	0xe
	.value	0x175
	.long	0x2f9c
	.value	0x188
	.uleb128 0x23
	.long	.LASF584
	.byte	0xe
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x23
	.long	.LASF585
	.byte	0xe
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x23
	.long	.LASF586
	.byte	0xe
	.value	0x17c
	.long	0x2fa7
	.value	0x198
	.uleb128 0x23
	.long	.LASF587
	.byte	0xe
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x24
	.long	.LASF588
	.byte	0xe
	.value	0x188
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF589
	.byte	0xe
	.value	0x18c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF590
	.byte	0xe
	.value	0x18f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF591
	.byte	0xe
	.value	0x192
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF592
	.byte	0xe
	.value	0x195
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF593
	.byte	0xe
	.value	0x198
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF594
	.byte	0xe
	.value	0x19c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF595
	.byte	0xe
	.value	0x19f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF596
	.byte	0xe
	.value	0x1a3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF597
	.byte	0xe
	.value	0x1a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF598
	.byte	0xe
	.value	0x1aa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF599
	.byte	0xe
	.value	0x1ad
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF600
	.byte	0xe
	.value	0x1b2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF601
	.byte	0xe
	.value	0x1b6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF602
	.byte	0xe
	.value	0x1b9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF603
	.byte	0xe
	.value	0x1bd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF604
	.byte	0xe
	.value	0x1c1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF605
	.byte	0xe
	.value	0x1c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF606
	.byte	0xe
	.value	0x1cb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF607
	.byte	0xe
	.value	0x1d4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF608
	.byte	0xe
	.value	0x1d7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF609
	.byte	0xe
	.value	0x1da
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF610
	.byte	0xe
	.value	0x1dd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x24
	.long	.LASF611
	.byte	0xe
	.value	0x1e0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1621
	.uleb128 0x11
	.long	.LASF612
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1e2b
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0xd94
	.byte	0
	.uleb128 0x12
	.long	.LASF613
	.byte	0x4
	.value	0x6df
	.long	0x577
	.byte	0x18
	.uleb128 0x12
	.long	.LASF614
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x310
	.byte	0x24
	.uleb128 0x12
	.long	.LASF508
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF615
	.byte	0x4
	.value	0x6e5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF616
	.byte	0x4
	.value	0x6e6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x4
	.value	0x6e7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF618
	.byte	0x4
	.value	0x6e8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF619
	.byte	0x4
	.value	0x6e9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF620
	.byte	0x4
	.value	0x6ea
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF621
	.byte	0x4
	.value	0x6eb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF497
	.byte	0x4
	.value	0x6ec
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF622
	.byte	0x4
	.value	0x6ee
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF623
	.byte	0x4
	.value	0x6ef
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF624
	.byte	0x4
	.value	0x6f0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF625
	.byte	0x4
	.value	0x6f1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF626
	.byte	0x4
	.value	0x6f2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF627
	.byte	0x4
	.value	0x6f3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF628
	.byte	0x4
	.value	0x6f4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF629
	.byte	0x4
	.value	0x6f5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF630
	.byte	0x4
	.value	0x6f7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF631
	.byte	0x4
	.value	0x6f8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF632
	.byte	0x4
	.value	0x6f9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF633
	.byte	0x4
	.value	0x6fa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF634
	.byte	0x4
	.value	0x6fb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF635
	.byte	0x4
	.value	0x6fc
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF636
	.byte	0x4
	.value	0x6fd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x4
	.value	0x6ff
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF637
	.byte	0x4
	.value	0x700
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x4
	.value	0x701
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF638
	.byte	0x4
	.value	0x702
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF448
	.byte	0x4
	.value	0x705
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF449
	.byte	0x4
	.value	0x706
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF450
	.byte	0x4
	.value	0x707
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF451
	.byte	0x4
	.value	0x708
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF452
	.byte	0x4
	.value	0x709
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF453
	.byte	0x4
	.value	0x70a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF454
	.byte	0x4
	.value	0x70b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF639
	.byte	0x4
	.value	0x70c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1a
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x15c7
	.byte	0x38
	.uleb128 0x12
	.long	.LASF509
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF524
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF530
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF640
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF641
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF642
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF502
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF643
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF644
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF510
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF645
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1a
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x15ef
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF646
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF647
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF648
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF649
	.byte	0x4
	.value	0x73b
	.long	0x319
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF532
	.byte	0x4
	.value	0x73d
	.long	0x1e30
	.byte	0xc8
	.byte	0
	.uleb128 0x21
	.long	.LASF651
	.uleb128 0x3
	.byte	0x8
	.long	0x1e2b
	.uleb128 0xf
	.long	.LASF652
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1f7c
	.uleb128 0x10
	.long	.LASF653
	.sleb128 0
	.uleb128 0x10
	.long	.LASF654
	.sleb128 1
	.uleb128 0x10
	.long	.LASF655
	.sleb128 2
	.uleb128 0x10
	.long	.LASF656
	.sleb128 3
	.uleb128 0x10
	.long	.LASF657
	.sleb128 4
	.uleb128 0x10
	.long	.LASF658
	.sleb128 5
	.uleb128 0x10
	.long	.LASF659
	.sleb128 6
	.uleb128 0x10
	.long	.LASF660
	.sleb128 7
	.uleb128 0x10
	.long	.LASF661
	.sleb128 8
	.uleb128 0x10
	.long	.LASF662
	.sleb128 9
	.uleb128 0x10
	.long	.LASF663
	.sleb128 10
	.uleb128 0x10
	.long	.LASF664
	.sleb128 11
	.uleb128 0x10
	.long	.LASF665
	.sleb128 12
	.uleb128 0x10
	.long	.LASF666
	.sleb128 13
	.uleb128 0x10
	.long	.LASF667
	.sleb128 14
	.uleb128 0x10
	.long	.LASF668
	.sleb128 15
	.uleb128 0x10
	.long	.LASF669
	.sleb128 16
	.uleb128 0x10
	.long	.LASF670
	.sleb128 17
	.uleb128 0x10
	.long	.LASF671
	.sleb128 18
	.uleb128 0x10
	.long	.LASF672
	.sleb128 19
	.uleb128 0x10
	.long	.LASF673
	.sleb128 20
	.uleb128 0x10
	.long	.LASF674
	.sleb128 21
	.uleb128 0x10
	.long	.LASF675
	.sleb128 22
	.uleb128 0x10
	.long	.LASF676
	.sleb128 23
	.uleb128 0x10
	.long	.LASF677
	.sleb128 24
	.uleb128 0x10
	.long	.LASF678
	.sleb128 25
	.uleb128 0x10
	.long	.LASF679
	.sleb128 26
	.uleb128 0x10
	.long	.LASF680
	.sleb128 27
	.uleb128 0x10
	.long	.LASF681
	.sleb128 28
	.uleb128 0x10
	.long	.LASF682
	.sleb128 29
	.uleb128 0x10
	.long	.LASF683
	.sleb128 30
	.uleb128 0x10
	.long	.LASF684
	.sleb128 31
	.uleb128 0x10
	.long	.LASF685
	.sleb128 32
	.uleb128 0x10
	.long	.LASF686
	.sleb128 33
	.uleb128 0x10
	.long	.LASF687
	.sleb128 34
	.uleb128 0x10
	.long	.LASF688
	.sleb128 35
	.uleb128 0x10
	.long	.LASF689
	.sleb128 36
	.uleb128 0x10
	.long	.LASF690
	.sleb128 37
	.uleb128 0x10
	.long	.LASF691
	.sleb128 38
	.uleb128 0x10
	.long	.LASF692
	.sleb128 39
	.uleb128 0x10
	.long	.LASF693
	.sleb128 40
	.uleb128 0x10
	.long	.LASF694
	.sleb128 41
	.uleb128 0x10
	.long	.LASF695
	.sleb128 42
	.uleb128 0x10
	.long	.LASF696
	.sleb128 43
	.uleb128 0x10
	.long	.LASF697
	.sleb128 44
	.uleb128 0x10
	.long	.LASF698
	.sleb128 45
	.uleb128 0x10
	.long	.LASF699
	.sleb128 46
	.uleb128 0x10
	.long	.LASF700
	.sleb128 47
	.uleb128 0x10
	.long	.LASF701
	.sleb128 48
	.uleb128 0x10
	.long	.LASF702
	.sleb128 49
	.uleb128 0x10
	.long	.LASF703
	.sleb128 50
	.uleb128 0x10
	.long	.LASF704
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF705
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1fd2
	.uleb128 0x10
	.long	.LASF706
	.sleb128 0
	.uleb128 0x10
	.long	.LASF707
	.sleb128 1
	.uleb128 0x10
	.long	.LASF708
	.sleb128 2
	.uleb128 0x10
	.long	.LASF709
	.sleb128 3
	.uleb128 0x10
	.long	.LASF710
	.sleb128 4
	.uleb128 0x10
	.long	.LASF711
	.sleb128 5
	.uleb128 0x10
	.long	.LASF712
	.sleb128 6
	.uleb128 0x10
	.long	.LASF713
	.sleb128 7
	.uleb128 0x10
	.long	.LASF714
	.sleb128 8
	.uleb128 0x10
	.long	.LASF715
	.sleb128 9
	.uleb128 0x10
	.long	.LASF716
	.sleb128 10
	.uleb128 0x10
	.long	.LASF717
	.sleb128 11
	.byte	0
	.uleb128 0xc
	.long	0x577
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF718
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xf
	.long	.LASF719
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x201c
	.uleb128 0x10
	.long	.LASF720
	.sleb128 0
	.uleb128 0x10
	.long	.LASF721
	.sleb128 1
	.uleb128 0x10
	.long	.LASF722
	.sleb128 2
	.uleb128 0x10
	.long	.LASF723
	.sleb128 3
	.uleb128 0x10
	.long	.LASF724
	.sleb128 4
	.uleb128 0x10
	.long	.LASF725
	.sleb128 5
	.uleb128 0x10
	.long	.LASF726
	.sleb128 6
	.byte	0
	.uleb128 0x18
	.long	.LASF727
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x2418
	.uleb128 0x10
	.long	.LASF728
	.sleb128 0
	.uleb128 0x25
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF729
	.sleb128 2
	.uleb128 0x10
	.long	.LASF730
	.sleb128 3
	.uleb128 0x10
	.long	.LASF731
	.sleb128 4
	.uleb128 0x10
	.long	.LASF732
	.sleb128 5
	.uleb128 0x10
	.long	.LASF733
	.sleb128 6
	.uleb128 0x10
	.long	.LASF734
	.sleb128 7
	.uleb128 0x10
	.long	.LASF735
	.sleb128 8
	.uleb128 0x10
	.long	.LASF736
	.sleb128 9
	.uleb128 0x10
	.long	.LASF737
	.sleb128 10
	.uleb128 0x10
	.long	.LASF738
	.sleb128 11
	.uleb128 0x10
	.long	.LASF739
	.sleb128 12
	.uleb128 0x10
	.long	.LASF740
	.sleb128 13
	.uleb128 0x10
	.long	.LASF741
	.sleb128 14
	.uleb128 0x10
	.long	.LASF742
	.sleb128 15
	.uleb128 0x10
	.long	.LASF743
	.sleb128 16
	.uleb128 0x10
	.long	.LASF744
	.sleb128 17
	.uleb128 0x10
	.long	.LASF745
	.sleb128 18
	.uleb128 0x10
	.long	.LASF746
	.sleb128 19
	.uleb128 0x10
	.long	.LASF747
	.sleb128 20
	.uleb128 0x10
	.long	.LASF748
	.sleb128 21
	.uleb128 0x10
	.long	.LASF749
	.sleb128 22
	.uleb128 0x10
	.long	.LASF750
	.sleb128 23
	.uleb128 0x10
	.long	.LASF751
	.sleb128 24
	.uleb128 0x10
	.long	.LASF752
	.sleb128 25
	.uleb128 0x10
	.long	.LASF753
	.sleb128 26
	.uleb128 0x10
	.long	.LASF754
	.sleb128 27
	.uleb128 0x10
	.long	.LASF755
	.sleb128 28
	.uleb128 0x10
	.long	.LASF756
	.sleb128 29
	.uleb128 0x10
	.long	.LASF757
	.sleb128 30
	.uleb128 0x10
	.long	.LASF758
	.sleb128 31
	.uleb128 0x10
	.long	.LASF759
	.sleb128 32
	.uleb128 0x10
	.long	.LASF760
	.sleb128 33
	.uleb128 0x10
	.long	.LASF761
	.sleb128 34
	.uleb128 0x10
	.long	.LASF762
	.sleb128 35
	.uleb128 0x10
	.long	.LASF763
	.sleb128 36
	.uleb128 0x10
	.long	.LASF764
	.sleb128 37
	.uleb128 0x10
	.long	.LASF765
	.sleb128 38
	.uleb128 0x10
	.long	.LASF766
	.sleb128 39
	.uleb128 0x10
	.long	.LASF767
	.sleb128 40
	.uleb128 0x10
	.long	.LASF768
	.sleb128 41
	.uleb128 0x10
	.long	.LASF769
	.sleb128 42
	.uleb128 0x10
	.long	.LASF770
	.sleb128 43
	.uleb128 0x10
	.long	.LASF771
	.sleb128 44
	.uleb128 0x10
	.long	.LASF772
	.sleb128 45
	.uleb128 0x10
	.long	.LASF773
	.sleb128 46
	.uleb128 0x25
	.string	"SET"
	.sleb128 47
	.uleb128 0x25
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF774
	.sleb128 49
	.uleb128 0x10
	.long	.LASF775
	.sleb128 50
	.uleb128 0x10
	.long	.LASF776
	.sleb128 51
	.uleb128 0x10
	.long	.LASF777
	.sleb128 52
	.uleb128 0x10
	.long	.LASF778
	.sleb128 53
	.uleb128 0x10
	.long	.LASF779
	.sleb128 54
	.uleb128 0x10
	.long	.LASF780
	.sleb128 55
	.uleb128 0x10
	.long	.LASF781
	.sleb128 56
	.uleb128 0x10
	.long	.LASF782
	.sleb128 57
	.uleb128 0x10
	.long	.LASF783
	.sleb128 58
	.uleb128 0x25
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF784
	.sleb128 60
	.uleb128 0x25
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF785
	.sleb128 62
	.uleb128 0x10
	.long	.LASF786
	.sleb128 63
	.uleb128 0x10
	.long	.LASF787
	.sleb128 64
	.uleb128 0x10
	.long	.LASF788
	.sleb128 65
	.uleb128 0x25
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF789
	.sleb128 67
	.uleb128 0x10
	.long	.LASF790
	.sleb128 68
	.uleb128 0x25
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF791
	.sleb128 70
	.uleb128 0x10
	.long	.LASF792
	.sleb128 71
	.uleb128 0x10
	.long	.LASF793
	.sleb128 72
	.uleb128 0x10
	.long	.LASF794
	.sleb128 73
	.uleb128 0x10
	.long	.LASF795
	.sleb128 74
	.uleb128 0x10
	.long	.LASF796
	.sleb128 75
	.uleb128 0x10
	.long	.LASF797
	.sleb128 76
	.uleb128 0x25
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF798
	.sleb128 78
	.uleb128 0x25
	.string	"DIV"
	.sleb128 79
	.uleb128 0x25
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF799
	.sleb128 81
	.uleb128 0x10
	.long	.LASF800
	.sleb128 82
	.uleb128 0x25
	.string	"AND"
	.sleb128 83
	.uleb128 0x25
	.string	"IOR"
	.sleb128 84
	.uleb128 0x25
	.string	"XOR"
	.sleb128 85
	.uleb128 0x25
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF801
	.sleb128 87
	.uleb128 0x10
	.long	.LASF802
	.sleb128 88
	.uleb128 0x10
	.long	.LASF803
	.sleb128 89
	.uleb128 0x10
	.long	.LASF804
	.sleb128 90
	.uleb128 0x10
	.long	.LASF805
	.sleb128 91
	.uleb128 0x10
	.long	.LASF806
	.sleb128 92
	.uleb128 0x10
	.long	.LASF807
	.sleb128 93
	.uleb128 0x10
	.long	.LASF808
	.sleb128 94
	.uleb128 0x10
	.long	.LASF809
	.sleb128 95
	.uleb128 0x10
	.long	.LASF810
	.sleb128 96
	.uleb128 0x10
	.long	.LASF811
	.sleb128 97
	.uleb128 0x10
	.long	.LASF812
	.sleb128 98
	.uleb128 0x10
	.long	.LASF813
	.sleb128 99
	.uleb128 0x10
	.long	.LASF814
	.sleb128 100
	.uleb128 0x10
	.long	.LASF815
	.sleb128 101
	.uleb128 0x25
	.string	"NE"
	.sleb128 102
	.uleb128 0x25
	.string	"EQ"
	.sleb128 103
	.uleb128 0x25
	.string	"GE"
	.sleb128 104
	.uleb128 0x25
	.string	"GT"
	.sleb128 105
	.uleb128 0x25
	.string	"LE"
	.sleb128 106
	.uleb128 0x25
	.string	"LT"
	.sleb128 107
	.uleb128 0x25
	.string	"GEU"
	.sleb128 108
	.uleb128 0x25
	.string	"GTU"
	.sleb128 109
	.uleb128 0x25
	.string	"LEU"
	.sleb128 110
	.uleb128 0x25
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF816
	.sleb128 112
	.uleb128 0x10
	.long	.LASF817
	.sleb128 113
	.uleb128 0x10
	.long	.LASF818
	.sleb128 114
	.uleb128 0x10
	.long	.LASF819
	.sleb128 115
	.uleb128 0x10
	.long	.LASF820
	.sleb128 116
	.uleb128 0x10
	.long	.LASF821
	.sleb128 117
	.uleb128 0x10
	.long	.LASF822
	.sleb128 118
	.uleb128 0x10
	.long	.LASF823
	.sleb128 119
	.uleb128 0x10
	.long	.LASF824
	.sleb128 120
	.uleb128 0x10
	.long	.LASF825
	.sleb128 121
	.uleb128 0x10
	.long	.LASF826
	.sleb128 122
	.uleb128 0x10
	.long	.LASF827
	.sleb128 123
	.uleb128 0x10
	.long	.LASF828
	.sleb128 124
	.uleb128 0x10
	.long	.LASF829
	.sleb128 125
	.uleb128 0x25
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF830
	.sleb128 127
	.uleb128 0x10
	.long	.LASF831
	.sleb128 128
	.uleb128 0x25
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF832
	.sleb128 130
	.uleb128 0x25
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF833
	.sleb128 132
	.uleb128 0x10
	.long	.LASF834
	.sleb128 133
	.uleb128 0x10
	.long	.LASF835
	.sleb128 134
	.uleb128 0x10
	.long	.LASF836
	.sleb128 135
	.uleb128 0x10
	.long	.LASF837
	.sleb128 136
	.uleb128 0x10
	.long	.LASF838
	.sleb128 137
	.uleb128 0x10
	.long	.LASF839
	.sleb128 138
	.uleb128 0x10
	.long	.LASF840
	.sleb128 139
	.uleb128 0x10
	.long	.LASF841
	.sleb128 140
	.uleb128 0x10
	.long	.LASF842
	.sleb128 141
	.uleb128 0x10
	.long	.LASF843
	.sleb128 142
	.uleb128 0x10
	.long	.LASF844
	.sleb128 143
	.uleb128 0x10
	.long	.LASF845
	.sleb128 144
	.uleb128 0x10
	.long	.LASF846
	.sleb128 145
	.uleb128 0x10
	.long	.LASF847
	.sleb128 146
	.uleb128 0x10
	.long	.LASF848
	.sleb128 147
	.uleb128 0x10
	.long	.LASF849
	.sleb128 148
	.uleb128 0x10
	.long	.LASF850
	.sleb128 149
	.uleb128 0x10
	.long	.LASF851
	.sleb128 150
	.uleb128 0x10
	.long	.LASF852
	.sleb128 151
	.uleb128 0x25
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF853
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x2499
	.uleb128 0x5
	.long	.LASF854
	.byte	0x2
	.byte	0x47
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF855
	.byte	0x2
	.byte	0x49
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF856
	.byte	0x2
	.byte	0x4a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF857
	.byte	0x2
	.byte	0x4c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF858
	.byte	0x2
	.byte	0x4e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF859
	.byte	0x2
	.byte	0x50
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF860
	.byte	0x2
	.byte	0x53
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF861
	.byte	0x2
	.byte	0x55
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF862
	.byte	0x2
	.byte	0x56
	.long	0x2418
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x24e9
	.uleb128 0x8
	.long	.LASF863
	.byte	0x2
	.byte	0x5e
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF536
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF864
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF508
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF520
	.byte	0x2
	.byte	0x62
	.long	0x310
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF865
	.byte	0x2
	.byte	0x63
	.long	0x24a4
	.uleb128 0x26
	.long	.LASF867
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x258f
	.uleb128 0x27
	.long	.LASF868
	.byte	0x2
	.byte	0x69
	.long	0x319
	.uleb128 0x27
	.long	.LASF869
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x27
	.long	.LASF870
	.byte	0x2
	.byte	0x6b
	.long	0x310
	.uleb128 0x27
	.long	.LASF871
	.byte	0x2
	.byte	0x6c
	.long	0x577
	.uleb128 0x28
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x27
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x27
	.long	.LASF872
	.byte	0x2
	.byte	0x6f
	.long	0x590
	.uleb128 0x27
	.long	.LASF873
	.byte	0x2
	.byte	0x70
	.long	0x2499
	.uleb128 0x27
	.long	.LASF874
	.byte	0x2
	.byte	0x71
	.long	0x2594
	.uleb128 0x27
	.long	.LASF875
	.byte	0x2
	.byte	0x72
	.long	0x25cb
	.uleb128 0x27
	.long	.LASF876
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x28
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x269e
	.uleb128 0x27
	.long	.LASF877
	.byte	0x2
	.byte	0x75
	.long	0x26a4
	.byte	0
	.uleb128 0x21
	.long	.LASF878
	.uleb128 0x3
	.byte	0x8
	.long	0x258f
	.uleb128 0x4
	.long	.LASF879
	.byte	0x18
	.byte	0xf
	.byte	0x34
	.long	0x25cb
	.uleb128 0x8
	.long	.LASF880
	.byte	0xf
	.byte	0x35
	.long	0x290b
	.byte	0
	.uleb128 0x8
	.long	.LASF881
	.byte	0xf
	.byte	0x36
	.long	0x290b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF882
	.byte	0xf
	.byte	0x37
	.long	0x310
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x259a
	.uleb128 0x4
	.long	.LASF883
	.byte	0x70
	.byte	0x10
	.byte	0xae
	.long	0x269e
	.uleb128 0x8
	.long	.LASF884
	.byte	0x10
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x10
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF885
	.byte	0x10
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF886
	.byte	0x10
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF887
	.byte	0x10
	.byte	0xb7
	.long	0x2d82
	.byte	0x20
	.uleb128 0x8
	.long	.LASF888
	.byte	0x10
	.byte	0xb7
	.long	0x2d82
	.byte	0x28
	.uleb128 0x8
	.long	.LASF889
	.byte	0x10
	.byte	0xbc
	.long	0x2ced
	.byte	0x30
	.uleb128 0x8
	.long	.LASF890
	.byte	0x10
	.byte	0xc0
	.long	0x2ced
	.byte	0x38
	.uleb128 0x8
	.long	.LASF891
	.byte	0x10
	.byte	0xc6
	.long	0x2ced
	.byte	0x40
	.uleb128 0x8
	.long	.LASF892
	.byte	0x10
	.byte	0xc8
	.long	0x2ced
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x10
	.byte	0xcb
	.long	0x317
	.byte	0x50
	.uleb128 0x8
	.long	.LASF893
	.byte	0x10
	.byte	0xce
	.long	0x1e3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF894
	.byte	0x10
	.byte	0xd1
	.long	0x1e3
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF895
	.byte	0x10
	.byte	0xd4
	.long	0x2cf8
	.byte	0x60
	.uleb128 0x8
	.long	.LASF896
	.byte	0x10
	.byte	0xd7
	.long	0x1e3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF897
	.byte	0x10
	.byte	0xda
	.long	0x1e3
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x25d1
	.uleb128 0x3
	.byte	0x8
	.long	0x24e9
	.uleb128 0x7
	.long	.LASF898
	.byte	0x2
	.byte	0x76
	.long	0x24f4
	.uleb128 0x15
	.long	0x26aa
	.long	0x26c5
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x26d5
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF899
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0x2797
	.uleb128 0x10
	.long	.LASF900
	.sleb128 1
	.uleb128 0x10
	.long	.LASF901
	.sleb128 2
	.uleb128 0x10
	.long	.LASF902
	.sleb128 3
	.uleb128 0x10
	.long	.LASF903
	.sleb128 4
	.uleb128 0x10
	.long	.LASF904
	.sleb128 5
	.uleb128 0x10
	.long	.LASF905
	.sleb128 6
	.uleb128 0x10
	.long	.LASF906
	.sleb128 7
	.uleb128 0x10
	.long	.LASF907
	.sleb128 8
	.uleb128 0x10
	.long	.LASF908
	.sleb128 9
	.uleb128 0x10
	.long	.LASF909
	.sleb128 10
	.uleb128 0x10
	.long	.LASF910
	.sleb128 11
	.uleb128 0x10
	.long	.LASF911
	.sleb128 12
	.uleb128 0x10
	.long	.LASF912
	.sleb128 13
	.uleb128 0x10
	.long	.LASF913
	.sleb128 14
	.uleb128 0x10
	.long	.LASF914
	.sleb128 15
	.uleb128 0x10
	.long	.LASF915
	.sleb128 16
	.uleb128 0x10
	.long	.LASF916
	.sleb128 17
	.uleb128 0x10
	.long	.LASF917
	.sleb128 18
	.uleb128 0x10
	.long	.LASF918
	.sleb128 19
	.uleb128 0x10
	.long	.LASF919
	.sleb128 20
	.uleb128 0x10
	.long	.LASF920
	.sleb128 21
	.uleb128 0x10
	.long	.LASF921
	.sleb128 22
	.uleb128 0x10
	.long	.LASF922
	.sleb128 23
	.uleb128 0x10
	.long	.LASF923
	.sleb128 24
	.uleb128 0x10
	.long	.LASF924
	.sleb128 25
	.uleb128 0x10
	.long	.LASF925
	.sleb128 26
	.uleb128 0x10
	.long	.LASF926
	.sleb128 27
	.uleb128 0x10
	.long	.LASF927
	.sleb128 28
	.uleb128 0x10
	.long	.LASF928
	.sleb128 29
	.uleb128 0x10
	.long	.LASF929
	.sleb128 30
	.byte	0
	.uleb128 0xf
	.long	.LASF930
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x2846
	.uleb128 0x10
	.long	.LASF931
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF932
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF933
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF934
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF935
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF936
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF937
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF938
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF939
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF940
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF941
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF942
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF943
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF944
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF945
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF946
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF947
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF948
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF949
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF950
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF951
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF952
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF953
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF954
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x28a2
	.uleb128 0x10
	.long	.LASF955
	.sleb128 0
	.uleb128 0x10
	.long	.LASF956
	.sleb128 1
	.uleb128 0x10
	.long	.LASF957
	.sleb128 2
	.uleb128 0x10
	.long	.LASF958
	.sleb128 3
	.uleb128 0x10
	.long	.LASF959
	.sleb128 4
	.uleb128 0x10
	.long	.LASF960
	.sleb128 5
	.uleb128 0x10
	.long	.LASF961
	.sleb128 6
	.uleb128 0x10
	.long	.LASF962
	.sleb128 7
	.uleb128 0x10
	.long	.LASF963
	.sleb128 8
	.uleb128 0x10
	.long	.LASF964
	.sleb128 9
	.uleb128 0x10
	.long	.LASF965
	.sleb128 10
	.uleb128 0x10
	.long	.LASF966
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF967
	.byte	0x11
	.byte	0x29
	.long	0x32b
	.uleb128 0x4
	.long	.LASF968
	.byte	0x28
	.byte	0xf
	.byte	0x2b
	.long	0x28ea
	.uleb128 0x8
	.long	.LASF969
	.byte	0xf
	.byte	0x2d
	.long	0x28ea
	.byte	0
	.uleb128 0x8
	.long	.LASF470
	.byte	0xf
	.byte	0x2e
	.long	0x28ea
	.byte	0x8
	.uleb128 0x8
	.long	.LASF882
	.byte	0xf
	.byte	0x2f
	.long	0x310
	.byte	0x10
	.uleb128 0x8
	.long	.LASF970
	.byte	0xf
	.byte	0x30
	.long	0x28f0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28ad
	.uleb128 0x15
	.long	0x32b
	.long	0x2900
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF971
	.byte	0xf
	.byte	0x31
	.long	0x28ad
	.uleb128 0x3
	.byte	0x8
	.long	0x2900
	.uleb128 0x7
	.long	.LASF972
	.byte	0xf
	.byte	0x39
	.long	0x259a
	.uleb128 0x7
	.long	.LASF973
	.byte	0xf
	.byte	0x39
	.long	0x25cb
	.uleb128 0x18
	.long	.LASF974
	.byte	0x4
	.byte	0xf
	.byte	0x3c
	.long	0x2952
	.uleb128 0x10
	.long	.LASF975
	.sleb128 0
	.uleb128 0x10
	.long	.LASF976
	.sleb128 1
	.uleb128 0x10
	.long	.LASF977
	.sleb128 2
	.uleb128 0x10
	.long	.LASF978
	.sleb128 3
	.uleb128 0x10
	.long	.LASF979
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF980
	.byte	0x18
	.byte	0x12
	.byte	0x1f
	.long	0x298f
	.uleb128 0x8
	.long	.LASF981
	.byte	0x12
	.byte	0x21
	.long	0x310
	.byte	0
	.uleb128 0x8
	.long	.LASF508
	.byte	0x12
	.byte	0x22
	.long	0x310
	.byte	0x4
	.uleb128 0x8
	.long	.LASF982
	.byte	0x12
	.byte	0x23
	.long	0x310
	.byte	0x8
	.uleb128 0x8
	.long	.LASF983
	.byte	0x12
	.byte	0x24
	.long	0x298f
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.long	0x32b
	.long	0x299f
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF984
	.byte	0x12
	.byte	0x25
	.long	0x29aa
	.uleb128 0x3
	.byte	0x8
	.long	0x2952
	.uleb128 0x3
	.byte	0x8
	.long	0x32b
	.uleb128 0x4
	.long	.LASF985
	.byte	0x10
	.byte	0x13
	.byte	0x24
	.long	0x29db
	.uleb128 0x6
	.string	"rtx"
	.byte	0x13
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x13
	.byte	0x36
	.long	0x310
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.long	.LASF986
	.byte	0x10
	.byte	0x13
	.byte	0x3a
	.long	0x2ac0
	.uleb128 0x28
	.string	"c"
	.byte	0x13
	.byte	0x3b
	.long	0x551
	.uleb128 0x28
	.string	"uc"
	.byte	0x13
	.byte	0x3c
	.long	0x2ac0
	.uleb128 0x28
	.string	"s"
	.byte	0x13
	.byte	0x3d
	.long	0x2ad0
	.uleb128 0x28
	.string	"us"
	.byte	0x13
	.byte	0x3e
	.long	0x2ae0
	.uleb128 0x28
	.string	"i"
	.byte	0x13
	.byte	0x3f
	.long	0x2af0
	.uleb128 0x28
	.string	"u"
	.byte	0x13
	.byte	0x40
	.long	0x2b00
	.uleb128 0x28
	.string	"l"
	.byte	0x13
	.byte	0x41
	.long	0x2b10
	.uleb128 0x28
	.string	"ul"
	.byte	0x13
	.byte	0x42
	.long	0x298f
	.uleb128 0x27
	.long	.LASF987
	.byte	0x13
	.byte	0x43
	.long	0x2b10
	.uleb128 0x27
	.long	.LASF988
	.byte	0x13
	.byte	0x44
	.long	0x298f
	.uleb128 0x27
	.long	.LASF989
	.byte	0x13
	.byte	0x45
	.long	0x2b20
	.uleb128 0x27
	.long	.LASF990
	.byte	0x13
	.byte	0x46
	.long	0x2b30
	.uleb128 0x28
	.string	"rtx"
	.byte	0x13
	.byte	0x47
	.long	0x2b40
	.uleb128 0x27
	.long	.LASF10
	.byte	0x13
	.byte	0x48
	.long	0x2b50
	.uleb128 0x27
	.long	.LASF15
	.byte	0x13
	.byte	0x49
	.long	0x2b60
	.uleb128 0x27
	.long	.LASF973
	.byte	0x13
	.byte	0x4a
	.long	0x2b70
	.uleb128 0x27
	.long	.LASF991
	.byte	0x13
	.byte	0x4b
	.long	0x2b80
	.uleb128 0x28
	.string	"reg"
	.byte	0x13
	.byte	0x4c
	.long	0x2b9b
	.uleb128 0x27
	.long	.LASF992
	.byte	0x13
	.byte	0x4d
	.long	0x2c42
	.uleb128 0x28
	.string	"bb"
	.byte	0x13
	.byte	0x4e
	.long	0x2c52
	.uleb128 0x28
	.string	"te"
	.byte	0x13
	.byte	0x4f
	.long	0x2c62
	.byte	0
	.uleb128 0x15
	.long	0x332
	.long	0x2ad0
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x347
	.long	0x2ae0
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x339
	.long	0x2af0
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x1e3
	.long	0x2b00
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x310
	.long	0x2b10
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x2b20
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x317
	.long	0x2b30
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x364
	.long	0x2b40
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x38
	.long	0x2b50
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xf8
	.long	0x2b60
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x12e
	.long	0x2b70
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x25cb
	.long	0x2b80
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2b90
	.long	0x2b90
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b96
	.uleb128 0x21
	.long	.LASF993
	.uleb128 0x15
	.long	0x2bab
	.long	0x2bab
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2bb1
	.uleb128 0x4
	.long	.LASF994
	.byte	0x2c
	.byte	0x14
	.byte	0x2d
	.long	0x2c42
	.uleb128 0x8
	.long	.LASF995
	.byte	0x14
	.byte	0x2f
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF996
	.byte	0x14
	.byte	0x30
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF997
	.byte	0x14
	.byte	0x31
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF998
	.byte	0x14
	.byte	0x34
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF999
	.byte	0x14
	.byte	0x37
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1000
	.byte	0x14
	.byte	0x38
	.long	0x1e3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1001
	.byte	0x14
	.byte	0x39
	.long	0x1e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1002
	.byte	0x14
	.byte	0x3a
	.long	0x1e3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF1003
	.byte	0x14
	.byte	0x3b
	.long	0x1e3
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1004
	.byte	0x14
	.byte	0x3c
	.long	0x1e3
	.byte	0x24
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x14
	.byte	0x3d
	.long	0x36a
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0x29b6
	.long	0x2c52
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x269e
	.long	0x2c62
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2c72
	.long	0x2c72
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c78
	.uleb128 0x21
	.long	.LASF1006
	.uleb128 0x7
	.long	.LASF1007
	.byte	0x13
	.byte	0x50
	.long	0x29db
	.uleb128 0x4
	.long	.LASF1008
	.byte	0x30
	.byte	0x13
	.byte	0x53
	.long	0x2cd1
	.uleb128 0x8
	.long	.LASF1009
	.byte	0x13
	.byte	0x54
	.long	0x320
	.byte	0
	.uleb128 0x8
	.long	.LASF1010
	.byte	0x13
	.byte	0x55
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1011
	.byte	0x13
	.byte	0x57
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF524
	.byte	0x13
	.byte	0x58
	.long	0x577
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1012
	.byte	0x13
	.byte	0x59
	.long	0x2c7d
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1013
	.byte	0x13
	.byte	0x5a
	.long	0x2cdc
	.uleb128 0x3
	.byte	0x8
	.long	0x2c88
	.uleb128 0x7
	.long	.LASF1014
	.byte	0x10
	.byte	0x1f
	.long	0x2911
	.uleb128 0x7
	.long	.LASF1015
	.byte	0x10
	.byte	0x21
	.long	0x291c
	.uleb128 0x7
	.long	.LASF1016
	.byte	0x10
	.byte	0x74
	.long	0x319
	.uleb128 0x4
	.long	.LASF1017
	.byte	0x40
	.byte	0x10
	.byte	0x77
	.long	0x2d7c
	.uleb128 0x8
	.long	.LASF1018
	.byte	0x10
	.byte	0x79
	.long	0x2d7c
	.byte	0
	.uleb128 0x8
	.long	.LASF1019
	.byte	0x10
	.byte	0x79
	.long	0x2d7c
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x10
	.byte	0x7c
	.long	0x269e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1020
	.byte	0x10
	.byte	0x7c
	.long	0x269e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1021
	.byte	0x10
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x10
	.byte	0x82
	.long	0x317
	.byte	0x28
	.uleb128 0x8
	.long	.LASF897
	.byte	0x10
	.byte	0x84
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1022
	.byte	0x10
	.byte	0x85
	.long	0x1e3
	.byte	0x34
	.uleb128 0x8
	.long	.LASF895
	.byte	0x10
	.byte	0x86
	.long	0x2cf8
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d03
	.uleb128 0x7
	.long	.LASF1023
	.byte	0x10
	.byte	0x88
	.long	0x2d7c
	.uleb128 0x7
	.long	.LASF1004
	.byte	0x10
	.byte	0xdb
	.long	0x269e
	.uleb128 0xf
	.long	.LASF1024
	.byte	0x4
	.byte	0x10
	.value	0x223
	.long	0x2db8
	.uleb128 0x10
	.long	.LASF1025
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1026
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1027
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF1028
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.long	0x2df5
	.uleb128 0x8
	.long	.LASF1029
	.byte	0xe
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1030
	.byte	0xe
	.byte	0x19
	.long	0x590
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1031
	.byte	0xe
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF969
	.byte	0xe
	.byte	0x1b
	.long	0x2df5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2db8
	.uleb128 0x4
	.long	.LASF1032
	.byte	0x20
	.byte	0xe
	.byte	0x23
	.long	0x2e38
	.uleb128 0x8
	.long	.LASF880
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1033
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1034
	.byte	0xe
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF969
	.byte	0xe
	.byte	0x28
	.long	0x2e38
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2dfb
	.uleb128 0x3
	.byte	0x8
	.long	0x10dc
	.uleb128 0x4
	.long	.LASF1035
	.byte	0x58
	.byte	0xe
	.byte	0x35
	.long	0x2eed
	.uleb128 0x8
	.long	.LASF1036
	.byte	0xe
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1037
	.byte	0xe
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1038
	.byte	0xe
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1039
	.byte	0xe
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1034
	.byte	0xe
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1032
	.byte	0xe
	.byte	0x4f
	.long	0x2e38
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1040
	.byte	0xe
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1041
	.byte	0xe
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF1042
	.byte	0xe
	.byte	0x58
	.long	0x577
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1043
	.byte	0xe
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1044
	.byte	0xe
	.byte	0x63
	.long	0x2eed
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1045
	.byte	0xe
	.byte	0x67
	.long	0x1fde
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1046
	.byte	0xe
	.byte	0x6b
	.long	0x2846
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x332
	.uleb128 0x4
	.long	.LASF1047
	.byte	0x30
	.byte	0xe
	.byte	0x77
	.long	0x2f54
	.uleb128 0x8
	.long	.LASF1048
	.byte	0xe
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1049
	.byte	0xe
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1050
	.byte	0xe
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1051
	.byte	0xe
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1052
	.byte	0xe
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1053
	.byte	0xe
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1054
	.byte	0xe
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x21
	.long	.LASF1055
	.uleb128 0x3
	.byte	0x8
	.long	0x2f54
	.uleb128 0x21
	.long	.LASF1056
	.uleb128 0x3
	.byte	0x8
	.long	0x2f5f
	.uleb128 0x3
	.byte	0x8
	.long	0x2ef3
	.uleb128 0x3
	.byte	0x8
	.long	0x2e44
	.uleb128 0x21
	.long	.LASF1057
	.uleb128 0x3
	.byte	0x8
	.long	0x2f76
	.uleb128 0x21
	.long	.LASF1058
	.uleb128 0x3
	.byte	0x8
	.long	0x2f81
	.uleb128 0x21
	.long	.LASF1059
	.uleb128 0x3
	.byte	0x8
	.long	0x2f8c
	.uleb128 0x21
	.long	.LASF1060
	.uleb128 0x3
	.byte	0x8
	.long	0x2f97
	.uleb128 0x21
	.long	.LASF1061
	.uleb128 0x3
	.byte	0x8
	.long	0x2fa2
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF1062
	.uleb128 0x29
	.byte	0x4
	.byte	0x18
	.byte	0x48
	.long	0x30d1
	.uleb128 0x10
	.long	.LASF1063
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1064
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1065
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1066
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1067
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1068
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1069
	.sleb128 6
	.uleb128 0x10
	.long	.LASF1070
	.sleb128 7
	.uleb128 0x10
	.long	.LASF1071
	.sleb128 8
	.uleb128 0x10
	.long	.LASF1072
	.sleb128 9
	.uleb128 0x10
	.long	.LASF1073
	.sleb128 10
	.uleb128 0x10
	.long	.LASF1074
	.sleb128 11
	.uleb128 0x10
	.long	.LASF1075
	.sleb128 12
	.uleb128 0x10
	.long	.LASF1076
	.sleb128 13
	.uleb128 0x10
	.long	.LASF1077
	.sleb128 14
	.uleb128 0x10
	.long	.LASF1078
	.sleb128 15
	.uleb128 0x10
	.long	.LASF1079
	.sleb128 16
	.uleb128 0x10
	.long	.LASF1080
	.sleb128 17
	.uleb128 0x10
	.long	.LASF1081
	.sleb128 18
	.uleb128 0x10
	.long	.LASF1082
	.sleb128 19
	.uleb128 0x10
	.long	.LASF1083
	.sleb128 20
	.uleb128 0x10
	.long	.LASF1084
	.sleb128 21
	.uleb128 0x10
	.long	.LASF1085
	.sleb128 22
	.uleb128 0x10
	.long	.LASF1086
	.sleb128 23
	.uleb128 0x10
	.long	.LASF1087
	.sleb128 24
	.uleb128 0x10
	.long	.LASF1088
	.sleb128 25
	.uleb128 0x10
	.long	.LASF1089
	.sleb128 26
	.uleb128 0x10
	.long	.LASF1090
	.sleb128 27
	.uleb128 0x10
	.long	.LASF1091
	.sleb128 28
	.uleb128 0x10
	.long	.LASF1092
	.sleb128 29
	.uleb128 0x10
	.long	.LASF1093
	.sleb128 30
	.uleb128 0x10
	.long	.LASF1094
	.sleb128 31
	.uleb128 0x10
	.long	.LASF1095
	.sleb128 32
	.uleb128 0x10
	.long	.LASF1096
	.sleb128 33
	.uleb128 0x10
	.long	.LASF1097
	.sleb128 34
	.uleb128 0x10
	.long	.LASF1098
	.sleb128 35
	.uleb128 0x10
	.long	.LASF1099
	.sleb128 36
	.uleb128 0x10
	.long	.LASF1100
	.sleb128 37
	.uleb128 0x10
	.long	.LASF1101
	.sleb128 38
	.uleb128 0x10
	.long	.LASF1102
	.sleb128 39
	.uleb128 0x10
	.long	.LASF1103
	.sleb128 40
	.uleb128 0x10
	.long	.LASF1104
	.sleb128 41
	.uleb128 0x10
	.long	.LASF1105
	.sleb128 42
	.uleb128 0x10
	.long	.LASF1106
	.sleb128 43
	.uleb128 0x10
	.long	.LASF1107
	.sleb128 44
	.uleb128 0x10
	.long	.LASF1108
	.sleb128 45
	.byte	0
	.uleb128 0x4
	.long	.LASF1109
	.byte	0x48
	.byte	0x1
	.byte	0xec
	.long	0x315a
	.uleb128 0x6
	.string	"bb"
	.byte	0x1
	.byte	0xef
	.long	0x2d8d
	.byte	0
	.uleb128 0x8
	.long	.LASF1110
	.byte	0x1
	.byte	0xf2
	.long	0x2ced
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1111
	.byte	0x1
	.byte	0xf5
	.long	0x2ced
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1112
	.byte	0x1
	.byte	0xf9
	.long	0x2846
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1113
	.byte	0x1
	.byte	0xfd
	.long	0x2d
	.byte	0x20
	.uleb128 0x12
	.long	.LASF889
	.byte	0x1
	.value	0x101
	.long	0x2ced
	.byte	0x28
	.uleb128 0x12
	.long	.LASF890
	.byte	0x1
	.value	0x105
	.long	0x2ced
	.byte	0x30
	.uleb128 0x12
	.long	.LASF1114
	.byte	0x1
	.value	0x111
	.long	0x1e3
	.byte	0x38
	.uleb128 0x12
	.long	.LASF1115
	.byte	0x1
	.value	0x114
	.long	0x1e3
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF897
	.byte	0x1
	.value	0x117
	.long	0x1e3
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x1
	.value	0x544
	.long	0x317e
	.uleb128 0x12
	.long	.LASF1116
	.byte	0x1
	.value	0x545
	.long	0x310
	.byte	0
	.uleb128 0x12
	.long	.LASF1117
	.byte	0x1
	.value	0x546
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF1118
	.byte	0x1
	.value	0x547
	.long	0x315a
	.uleb128 0x2a
	.long	.LASF1121
	.byte	0x1
	.value	0x15b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ca
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2c
	.long	.LASF1119
	.byte	0x1
	.value	0x16f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1179
	.byte	0x1
	.value	0x183
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x321e
	.uleb128 0x2e
	.long	.LASF26
	.byte	0x1
	.value	0x184
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x186
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x322e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13533
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x322e
	.uleb128 0x16
	.long	0x1ea
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.long	0x321e
	.uleb128 0x2a
	.long	.LASF1122
	.byte	0x1
	.value	0x19a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x32c3
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x19b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1123
	.byte	0x1
	.value	0x19c
	.long	0x32c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF897
	.byte	0x1
	.value	0x19d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1a0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.byte	0x8
	.byte	0x1
	.value	0x1a1
	.long	0x32ac
	.uleb128 0x12
	.long	.LASF1124
	.byte	0x1
	.value	0x1a1
	.long	0x1de
	.byte	0
	.uleb128 0x1a
	.string	"to"
	.byte	0x1
	.value	0x1a1
	.long	0x1de
	.byte	0x4
	.byte	0
	.uleb128 0x2c
	.long	.LASF1125
	.byte	0x1
	.value	0x1a1
	.long	0x32d9
	.uleb128 0x9
	.byte	0x3
	.quad	eliminables.13543
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x371
	.uleb128 0x15
	.long	0x3289
	.long	0x32d9
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x32c9
	.uleb128 0x32
	.long	.LASF1158
	.byte	0x1
	.value	0x1ff
	.long	0x1e3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x333a
	.uleb128 0x30
	.string	"px"
	.byte	0x1
	.value	0x200
	.long	0x2846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1126
	.byte	0x1
	.value	0x201
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x203
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x204
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x33
	.long	.LASF1128
	.byte	0x1
	.value	0x213
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c6
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x214
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x215
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF884
	.byte	0x1
	.value	0x217
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"end"
	.byte	0x1
	.value	0x217
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x33d6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13562
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x21d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x33d6
	.uleb128 0x16
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x33c6
	.uleb128 0x33
	.long	.LASF1129
	.byte	0x1
	.value	0x234
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x34db
	.uleb128 0x2e
	.long	.LASF1130
	.byte	0x1
	.value	0x235
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x236
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x34eb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13567
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x24c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x251
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x251
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x251
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x251
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x251
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x251
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x34eb
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.long	0x34db
	.uleb128 0x2a
	.long	.LASF1137
	.byte	0x1
	.value	0x277
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e4
	.uleb128 0x2e
	.long	.LASF1138
	.byte	0x1
	.value	0x278
	.long	0x299f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.long	.LASF1139
	.byte	0x1
	.value	0x279
	.long	0x2d98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2e
	.long	.LASF1140
	.byte	0x1
	.value	0x27a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x27c
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF1141
	.byte	0x1
	.value	0x27d
	.long	0x2ce2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x27e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF1142
	.byte	0x1
	.value	0x27f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x37f4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13596
	.uleb128 0x34
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x35d5
	.uleb128 0x2c
	.long	.LASF1143
	.byte	0x1
	.value	0x295
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x2a3
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x3690
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x2c3
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x2c3
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF1144
	.byte	0x1
	.value	0x2c3
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x2c3
	.long	0x29b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x2c3
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2c
	.long	.LASF1145
	.byte	0x1
	.value	0x2c3
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x2c3
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x36b5
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x2d2
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x34
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x374e
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x2e5
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x2e5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x2e5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x2e5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x2e5
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x2e5
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x2f1
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x2f1
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x2f1
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x2f1
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x2f1
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x2f1
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x37f4
	.uleb128 0x16
	.long	0x1ea
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x37e4
	.uleb128 0x2a
	.long	.LASF1146
	.byte	0x1
	.value	0x304
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3827
	.uleb128 0x2e
	.long	.LASF1147
	.byte	0x1
	.value	0x305
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF1148
	.byte	0x1
	.value	0x31a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x38df
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x31b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x31d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x31e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0x31e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x31f
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x329
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2c
	.long	.LASF1150
	.byte	0x1
	.value	0x331
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1151
	.byte	0x1
	.value	0x332
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1152
	.byte	0x1
	.value	0x349
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x391c
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x34b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0x34b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x362
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3966
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x363
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"pat"
	.byte	0x1
	.value	0x364
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1012
	.byte	0x1
	.value	0x365
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	.LASF1154
	.byte	0x1
	.value	0x372
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a1
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x373
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x375
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1155
	.byte	0x1
	.value	0x38e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2e
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0x38f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1156
	.byte	0x1
	.value	0x390
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0x392
	.long	0x2ced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x393
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x3a3e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13701
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x39b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x3a3e
	.uleb128 0x16
	.long	0x1ea
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x3a2e
	.uleb128 0x33
	.long	.LASF1157
	.byte	0x1
	.value	0x3a5
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac4
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x3a6
	.long	0x2ced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x3a8
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x3aa2
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x3e2
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x3ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1159
	.byte	0x1
	.value	0x404
	.long	0x1e3
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b32
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x405
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1160
	.byte	0x1
	.value	0x406
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF1161
	.byte	0x1
	.value	0x407
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1012
	.byte	0x1
	.value	0x408
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1162
	.byte	0x1
	.value	0x40a
	.long	0x2ced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1163
	.byte	0x1
	.value	0x416
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f9f
	.uleb128 0x2e
	.long	.LASF1164
	.byte	0x1
	.value	0x417
	.long	0x299f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2e
	.long	.LASF1165
	.byte	0x1
	.value	0x417
	.long	0x299f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2e
	.long	.LASF897
	.byte	0x1
	.value	0x418
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2c
	.long	.LASF1166
	.byte	0x1
	.value	0x41a
	.long	0x3f9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2c
	.long	.LASF1167
	.byte	0x1
	.value	0x41a
	.long	0x3f9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2c
	.long	.LASF1168
	.byte	0x1
	.value	0x41a
	.long	0x3f9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2c
	.long	.LASF1169
	.byte	0x1
	.value	0x41a
	.long	0x3f9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x41b
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.long	.LASF1170
	.byte	0x1
	.value	0x41b
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2c
	.long	.LASF1171
	.byte	0x1
	.value	0x41b
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2c
	.long	.LASF1141
	.byte	0x1
	.value	0x41c
	.long	0x2ce2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF1172
	.byte	0x1
	.value	0x41c
	.long	0x2ce2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1173
	.byte	0x1
	.value	0x41d
	.long	0x2ce2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x41e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x34
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x3ce8
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x439
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x439
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2c
	.long	.LASF1144
	.byte	0x1
	.value	0x439
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x439
	.long	0x29b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x439
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2c
	.long	.LASF1145
	.byte	0x1
	.value	0x439
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x439
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x3d0d
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x444
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x34
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x3ec2
	.uleb128 0x2c
	.long	.LASF1174
	.byte	0x1
	.value	0x466
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2c
	.long	.LASF1143
	.byte	0x1
	.value	0x466
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x467
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x468
	.long	0x2d82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x34
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3d84
	.uleb128 0x31
	.string	"sb"
	.byte	0x1
	.value	0x475
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x34
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x3e12
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x4c3
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x34
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x3ddf
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x4c3
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x4c3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.uleb128 0x2b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x4c3
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x4c3
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x3ea0
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x4c4
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x34
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x3e6d
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x4c4
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x4c4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.byte	0
	.uleb128 0x2b
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x4c4
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x4c4
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x31
	.string	"pb"
	.byte	0x1
	.value	0x519
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x3f7d
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x52a
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x52a
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2c
	.long	.LASF1144
	.byte	0x1
	.value	0x52a
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x52a
	.long	0x29b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x52a
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2c
	.long	.LASF1145
	.byte	0x1
	.value	0x52a
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x52a
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x535
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d8d
	.uleb128 0x32
	.long	.LASF1177
	.byte	0x1
	.value	0x54e
	.long	0x1e3
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4004
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.value	0x54f
	.long	0x2846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1012
	.byte	0x1
	.value	0x550
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1178
	.byte	0x1
	.value	0x552
	.long	0x4004
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x553
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x317e
	.uleb128 0x2d
	.long	.LASF1180
	.byte	0x1
	.value	0x57d
	.long	0x1e3
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x416d
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x57f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x580
	.long	0x2d82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x581
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF1181
	.byte	0x1
	.value	0x581
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF1178
	.byte	0x1
	.value	0x582
	.long	0x317e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x586
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x587
	.long	0x2ced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x588
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x588
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x588
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x588
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x588
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x588
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x588
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x588
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF1182
	.byte	0x1
	.value	0x5b1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4477
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5b3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x42d6
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x5b7
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x34
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x424b
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x5b9
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x4218
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x5b9
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x5b9
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x2b
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x5b9
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x5b9
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x5ba
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x34
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x42a2
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x5ba
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x5ba
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2b
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x5ba
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x5ba
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x4364
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x5be
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x4331
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x5be
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x5be
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x2b
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x5be
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x5be
	.long	0x317
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x43f0
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x5c0
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x43bf
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x5c0
	.long	0x2e3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x5c0
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x2b
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x5c0
	.long	0x2e3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x5c0
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x31
	.string	"__h"
	.byte	0x1
	.value	0x5c2
	.long	0x2e3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x4445
	.uleb128 0x31
	.string	"__o"
	.byte	0x1
	.value	0x5c2
	.long	0x2e3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1175
	.byte	0x1
	.value	0x5c2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.uleb128 0x2b
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x2c
	.long	.LASF1176
	.byte	0x1
	.value	0x5c2
	.long	0x2e3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0x5c2
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF1183
	.byte	0x1
	.value	0x5c6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x44a3
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5c8
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF1184
	.byte	0x1
	.value	0x5e0
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x457b
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x5e1
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x5e2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1185
	.byte	0x1
	.value	0x5e4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1186
	.byte	0x1
	.value	0x5e5
	.long	0x1fd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x2b
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x2c
	.long	.LASF1187
	.byte	0x1
	.value	0x5f7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0x5f8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x603
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF1188
	.byte	0x1
	.value	0x604
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x605
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x606
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1189
	.byte	0x1
	.value	0x61a
	.long	0x2d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x45da
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x61b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1149
	.byte	0x1
	.value	0x61b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF880
	.byte	0x1
	.value	0x61d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1190
	.byte	0x1
	.value	0x61e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1191
	.byte	0x1
	.value	0x627
	.long	0x2d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4864
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x628
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x629
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF470
	.byte	0x1
	.value	0x62b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF897
	.byte	0x1
	.value	0x62c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF1192
	.byte	0x1
	.value	0x62d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF1193
	.byte	0x1
	.value	0x62e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x62f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x630
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x487a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13948
	.uleb128 0x34
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x47cf
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x692
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x34
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x474a
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x698
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x698
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x698
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x698
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2b
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x698
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x698
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x478e
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x6a1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x6a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF1194
	.byte	0x1
	.value	0x6a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x6d7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x6d8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF1194
	.byte	0x1
	.value	0x6d8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x6f5
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x6f5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x6f5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x6f5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2b
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x6f5
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x6f5
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30d1
	.uleb128 0x15
	.long	0x36a
	.long	0x487a
	.uleb128 0x16
	.long	0x1ea
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.long	0x486a
	.uleb128 0x2d
	.long	.LASF1195
	.byte	0x1
	.value	0x700
	.long	0x4864
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4960
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x701
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1162
	.byte	0x1
	.value	0x702
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF889
	.byte	0x1
	.value	0x702
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF890
	.byte	0x1
	.value	0x702
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF897
	.byte	0x1
	.value	0x703
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.string	"pbi"
	.byte	0x1
	.value	0x705
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x784
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0x784
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x31
	.string	"mem"
	.byte	0x1
	.value	0x78a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1196
	.byte	0x1
	.value	0x78b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF1197
	.byte	0x1
	.value	0x7a2
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x498e
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x7a3
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1198
	.byte	0x1
	.value	0x7c7
	.long	0x1e3
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4af0
	.uleb128 0x30
	.string	"bb"
	.byte	0x1
	.value	0x7c8
	.long	0x2d8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF1162
	.byte	0x1
	.value	0x7c9
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF889
	.byte	0x1
	.value	0x7ca
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF890
	.byte	0x1
	.value	0x7cb
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF897
	.byte	0x1
	.value	0x7cc
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"pbi"
	.byte	0x1
	.value	0x7ce
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x7cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF470
	.byte	0x1
	.value	0x7cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF1143
	.byte	0x1
	.value	0x7d0
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x7d6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x7da
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x7da
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x7da
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x7da
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x7da
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x7da
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1199
	.byte	0x1
	.value	0x800
	.long	0x1e3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c3b
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x801
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x802
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF1200
	.byte	0x1
	.value	0x803
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF1201
	.byte	0x1
	.value	0x804
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x806
	.long	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x4c1a
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x81e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x4bd7
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0x832
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1202
	.byte	0x1
	.value	0x832
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x31
	.string	"mem"
	.byte	0x1
	.value	0x842
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0x85f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x869
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x89a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0x8c1
	.long	0x1e3
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cf7
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x8c2
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1149
	.byte	0x1
	.value	0x8c3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x8c4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0x8ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2c
	.long	.LASF3
	.byte	0x1
	.value	0x8ce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1204
	.byte	0x1
	.value	0x8cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x8d0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1205
	.byte	0x1
	.value	0x8fa
	.long	0x1e3
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d29
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x8fb
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF1206
	.byte	0x1
	.value	0x90c
	.long	0x1e3
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d5b
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x90d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF1207
	.byte	0x1
	.value	0x91a
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc4
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x91b
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"mem"
	.byte	0x1
	.value	0x91c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x91e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x927
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1208
	.byte	0x1
	.value	0x94b
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e10
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x94c
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x94d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1
	.value	0x94f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1209
	.byte	0x1
	.value	0x958
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e7a
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x959
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"exp"
	.byte	0x1
	.value	0x95a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0x95c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF470
	.byte	0x1
	.value	0x95d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0x95e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1210
	.byte	0x1
	.value	0x97b
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f55
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x97c
	.long	0x4864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x97d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x97d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1194
	.byte	0x1
	.value	0x97f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1211
	.byte	0x1
	.value	0x980
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0x981
	.long	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF1225
	.byte	0x1
	.value	0x98c
	.quad	.L525
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x4f65
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14149
	.uleb128 0x2b
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x99b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.uleb128 0x31
	.string	"sub"
	.byte	0x1
	.value	0x99f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x4f65
	.uleb128 0x16
	.long	0x1ea
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	0x4f55
	.uleb128 0x33
	.long	.LASF1212
	.byte	0x1
	.value	0x9c4
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x50df
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0x9c5
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x9c6
	.long	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0x9c7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF1194
	.byte	0x1
	.value	0x9c7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0x9c7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.long	.LASF897
	.byte	0x1
	.value	0x9c8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF1213
	.byte	0x1
	.value	0x9ca
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF1214
	.byte	0x1
	.value	0x9ca
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1215
	.byte	0x1
	.value	0x9cb
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x9cc
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x5059
	.uleb128 0x2c
	.long	.LASF1216
	.byte	0x1
	.value	0x9f6
	.long	0x590
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF1217
	.byte	0x1
	.value	0x9f7
	.long	0x590
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x2b
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2c
	.long	.LASF1218
	.byte	0x1
	.value	0xa48
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1219
	.byte	0x1
	.value	0xa48
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x50af
	.uleb128 0x2c
	.long	.LASF1220
	.byte	0x1
	.value	0xa4c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xa73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1221
	.byte	0x1
	.value	0xa74
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1222
	.byte	0x1
	.value	0xd91
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x51dc
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0xd92
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0xd93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1194
	.byte	0x1
	.value	0xd94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0xd95
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF1213
	.byte	0x1
	.value	0xd97
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF1214
	.byte	0x1
	.value	0xd97
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xd97
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF1218
	.byte	0x1
	.value	0xd98
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1219
	.byte	0x1
	.value	0xd98
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF1223
	.byte	0x1
	.value	0xd98
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x51ba
	.uleb128 0x2c
	.long	.LASF1220
	.byte	0x1
	.value	0xda2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x2c
	.long	.LASF1221
	.byte	0x1
	.value	0xdcd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1224
	.byte	0x1
	.value	0xe51
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x5378
	.uleb128 0x30
	.string	"pbi"
	.byte	0x1
	.value	0xe52
	.long	0x4864
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0xe53
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF1194
	.byte	0x1
	.value	0xe53
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.long	.LASF1120
	.byte	0x1
	.value	0xe53
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xe55
	.long	0x201c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF57
	.byte	0x1
	.value	0xe56
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF897
	.byte	0x1
	.value	0xe57
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.long	.LASF1225
	.byte	0x1
	.value	0xe59
	.quad	.L710
	.uleb128 0x2f
	.long	.LASF1127
	.long	0x5388
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14286
	.uleb128 0x34
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x52cf
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0xe84
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF470
	.byte	0x1
	.value	0xe85
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0xe86
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x5304
	.uleb128 0x2c
	.long	.LASF1226
	.byte	0x1
	.value	0xebe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1227
	.byte	0x1
	.value	0xebf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x34
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x5328
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0xf2b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2b
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.value	0xf4c
	.long	0x1fd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xf4d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0xf5d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x5388
	.uleb128 0x16
	.long	0x1ea
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x5378
	.uleb128 0x2d
	.long	.LASF1228
	.byte	0x1
	.value	0xfe8
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5446
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0xfe9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"reg"
	.byte	0x1
	.value	0xfea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1229
	.byte	0x1
	.value	0xfeb
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF0
	.byte	0x1
	.value	0xfed
	.long	0x201c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.value	0xfee
	.long	0x1fd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xfef
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF490
	.byte	0x1
	.value	0xff0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xff1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x1013
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF1230
	.byte	0x1
	.value	0x1026
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x5520
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x1027
	.long	0x2ced
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1231
	.byte	0x1
	.value	0x1028
	.long	0x32c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x102a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x1031
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x1031
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x1031
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x1031
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x1031
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x1031
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF1232
	.byte	0x1
	.value	0x103f
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x554c
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x1040
	.long	0x2ced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF1233
	.byte	0x1
	.value	0x105a
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x5587
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x105b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1234
	.byte	0x1
	.value	0x105c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF1235
	.byte	0x1
	.value	0x1067
	.long	0x1e3
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x569d
	.uleb128 0x2e
	.long	.LASF1138
	.byte	0x1
	.value	0x1068
	.long	0x299f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF1236
	.byte	0x1
	.value	0x1069
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x106b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF895
	.byte	0x1
	.value	0x106b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x106f
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x1070
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2c
	.long	.LASF1237
	.byte	0x1
	.value	0x107b
	.long	0x2846
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1211
	.byte	0x1
	.value	0x107c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x5679
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x1085
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x1086
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2b
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x2c
	.long	.LASF969
	.byte	0x1
	.value	0x1093
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1238
	.byte	0x1
	.value	0x10ad
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x579a
	.uleb128 0x2e
	.long	.LASF1138
	.byte	0x1
	.value	0x10ae
	.long	0x299f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF1120
	.byte	0x1
	.value	0x10b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x10b1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x10ba
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x10ba
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF1144
	.byte	0x1
	.value	0x10ba
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x10ba
	.long	0x29b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x10ba
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.uleb128 0x2c
	.long	.LASF1145
	.byte	0x1
	.value	0x10ba
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x10ba
	.long	0x2d8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1239
	.byte	0x1
	.value	0x10cb
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x5875
	.uleb128 0x30
	.string	"to"
	.byte	0x1
	.value	0x10cc
	.long	0x5875
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1124
	.byte	0x1
	.value	0x10cd
	.long	0x291c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x10cf
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x2c
	.long	.LASF1131
	.byte	0x1
	.value	0x10d1
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1132
	.byte	0x1
	.value	0x10d1
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF1133
	.byte	0x1
	.value	0x10d1
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1134
	.byte	0x1
	.value	0x10d1
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.uleb128 0x2c
	.long	.LASF1135
	.byte	0x1
	.value	0x10d1
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2c
	.long	.LASF1136
	.byte	0x1
	.value	0x10d1
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28a2
	.uleb128 0x39
	.long	.LASF1240
	.byte	0x1
	.byte	0xd7
	.long	0x28a2
	.uleb128 0x9
	.byte	0x3
	.quad	elim_reg_set
	.uleb128 0x3a
	.long	.LASF1241
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1242
	.byte	0x8
	.byte	0xaa
	.long	0x54b
	.uleb128 0x15
	.long	0x705
	.long	0x58b6
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3a
	.long	.LASF173
	.byte	0xa
	.byte	0x34
	.long	0x58c1
	.uleb128 0xc
	.long	0x58a6
	.uleb128 0x15
	.long	0x332
	.long	0x58d6
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3a
	.long	.LASF1243
	.byte	0xa
	.byte	0x50
	.long	0x58e1
	.uleb128 0xc
	.long	0x58c6
	.uleb128 0x15
	.long	0x339
	.long	0x58f6
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3a
	.long	.LASF1244
	.byte	0xa
	.byte	0x60
	.long	0x5901
	.uleb128 0xc
	.long	0x58e6
	.uleb128 0x3b
	.long	.LASF1245
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x15
	.long	0x332
	.long	0x5922
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x3a
	.long	.LASF1246
	.byte	0x2
	.byte	0x36
	.long	0x592d
	.uleb128 0xc
	.long	0x5912
	.uleb128 0x15
	.long	0x577
	.long	0x5942
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x3a
	.long	.LASF1247
	.byte	0x2
	.byte	0x3c
	.long	0x594d
	.uleb128 0xc
	.long	0x5932
	.uleb128 0x15
	.long	0x36a
	.long	0x5962
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x3a
	.long	.LASF1248
	.byte	0x2
	.byte	0x3f
	.long	0x596d
	.uleb128 0xc
	.long	0x5952
	.uleb128 0x15
	.long	0x2d
	.long	0x5988
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3b
	.long	.LASF1249
	.byte	0x2
	.value	0x619
	.long	0x5972
	.uleb128 0x15
	.long	0x2d
	.long	0x59a4
	.uleb128 0x16
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x3b
	.long	.LASF1250
	.byte	0x2
	.value	0x652
	.long	0x5994
	.uleb128 0x3c
	.long	.LASF1251
	.byte	0x1
	.byte	0xb5
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flow2_completed
	.uleb128 0x3b
	.long	.LASF1252
	.byte	0x2
	.value	0x6d2
	.long	0x1e3
	.uleb128 0x15
	.long	0x36a
	.long	0x59e1
	.uleb128 0x16
	.long	0x1ea
	.byte	0x34
	.byte	0
	.uleb128 0x3b
	.long	.LASF1253
	.byte	0x11
	.value	0x18b
	.long	0x59d1
	.uleb128 0x3b
	.long	.LASF1254
	.byte	0x11
	.value	0x196
	.long	0x59d1
	.uleb128 0x3b
	.long	.LASF1255
	.byte	0x11
	.value	0x1b0
	.long	0x59d1
	.uleb128 0x3b
	.long	.LASF1256
	.byte	0x11
	.value	0x1b9
	.long	0x28a2
	.uleb128 0x15
	.long	0x577
	.long	0x5a21
	.uleb128 0x16
	.long	0x1ea
	.byte	0x34
	.byte	0
	.uleb128 0x3a
	.long	.LASF1257
	.byte	0x14
	.byte	0xa6
	.long	0x5a11
	.uleb128 0x3a
	.long	.LASF1258
	.byte	0x10
	.byte	0xe4
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1259
	.byte	0x10
	.byte	0xec
	.long	0x2cd1
	.uleb128 0x3c
	.long	.LASF1260
	.byte	0x1
	.byte	0xc8
	.long	0x2ced
	.uleb128 0x9
	.byte	0x3
	.quad	regs_live_at_setjmp
	.uleb128 0x3a
	.long	.LASF1261
	.byte	0x10
	.byte	0xf8
	.long	0x10dc
	.uleb128 0x15
	.long	0x25d1
	.long	0x5a72
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x3b
	.long	.LASF1262
	.byte	0x10
	.value	0x116
	.long	0x5a62
	.uleb128 0x3b
	.long	.LASF1263
	.byte	0x10
	.value	0x11a
	.long	0x2cd1
	.uleb128 0x3c
	.long	.LASF1264
	.byte	0x1
	.byte	0xb9
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	max_regno
	.uleb128 0x3c
	.long	.LASF1265
	.byte	0x1
	.byte	0xbd
	.long	0x2cd1
	.uleb128 0x9
	.byte	0x3
	.quad	reg_n_info
	.uleb128 0x3a
	.long	.LASF1266
	.byte	0x14
	.byte	0xa2
	.long	0x59d1
	.uleb128 0x15
	.long	0x590
	.long	0x5acf
	.uleb128 0x16
	.long	0x1ea
	.byte	0x34
	.byte	0
	.uleb128 0x3a
	.long	.LASF1267
	.byte	0x14
	.byte	0xad
	.long	0x5abf
	.uleb128 0x3c
	.long	.LASF1268
	.byte	0x1
	.byte	0xce
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	regs_may_share
	.uleb128 0x3a
	.long	.LASF1269
	.byte	0x15
	.byte	0x3d
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1270
	.byte	0x15
	.byte	0x41
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1271
	.byte	0x15
	.byte	0x88
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1272
	.byte	0x15
	.byte	0x8c
	.long	0x1e3
	.uleb128 0x3a
	.long	.LASF1273
	.byte	0x15
	.byte	0xbf
	.long	0x1e3
	.uleb128 0x3b
	.long	.LASF1274
	.byte	0x15
	.value	0x13a
	.long	0x1e3
	.uleb128 0x3b
	.long	.LASF1275
	.byte	0x15
	.value	0x1c8
	.long	0x1e3
	.uleb128 0x3b
	.long	.LASF1276
	.byte	0x15
	.value	0x244
	.long	0x1e3
	.uleb128 0x3b
	.long	.LASF1277
	.byte	0x16
	.value	0x1c0
	.long	0x1e3
	.uleb128 0x3b
	.long	.LASF1278
	.byte	0x16
	.value	0x1cb
	.long	0x32c3
	.uleb128 0x3b
	.long	.LASF1279
	.byte	0xe
	.value	0x1e4
	.long	0x1aa1
	.uleb128 0x3a
	.long	.LASF1280
	.byte	0x17
	.byte	0x2c
	.long	0x1e3
	.uleb128 0x3c
	.long	.LASF1281
	.byte	0x1
	.byte	0xc2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	regset_bytes
	.uleb128 0x3c
	.long	.LASF1282
	.byte	0x1
	.byte	0xc3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	regset_size
	.uleb128 0x1c
	.long	0x1e3
	.long	0x5bb2
	.uleb128 0x1d
	.long	0x123
	.byte	0
	.uleb128 0x3c
	.long	.LASF1283
	.byte	0x1
	.byte	0xd2
	.long	0x5bc7
	.uleb128 0x9
	.byte	0x3
	.quad	lang_missing_noreturn_ok_p
	.uleb128 0x3
	.byte	0x8
	.long	0x5ba3
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
.LASF421:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF693:
	.string	"TI_UV16QI_TYPE"
.LASF342:
	.string	"BUILT_IN_CONJ"
.LASF582:
	.string	"profile_label_no"
.LASF871:
	.string	"rtstr"
.LASF708:
	.string	"itk_unsigned_char"
.LASF240:
	.string	"WITH_CLEANUP_EXPR"
.LASF230:
	.string	"VTABLE_REF"
.LASF932:
	.string	"NOTE_INSN_DELETED"
.LASF1097:
	.string	"TV_DBR_SCHED"
.LASF388:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF104:
	.string	"_unused2"
.LASF800:
	.string	"UMOD"
.LASF854:
	.string	"min_align"
.LASF317:
	.string	"POSTINCREMENT_EXPR"
.LASF1122:
	.string	"life_analysis"
.LASF1119:
	.string	"max_uid"
.LASF338:
	.string	"BUILT_IN_FABSF"
.LASF253:
	.string	"FLOOR_MOD_EXPR"
.LASF90:
	.string	"_fileno"
.LASF339:
	.string	"BUILT_IN_FABSL"
.LASF986:
	.string	"varray_data_tag"
.LASF35:
	.string	"AD_REGS"
.LASF1130:
	.string	"new_live_at_start"
.LASF880:
	.string	"first"
.LASF700:
	.string	"TI_V2SI_TYPE"
.LASF576:
	.string	"inlinable"
.LASF608:
	.string	"uses_const_pool"
.LASF1067:
	.string	"TV_CLEANUP_CFG"
.LASF1107:
	.string	"TV_REST_OF_COMPILATION"
.LASF661:
	.string	"TI_UINTSI_TYPE"
.LASF1240:
	.string	"elim_reg_set"
.LASF212:
	.string	"COMPLEX_CST"
.LASF506:
	.string	"tree_type"
.LASF270:
	.string	"RROTATE_EXPR"
.LASF306:
	.string	"ADDR_EXPR"
.LASF969:
	.string	"next"
.LASF26:
	.string	"block"
.LASF718:
	.string	"_Bool"
.LASF1231:
	.string	"outf"
.LASF870:
	.string	"rtuint"
.LASF1258:
	.string	"n_basic_blocks"
.LASF636:
	.string	"pure_flag"
.LASF1226:
	.string	"testreg"
.LASF874:
	.string	"rt_cselib"
.LASF744:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF581:
	.string	"inl_max_label_num"
.LASF1253:
	.string	"fixed_regs"
.LASF295:
	.string	"IN_EXPR"
.LASF804:
	.string	"LSHIFTRT"
.LASF16:
	.string	"common"
.LASF1210:
	.string	"mark_set_regs"
.LASF422:
	.string	"BUILT_IN_EH_RETURN"
.LASF738:
	.string	"MATCH_PAR_DUP"
.LASF95:
	.string	"_shortbuf"
.LASF1286:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1101:
	.string	"TV_TO_SSA"
.LASF799:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF660:
	.string	"TI_UINTHI_TYPE"
.LASF1179:
	.string	"first_insn_after_basic_block_note"
.LASF278:
	.string	"TRUTH_AND_EXPR"
.LASF598:
	.string	"contains_functions"
.LASF361:
	.string	"BUILT_IN_STRCPY"
.LASF732:
	.string	"MATCH_OPERAND"
.LASF680:
	.string	"TI_VOID_TYPE"
.LASF170:
	.string	"CCFPmode"
.LASF424:
	.string	"BUILT_IN_VARARGS_START"
.LASF465:
	.string	"imag"
.LASF111:
	.string	"reg_class"
.LASF782:
	.string	"CONST_STRING"
.LASF322:
	.string	"LABEL_EXPR"
.LASF821:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF859:
	.string	"max_after_base"
.LASF464:
	.string	"real"
.LASF667:
	.string	"TI_NULL_POINTER"
.LASF822:
	.string	"UNLT"
.LASF1072:
	.string	"TV_PARSE"
.LASF202:
	.string	"FILE_TYPE"
.LASF504:
	.string	"fragment_chain"
.LASF460:
	.string	"tree_string"
.LASF1266:
	.string	"regs_ever_live"
.LASF1206:
	.string	"regno_clobbered_at_setjmp"
.LASF513:
	.string	"no_force_blk_flag"
.LASF1138:
	.string	"blocks"
.LASF503:
	.string	"fragment_origin"
.LASF1058:
	.string	"initial_value_struct"
.LASF696:
	.string	"TI_V4SI_TYPE"
.LASF197:
	.string	"CHAR_TYPE"
.LASF401:
	.string	"BUILT_IN_FWRITE"
.LASF1079:
	.string	"TV_LOOP"
.LASF1022:
	.string	"probability"
.LASF1235:
	.string	"count_or_remove_death_notes"
.LASF142:
	.string	"CTImode"
.LASF76:
	.string	"_flags"
.LASF280:
	.string	"TRUTH_XOR_EXPR"
.LASF627:
	.string	"static_dtor_flag"
.LASF461:
	.string	"length"
.LASF242:
	.string	"PLACEHOLDER_EXPR"
.LASF650:
	.string	"lang_type"
.LASF635:
	.string	"built_in_class"
.LASF71:
	.string	"__off_t"
.LASF1085:
	.string	"TV_REGMOVE"
.LASF261:
	.string	"FLOAT_EXPR"
.LASF1238:
	.string	"clear_log_links"
.LASF618:
	.string	"inline_flag"
.LASF951:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF670:
	.string	"TI_BITSIZE_ZERO"
.LASF220:
	.string	"PARM_DECL"
.LASF140:
	.string	"CSImode"
.LASF1147:
	.string	"keep_head_end_p"
.LASF41:
	.string	"FP_TOP_REG"
.LASF380:
	.string	"BUILT_IN_COSL"
.LASF843:
	.string	"VEC_MERGE"
.LASF945:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF579:
	.string	"original_decl_initial"
.LASF1126:
	.string	"pregno"
.LASF311:
	.string	"CONJ_EXPR"
.LASF96:
	.string	"_lock"
.LASF1260:
	.string	"regs_live_at_setjmp"
.LASF988:
	.string	"uhint"
.LASF776:
	.string	"RETURN"
.LASF351:
	.string	"BUILT_IN_BZERO"
.LASF327:
	.string	"LABELED_BLOCK_EXPR"
.LASF1093:
	.string	"TV_PEEPHOLE2"
.LASF989:
	.string	"generic"
.LASF384:
	.string	"BUILT_IN_ARGS_INFO"
.LASF1262:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF176:
	.string	"MODE_FLOAT"
.LASF357:
	.string	"BUILT_IN_MEMCMP"
.LASF399:
	.string	"BUILT_IN_FPUTC"
.LASF391:
	.string	"BUILT_IN_RETURN"
.LASF439:
	.string	"unused_0"
.LASF455:
	.string	"unused_1"
.LASF658:
	.string	"TI_INTTI_TYPE"
.LASF400:
	.string	"BUILT_IN_FPUTS"
.LASF328:
	.string	"EXIT_BLOCK_EXPR"
.LASF863:
	.string	"alias"
.LASF860:
	.string	"offset_unsigned"
.LASF146:
	.string	"V2SImode"
.LASF1105:
	.string	"TV_FINAL"
.LASF406:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF605:
	.string	"stdarg"
.LASF566:
	.string	"x_trampoline_list"
.LASF1186:
	.string	"purge"
.LASF199:
	.string	"OFFSET_TYPE"
.LASF677:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF326:
	.string	"LOOP_EXPR"
.LASF763:
	.string	"CODE_LABEL"
.LASF407:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF141:
	.string	"CDImode"
.LASF769:
	.string	"UNSPEC"
.LASF318:
	.string	"VA_ARG_EXPR"
.LASF373:
	.string	"BUILT_IN_SIN"
.LASF432:
	.string	"side_effects_flag"
.LASF683:
	.string	"TI_PTRDIFF_TYPE"
.LASF938:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF765:
	.string	"COND_EXEC"
.LASF779:
	.string	"CONST_INT"
.LASF1172:
	.string	"call_used_head"
.LASF775:
	.string	"CALL"
.LASF61:
	.string	"maybe_vaarg"
.LASF587:
	.string	"epilogue_delay_list"
.LASF638:
	.string	"uninlinable"
.LASF235:
	.string	"TARGET_EXPR"
.LASF1082:
	.string	"TV_FLOW"
.LASF148:
	.string	"V4QImode"
.LASF975:
	.string	"BITMAP_AND"
.LASF754:
	.string	"ATTR"
.LASF420:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF895:
	.string	"count"
.LASF1257:
	.string	"reg_names"
.LASF872:
	.string	"rttype"
.LASF1247:
	.string	"rtx_format"
.LASF1215:
	.string	"not_dead"
.LASF30:
	.string	"DREG"
.LASF493:
	.string	"complexity"
.LASF885:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF1184:
	.string	"propagate_block_delete_insn"
.LASF962:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF507:
	.string	"values"
.LASF457:
	.string	"tree_int_cst"
.LASF928:
	.string	"REG_ALWAYS_RETURN"
.LASF376:
	.string	"BUILT_IN_SINF"
.LASF147:
	.string	"V2DImode"
.LASF1061:
	.string	"language_function"
.LASF896:
	.string	"frequency"
.LASF379:
	.string	"BUILT_IN_SINL"
.LASF436:
	.string	"readonly_flag"
.LASF1207:
	.string	"add_to_mem_set_list"
.LASF256:
	.string	"EXACT_DIV_EXPR"
.LASF1013:
	.string	"varray_type"
.LASF1129:
	.string	"verify_local_live_at_start"
.LASF865:
	.string	"mem_attrs"
.LASF82:
	.string	"_IO_write_end"
.LASF909:
	.string	"REG_UNUSED"
.LASF919:
	.string	"REG_BR_PRED"
.LASF747:
	.string	"DEFINE_DELAY"
.LASF797:
	.string	"MINUS"
.LASF563:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF1227:
	.string	"mark_dest"
.LASF1171:
	.string	"call_used"
.LASF993:
	.string	"sched_info_tag"
.LASF356:
	.string	"BUILT_IN_MEMCPY"
.LASF223:
	.string	"NAMESPACE_DECL"
.LASF1021:
	.string	"insns"
.LASF787:
	.string	"STRICT_LOW_PART"
.LASF1114:
	.string	"mem_set_list_len"
.LASF1230:
	.string	"dump_regset"
.LASF1046:
	.string	"x_regno_reg_rtx"
.LASF1175:
	.string	"__len"
.LASF228:
	.string	"ARRAY_REF"
.LASF958:
	.string	"GR_FRAME_POINTER"
.LASF431:
	.string	"chain"
.LASF893:
	.string	"index"
.LASF1000:
	.string	"freq"
.LASF825:
	.string	"ZERO_EXTEND"
.LASF1106:
	.string	"TV_SYMOUT"
.LASF385:
	.string	"BUILT_IN_CONSTANT_P"
.LASF828:
	.string	"FLOAT_TRUNCATE"
.LASF1053:
	.string	"x_forced_labels"
.LASF411:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF417:
	.string	"BUILT_IN_DWARF_CFA"
.LASF208:
	.string	"FUNCTION_TYPE"
.LASF1222:
	.string	"mark_used_reg"
.LASF547:
	.string	"internal_arg_pointer"
.LASF612:
	.string	"tree_decl"
.LASF955:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF157:
	.string	"V2SFmode"
.LASF1007:
	.string	"varray_data"
.LASF1060:
	.string	"machine_function"
.LASF829:
	.string	"FLOAT"
.LASF1136:
	.string	"mask_"
.LASF921:
	.string	"REG_EH_CONTEXT"
.LASF112:
	.string	"machine_mode"
.LASF1102:
	.string	"TV_SSA_CCP"
.LASF1216:
	.string	"outer_mode"
.LASF207:
	.string	"QUAL_UNION_TYPE"
.LASF474:
	.string	"chunk"
.LASF1228:
	.string	"find_use_as_address"
.LASF877:
	.string	"rtmem"
.LASF575:
	.string	"fixup_var_refs_queue"
.LASF838:
	.string	"RANGE_REG"
.LASF875:
	.string	"rtbit"
.LASF323:
	.string	"GOTO_EXPR"
.LASF968:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF119:
	.string	"TImode"
.LASF814:
	.string	"PRE_MODIFY"
.LASF234:
	.string	"INIT_EXPR"
.LASF590:
	.string	"returns_pointer"
.LASF269:
	.string	"LROTATE_EXPR"
.LASF458:
	.string	"realvaluetype"
.LASF827:
	.string	"FLOAT_EXTEND"
.LASF354:
	.string	"BUILT_IN_INDEX"
.LASF997:
	.string	"last_note_uid"
.LASF300:
	.string	"NOP_EXPR"
.LASF535:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF1198:
	.string	"propagate_block"
.LASF933:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF117:
	.string	"SImode"
.LASF771:
	.string	"ADDR_VEC"
.LASF1056:
	.string	"stmt_status"
.LASF158:
	.string	"V2DFmode"
.LASF254:
	.string	"ROUND_MOD_EXPR"
.LASF853:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF445:
	.string	"protected_flag"
.LASF1272:
	.string	"warn_missing_noreturn"
.LASF24:
	.string	"type"
.LASF1150:
	.string	"new_libcall_insn"
.LASF60:
	.string	"sse_regno"
.LASF882:
	.string	"indx"
.LASF583:
	.string	"machine"
.LASF250:
	.string	"ROUND_DIV_EXPR"
.LASF790:
	.string	"SYMBOL_REF"
.LASF931:
	.string	"NOTE_INSN_BIAS"
.LASF145:
	.string	"V2HImode"
.LASF651:
	.string	"lang_decl"
.LASF265:
	.string	"ABS_EXPR"
.LASF953:
	.string	"NOTE_INSN_MAX"
.LASF1051:
	.string	"x_saveregs_value"
.LASF1164:
	.string	"blocks_in"
.LASF498:
	.string	"block_num"
.LASF743:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF1251:
	.string	"flow2_completed"
.LASF1202:
	.string	"canon_r"
.LASF275:
	.string	"BIT_NOT_EXPR"
.LASF823:
	.string	"LTGT"
.LASF492:
	.string	"tree_exp"
.LASF478:
	.string	"temp"
.LASF1031:
	.string	"unsignedp"
.LASF1148:
	.string	"delete_noop_moves"
.LASF1203:
	.string	"libcall_dead_p"
.LASF835:
	.string	"HIGH"
.LASF792:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF118:
	.string	"DImode"
.LASF468:
	.string	"_obstack_chunk"
.LASF277:
	.string	"TRUTH_ORIF_EXPR"
.LASF334:
	.string	"BUILT_IN_ALLOCA"
.LASF983:
	.string	"elms"
.LASF1073:
	.string	"TV_EXPAND"
.LASF985:
	.string	"const_equiv_data"
.LASF1113:
	.string	"mem_set_list"
.LASF549:
	.string	"hard_reg_initial_vals"
.LASF1154:
	.string	"notice_stack_pointer_modification"
.LASF1049:
	.string	"x_inhibit_defer_pop"
.LASF714:
	.string	"itk_unsigned_long"
.LASF89:
	.string	"_chain"
.LASF813:
	.string	"POST_INC"
.LASF239:
	.string	"METHOD_CALL_EXPR"
.LASF663:
	.string	"TI_UINTTI_TYPE"
.LASF974:
	.string	"bitmap_bits"
.LASF626:
	.string	"static_ctor_flag"
.LASF131:
	.string	"TFmode"
.LASF1068:
	.string	"TV_LIFE"
.LASF205:
	.string	"RECORD_TYPE"
.LASF67:
	.string	"unsigned char"
.LASF1059:
	.string	"temp_slot"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF437:
	.string	"unsigned_flag"
.LASF640:
	.string	"arguments"
.LASF548:
	.string	"cannot_inline"
.LASF1244:
	.string	"mode_bitsize"
.LASF1287:
	.string	"_IO_lock_t"
.LASF682:
	.string	"TI_CONST_PTR_TYPE"
.LASF532:
	.string	"lang_specific"
.LASF1062:
	.string	"float"
.LASF473:
	.string	"chunk_size"
.LASF1189:
	.string	"propagate_block_delete_libcall"
.LASF1004:
	.string	"basic_block"
.LASF114:
	.string	"BImode"
.LASF531:
	.string	"alias_set"
.LASF908:
	.string	"REG_NO_CONFLICT"
.LASF128:
	.string	"SFmode"
.LASF657:
	.string	"TI_INTDI_TYPE"
.LASF981:
	.string	"n_bits"
.LASF1152:
	.string	"delete_dead_jumptables"
.LASF537:
	.string	"emit"
.LASF1100:
	.string	"TV_REG_STACK"
.LASF516:
	.string	"packed_flag"
.LASF1274:
	.string	"flag_omit_frame_pointer"
.LASF271:
	.string	"BIT_IOR_EXPR"
.LASF335:
	.string	"BUILT_IN_ABS"
.LASF217:
	.string	"CONST_DECL"
.LASF459:
	.string	"tree_real_cst"
.LASF222:
	.string	"FIELD_DECL"
.LASF760:
	.string	"JUMP_INSN"
.LASF890:
	.string	"cond_local_set"
.LASF1167:
	.string	"qhead"
.LASF710:
	.string	"itk_unsigned_short"
.LASF1023:
	.string	"edge"
.LASF345:
	.string	"BUILT_IN_CREAL"
.LASF1233:
	.string	"recompute_reg_usage"
.LASF180:
	.string	"MODE_COMPLEX_FLOAT"
.LASF876:
	.string	"rttree"
.LASF617:
	.string	"regdecl_flag"
.LASF341:
	.string	"BUILT_IN_IMAXABS"
.LASF196:
	.string	"BOOLEAN_TYPE"
.LASF350:
	.string	"BUILT_IN_CIMAGL"
.LASF996:
	.string	"last_uid"
.LASF1133:
	.string	"bit_num_"
.LASF475:
	.string	"object_base"
.LASF930:
	.string	"insn_note"
.LASF949:
	.string	"NOTE_INSN_RANGE_END"
.LASF742:
	.string	"DEFINE_SPLIT"
.LASF597:
	.string	"has_nonlocal_goto"
.LASF611:
	.string	"arg_pointer_save_area_init"
.LASF410:
	.string	"BUILT_IN_ISGREATER"
.LASF394:
	.string	"BUILT_IN_TRAP"
.LASF781:
	.string	"CONST_VECTOR"
.LASF303:
	.string	"SAVE_EXPR"
.LASF739:
	.string	"MATCH_INSN"
.LASF1157:
	.string	"mark_regs_live_at_end"
.LASF456:
	.string	"high"
.LASF699:
	.string	"TI_V4HI_TYPE"
.LASF557:
	.string	"x_save_expr_regs"
.LASF129:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF1016:
	.string	"gcov_type"
.LASF65:
	.string	"size_t"
.LASF1165:
	.string	"blocks_out"
.LASF773:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF540:
	.string	"pops_args"
.LASF123:
	.string	"PSImode"
.LASF559:
	.string	"x_rtl_expr_chain"
.LASF360:
	.string	"BUILT_IN_STRNCAT"
.LASF586:
	.string	"language"
.LASF721:
	.string	"SSIZETYPE"
.LASF867:
	.string	"rtunion_def"
.LASF215:
	.string	"FUNCTION_DECL"
.LASF413:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF753:
	.string	"DEFINE_ATTR"
.LASF722:
	.string	"USIZETYPE"
.LASF236:
	.string	"COND_EXPR"
.LASF755:
	.string	"SET_ATTR"
.LASF137:
	.string	"TCmode"
.LASF551:
	.string	"x_nonlocal_labels"
.LASF257:
	.string	"FIX_TRUNC_EXPR"
.LASF830:
	.string	"UNSIGNED_FLOAT"
.LASF920:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF878:
	.string	"cselib_val_struct"
.LASF952:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF81:
	.string	"_IO_write_ptr"
.LASF1191:
	.string	"propagate_one_insn"
.LASF471:
	.string	"contents"
.LASF193:
	.string	"COMPLEX_TYPE"
.LASF802:
	.string	"ROTATE"
.LASF395:
	.string	"BUILT_IN_PREFETCH"
.LASF888:
	.string	"succ"
.LASF267:
	.string	"LSHIFT_EXPR"
.LASF999:
	.string	"refs"
.LASF826:
	.string	"TRUNCATE"
.LASF913:
	.string	"REG_DEP_ANTI"
.LASF134:
	.string	"SCmode"
.LASF1246:
	.string	"rtx_length"
.LASF1083:
	.string	"TV_COMBINE"
.LASF1250:
	.string	"global_rtl"
.LASF1170:
	.string	"new_live_at_end"
.LASF538:
	.string	"varasm"
.LASF705:
	.string	"integer_type_kind"
.LASF124:
	.string	"PDImode"
.LASF1124:
	.string	"from"
.LASF934:
	.string	"NOTE_INSN_BLOCK_END"
.LASF210:
	.string	"INTEGER_CST"
.LASF218:
	.string	"TYPE_DECL"
.LASF674:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF973:
	.string	"bitmap"
.LASF580:
	.string	"inl_last_parm_insn"
.LASF943:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1248:
	.string	"rtx_class"
.LASF528:
	.string	"main_variant"
.LASF1211:
	.string	"link"
.LASF897:
	.string	"flags"
.LASF314:
	.string	"PREDECREMENT_EXPR"
.LASF666:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF679:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF434:
	.string	"addressable_flag"
.LASF757:
	.string	"EQ_ATTR"
.LASF442:
	.string	"static_flag"
.LASF676:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF167:
	.string	"CCGOCmode"
.LASF788:
	.string	"CONCAT"
.LASF371:
	.string	"BUILT_IN_STRRCHR"
.LASF1275:
	.string	"flag_pic"
.LASF1018:
	.string	"pred_next"
.LASF508:
	.string	"size"
.LASF695:
	.string	"TI_V16SF_TYPE"
.LASF856:
	.string	"min_after_vec"
.LASF675:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF74:
	.string	"FILE"
.LASF794:
	.string	"COND"
.LASF980:
	.string	"simple_bitmap_def"
.LASF194:
	.string	"VECTOR_TYPE"
.LASF177:
	.string	"MODE_PARTIAL_INT"
.LASF567:
	.string	"x_parm_birth_insn"
.LASF569:
	.string	"x_max_parm_reg"
.LASF976:
	.string	"BITMAP_AND_COMPL"
.LASF352:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF135:
	.string	"DCmode"
.LASF745:
	.string	"DEFINE_COMBINE"
.LASF1273:
	.string	"flag_branch_probabilities"
.LASF1284:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF274:
	.string	"BIT_ANDTC_EXPR"
.LASF681:
	.string	"TI_PTR_TYPE"
.LASF561:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF803:
	.string	"ASHIFTRT"
.LASF1285:
	.string	"flow.c"
.LASF165:
	.string	"CCmode"
.LASF423:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF415:
	.string	"BUILT_IN_ISUNORDERED"
.LASF886:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF936:
	.string	"NOTE_INSN_LOOP_END"
.LASF163:
	.string	"V16SFmode"
.LASF1199:
	.string	"insn_dead_p"
.LASF1178:
	.string	"param"
.LASF847:
	.string	"SS_PLUS"
.LASF642:
	.string	"initial"
.LASF1099:
	.string	"TV_SHORTEN_BRANCH"
.LASF978:
	.string	"BITMAP_XOR"
.LASF276:
	.string	"TRUTH_ANDIF_EXPR"
.LASF950:
	.string	"NOTE_INSN_LIVE"
.LASF750:
	.string	"DEFINE_COND_EXEC"
.LASF1156:
	.string	"xset"
.LASF85:
	.string	"_IO_save_base"
.LASF720:
	.string	"SIZETYPE"
.LASF1188:
	.string	"diff_vec_p"
.LASF1028:
	.string	"var_refs_queue"
.LASF1142:
	.string	"stabilized_prop_flags"
.LASF1050:
	.string	"x_stack_pointer_delta"
.LASF281:
	.string	"TRUTH_NOT_EXPR"
.LASF746:
	.string	"DEFINE_EXPAND"
.LASF262:
	.string	"NEGATE_EXPR"
.LASF600:
	.string	"is_thunk"
.LASF1270:
	.string	"optimize_size"
.LASF1131:
	.string	"ptr_"
.LASF1010:
	.string	"elements_used"
.LASF154:
	.string	"V8SImode"
.LASF553:
	.string	"x_nonlocal_goto_handler_labels"
.LASF1239:
	.string	"reg_set_to_hard_reg_set"
.LASF759:
	.string	"INSN"
.LASF869:
	.string	"rtint"
.LASF425:
	.string	"BUILT_IN_STDARG_START"
.LASF632:
	.string	"comdat_flag"
.LASF1141:
	.string	"tmp_head"
.LASF789:
	.string	"LABEL_REF"
.LASF662:
	.string	"TI_UINTDI_TYPE"
.LASF203:
	.string	"ARRAY_TYPE"
.LASF1197:
	.string	"free_propagate_block_info"
.LASF1264:
	.string	"max_regno"
.LASF672:
	.string	"TI_BITSIZE_UNIT"
.LASF910:
	.string	"REG_CC_SETTER"
.LASF1006:
	.string	"elt_list"
.LASF1151:
	.string	"retval_note"
.LASF1069:
	.string	"TV_LIFE_UPDATE"
.LASF1009:
	.string	"num_elements"
.LASF900:
	.string	"REG_DEAD"
.LASF1280:
	.string	"in_ssa_form"
.LASF1123:
	.string	"file"
.LASF284:
	.string	"GT_EXPR"
.LASF99:
	.string	"__pad2"
.LASF297:
	.string	"CARD_EXPR"
.LASF1243:
	.string	"mode_size"
.LASF903:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF1015:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF678:
	.string	"TI_DOUBLE_TYPE"
.LASF1098:
	.string	"TV_REORDER_BLOCKS"
.LASF1026:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF1115:
	.string	"cc0_live"
.LASF1232:
	.string	"debug_regset"
.LASF1223:
	.string	"some_not_set"
.LASF393:
	.string	"BUILT_IN_LONGJMP"
.LASF466:
	.string	"tree_vector"
.LASF201:
	.string	"METHOD_TYPE"
.LASF166:
	.string	"CCGCmode"
.LASF892:
	.string	"global_live_at_end"
.LASF1256:
	.string	"regs_invalidated_by_call"
.LASF25:
	.string	"list"
.LASF299:
	.string	"CONVERT_EXPR"
.LASF785:
	.string	"SCRATCH"
.LASF152:
	.string	"V8QImode"
.LASF251:
	.string	"TRUNC_MOD_EXPR"
.LASF155:
	.string	"V8DImode"
.LASF183:
	.string	"MAX_MODE_CLASS"
.LASF1265:
	.string	"reg_n_info"
.LASF1134:
	.string	"word_num_"
.LASF716:
	.string	"itk_unsigned_long_long"
.LASF1279:
	.string	"cfun"
.LASF247:
	.string	"TRUNC_DIV_EXPR"
.LASF824:
	.string	"SIGN_EXTEND"
.LASF592:
	.string	"calls_setjmp"
.LASF304:
	.string	"UNSAVE_EXPR"
.LASF246:
	.string	"MULT_EXPR"
.LASF490:
	.string	"value"
.LASF846:
	.string	"VEC_DUPLICATE"
.LASF972:
	.string	"bitmap_head"
.LASF285:
	.string	"GE_EXPR"
.LASF554:
	.string	"x_nonlocal_goto_stack_level"
.LASF185:
	.string	"ERROR_MARK"
.LASF106:
	.string	"_next"
.LASF1267:
	.string	"reg_raw_mode"
.LASF1092:
	.string	"TV_IFCVT2"
.LASF367:
	.string	"BUILT_IN_STRPBRK"
.LASF307:
	.string	"REFERENCE_EXPR"
.LASF536:
	.string	"expr"
.LASF1212:
	.string	"mark_set_1"
.LASF252:
	.string	"CEIL_MOD_EXPR"
.LASF1214:
	.string	"regno_last"
.LASF1144:
	.string	"size_"
.LASF946:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF505:
	.string	"address"
.LASF480:
	.string	"chunkfun"
.LASF1218:
	.string	"some_was_live"
.LASF1209:
	.string	"invalidate_mems_from_set"
.LASF396:
	.string	"BUILT_IN_PUTCHAR"
.LASF552:
	.string	"x_nonlocal_goto_handler_slots"
.LASF161:
	.string	"V8SFmode"
.LASF248:
	.string	"CEIL_DIV_EXPR"
.LASF729:
	.string	"INCLUDE"
.LASF386:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF911:
	.string	"REG_CC_USER"
.LASF768:
	.string	"ASM_OPERANDS"
.LASF572:
	.string	"x_temp_slot_level"
.LASF525:
	.string	"minval"
.LASF570:
	.string	"x_parm_reg_stack_loc"
.LASF169:
	.string	"CCZmode"
.LASF937:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF249:
	.string	"FLOOR_DIV_EXPR"
.LASF187:
	.string	"TREE_LIST"
.LASF1162:
	.string	"live"
.LASF740:
	.string	"DEFINE_INSN"
.LASF654:
	.string	"TI_INTQI_TYPE"
.LASF1185:
	.string	"inote"
.LASF502:
	.string	"abstract_origin"
.LASF214:
	.string	"STRING_CST"
.LASF282:
	.string	"LT_EXPR"
.LASF926:
	.string	"REG_NON_LOCAL_GOTO"
.LASF772:
	.string	"ADDR_DIFF_VEC"
.LASF915:
	.string	"REG_BR_PROB"
.LASF907:
	.string	"REG_NONNEG"
.LASF272:
	.string	"BIT_XOR_EXPR"
.LASF330:
	.string	"SWITCH_EXPR"
.LASF279:
	.string	"TRUTH_OR_EXPR"
.LASF602:
	.string	"profile"
.LASF834:
	.string	"ZERO_EXTRACT"
.LASF987:
	.string	"hint"
.LASF767:
	.string	"ASM_INPUT"
.LASF321:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF486:
	.string	"ht_identifier"
.LASF817:
	.string	"ORDERED"
.LASF162:
	.string	"V8DFmode"
.LASF1042:
	.string	"x_last_filename"
.LASF1196:
	.string	"canon_mem"
.LASF1030:
	.string	"promoted_mode"
.LASF643:
	.string	"assembler_name"
.LASF1125:
	.string	"eliminables"
.LASF1145:
	.string	"_mask"
.LASF1224:
	.string	"mark_used_regs"
.LASF263:
	.string	"MIN_EXPR"
.LASF687:
	.string	"TI_UV4SI_TYPE"
.LASF1001:
	.string	"deaths"
.LASF514:
	.string	"needs_constructing_flag"
.LASF1192:
	.string	"insn_is_dead"
.LASF831:
	.string	"UNSIGNED_FIX"
.LASF258:
	.string	"FIX_CEIL_EXPR"
.LASF589:
	.string	"returns_pcc_struct"
.LASF364:
	.string	"BUILT_IN_STRNCMP"
.LASF1245:
	.string	"current_function_decl"
.LASF889:
	.string	"local_set"
.LASF463:
	.string	"tree_complex"
.LASF762:
	.string	"BARRIER"
.LASF58:
	.string	"sse_words"
.LASF40:
	.string	"GENERAL_REGS"
.LASF1277:
	.string	"current_function_sp_is_unchanging"
.LASF283:
	.string	"LE_EXPR"
.LASF761:
	.string	"CALL_INSN"
.LASF1242:
	.string	"stderr"
.LASF634:
	.string	"no_limit_stack"
.LASF641:
	.string	"result"
.LASF1109:
	.string	"propagate_block_info"
.LASF756:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF524:
	.string	"name"
.LASF731:
	.string	"INSN_LIST"
.LASF107:
	.string	"_sbuf"
.LASF839:
	.string	"RANGE_VAR"
.LASF1005:
	.string	"changes_mode"
.LASF87:
	.string	"_IO_save_end"
.LASF175:
	.string	"MODE_INT"
.LASF1011:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF264:
	.string	"MAX_EXPR"
.LASF1153:
	.string	"notice_stack_pointer_modification_1"
.LASF544:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF495:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF668:
	.string	"TI_SIZE_ZERO"
.LASF963:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF1047:
	.string	"expr_status"
.LASF1075:
	.string	"TV_INTEGRATION"
.LASF500:
	.string	"subblocks"
.LASF1234:
	.string	"loop_step"
.LASF596:
	.string	"has_nonlocal_label"
.LASF709:
	.string	"itk_short"
.LASF358:
	.string	"BUILT_IN_MEMSET"
.LASF840:
	.string	"RANGE_LIVE"
.LASF1048:
	.string	"x_pending_stack_adjust"
.LASF255:
	.string	"RDIV_EXPR"
.LASF541:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF620:
	.string	"virtual_flag"
.LASF992:
	.string	"const_equiv"
.LASF518:
	.string	"pointer_depth"
.LASF1161:
	.string	"src_regno"
.LASF462:
	.string	"pointer"
.LASF216:
	.string	"LABEL_DECL"
.LASF429:
	.string	"END_BUILTINS"
.LASF730:
	.string	"EXPR_LIST"
.LASF723:
	.string	"BITSIZETYPE"
.LASF960:
	.string	"GR_ARG_POINTER"
.LASF1183:
	.string	"allocate_reg_life_data"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF1176:
	.string	"__o1"
.LASF849:
	.string	"SS_MINUS"
.LASF736:
	.string	"MATCH_PARALLEL"
.LASF150:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1091:
	.string	"TV_FLOW2"
.LASF1158:
	.string	"verify_wide_reg_1"
.LASF430:
	.string	"tree_common"
.LASF902:
	.string	"REG_EQUIV"
.LASF529:
	.string	"binfo"
.LASF671:
	.string	"TI_BITSIZE_ONE"
.LASF1181:
	.string	"did_something"
.LASF1220:
	.string	"needed_regno"
.LASF68:
	.string	"short unsigned int"
.LASF69:
	.string	"signed char"
.LASF665:
	.string	"TI_INTEGER_ONE"
.LASF735:
	.string	"MATCH_OPERATOR"
.LASF923:
	.string	"REG_SAVE_NOTE"
.LASF807:
	.string	"SMAX"
.LASF489:
	.string	"purpose"
.LASF568:
	.string	"x_last_parm_insn"
.LASF655:
	.string	"TI_INTHI_TYPE"
.LASF1008:
	.string	"varray_head_tag"
.LASF881:
	.string	"current"
.LASF521:
	.string	"pointer_to"
.LASF1182:
	.string	"allocate_bb_life_data"
.LASF629:
	.string	"weak_flag"
.LASF646:
	.string	"saved_tree"
.LASF1040:
	.string	"x_cur_insn_uid"
.LASF491:
	.string	"tree_vec"
.LASF1054:
	.string	"x_pending_chain"
.LASF613:
	.string	"filename"
.LASF1229:
	.string	"plusconst"
.LASF851:
	.string	"SS_TRUNCATE"
.LASF316:
	.string	"POSTDECREMENT_EXPR"
.LASF916:
	.string	"REG_EXEC_COUNT"
.LASF404:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF577:
	.string	"no_debugging_symbols"
.LASF1078:
	.string	"TV_GCSE"
.LASF1118:
	.string	"find_regno_partial_param"
.LASF408:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1249:
	.string	"const_tiny_rtx"
.LASF1204:
	.string	"call_pat"
.LASF855:
	.string	"base_after_vec"
.LASF1217:
	.string	"inner_mode"
.LASF72:
	.string	"__off64_t"
.LASF1081:
	.string	"TV_BRANCH_PROB"
.LASF704:
	.string	"TI_MAX"
.LASF151:
	.string	"V4DImode"
.LASF484:
	.string	"maybe_empty_object"
.LASF441:
	.string	"nothrow_flag"
.LASF1194:
	.string	"cond"
.LASF79:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF320:
	.string	"TRY_FINALLY_EXPR"
.LASF97:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF961:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF994:
	.string	"reg_info_def"
.LASF914:
	.string	"REG_DEP_OUTPUT"
.LASF84:
	.string	"_IO_buf_end"
.LASF523:
	.string	"symtab"
.LASF749:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF850:
	.string	"US_MINUS"
.LASF689:
	.string	"TI_UV8QI_TYPE"
.LASF546:
	.string	"return_rtx"
.LASF286:
	.string	"EQ_EXPR"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF224:
	.string	"COMPONENT_REF"
.LASF833:
	.string	"SIGN_EXTRACT"
.LASF645:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF1268:
	.string	"regs_may_share"
.LASF1002:
	.string	"live_length"
.LASF245:
	.string	"MINUS_EXPR"
.LASF774:
	.string	"CLOBBER"
.LASF527:
	.string	"next_variant"
.LASF1017:
	.string	"edge_def"
.LASF103:
	.string	"_mode"
.LASF181:
	.string	"MODE_VECTOR_INT"
.LASF80:
	.string	"_IO_write_base"
.LASF918:
	.string	"REG_SAVE_AREA"
.LASF842:
	.string	"CALL_PLACEHOLDER"
.LASF534:
	.string	"function"
.LASF368:
	.string	"BUILT_IN_STRSPN"
.LASF159:
	.string	"V4SFmode"
.LASF1174:
	.string	"rescan"
.LASF232:
	.string	"COMPOUND_EXPR"
.LASF601:
	.string	"instrument_entry_exit"
.LASF659:
	.string	"TI_UINTQI_TYPE"
.LASF564:
	.string	"x_frame_offset"
.LASF387:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF509:
	.string	"size_unit"
.LASF403:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF796:
	.string	"PLUS"
.LASF355:
	.string	"BUILT_IN_RINDEX"
.LASF1095:
	.string	"TV_SCHED2"
.LASF1071:
	.string	"TV_LEX"
.LASF1254:
	.string	"call_used_regs"
.LASF812:
	.string	"POST_DEC"
.LASF970:
	.string	"bits"
.LASF116:
	.string	"HImode"
.LASF898:
	.string	"rtunion"
.LASF939:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF1025:
	.string	"UPDATE_LIFE_LOCAL"
.LASF179:
	.string	"MODE_COMPLEX_INT"
.LASF1055:
	.string	"eh_status"
.LASF332:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1032:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF965:
	.string	"GR_VIRTUAL_CFA"
.LASF198:
	.string	"POINTER_TYPE"
.LASF266:
	.string	"FFS_EXPR"
.LASF1259:
	.string	"basic_block_info"
.LASF904:
	.string	"REG_WAS_0"
.LASF190:
	.string	"VOID_TYPE"
.LASF302:
	.string	"VIEW_CONVERT_EXPR"
.LASF653:
	.string	"TI_ERROR_MARK"
.LASF925:
	.string	"REG_NORETURN"
.LASF105:
	.string	"_IO_marker"
.LASF130:
	.string	"XFmode"
.LASF591:
	.string	"needs_context"
.LASF924:
	.string	"REG_MAYBE_DEAD"
.LASF1108:
	.string	"TIMEVAR_LAST"
.LASF469:
	.string	"limit"
.LASF160:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF624:
	.string	"defer_output"
.LASF701:
	.string	"TI_V2SF_TYPE"
.LASF1096:
	.string	"TV_MACH_DEP"
.LASF899:
	.string	"reg_note"
.LASF595:
	.string	"calls_eh_return"
.LASF1187:
	.string	"label"
.LASF574:
	.string	"x_target_temp_slot_level"
.LASF542:
	.string	"pretend_args_size"
.LASF530:
	.string	"context"
.LASF1269:
	.string	"optimize"
.LASF727:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF243:
	.string	"WITH_RECORD_EXPR"
.LASF1033:
	.string	"last"
.LASF652:
	.string	"tree_index"
.LASF604:
	.string	"varargs"
.LASF1278:
	.string	"rtl_dump_file"
.LASF1200:
	.string	"call_ok"
.LASF496:
	.string	"handler_block_flag"
.LASF637:
	.string	"non_addressable"
.LASF31:
	.string	"CREG"
.LASF1076:
	.string	"TV_JUMP"
.LASF419:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF606:
	.string	"x_whole_function_mode_p"
.LASF479:
	.string	"alignment_mask"
.LASF770:
	.string	"UNSPEC_VOLATILE"
.LASF229:
	.string	"ARRAY_RANGE_REF"
.LASF726:
	.string	"TYPE_KIND_LAST"
.LASF366:
	.string	"BUILT_IN_STRSTR"
.LASF623:
	.string	"common_flag"
.LASF481:
	.string	"freefun"
.LASF942:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF631:
	.string	"no_instrument_function_entry_exit"
.LASF438:
	.string	"asm_written_flag"
.LASF1213:
	.string	"regno_first"
.LASF11:
	.string	"rtx_def"
.LASF1121:
	.string	"check_function_return_warnings"
.LASF184:
	.string	"tree_code"
.LASF1195:
	.string	"init_propagate_block_info"
.LASF126:
	.string	"HFmode"
.LASF402:
	.string	"BUILT_IN_FPRINTF"
.LASF433:
	.string	"constant_flag"
.LASF374:
	.string	"BUILT_IN_COS"
.LASF777:
	.string	"TRAP_IF"
.LASF1237:
	.string	"pprev"
.LASF1086:
	.string	"TV_MODE_SWITCH"
.LASF927:
	.string	"REG_SETJMP"
.LASF446:
	.string	"bounded_flag"
.LASF221:
	.string	"RESULT_DECL"
.LASF319:
	.string	"TRY_CATCH_EXPR"
.LASF922:
	.string	"REG_EH_REGION"
.LASF694:
	.string	"TI_V4SF_TYPE"
.LASF488:
	.string	"tree_list"
.LASF1112:
	.string	"reg_next_use"
.LASF905:
	.string	"REG_RETVAL"
.LASF138:
	.string	"CQImode"
.LASF584:
	.string	"stack_alignment_needed"
.LASF912:
	.string	"REG_LABEL"
.LASF73:
	.string	"char"
.LASF588:
	.string	"returns_struct"
.LASF136:
	.string	"XCmode"
.LASF562:
	.string	"x_arg_pointer_save_area"
.LASF414:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF333:
	.string	"built_in_function"
.LASF560:
	.string	"x_tail_recursion_label"
.LASF301:
	.string	"NON_LVALUE_EXPR"
.LASF868:
	.string	"rtwint"
.LASF476:
	.string	"next_free"
.LASF633:
	.string	"malloc_flag"
.LASF998:
	.string	"sets"
.LASF83:
	.string	"_IO_buf_base"
.LASF805:
	.string	"ROTATERT"
.LASF706:
	.string	"itk_char"
.LASF511:
	.string	"precision"
.LASF1169:
	.string	"qend"
.LASF791:
	.string	"ADDRESSOF"
.LASF226:
	.string	"INDIRECT_REF"
.LASF144:
	.string	"V2QImode"
.LASF324:
	.string	"RETURN_EXPR"
.LASF348:
	.string	"BUILT_IN_CIMAG"
.LASF389:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1036:
	.string	"x_reg_rtx_no"
.LASF122:
	.string	"PHImode"
.LASF78:
	.string	"_IO_read_end"
.LASF515:
	.string	"transparent_union_flag"
.LASF1029:
	.string	"modified"
.LASF1045:
	.string	"regno_decl"
.LASF719:
	.string	"size_type_kind"
.LASF979:
	.string	"BITMAP_IOR_COMPL"
.LASF143:
	.string	"COImode"
.LASF810:
	.string	"PRE_DEC"
.LASF1027:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF75:
	.string	"_IO_FILE"
.LASF941:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF959:
	.string	"GR_HARD_FRAME_POINTER"
.LASF520:
	.string	"align"
.LASF837:
	.string	"RANGE_INFO"
.LASF891:
	.string	"global_live_at_start"
.LASF1116:
	.string	"regno_to_find"
.LASF416:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF594:
	.string	"calls_alloca"
.LASF673:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF573:
	.string	"x_var_temp_slot_level"
.LASF174:
	.string	"MODE_RANDOM"
.LASF848:
	.string	"US_PLUS"
.LASF164:
	.string	"BLKmode"
.LASF133:
	.string	"HCmode"
.LASF237:
	.string	"BIND_EXPR"
.LASF309:
	.string	"FDESC_EXPR"
.LASF692:
	.string	"TI_UV2SF_TYPE"
.LASF244:
	.string	"PLUS_EXPR"
.LASF698:
	.string	"TI_V8QI_TYPE"
.LASF1014:
	.string	"regset_head"
.LASF703:
	.string	"TI_MAIN_IDENTIFIER"
.LASF365:
	.string	"BUILT_IN_STRLEN"
.LASF1064:
	.string	"TV_GC"
.LASF206:
	.string	"UNION_TYPE"
.LASF558:
	.string	"x_stack_slot_list"
.LASF845:
	.string	"VEC_CONCAT"
.LASF610:
	.string	"uses_eh_lsda"
.LASF308:
	.string	"ENTRY_VALUE_EXPR"
.LASF383:
	.string	"BUILT_IN_NEXT_ARG"
.LASF98:
	.string	"__pad1"
.LASF100:
	.string	"__pad3"
.LASF101:
	.string	"__pad4"
.LASF102:
	.string	"__pad5"
.LASF917:
	.string	"REG_NOALIAS"
.LASF621:
	.string	"ignored_flag"
.LASF758:
	.string	"ATTR_FLAG"
.LASF841:
	.string	"CONSTANT_P_RTX"
.LASF171:
	.string	"CCFPUmode"
.LASF1066:
	.string	"TV_CFG"
.LASF901:
	.string	"REG_INC"
.LASF748:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1132:
	.string	"indx_"
.LASF984:
	.string	"sbitmap"
.LASF628:
	.string	"artificial_flag"
.LASF565:
	.string	"x_context_display"
.LASF88:
	.string	"_markers"
.LASF108:
	.string	"_pos"
.LASF1201:
	.string	"notes"
.LASF752:
	.string	"ADDRESS"
.LASF1281:
	.string	"regset_bytes"
.LASF1103:
	.string	"TV_SSA_DCE"
.LASF289:
	.string	"ORDERED_EXPR"
.LASF1065:
	.string	"TV_DUMP"
.LASF427:
	.string	"BUILT_IN_VA_COPY"
.LASF1205:
	.string	"regno_uninitialized"
.LASF578:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF485:
	.string	"alloc_failed"
.LASF940:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF1263:
	.string	"basic_block_for_insn"
.LASF990:
	.string	"cptr"
.LASF200:
	.string	"REFERENCE_TYPE"
.LASF1120:
	.string	"insn"
.LASF1088:
	.string	"TV_LOCAL_ALLOC"
.LASF556:
	.string	"x_return_label"
.LASF1168:
	.string	"qtail"
.LASF501:
	.string	"supercontext"
.LASF428:
	.string	"BUILT_IN_EXPECT"
.LASF1087:
	.string	"TV_SCHED"
.LASF526:
	.string	"maxval"
.LASF288:
	.string	"UNORDERED_EXPR"
.LASF1137:
	.string	"update_life_info"
.LASF725:
	.string	"UBITSIZETYPE"
.LASF686:
	.string	"TI_UV4SF_TYPE"
.LASF1143:
	.string	"changed"
.LASF1003:
	.string	"calls_crossed"
.LASF1140:
	.string	"prop_flags"
.LASF852:
	.string	"US_TRUNCATE"
.LASF450:
	.string	"lang_flag_2"
.LASF369:
	.string	"BUILT_IN_STRCSPN"
.LASF296:
	.string	"SET_LE_EXPR"
.LASF702:
	.string	"TI_V16QI_TYPE"
.LASF56:
	.string	"nregs"
.LASF715:
	.string	"itk_long_long"
.LASF809:
	.string	"UMAX"
.LASF315:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF894:
	.string	"loop_depth"
.LASF861:
	.string	"scale"
.LASF614:
	.string	"linenum"
.LASF115:
	.string	"QImode"
.LASF1190:
	.string	"before"
.LASF879:
	.string	"bitmap_head_def"
.LASF1241:
	.string	"target_flags"
.LASF292:
	.string	"UNGT_EXPR"
.LASF795:
	.string	"COMPARE"
.LASF1012:
	.string	"data"
.LASF957:
	.string	"GR_STACK_POINTER"
.LASF1090:
	.string	"TV_RELOAD_CSE_REGS"
.LASF519:
	.string	"user_align"
.LASF336:
	.string	"BUILT_IN_LABS"
.LASF127:
	.string	"TQFmode"
.LASF1135:
	.string	"word_"
.LASF1180:
	.string	"initialize_uninitialized_subregs"
.LASF884:
	.string	"head"
.LASF435:
	.string	"volatile_flag"
.LASF1166:
	.string	"queue"
.LASF55:
	.string	"words"
.LASF359:
	.string	"BUILT_IN_STRCAT"
.LASF375:
	.string	"BUILT_IN_SQRTF"
.LASF858:
	.string	"min_after_base"
.LASF378:
	.string	"BUILT_IN_SQRTL"
.LASF991:
	.string	"sched"
.LASF712:
	.string	"itk_unsigned_int"
.LASF533:
	.string	"off_align"
.LASF607:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF331:
	.string	"EXC_PTR_EXPR"
.LASF477:
	.string	"chunk_limit"
.LASF954:
	.string	"global_rtl_index"
.LASF353:
	.string	"BUILT_IN_FFS"
.LASF440:
	.string	"used_flag"
.LASF398:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF510:
	.string	"attributes"
.LASF697:
	.string	"TI_V8HI_TYPE"
.LASF1236:
	.string	"kill"
.LASF543:
	.string	"outgoing_args_size"
.LASF259:
	.string	"FIX_FLOOR_EXPR"
.LASF120:
	.string	"OImode"
.LASF444:
	.string	"private_flag"
.LASF405:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF982:
	.string	"bytes"
.LASF448:
	.string	"lang_flag_0"
.LASF449:
	.string	"lang_flag_1"
.LASF225:
	.string	"BIT_FIELD_REF"
.LASF451:
	.string	"lang_flag_3"
.LASF452:
	.string	"lang_flag_4"
.LASF453:
	.string	"lang_flag_5"
.LASF454:
	.string	"lang_flag_6"
.LASF639:
	.string	"lang_flag_7"
.LASF293:
	.string	"UNGE_EXPR"
.LASF649:
	.string	"pointer_alias_set"
.LASF844:
	.string	"VEC_SELECT"
.LASF340:
	.string	"BUILT_IN_LLABS"
.LASF690:
	.string	"TI_UV4HI_TYPE"
.LASF219:
	.string	"VAR_DECL"
.LASF494:
	.string	"operands"
.LASF1159:
	.string	"set_phi_alternative_reg"
.LASF233:
	.string	"MODIFY_EXPR"
.LASF1035:
	.string	"emit_status"
.LASF1221:
	.string	"blocknum"
.LASF487:
	.string	"tree_identifier"
.LASF182:
	.string	"MODE_VECTOR_FLOAT"
.LASF188:
	.string	"TREE_VEC"
.LASF815:
	.string	"POST_MODIFY"
.LASF995:
	.string	"first_uid"
.LASF1282:
	.string	"regset_size"
.LASF381:
	.string	"BUILT_IN_SAVEREGS"
.LASF1225:
	.string	"retry"
.LASF325:
	.string	"EXIT_EXPR"
.LASF343:
	.string	"BUILT_IN_CONJF"
.LASF268:
	.string	"RSHIFT_EXPR"
.LASF344:
	.string	"BUILT_IN_CONJL"
.LASF741:
	.string	"DEFINE_PEEPHOLE"
.LASF109:
	.string	"long long unsigned int"
.LASF948:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF864:
	.string	"offset"
.LASF862:
	.string	"addr_diff_vec_flags"
.LASF93:
	.string	"_cur_column"
.LASF737:
	.string	"MATCH_OP_DUP"
.LASF751:
	.string	"SEQUENCE"
.LASF186:
	.string	"IDENTIFIER_NODE"
.LASF483:
	.string	"use_extra_arg"
.LASF125:
	.string	"QFmode"
.LASF1163:
	.string	"calculate_global_regs_live"
.LASF644:
	.string	"section_name"
.LASF1219:
	.string	"some_was_dead"
.LASF545:
	.string	"args_info"
.LASF1139:
	.string	"extent"
.LASF290:
	.string	"UNLT_EXPR"
.LASF603:
	.string	"limit_stack"
.LASF209:
	.string	"LANG_TYPE"
.LASF778:
	.string	"RESX"
.LASF1020:
	.string	"dest"
.LASF766:
	.string	"PARALLEL"
.LASF1110:
	.string	"reg_live"
.LASF13:
	.string	"num_elem"
.LASF664:
	.string	"TI_INTEGER_ZERO"
.LASF86:
	.string	"_IO_backup_base"
.LASF816:
	.string	"UNORDERED"
.LASF172:
	.string	"MAX_MACHINE_MODE"
.LASF77:
	.string	"_IO_read_ptr"
.LASF711:
	.string	"itk_int"
.LASF1173:
	.string	"new_live_at_end_head"
.LASF382:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF443:
	.string	"public_flag"
.LASF783:
	.string	"CONST"
.LASF1044:
	.string	"regno_pointer_align"
.LASF832:
	.string	"SQRT"
.LASF512:
	.string	"string_flag"
.LASF956:
	.string	"GR_CC0"
.LASF1074:
	.string	"TV_VARCONST"
.LASF173:
	.string	"mode_class"
.LASF1177:
	.string	"find_regno_partial"
.LASF798:
	.string	"MULT"
.LASF204:
	.string	"SET_TYPE"
.LASF178:
	.string	"MODE_CC"
.LASF499:
	.string	"vars"
.LASF733:
	.string	"MATCH_SCRATCH"
.LASF1084:
	.string	"TV_IFCVT"
.LASF238:
	.string	"CALL_EXPR"
.LASF121:
	.string	"PQImode"
.LASF273:
	.string	"BIT_AND_EXPR"
.LASF312:
	.string	"REALPART_EXPR"
.LASF153:
	.string	"V8HImode"
.LASF820:
	.string	"UNGT"
.LASF571:
	.string	"x_temp_slots"
.LASF656:
	.string	"TI_INTSI_TYPE"
.LASF349:
	.string	"BUILT_IN_CIMAGF"
.LASF616:
	.string	"nonlocal_flag"
.LASF92:
	.string	"_old_offset"
.LASF447:
	.string	"deprecated_flag"
.LASF1261:
	.string	"flow_obstack"
.LASF1089:
	.string	"TV_GLOBAL_ALLOC"
.LASF1160:
	.string	"dest_regno"
.LASF786:
	.string	"SUBREG"
.LASF1117:
	.string	"retval"
.LASF517:
	.string	"restrict_flag"
.LASF593:
	.string	"calls_longjmp"
.LASF156:
	.string	"V16QImode"
.LASF472:
	.string	"obstack"
.LASF337:
	.string	"BUILT_IN_FABS"
.LASF1271:
	.string	"warn_return_type"
.LASF23:
	.string	"decl"
.LASF313:
	.string	"IMAGPART_EXPR"
.LASF110:
	.string	"long long int"
.LASF691:
	.string	"TI_UV2SI_TYPE"
.LASF647:
	.string	"inlined_fns"
.LASF717:
	.string	"itk_none"
.LASF906:
	.string	"REG_LIBCALL"
.LASF91:
	.string	"_flags2"
.LASF724:
	.string	"SBITSIZETYPE"
.LASF1208:
	.string	"invalidate_mems_from_autoinc"
.LASF132:
	.string	"QCmode"
.LASF784:
	.string	"VALUE"
.LASF764:
	.string	"NOTE"
.LASF241:
	.string	"CLEANUP_POINT_EXPR"
.LASF1104:
	.string	"TV_FROM_SSA"
.LASF1070:
	.string	"TV_CPP"
.LASF966:
	.string	"GR_MAX"
.LASF59:
	.string	"sse_nregs"
.LASF808:
	.string	"UMIN"
.LASF688:
	.string	"TI_UV8HI_TYPE"
.LASF211:
	.string	"REAL_CST"
.LASF412:
	.string	"BUILT_IN_ISLESS"
.LASF370:
	.string	"BUILT_IN_STRCHR"
.LASF967:
	.string	"HARD_REG_ELT_TYPE"
.LASF426:
	.string	"BUILT_IN_VA_END"
.LASF883:
	.string	"basic_block_def"
.LASF1252:
	.string	"reload_completed"
.LASF977:
	.string	"BITMAP_IOR"
.LASF522:
	.string	"reference_to"
.LASF260:
	.string	"FIX_ROUND_EXPR"
.LASF887:
	.string	"pred"
.LASF287:
	.string	"NE_EXPR"
.LASF1057:
	.string	"varasm_status"
.LASF390:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1094:
	.string	"TV_RENAME_REGISTERS"
.LASF377:
	.string	"BUILT_IN_COSF"
.LASF195:
	.string	"ENUMERAL_TYPE"
.LASF1128:
	.string	"verify_wide_reg"
.LASF1034:
	.string	"sequence_rtl_expr"
.LASF935:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF971:
	.string	"bitmap_element"
.LASF550:
	.string	"x_function_call_count"
.LASF139:
	.string	"CHImode"
.LASF346:
	.string	"BUILT_IN_CREALF"
.LASF231:
	.string	"CONSTRUCTOR"
.LASF497:
	.string	"abstract_flag"
.LASF347:
	.string	"BUILT_IN_CREALL"
.LASF630:
	.string	"non_addr_const_p"
.LASF467:
	.string	"elements"
.LASF1043:
	.string	"regno_pointer_align_length"
.LASF1038:
	.string	"x_first_insn"
.LASF707:
	.string	"itk_signed_char"
.LASF1052:
	.string	"x_apply_args_value"
.LASF1255:
	.string	"global_regs"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF780:
	.string	"CONST_DOUBLE"
.LASF1146:
	.string	"free_basic_block_vars"
.LASF392:
	.string	"BUILT_IN_SETJMP"
.LASF1155:
	.string	"mark_reg"
.LASF409:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF713:
	.string	"itk_long"
.LASF168:
	.string	"CCNOmode"
.LASF1080:
	.string	"TV_CSE2"
.LASF149:
	.string	"V4HImode"
.LASF818:
	.string	"UNEQ"
.LASF189:
	.string	"BLOCK"
.LASF801:
	.string	"ASHIFT"
.LASF685:
	.string	"TI_VOID_LIST_NODE"
.LASF806:
	.string	"SMIN"
.LASF1127:
	.string	"__FUNCTION__"
.LASF1193:
	.string	"libcall_is_dead"
.LASF793:
	.string	"IF_THEN_ELSE"
.LASF619:
	.string	"bit_field_flag"
.LASF397:
	.string	"BUILT_IN_PUTS"
.LASF1276:
	.string	"frame_pointer_needed"
.LASF622:
	.string	"in_system_header_flag"
.LASF1077:
	.string	"TV_CSE"
.LASF625:
	.string	"transparent_union"
.LASF728:
	.string	"UNKNOWN"
.LASF947:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF539:
	.string	"outer"
.LASF648:
	.string	"vindex"
.LASF482:
	.string	"extra_arg"
.LASF734:
	.string	"MATCH_DUP"
.LASF944:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1041:
	.string	"x_last_linenum"
.LASF213:
	.string	"VECTOR_CST"
.LASF63:
	.string	"unsigned int"
.LASF305:
	.string	"RTL_EXPR"
.LASF1063:
	.string	"TV_TOTAL"
.LASF866:
	.string	"tree_node"
.LASF1149:
	.string	"note"
.LASF555:
	.string	"x_cleanup_label"
.LASF811:
	.string	"PRE_INC"
.LASF294:
	.string	"UNEQ_EXPR"
.LASF362:
	.string	"BUILT_IN_STRNCPY"
.LASF857:
	.string	"max_after_vec"
.LASF191:
	.string	"INTEGER_TYPE"
.LASF819:
	.string	"UNGE"
.LASF1037:
	.string	"x_first_label_num"
.LASF615:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF298:
	.string	"RANGE_EXPR"
.LASF609:
	.string	"uses_pic_offset_table"
.LASF599:
	.string	"has_computed_jump"
.LASF372:
	.string	"BUILT_IN_SQRT"
.LASF227:
	.string	"BUFFER_REF"
.LASF1039:
	.string	"x_last_insn"
.LASF1111:
	.string	"new_set"
.LASF470:
	.string	"prev"
.LASF94:
	.string	"_vtable_offset"
.LASF310:
	.string	"COMPLEX_EXPR"
.LASF418:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF291:
	.string	"UNLE_EXPR"
.LASF585:
	.string	"preferred_stack_boundary"
.LASF113:
	.string	"VOIDmode"
.LASF929:
	.string	"REG_VTABLE_REF"
.LASF873:
	.string	"rt_addr_diff_vec_flags"
.LASF684:
	.string	"TI_VA_LIST_TYPE"
.LASF964:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF836:
	.string	"LO_SUM"
.LASF1024:
	.string	"update_life_extent"
.LASF1283:
	.string	"lang_missing_noreturn_ok_p"
.LASF363:
	.string	"BUILT_IN_STRCMP"
.LASF192:
	.string	"REAL_TYPE"
.LASF669:
	.string	"TI_SIZE_ONE"
.LASF1019:
	.string	"succ_next"
.LASF329:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
