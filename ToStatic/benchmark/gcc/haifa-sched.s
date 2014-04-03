	.file	"haifa-sched.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 haifa-sched.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.local	issue_rate
	.comm	issue_rate,4,4
	.local	sched_verbose_param
	.comm	sched_verbose_param,4,4
	.globl	sched_verbose
	.bss
	.align 4
	.type	sched_verbose, @object
	.size	sched_verbose, 4
sched_verbose:
	.zero	4
	.globl	sched_dump
	.align 8
	.type	sched_dump, @object
	.size	sched_dump, 8
sched_dump:
	.zero	8
	.local	old_max_uid
	.comm	old_max_uid,4,4
	.section	.rodata
.LC0:
	.string	"verbose"
	.align 8
.LC1:
	.string	"fix_sched_param: unknown param: %s"
	.text
	.globl	fix_sched_param
	.type	fix_sched_param, @function
fix_sched_param:
.LFB2:
	.file 1 "haifa-sched.c"
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# param, param
	movq	%rsi, -16(%rbp)	# val, val
	.loc 1 187 0
	movq	-8(%rbp), %rax	# param, tmp61
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	strcmp	#
	testl	%eax, %eax	# D.12642
	jne	.L2	#,
	.loc 1 188 0
	movq	-16(%rbp), %rax	# val, tmp62
	movq	%rax, %rdi	# tmp62,
	call	atoi	#
	movl	%eax, sched_verbose_param(%rip)	# sched_verbose_param.0, sched_verbose_param
	jmp	.L1	#
.L2:
	.loc 1 190 0
	movq	-8(%rbp), %rax	# param, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1:
	.loc 1 191 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fix_sched_param, .-fix_sched_param
	.comm	h_i_d,8,8
	.local	line_note_head
	.comm	line_note_head,8,8
	.local	note_list
	.comm	note_list,8,8
	.local	insn_queue
	.comm	insn_queue,1024,32
	.local	q_ptr
	.comm	q_ptr,4,4
	.local	q_size
	.comm	q_size,4,4
	.comm	current_sched_info,8,8
	.local	last_scheduled_insn
	.comm	last_scheduled_insn,8,8
	.globl	insn_unit
	.type	insn_unit, @function
insn_unit:
.LFB3:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 363 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.1
	movq	-24(%rbp), %rax	# insn, tmp79
	movl	8(%rax), %eax	# insn_5(D)->fld[0].rtint, D.12645
	movslq	%eax, %rdx	# D.12645, D.12646
	movq	%rdx, %rax	# D.12646, tmp80
	addq	%rax, %rax	# tmp80
	addq	%rdx, %rax	# D.12646, tmp80
	salq	$4, %rax	#, tmp81
	addq	%rcx, %rax	# h_i_d.1, D.12647
	movzwl	42(%rax), %eax	# _9->units, D.12648
	cwtl
	movl	%eax, -4(%rbp)	# tmp82, unit
	.loc 1 365 0
	cmpl	$0, -4(%rbp)	#, unit
	jne	.L5	#,
	.loc 1 367 0
	movq	-24(%rbp), %rax	# insn, tmp83
	movl	40(%rax), %eax	# insn_5(D)->fld[4].rtint, D.12645
	testl	%eax, %eax	# D.12645
	jns	.L7	#,
	.loc 1 367 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	%rax, %rdi	# tmp85,
	call	recog_memoized_1	#
.L7:
	.loc 1 372 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp86
	movl	40(%rax), %eax	# insn_5(D)->fld[4].rtint, D.12645
	testl	%eax, %eax	# D.12645
	jns	.L8	#,
	.loc 1 373 0
	movl	$-1, -4(%rbp)	#, unit
	jmp	.L9	#
.L8:
	.loc 1 376 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movq	%rax, %rdi	# tmp87,
	call	function_units_used	#
	movl	%eax, -4(%rbp)	# tmp88, unit
	.loc 1 378 0
	cmpl	$0, -4(%rbp)	#, unit
	js	.L9	#,
	.loc 1 379 0
	addl	$1, -4(%rbp)	#, unit
.L9:
	.loc 1 383 0
	cmpl	$0, -4(%rbp)	#, unit
	jns	.L10	#,
	.loc 1 385 0
	movl	-4(%rbp), %eax	# unit, tmp89
	andl	$-32768, %eax	#, D.12645
	testl	%eax, %eax	# D.12645
	jne	.L5	#,
.L10:
	.loc 1 386 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.3
	movq	-24(%rbp), %rax	# insn, tmp90
	movl	8(%rax), %eax	# insn_5(D)->fld[0].rtint, D.12645
	movslq	%eax, %rdx	# D.12645, D.12646
	movq	%rdx, %rax	# D.12646, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.12646, tmp91
	salq	$4, %rax	#, tmp92
	leaq	(%rcx,%rax), %rdx	#, D.12647
	movl	-4(%rbp), %eax	# unit, tmp93
	movw	%ax, 42(%rdx)	# D.12648, _24->units
.L5:
	.loc 1 388 0
	cmpl	$0, -4(%rbp)	#, unit
	jle	.L11	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# unit, tmp94
	subl	$1, %eax	#, iftmp.4
	jmp	.L12	#
.L11:
	.loc 1 388 0 discriminator 2
	movl	-4(%rbp), %eax	# unit, iftmp.4
.L12:
	.loc 1 389 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	insn_unit, .-insn_unit
	.type	blockage_range, @function
blockage_range:
.LFB4:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# unit, unit
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 401 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.6
	movq	-32(%rbp), %rax	# insn, tmp87
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.12649
	movslq	%eax, %rdx	# D.12649, D.12650
	movq	%rdx, %rax	# D.12650, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# D.12650, tmp88
	salq	$4, %rax	#, tmp89
	addq	%rcx, %rax	# h_i_d.6, D.12651
	movl	28(%rax), %eax	# _7->blockage, tmp90
	movl	%eax, -4(%rbp)	# tmp90, blockage
	.loc 1 404 0
	movl	-4(%rbp), %eax	# blockage, tmp91
	shrl	$16, %eax	#, D.12652
	movl	-20(%rbp), %edx	# unit, tmp92
	addl	$1, %edx	#, D.12649
	cmpl	%edx, %eax	# D.12649, D.12649
	je	.L15	#,
	.loc 1 406 0
	movl	-20(%rbp), %eax	# unit, tmp94
	movslq	%eax, %rdx	# tmp94, tmp93
	movq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp95
	addq	%rdx, %rax	# tmp93, tmp95
	salq	$3, %rax	#, tmp96
	addq	$function_units+56, %rax	#, tmp97
	movq	(%rax), %rax	# function_units[unit_11(D)].blockage_range_function, D.12653
	movq	-32(%rbp), %rdx	# insn, tmp98
	movq	%rdx, %rdi	# tmp98,
	call	*%rax	# D.12653
	movl	%eax, -8(%rbp)	# tmp99, range
	.loc 1 410 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.7
	movq	-32(%rbp), %rax	# insn, tmp100
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.12649
	movslq	%eax, %rdx	# D.12649, D.12650
	movq	%rdx, %rax	# D.12650, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.12650, tmp101
	salq	$4, %rax	#, tmp102
	addq	%rcx, %rax	# h_i_d.7, D.12651
	movl	-20(%rbp), %edx	# unit, tmp103
	addl	$1, %edx	#, D.12649
	sall	$8, %edx	#, D.12649
	movl	-8(%rbp), %ecx	# range, tmp104
	shrl	$16, %ecx	#, D.12652
	orl	%ecx, %edx	# D.12652, D.12652
	movl	%edx, %ecx	# D.12652, D.12652
	sall	$8, %ecx	#, D.12652
	movl	-8(%rbp), %edx	# range, tmp105
	movzwl	%dx, %edx	# tmp105, D.12652
	orl	%ecx, %edx	# D.12652, D.12652
	movl	%edx, 28(%rax)	# D.12652, _19->blockage
	jmp	.L16	#
.L15:
	.loc 1 413 0
	movl	-4(%rbp), %eax	# blockage, tmp106
	shrl	$8, %eax	#, D.12652
	movzbl	%al, %eax	# D.12652, D.12652
	sall	$16, %eax	#, D.12652
	movl	%eax, %edx	# D.12652, D.12652
	movl	-4(%rbp), %eax	# blockage, tmp107
	movzbl	%al, %eax	# tmp107, D.12652
	orl	%edx, %eax	# D.12652, tmp108
	movl	%eax, -8(%rbp)	# tmp108, range
.L16:
	.loc 1 415 0
	movl	-8(%rbp), %eax	# range, D.12652
	.loc 1 416 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	blockage_range, .-blockage_range
	.local	unit_last_insn
	.comm	unit_last_insn,624,32
	.local	unit_tick
	.comm	unit_tick,312,32
	.local	unit_n_insns
	.comm	unit_n_insns,104,32
	.globl	get_unit_last_insn
	.type	get_unit_last_insn, @function
get_unit_last_insn:
.LFB5:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# instance, instance
	.loc 1 437 0
	movl	-4(%rbp), %eax	# instance, tmp62
	cltq
	movq	unit_last_insn(,%rax,8), %rax	# unit_last_insn, D.12654
	.loc 1 438 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_unit_last_insn, .-get_unit_last_insn
	.type	clear_units, @function
clear_units:
.LFB6:
	.loc 1 444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 445 0
	movl	$624, %edx	#,
	movl	$0, %esi	#,
	movl	$unit_last_insn, %edi	#,
	call	memset	#
	.loc 1 446 0
	movl	$312, %edx	#,
	movl	$0, %esi	#,
	movl	$unit_tick, %edi	#,
	call	memset	#
	.loc 1 447 0
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movl	$unit_n_insns, %edi	#,
	call	memset	#
	.loc 1 448 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	clear_units, .-clear_units
	.globl	insn_issue_delay
	.type	insn_issue_delay, @function
insn_issue_delay:
.LFB7:
	.loc 1 455 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 456 0
	movl	$0, -8(%rbp)	#, delay
	.loc 1 457 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	%rax, %rdi	# tmp71,
	call	insn_unit	#
	movl	%eax, -4(%rbp)	# tmp72, unit
	.loc 1 463 0
	cmpl	$0, -4(%rbp)	#, unit
	js	.L22	#,
	.loc 1 465 0
	movl	-4(%rbp), %eax	# unit, tmp74
	movslq	%eax, %rdx	# tmp74, tmp73
	movq	%rdx, %rax	# tmp73, tmp75
	salq	$3, %rax	#, tmp75
	addq	%rdx, %rax	# tmp73, tmp75
	salq	$3, %rax	#, tmp76
	addq	$function_units+56, %rax	#, tmp77
	movq	(%rax), %rax	# function_units[unit_10].blockage_range_function, D.12655
	testq	%rax, %rax	# D.12655
	je	.L24	#,
	.loc 1 466 0 discriminator 1
	movl	-4(%rbp), %eax	# unit, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp81
	addq	$function_units+64, %rax	#, tmp82
	movq	(%rax), %rax	# function_units[unit_10].blockage_function, D.12656
	.loc 1 465 0 discriminator 1
	testq	%rax, %rax	# D.12656
	je	.L24	#,
	.loc 1 467 0
	movl	-4(%rbp), %eax	# unit, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp86
	addq	$function_units+64, %rax	#, tmp87
	movq	(%rax), %rax	# function_units[unit_10].blockage_function, D.12656
	movq	-24(%rbp), %rcx	# insn, tmp88
	movq	-24(%rbp), %rdx	# insn, tmp89
	movq	%rcx, %rsi	# tmp88,
	movq	%rdx, %rdi	# tmp89,
	call	*%rax	# D.12656
	movl	%eax, -8(%rbp)	# tmp90, delay
	jmp	.L24	#
.L22:
	.loc 1 470 0
	movl	$0, -12(%rbp)	#, i
	notl	-4(%rbp)	# unit
	jmp	.L25	#
.L29:
	.loc 1 471 0
	movl	-4(%rbp), %eax	# unit, tmp91
	andl	$1, %eax	#, D.12657
	testl	%eax, %eax	# D.12657
	je	.L26	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	addq	$function_units+56, %rax	#, tmp96
	movq	(%rax), %rax	# function_units[i_1].blockage_range_function, D.12655
	testq	%rax, %rax	# D.12655
	je	.L26	#,
	.loc 1 472 0 is_stmt 1
	movl	-12(%rbp), %eax	# i, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp99
	addq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	addq	$function_units+64, %rax	#, tmp101
	movq	(%rax), %rax	# function_units[i_1].blockage_function, D.12656
	testq	%rax, %rax	# D.12656
	je	.L26	#,
	.loc 1 473 0
	movl	-12(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, tmp102
	movq	%rdx, %rax	# tmp102, tmp104
	salq	$3, %rax	#, tmp104
	addq	%rdx, %rax	# tmp102, tmp104
	salq	$3, %rax	#, tmp105
	addq	$function_units+64, %rax	#, tmp106
	movq	(%rax), %rax	# function_units[i_1].blockage_function, D.12656
	movq	-24(%rbp), %rcx	# insn, tmp107
	movq	-24(%rbp), %rdx	# insn, tmp108
	movq	%rcx, %rsi	# tmp107,
	movq	%rdx, %rdi	# tmp108,
	call	*%rax	# D.12656
	cmpl	-8(%rbp), %eax	# delay, D.12657
	jl	.L27	#,
	.loc 1 473 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp111
	addq	%rdx, %rax	# tmp109, tmp111
	salq	$3, %rax	#, tmp112
	addq	$function_units+64, %rax	#, tmp113
	movq	(%rax), %rax	# function_units[i_1].blockage_function, D.12656
	movq	-24(%rbp), %rcx	# insn, tmp114
	movq	-24(%rbp), %rdx	# insn, tmp115
	movq	%rcx, %rsi	# tmp114,
	movq	%rdx, %rdi	# tmp115,
	call	*%rax	# D.12656
	jmp	.L28	#
.L27:
	.loc 1 473 0 discriminator 2
	movl	-8(%rbp), %eax	# delay, iftmp.5
.L28:
	.loc 1 473 0 discriminator 3
	movl	%eax, -8(%rbp)	# iftmp.5, delay
.L26:
	.loc 1 470 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
	sarl	-4(%rbp)	# unit
.L25:
	.loc 1 470 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, unit
	jne	.L29	#,
.L24:
	.loc 1 475 0 is_stmt 1
	movl	-8(%rbp), %eax	# delay, D.12657
	.loc 1 476 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	insn_issue_delay, .-insn_issue_delay
	.globl	actual_hazard_this_instance
	.type	actual_hazard_this_instance, @function
actual_hazard_this_instance:
.LFB8:
	.loc 1 491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# unit, unit
	movl	%esi, -24(%rbp)	# instance, instance
	movq	%rdx, -32(%rbp)	# insn, insn
	movl	%ecx, -36(%rbp)	# clock, clock
	movl	%r8d, -40(%rbp)	# cost, cost
	.loc 1 492 0
	movl	-24(%rbp), %eax	# instance, tmp76
	cltq
	movl	unit_tick(,%rax,4), %eax	# unit_tick, tmp77
	movl	%eax, -4(%rbp)	# tmp77, tick
	.loc 1 494 0
	movl	-36(%rbp), %eax	# clock, tmp78
	movl	-4(%rbp), %edx	# tick, tmp79
	subl	%eax, %edx	# tmp78, D.12658
	movl	%edx, %eax	# D.12658, D.12658
	cmpl	-40(%rbp), %eax	# cost, D.12658
	jle	.L32	#,
	.loc 1 505 0
	movl	-20(%rbp), %eax	# unit, tmp81
	movslq	%eax, %rdx	# tmp81, tmp80
	movq	%rdx, %rax	# tmp80, tmp82
	salq	$3, %rax	#, tmp82
	addq	%rdx, %rax	# tmp80, tmp82
	salq	$3, %rax	#, tmp83
	addq	$function_units+56, %rax	#, tmp84
	movq	(%rax), %rax	# function_units[unit_8(D)].blockage_range_function, D.12659
	testq	%rax, %rax	# D.12659
	je	.L33	#,
	.loc 1 507 0
	movl	-20(%rbp), %eax	# unit, tmp86
	movslq	%eax, %rdx	# tmp86, tmp85
	movq	%rdx, %rax	# tmp85, tmp87
	salq	$3, %rax	#, tmp87
	addq	%rdx, %rax	# tmp85, tmp87
	salq	$3, %rax	#, tmp88
	addq	$function_units+64, %rax	#, tmp89
	movq	(%rax), %rax	# function_units[unit_8(D)].blockage_function, D.12660
	testq	%rax, %rax	# D.12660
	je	.L34	#,
	.loc 1 508 0
	movl	-20(%rbp), %eax	# unit, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp93
	addq	$function_units+64, %rax	#, tmp94
	movq	(%rax), %rax	# function_units[unit_8(D)].blockage_function, D.12660
	.loc 1 509 0
	movl	-24(%rbp), %edx	# instance, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	movq	unit_last_insn(,%rdx,8), %rdx	# unit_last_insn, D.12661
	movq	-32(%rbp), %rcx	# insn, tmp97
	movq	%rcx, %rsi	# tmp97,
	movq	%rdx, %rdi	# D.12661,
	call	*%rax	# D.12660
	movl	%eax, %ecx	#, D.12658
	.loc 1 510 0
	movl	-20(%rbp), %eax	# unit, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	addq	$function_units+48, %rax	#, tmp102
	movl	(%rax), %eax	# function_units[unit_8(D)].max_blockage, D.12658
	subl	%eax, %ecx	# D.12658, D.12658
	movl	%ecx, %eax	# D.12658, D.12658
	.loc 1 508 0
	addl	%eax, -4(%rbp)	# D.12658, tick
	jmp	.L33	#
.L34:
	.loc 1 512 0
	movq	-32(%rbp), %rdx	# insn, tmp103
	movl	-20(%rbp), %eax	# unit, tmp104
	movq	%rdx, %rsi	# tmp103,
	movl	%eax, %edi	# tmp104,
	call	blockage_range	#
	movzwl	%ax, %ecx	# D.12658, D.12658
	.loc 1 513 0
	movl	-20(%rbp), %eax	# unit, tmp106
	movslq	%eax, %rdx	# tmp106, tmp105
	movq	%rdx, %rax	# tmp105, tmp107
	salq	$3, %rax	#, tmp107
	addq	%rdx, %rax	# tmp105, tmp107
	salq	$3, %rax	#, tmp108
	addq	$function_units+48, %rax	#, tmp109
	movl	(%rax), %eax	# function_units[unit_8(D)].max_blockage, D.12658
	subl	%eax, %ecx	# D.12658, D.12658
	movl	%ecx, %eax	# D.12658, D.12658
	.loc 1 512 0
	addl	%eax, -4(%rbp)	# D.12658, tick
.L33:
	.loc 1 515 0
	movl	-36(%rbp), %eax	# clock, tmp110
	movl	-4(%rbp), %edx	# tick, tmp111
	subl	%eax, %edx	# tmp110, D.12658
	movl	%edx, %eax	# D.12658, D.12658
	cmpl	-40(%rbp), %eax	# cost, D.12658
	jle	.L32	#,
	.loc 1 516 0
	movl	-36(%rbp), %eax	# clock, tmp116
	movl	-4(%rbp), %edx	# tick, tmp117
	subl	%eax, %edx	# tmp116, tmp115
	movl	%edx, %eax	# tmp115, tmp115
	movl	%eax, -40(%rbp)	# tmp115, cost
.L32:
	.loc 1 518 0
	movl	-40(%rbp), %eax	# cost, D.12658
	.loc 1 519 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	actual_hazard_this_instance, .-actual_hazard_this_instance
	.type	schedule_unit, @function
schedule_unit:
.LFB9:
	.loc 1 528 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# unit, unit
	movq	%rsi, -32(%rbp)	# insn, insn
	movl	%edx, -24(%rbp)	# clock, clock
	.loc 1 531 0
	cmpl	$0, -20(%rbp)	#, unit
	js	.L37	#,
.LBB2:
	.loc 1 533 0
	movl	-20(%rbp), %eax	# unit, tmp64
	movl	%eax, -4(%rbp)	# tmp64, instance
	.loc 1 537 0
	movl	-20(%rbp), %eax	# unit, tmp66
	movslq	%eax, %rdx	# tmp66, tmp65
	movq	%rdx, %rax	# tmp65, tmp67
	salq	$3, %rax	#, tmp67
	addq	%rdx, %rax	# tmp65, tmp67
	salq	$3, %rax	#, tmp68
	addq	$function_units, %rax	#, tmp69
	movl	12(%rax), %eax	# function_units[unit_5(D)].multiplicity, D.12663
	subl	$1, %eax	#, tmp70
	movl	%eax, -8(%rbp)	# tmp70, i
	jmp	.L38	#
.L41:
	.loc 1 539 0
	movl	-24(%rbp), %ecx	# clock, tmp71
	movq	-32(%rbp), %rdx	# insn, tmp72
	movl	-4(%rbp), %esi	# instance, tmp73
	movl	-20(%rbp), %eax	# unit, tmp74
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp74,
	call	actual_hazard_this_instance	#
	testl	%eax, %eax	# D.12663
	jne	.L39	#,
	.loc 1 540 0
	jmp	.L40	#
.L39:
	.loc 1 541 0
	addl	$26, -4(%rbp)	#, instance
	.loc 1 537 0
	subl	$1, -8(%rbp)	#, i
.L38:
	.loc 1 537 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jg	.L41	#,
.L40:
	.loc 1 544 0 is_stmt 1
	movl	-4(%rbp), %eax	# instance, tmp76
	cltq
	movq	-32(%rbp), %rdx	# insn, tmp77
	movq	%rdx, unit_last_insn(,%rax,8)	# tmp77, unit_last_insn
	.loc 1 545 0
	movl	-20(%rbp), %eax	# unit, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$3, %rax	#, tmp81
	addq	$function_units+48, %rax	#, tmp82
	movl	(%rax), %edx	# function_units[unit_5(D)].max_blockage, D.12663
	movl	-24(%rbp), %eax	# clock, tmp83
	addl	%eax, %edx	# tmp83, D.12663
	movl	-4(%rbp), %eax	# instance, tmp85
	cltq
	movl	%edx, unit_tick(,%rax,4)	# D.12663, unit_tick
.LBE2:
	jmp	.L36	#
.L37:
	.loc 1 548 0
	movl	$0, -8(%rbp)	#, i
	notl	-20(%rbp)	# unit
	jmp	.L43	#
.L45:
	.loc 1 549 0
	movl	-20(%rbp), %eax	# unit, tmp86
	andl	$1, %eax	#, D.12663
	testl	%eax, %eax	# D.12663
	je	.L44	#,
	.loc 1 550 0
	movl	-24(%rbp), %edx	# clock, tmp87
	movq	-32(%rbp), %rcx	# insn, tmp88
	movl	-8(%rbp), %eax	# i, tmp89
	movq	%rcx, %rsi	# tmp88,
	movl	%eax, %edi	# tmp89,
	call	schedule_unit	#
.L44:
	.loc 1 548 0
	addl	$1, -8(%rbp)	#, i
	sarl	-20(%rbp)	# unit
.L43:
	.loc 1 548 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, unit
	jne	.L45	#,
.L36:
	.loc 1 551 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	schedule_unit, .-schedule_unit
	.type	actual_hazard, @function
actual_hazard:
.LFB10:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# unit, unit
	movq	%rsi, -32(%rbp)	# insn, insn
	movl	%edx, -24(%rbp)	# clock, clock
	movl	%ecx, -36(%rbp)	# cost, cost
	.loc 1 563 0
	cmpl	$0, -20(%rbp)	#, unit
	js	.L47	#,
.LBB3:
	.loc 1 566 0
	movl	-20(%rbp), %eax	# unit, tmp63
	movl	%eax, -12(%rbp)	# tmp63, instance
	.loc 1 567 0
	movl	-36(%rbp), %edi	# cost, tmp64
	movl	-24(%rbp), %ecx	# clock, tmp65
	movq	-32(%rbp), %rdx	# insn, tmp66
	movl	-12(%rbp), %esi	# instance, tmp67
	movl	-20(%rbp), %eax	# unit, tmp68
	movl	%edi, %r8d	# tmp64,
	movl	%eax, %edi	# tmp68,
	call	actual_hazard_this_instance	#
	movl	%eax, -8(%rbp)	# tmp69, best_cost
	.loc 1 572 0
	movl	-8(%rbp), %eax	# best_cost, tmp70
	cmpl	-36(%rbp), %eax	# cost, tmp70
	jle	.L48	#,
	.loc 1 574 0
	movl	-20(%rbp), %eax	# unit, tmp72
	movslq	%eax, %rdx	# tmp72, tmp71
	movq	%rdx, %rax	# tmp71, tmp73
	salq	$3, %rax	#, tmp73
	addq	%rdx, %rax	# tmp71, tmp73
	salq	$3, %rax	#, tmp74
	addq	$function_units, %rax	#, tmp75
	movl	12(%rax), %eax	# function_units[unit_11(D)].multiplicity, D.12664
	subl	$1, %eax	#, tmp76
	movl	%eax, -16(%rbp)	# tmp76, i
	jmp	.L49	#
.L51:
	.loc 1 576 0
	addl	$26, -12(%rbp)	#, instance
	.loc 1 577 0
	movl	-36(%rbp), %edi	# cost, tmp77
	movl	-24(%rbp), %ecx	# clock, tmp78
	movq	-32(%rbp), %rdx	# insn, tmp79
	movl	-12(%rbp), %esi	# instance, tmp80
	movl	-20(%rbp), %eax	# unit, tmp81
	movl	%edi, %r8d	# tmp77,
	movl	%eax, %edi	# tmp81,
	call	actual_hazard_this_instance	#
	movl	%eax, -4(%rbp)	# tmp82, this_cost
	.loc 1 579 0
	movl	-4(%rbp), %eax	# this_cost, tmp83
	cmpl	-8(%rbp), %eax	# best_cost, tmp83
	jge	.L50	#,
	.loc 1 581 0
	movl	-4(%rbp), %eax	# this_cost, tmp84
	movl	%eax, -8(%rbp)	# tmp84, best_cost
	.loc 1 582 0
	movl	-4(%rbp), %eax	# this_cost, tmp85
	cmpl	-36(%rbp), %eax	# cost, tmp85
	jg	.L50	#,
	.loc 1 583 0
	jmp	.L48	#
.L50:
	.loc 1 574 0
	subl	$1, -16(%rbp)	#, i
.L49:
	.loc 1 574 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	jg	.L51	#,
.L48:
	.loc 1 588 0 is_stmt 1
	movl	-36(%rbp), %eax	# cost, tmp87
	cmpl	%eax, -8(%rbp)	# tmp87, best_cost
	cmovge	-8(%rbp), %eax	# best_cost,, tmp86
	movl	%eax, -36(%rbp)	# tmp86, cost
.LBE3:
	jmp	.L52	#
.L47:
	.loc 1 591 0
	movl	$0, -16(%rbp)	#, i
	notl	-20(%rbp)	# unit
	jmp	.L53	#
.L55:
	.loc 1 592 0
	movl	-20(%rbp), %eax	# unit, tmp88
	andl	$1, %eax	#, D.12664
	testl	%eax, %eax	# D.12664
	je	.L54	#,
	.loc 1 593 0
	movl	-36(%rbp), %ecx	# cost, tmp89
	movl	-24(%rbp), %edx	# clock, tmp90
	movq	-32(%rbp), %rsi	# insn, tmp91
	movl	-16(%rbp), %eax	# i, tmp92
	movl	%eax, %edi	# tmp92,
	call	actual_hazard	#
	movl	%eax, -36(%rbp)	# tmp93, cost
.L54:
	.loc 1 591 0
	addl	$1, -16(%rbp)	#, i
	sarl	-20(%rbp)	# unit
.L53:
	.loc 1 591 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, unit
	jne	.L55	#,
.L52:
	.loc 1 595 0 is_stmt 1
	movl	-36(%rbp), %eax	# cost, D.12664
	.loc 1 596 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	actual_hazard, .-actual_hazard
	.globl	insn_cost
	.type	insn_cost, @function
insn_cost:
.LFB12:
	.loc 1 653 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# link, link
	movq	%rdx, -40(%rbp)	# used, used
	.loc 1 654 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.8
	movq	-24(%rbp), %rax	# insn, tmp92
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.12665
	movslq	%eax, %rdx	# D.12665, D.12666
	movq	%rdx, %rax	# D.12666, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# D.12666, tmp93
	salq	$4, %rax	#, tmp94
	addq	%rcx, %rax	# h_i_d.8, D.12667
	movzwl	40(%rax), %eax	# _11->cost, D.12668
	cwtl
	movl	%eax, -8(%rbp)	# tmp95, cost
	.loc 1 656 0
	cmpl	$0, -8(%rbp)	#, cost
	jne	.L58	#,
	.loc 1 658 0
	movq	-24(%rbp), %rax	# insn, tmp96
	movl	40(%rax), %eax	# insn_7(D)->fld[4].rtint, D.12665
	testl	%eax, %eax	# D.12665
	jns	.L60	#,
	.loc 1 658 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp98
	movq	%rax, %rdi	# tmp98,
	call	recog_memoized_1	#
.L60:
	.loc 1 663 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp99
	movl	40(%rax), %eax	# insn_7(D)->fld[4].rtint, D.12665
	testl	%eax, %eax	# D.12665
	jns	.L61	#,
	.loc 1 665 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.10
	movq	-24(%rbp), %rax	# insn, tmp100
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.12665
	movslq	%eax, %rdx	# D.12665, D.12666
	movq	%rdx, %rax	# D.12666, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# D.12666, tmp101
	salq	$4, %rax	#, tmp102
	addq	%rcx, %rax	# h_i_d.10, D.12667
	movw	$1, 40(%rax)	#, _22->cost
	.loc 1 666 0
	movl	$1, %eax	#, D.12665
	jmp	.L62	#
.L61:
	.loc 1 670 0
	movq	-24(%rbp), %rax	# insn, tmp103
	movq	%rax, %rdi	# tmp103,
	call	result_ready_cost	#
	movl	%eax, -8(%rbp)	# tmp104, cost
	.loc 1 672 0
	cmpl	$0, -8(%rbp)	#, cost
	jg	.L63	#,
	.loc 1 673 0
	movl	$1, -8(%rbp)	#, cost
.L63:
	.loc 1 675 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.11
	movq	-24(%rbp), %rax	# insn, tmp105
	movl	8(%rax), %eax	# insn_7(D)->fld[0].rtint, D.12665
	movslq	%eax, %rdx	# D.12665, D.12666
	movq	%rdx, %rax	# D.12666, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# D.12666, tmp106
	salq	$4, %rax	#, tmp107
	leaq	(%rcx,%rax), %rdx	#, D.12667
	movl	-8(%rbp), %eax	# cost, tmp108
	movw	%ax, 40(%rdx)	# D.12668, _30->cost
.L58:
	.loc 1 680 0
	cmpq	$0, -32(%rbp)	#, link
	jne	.L64	#,
	.loc 1 680 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, used
	jne	.L64	#,
	.loc 1 681 0 is_stmt 1
	movl	-8(%rbp), %eax	# cost, D.12665
	jmp	.L62	#
.L64:
	.loc 1 686 0
	movq	-40(%rbp), %rax	# used, tmp109
	movl	40(%rax), %eax	# used_33(D)->fld[4].rtint, D.12665
	testl	%eax, %eax	# D.12665
	jns	.L66	#,
	.loc 1 686 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# used, tmp111
	movq	%rax, %rdi	# tmp111,
	call	recog_memoized_1	#
.L66:
	.loc 1 687 0 is_stmt 1
	movq	-40(%rbp), %rax	# used, tmp112
	movl	40(%rax), %eax	# used_33(D)->fld[4].rtint, D.12665
	testl	%eax, %eax	# D.12665
	jns	.L67	#,
	.loc 1 688 0
	movq	-32(%rbp), %rax	# link, tmp113
	movzbl	3(%rax), %edx	# link_32(D)->call, tmp116
	orl	$2, %edx	#, tmp117
	movb	%dl, 3(%rax)	# tmp117, link_32(D)->call
.L67:
	.loc 1 696 0
	movq	-32(%rbp), %rax	# link, tmp118
	movzbl	3(%rax), %eax	# *link_32(D), D.12669
	andl	$2, %eax	#, D.12669
	testb	%al, %al	# D.12669
	je	.L68	#,
	.loc 1 697 0
	movl	$0, -8(%rbp)	#, cost
	jmp	.L69	#
.L68:
	.loc 1 698 0
	movq	-32(%rbp), %rax	# link, tmp119
	movzbl	3(%rax), %eax	# *link_32(D), D.12669
	andl	$1, %eax	#, D.12669
	testb	%al, %al	# D.12669
	jne	.L69	#,
	.loc 1 698 0 is_stmt 0 discriminator 1
	movq	targetm+168(%rip), %rax	# targetm.sched.adjust_cost, D.12670
	testq	%rax, %rax	# D.12670
	je	.L69	#,
.LBB4:
	.loc 1 700 0 is_stmt 1
	movq	targetm+168(%rip), %rax	# targetm.sched.adjust_cost, D.12670
	movl	-8(%rbp), %ecx	# cost, tmp120
	movq	-24(%rbp), %rdx	# insn, tmp121
	movq	-32(%rbp), %rsi	# link, tmp122
	movq	-40(%rbp), %rdi	# used, tmp123
	call	*%rax	# D.12670
	movl	%eax, -4(%rbp)	# tmp124, ncost
	.loc 1 702 0
	cmpl	$0, -4(%rbp)	#, ncost
	jg	.L70	#,
	.loc 1 704 0
	movq	-32(%rbp), %rax	# link, tmp125
	movzbl	3(%rax), %edx	# link_32(D)->call, tmp128
	orl	$2, %edx	#, tmp129
	movb	%dl, 3(%rax)	# tmp129, link_32(D)->call
	.loc 1 705 0
	movl	$0, -4(%rbp)	#, ncost
.L70:
	.loc 1 707 0
	movl	-8(%rbp), %eax	# cost, tmp130
	cmpl	-4(%rbp), %eax	# ncost, tmp130
	jne	.L71	#,
	.loc 1 708 0
	movq	-32(%rbp), %rax	# link, tmp131
	movzbl	3(%rax), %edx	# link_32(D)->jump, tmp134
	orl	$1, %edx	#, tmp135
	movb	%dl, 3(%rax)	# tmp135, link_32(D)->jump
.L71:
	.loc 1 709 0
	movl	-4(%rbp), %eax	# ncost, tmp136
	movl	%eax, -8(%rbp)	# tmp136, cost
.L69:
.LBE4:
	.loc 1 712 0
	movl	-8(%rbp), %eax	# cost, D.12665
.L62:
	.loc 1 713 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	insn_cost, .-insn_cost
	.type	priority, @function
priority:
.LFB13:
	.loc 1 720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# insn, insn
	.loc 1 723 0
	movq	-56(%rbp), %rax	# insn, tmp104
	movzwl	(%rax), %eax	# insn_6(D)->code, D.12672
	movzwl	%ax, %eax	# D.12672, D.12671
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12673
	cmpb	$105, %al	#, D.12673
	je	.L73	#,
	.loc 1 724 0
	movl	$0, %eax	#, D.12671
	jmp	.L74	#
.L73:
	.loc 1 726 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.13
	movq	-56(%rbp), %rax	# insn, tmp106
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp107
	addq	%rax, %rax	# tmp107
	addq	%rdx, %rax	# D.12674, tmp107
	salq	$4, %rax	#, tmp108
	addq	%rcx, %rax	# h_i_d.13, D.12675
	movzbl	46(%rax), %eax	# *_15, D.12676
	andl	$8, %eax	#, D.12676
	testb	%al, %al	# D.12676
	jne	.L75	#,
.LBB5:
	.loc 1 728 0
	movl	$0, -40(%rbp)	#, this_priority
	.loc 1 730 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.14
	movq	-56(%rbp), %rax	# insn, tmp109
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# D.12674, tmp110
	salq	$4, %rax	#, tmp111
	addq	%rcx, %rax	# h_i_d.14, D.12675
	movq	(%rax), %rax	# _23->depend, D.12677
	testq	%rax, %rax	# D.12677
	jne	.L76	#,
	.loc 1 731 0
	movq	-56(%rbp), %rax	# insn, tmp112
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	insn_cost	#
	movl	%eax, -40(%rbp)	# tmp113, this_priority
	jmp	.L77	#
.L76:
	.loc 1 734 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.15
	movq	-56(%rbp), %rax	# insn, tmp114
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# D.12674, tmp115
	salq	$4, %rax	#, tmp116
	addq	%rcx, %rax	# h_i_d.15, D.12675
	movq	(%rax), %rax	# _30->depend, tmp117
	movq	%rax, -32(%rbp)	# tmp117, link
	jmp	.L78	#
.L82:
.LBB6:
	.loc 1 739 0
	movq	-32(%rbp), %rax	# link, tmp118
	movzbl	3(%rax), %eax	# *link_1, D.12676
	andl	$64, %eax	#, D.12676
	testb	%al, %al	# D.12676
	je	.L79	#,
	.loc 1 740 0
	jmp	.L80	#
.L79:
	.loc 1 742 0
	movq	-32(%rbp), %rax	# link, tmp119
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp120
	movq	%rax, -24(%rbp)	# tmp120, next
	.loc 1 745 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.16
	movq	48(%rax), %rax	# current_sched_info.16_35->contributes_to_priority, D.12678
	movq	-56(%rbp), %rcx	# insn, tmp121
	movq	-24(%rbp), %rdx	# next, tmp122
	movq	%rcx, %rsi	# tmp121,
	movq	%rdx, %rdi	# tmp122,
	call	*%rax	# D.12678
	testl	%eax, %eax	# D.12671
	jne	.L81	#,
	.loc 1 746 0
	jmp	.L80	#
.L81:
	.loc 1 748 0
	movq	-24(%rbp), %rdx	# next, tmp123
	movq	-32(%rbp), %rcx	# link, tmp124
	movq	-56(%rbp), %rax	# insn, tmp125
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	insn_cost	#
	movl	%eax, %ebx	#, D.12671
	movq	-24(%rbp), %rax	# next, tmp126
	movq	%rax, %rdi	# tmp126,
	call	priority	#
	addl	%ebx, %eax	# D.12671, tmp127
	movl	%eax, -36(%rbp)	# tmp127, next_priority
	.loc 1 749 0
	movl	-36(%rbp), %eax	# next_priority, tmp128
	cmpl	-40(%rbp), %eax	# this_priority, tmp128
	jle	.L80	#,
	.loc 1 750 0
	movl	-36(%rbp), %eax	# next_priority, tmp129
	movl	%eax, -40(%rbp)	# tmp129, this_priority
.L80:
.LBE6:
	.loc 1 734 0
	movq	-32(%rbp), %rax	# link, tmp130
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp131
	movq	%rax, -32(%rbp)	# tmp131, link
.L78:
	.loc 1 734 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L82	#,
.L77:
	.loc 1 753 0 is_stmt 1
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.17
	movq	-56(%rbp), %rax	# insn, tmp132
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# D.12674, tmp133
	salq	$4, %rax	#, tmp134
	leaq	(%rcx,%rax), %rdx	#, D.12675
	movl	-40(%rbp), %eax	# this_priority, tmp135
	movl	%eax, 20(%rdx)	# tmp135, _47->priority
	.loc 1 754 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.18
	movq	-56(%rbp), %rax	# insn, tmp136
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# D.12674, tmp137
	salq	$4, %rax	#, tmp138
	addq	%rcx, %rax	# h_i_d.18, D.12675
	movzbl	46(%rax), %edx	# _52->priority_known, tmp141
	orl	$8, %edx	#, tmp142
	movb	%dl, 46(%rax)	# tmp142, _52->priority_known
.L75:
.LBE5:
	.loc 1 757 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.19
	movq	-56(%rbp), %rax	# insn, tmp143
	movl	8(%rax), %eax	# insn_6(D)->fld[0].rtint, D.12671
	movslq	%eax, %rdx	# D.12671, D.12674
	movq	%rdx, %rax	# D.12674, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# D.12674, tmp144
	salq	$4, %rax	#, tmp145
	addq	%rcx, %rax	# h_i_d.19, D.12675
	movl	20(%rax), %eax	# _57->priority, D.12671
.L74:
	.loc 1 758 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	priority, .-priority
	.type	rank_for_schedule, @function
rank_for_schedule:
.LFB14:
	.loc 1 779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# y, y
	.loc 1 780 0
	movq	-80(%rbp), %rax	# y, tmp133
	movq	(%rax), %rax	# MEM[(struct rtx_def * const *)y_8(D)], tmp134
	movq	%rax, -16(%rbp)	# tmp134, tmp
	.loc 1 781 0
	movq	-72(%rbp), %rax	# x, tmp135
	movq	(%rax), %rax	# MEM[(struct rtx_def * const *)x_10(D)], tmp136
	movq	%rax, -8(%rbp)	# tmp136, tmp2
	.loc 1 787 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.20
	movq	-8(%rbp), %rax	# tmp2, tmp137
	movl	8(%rax), %eax	# tmp2_11->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp138
	addq	%rax, %rax	# tmp138
	addq	%rdx, %rax	# D.12680, tmp138
	salq	$4, %rax	#, tmp139
	addq	%rcx, %rax	# h_i_d.20, D.12681
	movl	20(%rax), %ecx	# _16->priority, D.12679
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.21
	movq	-16(%rbp), %rax	# tmp, tmp140
	movl	8(%rax), %eax	# tmp_9->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp141
	addq	%rax, %rax	# tmp141
	addq	%rdx, %rax	# D.12680, tmp141
	salq	$4, %rax	#, tmp142
	addq	%rsi, %rax	# h_i_d.21, D.12681
	movl	20(%rax), %eax	# _22->priority, D.12679
	subl	%eax, %ecx	# D.12679, tmp143
	movl	%ecx, %eax	# tmp143, tmp143
	movl	%eax, -40(%rbp)	# tmp143, priority_val
	.loc 1 788 0
	cmpl	$0, -40(%rbp)	#, priority_val
	je	.L84	#,
	.loc 1 789 0
	movl	-40(%rbp), %eax	# priority_val, D.12679
	jmp	.L85	#
.L84:
	.loc 1 792 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.22
	testl	%eax, %eax	# reload_completed.22
	jne	.L86	#,
	.loc 1 793 0 discriminator 1
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.23
	movq	-16(%rbp), %rax	# tmp, tmp144
	movl	8(%rax), %eax	# tmp_9->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp145
	addq	%rax, %rax	# tmp145
	addq	%rdx, %rax	# D.12680, tmp145
	salq	$4, %rax	#, tmp146
	addq	%rcx, %rax	# h_i_d.23, D.12681
	movzwl	44(%rax), %eax	# _31->reg_weight, D.12682
	movswl	%ax, %ecx	# D.12682, D.12679
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.24
	movq	-8(%rbp), %rax	# tmp2, tmp147
	movl	8(%rax), %eax	# tmp2_11->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# D.12680, tmp148
	salq	$4, %rax	#, tmp149
	addq	%rsi, %rax	# h_i_d.24, D.12681
	movzwl	44(%rax), %eax	# _38->reg_weight, D.12682
	cwtl
	subl	%eax, %ecx	# D.12679, tmp150
	movl	%ecx, %eax	# tmp150, tmp150
	movl	%eax, -36(%rbp)	# tmp150, weight_val
	.loc 1 792 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, weight_val
	je	.L86	#,
	.loc 1 794 0
	movl	-36(%rbp), %eax	# weight_val, D.12679
	jmp	.L85	#
.L86:
	.loc 1 796 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.25
	movq	32(%rax), %rax	# current_sched_info.25_43->rank, D.12683
	movq	-8(%rbp), %rcx	# tmp2, tmp151
	movq	-16(%rbp), %rdx	# tmp, tmp152
	movq	%rcx, %rsi	# tmp151,
	movq	%rdx, %rdi	# tmp152,
	call	*%rax	# D.12683
	movl	%eax, -32(%rbp)	# tmp153, info_val
	.loc 1 797 0
	cmpl	$0, -32(%rbp)	#, info_val
	je	.L87	#,
	.loc 1 798 0
	movl	-32(%rbp), %eax	# info_val, D.12679
	jmp	.L85	#
.L87:
	.loc 1 801 0
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, last_scheduled_insn.26
	testq	%rax, %rax	# last_scheduled_insn.26
	je	.L88	#,
	.loc 1 808 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.27
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, last_scheduled_insn.28
	movl	8(%rax), %eax	# last_scheduled_insn.28_49->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rdx, %rax	# D.12680, tmp154
	salq	$4, %rax	#, tmp155
	addq	%rcx, %rax	# h_i_d.27, D.12681
	movq	(%rax), %rdx	# _53->depend, D.12684
	movq	-16(%rbp), %rax	# tmp, tmp156
	movq	%rdx, %rsi	# D.12684,
	movq	%rax, %rdi	# tmp156,
	call	find_insn_list	#
	movq	%rax, -24(%rbp)	# tmp157, link
	.loc 1 809 0
	cmpq	$0, -24(%rbp)	#, link
	je	.L89	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, last_scheduled_insn.29
	movq	-16(%rbp), %rdx	# tmp, tmp158
	movq	-24(%rbp), %rcx	# link, tmp159
	movq	%rcx, %rsi	# tmp159,
	movq	%rax, %rdi	# last_scheduled_insn.29,
	call	insn_cost	#
	cmpl	$1, %eax	#, D.12679
	jne	.L90	#,
.L89:
	.loc 1 810 0 is_stmt 1
	movl	$3, -56(%rbp)	#, tmp_class
	jmp	.L91	#
.L90:
	.loc 1 811 0
	movq	-24(%rbp), %rax	# link, tmp160
	movzbl	2(%rax), %eax	# link_55->mode, D.12685
	testb	%al, %al	# D.12685
	jne	.L92	#,
	.loc 1 812 0
	movl	$1, -56(%rbp)	#, tmp_class
	jmp	.L91	#
.L92:
	.loc 1 814 0
	movl	$2, -56(%rbp)	#, tmp_class
.L91:
	.loc 1 816 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.30
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, last_scheduled_insn.31
	movl	8(%rax), %eax	# last_scheduled_insn.31_63->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp161
	addq	%rax, %rax	# tmp161
	addq	%rdx, %rax	# D.12680, tmp161
	salq	$4, %rax	#, tmp162
	addq	%rcx, %rax	# h_i_d.30, D.12681
	movq	(%rax), %rdx	# _67->depend, D.12684
	movq	-8(%rbp), %rax	# tmp2, tmp163
	movq	%rdx, %rsi	# D.12684,
	movq	%rax, %rdi	# tmp163,
	call	find_insn_list	#
	movq	%rax, -24(%rbp)	# tmp164, link
	.loc 1 817 0
	cmpq	$0, -24(%rbp)	#, link
	je	.L93	#,
	.loc 1 817 0 is_stmt 0 discriminator 1
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, last_scheduled_insn.32
	movq	-8(%rbp), %rdx	# tmp2, tmp165
	movq	-24(%rbp), %rcx	# link, tmp166
	movq	%rcx, %rsi	# tmp166,
	movq	%rax, %rdi	# last_scheduled_insn.32,
	call	insn_cost	#
	cmpl	$1, %eax	#, D.12679
	jne	.L94	#,
.L93:
	.loc 1 818 0 is_stmt 1
	movl	$3, -52(%rbp)	#, tmp2_class
	jmp	.L95	#
.L94:
	.loc 1 819 0
	movq	-24(%rbp), %rax	# link, tmp167
	movzbl	2(%rax), %eax	# link_69->mode, D.12685
	testb	%al, %al	# D.12685
	jne	.L96	#,
	.loc 1 820 0
	movl	$1, -52(%rbp)	#, tmp2_class
	jmp	.L95	#
.L96:
	.loc 1 822 0
	movl	$2, -52(%rbp)	#, tmp2_class
.L95:
	.loc 1 824 0
	movl	-56(%rbp), %eax	# tmp_class, tmp172
	movl	-52(%rbp), %edx	# tmp2_class, tmp173
	subl	%eax, %edx	# tmp172, tmp171
	movl	%edx, %eax	# tmp171, tmp171
	movl	%eax, -28(%rbp)	# tmp171, val
	cmpl	$0, -28(%rbp)	#, val
	je	.L88	#,
	.loc 1 825 0
	movl	-28(%rbp), %eax	# val, D.12679
	jmp	.L85	#
.L88:
	.loc 1 831 0
	movl	$0, -48(%rbp)	#, depend_count1
	.loc 1 832 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.33
	movq	-16(%rbp), %rax	# tmp, tmp174
	movl	8(%rax), %eax	# tmp_9->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp175
	addq	%rax, %rax	# tmp175
	addq	%rdx, %rax	# D.12680, tmp175
	salq	$4, %rax	#, tmp176
	addq	%rcx, %rax	# h_i_d.33, D.12681
	movq	(%rax), %rax	# _83->depend, tmp177
	movq	%rax, -24(%rbp)	# tmp177, link
	jmp	.L97	#
.L98:
	.loc 1 833 0 discriminator 2
	addl	$1, -48(%rbp)	#, depend_count1
	.loc 1 832 0 discriminator 2
	movq	-24(%rbp), %rax	# link, tmp178
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp179
	movq	%rax, -24(%rbp)	# tmp179, link
.L97:
	.loc 1 832 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L98	#,
	.loc 1 835 0 is_stmt 1
	movl	$0, -44(%rbp)	#, depend_count2
	.loc 1 836 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.34
	movq	-8(%rbp), %rax	# tmp2, tmp180
	movl	8(%rax), %eax	# tmp2_11->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.12680, tmp181
	salq	$4, %rax	#, tmp182
	addq	%rcx, %rax	# h_i_d.34, D.12681
	movq	(%rax), %rax	# _92->depend, tmp183
	movq	%rax, -24(%rbp)	# tmp183, link
	jmp	.L99	#
.L100:
	.loc 1 837 0 discriminator 2
	addl	$1, -44(%rbp)	#, depend_count2
	.loc 1 836 0 discriminator 2
	movq	-24(%rbp), %rax	# link, tmp184
	movq	16(%rax), %rax	# link_2->fld[1].rtx, tmp185
	movq	%rax, -24(%rbp)	# tmp185, link
.L99:
	.loc 1 836 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L100	#,
	.loc 1 839 0 is_stmt 1
	movl	-48(%rbp), %eax	# depend_count1, tmp190
	movl	-44(%rbp), %edx	# depend_count2, tmp191
	subl	%eax, %edx	# tmp190, tmp189
	movl	%edx, %eax	# tmp189, tmp189
	movl	%eax, -28(%rbp)	# tmp189, val
	.loc 1 840 0
	cmpl	$0, -28(%rbp)	#, val
	je	.L101	#,
	.loc 1 841 0
	movl	-28(%rbp), %eax	# val, D.12679
	jmp	.L85	#
.L101:
	.loc 1 846 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.35
	movq	-16(%rbp), %rax	# tmp, tmp192
	movl	8(%rax), %eax	# tmp_9->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp193
	addq	%rax, %rax	# tmp193
	addq	%rdx, %rax	# D.12680, tmp193
	salq	$4, %rax	#, tmp194
	addq	%rcx, %rax	# h_i_d.35, D.12681
	movl	16(%rax), %ecx	# _102->luid, D.12679
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.36
	movq	-8(%rbp), %rax	# tmp2, tmp195
	movl	8(%rax), %eax	# tmp2_11->fld[0].rtint, D.12679
	movslq	%eax, %rdx	# D.12679, D.12680
	movq	%rdx, %rax	# D.12680, tmp196
	addq	%rax, %rax	# tmp196
	addq	%rdx, %rax	# D.12680, tmp196
	salq	$4, %rax	#, tmp197
	addq	%rsi, %rax	# h_i_d.36, D.12681
	movl	16(%rax), %eax	# _108->luid, D.12679
	subl	%eax, %ecx	# D.12679, D.12679
	movl	%ecx, %eax	# D.12679, D.12679
.L85:
	.loc 1 847 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	rank_for_schedule, .-rank_for_schedule
	.type	swap_sort, @function
swap_sort:
.LFB15:
	.loc 1 855 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 856 0
	movl	-28(%rbp), %eax	# n, tmp81
	cltq
	salq	$3, %rax	#, D.12686
	leaq	-8(%rax), %rdx	#, D.12687
	movq	-24(%rbp), %rax	# a, tmp82
	addq	%rdx, %rax	# D.12687, D.12688
	movq	(%rax), %rax	# *_7, insn.172
	movq	%rax, -8(%rbp)	# insn.172, insn
	.loc 1 857 0
	movl	-28(%rbp), %eax	# n, tmp86
	subl	$2, %eax	#, tmp85
	movl	%eax, -12(%rbp)	# tmp85, i
	.loc 1 859 0
	jmp	.L103	#
.L105:
	.loc 1 861 0
	movl	-12(%rbp), %eax	# i, tmp87
	cltq
	addq	$1, %rax	#, D.12687
	leaq	0(,%rax,8), %rdx	#, D.12687
	movq	-24(%rbp), %rax	# a, tmp88
	addq	%rax, %rdx	# tmp88, D.12688
	movl	-12(%rbp), %eax	# i, tmp89
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12686
	movq	-24(%rbp), %rax	# a, tmp90
	addq	%rcx, %rax	# D.12686, D.12688
	movq	(%rax), %rax	# *_20, D.12691
	movq	%rax, (%rdx)	# D.12691, *_17
	.loc 1 862 0
	subl	$1, -12(%rbp)	#, i
.L103:
	.loc 1 859 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	js	.L104	#,
	.loc 1 859 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12686
	movq	-24(%rbp), %rax	# a, tmp92
	addq	%rax, %rdx	# tmp92, D.12689
	leaq	-8(%rbp), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	movq	%rdx, %rdi	# D.12689,
	call	rank_for_schedule	#
	testl	%eax, %eax	# D.12690
	jns	.L105	#,
.L104:
	.loc 1 864 0 is_stmt 1
	movl	-12(%rbp), %eax	# i, tmp94
	cltq
	addq	$1, %rax	#, D.12687
	leaq	0(,%rax,8), %rdx	#, D.12687
	movq	-24(%rbp), %rax	# a, tmp95
	addq	%rax, %rdx	# tmp95, D.12688
	movq	-8(%rbp), %rax	# insn, insn.173
	movq	%rax, (%rdx)	# insn.173, *_26
	.loc 1 865 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	swap_sort, .-swap_sort
	.section	.rodata
.LC2:
	.string	";;\t\tReady-->Q: insn %s: "
.LC3:
	.string	"queued for %d cycles.\n"
	.text
	.type	queue_insn, @function
queue_insn:
.LFB16:
	.loc 1 875 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# n_cycles, n_cycles
	.loc 1 876 0
	movl	q_ptr(%rip), %edx	# q_ptr, q_ptr.60
	movl	-28(%rbp), %eax	# n_cycles, tmp70
	addl	%edx, %eax	# q_ptr.60, D.12692
	andl	$127, %eax	#, tmp71
	movl	%eax, -12(%rbp)	# tmp71, next_q
	.loc 1 877 0
	movl	-12(%rbp), %eax	# next_q, tmp73
	cltq
	movq	insn_queue(,%rax,8), %rdx	# insn_queue, D.12693
	movq	-24(%rbp), %rax	# insn, tmp74
	movq	%rdx, %rsi	# D.12693,
	movq	%rax, %rdi	# tmp74,
	call	alloc_INSN_LIST	#
	movq	%rax, -8(%rbp)	# tmp75, link
	.loc 1 878 0
	movl	-12(%rbp), %eax	# next_q, tmp77
	cltq
	movq	-8(%rbp), %rdx	# link, tmp78
	movq	%rdx, insn_queue(,%rax,8)	# tmp78, insn_queue
	.loc 1 879 0
	movl	q_size(%rip), %eax	# q_size, q_size.61
	addl	$1, %eax	#, q_size.62
	movl	%eax, q_size(%rip)	# q_size.62, q_size
	.loc 1 881 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.63
	cmpl	$1, %eax	#, sched_verbose.63
	jle	.L106	#,
	.loc 1 884 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.64
	movq	40(%rax), %rax	# current_sched_info.64_11->print_insn, D.12694
	.loc 1 883 0
	movq	-24(%rbp), %rdx	# insn, tmp79
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# tmp79,
	call	*%rax	# D.12694
	movq	%rax, %rdx	#, D.12695
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.65
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# sched_dump.65,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 886 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.66
	movl	-28(%rbp), %edx	# n_cycles, tmp80
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# sched_dump.66,
	movl	$0, %eax	#,
	call	fprintf	#
.L106:
	.loc 1 888 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	queue_insn, .-queue_insn
	.section	.rodata
.LC4:
	.string	"haifa-sched.c"
	.text
	.type	ready_lastpos, @function
ready_lastpos:
.LFB17:
	.loc 1 896 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ready, ready
	.loc 1 897 0
	movq	-8(%rbp), %rax	# ready, tmp70
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12698
	testl	%eax, %eax	# D.12698
	jne	.L109	#,
	.loc 1 898 0
	movl	$__FUNCTION__.11105, %edx	#,
	movl	$898, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L109:
	.loc 1 899 0
	movq	-8(%rbp), %rax	# ready, tmp71
	movq	(%rax), %rdx	# ready_1(D)->vec, D.12699
	movq	-8(%rbp), %rax	# ready, tmp72
	movl	12(%rax), %eax	# ready_1(D)->first, D.12698
	movslq	%eax, %rcx	# D.12698, D.12700
	movq	-8(%rbp), %rax	# ready, tmp73
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12698
	cltq
	subq	%rax, %rcx	# D.12700, D.12700
	movq	%rcx, %rax	# D.12700, D.12700
	addq	$1, %rax	#, D.12700
	salq	$3, %rax	#, D.12700
	addq	%rdx, %rax	# D.12699, D.12699
	.loc 1 900 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ready_lastpos, .-ready_lastpos
	.globl	ready_add
	.type	ready_add, @function
ready_add:
.LFB18:
	.loc 1 914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# ready, ready
	movq	%rsi, -32(%rbp)	# insn, insn
	.loc 1 915 0
	movq	-24(%rbp), %rax	# ready, tmp84
	movl	12(%rax), %edx	# ready_1(D)->first, D.12702
	movq	-24(%rbp), %rax	# ready, tmp85
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12702
	cmpl	%eax, %edx	# D.12702, D.12702
	jne	.L112	#,
	.loc 1 919 0
	movq	-24(%rbp), %rax	# ready, tmp86
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12702
	.loc 1 917 0
	cltq
	leaq	0(,%rax,8), %rbx	#, D.12703
	.loc 1 918 0
	movq	-24(%rbp), %rax	# ready, tmp87
	movq	%rax, %rdi	# tmp87,
	call	ready_lastpos	#
	.loc 1 917 0
	movq	-24(%rbp), %rdx	# ready, tmp88
	movq	(%rdx), %rcx	# ready_1(D)->vec, D.12704
	movq	-24(%rbp), %rdx	# ready, tmp89
	movl	8(%rdx), %edx	# ready_1(D)->veclen, D.12702
	movslq	%edx, %rsi	# D.12702, D.12705
	movq	-24(%rbp), %rdx	# ready, tmp90
	movl	16(%rdx), %edx	# ready_1(D)->n_ready, D.12702
	movslq	%edx, %rdx	# D.12702, D.12705
	subq	%rdx, %rsi	# D.12705, D.12705
	movq	%rsi, %rdx	# D.12705, D.12705
	salq	$3, %rdx	#, D.12705
	addq	%rdx, %rcx	# D.12705, D.12704
	movq	%rbx, %rdx	# D.12703,
	movq	%rax, %rsi	# D.12704,
	movq	%rcx, %rdi	# D.12704,
	call	memmove	#
	.loc 1 920 0
	movq	-24(%rbp), %rax	# ready, tmp91
	movl	8(%rax), %eax	# ready_1(D)->veclen, D.12702
	leal	-1(%rax), %edx	#, D.12702
	movq	-24(%rbp), %rax	# ready, tmp92
	movl	%edx, 12(%rax)	# D.12702, ready_1(D)->first
.L112:
	.loc 1 922 0
	movq	-24(%rbp), %rax	# ready, tmp93
	movq	(%rax), %rdx	# ready_1(D)->vec, D.12704
	movq	-24(%rbp), %rax	# ready, tmp94
	movl	12(%rax), %ecx	# ready_1(D)->first, D.12702
	movq	-24(%rbp), %rax	# ready, tmp95
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12702
	subl	%eax, %ecx	# D.12702, D.12702
	movl	%ecx, %eax	# D.12702, D.12702
	cltq
	salq	$3, %rax	#, D.12703
	addq	%rax, %rdx	# D.12703, D.12704
	movq	-32(%rbp), %rax	# insn, tmp96
	movq	%rax, (%rdx)	# tmp96, *_24
	.loc 1 923 0
	movq	-24(%rbp), %rax	# ready, tmp97
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12702
	leal	1(%rax), %edx	#, D.12702
	movq	-24(%rbp), %rax	# ready, tmp98
	movl	%edx, 16(%rax)	# D.12702, ready_1(D)->n_ready
	.loc 1 924 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ready_add, .-ready_add
	.type	ready_remove_first, @function
ready_remove_first:
.LFB19:
	.loc 1 932 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ready, ready
	.loc 1 934 0
	movq	-24(%rbp), %rax	# ready, tmp73
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12706
	testl	%eax, %eax	# D.12706
	jne	.L114	#,
	.loc 1 935 0
	movl	$__FUNCTION__.11114, %edx	#,
	movl	$935, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L114:
	.loc 1 936 0
	movq	-24(%rbp), %rax	# ready, tmp74
	movq	(%rax), %rsi	# ready_1(D)->vec, D.12707
	movq	-24(%rbp), %rax	# ready, tmp75
	movl	12(%rax), %eax	# ready_1(D)->first, D.12706
	leal	-1(%rax), %ecx	#, D.12706
	movq	-24(%rbp), %rdx	# ready, tmp76
	movl	%ecx, 12(%rdx)	# D.12706, ready_1(D)->first
	cltq
	salq	$3, %rax	#, D.12708
	addq	%rsi, %rax	# D.12707, D.12707
	movq	(%rax), %rax	# *_9, tmp77
	movq	%rax, -8(%rbp)	# tmp77, t
	.loc 1 937 0
	movq	-24(%rbp), %rax	# ready, tmp78
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12706
	leal	-1(%rax), %edx	#, D.12706
	movq	-24(%rbp), %rax	# ready, tmp79
	movl	%edx, 16(%rax)	# D.12706, ready_1(D)->n_ready
	.loc 1 939 0
	movq	-24(%rbp), %rax	# ready, tmp80
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12706
	testl	%eax, %eax	# D.12706
	jne	.L115	#,
	.loc 1 940 0
	movq	-24(%rbp), %rax	# ready, tmp81
	movl	8(%rax), %eax	# ready_1(D)->veclen, D.12706
	leal	-1(%rax), %edx	#, D.12706
	movq	-24(%rbp), %rax	# ready, tmp82
	movl	%edx, 12(%rax)	# D.12706, ready_1(D)->first
.L115:
	.loc 1 941 0
	movq	-8(%rbp), %rax	# t, D.12709
	.loc 1 942 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ready_remove_first, .-ready_remove_first
	.type	ready_sort, @function
ready_sort:
.LFB20:
	.loc 1 950 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ready, ready
	.loc 1 951 0
	movq	-24(%rbp), %rax	# ready, tmp63
	movq	%rax, %rdi	# tmp63,
	call	ready_lastpos	#
	movq	%rax, -8(%rbp)	# tmp64, first
	.loc 1 952 0
	movq	-24(%rbp), %rax	# ready, tmp65
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12710
	cmpl	$2, %eax	#, D.12710
	jne	.L118	#,
	.loc 1 952 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ready, tmp66
	movl	16(%rax), %edx	# ready_1(D)->n_ready, D.12710
	movq	-8(%rbp), %rax	# first, tmp67
	movl	%edx, %esi	# D.12710,
	movq	%rax, %rdi	# tmp67,
	call	swap_sort	#
	jmp	.L117	#
.L118:
	.loc 1 952 0 discriminator 2
	movq	-24(%rbp), %rax	# ready, tmp68
	movl	16(%rax), %eax	# ready_1(D)->n_ready, D.12710
	cmpl	$2, %eax	#, D.12710
	jle	.L117	#,
	.loc 1 952 0 discriminator 1
	movq	-24(%rbp), %rax	# ready, tmp69
	movl	16(%rax), %esi	# ready_1(D)->n_ready, D.12710
	movq	-8(%rbp), %rax	# first, tmp70
	movl	$rank_for_schedule, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	specqsort	#
.L117:
	.loc 1 953 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ready_sort, .-ready_sort
	.type	adjust_priority, @function
adjust_priority:
.LFB21:
	.loc 1 962 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# prev, prev
	.loc 1 970 0
	movq	targetm+176(%rip), %rax	# targetm.sched.adjust_priority, D.12711
	testq	%rax, %rax	# D.12711
	je	.L120	#,
	.loc 1 971 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.58
	movq	-24(%rbp), %rax	# prev, tmp73
	movl	8(%rax), %eax	# prev_3(D)->fld[0].rtint, D.12712
	movslq	%eax, %rdx	# D.12712, D.12713
	movq	%rdx, %rax	# D.12713, tmp74
	addq	%rax, %rax	# tmp74
	addq	%rdx, %rax	# D.12713, tmp74
	salq	$4, %rax	#, tmp75
	leaq	(%rcx,%rax), %rbx	#, D.12714
	.loc 1 972 0
	movq	targetm+176(%rip), %rcx	# targetm.sched.adjust_priority, D.12711
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.59
	movq	-24(%rbp), %rax	# prev, tmp76
	movl	8(%rax), %eax	# prev_3(D)->fld[0].rtint, D.12712
	movslq	%eax, %rdx	# D.12712, D.12713
	movq	%rdx, %rax	# D.12713, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# D.12713, tmp77
	salq	$4, %rax	#, tmp78
	addq	%rsi, %rax	# h_i_d.59, D.12714
	movl	20(%rax), %edx	# _13->priority, D.12712
	movq	-24(%rbp), %rax	# prev, tmp79
	movl	%edx, %esi	# D.12712,
	movq	%rax, %rdi	# tmp79,
	call	*%rcx	# D.12711
	.loc 1 971 0
	movl	%eax, 20(%rbx)	# D.12712, _7->priority
.L120:
	.loc 1 973 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	adjust_priority, .-adjust_priority
	.local	last_clock_var
	.comm	last_clock_var,4,4
	.section	.rodata
	.align 8
.LC5:
	.string	";;\t\t--> scheduling insn <<<%d>>> on unit "
	.align 8
.LC6:
	.string	";;\t\tdependences resolved: insn %s "
.LC7:
	.string	"into ready\n"
.LC8:
	.string	"into queue with cost=%d\n"
	.text
	.type	schedule_insn, @function
schedule_insn:
.LFB22:
	.loc 1 988 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# ready, ready
	movl	%edx, -52(%rbp)	# clock, clock
	.loc 1 992 0
	movq	-40(%rbp), %rax	# insn, tmp121
	movq	%rax, %rdi	# tmp121,
	call	insn_unit	#
	movl	%eax, -28(%rbp)	# tmp122, unit
	.loc 1 994 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.37
	cmpl	$1, %eax	#, sched_verbose.37
	jle	.L123	#,
	.loc 1 996 0
	movq	-40(%rbp), %rax	# insn, tmp123
	movl	8(%rax), %edx	# insn_3(D)->fld[0].rtint, D.12715
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.38
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# sched_dump.38,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 998 0
	movq	-40(%rbp), %rax	# insn, tmp124
	movq	%rax, %rdi	# tmp124,
	call	insn_print_units	#
	.loc 1 999 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.39
	movq	%rax, %rsi	# sched_dump.39,
	movl	$10, %edi	#,
	call	fputc	#
.L123:
	.loc 1 1002 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.40
	testl	%eax, %eax	# sched_verbose.40
	je	.L136	#,
	.loc 1 1002 0 is_stmt 0 discriminator 1
	cmpl	$-1, -28(%rbp)	#, unit
	jne	.L136	#,
	.loc 1 1003 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp125
	movq	%rax, %rdi	# tmp125,
	call	visualize_no_unit	#
.L136:
	.loc 1 1006 0
	movl	-52(%rbp), %edx	# clock, tmp126
	movq	-40(%rbp), %rcx	# insn, tmp127
	movl	-28(%rbp), %eax	# unit, tmp128
	movq	%rcx, %rsi	# tmp127,
	movl	%eax, %edi	# tmp128,
	call	schedule_unit	#
	.loc 1 1008 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.41
	movq	-40(%rbp), %rax	# insn, tmp129
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# D.12716, tmp130
	salq	$4, %rax	#, tmp131
	addq	%rcx, %rax	# h_i_d.41, D.12717
	movq	(%rax), %rax	# _15->depend, D.12718
	testq	%rax, %rax	# D.12718
	jne	.L125	#,
	.loc 1 1009 0
	jmp	.L122	#
.L125:
	.loc 1 1011 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.42
	movq	-40(%rbp), %rax	# insn, tmp132
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# D.12716, tmp133
	salq	$4, %rax	#, tmp134
	addq	%rcx, %rax	# h_i_d.42, D.12717
	movq	(%rax), %rax	# _21->depend, tmp135
	movq	%rax, -16(%rbp)	# tmp135, link
	jmp	.L127	#
.L133:
.LBB7:
	.loc 1 1013 0
	movq	-16(%rbp), %rax	# link, tmp136
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp137
	movq	%rax, -8(%rbp)	# tmp137, next
	.loc 1 1014 0
	movq	-8(%rbp), %rdx	# next, tmp138
	movq	-16(%rbp), %rcx	# link, tmp139
	movq	-40(%rbp), %rax	# insn, tmp140
	movq	%rcx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	insn_cost	#
	movl	%eax, -24(%rbp)	# tmp141, cost
	.loc 1 1016 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.43
	movq	-8(%rbp), %rax	# next, tmp142
	movl	8(%rax), %eax	# next_23->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp143
	addq	%rax, %rax	# tmp143
	addq	%rdx, %rax	# D.12716, tmp143
	salq	$4, %rax	#, tmp144
	leaq	(%rcx,%rax), %rsi	#, D.12717
	movl	-24(%rbp), %eax	# cost, tmp145
	movl	-52(%rbp), %edx	# clock, tmp146
	leal	(%rdx,%rax), %ecx	#, D.12715
	movq	h_i_d(%rip), %rdi	# h_i_d, h_i_d.44
	movq	-8(%rbp), %rax	# next, tmp147
	movl	8(%rax), %eax	# next_23->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# D.12716, tmp148
	salq	$4, %rax	#, tmp149
	addq	%rdi, %rax	# h_i_d.44, D.12717
	movl	36(%rax), %eax	# _35->tick, D.12715
	cmpl	%eax, %ecx	# D.12715, D.12715
	cmovge	%ecx, %eax	# D.12715,, D.12715
	movl	%eax, 36(%rsi)	# D.12715, _29->tick
	.loc 1 1018 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.45
	movq	-8(%rbp), %rax	# next, tmp150
	movl	8(%rax), %eax	# next_23->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp151
	addq	%rax, %rax	# tmp151
	addq	%rdx, %rax	# D.12716, tmp151
	salq	$4, %rax	#, tmp152
	leaq	(%rcx,%rax), %rdx	#, D.12717
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.46
	movq	-8(%rbp), %rax	# next, tmp153
	movl	8(%rax), %eax	# next_23->fld[0].rtint, D.12715
	movslq	%eax, %rcx	# D.12715, D.12716
	movq	%rcx, %rax	# D.12716, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rcx, %rax	# D.12716, tmp154
	salq	$4, %rax	#, tmp155
	addq	%rsi, %rax	# h_i_d.46, D.12717
	movl	24(%rax), %eax	# _47->dep_count, D.12715
	subl	$1, %eax	#, D.12715
	movl	%eax, 24(%rdx)	# D.12715, _42->dep_count
	movl	24(%rdx), %eax	# _42->dep_count, D.12715
	testl	%eax, %eax	# D.12715
	jne	.L128	#,
.LBB8:
	.loc 1 1020 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.47
	movq	-8(%rbp), %rax	# next, tmp156
	movl	8(%rax), %eax	# next_23->fld[0].rtint, D.12715
	movslq	%eax, %rdx	# D.12715, D.12716
	movq	%rdx, %rax	# D.12716, tmp157
	addq	%rax, %rax	# tmp157
	addq	%rdx, %rax	# D.12716, tmp157
	salq	$4, %rax	#, tmp158
	addq	%rcx, %rax	# h_i_d.47, D.12717
	movl	36(%rax), %eax	# _55->tick, D.12715
	subl	-52(%rbp), %eax	# clock, tmp160
	movl	%eax, -20(%rbp)	# tmp160, effective_cost
	.loc 1 1022 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.48
	movq	24(%rax), %rax	# current_sched_info.48_58->new_ready, D.12719
	movq	-8(%rbp), %rdx	# next, tmp161
	movq	%rdx, %rdi	# tmp161,
	call	*%rax	# D.12719
	testl	%eax, %eax	# D.12715
	jne	.L129	#,
	.loc 1 1023 0
	jmp	.L128	#
.L129:
	.loc 1 1025 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.49
	cmpl	$1, %eax	#, sched_verbose.49
	jle	.L130	#,
	.loc 1 1028 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.50
	movq	40(%rax), %rax	# current_sched_info.50_62->print_insn, D.12720
	.loc 1 1027 0
	movq	-8(%rbp), %rdx	# next, tmp162
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# tmp162,
	call	*%rax	# D.12720
	movq	%rax, %rdx	#, D.12721
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.51
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# sched_dump.51,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1030 0
	cmpl	$0, -20(%rbp)	#, effective_cost
	jg	.L131	#,
	.loc 1 1031 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.52
	movq	%rax, %rcx	# sched_dump.52,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	jmp	.L130	#
.L131:
	.loc 1 1033 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.53
	movl	-20(%rbp), %edx	# effective_cost, tmp163
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# sched_dump.53,
	movl	$0, %eax	#,
	call	fprintf	#
.L130:
	.loc 1 1038 0
	movq	-8(%rbp), %rax	# next, tmp164
	movq	%rax, %rdi	# tmp164,
	call	adjust_priority	#
	.loc 1 1039 0
	cmpl	$0, -20(%rbp)	#, effective_cost
	jg	.L132	#,
	.loc 1 1040 0
	movq	-8(%rbp), %rdx	# next, tmp165
	movq	-48(%rbp), %rax	# ready, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	ready_add	#
	jmp	.L128	#
.L132:
	.loc 1 1042 0
	movl	-20(%rbp), %edx	# effective_cost, tmp167
	movq	-8(%rbp), %rax	# next, tmp168
	movl	%edx, %esi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	queue_insn	#
.L128:
.LBE8:
.LBE7:
	.loc 1 1011 0
	movq	-16(%rbp), %rax	# link, tmp169
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp170
	movq	%rax, -16(%rbp)	# tmp170, link
.L127:
	.loc 1 1011 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L133	#,
	.loc 1 1051 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.54
	testl	%eax, %eax	# reload_completed.54
	je	.L122	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	movl	issue_rate(%rip), %eax	# issue_rate, issue_rate.55
	cmpl	$1, %eax	#, issue_rate.55
	jle	.L122	#,
	.loc 1 1053 0 is_stmt 1
	movl	last_clock_var(%rip), %eax	# last_clock_var, last_clock_var.57
	cmpl	%eax, -52(%rbp)	# last_clock_var.57, clock
	jle	.L134	#,
	.loc 1 1053 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, iftmp.56
	jmp	.L135	#
.L134:
	.loc 1 1053 0 discriminator 2
	movl	$0, %eax	#, iftmp.56
.L135:
	.loc 1 1053 0 discriminator 3
	movq	-40(%rbp), %rdx	# insn, tmp171
	movb	%al, 2(%rdx)	# iftmp.56, insn_3(D)->mode
	.loc 1 1054 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# clock, tmp172
	movl	%eax, last_clock_var(%rip)	# tmp172, last_clock_var
.L122:
	.loc 1 1056 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	schedule_insn, .-schedule_insn
	.type	unlink_other_notes, @function
unlink_other_notes:
.LFB23:
	.loc 1 1067 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# tail, tail
	.loc 1 1068 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	16(%rax), %rax	# insn_2(D)->fld[1].rtx, tmp72
	movq	%rax, -16(%rbp)	# tmp72, prev
	.loc 1 1070 0
	jmp	.L138	#
.L144:
.LBB9:
	.loc 1 1072 0
	movq	-24(%rbp), %rax	# insn, tmp73
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp74
	movq	%rax, -8(%rbp)	# tmp74, next
	.loc 1 1074 0
	cmpq	$0, -16(%rbp)	#, prev
	je	.L139	#,
	.loc 1 1075 0
	movq	-16(%rbp), %rax	# prev, tmp75
	movq	-8(%rbp), %rdx	# next, tmp76
	movq	%rdx, 24(%rax)	# tmp76, prev_3->fld[2].rtx
.L139:
	.loc 1 1076 0
	cmpq	$0, -8(%rbp)	#, next
	je	.L140	#,
	.loc 1 1077 0
	movq	-8(%rbp), %rax	# next, tmp77
	movq	-16(%rbp), %rdx	# prev, tmp78
	movq	%rdx, 16(%rax)	# tmp78, next_6->fld[1].rtx
.L140:
	.loc 1 1080 0
	movq	-24(%rbp), %rax	# insn, tmp79
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-96, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1081 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-95, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1082 0
	movq	-24(%rbp), %rax	# insn, tmp81
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-83, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1083 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-82, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1084 0
	movq	-24(%rbp), %rax	# insn, tmp83
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-86, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1085 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12727
	cmpl	$-85, %eax	#, D.12727
	je	.L141	#,
	.loc 1 1088 0
	movq	note_list(%rip), %rdx	# note_list, note_list.67
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	%rdx, 16(%rax)	# note_list.67, insn_1->fld[1].rtx
	.loc 1 1089 0
	movq	note_list(%rip), %rax	# note_list, note_list.68
	testq	%rax, %rax	# note_list.68
	je	.L142	#,
	.loc 1 1090 0
	movq	note_list(%rip), %rax	# note_list, note_list.69
	movq	-24(%rbp), %rdx	# insn, tmp86
	movq	%rdx, 24(%rax)	# tmp86, note_list.69_15->fld[2].rtx
.L142:
	.loc 1 1091 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movq	%rax, note_list(%rip)	# tmp87, note_list
.L141:
	.loc 1 1094 0
	movq	-8(%rbp), %rax	# next, tmp88
	movq	%rax, -24(%rbp)	# tmp88, insn
.L138:
.LBE9:
	.loc 1 1070 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp89
	cmpq	-32(%rbp), %rax	# tail, tmp89
	je	.L143	#,
	.loc 1 1070 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_1->code, D.12726
	cmpw	$37, %ax	#, D.12726
	je	.L144	#,
.L143:
	.loc 1 1096 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, D.12728
	.loc 1 1097 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	unlink_other_notes, .-unlink_other_notes
	.type	unlink_line_notes, @function
unlink_line_notes:
.LFB24:
	.loc 1 1105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# tail, tail
	.loc 1 1106 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movq	16(%rax), %rax	# insn_4(D)->fld[1].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, prev
	.loc 1 1108 0
	jmp	.L147	#
.L153:
.LBB10:
	.loc 1 1110 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp72
	movq	%rax, -8(%rbp)	# tmp72, next
	.loc 1 1112 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.70
	testl	%eax, %eax	# write_symbols.70
	je	.L148	#,
	.loc 1 1112 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp73
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.12730
	testl	%eax, %eax	# D.12730
	jle	.L148	#,
	.loc 1 1115 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, prev
	je	.L149	#,
	.loc 1 1116 0
	movq	-16(%rbp), %rax	# prev, tmp74
	movq	-8(%rbp), %rdx	# next, tmp75
	movq	%rdx, 24(%rax)	# tmp75, prev_3->fld[2].rtx
.L149:
	.loc 1 1117 0
	cmpq	$0, -8(%rbp)	#, next
	je	.L150	#,
	.loc 1 1118 0
	movq	-8(%rbp), %rax	# next, tmp76
	movq	-16(%rbp), %rdx	# prev, tmp77
	movq	%rdx, 16(%rax)	# tmp77, next_8->fld[1].rtx
.L150:
	.loc 1 1121 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.71
	movq	-24(%rbp), %rax	# insn, tmp78
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.12730
	movslq	%eax, %rdx	# D.12730, D.12731
	movq	%rdx, %rax	# D.12731, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# D.12731, tmp79
	salq	$4, %rax	#, tmp80
	leaq	(%rcx,%rax), %rdx	#, D.12732
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	%rax, 8(%rdx)	# tmp81, _15->line_note
	jmp	.L151	#
.L148:
	.loc 1 1124 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	%rax, -16(%rbp)	# tmp82, prev
.L151:
	.loc 1 1126 0
	movq	-8(%rbp), %rax	# next, tmp83
	movq	%rax, -24(%rbp)	# tmp83, insn
.L147:
.LBE10:
	.loc 1 1108 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp84
	cmpq	-32(%rbp), %rax	# tail, tmp84
	je	.L152	#,
	.loc 1 1108 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_1->code, D.12729
	cmpw	$37, %ax	#, D.12729
	je	.L153	#,
.L152:
	.loc 1 1128 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, D.12733
	.loc 1 1129 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	unlink_line_notes, .-unlink_line_notes
	.globl	get_block_head_tail
	.type	get_block_head_tail, @function
get_block_head_tail:
.LFB25:
	.loc 1 1138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# b, b
	movq	%rsi, -32(%rbp)	# headp, headp
	movq	%rdx, -40(%rbp)	# tailp, tailp
	.loc 1 1140 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.72
	movl	-20(%rbp), %edx	# b, tmp67
	movslq	%edx, %rdx	# tmp67, tmp66
	addq	$4, %rdx	#, tmp68
	movq	(%rax,%rdx,8), %rax	# basic_block_info.72_3->data.bb, D.12734
	movq	(%rax), %rax	# _5->head, tmp69
	movq	%rax, -16(%rbp)	# tmp69, head
	.loc 1 1141 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.73
	movl	-20(%rbp), %edx	# b, tmp71
	movslq	%edx, %rdx	# tmp71, tmp70
	addq	$4, %rdx	#, tmp72
	movq	(%rax,%rdx,8), %rax	# basic_block_info.73_7->data.bb, D.12734
	movq	8(%rax), %rax	# _8->end, tmp73
	movq	%rax, -8(%rbp)	# tmp73, tail
	.loc 1 1145 0
	jmp	.L156	#
.L161:
	.loc 1 1147 0
	movq	-16(%rbp), %rax	# head, tmp74
	movzwl	(%rax), %eax	# head_1->code, D.12735
	cmpw	$37, %ax	#, D.12735
	jne	.L157	#,
	.loc 1 1148 0
	movq	-16(%rbp), %rax	# head, tmp75
	movq	24(%rax), %rax	# head_1->fld[2].rtx, tmp76
	movq	%rax, -16(%rbp)	# tmp76, head
	jmp	.L156	#
.L157:
	.loc 1 1149 0
	movq	-8(%rbp), %rax	# tail, tmp77
	movzwl	(%rax), %eax	# tail_2->code, D.12735
	cmpw	$37, %ax	#, D.12735
	jne	.L158	#,
	.loc 1 1150 0
	movq	-8(%rbp), %rax	# tail, tmp78
	movq	16(%rax), %rax	# tail_2->fld[1].rtx, tmp79
	movq	%rax, -8(%rbp)	# tmp79, tail
	jmp	.L156	#
.L158:
	.loc 1 1151 0
	movq	-16(%rbp), %rax	# head, tmp80
	movzwl	(%rax), %eax	# head_1->code, D.12735
	cmpw	$36, %ax	#, D.12735
	jne	.L159	#,
	.loc 1 1152 0
	movq	-16(%rbp), %rax	# head, tmp81
	movq	24(%rax), %rax	# head_1->fld[2].rtx, tmp82
	movq	%rax, -16(%rbp)	# tmp82, head
	jmp	.L156	#
.L159:
	.loc 1 1154 0
	jmp	.L160	#
.L156:
	.loc 1 1145 0 discriminator 1
	movq	-16(%rbp), %rax	# head, tmp83
	cmpq	-8(%rbp), %rax	# tail, tmp83
	jne	.L161	#,
.L160:
	.loc 1 1157 0
	movq	-32(%rbp), %rax	# headp, tmp84
	movq	-16(%rbp), %rdx	# head, tmp85
	movq	%rdx, (%rax)	# tmp85, *headp_16(D)
	.loc 1 1158 0
	movq	-40(%rbp), %rax	# tailp, tmp86
	movq	-8(%rbp), %rdx	# tail, tmp87
	movq	%rdx, (%rax)	# tmp87, *tailp_17(D)
	.loc 1 1159 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	get_block_head_tail, .-get_block_head_tail
	.globl	no_real_insns_p
	.type	no_real_insns_p, @function
no_real_insns_p:
.LFB26:
	.loc 1 1166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# head, head
	movq	%rsi, -16(%rbp)	# tail, tail
	.loc 1 1167 0
	jmp	.L163	#
.L166:
	.loc 1 1169 0
	movq	-8(%rbp), %rax	# head, tmp64
	movzwl	(%rax), %eax	# head_1->code, D.12738
	cmpw	$37, %ax	#, D.12738
	je	.L164	#,
	.loc 1 1169 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# head, tmp65
	movzwl	(%rax), %eax	# head_1->code, D.12738
	cmpw	$36, %ax	#, D.12738
	je	.L164	#,
	.loc 1 1170 0 is_stmt 1
	movl	$0, %eax	#, D.12736
	jmp	.L165	#
.L164:
	.loc 1 1171 0
	movq	-8(%rbp), %rax	# head, tmp66
	movq	24(%rax), %rax	# head_1->fld[2].rtx, tmp67
	movq	%rax, -8(%rbp)	# tmp67, head
.L163:
	.loc 1 1167 0 discriminator 1
	movq	-16(%rbp), %rax	# tail, tmp68
	movq	24(%rax), %rax	# tail_4(D)->fld[2].rtx, D.12737
	cmpq	-8(%rbp), %rax	# head, D.12737
	jne	.L166	#,
	.loc 1 1173 0
	movl	$1, %eax	#, D.12736
.L165:
	.loc 1 1174 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	no_real_insns_p, .-no_real_insns_p
	.globl	rm_line_notes
	.type	rm_line_notes, @function
rm_line_notes:
.LFB27:
	.loc 1 1183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	movq	%rsi, -48(%rbp)	# tail, tail
	.loc 1 1187 0
	movq	-48(%rbp), %rax	# tail, tmp60
	movq	24(%rax), %rax	# tail_3(D)->fld[2].rtx, tmp61
	movq	%rax, -16(%rbp)	# tmp61, next_tail
	.loc 1 1188 0
	movq	-40(%rbp), %rax	# head, tmp62
	movq	%rax, -24(%rbp)	# tmp62, insn
	jmp	.L168	#
.L172:
.LBB11:
	.loc 1 1195 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movzwl	(%rax), %eax	# insn_2->code, D.12739
	cmpw	$37, %ax	#, D.12739
	jne	.L169	#,
	.loc 1 1197 0
	movq	-24(%rbp), %rax	# insn, tmp64
	movq	%rax, -8(%rbp)	# tmp64, prev
	.loc 1 1198 0
	movq	-16(%rbp), %rdx	# next_tail, tmp65
	movq	-24(%rbp), %rax	# insn, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	unlink_line_notes	#
	movq	%rax, -24(%rbp)	# tmp67, insn
	.loc 1 1200 0
	movq	-8(%rbp), %rax	# prev, tmp68
	cmpq	-48(%rbp), %rax	# tail, tmp68
	jne	.L170	#,
	.loc 1 1201 0
	movl	$__FUNCTION__.11179, %edx	#,
	movl	$1201, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L170:
	.loc 1 1202 0
	movq	-8(%rbp), %rax	# prev, tmp69
	cmpq	-40(%rbp), %rax	# head, tmp69
	jne	.L171	#,
	.loc 1 1203 0
	movl	$__FUNCTION__.11179, %edx	#,
	movl	$1203, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L171:
	.loc 1 1204 0
	movq	-24(%rbp), %rax	# insn, tmp70
	cmpq	-16(%rbp), %rax	# next_tail, tmp70
	jne	.L169	#,
	.loc 1 1205 0
	movl	$__FUNCTION__.11179, %edx	#,
	movl	$1205, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L169:
.LBE11:
	.loc 1 1188 0
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp72
	movq	%rax, -24(%rbp)	# tmp72, insn
.L168:
	.loc 1 1188 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp73
	cmpq	-16(%rbp), %rax	# next_tail, tmp73
	jne	.L172	#,
	.loc 1 1208 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	rm_line_notes, .-rm_line_notes
	.globl	save_line_notes
	.type	save_line_notes, @function
save_line_notes:
.LFB28:
	.loc 1 1217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# b, b
	movq	%rsi, -48(%rbp)	# head, head
	movq	%rdx, -56(%rbp)	# tail, tail
	.loc 1 1225 0
	movq	line_note_head(%rip), %rax	# line_note_head, line_note_head.74
	movl	-36(%rbp), %edx	# b, tmp70
	movslq	%edx, %rdx	# tmp70, D.12740
	salq	$3, %rdx	#, D.12740
	addq	%rdx, %rax	# D.12740, D.12741
	movq	(%rax), %rax	# *_8, tmp71
	movq	%rax, -24(%rbp)	# tmp71, line
	.loc 1 1228 0
	movq	-56(%rbp), %rax	# tail, tmp72
	movq	24(%rax), %rax	# tail_10(D)->fld[2].rtx, tmp73
	movq	%rax, -8(%rbp)	# tmp73, next_tail
	.loc 1 1230 0
	movq	-48(%rbp), %rax	# head, tmp74
	movq	%rax, -16(%rbp)	# tmp74, insn
	jmp	.L174	#
.L177:
	.loc 1 1231 0
	movq	-16(%rbp), %rax	# insn, tmp75
	movzwl	(%rax), %eax	# insn_3->code, D.12742
	cmpw	$37, %ax	#, D.12742
	jne	.L175	#,
	.loc 1 1231 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp76
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.12743
	testl	%eax, %eax	# D.12743
	jle	.L175	#,
	.loc 1 1232 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp77
	movq	%rax, -24(%rbp)	# tmp77, line
	jmp	.L176	#
.L175:
	.loc 1 1234 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.75
	movq	-16(%rbp), %rax	# insn, tmp78
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.12743
	movslq	%eax, %rdx	# D.12743, D.12740
	movq	%rdx, %rax	# D.12740, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# D.12740, tmp79
	salq	$4, %rax	#, tmp80
	leaq	(%rcx,%rax), %rdx	#, D.12744
	movq	-24(%rbp), %rax	# line, tmp81
	movq	%rax, 8(%rdx)	# tmp81, _21->line_note
.L176:
	.loc 1 1230 0
	movq	-16(%rbp), %rax	# insn, tmp82
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp83
	movq	%rax, -16(%rbp)	# tmp83, insn
.L174:
	.loc 1 1230 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp84
	cmpq	-8(%rbp), %rax	# next_tail, tmp84
	jne	.L177	#,
	.loc 1 1235 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	save_line_notes, .-save_line_notes
	.section	.rodata
	.align 8
.LC9:
	.string	";; added %d line-number notes\n"
	.text
	.globl	restore_line_notes
	.type	restore_line_notes, @function
restore_line_notes:
.LFB29:
	.loc 1 1244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# head, head
	movq	%rsi, -80(%rbp)	# tail, tail
	.loc 1 1246 0
	movl	$0, -52(%rbp)	#, added_notes
	.loc 1 1250 0
	movq	-80(%rbp), %rax	# tail, tmp91
	movq	24(%rax), %rax	# tail_10(D)->fld[2].rtx, tmp92
	movq	%rax, -32(%rbp)	# tmp92, next_tail
	.loc 1 1258 0
	movq	-72(%rbp), %rax	# head, tmp93
	movq	%rax, -48(%rbp)	# tmp93, line
	jmp	.L179	#
.L182:
	.loc 1 1259 0
	movq	-48(%rbp), %rax	# line, tmp94
	movzwl	(%rax), %eax	# line_1->code, D.12745
	cmpw	$37, %ax	#, D.12745
	jne	.L180	#,
	.loc 1 1259 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# line, tmp95
	movl	40(%rax), %eax	# line_1->fld[4].rtint, D.12746
	testl	%eax, %eax	# D.12746
	jle	.L180	#,
	.loc 1 1260 0 is_stmt 1
	jmp	.L181	#
.L180:
	.loc 1 1258 0
	movq	-48(%rbp), %rax	# line, tmp96
	movq	16(%rax), %rax	# line_1->fld[1].rtx, tmp97
	movq	%rax, -48(%rbp)	# tmp97, line
.L179:
	.loc 1 1258 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, line
	jne	.L182	#,
.L181:
	.loc 1 1264 0 is_stmt 1
	movq	-72(%rbp), %rax	# head, tmp98
	movq	%rax, -40(%rbp)	# tmp98, insn
	jmp	.L183	#
.L188:
	.loc 1 1265 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movzwl	(%rax), %eax	# insn_6->code, D.12745
	cmpw	$37, %ax	#, D.12745
	jne	.L184	#,
	.loc 1 1265 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp100
	movl	40(%rax), %eax	# insn_6->fld[4].rtint, D.12746
	testl	%eax, %eax	# D.12746
	jle	.L184	#,
	.loc 1 1266 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp101
	movq	%rax, -48(%rbp)	# tmp101, line
	jmp	.L185	#
.L184:
	.loc 1 1271 0
	movq	-40(%rbp), %rax	# insn, tmp102
	movzwl	(%rax), %eax	# insn_6->code, D.12745
	cmpw	$37, %ax	#, D.12745
	je	.L185	#,
	.loc 1 1272 0
	movq	-40(%rbp), %rax	# insn, tmp103
	movl	8(%rax), %edx	# insn_6->fld[0].rtint, D.12746
	movl	old_max_uid(%rip), %eax	# old_max_uid, old_max_uid.76
	cmpl	%eax, %edx	# old_max_uid.76, D.12746
	jge	.L185	#,
	.loc 1 1273 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.77
	movq	-40(%rbp), %rax	# insn, tmp104
	movl	8(%rax), %eax	# insn_6->fld[0].rtint, D.12746
	movslq	%eax, %rdx	# D.12746, D.12747
	movq	%rdx, %rax	# D.12747, tmp105
	addq	%rax, %rax	# tmp105
	addq	%rdx, %rax	# D.12747, tmp105
	salq	$4, %rax	#, tmp106
	addq	%rcx, %rax	# h_i_d.77, D.12748
	movq	8(%rax), %rax	# _27->line_note, tmp107
	movq	%rax, -24(%rbp)	# tmp107, note
	cmpq	$0, -24(%rbp)	#, note
	je	.L185	#,
	.loc 1 1274 0
	movq	-24(%rbp), %rax	# note, tmp108
	cmpq	-48(%rbp), %rax	# line, tmp108
	je	.L185	#,
	.loc 1 1275 0
	cmpq	$0, -48(%rbp)	#, line
	je	.L186	#,
	.loc 1 1276 0
	movq	-24(%rbp), %rax	# note, tmp109
	movl	40(%rax), %edx	# note_28->fld[4].rtint, D.12746
	movq	-48(%rbp), %rax	# line, tmp110
	movl	40(%rax), %eax	# line_3->fld[4].rtint, D.12746
	cmpl	%eax, %edx	# D.12746, D.12746
	jne	.L186	#,
	.loc 1 1277 0
	movq	-24(%rbp), %rax	# note, tmp111
	movq	32(%rax), %rdx	# note_28->fld[3].rtstr, D.12749
	movq	-48(%rbp), %rax	# line, tmp112
	movq	32(%rax), %rax	# line_3->fld[3].rtstr, D.12749
	cmpq	%rax, %rdx	# D.12749, D.12749
	je	.L185	#,
.L186:
	.loc 1 1279 0
	movq	-24(%rbp), %rax	# note, tmp113
	movq	%rax, -48(%rbp)	# tmp113, line
	.loc 1 1280 0
	movq	-40(%rbp), %rax	# insn, tmp114
	movq	16(%rax), %rax	# insn_6->fld[1].rtx, tmp115
	movq	%rax, -16(%rbp)	# tmp115, prev
	.loc 1 1281 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.78
	movq	-24(%rbp), %rax	# note, tmp116
	movl	8(%rax), %eax	# note_28->fld[0].rtint, D.12746
	movslq	%eax, %rdx	# D.12746, D.12747
	movq	%rdx, %rax	# D.12747, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# D.12747, tmp117
	salq	$4, %rax	#, tmp118
	addq	%rcx, %rax	# h_i_d.78, D.12748
	movq	8(%rax), %rax	# _39->line_note, D.12750
	testq	%rax, %rax	# D.12750
	je	.L187	#,
	.loc 1 1284 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.79
	movq	-24(%rbp), %rax	# note, tmp119
	movl	8(%rax), %eax	# note_28->fld[0].rtint, D.12746
	movslq	%eax, %rdx	# D.12746, D.12747
	movq	%rdx, %rax	# D.12747, tmp120
	addq	%rax, %rax	# tmp120
	addq	%rdx, %rax	# D.12747, tmp120
	salq	$4, %rax	#, tmp121
	addq	%rcx, %rax	# h_i_d.79, D.12748
	movq	$0, 8(%rax)	#, _45->line_note
	.loc 1 1285 0
	movq	-24(%rbp), %rax	# note, tmp122
	movq	-16(%rbp), %rdx	# prev, tmp123
	movq	%rdx, 16(%rax)	# tmp123, note_28->fld[1].rtx
	.loc 1 1286 0
	movq	-16(%rbp), %rax	# prev, tmp124
	movq	-24(%rbp), %rdx	# note, tmp125
	movq	%rdx, 24(%rax)	# tmp125, prev_34->fld[2].rtx
	.loc 1 1287 0
	movq	-40(%rbp), %rax	# insn, tmp126
	movq	-24(%rbp), %rdx	# note, tmp127
	movq	%rdx, 16(%rax)	# tmp127, insn_6->fld[1].rtx
	.loc 1 1288 0
	movq	-24(%rbp), %rax	# note, tmp128
	movq	-40(%rbp), %rdx	# insn, tmp129
	movq	%rdx, 24(%rax)	# tmp129, note_28->fld[2].rtx
	jmp	.L185	#
.L187:
	.loc 1 1292 0
	addl	$1, -52(%rbp)	#, added_notes
	.loc 1 1293 0
	movq	-24(%rbp), %rax	# note, tmp130
	movl	40(%rax), %eax	# note_28->fld[4].rtint, D.12746
	movq	-16(%rbp), %rdx	# prev, tmp131
	movq	%rdx, %rsi	# tmp131,
	movl	%eax, %edi	# D.12746,
	call	emit_note_after	#
	movq	%rax, -8(%rbp)	# tmp132, new
	.loc 1 1294 0
	movq	-24(%rbp), %rax	# note, tmp133
	movq	32(%rax), %rdx	# note_28->fld[3].rtstr, D.12749
	movq	-8(%rbp), %rax	# new, tmp134
	movq	%rdx, 32(%rax)	# D.12749, new_48->fld[3].rtstr
	.loc 1 1295 0
	movq	-24(%rbp), %rax	# note, tmp135
	movzbl	3(%rax), %eax	# *note_28, tmp138
	shrb	$6, %al	#, D.12751
	andl	$1, %eax	#, D.12751
	movq	-8(%rbp), %rdx	# new, tmp139
	andl	$1, %eax	#, tmp141
	sall	$6, %eax	#, tmp142
	movl	%eax, %ecx	# tmp142, tmp142
	movzbl	3(%rdx), %eax	# new_48->integrated, tmp143
	andl	$-65, %eax	#, tmp144
	orl	%ecx, %eax	# tmp142, tmp145
	movb	%al, 3(%rdx)	# tmp145, new_48->integrated
.L185:
	.loc 1 1264 0
	movq	-40(%rbp), %rax	# insn, tmp146
	movq	24(%rax), %rax	# insn_6->fld[2].rtx, tmp147
	movq	%rax, -40(%rbp)	# tmp147, insn
.L183:
	.loc 1 1264 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp148
	cmpq	-32(%rbp), %rax	# next_tail, tmp148
	jne	.L188	#,
	.loc 1 1298 0 is_stmt 1
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.80
	testl	%eax, %eax	# sched_verbose.80
	je	.L178	#,
	.loc 1 1298 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, added_notes
	je	.L178	#,
	.loc 1 1299 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.81
	movl	-52(%rbp), %edx	# added_notes, tmp149
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# sched_dump.81,
	movl	$0, %eax	#,
	call	fprintf	#
.L178:
	.loc 1 1300 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	restore_line_notes, .-restore_line_notes
	.section	.rodata
	.align 8
.LC10:
	.string	";; deleted %d line-number notes\n"
	.text
	.globl	rm_redundant_line_notes
	.type	rm_redundant_line_notes, @function
rm_redundant_line_notes:
.LFB30:
	.loc 1 1307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1308 0
	movq	$0, -16(%rbp)	#, line
	.loc 1 1309 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp74, insn
	.loc 1 1310 0
	movl	$0, -24(%rbp)	#, active_insn
	.loc 1 1311 0
	movl	$0, -20(%rbp)	#, notes
	.loc 1 1316 0
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp75, insn
	jmp	.L191	#
.L199:
	.loc 1 1317 0
	movq	-8(%rbp), %rax	# insn, tmp76
	movzwl	(%rax), %eax	# insn_4->code, D.12753
	cmpw	$37, %ax	#, D.12753
	jne	.L192	#,
	.loc 1 1317 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp77
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.12754
	testl	%eax, %eax	# D.12754
	jle	.L192	#,
	.loc 1 1320 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, active_insn
	jne	.L193	#,
	.loc 1 1322 0
	addl	$1, -20(%rbp)	#, notes
	.loc 1 1323 0
	movq	-8(%rbp), %rax	# insn, tmp78
	movq	$0, 32(%rax)	#, insn_4->fld[3].rtstr
	.loc 1 1324 0
	movq	-8(%rbp), %rax	# insn, tmp79
	movl	$-99, 40(%rax)	#, insn_4->fld[4].rtint
	jmp	.L194	#
.L193:
	.loc 1 1327 0
	cmpq	$0, -16(%rbp)	#, line
	je	.L195	#,
	.loc 1 1328 0
	movq	-16(%rbp), %rax	# line, tmp80
	movl	40(%rax), %edx	# line_3->fld[4].rtint, D.12754
	movq	-8(%rbp), %rax	# insn, tmp81
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.12754
	cmpl	%eax, %edx	# D.12754, D.12754
	jne	.L195	#,
	.loc 1 1329 0
	movq	-16(%rbp), %rax	# line, tmp82
	movq	32(%rax), %rdx	# line_3->fld[3].rtstr, D.12755
	movq	-8(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_4->fld[3].rtstr, D.12755
	cmpq	%rax, %rdx	# D.12755, D.12755
	jne	.L195	#,
	.loc 1 1331 0
	addl	$1, -20(%rbp)	#, notes
	.loc 1 1332 0
	movq	-16(%rbp), %rax	# line, tmp84
	movq	$0, 32(%rax)	#, line_3->fld[3].rtstr
	.loc 1 1333 0
	movq	-16(%rbp), %rax	# line, tmp85
	movl	$-99, 40(%rax)	#, line_3->fld[4].rtint
	.loc 1 1334 0
	movq	-8(%rbp), %rax	# insn, tmp86
	movq	%rax, -16(%rbp)	# tmp86, line
	jmp	.L194	#
.L195:
	.loc 1 1337 0
	movq	-8(%rbp), %rax	# insn, tmp87
	movq	%rax, -16(%rbp)	# tmp87, line
.L194:
	.loc 1 1338 0
	movl	$0, -24(%rbp)	#, active_insn
	jmp	.L196	#
.L192:
	.loc 1 1340 0
	movq	-8(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_4->code, D.12753
	cmpw	$37, %ax	#, D.12753
	jne	.L197	#,
	.loc 1 1341 0
	movq	-8(%rbp), %rax	# insn, tmp89
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.12754
	cmpl	$-99, %eax	#, D.12754
	je	.L196	#,
.L197:
	.loc 1 1342 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_4->code, D.12753
	.loc 1 1340 0 discriminator 1
	cmpw	$32, %ax	#, D.12753
	jne	.L198	#,
	.loc 1 1343 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12756
	movzwl	(%rax), %eax	# _29->code, D.12753
	cmpw	$48, %ax	#, D.12753
	je	.L196	#,
	.loc 1 1344 0
	movq	-8(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.12756
	movzwl	(%rax), %eax	# _31->code, D.12753
	cmpw	$49, %ax	#, D.12753
	je	.L196	#,
.L198:
	.loc 1 1345 0
	addl	$1, -24(%rbp)	#, active_insn
.L196:
	.loc 1 1316 0
	movq	-8(%rbp), %rax	# insn, tmp93
	movq	16(%rax), %rax	# insn_4->fld[1].rtx, tmp94
	movq	%rax, -8(%rbp)	# tmp94, insn
.L191:
	.loc 1 1316 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L199	#,
	.loc 1 1347 0 is_stmt 1
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.82
	testl	%eax, %eax	# sched_verbose.82
	je	.L190	#,
	.loc 1 1347 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, notes
	je	.L190	#,
	.loc 1 1348 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.83
	movl	-20(%rbp), %edx	# notes, tmp95
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# sched_dump.83,
	movl	$0, %eax	#,
	call	fprintf	#
.L190:
	.loc 1 1349 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	rm_redundant_line_notes, .-rm_redundant_line_notes
	.globl	rm_other_notes
	.type	rm_other_notes, @function
rm_other_notes:
.LFB31:
	.loc 1 1358 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	movq	%rsi, -48(%rbp)	# tail, tail
	.loc 1 1362 0
	movq	$0, note_list(%rip)	#, note_list
	.loc 1 1363 0
	movq	-40(%rbp), %rax	# head, tmp63
	cmpq	-48(%rbp), %rax	# tail, tmp63
	jne	.L202	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# head, tmp64
	movzwl	(%rax), %eax	# head_3(D)->code, D.12758
	movzwl	%ax, %eax	# D.12758, D.12759
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12760
	cmpb	$105, %al	#, D.12760
	je	.L202	#,
	.loc 1 1364 0 is_stmt 1
	jmp	.L201	#
.L202:
	.loc 1 1366 0
	movq	-48(%rbp), %rax	# tail, tmp66
	movq	24(%rax), %rax	# tail_4(D)->fld[2].rtx, tmp67
	movq	%rax, -16(%rbp)	# tmp67, next_tail
	.loc 1 1367 0
	movq	-40(%rbp), %rax	# head, tmp68
	movq	%rax, -24(%rbp)	# tmp68, insn
	jmp	.L204	#
.L208:
.LBB12:
	.loc 1 1374 0
	movq	-24(%rbp), %rax	# insn, tmp69
	movzwl	(%rax), %eax	# insn_2->code, D.12758
	cmpw	$37, %ax	#, D.12758
	jne	.L205	#,
	.loc 1 1376 0
	movq	-24(%rbp), %rax	# insn, tmp70
	movq	%rax, -8(%rbp)	# tmp70, prev
	.loc 1 1378 0
	movq	-16(%rbp), %rdx	# next_tail, tmp71
	movq	-24(%rbp), %rax	# insn, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	unlink_other_notes	#
	movq	%rax, -24(%rbp)	# tmp73, insn
	.loc 1 1380 0
	movq	-8(%rbp), %rax	# prev, tmp74
	cmpq	-48(%rbp), %rax	# tail, tmp74
	jne	.L206	#,
	.loc 1 1381 0
	movl	$__FUNCTION__.11227, %edx	#,
	movl	$1381, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L206:
	.loc 1 1382 0
	movq	-8(%rbp), %rax	# prev, tmp75
	cmpq	-40(%rbp), %rax	# head, tmp75
	jne	.L207	#,
	.loc 1 1383 0
	movl	$__FUNCTION__.11227, %edx	#,
	movl	$1383, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L207:
	.loc 1 1384 0
	movq	-24(%rbp), %rax	# insn, tmp76
	cmpq	-16(%rbp), %rax	# next_tail, tmp76
	jne	.L205	#,
	.loc 1 1385 0
	movl	$__FUNCTION__.11227, %edx	#,
	movl	$1385, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L205:
.LBE12:
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# insn, tmp77
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp78
	movq	%rax, -24(%rbp)	# tmp78, insn
.L204:
	.loc 1 1367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp79
	cmpq	-16(%rbp), %rax	# next_tail, tmp79
	jne	.L208	#,
.L201:
	.loc 1 1388 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	rm_other_notes, .-rm_other_notes
	.type	find_insn_reg_weight, @function
find_insn_reg_weight:
.LFB32:
	.loc 1 1397 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# b, b
	.loc 1 1400 0
	leaq	-32(%rbp), %rdx	#, tmp84
	leaq	-40(%rbp), %rcx	#, tmp85
	movl	-52(%rbp), %eax	# b, tmp86
	movq	%rcx, %rsi	# tmp85,
	movl	%eax, %edi	# tmp86,
	call	get_block_head_tail	#
	.loc 1 1401 0
	movq	-32(%rbp), %rax	# tail, tail.84
	movq	24(%rax), %rax	# tail.84_10->fld[2].rtx, tmp87
	movq	%rax, -8(%rbp)	# tmp87, next_tail
	.loc 1 1403 0
	movq	-40(%rbp), %rax	# head, tmp88
	movq	%rax, -24(%rbp)	# tmp88, insn
	jmp	.L210	#
.L224:
.LBB13:
	.loc 1 1405 0
	movl	$0, -48(%rbp)	#, reg_weight
	.loc 1 1409 0
	movq	-24(%rbp), %rax	# insn, tmp89
	movzwl	(%rax), %eax	# insn_1->code, D.12761
	movzwl	%ax, %eax	# D.12761, D.12762
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12763
	cmpb	$105, %al	#, D.12763
	je	.L211	#,
	.loc 1 1410 0
	jmp	.L212	#
.L211:
	.loc 1 1413 0
	movq	-24(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, tmp92
	movq	%rax, -16(%rbp)	# tmp92, x
	.loc 1 1414 0
	movq	-16(%rbp), %rax	# x, tmp93
	movzwl	(%rax), %eax	# x_17->code, D.12761
	cmpw	$47, %ax	#, D.12761
	je	.L213	#,
	.loc 1 1414 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp94
	movzwl	(%rax), %eax	# x_17->code, D.12761
	cmpw	$49, %ax	#, D.12761
	jne	.L214	#,
.L213:
	.loc 1 1415 0 is_stmt 1
	movq	-16(%rbp), %rax	# x, tmp95
	movq	8(%rax), %rax	# x_17->fld[0].rtx, D.12764
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12764,
	call	register_operand	#
	testl	%eax, %eax	# D.12762
	je	.L214	#,
	.loc 1 1416 0
	addl	$1, -48(%rbp)	#, reg_weight
	jmp	.L215	#
.L214:
	.loc 1 1417 0
	movq	-16(%rbp), %rax	# x, tmp96
	movzwl	(%rax), %eax	# x_17->code, D.12761
	cmpw	$39, %ax	#, D.12761
	jne	.L215	#,
.LBB14:
	.loc 1 1420 0
	movq	-16(%rbp), %rax	# x, tmp97
	movq	8(%rax), %rax	# x_17->fld[0].rtvec, D.12765
	movl	(%rax), %eax	# _24->num_elem, D.12762
	subl	$1, %eax	#, tmp98
	movl	%eax, -44(%rbp)	# tmp98, j
	jmp	.L216	#
.L219:
	.loc 1 1422 0
	movq	-24(%rbp), %rax	# insn, tmp99
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.12764
	movq	8(%rax), %rax	# _27->fld[0].rtvec, D.12765
	movl	-44(%rbp), %edx	# j, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	movq	8(%rax,%rdx,8), %rax	# _28->elem, tmp102
	movq	%rax, -16(%rbp)	# tmp102, x
	.loc 1 1423 0
	movq	-16(%rbp), %rax	# x, tmp103
	movzwl	(%rax), %eax	# x_29->code, D.12761
	cmpw	$47, %ax	#, D.12761
	je	.L217	#,
	.loc 1 1423 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# x, tmp104
	movzwl	(%rax), %eax	# x_29->code, D.12761
	cmpw	$49, %ax	#, D.12761
	jne	.L218	#,
.L217:
	.loc 1 1424 0 is_stmt 1
	movq	-16(%rbp), %rax	# x, tmp105
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.12764
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12764,
	call	register_operand	#
	testl	%eax, %eax	# D.12762
	je	.L218	#,
	.loc 1 1425 0
	addl	$1, -48(%rbp)	#, reg_weight
.L218:
	.loc 1 1420 0
	subl	$1, -44(%rbp)	#, j
.L216:
	.loc 1 1420 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, j
	jns	.L219	#,
.L215:
.LBE14:
	.loc 1 1430 0 is_stmt 1
	movq	-24(%rbp), %rax	# insn, tmp106
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp107
	movq	%rax, -16(%rbp)	# tmp107, x
	jmp	.L220	#
.L223:
	.loc 1 1432 0
	movq	-16(%rbp), %rax	# x, tmp108
	movzbl	2(%rax), %eax	# x_7->mode, D.12766
	cmpb	$1, %al	#, D.12766
	je	.L221	#,
	.loc 1 1433 0
	movq	-16(%rbp), %rax	# x, tmp109
	movzbl	2(%rax), %eax	# x_7->mode, D.12766
	cmpb	$10, %al	#, D.12766
	jne	.L222	#,
.L221:
	.loc 1 1434 0
	subl	$1, -48(%rbp)	#, reg_weight
.L222:
	.loc 1 1430 0
	movq	-16(%rbp), %rax	# x, tmp110
	movq	16(%rax), %rax	# x_7->fld[1].rtx, tmp111
	movq	%rax, -16(%rbp)	# tmp111, x
.L220:
	.loc 1 1430 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, x
	jne	.L223	#,
	.loc 1 1437 0 is_stmt 1
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.85
	movq	-24(%rbp), %rax	# insn, tmp112
	movl	8(%rax), %eax	# insn_1->fld[0].rtint, D.12762
	movslq	%eax, %rdx	# D.12762, D.12767
	movq	%rdx, %rax	# D.12767, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# D.12767, tmp113
	salq	$4, %rax	#, tmp114
	leaq	(%rcx,%rax), %rdx	#, D.12768
	movl	-48(%rbp), %eax	# reg_weight, tmp115
	movw	%ax, 44(%rdx)	# D.12769, _45->reg_weight
.L212:
.LBE13:
	.loc 1 1403 0
	movq	-24(%rbp), %rax	# insn, tmp116
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp117
	movq	%rax, -24(%rbp)	# tmp117, insn
.L210:
	.loc 1 1403 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp118
	cmpq	-8(%rbp), %rax	# next_tail, tmp118
	jne	.L224	#,
	.loc 1 1439 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	find_insn_reg_weight, .-find_insn_reg_weight
	.local	clock_var
	.comm	clock_var,4,4
	.section	.rodata
.LC11:
	.string	";;\t\tQ-->Ready: insn %s: "
	.align 8
.LC12:
	.string	"moving to ready without stalls\n"
	.align 8
.LC13:
	.string	"moving to ready with %d stalls\n"
	.text
	.type	queue_to_ready, @function
queue_to_ready:
.LFB33:
	.loc 1 1449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ready, ready
	.loc 1 1453 0
	movl	q_ptr(%rip), %eax	# q_ptr, q_ptr.86
	addl	$1, %eax	#, D.12770
	andl	$127, %eax	#, q_ptr.87
	movl	%eax, q_ptr(%rip)	# q_ptr.87, q_ptr
	.loc 1 1457 0
	movl	q_ptr(%rip), %eax	# q_ptr, q_ptr.88
	cltq
	movq	insn_queue(,%rax,8), %rax	# insn_queue, tmp97
	movq	%rax, -16(%rbp)	# tmp97, link
	jmp	.L226	#
.L229:
	.loc 1 1459 0
	movq	-16(%rbp), %rax	# link, tmp98
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp99
	movq	%rax, -8(%rbp)	# tmp99, insn
	.loc 1 1460 0
	movl	q_size(%rip), %eax	# q_size, q_size.89
	subl	$1, %eax	#, q_size.90
	movl	%eax, q_size(%rip)	# q_size.90, q_size
	.loc 1 1462 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.91
	cmpl	$1, %eax	#, sched_verbose.91
	jle	.L227	#,
	.loc 1 1464 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.92
	movq	40(%rax), %rax	# current_sched_info.92_13->print_insn, D.12771
	.loc 1 1463 0
	movq	-8(%rbp), %rdx	# insn, tmp100
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# tmp100,
	call	*%rax	# D.12771
	movq	%rax, %rdx	#, D.12772
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.93
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# sched_dump.93,
	movl	$0, %eax	#,
	call	fprintf	#
.L227:
	.loc 1 1466 0
	movq	-8(%rbp), %rdx	# insn, tmp101
	movq	-40(%rbp), %rax	# ready, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	ready_add	#
	.loc 1 1467 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.94
	cmpl	$1, %eax	#, sched_verbose.94
	jle	.L228	#,
	.loc 1 1468 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.95
	movq	%rax, %rcx	# sched_dump.95,
	movl	$31, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
.L228:
	.loc 1 1457 0
	movq	-16(%rbp), %rax	# link, tmp103
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp104
	movq	%rax, -16(%rbp)	# tmp104, link
.L226:
	.loc 1 1457 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L229	#,
	.loc 1 1470 0 is_stmt 1
	movl	q_ptr(%rip), %eax	# q_ptr, q_ptr.96
	cltq
	movq	$0, insn_queue(,%rax,8)	#, insn_queue
	.loc 1 1474 0
	movq	-40(%rbp), %rax	# ready, tmp106
	movl	16(%rax), %eax	# ready_17(D)->n_ready, D.12770
	testl	%eax, %eax	# D.12770
	jne	.L225	#,
.LBB15:
	.loc 1 1478 0
	movl	$1, -20(%rbp)	#, stalls
	jmp	.L231	#
.L238:
	.loc 1 1480 0
	movl	q_ptr(%rip), %edx	# q_ptr, q_ptr.97
	movl	-20(%rbp), %eax	# stalls, tmp107
	addl	%edx, %eax	# q_ptr.97, D.12770
	andl	$127, %eax	#, D.12770
	cltq
	movq	insn_queue(,%rax,8), %rax	# insn_queue, tmp109
	movq	%rax, -16(%rbp)	# tmp109, link
	cmpq	$0, -16(%rbp)	#, link
	je	.L232	#,
	.loc 1 1482 0
	jmp	.L233	#
.L236:
	.loc 1 1484 0
	movq	-16(%rbp), %rax	# link, tmp110
	movq	8(%rax), %rax	# link_2->fld[0].rtx, tmp111
	movq	%rax, -8(%rbp)	# tmp111, insn
	.loc 1 1485 0
	movl	q_size(%rip), %eax	# q_size, q_size.98
	subl	$1, %eax	#, q_size.99
	movl	%eax, q_size(%rip)	# q_size.99, q_size
	.loc 1 1487 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.100
	cmpl	$1, %eax	#, sched_verbose.100
	jle	.L234	#,
	.loc 1 1489 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.101
	movq	40(%rax), %rax	# current_sched_info.101_32->print_insn, D.12771
	.loc 1 1488 0
	movq	-8(%rbp), %rdx	# insn, tmp112
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# tmp112,
	call	*%rax	# D.12771
	movq	%rax, %rdx	#, D.12772
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.102
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# sched_dump.102,
	movl	$0, %eax	#,
	call	fprintf	#
.L234:
	.loc 1 1491 0
	movq	-8(%rbp), %rdx	# insn, tmp113
	movq	-40(%rbp), %rax	# ready, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	ready_add	#
	.loc 1 1492 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.103
	cmpl	$1, %eax	#, sched_verbose.103
	jle	.L235	#,
	.loc 1 1493 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.104
	movl	-20(%rbp), %edx	# stalls, tmp115
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# sched_dump.104,
	movl	$0, %eax	#,
	call	fprintf	#
.L235:
	.loc 1 1482 0
	movq	-16(%rbp), %rax	# link, tmp116
	movq	16(%rax), %rax	# link_2->fld[1].rtx, tmp117
	movq	%rax, -16(%rbp)	# tmp117, link
.L233:
	.loc 1 1482 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L236	#,
	.loc 1 1495 0 is_stmt 1
	movl	q_ptr(%rip), %edx	# q_ptr, q_ptr.105
	movl	-20(%rbp), %eax	# stalls, tmp118
	addl	%edx, %eax	# q_ptr.105, D.12770
	andl	$127, %eax	#, D.12770
	cltq
	movq	$0, insn_queue(,%rax,8)	#, insn_queue
	.loc 1 1497 0
	movq	-40(%rbp), %rax	# ready, tmp120
	movl	16(%rax), %eax	# ready_17(D)->n_ready, D.12770
	testl	%eax, %eax	# D.12770
	je	.L232	#,
	.loc 1 1498 0
	jmp	.L237	#
.L232:
	.loc 1 1478 0
	addl	$1, -20(%rbp)	#, stalls
.L231:
	.loc 1 1478 0 is_stmt 0 discriminator 1
	cmpl	$127, -20(%rbp)	#, stalls
	jle	.L238	#,
.L237:
	.loc 1 1502 0 is_stmt 1
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.106
	testl	%eax, %eax	# sched_verbose.106
	je	.L239	#,
	.loc 1 1502 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, stalls
	je	.L239	#,
	.loc 1 1503 0 is_stmt 1
	movl	-20(%rbp), %eax	# stalls, tmp121
	movl	%eax, %edi	# tmp121,
	call	visualize_stall_cycles	#
.L239:
	.loc 1 1504 0
	movl	q_ptr(%rip), %edx	# q_ptr, q_ptr.107
	movl	-20(%rbp), %eax	# stalls, tmp122
	addl	%edx, %eax	# q_ptr.107, D.12770
	andl	$127, %eax	#, q_ptr.108
	movl	%eax, q_ptr(%rip)	# q_ptr.108, q_ptr
	.loc 1 1505 0
	movl	clock_var(%rip), %edx	# clock_var, clock_var.109
	movl	-20(%rbp), %eax	# stalls, tmp123
	addl	%edx, %eax	# clock_var.109, clock_var.110
	movl	%eax, clock_var(%rip)	# clock_var.110, clock_var
.L225:
.LBE15:
	.loc 1 1507 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	queue_to_ready, .-queue_to_ready
	.section	.rodata
.LC14:
	.string	"  %s"
	.text
	.type	debug_ready_list, @function
debug_ready_list:
.LFB34:
	.loc 1 1514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ready, ready
	.loc 1 1518 0
	movq	-24(%rbp), %rax	# ready, tmp70
	movl	16(%rax), %eax	# ready_2(D)->n_ready, D.12776
	testl	%eax, %eax	# D.12776
	jne	.L241	#,
	.loc 1 1519 0
	jmp	.L240	#
.L241:
	.loc 1 1521 0
	movq	-24(%rbp), %rax	# ready, tmp71
	movq	%rax, %rdi	# tmp71,
	call	ready_lastpos	#
	movq	%rax, -8(%rbp)	# tmp72, p
	.loc 1 1522 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L243	#
.L244:
	.loc 1 1523 0 discriminator 2
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.111
	movq	40(%rax), %rax	# current_sched_info.111_7->print_insn, D.12777
	movl	-12(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.12778
	leaq	0(,%rdx,8), %rcx	#, D.12778
	movq	-8(%rbp), %rdx	# p, tmp74
	addq	%rcx, %rdx	# D.12778, D.12779
	movq	(%rdx), %rdx	# *_11, D.12780
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# D.12780,
	call	*%rax	# D.12777
	movq	%rax, %rdx	#, D.12781
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.112
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# sched_dump.112,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1522 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L243:
	.loc 1 1522 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ready, tmp75
	movl	16(%rax), %eax	# ready_2(D)->n_ready, D.12776
	cmpl	-12(%rbp), %eax	# i, D.12776
	jg	.L244	#,
	.loc 1 1524 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.113
	movq	%rax, %rsi	# sched_dump.113,
	movl	$10, %edi	#,
	call	fputc	#
.L240:
	.loc 1 1525 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	debug_ready_list, .-debug_ready_list
	.type	move_insn1, @function
move_insn1:
.LFB35:
	.loc 1 1532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	movq	%rsi, -16(%rbp)	# last, last
	.loc 1 1533 0
	movq	-8(%rbp), %rax	# insn, tmp67
	movq	16(%rax), %rax	# insn_1(D)->fld[1].rtx, D.12783
	movq	-8(%rbp), %rdx	# insn, tmp68
	movq	24(%rdx), %rdx	# insn_1(D)->fld[2].rtx, D.12783
	movq	%rdx, 24(%rax)	# D.12783, _2->fld[2].rtx
	.loc 1 1534 0
	movq	-8(%rbp), %rax	# insn, tmp69
	movq	24(%rax), %rax	# insn_1(D)->fld[2].rtx, D.12783
	movq	-8(%rbp), %rdx	# insn, tmp70
	movq	16(%rdx), %rdx	# insn_1(D)->fld[1].rtx, D.12783
	movq	%rdx, 16(%rax)	# D.12783, _4->fld[1].rtx
	.loc 1 1536 0
	movq	-16(%rbp), %rax	# last, tmp71
	movq	24(%rax), %rdx	# last_6(D)->fld[2].rtx, D.12783
	movq	-8(%rbp), %rax	# insn, tmp72
	movq	%rdx, 24(%rax)	# D.12783, insn_1(D)->fld[2].rtx
	.loc 1 1537 0
	movq	-16(%rbp), %rax	# last, tmp73
	movq	24(%rax), %rax	# last_6(D)->fld[2].rtx, D.12783
	movq	-8(%rbp), %rdx	# insn, tmp74
	movq	%rdx, 16(%rax)	# tmp74, _8->fld[1].rtx
	.loc 1 1539 0
	movq	-16(%rbp), %rax	# last, tmp75
	movq	-8(%rbp), %rdx	# insn, tmp76
	movq	%rdx, 24(%rax)	# tmp76, last_6(D)->fld[2].rtx
	.loc 1 1540 0
	movq	-8(%rbp), %rax	# insn, tmp77
	movq	-16(%rbp), %rdx	# last, tmp78
	movq	%rdx, 16(%rax)	# tmp78, insn_1(D)->fld[1].rtx
	.loc 1 1542 0
	movq	-8(%rbp), %rax	# insn, D.12784
	.loc 1 1543 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	move_insn1, .-move_insn1
	.type	reemit_notes, @function
reemit_notes:
.LFB36:
	.loc 1 1556 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	movq	%rsi, -48(%rbp)	# last, last
	.loc 1 1559 0
	movq	-48(%rbp), %rax	# last, tmp68
	movq	%rax, -8(%rbp)	# tmp68, retval
	.loc 1 1560 0
	movq	-40(%rbp), %rax	# insn, tmp69
	movq	56(%rax), %rax	# insn_9(D)->fld[6].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, note
	jmp	.L248	#
.L254:
	.loc 1 1562 0
	movq	-16(%rbp), %rax	# note, tmp71
	movzbl	2(%rax), %eax	# note_6->mode, D.12785
	cmpb	$24, %al	#, D.12785
	jne	.L249	#,
.LBB16:
	.loc 1 1564 0
	movq	-16(%rbp), %rax	# note, tmp72
	movq	8(%rax), %rax	# note_6->fld[0].rtx, D.12786
	movq	8(%rax), %rax	# _12->fld[0].rtwint, D.12787
	movl	%eax, -20(%rbp)	# D.12787, note_type
	.loc 1 1566 0
	cmpl	$-83, -20(%rbp)	#, note_type
	je	.L250	#,
	.loc 1 1567 0
	cmpl	$-82, -20(%rbp)	#, note_type
	jne	.L251	#,
.L250:
	.loc 1 1569 0
	movq	-48(%rbp), %rdx	# last, tmp73
	movl	-20(%rbp), %eax	# note_type, tmp74
	movq	%rdx, %rsi	# tmp73,
	movl	%eax, %edi	# tmp74,
	call	emit_note_before	#
	movq	%rax, -48(%rbp)	# tmp75, last
	.loc 1 1570 0
	movq	-16(%rbp), %rdx	# note, tmp76
	movq	-40(%rbp), %rax	# insn, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	remove_note	#
	.loc 1 1571 0
	movq	-16(%rbp), %rax	# note, tmp78
	movq	16(%rax), %rax	# note_6->fld[1].rtx, tmp79
	movq	%rax, -16(%rbp)	# tmp79, note
	.loc 1 1572 0
	movq	-16(%rbp), %rax	# note, tmp80
	movq	8(%rax), %rdx	# note_21->fld[0].rtx, D.12786
	movq	-48(%rbp), %rax	# last, tmp81
	movq	%rdx, 32(%rax)	# D.12786, last_20->fld[3].rtx
	jmp	.L252	#
.L251:
	.loc 1 1576 0
	movq	-48(%rbp), %rdx	# last, tmp82
	movl	-20(%rbp), %eax	# note_type, tmp83
	movq	%rdx, %rsi	# tmp82,
	movl	%eax, %edi	# tmp83,
	call	emit_note_before	#
	movq	%rax, -48(%rbp)	# tmp84, last
	.loc 1 1577 0
	movq	-16(%rbp), %rdx	# note, tmp85
	movq	-40(%rbp), %rax	# insn, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	remove_note	#
	.loc 1 1578 0
	movq	-16(%rbp), %rax	# note, tmp87
	movq	16(%rax), %rax	# note_6->fld[1].rtx, tmp88
	movq	%rax, -16(%rbp)	# tmp88, note
	.loc 1 1579 0
	cmpl	$-86, -20(%rbp)	#, note_type
	je	.L253	#,
	.loc 1 1580 0
	cmpl	$-85, -20(%rbp)	#, note_type
	jne	.L252	#,
.L253:
	.loc 1 1581 0
	movq	-16(%rbp), %rax	# note, tmp89
	movq	8(%rax), %rax	# note_16->fld[0].rtx, D.12786
	movq	8(%rax), %rax	# _17->fld[0].rtwint, D.12787
	movl	%eax, %edx	# D.12787, D.12788
	movq	-48(%rbp), %rax	# last, tmp90
	movl	%edx, 32(%rax)	# D.12788, last_15->fld[3].rtint
.L252:
	.loc 1 1583 0
	movq	-16(%rbp), %rdx	# note, tmp91
	movq	-40(%rbp), %rax	# insn, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	remove_note	#
.L249:
.LBE16:
	.loc 1 1560 0
	movq	-16(%rbp), %rax	# note, tmp93
	movq	16(%rax), %rax	# note_5->fld[1].rtx, tmp94
	movq	%rax, -16(%rbp)	# tmp94, note
.L248:
	.loc 1 1560 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, note
	jne	.L254	#,
	.loc 1 1586 0 is_stmt 1
	movq	-8(%rbp), %rax	# retval, D.12789
	.loc 1 1587 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	reemit_notes, .-reemit_notes
	.type	move_insn, @function
move_insn:
.LFB37:
	.loc 1 1598 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# last, last
	.loc 1 1599 0
	movq	$0, -16(%rbp)	#, retval
	.loc 1 1603 0
	jmp	.L257	#
.L260:
.LBB17:
	.loc 1 1605 0
	movq	-24(%rbp), %rax	# insn, tmp63
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp64
	movq	%rax, -8(%rbp)	# tmp64, prev
	.loc 1 1608 0
	movq	-32(%rbp), %rdx	# last, tmp65
	movq	-24(%rbp), %rax	# insn, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	move_insn1	#
	.loc 1 1611 0
	cmpq	$0, -16(%rbp)	#, retval
	jne	.L258	#,
	.loc 1 1612 0
	movq	-24(%rbp), %rdx	# insn, tmp67
	movq	-24(%rbp), %rax	# insn, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	reemit_notes	#
	movq	%rax, -16(%rbp)	# tmp69, retval
	jmp	.L259	#
.L258:
	.loc 1 1614 0
	movq	-24(%rbp), %rdx	# insn, tmp70
	movq	-24(%rbp), %rax	# insn, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	reemit_notes	#
.L259:
	.loc 1 1615 0
	movq	-8(%rbp), %rax	# prev, tmp72
	movq	%rax, -24(%rbp)	# tmp72, insn
.L257:
.LBE17:
	.loc 1 1603 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp73
	movzbl	3(%rax), %eax	# *insn_1, D.12790
	andl	$16, %eax	#, D.12790
	testb	%al, %al	# D.12790
	jne	.L260	#,
	.loc 1 1619 0
	movq	-32(%rbp), %rdx	# last, tmp74
	movq	-24(%rbp), %rax	# insn, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	move_insn1	#
	.loc 1 1623 0
	cmpq	$0, -16(%rbp)	#, retval
	jne	.L261	#,
	.loc 1 1624 0
	movq	-24(%rbp), %rdx	# insn, tmp76
	movq	-24(%rbp), %rax	# insn, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	reemit_notes	#
	movq	%rax, -16(%rbp)	# tmp78, retval
	jmp	.L262	#
.L261:
	.loc 1 1626 0
	movq	-24(%rbp), %rdx	# insn, tmp79
	movq	-24(%rbp), %rax	# insn, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	reemit_notes	#
.L262:
	.loc 1 1628 0
	movq	-16(%rbp), %rax	# retval, D.12791
	.loc 1 1629 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	move_insn, .-move_insn
	.globl	sched_emit_insn
	.type	sched_emit_insn, @function
sched_emit_insn:
.LFB38:
	.loc 1 1637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	.loc 1 1638 0
	movq	last_scheduled_insn(%rip), %rdx	# last_scheduled_insn, last_scheduled_insn.114
	movq	-24(%rbp), %rax	# pat, tmp62
	movq	%rdx, %rsi	# last_scheduled_insn.114,
	movq	%rax, %rdi	# tmp62,
	call	emit_insn_after	#
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 1639 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rax, last_scheduled_insn(%rip)	# tmp64, last_scheduled_insn
	.loc 1 1640 0
	movq	-8(%rbp), %rax	# insn, D.12792
	.loc 1 1641 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	sched_emit_insn, .-sched_emit_insn
	.section	.rodata
	.align 8
.LC15:
	.string	";;   ======================================================\n"
.LC16:
	.string	"after"
.LC17:
	.string	"before"
	.align 8
.LC18:
	.string	";;   -- basic block %d from %d to %d -- %s reload\n"
	.align 8
.LC19:
	.string	";;\t\tReady list after queue_to_ready:  "
.LC20:
	.string	"\n;;\tReady list (t =%3d):  "
.LC21:
	.string	";;\tReady list (final):  "
.LC22:
	.string	""
	.align 8
.LC23:
	.string	";;   total time = %d\n;;   new head = %d\n"
.LC24:
	.string	";;   new tail = %d\n\n"
	.text
	.globl	schedule_block
	.type	schedule_block, @function
schedule_block:
.LFB39:
	.loc 1 1650 0
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
	movl	%edi, -116(%rbp)	# b, b
	movl	%esi, -120(%rbp)	# rgn_n_insns, rgn_n_insns
	.loc 1 1655 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.115
	movq	64(%rax), %rax	# current_sched_info.115_9->prev_head, tmp163
	movq	%rax, -80(%rbp)	# tmp163, prev_head
	.loc 1 1656 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.116
	movq	72(%rax), %rax	# current_sched_info.116_11->next_tail, tmp164
	movq	%rax, -72(%rbp)	# tmp164, next_tail
	.loc 1 1657 0
	movq	-80(%rbp), %rax	# prev_head, tmp165
	movq	24(%rax), %rax	# prev_head_10->fld[2].rtx, tmp166
	movq	%rax, -96(%rbp)	# tmp166, head
	.loc 1 1658 0
	movq	-72(%rbp), %rax	# next_tail, tmp167
	movq	16(%rax), %rax	# next_tail_12->fld[1].rtx, tmp168
	movq	%rax, -64(%rbp)	# tmp168, tail
	.loc 1 1667 0
	movq	-96(%rbp), %rax	# head, tmp169
	cmpq	-64(%rbp), %rax	# tail, tmp169
	jne	.L267	#,
	.loc 1 1667 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# head, tmp170
	movzwl	(%rax), %eax	# head_13->code, D.12793
	movzwl	%ax, %eax	# D.12793, D.12794
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12795
	cmpb	$105, %al	#, D.12795
	je	.L267	#,
	.loc 1 1668 0 is_stmt 1
	movl	$__FUNCTION__.11312, %edx	#,
	movl	$1668, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L267:
	.loc 1 1671 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.117
	testl	%eax, %eax	# sched_verbose.117
	je	.L268	#,
	.loc 1 1673 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.118
	movq	%rax, %rcx	# sched_dump.118,
	movl	$60, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 1677 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.120
	.loc 1 1674 0
	testl	%eax, %eax	# reload_completed.120
	je	.L269	#,
	.loc 1 1674 0 is_stmt 0 discriminator 1
	movl	$.LC16, %eax	#, iftmp.119
	jmp	.L270	#
.L269:
	.loc 1 1674 0 discriminator 2
	movl	$.LC17, %eax	#, iftmp.119
.L270:
	.loc 1 1674 0 discriminator 3
	movq	-64(%rbp), %rdx	# tail, tmp172
	movl	8(%rdx), %esi	# tail_14->fld[0].rtint, D.12794
	movq	-96(%rbp), %rdx	# head, tmp173
	movl	8(%rdx), %ecx	# head_13->fld[0].rtint, D.12794
	movq	sched_dump(%rip), %rdi	# sched_dump, sched_dump.121
	movl	-116(%rbp), %edx	# b, tmp174
	movq	%rax, %r9	# iftmp.119,
	movl	%esi, %r8d	# D.12794,
	movl	$.LC18, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1678 0 is_stmt 1 discriminator 3
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.122
	movq	%rax, %rcx	# sched_dump.122,
	movl	$60, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 1679 0 discriminator 3
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.123
	movq	%rax, %rsi	# sched_dump.123,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1681 0 discriminator 3
	call	visualize_alloc	#
	.loc 1 1682 0 discriminator 3
	call	init_block_visualization	#
.L268:
	.loc 1 1685 0
	call	clear_units	#
	.loc 1 1688 0
	movl	-120(%rbp), %eax	# rgn_n_insns, tmp175
	leal	1(%rax), %edx	#, D.12794
	movl	issue_rate(%rip), %eax	# issue_rate, issue_rate.124
	addl	%edx, %eax	# D.12794, D.12794
	movl	%eax, -40(%rbp)	# D.12794, ready.veclen
	.loc 1 1689 0
	movl	-40(%rbp), %eax	# ready.veclen, D.12794
	subl	$1, %eax	#, D.12794
	movl	%eax, -36(%rbp)	# D.12794, ready.first
	.loc 1 1690 0
	movl	-40(%rbp), %eax	# ready.veclen, D.12794
	cltq
	salq	$3, %rax	#, D.12796
	movq	%rax, %rdi	# D.12796,
	call	xmalloc	#
	movq	%rax, -48(%rbp)	# D.12797, ready.vec
	.loc 1 1691 0
	movl	$0, -32(%rbp)	#, ready.n_ready
	.loc 1 1693 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.125
	movq	(%rax), %rax	# current_sched_info.125_39->init_ready_list, D.12798
	leaq	-48(%rbp), %rdx	#, tmp177
	movq	%rdx, %rdi	# tmp177,
	call	*%rax	# D.12798
	.loc 1 1695 0
	movq	targetm+200(%rip), %rax	# targetm.sched.md_init, D.12799
	testq	%rax, %rax	# D.12799
	je	.L271	#,
	.loc 1 1696 0
	movq	targetm+200(%rip), %rax	# targetm.sched.md_init, D.12799
	movl	-40(%rbp), %edx	# ready.veclen, D.12794
	movl	sched_verbose(%rip), %esi	# sched_verbose, sched_verbose.126
	movq	sched_dump(%rip), %rcx	# sched_dump, sched_dump.127
	movq	%rcx, %rdi	# sched_dump.127,
	call	*%rax	# D.12799
.L271:
	.loc 1 1699 0
	movq	-80(%rbp), %rax	# prev_head, tmp178
	movq	%rax, last_scheduled_insn(%rip)	# tmp178, last_scheduled_insn
	.loc 1 1703 0
	movl	$0, q_ptr(%rip)	#, q_ptr
	.loc 1 1704 0
	movl	$0, q_size(%rip)	#, q_size
	.loc 1 1705 0
	movl	$0, last_clock_var(%rip)	#, last_clock_var
	.loc 1 1706 0
	movl	$1024, %edx	#,
	movl	$0, %esi	#,
	movl	$insn_queue, %edi	#,
	call	memset	#
	.loc 1 1709 0
	movl	$-1, clock_var(%rip)	#, clock_var
	.loc 1 1712 0
	jmp	.L272	#
.L290:
	.loc 1 1714 0
	movl	clock_var(%rip), %eax	# clock_var, clock_var.128
	addl	$1, %eax	#, clock_var.129
	movl	%eax, clock_var(%rip)	# clock_var.129, clock_var
	.loc 1 1720 0
	leaq	-48(%rbp), %rax	#, tmp179
	movq	%rax, %rdi	# tmp179,
	call	queue_to_ready	#
	.loc 1 1722 0
	movl	-32(%rbp), %eax	# ready.n_ready, D.12794
	testl	%eax, %eax	# D.12794
	jne	.L273	#,
	.loc 1 1723 0
	movl	$__FUNCTION__.11312, %edx	#,
	movl	$1723, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L273:
	.loc 1 1725 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.130
	cmpl	$1, %eax	#, sched_verbose.130
	jle	.L274	#,
	.loc 1 1727 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.131
	movq	%rax, %rcx	# sched_dump.131,
	movl	$38, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
	.loc 1 1728 0
	leaq	-48(%rbp), %rax	#, tmp180
	movq	%rax, %rdi	# tmp180,
	call	debug_ready_list	#
.L274:
	.loc 1 1732 0
	leaq	-48(%rbp), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	ready_sort	#
	.loc 1 1736 0
	movq	targetm+216(%rip), %rax	# targetm.sched.reorder, D.12801
	testq	%rax, %rax	# D.12801
	je	.L275	#,
	.loc 1 1738 0
	movq	targetm+216(%rip), %rbx	# targetm.sched.reorder, D.12801
	movl	clock_var(%rip), %r12d	# clock_var, clock_var.132
	leaq	-48(%rbp), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	ready_lastpos	#
	movq	%rax, %rdx	#, D.12802
	movl	sched_verbose(%rip), %esi	# sched_verbose, sched_verbose.133
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.134
	.loc 1 1737 0
	leaq	-48(%rbp), %rcx	#, tmp183
	addq	$16, %rcx	#, tmp184
	movl	%r12d, %r8d	# clock_var.132,
	movq	%rax, %rdi	# sched_dump.134,
	call	*%rbx	# D.12801
	movl	%eax, -104(%rbp)	# tmp185, can_issue_more
	jmp	.L276	#
.L275:
	.loc 1 1742 0
	movl	issue_rate(%rip), %eax	# issue_rate, tmp186
	movl	%eax, -104(%rbp)	# tmp186, can_issue_more
.L276:
	.loc 1 1744 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.135
	testl	%eax, %eax	# sched_verbose.135
	je	.L277	#,
	.loc 1 1744 0 is_stmt 0 discriminator 1
	movq	targetm+232(%rip), %rax	# targetm.sched.cycle_display, D.12803
	testq	%rax, %rax	# D.12803
	je	.L277	#,
	.loc 1 1746 0 is_stmt 1
	movq	targetm+232(%rip), %rax	# targetm.sched.cycle_display, D.12803
	movq	last_scheduled_insn(%rip), %rcx	# last_scheduled_insn, last_scheduled_insn.136
	movl	clock_var(%rip), %edx	# clock_var, clock_var.137
	movq	%rcx, %rsi	# last_scheduled_insn.136,
	movl	%edx, %edi	# clock_var.137,
	call	*%rax	# D.12803
	movq	%rax, last_scheduled_insn(%rip)	# last_scheduled_insn.138, last_scheduled_insn
.L277:
	.loc 1 1748 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.139
	testl	%eax, %eax	# sched_verbose.139
	je	.L278	#,
	.loc 1 1750 0
	movl	clock_var(%rip), %edx	# clock_var, clock_var.140
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.141
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# sched_dump.141,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1751 0
	leaq	-48(%rbp), %rax	#, tmp187
	movq	%rax, %rdi	# tmp187,
	call	debug_ready_list	#
	.loc 1 1755 0
	jmp	.L279	#
.L278:
	jmp	.L279	#
.L289:
.LBB18:
	.loc 1 1760 0
	leaq	-48(%rbp), %rax	#, tmp188
	movq	%rax, %rdi	# tmp188,
	call	ready_remove_first	#
	movq	%rax, -56(%rbp)	# tmp189, insn
	.loc 1 1761 0
	movl	clock_var(%rip), %ebx	# clock_var, clock_var.142
	movq	-56(%rbp), %rax	# insn, tmp190
	movq	%rax, %rdi	# tmp190,
	call	insn_unit	#
	movq	-56(%rbp), %rsi	# insn, tmp191
	movl	$0, %ecx	#,
	movl	%ebx, %edx	# clock_var.142,
	movl	%eax, %edi	# D.12794,
	call	actual_hazard	#
	movl	%eax, -100(%rbp)	# tmp192, cost
	.loc 1 1763 0
	cmpl	$0, -100(%rbp)	#, cost
	jle	.L280	#,
	.loc 1 1765 0
	movl	-100(%rbp), %edx	# cost, tmp193
	movq	-56(%rbp), %rax	# insn, tmp194
	movl	%edx, %esi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	queue_insn	#
	.loc 1 1766 0
	jmp	.L279	#
.L280:
	.loc 1 1769 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.143
	movq	8(%rax), %rax	# current_sched_info.143_79->can_schedule_ready_p, D.12804
	movq	-56(%rbp), %rdx	# insn, tmp195
	movq	%rdx, %rdi	# tmp195,
	call	*%rax	# D.12804
	testl	%eax, %eax	# D.12794
	jne	.L281	#,
	.loc 1 1770 0
	jmp	.L282	#
.L281:
	.loc 1 1772 0
	movq	last_scheduled_insn(%rip), %rdx	# last_scheduled_insn, last_scheduled_insn.144
	movq	-56(%rbp), %rax	# insn, tmp196
	movq	%rdx, %rsi	# last_scheduled_insn.144,
	movq	%rax, %rdi	# tmp196,
	call	move_insn	#
	movq	%rax, last_scheduled_insn(%rip)	# last_scheduled_insn.145, last_scheduled_insn
	.loc 1 1774 0
	movq	targetm+192(%rip), %rax	# targetm.sched.variable_issue, D.12805
	testq	%rax, %rax	# D.12805
	je	.L283	#,
	.loc 1 1776 0
	movq	targetm+192(%rip), %rax	# targetm.sched.variable_issue, D.12805
	movl	sched_verbose(%rip), %esi	# sched_verbose, sched_verbose.146
	movq	sched_dump(%rip), %rdi	# sched_dump, sched_dump.147
	.loc 1 1775 0
	movl	-104(%rbp), %ecx	# can_issue_more, tmp197
	movq	-56(%rbp), %rdx	# insn, tmp198
	call	*%rax	# D.12805
	movl	%eax, -104(%rbp)	# tmp199, can_issue_more
	jmp	.L284	#
.L283:
	.loc 1 1779 0
	subl	$1, -104(%rbp)	#, can_issue_more
.L284:
	.loc 1 1781 0
	movl	clock_var(%rip), %edx	# clock_var, clock_var.148
	leaq	-48(%rbp), %rcx	#, tmp200
	movq	-56(%rbp), %rax	# insn, tmp201
	movq	%rcx, %rsi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	schedule_insn	#
.L282:
	.loc 1 1784 0
	movq	targetm+224(%rip), %rax	# targetm.sched.reorder2, D.12801
	testq	%rax, %rax	# D.12801
	je	.L279	#,
	.loc 1 1787 0
	movl	-32(%rbp), %eax	# ready.n_ready, D.12794
	testl	%eax, %eax	# D.12794
	jle	.L285	#,
	.loc 1 1788 0
	leaq	-48(%rbp), %rax	#, tmp202
	movq	%rax, %rdi	# tmp202,
	call	ready_sort	#
.L285:
	.loc 1 1790 0
	movq	targetm+224(%rip), %rbx	# targetm.sched.reorder2, D.12801
	movl	clock_var(%rip), %r12d	# clock_var, clock_var.149
	.loc 1 1791 0
	movl	-32(%rbp), %eax	# ready.n_ready, D.12794
	.loc 1 1790 0
	testl	%eax, %eax	# D.12794
	je	.L286	#,
	.loc 1 1790 0 is_stmt 0 discriminator 1
	leaq	-48(%rbp), %rax	#, tmp203
	movq	%rax, %rdi	# tmp203,
	call	ready_lastpos	#
	jmp	.L287	#
.L286:
	.loc 1 1790 0 discriminator 2
	movl	$0, %eax	#, iftmp.150
.L287:
	.loc 1 1790 0 discriminator 3
	movl	sched_verbose(%rip), %esi	# sched_verbose, sched_verbose.151
	movq	sched_dump(%rip), %rdi	# sched_dump, sched_dump.152
	.loc 1 1789 0 is_stmt 1 discriminator 3
	leaq	-48(%rbp), %rdx	#, tmp204
	addq	$16, %rdx	#, tmp205
	movl	%r12d, %r8d	# clock_var.149,
	movq	%rdx, %rcx	# tmp205,
	movq	%rax, %rdx	# iftmp.150,
	call	*%rbx	# D.12801
	movl	%eax, -104(%rbp)	# tmp206, can_issue_more
.L279:
.LBE18:
	.loc 1 1755 0 discriminator 1
	movl	-32(%rbp), %eax	# ready.n_ready, D.12794
	testl	%eax, %eax	# D.12794
	je	.L288	#,
	.loc 1 1756 0
	cmpl	$0, -104(%rbp)	#, can_issue_more
	je	.L288	#,
	.loc 1 1757 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.153
	movq	16(%rax), %rax	# current_sched_info.153_72->schedule_more_p, D.12800
	call	*%rax	# D.12800
	testl	%eax, %eax	# D.12794
	jne	.L289	#,
.L288:
	.loc 1 1798 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.154
	testl	%eax, %eax	# sched_verbose.154
	je	.L272	#,
	.loc 1 1799 0
	movl	clock_var(%rip), %eax	# clock_var, clock_var.155
	movl	%eax, %edi	# clock_var.155,
	call	visualize_scheduled_insns	#
.L272:
	.loc 1 1712 0 discriminator 1
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.156
	movq	16(%rax), %rax	# current_sched_info.156_46->schedule_more_p, D.12800
	call	*%rax	# D.12800
	testl	%eax, %eax	# D.12794
	jne	.L290	#,
	.loc 1 1802 0
	movq	targetm+208(%rip), %rax	# targetm.sched.md_finish, D.12806
	testq	%rax, %rax	# D.12806
	je	.L291	#,
	.loc 1 1803 0
	movq	targetm+208(%rip), %rax	# targetm.sched.md_finish, D.12806
	movl	sched_verbose(%rip), %ecx	# sched_verbose, sched_verbose.157
	movq	sched_dump(%rip), %rdx	# sched_dump, sched_dump.158
	movl	%ecx, %esi	# sched_verbose.157,
	movq	%rdx, %rdi	# sched_dump.158,
	call	*%rax	# D.12806
.L291:
	.loc 1 1806 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.159
	testl	%eax, %eax	# sched_verbose.159
	je	.L292	#,
	.loc 1 1808 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.160
	movq	%rax, %rcx	# sched_dump.160,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
	.loc 1 1809 0
	leaq	-48(%rbp), %rax	#, tmp207
	movq	%rax, %rdi	# tmp207,
	call	debug_ready_list	#
	.loc 1 1810 0
	movl	$.LC22, %edi	#,
	call	print_block_visualization	#
.L292:
	.loc 1 1815 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.161
	movzbl	96(%rax), %eax	# *current_sched_info.161_109, D.12807
	andl	$1, %eax	#, D.12807
	testb	%al, %al	# D.12807
	je	.L293	#,
	.loc 1 1815 0 is_stmt 0 discriminator 1
	movl	q_size(%rip), %eax	# q_size, q_size.162
	testl	%eax, %eax	# q_size.162
	je	.L293	#,
	.loc 1 1816 0 is_stmt 1
	movl	$__FUNCTION__.11312, %edx	#,
	movl	$1816, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L293:
	.loc 1 1819 0
	movq	-80(%rbp), %rax	# prev_head, tmp208
	movq	24(%rax), %rax	# prev_head_10->fld[2].rtx, tmp209
	movq	%rax, -96(%rbp)	# tmp209, head
	.loc 1 1820 0
	movq	last_scheduled_insn(%rip), %rax	# last_scheduled_insn, tmp210
	movq	%rax, -64(%rbp)	# tmp210, tail
	.loc 1 1825 0
	movq	note_list(%rip), %rax	# note_list, note_list.163
	testq	%rax, %rax	# note_list.163
	je	.L294	#,
.LBB19:
	.loc 1 1827 0
	movq	note_list(%rip), %rax	# note_list, tmp211
	movq	%rax, -88(%rbp)	# tmp211, note_head
	.loc 1 1829 0
	jmp	.L295	#
.L296:
	.loc 1 1831 0
	movq	-88(%rbp), %rax	# note_head, tmp212
	movq	16(%rax), %rax	# note_head_6->fld[1].rtx, tmp213
	movq	%rax, -88(%rbp)	# tmp213, note_head
.L295:
	.loc 1 1829 0 discriminator 1
	movq	-88(%rbp), %rax	# note_head, tmp214
	movq	16(%rax), %rax	# note_head_6->fld[1].rtx, D.12808
	testq	%rax, %rax	# D.12808
	jne	.L296	#,
	.loc 1 1834 0
	movq	-96(%rbp), %rax	# head, tmp215
	movq	16(%rax), %rdx	# head_113->fld[1].rtx, D.12808
	movq	-88(%rbp), %rax	# note_head, tmp216
	movq	%rdx, 16(%rax)	# D.12808, note_head_6->fld[1].rtx
	.loc 1 1835 0
	movq	-96(%rbp), %rax	# head, tmp217
	movq	16(%rax), %rax	# head_113->fld[1].rtx, D.12808
	movq	-88(%rbp), %rdx	# note_head, tmp218
	movq	%rdx, 24(%rax)	# tmp218, _120->fld[2].rtx
	.loc 1 1836 0
	movq	note_list(%rip), %rdx	# note_list, note_list.164
	movq	-96(%rbp), %rax	# head, tmp219
	movq	%rdx, 16(%rax)	# note_list.164, head_113->fld[1].rtx
	.loc 1 1837 0
	movq	note_list(%rip), %rax	# note_list, note_list.165
	movq	-96(%rbp), %rdx	# head, tmp220
	movq	%rdx, 24(%rax)	# tmp220, note_list.165_122->fld[2].rtx
	.loc 1 1838 0
	movq	-88(%rbp), %rax	# note_head, tmp221
	movq	%rax, -96(%rbp)	# tmp221, head
.L294:
.LBE19:
	.loc 1 1842 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.166
	testl	%eax, %eax	# sched_verbose.166
	je	.L297	#,
	.loc 1 1844 0
	movq	-96(%rbp), %rax	# head, tmp222
	movl	8(%rax), %ecx	# head_5->fld[0].rtint, D.12794
	movl	clock_var(%rip), %edx	# clock_var, clock_var.167
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.168
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# sched_dump.168,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1846 0
	movq	-64(%rbp), %rax	# tail, tmp223
	movl	8(%rax), %edx	# tail_114->fld[0].rtint, D.12794
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.169
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# sched_dump.169,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1848 0
	call	visualize_free	#
.L297:
	.loc 1 1851 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.170
	movq	-96(%rbp), %rdx	# head, tmp224
	movq	%rdx, 80(%rax)	# tmp224, current_sched_info.170_130->head
	.loc 1 1852 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.171
	movq	-64(%rbp), %rdx	# tail, tmp225
	movq	%rdx, 88(%rax)	# tmp225, current_sched_info.171_131->tail
	.loc 1 1854 0
	movq	-48(%rbp), %rax	# ready.vec, D.12802
	movq	%rax, %rdi	# D.12802,
	call	free	#
	.loc 1 1855 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	schedule_block, .-schedule_block
	.globl	set_priorities
	.type	set_priorities, @function
set_priorities:
.LFB40:
	.loc 1 1862 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	movq	%rsi, -48(%rbp)	# tail, tail
	.loc 1 1868 0
	movq	-40(%rbp), %rax	# head, tmp67
	movq	16(%rax), %rax	# head_6(D)->fld[1].rtx, tmp68
	movq	%rax, -8(%rbp)	# tmp68, prev_head
	.loc 1 1870 0
	movq	-40(%rbp), %rax	# head, tmp69
	cmpq	-48(%rbp), %rax	# tail, tmp69
	jne	.L299	#,
	.loc 1 1870 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# head, tmp70
	movzwl	(%rax), %eax	# head_6(D)->code, D.12820
	movzwl	%ax, %eax	# D.12820, D.12819
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12821
	cmpb	$105, %al	#, D.12821
	je	.L299	#,
	.loc 1 1871 0 is_stmt 1
	movl	$0, %eax	#, D.12819
	jmp	.L300	#
.L299:
	.loc 1 1873 0
	movl	$0, -20(%rbp)	#, n_insn
	.loc 1 1874 0
	movq	-48(%rbp), %rax	# tail, tmp72
	movq	%rax, -16(%rbp)	# tmp72, insn
	jmp	.L301	#
.L305:
	.loc 1 1876 0
	movq	-16(%rbp), %rax	# insn, tmp73
	movzwl	(%rax), %eax	# insn_1->code, D.12820
	cmpw	$37, %ax	#, D.12820
	jne	.L302	#,
	.loc 1 1877 0
	jmp	.L303	#
.L302:
	.loc 1 1879 0
	movq	-16(%rbp), %rax	# insn, tmp74
	movzbl	3(%rax), %eax	# *insn_1, D.12822
	andl	$16, %eax	#, D.12822
	testb	%al, %al	# D.12822
	jne	.L304	#,
	.loc 1 1880 0
	addl	$1, -20(%rbp)	#, n_insn
.L304:
	.loc 1 1881 0
	movq	-16(%rbp), %rax	# insn, tmp75
	movq	%rax, %rdi	# tmp75,
	call	priority	#
.L303:
	.loc 1 1874 0
	movq	-16(%rbp), %rax	# insn, tmp76
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, insn
.L301:
	.loc 1 1874 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn, tmp78
	cmpq	-8(%rbp), %rax	# prev_head, tmp78
	jne	.L305	#,
	.loc 1 1884 0 is_stmt 1
	movl	-20(%rbp), %eax	# n_insn, D.12819
.L300:
	.loc 1 1885 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	set_priorities, .-set_priorities
	.globl	sched_init
	.type	sched_init, @function
sched_init:
.LFB41:
	.loc 1 1893 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# dump_file, dump_file
	.loc 1 1905 0
	movl	sched_verbose_param(%rip), %eax	# sched_verbose_param, sched_verbose_param.174
	movl	%eax, sched_verbose(%rip)	# sched_verbose_param.174, sched_verbose
	.loc 1 1906 0
	movl	sched_verbose_param(%rip), %eax	# sched_verbose_param, sched_verbose_param.175
	testl	%eax, %eax	# sched_verbose_param.175
	jne	.L307	#,
	.loc 1 1906 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, dump_file
	je	.L307	#,
	.loc 1 1907 0 is_stmt 1
	movl	$1, sched_verbose(%rip)	#, sched_verbose
.L307:
	.loc 1 1908 0
	movl	sched_verbose_param(%rip), %eax	# sched_verbose_param, sched_verbose_param.177
	.loc 1 1909 0
	cmpl	$9, %eax	#, sched_verbose_param.177
	jg	.L308	#,
	.loc 1 1908 0
	cmpq	$0, -40(%rbp)	#, dump_file
	jne	.L309	#,
.L308:
	.loc 1 1909 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, iftmp.176
	jmp	.L310	#
.L309:
	.loc 1 1909 0 is_stmt 0
	movq	-40(%rbp), %rax	# dump_file, iftmp.176
.L310:
	.loc 1 1908 0 is_stmt 1
	movq	%rax, sched_dump(%rip)	# iftmp.176, sched_dump
	.loc 1 1912 0
	movq	targetm+184(%rip), %rax	# targetm.sched.issue_rate, D.12823
	testq	%rax, %rax	# D.12823
	je	.L311	#,
	.loc 1 1913 0
	movq	targetm+184(%rip), %rax	# targetm.sched.issue_rate, D.12823
	call	*%rax	# D.12823
	movl	%eax, issue_rate(%rip)	# issue_rate.178, issue_rate
	jmp	.L312	#
.L311:
	.loc 1 1915 0
	movl	$1, issue_rate(%rip)	#, issue_rate
.L312:
	.loc 1 1919 0
	call	get_max_uid	#
	addl	$1, %eax	#, old_max_uid.179
	movl	%eax, old_max_uid(%rip)	# old_max_uid.179, old_max_uid
	.loc 1 1921 0
	movl	old_max_uid(%rip), %eax	# old_max_uid, old_max_uid.180
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.12825,
	call	xcalloc	#
	movq	%rax, h_i_d(%rip)	# h_i_d.181, h_i_d
	.loc 1 1923 0
	movq	h_i_d(%rip), %rax	# h_i_d, h_i_d.182
	movl	$0, 16(%rax)	#, h_i_d.182_25->luid
	.loc 1 1924 0
	movl	$1, -24(%rbp)	#, luid
	.loc 1 1925 0
	movl	$0, -20(%rbp)	#, b
	jmp	.L313	#
.L318:
	.loc 1 1926 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.183
	movl	-20(%rbp), %edx	# b, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	addq	$4, %rdx	#, tmp138
	movq	(%rax,%rdx,8), %rax	# basic_block_info.183_29->data.bb, D.12826
	movq	(%rax), %rax	# _30->head, tmp139
	movq	%rax, -16(%rbp)	# tmp139, insn
.L317:
	.loc 1 1928 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.184
	movq	-16(%rbp), %rax	# insn, tmp140
	movl	8(%rax), %eax	# insn_7->fld[0].rtint, D.12824
	movslq	%eax, %rdx	# D.12824, D.12825
	movq	%rdx, %rax	# D.12825, tmp141
	addq	%rax, %rax	# tmp141
	addq	%rdx, %rax	# D.12825, tmp141
	salq	$4, %rax	#, tmp142
	leaq	(%rcx,%rax), %rdx	#, D.12827
	movl	-24(%rbp), %eax	# luid, tmp143
	movl	%eax, 16(%rdx)	# tmp143, _36->luid
	.loc 1 1935 0
	movq	-16(%rbp), %rax	# insn, tmp144
	movzwl	(%rax), %eax	# insn_7->code, D.12828
	cmpw	$37, %ax	#, D.12828
	je	.L314	#,
	.loc 1 1936 0
	addl	$1, -24(%rbp)	#, luid
.L314:
	.loc 1 1938 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.185
	movl	-20(%rbp), %edx	# b, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	addq	$4, %rdx	#, tmp147
	movq	(%rax,%rdx,8), %rax	# basic_block_info.185_39->data.bb, D.12826
	movq	8(%rax), %rax	# _40->end, D.12829
	cmpq	-16(%rbp), %rax	# insn, D.12829
	jne	.L315	#,
	.loc 1 1939 0
	nop
	.loc 1 1925 0
	addl	$1, -20(%rbp)	#, b
	jmp	.L313	#
.L315:
	.loc 1 1926 0
	movq	-16(%rbp), %rax	# insn, tmp148
	movq	24(%rax), %rax	# insn_7->fld[2].rtx, tmp149
	movq	%rax, -16(%rbp)	# tmp149, insn
	.loc 1 1940 0
	jmp	.L317	#
.L313:
	.loc 1 1925 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.186
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.186, b
	jl	.L318	#,
	.loc 1 1942 0
	movl	-24(%rbp), %eax	# luid, tmp150
	movl	%eax, %edi	# tmp150,
	call	init_dependency_caches	#
	.loc 1 1944 0
	movl	old_max_uid(%rip), %eax	# old_max_uid, old_max_uid.187
	movl	%eax, %edi	# old_max_uid.187,
	call	compute_bb_for_insn	#
	.loc 1 1946 0
	call	init_alias_analysis	#
	.loc 1 1948 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.188
	testl	%eax, %eax	# write_symbols.188
	je	.L319	#,
.LBB20:
	.loc 1 1952 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.189
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.12825,
	call	xcalloc	#
	movq	%rax, line_note_head(%rip)	# line_note_head.190, line_note_head
	.loc 1 1960 0
	movl	$0, -20(%rbp)	#, b
	jmp	.L320	#
.L330:
	.loc 1 1962 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.191
	movl	-20(%rbp), %edx	# b, tmp153
	movslq	%edx, %rdx	# tmp153, tmp152
	addq	$4, %rdx	#, tmp154
	movq	(%rax,%rdx,8), %rax	# basic_block_info.191_51->data.bb, D.12826
	movq	(%rax), %rax	# _52->head, tmp155
	movq	%rax, -8(%rbp)	# tmp155, line
	jmp	.L321	#
.L324:
	.loc 1 1963 0
	movq	-8(%rbp), %rax	# line, tmp156
	movzwl	(%rax), %eax	# line_8->code, D.12828
	cmpw	$37, %ax	#, D.12828
	jne	.L322	#,
	.loc 1 1963 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# line, tmp157
	movl	40(%rax), %eax	# line_8->fld[4].rtint, D.12824
	testl	%eax, %eax	# D.12824
	jle	.L322	#,
	.loc 1 1965 0 is_stmt 1
	movq	line_note_head(%rip), %rax	# line_note_head, line_note_head.192
	movl	-20(%rbp), %edx	# b, tmp158
	movslq	%edx, %rdx	# tmp158, D.12825
	salq	$3, %rdx	#, D.12825
	addq	%rax, %rdx	# line_note_head.192, D.12830
	movq	-8(%rbp), %rax	# line, tmp159
	movq	%rax, (%rdx)	# tmp159, *_59
	.loc 1 1966 0
	jmp	.L323	#
.L322:
	.loc 1 1962 0
	movq	-8(%rbp), %rax	# line, tmp160
	movq	16(%rax), %rax	# line_8->fld[1].rtx, tmp161
	movq	%rax, -8(%rbp)	# tmp161, line
.L321:
	.loc 1 1962 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, line
	jne	.L324	#,
.L323:
	.loc 1 1970 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.193
	movl	-20(%rbp), %edx	# b, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	addq	$4, %rdx	#, tmp164
	movq	(%rax,%rdx,8), %rax	# basic_block_info.193_61->data.bb, D.12826
	movq	(%rax), %rax	# _62->head, tmp165
	movq	%rax, -8(%rbp)	# tmp165, line
	jmp	.L325	#
.L329:
	.loc 1 1972 0
	movq	-8(%rbp), %rax	# line, tmp166
	movzwl	(%rax), %eax	# line_9->code, D.12828
	movzwl	%ax, %eax	# D.12828, D.12824
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.12831
	cmpb	$105, %al	#, D.12831
	jne	.L326	#,
	.loc 1 1973 0
	jmp	.L327	#
.L326:
	.loc 1 1974 0
	movq	-8(%rbp), %rax	# line, tmp168
	movzwl	(%rax), %eax	# line_9->code, D.12828
	cmpw	$37, %ax	#, D.12828
	jne	.L328	#,
	.loc 1 1974 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# line, tmp169
	movl	40(%rax), %eax	# line_9->fld[4].rtint, D.12824
	testl	%eax, %eax	# D.12824
	jle	.L328	#,
	.loc 1 1975 0 is_stmt 1
	movq	line_note_head(%rip), %rax	# line_note_head, line_note_head.194
	movl	-20(%rbp), %edx	# b, tmp170
	movslq	%edx, %rdx	# tmp170, D.12825
	salq	$3, %rdx	#, D.12825
	addq	%rax, %rdx	# line_note_head.194, D.12830
	movq	-8(%rbp), %rax	# line, tmp171
	movq	%rax, (%rdx)	# tmp171, *_72
.L328:
	.loc 1 1970 0
	movq	-8(%rbp), %rax	# line, tmp172
	movq	24(%rax), %rax	# line_9->fld[2].rtx, tmp173
	movq	%rax, -8(%rbp)	# tmp173, line
.L325:
	.loc 1 1970 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, line
	jne	.L329	#,
.L327:
	.loc 1 1960 0 is_stmt 1
	addl	$1, -20(%rbp)	#, b
.L320:
	.loc 1 1960 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.195
	cmpl	%eax, -20(%rbp)	# n_basic_blocks.195, b
	jl	.L330	#,
.L319:
.LBE20:
	.loc 1 1981 0 is_stmt 1
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.196
	testl	%eax, %eax	# sched_verbose.196
	je	.L331	#,
	.loc 1 1982 0
	call	init_target_units	#
.L331:
	.loc 1 1987 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.197
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.198
	subl	$1, %edx	#, D.12824
	movslq	%edx, %rdx	# D.12824, tmp174
	addq	$4, %rdx	#, tmp175
	movq	(%rax,%rdx,8), %rax	# basic_block_info.197_76->data.bb, D.12826
	movq	8(%rax), %rax	# _79->end, tmp176
	movq	%rax, -16(%rbp)	# tmp176, insn
	.loc 1 1988 0
	movq	-16(%rbp), %rax	# insn, tmp177
	movq	24(%rax), %rax	# insn_80->fld[2].rtx, D.12829
	testq	%rax, %rax	# D.12829
	je	.L332	#,
	.loc 1 1989 0
	movq	-16(%rbp), %rax	# insn, tmp178
	movzwl	(%rax), %eax	# insn_80->code, D.12828
	cmpw	$37, %ax	#, D.12828
	je	.L333	#,
	.loc 1 1990 0
	movq	-16(%rbp), %rax	# insn, tmp179
	movzwl	(%rax), %eax	# insn_80->code, D.12828
	cmpw	$36, %ax	#, D.12828
	je	.L333	#,
	.loc 1 1992 0
	movq	-16(%rbp), %rax	# insn, tmp180
	movq	24(%rax), %rax	# insn_80->fld[2].rtx, D.12829
	movzwl	(%rax), %eax	# _84->code, D.12828
	cmpw	$35, %ax	#, D.12828
	je	.L333	#,
.L332:
	.loc 1 1994 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.199
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.200
	subl	$1, %edx	#, D.12824
	movslq	%edx, %rdx	# D.12824, tmp181
	addq	$4, %rdx	#, tmp182
	movq	(%rax,%rdx,8), %rax	# basic_block_info.199_86->data.bb, D.12826
	movq	8(%rax), %rax	# _89->end, D.12829
	movq	%rax, %rsi	# D.12829,
	movl	$-99, %edi	#,
	call	emit_note_after	#
	.loc 1 1996 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.201
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.202
	subl	$1, %edx	#, D.12824
	movslq	%edx, %rdx	# D.12824, tmp183
	addq	$4, %rdx	#, tmp184
	movq	(%rax,%rdx,8), %rax	# basic_block_info.201_91->data.bb, D.12826
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.203
	movl	n_basic_blocks(%rip), %ecx	# n_basic_blocks, n_basic_blocks.204
	subl	$1, %ecx	#, D.12824
	movslq	%ecx, %rcx	# D.12824, tmp185
	addq	$4, %rcx	#, tmp186
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.203_95->data.bb, D.12826
	movq	8(%rdx), %rdx	# _98->end, D.12829
	movq	16(%rdx), %rdx	# _99->fld[1].rtx, D.12829
	movq	%rdx, 8(%rax)	# D.12829, _94->end
.L333:
	.loc 1 2001 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.205
	subl	$1, %eax	#, tmp187
	movl	%eax, -20(%rbp)	# tmp187, b
	jmp	.L334	#
.L335:
	.loc 1 2002 0 discriminator 2
	movl	-20(%rbp), %eax	# b, tmp188
	movl	%eax, %edi	# tmp188,
	call	find_insn_reg_weight	#
	.loc 1 2001 0 discriminator 2
	subl	$1, -20(%rbp)	#, b
.L334:
	.loc 1 2001 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, b
	jns	.L335	#,
	.loc 1 2003 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	sched_init, .-sched_init
	.globl	sched_finish
	.type	sched_finish, @function
sched_finish:
.LFB42:
	.loc 1 2009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2010 0
	movq	h_i_d(%rip), %rax	# h_i_d, h_i_d.206
	movq	%rax, %rdi	# h_i_d.206,
	call	free	#
	.loc 1 2011 0
	call	free_dependency_caches	#
	.loc 1 2012 0
	call	end_alias_analysis	#
	.loc 1 2013 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.207
	testl	%eax, %eax	# write_symbols.207
	je	.L336	#,
	.loc 1 2014 0
	movq	line_note_head(%rip), %rax	# line_note_head, line_note_head.208
	movq	%rax, %rdi	# line_note_head.208,
	call	free	#
.L336:
	.loc 1 2015 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	sched_finish, .-sched_finish
	.section	.rodata
	.type	__FUNCTION__.11105, @object
	.size	__FUNCTION__.11105, 14
__FUNCTION__.11105:
	.string	"ready_lastpos"
	.type	__FUNCTION__.11179, @object
	.size	__FUNCTION__.11179, 14
__FUNCTION__.11179:
	.string	"rm_line_notes"
	.type	__FUNCTION__.11227, @object
	.size	__FUNCTION__.11227, 15
__FUNCTION__.11227:
	.string	"rm_other_notes"
	.type	__FUNCTION__.11312, @object
	.size	__FUNCTION__.11312, 15
__FUNCTION__.11312:
	.string	"schedule_block"
	.align 16
	.type	__FUNCTION__.11114, @object
	.size	__FUNCTION__.11114, 19
__FUNCTION__.11114:
	.string	"ready_remove_first"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "i386.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "flags.h"
	.file 15 "insn-attr.h"
	.file 16 "sched-int.h"
	.file 17 "target.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e3f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF650
	.byte	0x1
	.long	.LASF651
	.long	.LASF652
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
	.long	0x1f6
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1f6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xcca
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
	.long	0xcda
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
	.long	.LASF653
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
	.long	.LASF91
	.byte	0x4
	.byte	0x8
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
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF43
	.uleb128 0xf
	.byte	0x8
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x4
	.byte	0xd4
	.long	0x211
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF46
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF47
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF48
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF49
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF50
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0x8c
	.long	0x1ff
	.uleb128 0x7
	.long	.LASF52
	.byte	0x5
	.byte	0x8d
	.long	0x1ff
	.uleb128 0x3
	.byte	0x8
	.long	0x250
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0x30
	.long	0x262
	.uleb128 0x4
	.long	.LASF55
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x3e3
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0xf7
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0xfc
	.long	0x24a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0xfd
	.long	0x24a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0xfe
	.long	0x24a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xff
	.long	0x24a
	.byte	0x20
	.uleb128 0x10
	.long	.LASF61
	.byte	0x7
	.value	0x100
	.long	0x24a
	.byte	0x28
	.uleb128 0x10
	.long	.LASF62
	.byte	0x7
	.value	0x101
	.long	0x24a
	.byte	0x30
	.uleb128 0x10
	.long	.LASF63
	.byte	0x7
	.value	0x102
	.long	0x24a
	.byte	0x38
	.uleb128 0x10
	.long	.LASF64
	.byte	0x7
	.value	0x103
	.long	0x24a
	.byte	0x40
	.uleb128 0x10
	.long	.LASF65
	.byte	0x7
	.value	0x105
	.long	0x24a
	.byte	0x48
	.uleb128 0x10
	.long	.LASF66
	.byte	0x7
	.value	0x106
	.long	0x24a
	.byte	0x50
	.uleb128 0x10
	.long	.LASF67
	.byte	0x7
	.value	0x107
	.long	0x24a
	.byte	0x58
	.uleb128 0x10
	.long	.LASF68
	.byte	0x7
	.value	0x109
	.long	0x41b
	.byte	0x60
	.uleb128 0x10
	.long	.LASF69
	.byte	0x7
	.value	0x10b
	.long	0x421
	.byte	0x68
	.uleb128 0x10
	.long	.LASF70
	.byte	0x7
	.value	0x10d
	.long	0x13e
	.byte	0x70
	.uleb128 0x10
	.long	.LASF71
	.byte	0x7
	.value	0x111
	.long	0x13e
	.byte	0x74
	.uleb128 0x10
	.long	.LASF72
	.byte	0x7
	.value	0x113
	.long	0x234
	.byte	0x78
	.uleb128 0x10
	.long	.LASF73
	.byte	0x7
	.value	0x117
	.long	0x21f
	.byte	0x80
	.uleb128 0x10
	.long	.LASF74
	.byte	0x7
	.value	0x118
	.long	0x226
	.byte	0x82
	.uleb128 0x10
	.long	.LASF75
	.byte	0x7
	.value	0x119
	.long	0x427
	.byte	0x83
	.uleb128 0x10
	.long	.LASF76
	.byte	0x7
	.value	0x11d
	.long	0x437
	.byte	0x88
	.uleb128 0x10
	.long	.LASF77
	.byte	0x7
	.value	0x126
	.long	0x23f
	.byte	0x90
	.uleb128 0x10
	.long	.LASF78
	.byte	0x7
	.value	0x12f
	.long	0x1fd
	.byte	0x98
	.uleb128 0x10
	.long	.LASF79
	.byte	0x7
	.value	0x130
	.long	0x1fd
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x7
	.value	0x131
	.long	0x1fd
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF81
	.byte	0x7
	.value	0x132
	.long	0x1fd
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF82
	.byte	0x7
	.value	0x133
	.long	0x206
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF83
	.byte	0x7
	.value	0x135
	.long	0x13e
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x7
	.value	0x137
	.long	0x43d
	.byte	0xc4
	.byte	0
	.uleb128 0x11
	.long	.LASF654
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF85
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x41b
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0xa2
	.long	0x41b
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0xa3
	.long	0x421
	.byte	0x8
	.uleb128 0x8
	.long	.LASF88
	.byte	0x7
	.byte	0xa7
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3ea
	.uleb128 0x3
	.byte	0x8
	.long	0x262
	.uleb128 0x12
	.long	0x250
	.long	0x437
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e3
	.uleb128 0x12
	.long	0x250
	.long	0x44d
	.uleb128 0x13
	.long	0x145
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x453
	.uleb128 0xa
	.long	0x250
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF89
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF90
	.uleb128 0x3
	.byte	0x8
	.long	0x13e
	.uleb128 0x3
	.byte	0x8
	.long	0x472
	.uleb128 0x14
	.uleb128 0x15
	.long	.LASF92
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x5e8
	.uleb128 0xe
	.long	.LASF93
	.sleb128 0
	.uleb128 0xe
	.long	.LASF94
	.sleb128 1
	.uleb128 0xe
	.long	.LASF95
	.sleb128 2
	.uleb128 0xe
	.long	.LASF96
	.sleb128 3
	.uleb128 0xe
	.long	.LASF97
	.sleb128 4
	.uleb128 0xe
	.long	.LASF98
	.sleb128 5
	.uleb128 0xe
	.long	.LASF99
	.sleb128 6
	.uleb128 0xe
	.long	.LASF100
	.sleb128 7
	.uleb128 0xe
	.long	.LASF101
	.sleb128 8
	.uleb128 0xe
	.long	.LASF102
	.sleb128 9
	.uleb128 0xe
	.long	.LASF103
	.sleb128 10
	.uleb128 0xe
	.long	.LASF104
	.sleb128 11
	.uleb128 0xe
	.long	.LASF105
	.sleb128 12
	.uleb128 0xe
	.long	.LASF106
	.sleb128 13
	.uleb128 0xe
	.long	.LASF107
	.sleb128 14
	.uleb128 0xe
	.long	.LASF108
	.sleb128 15
	.uleb128 0xe
	.long	.LASF109
	.sleb128 16
	.uleb128 0xe
	.long	.LASF110
	.sleb128 17
	.uleb128 0xe
	.long	.LASF111
	.sleb128 18
	.uleb128 0xe
	.long	.LASF112
	.sleb128 19
	.uleb128 0xe
	.long	.LASF113
	.sleb128 20
	.uleb128 0xe
	.long	.LASF114
	.sleb128 21
	.uleb128 0xe
	.long	.LASF115
	.sleb128 22
	.uleb128 0xe
	.long	.LASF116
	.sleb128 23
	.uleb128 0xe
	.long	.LASF117
	.sleb128 24
	.uleb128 0xe
	.long	.LASF118
	.sleb128 25
	.uleb128 0xe
	.long	.LASF119
	.sleb128 26
	.uleb128 0xe
	.long	.LASF120
	.sleb128 27
	.uleb128 0xe
	.long	.LASF121
	.sleb128 28
	.uleb128 0xe
	.long	.LASF122
	.sleb128 29
	.uleb128 0xe
	.long	.LASF123
	.sleb128 30
	.uleb128 0xe
	.long	.LASF124
	.sleb128 31
	.uleb128 0xe
	.long	.LASF125
	.sleb128 32
	.uleb128 0xe
	.long	.LASF126
	.sleb128 33
	.uleb128 0xe
	.long	.LASF127
	.sleb128 34
	.uleb128 0xe
	.long	.LASF128
	.sleb128 35
	.uleb128 0xe
	.long	.LASF129
	.sleb128 36
	.uleb128 0xe
	.long	.LASF130
	.sleb128 37
	.uleb128 0xe
	.long	.LASF131
	.sleb128 38
	.uleb128 0xe
	.long	.LASF132
	.sleb128 39
	.uleb128 0xe
	.long	.LASF133
	.sleb128 40
	.uleb128 0xe
	.long	.LASF134
	.sleb128 41
	.uleb128 0xe
	.long	.LASF135
	.sleb128 42
	.uleb128 0xe
	.long	.LASF136
	.sleb128 43
	.uleb128 0xe
	.long	.LASF137
	.sleb128 44
	.uleb128 0xe
	.long	.LASF138
	.sleb128 45
	.uleb128 0xe
	.long	.LASF139
	.sleb128 46
	.uleb128 0xe
	.long	.LASF140
	.sleb128 47
	.uleb128 0xe
	.long	.LASF141
	.sleb128 48
	.uleb128 0xe
	.long	.LASF142
	.sleb128 49
	.uleb128 0xe
	.long	.LASF143
	.sleb128 50
	.uleb128 0xe
	.long	.LASF144
	.sleb128 51
	.uleb128 0xe
	.long	.LASF145
	.sleb128 52
	.uleb128 0xe
	.long	.LASF146
	.sleb128 53
	.uleb128 0xe
	.long	.LASF147
	.sleb128 54
	.uleb128 0xe
	.long	.LASF148
	.sleb128 55
	.uleb128 0xe
	.long	.LASF149
	.sleb128 56
	.uleb128 0xe
	.long	.LASF150
	.sleb128 57
	.uleb128 0xe
	.long	.LASF151
	.sleb128 58
	.uleb128 0xe
	.long	.LASF152
	.sleb128 59
	.byte	0
	.uleb128 0x15
	.long	.LASF153
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x631
	.uleb128 0xe
	.long	.LASF154
	.sleb128 0
	.uleb128 0xe
	.long	.LASF155
	.sleb128 1
	.uleb128 0xe
	.long	.LASF156
	.sleb128 2
	.uleb128 0xe
	.long	.LASF157
	.sleb128 3
	.uleb128 0xe
	.long	.LASF158
	.sleb128 4
	.uleb128 0xe
	.long	.LASF159
	.sleb128 5
	.uleb128 0xe
	.long	.LASF160
	.sleb128 6
	.uleb128 0xe
	.long	.LASF161
	.sleb128 7
	.uleb128 0xe
	.long	.LASF162
	.sleb128 8
	.uleb128 0xe
	.long	.LASF163
	.sleb128 9
	.byte	0
	.uleb128 0x15
	.long	.LASF164
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa2d
	.uleb128 0xe
	.long	.LASF165
	.sleb128 0
	.uleb128 0x16
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF166
	.sleb128 2
	.uleb128 0xe
	.long	.LASF167
	.sleb128 3
	.uleb128 0xe
	.long	.LASF168
	.sleb128 4
	.uleb128 0xe
	.long	.LASF169
	.sleb128 5
	.uleb128 0xe
	.long	.LASF170
	.sleb128 6
	.uleb128 0xe
	.long	.LASF171
	.sleb128 7
	.uleb128 0xe
	.long	.LASF172
	.sleb128 8
	.uleb128 0xe
	.long	.LASF173
	.sleb128 9
	.uleb128 0xe
	.long	.LASF174
	.sleb128 10
	.uleb128 0xe
	.long	.LASF175
	.sleb128 11
	.uleb128 0xe
	.long	.LASF176
	.sleb128 12
	.uleb128 0xe
	.long	.LASF177
	.sleb128 13
	.uleb128 0xe
	.long	.LASF178
	.sleb128 14
	.uleb128 0xe
	.long	.LASF179
	.sleb128 15
	.uleb128 0xe
	.long	.LASF180
	.sleb128 16
	.uleb128 0xe
	.long	.LASF181
	.sleb128 17
	.uleb128 0xe
	.long	.LASF182
	.sleb128 18
	.uleb128 0xe
	.long	.LASF183
	.sleb128 19
	.uleb128 0xe
	.long	.LASF184
	.sleb128 20
	.uleb128 0xe
	.long	.LASF185
	.sleb128 21
	.uleb128 0xe
	.long	.LASF186
	.sleb128 22
	.uleb128 0xe
	.long	.LASF187
	.sleb128 23
	.uleb128 0xe
	.long	.LASF188
	.sleb128 24
	.uleb128 0xe
	.long	.LASF189
	.sleb128 25
	.uleb128 0xe
	.long	.LASF190
	.sleb128 26
	.uleb128 0xe
	.long	.LASF191
	.sleb128 27
	.uleb128 0xe
	.long	.LASF192
	.sleb128 28
	.uleb128 0xe
	.long	.LASF193
	.sleb128 29
	.uleb128 0xe
	.long	.LASF194
	.sleb128 30
	.uleb128 0xe
	.long	.LASF195
	.sleb128 31
	.uleb128 0xe
	.long	.LASF196
	.sleb128 32
	.uleb128 0xe
	.long	.LASF197
	.sleb128 33
	.uleb128 0xe
	.long	.LASF198
	.sleb128 34
	.uleb128 0xe
	.long	.LASF199
	.sleb128 35
	.uleb128 0xe
	.long	.LASF200
	.sleb128 36
	.uleb128 0xe
	.long	.LASF201
	.sleb128 37
	.uleb128 0xe
	.long	.LASF202
	.sleb128 38
	.uleb128 0xe
	.long	.LASF203
	.sleb128 39
	.uleb128 0xe
	.long	.LASF204
	.sleb128 40
	.uleb128 0xe
	.long	.LASF205
	.sleb128 41
	.uleb128 0xe
	.long	.LASF206
	.sleb128 42
	.uleb128 0xe
	.long	.LASF207
	.sleb128 43
	.uleb128 0xe
	.long	.LASF208
	.sleb128 44
	.uleb128 0xe
	.long	.LASF209
	.sleb128 45
	.uleb128 0xe
	.long	.LASF210
	.sleb128 46
	.uleb128 0x16
	.string	"SET"
	.sleb128 47
	.uleb128 0x16
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF211
	.sleb128 49
	.uleb128 0xe
	.long	.LASF212
	.sleb128 50
	.uleb128 0xe
	.long	.LASF213
	.sleb128 51
	.uleb128 0xe
	.long	.LASF214
	.sleb128 52
	.uleb128 0xe
	.long	.LASF215
	.sleb128 53
	.uleb128 0xe
	.long	.LASF216
	.sleb128 54
	.uleb128 0xe
	.long	.LASF217
	.sleb128 55
	.uleb128 0xe
	.long	.LASF218
	.sleb128 56
	.uleb128 0xe
	.long	.LASF219
	.sleb128 57
	.uleb128 0xe
	.long	.LASF220
	.sleb128 58
	.uleb128 0x16
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF221
	.sleb128 60
	.uleb128 0x16
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF222
	.sleb128 62
	.uleb128 0xe
	.long	.LASF223
	.sleb128 63
	.uleb128 0xe
	.long	.LASF224
	.sleb128 64
	.uleb128 0xe
	.long	.LASF225
	.sleb128 65
	.uleb128 0x16
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF226
	.sleb128 67
	.uleb128 0xe
	.long	.LASF227
	.sleb128 68
	.uleb128 0x16
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF228
	.sleb128 70
	.uleb128 0xe
	.long	.LASF229
	.sleb128 71
	.uleb128 0xe
	.long	.LASF230
	.sleb128 72
	.uleb128 0xe
	.long	.LASF231
	.sleb128 73
	.uleb128 0xe
	.long	.LASF232
	.sleb128 74
	.uleb128 0xe
	.long	.LASF233
	.sleb128 75
	.uleb128 0xe
	.long	.LASF234
	.sleb128 76
	.uleb128 0x16
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF235
	.sleb128 78
	.uleb128 0x16
	.string	"DIV"
	.sleb128 79
	.uleb128 0x16
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF236
	.sleb128 81
	.uleb128 0xe
	.long	.LASF237
	.sleb128 82
	.uleb128 0x16
	.string	"AND"
	.sleb128 83
	.uleb128 0x16
	.string	"IOR"
	.sleb128 84
	.uleb128 0x16
	.string	"XOR"
	.sleb128 85
	.uleb128 0x16
	.string	"NOT"
	.sleb128 86
	.uleb128 0xe
	.long	.LASF238
	.sleb128 87
	.uleb128 0xe
	.long	.LASF239
	.sleb128 88
	.uleb128 0xe
	.long	.LASF240
	.sleb128 89
	.uleb128 0xe
	.long	.LASF241
	.sleb128 90
	.uleb128 0xe
	.long	.LASF242
	.sleb128 91
	.uleb128 0xe
	.long	.LASF243
	.sleb128 92
	.uleb128 0xe
	.long	.LASF244
	.sleb128 93
	.uleb128 0xe
	.long	.LASF245
	.sleb128 94
	.uleb128 0xe
	.long	.LASF246
	.sleb128 95
	.uleb128 0xe
	.long	.LASF247
	.sleb128 96
	.uleb128 0xe
	.long	.LASF248
	.sleb128 97
	.uleb128 0xe
	.long	.LASF249
	.sleb128 98
	.uleb128 0xe
	.long	.LASF250
	.sleb128 99
	.uleb128 0xe
	.long	.LASF251
	.sleb128 100
	.uleb128 0xe
	.long	.LASF252
	.sleb128 101
	.uleb128 0x16
	.string	"NE"
	.sleb128 102
	.uleb128 0x16
	.string	"EQ"
	.sleb128 103
	.uleb128 0x16
	.string	"GE"
	.sleb128 104
	.uleb128 0x16
	.string	"GT"
	.sleb128 105
	.uleb128 0x16
	.string	"LE"
	.sleb128 106
	.uleb128 0x16
	.string	"LT"
	.sleb128 107
	.uleb128 0x16
	.string	"GEU"
	.sleb128 108
	.uleb128 0x16
	.string	"GTU"
	.sleb128 109
	.uleb128 0x16
	.string	"LEU"
	.sleb128 110
	.uleb128 0x16
	.string	"LTU"
	.sleb128 111
	.uleb128 0xe
	.long	.LASF253
	.sleb128 112
	.uleb128 0xe
	.long	.LASF254
	.sleb128 113
	.uleb128 0xe
	.long	.LASF255
	.sleb128 114
	.uleb128 0xe
	.long	.LASF256
	.sleb128 115
	.uleb128 0xe
	.long	.LASF257
	.sleb128 116
	.uleb128 0xe
	.long	.LASF258
	.sleb128 117
	.uleb128 0xe
	.long	.LASF259
	.sleb128 118
	.uleb128 0xe
	.long	.LASF260
	.sleb128 119
	.uleb128 0xe
	.long	.LASF261
	.sleb128 120
	.uleb128 0xe
	.long	.LASF262
	.sleb128 121
	.uleb128 0xe
	.long	.LASF263
	.sleb128 122
	.uleb128 0xe
	.long	.LASF264
	.sleb128 123
	.uleb128 0xe
	.long	.LASF265
	.sleb128 124
	.uleb128 0xe
	.long	.LASF266
	.sleb128 125
	.uleb128 0x16
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF267
	.sleb128 127
	.uleb128 0xe
	.long	.LASF268
	.sleb128 128
	.uleb128 0x16
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF269
	.sleb128 130
	.uleb128 0x16
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF270
	.sleb128 132
	.uleb128 0xe
	.long	.LASF271
	.sleb128 133
	.uleb128 0xe
	.long	.LASF272
	.sleb128 134
	.uleb128 0xe
	.long	.LASF273
	.sleb128 135
	.uleb128 0xe
	.long	.LASF274
	.sleb128 136
	.uleb128 0xe
	.long	.LASF275
	.sleb128 137
	.uleb128 0xe
	.long	.LASF276
	.sleb128 138
	.uleb128 0xe
	.long	.LASF277
	.sleb128 139
	.uleb128 0xe
	.long	.LASF278
	.sleb128 140
	.uleb128 0xe
	.long	.LASF279
	.sleb128 141
	.uleb128 0xe
	.long	.LASF280
	.sleb128 142
	.uleb128 0xe
	.long	.LASF281
	.sleb128 143
	.uleb128 0xe
	.long	.LASF282
	.sleb128 144
	.uleb128 0xe
	.long	.LASF283
	.sleb128 145
	.uleb128 0xe
	.long	.LASF284
	.sleb128 146
	.uleb128 0xe
	.long	.LASF285
	.sleb128 147
	.uleb128 0xe
	.long	.LASF286
	.sleb128 148
	.uleb128 0xe
	.long	.LASF287
	.sleb128 149
	.uleb128 0xe
	.long	.LASF288
	.sleb128 150
	.uleb128 0xe
	.long	.LASF289
	.sleb128 151
	.uleb128 0x16
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF290
	.sleb128 153
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xaae
	.uleb128 0x5
	.long	.LASF291
	.byte	0x2
	.byte	0x47
	.long	0x1f6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF292
	.byte	0x2
	.byte	0x49
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF293
	.byte	0x2
	.byte	0x4a
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF294
	.byte	0x2
	.byte	0x4c
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF295
	.byte	0x2
	.byte	0x4e
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x2
	.byte	0x50
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x2
	.byte	0x53
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF298
	.byte	0x2
	.byte	0x55
	.long	0x1f6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF299
	.byte	0x2
	.byte	0x56
	.long	0xa2d
	.uleb128 0x17
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xafe
	.uleb128 0x8
	.long	.LASF300
	.byte	0x2
	.byte	0x5e
	.long	0x1ff
	.byte	0
	.uleb128 0x8
	.long	.LASF301
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF302
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF303
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF304
	.byte	0x2
	.byte	0x62
	.long	0x1f6
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF305
	.byte	0x2
	.byte	0x63
	.long	0xab9
	.uleb128 0x18
	.long	.LASF411
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xba4
	.uleb128 0x19
	.long	.LASF306
	.byte	0x2
	.byte	0x69
	.long	0x1ff
	.uleb128 0x19
	.long	.LASF307
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x19
	.long	.LASF308
	.byte	0x2
	.byte	0x6b
	.long	0x1f6
	.uleb128 0x19
	.long	.LASF309
	.byte	0x2
	.byte	0x6c
	.long	0x44d
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x19
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x19
	.long	.LASF310
	.byte	0x2
	.byte	0x6f
	.long	0x473
	.uleb128 0x19
	.long	.LASF311
	.byte	0x2
	.byte	0x70
	.long	0xaae
	.uleb128 0x19
	.long	.LASF312
	.byte	0x2
	.byte	0x71
	.long	0xba9
	.uleb128 0x19
	.long	.LASF313
	.byte	0x2
	.byte	0x72
	.long	0xbe0
	.uleb128 0x19
	.long	.LASF314
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xcb3
	.uleb128 0x19
	.long	.LASF315
	.byte	0x2
	.byte	0x75
	.long	0xcb9
	.byte	0
	.uleb128 0x1b
	.long	.LASF419
	.uleb128 0x3
	.byte	0x8
	.long	0xba4
	.uleb128 0x4
	.long	.LASF316
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xbe0
	.uleb128 0x8
	.long	.LASF317
	.byte	0xa
	.byte	0x35
	.long	0xf15
	.byte	0
	.uleb128 0x8
	.long	.LASF318
	.byte	0xa
	.byte	0x36
	.long	0xf15
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x37
	.long	0x1f6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbaf
	.uleb128 0x4
	.long	.LASF320
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xcb3
	.uleb128 0x8
	.long	.LASF321
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF323
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF324
	.byte	0xb
	.byte	0xb7
	.long	0x12f7
	.byte	0x20
	.uleb128 0x8
	.long	.LASF325
	.byte	0xb
	.byte	0xb7
	.long	0x12f7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF326
	.byte	0xb
	.byte	0xbc
	.long	0x1262
	.byte	0x30
	.uleb128 0x8
	.long	.LASF327
	.byte	0xb
	.byte	0xc0
	.long	0x1262
	.byte	0x38
	.uleb128 0x8
	.long	.LASF328
	.byte	0xb
	.byte	0xc6
	.long	0x1262
	.byte	0x40
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0xc8
	.long	0x1262
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x1fd
	.byte	0x50
	.uleb128 0x8
	.long	.LASF330
	.byte	0xb
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF331
	.byte	0xb
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xd4
	.long	0x126d
	.byte	0x60
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbe6
	.uleb128 0x3
	.byte	0x8
	.long	0xafe
	.uleb128 0x7
	.long	.LASF335
	.byte	0x2
	.byte	0x76
	.long	0xb09
	.uleb128 0x12
	.long	0xcbf
	.long	0xcda
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x2d
	.long	0xcea
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF336
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xdac
	.uleb128 0xe
	.long	.LASF337
	.sleb128 1
	.uleb128 0xe
	.long	.LASF338
	.sleb128 2
	.uleb128 0xe
	.long	.LASF339
	.sleb128 3
	.uleb128 0xe
	.long	.LASF340
	.sleb128 4
	.uleb128 0xe
	.long	.LASF341
	.sleb128 5
	.uleb128 0xe
	.long	.LASF342
	.sleb128 6
	.uleb128 0xe
	.long	.LASF343
	.sleb128 7
	.uleb128 0xe
	.long	.LASF344
	.sleb128 8
	.uleb128 0xe
	.long	.LASF345
	.sleb128 9
	.uleb128 0xe
	.long	.LASF346
	.sleb128 10
	.uleb128 0xe
	.long	.LASF347
	.sleb128 11
	.uleb128 0xe
	.long	.LASF348
	.sleb128 12
	.uleb128 0xe
	.long	.LASF349
	.sleb128 13
	.uleb128 0xe
	.long	.LASF350
	.sleb128 14
	.uleb128 0xe
	.long	.LASF351
	.sleb128 15
	.uleb128 0xe
	.long	.LASF352
	.sleb128 16
	.uleb128 0xe
	.long	.LASF353
	.sleb128 17
	.uleb128 0xe
	.long	.LASF354
	.sleb128 18
	.uleb128 0xe
	.long	.LASF355
	.sleb128 19
	.uleb128 0xe
	.long	.LASF356
	.sleb128 20
	.uleb128 0xe
	.long	.LASF357
	.sleb128 21
	.uleb128 0xe
	.long	.LASF358
	.sleb128 22
	.uleb128 0xe
	.long	.LASF359
	.sleb128 23
	.uleb128 0xe
	.long	.LASF360
	.sleb128 24
	.uleb128 0xe
	.long	.LASF361
	.sleb128 25
	.uleb128 0xe
	.long	.LASF362
	.sleb128 26
	.uleb128 0xe
	.long	.LASF363
	.sleb128 27
	.uleb128 0xe
	.long	.LASF364
	.sleb128 28
	.uleb128 0xe
	.long	.LASF365
	.sleb128 29
	.uleb128 0xe
	.long	.LASF366
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF367
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe5b
	.uleb128 0xe
	.long	.LASF368
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF369
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF370
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF371
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF372
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF373
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF374
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF375
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF376
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF377
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF378
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF379
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF380
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF381
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF382
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF383
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF384
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF385
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF386
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF387
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF388
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF389
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF390
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF391
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xeb7
	.uleb128 0xe
	.long	.LASF392
	.sleb128 0
	.uleb128 0xe
	.long	.LASF393
	.sleb128 1
	.uleb128 0xe
	.long	.LASF394
	.sleb128 2
	.uleb128 0xe
	.long	.LASF395
	.sleb128 3
	.uleb128 0xe
	.long	.LASF396
	.sleb128 4
	.uleb128 0xe
	.long	.LASF397
	.sleb128 5
	.uleb128 0xe
	.long	.LASF398
	.sleb128 6
	.uleb128 0xe
	.long	.LASF399
	.sleb128 7
	.uleb128 0xe
	.long	.LASF400
	.sleb128 8
	.uleb128 0xe
	.long	.LASF401
	.sleb128 9
	.uleb128 0xe
	.long	.LASF402
	.sleb128 10
	.uleb128 0xe
	.long	.LASF403
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF404
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0xef4
	.uleb128 0x8
	.long	.LASF405
	.byte	0xa
	.byte	0x2d
	.long	0xef4
	.byte	0
	.uleb128 0x8
	.long	.LASF406
	.byte	0xa
	.byte	0x2e
	.long	0xef4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF319
	.byte	0xa
	.byte	0x2f
	.long	0x1f6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF407
	.byte	0xa
	.byte	0x30
	.long	0xefa
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xeb7
	.uleb128 0x12
	.long	0x211
	.long	0xf0a
	.uleb128 0x13
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF408
	.byte	0xa
	.byte	0x31
	.long	0xeb7
	.uleb128 0x3
	.byte	0x8
	.long	0xf0a
	.uleb128 0x7
	.long	.LASF409
	.byte	0xa
	.byte	0x39
	.long	0xbe0
	.uleb128 0x12
	.long	0x211
	.long	0xf36
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF410
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xf5b
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x1f6
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF412
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0x1040
	.uleb128 0x1a
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x427
	.uleb128 0x1a
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0x1040
	.uleb128 0x1a
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0x1050
	.uleb128 0x1a
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0x1060
	.uleb128 0x1a
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0x1070
	.uleb128 0x1a
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x1080
	.uleb128 0x1a
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x1090
	.uleb128 0x1a
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0xf26
	.uleb128 0x19
	.long	.LASF413
	.byte	0xc
	.byte	0x43
	.long	0x1090
	.uleb128 0x19
	.long	.LASF414
	.byte	0xc
	.byte	0x44
	.long	0xf26
	.uleb128 0x19
	.long	.LASF415
	.byte	0xc
	.byte	0x45
	.long	0x10a0
	.uleb128 0x19
	.long	.LASF416
	.byte	0xc
	.byte	0x46
	.long	0x10b0
	.uleb128 0x1a
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x10c0
	.uleb128 0x19
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x10d0
	.uleb128 0x19
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x10e0
	.uleb128 0x19
	.long	.LASF409
	.byte	0xc
	.byte	0x4a
	.long	0x10f0
	.uleb128 0x19
	.long	.LASF417
	.byte	0xc
	.byte	0x4b
	.long	0x1100
	.uleb128 0x1a
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x111b
	.uleb128 0x19
	.long	.LASF418
	.byte	0xc
	.byte	0x4d
	.long	0x11c2
	.uleb128 0x1a
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x11d2
	.uleb128 0x1a
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x11e2
	.byte	0
	.uleb128 0x12
	.long	0x218
	.long	0x1050
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x22d
	.long	0x1060
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x21f
	.long	0x1070
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x13e
	.long	0x1080
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1f6
	.long	0x1090
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1ff
	.long	0x10a0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1fd
	.long	0x10b0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x24a
	.long	0x10c0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x38
	.long	0x10d0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xf8
	.long	0x10e0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x12e
	.long	0x10f0
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xbe0
	.long	0x1100
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x1110
	.long	0x1110
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1116
	.uleb128 0x1b
	.long	.LASF420
	.uleb128 0x12
	.long	0x112b
	.long	0x112b
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1131
	.uleb128 0x4
	.long	.LASF421
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x11c2
	.uleb128 0x8
	.long	.LASF422
	.byte	0xd
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF431
	.byte	0xd
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF432
	.byte	0xd
	.byte	0x3d
	.long	0x250
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	0xf36
	.long	0x11d2
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xcb3
	.long	0x11e2
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x11f2
	.long	0x11f2
	.uleb128 0x13
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11f8
	.uleb128 0x1b
	.long	.LASF433
	.uleb128 0x7
	.long	.LASF434
	.byte	0xc
	.byte	0x50
	.long	0xf5b
	.uleb128 0x4
	.long	.LASF435
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x1251
	.uleb128 0x8
	.long	.LASF436
	.byte	0xc
	.byte	0x54
	.long	0x206
	.byte	0
	.uleb128 0x8
	.long	.LASF437
	.byte	0xc
	.byte	0x55
	.long	0x206
	.byte	0x8
	.uleb128 0x8
	.long	.LASF438
	.byte	0xc
	.byte	0x57
	.long	0x206
	.byte	0x10
	.uleb128 0x8
	.long	.LASF439
	.byte	0xc
	.byte	0x58
	.long	0x44d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0x59
	.long	0x11fd
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF441
	.byte	0xc
	.byte	0x5a
	.long	0x125c
	.uleb128 0x3
	.byte	0x8
	.long	0x1208
	.uleb128 0x7
	.long	.LASF442
	.byte	0xb
	.byte	0x21
	.long	0xf1b
	.uleb128 0x7
	.long	.LASF443
	.byte	0xb
	.byte	0x74
	.long	0x1ff
	.uleb128 0x4
	.long	.LASF444
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x12f1
	.uleb128 0x8
	.long	.LASF445
	.byte	0xb
	.byte	0x79
	.long	0x12f1
	.byte	0
	.uleb128 0x8
	.long	.LASF446
	.byte	0xb
	.byte	0x79
	.long	0x12f1
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xcb3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF447
	.byte	0xb
	.byte	0x7c
	.long	0xcb3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF448
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x1fd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF449
	.byte	0xb
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0x86
	.long	0x126d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1278
	.uleb128 0x7
	.long	.LASF450
	.byte	0xb
	.byte	0x88
	.long	0x12f1
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x15
	.long	.LASF451
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.long	0x1345
	.uleb128 0xe
	.long	.LASF452
	.sleb128 0
	.uleb128 0xe
	.long	.LASF453
	.sleb128 1
	.uleb128 0xe
	.long	.LASF454
	.sleb128 2
	.uleb128 0xe
	.long	.LASF455
	.sleb128 3
	.uleb128 0xe
	.long	.LASF456
	.sleb128 4
	.uleb128 0xe
	.long	.LASF457
	.sleb128 5
	.uleb128 0xe
	.long	.LASF458
	.sleb128 6
	.uleb128 0xe
	.long	.LASF459
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.long	.LASF460
	.byte	0x48
	.byte	0xf
	.byte	0x51
	.long	0x13d6
	.uleb128 0x8
	.long	.LASF439
	.byte	0xf
	.byte	0x53
	.long	0x13d6
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xf
	.byte	0x54
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF462
	.byte	0xf
	.byte	0x55
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF463
	.byte	0xf
	.byte	0x56
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF464
	.byte	0xf
	.byte	0x57
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF465
	.byte	0xf
	.byte	0x58
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0x59
	.long	0x13ea
	.byte	0x20
	.uleb128 0x8
	.long	.LASF467
	.byte	0xf
	.byte	0x5a
	.long	0x1409
	.byte	0x28
	.uleb128 0x8
	.long	.LASF468
	.byte	0xf
	.byte	0x5b
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF469
	.byte	0xf
	.byte	0x5c
	.long	0x1423
	.byte	0x38
	.uleb128 0x8
	.long	.LASF470
	.byte	0xf
	.byte	0x5d
	.long	0x1409
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	0x44d
	.uleb128 0x1c
	.long	0x13e
	.long	0x13ea
	.uleb128 0x1d
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x13ef
	.uleb128 0x3
	.byte	0x8
	.long	0x13db
	.uleb128 0x1c
	.long	0x13e
	.long	0x1409
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x140e
	.uleb128 0x3
	.byte	0x8
	.long	0x13f5
	.uleb128 0x1c
	.long	0x1f6
	.long	0x1423
	.uleb128 0x1d
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x1428
	.uleb128 0x3
	.byte	0x8
	.long	0x1414
	.uleb128 0xc
	.byte	0x1
	.byte	0x2
	.long	.LASF471
	.uleb128 0x4
	.long	.LASF472
	.byte	0x68
	.byte	0x10
	.byte	0x71
	.long	0x14f0
	.uleb128 0x8
	.long	.LASF473
	.byte	0x10
	.byte	0x75
	.long	0x1543
	.byte	0
	.uleb128 0x8
	.long	.LASF474
	.byte	0x10
	.byte	0x78
	.long	0x13ef
	.byte	0x8
	.uleb128 0x8
	.long	.LASF475
	.byte	0x10
	.byte	0x7a
	.long	0x154e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF476
	.byte	0x10
	.byte	0x7e
	.long	0x13ef
	.byte	0x18
	.uleb128 0x8
	.long	.LASF477
	.byte	0x10
	.byte	0x82
	.long	0x140e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF478
	.byte	0x10
	.byte	0x87
	.long	0x1568
	.byte	0x28
	.uleb128 0x8
	.long	.LASF479
	.byte	0x10
	.byte	0x8a
	.long	0x140e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF480
	.byte	0x10
	.byte	0x8e
	.long	0x157e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF481
	.byte	0x10
	.byte	0x91
	.long	0x2d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF482
	.byte	0x10
	.byte	0x91
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF321
	.byte	0x10
	.byte	0x95
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF483
	.byte	0x10
	.byte	0x95
	.long	0x2d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF484
	.byte	0x10
	.byte	0x98
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x60
	.uleb128 0x5
	.long	.LASF485
	.byte	0x10
	.byte	0x9d
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x60
	.byte	0
	.uleb128 0x1e
	.long	0x14fb
	.uleb128 0x1d
	.long	0x14fb
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1501
	.uleb128 0x1f
	.long	.LASF486
	.byte	0x18
	.byte	0x1
	.value	0x112
	.long	0x1543
	.uleb128 0x20
	.string	"vec"
	.byte	0x1
	.value	0x114
	.long	0xe5b
	.byte	0
	.uleb128 0x10
	.long	.LASF487
	.byte	0x1
	.value	0x115
	.long	0x13e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF317
	.byte	0x1
	.value	0x116
	.long	0x13e
	.byte	0xc
	.uleb128 0x10
	.long	.LASF488
	.byte	0x1
	.value	0x117
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14f0
	.uleb128 0x21
	.long	0x13e
	.uleb128 0x3
	.byte	0x8
	.long	0x1549
	.uleb128 0x1c
	.long	0x44d
	.long	0x1568
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1554
	.uleb128 0x1e
	.long	0x157e
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x1262
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x156e
	.uleb128 0x4
	.long	.LASF489
	.byte	0x30
	.byte	0x10
	.byte	0xa5
	.long	0x1651
	.uleb128 0x8
	.long	.LASF490
	.byte	0x10
	.byte	0xa9
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF491
	.byte	0x10
	.byte	0xad
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF492
	.byte	0x10
	.byte	0xb0
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF493
	.byte	0x10
	.byte	0xb3
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF494
	.byte	0x10
	.byte	0xb8
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF495
	.byte	0x10
	.byte	0xbc
	.long	0x1f6
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF496
	.byte	0x10
	.byte	0xbf
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF497
	.byte	0x10
	.byte	0xc3
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF498
	.byte	0x10
	.byte	0xc5
	.long	0x22d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF499
	.byte	0x10
	.byte	0xc8
	.long	0x22d
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF500
	.byte	0x10
	.byte	0xcc
	.long	0x22d
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF501
	.byte	0x10
	.byte	0xcf
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF502
	.byte	0x10
	.byte	0xd3
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF503
	.byte	0x10
	.byte	0xd4
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF504
	.byte	0x10
	.byte	0xd7
	.long	0x1f6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2c
	.byte	0
	.uleb128 0x4
	.long	.LASF505
	.byte	0x20
	.byte	0x11
	.byte	0x39
	.long	0x168a
	.uleb128 0x6
	.string	"hi"
	.byte	0x11
	.byte	0x3b
	.long	0x44d
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x11
	.byte	0x3c
	.long	0x44d
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x11
	.byte	0x3d
	.long	0x44d
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x11
	.byte	0x3e
	.long	0x44d
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF506
	.byte	0xa8
	.byte	0x11
	.byte	0x32
	.long	0x174b
	.uleb128 0x8
	.long	.LASF507
	.byte	0x11
	.byte	0x35
	.long	0x44d
	.byte	0
	.uleb128 0x8
	.long	.LASF508
	.byte	0x11
	.byte	0x35
	.long	0x44d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF509
	.byte	0x11
	.byte	0x38
	.long	0x44d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF510
	.byte	0x11
	.byte	0x3f
	.long	0x1651
	.byte	0x18
	.uleb128 0x8
	.long	.LASF511
	.byte	0x11
	.byte	0x3f
	.long	0x1651
	.byte	0x38
	.uleb128 0x8
	.long	.LASF512
	.byte	0x11
	.byte	0x46
	.long	0x1764
	.byte	0x58
	.uleb128 0x8
	.long	.LASF513
	.byte	0x11
	.byte	0x49
	.long	0x1780
	.byte	0x60
	.uleb128 0x8
	.long	.LASF514
	.byte	0x11
	.byte	0x4c
	.long	0x1791
	.byte	0x68
	.uleb128 0x8
	.long	.LASF515
	.byte	0x11
	.byte	0x4f
	.long	0x1791
	.byte	0x70
	.uleb128 0x8
	.long	.LASF516
	.byte	0x11
	.byte	0x52
	.long	0x1780
	.byte	0x78
	.uleb128 0x8
	.long	.LASF517
	.byte	0x11
	.byte	0x56
	.long	0x17a7
	.byte	0x80
	.uleb128 0x8
	.long	.LASF518
	.byte	0x11
	.byte	0x59
	.long	0x17ae
	.byte	0x88
	.uleb128 0x8
	.long	.LASF519
	.byte	0x11
	.byte	0x5c
	.long	0x17ae
	.byte	0x90
	.uleb128 0x8
	.long	.LASF520
	.byte	0x11
	.byte	0x5f
	.long	0x17c4
	.byte	0x98
	.uleb128 0x8
	.long	.LASF521
	.byte	0x11
	.byte	0x62
	.long	0x17c4
	.byte	0xa0
	.byte	0
	.uleb128 0x1c
	.long	0x142e
	.long	0x1764
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x1f6
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x174b
	.uleb128 0x1e
	.long	0x177a
	.uleb128 0x1d
	.long	0x177a
	.uleb128 0x1d
	.long	0x1ff
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x257
	.uleb128 0x3
	.byte	0x8
	.long	0x176a
	.uleb128 0x1e
	.long	0x1791
	.uleb128 0x1d
	.long	0x177a
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1786
	.uleb128 0x1e
	.long	0x17a7
	.uleb128 0x1d
	.long	0x44d
	.uleb128 0x1d
	.long	0x1f6
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1797
	.uleb128 0x22
	.uleb128 0x3
	.byte	0x8
	.long	0x17ad
	.uleb128 0x1e
	.long	0x17c4
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x17b4
	.uleb128 0x4
	.long	.LASF417
	.byte	0x48
	.byte	0x11
	.byte	0x66
	.long	0x1843
	.uleb128 0x8
	.long	.LASF522
	.byte	0x11
	.byte	0x6b
	.long	0x1861
	.byte	0
	.uleb128 0x8
	.long	.LASF523
	.byte	0x11
	.byte	0x6f
	.long	0x187b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF524
	.byte	0x11
	.byte	0x74
	.long	0x154e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF525
	.byte	0x11
	.byte	0x78
	.long	0x189f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF526
	.byte	0x11
	.byte	0x7b
	.long	0x18ba
	.byte	0x20
	.uleb128 0x8
	.long	.LASF527
	.byte	0x11
	.byte	0x7e
	.long	0x18d0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF528
	.byte	0x11
	.byte	0x82
	.long	0x18f9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF529
	.byte	0x11
	.byte	0x83
	.long	0x18f9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF530
	.byte	0x11
	.byte	0x8a
	.long	0x1913
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.long	0x13e
	.long	0x1861
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1843
	.uleb128 0x1c
	.long	0x13e
	.long	0x187b
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1867
	.uleb128 0x1c
	.long	0x13e
	.long	0x189f
	.uleb128 0x1d
	.long	0x177a
	.uleb128 0x1d
	.long	0x13e
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1881
	.uleb128 0x1e
	.long	0x18ba
	.uleb128 0x1d
	.long	0x177a
	.uleb128 0x1d
	.long	0x13e
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18a5
	.uleb128 0x1e
	.long	0x18d0
	.uleb128 0x1d
	.long	0x177a
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18c0
	.uleb128 0x1c
	.long	0x13e
	.long	0x18f9
	.uleb128 0x1d
	.long	0x177a
	.uleb128 0x1d
	.long	0x13e
	.uleb128 0x1d
	.long	0xe5b
	.uleb128 0x1d
	.long	0x466
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18d6
	.uleb128 0x1c
	.long	0x2d
	.long	0x1913
	.uleb128 0x1d
	.long	0x13e
	.uleb128 0x1d
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18ff
	.uleb128 0x23
	.long	.LASF531
	.value	0x158
	.byte	0x11
	.byte	0x2f
	.long	0x19f3
	.uleb128 0x8
	.long	.LASF506
	.byte	0x11
	.byte	0x63
	.long	0x168a
	.byte	0
	.uleb128 0x8
	.long	.LASF417
	.byte	0x11
	.byte	0x8b
	.long	0x17ca
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF532
	.byte	0x11
	.byte	0x8e
	.long	0x1a07
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF533
	.byte	0x11
	.byte	0x91
	.long	0x1a07
	.byte	0xf8
	.uleb128 0x24
	.long	.LASF534
	.byte	0x11
	.byte	0x94
	.long	0x1a12
	.value	0x100
	.uleb128 0x24
	.long	.LASF535
	.byte	0x11
	.byte	0x99
	.long	0x1a31
	.value	0x108
	.uleb128 0x24
	.long	.LASF536
	.byte	0x11
	.byte	0x9c
	.long	0x1a42
	.value	0x110
	.uleb128 0x24
	.long	.LASF537
	.byte	0x11
	.byte	0x9f
	.long	0x1a58
	.value	0x118
	.uleb128 0x24
	.long	.LASF538
	.byte	0x11
	.byte	0xa3
	.long	0x1a6d
	.value	0x120
	.uleb128 0x24
	.long	.LASF539
	.byte	0x11
	.byte	0xa7
	.long	0x1a6d
	.value	0x128
	.uleb128 0x24
	.long	.LASF540
	.byte	0x11
	.byte	0xaa
	.long	0x17ae
	.value	0x130
	.uleb128 0x24
	.long	.LASF541
	.byte	0x11
	.byte	0xad
	.long	0x1a96
	.value	0x138
	.uleb128 0x24
	.long	.LASF542
	.byte	0x11
	.byte	0xb3
	.long	0x1ab5
	.value	0x140
	.uleb128 0x24
	.long	.LASF543
	.byte	0x11
	.byte	0xb6
	.long	0x142e
	.value	0x148
	.uleb128 0x24
	.long	.LASF544
	.byte	0x11
	.byte	0xba
	.long	0x142e
	.value	0x149
	.uleb128 0x24
	.long	.LASF545
	.byte	0x11
	.byte	0xbe
	.long	0x1ac0
	.value	0x150
	.byte	0
	.uleb128 0x1c
	.long	0x123
	.long	0x1a07
	.uleb128 0x1d
	.long	0x123
	.uleb128 0x1d
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x19f3
	.uleb128 0x1b
	.long	.LASF546
	.uleb128 0x3
	.byte	0x8
	.long	0x1a18
	.uleb128 0xa
	.long	0x1a0d
	.uleb128 0x1c
	.long	0x13e
	.long	0x1a31
	.uleb128 0x1d
	.long	0x123
	.uleb128 0x1d
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a1d
	.uleb128 0x1e
	.long	0x1a42
	.uleb128 0x1d
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a37
	.uleb128 0x1e
	.long	0x1a58
	.uleb128 0x1d
	.long	0x123
	.uleb128 0x1d
	.long	0x1302
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a48
	.uleb128 0x1c
	.long	0x142e
	.long	0x1a6d
	.uleb128 0x1d
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a5e
	.uleb128 0x1c
	.long	0x2d
	.long	0x1a96
	.uleb128 0x1d
	.long	0x123
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x2d
	.uleb128 0x1d
	.long	0x473
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a73
	.uleb128 0x1c
	.long	0x1f6
	.long	0x1ab5
	.uleb128 0x1d
	.long	0x123
	.uleb128 0x1d
	.long	0x44d
	.uleb128 0x1d
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a9c
	.uleb128 0x21
	.long	0x142e
	.uleb128 0x3
	.byte	0x8
	.long	0x1abb
	.uleb128 0x25
	.long	.LASF583
	.byte	0x1
	.byte	0xb8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b00
	.uleb128 0x26
	.long	.LASF547
	.byte	0x1
	.byte	0xb9
	.long	0x44d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.byte	0xb9
	.long	0x44d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF551
	.byte	0x1
	.value	0x168
	.long	0x13e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b41
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x169
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x16b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF558
	.byte	0x1
	.value	0x18d
	.long	0x1f6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba0
	.uleb128 0x29
	.long	.LASF549
	.byte	0x1
	.value	0x18e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x18f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF495
	.byte	0x1
	.value	0x191
	.long	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF550
	.byte	0x1
	.value	0x192
	.long	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF552
	.byte	0x1
	.value	0x1b2
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd2
	.uleb128 0x29
	.long	.LASF553
	.byte	0x1
	.value	0x1b3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF655
	.byte	0x1
	.value	0x1bb
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF554
	.byte	0x1
	.value	0x1c5
	.long	0x13e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c49
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x1c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1c8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF555
	.byte	0x1
	.value	0x1c8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x1c9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF556
	.byte	0x1
	.value	0x1e8
	.long	0x13e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cc6
	.uleb128 0x29
	.long	.LASF549
	.byte	0x1
	.value	0x1e9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF553
	.byte	0x1
	.value	0x1e9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x1ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF557
	.byte	0x1
	.value	0x1e9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF498
	.byte	0x1
	.value	0x1e9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF497
	.byte	0x1
	.value	0x1ec
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF576
	.byte	0x1
	.value	0x20d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d40
	.uleb128 0x29
	.long	.LASF549
	.byte	0x1
	.value	0x20e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x20f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF557
	.byte	0x1
	.value	0x20e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x211
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x215
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF559
	.byte	0x1
	.value	0x22d
	.long	0x13e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1deb
	.uleb128 0x29
	.long	.LASF549
	.byte	0x1
	.value	0x22e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x22f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF557
	.byte	0x1
	.value	0x22e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF498
	.byte	0x1
	.value	0x22e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x231
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x236
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF560
	.byte	0x1
	.value	0x237
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF561
	.byte	0x1
	.value	0x23a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF562
	.byte	0x1
	.value	0x28b
	.long	0x13e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e6b
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF563
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF7
	.byte	0x1
	.value	0x28c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x28e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2a
	.long	.LASF564
	.byte	0x1
	.value	0x2bc
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x2ce
	.long	0x13e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1efe
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x2cf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF563
	.byte	0x1
	.value	0x2d1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2a
	.long	.LASF565
	.byte	0x1
	.value	0x2d8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x1
	.value	0x2e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF566
	.byte	0x1
	.value	0x2e1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF567
	.byte	0x1
	.value	0x308
	.long	0x13e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe4
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x309
	.long	0x46c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x30a
	.long	0x46c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.value	0x30c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF568
	.byte	0x1
	.value	0x30d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF563
	.byte	0x1
	.value	0x30e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF569
	.byte	0x1
	.value	0x30f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x1
	.value	0x30f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF571
	.byte	0x1
	.value	0x30f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF572
	.byte	0x1
	.value	0x30f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0x310
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF573
	.byte	0x1
	.value	0x310
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF574
	.byte	0x1
	.value	0x310
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF575
	.byte	0x1
	.value	0x310
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.long	.LASF577
	.byte	0x1
	.value	0x354
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2039
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.value	0x355
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x356
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x358
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x359
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF578
	.byte	0x1
	.value	0x368
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2094
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x369
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF579
	.byte	0x1
	.value	0x36a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF580
	.byte	0x1
	.value	0x36c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF563
	.byte	0x1
	.value	0x36d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF581
	.byte	0x1
	.value	0x37e
	.long	0xe5b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x20d9
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x37f
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF586
	.long	0x20e9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11105
	.byte	0
	.uleb128 0x12
	.long	0x250
	.long	0x20e9
	.uleb128 0x13
	.long	0x145
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.long	0x20d9
	.uleb128 0x33
	.long	.LASF584
	.byte	0x1
	.value	0x38f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x212b
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x390
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x391
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.long	.LASF585
	.byte	0x1
	.value	0x3a2
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x217d
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x3a3
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x3a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF586
	.long	0x218d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11114
	.byte	0
	.uleb128 0x12
	.long	0x250
	.long	0x218d
	.uleb128 0x13
	.long	0x145
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.long	0x217d
	.uleb128 0x2f
	.long	.LASF587
	.byte	0x1
	.value	0x3b4
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x21cf
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x3b5
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF317
	.byte	0x1
	.value	0x3b7
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF523
	.byte	0x1
	.value	0x3c0
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x21fd
	.uleb128 0x29
	.long	.LASF406
	.byte	0x1
	.value	0x3c1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.long	.LASF588
	.byte	0x1
	.value	0x3d8
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x22b9
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x3da
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF557
	.byte	0x1
	.value	0x3db
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF563
	.byte	0x1
	.value	0x3dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x3de
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x1
	.value	0x3f5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x3f6
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x1
	.value	0x3fc
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF590
	.byte	0x1
	.value	0x429
	.long	0x2d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x232a
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x42a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x42a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x42c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x1
	.value	0x430
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF591
	.byte	0x1
	.value	0x44f
	.long	0x2d
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x239b
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x450
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x450
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x452
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x1
	.value	0x456
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF592
	.byte	0x1
	.value	0x46e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2403
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x46f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF593
	.byte	0x1
	.value	0x470
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF594
	.byte	0x1
	.value	0x471
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF321
	.byte	0x1
	.value	0x474
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF483
	.byte	0x1
	.value	0x475
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x48c
	.long	0x13e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2444
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x48d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x48d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF596
	.byte	0x1
	.value	0x49d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d3
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x49e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x49e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x4a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x4a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF586
	.long	0x24d3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11179
	.uleb128 0x30
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x4a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x20d9
	.uleb128 0x35
	.long	.LASF597
	.byte	0x1
	.value	0x4be
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2550
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x4bf
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x4c0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x4c0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x4c2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x4c9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x4ca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF599
	.byte	0x1
	.value	0x4da
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f9
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x4db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x4db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x4dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF600
	.byte	0x1
	.value	0x4dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x4dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x4dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF601
	.byte	0x1
	.value	0x4de
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x4df
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x4df
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x33
	.long	.LASF602
	.byte	0x1
	.value	0x51a
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2654
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x51c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x51d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF603
	.byte	0x1
	.value	0x51e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF604
	.byte	0x1
	.value	0x51f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x33
	.long	.LASF605
	.byte	0x1
	.value	0x54b
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x26e3
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x54c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x54d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x54f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x550
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF586
	.long	0x26f3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11227
	.uleb128 0x30
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x559
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x250
	.long	0x26f3
	.uleb128 0x13
	.long	0x145
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.long	0x26e3
	.uleb128 0x2f
	.long	.LASF606
	.byte	0x1
	.value	0x573
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x27ae
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x574
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x576
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x576
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF321
	.byte	0x1
	.value	0x576
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF483
	.byte	0x1
	.value	0x576
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2a
	.long	.LASF500
	.byte	0x1
	.value	0x57d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x57e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x58b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x5a7
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x281b
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x5a8
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x5aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF563
	.byte	0x1
	.value	0x5ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2a
	.long	.LASF608
	.byte	0x1
	.value	0x5c4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF609
	.byte	0x1
	.value	0x5e8
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2863
	.uleb128 0x29
	.long	.LASF582
	.byte	0x1
	.value	0x5e9
	.long	0x14fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x5eb
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5ec
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF610
	.byte	0x1
	.value	0x5fa
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x28a4
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x5fb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF611
	.byte	0x1
	.value	0x5fb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF612
	.byte	0x1
	.value	0x611
	.long	0x2d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2924
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x612
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF611
	.byte	0x1
	.value	0x613
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF600
	.byte	0x1
	.value	0x615
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF613
	.byte	0x1
	.value	0x615
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2a
	.long	.LASF614
	.byte	0x1
	.value	0x61c
	.long	0xdac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF615
	.byte	0x1
	.value	0x63c
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2995
	.uleb128 0x29
	.long	.LASF548
	.byte	0x1
	.value	0x63d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF611
	.byte	0x1
	.value	0x63d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF613
	.byte	0x1
	.value	0x63f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2a
	.long	.LASF406
	.byte	0x1
	.value	0x645
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF616
	.byte	0x1
	.value	0x663
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d6
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x664
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x666
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF617
	.byte	0x1
	.value	0x66f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aed
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x670
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.long	.LASF618
	.byte	0x1
	.value	0x671
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF582
	.byte	0x1
	.value	0x673
	.long	0x1501
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF619
	.byte	0x1
	.value	0x674
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x677
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x678
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF321
	.byte	0x1
	.value	0x679
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF483
	.byte	0x1
	.value	0x67a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF586
	.long	0x2aed
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11312
	.uleb128 0x36
	.long	.LASF405
	.byte	0x1
	.value	0x6f7
	.quad	.L282
	.uleb128 0x37
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2aca
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x6e0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF498
	.byte	0x1
	.value	0x6e1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x30
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2a
	.long	.LASF620
	.byte	0x1
	.value	0x723
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x26e3
	.uleb128 0x28
	.long	.LASF621
	.byte	0x1
	.value	0x744
	.long	0x13e
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b60
	.uleb128 0x29
	.long	.LASF321
	.byte	0x1
	.value	0x745
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF483
	.byte	0x1
	.value	0x745
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x747
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF622
	.byte	0x1
	.value	0x748
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x74a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF623
	.byte	0x1
	.value	0x763
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bda
	.uleb128 0x29
	.long	.LASF624
	.byte	0x1
	.value	0x764
	.long	0x177a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF492
	.byte	0x1
	.value	0x766
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.value	0x766
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x767
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2a
	.long	.LASF598
	.byte	0x1
	.value	0x79e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF656
	.byte	0x1
	.value	0x7d8
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF524
	.byte	0x1
	.byte	0x9f
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	issue_rate
	.uleb128 0x39
	.long	.LASF625
	.byte	0x1
	.byte	0xaa
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	sched_verbose_param
	.uleb128 0x39
	.long	.LASF626
	.byte	0x1
	.byte	0xb2
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	old_max_uid
	.uleb128 0x39
	.long	.LASF627
	.byte	0x1
	.byte	0xcf
	.long	0xe5b
	.uleb128 0x9
	.byte	0x3
	.quad	line_note_head
	.uleb128 0x39
	.long	.LASF628
	.byte	0x1
	.byte	0xd3
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	note_list
	.uleb128 0x12
	.long	0x2d
	.long	0x2c6d
	.uleb128 0x13
	.long	0x145
	.byte	0x7f
	.byte	0
	.uleb128 0x2a
	.long	.LASF629
	.byte	0x1
	.value	0x104
	.long	0x2c5d
	.uleb128 0x9
	.byte	0x3
	.quad	insn_queue
	.uleb128 0x2a
	.long	.LASF630
	.byte	0x1
	.value	0x105
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	q_ptr
	.uleb128 0x2a
	.long	.LASF631
	.byte	0x1
	.value	0x106
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	q_size
	.uleb128 0x2a
	.long	.LASF632
	.byte	0x1
	.value	0x15f
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	last_scheduled_insn
	.uleb128 0x12
	.long	0x2d
	.long	0x2cd5
	.uleb128 0x13
	.long	0x145
	.byte	0x4d
	.byte	0
	.uleb128 0x2a
	.long	.LASF633
	.byte	0x1
	.value	0x1a5
	.long	0x2cc5
	.uleb128 0x9
	.byte	0x3
	.quad	unit_last_insn
	.uleb128 0x12
	.long	0x13e
	.long	0x2cfb
	.uleb128 0x13
	.long	0x145
	.byte	0x4d
	.byte	0
	.uleb128 0x2a
	.long	.LASF634
	.byte	0x1
	.value	0x1a9
	.long	0x2ceb
	.uleb128 0x9
	.byte	0x3
	.quad	unit_tick
	.uleb128 0x12
	.long	0x13e
	.long	0x2d21
	.uleb128 0x13
	.long	0x145
	.byte	0x19
	.byte	0
	.uleb128 0x2a
	.long	.LASF635
	.byte	0x1
	.value	0x1ad
	.long	0x2d11
	.uleb128 0x9
	.byte	0x3
	.quad	unit_n_insns
	.uleb128 0x2a
	.long	.LASF636
	.byte	0x1
	.value	0x3d0
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	last_clock_var
	.uleb128 0x2a
	.long	.LASF637
	.byte	0x1
	.value	0x5a2
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	clock_var
	.uleb128 0x3a
	.long	.LASF638
	.byte	0x6
	.byte	0xaa
	.long	0x421
	.uleb128 0x12
	.long	0x250
	.long	0x2d7e
	.uleb128 0x13
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x3a
	.long	.LASF639
	.byte	0x2
	.byte	0x3f
	.long	0x2d89
	.uleb128 0xa
	.long	0x2d6e
	.uleb128 0x3b
	.long	.LASF640
	.byte	0x2
	.value	0x6d2
	.long	0x13e
	.uleb128 0x3a
	.long	.LASF641
	.byte	0xb
	.byte	0xe4
	.long	0x13e
	.uleb128 0x3a
	.long	.LASF642
	.byte	0xb
	.byte	0xec
	.long	0x1251
	.uleb128 0x3a
	.long	.LASF643
	.byte	0xe
	.byte	0x2a
	.long	0x1308
	.uleb128 0x12
	.long	0x1345
	.long	0x2dc6
	.uleb128 0x3c
	.byte	0
	.uleb128 0x3a
	.long	.LASF644
	.byte	0xf
	.byte	0x5e
	.long	0x2dd1
	.uleb128 0xa
	.long	0x2dbb
	.uleb128 0x3d
	.long	.LASF645
	.byte	0x1
	.value	0x151
	.long	0x2dec
	.uleb128 0x9
	.byte	0x3
	.quad	current_sched_info
	.uleb128 0x3
	.byte	0x8
	.long	0x1435
	.uleb128 0x3e
	.long	.LASF646
	.byte	0x1
	.byte	0xc1
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	h_i_d
	.uleb128 0x3
	.byte	0x8
	.long	0x1584
	.uleb128 0x3e
	.long	.LASF647
	.byte	0x1
	.byte	0xaf
	.long	0x177a
	.uleb128 0x9
	.byte	0x3
	.quad	sched_dump
	.uleb128 0x3e
	.long	.LASF648
	.byte	0x1
	.byte	0xab
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	sched_verbose
	.uleb128 0x3a
	.long	.LASF649
	.byte	0x11
	.byte	0xc1
	.long	0x1919
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
.LASF634:
	.string	"unit_tick"
.LASF352:
	.string	"REG_BR_PROB"
.LASF382:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF309:
	.string	"rtstr"
.LASF606:
	.string	"find_insn_reg_weight"
.LASF369:
	.string	"NOTE_INSN_DELETED"
.LASF84:
	.string	"_unused2"
.LASF237:
	.string	"UMOD"
.LASF291:
	.string	"min_align"
.LASF619:
	.string	"can_issue_more"
.LASF70:
	.string	"_fileno"
.LASF412:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF317:
	.string	"first"
.LASF278:
	.string	"CONSTANT_P_RTX"
.LASF568:
	.string	"tmp2"
.LASF471:
	.string	"_Bool"
.LASF534:
	.string	"attribute_table"
.LASF599:
	.string	"restore_line_notes"
.LASF308:
	.string	"rtuint"
.LASF641:
	.string	"n_basic_blocks"
.LASF571:
	.string	"depend_count1"
.LASF572:
	.string	"depend_count2"
.LASF312:
	.string	"rt_cselib"
.LASF464:
	.string	"default_cost"
.LASF181:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF462:
	.string	"multiplicity"
.LASF241:
	.string	"LSHIFTRT"
.LASF528:
	.string	"reorder"
.LASF175:
	.string	"MATCH_PAR_DUP"
.LASF75:
	.string	"_shortbuf"
.LASF652:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF236:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF169:
	.string	"MATCH_OPERAND"
.LASF465:
	.string	"max_issue_delay"
.LASF150:
	.string	"CCFPmode"
.LASF91:
	.string	"reg_class"
.LASF583:
	.string	"fix_sched_param"
.LASF258:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF296:
	.string	"max_after_base"
.LASF259:
	.string	"UNLT"
.LASF649:
	.string	"targetm"
.LASF506:
	.string	"asm_out"
.LASF449:
	.string	"probability"
.LASF575:
	.string	"info_val"
.LASF122:
	.string	"CTImode"
.LASF56:
	.string	"_flags"
.LASF405:
	.string	"next"
.LASF460:
	.string	"function_unit_desc"
.LASF51:
	.string	"__off_t"
.LASF607:
	.string	"queue_to_ready"
.LASF499:
	.string	"units"
.LASF120:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF280:
	.string	"VEC_MERGE"
.LASF560:
	.string	"best_cost"
.LASF76:
	.string	"_lock"
.LASF414:
	.string	"uhint"
.LASF213:
	.string	"RETURN"
.LASF627:
	.string	"line_note_head"
.LASF415:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF156:
	.string	"MODE_FLOAT"
.LASF300:
	.string	"alias"
.LASF647:
	.string	"sched_dump"
.LASF297:
	.string	"offset_unsigned"
.LASF126:
	.string	"V2SImode"
.LASF474:
	.string	"can_schedule_ready_p"
.LASF25:
	.string	"Q_REGS"
.LASF200:
	.string	"CODE_LABEL"
.LASF121:
	.string	"CDImode"
.LASF206:
	.string	"UNSPEC"
.LASF199:
	.string	"BARRIER"
.LASF375:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF202:
	.string	"COND_EXEC"
.LASF216:
	.string	"CONST_INT"
.LASF212:
	.string	"CALL"
.LASF128:
	.string	"V4QImode"
.LASF191:
	.string	"ATTR"
.LASF332:
	.string	"count"
.LASF310:
	.string	"rttype"
.LASF493:
	.string	"priority"
.LASF516:
	.string	"function_epilogue"
.LASF19:
	.string	"DREG"
.LASF322:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF399:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF127:
	.string	"V2DImode"
.LASF550:
	.string	"range"
.LASF441:
	.string	"varray_type"
.LASF305:
	.string	"mem_attrs"
.LASF62:
	.string	"_IO_write_end"
.LASF346:
	.string	"REG_UNUSED"
.LASF184:
	.string	"DEFINE_DELAY"
.LASF234:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF420:
	.string	"sched_info_tag"
.LASF224:
	.string	"STRICT_LOW_PART"
.LASF480:
	.string	"compute_jump_reg_dependencies"
.LASF166:
	.string	"INCLUDE"
.LASF395:
	.string	"GR_FRAME_POINTER"
.LASF330:
	.string	"index"
.LASF427:
	.string	"freq"
.LASF262:
	.string	"ZERO_EXTEND"
.LASF265:
	.string	"FLOAT_TRUNCATE"
.LASF544:
	.string	"have_ctors_dtors"
.LASF574:
	.string	"weight_val"
.LASF510:
	.string	"aligned_op"
.LASF514:
	.string	"function_end_prologue"
.LASF392:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF137:
	.string	"V2SFmode"
.LASF434:
	.string	"varray_data"
.LASF266:
	.string	"FLOAT"
.LASF517:
	.string	"named_section"
.LASF358:
	.string	"REG_EH_CONTEXT"
.LASF92:
	.string	"machine_mode"
.LASF487:
	.string	"veclen"
.LASF315:
	.string	"rtmem"
.LASF275:
	.string	"RANGE_REG"
.LASF313:
	.string	"rtbit"
.LASF404:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF99:
	.string	"TImode"
.LASF251:
	.string	"PRE_MODIFY"
.LASF468:
	.string	"max_blockage"
.LASF522:
	.string	"adjust_cost"
.LASF567:
	.string	"rank_for_schedule"
.LASF643:
	.string	"write_symbols"
.LASF264:
	.string	"FLOAT_EXTEND"
.LASF424:
	.string	"last_note_uid"
.LASF461:
	.string	"bitmask"
.LASF6:
	.string	"in_struct"
.LASF370:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF97:
	.string	"SImode"
.LASF502:
	.string	"fed_by_spec_load"
.LASF208:
	.string	"ADDR_VEC"
.LASF593:
	.string	"headp"
.LASF138:
	.string	"V2DFmode"
.LASF290:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF304:
	.string	"align"
.LASF319:
	.string	"indx"
.LASF227:
	.string	"SYMBOL_REF"
.LASF368:
	.string	"NOTE_INSN_BIAS"
.LASF390:
	.string	"NOTE_INSN_MAX"
.LASF452:
	.string	"NO_DEBUG"
.LASF180:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF604:
	.string	"notes"
.LASF232:
	.string	"COMPARE"
.LASF260:
	.string	"LTGT"
.LASF580:
	.string	"next_q"
.LASF628:
	.string	"note_list"
.LASF272:
	.string	"HIGH"
.LASF229:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF98:
	.string	"DImode"
.LASF410:
	.string	"const_equiv_data"
.LASF532:
	.string	"merge_decl_attributes"
.LASF69:
	.string	"_chain"
.LASF526:
	.string	"md_init"
.LASF494:
	.string	"dep_count"
.LASF250:
	.string	"POST_INC"
.LASF624:
	.string	"dump_file"
.LASF484:
	.string	"queue_must_finish_empty"
.LASF656:
	.string	"sched_finish"
.LASF111:
	.string	"TFmode"
.LASF47:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF654:
	.string	"_IO_lock_t"
.LASF431:
	.string	"basic_block"
.LASF94:
	.string	"BImode"
.LASF248:
	.string	"PRE_INC"
.LASF345:
	.string	"REG_NO_CONFLICT"
.LASF108:
	.string	"SFmode"
.LASF631:
	.string	"q_size"
.LASF595:
	.string	"no_real_insns_p"
.LASF197:
	.string	"JUMP_INSN"
.LASF327:
	.string	"cond_local_set"
.LASF527:
	.string	"md_finish"
.LASF450:
	.string	"edge"
.LASF454:
	.string	"SDB_DEBUG"
.LASF160:
	.string	"MODE_COMPLEX_FLOAT"
.LASF645:
	.string	"current_sched_info"
.LASF314:
	.string	"rttree"
.LASF367:
	.string	"insn_note"
.LASF496:
	.string	"ref_count"
.LASF386:
	.string	"NOTE_INSN_RANGE_END"
.LASF179:
	.string	"DEFINE_SPLIT"
.LASF218:
	.string	"CONST_VECTOR"
.LASF176:
	.string	"MATCH_INSN"
.LASF109:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF443:
	.string	"gcov_type"
.LASF45:
	.string	"size_t"
.LASF210:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF103:
	.string	"PSImode"
.LASF274:
	.string	"RANGE_INFO"
.LASF565:
	.string	"this_priority"
.LASF411:
	.string	"rtunion_def"
.LASF190:
	.string	"DEFINE_ATTR"
.LASF192:
	.string	"SET_ATTR"
.LASF117:
	.string	"TCmode"
.LASF267:
	.string	"UNSIGNED_FLOAT"
.LASF357:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF419:
	.string	"cselib_val_struct"
.LASF389:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF61:
	.string	"_IO_write_ptr"
.LASF546:
	.string	"attribute_spec"
.LASF479:
	.string	"contributes_to_priority"
.LASF239:
	.string	"ROTATE"
.LASF325:
	.string	"succ"
.LASF426:
	.string	"refs"
.LASF263:
	.string	"TRUNCATE"
.LASF350:
	.string	"REG_DEP_ANTI"
.LASF114:
	.string	"SCmode"
.LASF469:
	.string	"blockage_range_function"
.LASF515:
	.string	"function_begin_epilogue"
.LASF400:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF104:
	.string	"PDImode"
.LASF371:
	.string	"NOTE_INSN_BLOCK_END"
.LASF495:
	.string	"blockage"
.LASF409:
	.string	"bitmap"
.LASF380:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF636:
	.string	"last_clock_var"
.LASF598:
	.string	"line"
.LASF563:
	.string	"link"
.LASF334:
	.string	"flags"
.LASF167:
	.string	"EXPR_LIST"
.LASF194:
	.string	"EQ_ATTR"
.LASF147:
	.string	"CCGOCmode"
.LASF225:
	.string	"CONCAT"
.LASF445:
	.string	"pred_next"
.LASF293:
	.string	"min_after_vec"
.LASF54:
	.string	"FILE"
.LASF231:
	.string	"COND"
.LASF590:
	.string	"unlink_other_notes"
.LASF157:
	.string	"MODE_PARTIAL_INT"
.LASF557:
	.string	"clock"
.LASF15:
	.string	"tree"
.LASF115:
	.string	"DCmode"
.LASF648:
	.string	"sched_verbose"
.LASF182:
	.string	"DEFINE_COMBINE"
.LASF650:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF240:
	.string	"ASHIFTRT"
.LASF145:
	.string	"CCmode"
.LASF507:
	.string	"open_paren"
.LASF566:
	.string	"next_priority"
.LASF323:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF373:
	.string	"NOTE_INSN_LOOP_END"
.LASF143:
	.string	"V16SFmode"
.LASF547:
	.string	"param"
.LASF387:
	.string	"NOTE_INSN_LIVE"
.LASF187:
	.string	"DEFINE_COND_EXEC"
.LASF65:
	.string	"_IO_save_base"
.LASF594:
	.string	"tailp"
.LASF551:
	.string	"insn_unit"
.LASF635:
	.string	"unit_n_insns"
.LASF183:
	.string	"DEFINE_EXPAND"
.LASF585:
	.string	"ready_remove_first"
.LASF437:
	.string	"elements_used"
.LASF134:
	.string	"V8SImode"
.LASF196:
	.string	"INSN"
.LASF307:
	.string	"rtint"
.LASF578:
	.string	"queue_insn"
.LASF226:
	.string	"LABEL_REF"
.LASF538:
	.string	"function_attribute_inlinable_p"
.LASF349:
	.string	"REG_LABEL"
.LASF433:
	.string	"elt_list"
.LASF337:
	.string	"REG_DEAD"
.LASF377:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF79:
	.string	"__pad2"
.LASF340:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF442:
	.string	"regset"
.LASF531:
	.string	"gcc_target"
.LASF470:
	.string	"blockage_function"
.LASF492:
	.string	"luid"
.LASF633:
	.string	"unit_last_insn"
.LASF533:
	.string	"merge_type_attributes"
.LASF146:
	.string	"CCGCmode"
.LASF329:
	.string	"global_live_at_end"
.LASF222:
	.string	"SCRATCH"
.LASF132:
	.string	"V8QImode"
.LASF622:
	.string	"n_insn"
.LASF135:
	.string	"V8DImode"
.LASF163:
	.string	"MAX_MODE_CLASS"
.LASF553:
	.string	"instance"
.LASF615:
	.string	"move_insn"
.LASF626:
	.string	"old_max_uid"
.LASF535:
	.string	"comp_type_attributes"
.LASF261:
	.string	"SIGN_EXTEND"
.LASF504:
	.string	"priority_known"
.LASF283:
	.string	"VEC_DUPLICATE"
.LASF86:
	.string	"_next"
.LASF301:
	.string	"expr"
.LASF383:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF625:
	.string	"sched_verbose_param"
.LASF621:
	.string	"set_priorities"
.LASF497:
	.string	"tick"
.LASF141:
	.string	"V8SFmode"
.LASF548:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF348:
	.string	"REG_CC_USER"
.LASF205:
	.string	"ASM_OPERANDS"
.LASF149:
	.string	"CCZmode"
.LASF512:
	.string	"integer"
.LASF374:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF577:
	.string	"swap_sort"
.LASF559:
	.string	"actual_hazard"
.LASF513:
	.string	"function_prologue"
.LASF363:
	.string	"REG_NON_LOCAL_GOTO"
.LASF209:
	.string	"ADDR_DIFF_VEC"
.LASF271:
	.string	"ZERO_EXTRACT"
.LASF413:
	.string	"hint"
.LASF629:
	.string	"insn_queue"
.LASF204:
	.string	"ASM_INPUT"
.LASF254:
	.string	"ORDERED"
.LASF142:
	.string	"V8DFmode"
.LASF556:
	.string	"actual_hazard_this_instance"
.LASF632:
	.string	"last_scheduled_insn"
.LASF436:
	.string	"num_elements"
.LASF268:
	.string	"UNSIGNED_FIX"
.LASF644:
	.string	"function_units"
.LASF521:
	.string	"destructor"
.LASF609:
	.string	"debug_ready_list"
.LASF29:
	.string	"GENERAL_REGS"
.LASF638:
	.string	"stderr"
.LASF537:
	.string	"insert_attributes"
.LASF511:
	.string	"unaligned_op"
.LASF439:
	.string	"name"
.LASF168:
	.string	"INSN_LIST"
.LASF87:
	.string	"_sbuf"
.LASF276:
	.string	"RANGE_VAR"
.LASF432:
	.string	"changes_mode"
.LASF67:
	.string	"_IO_save_end"
.LASF509:
	.string	"byte_op"
.LASF529:
	.string	"reorder2"
.LASF155:
	.string	"MODE_INT"
.LASF438:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF549:
	.string	"unit"
.LASF525:
	.string	"variable_issue"
.LASF584:
	.string	"ready_add"
.LASF457:
	.string	"XCOFF_DEBUG"
.LASF277:
	.string	"RANGE_LIVE"
.LASF125:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF418:
	.string	"const_equiv"
.LASF423:
	.string	"last_uid"
.LASF311:
	.string	"rt_addr_diff_vec_flags"
.LASF397:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF536:
	.string	"set_default_type_attributes"
.LASF456:
	.string	"DWARF2_DEBUG"
.LASF286:
	.string	"SS_MINUS"
.LASF173:
	.string	"MATCH_PARALLEL"
.LASF130:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF339:
	.string	"REG_EQUIV"
.LASF503:
	.string	"is_load_insn"
.LASF466:
	.string	"ready_cost_function"
.LASF48:
	.string	"short unsigned int"
.LASF49:
	.string	"signed char"
.LASF172:
	.string	"MATCH_OPERATOR"
.LASF554:
	.string	"insn_issue_delay"
.LASF435:
	.string	"varray_head_tag"
.LASF318:
	.string	"current"
.LASF485:
	.string	"use_cselib"
.LASF288:
	.string	"SS_TRUNCATE"
.LASF353:
	.string	"REG_EXEC_COUNT"
.LASF292:
	.string	"base_after_vec"
.LASF177:
	.string	"DEFINE_INSN"
.LASF52:
	.string	"__off64_t"
.LASF131:
	.string	"V4DImode"
.LASF331:
	.string	"loop_depth"
.LASF59:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF77:
	.string	"_offset"
.LASF398:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF351:
	.string	"REG_DEP_OUTPUT"
.LASF64:
	.string	"_IO_buf_end"
.LASF186:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF287:
	.string	"US_MINUS"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF270:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF429:
	.string	"live_length"
.LASF211:
	.string	"CLOBBER"
.LASF444:
	.string	"edge_def"
.LASF83:
	.string	"_mode"
.LASF161:
	.string	"MODE_VECTOR_INT"
.LASF60:
	.string	"_IO_write_base"
.LASF520:
	.string	"constructor"
.LASF355:
	.string	"REG_SAVE_AREA"
.LASF279:
	.string	"CALL_PLACEHOLDER"
.LASF139:
	.string	"V4SFmode"
.LASF569:
	.string	"tmp_class"
.LASF233:
	.string	"PLUS"
.LASF605:
	.string	"rm_other_notes"
.LASF249:
	.string	"POST_DEC"
.LASF407:
	.string	"bits"
.LASF96:
	.string	"HImode"
.LASF335:
	.string	"rtunion"
.LASF376:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF620:
	.string	"note_head"
.LASF159:
	.string	"MODE_COMPLEX_INT"
.LASF44:
	.string	"long int"
.LASF402:
	.string	"GR_VIRTUAL_CFA"
.LASF642:
	.string	"basic_block_info"
.LASF341:
	.string	"REG_WAS_0"
.LASF587:
	.string	"ready_sort"
.LASF362:
	.string	"REG_NORETURN"
.LASF85:
	.string	"_IO_marker"
.LASF110:
	.string	"XFmode"
.LASF361:
	.string	"REG_MAYBE_DEAD"
.LASF541:
	.string	"expand_builtin"
.LASF501:
	.string	"cant_move"
.LASF140:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF608:
	.string	"stalls"
.LASF336:
	.string	"reg_note"
.LASF545:
	.string	"cannot_modify_jumps_p"
.LASF164:
	.string	"rtx_code"
.LASF611:
	.string	"last"
.LASF610:
	.string	"move_insn1"
.LASF540:
	.string	"init_builtins"
.LASF20:
	.string	"CREG"
.LASF561:
	.string	"this_cost"
.LASF602:
	.string	"rm_redundant_line_notes"
.LASF498:
	.string	"cost"
.LASF519:
	.string	"eh_frame_section"
.LASF165:
	.string	"UNKNOWN"
.LASF207:
	.string	"UNSPEC_VOLATILE"
.LASF379:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF46:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF570:
	.string	"tmp2_class"
.LASF637:
	.string	"clock_var"
.LASF106:
	.string	"HFmode"
.LASF451:
	.string	"debug_info_type"
.LASF524:
	.string	"issue_rate"
.LASF214:
	.string	"TRAP_IF"
.LASF428:
	.string	"deaths"
.LASF359:
	.string	"REG_EH_REGION"
.LASF342:
	.string	"REG_RETVAL"
.LASF118:
	.string	"CQImode"
.LASF486:
	.string	"ready_list"
.LASF53:
	.string	"char"
.LASF518:
	.string	"exception_section"
.LASF463:
	.string	"simultaneity"
.LASF116:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF63:
	.string	"_IO_buf_base"
.LASF242:
	.string	"ROTATERT"
.LASF228:
	.string	"ADDRESSOF"
.LASF364:
	.string	"REG_SETJMP"
.LASF124:
	.string	"V2QImode"
.LASF102:
	.string	"PHImode"
.LASF58:
	.string	"_IO_read_end"
.LASF552:
	.string	"get_unit_last_insn"
.LASF421:
	.string	"reg_info_def"
.LASF123:
	.string	"COImode"
.LASF247:
	.string	"PRE_DEC"
.LASF55:
	.string	"_IO_FILE"
.LASF378:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF396:
	.string	"GR_HARD_FRAME_POINTER"
.LASF347:
	.string	"REG_CC_SETTER"
.LASF564:
	.string	"ncost"
.LASF530:
	.string	"cycle_display"
.LASF154:
	.string	"MODE_RANDOM"
.LASF285:
	.string	"US_PLUS"
.LASF508:
	.string	"close_paren"
.LASF601:
	.string	"added_notes"
.LASF144:
	.string	"BLKmode"
.LASF472:
	.string	"sched_info"
.LASF113:
	.string	"HCmode"
.LASF458:
	.string	"VMS_DEBUG"
.LASF505:
	.string	"asm_int_op"
.LASF219:
	.string	"CONST_STRING"
.LASF282:
	.string	"VEC_CONCAT"
.LASF303:
	.string	"size"
.LASF78:
	.string	"__pad1"
.LASF80:
	.string	"__pad3"
.LASF81:
	.string	"__pad4"
.LASF82:
	.string	"__pad5"
.LASF354:
	.string	"REG_NOALIAS"
.LASF195:
	.string	"ATTR_FLAG"
.LASF453:
	.string	"DBX_DEBUG"
.LASF151:
	.string	"CCFPUmode"
.LASF338:
	.string	"REG_INC"
.LASF185:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF579:
	.string	"n_cycles"
.LASF68:
	.string	"_markers"
.LASF88:
	.string	"_pos"
.LASF576:
	.string	"schedule_unit"
.LASF597:
	.string	"save_line_notes"
.LASF189:
	.string	"ADDRESS"
.LASF448:
	.string	"insns"
.LASF416:
	.string	"cptr"
.LASF488:
	.string	"n_ready"
.LASF316:
	.string	"bitmap_head_def"
.LASF483:
	.string	"tail"
.LASF582:
	.string	"ready"
.LASF490:
	.string	"depend"
.LASF478:
	.string	"print_insn"
.LASF430:
	.string	"calls_crossed"
.LASF623:
	.string	"sched_init"
.LASF289:
	.string	"US_TRUNCATE"
.LASF391:
	.string	"global_rtl_index"
.LASF284:
	.string	"SS_PLUS"
.LASF246:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF543:
	.string	"have_named_sections"
.LASF298:
	.string	"scale"
.LASF95:
	.string	"QImode"
.LASF603:
	.string	"active_insn"
.LASF440:
	.string	"data"
.LASF394:
	.string	"GR_STACK_POINTER"
.LASF523:
	.string	"adjust_priority"
.LASF107:
	.string	"TQFmode"
.LASF321:
	.string	"head"
.LASF588:
	.string	"schedule_insn"
.LASF295:
	.string	"min_after_base"
.LASF417:
	.string	"sched"
.LASF475:
	.string	"schedule_more_p"
.LASF17:
	.string	"NO_REGS"
.LASF100:
	.string	"OImode"
.LASF360:
	.string	"REG_SAVE_NOTE"
.LASF244:
	.string	"SMAX"
.LASF403:
	.string	"GR_MAX"
.LASF281:
	.string	"VEC_SELECT"
.LASF344:
	.string	"REG_NONNEG"
.LASF162:
	.string	"MODE_VECTOR_FLOAT"
.LASF252:
	.string	"POST_MODIFY"
.LASF655:
	.string	"clear_units"
.LASF500:
	.string	"reg_weight"
.LASF596:
	.string	"rm_line_notes"
.LASF630:
	.string	"q_ptr"
.LASF356:
	.string	"REG_BR_PRED"
.LASF178:
	.string	"DEFINE_PEEPHOLE"
.LASF89:
	.string	"long long unsigned int"
.LASF385:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF302:
	.string	"offset"
.LASF299:
	.string	"addr_diff_vec_flags"
.LASF73:
	.string	"_cur_column"
.LASF612:
	.string	"reemit_notes"
.LASF174:
	.string	"MATCH_OP_DUP"
.LASF188:
	.string	"SEQUENCE"
.LASF105:
	.string	"QFmode"
.LASF459:
	.string	"VMS_AND_DWARF2_DEBUG"
.LASF425:
	.string	"sets"
.LASF592:
	.string	"get_block_head_tail"
.LASF215:
	.string	"RESX"
.LASF447:
	.string	"dest"
.LASF203:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF482:
	.string	"next_tail"
.LASF66:
	.string	"_IO_backup_base"
.LASF253:
	.string	"UNORDERED"
.LASF152:
	.string	"MAX_MACHINE_MODE"
.LASF57:
	.string	"_IO_read_ptr"
.LASF589:
	.string	"effective_cost"
.LASF591:
	.string	"unlink_line_notes"
.LASF328:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF170:
	.string	"MATCH_SCRATCH"
.LASF220:
	.string	"CONST"
.LASF269:
	.string	"SQRT"
.LASF581:
	.string	"ready_lastpos"
.LASF393:
	.string	"GR_CC0"
.LASF153:
	.string	"mode_class"
.LASF235:
	.string	"MULT"
.LASF158:
	.string	"MODE_CC"
.LASF616:
	.string	"sched_emit_insn"
.LASF326:
	.string	"local_set"
.LASF614:
	.string	"note_type"
.LASF101:
	.string	"PQImode"
.LASF477:
	.string	"rank"
.LASF133:
	.string	"V8HImode"
.LASF72:
	.string	"_old_offset"
.LASF198:
	.string	"CALL_INSN"
.LASF455:
	.string	"DWARF_DEBUG"
.LASF223:
	.string	"SUBREG"
.LASF613:
	.string	"retval"
.LASF617:
	.string	"schedule_block"
.LASF136:
	.string	"V16QImode"
.LASF365:
	.string	"REG_ALWAYS_RETURN"
.LASF90:
	.string	"long long int"
.LASF343:
	.string	"REG_LIBCALL"
.LASF71:
	.string	"_flags2"
.LASF112:
	.string	"QCmode"
.LASF221:
	.string	"VALUE"
.LASF201:
	.string	"NOTE"
.LASF245:
	.string	"UMIN"
.LASF171:
	.string	"MATCH_DUP"
.LASF320:
	.string	"basic_block_def"
.LASF640:
	.string	"reload_completed"
.LASF639:
	.string	"rtx_class"
.LASF539:
	.string	"ms_bitfield_layout_p"
.LASF542:
	.string	"section_type_flags"
.LASF7:
	.string	"used"
.LASF473:
	.string	"init_ready_list"
.LASF372:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF408:
	.string	"bitmap_element"
.LASF489:
	.string	"haifa_insn_data"
.LASF119:
	.string	"CHImode"
.LASF467:
	.string	"conflict_cost_function"
.LASF388:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF193:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF217:
	.string	"CONST_DOUBLE"
.LASF422:
	.string	"first_uid"
.LASF148:
	.string	"CCNOmode"
.LASF129:
	.string	"V4HImode"
.LASF255:
	.string	"UNEQ"
.LASF238:
	.string	"ASHIFT"
.LASF491:
	.string	"line_note"
.LASF243:
	.string	"SMIN"
.LASF586:
	.string	"__FUNCTION__"
.LASF230:
	.string	"IF_THEN_ELSE"
.LASF562:
	.string	"insn_cost"
.LASF384:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF555:
	.string	"delay"
.LASF381:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF43:
	.string	"unsigned int"
.LASF476:
	.string	"new_ready"
.LASF653:
	.string	"tree_node"
.LASF600:
	.string	"note"
.LASF651:
	.string	"haifa-sched.c"
.LASF294:
	.string	"max_after_vec"
.LASF256:
	.string	"UNGE"
.LASF50:
	.string	"short int"
.LASF324:
	.string	"pred"
.LASF257:
	.string	"UNGT"
.LASF573:
	.string	"priority_val"
.LASF618:
	.string	"rgn_n_insns"
.LASF558:
	.string	"blockage_range"
.LASF406:
	.string	"prev"
.LASF74:
	.string	"_vtable_offset"
.LASF481:
	.string	"prev_head"
.LASF93:
	.string	"VOIDmode"
.LASF366:
	.string	"REG_VTABLE_REF"
.LASF646:
	.string	"h_i_d"
.LASF401:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF273:
	.string	"LO_SUM"
.LASF333:
	.string	"frequency"
.LASF306:
	.string	"rtwint"
.LASF446:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
